Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/catapult_dct2000?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@parse_line:bb.a
  %i.oh = sext i8 %i.nb to i32
  %i.oi = mul nsw i32 %i.oh, 1000
  %i.oj = sext i8 %i.nk to i32
  %i.ok = mul nsw i32 %i.oj, 100
  %i.ol = add nsw i32 %i.oe, -5332800
  %i.om = add nsw i32 %i.ol, %i.og
  %i.on = add nsw i32 %i.om, %i.oi
  %i.oo = add nsw i32 %i.on, %i.ok
  store i32 %i.oo, ptr %3, align 4
  %i.op = load i8, ptr %i.oc, align 1
  %.not417 = icmp eq i8 %i.op, 32
  br i1 %.not417, label %bb.ca, label %.critedge19

bb.ca:                                            ; preds = %bb.bz
  %i.oq = add nsw i32 %i.ob, 2                    ; 3 uses
  store i64 %indvars.iv.next685.3, ptr %5, align 8
  %i.or = load i8, ptr %10, align 1, !range !7, !noundef !8
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %sub_0463, label %bb.cb

sub_0463:                                         ; preds = %bb.ca
  %i.ot = sext i32 %i.oq to i64
  %i.ou = getelementptr i8, ptr %0, i64 %i.ot     ; 3 uses
  %i.ov = load i8, ptr %i.ou, align 1
  %.not591 = icmp eq i8 %i.ov, 108
  br i1 %.not591, label %sub_1464, label %.tail462.thread

sub_1464:                                         ; preds = %sub_0463
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.ox = load i8, ptr %i.ow, align 1
  %.not592 = icmp eq i8 %i.ox, 32
  br i1 %.not592, label %.tail462, label %.tail462.thread

.tail462:                                         ; preds = %sub_1464
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = icmp eq i8 %i.oz, 36
  br i1 %i.pa, label %bb.cb, label %.tail462.thread

.tail462.thread:                                  ; preds = %sub_1464, %sub_0463, %.tail462
  store i8 1, ptr %11, align 1
  %i.pb = call i64 @g_strlcpy(ptr noundef %15, ptr noundef nonnull @.str.24, i64 noundef 64) ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %.tail462, %.tail462.thread, %bb.ca
  %i.pc = load i8, ptr %11, align 1, !range !7, !noundef !8
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.cd, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cb
  %i.pe = add i32 %i.ob, 3
  %smax688 = call i32 @llvm.smax.i32(i32 %1, i32 %i.pe)
  %i.pf = add nsw i32 %smax688, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.cc
  %.19 = phi i32 [ %i.pj, %bb.cc ], [ %i.oq, %.preheader.preheader ] ; 4 uses
  %i.pg = sext i32 %.19 to i64
  %i.ph = getelementptr i8, ptr %0, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1             ; 2 uses
  switch i8 %i.pi, label %bb.cc [
    i8 36, label %.critedge27
    i8 39, label %.critedge27
  ]

bb.cc:                                            ; preds = %.preheader
  %i.pj = add i32 %.19, 1                         ; 2 uses
  %i.pk = icmp slt i32 %i.pj, %1
  br i1 %i.pk, label %.preheader, label %.critedge27, !llvm.loop !27

.critedge27:                                      ; preds = %.preheader, %.preheader, %bb.cc
  %.19.lcssa = phi i32 [ %.19, %.preheader ], [ %.19, %.preheader ], [ %i.pf, %bb.cc ]
  %i.pl = icmp ne i8 %i.pi, 39
  %i.pm = add i32 %.19.lcssa, 1                   ; 2 uses
  %.not421 = icmp slt i32 %i.pm, %1
  %or.cond444 = and i1 %i.pl, %.not421
  br i1 %or.cond444, label %bb.cd, label %.critedge19

bb.cd:                                            ; preds = %.critedge27, %bb.cb
  %.20 = phi i32 [ %i.oq, %bb.cb ], [ %i.pm, %.critedge27 ] ; 2 uses
  %i.pn = sext i32 %.20 to i64
  store i64 %i.pn, ptr %6, align 8
  %i.po = sub i32 %1, %.20
  store i32 %i.po, ptr %7, align 4
  br i1 %.0351449, label %bb.ce, label %.critedge19

bb.ce:                                            ; preds = %bb.cd
  %i.pp = load i64, ptr %6, align 8
  %i.pq = add i64 %i.pp, 2
  store i64 %i.pq, ptr %6, align 8
  %i.pr = load i32, ptr %7, align 4
  %i.ps = add i32 %i.pr, -2
  store i32 %i.ps, ptr %7, align 4
  br label %.critedge19

.critedge19.critedge:                             ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.by
  %.sroa.8.0.ph = phi i8 [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.nk, %bb.by ] ; 0 uses
  %.sroa.6.0.ph = phi i8 [ undef, %bb.bu ], [ undef, %bb.bv ], [ %i.nb, %bb.bw ], [ %i.nb, %bb.by ] ; 0 uses
  %indvars.iv.next685.lcssa.ph = phi i64 [ %indvars.iv.next685, %bb.bu ], [ %indvars.iv.next685.1, %bb.bv ], [ %indvars.iv.next685.2, %bb.bw ], [ %indvars.iv.next685.4, %bb.by ] ; 0 uses
  %indvars.iv684.lcssa845.ph = phi i64 [ %i.la, %bb.bu ], [ %indvars.iv.next685, %bb.bv ], [ %indvars.iv.next685.1, %bb.bw ], [ %indvars.iv.next685.3, %bb.by ]
  %i.pt = trunc nsw i64 %indvars.iv684.lcssa845.ph to i32 ; 0 uses
  br label %.critedge19

.critedge19:                                      ; preds = %switch.early.test, %switch.early.test.1, %bb.j, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %switch.early.test439, %bb.ad, %bb.af, %bb.bf, %bb.bp, %.lr.ph563, %.lr.ph579.preheader, %.lr.ph579.1, %.lr.ph579.2, %.lr.ph579.3, %.lr.ph579.4, %.critedge19.critedge, %.preheader467, %._crit_edge564.thread, %._crit_edge548.thread, %._crit_edge.thread, %bb.ba, %._crit_edge, %.thread747, %._crit_edge580, %bb.bz, %.critedge27, %bb.ce, %bb.cd, %._crit_edge564, %.critedge17, %bb.bi, %.critedge9, %bb.z, %._crit_edge548, %bb.v, %._crit_edge539, %.thread717, %bb.l, %.critedge.thread, %bb.d, %bb.bg
  %.2361 = phi i1 [ true, %bb.cd ], [ false, %bb.ad ], [ false, %bb.bi ], [ false, %.critedge17 ], [ false, %bb.ba ], [ false, %.lr.ph579.preheader ], [ false, %._crit_edge564 ], [ false, %.critedge9 ], [ false, %bb.bg ], [ false, %bb.bp ], [ false, %bb.l ], [ false, %switch.early.test439 ], [ false, %._crit_edge ], [ false, %.thread717 ], [ false, %.critedge19.critedge ], [ false, %._crit_edge539 ], [ false, %bb.d ], [ false, %bb.v ], [ false, %bb.z ], [ false, %.preheader467 ], [ false, %._crit_edge548 ], [ false, %.critedge.thread ], [ false, %bb.bz ], [ false, %.thread747 ], [ false, %.lr.ph563 ], [ false, %._crit_edge580 ], [ false, %.critedge27 ], [ true, %bb.ce ], [ false, %bb.bf ], [ false, %._crit_edge.thread ], [ false, %._crit_edge548.thread ], [ false, %._crit_edge564.thread ], [ false, %.lr.ph ], [ false, %.lr.ph579.4 ], [ false, %.lr.ph579.3 ], [ false, %.lr.ph579.2 ], [ false, %.lr.ph579.1 ], [ false, %bb.af ], [ false, %.lr.ph.2 ], [ false, %.lr.ph.1 ], [ false, %bb.j ], [ false, %switch.early.test.1 ], [ false, %switch.early.test ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.2361
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal fastcc void @write_timestamp_string(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 -21474836, 21474837) %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %1, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = srem i32 %1, 10
  %i.c = trunc nsw i32 %i.b to i8
  %i.d = add nsw i8 %i.c, 48
  store i8 %i.d, ptr %0, align 1
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 100
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc91 = trunc nuw nsw i32 %1 to i8      ; 2 uses
  %i.f = udiv i8 %.lhs.trunc91, 10
  %i.g = or disjoint i8 %i.f, 48
  store i8 %i.g, ptr %0, align 1
  %i.h = urem i8 %.lhs.trunc91, 10
  %i.i = or disjoint i8 %i.h, 48
  %i.j = getelementptr i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %1, 1000
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc94 = trunc nuw nsw i32 %1 to i16     ; 3 uses
  %i.l = udiv i16 %.lhs.trunc94, 100
  %i.m = trunc nuw nsw i16 %i.l to i8
  %i.n = or disjoint i8 %i.m, 48
  store i8 %i.n, ptr %0, align 1
  %i.o = urem i16 %.lhs.trunc94, 100
  %.lhs.trunc98 = trunc nuw nsw i16 %i.o to i8
  %i.p = udiv i8 %.lhs.trunc98, 10
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr i8, ptr %0, i64 1
  store i8 %i.q, ptr %i.r, align 1
  %i.s = urem i16 %.lhs.trunc94, 10
  %i.t = trunc nuw nsw i16 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr i8, ptr %0, i64 2
  store i8 %i.u, ptr %i.v, align 1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.w = icmp samesign ult i32 %1, 10000
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.lhs.trunc102 = trunc nuw nsw i32 %1 to i16    ; 4 uses
  %i.x = udiv i16 %.lhs.trunc102, 1000
  %i.y = trunc nuw nsw i16 %i.x to i8
  %i.z = add nuw nsw i8 %i.y, 48
  store i8 %i.z, ptr %0, align 1
  %i.aa = urem i16 %.lhs.trunc102, 1000
  %i.ab = udiv i16 %i.aa, 100
  %i.ac = trunc nuw nsw i16 %i.ab to i8
  %i.ad = or disjoint i8 %i.ac, 48
  %i.ae = getelementptr i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = urem i16 %.lhs.trunc102, 100
  %.lhs.trunc110 = trunc nuw nsw i16 %i.af to i8
  %i.ag = udiv i8 %.lhs.trunc110, 10
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = getelementptr i8, ptr %0, i64 2
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = urem i16 %.lhs.trunc102, 10
  %i.ak = trunc nuw nsw i16 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr i8, ptr %0, i64 3
  store i8 %i.al, ptr %i.am, align 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.an = icmp samesign ult i32 %1, 100000
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = udiv i32 %1, 10000
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  store i8 %i.aq, ptr %0, align 1
  %3 = insertelement <2 x i32> poison, i32 %1, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer
  %5 = urem <2 x i32> %4, <i32 10000, i32 1000>
  %6 = getelementptr i8, ptr %0, i64 1
  %7 = trunc nuw nsw <2 x i32> %5 to <2 x i16>
  %8 = udiv <2 x i16> %7, <i16 1000, i16 100>     ; 2 uses
  %9 = bitcast <2 x i16> %8 to <4 x i8>
  %10 = extractelement <4 x i8> %9, i64 0
  %11 = add nuw nsw i8 %10, 48
  store i8 %11, ptr %6, align 1
  %12 = bitcast <2 x i16> %8 to <4 x i8>
  %13 = extractelement <4 x i8> %12, i64 2
  %i.ar = or disjoint i8 %13, 48
  %i.as = getelementptr i8, ptr %0, i64 2
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = urem i32 %1, 100
  %.lhs.trunc118 = trunc nuw nsw i32 %i.at to i8
  %i.au = udiv i8 %.lhs.trunc118, 10
  %i.av = or disjoint i8 %i.au, 48
  %i.aw = getelementptr i8, ptr %0, i64 3
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = urem i32 %1, 10
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  %i.az = or disjoint i8 %i.ay, 48
  %i.ba = getelementptr i8, ptr %0, i64 4
  store i8 %i.az, ptr %i.ba, align 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bb = icmp samesign ult i32 %1, 1000000
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = udiv i32 %1, 100000
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, 48
  store i8 %i.be, ptr %0, align 1
  %i.bf = urem i32 %1, 100000
  %i.bg = udiv i32 %i.bf, 10000
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = getelementptr i8, ptr %0, i64 1
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = urem i32 %1, 10000
  %.lhs.trunc120 = trunc nuw nsw i32 %i.bk to i16
  %i.bl = udiv i16 %.lhs.trunc120, 1000
  %i.bm = trunc nuw nsw i16 %i.bl to i8
  %i.bn = add nuw nsw i8 %i.bm, 48
  %i.bo = getelementptr i8, ptr %0, i64 2
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = urem i32 %1, 1000
  %.lhs.trunc122 = trunc nuw nsw i32 %i.bp to i16
  %i.bq = udiv i16 %.lhs.trunc122, 100
  %i.br = trunc nuw nsw i16 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  %i.bt = getelementptr i8, ptr %0, i64 3
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = urem i32 %1, 100
  %.lhs.trunc124 = trunc nuw nsw i32 %i.bu to i8
  %i.bv = udiv i8 %.lhs.trunc124, 10
  %i.bw = or disjoint i8 %i.bv, 48
  %i.bx = getelementptr i8, ptr %0, i64 4
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = urem i32 %1, 10
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr i8, ptr %0, i64 5
  store i8 %i.ca, ptr %i.cb, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cc = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 21, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.25, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.j, %bb.f, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 5, %bb.j ], [ 6, %bb.l ]
  %i.cd = getelementptr i8, ptr %0, i64 %.0       ; 6 uses
  store i8 46, ptr %i.cd, align 1
  %i.ce = sdiv i32 %2, 1000
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = add i8 %i.cf, 48
  %i.ch = getelementptr i8, ptr %i.cd, i64 1
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = srem i32 %2, 1000
  %.lhs.trunc = trunc nsw i32 %i.ci to i16
  %i.cj = sdiv i16 %.lhs.trunc, 100
  %i.ck = trunc nsw i16 %i.cj to i8
  %i.cl = add nsw i8 %i.ck, 48
  %i.cm = getelementptr i8, ptr %i.cd, i64 2
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = srem i32 %2, 100
  %.lhs.trunc89 = trunc nsw i32 %i.cn to i8
  %i.co = sdiv i8 %.lhs.trunc89, 10
  %i.cp = add nsw i8 %i.co, 48
  %i.cq = getelementptr i8, ptr %i.cd, i64 3
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = srem i32 %2, 10
  %i.cs = trunc nsw i32 %i.cr to i8
  %i.ct = add nsw i8 %i.cs, 48
  %i.cu = getelementptr i8, ptr %i.cd, i64 4
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = getelementptr i8, ptr %i.cd, i64 5
  store i8 0, ptr %i.cv, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @process_parsed_line(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i8 noundef zeroext %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15, i1 noundef zeroext %16, i32 noundef %17, ptr nofree noundef writeonly captures(none) %18, ptr nofree noundef writeonly captures(none) %19) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.b)
  %i.c = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.d = getelementptr i8, ptr %2, i64 216
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %2, i64 4
  store i32 1, ptr %i.e, align 4
  %i.f = load i64, ptr %1, align 8
  %i.g = sext i32 %5 to i64
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, %6                         ; 2 uses
  %i.m = icmp ugt i32 %i.l, 999999
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.h, 1
  store i64 %i.n, ptr %i.i, align 8
  %.pre = load i32, ptr %i.j, align 8
  %.pre109 = add i32 %.pre, %6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i32 [ %.pre109, %bb.b ], [ %i.l, %bb.a ]
  %i.o = urem i32 %.pre-phi, 1000000
  %i.p = mul nuw nsw i32 %i.o, 1000
  %i.q = getelementptr i8, ptr %2, i64 24
  store i32 %i.p, ptr %i.q, align 8
  %i.r = tail call i64 @strlen(ptr noundef %10) #19
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i64 @strlen(ptr noundef %7) #19
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i64 @strlen(ptr noundef %13) #19
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i64 @strlen(ptr noundef %14) #19
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i64 @strlen(ptr noundef %12) #19
  %i.aa = trunc i64 %i.z to i32
  %i.ab = sdiv i32 %17, 2                         ; 2 uses
  %i.ac = select i1 %16, i32 %17, i32 %i.ab
  %i.ad = add i32 %i.ac, 8
  %i.ae = add i32 %i.ad, %i.s
  %i.af = add i32 %i.ae, %i.u
  %i.ag = add i32 %i.af, %i.w
  %i.ah = add i32 %i.ag, %i.y
  %i.ai = add i32 %i.ah, %i.aa                    ; 4 uses
  %i.aj = getelementptr i8, ptr %2, i64 48        ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = icmp ult i32 %i.ai, 262145              ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -13, ptr %18, align 4
  %i.al = load i32, ptr %i.aj, align 8
  %i.am = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef %i.al, i32 noundef 262144)
  store ptr %i.am, ptr %19, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr i8, ptr %2, i64 52
  store i32 %i.ai, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %2, i64 264       ; 3 uses
  %i.ap = zext nneg i32 %i.ai to i64
  tail call void @ws_buffer_assure_space(ptr noundef %i.ao, i64 noundef %i.ap)
  %.val = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %2, i64 280
  %.val103 = load i64, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.val, i64 %.val103 ; 10 uses
  %i.as = tail call i64 @g_strlcpy(ptr noundef %i.ar, ptr noundef %10, i64 noundef 65)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 64) ; 2 uses
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  store i8 %11, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.av, i64 2
  %i.ay = tail call i64 @g_strlcpy(ptr noundef %i.ax, ptr noundef %7, i64 noundef 22)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 21)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nuw nsw i32 %i.au, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.ba            ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.ar, i64 %i.bd
  %i.bf = tail call i64 @g_strlcpy(ptr noundef %i.be, ptr noundef %12, i64 noundef 65)
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 64)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.bi, %i.bc            ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.ar, i64 %i.bk
  %i.bm = tail call i64 @g_strlcpy(ptr noundef %i.bl, ptr noundef %13, i64 noundef 17)
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 16)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 1
  %i.bq = add nuw nsw i32 %i.bp, %i.bj            ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.ar, i64 %i.br
  %i.bt = tail call i64 @g_strlcpy(ptr noundef %i.bs, ptr noundef %14, i64 noundef 257)
end_hunk_0
