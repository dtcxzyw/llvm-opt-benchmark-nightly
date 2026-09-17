Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/optimize?download=true
inline.NumInlined: 534
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_constant_folding:bb.a
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = trunc i64 %2 to i32
  %i.q = trunc i64 %3 to i32
  %i.r = and i32 %i.q, 31
  %i.s = lshr i32 %i.p, %i.r
  %i.t = zext i32 %i.s to i64
  br label %do_constant_folding_2.exit

bb.m:                                             ; preds = %bb.k
  %i.u = and i64 %3, 63
  %i.v = lshr i64 %2, %i.u
  br label %do_constant_folding_2.exit

bb.n:                                             ; preds = %bb.a
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = trunc i64 %2 to i32
  %i.y = trunc i64 %3 to i32
  %i.z = and i32 %i.y, 31
  %i.aa = ashr i32 %i.x, %i.z
  %i.ab = sext i32 %i.aa to i64
  br label %do_constant_folding_2.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = and i64 %3, 63
  %i.ad = ashr i64 %2, %i.ac
  br label %do_constant_folding_2.exit

bb.q:                                             ; preds = %bb.a
  %i.ae = icmp eq i32 %1, 0
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.af = trunc i64 %2 to i32                     ; 2 uses
  %i.ag = trunc i64 %3 to i32
  %i.ah = tail call noundef i32 @llvm.fshr.i32(i32 %i.af, i32 %i.af, i32 range(i32 0, 32) %i.ag)
  %i.ai = zext i32 %i.ah to i64
  br label %do_constant_folding_2.exit

bb.s:                                             ; preds = %bb.q
  %i.aj = tail call i64 @llvm.fshr.i64(i64 %2, i64 %2, i64 %3)
  br label %do_constant_folding_2.exit

bb.t:                                             ; preds = %bb.a
  %i.ak = icmp eq i32 %1, 0
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.al = trunc i64 %2 to i32                     ; 2 uses
  %i.am = trunc i64 %3 to i32
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 range(i32 0, 32) %i.am)
  %i.ao = zext i32 %i.an to i64
  br label %do_constant_folding_2.exit

bb.v:                                             ; preds = %bb.t
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 %3)
  br label %do_constant_folding_2.exit

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.aq = xor i64 %2, -1
  br label %do_constant_folding_2.exit

bb.x:                                             ; preds = %bb.a
  %i.ar = sub i64 0, %2
  br label %do_constant_folding_2.exit

bb.y:                                             ; preds = %bb.a, %bb.a
  %i.as = xor i64 %3, -1
  %i.at = and i64 %2, %i.as
  br label %do_constant_folding_2.exit

bb.z:                                             ; preds = %bb.a, %bb.a
  %i.au = xor i64 %3, -1
  %i.av = or i64 %2, %i.au
  br label %do_constant_folding_2.exit

bb.aa:                                            ; preds = %bb.a, %bb.a
  %i.aw = xor i64 %3, %2
  %i.ax = xor i64 %i.aw, -1
  br label %do_constant_folding_2.exit

bb.ab:                                            ; preds = %bb.a, %bb.a
  %i.ay = and i64 %3, %2
  %i.az = xor i64 %i.ay, -1
  br label %do_constant_folding_2.exit

bb.ac:                                            ; preds = %bb.a, %bb.a
  %i.ba = or i64 %3, %2
  %i.bb = xor i64 %i.ba, -1
  br label %do_constant_folding_2.exit

bb.ad:                                            ; preds = %bb.a
  %i.bc = icmp eq i32 %1, 0
  br i1 %i.bc, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bd = trunc i64 %2 to i32                     ; 2 uses
  %.not127.i = icmp eq i32 %i.bd, 0
  br i1 %.not127.i, label %do_constant_folding_2.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.bd, i1 true)
  %i.bf = zext nneg i32 %i.be to i64
  br label %do_constant_folding_2.exit

bb.ag:                                            ; preds = %bb.ad
  %.not126.i = icmp eq i64 %2, 0
  br i1 %.not126.i, label %do_constant_folding_2.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  br label %do_constant_folding_2.exit

bb.ai:                                            ; preds = %bb.a
  %i.bh = icmp eq i32 %1, 0
  br i1 %i.bh, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.bi = trunc i64 %2 to i32                     ; 2 uses
  %.not125.i = icmp eq i32 %i.bi, 0
  br i1 %.not125.i, label %do_constant_folding_2.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.bi, i1 true)
  %i.bk = zext nneg i32 %i.bj to i64
  br label %do_constant_folding_2.exit

bb.al:                                            ; preds = %bb.ai
  %.not124.i = icmp eq i64 %2, 0
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %2, i1 true)
  %spec.select.i = select i1 %.not124.i, i64 %3, i64 %i.bl
  br label %do_constant_folding_2.exit

bb.am:                                            ; preds = %bb.a
  %i.bm = icmp eq i32 %1, 0
  br i1 %i.bm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bn = trunc i64 %2 to i32
  %i.bo = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bn)
  %i.bp = zext nneg i32 %i.bo to i64
  br label %do_constant_folding_2.exit

bb.ao:                                            ; preds = %bb.am
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  br label %do_constant_folding_2.exit

bb.ap:                                            ; preds = %bb.a
  %i.br = trunc i64 %2 to i16
  %i.bs = tail call i16 @llvm.bswap.i16(i16 %i.br) ; 2 uses
  %i.bt = zext i16 %i.bs to i64
  %i.bu = and i64 %3, 4
  %.not123.i = icmp eq i64 %i.bu, 0
  %i.bv = sext i16 %i.bs to i64
  %i.bw = select i1 %.not123.i, i64 %i.bt, i64 %i.bv
  br label %do_constant_folding_2.exit

bb.aq:                                            ; preds = %bb.a
  %i.bx = trunc i64 %2 to i32
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx) ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = and i64 %3, 4
  %.not.i = icmp eq i64 %i.ca, 0
  %i.cb = sext i32 %i.by to i64
  %i.cc = select i1 %.not.i, i64 %i.bz, i64 %i.cb
  br label %do_constant_folding_2.exit

bb.ar:                                            ; preds = %bb.a
  %i.cd = tail call i64 @llvm.bswap.i64(i64 %2)
  br label %do_constant_folding_2.exit

bb.as:                                            ; preds = %bb.a
  %sext122.i = shl i64 %2, 32
  %i.ce = ashr exact i64 %sext122.i, 32
  br label %do_constant_folding_2.exit

bb.at:                                            ; preds = %bb.a, %bb.a
  %i.cf = and i64 %2, 4294967295
  br label %do_constant_folding_2.exit

bb.au:                                            ; preds = %bb.a
  %i.cg = lshr i64 %2, 32
  br label %do_constant_folding_2.exit

bb.av:                                            ; preds = %bb.a
  %i.ch = icmp eq i32 %1, 0
  br i1 %i.ch, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ci = and i64 %2, 4294967295
  %i.cj = and i64 %3, 4294967295
  %i.ck = mul nuw i64 %i.cj, %i.ci
  %i.cl = lshr i64 %i.ck, 32
  br label %do_constant_folding_2.exit

bb.ax:                                            ; preds = %bb.av
  %4 = tail call i64 @llvm.umulh.i64(i64 %3, i64 %2)
  br label %do_constant_folding_2.exit

bb.ay:                                            ; preds = %bb.a
  %i.cm = icmp eq i32 %1, 0
  br i1 %i.cm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %sext.i = shl i64 %2, 32
  %i.cn = ashr exact i64 %sext.i, 32
  %sext121.i = shl i64 %3, 32
  %i.co = ashr exact i64 %sext121.i, 32
  %i.cp = mul nsw i64 %i.co, %i.cn
  %i.cq = ashr i64 %i.cp, 32
  br label %do_constant_folding_2.exit

bb.ba:                                            ; preds = %bb.ay
  %5 = tail call i64 @llvm.smulh.i64(i64 %3, i64 %2)
  br label %do_constant_folding_2.exit

bb.bb:                                            ; preds = %bb.a
  %i.cr = icmp eq i32 %1, 0
  br i1 %i.cr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cs = trunc i64 %2 to i32
  %i.ct = trunc i64 %3 to i32
  %..i = tail call i32 @llvm.umax.i32(i32 %i.ct, i32 1)
  %i.cu = sdiv i32 %i.cs, %..i
  %i.cv = sext i32 %i.cu to i64
  br label %do_constant_folding_2.exit

bb.bd:                                            ; preds = %bb.bb
  %.1.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %i.cw = sdiv i64 %2, %.1.i
  br label %do_constant_folding_2.exit

bb.be:                                            ; preds = %bb.a
  %i.cx = icmp eq i32 %1, 0
  br i1 %i.cx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.cy = trunc i64 %2 to i32
  %i.cz = trunc i64 %3 to i32
  %.2.i = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 1)
  %i.da = udiv i32 %i.cy, %.2.i
  %i.db = zext i32 %i.da to i64
  br label %do_constant_folding_2.exit

bb.bg:                                            ; preds = %bb.be
  %.3.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %i.dc = udiv i64 %2, %.3.i
  br label %do_constant_folding_2.exit

bb.bh:                                            ; preds = %bb.a
  %i.dd = icmp eq i32 %1, 0
  br i1 %i.dd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.de = trunc i64 %2 to i32
  %i.df = trunc i64 %3 to i32
  %.4.i = tail call i32 @llvm.umax.i32(i32 %i.df, i32 1)
  %i.dg = srem i32 %i.de, %.4.i
  %i.dh = sext i32 %i.dg to i64
  br label %do_constant_folding_2.exit

bb.bj:                                            ; preds = %bb.bh
  %.5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %i.di = srem i64 %2, %.5.i
  br label %do_constant_folding_2.exit

bb.bk:                                            ; preds = %bb.a
  %i.dj = icmp eq i32 %1, 0
  br i1 %i.dj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.dk = trunc i64 %2 to i32
  %i.dl = trunc i64 %3 to i32
  %.6.i = tail call i32 @llvm.umax.i32(i32 %i.dl, i32 1)
  %i.dm = urem i32 %i.dk, %.6.i
  %i.dn = zext i32 %i.dm to i64
  br label %do_constant_folding_2.exit

bb.bm:                                            ; preds = %bb.bk
  %.7.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %i.do = urem i64 %2, %.7.i
  br label %do_constant_folding_2.exit

bb.bn:                                            ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 587, ptr noundef nonnull @__func__.do_constant_folding_2, ptr noundef null) #10
  unreachable

do_constant_folding_2.exit:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.aj, %bb.ak, %bb.al, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.bf, %bb.bg, %bb.bi, %bb.bj, %bb.bl, %bb.bm
  %.0.i = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.l, %bb.i ], [ %i.n, %bb.j ], [ %i.t, %bb.l ], [ %i.v, %bb.m ], [ %i.ab, %bb.o ], [ %i.ad, %bb.p ], [ %i.ai, %bb.r ], [ %i.aj, %bb.s ], [ %i.ao, %bb.u ], [ %i.ap, %bb.v ], [ %i.aq, %bb.w ], [ %i.ar, %bb.x ], [ %i.at, %bb.y ], [ %i.av, %bb.z ], [ %i.ax, %bb.aa ], [ %i.az, %bb.ab ], [ %i.bb, %bb.ac ], [ %i.do, %bb.bm ], [ %3, %bb.ae ], [ %3, %bb.ag ], [ %3, %bb.aj ], [ %spec.select.i, %bb.al ], [ %i.bw, %bb.ap ], [ %i.cc, %bb.aq ], [ %i.cd, %bb.ar ], [ %i.ce, %bb.as ], [ %i.cf, %bb.at ], [ %i.cg, %bb.au ], [ %i.cl, %bb.aw ], [ %4, %bb.ax ], [ %i.cq, %bb.az ], [ %5, %bb.ba ], [ %i.cv, %bb.bc ], [ %i.cw, %bb.bd ], [ %i.db, %bb.bf ], [ %i.dc, %bb.bg ], [ %i.dh, %bb.bi ], [ %i.di, %bb.bj ], [ %i.dn, %bb.bl ], [ %i.bf, %bb.af ], [ %i.bg, %bb.ah ], [ %i.bk, %bb.ak ], [ %i.bp, %bb.an ], [ %i.bq, %bb.ao ] ; 2 uses
  %i.dp = icmp eq i32 %1, 0
  %sext = shl i64 %.0.i, 32
  %i.dq = ashr exact i64 %sext, 32
  %.0 = select i1 %i.dp, i64 %i.dq, i64 %.0.i
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tcg_opt_gen_mov(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 9 uses
  %i.b = inttoptr i64 %3 to ptr                   ; 8 uses
  %i.c = icmp eq i64 %2, %3
  br i1 %i.c, label %ts_are_copies.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 48       ; 3 uses
  %.val.i.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not15.i = icmp eq ptr %i.f, %i.a
  br i1 %.not15.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %.val.i14.i = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i14.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.not16.i = icmp eq ptr %i.i, %i.b
  br i1 %.not16.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.020.i = phi ptr [ %.0.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = icmp eq ptr %.020.i, %i.b
  br i1 %i.j, label %ts_are_copies.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %.020.i, i64 48
  %.0.val.i = load ptr, ptr %i.k, align 8
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.a
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !5

ts_are_copies.exit:                               ; preds = %.lr.ph.i, %bb.a
  %i.l = load ptr, ptr %0, align 8
  tail call void @tcg_op_remove(ptr noundef %i.l, ptr noundef %1) #9
  br label %move_mem_copies.exit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.c
  tail call fastcc void @reset_ts(ptr noundef %0, ptr noundef %i.a)
  %.val55 = load ptr, ptr %i.d, align 8           ; 5 uses
  %i.m = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %.val54 = load ptr, ptr %i.m, align 8           ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp ult i32 %i.o, 6
  %switch.maskindex = trunc i32 %i.o to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.p, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 386, ptr noundef nonnull @__func__.tcg_opt_gen_mov, ptr noundef null) #10
  unreachable

switch.lookup:                                    ; preds = %.loopexit
  %i.q = zext nneg i32 %i.o to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.tcg_opt_gen_mov, i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.r = load i32, ptr %1, align 8
  %i.s = and i32 %i.r, -256
  %i.t = or disjoint i32 %i.s, %switch.ext
  store i32 %i.t, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %3, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val54, i64 32
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val55, i64 32 ; 3 uses
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val54, i64 40
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val55, i64 40 ; 3 uses
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val54, i64 48
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val55, i64 48 ; 3 uses
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = load i64, ptr %i.b, align 8
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = load i64, ptr %i.a, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 24                      ; 2 uses
  %i.al = icmp eq i32 %i.ah, %i.ak
  br i1 %i.al, label %bb.f, label %bb.j

bb.f:                                             ; preds = %switch.lookup
  %i.am = getelementptr inbounds nuw i8, ptr %.val54, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %.val = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val55, i64 8
  store ptr %i.an, ptr %i.ap, align 8
  store ptr %i.b, ptr %.val55, align 8
  store ptr %i.a, ptr %.val, align 8
  store ptr %i.a, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %move_mem_copies.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.b, align 8
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = and i32 %i.av, 7
  %i.ax = load i64, ptr %i.a, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 7
  %i.bb = icmp samesign ult i32 %i.aw, %i.ba
  br i1 %i.bb, label %bb.h, label %move_mem_copies.exit

bb.h:                                             ; preds = %bb.g
  %.val18.i = load ptr, ptr %i.m, align 8         ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16 ; 4 uses
  %.019.i = load ptr, ptr %i.bc, align 8          ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, null
  br i1 %.not20.i, label %move_mem_copies.exit, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.h, %.lr.ph.i56
  %.021.i = phi ptr [ %.0.i57, %.lr.ph.i56 ], [ %.019.i, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.021.i, i64 56 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, %i.b
  tail call void @llvm.assume(i1 %i.bf)
  store ptr %i.a, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i, i64 48
  %.0.i57 = load ptr, ptr %i.bg, align 8          ; 2 uses
  %.not.i58 = icmp eq ptr %.0.i57, null
  br i1 %.not.i58, label %._crit_edge.i, label %.lr.ph.i56, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i56
  %.pre.i = load ptr, ptr %i.bc, align 8          ; 2 uses
  %i.bh = icmp eq ptr %.pre.i, null
  br i1 %i.bh, label %move_mem_copies.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %.pre.i, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.val18.i, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr %i.bi, align 8
  store ptr null, ptr %i.bc, align 8
  store ptr %i.bc, ptr %i.bk, align 8
  br label %move_mem_copies.exit

bb.j:                                             ; preds = %switch.lookup
  %i.bm = icmp eq i32 %i.ak, 0
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.x, 32
  %i.bn = ashr exact i64 %sext, 32
  store i64 %i.bn, ptr %i.y, align 8
  %sext53 = shl i64 %i.aa, 32
end_hunk_0
begin_hunk_1_@fold_sub_to_neg:bb.a
    i32 5, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2710, ptr noundef nonnull @__func__.fold_sub_to_neg, ptr noundef null) #10
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.j = load i32, ptr %1, align 8
  %i.k = and i32 %i.j, -256
  %i.l = or disjoint i32 %i.k, 38
  store i32 %i.l, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  store i64 %i.n, ptr %i.a, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 48
  %.val.i.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = sub i64 0, %i.r
  %i.t = and i64 %i.r, %i.s
  %i.u = sub i64 0, %i.t                          ; 2 uses
  %i.v = load i32, ptr %i.h, align 8
  %i.w = icmp eq i32 %i.v, 0                      ; 2 uses
  %sext.i.i.i = shl i64 %i.u, 32
  %i.x = ashr exact i64 %sext.i.i.i, 32
  %.051.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.u ; 3 uses
  %i.y = icmp eq i64 %.051.i.i.i, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call fastcc i64 @arg_new_constant(ptr noundef nonnull %0, i64 noundef 0)
  tail call fastcc void @tcg_opt_gen_mov(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.aa, i64 noundef %i.ab)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.ac = inttoptr i64 %i.aa to ptr               ; 2 uses
  tail call fastcc void @reset_ts(ptr noundef nonnull %0, ptr noundef %i.ac)
  %i.ad = getelementptr i8, ptr %i.ac, i64 48
  %.val.i.i.i = load ptr, ptr %i.ad, align 8      ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  store i64 %.051.i.i.i, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  store i64 0, ptr %i.af, align 8
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.051.i.i.i, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32          ; 2 uses
  %i.ai = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 33)
  %i.aj = select i1 %i.w, i32 %i.ai, i32 %i.ah
  %i.ak = tail call i32 @llvm.usub.sat.i32(i32 %i.aj, i32 1)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = ashr exact i64 -9223372036854775808, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  store i64 %i.am, ptr %i.an, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.b, %bb.b, %bb.b, %bb.a
  %.010 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.b ], [ true, %bb.e ], [ true, %bb.f ]
  ret i1 %.010
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @squash_prev_borrowout(ptr noundef nonnull %0, ptr %.16.val.8.val.0.val) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %.16.val.8.val.0.val, align 8 ; 5 uses
  %trunc = trunc i32 %i.a to i8
  switch i8 %trunc, label %bb.i [
    i8 63, label %bb.b
    i8 66, label %bb.c
    i8 64, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %i.a, -256
  %i.c = or disjoint i32 %i.b, 57
  store i32 %i.c, ptr %.16.val.8.val.0.val, align 8
  tail call fastcc void @fold_sub(ptr noundef %0, ptr noundef nonnull %.16.val.8.val.0.val)
  br label %fold_add.exit

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, -256
  %i.e = or disjoint i32 %i.d, 65
  store i32 %i.e, ptr %.16.val.8.val.0.val, align 8
  br label %fold_add.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val.8.val.0.val, i64 48 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %.val.i = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 32    ; 2 uses
  %.val = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val.i, i64 40
  %.val23 = load i64, ptr %i.k, align 8
  %i.l = icmp eq i64 %.val, %.val23
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.a, -256
  %i.n = or disjoint i32 %i.m, 7
  store i32 %i.n, ptr %.16.val.8.val.0.val, align 8
  %.val24 = load i64, ptr %i.j, align 8
  %i.o = xor i64 %.val24, -1
  %i.p = tail call fastcc i64 @arg_new_constant(ptr noundef %0, i64 noundef %i.o)
  store i64 %i.p, ptr %i.f, align 8
  %i.q = tail call fastcc zeroext i1 @fold_const2_commutative(ptr noundef nonnull %0, ptr noundef nonnull %.16.val.8.val.0.val)
  br i1 %i.q, label %fold_add.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.f, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val.i.i.i = load ptr, ptr %i.t, align 8       ; 2 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 32
  %.val.val.i.i.i = load i64, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val.i.i.i, i64 40
  %.val.val2.i.i.i = load i64, ptr %i.v, align 8
  %i.w = or i64 %.val.val2.i.i.i, %.val.val.i.i.i
  %spec.select.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %spec.select.i.i.i.i.i, label %fold_xi_to_x.exit.thread.i, label %fold_xi_to_x.exit.i

fold_xi_to_x.exit.thread.i:                       ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.16.val.8.val.0.val, i64 32
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.16.val.8.val.0.val, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  tail call fastcc void @tcg_opt_gen_mov(ptr noundef nonnull %0, ptr noundef nonnull %.16.val.8.val.0.val, i64 noundef %i.y, i64 noundef %i.aa)
  br label %fold_add.exit

fold_xi_to_x.exit.i:                              ; preds = %bb.f
  %i.ab = load i32, ptr %.16.val.8.val.0.val, align 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr @tcg_op_defs, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr %i.af, align 8             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i, label %fold_add.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %fold_xi_to_x.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.16.val.8.val.0.val, i64 32
  %wide.trip.count.i.i = zext i8 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = inttoptr i64 %i.aj to ptr
  tail call fastcc void @reset_ts(ptr noundef nonnull %0, ptr noundef %i.ak)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %fold_add.exit, label %bb.g, !llvm.loop !4

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.16.val.8.val.0.val, i64 32
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = and i32 %i.a, -256
  %i.ao = or disjoint i32 %i.an, 57
  store i32 %i.ao, ptr %.16.val.8.val.0.val, align 8
  %.val25 = load ptr, ptr %0, align 8
  %i.ap = getelementptr i8, ptr %0, i64 112
  %.val26 = load i32, ptr %i.ap, align 8
  %i.aq = tail call ptr @tcg_op_insert_after(ptr noundef %.val25, ptr noundef nonnull %.16.val.8.val.0.val, i32 noundef 7, i32 noundef %.val26, i32 noundef 3) #9 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.am, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %i.am, ptr %i.as, align 8
  %i.at = tail call fastcc i64 @arg_new_constant(ptr noundef %0, i64 noundef -1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i64 %i.at, ptr %i.au, align 8
  br label %fold_add.exit

bb.i:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2780, ptr noundef nonnull @__func__.squash_prev_borrowout, ptr noundef null) #10
  unreachable

fold_add.exit:                                    ; preds = %bb.g, %fold_xi_to_x.exit.i, %fold_xi_to_x.exit.thread.i, %bb.e, %bb.h, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smulh.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = distinct !{!5, !13}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
