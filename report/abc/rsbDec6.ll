Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rsbDec6?download=true
inline.NumInlined: 165
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Rsb_DecPrintTable:bb.a
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !48

._crit_edge161:                                   ; preds = %.lr.ph160, %._crit_edge156
  %putchar91 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br i1 %i.i, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %._crit_edge161
  %wide.trip.count217 = zext nneg i32 %1 to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %indvars.iv214 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next215, %.lr.ph165 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv214
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.da)
  %.lhs.trunc108 = trunc nuw nsw i64 %i.db to i8
  %i.dc = urem i8 %.lhs.trunc108, 10
  %.zext109 = zext nneg i8 %i.dc to i32
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext109) ; 0 uses
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !49

._crit_edge166:                                   ; preds = %.lr.ph165, %._crit_edge161
  %.15.lcssa = phi i32 [ 0, %._crit_edge161 ], [ %1, %.lr.ph165 ] ; 2 uses
  %putchar92 = tail call i32 @putchar(i32 124)    ; 0 uses
  %i.de = icmp slt i32 %.15.lcssa, %2
  br i1 %i.de, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %._crit_edge166
  %i.df = zext nneg i32 %.15.lcssa to i64
  %wide.trip.count222 = zext nneg i32 %2 to i64
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %.lr.ph170
  %indvars.iv219 = phi i64 [ %i.df, %.lr.ph170.preheader ], [ %indvars.iv.next220, %.lr.ph170 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv219
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dh)
  %.lhs.trunc110 = trunc nuw nsw i64 %i.di to i8
  %i.dj = urem i8 %.lhs.trunc110, 10
  %.zext111 = zext nneg i8 %i.dj to i32
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext111) ; 0 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !50

._crit_edge171:                                   ; preds = %.lr.ph170, %._crit_edge166
  %putchar93 = tail call i32 @putchar(i32 10)     ; 0 uses
  %putchar94 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @Rsb_DecInitCexes(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %0, 7
  %i.b = add nsw i32 %0, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 9 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !16
  %i.f = shl nsw i32 %i.d, 6
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = ashr i32 %i.g, 6
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = and i64 %i.e, 1
  %.not = icmp eq i64 %i.l, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %Abc_TtFindFirstBit.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %Abc_TtFindFirstBit.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 4 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %Abc_Tt6FirstBit.exit.i

Abc_Tt6FirstBit.exit.i:                           ; preds = %.lr.ph.i
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = shl nuw nsw i32 %i.p, 6
  %i.r = and i64 %i.o, 4294967295
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.t = lshr exact i64 %i.o, 32
  %spec.select.i.i = select i1 %i.s, i64 %i.t, i64 %i.o ; 3 uses
  %spec.select27.i.i = select i1 %i.s, i32 32, i32 0 ; 2 uses
  %i.u = and i64 %spec.select.i.i, 65535
  %i.v = icmp eq i64 %i.u, 0                      ; 2 uses
  %i.w = or disjoint i32 %spec.select27.i.i, 16
  %i.x = lshr exact i64 %spec.select.i.i, 16
  %.121.i.i = select i1 %i.v, i64 %i.x, i64 %spec.select.i.i ; 3 uses
  %.1.i.i = select i1 %i.v, i32 %i.w, i32 %spec.select27.i.i ; 2 uses
  %i.y = and i64 %.121.i.i, 255
  %i.z = icmp eq i64 %i.y, 0                      ; 2 uses
  %i.aa = or disjoint i32 %.1.i.i, 8
  %i.ab = lshr exact i64 %.121.i.i, 8
  %.222.i.i = select i1 %i.z, i64 %i.ab, i64 %.121.i.i ; 3 uses
  %.2.i.i = select i1 %i.z, i32 %i.aa, i32 %.1.i.i ; 2 uses
  %i.ac = and i64 %.222.i.i, 15
  %i.ad = icmp eq i64 %i.ac, 0                    ; 2 uses
  %i.ae = or disjoint i32 %.2.i.i, 4
  %i.af = lshr exact i64 %.222.i.i, 4
  %.323.i.i = select i1 %i.ad, i64 %i.af, i64 %.222.i.i ; 3 uses
  %.3.i.i = select i1 %i.ad, i32 %i.ae, i32 %.2.i.i ; 2 uses
  %i.ag = and i64 %.323.i.i, 3
  %i.ah = icmp eq i64 %i.ag, 0                    ; 2 uses
  %i.ai = add nuw nsw i32 %.3.i.i, 2
  %i.aj = lshr exact i64 %.323.i.i, 2
  %.424.i.i = select i1 %i.ah, i64 %i.aj, i64 %.323.i.i
  %.4.i.i = select i1 %i.ah, i32 %i.ai, i32 %.3.i.i
  %i.ak = trunc i64 %.424.i.i to i32
  %i.al = and i32 %i.ak, 1
  %i.am = xor i32 %i.al, 1
  %.5.i.i = add nuw i32 %.4.i.i, %i.q
  %i.an = add nuw i32 %.5.i.i, %i.am
  br label %Abc_TtFindFirstBit.exit

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtFindFirstBit.exit, label %.lr.ph.i, !llvm.loop !51

Abc_TtFindFirstBit.exit:                          ; preds = %bb.c, %Abc_Tt6FirstBit.exit.i, %bb.b, %bb.a
  %i.ao = phi i32 [ 0, %bb.a ], [ %i.an, %Abc_Tt6FirstBit.exit.i ], [ -1, %bb.b ], [ -1, %bb.c ] ; 2 uses
  %.not42 = icmp sgt i64 %i.k, -1                 ; 2 uses
  br i1 %.not42, label %bb.d, label %Abc_TtFindLastBit.exit

bb.d:                                             ; preds = %Abc_TtFindFirstBit.exit
  %i.ap = icmp sgt i32 %i.d, 0
  br i1 %i.ap, label %.lr.ph, label %Abc_TtFindLastBit.exit

.lr.ph:                                           ; preds = %bb.d
  %i.aq = zext nneg i32 %i.d to i64
  br label %bb.e

select.unfold.i:                                  ; preds = %bb.e
  %i.ar = icmp sgt i32 %i.av, 0
  br i1 %i.ar, label %bb.e, label %Abc_TtFindLastBit.exit, !llvm.loop !52

bb.e:                                             ; preds = %.lr.ph, %select.unfold.i
  %indvars.iv.i44205 = phi i64 [ %i.aq, %.lr.ph ], [ %i.as, %select.unfold.i ]
  %i.as = add nsw i64 %indvars.iv.i44205, -1      ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16 ; 4 uses
  %.not.i46 = icmp eq i64 %i.au, 0
  %i.av = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %.not.i46, label %select.unfold.i, label %bb.f, !llvm.loop !52

bb.f:                                             ; preds = %bb.e
  %i.aw = shl nuw nsw i32 %i.av, 6
  %i.ax = icmp ult i64 %i.au, 4294967296          ; 2 uses
  %i.ay = shl nuw i64 %i.au, 32
  %.020.i.i = select i1 %i.ax, i64 %i.ay, i64 %i.au ; 3 uses
  %.0.i.i = select i1 %i.ax, i32 32, i32 0        ; 2 uses
  %i.az = icmp ult i64 %.020.i.i, 281474976710656 ; 2 uses
  %i.ba = or disjoint i32 %.0.i.i, 16
  %i.bb = shl nuw i64 %.020.i.i, 16
  %.121.i.i47 = select i1 %i.az, i64 %i.bb, i64 %.020.i.i ; 3 uses
  %.1.i.i48 = select i1 %i.az, i32 %i.ba, i32 %.0.i.i ; 2 uses
  %i.bc = icmp ult i64 %.121.i.i47, 72057594037927936 ; 2 uses
  %i.bd = or disjoint i32 %.1.i.i48, 8
  %i.be = shl nuw i64 %.121.i.i47, 8
  %.222.i.i49 = select i1 %i.bc, i64 %i.be, i64 %.121.i.i47 ; 3 uses
  %.2.i.i50 = select i1 %i.bc, i32 %i.bd, i32 %.1.i.i48 ; 2 uses
  %i.bf = icmp ult i64 %.222.i.i49, 1152921504606846976 ; 2 uses
  %i.bg = or disjoint i32 %.2.i.i50, 4
  %i.bh = shl nuw i64 %.222.i.i49, 4
  %.323.i.i51 = select i1 %i.bf, i64 %i.bh, i64 %.222.i.i49 ; 3 uses
  %.3.i.i52 = select i1 %i.bf, i32 %i.bg, i32 %.2.i.i50 ; 2 uses
  %i.bi = icmp ult i64 %.323.i.i51, 4611686018427387904 ; 2 uses
  %i.bj = add nuw nsw i32 %.3.i.i52, 2
  %i.bk = shl nuw i64 %.323.i.i51, 2
  %.424.i.i53 = select i1 %i.bi, i64 %i.bk, i64 %.323.i.i51
  %.4.i.i54 = select i1 %i.bi, i32 %i.bj, i32 %.3.i.i52
  %i.bl = icmp sgt i64 %.424.i.i53, -1
  %.neg28.i.i = sext i1 %i.bl to i32
  %reass.sub.i.i = or disjoint i32 %i.aw, 63
  %i.bm = sub nuw i32 %reass.sub.i.i, %.4.i.i54
  %i.bn = add nsw i32 %i.bm, %.neg28.i.i
  br label %Abc_TtFindLastBit.exit

Abc_TtFindLastBit.exit:                           ; preds = %select.unfold.i, %bb.d, %bb.f, %Abc_TtFindFirstBit.exit
  %i.bo = phi i32 [ %i.g, %Abc_TtFindFirstBit.exit ], [ %i.bn, %bb.f ], [ -1, %bb.d ], [ -1, %select.unfold.i ] ; 2 uses
  br i1 %.not, label %Abc_TtFindFirstZero.exit, label %bb.g

bb.g:                                             ; preds = %Abc_TtFindLastBit.exit
  %i.bp = icmp sgt i32 %i.d, 0
  br i1 %i.bp, label %.lr.ph.preheader.i56, label %Abc_TtFindFirstZero.exit

.lr.ph.preheader.i56:                             ; preds = %bb.g
  %wide.trip.count.i57 = zext nneg i32 %i.d to i64
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.h, %.lr.ph.preheader.i56
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %indvars.iv.next.i73, %bb.h ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i59
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16 ; 3 uses
  %.not.i60 = icmp eq i64 %i.br, -1
  br i1 %.not.i60, label %bb.h, label %Abc_Tt6FirstBit.exit.i61

Abc_Tt6FirstBit.exit.i61:                         ; preds = %.lr.ph.i58
  %i.bs = trunc nuw nsw i64 %indvars.iv.i59 to i32
  %i.bt = xor i64 %i.br, -1                       ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bs, 6
  %i.bv = and i64 %i.br, 4294967295
  %i.bw = icmp eq i64 %i.bv, 4294967295           ; 2 uses
  %i.bx = lshr exact i64 %i.bt, 32
  %spec.select.i.i62 = select i1 %i.bw, i64 %i.bx, i64 %i.bt ; 3 uses
  %spec.select27.i.i63 = select i1 %i.bw, i32 32, i32 0 ; 2 uses
  %i.by = and i64 %spec.select.i.i62, 65535
  %i.bz = icmp eq i64 %i.by, 0                    ; 2 uses
  %i.ca = or disjoint i32 %spec.select27.i.i63, 16
  %i.cb = lshr exact i64 %spec.select.i.i62, 16
  %.121.i.i64 = select i1 %i.bz, i64 %i.cb, i64 %spec.select.i.i62 ; 3 uses
  %.1.i.i65 = select i1 %i.bz, i32 %i.ca, i32 %spec.select27.i.i63 ; 2 uses
  %i.cc = and i64 %.121.i.i64, 255
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  %i.ce = or disjoint i32 %.1.i.i65, 8
  %i.cf = lshr exact i64 %.121.i.i64, 8
  %.222.i.i66 = select i1 %i.cd, i64 %i.cf, i64 %.121.i.i64 ; 3 uses
  %.2.i.i67 = select i1 %i.cd, i32 %i.ce, i32 %.1.i.i65 ; 2 uses
  %i.cg = and i64 %.222.i.i66, 15
  %i.ch = icmp eq i64 %i.cg, 0                    ; 2 uses
  %i.ci = or disjoint i32 %.2.i.i67, 4
  %i.cj = lshr exact i64 %.222.i.i66, 4
  %.323.i.i68 = select i1 %i.ch, i64 %i.cj, i64 %.222.i.i66 ; 3 uses
  %.3.i.i69 = select i1 %i.ch, i32 %i.ci, i32 %.2.i.i67 ; 2 uses
  %i.ck = and i64 %.323.i.i68, 3
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  %i.cm = add nuw nsw i32 %.3.i.i69, 2
  %i.cn = lshr exact i64 %.323.i.i68, 2
  %.424.i.i70 = select i1 %i.cl, i64 %i.cn, i64 %.323.i.i68
  %.4.i.i71 = select i1 %i.cl, i32 %i.cm, i32 %.3.i.i69
  %i.co = trunc i64 %.424.i.i70 to i32
  %i.cp = and i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 1
  %.5.i.i72 = add nuw i32 %.4.i.i71, %i.bu
  %i.cr = add nuw i32 %.5.i.i72, %i.cq
  br label %Abc_TtFindFirstZero.exit

bb.h:                                             ; preds = %.lr.ph.i58
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i57
  br i1 %exitcond.not.i74, label %Abc_TtFindFirstZero.exit, label %.lr.ph.i58, !llvm.loop !53

Abc_TtFindFirstZero.exit:                         ; preds = %bb.h, %Abc_Tt6FirstBit.exit.i61, %bb.g, %Abc_TtFindLastBit.exit
  %i.cs = phi i32 [ 0, %Abc_TtFindLastBit.exit ], [ %i.cr, %Abc_Tt6FirstBit.exit.i61 ], [ -1, %bb.g ], [ -1, %bb.h ] ; 2 uses
  br i1 %.not42, label %Abc_TtFindLastZero.exit, label %bb.i

bb.i:                                             ; preds = %Abc_TtFindFirstZero.exit
  %i.ct = icmp sgt i32 %i.d, 0
  br i1 %i.ct, label %.lr.ph207, label %Abc_TtFindLastZero.exit

.lr.ph207:                                        ; preds = %bb.i
  %i.cu = zext nneg i32 %i.d to i64
  br label %bb.j

select.unfold.i76:                                ; preds = %bb.j
  %i.cv = icmp sgt i32 %i.cz, 0
  br i1 %i.cv, label %bb.j, label %Abc_TtFindLastZero.exit, !llvm.loop !54

bb.j:                                             ; preds = %.lr.ph207, %select.unfold.i76
  %indvars.iv.i77206 = phi i64 [ %i.cu, %.lr.ph207 ], [ %i.cw, %select.unfold.i76 ]
  %i.cw = add nsw i64 %indvars.iv.i77206, -1      ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %.not.i79 = icmp eq i64 %i.cy, -1
  %i.cz = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %.not.i79, label %select.unfold.i76, label %bb.k, !llvm.loop !54

bb.k:                                             ; preds = %bb.j
  %i.da = xor i64 %i.cy, -1                       ; 2 uses
  %i.db = shl nuw nsw i32 %i.cz, 6
  %i.dc = icmp ugt i64 %i.cy, -4294967297         ; 2 uses
  %i.dd = shl nuw i64 %i.da, 32
  %.020.i.i80 = select i1 %i.dc, i64 %i.dd, i64 %i.da ; 3 uses
  %.0.i.i81 = select i1 %i.dc, i32 32, i32 0      ; 2 uses
  %i.de = icmp ult i64 %.020.i.i80, 281474976710656 ; 2 uses
  %i.df = or disjoint i32 %.0.i.i81, 16
  %i.dg = shl nuw i64 %.020.i.i80, 16
  %.121.i.i82 = select i1 %i.de, i64 %i.dg, i64 %.020.i.i80 ; 3 uses
  %.1.i.i83 = select i1 %i.de, i32 %i.df, i32 %.0.i.i81 ; 2 uses
  %i.dh = icmp ult i64 %.121.i.i82, 72057594037927936 ; 2 uses
  %i.di = or disjoint i32 %.1.i.i83, 8
  %i.dj = shl nuw i64 %.121.i.i82, 8
  %.222.i.i84 = select i1 %i.dh, i64 %i.dj, i64 %.121.i.i82 ; 3 uses
  %.2.i.i85 = select i1 %i.dh, i32 %i.di, i32 %.1.i.i83 ; 2 uses
  %i.dk = icmp ult i64 %.222.i.i84, 1152921504606846976 ; 2 uses
  %i.dl = or disjoint i32 %.2.i.i85, 4
  %i.dm = shl nuw i64 %.222.i.i84, 4
  %.323.i.i86 = select i1 %i.dk, i64 %i.dm, i64 %.222.i.i84 ; 3 uses
  %.3.i.i87 = select i1 %i.dk, i32 %i.dl, i32 %.2.i.i85 ; 2 uses
  %i.dn = icmp ult i64 %.323.i.i86, 4611686018427387904 ; 2 uses
  %i.do = add nuw nsw i32 %.3.i.i87, 2
  %i.dp = shl nuw i64 %.323.i.i86, 2
  %.424.i.i88 = select i1 %i.dn, i64 %i.dp, i64 %.323.i.i86
  %.4.i.i89 = select i1 %i.dn, i32 %i.do, i32 %.3.i.i87
  %i.dq = icmp sgt i64 %.424.i.i88, -1
  %.neg28.i.i90 = sext i1 %i.dq to i32
  %reass.sub.i.i91 = or disjoint i32 %i.db, 63
  %i.dr = sub nuw i32 %reass.sub.i.i91, %.4.i.i89
  %i.ds = add nsw i32 %i.dr, %.neg28.i.i90
  br label %Abc_TtFindLastZero.exit

Abc_TtFindLastZero.exit:                          ; preds = %select.unfold.i76, %bb.i, %bb.k, %Abc_TtFindFirstZero.exit
  %i.dt = phi i32 [ %i.g, %Abc_TtFindFirstZero.exit ], [ %i.ds, %bb.k ], [ -1, %bb.i ], [ -1, %select.unfold.i76 ] ; 2 uses
  %i.du = icmp sgt i32 %4, 0
  br i1 %i.du, label %.lr.ph.i92, label %Rsb_DecRecordCex.exit120

.lr.ph.i92:                                       ; preds = %Abc_TtFindLastZero.exit
  %i.dv = ashr i32 %i.ao, 6
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = and i32 %i.ao, 63
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = ashr i32 %i.cs, 6
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = and i32 %i.cs, 63
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %wide.trip.count.i93 = zext nneg i32 %4 to i64  ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i92
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.i92 ], [ %indvars.iv.next.i95, %bb.n ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i94
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.dw
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !16
  %i.eh = lshr i64 %i.eg, %i.dy
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ea
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = lshr i64 %i.ej, %i.ec
  %i.el = xor i64 %i.ek, %i.eh
  %i.em = and i64 %i.el, 1
  %.not.not.i = icmp eq i64 %i.em, 0
  br i1 %.not.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %gep.i = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i94 ; 2 uses
  %i.en = load i64, ptr %gep.i, align 8, !tbaa !16
  %i.eo = or i64 %i.en, 1
  store i64 %i.eo, ptr %gep.i, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %wide.trip.count.i93
  br i1 %exitcond.not.i96, label %.lr.ph.i97, label %bb.l, !llvm.loop !0

.lr.ph.i97:                                       ; preds = %bb.n
  %i.ep = ashr i32 %i.dt, 6
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = and i32 %i.dt, 63
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i97
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i101, %bb.q ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i99
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !14 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.dw
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ex = lshr i64 %i.ew, %i.dy
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.eq
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fa = lshr i64 %i.ez, %i.es
  %i.fb = xor i64 %i.fa, %i.ex
  %i.fc = and i64 %i.fb, 1
  %.not.not.i100 = icmp eq i64 %i.fc, 0
  br i1 %.not.not.i100, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %gep.i103 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i99 ; 2 uses
  %i.fd = load i64, ptr %gep.i103, align 8, !tbaa !16
  %i.fe = or i64 %i.fd, 2
  store i64 %i.fe, ptr %gep.i103, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i93
  br i1 %exitcond.not.i102, label %.lr.ph.i105, label %bb.o, !llvm.loop !0

.lr.ph.i105:                                      ; preds = %bb.q
  %i.ff = ashr i32 %i.bo, 6
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = and i32 %i.bo, 63
  %i.fi = zext nneg i32 %i.fh to i64              ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i105
  %indvars.iv.i107 = phi i64 [ 0, %.lr.ph.i105 ], [ %indvars.iv.next.i109, %bb.t ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i107
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !14 ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.fg
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !16
  %i.fn = lshr i64 %i.fm, %i.fi
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.ea
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fq = lshr i64 %i.fp, %i.ec
  %i.fr = xor i64 %i.fq, %i.fn
  %i.fs = and i64 %i.fr, 1
  %.not.not.i108 = icmp eq i64 %i.fs, 0
  br i1 %.not.not.i108, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %gep.i111 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i107 ; 2 uses
  %i.ft = load i64, ptr %gep.i111, align 8, !tbaa !16
  %i.fu = or i64 %i.ft, 4
  store i64 %i.fu, ptr %gep.i111, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i93
  br i1 %exitcond.not.i110, label %.lr.ph.i113, label %bb.r, !llvm.loop !0

.lr.ph.i113:                                      ; preds = %bb.t, %bb.v
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i117, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i115
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fg
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !16
  %i.fz = lshr i64 %i.fy, %i.fi
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.eq
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !16
  %i.gc = lshr i64 %i.gb, %i.es
  %i.gd = xor i64 %i.gc, %i.fz
  %i.ge = and i64 %i.gd, 1
  %.not.not.i116 = icmp eq i64 %i.ge, 0
  br i1 %.not.not.i116, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i113
  %gep.i119 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i115 ; 2 uses
  %i.gf = load i64, ptr %gep.i119, align 8, !tbaa !16
  %i.gg = or i64 %i.gf, 8
  store i64 %i.gg, ptr %gep.i119, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i113
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i93
  br i1 %exitcond.not.i118, label %Rsb_DecRecordCex.exit120, label %.lr.ph.i113, !llvm.loop !0

Rsb_DecRecordCex.exit120:                         ; preds = %bb.v, %Abc_TtFindLastZero.exit
  %.not43 = icmp eq ptr %6, null
  br i1 %.not43, label %bb.ap, label %bb.w

bb.w:                                             ; preds = %Rsb_DecRecordCex.exit120
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 12 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !20 ; 7 uses
  %i.gj = load i32, ptr %6, align 8, !tbaa !22
  %i.gk = icmp eq i32 %i.gi, %i.gj
  br i1 %i.gk, label %bb.x, label %Vec_IntPush.exit

bb.x:                                             ; preds = %bb.w
  %i.gl = icmp slt i32 %i.gi, 16
  br i1 %i.gl, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.gp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.aa, %bb.z
  %i.gq = phi ptr [ %i.go, %bb.z ], [ %i.gp, %bb.aa ]
  store ptr %i.gq, ptr %i.gm, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.gr = icmp samesign ult i32 %i.gi, 1073741823
  %i.gs = shl nuw nsw i32 %i.gi, 1
  %spec.select.i121 = select i1 %i.gr, i32 %i.gs, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.gi, %spec.select.i121
  br i1 %.not.i9.i, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.gu, null
  %i.gv = zext nneg i32 %spec.select.i121 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gx = tail call ptr @realloc(ptr noundef nonnull %i.gu, i64 noundef %i.gw) #19
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gy = tail call noalias ptr @malloc(i64 noundef %i.gw) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gz = phi ptr [ %i.gx, %bb.ad ], [ %i.gy, %bb.ae ]
end_hunk_0
