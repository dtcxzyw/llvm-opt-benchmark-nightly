Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ra_restore:bb.a
  %.0.i.i = phi i8 [ 0, %bb.m ], [ -128, %bb.p ], [ 64, %bb.o ]
  %i.bi = getelementptr inbounds i8, ptr %.029.i.i, i64 -1
  store i8 36, ptr %i.bi, align 1, !tbaa !25
  %i.bj = shl nuw nsw i8 %i.af, 3
  %i.bk = and i8 %i.bj, 56
  %i.bl = or disjoint i8 %i.bk, %.0.i.i
  %i.bm = or disjoint i8 %i.bl, 4
  %i.bn = getelementptr inbounds i8, ptr %.029.i.i, i64 -2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !25
  %i.bo = getelementptr i8, ptr %.029.i.i, i64 -3 ; 2 uses
  store i8 -117, ptr %i.bo, align 1, !tbaa !25
  %i.bp = lshr i32 %i.ba, 1
  %i.bq = and i32 %i.bp, 260                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i, label %emit_rmro.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = lshr i32 %i.az, 16
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 64
  %i.bv = getelementptr i8, ptr %.029.i.i, i64 -4 ; 2 uses
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !25
  br label %emit_rmro.exit.i

emit_rmro.exit.i:                                 ; preds = %bb.r, %bb.q
  %.046.i.i.i = phi ptr [ %i.bo, %bb.q ], [ %i.bv, %bb.r ]
  store ptr %.046.i.i.i, ptr %i.bb, align 8, !tbaa !52
  br label %emit_loadofs.exit

bb.s:                                             ; preds = %bb.l
  %i.bw = icmp eq i8 %i.av, 14
  %i.bx = select i1 %i.bw, i32 269480700, i32 269480956 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52 ; 3 uses
  %.not26 = icmp eq i32 %.1.i, 0
  br i1 %.not26, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = add i32 %i.ad, 128
  %i.cb = icmp ult i32 %i.ca, 256
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = trunc nsw i32 %i.ad to i8
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 2 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !25
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  store i32 %i.ad, ptr %i.ce, align 4, !tbaa !26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.029.i = phi ptr [ %i.bz, %bb.s ], [ %i.ce, %bb.v ], [ %i.cd, %bb.u ] ; 4 uses
  %.0.i23 = phi i8 [ 0, %bb.s ], [ -128, %bb.v ], [ 64, %bb.u ]
  %i.cf = getelementptr inbounds i8, ptr %.029.i, i64 -1
  store i8 36, ptr %i.cf, align 1, !tbaa !25
  %i.cg = shl i8 %i.af, 3
  %i.ch = and i8 %i.cg, 56
  %i.ci = or disjoint i8 %i.ch, %.0.i23
  %i.cj = or disjoint i8 %i.ci, 4
  %i.ck = getelementptr inbounds i8, ptr %.029.i, i64 -2
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !25
  %i.cl = getelementptr inbounds i8, ptr %.029.i, i64 -6 ; 3 uses
  store i32 %i.bx, ptr %i.cl, align 4, !tbaa !26
  %i.cm = getelementptr inbounds i8, ptr %.029.i, i64 -5 ; 2 uses
  %i.cn = and i32 %i.ag, 8
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %emit_rmro.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 68, ptr %i.cm, align 1, !tbaa !25
  %i.co = lshr i32 %i.bx, 8
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.cl, align 2, !tbaa !25
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %bb.w, %bb.x
  %.046.i.i = phi ptr [ %i.cm, %bb.w ], [ %i.cl, %bb.x ]
  store ptr %.046.i.i, ptr %i.by, align 8, !tbaa !52
  br label %emit_loadofs.exit

emit_loadofs.exit:                                ; preds = %emit_rmro.exit, %emit_rmro.exit.i, %ra_spill.exit, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.ag, %ra_spill.exit ], [ %i.ag, %emit_rmro.exit.i ], [ %i.ag, %emit_rmro.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483645) i32 @ra_spill(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25    ; 2 uses
  %i.c = zext i8 %i.b to i32
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 4, !tbaa !25
  %i.f = and i8 %i.e, 31
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = and i32 %i.h, 6315993
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.l = add nsw i32 %i.k, 2                      ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !70
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !74   ; 2 uses
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.m, align 4, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !74
  %i.r = add nsw i32 %i.p, 2                      ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.s = phi i32 [ %i.l, %bb.c ], [ %.pre, %bb.e ], [ %i.r, %bb.f ]
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.t = icmp sgt i32 %i.s, 256
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  tail call void @lj_trace_err(ptr noundef %i.v, i32 noundef 30) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = trunc i32 %.0 to i8
  store i8 %i.w, ptr %i.a, align 1, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %.1 = phi i32 [ %i.c, %bb.a ], [ %.0, %bb.i ]
  %i.x = shl nsw i32 %.1, 2
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 256) i32 @ra_alloc1(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i8, ptr %i.e, align 2, !tbaa !25    ; 2 uses
  %i.g = zext nneg i8 %i.f to i32
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @ra_allocref(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.g, %bb.a ]  ; 2 uses
  %i.i = shl nuw i32 1, %.0
  %i.j = xor i32 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = and i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 8, !tbaa !82
  ret i32 %.0
}

declare hidden void @lj_ir_kvalue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_snap_alloc1(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.b = icmp samesign ult i32 %1, 32768
  br i1 %i.b, label %.critedge, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre109 = load i64, ptr %i.f, align 8, !tbaa !84
  %.pre111 = load i64, ptr %i.g, align 8, !tbaa !85
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph94, %tailrecurse.backedge
  %i.i = phi ptr [ %i.c, %.lr.ph94 ], [ %i.ai, %tailrecurse.backedge ] ; 3 uses
  %2 = phi i64 [ %.pre111, %.lr.ph94 ], [ %4, %tailrecurse.backedge ]
  %3 = phi i64 [ %.pre109, %.lr.ph94 ], [ %5, %tailrecurse.backedge ]
  %i.j = phi ptr [ %i.e, %.lr.ph94 ], [ %i.ak, %tailrecurse.backedge ] ; 16 uses
  %i.k = phi i64 [ %i.d, %.lr.ph94 ], [ %i.aj, %tailrecurse.backedge ]
  %.tr7792 = phi i32 [ %1, %.lr.ph94 ], [ %.tr77.be, %tailrecurse.backedge ] ; 5 uses
  %i.l = and i64 %i.k, 63
  %i.m = shl nuw i64 1, %i.l
  %i.n = or i64 %3, %i.m                          ; 3 uses
  store i64 %i.n, ptr %i.f, align 8, !tbaa !84
  %i.o = add nuw nsw i32 %.tr7792, -79764919      ; 3 uses
  %i.p = xor i32 %i.o, %.tr7792
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 -79822848, i32 14)
  %i.r = sub nsw i32 %i.p, %i.q                   ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 -79822848, i32 %i.o, i32 19)
  %i.t = xor i32 %i.r, %i.s
  %i.u = lshr i32 %i.r, 19
  %i.v = sub i32 %i.t, %i.u
  %i.w = and i32 %i.v, 63
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = or i64 %2, %i.y                          ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !25  ; 2 uses
  %.not = icmp sgt i8 %i.ab, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %.not67 = icmp eq i8 %i.ad, 0
  br i1 %.not67, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.off = add nsw i8 %i.ab, 3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  store i8 -3, ptr %i.aa, align 2, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.ag = icmp eq i8 %i.af, 84
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.pre110 = load i64, ptr %i.g, align 8, !tbaa !85
  %.pre = load i64, ptr %i.f, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.pre.a = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.r, %bb.o, %bb.f
  %i.ai = phi ptr [ %.pre.a, %bb.f ], [ %i.i, %bb.o ], [ %i.i, %bb.r ] ; 2 uses
  %4 = phi i64 [ %.pre110, %bb.f ], [ %i.z, %bb.o ], [ %i.z, %bb.r ]
  %5 = phi i64 [ %.pre, %bb.f ], [ %i.n, %bb.o ], [ %i.n, %bb.r ]
  %.tr77.be.in.in = phi ptr [ %i.ah, %bb.f ], [ %i.j, %bb.o ], [ %i.j, %bb.r ]
  %.tr77.be.in = load i16, ptr %.tr77.be.in.in, align 2, !tbaa !25 ; 3 uses
  %.tr77.be = zext i16 %.tr77.be.in to i32
  %i.aj = zext i16 %.tr77.be.in to i64            ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = icmp sgt i16 %.tr77.be.in, -1
  br i1 %i.al, label %.critedge, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.ao, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = icmp ugt ptr %i.ar, %i.j
  br i1 %i.as, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %bb.g, %asm_sunk_store.exit.thread
  %.05996 = phi ptr [ %i.bv, %asm_sunk_store.exit.thread ], [ %i.ar, %bb.g ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05996, i64 6
  %i.au = load i8, ptr %i.at, align 2, !tbaa !25
  %i.av = icmp eq i8 %i.au, -2
  br i1 %i.av, label %bb.h, label %asm_sunk_store.exit.thread

bb.h:                                             ; preds = %.lr.ph99
  %i.aw = getelementptr inbounds nuw i8, ptr %.05996, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %bb.i, label %asm_sunk_store.exit

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.05996, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  switch i8 %i.ba, label %asm_sunk_store.exit.thread [
    i8 74, label %bb.j
    i8 75, label %bb.j
    i8 77, label %bb.j
    i8 78, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  %i.bc = load i16, ptr %.05996, align 8, !tbaa !25
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = and i8 %i.bg, -2
  %switch.i = icmp eq i8 %i.bh, 56
  br i1 %switch.i, label %bb.k, label %.split

bb.k:                                             ; preds = %bb.j
  %i.bi = load i16, ptr %i.be, align 8, !tbaa !25
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bj
  br label %.split

.split:                                           ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %i.bk, %bb.k ], [ %i.be, %bb.j ]
  %i.bl = load i16, ptr %.0.i, align 8, !tbaa !25
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bm
  %i.bo = icmp eq ptr %i.bn, %i.j
  br i1 %i.bo, label %bb.l, label %asm_sunk_store.exit.thread

asm_sunk_store.exit:                              ; preds = %bb.h
  %i.bp = zext i8 %i.ax to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = icmp eq ptr %i.bq, %.05996
  br i1 %i.br, label %bb.l, label %asm_sunk_store.exit.thread

bb.l:                                             ; preds = %.split, %asm_sunk_store.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.05996, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !25
  %i.bu = zext i16 %i.bt to i32
  tail call fastcc void @asm_snap_alloc1(ptr noundef %0, i32 noundef %i.bu)
  br label %asm_sunk_store.exit.thread

asm_sunk_store.exit.thread:                       ; preds = %.split, %bb.i, %.lr.ph99, %asm_sunk_store.exit, %bb.l
  %i.bv = getelementptr inbounds i8, ptr %.05996, i64 -8 ; 2 uses
  %i.bw = icmp ugt ptr %i.bv, %i.j
  br i1 %i.bw, label %.lr.ph99, label %.critedge, !llvm.loop !181

bb.m:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !25
  %i.bz = icmp eq i8 %i.by, 91
  br i1 %i.bz, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !25
  %i.cc = icmp eq i16 %i.cb, 467
  br i1 %i.cc, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %i.h, align 8, !tbaa !58
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ce ; 2 uses
  %i.cg = icmp ugt ptr %i.cf, %i.j
  br i1 %i.cg, label %.lr.ph, label %tailrecurse.backedge

.lr.ph:                                           ; preds = %bb.o, %bb.r
  %.091 = phi ptr [ %i.cq, %bb.r ], [ %i.cf, %bb.o ] ; 4 uses
  %i.ch = load i16, ptr %.091, align 8, !tbaa !25
  %i.ci = zext i16 %i.ch to i32
  %i.cj = icmp eq i32 %.tr7792, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.091, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !25
  %i.cm = zext i16 %i.cl to i32
  %i.cn = icmp eq i32 %.tr7792, %i.cm
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.co = getelementptr inbounds nuw i8, ptr %.091, i64 6
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !25
  %.off72 = add i8 %i.cp, 3
  %switch73 = icmp ult i8 %.off72, 2
  br i1 %switch73, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = getelementptr inbounds i8, ptr %.091, i64 -8 ; 2 uses
  %i.cr = icmp ugt ptr %i.cq, %i.j
  br i1 %i.cr, label %.lr.ph, label %tailrecurse.backedge, !llvm.loop !182

.thread:                                          ; preds = %bb.m, %bb.n, %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !25
  %i.cu = and i8 %i.ct, 31
  %i.cv = add nsw i8 %i.cu, -13
  %spec.select = icmp ult i8 %i.cv, 2             ; 2 uses
  %i.cw = select i1 %spec.select, i32 -65536, i32 49135 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !83
  %i.cz = and i32 %i.cw, %i.cy
  %.not68 = icmp eq i32 %i.cz, 0
  br i1 %.not68, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread
  br i1 %spec.select, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.da = tail call fastcc i32 @asm_snap_canremat(ptr noundef %0)
  %.not69 = icmp eq i32 %i.da, 0
  br i1 %.not69, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %i.db = tail call fastcc i32 @ra_allocref(ptr noundef %0, i32 noundef %.tr7792, i32 noundef %i.cw)
  %i.dc = load i8, ptr %i.cs, align 4, !tbaa !25
  %i.dd = and i8 %i.dc, 64
  %.not70 = icmp eq i8 %i.dd, 0
  br i1 %.not70, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.de = shl nuw i32 1, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !82
  %i.dh = or i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !82
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !54
  %i.dm = icmp ult ptr %i.dj, %i.dl
  br i1 %i.dm, label %bb.x, label %.critedge, !prof !80

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

bb.y:                                             ; preds = %bb.s, %bb.t
  %i.dn = tail call fastcc i32 @ra_spill(ptr noundef %0, ptr noundef nonnull %i.j) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %tailrecurse.backedge, %asm_sunk_store.exit.thread, %bb.a, %bb.g, %bb.w, %bb.y
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @asm_snap_canremat(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = and i32 %i.b, 32768
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %i.f = and i32 %i.e, 32768
  %.not.not.1 = icmp eq i32 %i.f, 0
  br i1 %.not.not.1, label %bb.q, label %bb.c
end_hunk_0
