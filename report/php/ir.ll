Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir?download=true
inline.NumInlined: 275
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ir_proto:bb.a
  store i8 %1, ptr %i.c, align 16, !tbaa !72
  %i.d = trunc i32 %2 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !73
  %i.f = trunc i32 %3 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.f, ptr %i.g, align 2, !tbaa !74
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %4, i64 %i.a, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %ir_strl.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ir_strtab_init(ptr noundef nonnull %i.i, i32 noundef 64, i32 noundef 4096) #22
  br label %ir_strl.exit

ir_strl.exit:                                     ; preds = %bb.c, %bb.d
  %i.k = trunc i64 %i.b to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70
  %i.n = add i32 %i.m, 1
  %i.o = call i32 @ir_strtab_lookup(ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, i32 noundef %i.k, i32 noundef %i.n) #22
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_emit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i, label %ir_next_insn.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_next_insn.exit

ir_next_insn.exit:                                ; preds = %bb.a, %bb.b
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %3, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %4, ptr %i.k, align 4, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_emit0(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %ir_emit.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit

ir_emit.exit:                                     ; preds = %bb.a, %bb.b
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_emit1(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %ir_emit.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit

ir_emit.exit:                                     ; preds = %bb.a, %bb.b
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_emit2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %ir_emit.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit

ir_emit.exit:                                     ; preds = %bb.a, %bb.b
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %3, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_emit3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %ir_emit.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit

ir_emit.exit:                                     ; preds = %bb.a, %bb.b
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %3, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %4, ptr %i.k, align 4, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_folding(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly %5, ptr nofree noundef readonly %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %.sroa.0 = alloca double, align 8               ; 221 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %_ir_fold_cast.exit2050.thread2154.thread, %bb.a
  %.01703 = phi ptr [ %5, %bb.a ], [ %i.cam, %_ir_fold_cast.exit2050.thread2154.thread ] ; 12 uses
  %.01702 = phi ptr [ %6, %bb.a ], [ %i.cao, %_ir_fold_cast.exit2050.thread2154.thread ] ; 27 uses
  %.01701 = phi ptr [ %7, %bb.a ], [ %i.caq, %_ir_fold_cast.exit2050.thread2154.thread ]
  %.01692 = phi i32 [ undef, %bb.a ], [ %.8170021625906, %_ir_fold_cast.exit2050.thread2154.thread ]
  %.01673 = phi i32 [ %4, %bb.a ], [ %.2167521635905, %_ir_fold_cast.exit2050.thread2154.thread ] ; 125 uses
  %.01667 = phi i32 [ %3, %bb.a ], [ %.5167221645904, %_ir_fold_cast.exit2050.thread2154.thread ] ; 86 uses
  %.01658 = phi i32 [ %2, %bb.a ], [ %.8166621655903, %_ir_fold_cast.exit2050.thread2154.thread ]
  %.01657 = phi i32 [ %1, %bb.a ], [ %.1321665902, %_ir_fold_cast.exit2050.thread2154.thread ] ; 103 uses
  %i.f = and i32 %.01657, 255                     ; 3 uses
  %i.g = load i8, ptr %.01703, align 8, !tbaa !23
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = add nuw nsw i32 %i.i, %i.f
  %i.k = load i8, ptr %.01702, align 8, !tbaa !23
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 14
  %i.n = add nuw nsw i32 %i.j, %i.m
  %i.o = icmp eq i32 %.01667, %.01673             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01703, i64 1 ; 14 uses
  %i.q = icmp eq i32 %.01667, -3                  ; 4 uses
  %i.r = icmp eq i32 %.01667, -2                  ; 2 uses
  %i.s = icmp eq i32 %.01673, -3                  ; 2 uses
  %or.cond29 = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp eq i32 %.01673, -2                  ; 3 uses
  %i.u = lshr i32 %.01657, 8                      ; 2 uses
  %i.v = and i32 %i.u, 255                        ; 24 uses
  %i.w = icmp samesign ult i32 %i.v, 12           ; 2 uses
  %i.x = icmp slt i32 %.01667, 0
  %or.cond23 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp slt i32 %.01673, 0
  %or.cond25 = select i1 %or.cond23, i1 %i.y, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %.01702, i64 8 ; 236 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01701, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01703, i64 8 ; 254 uses
  %i.ac = and i32 %.01657, 64512                  ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 3072
  %i.ae = and i32 %.01657, 65280                  ; 43 uses
  %i.af = icmp samesign ult i32 %i.ae, 3072       ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01703, i64 4 ; 52 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01702, i64 4 ; 17 uses
  %i.ai = zext nneg i32 %i.v to i64               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.ai ; 9 uses
  %i.ak = shl nuw i64 1, %i.ai                    ; 2 uses
  %i.al = and i64 %i.ak, 390
  %.not1870 = icmp eq i64 %i.al, 0
  %trunc2222 = trunc i32 %i.u to i8               ; 27 uses
  %i.am = lshr i64 9232, %i.ai
  %i.an = trunc i64 %i.am to i1
  %i.ao = icmp samesign ugt i32 %i.ac, 3071
  %i.ap = icmp eq i32 %i.ae, 3328
  %i.aq = sext i32 %.01667 to i64                 ; 2 uses
  %trunc2225 = trunc i32 %.01657 to i8            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ir_fold_cast.exit2050, %bb.b
  %.11693 = phi i32 [ %.01692, %bb.b ], [ %.81700, %_ir_fold_cast.exit2050 ] ; 114 uses
  %.01690 = phi i32 [ 2097151, %bb.b ], [ %.11691, %_ir_fold_cast.exit2050 ] ; 7 uses
  %.11659 = phi i32 [ %.01658, %bb.b ], [ %.81666, %_ir_fold_cast.exit2050 ] ; 286 uses
  %i.ar = and i32 %.01690, %i.n                   ; 3 uses
  %i.as = mul i32 %i.ar, 8388576
  %i.at = urem i32 %i.as, 3613
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ir_fold_hash, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !69 ; 2 uses
  %i.ax = and i32 %i.aw, 2097151
  %i.ay = icmp eq i32 %i.ax, %i.ar
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !69 ; 2 uses
  %i.bb = and i32 %i.ba, 2097151
  %i.bc = icmp eq i32 %i.bb, %i.ar
  br i1 %i.bc, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01689 = phi i32 [ %i.aw, %bb.c ], [ %i.ba, %bb.d ]
  %i.bd = lshr i32 %.01689, 21
  switch i32 %i.bd, label %.thread [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.f
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 11, label %bb.g
    i32 12, label %bb.h
    i32 13, label %bb.i
    i32 14, label %bb.i
    i32 15, label %bb.i
    i32 16, label %bb.i
    i32 17, label %bb.i
    i32 18, label %bb.i
    i32 19, label %bb.i
    i32 20, label %bb.i
    i32 21, label %bb.i
    i32 22, label %bb.i
    i32 23, label %bb.i
    i32 24, label %bb.j
    i32 25, label %bb.k
    i32 26, label %bb.l
    i32 27, label %bb.l
    i32 28, label %bb.l
    i32 29, label %bb.l
    i32 30, label %bb.l
    i32 31, label %bb.l
    i32 32, label %bb.m
    i32 33, label %bb.m
    i32 34, label %bb.m
    i32 35, label %bb.m
    i32 36, label %bb.m
    i32 37, label %bb.n
    i32 38, label %bb.o
    i32 39, label %bb.p
    i32 40, label %bb.p
    i32 41, label %bb.p
    i32 42, label %bb.p
    i32 43, label %bb.p
    i32 44, label %bb.p
    i32 45, label %bb.q
    i32 46, label %bb.q
    i32 47, label %bb.q
    i32 48, label %bb.q
    i32 49, label %bb.q
    i32 50, label %bb.r
    i32 51, label %bb.s
    i32 52, label %bb.t
    i32 53, label %bb.t
    i32 54, label %bb.t
    i32 55, label %bb.t
    i32 56, label %bb.t
    i32 57, label %bb.t
    i32 58, label %bb.u
    i32 59, label %bb.u
    i32 60, label %bb.u
    i32 61, label %bb.u
    i32 62, label %bb.u
    i32 63, label %bb.v
    i32 64, label %bb.w
    i32 65, label %bb.x
    i32 66, label %bb.x
    i32 67, label %bb.x
    i32 68, label %bb.x
    i32 69, label %bb.x
    i32 70, label %bb.x
    i32 71, label %bb.y
    i32 72, label %bb.y
    i32 73, label %bb.y
    i32 74, label %bb.y
    i32 75, label %bb.y
    i32 76, label %bb.z
    i32 77, label %bb.aa
    i32 78, label %bb.ab
    i32 79, label %bb.ab
    i32 80, label %bb.ab
    i32 81, label %bb.ab
    i32 82, label %bb.ab
    i32 83, label %bb.ab
    i32 84, label %bb.ab
    i32 85, label %bb.ab
    i32 86, label %bb.ab
    i32 87, label %bb.ab
    i32 88, label %bb.ab
    i32 89, label %bb.ac
    i32 90, label %bb.ad
    i32 91, label %bb.ae
    i32 92, label %bb.ae
    i32 93, label %bb.ae
    i32 94, label %bb.ae
    i32 95, label %bb.ae
    i32 96, label %bb.ae
    i32 97, label %bb.ae
    i32 98, label %bb.ae
    i32 99, label %bb.ae
    i32 100, label %bb.ae
    i32 101, label %bb.ae
    i32 102, label %bb.af
    i32 103, label %bb.ag
    i32 104, label %bb.ah
    i32 105, label %bb.ah
    i32 106, label %bb.ah
    i32 107, label %bb.ah
    i32 108, label %bb.ah
    i32 109, label %bb.ah
    i32 110, label %bb.ah
    i32 111, label %bb.ah
    i32 112, label %bb.ah
    i32 113, label %bb.ah
    i32 114, label %bb.ah
    i32 115, label %bb.ai
    i32 116, label %bb.aj
    i32 117, label %bb.ak
    i32 118, label %bb.ak
    i32 119, label %bb.ak
    i32 120, label %bb.ak
    i32 121, label %bb.ak
    i32 122, label %bb.ak
    i32 123, label %bb.ak
    i32 124, label %bb.ak
    i32 125, label %bb.ak
    i32 126, label %bb.ak
    i32 127, label %bb.ak
    i32 128, label %bb.al
    i32 129, label %bb.am
    i32 130, label %bb.an
    i32 131, label %bb.ap
    i32 132, label %bb.ar
    i32 133, label %bb.at
    i32 134, label %bb.av
    i32 135, label %bb.av
    i32 136, label %bb.av
    i32 137, label %bb.av
    i32 138, label %bb.av
    i32 139, label %bb.aw
    i32 140, label %bb.ax
    i32 141, label %bb.ay
    i32 142, label %bb.az
    i32 143, label %bb.az
    i32 144, label %bb.az
    i32 145, label %bb.az
    i32 146, label %bb.az
    i32 147, label %bb.ba
    i32 148, label %bb.bb
    i32 149, label %bb.bc
    i32 150, label %bb.bd
    i32 151, label %bb.be
    i32 152, label %bb.bf
    i32 153, label %bb.bg
    i32 154, label %bb.bh
    i32 155, label %bb.bh
    i32 156, label %bb.bh
    i32 157, label %bb.bh
    i32 158, label %bb.bh
    i32 159, label %bb.bi
    i32 160, label %bb.bj
    i32 161, label %bb.bk
    i32 162, label %bb.bl
    i32 163, label %bb.bm
    i32 164, label %bb.bn
    i32 165, label %bb.bo
    i32 166, label %bb.bp
    i32 167, label %bb.bq
    i32 168, label %bb.br
    i32 169, label %bb.bs
    i32 170, label %bb.bs
    i32 171, label %bb.bs
    i32 172, label %bb.bs
    i32 173, label %bb.bs
    i32 174, label %bb.bt
    i32 175, label %bb.bu
    i32 176, label %bb.bv
    i32 177, label %bb.bw
    i32 178, label %bb.bx
end_hunk_0
begin_hunk_1_@ir_folding:bb.a
bb.pr:                                            ; preds = %bb.e
  %i.awn = load i8, ptr %i.z, align 8, !tbaa !23, !range !26, !noundef !27
  %i.awo = trunc nuw i8 %i.awn to i1
  %i.awp = select i1 %i.awo, i32 %.11659, i32 %.01667
  br label %_ir_fold_cast.exit2050.thread2143

bb.ps:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.awq = load i8, ptr %i.z, align 8, !tbaa !23
  switch i8 %i.awq, label %.thread [
    i8 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i8 -1, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.pt:                                            ; preds = %bb.e, %bb.e
  %i.awr = load i16, ptr %i.z, align 8, !tbaa !23
  switch i16 %i.awr, label %.thread [
    i16 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i16 -1, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.pu:                                            ; preds = %bb.e, %bb.e
  %i.aws = load i32, ptr %i.z, align 8, !tbaa !23
  switch i32 %i.aws, label %.thread [
    i32 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i32 -1, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.pv:                                            ; preds = %bb.e, %bb.e
  %i.awt = load i64, ptr %i.z, align 8
  switch i64 %i.awt, label %.thread [
    i64 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i64 -1, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.pw:                                            ; preds = %bb.e
  %i.awu = load i8, ptr %i.z, align 8, !tbaa !23, !range !26, !noundef !27
  %i.awv = trunc nuw i8 %i.awu to i1
  %i.aww = select i1 %i.awv, i32 %.01667, i32 %.11659
  br label %_ir_fold_cast.exit2050.thread2143

bb.px:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.awx = load i8, ptr %i.z, align 8, !tbaa !23
  switch i8 %i.awx, label %.thread [
    i8 -1, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i8 0, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.py:                                            ; preds = %bb.e, %bb.e
  %i.awy = load i16, ptr %i.z, align 8, !tbaa !23
  switch i16 %i.awy, label %.thread [
    i16 -1, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i16 0, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.pz:                                            ; preds = %bb.e, %bb.e
  %i.awz = load i32, ptr %i.z, align 8, !tbaa !23
  switch i32 %i.awz, label %.thread [
    i32 -1, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i32 0, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.qa:                                            ; preds = %bb.e, %bb.e
  %i.axa = load i64, ptr %i.z, align 8
  switch i64 %i.axa, label %.thread [
    i64 -1, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i64 0, label %_ir_fold_cast.exit2050.thread2143
  ]

bb.qb:                                            ; preds = %bb.e
  %i.axb = load i8, ptr %i.z, align 8, !tbaa !23, !range !26, !noundef !27
  %i.axc = trunc nuw i8 %i.axb to i1
  br i1 %i.axc, label %bb.qc, label %_ir_fold_cast.exit2050.thread2143

bb.qc:                                            ; preds = %bb.qb
  %i.axd = or disjoint i32 %i.ae, 45
  br label %_ir_fold_cast.exit2050.thread2154

bb.qd:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.axe = load i8, ptr %i.z, align 8, !tbaa !23
  switch i8 %i.axe, label %.thread [
    i8 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i8 -1, label %bb.qe
  ]

bb.qe:                                            ; preds = %bb.qd
  %i.axf = or disjoint i32 %i.ae, 45
  br label %_ir_fold_cast.exit2050.thread2154

bb.qf:                                            ; preds = %bb.e, %bb.e
  %i.axg = load i16, ptr %i.z, align 8, !tbaa !23
  switch i16 %i.axg, label %.thread [
    i16 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i16 -1, label %bb.qg
  ]

bb.qg:                                            ; preds = %bb.qf
  %i.axh = or disjoint i32 %i.ae, 45
  br label %_ir_fold_cast.exit2050.thread2154

bb.qh:                                            ; preds = %bb.e, %bb.e
  %i.axi = load i32, ptr %i.z, align 8, !tbaa !23
  switch i32 %i.axi, label %.thread [
    i32 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i32 -1, label %bb.qi
  ]

bb.qi:                                            ; preds = %bb.qh
  %i.axj = or disjoint i32 %i.ae, 45
  br label %_ir_fold_cast.exit2050.thread2154

bb.qj:                                            ; preds = %bb.e, %bb.e
  %i.axk = load i64, ptr %i.z, align 8
  switch i64 %i.axk, label %.thread [
    i64 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i64 -1, label %bb.qk
  ]

bb.qk:                                            ; preds = %bb.qj
  %i.axl = or disjoint i32 %i.ae, 45
  br label %_ir_fold_cast.exit2050.thread2154

bb.ql:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axm = load i64, ptr %i.z, align 8
  switch i64 %i.axm, label %.thread [
    i64 0, label %_ir_fold_cast.exit2050.thread2143.loopexit
    i64 1, label %bb.qm
  ]

bb.qm:                                            ; preds = %bb.ql
  %i.axn = or disjoint i32 %i.ae, 26
  br label %_ir_fold_cast.exit2050.thread2154

bb.qn:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axo = load i64, ptr %i.z, align 8
  %i.axp = icmp eq i64 %i.axo, 0
  br i1 %i.axp, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %.thread

bb.qo:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axq = load i64, ptr %i.ab, align 8
  %i.axr = icmp eq i64 %i.axq, 0
  br i1 %i.axr, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %.thread

bb.qp:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axs = load i8, ptr %i.ab, align 8, !tbaa !23
  %.off1966 = add i8 %i.axs, -1
  %switch1967 = icmp ult i8 %.off1966, -2
  br i1 %switch1967, label %.thread, label %_ir_fold_cast.exit2050.thread2143.loopexit

bb.qq:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axt = load i16, ptr %i.ab, align 8
  %.off1968 = add i16 %i.axt, -1
  %switch1969 = icmp ult i16 %.off1968, -2
  br i1 %switch1969, label %.thread, label %_ir_fold_cast.exit2050.thread2143.loopexit

bb.qr:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axu = load i32, ptr %i.ab, align 8
  %.off1970 = add i32 %i.axu, -1
  %switch1971 = icmp ult i32 %.off1970, -2
  br i1 %switch1971, label %.thread, label %_ir_fold_cast.exit2050.thread2143.loopexit

bb.qs:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axv = load i64, ptr %i.ab, align 8
  %.off1972 = add i64 %i.axv, -1
  %switch1973 = icmp ult i64 %.off1972, -2
  br i1 %switch1973, label %.thread, label %_ir_fold_cast.exit2050.thread2143.loopexit

bb.qt:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axw = load i64, ptr %i.z, align 8
  %i.axx = icmp eq i64 %i.axw, 0
  br i1 %i.axx, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %.thread

bb.qu:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.axy = load i64, ptr %i.z, align 8
  %i.axz = icmp eq i64 %i.axy, 0
  br i1 %i.axz, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %.thread

bb.qv:                                            ; preds = %bb.e
  br i1 %i.ap, label %bb.qw, label %.thread

bb.qw:                                            ; preds = %bb.qv
  %i.aya = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2143

bb.qx:                                            ; preds = %bb.e
  %i.ayb = load ptr, ptr %0, align 8, !tbaa !48
  %i.ayc = load i32, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.ayd = sext i32 %i.ayc to i64
  %i.aye = getelementptr inbounds [16 x i8], ptr %i.ayb, i64 %i.ayd
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 1
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !23 ; 2 uses
  %i.ayh = zext i8 %i.ayg to i64
  %i.ayi = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.ayh
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !23
  %i.ayk = load i8, ptr %i.p, align 1, !tbaa !23
  %i.ayl = zext i8 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.ayl
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !23
  %.not1873 = icmp ult i8 %i.ayj, %i.ayn
  %.not2223 = icmp eq i8 %i.ayg, %trunc2222
  %or.cond9275 = select i1 %.not1873, i1 %.not2223, i1 false
  br i1 %or.cond9275, label %_ir_fold_cast.exit2050, label %.thread

bb.qy:                                            ; preds = %bb.e, %bb.e
  %i.ayo = load ptr, ptr %0, align 8, !tbaa !48
  %i.ayp = load i32, ptr %i.ag, align 4, !tbaa !23 ; 5 uses
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds [16 x i8], ptr %i.ayo, i64 %i.ayq
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 1
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !23 ; 2 uses
  %i.ayu = icmp eq i8 %i.ayt, %trunc2222
  br i1 %i.ayu, label %_ir_fold_cast.exit2050.thread2143, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.ayv = zext i8 %i.ayt to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !23 ; 2 uses
  %i.ayy = load i8, ptr %i.aj, align 1, !tbaa !23 ; 2 uses
  %i.ayz = icmp eq i8 %i.ayx, %i.ayy
  br i1 %i.ayz, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.aza = shl nuw nsw i32 %i.v, 8
  %i.azb = or disjoint i32 %i.aza, 36
  br label %_ir_fold_cast.exit2050.thread2154

bb.rb:                                            ; preds = %bb.qz
  %i.azc = icmp ugt i8 %i.ayx, %i.ayy
  br i1 %i.azc, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  %i.azd = shl nuw nsw i32 %i.v, 8
  %i.aze = or disjoint i32 %i.azd, 35
  br label %_ir_fold_cast.exit2050.thread2154

bb.rd:                                            ; preds = %bb.rb
  %i.azf = load i8, ptr %.01703, align 8, !tbaa !23
  %i.azg = zext i8 %i.azf to i32
  %i.azh = shl nuw nsw i32 %i.v, 8
  %i.azi = or disjoint i32 %i.azh, %i.azg
  br label %_ir_fold_cast.exit2050.thread2154

bb.re:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.azj = load ptr, ptr %0, align 8, !tbaa !48
  %i.azk = load i32, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.azl = sext i32 %i.azk to i64
  %i.azm = getelementptr inbounds [16 x i8], ptr %i.azj, i64 %i.azl
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 1
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !23
  %i.azp = icmp ult i8 %i.azo, 12
  br i1 %i.azp, label %_ir_fold_cast.exit2050.thread2154, label %.thread

bb.rf:                                            ; preds = %bb.e
  %i.azq = load ptr, ptr %0, align 8, !tbaa !48
  %i.azr = load i32, ptr %i.ag, align 4, !tbaa !23 ; 3 uses
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [16 x i8], ptr %i.azq, i64 %i.azs
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 1
  %i.azv = load i8, ptr %i.azu, align 1, !tbaa !23 ; 2 uses
  %i.azw = icmp eq i8 %i.azv, %trunc2222
  br i1 %i.azw, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.azx = icmp ult i8 %i.azv, 12
  %i.azy = xor i1 %i.ao, %i.azx
  br i1 %i.azy, label %_ir_fold_cast.exit2050, label %.thread

bb.rh:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.azz = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2154

bb.ri:                                            ; preds = %bb.e
  %i.baa = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.bab = or disjoint i32 %i.ae, 34
  br label %_ir_fold_cast.exit2050.thread2154

bb.rj:                                            ; preds = %bb.e
  %i.bac = load i32, ptr %i.ab, align 8           ; 2 uses
  %i.bad = icmp slt i32 %i.bac, 0
  br i1 %i.bad, label %bb.rk, label %.thread

bb.rk:                                            ; preds = %bb.rj
  %i.bae = load ptr, ptr %0, align 8, !tbaa !48
  %i.baf = sext i32 %i.bac to i64
  %i.bag = getelementptr inbounds [16 x i8], ptr %i.bae, i64 %i.baf ; 2 uses
  %i.bah = load i8, ptr %i.bag, align 8, !tbaa !23
  %.off1974 = add i8 %i.bah, -70
  %switch1975 = icmp ult i8 %.off1974, 4
  br i1 %switch1975, label %.thread, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !23
  %i.bak = load i8, ptr %i.p, align 1, !tbaa !23
  %i.bal = zext i8 %i.bak to i64
  %i.bam = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.bal
  %i.ban = load i8, ptr %i.bam, align 1, !tbaa !23
  %i.bao = zext i8 %i.ban to i64
  %i.bap = shl nuw nsw i64 %i.bao, 3
  %i.baq = add nuw nsw i64 %i.bap, 4294967295
  %i.bar = and i64 %i.baq, 4294967295
  %i.bas = shl nuw i64 1, %i.bar
  %i.bat = and i64 %i.bas, %i.baj
  %.not1872 = icmp eq i64 %i.bat, 0
  br i1 %.not1872, label %bb.rm, label %.thread

bb.rm:                                            ; preds = %bb.rl
  %i.bau = or disjoint i32 %i.ae, 34
  br label %_ir_fold_cast.exit2050.thread2154

bb.rn:                                            ; preds = %bb.e
  %i.bav = load i32, ptr %i.ab, align 8           ; 2 uses
  %i.baw = icmp slt i32 %i.bav, 0
  br i1 %i.baw, label %bb.ro, label %.thread

bb.ro:                                            ; preds = %bb.rn
  %i.bax = load ptr, ptr %0, align 8, !tbaa !48
  %i.bay = sext i32 %i.bav to i64
  %i.baz = getelementptr inbounds [16 x i8], ptr %i.bax, i64 %i.bay ; 2 uses
  %i.bba = load i8, ptr %i.baz, align 8, !tbaa !23
  %.off1976 = add i8 %i.bba, -70
  %switch1977 = icmp ult i8 %.off1976, 4
  br i1 %switch1977, label %.thread, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !23
  %.not1871 = icmp eq i64 %i.bbc, 0
  br i1 %.not1871, label %.thread, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bbd = or disjoint i32 %i.ae, 34
  br label %_ir_fold_cast.exit2050.thread2154

bb.rr:                                            ; preds = %bb.e
  %i.bbe = load i32, ptr %i.ab, align 8           ; 2 uses
  %i.bbf = icmp slt i32 %i.bbe, 0
  br i1 %i.bbf, label %bb.rs, label %.thread

bb.rs:                                            ; preds = %bb.rr
  %i.bbg = load ptr, ptr %0, align 8, !tbaa !48
  %i.bbh = sext i32 %i.bbe to i64
  %i.bbi = getelementptr inbounds [16 x i8], ptr %i.bbg, i64 %i.bbh
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  %i.bbk = load i64, ptr %i.bbj, align 8, !tbaa !23 ; 3 uses
  br i1 %.not1870, label %bb.rv, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bbl = icmp eq i64 %i.bbk, 255
  br i1 %i.bbl, label %bb.ru, label %.thread

bb.ru:                                            ; preds = %bb.rt
  %i.bbm = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2154

bb.rv:                                            ; preds = %bb.rs
  switch i8 %trunc2222, label %bb.ry [
    i8 9, label %bb.rw
    i8 3, label %bb.rw
  ]

bb.rw:                                            ; preds = %bb.rv, %bb.rv
  %i.bbn = icmp eq i64 %i.bbk, 65535
  br i1 %i.bbn, label %bb.rx, label %.thread

bb.rx:                                            ; preds = %bb.rw
  %i.bbo = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2154

bb.ry:                                            ; preds = %bb.rv
  %i.bbp = icmp eq i64 %i.bbk, 4294967295
  %or.cond27 = select i1 %i.an, i1 %i.bbp, i1 false
  br i1 %or.cond27, label %bb.rz, label %.thread

bb.rz:                                            ; preds = %bb.ry
  %i.bbq = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2154

bb.sa:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.bbr = load ptr, ptr %0, align 8, !tbaa !48
  %i.bbs = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.bbt = sext i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds [16 x i8], ptr %i.bbr, i64 %i.bbt
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 1
  %i.bbw = load i8, ptr %i.bbv, align 1, !tbaa !23 ; 2 uses
  %i.bbx = zext nneg i8 %i.bbw to i64
  %i.bby = shl nuw i64 1, %i.bbx                  ; 2 uses
  %i.bbz = and i64 %i.bby, 390
  %.not1868 = icmp eq i64 %i.bbz, 0
  br i1 %.not1868, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.bca = load i64, ptr %i.z, align 8, !tbaa !23
  %i.bcb = icmp eq i64 %i.bca, 255
  br i1 %i.bcb, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  switch i8 %i.bbw, label %bb.se [
    i8 9, label %bb.sd
    i8 3, label %bb.sd
  ]

bb.sd:                                            ; preds = %bb.sc, %bb.sc
  %i.bcc = load i64, ptr %i.z, align 8, !tbaa !23
  %i.bcd = icmp eq i64 %i.bcc, 65535
  br i1 %i.bcd, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %bb.se

bb.se:                                            ; preds = %bb.sc, %bb.sd
  %i.bce = and i64 %i.bby, 9232
  %.not1869 = icmp eq i64 %i.bce, 0
  br i1 %.not1869, label %.thread, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bcf = load i64, ptr %i.z, align 8
  %i.bcg = icmp eq i64 %i.bcf, 4294967295
  br i1 %i.bcg, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %.thread

bb.sg:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.bch = load ptr, ptr %0, align 8, !tbaa !48
  %i.bci = load i32, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.bcj = sext i32 %i.bci to i64
  %i.bck = getelementptr inbounds [16 x i8], ptr %i.bch, i64 %i.bcj
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 1
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !23 ; 2 uses
  %i.bcn = zext nneg i8 %i.bcm to i64
  %i.bco = shl nuw i64 1, %i.bcn                  ; 2 uses
  %i.bcp = and i64 %i.bco, 390
  %.not1866 = icmp eq i64 %i.bcp, 0
  br i1 %.not1866, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bcq = load i64, ptr %i.z, align 8, !tbaa !23
  %i.bcr = icmp eq i64 %i.bcq, 255
  br i1 %i.bcr, label %bb.sm, label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.sg
  switch i8 %i.bcm, label %bb.sk [
    i8 9, label %bb.sj
    i8 3, label %bb.sj
  ]

bb.sj:                                            ; preds = %bb.si, %bb.si
  %i.bcs = load i64, ptr %i.z, align 8, !tbaa !23
  %i.bct = icmp eq i64 %i.bcs, 65535
  br i1 %i.bct, label %bb.sm, label %bb.sk

bb.sk:                                            ; preds = %bb.si, %bb.sj
  %i.bcu = and i64 %i.bco, 9232
  %.not1867 = icmp eq i64 %i.bcu, 0
  br i1 %.not1867, label %.thread, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.bcv = load i64, ptr %i.z, align 8
  %i.bcw = icmp eq i64 %i.bcv, 4294967295
  br i1 %i.bcw, label %bb.sm, label %.thread

bb.sm:                                            ; preds = %bb.sh, %bb.sj, %bb.sl
  %i.bcx = or disjoint i32 %i.ae, 34
  br label %_ir_fold_cast.exit2050.thread2154

bb.sn:                                            ; preds = %bb.e, %bb.e
  %i.bcy = load i32, ptr %i.ab, align 8           ; 2 uses
  %i.bcz = icmp slt i32 %i.bcy, 0
  br i1 %i.bcz, label %bb.so, label %.thread

bb.so:                                            ; preds = %bb.sn
end_hunk_1
begin_hunk_2_@ir_folding:bb.a
  store double 0.000000e+00, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.xl:                                            ; preds = %bb.e, %bb.e
  %.not1859 = icmp eq i32 %.11659, %.01667
  br i1 %.not1859, label %bb.xm, label %bb.xa

bb.xm:                                            ; preds = %bb.xl
  %i.bxt = load i8, ptr %i.p, align 1, !tbaa !23
  %i.bxu = icmp ult i8 %i.bxt, 12
  br i1 %i.bxu, label %bb.xn, label %.thread

bb.xn:                                            ; preds = %bb.xm
  %i.bxv = icmp eq i32 %i.f, 14
  %i.bxw = select i1 %i.bxv, i32 -3, i32 -2
  br label %_ir_fold_cast.exit2050.thread2143

bb.xo:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.bxx = icmp eq i32 %.11659, %.01667
  br i1 %i.bxx, label %bb.xp, label %bb.xr

bb.xp:                                            ; preds = %bb.xo
  %i.bxy = load i8, ptr %i.p, align 1, !tbaa !23
  %i.bxz = icmp ult i8 %i.bxy, 12
  br i1 %i.bxz, label %bb.xq, label %.thread

bb.xq:                                            ; preds = %bb.xp
  %i.bya = lshr i32 %.01657, 1
  %i.byb = xor i32 %i.bya, %.01657
  %i.byc = and i32 %i.byb, 1
  %i.byd = sub nuw nsw i32 -2, %i.byc
  br label %_ir_fold_cast.exit2050.thread2143

bb.xr:                                            ; preds = %bb.xo
  %i.bye = icmp slt i32 %.11659, %.01667
  br i1 %i.bye, label %bb.xs, label %.thread

bb.xs:                                            ; preds = %bb.xr
  %i.byf = xor i32 %.01657, 3
  br label %_ir_fold_cast.exit2050.thread2154

bb.xt:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.byg = icmp eq i32 %.11659, %.01667
  br i1 %i.byg, label %bb.xu, label %bb.xv

bb.xu:                                            ; preds = %bb.xt
  %i.byh = lshr i32 %.01657, 1
  %i.byi = xor i32 %i.byh, %.01657
  %i.byj = and i32 %i.byi, 1
  %i.byk = sub nuw nsw i32 -2, %i.byj
  br label %_ir_fold_cast.exit2050.thread2143

bb.xv:                                            ; preds = %bb.xt
  %i.byl = icmp slt i32 %.11659, %.01667
  br i1 %i.byl, label %bb.xw, label %.thread

bb.xw:                                            ; preds = %bb.xv
  %i.bym = xor i32 %.01657, 3
  br label %_ir_fold_cast.exit2050.thread2154

bb.xx:                                            ; preds = %bb.e
  br i1 %i.o, label %_ir_fold_cast.exit2050.thread2143.loopexit, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.byn = load i8, ptr %i.p, align 1, !tbaa !23  ; 2 uses
  %i.byo = icmp eq i8 %i.byn, 1
  br i1 %i.byo, label %bb.xz, label %bb.yi

bb.xz:                                            ; preds = %bb.xy
  br i1 %i.q, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  br i1 %i.t, label %_ir_fold_cast.exit2050.thread2143, label %_ir_fold_cast.exit2050.thread2154

bb.yb:                                            ; preds = %bb.xz
  br i1 %i.t, label %_ir_fold_cast.exit2050.thread2154, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  br i1 %i.r, label %bb.yd, label %bb.ye

bb.yd:                                            ; preds = %bb.yc
  br i1 %i.s, label %_ir_fold_cast.exit2050.thread2154, label %bb.yo

bb.ye:                                            ; preds = %bb.yc
  br i1 %or.cond25, label %bb.yf, label %bb.yo

bb.yf:                                            ; preds = %bb.ye
  %i.byp = load i64, ptr %i.z, align 8, !tbaa !23
  %i.byq = icmp eq i64 %i.byp, 1
  br i1 %i.byq, label %bb.yg, label %bb.yo

bb.yg:                                            ; preds = %bb.yf
  %i.byr = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.bys = icmp eq i64 %i.byr, 0
  br i1 %i.bys, label %bb.yh, label %bb.yo

bb.yh:                                            ; preds = %bb.yg
  %i.byt = and i64 %i.ak, 15992
  %.not = icmp eq i64 %i.byt, 0
  %i.byu = shl nuw nsw i32 %i.v, 8
  %.11.v = select i1 %.not, i32 36, i32 34
  %.11 = or disjoint i32 %.11.v, %i.byu
  br label %_ir_fold_cast.exit2050.thread2154

bb.yi:                                            ; preds = %bb.xy
  %i.byv = icmp ult i8 %i.byn, 12
  br i1 %i.byv, label %bb.yj, label %bb.yo

bb.yj:                                            ; preds = %bb.yi
  br i1 %i.q, label %bb.yk, label %bb.ym

bb.yk:                                            ; preds = %bb.yj
  br i1 %i.t, label %bb.yl, label %bb.yo

bb.yl:                                            ; preds = %bb.yk
  store double 0.000000e+00, ptr %.sroa.0, align 8, !tbaa !23
  %i.byw = load i8, ptr %i.p, align 1, !tbaa !23  ; 2 uses
  %i.byx = zext i8 %i.byw to i32
  %i.byy = mul nuw nsw i32 %i.byx, 257
  %i.byz = tail call i32 @ir_const_ex(ptr noundef %0, i64 0, i8 noundef zeroext %i.byw, i32 noundef %i.byy)
  br label %_ir_fold_cast.exit2050.thread2154

bb.ym:                                            ; preds = %bb.yj
  br i1 %or.cond29, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  store double 0.000000e+00, ptr %.sroa.0, align 8, !tbaa !23
  %i.bza = load i8, ptr %i.p, align 1, !tbaa !23  ; 2 uses
  %i.bzb = zext i8 %i.bza to i32
  %i.bzc = mul nuw nsw i32 %i.bzb, 257
  %i.bzd = tail call i32 @ir_const_ex(ptr noundef %0, i64 0, i8 noundef zeroext %i.bza, i32 noundef %i.bzc)
  br label %_ir_fold_cast.exit2050.thread2154

bb.yo:                                            ; preds = %bb.yi, %bb.ym, %bb.yk, %bb.yd, %bb.yg, %bb.yf, %bb.ye
  %i.bze = load i8, ptr %.01703, align 8, !tbaa !23
  switch i8 %i.bze, label %.thread [
    i8 15, label %bb.yp
    i8 14, label %bb.yt
  ]

bb.yp:                                            ; preds = %bb.yo
  %i.bzf = load i32, ptr %i.ab, align 8           ; 2 uses
  %i.bzg = icmp slt i32 %i.bzf, 0
  br i1 %i.bzg, label %bb.yq, label %.thread

bb.yq:                                            ; preds = %bb.yp
  %i.bzh = load ptr, ptr %0, align 8, !tbaa !48
  %i.bzi = sext i32 %i.bzf to i64
  %i.bzj = getelementptr inbounds [16 x i8], ptr %i.bzh, i64 %i.bzi ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzj, i64 1
  %i.bzl = load i8, ptr %i.bzk, align 1, !tbaa !23
  %i.bzm = icmp ult i8 %i.bzl, 12
  br i1 %i.bzm, label %bb.yr, label %.thread

bb.yr:                                            ; preds = %bb.yq
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzj, i64 8
  %i.bzo = load i64, ptr %i.bzn, align 8, !tbaa !23
  %i.bzp = icmp eq i64 %i.bzo, 0
  br i1 %i.bzp, label %bb.ys, label %.thread

bb.ys:                                            ; preds = %bb.yr
  %i.bzq = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2154

bb.yt:                                            ; preds = %bb.yo
  %i.bzr = load i32, ptr %i.ab, align 8           ; 2 uses
  %i.bzs = icmp slt i32 %i.bzr, 0
  br i1 %i.bzs, label %bb.yu, label %.thread

bb.yu:                                            ; preds = %bb.yt
  %i.bzt = load ptr, ptr %0, align 8, !tbaa !48
  %i.bzu = sext i32 %i.bzr to i64
  %i.bzv = getelementptr inbounds [16 x i8], ptr %i.bzt, i64 %i.bzu ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzv, i64 1
  %i.bzx = load i8, ptr %i.bzw, align 1, !tbaa !23
  %i.bzy = icmp ult i8 %i.bzx, 12
  br i1 %i.bzy, label %bb.yv, label %.thread

bb.yv:                                            ; preds = %bb.yu
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzv, i64 8
  %i.caa = load i64, ptr %i.bzz, align 8, !tbaa !23
  %i.cab = icmp eq i64 %i.caa, 0
  br i1 %i.cab, label %bb.yw, label %.thread

bb.yw:                                            ; preds = %bb.yv
  %i.cac = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread2154

.thread:                                          ; preds = %bb.el, %bb.eg, %bb.sk, %bb.sl, %bb.rt, %bb.ry, %bb.rw, %bb.qx, %bb.er, %bb.es, %bb.en, %bb.eo, %bb.ek, %bb.ef, %bb.ec, %bb.sf, %bb.se, %bb.kh, %bb.wf, %bb.wc, %bb.vz, %bb.vw, %bb.vt, %bb.vo, %bb.vg, %bb.va, %bb.us, %bb.uk, %bb.uh, %bb.ub, %bb.ty, %bb.tv, %bb.tn, %bb.th, %bb.te, %bb.ro, %bb.rk, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.eu, %bb.yo, %bb.ql, %bb.qj, %bb.qh, %bb.qf, %bb.qd, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pg, %bb.ot, %bb.os, %bb.rg, %bb.av, %bb.aw, %bb.az, %bb.ba, %bb.eh, %bb.jw, %bb.kc, %bb.kx, %bb.kw, %bb.ku, %bb.lb, %bb.la, %bb.ky, %bb.ld, %bb.lh, %bb.lg, %bb.lf, %bb.lj, %bb.lm, %bb.lp, %bb.lr, %bb.ls, %bb.lt, %bb.lu, %bb.ly, %bb.lx, %bb.mc, %bb.mb, %bb.mj, %bb.mf, %bb.mp, %bb.mm, %bb.ms, %bb.mr, %bb.mv, %bb.mu, %bb.of, %bb.my, %bb.oy, %bb.pd, %bb.pf, %bb.pi, %bb.pl, %bb.po, %bb.qn, %bb.qo, %bb.qt, %bb.qu, %bb.qv, %bb.re, %bb.rl, %bb.rj, %bb.rp, %bb.rn, %bb.rr, %bb.so, %bb.sn, %bb.sq, %bb.sp, %bb.ss, %bb.sr, %bb.su, %bb.st, %bb.sv, %bb.td, %bb.tg, %bb.tm, %bb.tu, %bb.tx, %bb.ua, %bb.ug, %bb.uj, %bb.ur, %bb.uz, %bb.vf, %bb.vn, %bb.vs, %bb.vv, %bb.vy, %bb.wb, %bb.we, %bb.wi, %bb.wk, %bb.wo, %bb.wv, %bb.ww, %bb.wx, %bb.wy, %bb.wl, %bb.xa, %bb.xe, %bb.xm, %bb.xr, %bb.xp, %bb.xv, %bb.yv, %bb.yu, %bb.yt, %bb.yp, %bb.yq, %bb.yr, %bb.e, %bb.d
  %.71665 = phi i32 [ %.11659, %bb.e ], [ %.11659, %bb.av ], [ %.11659, %bb.aw ], [ %.11659, %bb.az ], [ %.11659, %bb.ba ], [ %.11659, %bb.eh ], [ %.11659, %bb.ec ], [ %.11659, %bb.sf ], [ %.11659, %bb.yt ], [ %.11659, %bb.yu ], [ %.11659, %bb.eu ], [ %.11659, %bb.en ], [ %.11659, %bb.ek ], [ %.11659, %bb.ef ], [ %.11659, %bb.jw ], [ %.11659, %bb.kc ], [ %.11659, %bb.vv ], [ %.11659, %bb.kx ], [ %.11659, %bb.kw ], [ %.11659, %bb.ku ], [ %.11659, %bb.lb ], [ %.11659, %bb.la ], [ %.11659, %bb.ky ], [ %.11659, %bb.ld ], [ %.11659, %bb.lh ], [ %.11659, %bb.lg ], [ %.11659, %bb.lf ], [ %.11659, %bb.lj ], [ %.11659, %bb.lm ], [ %.11659, %bb.lp ], [ %.11659, %bb.lr ], [ %.11659, %bb.ls ], [ %.11659, %bb.lt ], [ %.11659, %bb.lu ], [ %.11659, %bb.ly ], [ %.11659, %bb.lx ], [ %.11659, %bb.mc ], [ %.11659, %bb.mb ], [ %.11659, %bb.mj ], [ %.11659, %bb.mf ], [ %.11659, %bb.mp ], [ %.11659, %bb.mm ], [ %.11659, %bb.ms ], [ %.11659, %bb.mr ], [ %.11659, %bb.mv ], [ %.11659, %bb.mu ], [ %.11659, %bb.of ], [ %.11659, %bb.my ], [ %.11659, %bb.os ], [ %.11659, %bb.ot ], [ %.11659, %bb.oy ], [ %.11659, %bb.pd ], [ %.11659, %bb.pf ], [ %.11659, %bb.pg ], [ %.11659, %bb.pi ], [ %.11659, %bb.pl ], [ %.11659, %bb.po ], [ %.11659, %bb.ps ], [ %.11659, %bb.pt ], [ %.11659, %bb.pu ], [ %.11659, %bb.pv ], [ %.11659, %bb.px ], [ %.11659, %bb.py ], [ %.11659, %bb.pz ], [ %.11659, %bb.qa ], [ %.11659, %bb.qd ], [ %.11659, %bb.qf ], [ %.11659, %bb.qh ], [ %.11659, %bb.qj ], [ %.11659, %bb.ql ], [ %.11659, %bb.qn ], [ %.11659, %bb.qo ], [ %.11659, %bb.qp ], [ %.11659, %bb.qq ], [ %.11659, %bb.qr ], [ %.11659, %bb.qs ], [ %.11659, %bb.qt ], [ %.11659, %bb.qu ], [ %.11659, %bb.qv ], [ %.11659, %bb.sk ], [ %.11659, %bb.d ], [ %.11659, %bb.re ], [ %.11659, %bb.rg ], [ %.11659, %bb.yv ], [ %.11659, %bb.yp ], [ %.11659, %bb.yq ], [ %.11659, %bb.rk ], [ %.11659, %bb.rl ], [ %.11659, %bb.rj ], [ %.11659, %bb.yr ], [ %.11659, %bb.xv ], [ %.11659, %bb.xr ], [ %.11659, %bb.ro ], [ %.11659, %bb.rp ], [ %.11659, %bb.rn ], [ %.11659, %bb.qx ], [ %.11659, %bb.rr ], [ %.11659, %bb.er ], [ %.11659, %bb.rt ], [ %.11659, %bb.so ], [ %.11659, %bb.sn ], [ %.11659, %bb.sq ], [ %.11659, %bb.sp ], [ %.11659, %bb.ss ], [ %.11659, %bb.sr ], [ %.11659, %bb.su ], [ %.11659, %bb.st ], [ %.11659, %bb.sv ], [ %.01667, %bb.xp ], [ %.01667, %bb.xm ], [ %.11659, %bb.xe ], [ %.11659, %bb.te ], [ %.11659, %bb.td ], [ %.11659, %bb.yo ], [ %.11659, %bb.xa ], [ %.11659, %bb.wl ], [ %.11659, %bb.th ], [ %.11659, %bb.tg ], [ %.11659, %bb.wv ], [ %.11659, %bb.ww ], [ %.11659, %bb.wx ], [ %.11659, %bb.tn ], [ %.11659, %bb.tm ], [ %.11659, %bb.wy ], [ %.11659, %bb.wo ], [ %.11659, %bb.wk ], [ %.11659, %bb.tv ], [ %.11659, %bb.tu ], [ %.11659, %bb.wi ], [ %.11659, %bb.we ], [ %.11659, %bb.uz ], [ %.11659, %bb.ty ], [ %.11659, %bb.tx ], [ %.11659, %bb.va ], [ %.11659, %bb.vo ], [ %.11659, %bb.wf ], [ %.11659, %bb.ub ], [ %.11659, %bb.ua ], [ %.11659, %bb.wb ], [ %.11659, %bb.vw ], [ %.11659, %bb.vn ], [ %.11659, %bb.uh ], [ %.11659, %bb.ug ], [ %.11659, %bb.vt ], [ %.11659, %bb.wc ], [ %.11659, %bb.vy ], [ %.11659, %bb.uk ], [ %.11659, %bb.uj ], [ %.11659, %bb.vs ], [ %.11659, %bb.vf ], [ %.11659, %bb.vg ], [ %.11659, %bb.us ], [ %.11659, %bb.ur ], [ %.11659, %bb.vz ], [ %.11659, %bb.kh ], [ %.11659, %bb.se ], [ %.11659, %bb.eg ], [ %.11659, %bb.el ], [ %.11659, %bb.eo ], [ %.11659, %bb.es ], [ %.11659, %bb.rw ], [ %.11659, %bb.ry ], [ %.11659, %bb.sl ] ; 5 uses
  %i.cad = icmp eq i32 %.01690, 127
  br i1 %i.cad, label %_ir_fold_cast.exit2050.thread2184, label %bb.yx

bb.yx:                                            ; preds = %.thread
  %i.cae = shl nuw nsw i32 %.01690, 7
  %i.caf = and i32 %.01690, 2080768
  %i.cag = and i32 %i.caf, %i.cae
  %i.cah = and i32 %.01690, 16256
  %i.cai = or disjoint i32 %i.cag, %i.cah
  %i.caj = xor i32 %i.cai, 16383
  br label %_ir_fold_cast.exit2050

_ir_fold_cast.exit2050:                           ; preds = %bb.qx, %bb.rg, %bb.yx
  %.81700 = phi i32 [ %.11693, %bb.rg ], [ %.11693, %bb.yx ], [ %i.ayc, %bb.qx ] ; 3 uses
  %.11691 = phi i32 [ %.01690, %bb.rg ], [ %i.caj, %bb.yx ], [ %.01690, %bb.qx ]
  %.121688 = phi i32 [ 89, %bb.rg ], [ 0, %bb.yx ], [ 8, %bb.qx ]
  %.81666 = phi i32 [ %i.azr, %bb.rg ], [ %.71665, %bb.yx ], [ %.11659, %bb.qx ] ; 2 uses
  switch i32 %.121688, label %_ir_fold_cast.exit2050.unreachabledefault [
    i32 0, label %bb.c
    i32 89, label %_ir_fold_cast.exit2050.thread2154
    i32 8, label %_ir_fold_cast.exit2050.thread2143.loopexit
  ]

_ir_fold_cast.exit2050.thread2154:                ; preds = %bb.ke, %bb.yb, %bb.ls, %bb.xa, %bb.re, %bb.kx, %bb.lu, %bb.yd, %_ir_fold_cast.exit2050, %bb.sy, %bb.kt, %bb.xb, %bb.ka, %bb.ma, %bb.lw, %bb.jz, %bb.qm, %bb.yl, %bb.qk, %bb.yh, %bb.qi, %bb.yw, %bb.qg, %bb.ys, %bb.rc, %bb.qe, %bb.lv, %bb.ya, %bb.jx, %bb.qc, %bb.mo, %bb.xw, %bb.xs, %bb.mi, %bb.ml, %bb.lq, %bb.xd, %bb.me, %bb.lo, %bb.ll, %bb.li, %bb.pq, %bb.pp, %bb.le, %bb.pm, %bb.lc, %bb.ph, %ir_next_const.exit.i.i, %bb.wz, %bb.pe, %bb.pc, %bb.wu, %bb.oz, %bb.ox, %bb.wp, %bb.ou, %bb.rz, %bb.ru, %bb.wg, %bb.or, %bb.oq, %bb.op, %bb.oe, %bb.nu, %bb.nk, %bb.wd, %bb.wa, %bb.mx, %bb.mt, %bb.mq, %bb.vx, %bb.bc, %bb.vu, %bb.bb, %bb.vm, %bb.vr, %bb.ve, %bb.ay, %bb.vj, %bb.ax, %bb.uy, %bb.vb, %bb.uq, %bb.ut, %bb.ul, %bb.yn, %bb.ui, %bb.uf, %bb.tz, %bb.tt, %bb.tw, %bb.tl, %bb.to, %bb.ti, %bb.tf, %bb.rx, %bb.oo, %bb.on, %_ir_fold_cast.exit2030, %bb.sm, %bb.od, %_ir_fold_cast.exit2038, %bb.rq, %bb.rm, %bb.ri, %bb.rh, %bb.nt, %_ir_fold_cast.exit2046, %bb.nj, %_ir_fold_cast.exit2054, %bb.rd, %bb.ra
  %.132166.ph = phi i32 [ %i.axj, %bb.qi ], [ %.11, %bb.yh ], [ %i.axl, %bb.qk ], [ 271, %bb.yl ], [ %i.axn, %bb.qm ], [ 301, %bb.jz ], [ %i.amq, %bb.lw ], [ %i.anc, %bb.ma ], [ %.01657, %bb.sy ], [ %.01657, %bb.nt ], [ %.01657, %bb.rh ], [ %i.bab, %bb.ri ], [ %i.bau, %bb.rm ], [ %i.bbd, %bb.rq ], [ %.01657, %_ir_fold_cast.exit2038 ], [ %.01657, %bb.od ], [ %i.bcx, %bb.sm ], [ %.01657, %bb.xb ], [ %.01657, %_ir_fold_cast.exit2030 ], [ %.01657, %bb.on ], [ %.01657, %bb.oo ], [ %.01657, %bb.ru ], [ %.01657, %bb.tf ], [ %.01657, %bb.ti ], [ %i.bij, %bb.to ], [ %.01657, %bb.tl ], [ %i.bjr, %bb.tw ], [ %.5, %bb.tt ], [ %i.bkh, %bb.tz ], [ %.6, %bb.uf ], [ %.01657, %bb.ui ], [ 270, %bb.yn ], [ %.01657, %bb.ul ], [ %.01657, %bb.ut ], [ %.7, %bb.uq ], [ %.01657, %bb.vb ], [ %.8, %bb.uy ], [ %.01657, %bb.ax ], [ %.9, %bb.vj ], [ %.01657, %bb.ay ], [ %.01657, %bb.ve ], [ %.10, %bb.vr ], [ %.01657, %bb.vm ], [ %.01657, %bb.bb ], [ %.01657, %bb.vu ], [ %.01657, %bb.bc ], [ %.01657, %bb.vx ], [ %i.aop, %bb.mq ], [ %i.aos, %bb.mt ], [ %i.ape, %bb.mx ], [ %.01657, %bb.wa ], [ %.01657, %bb.wd ], [ %i.azb, %bb.ra ], [ %.01657, %bb.nk ], [ %.01657, %bb.nu ], [ %.01657, %bb.oe ], [ %.01657, %bb.op ], [ %.01657, %bb.oq ], [ %.01657, %bb.or ], [ %.01657, %bb.wg ], [ %.01657, %bb.rz ], [ %.01657, %bb.rx ], [ %i.azi, %bb.rd ], [ %i.avk, %bb.ou ], [ %i.bvq, %bb.wp ], [ %i.avo, %bb.ox ], [ %i.avq, %bb.oz ], [ %i.bwn, %bb.wu ], [ %i.avu, %bb.pc ], [ %i.avw, %bb.pe ], [ %i.bxi, %bb.wz ], [ %.01657, %ir_next_const.exit.i.i ], [ %i.awa, %bb.ph ], [ %i.aku, %bb.lc ], [ %i.awg, %bb.pm ], [ %i.ale, %bb.le ], [ %i.awk, %bb.pp ], [ %.01657, %bb.pq ], [ %.01657, %bb.li ], [ %i.alv, %bb.ll ], [ %i.amc, %bb.lo ], [ %i.ann, %bb.me ], [ %.01657, %_ir_fold_cast.exit2046 ], [ %i.bxm, %bb.xd ], [ %.01657, %bb.kt ], [ 301, %bb.ka ], [ %i.amf, %bb.lq ], [ %i.aoi, %bb.ml ], [ %i.any, %bb.mi ], [ %i.byf, %bb.xs ], [ %.01657, %_ir_fold_cast.exit2054 ], [ %i.bym, %bb.xw ], [ %i.aol, %bb.mo ], [ %i.axd, %bb.qc ], [ %.01657, %bb.jx ], [ 302, %bb.ya ], [ %i.amo, %bb.lv ], [ %i.axf, %bb.qe ], [ %i.aze, %bb.rc ], [ %.01657, %bb.nj ], [ %.01657, %bb.ys ], [ %i.axh, %bb.qg ], [ %.01657, %bb.yw ], [ 303, %bb.yb ], [ 271, %bb.ls ], [ 301, %bb.yd ], [ %.01657, %bb.xa ], [ 301, %bb.ke ], [ %.01657, %bb.re ], [ %.01657, %bb.kx ], [ 270, %bb.lu ], [ %.01657, %_ir_fold_cast.exit2050 ] ; 2 uses
  %.816662165.ph.a = phi i32 [ %.11659, %bb.qi ], [ %.11659, %bb.yh ], [ %.11659, %bb.qk ], [ %.11659, %bb.yl ], [ %.11659, %bb.qm ], [ %.11659, %bb.jz ], [ %.11659, %bb.lw ], [ %i.amw, %bb.ma ], [ %i.beu, %bb.sy ], [ %.0.i2043, %bb.nt ], [ %i.azz, %bb.rh ], [ %i.baa, %bb.ri ], [ %.11659, %bb.rm ], [ %.11659, %bb.rq ], [ %.0.i2035, %_ir_fold_cast.exit2038 ], [ %.0.i2035, %bb.od ], [ %i.bci, %bb.sm ], [ %.01667, %bb.xb ], [ %.0.i2027, %_ir_fold_cast.exit2030 ], [ %.0.i2027, %bb.on ], [ %.0.i2027, %bb.oo ], [ %i.bbm, %bb.ru ], [ %i.bgn, %bb.tf ], [ %i.bhd, %bb.ti ], [ %i.bio, %bb.to ], [ %i.bht, %bb.tl ], [ %i.bjw, %bb.tw ], [ %i.bjb, %bb.tt ], [ %i.bki, %bb.tz ], [ %i.bla, %bb.uf ], [ %i.blv, %bb.ui ], [ %.11659, %bb.yn ], [ %i.bml, %bb.ul ], [ %i.bns, %bb.ut ], [ %i.bmy, %bb.uq ], [ %i.boz, %bb.vb ], [ %i.bof, %bb.uy ], [ %.11659, %bb.ax ], [ %i.bpa, %bb.vj ], [ %.11659, %bb.ay ], [ %i.bpo, %bb.ve ], [ %i.bqf, %bb.vr ], [ %i.bqt, %bb.vm ], [ %.11659, %bb.bb ], [ %i.bru, %bb.vu ], [ %.11659, %bb.bc ], [ %i.bsk, %bb.vx ], [ %i.aoj, %bb.mq ], [ %i.aot, %bb.mt ], [ %i.aoy, %bb.mx ], [ %i.bta, %bb.wa ], [ %i.btq, %bb.wd ], [ %i.ayp, %bb.ra ], [ %.0.i2051, %bb.nk ], [ %.0.i2043, %bb.nu ], [ %.0.i2035, %bb.oe ], [ %i.auj, %bb.op ], [ %i.aur, %bb.oq ], [ %i.auz, %bb.or ], [ %i.bug, %bb.wg ], [ %i.bbq, %bb.rz ], [ %i.bbo, %bb.rx ], [ %i.ayp, %bb.rd ], [ %.11659, %bb.ou ], [ %i.buu, %bb.wp ], [ %.11659, %bb.ox ], [ %.11659, %bb.oz ], [ %i.buu, %bb.wu ], [ %.11659, %bb.pc ], [ %.11659, %bb.pe ], [ %i.buu, %bb.wz ], [ %i.beu, %ir_next_const.exit.i.i ], [ %.11659, %bb.ph ], [ %i.ajz, %bb.lc ], [ %.11659, %bb.pm ], [ %i.akw, %bb.le ], [ %.11659, %bb.pp ], [ %i.awl, %bb.pq ], [ %i.alo, %bb.li ], [ %.11659, %bb.ll ], [ %.01667, %bb.lo ], [ %i.anh, %bb.me ], [ %.0.i2043, %_ir_fold_cast.exit2046 ], [ %.01667, %bb.xd ], [ %i.aiy, %bb.kt ], [ %.11659, %bb.ka ], [ %.01667, %bb.lq ], [ %i.ano, %bb.ml ], [ %i.ans, %bb.mi ], [ %.01667, %bb.xs ], [ %.0.i2051, %_ir_fold_cast.exit2054 ], [ %.01667, %bb.xw ], [ %i.aom, %bb.mo ], [ %.11659, %bb.qc ], [ %i.ahq, %bb.jx ], [ %.11659, %bb.ya ], [ %.01667, %bb.lv ], [ %.11659, %bb.qe ], [ %i.ayp, %bb.rc ], [ %.0.i2051, %bb.nj ], [ %i.bzq, %bb.ys ], [ %.11659, %bb.qg ], [ %i.cac, %bb.yw ], [ %.11659, %bb.yb ], [ %.11659, %bb.ls ], [ %.11659, %bb.yd ], [ %.01667, %bb.xa ], [ %i.ahy, %bb.ke ], [ %i.azk, %bb.re ], [ %i.ajd, %bb.kx ], [ %.11659, %bb.lu ], [ %.81666, %_ir_fold_cast.exit2050 ] ; 2 uses
  %.516722164.ph.a = phi i32 [ 0, %bb.qi ], [ 0, %bb.yh ], [ 0, %bb.qk ], [ %i.byz, %bb.yl ], [ %.11659, %bb.qm ], [ 0, %bb.jz ], [ %i.amr, %bb.lw ], [ 0, %bb.ma ], [ %.03946.i.i, %bb.sy ], [ %i.art, %bb.nt ], [ %.01667, %bb.rh ], [ %.01667, %bb.ri ], [ %.01667, %bb.rm ], [ %.01667, %bb.rq ], [ %i.asn, %_ir_fold_cast.exit2038 ], [ %i.asz, %bb.od ], [ 0, %bb.sm ], [ %.11659, %bb.xb ], [ %i.att, %_ir_fold_cast.exit2030 ], [ %i.auf, %bb.on ], [ %i.aui, %bb.oo ], [ %.01667, %bb.ru ], [ %i.bgs, %bb.tf ], [ %i.bhi, %bb.ti ], [ %i.bhj, %bb.to ], [ %i.bhy, %bb.tl ], [ %i.bip, %bb.tw ], [ %i.bjg, %bb.tt ], [ %i.bkn, %bb.tz ], [ %i.blf, %bb.uf ], [ %i.blq, %bb.ui ], [ %i.bzd, %bb.yn ], [ %i.bmg, %bb.ul ], [ %i.bmm, %bb.ut ], [ %i.bnd, %bb.uq ], [ %i.bnt, %bb.vb ], [ %i.bok, %bb.uy ], [ %.11659, %bb.ax ], [ %i.bqe, %bb.vj ], [ %.11659, %bb.ay ], [ %i.bpk, %bb.ve ], [ %i.brj, %bb.vr ], [ %i.bqp, %bb.vm ], [ %.11659, %bb.bb ], [ %i.brz, %bb.vu ], [ %.11659, %bb.bc ], [ %i.bsp, %bb.vx ], [ 0, %bb.mq ], [ 0, %bb.mt ], [ 0, %bb.mx ], [ %i.btf, %bb.wa ], [ %i.btv, %bb.wd ], [ %.01667, %bb.ra ], [ %i.aqo, %bb.nk ], [ %i.arw, %bb.nu ], [ %i.atc, %bb.oe ], [ %i.auq, %bb.op ], [ %i.auy, %bb.oq ], [ %i.avh, %bb.or ], [ %i.bul, %bb.wg ], [ %.01667, %bb.rz ], [ %.01667, %bb.rx ], [ %.01667, %bb.rd ], [ 0, %bb.ou ], [ %i.bux, %bb.wp ], [ %.11659, %bb.ox ], [ 0, %bb.oz ], [ %i.bux, %bb.wu ], [ %.11659, %bb.pc ], [ 0, %bb.pe ], [ %i.bvr, %bb.wz ], [ %i.bfx, %ir_next_const.exit.i.i ], [ 0, %bb.ph ], [ %i.ake, %bb.lc ], [ 0, %bb.pm ], [ %i.alf, %bb.le ], [ 0, %bb.pp ], [ %i.awm, %bb.pq ], [ %i.alp, %bb.li ], [ 0, %bb.ll ], [ 0, %bb.lo ], [ 0, %bb.me ], [ %i.arh, %_ir_fold_cast.exit2046 ], [ %i.bxo, %bb.xd ], [ %i.ajb, %bb.kt ], [ 0, %bb.ka ], [ 0, %bb.lq ], [ 0, %bb.ml ], [ 0, %bb.mi ], [ %.11659, %bb.xs ], [ %i.apz, %_ir_fold_cast.exit2054 ], [ %.11659, %bb.xw ], [ 0, %bb.mo ], [ 0, %bb.qc ], [ %.01667, %bb.jx ], [ %.01673, %bb.ya ], [ %i.amp, %bb.lv ], [ 0, %bb.qe ], [ %.01667, %bb.rc ], [ %i.aql, %bb.nj ], [ %.01667, %bb.ys ], [ 0, %bb.qg ], [ %.01673, %bb.yw ], [ %.01667, %bb.yb ], [ %.01667, %bb.ls ], [ 0, %bb.yd ], [ %.11659, %bb.xa ], [ 0, %bb.ke ], [ %.01667, %bb.re ], [ %i.aji, %bb.kx ], [ %.01667, %bb.lu ], [ %.01667, %_ir_fold_cast.exit2050 ] ; 2 uses
  %.216752163.ph.a = phi i32 [ %.01673, %bb.qi ], [ 0, %bb.yh ], [ %.01673, %bb.qk ], [ 0, %bb.yl ], [ %.01673, %bb.qm ], [ %.01673, %bb.jz ], [ %.01673, %bb.lw ], [ %.01673, %bb.ma ], [ %.01673, %bb.sy ], [ %.01673, %bb.nt ], [ %.01673, %bb.rh ], [ %.01673, %bb.ri ], [ %.01673, %bb.rm ], [ %.01673, %bb.rq ], [ %.01673, %_ir_fold_cast.exit2038 ], [ %.01673, %bb.od ], [ %.01673, %bb.sm ], [ %.01673, %bb.xb ], [ %.01673, %_ir_fold_cast.exit2030 ], [ %.01673, %bb.on ], [ %.01673, %bb.oo ], [ %.01673, %bb.ru ], [ %.01673, %bb.tf ], [ %.01673, %bb.ti ], [ %.01673, %bb.to ], [ %.01673, %bb.tl ], [ %.01673, %bb.tw ], [ %.01673, %bb.tt ], [ %.01673, %bb.tz ], [ %.01673, %bb.uf ], [ %.01673, %bb.ui ], [ 0, %bb.yn ], [ %.01673, %bb.ul ], [ %.01673, %bb.ut ], [ %.01673, %bb.uq ], [ %.01673, %bb.vb ], [ %.01673, %bb.uy ], [ %.01673, %bb.ax ], [ %.01673, %bb.vj ], [ %.01673, %bb.ay ], [ %.01673, %bb.ve ], [ %.01673, %bb.vr ], [ %.01673, %bb.vm ], [ %.01673, %bb.bb ], [ %.01673, %bb.vu ], [ %.01673, %bb.bc ], [ %.01673, %bb.vx ], [ %.01673, %bb.mq ], [ %.01673, %bb.mt ], [ %.01673, %bb.mx ], [ %.01673, %bb.wa ], [ %.01673, %bb.wd ], [ %.01673, %bb.ra ], [ %.01673, %bb.nk ], [ %.01673, %bb.nu ], [ %.01673, %bb.oe ], [ %.01673, %bb.op ], [ %.01673, %bb.oq ], [ %.01673, %bb.or ], [ %.01673, %bb.wg ], [ %.01673, %bb.rz ], [ %.01673, %bb.rx ], [ %.01673, %bb.rd ], [ %.01673, %bb.ou ], [ %.01673, %bb.wp ], [ %.01673, %bb.ox ], [ %.01673, %bb.oz ], [ %.01673, %bb.wu ], [ %.01673, %bb.pc ], [ %.01673, %bb.pe ], [ %.01673, %bb.wz ], [ %.01673, %ir_next_const.exit.i.i ], [ %.01673, %bb.ph ], [ %.01673, %bb.lc ], [ %.01673, %bb.pm ], [ %.01673, %bb.le ], [ %.01673, %bb.pp ], [ %.01673, %bb.pq ], [ %.01673, %bb.li ], [ %.01673, %bb.ll ], [ %.01673, %bb.lo ], [ %.01673, %bb.me ], [ %.01673, %_ir_fold_cast.exit2046 ], [ %.01673, %bb.xd ], [ %.01673, %bb.kt ], [ %.01673, %bb.ka ], [ %.01673, %bb.lq ], [ %.01673, %bb.ml ], [ %.01673, %bb.mi ], [ %.01673, %bb.xs ], [ %.01673, %_ir_fold_cast.exit2054 ], [ %.01673, %bb.xw ], [ %.01673, %bb.mo ], [ %.01673, %bb.qc ], [ %.01673, %bb.jx ], [ 0, %bb.ya ], [ %.01673, %bb.lv ], [ %.01673, %bb.qe ], [ %.01673, %bb.rc ], [ %.01673, %bb.nj ], [ %.01673, %bb.ys ], [ %.01673, %bb.qg ], [ %.01667, %bb.yw ], [ 0, %bb.yb ], [ %.01673, %bb.ls ], [ 0, %bb.yd ], [ %.01673, %bb.xa ], [ %.01673, %bb.ke ], [ %.01673, %bb.re ], [ %.01673, %bb.kx ], [ %.01673, %bb.lu ], [ %.01673, %_ir_fold_cast.exit2050 ] ; 2 uses
  %.817002162.ph = phi i32 [ %.11693, %bb.qi ], [ %.11693, %bb.yh ], [ %.11693, %bb.qk ], [ %.11693, %bb.yl ], [ %.11693, %bb.qm ], [ %.11693, %bb.jz ], [ %.11693, %bb.lw ], [ %.11693, %bb.ma ], [ %.11693, %bb.sy ], [ %.11693, %bb.nt ], [ %.11693, %bb.rh ], [ %.11693, %bb.ri ], [ %.11693, %bb.rm ], [ %.11693, %bb.rq ], [ %.11693, %_ir_fold_cast.exit2038 ], [ %.11693, %bb.od ], [ %.11693, %bb.sm ], [ %.11693, %bb.xb ], [ %.11693, %_ir_fold_cast.exit2030 ], [ %.11693, %bb.on ], [ %.11693, %bb.oo ], [ %.11693, %bb.ru ], [ %.11693, %bb.tf ], [ %.11693, %bb.ti ], [ %.11693, %bb.to ], [ %.11693, %bb.tl ], [ %.11693, %bb.tw ], [ %.11693, %bb.tt ], [ %.11693, %bb.tz ], [ %.11693, %bb.uf ], [ %.11693, %bb.ui ], [ %.11693, %bb.yn ], [ %.11693, %bb.ul ], [ %.11693, %bb.ut ], [ %.11693, %bb.uq ], [ %.11693, %bb.vb ], [ %.11693, %bb.uy ], [ %.11693, %bb.ax ], [ %.11693, %bb.vj ], [ %.11693, %bb.ay ], [ %.11693, %bb.ve ], [ %.11693, %bb.vr ], [ %.11693, %bb.vm ], [ %.11693, %bb.bb ], [ %.11693, %bb.vu ], [ %.11693, %bb.bc ], [ %.11693, %bb.vx ], [ %.11693, %bb.mq ], [ %.11693, %bb.mt ], [ %.11693, %bb.mx ], [ %.11693, %bb.wa ], [ %.11693, %bb.wd ], [ %.11693, %bb.ra ], [ %.11693, %bb.nk ], [ %.11693, %bb.nu ], [ %.11693, %bb.oe ], [ %.11693, %bb.op ], [ %.11693, %bb.oq ], [ %.11693, %bb.or ], [ %.11693, %bb.wg ], [ %.11693, %bb.rz ], [ %.11693, %bb.rx ], [ %.11693, %bb.rd ], [ %.11693, %bb.ou ], [ %.11693, %bb.wp ], [ %.11693, %bb.ox ], [ %.11693, %bb.oz ], [ %.11693, %bb.wu ], [ %.11693, %bb.pc ], [ %.11693, %bb.pe ], [ %.11693, %bb.wz ], [ %.11693, %ir_next_const.exit.i.i ], [ %.11693, %bb.ph ], [ %.11693, %bb.lc ], [ %.11693, %bb.pm ], [ %.11693, %bb.le ], [ %.11693, %bb.pp ], [ %.11693, %bb.pq ], [ %.11693, %bb.li ], [ %.11693, %bb.ll ], [ %.11693, %bb.lo ], [ %.11693, %bb.me ], [ %.11693, %_ir_fold_cast.exit2046 ], [ %.11693, %bb.xd ], [ %.11693, %bb.kt ], [ %.11693, %bb.ka ], [ %.11693, %bb.lq ], [ %.11693, %bb.ml ], [ %.11693, %bb.mi ], [ %.11693, %bb.xs ], [ %.11693, %_ir_fold_cast.exit2054 ], [ %.11693, %bb.xw ], [ %.11693, %bb.mo ], [ %.11693, %bb.qc ], [ %.11693, %bb.jx ], [ %.11693, %bb.ya ], [ %.11693, %bb.lv ], [ %.11693, %bb.qe ], [ %.11693, %bb.rc ], [ %.11693, %bb.nj ], [ %.11693, %bb.ys ], [ %.11693, %bb.qg ], [ %.11693, %bb.yw ], [ %.11693, %bb.yb ], [ %.11693, %bb.ls ], [ %.11693, %bb.yd ], [ %.11693, %bb.xa ], [ %.11693, %bb.ke ], [ %.11693, %bb.re ], [ %.11693, %bb.kx ], [ %.11693, %bb.lu ], [ %.81700, %_ir_fold_cast.exit2050 ]
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not1928 = icmp eq ptr %.pr, null
  br i1 %.not1928, label %_ir_fold_cast.exit2050.thread2154.thread, label %bb.yy

_ir_fold_cast.exit2050.thread2154.thread:         ; preds = %bb.kv, %_ir_fold_cast.exit2050.thread2154
  %.8170021625906 = phi i32 [ %.817002162.ph, %_ir_fold_cast.exit2050.thread2154 ], [ %.11693, %bb.kv ]
  %.2167521635905 = phi i32 [ %.216752163.ph.a, %_ir_fold_cast.exit2050.thread2154 ], [ %.01673, %bb.kv ] ; 2 uses
  %.5167221645904 = phi i32 [ %.516722164.ph.a, %_ir_fold_cast.exit2050.thread2154 ], [ %i.aji, %bb.kv ] ; 2 uses
  %.8166621655903 = phi i32 [ %.816662165.ph.a, %_ir_fold_cast.exit2050.thread2154 ], [ %i.ajd, %bb.kv ] ; 2 uses
  %.1321665902 = phi i32 [ %.132166.ph, %_ir_fold_cast.exit2050.thread2154 ], [ %.01657, %bb.kv ]
  %i.cak = load ptr, ptr %0, align 8, !tbaa !48   ; 3 uses
  %i.cal = sext i32 %.8166621655903 to i64
  %i.cam = getelementptr inbounds [16 x i8], ptr %i.cak, i64 %i.cal
  %i.can = sext i32 %.5167221645904 to i64
  %i.cao = getelementptr inbounds [16 x i8], ptr %i.cak, i64 %i.can
  %i.cap = sext i32 %.2167521635905 to i64
  %i.caq = getelementptr inbounds [16 x i8], ptr %i.cak, i64 %i.cap
  br label %bb.b

bb.yy:                                            ; preds = %_ir_fold_cast.exit2050.thread2154
  %i.car = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.132166.ph, ptr %i.car, align 8, !tbaa !23
  %i.cas = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.816662165.ph.a, ptr %i.cas, align 4, !tbaa !23
  %i.cat = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.516722164.ph.a, ptr %i.cat, align 8, !tbaa !23
  %i.cau = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.216752163.ph.a, ptr %i.cau, align 4, !tbaa !23
  br label %.loopexit

_ir_fold_cast.exit2050.thread2184:                ; preds = %.thread
  %i.cav = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not1925 = icmp eq ptr %i.cav, null
  br i1 %.not1925, label %bb.yz, label %bb.zh

bb.yz:                                            ; preds = %_ir_fold_cast.exit2050.thread2184
  %i.caw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cax = zext nneg i32 %i.f to i64
  %i.cay = getelementptr inbounds nuw [4 x i8], ptr %i.caw, i64 %i.cax ; 3 uses
  %i.caz = load i32, ptr %i.cay, align 4, !tbaa !69 ; 3 uses
  %.not.i = icmp eq i32 %i.caz, 0
  br i1 %.not.i, label %_ir_fold_cse.exit.thread, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.cba = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cbb = load i32, ptr %i.cba, align 4, !tbaa !53
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.71665, i32 %i.cbb)
  %.1.i = tail call i32 @llvm.smax.i32(i32 %.01667, i32 %spec.select.i)
  %.2.i = tail call i32 @llvm.smax.i32(i32 %.01673, i32 %.1.i) ; 2 uses
  %.not4042.i = icmp slt i32 %i.caz, %.2.i
  br i1 %.not4042.i, label %_ir_fold_cse.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.za
  %i.cbc = load ptr, ptr %0, align 8, !tbaa !48
  br label %bb.zb

bb.zb:                                            ; preds = %bb.zf, %.lr.ph.i
  %.03143.i = phi i32 [ %i.caz, %.lr.ph.i ], [ %i.cbu, %bb.zf ] ; 4 uses
  %i.cbd = sext i32 %.03143.i to i64
  %i.cbe = getelementptr inbounds [16 x i8], ptr %i.cbc, i64 %i.cbd ; 5 uses
  %i.cbf = load i16, ptr %i.cbe, align 8, !tbaa !23
  %i.cbg = zext i16 %i.cbf to i32
  %i.cbh = icmp eq i32 %.01657, %i.cbg
  br i1 %i.cbh, label %bb.zc, label %bb.zf

bb.zc:                                            ; preds = %bb.zb
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbe, i64 4
  %i.cbj = load i32, ptr %i.cbi, align 4, !tbaa !23
  %i.cbk = icmp eq i32 %i.cbj, %.71665
  br i1 %i.cbk, label %bb.zd, label %bb.zf

bb.zd:                                            ; preds = %bb.zc
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbe, i64 8
  %i.cbm = load i32, ptr %i.cbl, align 8, !tbaa !23
  %i.cbn = icmp eq i32 %i.cbm, %.01667
  br i1 %i.cbn, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbe, i64 12
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !23
  %i.cbq = icmp eq i32 %i.cbp, %.01673
  br i1 %i.cbq, label %_ir_fold_cse.exit, label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %bb.zd, %bb.zc, %bb.zb
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbe, i64 2
  %i.cbs = load i16, ptr %i.cbr, align 2, !tbaa !23 ; 2 uses
  %.not41.i = icmp eq i16 %i.cbs, 0
  %i.cbt = zext i16 %i.cbs to i32
  %i.cbu = sub nsw i32 %.03143.i, %i.cbt          ; 2 uses
  %.not40.i = icmp slt i32 %i.cbu, %.2.i
  %or.cond.i = select i1 %.not41.i, i1 true, i1 %.not40.i
  br i1 %or.cond.i, label %_ir_fold_cse.exit.thread, label %bb.zb, !llvm.loop !122

_ir_fold_cse.exit:                                ; preds = %bb.ze
  %.not1926 = icmp eq i32 %.03143.i, 0
  br i1 %.not1926, label %_ir_fold_cse.exit.thread, label %.loopexit

_ir_fold_cse.exit.thread:                         ; preds = %bb.zf, %bb.za, %bb.yz, %_ir_fold_cse.exit
  %i.cbv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cbw = load i32, ptr %i.cbv, align 8, !tbaa !46 ; 6 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cby = load i32, ptr %i.cbx, align 4, !tbaa !50
  %.not.i.i2055 = icmp slt i32 %i.cbw, %i.cby
  br i1 %.not.i.i2055, label %ir_emit.exit, label %bb.zg, !prof !68

bb.zg:                                            ; preds = %_ir_fold_cse.exit.thread
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit

ir_emit.exit:                                     ; preds = %_ir_fold_cse.exit.thread, %bb.zg
  %i.cbz = add nsw i32 %i.cbw, 1
  store i32 %i.cbz, ptr %i.cbv, align 8, !tbaa !46
  %i.cca = load ptr, ptr %0, align 8, !tbaa !48
  %i.ccb = sext i32 %i.cbw to i64                 ; 2 uses
  %i.ccc = getelementptr inbounds [16 x i8], ptr %i.cca, i64 %i.ccb ; 4 uses
  store i32 %.01657, ptr %i.ccc, align 8, !tbaa !23
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 4
  store i32 %.71665, ptr %i.ccd, align 4, !tbaa !23
  %i.cce = getelementptr inbounds nuw i8, ptr %i.ccc, i64 8
  store i32 %.01667, ptr %i.cce, align 8, !tbaa !23
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.ccc, i64 12
  store i32 %.01673, ptr %i.ccf, align 4, !tbaa !23
  %i.ccg = load i32, ptr %i.cay, align 4, !tbaa !69 ; 2 uses
  %i.cch = load ptr, ptr %0, align 8, !tbaa !48
  %i.cci = getelementptr inbounds [16 x i8], ptr %i.cch, i64 %i.ccb
  %.not1927 = icmp eq i32 %i.ccg, 0
  %i.ccj = sub nsw i32 %i.cbw, %i.ccg             ; 2 uses
  %i.cck = icmp sgt i32 %i.ccj, 65535
  %i.ccl = trunc i32 %i.ccj to i16
  %i.ccm = select i1 %.not1927, i1 true, i1 %i.cck
  %.sink9276 = select i1 %i.ccm, i16 0, i16 %i.ccl
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cci, i64 2
  store i16 %.sink9276, ptr %i.ccn, align 2, !tbaa !23
  store i32 %i.cbw, ptr %i.cay, align 4, !tbaa !69
  br label %.loopexit

bb.zh:                                            ; preds = %_ir_fold_cast.exit2050.thread2184
  %i.cco = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.01657, ptr %i.cco, align 8, !tbaa !23
  %i.ccp = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.71665, ptr %i.ccp, align 4, !tbaa !23
  %i.ccq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.01667, ptr %i.ccq, align 8, !tbaa !23
  %i.ccr = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.01673, ptr %i.ccr, align 4, !tbaa !23
  br label %.loopexit

_ir_fold_cast.exit2050.thread2172:                ; preds = %bb.xb, %bb.cs, %bb.de, %bb.cq, %bb.jp, %bb.co, %bb.jr, %bb.cm, %bb.xg, %bb.ck, %bb.da, %bb.dk, %bb.db, %bb.cu, %bb.cy, %bb.di, %bb.dd, %bb.cv, %bb.cx
  %.132183 = phi i32 [ %.01657, %bb.cx ], [ %.01657, %bb.cs ], [ %.01657, %bb.de ], [ %.01657, %bb.cq ], [ %.01657, %bb.jp ], [ %.01657, %bb.co ], [ %i.ahb, %bb.jr ], [ %.01657, %bb.cm ], [ %.01657, %bb.xg ], [ %.01657, %bb.ck ], [ %.01657, %bb.da ], [ %.01657, %bb.dk ], [ %.01657, %bb.db ], [ %.01657, %bb.cu ], [ %.01657, %bb.cy ], [ %.01657, %bb.di ], [ %.01657, %bb.dd ], [ %.01657, %bb.cv ], [ %.01657, %bb.xb ] ; 2 uses
  %i.ccs = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not1924 = icmp eq ptr %i.ccs, null
  br i1 %.not1924, label %bb.zi, label %bb.zk

bb.zi:                                            ; preds = %_ir_fold_cast.exit2050.thread2172
  %i.cct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ccu = load i32, ptr %i.cct, align 8, !tbaa !46 ; 4 uses
  %i.ccv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !50
  %.not.i.i2056 = icmp slt i32 %i.ccu, %i.ccw
  br i1 %.not.i.i2056, label %ir_emit.exit2057, label %bb.zj, !prof !68

bb.zj:                                            ; preds = %bb.zi
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit2057

ir_emit.exit2057:                                 ; preds = %bb.zi, %bb.zj
  %i.ccx = add nsw i32 %i.ccu, 1
  store i32 %i.ccx, ptr %i.cct, align 8, !tbaa !46
  %i.ccy = load ptr, ptr %0, align 8, !tbaa !48
  %i.ccz = sext i32 %i.ccu to i64
  %i.cda = getelementptr inbounds [16 x i8], ptr %i.ccy, i64 %i.ccz ; 4 uses
  store i32 %.132183, ptr %i.cda, align 8, !tbaa !23
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cda, i64 4
  store i32 %.11659, ptr %i.cdb, align 4, !tbaa !23
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cda, i64 8
  store i32 %.01667, ptr %i.cdc, align 8, !tbaa !23
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cda, i64 12
  store i32 %.01673, ptr %i.cdd, align 4, !tbaa !23
  br label %.loopexit

bb.zk:                                            ; preds = %_ir_fold_cast.exit2050.thread2172
  %i.cde = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.132183, ptr %i.cde, align 8, !tbaa !23
  %i.cdf = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.11659, ptr %i.cdf, align 4, !tbaa !23
  %i.cdg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.01667, ptr %i.cdg, align 8, !tbaa !23
  %i.cdh = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.01673, ptr %i.cdh, align 4, !tbaa !23
  br label %.loopexit

_ir_fold_cast.exit2050.thread2143.loopexit:       ; preds = %bb.wj, %bb.av, %bb.aw, %bb.az, %bb.ba, %bb.os, %bb.ot, %bb.ov, %bb.pa, %bb.pf, %bb.pg, %bb.pk, %bb.pn, %bb.ps, %bb.pt, %bb.pu, %bb.pv, %bb.px, %bb.py, %bb.pz, %bb.qa, %bb.qd, %bb.qf, %bb.qh, %bb.qj, %bb.ql, %bb.qn, %bb.qo, %bb.qs, %bb.qt, %bb.eu, %bb.qu, %bb.so, %bb.sq, %bb.ss, %bb.su, %bb.wi, %bb.wk, %bb.wh, %bb.xi, %bb.xx, %bb.qp, %bb.qq, %bb.qr, %bb.jw, %bb.e, %bb.lr, %bb.lt, %bb.rf, %bb.sb, %bb.sd, %bb.sf, %bb.kh, %bb.kh, %bb.kh, %bb.ke, %_ir_fold_cast.exit2050
  %.817002151.ph = phi i32 [ %i.ahy, %bb.ke ], [ -2, %bb.kh ], [ -2, %bb.kh ], [ -2, %bb.kh ], [ %.11659, %bb.sd ], [ %.11659, %bb.sb ], [ -2, %bb.av ], [ -3, %bb.aw ], [ -2, %bb.az ], [ -3, %bb.ba ], [ %.01667, %bb.os ], [ %.01667, %bb.ot ], [ %.11659, %bb.ov ], [ %.11659, %bb.pa ], [ %.11659, %bb.pf ], [ %.11659, %bb.pg ], [ %.11659, %bb.pk ], [ %.11659, %bb.pn ], [ %.01667, %bb.ps ], [ %.01667, %bb.pt ], [ %.01667, %bb.pu ], [ %.01667, %bb.pv ], [ %.01667, %bb.px ], [ %.01667, %bb.py ], [ %.01667, %bb.pz ], [ %.01667, %bb.qa ], [ %.11659, %bb.qd ], [ %.11659, %bb.qf ], [ %.11659, %bb.qh ], [ %.11659, %bb.qj ], [ %.11659, %bb.ql ], [ %.11659, %bb.qn ], [ %.11659, %bb.qo ], [ %.11659, %bb.qs ], [ -2, %bb.qt ], [ -2, %bb.eu ], [ -3, %bb.qu ], [ %i.azr, %bb.rf ], [ %.11659, %bb.so ], [ %.11659, %bb.sq ], [ %.11659, %bb.ss ], [ %.11659, %bb.su ], [ %.01667, %bb.wi ], [ %i.buq, %bb.wk ], [ %.01667, %bb.wh ], [ %.01667, %bb.xi ], [ %.01673, %bb.xx ], [ %.11659, %bb.qp ], [ %.11659, %bb.qq ], [ %.11659, %bb.sf ], [ %.11659, %bb.qr ], [ %.11659, %bb.jw ], [ %.11659, %bb.e ], [ -3, %bb.lr ], [ -2, %bb.lt ], [ %i.bus, %bb.wj ], [ %.81700, %_ir_fold_cast.exit2050 ]
  br label %_ir_fold_cast.exit2050.thread2143

_ir_fold_cast.exit2050.thread2143:                ; preds = %bb.ya, %bb.jz, %bb.bc, %bb.bb, %bb.ay, %bb.ax, %bb.mh, %bb.md, %bb.lz, %bb.ln, %bb.lk, %bb.ka, %bb.qy, %bb.qb, %bb.mw, %bb.mk, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.ot, %bb.os, %bb.kh, %bb.kh, %bb.kh, %_ir_fold_cast.exit2050.thread2143.loopexit, %bb.ki, %bb.kj, %bb.jp, %ir_const_is_true.exit.thread, %bb.jy, %bb.fe, %bb.jq, %bb.fi, %bb.jn, %bb.jl, %bb.fh, %ir_const_is_true.exit, %.split, %.split2088, %.split2090, %bb.ia, %bb.xu, %bb.xq, %bb.xn, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.fl, %bb.fd, %bb.qw, %bb.ev, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.pw, %bb.ao, %bb.pr, %bb.aq, %bb.as, %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.817002151 = phi i32 [ %i.de, %bb.s ], [ %i.cm, %bb.n ], [ -2, %bb.an ], [ %i.awp, %bb.pr ], [ %i.ci, %bb.m ], [ -2, %bb.ap ], [ %i.ce, %bb.l ], [ %.11659, %bb.jp ], [ %.01673, %.split2090 ], [ %i.ca, %bb.k ], [ %i.ct, %bb.p ], [ %i.ahr, %bb.jy ], [ %i.aio, %bb.ki ], [ -3, %bb.fd ], [ %.01673, %bb.jq ], [ -3, %bb.ar ], [ -2, %bb.fh ], [ %.11659, %bb.jn ], [ %i.bw, %bb.j ], [ %.11659, %bb.jl ], [ %i.uk, %bb.fi ], [ %i.bs, %bb.i ], [ %i.bp, %bb.h ], [ -3, %bb.at ], [ %.01673, %.split2088 ], [ %.01673, %.split ], [ %.01673, %ir_const_is_true.exit ], [ %.01667, %ir_const_is_true.exit.thread ], [ %i.da, %bb.r ], [ %i.aiq, %bb.kj ], [ %i.gw, %bb.au ], [ %i.aen, %bb.ia ], [ %i.gr, %bb.as ], [ %i.byk, %bb.xu ], [ %i.byd, %bb.xq ], [ %i.bxw, %bb.xn ], [ %i.bl, %bb.g ], [ %i.gm, %bb.aq ], [ %i.adl, %bb.hk ], [ %i.adh, %bb.hj ], [ %i.add, %bb.hi ], [ %i.ada, %bb.hh ], [ %i.acx, %bb.hg ], [ %i.act, %bb.hf ], [ %i.acp, %bb.he ], [ %i.acm, %bb.hd ], [ %i.gh, %bb.ao ], [ %i.gc, %bb.am ], [ %i.cq, %bb.o ], [ %i.fy, %bb.al ], [ %i.fu, %bb.ak ], [ %i.fq, %bb.aj ], [ %i.fm, %bb.ai ], [ %i.fi, %bb.ah ], [ %i.bh, %bb.f ], [ %i.ut, %bb.fl ], [ %i.aww, %bb.pw ], [ %i.tz, %bb.fe ], [ %i.ff, %bb.ag ], [ %i.fb, %bb.af ], [ %i.aya, %bb.qw ], [ %i.ex, %bb.ae ], [ %i.eu, %bb.ad ], [ %i.eq, %bb.ac ], [ %i.ta, %bb.ev ], [ %.11659, %bb.dy ], [ %i.em, %bb.ab ], [ %i.ei, %bb.aa ], [ %i.ee, %bb.z ], [ %i.ea, %bb.y ], [ %i.dw, %bb.x ], [ %.11659, %bb.dw ], [ %i.ds, %bb.w ], [ %.11659, %bb.du ], [ %.11659, %bb.ds ], [ %.817002151.ph, %_ir_fold_cast.exit2050.thread2143.loopexit ], [ %i.do, %bb.v ], [ %.11659, %bb.ot ], [ %i.dk, %bb.u ], [ %i.cw, %bb.q ], [ %i.dh, %bb.t ], [ %.11659, %bb.qa ], [ %.11659, %bb.os ], [ -3, %bb.kh ], [ %.11659, %bb.pz ], [ %.11659, %bb.py ], [ %.11659, %bb.px ], [ %.11659, %bb.pv ], [ %.11659, %bb.pu ], [ %.11659, %bb.pt ], [ %.11659, %bb.ps ], [ -3, %bb.kh ], [ -3, %bb.kh ], [ -2, %bb.bb ], [ %.11659, %bb.ka ], [ %.11659, %bb.lk ], [ %.01667, %bb.ln ], [ %i.ano, %bb.mk ], [ %i.amw, %bb.lz ], [ %i.anh, %bb.md ], [ %i.ans, %bb.mh ], [ -3, %bb.bc ], [ %i.aoy, %bb.mw ], [ %.11659, %bb.qb ], [ %i.ayp, %bb.qy ], [ %.11659, %bb.jz ], [ %.11659, %bb.ya ], [ -2, %bb.ax ], [ -3, %bb.ay ] ; 2 uses
  %i.cdi = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not1923 = icmp eq ptr %i.cdi, null
  br i1 %.not1923, label %.loopexit, label %bb.zl

bb.zl:                                            ; preds = %_ir_fold_cast.exit2050.thread2143
  %i.cdj = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.817002151, ptr %i.cdj, align 4, !tbaa !23
  br label %.loopexit

_ir_fold_cast.exit2050.thread:                    ; preds = %bb.xk, %bb.xh, %bb.xf, %bb.pj, %bb.na, %bb.jo, %bb.jm, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jk, %bb.jd, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.jb, %bb.iu, %bb.is, %bb.ir, %bb.ip, %bb.io, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.im, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hx, %bb.hy, %bb.hs, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fk, %bb.fj, %bb.fg, %bb.ff, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.et, %bb.ep, %.thread2072, %bb.ei, %.thread2068, %bb.ed, %bb.eb, %bb.ea, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dj, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  %i.cdk = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not1920 = icmp eq ptr %i.cdk, null
  br i1 %.not1920, label %bb.zm, label %bb.zn

bb.zm:                                            ; preds = %_ir_fold_cast.exit2050.thread
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.16519212232589516003 = load i64, ptr %.sroa.0, align 8
  %i.cdl = mul nuw nsw i32 %i.v, 257
  %i.cdm = tail call i32 @ir_const_ex(ptr noundef nonnull %0, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.16519212232589516003, i8 noundef zeroext %trunc2222, i32 noundef %i.cdl)
  br label %.loopexit

bb.zn:                                            ; preds = %_ir_fold_cast.exit2050.thread
  %i.cdn = trunc i32 %.01657 to i16
  %i.cdo = lshr i16 %i.cdn, 8
  %i.cdp = mul nuw i16 %i.cdo, 257
  %i.cdq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %i.cdp, ptr %i.cdq, align 8, !tbaa !23
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.16619222231589416002 = load i64, ptr %.sroa.0, align 8, !tbaa !23
  %i.cdr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.16619222231589416002, ptr %i.cdr, align 8, !tbaa !23
  br label %.loopexit

_ir_fold_cast.exit2050.unreachabledefault:        ; preds = %_ir_fold_cast.exit2050
  unreachable

.loopexit:                                        ; preds = %_ir_fold_cast.exit2050.thread2143, %_ir_fold_cse.exit, %bb.zn, %bb.zm, %bb.zl, %bb.zk, %ir_emit.exit2057, %bb.zh, %ir_emit.exit, %bb.yy
  %.0 = phi i32 [ %.817002151, %_ir_fold_cast.exit2050.thread2143 ], [ 0, %bb.yy ], [ 1, %bb.zh ], [ %i.cdm, %bb.zm ], [ %i.cbw, %ir_emit.exit ], [ 2, %bb.zk ], [ %i.ccu, %ir_emit.exit2057 ], [ 3, %bb.zl ], [ %.03143.i, %_ir_fold_cse.exit ], [ 4, %bb.zn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nounwind uwtable
define hidden i32 @ir_fold(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = and i32 %i.b, 1048576
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 255
  %i.e = icmp eq i32 %i.d, 63
  %i.f = or i32 %1, 196608
  %spec.select = select i1 %i.e, i32 %i.f, i32 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i.i, label %ir_emit.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit

ir_emit.exit:                                     ; preds = %bb.b, %bb.c
  %i.k = add nsw i32 %i.h, 1
  store i32 %i.k, ptr %i.g, align 8, !tbaa !46
  %i.l = load ptr, ptr %0, align 8, !tbaa !48
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m ; 4 uses
  store i32 %spec.select, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %2, ptr %i.o, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %3, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %4, ptr %i.q, align 4, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  %i.u = sext i32 %3 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.u
  %i.w = sext i32 %4 to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.w
  %i.y = tail call i32 @ir_folding(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ir_emit.exit
  %.0 = phi i32 [ %i.h, %ir_emit.exit ], [ %i.y, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_fold0(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = and i32 %i.b, 1048576
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 255
  %i.e = icmp eq i32 %i.d, 63
  %i.f = or i32 %1, 196608
  %spec.select.i = select i1 %i.e, i32 %i.f, i32 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %ir_emit.exit.i, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit.i

ir_emit.exit.i:                                   ; preds = %bb.c, %bb.b
  %i.k = add nsw i32 %i.h, 1
  store i32 %i.k, ptr %i.g, align 8, !tbaa !46
  %i.l = load ptr, ptr %0, align 8, !tbaa !48
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m ; 4 uses
  store i32 %spec.select.i, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !23
  br label %ir_fold.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.s = tail call i32 @ir_folding(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.r, ptr noundef %i.r, ptr noundef %i.r)
  br label %ir_fold.exit

ir_fold.exit:                                     ; preds = %ir_emit.exit.i, %bb.d
  %.0.i = phi i32 [ %i.h, %ir_emit.exit.i ], [ %i.s, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_fold1(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = and i32 %i.b, 1048576
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 255
  %i.e = icmp eq i32 %i.d, 63
  %i.f = or i32 %1, 196608
  %spec.select.i = select i1 %i.e, i32 %i.f, i32 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %ir_emit.exit.i, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit.i

ir_emit.exit.i:                                   ; preds = %bb.c, %bb.b
  %i.k = add nsw i32 %i.h, 1
  store i32 %i.k, ptr %i.g, align 8, !tbaa !46
  %i.l = load ptr, ptr %0, align 8, !tbaa !48
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m ; 4 uses
  store i32 %spec.select.i, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %2, ptr %i.o, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !23
  br label %ir_fold.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  %i.u = tail call i32 @ir_folding(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef %i.t, ptr noundef %i.r, ptr noundef %i.r)
  br label %ir_fold.exit

ir_fold.exit:                                     ; preds = %ir_emit.exit.i, %bb.d
  %.0.i = phi i32 [ %i.h, %ir_emit.exit.i ], [ %i.u, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @ir_fold2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = and i32 %i.b, 1048576
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 255
  %i.e = icmp eq i32 %i.d, 63
  %i.f = or i32 %1, 196608
  %spec.select.i = select i1 %i.e, i32 %i.f, i32 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %ir_emit.exit.i, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit.exit.i

ir_emit.exit.i:                                   ; preds = %bb.c, %bb.b
  %i.k = add nsw i32 %i.h, 1
  store i32 %i.k, ptr %i.g, align 8, !tbaa !46
  %i.l = load ptr, ptr %0, align 8, !tbaa !48
  %i.m = sext i32 %i.h to i64
end_hunk_2
