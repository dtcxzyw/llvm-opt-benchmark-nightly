Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/omap_lcdc?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@omap_update_display:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.s, %bb.g, %bb.d, %bb.a, %bb.b, %bb.c, %bb.aa, %omap_lcd_interrupts.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 true
}

declare ptr @qemu_console_surface(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @draw_line2_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.052 = phi ptr [ %2, %bb.a ], [ %i.bt, %bb.b ] ; 2 uses
  %.051 = phi i32 [ %3, %bb.a ], [ %i.bu, %bb.b ]
  %.0 = phi ptr [ %1, %bb.a ], [ %i.bs, %bb.b ]   ; 5 uses
  %.052.val = load i8, ptr %.052, align 1
  %i.a = zext i8 %.052.val to i32                 ; 4 uses
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2              ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = lshr i16 %i.e, 4
  %i.h = and i16 %i.g, 240
  %i.i = zext nneg i16 %i.h to i32
  %i.j = shl nuw nsw i32 %i.f, 4
  %i.k = and i32 %i.j, 240
  %i.l = shl nuw nsw i32 %i.i, 16
  %i.m = shl i16 %i.e, 8
  %i.n = and i16 %i.m, -4096
  %i.o = zext i16 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = or disjoint i32 %i.p, %i.k
  store i32 %i.q, ptr %.0, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.s = lshr i32 %i.a, 2
  %i.t = and i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2              ; 3 uses
  %i.x = zext i16 %i.w to i32
  %i.y = lshr i16 %i.w, 4
  %i.z = and i16 %i.y, 240
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.x, 4
  %i.ac = and i32 %i.ab, 240
  %i.ad = shl nuw nsw i32 %i.aa, 16
  %i.ae = shl i16 %i.w, 8
  %i.af = and i16 %i.ae, -4096
  %i.ag = zext i16 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ac
  store i32 %i.ai, ptr %i.r, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ak = lshr i32 %i.a, 4
  %i.al = and i32 %i.ak, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = lshr i16 %i.ao, 4
  %i.ar = and i16 %i.aq, 240
  %i.as = zext nneg i16 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.ap, 4
  %i.au = and i32 %i.at, 240
  %i.av = shl nuw nsw i32 %i.as, 16
  %i.aw = shl i16 %i.ao, 8
  %i.ax = and i16 %i.aw, -4096
  %i.ay = zext i16 %i.ax to i32
  %i.az = or disjoint i32 %i.av, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.au
  store i32 %i.ba, ptr %i.aj, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.bc = lshr i32 %i.a, 6
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2            ; 3 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = lshr i16 %i.bf, 4
  %i.bi = and i16 %i.bh, 240
  %i.bj = zext nneg i16 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bg, 4
  %i.bl = and i32 %i.bk, 240
  %i.bm = shl nuw nsw i32 %i.bj, 16
  %i.bn = shl i16 %i.bf, 8
  %i.bo = and i16 %i.bn, -4096
  %i.bp = zext i16 %i.bo to i32
  %i.bq = or disjoint i32 %i.bm, %i.bp
  %i.br = or disjoint i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bb, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.052, i64 1
  %i.bu = add i32 %.051, -4                       ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.b, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @draw_line4_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.028 = phi ptr [ %2, %bb.a ], [ %i.aj, %bb.b ] ; 2 uses
  %.027 = phi i32 [ %3, %bb.a ], [ %i.ak, %bb.b ]
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ai, %bb.b ]   ; 3 uses
  %.028.val = load i8, ptr %.028, align 1
  %i.a = zext i8 %.028.val to i32                 ; 2 uses
  %i.b = and i32 %i.a, 15
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2              ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = lshr i16 %i.e, 4
  %i.h = and i16 %i.g, 240
  %i.i = zext nneg i16 %i.h to i32
  %i.j = shl nuw nsw i32 %i.f, 4
  %i.k = and i32 %i.j, 240
  %i.l = shl nuw nsw i32 %i.i, 16
  %i.m = shl i16 %i.e, 8
  %i.n = and i16 %i.m, -4096
  %i.o = zext i16 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = or disjoint i32 %i.p, %i.k
  store i32 %i.q, ptr %.0, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.s = lshr i32 %i.a, 4
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2              ; 3 uses
  %i.w = zext i16 %i.v to i32
  %i.x = lshr i16 %i.v, 4
  %i.y = and i16 %i.x, 240
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.w, 4
  %i.ab = and i32 %i.aa, 240
  %i.ac = shl nuw nsw i32 %i.z, 16
  %i.ad = shl i16 %i.v, 8
  %i.ae = and i16 %i.ad, -4096
  %i.af = zext i16 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af
  %i.ah = or disjoint i32 %i.ag, %i.ab
  store i32 %i.ah, ptr %i.r, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.028, i64 1
  %i.ak = add i32 %.027, -2                       ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.b, label %bb.c, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @draw_line8_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.015 = phi ptr [ %2, %bb.a ], [ %i.p, %bb.b ]  ; 2 uses
  %.014 = phi i32 [ %3, %bb.a ], [ %i.r, %bb.b ]
  %.0 = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]    ; 2 uses
  %.015.val = load i8, ptr %.015, align 1
  %i.a = zext i8 %.015.val to i64
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2              ; 3 uses
  %i.d = zext i16 %i.c to i32
  %i.e = lshr i16 %i.c, 4
  %i.f = and i16 %i.e, 240
  %i.g = zext nneg i16 %i.f to i32
  %i.h = shl nuw nsw i32 %i.d, 4
  %i.i = and i32 %i.h, 240
  %i.j = shl nuw nsw i32 %i.g, 16
  %i.k = shl i16 %i.c, 8
  %i.l = and i16 %i.k, -4096
  %i.m = zext i16 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  %i.o = or disjoint i32 %i.n, %i.i
  store i32 %i.o, ptr %.0, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.r = add i32 %.014, -1                        ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @draw_line12_32(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #6 {
bb.a:
  %i.a = add i32 %3, -1                           ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 4
  %i.f = shl nuw nsw i64 %i.b, 1
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %scevgep12 = getelementptr i8, ptr %i.g, i64 2
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 8589934584               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = trunc i64 %n.vec to i32
  %i.k = sub i32 %3, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.n  ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep13 = getelementptr i8, ptr %1, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !alias.scope !21
  %wide.load14 = load <4 x i16>, ptr %i.p, align 1, !alias.scope !21
  %i.q = zext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.r = zext <4 x i16> %wide.load14 to <4 x i32> ; 3 uses
  %i.s = shl nuw nsw <4 x i32> %i.q, splat (i32 4)
  %i.t = shl nuw nsw <4 x i32> %i.r, splat (i32 4)
  %i.u = and <4 x i32> %i.s, splat (i32 240)
  %i.v = and <4 x i32> %i.t, splat (i32 240)
  %i.w = shl nuw nsw <4 x i32> %i.q, splat (i32 12)
  %i.x = shl nuw nsw <4 x i32> %i.r, splat (i32 12)
  %i.y = and <4 x i32> %i.w, splat (i32 15728640)
  %i.z = and <4 x i32> %i.x, splat (i32 15728640)
  %i.aa = shl nuw nsw <4 x i32> %i.q, splat (i32 8)
  %i.ab = shl nuw nsw <4 x i32> %i.r, splat (i32 8)
  %i.ac = and <4 x i32> %i.aa, splat (i32 61440)
  %i.ad = and <4 x i32> %i.ab, splat (i32 61440)
  %i.ae = or disjoint <4 x i32> %i.ac, %i.y
  %i.af = or disjoint <4 x i32> %i.ad, %i.z
  %i.ag = or disjoint <4 x i32> %i.ae, %i.u
  %i.ah = or disjoint <4 x i32> %i.af, %i.v
  %i.ai = getelementptr i8, ptr %next.gep13, i64 16
  store <4 x i32> %i.ag, ptr %next.gep13, align 4, !alias.scope !22, !noalias !21
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !alias.scope !22, !noalias !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %i.i, %middle.block ] ; 3 uses
  %.010.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %i.k, %middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %i.m, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.010.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.011.val.prol = load i16, ptr %.011.ph, align 1
  %i.ak = zext i16 %.011.val.prol to i32          ; 3 uses
  %i.al = shl nuw nsw i32 %i.ak, 4
  %i.am = and i32 %i.al, 240
  %i.an = shl nuw nsw i32 %i.ak, 12
  %i.ao = and i32 %i.an, 15728640
  %i.ap = shl nuw nsw i32 %i.ak, 8
  %i.aq = and i32 %i.ap, 61440
  %i.ar = or disjoint i32 %i.aq, %i.ao
  %i.as = or disjoint i32 %i.ar, %i.am
  store i32 %i.as, ptr %.0.ph, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.011.ph, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4
  %i.av = add nsw i32 %.010.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.unr = phi ptr [ %.011.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %.010.unr = phi i32 [ %.010.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.0.unr = phi ptr [ %.0.ph, %scalar.ph.preheader ], [ %i.au, %scalar.ph.prol ]
  %i.aw = icmp eq i32 %.010.ph, 1
  br i1 %i.aw, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi ptr [ %i.br, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.010 = phi i32 [ %i.bt, %scalar.ph ], [ %.010.unr, %scalar.ph.prol.loopexit ]
  %.0 = phi ptr [ %i.bs, %scalar.ph ], [ %.0.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.011.val = load i16, ptr %.011, align 1
  %i.ax = zext i16 %.011.val to i32               ; 3 uses
  %i.ay = shl nuw nsw i32 %i.ax, 4
  %i.az = and i32 %i.ay, 240
  %i.ba = shl nuw nsw i32 %i.ax, 12
  %i.bb = and i32 %i.ba, 15728640
  %i.bc = shl nuw nsw i32 %i.ax, 8
  %i.bd = and i32 %i.bc, 61440
  %i.be = or disjoint i32 %i.bd, %i.bb
  %i.bf = or disjoint i32 %i.be, %i.az
  store i32 %i.bf, ptr %.0, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.011, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.011.val.1 = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %.011.val.1 to i32             ; 3 uses
  %i.bj = shl nuw nsw i32 %i.bi, 4
  %i.bk = and i32 %i.bj, 240
  %i.bl = shl nuw nsw i32 %i.bi, 12
  %i.bm = and i32 %i.bl, 15728640
  %i.bn = shl nuw nsw i32 %i.bi, 8
  %i.bo = and i32 %i.bn, 61440
  %i.bp = or disjoint i32 %i.bo, %i.bm
  %i.bq = or disjoint i32 %i.bp, %i.bk
  store i32 %i.bq, ptr %i.bh, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.011, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bt = add i32 %.010, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bt, 0
  br i1 %.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !20

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @draw_line16_32(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #6 {
bb.a:
  %i.a = add i32 %3, -1                           ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 4
  %i.f = shl nuw nsw i64 %i.b, 1
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %scevgep12 = getelementptr i8, ptr %i.g, i64 2
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 8589934584               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = trunc i64 %n.vec to i32
  %i.k = sub i32 %3, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.n  ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep13 = getelementptr i8, ptr %1, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !alias.scope !28
  %wide.load14 = load <4 x i16>, ptr %i.p, align 1, !alias.scope !28
  %i.q = zext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.r = zext <4 x i16> %wide.load14 to <4 x i32> ; 3 uses
  %i.s = shl nuw nsw <4 x i32> %i.q, splat (i32 3)
  %i.t = shl nuw nsw <4 x i32> %i.r, splat (i32 3)
  %i.u = and <4 x i32> %i.s, splat (i32 248)
  %i.v = and <4 x i32> %i.t, splat (i32 248)
  %i.w = shl nuw nsw <4 x i32> %i.q, splat (i32 8)
  %i.x = shl nuw nsw <4 x i32> %i.r, splat (i32 8)
  %i.y = and <4 x i32> %i.w, splat (i32 16252928)
  %i.z = and <4 x i32> %i.x, splat (i32 16252928)
  %i.aa = shl nuw nsw <4 x i32> %i.q, splat (i32 5)
  %i.ab = shl nuw nsw <4 x i32> %i.r, splat (i32 5)
  %i.ac = and <4 x i32> %i.aa, splat (i32 64512)
  %i.ad = and <4 x i32> %i.ab, splat (i32 64512)
  %i.ae = or disjoint <4 x i32> %i.ac, %i.y
  %i.af = or disjoint <4 x i32> %i.ad, %i.z
  %i.ag = or disjoint <4 x i32> %i.ae, %i.u
  %i.ah = or disjoint <4 x i32> %i.af, %i.v
  %i.ai = getelementptr i8, ptr %next.gep13, i64 16
  store <4 x i32> %i.ag, ptr %next.gep13, align 4, !alias.scope !29, !noalias !28
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %i.i, %middle.block ] ; 3 uses
  %.010.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %i.k, %middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %i.m, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.010.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.011.val.prol = load i16, ptr %.011.ph, align 1
  %i.ak = zext i16 %.011.val.prol to i32          ; 3 uses
  %i.al = shl nuw nsw i32 %i.ak, 3
  %i.am = and i32 %i.al, 248
  %i.an = shl nuw nsw i32 %i.ak, 8
  %i.ao = and i32 %i.an, 16252928
  %i.ap = shl nuw nsw i32 %i.ak, 5
  %i.aq = and i32 %i.ap, 64512
  %i.ar = or disjoint i32 %i.aq, %i.ao
  %i.as = or disjoint i32 %i.ar, %i.am
  store i32 %i.as, ptr %.0.ph, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.011.ph, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4
  %i.av = add nsw i32 %.010.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.unr = phi ptr [ %.011.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %.010.unr = phi i32 [ %.010.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.0.unr = phi ptr [ %.0.ph, %scalar.ph.preheader ], [ %i.au, %scalar.ph.prol ]
  %i.aw = icmp eq i32 %.010.ph, 1
  br i1 %i.aw, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi ptr [ %i.br, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.010 = phi i32 [ %i.bt, %scalar.ph ], [ %.010.unr, %scalar.ph.prol.loopexit ]
  %.0 = phi ptr [ %i.bs, %scalar.ph ], [ %.0.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.011.val = load i16, ptr %.011, align 1
  %i.ax = zext i16 %.011.val to i32               ; 3 uses
  %i.ay = shl nuw nsw i32 %i.ax, 3
  %i.az = and i32 %i.ay, 248
  %i.ba = shl nuw nsw i32 %i.ax, 8
  %i.bb = and i32 %i.ba, 16252928
  %i.bc = shl nuw nsw i32 %i.ax, 5
  %i.bd = and i32 %i.bc, 64512
  %i.be = or disjoint i32 %i.bd, %i.bb
  %i.bf = or disjoint i32 %i.be, %i.az
  store i32 %i.bf, ptr %.0, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.011, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.011.val.1 = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %.011.val.1 to i32             ; 3 uses
  %i.bj = shl nuw nsw i32 %i.bi, 3
  %i.bk = and i32 %i.bj, 248
  %i.bl = shl nuw nsw i32 %i.bi, 8
  %i.bm = and i32 %i.bl, 16252928
  %i.bn = shl nuw nsw i32 %i.bi, 5
  %i.bo = and i32 %i.bn, 64512
  %i.bp = or disjoint i32 %i.bo, %i.bm
  %i.bq = or disjoint i32 %i.bp, %i.bk
  store i32 %i.bq, ptr %i.bh, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.011, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bt = add i32 %.010, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bt, 0
  br i1 %.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !27

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

declare void @qemu_console_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @framebuffer_update_memory_section(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @framebuffer_update_display(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @qemu_console_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @pixman_image_get_format(ptr noundef) local_unnamed_addr #4

declare i32 @pixman_image_get_width(ptr noundef) local_unnamed_addr #4

declare i32 @pixman_image_get_height(ptr noundef) local_unnamed_addr #4

declare i32 @pixman_image_get_stride(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{null}
!12 = !{!"auto-init"}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !8, !9, !10}
!20 = distinct !{!20, !8, !9}
!21 = !{!17}
!22 = !{!18}
!23 = distinct !{!23, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !8, !9, !10}
!27 = distinct !{!27, !8, !9}
!28 = !{!24}
!29 = !{!25}
end_hunk_0
