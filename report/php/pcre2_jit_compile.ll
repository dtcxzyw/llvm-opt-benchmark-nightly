Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@sljit_emit_op2:bb.a
  %i.hi = tail call fastcc i32 @emit_shift(ptr noundef nonnull %0, i8 noundef zeroext 8, i32 noundef range(i32 1, 143) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i32 noundef %4, i64 noundef %5, i32 noundef range(i32 1, 143) %6, i64 noundef %7)
  br label %emit_mul.exit

emit_mul.exit:                                    ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.ct, %bb.cs, %bb.cr, %emit_mov.exit.i, %emit_mov.exit.thread.i, %bb.cc, %emit_groupf.exit200.i, %bb.ca, %emit_groupf.exit197.i, %bb.bx, %bb.bv, %bb.br, %bb.bp, %bb.bm, %bb.bh, %emit_groupf.exit188.i, %bb.az, %bb.au, %bb.aq, %bb.al, %bb.ai, %bb.ad, %bb.aa, %emit_groupf.exit177.i, %emit_groupf.exit.i, %bb.b, %bb.a, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.cf, %bb.ce, %bb.s, %bb.r, %bb.q, %bb.p, %bb.m, %bb.i, %bb.g, %bb.f, %bb.e
  %.0162 = phi i32 [ %i.hb, %bb.cs ], [ %i.a, %bb.a ], [ %i.h, %bb.f ], [ %i.g, %bb.e ], [ %i.i, %bb.g ], [ %i.l, %bb.i ], [ %i.w, %bb.r ], [ %i.q, %bb.m ], [ %i.u, %bb.p ], [ %i.v, %bb.q ], [ %i.x, %bb.s ], [ 0, %bb.b ], [ %i.gh, %bb.ce ], [ %i.gi, %bb.cf ], [ %i.gq, %bb.cl ], [ %i.gm, %bb.ci ], [ %i.gp, %bb.ck ], [ %i.gs, %bb.cm ], [ %i.gu, %bb.cn ], [ %i.gw, %bb.co ], [ 0, %bb.cc ], [ 0, %emit_mov.exit.thread.i ], [ %i.ge, %emit_groupf.exit200.i ], [ %i.fw, %emit_groupf.exit197.i ], [ %i.ae, %emit_groupf.exit.i ], [ %i.an, %bb.aa ], [ %i.aq, %bb.ad ], [ 2, %bb.ai ], [ %i.bn, %bb.al ], [ 2, %bb.aq ], [ %i.cj, %bb.au ], [ 2, %bb.az ], [ 2, %emit_groupf.exit188.i ], [ %i.el, %bb.bh ], [ 2, %bb.bm ], [ %i.fi, %bb.bp ], [ %i.fk, %bb.br ], [ %i.fr, %bb.bv ], [ %i.ft, %bb.bx ], [ %i.aj, %emit_groupf.exit177.i ], [ %i.gb, %bb.ca ], [ %i.gg, %emit_mov.exit.i ], [ %i.ha, %bb.cr ], [ %i.hc, %bb.ct ], [ %i.hg, %bb.cw ], [ %i.hi, %bb.cy ], [ %i.hh, %bb.cx ]
  ret i32 %.0162
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sljit_emit_label(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !129
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.o, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !495  ; 3 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !136
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.m = add i64 %i.l, 24                         ; 2 uses
  %i.n = icmp ult i64 %i.m, 4081
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i64 %i.m, ptr %i.k, align 8, !tbaa !134
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123  ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %.val18.i = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.t = tail call ptr %.val.i(i64 noundef 4096, ptr noundef %.val18.i) #20, !inline_history !15 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %ensure_abuf.exit, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !125
  store ptr %i.u, ptr %i.t, align 8, !tbaa !135
  store ptr %i.t, ptr %i.i, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 24, ptr %i.v, align 8, !tbaa !134
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.h

ensure_abuf.exit:                                 ; preds = %bb.f
  store i32 2, ptr %0, align 8, !tbaa !129
  br label %bb.o

bb.h:                                             ; preds = %bb.e, %bb.g
  %.0.i.ph = phi ptr [ %i.w, %bb.g ], [ %i.p, %bb.e ] ; 7 uses
  store ptr null, ptr %.0.i.ph, align 8, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !496  ; 2 uses
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !496
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !192
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !495 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.ph, ptr %i.ae, align 8, !tbaa !193
  br label %set_label.exit

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.ph, ptr %i.af, align 8, !tbaa !190
  br label %set_label.exit

set_label.exit:                                   ; preds = %bb.i, %bb.j
  store ptr %.0.i.ph, ptr %i.b, align 8, !tbaa !495
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !134 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  %i.al = icmp ult i64 %i.ak, 4081
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %set_label.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !134
  br label %bb.n

bb.l:                                             ; preds = %set_label.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !123 ; 2 uses
  %.val.i19 = load ptr, ptr %i.ap, align 8, !tbaa !100
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %.val18.i20 = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.ar = tail call ptr %.val.i19(i64 noundef 4096, ptr noundef %.val18.i20) #20, !inline_history !16 ; 5 uses
  %.not.i21 = icmp eq ptr %i.ar, null
  br i1 %.not.i21, label %ensure_buf.exit, label %bb.m, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !124
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !135
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 1, ptr %i.at, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %bb.n

ensure_buf.exit:                                  ; preds = %bb.l
  store i32 2, ptr %0, align 8, !tbaa !129
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.m
  %.0.i22.ph = phi ptr [ %i.au, %bb.m ], [ %i.an, %bb.k ]
  store i8 -1, ptr %.0.i22.ph, align 1, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %ensure_buf.exit, %ensure_abuf.exit, %bb.c, %bb.a, %bb.n
  %.0 = phi ptr [ %.0.i.ph, %bb.n ], [ null, %bb.a ], [ %i.c, %bb.c ], [ null, %ensure_abuf.exit ], [ null, %ensure_buf.exit ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @fast_forward_first_n_chars(ptr noundef nonnull %0) unnamed_addr #11 {
bb.a:
  %1 = alloca [12 x %struct.fast_forward_char_data], align 16 ; 40 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !128    ; 153 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %1, align 16, !tbaa !216
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 0, ptr %i.d, align 1, !tbaa !216
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 0, ptr %i.f, align 2, !tbaa !216
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 0, ptr %i.g, align 1, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !216
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !217
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.j, align 4, !tbaa !216
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !217
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 0, ptr %i.l, align 1, !tbaa !216
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 0, ptr %i.m, align 4, !tbaa !217
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 0, ptr %i.n, align 2, !tbaa !216
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 43
  store i8 0, ptr %i.o, align 1, !tbaa !217
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.p, align 1, !tbaa !216
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 0, ptr %i.q, align 2, !tbaa !217
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.r, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.s, align 1, !tbaa !217
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 0, ptr %i.t, align 1, !tbaa !216
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.u, align 16, !tbaa !217
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 70
  store i8 0, ptr %i.v, align 2, !tbaa !216
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 71
  store i8 0, ptr %i.w, align 1, !tbaa !217
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 77
  store i8 0, ptr %i.x, align 1, !tbaa !216
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i8 0, ptr %i.y, align 2, !tbaa !217
  store i32 10000, ptr %i.a, align 4, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77
  %i.ab = call fastcc i32 @scan_prefix(ptr noundef %0, ptr noundef %i.aa, ptr noundef %1, i32 noundef 12, ptr noundef %i.a) ; 5 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %sljit_emit_op1.exit319, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 6 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv ; 10 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !216 ; 2 uses
  switch i8 %i.ae, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader
  store i8 -1, ptr %i.ad, align 1, !tbaa !216
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !217
  br label %bb.h

bb.c:                                             ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !217
  %i.ai = icmp eq i8 %i.ah, 1
  %i.aj = select i1 %i.ai, i8 7, i8 5
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !217
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  store i8 %i.al, ptr %i.am, align 1, !tbaa !97
  br label %bb.h

bb.d:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !97
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ar)
  %i.at = icmp samesign ugt i8 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !217
  %i.aw = icmp eq i8 %i.av, 2                     ; 2 uses
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = select i1 %i.aw, i8 6, i8 4
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !217
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ay = select i1 %i.aw, i8 3, i8 2
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !217
  br label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.az = icmp ne i8 %i.ae, -1
  %i.ba = zext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !217
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %.preheader, !llvm.loop !497

bb.i:                                             ; preds = %bb.h
  %i.bc = call fastcc i32 @sljit_has_cpu_feature(i32 noundef 12)
  %.not = icmp ne i32 %i.bc, 0
  %i.bd = icmp ne i32 %i.ab, 1
  %or.cond639 = and i1 %i.bd, %.not
  br i1 %or.cond639, label %.lr.ph86.i, label %.lr.ph.preheader

.lr.ph86.i:                                       ; preds = %bb.i, %.loopexit.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %.loopexit.i ], [ %wide.trip.count, %bb.i ] ; 3 uses
  %.084.i = phi i32 [ %.3.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %.05183.i = phi i32 [ %.354.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %.05582.i = phi i32 [ %.358.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv91.i to i32
  %i.bf = call i32 @llvm.usub.sat.i32(i32 %i.be, i32 16) ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, -1 ; 5 uses
  %i.bh = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv.next92.i ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !217 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = icmp ugt i8 %i.bj, 2
  br i1 %i.bl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph86.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !97  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !97  ; 2 uses
  %i.bq = sext i32 %i.bf to i64
  %i.br = icmp sgt i64 %indvars.iv.next92.i, %i.bq
  br i1 %i.br, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bs = trunc nuw nsw i64 %indvars.iv.next92.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bg, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %.177.i = phi i32 [ %.084.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.o ] ; 5 uses
  %.15276.i = phi i32 [ %.05183.i, %.lr.ph.preheader.i ], [ %.253.i, %bb.o ] ; 4 uses
  %.15675.i = phi i32 [ %.05582.i, %.lr.ph.preheader.i ], [ %.257.i, %bb.o ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !217 ; 2 uses
  %i.bw = icmp ugt i8 %i.bv, 2
  br i1 %i.bw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  %i.bx = zext i8 %i.bv to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bk            ; 2 uses
  %.not.i = icmp ult i32 %i.by, %.177.i
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !97  ; 2 uses
  %.not69.i = icmp eq i8 %i.bn, %i.ca
  br i1 %.not69.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !97  ; 2 uses
  %.not70.i = icmp eq i8 %i.bn, %i.cc
  %.not71.i = icmp eq i8 %i.bp, %i.ca
  %.not72.i = icmp eq i8 %i.bp, %i.cc
  %i.cd = or i1 %.not71.i, %.not72.i
  %or.cond73.i = select i1 %.not70.i, i1 true, i1 %i.cd
  br i1 %or.cond73.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %.lr.ph.i
  %.257.i = phi i32 [ %i.bs, %bb.n ], [ %.15675.i, %bb.k ], [ %.15675.i, %.lr.ph.i ], [ %.15675.i, %bb.m ], [ %.15675.i, %bb.l ] ; 2 uses
  %.253.i = phi i32 [ %i.ce, %bb.n ], [ %.15276.i, %bb.k ], [ %.15276.i, %.lr.ph.i ], [ %.15276.i, %bb.m ], [ %.15276.i, %bb.l ] ; 2 uses
  %.2.i = phi i32 [ %i.by, %bb.n ], [ %.177.i, %bb.k ], [ %.177.i, %.lr.ph.i ], [ %.177.i, %bb.m ], [ %.177.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next92.i
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !498

.loopexit.i:                                      ; preds = %bb.o, %bb.j, %.lr.ph86.i
  %.358.i = phi i32 [ %.05582.i, %.lr.ph86.i ], [ %.05582.i, %bb.j ], [ %.257.i, %bb.o ] ; 3 uses
  %.354.i = phi i32 [ %.05183.i, %.lr.ph86.i ], [ %.05183.i, %bb.j ], [ %.253.i, %bb.o ] ; 3 uses
  %.3.i = phi i32 [ %.084.i, %.lr.ph86.i ], [ %.084.i, %bb.j ], [ %.2.i, %bb.o ] ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv91.i, 2
  br i1 %i.cg, label %.lr.ph86.i, label %._crit_edge.i, !llvm.loop !499

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.ch = icmp eq i32 %.3.i, 0
  br i1 %i.ch, label %.lr.ph.preheader, label %check_fast_forward_char_pair_simd.exit

check_fast_forward_char_pair_simd.exit:           ; preds = %._crit_edge.i
  %i.ci = zext nneg i32 %.358.i to i64
  %i.cj = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !97
  %i.co = sext i32 %.354.i to i64
  %i.cp = getelementptr inbounds [7 x i8], ptr %1, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !97
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !97
  call fastcc void @fast_forward_char_pair_simd(ptr noundef nonnull %0, i32 noundef %.358.i, i8 noundef zeroext %i.cl, i8 noundef zeroext %i.cn, i32 noundef %.354.i, i8 noundef zeroext %i.cr, i8 noundef zeroext %i.ct)
  br label %sljit_emit_op1.exit319

.lr.ph.preheader:                                 ; preds = %bb.i, %._crit_edge.i
  %i.cu = zext nneg i32 %i.ab to i64
  %i.cv = add nuw i32 %i.ab, 1
  %wide.trip.count664 = zext i32 %i.cv to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %indvars.iv661 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next662, %bb.t ] ; 6 uses
  %.0648 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.t ]
  %.0153647 = phi i32 [ 3, %.lr.ph.preheader ], [ %.1154, %bb.t ] ; 4 uses
  %.0155646 = phi i32 [ -1, %.lr.ph.preheader ], [ %.1156, %bb.t ] ; 3 uses
  %.0157645 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1158, %bb.t ] ; 3 uses
  %.not175 = icmp ne i32 %.0648, 0                ; 2 uses
  br i1 %.not175, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %i.cw = trunc nuw nsw i64 %indvars.iv661 to i32
  %i.cx = sub nsw i32 %i.cw, %.0157645            ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, %.0153647
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = add nsw i64 %indvars.iv661, -1          ; 2 uses
  %i.da = getelementptr inbounds [7 x i8], ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !216
  %.not176 = icmp eq i8 %i.db, -1                 ; 2 uses
  %i.dc = trunc nsw i64 %i.cz to i32
  %spec.select = select i1 %.not176, i32 %.0155646, i32 %i.dc
  %spec.select179 = select i1 %.not176, i32 %.0153647, i32 %i.cx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph
  %.1156 = phi i32 [ %.0155646, %.lr.ph ], [ %spec.select, %bb.q ], [ %.0155646, %bb.p ] ; 6 uses
  %.1154 = phi i32 [ %.0153647, %.lr.ph ], [ %spec.select179, %bb.q ], [ %.0153647, %bb.p ] ; 3 uses
  %i.dd = icmp samesign ult i64 %indvars.iv661, %i.cu
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv661
  %i.df = load i8, ptr %i.de, align 1, !tbaa !216
  %.not177 = icmp eq i8 %i.df, -1                 ; 2 uses
  %i.dg = or i1 %.not175, %.not177
  %i.dh = trunc nuw nsw i64 %indvars.iv661 to i32
  %spec.select183 = select i1 %i.dg, i32 %.0157645, i32 %i.dh
  %not..not177 = xor i1 %.not177, true
  %spec.select184 = zext i1 %not..not177 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1158 = phi i32 [ %.0157645, %bb.r ], [ %spec.select183, %bb.s ]
  %.1 = phi i32 [ 0, %bb.r ], [ %spec.select184, %bb.s ]
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count664
  br i1 %exitcond665.not, label %._crit_edge, label %.lr.ph, !llvm.loop !500

._crit_edge:                                      ; preds = %bb.t
  %i.di = icmp sgt i32 %.1156, -1
  br i1 %i.di, label %bb.u, label %.lr.ph656.preheader

bb.u:                                             ; preds = %._crit_edge
  %i.dj = load ptr, ptr %0, align 8, !tbaa !128   ; 4 uses
  %.val13.i = load i32, ptr %i.dj, align 8, !tbaa !129
  %.not.i185 = icmp eq i32 %.val13.i, 0
  br i1 %.not.i185, label %bb.v, label %sljit_emit_op1.exit319, !prof !130

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !123 ; 2 uses
  %.val.i = load ptr, ptr %i.dl, align 8, !tbaa !100
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %.val12.i = load ptr, ptr %i.dm, align 8, !tbaa !101
  %i.dn = call ptr %.val.i(i64 noundef 264, ptr noundef %.val12.i) #20, !inline_history !501 ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.w, label %.lr.ph652.preheader, !prof !61

bb.w:                                             ; preds = %bb.v
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !129
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.x, label %sljit_emit_op1.exit319

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.dj, align 8, !tbaa !129
  br label %sljit_emit_op1.exit319

.lr.ph652.preheader:                              ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !47
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !78
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.du = trunc i32 %.1154 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.dt, i8 %i.du, i64 256, i1 false)
  %i.dv = zext nneg i32 %.1156 to i64
  %wide.trip.count669 = zext nneg i32 %.1154 to i64
  br label %.lr.ph652

.lr.ph652:                                        ; preds = %.lr.ph652.preheader, %bb.ab
  %indvars.iv666 = phi i64 [ 0, %.lr.ph652.preheader ], [ %indvars.iv.next667, %bb.ab ] ; 4 uses
  %i.dw = sub nsw i64 %i.dv, %indvars.iv666
  %i.dx = getelementptr inbounds [7 x i8], ptr %1, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2 ; 2 uses
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !216
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  %i.ec = trunc nuw i64 %indvars.iv666 to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph652
  %.0161 = phi ptr [ %i.dy, %.lr.ph652 ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.ed = load i8, ptr %.0161, align 1, !tbaa !97
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !97
  %i.eh = zext i8 %i.eg to i64
  %i.ei = icmp samesign ult i64 %indvars.iv666, %i.eh
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 %i.ec, ptr %i.ef, align 1, !tbaa !97
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %.0161, i64 1 ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.eb
  br i1 %i.ek, label %bb.y, label %bb.ab, !llvm.loop !502

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond670.not = icmp eq i64 %indvars.iv.next667, %wide.trip.count669
  br i1 %exitcond670.not, label %.loopexit.loopexit, label %.lr.ph652, !llvm.loop !503

.loopexit.loopexit:                               ; preds = %bb.ab
  %i.el = ptrtoint ptr %i.dt to i64
  br label %.lr.ph656.preheader

.lr.ph656.preheader:                              ; preds = %._crit_edge, %.loopexit.loopexit
  %.0152 = phi i64 [ 0, %._crit_edge ], [ %i.el, %.loopexit.loopexit ]
  %i.em = zext i32 %.1156 to i64
  br label %.lr.ph656

.lr.ph656:                                        ; preds = %.lr.ph656.preheader, %bb.af
  %indvars.iv671 = phi i64 [ 0, %.lr.ph656.preheader ], [ %indvars.iv.next672, %bb.af ] ; 6 uses
  %.0162653 = phi i32 [ -1, %.lr.ph656.preheader ], [ %.1163, %bb.af ] ; 4 uses
  %i.en = icmp eq i64 %indvars.iv671, %i.em
  br i1 %i.en, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph656
  %i.eo = icmp eq i32 %.0162653, -1
  br i1 %i.eo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv671
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !217
  %i.es = icmp ugt i8 %i.er, 1
  %i.et = trunc nuw nsw i64 %indvars.iv671 to i32
  %spec.select181 = select i1 %i.es, i32 %i.et, i32 -1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.eu = sext i32 %.0162653 to i64
  %i.ev = getelementptr inbounds [7 x i8], ptr %1, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !217
  %i.ey = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv671
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !217
  %i.fb = icmp ult i8 %i.ex, %i.fa
  %i.fc = trunc nuw nsw i64 %indvars.iv671 to i32
  %spec.select182 = select i1 %i.fb, i32 %i.fc, i32 %.0162653
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph656
  %.1163 = phi i32 [ %.0162653, %.lr.ph656 ], [ %spec.select181, %bb.ad ], [ %spec.select182, %bb.ae ] ; 7 uses
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count
  br i1 %exitcond676.not, label %._crit_edge657, label %.lr.ph656, !llvm.loop !504

._crit_edge657:                                   ; preds = %bb.af
  %i.fd = icmp slt i32 %.1156, 0
  br i1 %i.fd, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge657
  %i.fe = icmp slt i32 %.1163, 0
  br i1 %i.fe, label %sljit_emit_op1.exit319, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ff = zext nneg i32 %.1163 to i64
  %i.fg = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !97
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !97
  call fastcc void @fast_forward_first_char2(ptr noundef %0, i8 noundef zeroext %i.fi, i8 noundef zeroext %i.fk, i32 noundef %.1163)
  br label %sljit_emit_op1.exit319

bb.ai:                                            ; preds = %._crit_edge657
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !114 ; 2 uses
  %.not172 = icmp eq i32 %i.fm, 0
  %i.fn = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i197 = icmp eq i32 %i.fn, 0               ; 2 uses
  br i1 %.not172, label %bb.bj, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i197, label %bb.ak, label %sljit_emit_op2u.exit, !prof !130

bb.ak:                                            ; preds = %bb.aj
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 4 uses
  store i32 0, ptr %i.fp, align 8, !tbaa !132
  %i.fq = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef %i.fo) ; 2 uses
  %.not66.i = icmp eq ptr %i.fq, null
  br i1 %.not66.i, label %emit_mov.exit, label %sljit_emit_op1.exit, !prof !61

emit_mov.exit:                                    ; preds = %bb.ak
  %i.fr = load i32, ptr %i.b, align 8, !tbaa !129
  %.not112.i = icmp eq i32 %i.fr, 0
  br i1 %.not112.i, label %sljit_emit_op1.exit.thread, label %sljit_emit_op2u.exit, !prof !137

sljit_emit_op1.exit:                              ; preds = %bb.ak
  store i8 -117, ptr %i.fq, align 1, !tbaa !97
  %.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.fs = icmp eq i32 %.pre, 0
  br i1 %i.fs, label %sljit_emit_op1.exit.thread, label %sljit_emit_op2u.exit, !prof !139

sljit_emit_op1.exit.thread:                       ; preds = %emit_mov.exit, %sljit_emit_op1.exit
  store i32 0, ptr %i.fp, align 8, !tbaa !132
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !124 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !134 ; 2 uses
  %i.fx = add i64 %i.fw, 4                        ; 2 uses
  %i.fy = icmp ult i64 %i.fx, 4081
  br i1 %i.fy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %sljit_emit_op1.exit.thread
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fw
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !134
  br label %sljit_emit_op1.exit191

bb.am:                                            ; preds = %sljit_emit_op1.exit.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !123 ; 2 uses
  %.val.i.i462 = load ptr, ptr %i.gc, align 8, !tbaa !100
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  %.val18.i.i463 = load ptr, ptr %i.gd, align 8, !tbaa !101
  %i.ge = call ptr %.val.i.i462(i64 noundef 4096, ptr noundef %.val18.i.i463) #20, !inline_history !4 ; 5 uses
  %.not.i.i464 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i464, label %emit_mov.exit326, label %bb.an, !prof !61

bb.an:                                            ; preds = %bb.am
  %i.gf = load ptr, ptr %i.ft, align 8, !tbaa !124
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !135
  store ptr %i.ge, ptr %i.ft, align 8, !tbaa !124
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 4, ptr %i.gg, align 8, !tbaa !134
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  br label %sljit_emit_op1.exit191

emit_mov.exit326:                                 ; preds = %bb.am
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op2u.exit

sljit_emit_op1.exit191:                           ; preds = %bb.an, %bb.al
  %.0.i269.ph.i465 = phi ptr [ %i.gh, %bb.an ], [ %i.ga, %bb.al ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i465, i64 1
  store i8 3, ptr %.0.i269.ph.i465, align 1, !tbaa !97
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !136
  %i.gl = add i64 %i.gk, 3
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !136
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i465, i64 2
  store i8 72, ptr %i.gi, align 1, !tbaa !97
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i465, i64 3
  store i8 -33, ptr %i.gn, align 1, !tbaa !97
  store i8 -119, ptr %i.gm, align 1, !tbaa !97
  %.pre677 = load i32, ptr %i.b, align 8, !tbaa !129
  %i.go = icmp eq i32 %.pre677, 0
  br i1 %i.go, label %sljit_emit_op2.exit, label %sljit_emit_op2u.exit, !prof !139

sljit_emit_op2.exit:                              ; preds = %sljit_emit_op1.exit191
  store i32 0, ptr %i.fp, align 8, !tbaa !132
  %i.gp = call fastcc i32 @emit_non_cum_binary(ptr noundef nonnull %i.b, i32 noundef 757803304, i32 noundef 13, i64 noundef 0, i32 noundef 13, i64 noundef 0, i32 noundef 127, i64 noundef %wide.trip.count) ; 0 uses
  %.pr529.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.gq = icmp eq i32 %.pr529.pre, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  br i1 %i.gq, label %bb.ao, label %sljit_emit_op2u.exit, !prof !139

bb.ao:                                            ; preds = %sljit_emit_op2.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !125 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !134 ; 2 uses
  %i.gw = add i64 %i.gv, 32                       ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 4081
  br i1 %i.gx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gv
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !134
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !123 ; 2 uses
  %.val.i.i = load ptr, ptr %i.hb, align 8, !tbaa !100
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  %.val18.i.i = load ptr, ptr %i.hc, align 8, !tbaa !101
  %i.hd = call ptr %.val.i.i(i64 noundef 4096, ptr noundef %.val18.i.i) #20, !inline_history !7 ; 5 uses
  %.not.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i, label %bb.as, label %bb.ar, !prof !61

bb.ar:                                            ; preds = %bb.aq
  %i.he = load ptr, ptr %i.gs, align 8, !tbaa !125
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !135
  store ptr %i.hd, ptr %i.gs, align 8, !tbaa !125
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 32, ptr %i.hf, align 8, !tbaa !134
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op2u.exit

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %.0.i.ph.i = phi ptr [ %i.hg, %bb.ar ], [ %i.gz, %bb.ap ] ; 9 uses
  store ptr null, ptr %.0.i.ph.i, align 8, !tbaa !141
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 16
  store i64 16384, ptr %i.hh, align 8, !tbaa !142
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 24
  store ptr null, ptr %i.hi, align 8, !tbaa !97
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !143 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.hk, null
  br i1 %.not.i20.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %.0.i.ph.i, ptr %i.hk, align 8, !tbaa !141
  br label %set_jump.exit.i

bb.av:                                            ; preds = %bb.at
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.0.i.ph.i, ptr %i.hl, align 8, !tbaa !144
  br label %set_jump.exit.i

set_jump.exit.i:                                  ; preds = %bb.av, %bb.au
  store ptr %.0.i.ph.i, ptr %i.hj, align 8, !tbaa !143
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !136 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !145
  %i.hp = add i64 %i.hn, 15
  store i64 %i.hp, ptr %i.hm, align 8, !tbaa !136
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 6 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !124 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !134 ; 2 uses
  %i.hu = add i64 %i.ht, 1                        ; 2 uses
  %i.hv = icmp ult i64 %i.hu, 4081
  br i1 %i.hv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %set_jump.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ht
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !134
  br label %sljit_emit_jump.exit

bb.ax:                                            ; preds = %set_jump.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !123 ; 2 uses
  %.val.i21.i = load ptr, ptr %i.hz, align 8, !tbaa !100
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
end_hunk_0
