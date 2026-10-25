Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tgen_arithi:bb.a
    i64 128, label %.thread
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.c = add nuw nsw i32 %i.a, 255
  %i.d = icmp slt i64 %3, 0
  %i.e = icmp ne i32 %i.b, 0
  %.not5859 = xor i1 %i.e, %i.d
  %i.f = zext i1 %.not5859 to i32
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.f, i32 noundef %2)
  br label %bb.u

.thread:                                          ; preds = %bb.c
  %i.g = xor i32 %i.b, 5
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %3, 4294967295
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %2, 1
  %i.j = and i32 %i.i, 4
  %i.k = lshr i32 %2, 3
  %i.l = and i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, %i.j               ; 2 uses
  %.not37.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not37.i.i.i, label %tcg_out_ext32u.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.p, align 8
  store i8 %i.o, ptr %i.q, align 1
  br label %tcg_out_ext32u.exit

tcg_out_ext32u.exit:                              ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.s, align 8
  store i8 -117, ptr %i.t, align 1
  %i.v = shl i32 %2, 3
  %i.w = and i32 %2, 7
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = trunc i32 %i.x to i8
  %i.z = or i8 %i.y, -64
  %i.aa = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.s, align 8
  store i8 %i.z, ptr %i.aa, align 1
  br label %bb.u

bb.h:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %3, 4294967296
  %spec.select = select i1 %i.ac, i32 0, i32 %i.a
  switch i64 %3, label %bb.p [
    i64 255, label %bb.i
    i64 65535, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i32 %2, 1
  %i.ae = and i32 %i.ad, 4
  %i.af = lshr i32 %2, 3
  %i.ag = and i32 %i.af, 1
  %i.ah = or disjoint i32 %i.ag, %i.ae            ; 2 uses
  %i.ai = icmp slt i32 %2, 4
  %i.aj = icmp eq i32 %i.ah, 0
  %.not37.i.i.i61 = and i1 %i.ai, %i.aj
  br i1 %.not37.i.i.i61, label %tcg_out_ext8u.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw nsw i32 %i.ah to i8
  %i.al = or disjoint i8 %i.ak, 64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.am, align 8
  store i8 %i.al, ptr %i.an, align 1
  br label %tcg_out_ext8u.exit

tcg_out_ext8u.exit:                               ; preds = %bb.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %i.ap, align 8
  store i8 15, ptr %i.aq, align 1
  %i.as = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.ap, align 8
  store i8 -74, ptr %i.as, align 1
  %i.au = shl i32 %2, 3
  %i.av = and i32 %2, 7
  %i.aw = or disjoint i32 %i.av, %i.au
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = or i8 %i.ax, -64
  %i.az = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.ap, align 8
  store i8 %i.ay, ptr %i.az, align 1
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.bb = lshr i32 %2, 1
  %i.bc = and i32 %i.bb, 4
  %i.bd = lshr i32 %2, 3
  %i.be = and i32 %i.bd, 1
  %i.bf = or disjoint i32 %i.be, %i.bc            ; 2 uses
  %.not37.i.i.i62 = icmp eq i32 %i.bf, 0
  br i1 %.not37.i.i.i62, label %tcg_out_ext16u.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %i.bi, align 8
  store i8 %i.bh, ptr %i.bj, align 1
  br label %tcg_out_ext16u.exit

tcg_out_ext16u.exit:                              ; preds = %bb.k, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bl, align 8
  store i8 15, ptr %i.bm, align 1
  %i.bo = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.bl, align 8
  store i8 -73, ptr %i.bo, align 1
  %i.bq = shl i32 %2, 3
  %i.br = and i32 %2, 7
  %i.bs = or disjoint i32 %i.br, %i.bq
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = or i8 %i.bt, -64
  %i.bv = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.bw, ptr %i.bl, align 8
  store i8 %i.bu, ptr %i.bv, align 1
  br label %bb.u

bb.m:                                             ; preds = %bb.a, %bb.a
  %i.bx = and i64 %3, -128
  %or.cond3 = icmp eq i64 %i.bx, 128
  br i1 %or.cond3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.by = lshr i32 %2, 3
  %i.bz = and i32 %i.by, 1                        ; 2 uses
  %i.ca = icmp slt i32 %2, 4
  %i.cb = icmp eq i32 %i.bz, 0
  %.not37.i.i = and i1 %i.ca, %i.cb
  br i1 %.not37.i.i, label %tcg_out_modrm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc nuw nsw i32 %i.bz to i8
  %i.cd = or disjoint i8 %i.cc, 64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.ce, align 8
  store i8 %i.cd, ptr %i.cf, align 1
  br label %tcg_out_modrm.exit

tcg_out_modrm.exit:                               ; preds = %bb.n, %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store ptr %i.cj, ptr %i.ch, align 8
  store i8 -128, ptr %i.ci, align 1
  %i.ck = shl nuw nsw i32 %1, 3
  %i.cl = and i32 %2, 7
  %i.cm = or disjoint i32 %i.cl, %i.ck
  %i.cn = trunc i32 %i.cm to i8
  %i.co = or i8 %i.cn, -64
  %i.cp = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %i.ch, align 8
  store i8 %i.co, ptr %i.cp, align 1
  %i.cr = trunc nuw i64 %3 to i8
  %i.cs = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.ch, align 8
  store i8 %i.cr, ptr %i.cs, align 1
  br label %bb.u

bb.p:                                             ; preds = %bb.h, %bb.c, %bb.m, %bb.b, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.m ], [ %i.a, %bb.c ], [ %spec.select, %bb.h ] ; 3 uses
  %i.cu = add i64 %3, 128
  %i.cv = icmp ult i64 %i.cu, 256
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread, %bb.p
  %.068 = phi i32 [ %i.g, %.thread ], [ %i.b, %bb.p ]
  %.167 = phi i32 [ %i.a, %.thread ], [ %.1, %bb.p ]
  %i.cw = trunc i64 %3 to i8
  %i.cx = add nuw nsw i32 %.167, 131
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.cx, i32 noundef %.068, i32 noundef %2)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.da, ptr %i.cy, align 8
  store i8 %i.cw, ptr %i.cz, align 1
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.db = icmp eq i32 %.1, 0
  %i.dc = add i64 %3, 2147483648
  %i.dd = icmp ult i64 %i.dc, 4294967296
  %or.cond = or i1 %i.dd, %i.db
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = add nuw nsw i32 %.1, 129
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.de, i32 noundef %i.b, i32 noundef %2)
  %i.df = trunc i64 %3 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  store i32 %i.df, ptr %i.dh, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.di, ptr %i.dg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 1370, ptr noundef nonnull @__func__.tgen_arithi, ptr noundef null) #27
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.q, %tcg_out_modrm.exit, %tcg_out_ext16u.exit, %tcg_out_ext8u.exit, %tcg_out_ext32u.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @tcg_raise_tb_overflow(ptr noundef %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30688
  tail call void @__longjmp_chk(ptr noundef nonnull %i.a, i32 noundef -2) #27
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__longjmp_chk(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define internal void @tgen_brcond(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = select i1 %i.a, i32 0, i32 4096          ; 2 uses
  %i.c = and i32 %2, -2
  %i.d = icmp eq i32 %i.c, 12
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or disjoint i32 %i.b, 59
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.e, i32 noundef %3, i32 noundef %4)
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @tcg_cond_to_jcc, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  br label %tcg_out_cmp.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr @tcg_cond_to_jcc, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = or disjoint i32 %i.b, 133
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.l, i32 noundef %3, i32 noundef %4)
  br label %tcg_out_cmp.exit

tcg_out_cmp.exit:                                 ; preds = %bb.b, %bb.c
  %.1.i.in = phi i8 [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  %.1.i = zext i8 %.1.i.in to i32
  tail call fastcc void @tcg_out_jxx(ptr noundef %0, i32 noundef %.1.i, ptr noundef %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tgen_brcondi(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = select i1 %i.a, i32 0, i32 4096
  %i.c = zext i32 %3 to i64
  %i.d = tail call fastcc i32 @tcg_out_cmp(ptr noundef %0, i32 noundef %2, i64 noundef range(i64 0, 4294967296) %i.c, i64 noundef %4, i32 noundef 1, i32 noundef range(i32 0, 4097) %i.b)
  tail call fastcc void @tcg_out_jxx(ptr noundef %0, i32 noundef %i.d, ptr noundef %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 256) i32 @tcg_out_cmp(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 4097) %5) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -2
  %i.b = icmp eq i32 %i.a, 12
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i32 %5, 7                    ; 2 uses
  %i.d = trunc nuw i64 %2 to i32
  %i.e = trunc i64 %3 to i32
  %i.f = and i32 %i.c, 8184
  %i.g = shl nuw nsw i32 %i.c, 3
  %i.h = and i32 %i.g, 56
  %i.i = or disjoint i32 %i.f, 3
  %i.j = add nuw nsw i32 %i.i, %i.h
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.d, i32 noundef %i.e)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i32 %5, 133
  %i.m = trunc nuw i64 %2 to i32                  ; 2 uses
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.m)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not105 = icmp eq i32 %5, 0
  br i1 %.not105, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add i64 %3, 2147483648
  %i.o = icmp ult i64 %i.n, 4294967296
  tail call void @llvm.assume(i1 %i.o)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = add nuw nsw i32 %5, 7
  %i.q = trunc nuw i64 %2 to i32
  tail call fastcc void @tgen_arithi(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.q, i64 noundef %3, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.c
  %i.r = zext i32 %1 to i64
  %i.s = getelementptr inbounds nuw i8, ptr @tcg_cond_to_jcc, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  br label %bb.ae

bb.j:                                             ; preds = %bb.a
  %i.v = zext nneg i32 %1 to i64
  %i.w = getelementptr inbounds nuw i8, ptr @tcg_cond_to_jcc, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32                      ; 8 uses
  %i.z = icmp eq i32 %1, 13                       ; 2 uses
  %i.aa = select i1 %i.z, i32 8, i32 9            ; 3 uses
  %.not106 = icmp eq i32 %4, 0
  br i1 %.not106, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i32 %5, 133
  %i.ac = trunc nuw i64 %2 to i32
  %i.ad = trunc i64 %3 to i32
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ad)
  br label %bb.ae

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp ult i64 %3, 256
  br i1 %i.ae, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %trunc126 = trunc nuw i64 %3 to i8              ; 2 uses
  %i.af = trunc nuw i64 %2 to i32                 ; 12 uses
  switch i8 %trunc126, label %bb.r [
    i8 -128, label %bb.n
    i8 -1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 4
  %i.ai = lshr i32 %i.af, 3
  %i.aj = and i32 %i.ai, 1
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 2 uses
  %i.al = icmp slt i32 %i.af, 4
  %i.am = icmp eq i32 %i.ak, 0
  %.not37.i.i = and i1 %i.al, %i.am
  br i1 %.not37.i.i, label %tcg_out_modrm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = trunc nuw nsw i32 %i.ak to i8
  %i.ao = or disjoint i8 %i.an, 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %i.ap, align 8
  store i8 %i.ao, ptr %i.aq, align 1
  br label %tcg_out_modrm.exit

tcg_out_modrm.exit:                               ; preds = %bb.n, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
end_hunk_0
