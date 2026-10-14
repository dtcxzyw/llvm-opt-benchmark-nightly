Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/readline?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@readline_completion:bb.a
  %i.af = sext i32 %i.ae to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.ac, i64 noundef range(i64 -17179869184, 17179869177) %i.af, i1 noundef false) #14
  %i.ag = load i32, ptr %i.b, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  store i8 %i.z, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.t, align 4
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ak, ptr %i.t, align 4
  %i.al = load i32, ptr %i.b, align 8
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.b, align 8
  %.pre150 = load ptr, ptr %i.m, align 8
  br label %readline_insert_char.exit

readline_insert_char.exit:                        ; preds = %bb.f, %bb.g
  %i.an = phi i32 [ %i.v, %bb.f ], [ %i.ak, %bb.g ]
  %i.ao = phi i32 [ %i.w, %bb.f ], [ %i.am, %bb.g ]
  %i.ap = phi ptr [ %i.x, %bb.f ], [ %.pre150, %bb.g ] ; 2 uses
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %lftr.wideiv140 = trunc i64 %indvars.iv.next138 to i32
  %exitcond141.not = icmp eq i32 %lftr.wideiv140, %i.p
  br i1 %exitcond141.not, label %._crit_edge123, label %bb.d, !llvm.loop !15

._crit_edge123:                                   ; preds = %readline_insert_char.exit, %bb.c
  %i.aq = phi ptr [ %i.n, %bb.c ], [ %i.ap, %readline_insert_char.exit ]
  %i.ar = icmp sgt i32 %i.p, 0
  br i1 %i.ar, label %bb.h, label %readline_insert_char.exit99

bb.h:                                             ; preds = %._crit_edge123
  %i.as = add i64 %i.o, 4294967295
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %.not95 = icmp eq i8 %i.av, 47
  br i1 %.not95, label %readline_insert_char.exit99, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.b, align 8             ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4100
  %i.ay = load i32, ptr %i.ax, align 4            ; 3 uses
  %.not.i98 = icmp sgt i32 %i.aw, %i.ay
  br i1 %.not.i98, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__.readline_insert_char) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = icmp slt i32 %i.ay, 4095
  br i1 %i.az, label %bb.l, label %readline_insert_char.exit99

bb.l:                                             ; preds = %bb.k
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = sub i32 %i.ay, %i.aw
  %i.be = sext i32 %i.bd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bc, ptr noundef nonnull align 1 %i.bb, i64 noundef range(i64 -17179869184, 17179869177) %i.be, i1 noundef false) #14
  %i.bf = load i32, ptr %i.b, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  store i8 32, ptr %i.bh, align 1
  %i.bi = load <2 x i32>, ptr %i.b, align 8
  %i.bj = add <2 x i32> %i.bi, splat (i32 1)
  store <2 x i32> %i.bj, ptr %i.b, align 8
  br label %readline_insert_char.exit99

bb.m:                                             ; preds = %bb.b
  %i.bk = zext nneg i32 %i.j to i64
  tail call void @qsort(ptr noundef nonnull %i.m, i64 noundef %i.bk, i64 noundef 8, ptr noundef nonnull @completion_comp) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11080 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.h, align 8
  tail call void (ptr, ptr, ...) %i.bm(ptr noundef %i.bn, ptr noundef nonnull @.str.1) #14
  %i.bo = load i32, ptr %i.a, align 8             ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph109.preheader, label %._crit_edge119

.lr.ph109.preheader:                              ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %i.bo to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.loopexit103
  %indvars.iv127 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next128, %.loopexit103 ] ; 3 uses
  %.0108 = phi i32 [ 0, %.lr.ph109.preheader ], [ %.4, %.loopexit103 ]
  %.078107 = phi i32 [ 0, %.lr.ph109.preheader ], [ %spec.select97, %.loopexit103 ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv127
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #15
  %i.bt = trunc i64 %i.bs to i32                  ; 3 uses
  %i.bu = icmp eq i64 %indvars.iv127, 0
  br i1 %i.bu, label %.loopexit103, label %bb.n

bb.n:                                             ; preds = %.lr.ph109
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.0108, i32 %i.bt) ; 3 uses
  %i.bv = icmp sgt i32 %spec.select, 0
  br i1 %i.bv, label %.lr.ph, label %.loopexit103

.lr.ph:                                           ; preds = %bb.n
  %i.bw = load ptr, ptr %i.m, align 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.2105 = phi i32 [ %spec.select, %.lr.ph ], [ %spec.select96, %bb.o ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1
  %.not = icmp eq i8 %i.by, %i.ca
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select96 = select i1 %.not, i32 %.2105, i32 %i.cb ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = sext i32 %spec.select96 to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.o, label %.loopexit103, !llvm.loop !16

.loopexit103:                                     ; preds = %bb.o, %bb.n, %.lr.ph109
  %.4 = phi i32 [ %i.bt, %.lr.ph109 ], [ %spec.select, %bb.n ], [ %spec.select96, %bb.o ] ; 4 uses
  %spec.select97 = tail call i32 @llvm.smax.i32(i32 %.078107, i32 %i.bt) ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph109, !llvm.loop !17

._crit_edge:                                      ; preds = %.loopexit103
  %i.ce = add nuw i32 %spec.select97, 2
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 10)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 80) ; 2 uses
  %i.ch = icmp sgt i32 %.4, 0
  br i1 %i.ch, label %bb.p, label %.loopexit102

bb.p:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10796
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %.4
  br i1 %i.ck, label %.lr.ph114, label %.loopexit102

.lr.ph114:                                        ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 3 uses
  %i.cm = sext i32 %i.cj to i64
  %.pre145 = load ptr, ptr %i.m, align 8
  %.pre146 = load i32, ptr %i.b, align 8
  %.pre147 = load i32, ptr %i.cl, align 4
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph114, %readline_insert_char.exit101
  %i.cn = phi i32 [ %.pre147, %.lr.ph114 ], [ %i.df, %readline_insert_char.exit101 ] ; 4 uses
  %i.co = phi i32 [ %.pre146, %.lr.ph114 ], [ %i.dg, %readline_insert_char.exit101 ] ; 4 uses
  %i.cp = phi ptr [ %.pre145, %.lr.ph114 ], [ %i.dh, %readline_insert_char.exit101 ] ; 2 uses
  %indvars.iv130 = phi i64 [ %i.cm, %.lr.ph114 ], [ %indvars.iv.next131, %readline_insert_char.exit101 ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %indvars.iv130
  %i.cr = load i8, ptr %i.cq, align 1
  %.not.i100 = icmp sgt i32 %i.co, %i.cn
  br i1 %.not.i100, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__.readline_insert_char) #16
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cs = icmp slt i32 %i.cn, 4095
  br i1 %i.cs, label %bb.t, label %readline_insert_char.exit101

bb.t:                                             ; preds = %bb.s
  %i.ct = sext i32 %i.co to i64
  %i.cu = getelementptr inbounds i8, ptr %0, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cw = sub i32 %i.cn, %i.co
  %i.cx = sext i32 %i.cw to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.cv, ptr noundef nonnull align 1 %i.cu, i64 noundef range(i64 -17179869184, 17179869177) %i.cx, i1 noundef false) #14
  %i.cy = load i32, ptr %i.b, align 8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %0, i64 %i.cz
  store i8 %i.cr, ptr %i.da, align 1
  %i.db = load i32, ptr %i.cl, align 4
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  store i32 %i.dc, ptr %i.cl, align 4
  %i.dd = load i32, ptr %i.b, align 8
  %i.de = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.de, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.m, align 8
  br label %readline_insert_char.exit101

readline_insert_char.exit101:                     ; preds = %bb.s, %bb.t
  %i.df = phi i32 [ %i.cn, %bb.s ], [ %i.dc, %bb.t ]
  %i.dg = phi i32 [ %i.co, %bb.s ], [ %i.de, %bb.t ]
  %i.dh = phi ptr [ %i.cp, %bb.s ], [ %.pre, %bb.t ]
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131 to i32
  %exitcond133.not = icmp eq i32 %.4, %lftr.wideiv
  br i1 %exitcond133.not, label %.loopexit102.loopexit, label %bb.q, !llvm.loop !18

.loopexit102.loopexit:                            ; preds = %readline_insert_char.exit101
  %.pre148 = load i32, ptr %i.a, align 8
  %i.di = icmp sgt i32 %.pre148, 0
  br label %.loopexit102

.loopexit102:                                     ; preds = %.loopexit102.loopexit, %bb.p, %._crit_edge
  %i.dj = phi i1 [ %i.di, %.loopexit102.loopexit ], [ true, %bb.p ], [ true, %._crit_edge ]
  %.rhs.trunc = trunc nuw nsw i32 %i.cg to i8
  %1 = udiv i8 80, %.rhs.trunc
  %.zext = zext nneg i8 %1 to i32
  br i1 %i.dj, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %.loopexit102, %bb.w
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.w ], [ 0, %.loopexit102 ] ; 3 uses
  %.182116 = phi i32 [ %.283, %bb.w ], [ 0, %.loopexit102 ]
  %i.dk = load ptr, ptr %i.bl, align 8
  %i.dl = load ptr, ptr %i.h, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv134
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void (ptr, ptr, ...) %i.dk(ptr noundef %i.dl, ptr noundef nonnull @.str.2, i32 noundef %i.cg, ptr noundef %i.dn) #14
  %i.do = add i32 %.182116, 1                     ; 2 uses
  %i.dp = icmp eq i32 %i.do, %.zext
  br i1 %i.dp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph118
  %i.dq = load i32, ptr %i.a, align 8             ; 2 uses
  %i.dr = add i32 %i.dq, -1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp eq i64 %indvars.iv134, %i.ds
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.lr.ph118
  %i.du = load ptr, ptr %i.bl, align 8
  %i.dv = load ptr, ptr %i.h, align 8
  tail call void (ptr, ptr, ...) %i.du(ptr noundef %i.dv, ptr noundef nonnull @.str.1) #14
  %.pre149 = load i32, ptr %i.a, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dw = phi i32 [ %.pre149, %bb.v ], [ %i.dq, %bb.u ]
  %.283 = phi i32 [ 0, %bb.v ], [ %i.do, %bb.u ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next135, %i.dx
  br i1 %i.dy, label %.lr.ph118, label %._crit_edge119, !llvm.loop !19

._crit_edge119:                                   ; preds = %bb.w, %bb.m, %.loopexit102
  %i.dz = load ptr, ptr %i.bl, align 8
  %i.ea = load ptr, ptr %i.h, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 10820
  tail call void (ptr, ptr, ...) %i.dz(ptr noundef %i.ea, ptr noundef nonnull @.str, ptr noundef nonnull %i.eb) #14, !inline_history !9
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = load ptr, ptr %i.h, align 8
  tail call void %i.ed(ptr noundef %i.ee) #14, !inline_history !9
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8200
  store i32 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8204
  store i32 0, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 0, ptr %i.eh, align 8
  br label %readline_insert_char.exit99

readline_insert_char.exit99:                      ; preds = %bb.l, %bb.k, %._crit_edge123, %bb.h, %._crit_edge119
  %i.ei = load i32, ptr %i.a, align 8
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph125, label %.loopexit

.lr.ph125:                                        ; preds = %readline_insert_char.exit99
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8744
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph125, %bb.x
  %indvars.iv142 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next143, %bb.x ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv142
  %i.em = load ptr, ptr %i.el, align 8
  tail call void @g_free(ptr noundef %i.em) #14
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.en = load i32, ptr %i.a, align 8
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next143, %i.eo
  br i1 %i.ep, label %bb.x, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.x, %readline_insert_char.exit99, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @readline_clear_screen(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11080 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11096 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void (ptr, ptr, ...) %i.b(ptr noundef %i.d, ptr noundef nonnull @.str.3) #14
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10820
  tail call void (ptr, ptr, ...) %i.e(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull %i.g) #14, !inline_history !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.c, align 8
  tail call void %i.i(ptr noundef %i.j) #14, !inline_history !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8200
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8204
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @readline_hist_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8728 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %1) #15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit49, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8216
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread.thread.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit49.loopexit, label %bb.i

.loopexit49.loopexit:                             ; preds = %bb.f
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit49

.loopexit49:                                      ; preds = %.loopexit49.loopexit, %bb.c
  %.038 = phi ptr [ %i.h, %bb.c ], [ %i.m, %.loopexit49.loopexit ] ; 4 uses
  %.1 = phi i32 [ %i.d, %bb.c ], [ %i.q, %.loopexit49.loopexit ] ; 7 uses
  %i.r = icmp eq i32 %.1, 63
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8216 ; 3 uses
  %i.t = sext i32 %.1 to i64                      ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = add nuw i32 %.1, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.w
  %i.y = sub i32 63, %.1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.u, ptr noundef nonnull align 1 %i.x, i64 noundef range(i64 -17179869184, 17179869177) %i.aa, i1 noundef false) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8720
  store ptr null, ptr %i.ab, align 8
  %i.ac = icmp slt i32 %.1, 64
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %bb.h ], [ %i.t, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv65
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next66, 64
  br i1 %exitcond68.not, label %.loopexit.thread, label %.lr.ph, !llvm.loop !21

bb.i:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.e, !llvm.loop !22

.loopexit:                                        ; preds = %bb.g
  %i.ag = icmp eq i32 %.1, 64
  br i1 %i.ag, label %.loopexit.thread, label %g_strdup_inline.exit

.loopexit.thread:                                 ; preds = %bb.i, %bb.h, %.loopexit
  %.03672 = phi ptr [ %.038, %.loopexit ], [ %.038, %bb.h ], [ null, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8216 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @g_free(ptr noundef %i.ai) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8224
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.ah, ptr noundef nonnull align 8 dereferenceable(504) %i.aj, i64 noundef 504, i1 noundef false) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8720
  store ptr null, ptr %i.ak, align 8
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph
  %i.al = trunc nsw i64 %indvars.iv65 to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.loopexit.thread
  %.03643 = phi ptr [ %.03672, %.loopexit.thread ], [ %.038, %.thread.loopexit ] ; 2 uses
  %.4 = phi i32 [ 63, %.loopexit.thread ], [ %i.al, %.thread.loopexit ] ; 2 uses
  %i.am = icmp eq ptr %.03643, null
  br i1 %i.am, label %.thread.thread, label %g_strdup_inline.exit

.thread.thread.loopexit:                          ; preds = %bb.e
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread.thread

end_hunk_0
