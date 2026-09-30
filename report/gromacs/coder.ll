Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coder?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Ptngc_write_pattern:bb.a
  store i32 %i.bc, ptr %0, align 4, !tbaa !12
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !11  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 7
  br i1 %i.be, label %.lr.ph.i, label %Ptngc_out8bits.exit, !llvm.loop !0

Ptngc_out8bits.exit:                              ; preds = %.lr.ph.i, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ptngc_writebits(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = shl i32 %i.a, %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %i.e = add nsw i32 %i.d, %2                     ; 3 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !11
  %i.f = or i32 %i.b, %1                          ; 2 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !12
  %i.g = icmp sgt i32 %i.e, 7
  br i1 %i.g, label %.lr.ph.preheader.i, label %Ptngc_out8bits.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.pre9.i = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.h = phi ptr [ %i.q, %.lr.ph.i ], [ %.pre9.i, %.lr.ph.preheader.i ]
  %i.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ]
  %i.j = phi i32 [ %i.t, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %i.k = add nsw i32 %i.j, -8                     ; 3 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !11
  %i.l = shl i32 255, %i.k
  %i.m = xor i32 %i.l, -1
  %i.n = lshr i32 %i.i, %i.k
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %i.h, align 1, !tbaa !16
  %i.p = load ptr, ptr %3, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !15
  %i.r = load i32, ptr %0, align 4, !tbaa !12
  %i.s = and i32 %i.r, %i.m                       ; 2 uses
  store i32 %i.s, ptr %0, align 4, !tbaa !12
  %i.t = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 7
  br i1 %i.u, label %.lr.ph.i, label %Ptngc_out8bits.exit, !llvm.loop !0

Ptngc_out8bits.exit:                              ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ptngc_write32bits(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 7
  %i.b = add nsw i32 %2, -8
  %i.c = shl i32 255, %i.b
  %i.d = sub nsw i32 8, %2
  %i.e = lshr i32 255, %i.d
  %.0 = select i1 %i.a, i32 %i.c, i32 %i.e        ; 2 uses
  %i.f = icmp sgt i32 %2, 8
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.pre = load i32, ptr %0, align 4, !tbaa !12
  %.pre26 = load i32, ptr %i.g, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Ptngc_out8bits.exit
  %i.h = phi i32 [ %.pre26, %.lr.ph ], [ %i.ae, %Ptngc_out8bits.exit ] ; 2 uses
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.af, %Ptngc_out8bits.exit ]
  %.123 = phi i32 [ %.0, %.lr.ph ], [ %i.ag, %Ptngc_out8bits.exit ] ; 2 uses
  %.01922 = phi i32 [ %2, %.lr.ph ], [ %i.j, %Ptngc_out8bits.exit ] ; 2 uses
  %i.j = add nsw i32 %.01922, -8                  ; 3 uses
  %i.k = shl i32 %i.i, 8
  %i.l = add nsw i32 %i.h, 8                      ; 3 uses
  store i32 %i.l, ptr %i.g, align 4, !tbaa !11
  %i.m = and i32 %.123, %1
  %i.n = lshr i32 %i.m, %i.j
  %i.o = or i32 %i.k, %i.n                        ; 3 uses
  store i32 %i.o, ptr %0, align 4, !tbaa !12
  %i.p = icmp sgt i32 %i.h, -1
  br i1 %i.p, label %.lr.ph.preheader.i, label %Ptngc_out8bits.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.pre9.i = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.q = phi ptr [ %i.z, %.lr.ph.i ], [ %.pre9.i, %.lr.ph.preheader.i ]
  %i.r = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ]
  %i.s = phi i32 [ %i.ac, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader.i ]
  %i.t = add nsw i32 %i.s, -8                     ; 3 uses
  store i32 %i.t, ptr %i.g, align 4, !tbaa !11
  %i.u = shl i32 255, %i.t
  %i.v = xor i32 %i.u, -1
  %i.w = lshr i32 %i.r, %i.t
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.q, align 1, !tbaa !16
  %i.y = load ptr, ptr %3, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !15
  %i.aa = load i32, ptr %0, align 4, !tbaa !12
  %i.ab = and i32 %i.aa, %i.v                     ; 3 uses
  store i32 %i.ab, ptr %0, align 4, !tbaa !12
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !11  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 7
  br i1 %i.ad, label %.lr.ph.i, label %Ptngc_out8bits.exit, !llvm.loop !0

Ptngc_out8bits.exit:                              ; preds = %.lr.ph.i, %bb.b
  %i.ae = phi i32 [ %i.l, %bb.b ], [ %i.ac, %.lr.ph.i ]
  %i.af = phi i32 [ %i.o, %bb.b ], [ %i.ab, %.lr.ph.i ]
  %i.ag = lshr i32 %.123, 8                       ; 2 uses
  %i.ah = icmp samesign ugt i32 %.01922, 16
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %Ptngc_out8bits.exit, %bb.a
  %.019.lcssa = phi i32 [ %2, %bb.a ], [ %i.j, %Ptngc_out8bits.exit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0, %bb.a ], [ %i.ag, %Ptngc_out8bits.exit ]
  %.not = icmp eq i32 %.019.lcssa, 0
  br i1 %.not, label %Ptngc_writebits.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ai = and i32 %.1.lcssa, %1
  %i.aj = load i32, ptr %0, align 4, !tbaa !12
  %i.ak = shl i32 %i.aj, %.019.lcssa
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = add nsw i32 %i.am, %.019.lcssa          ; 3 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !11
  %i.ao = or i32 %i.ak, %i.ai                     ; 2 uses
  store i32 %i.ao, ptr %0, align 4, !tbaa !12
  %i.ap = icmp sgt i32 %i.an, 7
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %Ptngc_writebits.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %.pre9.i.i = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.aq = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.pre9.i.i, %.lr.ph.preheader.i.i ]
  %i.ar = phi i32 [ %i.bb, %.lr.ph.i.i ], [ %i.ao, %.lr.ph.preheader.i.i ]
  %i.as = phi i32 [ %i.bc, %.lr.ph.i.i ], [ %i.an, %.lr.ph.preheader.i.i ]
  %i.at = add nsw i32 %i.as, -8                   ; 3 uses
  store i32 %i.at, ptr %i.al, align 4, !tbaa !11
  %i.au = shl i32 255, %i.at
  %i.av = xor i32 %i.au, -1
  %i.aw = lshr i32 %i.ar, %i.at
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.aq, align 1, !tbaa !16
  %i.ay = load ptr, ptr %3, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  store ptr %i.az, ptr %3, align 8, !tbaa !15
  %i.ba = load i32, ptr %0, align 4, !tbaa !12
  %i.bb = and i32 %i.ba, %i.av                    ; 2 uses
  store i32 %i.bb, ptr %0, align 4, !tbaa !12
  %i.bc = load i32, ptr %i.al, align 4, !tbaa !11 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 7
  br i1 %i.bd, label %.lr.ph.i.i, label %Ptngc_writebits.exit, !llvm.loop !0

Ptngc_writebits.exit:                             ; preds = %.lr.ph.i.i, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ptngc_writemanybits(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 23
  br i1 %i.a, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.pre = load i32, ptr %0, align 4, !tbaa !12
  %.pre49 = load i32, ptr %i.b, align 4, !tbaa !11
  br label %bb.b

.preheader.loopexit:                              ; preds = %Ptngc_writebits.exit
  %i.c = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %i.aj, %.preheader.loopexit ] ; 3 uses
  %i.d = icmp sgt i32 %.0.lcssa, 7
  br i1 %i.d, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = zext nneg i32 %.024.lcssa to i64
  %.pre50 = load i32, ptr %0, align 4, !tbaa !12
  %.pre51 = load i32, ptr %i.e, align 4, !tbaa !11
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %Ptngc_writebits.exit
  %i.g = phi i32 [ %.pre49, %.lr.ph ], [ %i.ah, %Ptngc_writebits.exit ] ; 2 uses
  %i.h = phi i32 [ %.pre, %.lr.ph ], [ %i.ai, %Ptngc_writebits.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Ptngc_writebits.exit ] ; 2 uses
  %.035 = phi i32 [ %2, %.lr.ph ], [ %i.aj, %Ptngc_writebits.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 3 uses
  %4 = load i8, ptr %i.i, align 1, !tbaa !16
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %i.j = zext i8 %8 to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %9 = or disjoint i32 %i.k, %6
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %9, %i.n
  %i.p = shl i32 %i.h, 24
  %i.q = add nsw i32 %i.g, 24                     ; 3 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !11
  %i.r = or disjoint i32 %i.o, %i.p               ; 3 uses
  store i32 %i.r, ptr %0, align 4, !tbaa !12
  %i.s = icmp sgt i32 %i.g, -17
  br i1 %i.s, label %.lr.ph.preheader.i.i, label %Ptngc_writebits.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre9.i.i = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.t = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.pre9.i.i, %.lr.ph.preheader.i.i ]
  %i.u = phi i32 [ %i.ae, %.lr.ph.i.i ], [ %i.r, %.lr.ph.preheader.i.i ]
  %i.v = phi i32 [ %i.af, %.lr.ph.i.i ], [ %i.q, %.lr.ph.preheader.i.i ]
  %i.w = add nsw i32 %i.v, -8                     ; 3 uses
  store i32 %i.w, ptr %i.b, align 4, !tbaa !11
  %i.x = shl i32 255, %i.w
  %i.y = xor i32 %i.x, -1
  %i.z = lshr i32 %i.u, %i.w
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !16
  %i.ab = load ptr, ptr %3, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !15
  %i.ad = load i32, ptr %0, align 4, !tbaa !12
  %i.ae = and i32 %i.ad, %i.y                     ; 3 uses
  store i32 %i.ae, ptr %0, align 4, !tbaa !12
  %i.af = load i32, ptr %i.b, align 4, !tbaa !11  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 7
  br i1 %i.ag, label %.lr.ph.i.i, label %Ptngc_writebits.exit, !llvm.loop !0

Ptngc_writebits.exit:                             ; preds = %.lr.ph.i.i, %bb.b
  %i.ah = phi i32 [ %i.q, %bb.b ], [ %i.af, %.lr.ph.i.i ]
  %i.ai = phi i32 [ %i.r, %bb.b ], [ %i.ae, %.lr.ph.i.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = add nsw i32 %.035, -24                  ; 2 uses
  %i.ak = icmp samesign ugt i32 %.035, 47
  br i1 %i.ak, label %bb.b, label %.preheader.loopexit, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph39, %Ptngc_writebits.exit29
  %i.al = phi i32 [ %.pre51, %.lr.ph39 ], [ %i.bi, %Ptngc_writebits.exit29 ] ; 2 uses
  %i.am = phi i32 [ %.pre50, %.lr.ph39 ], [ %i.bj, %Ptngc_writebits.exit29 ]
  %indvars.iv46 = phi i64 [ %i.f, %.lr.ph39 ], [ %indvars.iv.next47, %Ptngc_writebits.exit29 ] ; 2 uses
  %.138 = phi i32 [ %.0.lcssa, %.lr.ph39 ], [ %i.bk, %Ptngc_writebits.exit29 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv46
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl i32 %i.am, 8
  %i.ar = add nsw i32 %i.al, 8                    ; 3 uses
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !11
  %i.as = or disjoint i32 %i.aq, %i.ap            ; 3 uses
  store i32 %i.as, ptr %0, align 4, !tbaa !12
  %i.at = icmp sgt i32 %i.al, -1
  br i1 %i.at, label %.lr.ph.preheader.i.i26, label %Ptngc_writebits.exit29

.lr.ph.preheader.i.i26:                           ; preds = %bb.c
  %.pre9.i.i27 = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28, %.lr.ph.preheader.i.i26
  %i.au = phi ptr [ %i.bd, %.lr.ph.i.i28 ], [ %.pre9.i.i27, %.lr.ph.preheader.i.i26 ]
  %i.av = phi i32 [ %i.bf, %.lr.ph.i.i28 ], [ %i.as, %.lr.ph.preheader.i.i26 ]
  %i.aw = phi i32 [ %i.bg, %.lr.ph.i.i28 ], [ %i.ar, %.lr.ph.preheader.i.i26 ]
  %i.ax = add nsw i32 %i.aw, -8                   ; 3 uses
  store i32 %i.ax, ptr %i.e, align 4, !tbaa !11
  %i.ay = shl i32 255, %i.ax
  %i.az = xor i32 %i.ay, -1
  %i.ba = lshr i32 %i.av, %i.ax
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !16
  %i.bc = load ptr, ptr %3, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  store ptr %i.bd, ptr %3, align 8, !tbaa !15
  %i.be = load i32, ptr %0, align 4, !tbaa !12
  %i.bf = and i32 %i.be, %i.az                    ; 3 uses
  store i32 %i.bf, ptr %0, align 4, !tbaa !12
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !11  ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 7
  br i1 %i.bh, label %.lr.ph.i.i28, label %Ptngc_writebits.exit29, !llvm.loop !0

Ptngc_writebits.exit29:                           ; preds = %.lr.ph.i.i28, %bb.c
  %i.bi = phi i32 [ %i.ar, %bb.c ], [ %i.bg, %.lr.ph.i.i28 ]
  %i.bj = phi i32 [ %i.as, %bb.c ], [ %i.bf, %.lr.ph.i.i28 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.bk = add nsw i32 %.138, -8                   ; 2 uses
  %i.bl = icmp sgt i32 %.138, 15
  br i1 %i.bl, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !25

._crit_edge.loopexit:                             ; preds = %Ptngc_writebits.exit29
  %i.bm = trunc nuw nsw i64 %indvars.iv.next47 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.125.lcssa = phi i32 [ %.024.lcssa, %.preheader ], [ %i.bm, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.bk, %._crit_edge.loopexit ] ; 3 uses
  %.not = icmp eq i32 %.1.lcssa, 0
  br i1 %.not, label %Ptngc_writebits.exit33, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = zext nneg i32 %.125.lcssa to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = load i32, ptr %0, align 4, !tbaa !12
  %i.bs = shl i32 %i.br, %.1.lcssa
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = add nsw i32 %i.bu, %.1.lcssa            ; 3 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !11
  %i.bw = or i32 %i.bs, %i.bq                     ; 2 uses
  store i32 %i.bw, ptr %0, align 4, !tbaa !12
  %i.bx = icmp sgt i32 %i.bv, 7
  br i1 %i.bx, label %.lr.ph.preheader.i.i30, label %Ptngc_writebits.exit33

.lr.ph.preheader.i.i30:                           ; preds = %bb.d
  %.pre9.i.i31 = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.lr.ph.i.i32, %.lr.ph.preheader.i.i30
  %i.by = phi ptr [ %i.ch, %.lr.ph.i.i32 ], [ %.pre9.i.i31, %.lr.ph.preheader.i.i30 ]
  %i.bz = phi i32 [ %i.cj, %.lr.ph.i.i32 ], [ %i.bw, %.lr.ph.preheader.i.i30 ]
  %i.ca = phi i32 [ %i.ck, %.lr.ph.i.i32 ], [ %i.bv, %.lr.ph.preheader.i.i30 ]
  %i.cb = add nsw i32 %i.ca, -8                   ; 3 uses
  store i32 %i.cb, ptr %i.bt, align 4, !tbaa !11
  %i.cc = shl i32 255, %i.cb
  %i.cd = xor i32 %i.cc, -1
  %i.ce = lshr i32 %i.bz, %i.cb
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.by, align 1, !tbaa !16
  %i.cg = load ptr, ptr %3, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  store ptr %i.ch, ptr %3, align 8, !tbaa !15
  %i.ci = load i32, ptr %0, align 4, !tbaa !12
  %i.cj = and i32 %i.ci, %i.cd                    ; 2 uses
  store i32 %i.cj, ptr %0, align 4, !tbaa !12
  %i.ck = load i32, ptr %i.bt, align 4, !tbaa !11 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 7
  br i1 %i.cl, label %.lr.ph.i.i32, label %Ptngc_writebits.exit33, !llvm.loop !0

Ptngc_writebits.exit33:                           ; preds = %.lr.ph.i.i32, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ptngc_pack_flush(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %Ptngc_write_pattern.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.d = sub nsw i32 8, %i.b
  %i.e = load i32, ptr %0, align 4, !tbaa !12
  %i.f = shl i32 %i.e, %i.d                       ; 2 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !12
  %.pre9.i.i = load ptr, ptr %1, align 8, !tbaa !15
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.g = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.pre9.i.i, %.lr.ph.preheader.i.i ]
  %i.h = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ]
  %i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ 8, %.lr.ph.preheader.i.i ]
  %i.j = add nsw i32 %i.i, -8                     ; 3 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !11
  %i.k = shl i32 255, %i.j
  %i.l = xor i32 %i.k, -1
  %i.m = lshr i32 %i.h, %i.j
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.g, align 1, !tbaa !16
  %i.o = load ptr, ptr %1, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !15
  %i.q = load i32, ptr %0, align 4, !tbaa !12
  %i.r = and i32 %i.q, %i.l                       ; 2 uses
  store i32 %i.r, ptr %0, align 4, !tbaa !12
  %i.s = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 7
  br i1 %i.t, label %.lr.ph.i.i, label %Ptngc_write_pattern.exit, !llvm.loop !0

Ptngc_write_pattern.exit:                         ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Ptngc_pack_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, -2
  %or.cond = icmp eq i32 %i.a, 8
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !19
  %i.c = tail call i32 @bwlzh_get_buflen(i32 noundef %i.b) #11
  %i.d = add nsw i32 %i.c, 4
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 276) #11 ; 3 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !19     ; 8 uses
end_hunk_0
begin_hunk_1_@Ptngc_unpack_array:bb.a
  %i.mr = trunc nuw nsw i64 %indvars.iv.next10.1.i.2 to i32
  %i.ms = mul i32 %6, %i.mr
  %reass.add.us.us.1.i.3 = add i32 %i.ms, %.07.us.i
  %reass.mul.us.us.1.i.3 = mul i32 %reass.add.us.us.1.i.3, 3
  %i.mt = add i32 %reass.mul.us.us.1.i.3, 1
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.mu
  store i32 %i.mq, ptr %i.mv, align 4, !tbaa !19
  %indvars.iv.next10.1.i.3 = add nuw nsw i64 %indvars.iv9.1.i, 4 ; 2 uses
  %exitcond.1.not.i51.3 = icmp eq i64 %indvars.iv.next10.1.i.3, %wide.trip.count.i47
  br i1 %exitcond.1.not.i51.3, label %._crit_edge.us.us.1.i.preheader, label %._crit_edge.us.us.i, !llvm.loop !87

._crit_edge.us.us.1.i.preheader:                  ; preds = %._crit_edge.us.us.i.prol.loopexit, %._crit_edge.us.us.i, %middle.block106
  %indvars.iv9.1.i.lcssa = phi i64 [ %ind.escape, %middle.block106 ], [ %indvars.iv9.1.i.lcssa154.unr, %._crit_edge.us.us.i.prol.loopexit ], [ %indvars.iv.next10.1.i.2, %._crit_edge.us.us.i ]
  %indvars.iv.next.1.i.lcssa = phi i64 [ %i.kr, %middle.block106 ], [ %indvars.iv.next.1.i.lcssa153.unr, %._crit_edge.us.us.i.prol.loopexit ], [ %indvars.iv.next.1.i.3, %._crit_edge.us.us.i ] ; 5 uses
  br i1 %min.iters.check, label %._crit_edge.us.us.1.i.preheader149, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %._crit_edge.us.us.1.i.preheader
  %i.mw = add i32 %i.ib, %mul.result
  %i.mx = sub i32 %i.ib, %mul.result
  %i.my = icmp slt i32 %i.mw, %i.ib
  %i.mz = icmp sgt i32 %i.mx, %i.ib
  %i.na = select i1 %i.hd, i1 %i.mz, i1 %i.my
  %.reass204 = or i1 %i.na, %invariant.op203
  br i1 %.reass204, label %._crit_edge.us.us.1.i.preheader149, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.nb = shl i64 %.0286.us.i, 2                  ; 2 uses
  %i.nc = shl nuw nsw i64 %indvars.iv9.i.lcssa, 2 ; 2 uses
  %i.nd = shl nuw nsw i64 %indvars.iv9.1.i.lcssa, 2 ; 2 uses
  %i.ne = getelementptr i8, ptr %i.ft, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 %i.nc
  %i.ng = getelementptr i8, ptr %i.nf, i64 %i.nb
  %scevgep = getelementptr i8, ptr %i.ng, i64 8
  %i.nh = getelementptr i8, ptr %i.ft, i64 %i.nd
  %i.ni = getelementptr i8, ptr %i.nh, i64 %i.nc
  %i.nj = getelementptr i8, ptr %i.ni, i64 %i.gi
  %i.nk = getelementptr i8, ptr %i.nj, i64 8
  %scevgep63 = getelementptr i8, ptr %i.nk, i64 %i.nb
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %umin, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %._crit_edge.us.us.1.i.preheader149, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.nl = add i64 %indvars.iv.next.1.i.lcssa, %n.vec ; 2 uses
  %broadcast.splatinsert70 = insertelement <8 x i32> poison, i32 %.07.us.i, i64 0
  %broadcast.splat71 = shufflevector <8 x i32> %broadcast.splatinsert70, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.nm = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.next.1.i.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.nn = getelementptr [4 x i8], ptr %i.nm, i64 %index
  %wide.load = load <8 x i32>, ptr %i.nn, align 4, !tbaa !19, !alias.scope !99, !noalias !100
  %i.no = sub nsw <8 x i32> %wide.load, %broadcast.splat
  %i.np = mul <8 x i32> %broadcast.splat69, %vec.ind
  %i.nq = add <8 x i32> %i.np, %broadcast.splat71
  %i.nr = mul <8 x i32> %i.nq, splat (i32 3)
  %i.ns = add <8 x i32> %i.nr, splat (i32 2)
  %i.nt = sext <8 x i32> %i.ns to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %2, <8 x i64> %i.nt
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.no, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !19, !alias.scope !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.nu = icmp eq i64 %index.next, %n.vec
  br i1 %i.nu, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.2.i, label %._crit_edge.us.us.1.i.preheader149

._crit_edge.us.us.1.i.preheader149:               ; preds = %vector.memcheck, %vector.scevcheck, %._crit_edge.us.us.1.i.preheader, %middle.block
  %indvars.iv9.2.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %._crit_edge.us.us.1.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv.2.i.ph = phi i64 [ %indvars.iv.next.1.i.lcssa, %vector.memcheck ], [ %indvars.iv.next.1.i.lcssa, %vector.scevcheck ], [ %indvars.iv.next.1.i.lcssa, %._crit_edge.us.us.1.i.preheader ], [ %i.nl, %middle.block ] ; 2 uses
  br i1 %lcmp.mod198.not, label %._crit_edge.us.us.1.i.prol.loopexit, label %._crit_edge.us.us.1.i.prol

._crit_edge.us.us.1.i.prol:                       ; preds = %._crit_edge.us.us.1.i.preheader149, %._crit_edge.us.us.1.i.prol
  %indvars.iv9.2.i.prol = phi i64 [ %indvars.iv.next10.2.i.prol, %._crit_edge.us.us.1.i.prol ], [ %indvars.iv9.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ] ; 2 uses
  %indvars.iv.2.i.prol = phi i64 [ %indvars.iv.next.2.i.prol, %._crit_edge.us.us.1.i.prol ], [ %indvars.iv.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ] ; 2 uses
  %prol.iter199 = phi i64 [ %prol.iter199.next, %._crit_edge.us.us.1.i.prol ], [ 0, %._crit_edge.us.us.1.i.preheader149 ]
  %indvars.iv.next.2.i.prol = add nsw i64 %indvars.iv.2.i.prol, 1 ; 3 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i.prol
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !19
  %i.nx = sub nsw i32 %i.nw, %i.fu
  %i.ny = trunc nuw nsw i64 %indvars.iv9.2.i.prol to i32
  %i.nz = mul i32 %6, %i.ny
  %reass.add.us.us.2.i.prol = add i32 %i.nz, %.07.us.i
  %reass.mul.us.us.2.i.prol = mul i32 %reass.add.us.us.2.i.prol, 3
  %i.oa = add i32 %reass.mul.us.us.2.i.prol, 2
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ob
  store i32 %i.nx, ptr %i.oc, align 4, !tbaa !19
  %indvars.iv.next10.2.i.prol = add nuw nsw i64 %indvars.iv9.2.i.prol, 1 ; 2 uses
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %._crit_edge.us.us.1.i.prol.loopexit, label %._crit_edge.us.us.1.i.prol, !llvm.loop !92

._crit_edge.us.us.1.i.prol.loopexit:              ; preds = %._crit_edge.us.us.1.i.prol, %._crit_edge.us.us.1.i.preheader149
  %indvars.iv.next.2.i.lcssa155.unr = phi i64 [ poison, %._crit_edge.us.us.1.i.preheader149 ], [ %indvars.iv.next.2.i.prol, %._crit_edge.us.us.1.i.prol ]
  %indvars.iv9.2.i.unr = phi i64 [ %indvars.iv9.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ], [ %indvars.iv.next10.2.i.prol, %._crit_edge.us.us.1.i.prol ]
  %indvars.iv.2.i.unr = phi i64 [ %indvars.iv.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ], [ %indvars.iv.next.2.i.prol, %._crit_edge.us.us.1.i.prol ]
  %i.od = sub nsw i64 %indvars.iv9.2.i.ph, %wide.trip.count.i47
  %i.oe = icmp ugt i64 %i.od, -4
  br i1 %i.oe, label %._crit_edge.us.us.2.i, label %._crit_edge.us.us.1.i

._crit_edge.us.us.1.i:                            ; preds = %._crit_edge.us.us.1.i.prol.loopexit, %._crit_edge.us.us.1.i
  %indvars.iv9.2.i = phi i64 [ %indvars.iv.next10.2.i.3, %._crit_edge.us.us.1.i ], [ %indvars.iv9.2.i.unr, %._crit_edge.us.us.1.i.prol.loopexit ] ; 5 uses
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i.3, %._crit_edge.us.us.1.i ], [ %indvars.iv.2.i.unr, %._crit_edge.us.us.1.i.prol.loopexit ] ; 5 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.og = load i32, ptr %i.of, align 4, !tbaa !19
  %i.oh = sub nsw i32 %i.og, %i.fu
  %i.oi = trunc nuw nsw i64 %indvars.iv9.2.i to i32
  %i.oj = mul i32 %6, %i.oi
  %reass.add.us.us.2.i = add i32 %i.oj, %.07.us.i
  %reass.mul.us.us.2.i = mul i32 %reass.add.us.us.2.i, 3
  %i.ok = add i32 %reass.mul.us.us.2.i, 2
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ol
  store i32 %i.oh, ptr %i.om, align 4, !tbaa !19
  %i.on = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.oo = getelementptr i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !19
  %i.oq = sub nsw i32 %i.op, %i.fu
  %i.or = trunc i64 %indvars.iv9.2.i to i32
  %i.os = add i32 %i.or, 1
  %i.ot = mul i32 %6, %i.os
  %reass.add.us.us.2.i.1 = add i32 %i.ot, %.07.us.i
  %reass.mul.us.us.2.i.1 = mul i32 %reass.add.us.us.2.i.1, 3
  %i.ou = add i32 %reass.mul.us.us.2.i.1, 2
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ov
  store i32 %i.oq, ptr %i.ow, align 4, !tbaa !19
  %i.ox = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.oy = getelementptr i8, ptr %i.ox, i64 8
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !19
  %i.pa = sub nsw i32 %i.oz, %i.fu
  %i.pb = trunc i64 %indvars.iv9.2.i to i32
  %i.pc = add i32 %i.pb, 2
  %i.pd = mul i32 %6, %i.pc
  %reass.add.us.us.2.i.2 = add i32 %i.pd, %.07.us.i
  %reass.mul.us.us.2.i.2 = mul i32 %reass.add.us.us.2.i.2, 3
  %i.pe = add i32 %reass.mul.us.us.2.i.2, 2
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.pf
  store i32 %i.pa, ptr %i.pg, align 4, !tbaa !19
  %indvars.iv.next.2.i.3 = add nsw i64 %indvars.iv.2.i, 4 ; 2 uses
  %i.ph = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.pi = getelementptr i8, ptr %i.ph, i64 12
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !19
  %i.pk = sub nsw i32 %i.pj, %i.fu
  %i.pl = trunc i64 %indvars.iv9.2.i to i32
  %i.pm = add i32 %i.pl, 3
  %i.pn = mul i32 %6, %i.pm
  %reass.add.us.us.2.i.3 = add i32 %i.pn, %.07.us.i
  %reass.mul.us.us.2.i.3 = mul i32 %reass.add.us.us.2.i.3, 3
  %i.po = add i32 %reass.mul.us.us.2.i.3, 2
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.pp
  store i32 %i.pk, ptr %i.pq, align 4, !tbaa !19
  %indvars.iv.next10.2.i.3 = add nuw nsw i64 %indvars.iv9.2.i, 4 ; 2 uses
  %exitcond.2.not.i52.3 = icmp eq i64 %indvars.iv.next10.2.i.3, %wide.trip.count.i47
  br i1 %exitcond.2.not.i52.3, label %._crit_edge.us.us.2.i, label %._crit_edge.us.us.1.i, !llvm.loop !93

._crit_edge.us.us.2.i:                            ; preds = %._crit_edge.us.us.1.i.prol.loopexit, %._crit_edge.us.us.1.i, %middle.block
  %indvars.iv.next.2.i.lcssa = phi i64 [ %i.nl, %middle.block ], [ %indvars.iv.next.2.i.lcssa155.unr, %._crit_edge.us.us.1.i.prol.loopexit ], [ %indvars.iv.next.2.i.3, %._crit_edge.us.us.1.i ]
  %i.pr = add nuw nsw i32 %.07.us.i, 1            ; 2 uses
  %exitcond15.not.i = icmp eq i32 %i.pr, %6
  br i1 %exitcond15.not.i, label %unpack_array_bwlzh.exit, label %.preheader1.us.i, !llvm.loop !94

unpack_array_bwlzh.exit:                          ; preds = %._crit_edge.us.us.2.i, %bb.m
  tail call void @free(ptr noundef %i.ft) #11
  br label %unpack_array_stop_bits.exit

bb.n:                                             ; preds = %bb.l
  %i.ps = icmp eq i32 %4, 10
  br i1 %i.ps, label %bb.o, label %unpack_array_stop_bits.exit

bb.o:                                             ; preds = %bb.n
  %i.pt = tail call i32 @Ptngc_unpack_array_xtc3(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %6) #11
  br label %unpack_array_stop_bits.exit

unpack_array_stop_bits.exit:                      ; preds = %.split22.us.i, %bb.e, %._crit_edge.i42, %bb.b, %bb.n, %bb.o, %unpack_array_bwlzh.exit, %bb.k
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %bb.e ], [ %i.fp, %bb.k ], [ 0, %unpack_array_bwlzh.exit ], [ %i.pt, %bb.o ], [ 0, %bb.b ], [ 0, %._crit_edge.i42 ], [ 0, %.split22.us.i ]
  ret i32 %.0
}

declare i32 @Ptngc_unpack_array_xtc2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Ptngc_unpack_array_xtc3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @bwlzh_decompress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v8i32(<8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"coder", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!11 = !{!10, !7, i64 4}
!12 = !{!10, !7, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17, !20, !21}
!27 = distinct !{!27, !17, !20, !21}
!28 = distinct !{!28, !17, !21, !20}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !17, !20, !21}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !17, !20}
!35 = distinct !{!35, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !17, !20, !21}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !17, !20}
!41 = distinct !{!41, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !17, !20, !21}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !17, !20}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17, !20, !21}
!49 = distinct !{!49, !17, !20, !21}
!50 = distinct !{!50, !17, !21, !20}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = !{!"branch_weights", i32 4, i32 28}
!57 = !{!30}
!58 = !{!31}
!59 = !{!36}
!60 = !{!37}
!61 = !{!42}
!62 = !{!43}
!63 = !{!10, !7, i64 12}
!64 = !{!10, !7, i64 8}
!65 = !{!"branch_weights", i32 8, i32 24}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !17, !20, !21}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !17, !20}
!82 = distinct !{!82, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !17, !20, !21}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !17, !20}
!88 = distinct !{!88, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !17, !20, !21}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !17, !20}
!94 = distinct !{!94, !17}
!95 = !{!77}
!96 = !{!78}
!97 = !{!83}
!98 = !{!84}
!99 = !{!89}
!100 = !{!90}
end_hunk_1
