inline.NumInlined: 28
inline.NumDeleted: 3
begin_hunk_0_@encode_mcu_DC_first:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !63
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.b, i32 noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !73
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph65, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.ai = load i16, ptr %i.ac, align 2, !tbaa !76
  %i.aj = sext i16 %i.ai to i32
  %i.ak = ashr i32 %i.aj, %i.d                    ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = sub nsw i32 %i.ak, %i.am                ; 3 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %.lobit = ashr i32 %i.an, 31
  %.051 = add nsw i32 %.lobit, %i.an
  %.not5860 = icmp eq i32 %i.ak, %i.am
  br i1 %.not5860, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.0 = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.162 = phi i32 [ %i.ap, %.lr.ph ], [ %.0, %.lr.ph.preheader ]
  %.05261 = phi i32 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ao = add nuw nsw i32 %.05261, 1              ; 2 uses
  %i.ap = lshr i32 %.162, 1                       ; 2 uses
  %.not58 = icmp eq i32 %i.ap, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.052.lcssa = phi i32 [ 0, %bb.e ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !44
  %i.as = load i32, ptr %i.y, align 8, !tbaa !37
  %.not.i = icmp eq i32 %i.as, 0
  %i.at = sext i32 %i.ar to i64                   ; 2 uses
  %i.au = zext nneg i32 %.052.lcssa to i64        ; 3 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !78
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !78
  br label %emit_symbol.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.at
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.au
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1024
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.au
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bh = sext i8 %i.bg to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.bd, i32 noundef %i.bh)
  br label %emit_symbol.exit

emit_symbol.exit:                                 ; preds = %bb.f, %bb.g
  %.not59 = icmp eq i32 %.052.lcssa, 0
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %emit_symbol.exit
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %.051, i32 noundef %.052.lcssa)
  br label %bb.i

bb.i:                                             ; preds = %emit_symbol.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.s, align 8, !tbaa !73
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.e, label %._crit_edge66, !llvm.loop !79

._crit_edge66:                                    ; preds = %bb.i, %bb.d
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !68
  %i.bn = load i64, ptr %i.k, align 8, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !71
  %i.bp = load i32, ptr %i.l, align 8, !tbaa !63  ; 2 uses
  %.not57 = icmp eq i32 %i.bp, 0
  br i1 %.not57, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !64 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !65
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = and i32 %i.bv, 7
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bx = phi i32 [ %i.bp, %bb.k ], [ %i.br, %bb.j ]
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr %i.bq, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge66
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 8 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.b, i32 noundef %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38   ; 2 uses
  %.not6687 = icmp sgt i32 %i.w, %i.d
  br i1 %.not6687, label %._crit_edge.thread, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ah = sext i32 %i.w to i64
  %2 = sext i32 %i.d to i64                       ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph90
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph90 ], [ %indvars.iv.be, %.backedge.backedge ] ; 3 uses
  %.06188 = phi i32 [ 0, %.lr.ph90 ], [ %.06188.be, %.backedge.backedge ] ; 7 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !76 ; 3 uses
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.x, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.ao = sext i16 %i.am to i32                   ; 2 uses
  %i.ap = icmp slt i16 %i.am, 0                   ; 2 uses
  %i.aq = sub nsw i32 0, %i.ao
  %i.ar = lshr i32 %i.aq, %i.f                    ; 2 uses
  %i.as = xor i32 %i.ar, -1
  %i.at = lshr i32 %i.ao, %i.f                    ; 2 uses
  %.058 = select i1 %i.ap, i32 %i.as, i32 %i.at
  %.0 = select i1 %i.ap, i32 %i.ar, i32 %i.at     ; 2 uses
  %i.au = icmp eq i32 %.0, 0
  br i1 %i.au, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.x, align 4, !tbaa !59  ; 2 uses
  %.not68 = icmp eq i32 %i.av, 0
  br i1 %.not68, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.015.i = phi i32 [ %i.aw, %.preheader.i ], [ %i.av, %bb.f ]
  %.0.i = phi i32 [ %i.ax, %.preheader.i ], [ 0, %bb.f ] ; 4 uses
  %i.aw = ashr i32 %.015.i, 1                     ; 2 uses
  %.not18.i = icmp eq i32 %i.aw, 0
  %i.ax = add nuw nsw i32 %.0.i, 1
  br i1 %.not18.i, label %bb.g, label %.preheader.i, !llvm.loop !81

bb.g:                                             ; preds = %.preheader.i
  %i.ay = load i32, ptr %i.y, align 8, !tbaa !58
  %i.az = shl i32 %.0.i, 4
  %i.ba = load i32, ptr %i.z, align 8, !tbaa !37
  %.not.i.i = icmp eq i32 %i.ba, 0
  %i.bb = sext i32 %i.ay to i64                   ; 2 uses
  %i.bc = sext i32 %i.az to i64                   ; 3 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !78
  %i.bh = add nsw i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !78
  br label %emit_symbol.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bb
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bc
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1024
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bc
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !51
  %i.bp = sext i8 %i.bo to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.bl, i32 noundef %i.bp)
  br label %emit_symbol.exit.i

emit_symbol.exit.i:                               ; preds = %bb.i, %bb.h
  %.not19.i = icmp eq i32 %.0.i, 0
  br i1 %.not19.i, label %emit_eobrun.exit, label %bb.j

bb.j:                                             ; preds = %emit_symbol.exit.i
  %i.bq = load i32, ptr %i.x, align 4, !tbaa !59
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.bq, i32 noundef %.0.i)
  br label %emit_eobrun.exit

emit_eobrun.exit:                                 ; preds = %emit_symbol.exit.i, %bb.j
  store i32 0, ptr %i.x, align 4, !tbaa !59
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.bs = load i32, ptr %i.ad, align 8, !tbaa !60
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %i.b, ptr noundef %i.br, i32 noundef %i.bs)
  store i32 0, ptr %i.ad, align 8, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %emit_eobrun.exit, %bb.f
  %i.bt = icmp sgt i32 %.06188, 15
  %.pre98 = load i32, ptr %i.z, align 8, !tbaa !37 ; 2 uses
  br i1 %i.bt, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.k
  %i.bu = icmp eq i32 %.pre98, 0
  br i1 %i.bu, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bv = load i32, ptr %i.y, align 8, !tbaa !58
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1920 ; 2 uses
  %.promoted = load i64, ptr %i.bz, align 8, !tbaa !78
  %i.ca = add i64 %.promoted, 1
  %i.cb = tail call i32 @llvm.usub.sat.i32(i32 %.06188, i32 31)
  %i.cc = add nuw i32 %i.cb, 15                   ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = add i64 %i.ca, %i.ce
  %i.cg = add nsw i32 %.06188, -16
  %i.ch = and i32 %i.cc, -16
  %i.ci = sub nsw i32 %i.cg, %i.ch
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !78
  br label %.preheader

.preheader:                                       ; preds = %emit_symbol.exit, %.lr.ph.split.us, %bb.k
  %i.cj = phi i32 [ %.pre98, %bb.k ], [ 1, %.lr.ph.split.us ], [ %.pr, %emit_symbol.exit ]
  %.162.lcssa = phi i32 [ %.06188, %bb.k ], [ %i.ci, %.lr.ph.split.us ], [ %i.fq, %emit_symbol.exit ]
  %i.ck = lshr i32 %.0, 1
  %i.cl = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ck, i1 false)
  %i.cm = sub nuw nsw i32 33, %i.cl               ; 2 uses
  %i.cn = load i32, ptr %i.y, align 8, !tbaa !58
  %i.co = shl i32 %.162.lcssa, 4
  %i.cp = add nsw i32 %i.cm, %i.co
  %.not.i71 = icmp eq i32 %i.cj, 0
  %i.cq = sext i32 %i.cn to i64                   ; 2 uses
  %i.cr = sext i32 %i.cp to i64                   ; 3 uses
  br i1 %.not.i71, label %bb.w, label %bb.v

.lr.ph.split:                                     ; preds = %.lr.ph, %emit_symbol.exit
  %i.cs = phi i32 [ %.pr, %emit_symbol.exit ], [ 0, %.lr.ph ]
  %.16285 = phi i32 [ %i.fq, %emit_symbol.exit ], [ %.06188, %.lr.ph ] ; 2 uses
  %i.ct = load i32, ptr %i.y, align 8, !tbaa !58
  %.not.i70 = icmp eq i32 %i.cs, 0
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  br i1 %.not.i70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !53
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1920 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !78
  %i.cz = add nsw i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !78
  br label %emit_symbol.exit

bb.m:                                             ; preds = %.lr.ph.split
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cu
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !43 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 960
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1264
  %i.df = load i8, ptr %i.de, align 4, !tbaa !51  ; 2 uses
  %i.dg = sext i8 %i.df to i32                    ; 2 uses
  %i.dh = zext i32 %i.dd to i64
  %i.di = load i32, ptr %i.ae, align 8, !tbaa !62
  %i.dj = icmp eq i8 %i.df, 0
  br i1 %i.dj, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i32 39, ptr %i.dm, align 8, !tbaa !47
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !52
  tail call void %i.dn(ptr noundef nonnull %i.dk) #8, !inline_history !82
  %.pre = load i32, ptr %i.z, align 8, !tbaa !37
  %i.do = icmp eq i32 %.pre, 0
  br i1 %i.do, label %.thread, label %emit_symbol.exit

.thread:                                          ; preds = %bb.m, %bb.n
  %i.dp = zext nneg i32 %i.dg to i64
  %notmask.i = shl nsw i64 -1, %i.dp
  %i.dq = xor i64 %notmask.i, -1
  %i.dr = and i64 %i.dq, %i.dh
  %i.ds = add nsw i32 %i.di, %i.dg                ; 4 uses
  %i.dt = sub nsw i32 24, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %i.dr, %i.du
  %i.dw = load i64, ptr %i.ag, align 8, !tbaa !61
  %i.dx = or i64 %i.dw, %i.dv                     ; 2 uses
  %i.dy = icmp sgt i32 %i.ds, 7
  br i1 %i.dy, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread, %bb.u
  %.034.i = phi i64 [ %i.fn, %bb.u ], [ %i.dx, %.thread ] ; 3 uses
  %.03033.i = phi i32 [ %i.fo, %bb.u ], [ %i.ds, %.thread ] ; 2 uses
  %i.dz = lshr i64 %.034.i, 16
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.ec, ptr %i.j, align 8, !tbaa !70
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !51
  %i.ed = load i64, ptr %i.m, align 8, !tbaa !72
  %i.ee = add i64 %i.ed, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.m, align 8, !tbaa !72
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph.i
  %i.eg = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !67 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.el = tail call i32 %i.ek(ptr noundef %i.eg) #8, !inline_history !84
  %.not.i.i83 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i83, label %bb.p, label %dump_buffer.exit.i

bb.p:                                             ; preds = %bb.o
  %i.em = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !46 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store i32 22, ptr %i.eo, align 8, !tbaa !47
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !52
  tail call void %i.ep(ptr noundef nonnull %i.em) #8, !inline_history !84
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.p, %bb.o
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !68
  store ptr %i.eq, ptr %i.j, align 8, !tbaa !70
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !71
  store i64 %i.es, ptr %i.m, align 8, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %dump_buffer.exit.i, %.lr.ph.i
  %i.et = and i64 %.034.i, 16711680
  %i.eu = icmp eq i64 %i.et, 16711680
  br i1 %i.eu, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store ptr %i.ew, ptr %i.j, align 8, !tbaa !70
  store i8 0, ptr %i.ev, align 1, !tbaa !51
  %i.ex = load i64, ptr %i.m, align 8, !tbaa !72
  %i.ey = add i64 %i.ex, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.m, align 8, !tbaa !72
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.fa = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !67 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !83
  %i.ff = tail call i32 %i.fe(ptr noundef %i.fa) #8, !inline_history !84
  %.not.i31.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i31.i, label %bb.t, label %dump_buffer.exit32.i

bb.t:                                             ; preds = %bb.s
  %i.fg = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !46 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 22, ptr %i.fi, align 8, !tbaa !47
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !52
  tail call void %i.fj(ptr noundef nonnull %i.fg) #8, !inline_history !84
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.t, %bb.s
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !68
  store ptr %i.fk, ptr %i.j, align 8, !tbaa !70
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !71
  store i64 %i.fm, ptr %i.m, align 8, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %dump_buffer.exit32.i, %bb.r, %bb.q
  %i.fn = shl i64 %.034.i, 8                      ; 2 uses
  %i.fo = add nsw i32 %.03033.i, -8               ; 2 uses
  %i.fp = icmp sgt i32 %.03033.i, 15
  br i1 %i.fp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %bb.u, %.thread
  %.030.lcssa.i = phi i32 [ %i.ds, %.thread ], [ %i.fo, %bb.u ]
  %.0.lcssa.i = phi i64 [ %i.dx, %.thread ], [ %i.fn, %bb.u ]
  store i64 %.0.lcssa.i, ptr %i.ag, align 8, !tbaa !61
  store i32 %.030.lcssa.i, ptr %i.ae, align 8, !tbaa !62
  br label %emit_symbol.exit

emit_symbol.exit:                                 ; preds = %._crit_edge.i, %bb.n, %bb.l
  %i.fq = add nsw i32 %.16285, -16                ; 2 uses
  %i.fr = icmp sgt i32 %.16285, 31
  %.pr = load i32, ptr %i.z, align 8, !tbaa !37   ; 2 uses
  br i1 %i.fr, label %.lr.ph.split, label %.preheader, !llvm.loop !86

bb.v:                                             ; preds = %.preheader
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cq
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !53
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.cr ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !78
  %i.fw = add nsw i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !78
  br label %.thread108

bb.w:                                             ; preds = %.preheader
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cq
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !43 ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.cr
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 1024
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.cr
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !51
  %i.ge = sext i8 %i.gd to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.ga, i32 noundef %i.ge)
  br label %.thread108

bb.x:                                             ; preds = %bb.e, %.backedge
  %i.gf = add nsw i32 %.06188, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not66 = icmp sgt i64 %indvars.iv.next, %2
  br i1 %.not66, label %._crit_edge, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.x, %.thread108
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.x ], [ %indvars.iv.next110, %.thread108 ]
  %.06188.be = phi i32 [ %i.gf, %bb.x ], [ 0, %.thread108 ]
  br label %.backedge, !llvm.loop !88

.thread108:                                       ; preds = %bb.w, %bb.v
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %.058, i32 noundef %i.cm)
  %indvars.iv.next110 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %.not66111 = icmp sgt i64 %indvars.iv.next110, %2
  br i1 %.not66111, label %._crit_edge.thread, label %.backedge.backedge

._crit_edge:                                      ; preds = %bb.x
  %i.gg = icmp sgt i32 %.06188, -1
  br i1 %i.gg, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %._crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !59
  %i.gj = add i32 %i.gi, 1                        ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !59
  %i.gk = icmp eq i32 %i.gj, 32767
  br i1 %i.gk, label %.preheader.i74.preheader, label %._crit_edge.thread

.preheader.i74.preheader:                         ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !58
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !37
  %.not.i.i78 = icmp eq i32 %i.go, 0
  %i.gp = sext i32 %i.gm to i64                   ; 2 uses
  br i1 %.not.i.i78, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader.i74.preheader
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !53
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1792 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !78
  %i.gv = add nsw i64 %i.gu, 1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !78
  br label %emit_eobrun.exit81

bb.aa:                                            ; preds = %.preheader.i74.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gp
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !43 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 896
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 1248
  %i.hc = load i8, ptr %i.hb, align 4, !tbaa !51
  %i.hd = sext i8 %i.hc to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.ha, i32 noundef %i.hd)
  br label %emit_eobrun.exit81

emit_eobrun.exit81:                               ; preds = %bb.aa, %bb.z
  %i.he = load i32, ptr %i.gh, align 4, !tbaa !59
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.he, i32 noundef 14)
  store i32 0, ptr %i.gh, align 4, !tbaa !59
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !35
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !60
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %i.b, ptr noundef %i.hg, i32 noundef %i.hi)
  store i32 0, ptr %i.hh, align 8, !tbaa !60
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread108, %bb.d, %bb.y, %emit_eobrun.exit81, %._crit_edge
  %i.hj = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.hk = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !68
  %i.hl = load i64, ptr %i.m, align 8, !tbaa !72
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !71
  %i.hn = load i32, ptr %i.n, align 8, !tbaa !63  ; 2 uses
  %.not67 = icmp eq i32 %i.hn, 0
  br i1 %.not67, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !64 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !65
  %i.ht = add nsw i32 %i.hs, 1
  %i.hu = and i32 %i.ht, 7
  store i32 %i.hu, ptr %i.hr, align 4, !tbaa !65
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hv = phi i32 [ %i.hn, %bb.ac ], [ %i.hp, %bb.ab ]
  %i.hw = add i32 %i.hv, -1
  store i32 %i.hw, ptr %i.ho, align 8, !tbaa !64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.thread
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 8 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !63
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.b, i32 noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !73   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.z = load i32, ptr %i.w, align 8, !tbaa !37
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.split, label %._crit_edge

.lr.ph.splitthread-pre-split:                     ; preds = %emit_bits.exit
  %.pr = load i32, ptr %i.w, align 8, !tbaa !37
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.ab = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %.pre36 = phi i32 [ %.pre37, %.lr.ph.splitthread-pre-split ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.ac = phi i32 [ %i.cj, %.lr.ph.splitthread-pre-split ], [ %i.t, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.e, label %emit_bits.exit

bb.e:                                             ; preds = %.lr.ph.split
  %i.ad = load i32, ptr %i.v, align 8, !tbaa !62  ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !76
  %i.ah = sext i16 %i.ag to i32
  %i.ai = lshr i32 %i.ah, %i.d
  %i.aj = and i32 %i.ai, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = add nsw i32 %i.ad, 1                    ; 2 uses
  %i.am = sub nsw i32 23, %i.ad
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 %i.ak, %i.an
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !61
  %i.aq = or i64 %i.ao, %i.ap                     ; 2 uses
  %i.ar = icmp sgt i32 %i.ad, 6
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.l
  %.034.i = phi i64 [ %i.cg, %bb.l ], [ %i.aq, %bb.e ] ; 3 uses
  %.03033.i = phi i32 [ %i.ch, %bb.l ], [ %i.al, %bb.e ] ; 2 uses
  %i.as = lshr i64 %.034.i, 16
  %i.at = trunc i64 %i.as to i8
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.h, align 8, !tbaa !70
  store i8 %i.at, ptr %i.au, align 1, !tbaa !51
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !72
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !72
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !36  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !67 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.be = tail call i32 %i.bd(ptr noundef %i.az) #8, !inline_history !84
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.g, label %dump_buffer.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !36  ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 22, ptr %i.bh, align 8, !tbaa !47
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !52
  tail call void %i.bi(ptr noundef nonnull %i.bf) #8, !inline_history !84
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.g, %bb.f
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !68
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !71
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %dump_buffer.exit.i, %.lr.ph.i
  %i.bm = and i64 %.034.i, 16711680
  %i.bn = icmp eq i64 %i.bm, 16711680
  br i1 %i.bn, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.h, align 8, !tbaa !70
  store i8 0, ptr %i.bo, align 1, !tbaa !51
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !72
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.k, align 8, !tbaa !72
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !36  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !83
  %i.by = tail call i32 %i.bx(ptr noundef %i.bt) #8, !inline_history !84
  %.not.i31.i = icmp eq i32 %i.by, 0
  br i1 %.not.i31.i, label %bb.k, label %dump_buffer.exit32.i

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.y, align 8, !tbaa !36  ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i32 22, ptr %i.cb, align 8, !tbaa !47
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !52
  tail call void %i.cc(ptr noundef nonnull %i.bz) #8, !inline_history !84
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.k, %bb.j
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !68
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !71
  store i64 %i.cf, ptr %i.k, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %dump_buffer.exit32.i, %bb.i, %bb.h
  %i.cg = shl i64 %.034.i, 8                      ; 2 uses
  %i.ch = add nsw i32 %.03033.i, -8               ; 2 uses
  %i.ci = icmp sgt i32 %.03033.i, 15
  br i1 %i.ci, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !85

._crit_edge.i.loopexit:                           ; preds = %bb.l
  %.pre.pre = load i32, ptr %i.s, align 8, !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.pre = phi i32 [ %.pre36, %bb.e ], [ %.pre.pre, %._crit_edge.i.loopexit ] ; 2 uses
  %.030.lcssa.i = phi i32 [ %i.al, %bb.e ], [ %i.ch, %._crit_edge.i.loopexit ]
  %.0.lcssa.i = phi i64 [ %i.aq, %bb.e ], [ %i.cg, %._crit_edge.i.loopexit ]
  store i64 %.0.lcssa.i, ptr %i.x, align 8, !tbaa !61
  store i32 %.030.lcssa.i, ptr %i.v, align 8, !tbaa !62
  br label %emit_bits.exit

emit_bits.exit:                                   ; preds = %.lr.ph.split, %._crit_edge.i
  %.pre37 = phi i32 [ %.pre36, %.lr.ph.split ], [ %.pre, %._crit_edge.i ]
  %i.cj = phi i32 [ %i.ac, %.lr.ph.split ], [ %.pre, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %emit_bits.exit, %.lr.ph, %bb.d
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !68
  %i.co = load i64, ptr %i.k, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !71
  %i.cq = load i32, ptr %i.l, align 8, !tbaa !63  ; 2 uses
  %.not30 = icmp eq i32 %i.cq, 0
  br i1 %.not30, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !64 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !65
  %i.cw = add nsw i32 %i.cv, 1
  %i.cx = and i32 %i.cw, 7
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !65
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cy = phi i32 [ %i.cq, %bb.n ], [ %i.cs, %bb.m ]
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr %i.cr, align 8, !tbaa !64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 32 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.e = load i32, ptr %i.d, align 8, !tbaa !80   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load i32, ptr %i.f, align 8, !tbaa !66   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 38 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 38 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !63
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.r = load i32, ptr %i.q, align 8, !tbaa !64
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.c, i32 noundef %i.u)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.v = load ptr, ptr %1, align 8, !tbaa !74     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 4 uses
  %.not96197 = icmp sgt i32 %i.x, %i.e
  br i1 %.not96197, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  br label %._crit_edge215

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.aa = sext i32 %i.x to i64                    ; 3 uses
  %2 = sext i32 %i.e to i64
  %3 = add nsw i64 %2, 1
  %4 = sub nsw i64 %3, %i.aa                      ; 3 uses
  %xtraiter = and i64 %4, 1
  %i.ab = icmp eq i32 %i.e, %i.x
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.089198 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.190.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !76
  %i.ah = tail call i16 @llvm.abs.i16(i16 %i.ag, i1 false)
  %spec.select = zext i16 %i.ah to i32
  %i.ai = lshr i32 %spec.select, %i.g             ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %i.ak = icmp eq i32 %i.ai, 1
  %i.al = trunc nsw i64 %indvars.iv to i32
  %.190 = select i1 %i.ak, i32 %i.al, i32 %.089198
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.am = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !76
  %i.ar = tail call i16 @llvm.abs.i16(i16 %i.aq, i1 false)
  %spec.select.1 = zext i16 %i.ar to i32
  %i.as = lshr i32 %spec.select.1, %i.g           ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = icmp eq i32 %i.as, 1
  %i.av = trunc nsw i64 %indvars.iv.next to i32
  %.190.1 = select i1 %i.au, i32 %i.av, i32 %.190 ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph214.unr-lcssa, label %.lr.ph, !llvm.loop !90

.lr.ph214.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph214, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph214.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph214.unr-lcssa ] ; 3 uses
  %.089198.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.190.1, %.lr.ph214.unr-lcssa ]
  %lcmp.mod317 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod317)
  %i.aw = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !76
  %i.bb = tail call i16 @llvm.abs.i16(i16 %i.ba, i1 false)
  %spec.select.epil = zext i16 %i.bb to i32
  %i.bc = lshr i32 %spec.select.epil, %i.g        ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %i.be = icmp eq i32 %i.bc, 1
  %i.bf = trunc nsw i64 %indvars.iv.epil.init to i32
  %.190.epil = select i1 %i.be, i32 %i.bf, i32 %.089198.epil.init
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.unr-lcssa, %.lr.ph.epil.preheader
  %.190.lcssa = phi i32 [ %.190.1, %.lr.ph214.unr-lcssa ], [ %.190.epil, %.lr.ph.epil.preheader ]
  %i.bg = sext i32 %.190.lcssa to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 6 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !60
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 12 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 26 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 12 uses
  %i.bv = sext i32 %i.x to i64
  %5 = sext i32 %i.e to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph214, %bb.bp
  %indvars.iv232 = phi i64 [ %i.bv, %.lr.ph214 ], [ %indvars.iv.next233, %bb.bp ] ; 4 uses
  %.080212 = phi i32 [ 0, %.lr.ph214 ], [ %.2, %bb.bp ] ; 4 uses
  %.083210 = phi i32 [ 0, %.lr.ph214 ], [ %.285, %bb.bp ] ; 3 uses
  %.086209 = phi ptr [ %i.bm, %.lr.ph214 ], [ %.288, %bb.bp ] ; 3 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv232
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 3 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.bz = icmp sle i64 %indvars.iv232, %i.bg
  %i.ca = icmp sgt i32 %.080212, 15
  %i.cb = select i1 %i.ca, i1 %i.bz, i1 false
  br i1 %i.cb, label %.lr.ph203, label %._crit_edge204

bb.f:                                             ; preds = %bb.e
  %i.cc = add nsw i32 %.080212, 1
  br label %bb.bp

.lr.ph203:                                        ; preds = %.preheader, %emit_buffered_bits.exit
  %.1202 = phi i32 [ %i.oz, %emit_buffered_bits.exit ], [ %.080212, %.preheader ] ; 2 uses
  %.184201 = phi i32 [ 0, %emit_buffered_bits.exit ], [ %.083210, %.preheader ] ; 2 uses
  %.187200 = phi ptr [ %i.pa, %emit_buffered_bits.exit ], [ %.086209, %.preheader ]
  %i.cd = load i32, ptr %i.bn, align 4, !tbaa !59 ; 2 uses
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %emit_eobrun.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph203, %.preheader.i
  %.015.i = phi i32 [ %i.ce, %.preheader.i ], [ %i.cd, %.lr.ph203 ]
  %.0.i = phi i32 [ %i.cf, %.preheader.i ], [ 0, %.lr.ph203 ] ; 5 uses
  %i.ce = ashr i32 %.015.i, 1                     ; 2 uses
  %.not18.i = icmp eq i32 %i.ce, 0
  %i.cf = add nuw nsw i32 %.0.i, 1
  br i1 %.not18.i, label %bb.g, label %.preheader.i, !llvm.loop !81

bb.g:                                             ; preds = %.preheader.i
  %i.cg = load i32, ptr %i.bo, align 8, !tbaa !58
  %i.ch = shl i32 %.0.i, 4
  %i.ci = load i32, ptr %i.bp, align 8, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ci, 0
  %i.cj = sext i32 %i.cg to i64                   ; 2 uses
  %i.ck = sext i32 %i.ch to i64                   ; 3 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cj
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !78
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !78
  br label %emit_symbol.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cj
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43 ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ck
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 1024
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.ck
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !51  ; 2 uses
  %i.cx = sext i8 %i.cw to i32                    ; 2 uses
  %i.cy = zext i32 %i.ct to i64
  %i.cz = load i32, ptr %i.bs, align 8, !tbaa !62
  %i.da = icmp eq i8 %i.cw, 0
  br i1 %i.da, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !46 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i32 39, ptr %i.dd, align 8, !tbaa !47
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !52
  tail call void %i.de(ptr noundef nonnull %i.db) #8, !inline_history !82
  %.pre = load i32, ptr %i.bp, align 8, !tbaa !37 ; 2 uses
  %.not.i156 = icmp eq i32 %.pre, 0
  br i1 %.not.i156, label %.thread, label %emit_symbol.exit.i

.thread:                                          ; preds = %bb.i, %bb.j
  %i.df = zext nneg i32 %i.cx to i64
  %notmask.i157 = shl nsw i64 -1, %i.df
  %i.dg = xor i64 %notmask.i157, -1
  %i.dh = and i64 %i.dg, %i.cy
  %i.di = add nsw i32 %i.cz, %i.cx                ; 4 uses
  %i.dj = sub nsw i32 24, %i.di
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl i64 %i.dh, %i.dk
  %i.dm = load i64, ptr %i.bu, align 8, !tbaa !61
  %i.dn = or i64 %i.dm, %i.dl                     ; 2 uses
  %i.do = icmp sgt i32 %i.di, 7
  br i1 %i.do, label %.lr.ph.i161, label %._crit_edge.i158

.lr.ph.i161:                                      ; preds = %.thread, %bb.q
  %.034.i162 = phi i64 [ %i.fd, %bb.q ], [ %i.dn, %.thread ] ; 3 uses
  %.03033.i163 = phi i32 [ %i.fe, %bb.q ], [ %i.di, %.thread ] ; 2 uses
  %i.dp = lshr i64 %.034.i162, 16
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store ptr %i.ds, ptr %i.k, align 8, !tbaa !70
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !51
  %i.dt = load i64, ptr %i.n, align 8, !tbaa !72
  %i.du = add i64 %i.dt, -1                       ; 2 uses
  store i64 %i.du, ptr %i.n, align 8, !tbaa !72
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i161
  %i.dw = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !83
  %i.eb = tail call i32 %i.ea(ptr noundef %i.dw) #8, !inline_history !84
  %.not.i.i166 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i166, label %bb.l, label %dump_buffer.exit.i167

bb.l:                                             ; preds = %bb.k
  %i.ec = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i32 22, ptr %i.ee, align 8, !tbaa !47
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !52
  tail call void %i.ef(ptr noundef nonnull %i.ec) #8, !inline_history !84
  br label %dump_buffer.exit.i167

dump_buffer.exit.i167:                            ; preds = %bb.l, %bb.k
  %i.eg = load ptr, ptr %i.dy, align 8, !tbaa !68
  store ptr %i.eg, ptr %i.k, align 8, !tbaa !70
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !71
  store i64 %i.ei, ptr %i.n, align 8, !tbaa !72
  br label %bb.m

bb.m:                                             ; preds = %dump_buffer.exit.i167, %.lr.ph.i161
  %i.ej = and i64 %.034.i162, 16711680
  %i.ek = icmp eq i64 %i.ej, 16711680
  br i1 %i.ek, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store ptr %i.em, ptr %i.k, align 8, !tbaa !70
  store i8 0, ptr %i.el, align 1, !tbaa !51
  %i.en = load i64, ptr %i.n, align 8, !tbaa !72
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.n, align 8, !tbaa !72
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.eq = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !67 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !83
  %i.ev = tail call i32 %i.eu(ptr noundef %i.eq) #8, !inline_history !84
  %.not.i31.i164 = icmp eq i32 %i.ev, 0
  br i1 %.not.i31.i164, label %bb.p, label %dump_buffer.exit32.i165

bb.p:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i32 22, ptr %i.ey, align 8, !tbaa !47
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !52
  tail call void %i.ez(ptr noundef nonnull %i.ew) #8, !inline_history !84
  br label %dump_buffer.exit32.i165

dump_buffer.exit32.i165:                          ; preds = %bb.p, %bb.o
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !68
  store ptr %i.fa, ptr %i.k, align 8, !tbaa !70
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !71
  store i64 %i.fc, ptr %i.n, align 8, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %dump_buffer.exit32.i165, %bb.n, %bb.m
  %i.fd = shl i64 %.034.i162, 8                   ; 2 uses
  %i.fe = add nsw i32 %.03033.i163, -8            ; 2 uses
  %i.ff = icmp sgt i32 %.03033.i163, 15
  br i1 %i.ff, label %.lr.ph.i161, label %._crit_edge.i158.loopexit, !llvm.loop !85

._crit_edge.i158.loopexit:                        ; preds = %bb.q
  %.pre238.pre.pre = load i32, ptr %i.bp, align 8, !tbaa !37
  br label %._crit_edge.i158

._crit_edge.i158:                                 ; preds = %._crit_edge.i158.loopexit, %.thread
  %.pre238.pre.a = phi i32 [ 0, %.thread ], [ %.pre238.pre.pre, %._crit_edge.i158.loopexit ]
  %.030.lcssa.i159 = phi i32 [ %i.di, %.thread ], [ %i.fe, %._crit_edge.i158.loopexit ]
  %.0.lcssa.i160 = phi i64 [ %i.dn, %.thread ], [ %i.fd, %._crit_edge.i158.loopexit ]
  store i64 %.0.lcssa.i160, ptr %i.bu, align 8, !tbaa !61
  store i32 %.030.lcssa.i159, ptr %i.bs, align 8, !tbaa !62
  br label %emit_symbol.exit.i

emit_symbol.exit.i:                               ; preds = %._crit_edge.i158, %bb.j, %bb.h
  %.pre238.a = phi i32 [ %.pre238.pre.a, %._crit_edge.i158 ], [ %.pre, %bb.j ], [ %i.ci, %bb.h ] ; 2 uses
end_hunk_0
begin_hunk_1_@encode_mcu_AC_refine:bb.a
  %i.pp = sext i32 %i.pm to i64                   ; 3 uses
  br i1 %.not.i.i108, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.po
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !53
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.pr, i64 %i.pp ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !78
  %i.pu = add nsw i64 %i.pt, 1
  store i64 %i.pu, ptr %i.ps, align 8, !tbaa !78
  br label %emit_symbol.exit.i109

bb.be:                                            ; preds = %bb.bc
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.po
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !43 ; 2 uses
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.pp
  %i.py = load i32, ptr %i.px, align 4, !tbaa !4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 1024
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 %i.pp
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !51
  %i.qc = sext i8 %i.qb to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.py, i32 noundef %i.qc)
  br label %emit_symbol.exit.i109

emit_symbol.exit.i109:                            ; preds = %bb.be, %bb.bd
  %.not19.i110 = icmp eq i32 %.0.i106, 0
  br i1 %.not19.i110, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %emit_symbol.exit.i109
  %i.qd = load i32, ptr %i.bn, align 4, !tbaa !59
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.qd, i32 noundef %.0.i106)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %emit_symbol.exit.i109
  store i32 0, ptr %i.bn, align 4, !tbaa !59
  %i.qe = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.qf = load i32, ptr %i.bi, align 8, !tbaa !60
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %i.c, ptr noundef %i.qe, i32 noundef %i.qf)
  store i32 0, ptr %i.bi, align 8, !tbaa !60
  br label %emit_eobrun.exit111

emit_eobrun.exit111:                              ; preds = %bb.bb, %bb.bg
  %i.qg = load i32, ptr %i.bo, align 8, !tbaa !58
  %i.qh = shl i32 %.1.lcssa, 4
  %i.qi = or disjoint i32 %i.qh, 1
  %i.qj = load i32, ptr %i.bp, align 8, !tbaa !37
  %.not.i112 = icmp eq i32 %i.qj, 0
  %i.qk = sext i32 %i.qg to i64                   ; 2 uses
  %i.ql = sext i32 %i.qi to i64                   ; 3 uses
  br i1 %.not.i112, label %emit_symbol.exit113, label %emit_symbol.exit113.thread

emit_symbol.exit113.thread:                       ; preds = %emit_eobrun.exit111
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.qk
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !53
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.ql ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !78
  %i.qq = add nsw i64 %i.qp, 1
  store i64 %i.qq, ptr %i.qo, align 8, !tbaa !78
  br label %emit_bits.exit

emit_symbol.exit113:                              ; preds = %emit_eobrun.exit111
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.qk
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !43 ; 2 uses
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.ql
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 1024
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 %i.ql
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !51
  %i.qy = sext i8 %i.qx to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.qu, i32 noundef %i.qy)
  %.pre241 = load i32, ptr %i.bp, align 8, !tbaa !37
  %i.qz = icmp eq i32 %.pre241, 0
  br i1 %i.qz, label %bb.bh, label %emit_bits.exit

bb.bh:                                            ; preds = %emit_symbol.exit113
  %i.ra = load i32, ptr %i.bs, align 8, !tbaa !62 ; 3 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv232
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !4
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !76
  %i.rg = icmp sgt i16 %i.rf, -1
  %i.rh = zext i1 %i.rg to i64
  %i.ri = add nsw i32 %i.ra, 1                    ; 2 uses
  %i.rj = sub nsw i32 23, %i.ra
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = shl nuw i64 %i.rh, %i.rk
  %i.rm = load i64, ptr %i.bu, align 8, !tbaa !61
  %i.rn = or i64 %i.rl, %i.rm                     ; 2 uses
  %i.ro = icmp sgt i32 %i.ra, 6
  br i1 %i.ro, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bh, %bb.bo
  %.034.i = phi i64 [ %i.td, %bb.bo ], [ %i.rn, %bb.bh ] ; 3 uses
  %.03033.i = phi i32 [ %i.te, %bb.bo ], [ %i.ri, %bb.bh ] ; 2 uses
  %i.rp = lshr i64 %.034.i, 16
  %i.rq = trunc i64 %i.rp to i8
  %i.rr = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1
  store ptr %i.rs, ptr %i.k, align 8, !tbaa !70
  store i8 %i.rq, ptr %i.rr, align 1, !tbaa !51
  %i.rt = load i64, ptr %i.n, align 8, !tbaa !72
  %i.ru = add i64 %i.rt, -1                       ; 2 uses
  store i64 %i.ru, ptr %i.n, align 8, !tbaa !72
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.i
  %i.rw = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !67 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !83
  %i.sb = tail call i32 %i.sa(ptr noundef %i.rw) #8, !inline_history !84
  %.not.i.i115 = icmp eq i32 %i.sb, 0
  br i1 %.not.i.i115, label %bb.bj, label %dump_buffer.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.sc = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !46 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 40
  store i32 22, ptr %i.se, align 8, !tbaa !47
  %i.sf = load ptr, ptr %i.sd, align 8, !tbaa !52
  tail call void %i.sf(ptr noundef nonnull %i.sc) #8, !inline_history !84
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.bj, %bb.bi
  %i.sg = load ptr, ptr %i.ry, align 8, !tbaa !68
  store ptr %i.sg, ptr %i.k, align 8, !tbaa !70
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !71
  store i64 %i.si, ptr %i.n, align 8, !tbaa !72
  br label %bb.bk

bb.bk:                                            ; preds = %dump_buffer.exit.i, %.lr.ph.i
  %i.sj = and i64 %.034.i, 16711680
  %i.sk = icmp eq i64 %i.sj, 16711680
  br i1 %i.sk, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.sl = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  store ptr %i.sm, ptr %i.k, align 8, !tbaa !70
  store i8 0, ptr %i.sl, align 1, !tbaa !51
  %i.sn = load i64, ptr %i.n, align 8, !tbaa !72
  %i.so = add i64 %i.sn, -1                       ; 2 uses
  store i64 %i.so, ptr %i.n, align 8, !tbaa !72
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.sq = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !67 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !83
  %i.sv = tail call i32 %i.su(ptr noundef %i.sq) #8, !inline_history !84
  %.not.i31.i = icmp eq i32 %i.sv, 0
  br i1 %.not.i31.i, label %bb.bn, label %dump_buffer.exit32.i

bb.bn:                                            ; preds = %bb.bm
  %i.sw = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !46 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  store i32 22, ptr %i.sy, align 8, !tbaa !47
  %i.sz = load ptr, ptr %i.sx, align 8, !tbaa !52
  tail call void %i.sz(ptr noundef nonnull %i.sw) #8, !inline_history !84
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.bn, %bb.bm
  %i.ta = load ptr, ptr %i.ss, align 8, !tbaa !68
  store ptr %i.ta, ptr %i.k, align 8, !tbaa !70
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !71
  store i64 %i.tc, ptr %i.n, align 8, !tbaa !72
  br label %bb.bo

bb.bo:                                            ; preds = %dump_buffer.exit32.i, %bb.bl, %bb.bk
  %i.td = shl i64 %.034.i, 8                      ; 2 uses
  %i.te = add nsw i32 %.03033.i, -8               ; 2 uses
  %i.tf = icmp sgt i32 %.03033.i, 15
  br i1 %i.tf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %bb.bo, %bb.bh
  %.030.lcssa.i = phi i32 [ %i.ri, %bb.bh ], [ %i.te, %bb.bo ]
  %.0.lcssa.i = phi i64 [ %i.rn, %bb.bh ], [ %i.td, %bb.bo ]
  store i64 %.0.lcssa.i, ptr %i.bu, align 8, !tbaa !61
  store i32 %.030.lcssa.i, ptr %i.bs, align 8, !tbaa !62
  br label %emit_bits.exit

emit_bits.exit:                                   ; preds = %emit_symbol.exit113.thread, %emit_symbol.exit113, %._crit_edge.i
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %i.c, ptr noundef %.187.lcssa, i32 noundef %.184.lcssa)
  %i.tg = load ptr, ptr %i.bh, align 8, !tbaa !35
  br label %bb.bp

bb.bp:                                            ; preds = %emit_bits.exit, %bb.ba, %bb.f
  %.288 = phi ptr [ %.086209, %bb.f ], [ %.187.lcssa, %bb.ba ], [ %i.tg, %emit_bits.exit ]
  %.285 = phi i32 [ %.083210, %bb.f ], [ %i.pf, %bb.ba ], [ 0, %emit_bits.exit ] ; 2 uses
  %.2 = phi i32 [ %i.cc, %bb.f ], [ %.1.lcssa, %bb.ba ], [ 0, %emit_bits.exit ] ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1 ; 2 uses
  %.not97 = icmp sgt i64 %indvars.iv.next233, %5
  br i1 %.not97, label %._crit_edge215.loopexit, label %bb.e, !llvm.loop !94

._crit_edge215.loopexit:                          ; preds = %bb.bp
  %i.th = icmp sgt i32 %.2, 0
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge.thread, %._crit_edge215.loopexit
  %i.ti = phi ptr [ %i.z, %._crit_edge.thread ], [ %i.bi, %._crit_edge215.loopexit ] ; 4 uses
  %i.tj = phi ptr [ %i.y, %._crit_edge.thread ], [ %i.bh, %._crit_edge215.loopexit ]
  %.083.lcssa = phi i32 [ 0, %._crit_edge.thread ], [ %.285, %._crit_edge215.loopexit ] ; 2 uses
  %.080.lcssa = phi i1 [ false, %._crit_edge.thread ], [ %i.th, %._crit_edge215.loopexit ]
  %i.tk = icmp ne i32 %.083.lcssa, 0
  %or.cond = select i1 %.080.lcssa, i1 true, i1 %i.tk
  br i1 %or.cond, label %bb.bq, label %emit_eobrun.exit124

bb.bq:                                            ; preds = %._crit_edge215
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 4 uses
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !59
  %i.tn = add i32 %i.tm, 1                        ; 4 uses
  store i32 %i.tn, ptr %i.tl, align 4, !tbaa !59
  %i.to = load i32, ptr %i.ti, align 8, !tbaa !60
  %i.tp = add i32 %i.to, %.083.lcssa              ; 2 uses
  store i32 %i.tp, ptr %i.ti, align 8, !tbaa !60
  %i.tq = icmp ne i32 %i.tn, 32767
  %i.tr = icmp ult i32 %i.tp, 938
  %or.cond99.not185 = select i1 %i.tq, i1 %i.tr, i1 false
  %.not.i116 = icmp eq i32 %i.tn, 0
  %or.cond182 = or i1 %.not.i116, %or.cond99.not185
  br i1 %or.cond182, label %emit_eobrun.exit124, label %.preheader.i117

.preheader.i117:                                  ; preds = %bb.bq, %.preheader.i117
  %.015.i118 = phi i32 [ %i.ts, %.preheader.i117 ], [ %i.tn, %bb.bq ]
  %.0.i119 = phi i32 [ %i.tt, %.preheader.i117 ], [ 0, %bb.bq ] ; 4 uses
  %i.ts = ashr i32 %.015.i118, 1                  ; 2 uses
  %.not18.i120 = icmp eq i32 %i.ts, 0
  %i.tt = add nuw nsw i32 %.0.i119, 1
  br i1 %.not18.i120, label %bb.br, label %.preheader.i117, !llvm.loop !81

bb.br:                                            ; preds = %.preheader.i117
  %i.tu = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !58
  %i.tw = shl i32 %.0.i119, 4
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !37
  %.not.i.i121 = icmp eq i32 %i.ty, 0
  %i.tz = sext i32 %i.tv to i64                   ; 2 uses
  %i.ua = sext i32 %i.tw to i64                   ; 3 uses
  br i1 %.not.i.i121, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ub = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.tz
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !53
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.ud, i64 %i.ua ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !78
  %i.ug = add nsw i64 %i.uf, 1
  store i64 %i.ug, ptr %i.ue, align 8, !tbaa !78
  br label %emit_symbol.exit.i122

bb.bt:                                            ; preds = %bb.br
  %i.uh = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.uh, i64 %i.tz
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !43 ; 2 uses
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.ua
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !4
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 1024
  %i.un = getelementptr inbounds i8, ptr %i.um, i64 %i.ua
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !51
  %i.up = sext i8 %i.uo to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.ul, i32 noundef %i.up)
  br label %emit_symbol.exit.i122

emit_symbol.exit.i122:                            ; preds = %bb.bt, %bb.bs
  %.not19.i123 = icmp eq i32 %.0.i119, 0
  br i1 %.not19.i123, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %emit_symbol.exit.i122
  %i.uq = load i32, ptr %i.tl, align 4, !tbaa !59
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.uq, i32 noundef %.0.i119)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %emit_symbol.exit.i122
  store i32 0, ptr %i.tl, align 4, !tbaa !59
  %i.ur = load ptr, ptr %i.tj, align 8, !tbaa !35
  %i.us = load i32, ptr %i.ti, align 8, !tbaa !60
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %i.c, ptr noundef %i.ur, i32 noundef %i.us)
  store i32 0, ptr %i.ti, align 8, !tbaa !60
  br label %emit_eobrun.exit124

emit_eobrun.exit124:                              ; preds = %bb.bv, %bb.bq, %._crit_edge215
  %i.ut = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.uu = load ptr, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  store ptr %i.ut, ptr %i.uu, align 8, !tbaa !68
  %i.uv = load i64, ptr %i.n, align 8, !tbaa !72
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %i.uv, ptr %i.uw, align 8, !tbaa !71
  %i.ux = load i32, ptr %i.o, align 8, !tbaa !63  ; 2 uses
  %.not98 = icmp eq i32 %i.ux, 0
  br i1 %.not98, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %emit_eobrun.exit124
  %i.uy = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !64 ; 2 uses
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !65
  %i.vd = add nsw i32 %i.vc, 1
  %i.ve = and i32 %i.vd, 7
  store i32 %i.ve, ptr %i.vb, align 4, !tbaa !65
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.vf = phi i32 [ %i.ux, %bb.bx ], [ %i.uz, %bb.bw ]
  %i.vg = add i32 %i.vf, -1
  store i32 %i.vg, ptr %i.uy, align 8, !tbaa !64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %emit_eobrun.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %emit_eobrun.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.015.i = phi i32 [ %i.f, %.preheader.i ], [ %i.e, %bb.a ]
  %.0.i = phi i32 [ %i.g, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.f = ashr i32 %.015.i, 1                      ; 2 uses
  %.not18.i = icmp eq i32 %i.f, 0
  %i.g = add nuw nsw i32 %.0.i, 1
  br i1 %.not18.i, label %bb.b, label %.preheader.i, !llvm.loop !81

bb.b:                                             ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %i.j = shl i32 %.0.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37
  %.not.i.i = icmp eq i32 %i.l, 0
  %i.m = sext i32 %i.i to i64                     ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.m
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !78
  %i.t = add nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !78
  br label %emit_symbol.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.m
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.n
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1024
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.n
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !51
  %i.ac = sext i8 %i.ab to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.y, i32 noundef %i.ac)
  br label %emit_symbol.exit.i

emit_symbol.exit.i:                               ; preds = %bb.d, %bb.c
  %.not19.i = icmp eq i32 %.0.i, 0
  br i1 %.not19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %emit_symbol.exit.i
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !59
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.c, i32 noundef %i.ad, i32 noundef %.0.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %emit_symbol.exit.i
  store i32 0, ptr %i.d, align 4, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !60
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %i.c, ptr noundef %i.af, i32 noundef %i.ah)
  store i32 0, ptr %i.ag, align 8, !tbaa !60
  br label %emit_eobrun.exit

emit_eobrun.exit:                                 ; preds = %bb.a, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38
end_hunk_1
