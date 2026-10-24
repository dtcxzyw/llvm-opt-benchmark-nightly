Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@read_num_hex:bb.a
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !100 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, -16
  br i1 %i.cv, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = shl nuw nsw i64 %i.cp, 4
  %i.cx = zext i8 %i.cu to i64
  %i.cy = or i64 %i.cw, %i.cx                     ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !100
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !100 ; 2 uses
  %i.de = icmp eq i8 %i.dd, -16
  br i1 %i.de, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = shl nuw nsw i64 %i.cy, 4
  %i.dg = zext i8 %i.dd to i64
  %i.dh = or i64 %i.df, %i.dg                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !100
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !100 ; 2 uses
  %i.dn = icmp eq i8 %i.dm, -16
  br i1 %i.dn, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = shl nuw nsw i64 %i.dh, 4
  %i.dp = zext i8 %i.dm to i64
  %i.dq = or i64 %i.do, %i.dp                     ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !100
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !100 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, -16
  br i1 %i.dw, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = shl nuw nsw i64 %i.dq, 4
  %i.dy = zext i8 %i.dv to i64
  %i.dz = or i64 %i.dx, %i.dy                     ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !100
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !100 ; 2 uses
  %i.ef = icmp eq i8 %i.ee, -16
  br i1 %i.ef, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = shl nuw i64 %i.dz, 4
  %i.eh = zext i8 %i.ee to i64
  %i.ei = or i64 %i.eg, %i.eh                     ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !100
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !100 ; 2 uses
  %i.eo = icmp eq i8 %i.en, -16
  br i1 %i.eo, label %.thread, label %bb.r

bb.q:                                             ; preds = %bb.a
  store ptr @.str.94, ptr %4, align 8, !tbaa !107
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ep = shl i64 %i.ei, 4
  %i.eq = zext i8 %i.en to i64
  %i.er = or i64 %i.ep, %i.eq                     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !100
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !100
  %i.ex = icmp ne i8 %i.ew, -16
  %i.ey = icmp ugt i64 %i.er, -9223372036854775808
  %or.cond = select i1 %i.c, i1 %i.ey, i1 false
  %or.cond52 = select i1 %i.ex, i1 true, i1 %or.cond
  br i1 %or.cond52, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ez = and i32 %2, 128
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.t, label %.preheader, !prof !62

bb.t:                                             ; preds = %bb.s
  store ptr @.str.95, ptr %4, align 8, !tbaa !107
  br label %bb.v

.preheader:                                       ; preds = %bb.s, %.preheader
  %.049 = phi ptr [ %i.fe, %.preheader ], [ %i.es, %bb.s ] ; 5 uses
  %i.fa = load i8, ptr %.049, align 1, !tbaa !100
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !100
  %.not53 = icmp eq i8 %i.fd, -16
  %i.fe = getelementptr inbounds nuw i8, ptr %.049, i64 1
  br i1 %.not53, label %bb.u, label %.preheader, !llvm.loop !465

bb.u:                                             ; preds = %.preheader
  %i.ff = load ptr, ptr %1, align 8, !tbaa !107
  store i8 0, ptr %i.ff, align 1, !tbaa !100
  %i.fg = ptrtoint ptr %.049 to i64
  %i.fh = ptrtoint ptr %i.a to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = shl i64 %i.fi, 8
  %i.fk = or disjoint i64 %i.fj, 1
  store i64 %i.fk, ptr %3, align 8, !tbaa !99
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.fl, align 8, !tbaa !100
  store ptr %.049, ptr %1, align 8, !tbaa !107
  store ptr %.049, ptr %0, align 8, !tbaa !107
  br label %bb.v

.thread:                                          ; preds = %bb.i, %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.p, %bb.b, %bb.r
  %.047.lcssa74 = phi i64 [ 16, %bb.r ], [ 8, %bb.i ], [ 12, %bb.m ], [ 7, %bb.h ], [ 11, %bb.l ], [ 6, %bb.g ], [ 13, %bb.n ], [ 5, %bb.f ], [ 9, %bb.j ], [ 4, %bb.e ], [ 14, %bb.o ], [ 3, %bb.d ], [ 10, %bb.k ], [ 2, %bb.c ], [ 15, %bb.p ], [ 1, %bb.b ]
  %.048.lcssa73 = phi i64 [ %i.er, %bb.r ], [ %i.bx, %bb.i ], [ %i.dh, %bb.m ], [ %i.bo, %bb.h ], [ %i.cy, %bb.l ], [ %i.bf, %bb.g ], [ %i.dq, %bb.n ], [ %i.aw, %bb.f ], [ %i.cg, %bb.j ], [ %i.an, %bb.e ], [ %i.dz, %bb.o ], [ %i.ae, %bb.d ], [ %i.cp, %bb.k ], [ %i.v, %bb.c ], [ %i.ei, %bb.p ], [ %i.m, %bb.b ] ; 2 uses
  %i.fm = select i1 %i.c, i64 12, i64 4
  store i64 %i.fm, ptr %3, align 8, !tbaa !99
  %i.fn = sub i64 0, %.048.lcssa73
  %i.fo = select i1 %i.c, i64 %i.fn, i64 %.048.lcssa73
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !100
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.047.lcssa74
  store ptr %i.fq, ptr %0, align 8, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u, %bb.t, %bb.q
  %.050 = phi i1 [ false, %bb.q ], [ true, %bb.u ], [ false, %bb.t ], [ true, %.thread ]
  ret i1 %.050
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @bigint_set_buf(ptr nofree noundef nonnull captures(none) initializes((0, 4), (8, 16)) %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(address) %5) unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !130
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !106
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult ptr %3, %5
  %i.c = icmp ult ptr %5, %4
  %i.d = and i1 %i.b, %i.c
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.neg = sext i1 %i.d to i32
  %i.i = add i32 %.neg, %i.h                      ; 2 uses
  %i.j = load i8, ptr %3, align 1, !tbaa !100
  %i.k = icmp ugt i8 %i.j, 52
  %.neg56 = sext i1 %i.k to i64
  %i.l = add i64 %1, %.neg56
  %i.m = add i32 %i.i, -750                       ; 2 uses
  %i.n = icmp ult i32 %i.m, -769                  ; 3 uses
  %i.o = zext i32 %i.m to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %4, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.s = icmp eq ptr %i.r, %i.q
  %.neg57 = sext i1 %i.s to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.neg57
  %.050 = select i1 %i.n, ptr %i.t, ptr %4        ; 3 uses
  %i.u = select i1 %i.n, i32 750, i32 %i.i
  %i.v = load i32, ptr %2, align 4, !tbaa !119
  %i.w = sub nsw i32 %i.v, %i.u
  store i32 %i.w, ptr %2, align 4, !tbaa !119
  store i32 1, ptr %0, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  store i64 %i.l, ptr %i.x, align 8, !tbaa !106
  %i.y = icmp ult ptr %3, %.050
  br i1 %i.y, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %bb.c, %bigint_add_u64.exit
  %i.z = phi i32 [ %i.fr, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 7 uses
  %.promoted131 = phi i32 [ %.promoted131212, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 18 uses
  %i.aa = phi i32 [ %i.fs, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 4 uses
  %.promoted = phi i32 [ %.promoted205, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 5 uses
  %.045152 = phi i64 [ %.2, %bigint_add_u64.exit ], [ 0, %bb.c ] ; 2 uses
  %.046151 = phi i32 [ %.147, %bigint_add_u64.exit ], [ 0, %bb.c ] ; 2 uses
  %.048150 = phi ptr [ %.149, %bigint_add_u64.exit ], [ %3, %bb.c ] ; 4 uses
  %.not58 = icmp eq ptr %.048150, %5
  br i1 %.not58, label %bb.q, label %bb.d, !prof !45

bb.d:                                             ; preds = %.lr.ph154
  %i.ab = mul i64 %.045152, 10
  %i.ac = getelementptr inbounds nuw i8, ptr %.048150, i64 1 ; 5 uses
  %i.ad = load i8, ptr %.048150, align 1, !tbaa !100
  %i.ae = add i8 %i.ad, -48
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %i.ab, %i.af                    ; 5 uses
  %i.ah = add i32 %.046151, 1                     ; 6 uses
  %i.ai = icmp eq ptr %i.ac, %.050                ; 2 uses
  %i.aj = and i1 %i.n, %i.ai
  br i1 %i.aj, label %bb.e, label %6, !prof !45

6:                                                ; preds = %bb.d
  %7 = icmp eq i32 %i.ah, 19
  br i1 %7, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = urem i64 %i.ag, 10
  %8 = sub i64 %i.ag, %i.ak
  %i.al = add i64 %8, 1                           ; 2 uses
  %9 = icmp eq i32 %i.ah, 19
  br i1 %9, label %bb.f, label %.split51.preheader

bb.f:                                             ; preds = %bb.e, %6
  %.1 = phi i64 [ %i.al, %bb.e ], [ %i.ag, %6 ]   ; 4 uses
  %i.am = icmp eq i32 %.promoted131, 0
  br i1 %i.am, label %._crit_edge121, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.f
  %wide.trip.count187 = zext i32 %.promoted131 to i64
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %bb.g
  %indvars.iv184 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next185, %bb.g ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv184
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !106
  %.not.i65 = icmp eq i64 %i.ao, 0
  br i1 %.not.i65, label %bb.g, label %._crit_edge121.loopexit

bb.g:                                             ; preds = %.lr.ph120
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bigint_mul_pow10.exit61, label %.lr.ph120, !llvm.loop !13

._crit_edge121.loopexit:                          ; preds = %.lr.ph120
  %i.ap = trunc nuw i64 %indvars.iv184 to i32
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit, %bb.f
  %.018.i.lcssa = phi i32 [ 0, %bb.f ], [ %i.ap, %._crit_edge121.loopexit ] ; 2 uses
  %i.aq = icmp ult i32 %.018.i.lcssa, %.promoted131
  br i1 %i.aq, label %.lr.ph128.preheader, label %bigint_mul_pow10.exit61

.lr.ph128.preheader:                              ; preds = %._crit_edge121
  %i.ar = zext i32 %.018.i.lcssa to i64           ; 4 uses
  %wide.trip.count192 = zext i32 %.promoted131 to i64 ; 2 uses
  %i.as = sub nsw i64 %wide.trip.count192, %i.ar  ; 3 uses
  %xtraiter300 = and i64 %i.as, 1
  %i.at = add nsw i64 %wide.trip.count192, -1
  %i.au = icmp eq i64 %i.at, %i.ar
  br i1 %i.au, label %.lr.ph128.epil.preheader, label %.lr.ph128.preheader.new

.lr.ph128.preheader.new:                          ; preds = %.lr.ph128.preheader
  %unroll_iter305 = and i64 %i.as, -2
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128, %.lr.ph128.preheader.new
  %indvars.iv189 = phi i64 [ %i.ar, %.lr.ph128.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph128 ] ; 3 uses
  %.0.i64126 = phi i64 [ 0, %.lr.ph128.preheader.new ], [ %i.bk, %.lr.ph128 ]
  %niter306 = phi i64 [ 0, %.lr.ph128.preheader.new ], [ %niter306.next.1, %.lr.ph128 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv189 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !106
  %i.ax = zext i64 %i.aw to i128
  %i.ay = mul nuw i128 %i.ax, 10000000000000000000
  %i.az = zext i64 %.0.i64126 to i128
  %i.ba = add nuw i128 %i.ay, %i.az               ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = trunc i128 %i.ba to i64
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv189
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !106
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 10000000000000000000
  %i.bi = add nuw i128 %i.bh, %i.bb               ; 2 uses
  %i.bj = lshr i128 %i.bi, 64                     ; 2 uses
  %i.bk = trunc nuw i128 %i.bj to i64             ; 3 uses
  %i.bl = trunc i128 %i.bi to i64
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !106
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %._crit_edge129.unr-lcssa, label %.lr.ph128, !llvm.loop !14

._crit_edge129.unr-lcssa:                         ; preds = %.lr.ph128
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %._crit_edge129, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %._crit_edge129.unr-lcssa, %.lr.ph128.preheader
  %indvars.iv189.epil.init = phi i64 [ %i.ar, %.lr.ph128.preheader ], [ %indvars.iv.next190.1, %._crit_edge129.unr-lcssa ]
  %.0.i64126.epil.init = phi i64 [ 0, %.lr.ph128.preheader ], [ %i.bk, %._crit_edge129.unr-lcssa ]
  %lcmp.mod304 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod304)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv189.epil.init ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !106
  %i.bo = zext i64 %i.bn to i128
  %i.bp = mul nuw i128 %i.bo, 10000000000000000000
  %i.bq = zext i64 %.0.i64126.epil.init to i128
  %i.br = add nuw i128 %i.bp, %i.bq               ; 2 uses
  %i.bs = lshr i128 %i.br, 64                     ; 2 uses
  %i.bt = trunc nuw i128 %i.bs to i64
  %i.bu = trunc i128 %i.br to i64
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !106
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %._crit_edge129.unr-lcssa, %.lr.ph128.epil.preheader
  %.lcssa285 = phi i128 [ %i.bj, %._crit_edge129.unr-lcssa ], [ %i.bs, %.lr.ph128.epil.preheader ]
  %.lcssa284.a = phi i64 [ %i.bk, %._crit_edge129.unr-lcssa ], [ %i.bt, %.lr.ph128.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa285, 0
  br i1 %.not19.i, label %bigint_mul_pow10.exit61, label %bigint_mul_pow10.exit61.sink.split

bb.h:                                             ; preds = %6
  br i1 %i.ai, label %.split51.preheader, label %bigint_add_u64.exit

.split51.preheader:                               ; preds = %bb.e, %bb.h
  %.19297 = phi i64 [ %i.ag, %bb.h ], [ %i.al, %bb.e ] ; 5 uses
  %i.bv = icmp sgt i32 %i.ah, 18
  br i1 %i.bv, label %.lr.ph103, label %.split51._crit_edge

.lr.ph103:                                        ; preds = %.split51.preheader, %bigint_mul_u64.exit77
  %i.bw = phi i32 [ %i.dk, %bigint_mul_u64.exit77 ], [ %i.z, %.split51.preheader ] ; 3 uses
  %.promoted131216 = phi i32 [ %.promoted131215, %bigint_mul_u64.exit77 ], [ %.promoted131, %.split51.preheader ] ; 3 uses
  %i.bx = phi i32 [ %i.dl, %bigint_mul_u64.exit77 ], [ %i.aa, %.split51.preheader ] ; 3 uses
  %.promoted209 = phi i32 [ %.promoted208, %bigint_mul_u64.exit77 ], [ %.promoted, %.split51.preheader ] ; 3 uses
  %i.by = phi i32 [ %i.dm, %bigint_mul_u64.exit77 ], [ %.promoted, %.split51.preheader ] ; 9 uses
  %.0.i102 = phi i32 [ %i.dn, %bigint_mul_u64.exit77 ], [ %i.ah, %.split51.preheader ] ; 2 uses
  %.not155 = icmp eq i32 %i.by, 0
  br i1 %.not155, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph103
  %wide.trip.count = zext i32 %i.by to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !106
  %.not.i76 = icmp eq i64 %i.ca, 0
  br i1 %.not.i76, label %bb.i, label %._crit_edge.loopexit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bigint_mul_u64.exit77, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cb = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph103
  %.018.i72.lcssa = phi i32 [ 0, %.lr.ph103 ], [ %i.cb, %._crit_edge.loopexit ] ; 2 uses
  %i.cc = icmp ult i32 %.018.i72.lcssa, %i.by
  br i1 %i.cc, label %.lr.ph99.preheader, label %bigint_mul_u64.exit77

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.cd = zext i32 %.018.i72.lcssa to i64         ; 4 uses
  %wide.trip.count172 = zext i32 %i.by to i64     ; 2 uses
  %i.ce = sub nsw i64 %wide.trip.count172, %i.cd  ; 3 uses
  %xtraiter = and i64 %i.ce, 1
  %i.cf = add nsw i64 %wide.trip.count172, -1
  %i.cg = icmp eq i64 %i.cf, %i.cd
  br i1 %i.cg, label %.lr.ph99.epil.preheader, label %.lr.ph99.preheader.new

.lr.ph99.preheader.new:                           ; preds = %.lr.ph99.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99, %.lr.ph99.preheader.new
  %indvars.iv169 = phi i64 [ %i.cd, %.lr.ph99.preheader.new ], [ %indvars.iv.next170.1, %.lr.ph99 ] ; 3 uses
  %.0.i7497 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %i.cw, %.lr.ph99 ]
  %niter = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %niter.next.1, %.lr.ph99 ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv169 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !106
  %i.cj = zext i64 %i.ci to i128
  %i.ck = mul nuw i128 %i.cj, 10000000000000000000
  %i.cl = zext i64 %.0.i7497 to i128
  %i.cm = add nuw i128 %i.ck, %i.cl               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = trunc i128 %i.cm to i64
  store i64 %i.co, ptr %i.ch, align 8, !tbaa !106
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv169
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !106
  %i.cs = zext i64 %i.cr to i128
  %i.ct = mul nuw i128 %i.cs, 10000000000000000000
  %i.cu = add nuw i128 %i.ct, %i.cn               ; 2 uses
  %i.cv = lshr i128 %i.cu, 64                     ; 2 uses
  %i.cw = trunc nuw i128 %i.cv to i64             ; 3 uses
  %i.cx = trunc i128 %i.cu to i64
  store i64 %i.cx, ptr %i.cq, align 8, !tbaa !106
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge100.unr-lcssa, label %.lr.ph99, !llvm.loop !14

._crit_edge100.unr-lcssa:                         ; preds = %.lr.ph99
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge100, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %._crit_edge100.unr-lcssa, %.lr.ph99.preheader
  %indvars.iv169.epil.init = phi i64 [ %i.cd, %.lr.ph99.preheader ], [ %indvars.iv.next170.1, %._crit_edge100.unr-lcssa ]
  %.0.i7497.epil.init = phi i64 [ 0, %.lr.ph99.preheader ], [ %i.cw, %._crit_edge100.unr-lcssa ]
  %lcmp.mod292 = trunc i64 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv169.epil.init ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !106
  %i.da = zext i64 %i.cz to i128
  %i.db = mul nuw i128 %i.da, 10000000000000000000
  %i.dc = zext i64 %.0.i7497.epil.init to i128
  %i.dd = add nuw i128 %i.db, %i.dc               ; 2 uses
  %i.de = lshr i128 %i.dd, 64                     ; 2 uses
  %i.df = trunc nuw i128 %i.de to i64
  %i.dg = trunc i128 %i.dd to i64
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !106
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.unr-lcssa, %.lr.ph99.epil.preheader
  %.lcssa276 = phi i128 [ %i.cv, %._crit_edge100.unr-lcssa ], [ %i.de, %.lr.ph99.epil.preheader ]
  %.lcssa = phi i64 [ %i.cw, %._crit_edge100.unr-lcssa ], [ %i.df, %.lr.ph99.epil.preheader ]
  %.not19.i75 = icmp eq i128 %.lcssa276, 0
  br i1 %.not19.i75, label %bigint_mul_u64.exit77, label %bb.j

bb.j:                                             ; preds = %._crit_edge100
  %i.dh = add i32 %i.by, 1                        ; 6 uses
  store i32 %i.dh, ptr %0, align 8, !tbaa !130
  %i.di = zext i32 %i.by to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.di
  store i64 %.lcssa, ptr %i.dj, align 8, !tbaa !106
  br label %bigint_mul_u64.exit77

bigint_mul_u64.exit77:                            ; preds = %bb.i, %._crit_edge, %._crit_edge100, %bb.j
  %i.dk = phi i32 [ %i.bw, %._crit_edge100 ], [ %i.dh, %bb.j ], [ %i.bw, %._crit_edge ], [ %i.bw, %bb.i ] ; 2 uses
  %.promoted131215 = phi i32 [ %.promoted131216, %._crit_edge100 ], [ %i.dh, %bb.j ], [ %.promoted131216, %._crit_edge ], [ %.promoted131216, %bb.i ] ; 2 uses
  %i.dl = phi i32 [ %i.bx, %._crit_edge100 ], [ %i.dh, %bb.j ], [ %i.bx, %._crit_edge ], [ %i.bx, %bb.i ] ; 2 uses
  %.promoted208 = phi i32 [ %.promoted209, %._crit_edge100 ], [ %i.dh, %bb.j ], [ %.promoted209, %._crit_edge ], [ %.promoted209, %bb.i ] ; 2 uses
  %i.dm = phi i32 [ %i.by, %._crit_edge100 ], [ %i.dh, %bb.j ], [ %i.by, %._crit_edge ], [ %i.by, %bb.i ]
  %i.dn = add nsw i32 %.0.i102, -19               ; 2 uses
  %i.do = icmp sgt i32 %.0.i102, 37
  br i1 %i.do, label %.lr.ph103, label %.split51._crit_edge, !llvm.loop !15

.split51._crit_edge:                              ; preds = %bigint_mul_u64.exit77, %.split51.preheader
  %i.dp = phi i32 [ %i.z, %.split51.preheader ], [ %i.dk, %bigint_mul_u64.exit77 ] ; 4 uses
  %.promoted131214 = phi i32 [ %.promoted131, %.split51.preheader ], [ %.promoted131215, %bigint_mul_u64.exit77 ] ; 4 uses
  %i.dq = phi i32 [ %i.aa, %.split51.preheader ], [ %i.dl, %bigint_mul_u64.exit77 ] ; 12 uses
  %.promoted207 = phi i32 [ %.promoted, %.split51.preheader ], [ %.promoted208, %bigint_mul_u64.exit77 ]
  %.0.i.lcssa = phi i32 [ %i.ah, %.split51.preheader ], [ %i.dn, %bigint_mul_u64.exit77 ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.lcssa, 0
  br i1 %.not.i, label %bigint_mul_pow10.exit61, label %bb.k

bb.k:                                             ; preds = %.split51._crit_edge
  %i.dr = sext i32 %.0.i.lcssa to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !106
  %.not156 = icmp eq i32 %i.dq, 0
  br i1 %.not156, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.k
  %wide.trip.count177 = zext i32 %i.dq to i64
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.l
  %indvars.iv174 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next175, %bb.l ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv174
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !106
  %.not.i82 = icmp eq i64 %i.dv, 0
  br i1 %.not.i82, label %bb.l, label %._crit_edge108.loopexit

bb.l:                                             ; preds = %.lr.ph107
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %bigint_mul_pow10.exit61, label %.lr.ph107, !llvm.loop !13

._crit_edge108.loopexit:                          ; preds = %.lr.ph107
  %i.dw = trunc nuw i64 %indvars.iv174 to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.k
  %.018.i78.lcssa = phi i32 [ 0, %bb.k ], [ %i.dw, %._crit_edge108.loopexit ] ; 2 uses
  %i.dx = icmp ult i32 %.018.i78.lcssa, %i.dq
  br i1 %i.dx, label %.lr.ph115, label %bigint_mul_pow10.exit61

.lr.ph115:                                        ; preds = %._crit_edge108
  %i.dy = zext i64 %i.dt to i128                  ; 3 uses
  %i.dz = zext i32 %.018.i78.lcssa to i64         ; 4 uses
  %wide.trip.count182 = zext i32 %i.dq to i64     ; 2 uses
  %i.ea = sub nsw i64 %wide.trip.count182, %i.dz  ; 3 uses
  %xtraiter293 = and i64 %i.ea, 1
  %i.eb = add nsw i64 %wide.trip.count182, -1
  %i.ec = icmp eq i64 %i.eb, %i.dz
  br i1 %i.ec, label %.epil.preheader, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.lr.ph115
  %unroll_iter298 = and i64 %i.ea, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph115.new
  %indvars.iv179 = phi i64 [ %i.dz, %.lr.ph115.new ], [ %indvars.iv.next180.1, %bb.m ] ; 3 uses
  %.0.i80113 = phi i64 [ 0, %.lr.ph115.new ], [ %i.es, %bb.m ]
  %niter299 = phi i64 [ 0, %.lr.ph115.new ], [ %niter299.next.1, %bb.m ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !106
  %i.ef = zext i64 %i.ee to i128
  %i.eg = mul nuw i128 %i.ef, %i.dy
  %i.eh = zext i64 %.0.i80113 to i128
  %i.ei = add nuw i128 %i.eg, %i.eh               ; 2 uses
  %i.ej = lshr i128 %i.ei, 64
  %i.ek = trunc i128 %i.ei to i64
  store i64 %i.ek, ptr %i.ed, align 8, !tbaa !106
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !106
  %i.eo = zext i64 %i.en to i128
  %i.ep = mul nuw i128 %i.eo, %i.dy
  %i.eq = add nuw i128 %i.ep, %i.ej               ; 2 uses
  %i.er = lshr i128 %i.eq, 64                     ; 2 uses
  %i.es = trunc nuw i128 %i.er to i64             ; 3 uses
  %i.et = trunc i128 %i.eq to i64
  store i64 %i.et, ptr %i.em, align 8, !tbaa !106
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %._crit_edge116.unr-lcssa, label %bb.m, !llvm.loop !14

._crit_edge116.unr-lcssa:                         ; preds = %bb.m
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %._crit_edge116, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge116.unr-lcssa, %.lr.ph115
  %indvars.iv179.epil.init = phi i64 [ %i.dz, %.lr.ph115 ], [ %indvars.iv.next180.1, %._crit_edge116.unr-lcssa ]
  %.0.i80113.epil.init = phi i64 [ 0, %.lr.ph115 ], [ %i.es, %._crit_edge116.unr-lcssa ]
  %lcmp.mod297 = trunc i64 %i.ea to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179.epil.init ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !106
  %i.ew = zext i64 %i.ev to i128
  %i.ex = mul nuw i128 %i.ew, %i.dy
  %i.ey = zext i64 %.0.i80113.epil.init to i128
  %i.ez = add nuw i128 %i.ex, %i.ey               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64                     ; 2 uses
  %i.fb = trunc nuw i128 %i.fa to i64
  %i.fc = trunc i128 %i.ez to i64
  store i64 %i.fc, ptr %i.eu, align 8, !tbaa !106
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.unr-lcssa, %.epil.preheader
  %.lcssa282 = phi i128 [ %i.er, %._crit_edge116.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  %.lcssa281 = phi i64 [ %i.es, %._crit_edge116.unr-lcssa ], [ %i.fb, %.epil.preheader ]
  %.not19.i81 = icmp eq i128 %.lcssa282, 0
  br i1 %.not19.i81, label %bigint_mul_pow10.exit61, label %bigint_mul_pow10.exit61.sink.split

bigint_mul_pow10.exit61.sink.split:               ; preds = %._crit_edge116, %._crit_edge129
  %.promoted131.sink257 = phi i32 [ %.promoted131, %._crit_edge129 ], [ %i.dq, %._crit_edge116 ] ; 2 uses
  %.lcssa250.sink = phi i64 [ %.lcssa284.a, %._crit_edge129 ], [ %.lcssa281, %._crit_edge116 ]
  %.193.ph = phi i64 [ %.1, %._crit_edge129 ], [ %.19297, %._crit_edge116 ]
  %i.fd = add i32 %.promoted131.sink257, 1        ; 5 uses
  store i32 %i.fd, ptr %0, align 8, !tbaa !130
  %i.fe = zext i32 %.promoted131.sink257 to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.fe
  store i64 %.lcssa250.sink, ptr %i.ff, align 8, !tbaa !106
  br label %bigint_mul_pow10.exit61

bigint_mul_pow10.exit61:                          ; preds = %bb.l, %bb.g, %bigint_mul_pow10.exit61.sink.split, %._crit_edge108, %._crit_edge121, %._crit_edge129, %.split51._crit_edge, %._crit_edge116
  %i.fg = phi i32 [ %i.dp, %._crit_edge108 ], [ %i.dp, %.split51._crit_edge ], [ %i.dp, %._crit_edge116 ], [ %i.z, %._crit_edge129 ], [ %i.z, %bb.g ], [ %i.fd, %bigint_mul_pow10.exit61.sink.split ], [ %i.z, %._crit_edge121 ], [ %i.dp, %bb.l ] ; 8 uses
  %.promoted131213 = phi i32 [ %.promoted131214, %._crit_edge108 ], [ %.promoted131214, %.split51._crit_edge ], [ %.promoted131214, %._crit_edge116 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fd, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %.promoted131214, %bb.l ]
  %i.fh = phi i32 [ %i.dq, %._crit_edge108 ], [ %i.dq, %.split51._crit_edge ], [ %i.dq, %._crit_edge116 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fd, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %i.dq, %bb.l ]
  %.promoted206 = phi i32 [ %i.dq, %._crit_edge108 ], [ %.promoted207, %.split51._crit_edge ], [ %i.dq, %._crit_edge116 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fd, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %i.dq, %bb.l ]
  %.193 = phi i64 [ %.19297, %._crit_edge108 ], [ %.19297, %.split51._crit_edge ], [ %.19297, %._crit_edge116 ], [ %.1, %._crit_edge129 ], [ %.1, %bb.g ], [ %.193.ph, %bigint_mul_pow10.exit61.sink.split ], [ %.1, %._crit_edge121 ], [ %.19297, %bb.l ]
  %i.fi = load i64, ptr %i.x, align 8, !tbaa !106 ; 2 uses
  %i.fj = add i64 %i.fi, %.193                    ; 2 uses
  store i64 %i.fj, ptr %i.x, align 8, !tbaa !106
  %.not.i62 = icmp ult i64 %i.fj, %i.fi
  br i1 %.not.i62, label %bb.n, label %bigint_add_u64.exit, !prof !45

bb.n:                                             ; preds = %bigint_mul_pow10.exit61
  %i.fk = icmp ugt i32 %i.fg, 1
  %wide.trip.count203 = zext i32 %i.fg to i64     ; 2 uses
  br i1 %i.fk, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.n, %bb.p
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv200 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !106 ; 2 uses
  %.not21.i = icmp eq i64 %i.fm, -1
  br i1 %.not21.i, label %bb.p, label %bb.o, !prof !45

bb.o:                                             ; preds = %.lr.ph148
  %i.fn = add nuw i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !106
  br label %bigint_add_u64.exit

bb.p:                                             ; preds = %.lr.ph148
  store i64 0, ptr %i.fl, align 8, !tbaa !106
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !466

._crit_edge149:                                   ; preds = %bb.p, %bb.n
  %i.fo = add i32 %i.fg, 1                        ; 5 uses
  store i32 %i.fo, ptr %0, align 8, !tbaa !130
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %wide.trip.count203
  store i64 1, ptr %i.fp, align 8, !tbaa !106
  br label %bigint_add_u64.exit

bb.q:                                             ; preds = %.lr.ph154
  %i.fq = getelementptr inbounds nuw i8, ptr %.048150, i64 1
  br label %bigint_add_u64.exit

bigint_add_u64.exit:                              ; preds = %._crit_edge149, %bb.o, %bigint_mul_pow10.exit61, %bb.h, %bb.q
  %i.fr = phi i32 [ %i.z, %bb.q ], [ %i.z, %bb.h ], [ %i.fg, %bigint_mul_pow10.exit61 ], [ %i.fg, %bb.o ], [ %i.fo, %._crit_edge149 ]
  %.promoted131212 = phi i32 [ %.promoted131, %bb.q ], [ %.promoted131, %bb.h ], [ %.promoted131213, %bigint_mul_pow10.exit61 ], [ %i.fg, %bb.o ], [ %i.fo, %._crit_edge149 ]
  %i.fs = phi i32 [ %i.aa, %bb.q ], [ %i.aa, %bb.h ], [ %i.fh, %bigint_mul_pow10.exit61 ], [ %i.fg, %bb.o ], [ %i.fo, %._crit_edge149 ]
  %.promoted205 = phi i32 [ %.promoted, %bb.q ], [ %.promoted, %bb.h ], [ %.promoted206, %bigint_mul_pow10.exit61 ], [ %i.fg, %bb.o ], [ %i.fo, %._crit_edge149 ]
  %.149 = phi ptr [ %i.fq, %bb.q ], [ %i.ac, %bb.h ], [ %i.ac, %bigint_mul_pow10.exit61 ], [ %i.ac, %bb.o ], [ %i.ac, %._crit_edge149 ] ; 2 uses
  %.147 = phi i32 [ %.046151, %bb.q ], [ %i.ah, %bb.h ], [ 0, %bigint_mul_pow10.exit61 ], [ 0, %bb.o ], [ 0, %._crit_edge149 ]
  %.2 = phi i64 [ %.045152, %bb.q ], [ %i.ag, %bb.h ], [ 0, %bigint_mul_pow10.exit61 ], [ 0, %bb.o ], [ 0, %._crit_edge149 ]
  %i.ft = icmp ult ptr %.149, %.050
  br i1 %i.ft, label %.lr.ph154, label %.loopexit, !llvm.loop !467

.loopexit:                                        ; preds = %bigint_add_u64.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind }

!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}
!llvm.errno.tbaa = !{!44}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{!3, !64}
!4 = distinct !{!4, !64}
!5 = distinct !{!5, !64}
!6 = distinct !{!6, !64}
!7 = distinct !{!7, !64}
!8 = distinct !{!8, !64}
!9 = distinct !{!9, !64}
!10 = distinct !{!10, !64}
!11 = distinct !{!11, !64}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{!15, !64}
!16 = distinct !{!16, !64}
!17 = distinct !{!17, !64}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{!21, !64}
!22 = distinct !{!22, !64}
!23 = distinct !{!23, !64}
!24 = distinct !{!24, !64}
!25 = distinct !{!25, !64}
!26 = distinct !{!26, !64}
!27 = distinct !{!27, !64}
!28 = distinct !{!28, !64}
!29 = distinct !{!29, !64}
!30 = distinct !{!30, !64}
!31 = distinct !{!31, !64}
!32 = distinct !{!32, !64}
!33 = distinct !{!33, !64}
!34 = distinct !{!34, !64}
!35 = distinct !{!35, !64}
!36 = distinct !{!36, !64}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"omnipotent char", !40, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!"__libc_errno", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!"any pointer", !41, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !47}
!49 = !{!"long", !41, i64 0}
!50 = !{!"p1 _ZTS10pool_chunk", !46, i64 0}
!51 = !{!"pool_chunk", !49, i64 0, !50, i64 8}
!52 = !{!51, !49, i64 0}
!53 = !{!51, !50, i64 8}
!54 = !{!"pool_ctx", !49, i64 0, !50, i64 8}
!55 = !{!54, !49, i64 0}
!56 = !{!54, !50, i64 8}
!57 = !{!"yyjson_alc", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!58 = !{!57, !46, i64 0}
!59 = !{!57, !46, i64 8}
!60 = !{!57, !46, i64 16}
!61 = !{!57, !46, i64 24}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!50, !50, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"p1 _ZTS9dyn_chunk", !46, i64 0}
!66 = !{!"dyn_chunk", !49, i64 0, !65, i64 8}
!67 = !{!"", !66, i64 0, !66, i64 16}
!68 = !{!67, !65, i64 8}
!69 = !{!66, !49, i64 0}
!70 = !{!66, !65, i64 8}
!71 = !{!"p1 omnipotent char", !46, i64 0}
!72 = !{!"p1 _ZTS16yyjson_str_chunk", !46, i64 0}
!73 = !{!"yyjson_str_pool", !71, i64 0, !71, i64 8, !49, i64 16, !49, i64 24, !72, i64 32}
!74 = !{!73, !72, i64 32}
!75 = !{!"yyjson_str_chunk", !72, i64 0, !49, i64 8}
!76 = !{!75, !72, i64 0}
!77 = !{!73, !71, i64 0}
!78 = !{!73, !71, i64 8}
!79 = !{!"p1 _ZTS14yyjson_mut_val", !46, i64 0}
!80 = !{!"p1 _ZTS16yyjson_val_chunk", !46, i64 0}
!81 = !{!"yyjson_val_pool", !79, i64 0, !79, i64 8, !49, i64 16, !49, i64 24, !80, i64 32}
!82 = !{!81, !80, i64 32}
!83 = !{!"yyjson_val_chunk", !80, i64 0, !49, i64 8}
!84 = !{!83, !80, i64 0}
!85 = !{!83, !49, i64 8}
!86 = !{!81, !79, i64 0}
!87 = !{!81, !79, i64 8}
!88 = !{!"yyjson_mut_doc", !79, i64 0, !57, i64 8, !73, i64 40, !81, i64 80}
!89 = !{!88, !49, i64 56}
!90 = !{!88, !49, i64 96}
!91 = !{!88, !49, i64 64}
!92 = !{!88, !49, i64 104}
!93 = !{!"p1 _ZTS10yyjson_val", !46, i64 0}
!94 = !{!"yyjson_doc", !93, i64 0, !57, i64 8, !49, i64 40, !49, i64 48, !71, i64 56}
!95 = !{!94, !93, i64 0}
!96 = !{ptr @yyjson_mut_doc_free}
!97 = !{!88, !79, i64 0}
!98 = !{!"yyjson_val", !49, i64 0, !41, i64 8}
!99 = !{!98, !49, i64 0}
!100 = !{!41, !41, i64 0}
!101 = !{!"yyjson_mut_val", !49, i64 0, !41, i64 8, !79, i64 16}
!102 = !{!101, !49, i64 0}
!103 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!104 = !{!101, !79, i64 16}
!105 = !{!"branch_weights", !"expected", i32 1072668, i32 2146410980}
!106 = !{!49, !49, i64 0}
!107 = !{!71, !71, i64 0}
!108 = !{!93, !93, i64 0}
end_hunk_0
