Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/flow_dissector?download=true
inline.NumInlined: 230
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__skb_flow_dissect:bb.a
  %i.qm = sub i32 %.0611, %.10622
  %.not.i.i444 = icmp slt i32 %i.qm, 4
  br i1 %.not.i.i444, label %bb.ed, label %__skb_header_pointer.exit.i445, !prof !11

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.ad, label %__skb_flow_dissect_gre.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qn = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %.10622, ptr noundef nonnull %14, i32 noundef 4) #13
  %i.qo = icmp slt i32 %i.qn, 0
  br i1 %i.qo, label %__skb_flow_dissect_gre.exit, label %__skb_header_pointer.exit.thread114.i, !prof !11

__skb_header_pointer.exit.i445:                   ; preds = %bb.ec
  %i.qp = sext i32 %.10622 to i64
  %i.qq = getelementptr i8, ptr %.0268, i64 %i.qp ; 2 uses
  %.not.i446 = icmp eq ptr %i.qq, null
  br i1 %.not.i446, label %__skb_flow_dissect_gre.exit, label %__skb_header_pointer.exit.thread114.i

__skb_header_pointer.exit.thread114.i:            ; preds = %__skb_header_pointer.exit.i445, %bb.ee
  %.0.i117.i = phi ptr [ %i.qq, %__skb_header_pointer.exit.i445 ], [ %14, %bb.ee ] ; 5 uses
  %i.qr = load i16, ptr %.0.i117.i, align 1       ; 7 uses
  %i.qs = and i16 %i.qr, 64
  %.not80.i = icmp eq i16 %i.qs, 0
  br i1 %.not80.i, label %bb.ef, label %__skb_flow_dissect_gre.exit

bb.ef:                                            ; preds = %__skb_header_pointer.exit.thread114.i
  %i.qt = lshr i16 %i.qr, 8
  %i.qu = and i16 %i.qt, 7                        ; 2 uses
  %i.qv = icmp samesign ugt i16 %i.qu, 1
  br i1 %i.qv, label %__skb_flow_dissect_gre.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qw = getelementptr i8, ptr %.0.i117.i, i64 2
  %i.qx = load i16, ptr %i.qw, align 1            ; 7 uses
  %.not81.i = icmp eq i16 %i.qu, 0                ; 3 uses
  br i1 %.not81.i, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qy = icmp eq i16 %i.qx, 2952
  br i1 %i.qy, label %bb.ei, label %__skb_flow_dissect_gre.exit

bb.ei:                                            ; preds = %bb.eh
  %i.qz = and i16 %i.qr, 32
  %.not82.i = icmp eq i16 %i.qz, 0
  br i1 %.not82.i, label %__skb_flow_dissect_gre.exit, label %.thread.i447

.thread.i447:                                     ; preds = %bb.ei
  %i.ra = and i16 %i.qr, 128
  %.not83150.i = icmp eq i16 %i.ra, 0
  %spec.select151.i = select i1 %.not83150.i, i32 4, i32 8
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eg
  %.pre142.i = and i16 %i.qr, 32
  %i.rb = icmp eq i16 %.pre142.i, 0
  %i.rc = and i16 %i.qr, 128
  %.not83.i = icmp eq i16 %i.rc, 0
  %spec.select.i451 = select i1 %.not83.i, i32 4, i32 8 ; 2 uses
  br i1 %i.rb, label %.thread153.i, label %bb.ek

.thread153.i:                                     ; preds = %bb.ej
  %i.rd = lshr i16 %i.qr, 2
  %i.re = and i16 %i.rd, 4
  %i.rf = zext nneg i16 %i.re to i32
  %spec.select91155.i = add nuw nsw i32 %spec.select.i451, %i.rf
  br label %bb.ep

bb.ek:                                            ; preds = %bb.ej, %.thread.i447
  %spec.select152.i = phi i32 [ %spec.select151.i, %.thread.i447 ], [ %spec.select.i451, %bb.ej ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !annotation !13
  %i.rg = add i32 %spec.select152.i, %.10622      ; 3 uses
  %i.rh = sub i32 %.0611, %i.rg
  %.not.i97.i = icmp slt i32 %i.rh, 4
  br i1 %.not.i97.i, label %bb.el, label %__skb_header_pointer.exit101.i, !prof !11

bb.el:                                            ; preds = %bb.ek
  br i1 %i.ad, label %.critedge.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ri = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.rg, ptr noundef nonnull %i.b, i32 noundef 4) #13
  %i.rj = icmp slt i32 %i.ri, 0
  br i1 %i.rj, label %.critedge.i, label %__skb_header_pointer.exit101.thread121.i, !prof !11

__skb_header_pointer.exit101.i:                   ; preds = %bb.ek
  %i.rk = sext i32 %i.rg to i64
  %i.rl = getelementptr i8, ptr %.0268, i64 %i.rk ; 2 uses
  %.not85.not.i = icmp eq ptr %i.rl, null
  br i1 %.not85.not.i, label %.critedge.i, label %__skb_header_pointer.exit101.thread121.i

__skb_header_pointer.exit101.thread121.i:         ; preds = %__skb_header_pointer.exit101.i, %bb.em
  %.0.i98124.i = phi ptr [ %i.rl, %__skb_header_pointer.exit101.i ], [ %i.b, %bb.em ]
  %.val.i448 = load i64, ptr %2, align 8
  %i.rm = and i64 %.val.i448, 4096
  %.not139.i = icmp eq i64 %i.rm, 0
  br i1 %.not139.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %__skb_header_pointer.exit101.thread121.i
  %i.rn = load i16, ptr %i.fu, align 8
  %i.ro = zext i16 %i.rn to i64
  %i.rp = getelementptr i8, ptr %3, i64 %i.ro     ; 2 uses
  %i.rq = load i32, ptr %.0.i98124.i, align 4     ; 2 uses
  br i1 %.not81.i, label %.thread157.i, label %.thread161.i

.thread157.i:                                     ; preds = %bb.en
  store i32 %i.rq, ptr %i.rp, align 4
  %narrow158.i = add nuw nsw i32 %spec.select152.i, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.pre141159.i = load i16, ptr %.0.i117.i, align 1
  %i.rr = lshr i16 %.pre141159.i, 2
  %i.rs = and i16 %i.rr, 4
  %i.rt = zext nneg i16 %i.rs to i32
  %spec.select91160.i = add nuw nsw i32 %narrow158.i, %i.rt
  br label %bb.ep

.thread161.i:                                     ; preds = %bb.en
  %i.ru = and i32 %i.rq, -65536
  store i32 %i.ru, ptr %i.rp, align 4
  %narrow162.i = add nuw nsw i32 %spec.select152.i, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.pre141163.i = load i16, ptr %.0.i117.i, align 1 ; 2 uses
  %i.rv = lshr i16 %.pre141163.i, 2
  %i.rw = and i16 %i.rv, 4
  %i.rx = zext nneg i16 %i.rw to i32
  %spec.select91164.i = add nuw nsw i32 %narrow162.i, %i.rx
  br label %bb.et

bb.eo:                                            ; preds = %__skb_header_pointer.exit101.thread121.i
  %narrow.i = add nuw nsw i32 %spec.select152.i, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.pre141.i = load i16, ptr %.0.i117.i, align 1  ; 2 uses
  %i.ry = lshr i16 %.pre141.i, 2
  %i.rz = and i16 %i.ry, 4
  %i.sa = zext nneg i16 %i.rz to i32
  %spec.select91.i = add nuw nsw i32 %narrow.i, %i.sa ; 2 uses
  br i1 %.not81.i, label %bb.ep, label %bb.et

bb.ep:                                            ; preds = %bb.eo, %.thread157.i, %.thread153.i
  %spec.select91156.i = phi i32 [ %spec.select91155.i, %.thread153.i ], [ %spec.select91.i, %bb.eo ], [ %spec.select91160.i, %.thread157.i ] ; 3 uses
  %i.sb = icmp eq i16 %i.qx, 22629
  br i1 %i.sb, label %bb.eq, label %bb.ey

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %15, i8 0, i64 14, i1 false), !annotation !13
  %i.sc = add i32 %spec.select91156.i, %.10622    ; 3 uses
  %i.sd = sub i32 %.0611, %i.sc
  %.not.i102.i = icmp slt i32 %i.sd, 14
  br i1 %.not.i102.i, label %bb.er, label %__skb_header_pointer.exit106.i, !prof !11

bb.er:                                            ; preds = %bb.eq
  br i1 %i.ad, label %.critedge96.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.se = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.sc, ptr noundef nonnull %15, i32 noundef 14) #13
  %i.sf = icmp slt i32 %i.se, 0
  br i1 %i.sf, label %.critedge96.i, label %__skb_header_pointer.exit106.thread128.i, !prof !11

__skb_header_pointer.exit106.i:                   ; preds = %bb.eq
  %i.sg = sext i32 %i.sc to i64
  %i.sh = getelementptr i8, ptr %.0268, i64 %i.sg ; 2 uses
  %.not89.not.i = icmp eq ptr %i.sh, null
  br i1 %.not89.not.i, label %.critedge96.i, label %__skb_header_pointer.exit106.thread128.i

__skb_header_pointer.exit106.thread128.i:         ; preds = %__skb_header_pointer.exit106.i, %bb.es
  %.0.i103131.i = phi ptr [ %i.sh, %__skb_header_pointer.exit106.i ], [ %15, %bb.es ]
  %i.si = getelementptr i8, ptr %.0.i103131.i, i64 12
  %i.sj = load i16, ptr %i.si, align 1
  %i.sk = add nuw nsw i32 %spec.select91156.i, 14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %bb.ey

bb.et:                                            ; preds = %bb.eo, %.thread161.i
  %spec.select91166.i = phi i32 [ %spec.select91164.i, %.thread161.i ], [ %spec.select91.i, %bb.eo ] ; 2 uses
  %.pre141165.i = phi i16 [ %.pre141163.i, %.thread161.i ], [ %.pre141.i, %bb.eo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !annotation !13
  %i.sl = add nuw nsw i32 %spec.select91166.i, 4
  %.not87140.i = icmp slt i16 %.pre141165.i, 0
  %spec.select92.i = select i1 %.not87140.i, i32 %i.sl, i32 %spec.select91166.i ; 2 uses
  %i.sm = add i32 %spec.select92.i, %.10622       ; 3 uses
  %i.sn = sub i32 %.0611, %i.sm
  %.not.i107.i = icmp slt i32 %i.sn, 4
  br i1 %.not.i107.i, label %bb.eu, label %__skb_header_pointer.exit111.i, !prof !11

bb.eu:                                            ; preds = %bb.et
  br i1 %i.ad, label %.critedge94.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.so = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.sm, ptr noundef nonnull %i.c, i32 noundef 4) #13
  %i.sp = icmp slt i32 %i.so, 0
  br i1 %i.sp, label %.critedge94.i, label %__skb_header_pointer.exit111.thread135.i, !prof !11

__skb_header_pointer.exit111.i:                   ; preds = %bb.et
  %i.sq = sext i32 %i.sm to i64
  %i.sr = getelementptr i8, ptr %.0268, i64 %i.sq ; 2 uses
  %.not88.not.i = icmp eq ptr %i.sr, null
  br i1 %.not88.not.i, label %.critedge94.i, label %__skb_header_pointer.exit111.thread135.i

__skb_header_pointer.exit111.thread135.i:         ; preds = %__skb_header_pointer.exit111.i, %bb.ev
  %.0.i108138.i = phi ptr [ %i.sr, %__skb_header_pointer.exit111.i ], [ %i.c, %bb.ev ] ; 2 uses
  %31 = getelementptr i8, ptr %.0.i108138.i, i64 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  %34 = shl nuw i16 %33, 8
  %i.ss = getelementptr i8, ptr %.0.i108138.i, i64 3
  %35 = load i8, ptr %i.ss, align 1
  %36 = zext i8 %35 to i16
  %trunc.i = or disjoint i16 %34, %36
  switch i16 %trunc.i, label %bb.ex [
    i16 33, label %.sink.split.i
    i16 87, label %bb.ew
  ]

bb.ew:                                            ; preds = %__skb_header_pointer.exit111.thread135.i
  br label %bb.ex

.sink.split.i:                                    ; preds = %__skb_header_pointer.exit111.thread135.i
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %.sink.split.i, %__skb_header_pointer.exit111.thread135.i
  %.13639 = phi i16 [ %i.qx, %__skb_header_pointer.exit111.thread135.i ], [ -8826, %bb.ew ], [ 8, %.sink.split.i ]
  %i.st = add nuw nsw i32 %spec.select92.i, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %__skb_header_pointer.exit106.thread128.i, %bb.ep
  %.14640 = phi i16 [ %i.sj, %__skb_header_pointer.exit106.thread128.i ], [ %i.qx, %bb.ep ], [ %.13639, %bb.ex ]
  %.7.i = phi i32 [ %i.sk, %__skb_header_pointer.exit106.thread128.i ], [ %spec.select91156.i, %bb.ep ], [ %i.st, %bb.ex ]
  %i.su = add i32 %.7.i, %.10622
  %i.sv = load i32, ptr %i.es, align 4
  %i.sw = or i32 %i.sv, 64
  store i32 %i.sw, ptr %i.es, align 4
  br label %__skb_flow_dissect_gre.exit

.critedge.i:                                      ; preds = %__skb_header_pointer.exit101.i, %bb.em, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %__skb_flow_dissect_gre.exit

.critedge94.i:                                    ; preds = %__skb_header_pointer.exit111.i, %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %__skb_flow_dissect_gre.exit

.critedge96.i:                                    ; preds = %__skb_header_pointer.exit106.i, %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %__skb_flow_dissect_gre.exit

__skb_flow_dissect_gre.exit:                      ; preds = %bb.ed, %bb.ee, %__skb_header_pointer.exit.i445, %__skb_header_pointer.exit.thread114.i, %bb.ef, %bb.eh, %bb.ei, %bb.ey, %.critedge.i, %.critedge94.i, %.critedge96.i
  %.15641 = phi i16 [ %.8634, %bb.ed ], [ %.8634, %bb.ee ], [ %.8634, %bb.ef ], [ 22629, %.critedge96.i ], [ %.14640, %bb.ey ], [ %i.qx, %.critedge.i ], [ %i.qx, %.critedge94.i ], [ 2952, %bb.ei ], [ %i.qx, %bb.eh ], [ %.8634, %__skb_header_pointer.exit.thread114.i ], [ %.8634, %__skb_header_pointer.exit.i445 ]
  %.17 = phi i32 [ %.10622, %bb.ed ], [ %.10622, %bb.ee ], [ %.10622, %bb.ef ], [ %.10622, %.critedge96.i ], [ %i.su, %bb.ey ], [ %.10622, %.critedge.i ], [ %.10622, %.critedge94.i ], [ %.10622, %bb.ei ], [ %.10622, %bb.eh ], [ %.10622, %__skb_header_pointer.exit.thread114.i ], [ %.10622, %__skb_header_pointer.exit.i445 ]
  %.474.i = phi i32 [ 1, %bb.ed ], [ 1, %bb.ee ], [ 0, %bb.ef ], [ 1, %.critedge96.i ], [ %..i, %bb.ey ], [ 1, %.critedge.i ], [ 1, %.critedge94.i ], [ 0, %bb.ei ], [ 0, %bb.eh ], [ 0, %__skb_header_pointer.exit.thread114.i ], [ 1, %__skb_header_pointer.exit.i445 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %__skb_flow_dissect_icmp.exit

bb.ez:                                            ; preds = %bb.ea, %bb.ea, %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i16 0, ptr %i.e, align 2, !annotation !13
  %.not355 = icmp eq i16 %.8634, -8826
  br i1 %.not355, label %bb.fa, label %__skb_header_pointer.exit457.thread

bb.fa:                                            ; preds = %bb.ez
  %i.sx = sub i32 %.0611, %.10622
  %.not.i453 = icmp slt i32 %i.sx, 2
  br i1 %.not.i453, label %bb.fb, label %__skb_header_pointer.exit457, !prof !11

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.ad, label %__skb_header_pointer.exit457.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sy = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %.10622, ptr noundef nonnull %i.e, i32 noundef 2) #13
  %i.sz = icmp slt i32 %i.sy, 0
  br i1 %i.sz, label %__skb_header_pointer.exit457.thread, label %__skb_header_pointer.exit457.thread720, !prof !11

__skb_header_pointer.exit457:                     ; preds = %bb.fa
  %i.ta = sext i32 %.10622 to i64
  %i.tb = getelementptr i8, ptr %.0268, i64 %i.ta ; 2 uses
  %.not356 = icmp eq ptr %i.tb, null
  br i1 %.not356, label %__skb_header_pointer.exit457.thread, label %__skb_header_pointer.exit457.thread720

__skb_header_pointer.exit457.thread720:           ; preds = %bb.fc, %__skb_header_pointer.exit457
  %.0.i454723 = phi ptr [ %i.tb, %__skb_header_pointer.exit457 ], [ %i.e, %bb.fc ] ; 2 uses
  %i.tc = load i8, ptr %.0.i454723, align 1
  %i.td = getelementptr i8, ptr %.0.i454723, i64 1
  %i.te = load i8, ptr %i.td, align 1
  %i.tf = zext i8 %i.te to i32
  %i.tg = shl nuw nsw i32 %i.tf, 3
  %i.th = add i32 %.10622, 8
  %i.ti = add i32 %i.th, %i.tg
  br label %__skb_header_pointer.exit457.thread

__skb_header_pointer.exit457.thread:              ; preds = %bb.fc, %bb.fb, %__skb_header_pointer.exit457, %bb.ez, %__skb_header_pointer.exit457.thread720
  %.11623 = phi i32 [ %.10622, %__skb_header_pointer.exit457 ], [ %i.ti, %__skb_header_pointer.exit457.thread720 ], [ %.10622, %bb.ez ], [ %.10622, %bb.fb ], [ %.10622, %bb.fc ]
  %.5291 = phi i8 [ %.4290, %__skb_header_pointer.exit457 ], [ %i.tc, %__skb_header_pointer.exit457.thread720 ], [ %.4290, %bb.ez ], [ %.4290, %bb.fb ], [ %.4290, %bb.fc ]
  %.11 = phi i32 [ 1, %__skb_header_pointer.exit457 ], [ 3, %__skb_header_pointer.exit457.thread720 ], [ 4, %bb.ez ], [ 1, %bb.fb ], [ 1, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %__skb_flow_dissect_icmp.exit

bb.fd:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #12
  store i64 0, ptr %30, align 8, !annotation !13
  %.not351 = icmp eq i16 %.8634, -8826
  br i1 %.not351, label %bb.fe, label %__skb_header_pointer.exit462.thread

bb.fe:                                            ; preds = %bb.fd
  %i.tj = sub i32 %.0611, %.10622
  %.not.i458 = icmp slt i32 %i.tj, 8
  br i1 %.not.i458, label %bb.ff, label %__skb_header_pointer.exit462, !prof !11

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.ad, label %__skb_header_pointer.exit462.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.tk = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %.10622, ptr noundef nonnull %30, i32 noundef 8) #13
  %i.tl = icmp slt i32 %i.tk, 0
  br i1 %i.tl, label %__skb_header_pointer.exit462.thread, label %__skb_header_pointer.exit462.thread727, !prof !11

__skb_header_pointer.exit462:                     ; preds = %bb.fe
  %i.tm = sext i32 %.10622 to i64
  %i.tn = getelementptr i8, ptr %.0268, i64 %i.tm ; 2 uses
  %.not352 = icmp eq ptr %i.tn, null
  br i1 %.not352, label %__skb_header_pointer.exit462.thread, label %__skb_header_pointer.exit462.thread727

__skb_header_pointer.exit462.thread727:           ; preds = %bb.fg, %__skb_header_pointer.exit462
  %.0.i459730 = phi ptr [ %i.tn, %__skb_header_pointer.exit462 ], [ %30, %bb.fg ] ; 2 uses
  %i.to = load i32, ptr %i.es, align 4            ; 2 uses
  %i.tp = or i32 %i.to, 1
  store i32 %i.tp, ptr %i.es, align 4
  %i.tq = add i32 %.10622, 8                      ; 2 uses
  %i.tr = load i8, ptr %.0.i459730, align 4       ; 2 uses
  %i.ts = getelementptr i8, ptr %.0.i459730, i64 2
  %i.tt = load i16, ptr %i.ts, align 2
  %i.tu = and i16 %i.tt, -1793
  %.not353 = icmp eq i16 %i.tu, 0
  br i1 %.not353, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %__skb_header_pointer.exit462.thread727
  %i.tv = or i32 %i.to, 3
  store i32 %i.tv, ptr %i.es, align 4
  br i1 %.not346, label %bb.fi, label %__skb_header_pointer.exit462.thread

bb.fi:                                            ; preds = %bb.fh, %__skb_header_pointer.exit462.thread727
  br label %__skb_header_pointer.exit462.thread

__skb_header_pointer.exit462.thread:              ; preds = %bb.fg, %bb.ff, %bb.fh, %__skb_header_pointer.exit462, %bb.fd, %bb.fi
  %.12624 = phi i32 [ %.10622, %__skb_header_pointer.exit462 ], [ %i.tq, %bb.fi ], [ %i.tq, %bb.fh ], [ %.10622, %bb.fd ], [ %.10622, %bb.ff ], [ %.10622, %bb.fg ]
  %.6292 = phi i8 [ 44, %__skb_header_pointer.exit462 ], [ %i.tr, %bb.fi ], [ %i.tr, %bb.fh ], [ 44, %bb.fd ], [ 44, %bb.ff ], [ 44, %bb.fg ]
  %.12 = phi i32 [ 1, %__skb_header_pointer.exit462 ], [ 0, %bb.fi ], [ 3, %bb.fh ], [ 4, %bb.fd ], [ 1, %bb.ff ], [ 1, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #12
  br label %__skb_flow_dissect_icmp.exit

bb.fj:                                            ; preds = %bb.ea
  br i1 %.not347, label %bb.fk, label %__skb_flow_dissect_icmp.exit

bb.fk:                                            ; preds = %bb.fj
  %i.tw = load i32, ptr %i.es, align 4
  %i.tx = or i32 %i.tw, 64
  store i32 %i.tx, ptr %i.es, align 4
  br label %__skb_flow_dissect_icmp.exit

bb.fl:                                            ; preds = %bb.ea
  br i1 %.not347, label %bb.fm, label %__skb_flow_dissect_icmp.exit

bb.fm:                                            ; preds = %bb.fl
  %i.ty = load i32, ptr %i.es, align 4
  %i.tz = or i32 %i.ty, 64
  store i32 %i.tz, ptr %i.es, align 4
  br label %__skb_flow_dissect_icmp.exit

bb.fn:                                            ; preds = %bb.ea
  br label %__skb_flow_dissect_icmp.exit

bb.fo:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %.val.i463 = load i64, ptr %2, align 8
  %i.ua = and i64 %.val.i463, 1048576
  %.not17.i = icmp eq i64 %i.ua, 0
  br i1 %.not17.i, label %__skb_flow_dissect_tcp.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %13, i8 0, i64 20, i1 false), !annotation !13
  %i.ub = sub i32 %.0611, %.10622
  %.not.i.i464 = icmp slt i32 %i.ub, 20
  br i1 %.not.i.i464, label %bb.fq, label %__skb_header_pointer.exit.i465, !prof !11

bb.fq:                                            ; preds = %bb.fp
  br i1 %i.ad, label %__skb_flow_dissect_tcp.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.uc = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %.10622, ptr noundef nonnull %13, i32 noundef 20) #13
  %i.ud = icmp slt i32 %i.uc, 0
  br i1 %i.ud, label %__skb_flow_dissect_tcp.exit, label %__skb_header_pointer.exit.thread13.i, !prof !11

__skb_header_pointer.exit.i465:                   ; preds = %bb.fp
  %i.ue = sext i32 %.10622 to i64
  %i.uf = getelementptr i8, ptr %.0268, i64 %i.ue ; 2 uses
  %.not.i466 = icmp eq ptr %i.uf, null
  br i1 %.not.i466, label %__skb_flow_dissect_tcp.exit, label %__skb_header_pointer.exit.thread13.i

__skb_header_pointer.exit.thread13.i:             ; preds = %__skb_header_pointer.exit.i465, %bb.fr
  %.0.i16.i = phi ptr [ %i.uf, %__skb_header_pointer.exit.i465 ], [ %13, %bb.fr ]
  %i.ug = getelementptr i8, ptr %.0.i16.i, i64 12
  %.val10.i = load i16, ptr %i.ug, align 4        ; 2 uses
  %i.uh = and i16 %.val10.i, 240
  %i.ui = icmp samesign ult i16 %i.uh, 80
  br i1 %i.ui, label %__skb_flow_dissect_tcp.exit, label %bb.fs, !prof !11

bb.fs:                                            ; preds = %__skb_header_pointer.exit.thread13.i
  %i.uj = load i16, ptr %i.fp, align 8
  %i.uk = zext i16 %i.uj to i64
  %i.ul = getelementptr i8, ptr %3, i64 %i.uk
end_hunk_0
