Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir?download=true
inline.NumInlined: 275
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ir_PHI_LIST:bb.a

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.bb, %i.be
  br i1 %.not.i, label %ir_emit_N.exit.loopexit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit.loopexit:                          ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !48
  br label %ir_emit_N.exit

ir_emit_N.exit:                                   ; preds = %ir_emit_N.exit.loopexit, %bb.k
  %i.bf = phi ptr [ %.pre, %ir_emit_N.exit.loopexit ], [ %i.am, %bb.k ] ; 2 uses
  %i.bg = add nsw i32 %i.bb, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !46
  %i.bh = sext i32 %i.az to i64                   ; 4 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = shl i32 %i.ax, 16
  %i.bk = or disjoint i32 %i.bj, %i.at
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !23
  %i.bl = shl nsw i64 %i.bh, 4
  %i.bm = getelementptr i8, ptr %i.bf, i64 %i.bl
  %scevgep.i = getelementptr i8, ptr %i.bm, i64 4
  %i.bn = shl nuw nsw i32 %i.ax, 2
  %i.bo = or i32 %i.bn, 12
  %i.bp = zext nneg i32 %i.bo to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bp, i1 false), !tbaa !69
  %i.bq = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.br = load i32, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bh
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.br, ptr %i.bv, align 4, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !23
  %.not46 = icmp eq i16 %i.bx, 0
  br i1 %.not46, label %_ir_BEGIN.exit, label %.lr.ph

.lr.ph:                                           ; preds = %ir_emit_N.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %ir_emit_N.exit ] ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !69
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.by, i64 %i.bh
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !69
  store i32 109, ptr %i.cd, align 4, !tbaa !23
  %i.ci = load i16, ptr %i.bw, align 2, !tbaa !23
  %i.cj = zext i16 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %.lr.ph, label %_ir_BEGIN.exit, !llvm.loop !151

_ir_BEGIN.exit:                                   ; preds = %.lr.ph, %ir_emit_N.exit, %ir_emit1.exit.i, %bb.f, %bb.j, %bb.a
  %.039 = phi i32 [ 0, %bb.a ], [ %i.h, %ir_emit1.exit.i ], [ 0, %bb.j ], [ %i.h, %bb.f ], [ %i.az, %ir_emit_N.exit ], [ %i.az, %.lr.ph ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_LOOP_BEGIN(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i.i, label %ir_emit2.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit2.exit

ir_emit2.exit:                                    ; preds = %bb.a, %bb.b
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store i32 131180, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %1, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.b, ptr %i.l, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_LOOP_END(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit1.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit1.exit

ir_emit1.exit:                                    ; preds = %bb.a, %bb.b
  %i.g = add nsw i32 %i.d, 1
  store i32 %i.g, ptr %i.c, align 8, !tbaa !46
  %i.h = load ptr, ptr %0, align 8, !tbaa !48
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i ; 4 uses
  store i32 110, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.b, ptr %i.k, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !23
  store i32 0, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_CALL(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit2.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit2.exit

ir_emit2.exit:                                    ; preds = %bb.a, %bb.b
  %i.g = shl i32 %1, 8
  %i.h = or i32 %i.g, 131146
  %i.i = add nsw i32 %i.d, 1
  store i32 %i.i, ptr %i.c, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k ; 4 uses
  store i32 %i.h, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %2, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_CALL_1(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit3.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit3.exit

ir_emit3.exit:                                    ; preds = %bb.a, %bb.b
  %i.g = shl i32 %1, 8
  %i.h = or i32 %i.g, 196682
  %i.i = add nsw i32 %i.d, 1
  store i32 %i.i, ptr %i.c, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k ; 4 uses
  store i32 %i.h, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %2, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %3, ptr %i.o, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483646) i32 @_ir_CALL_2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.c, %i.e
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.c, %i.f
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 16514816
  %i.i = add nsw i32 %i.b, 2
  store i32 %i.i, ptr %i.a, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.k = sext i32 %i.b to i64                     ; 3 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = or disjoint i32 %i.h, 262218
  store i32 %i.m, ptr %i.l, align 8, !tbaa !23
  %i.n = shl nsw i64 %i.k, 4
  %i.o = getelementptr i8, ptr %i.j, i64 %i.n
  %scevgep.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.k ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.q, ptr %i.t, align 4, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %2, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %3, ptr %i.v, align 4, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %4, ptr %i.w, align 4, !tbaa !69
  store i32 %i.b, ptr %i.p, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483646) i32 @_ir_CALL_3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.c, %i.e
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.c, %i.f
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 16449280
  %i.i = add nsw i32 %i.b, 2
  store i32 %i.i, ptr %i.a, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.k = sext i32 %i.b to i64                     ; 3 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = or disjoint i32 %i.h, 327754
  store i32 %i.m, ptr %i.l, align 8, !tbaa !23
  %i.n = shl nsw i64 %i.k, 4
  %i.o = getelementptr i8, ptr %i.j, i64 %i.n
  %scevgep.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.k ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.q, ptr %i.t, align 4, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %2, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %3, ptr %i.v, align 4, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %4, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %5, ptr %i.x, align 4, !tbaa !69
  store i32 %i.b, ptr %i.p, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483646) i32 @_ir_CALL_4(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.c, %i.e
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.c, %i.f
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 16383744
  %i.i = add nsw i32 %i.b, 2
  store i32 %i.i, ptr %i.a, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.k = sext i32 %i.b to i64                     ; 3 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = or disjoint i32 %i.h, 393290
  store i32 %i.m, ptr %i.l, align 8, !tbaa !23
  %i.n = shl nsw i64 %i.k, 4
  %i.o = getelementptr i8, ptr %i.j, i64 %i.n
  %scevgep.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.k ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.q, ptr %i.t, align 4, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %2, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %3, ptr %i.v, align 4, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %4, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %5, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %6, ptr %i.y, align 4, !tbaa !69
  store i32 %i.b, ptr %i.p, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483646) i32 @_ir_CALL_5(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.c, %i.e
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.c, %i.f
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 16318208
  %i.i = add nsw i32 %i.b, 2
  store i32 %i.i, ptr %i.a, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.k = sext i32 %i.b to i64                     ; 3 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = or disjoint i32 %i.h, 458826
  store i32 %i.m, ptr %i.l, align 8, !tbaa !23
  %i.n = shl nsw i64 %i.k, 4
  %i.o = getelementptr i8, ptr %i.j, i64 %i.n
  %scevgep.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.k ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.q, ptr %i.t, align 4, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %2, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %3, ptr %i.v, align 4, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %4, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %5, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %6, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i32 %7, ptr %i.z, align 4, !tbaa !69
  store i32 %i.b, ptr %i.p, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483645) i32 @_ir_CALL_6(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = add nsw i32 %i.b, 2                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.c, %i.e
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.c, %i.f
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 16252672
  %i.i = add nsw i32 %i.b, 3
  store i32 %i.i, ptr %i.a, align 8, !tbaa !46
  %i.j = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.k = sext i32 %i.b to i64                     ; 3 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = or disjoint i32 %i.h, 524362
  store i32 %i.m, ptr %i.l, align 8, !tbaa !23
  %i.n = shl nsw i64 %i.k, 4
  %i.o = getelementptr i8, ptr %i.j, i64 %i.n
  %scevgep.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %scevgep.i, i8 0, i64 44, i1 false), !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.k ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.q, ptr %i.t, align 4, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %2, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %3, ptr %i.v, align 4, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %4, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %5, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %6, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i32 %7, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %8, ptr %i.aa, align 4, !tbaa !69
  store i32 %i.b, ptr %i.p, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_CALL_N(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = shl i32 %1, 8
  %i.c = and i32 %i.b, 16776960
  %i.d = add i32 %3, 2                            ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %i.g = sdiv i32 %i.d, 4
  %i.h = add i32 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.h, %i.j
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.k = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.h, %i.k
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !79, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.e, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.n = sext i32 %i.f to i64                     ; 9 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  %i.p = shl i32 %i.d, 16
  %i.q = or i32 %i.c, %i.p
  %i.r = or disjoint i32 %i.q, 74
  store i32 %i.r, ptr %i.o, align 8, !tbaa !23
  %.not2123.i = icmp slt i32 %i.d, 0
  br i1 %.not2123.i, label %ir_emit_N.exit.thread, label %ir_emit_N.exit

ir_emit_N.exit.thread:                            ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.t, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.x, align 4, !tbaa !69
  br label %.lr.ph.preheader

ir_emit_N.exit:                                   ; preds = %._crit_edge.i
  %i.y = or i32 %i.d, 3
  %i.z = shl nsw i64 %i.n, 4
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.z
  %scevgep.i = getelementptr i8, ptr %i.aa, i64 4
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ac, i1 false), !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23
  %i.af = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.n ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %2, ptr %i.ai, align 4, !tbaa !69
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ir_emit_N.exit.thread, %ir_emit_N.exit
  %i.aj = phi ptr [ %i.u, %ir_emit_N.exit.thread ], [ %i.af, %ir_emit_N.exit ] ; 5 uses
  %i.ak = phi ptr [ %i.s, %ir_emit_N.exit.thread ], [ %i.ad, %ir_emit_N.exit ] ; 3 uses
  %i.al = add i32 %3, -2147483646
  %or.cond = icmp ult i32 %i.al, -2147483630
  br i1 %or.cond, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.am = ptrtoaddr ptr %i.aj to i64
  %i.an = shl nsw i64 %i.n, 4
  %i.ao = add i64 %i.an, %i.am
  %i.ap = sub i64 %i.ao, %i.a
  %i.aq = add i64 %i.ap, 11
  %diff.check = icmp ult i64 %i.aq, 31
  br i1 %diff.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %3, 2147483640                 ; 3 uses
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = zext i32 %index to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !69
  %wide.load23 = load <4 x i32>, ptr %i.au, align 4, !tbaa !69
  %i.av = sext i32 %index to i64
  %i.aw = getelementptr [4 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 12
  %i.ay = getelementptr i8, ptr %i.aw, i64 28
  store <4 x i32> %wide.load, ptr %i.ax, align 4, !tbaa !69
  store <4 x i32> %wide.load23, ptr %i.ay, align 4, !tbaa !69
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.az = icmp eq i32 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.019.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i32 %.019.ph, 1
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader25
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.n
  %i.bb = zext nneg i32 %.019.ph to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = zext nneg i32 %.019.ph to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !69
  %i.bh = or disjoint i32 %.019.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader25
  %.019.unr = phi i32 [ %.019.ph, %.lr.ph.preheader25 ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = icmp eq i32 %3, %.neg
  br i1 %i.bi, label %._crit_edge, label %.lr.ph.preheader25.new

.lr.ph.preheader25.new:                           ; preds = %.lr.ph.prol.loopexit
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.n
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.n
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader25.new
  %.019 = phi i32 [ %.019.unr, %.lr.ph.preheader25.new ], [ %i.by, %.lr.ph ] ; 5 uses
  %i.bl = add i32 %.019, 3
  %i.bm = zext i32 %.019 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !69
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !69
  %i.br = add nuw i32 %.019, 1
  %i.bs = add i32 %.019, 4
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69
  %i.bw = sext i32 %i.bs to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bw
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !69
  %i.by = add nuw i32 %.019, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.by, %3
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %ir_emit_N.exit
  %i.bz = phi ptr [ %i.ad, %ir_emit_N.exit ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph ], [ %i.ak, %.lr.ph.prol.loopexit ]
  store i32 %i.f, ptr %i.bz, align 8, !tbaa !23
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_UNREACHABLE(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
end_hunk_0
begin_hunk_1_@_ir_UNREACHABLE:bb.a
ir_emit3.exit:                                    ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %bb.b ]
  %i.k = add nsw i32 %i.g, 1
  store i32 %i.k, ptr %i.f, align 8, !tbaa !46
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.l ; 4 uses
  store i32 116, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.b, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.e, ptr %i.p, align 4, !tbaa !23
  %i.q = load ptr, ptr %0, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %i.g, ptr %i.r, align 4, !tbaa !23
  store i32 0, ptr %i.a, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = or i32 %i.d, 131147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.i, %i.k
  br i1 %.not.i.i.i, label %ir_emit2.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit2.exit

ir_emit2.exit:                                    ; preds = %bb.c, %bb.d
  %i.l = add nsw i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n ; 4 uses
  store i32 %i.e, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.g, ptr %i.p, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %2, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !23
  store i32 %i.i, ptr %i.f, align 8, !tbaa !23
  %i.s = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = load i32, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.w = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.v, %i.w
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.e, !prof !68

bb.e:                                             ; preds = %ir_emit2.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit2.exit, %bb.e
  %i.x = phi ptr [ %i.s, %ir_emit2.exit ], [ %.pre.i, %bb.e ]
  %i.y = add nsw i32 %i.v, 1
  store i32 %i.y, ptr %i.h, align 8, !tbaa !46
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.z ; 4 uses
  store i32 116, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.i, ptr %i.ab, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.u, ptr %i.ad, align 4, !tbaa !23
  %i.ae = load ptr, ptr %0, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 %i.v, ptr %i.af, align 4, !tbaa !23
  store i32 0, ptr %i.f, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_1(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = or i32 %i.d, 196683
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.i, %i.k
  br i1 %.not.i.i.i, label %ir_emit3.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit3.exit

ir_emit3.exit:                                    ; preds = %bb.c, %bb.d
  %i.l = add nsw i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n ; 4 uses
  store i32 %i.e, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.g, ptr %i.p, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %2, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %3, ptr %i.r, align 4, !tbaa !23
  store i32 %i.i, ptr %i.f, align 8, !tbaa !23
  %i.s = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = load i32, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.w = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.v, %i.w
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.e, !prof !68

bb.e:                                             ; preds = %ir_emit3.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit3.exit, %bb.e
  %i.x = phi ptr [ %i.s, %ir_emit3.exit ], [ %.pre.i, %bb.e ]
  %i.y = add nsw i32 %i.v, 1
  store i32 %i.y, ptr %i.h, align 8, !tbaa !46
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.z ; 4 uses
  store i32 116, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.i, ptr %i.ab, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.u, ptr %i.ad, align 4, !tbaa !23
  %i.ae = load ptr, ptr %0, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 %i.v, ptr %i.af, align 4, !tbaa !23
  store i32 0, ptr %i.f, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = and i32 %i.d, 16514816
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 5 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.h, %i.j
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.k = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.h, %i.k
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.c
  %i.l = add nsw i32 %i.g, 2
  store i32 %i.l, ptr %i.f, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.n = sext i32 %i.g to i64                     ; 3 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  %i.p = or disjoint i32 %i.e, 262219
  store i32 %i.p, ptr %i.o, align 8, !tbaa !23
  %i.q = shl nsw i64 %i.n, 4
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep.i = getelementptr i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.n ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.t, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %3, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %4, ptr %i.z, align 4, !tbaa !69
  store i32 %i.g, ptr %i.s, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !46  ; 4 uses
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %ir_emit_N.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit_N.exit, %bb.d
  %i.ae = phi ptr [ %i.u, %ir_emit_N.exit ], [ %.pre.i, %bb.d ]
  %i.af = add nsw i32 %i.ac, 1
  store i32 %i.af, ptr %i.f, align 8, !tbaa !46
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.ag ; 4 uses
  store i32 116, ptr %i.ah, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.g, ptr %i.ai, align 4, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 %i.ab, ptr %i.ak, align 4, !tbaa !23
  %i.al = load ptr, ptr %0, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 %i.ac, ptr %i.am, align 4, !tbaa !23
  store i32 0, ptr %i.s, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = and i32 %i.d, 16449280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 5 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.h, %i.j
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.k = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.h, %i.k
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.c
  %i.l = add nsw i32 %i.g, 2
  store i32 %i.l, ptr %i.f, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.n = sext i32 %i.g to i64                     ; 3 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  %i.p = or disjoint i32 %i.e, 327755
  store i32 %i.p, ptr %i.o, align 8, !tbaa !23
  %i.q = shl nsw i64 %i.n, 4
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep.i = getelementptr i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.n ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.t, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %3, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %4, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i32 %5, ptr %i.aa, align 4, !tbaa !69
  store i32 %i.g, ptr %i.s, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !46  ; 4 uses
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %ir_emit_N.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit_N.exit, %bb.d
  %i.af = phi ptr [ %i.u, %ir_emit_N.exit ], [ %.pre.i, %bb.d ]
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !46
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ah ; 4 uses
  store i32 116, ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.g, ptr %i.aj, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.ac, ptr %i.al, align 4, !tbaa !23
  %i.am = load ptr, ptr %0, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 %i.ad, ptr %i.an, align 4, !tbaa !23
  store i32 0, ptr %i.s, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_4(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = and i32 %i.d, 16383744
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 5 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.h, %i.j
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.k = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.h, %i.k
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.c
  %i.l = add nsw i32 %i.g, 2
  store i32 %i.l, ptr %i.f, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.n = sext i32 %i.g to i64                     ; 3 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  %i.p = or disjoint i32 %i.e, 393291
  store i32 %i.p, ptr %i.o, align 8, !tbaa !23
  %i.q = shl nsw i64 %i.n, 4
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep.i = getelementptr i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.n ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.t, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %3, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %4, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i32 %5, ptr %i.aa, align 4, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %6, ptr %i.ab, align 4, !tbaa !69
  store i32 %i.g, ptr %i.s, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !46  ; 4 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.ae, %i.af
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %ir_emit_N.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit_N.exit, %bb.d
  %i.ag = phi ptr [ %i.u, %ir_emit_N.exit ], [ %.pre.i, %bb.d ]
  %i.ah = add nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.f, align 8, !tbaa !46
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ai ; 4 uses
  store i32 116, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.g, ptr %i.ak, align 4, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !23
  %i.an = load ptr, ptr %0, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 %i.ae, ptr %i.ao, align 4, !tbaa !23
  store i32 0, ptr %i.s, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_5(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = and i32 %i.d, 16318208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 5 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.h, %i.j
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.k = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.h, %i.k
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.c
  %i.l = add nsw i32 %i.g, 2
  store i32 %i.l, ptr %i.f, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.n = sext i32 %i.g to i64                     ; 3 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  %i.p = or disjoint i32 %i.e, 458827
  store i32 %i.p, ptr %i.o, align 8, !tbaa !23
  %i.q = shl nsw i64 %i.n, 4
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep.i = getelementptr i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep.i, i8 0, i64 28, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.n ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.t, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %3, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %4, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i32 %5, ptr %i.aa, align 4, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %6, ptr %i.ab, align 4, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i32 %7, ptr %i.ac, align 4, !tbaa !69
  store i32 %i.g, ptr %i.s, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23
  %i.af = load i32, ptr %i.f, align 8, !tbaa !46  ; 4 uses
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %ir_emit_N.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit_N.exit, %bb.d
  %i.ah = phi ptr [ %i.u, %ir_emit_N.exit ], [ %.pre.i, %bb.d ]
  %i.ai = add nsw i32 %i.af, 1
  store i32 %i.ai, ptr %i.f, align 8, !tbaa !46
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.aj ; 4 uses
  store i32 116, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.g, ptr %i.al, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %i.ae, ptr %i.an, align 4, !tbaa !23
  %i.ao = load ptr, ptr %0, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i32 %i.af, ptr %i.ap, align 4, !tbaa !23
  store i32 0, ptr %i.s, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_6(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i32 %1, 8
  %i.e = and i32 %i.d, 16252672
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 5 uses
  %i.h = add nsw i32 %i.g, 2                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.h, %i.j
  br i1 %.not22.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.k = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.h, %i.k
  br i1 %.not.i, label %ir_emit_N.exit, label %.lr.ph.i, !prof !79, !llvm.loop !1

ir_emit_N.exit:                                   ; preds = %.lr.ph.i, %bb.c
  %i.l = add nsw i32 %i.g, 3
  store i32 %i.l, ptr %i.f, align 8, !tbaa !46
  %i.m = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.n = sext i32 %i.g to i64                     ; 3 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  %i.p = or disjoint i32 %i.e, 524363
  store i32 %i.p, ptr %i.o, align 8, !tbaa !23
  %i.q = shl nsw i64 %i.n, 4
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep.i = getelementptr i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %scevgep.i, i8 0, i64 44, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.n ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.t, ptr %i.w, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.x, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %3, ptr %i.y, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %4, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i32 %5, ptr %i.aa, align 4, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %6, ptr %i.ab, align 4, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i32 %7, ptr %i.ac, align 4, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i32 %8, ptr %i.ad, align 4, !tbaa !69
  store i32 %i.g, ptr %i.s, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !46  ; 4 uses
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !50
  %.not.i.i.i.i = icmp slt i32 %i.ag, %i.ah
  br i1 %.not.i.i.i.i, label %_ir_UNREACHABLE.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %ir_emit_N.exit
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ir_UNREACHABLE.exit

_ir_UNREACHABLE.exit:                             ; preds = %ir_emit_N.exit, %bb.d
  %i.ai = phi ptr [ %i.u, %ir_emit_N.exit ], [ %.pre.i, %bb.d ]
  %i.aj = add nsw i32 %i.ag, 1
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !46
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.ak ; 4 uses
  store i32 116, ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.g, ptr %i.am, align 4, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.af, ptr %i.ao, align 4, !tbaa !23
  %i.ap = load ptr, ptr %0, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %i.ag, ptr %i.aq, align 4, !tbaa !23
  store i32 0, ptr %i.s, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_TAILCALL_N(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !99
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.b, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = shl i32 %1, 8
  %i.f = and i32 %i.e, 16776960
  %i.g = add i32 %3, 2                            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.j = sdiv i32 %i.g, 4
  %i.k = add i32 %i.i, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %.not22.i = icmp slt i32 %i.k, %i.m
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !prof !78

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  %i.n = load i32, ptr %i.l, align 4, !tbaa !50
  %.not.i = icmp slt i32 %i.k, %i.n
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !79, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.o = add nsw i32 %i.k, 1
  store i32 %i.o, ptr %i.h, align 8, !tbaa !46
  %i.p = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.q = sext i32 %i.i to i64                     ; 9 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q
  %i.s = shl i32 %i.g, 16
  %i.t = or i32 %i.f, %i.s
  %i.u = or disjoint i32 %i.t, 75
  store i32 %i.u, ptr %i.r, align 8, !tbaa !23
  %.not2123.i = icmp slt i32 %i.g, 0
  br i1 %.not2123.i, label %ir_emit_N.exit.thread, label %ir_emit_N.exit

ir_emit_N.exit.thread:                            ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !23
  %i.x = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.w, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %2, ptr %i.aa, align 4, !tbaa !69
  br label %.lr.ph.preheader

ir_emit_N.exit:                                   ; preds = %._crit_edge.i
  %i.ab = or i32 %i.g, 3
  %i.ac = shl nsw i64 %i.q, 4
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %scevgep.i = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.af, i1 false), !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !23
  %i.ai = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.q ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %2, ptr %i.al, align 4, !tbaa !69
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ir_emit_N.exit.thread, %ir_emit_N.exit
  %i.am = phi ptr [ %i.x, %ir_emit_N.exit.thread ], [ %i.ai, %ir_emit_N.exit ] ; 8 uses
  %i.an = phi ptr [ %i.v, %ir_emit_N.exit.thread ], [ %i.ag, %ir_emit_N.exit ] ; 3 uses
  %i.ao = add i32 %3, -2147483646
  %or.cond = icmp ult i32 %i.ao, -2147483630
  br i1 %or.cond, label %.lr.ph.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = shl nsw i64 %i.q, 4
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = sub i64 %i.ar, %i.a
  %i.at = add i64 %i.as, 11
  %diff.check = icmp ult i64 %i.at, 31
  br i1 %diff.check, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %3, 2147483640                 ; 3 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = zext i32 %index to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !69
  %wide.load26 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !69
  %i.ay = sext i32 %index to i64
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 12
  %i.bb = getelementptr i8, ptr %i.az, i64 28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !69
  store <4 x i32> %wide.load26, ptr %i.bb, align 4, !tbaa !69
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.bc = icmp eq i32 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i32 %.022.ph, 1
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader28
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.q
  %i.be = zext nneg i32 %.022.ph to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bh = zext nneg i32 %.022.ph to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !69
  %i.bk = or disjoint i32 %.022.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader28
end_hunk_1
