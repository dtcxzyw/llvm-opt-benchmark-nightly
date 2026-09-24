Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/intel-hda?download=true
inline.NumInlined: 74
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@intel_hda_response:bb.a
bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 1552
  %i.ag = load i32, ptr %i.af, align 8
  %.not62 = icmp eq i32 %i.ag, 0
  br i1 %.not62, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr @stderr, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 16
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ah, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %i.aj) #9 ; 0 uses
  %i.al = load ptr, ptr @stderr, align 8
  %i.am = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.al, i32 noundef 1, ptr noundef nonnull @.str.155, ptr noundef nonnull @__func__.intel_hda_response) #9 ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %bb.e
  %i.an = select i1 %1, i32 0, i32 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = or i32 %i.ap, %i.an                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 204 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, 1
  %i.au = and i32 %i.at, 255                      ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 196
  %i.aw = load i64, ptr %i.av, align 4
  %i.ax = shl nuw nsw i32 %i.au, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add i64 %i.aw, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.e, i64 -2200 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  fence seq_cst
  %i.bb = call i32 @address_space_rw(ptr noundef nonnull %i.ba, i64 noundef %i.az, i64 16, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 4294967296) 4, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = add i64 %i.az, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.aq, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  fence seq_cst
  %i.bd = call i32 @address_space_rw(ptr noundef nonnull %i.ba, i64 noundef %i.bc, i64 16, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) 4, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = or i32 %i.bd, %i.bb
  %.not63 = icmp eq i32 %i.be, 0
  br i1 %.not63, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.ac, align 4
  %i.bg = and i32 %i.bf, 4
  %.not64 = icmp eq i32 %i.bg, 0
  br i1 %.not64, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 16
  %i.bj = or i32 %i.bi, 4
  store i32 %i.bj, ptr %i.bh, align 16
  call fastcc void @intel_hda_update_irq(ptr noundef nonnull %i.f)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  store i32 %i.au, ptr %i.ar, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 1552 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ugt i32 %i.bl, 1
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr @stderr, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 16
  %i.bq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bn, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %i.bp) #9 ; 0 uses
  %i.br = load ptr, ptr @stderr, align 8
  %i.bs = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.br, i32 noundef 1, ptr noundef nonnull @.str.156, ptr noundef nonnull @__func__.intel_hda_response, i32 noundef %i.au, i32 noundef %2, i32 noundef %i.aq) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 1512 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 16
  %i.bv = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.bk, align 8
  %i.ca = icmp ugt i32 %i.bz, 1
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr @stderr, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 16
  %i.ce = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cb, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %i.cd) #9 ; 0 uses
  %i.cf = load ptr, ptr @stderr, align 8
  %i.cg = load i32, ptr %i.bt, align 16
  %i.ch = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cf, i32 noundef 1, ptr noundef nonnull @.str.157, ptr noundef nonnull @__func__.intel_hda_response, i32 noundef %i.cg) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ci = load i32, ptr %i.ac, align 4
  %i.cj = and i32 %i.ci, 1
  %.not66 = icmp eq i32 %i.cj, 0
  br i1 %.not66, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 16
  %i.cm = or i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 16
  call fastcc void @intel_hda_update_irq(ptr noundef nonnull %i.f)
  br label %bb.w

bb.r:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = and i32 %i.co, 255
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ct = load i32, ptr %i.bk, align 8
  %i.cu = icmp ugt i32 %i.ct, 1
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr @stderr, align 8
  %i.cw = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.cx = load ptr, ptr %i.cw, align 16
  %i.cy = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cv, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %i.cx) #9 ; 0 uses
  %i.cz = load ptr, ptr @stderr, align 8
  %i.da = load i32, ptr %i.bt, align 16
  %i.db = load i32, ptr %i.bw, align 8
  %i.dc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cz, i32 noundef 1, ptr noundef nonnull @.str.158, ptr noundef nonnull @__func__.intel_hda_response, i32 noundef %i.da, i32 noundef %i.db) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dd = load i32, ptr %i.ac, align 4
  %i.de = and i32 %i.dd, 1
  %.not65 = icmp eq i32 %i.de, 0
  br i1 %.not65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 16
  %i.dh = or i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 16
  call fastcc void @intel_hda_update_irq(ptr noundef nonnull %i.f)
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %bb.p, %bb.u, %bb.v, %bb.r, %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @intel_hda_xfer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 15, ptr noundef nonnull @__func__.HDA_BUS) #9 ; 11 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2776
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %i.h = select i1 %2, ptr %i.g, ptr %i.f         ; 5 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 20
  %i.k = and i32 %i.j, 15
  %i.l = icmp eq i32 %1, %i.k
  br i1 %i.l, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = lshr i32 %i.n, 20
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %1, %i.p
  br i1 %i.q, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = lshr i32 %i.s, 20
  %i.u = and i32 %i.t, 15
  %i.v = icmp eq i32 %1, %i.u
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = lshr i32 %i.x, 20
  %i.z = and i32 %i.y, 15
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.b ], [ %i.r, %bb.c ], [ %i.w, %bb.d ] ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.q, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40 ; 2 uses
  %.not99 = icmp eq i32 %4, 0
  br i1 %.not99, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 1552
  %i.al = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.am = xor i1 %2, true
  %i.an = getelementptr inbounds i8, ptr %i.d, i64 -2200
  %.not91115 = icmp eq i32 %i.af, 0
  br i1 %.not91115, label %.critedge, label %.lr.ph119

bb.f:                                             ; preds = %bb.k
  %.not91 = icmp eq i32 %i.ap, 0
  br i1 %.not91, label %.critedge, label %.lr.ph119, !llvm.loop !14

.lr.ph119:                                        ; preds = %.lr.ph, %bb.f
  %.in = phi i32 [ %i.ap, %bb.f ], [ %i.af, %.lr.ph ]
  %.088100118 = phi ptr [ %i.ca, %bb.f ], [ %3, %.lr.ph ] ; 2 uses
  %.082102117 = phi i32 [ %i.cb, %bb.f ], [ %4, %.lr.ph ] ; 2 uses
  %.0103116 = phi i1 [ %.2, %bb.f ], [ false, %.lr.ph ] ; 2 uses
  %i.ao = phi ptr [ %i.cc, %bb.f ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.ap = add i32 %.in, -1                        ; 2 uses
  %i.aq = load i32, ptr %i.ag, align 4
  %i.ar = load i32, ptr %i.ah, align 4
  %i.as = sub i32 %i.aq, %i.ar
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.082102117, i32 %i.as)
  %i.at = load i32, ptr %i.ai, align 8
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.az = sub i32 %i.ax, %i.ay
  %.184 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.az) ; 5 uses
  %i.ba = load i32, ptr %i.ak, align 8
  %i.bb = icmp ugt i32 %i.ba, 2
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph119
  %i.bc = load ptr, ptr @stderr, align 8
  %i.bd = load ptr, ptr %i.al, align 16
  %i.be = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bc, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %i.bd) #9 ; 0 uses
  %i.bf = load ptr, ptr @stderr, align 8
  %i.bg = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.bh = load i32, ptr %i.aj, align 4
  %i.bi = load ptr, ptr %i.ab, align 8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bf, i32 noundef 1, ptr noundef nonnull @.str.159, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bm, i32 noundef %.184) #9 ; 0 uses
  %.pre = load ptr, ptr %i.ab, align 8
  %.pre109.a = load i32, ptr %i.ai, align 8
  %.pre110 = load i32, ptr %i.aj, align 4
  %.pre111 = zext i32 %.pre109.a to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph119
  %.pre-phi = phi i64 [ %.pre111, %bb.g ], [ %i.au, %.lr.ph119 ]
  %i.bo = phi i32 [ %.pre110, %bb.g ], [ %i.ay, %.lr.ph119 ]
  %i.bp = phi ptr [ %.pre, %bb.g ], [ %i.ao, %.lr.ph119 ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.pre-phi
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = zext i32 %i.bo to i64
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = zext i32 %.184 to i64                   ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  fence seq_cst
  %i.bv = tail call i32 @address_space_rw(ptr noundef nonnull %i.an, i64 noundef %i.bt, i64 16, ptr noundef %.088100118, i64 noundef range(i64 0, 4294967296) %i.bu, i1 noundef zeroext %i.am) #9 ; 0 uses
  %i.bw = load i32, ptr %i.ah, align 4
  %i.bx = add i32 %i.bw, %.184
  store i32 %i.bx, ptr %i.ah, align 4
  %i.by = load i32, ptr %i.aj, align 4
  %i.bz = add i32 %i.by, %.184                    ; 2 uses
  store i32 %i.bz, ptr %i.aj, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.088100118, i64 %i.bu
  %i.cb = sub i32 %.082102117, %.184              ; 2 uses
  %i.cc = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cd = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp eq i32 %i.ch, %i.bz
  br i1 %i.ci, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %.not93 = trunc i32 %i.ck to i1
  %spec.select94 = select i1 %.not93, i1 true, i1 %.0103116 ; 2 uses
  store i32 0, ptr %i.aj, align 4
  %i.cl = add i32 %i.cd, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.ai, align 8
  %i.cm = load i32, ptr %i.ae, align 8
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8
  store i32 0, ptr %i.ah, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.2 = phi i1 [ %spec.select94, %bb.j ], [ %spec.select94, %bb.i ], [ %.0103116, %bb.h ] ; 3 uses
  %.not = icmp eq i32 %i.cb, 0
  br i1 %.not, label %..critedge.loopexit_crit_edge, label %bb.f, !llvm.loop !14

..critedge.loopexit_crit_edge:                    ; preds = %bb.k
  br label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %bb.f, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.e
  %.0.lcssa = phi i1 [ false, %bb.e ], [ false, %.lr.ph ], [ %.2, %..critedge.loopexit_crit_edge ], [ %.2, %bb.f ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cq = and i32 %i.cp, 1
  %.not92 = icmp eq i32 %i.cq, 0
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.cr = ptrtoint ptr %.lcssa to i64
  %i.cs = ptrtoint ptr %i.f to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 56
  %i.cv = and i32 %i.cp, -2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 228
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw i64 %i.cy, 32
  %i.da = zext i32 %i.cv to i64
  %i.db = shl nsw i64 %i.cu, 3
  %i.dc = and i64 %i.db, 4294967288
  %i.dd = add nuw nsw i64 %i.dc, %i.da
  %i.de = add i64 %i.dd, %i.cz
  %i.df = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds i8, ptr %i.d, i64 -2200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.dg, ptr %i.a, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  fence seq_cst
  %i.di = call i32 @address_space_rw(ptr noundef nonnull %i.dh, i64 noundef %i.de, i64 16, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) 4, i1 noundef zeroext true) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 1552
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = icmp ugt i32 %i.dk, 2
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = load ptr, ptr @stderr, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.do = load ptr, ptr %i.dn, align 16
  %i.dp = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dm, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %i.do) #9 ; 0 uses
  %i.dq = load ptr, ptr @stderr, align 8
  %i.dr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dq, i32 noundef 1, ptr noundef nonnull @.str.160) #9 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.0.lcssa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = load i32, ptr %.lcssa, align 8
  %i.dt = or i32 %i.ds, 67108864
  store i32 %i.dt, ptr %.lcssa, align 8
  call fastcc void @intel_hda_update_irq(ptr noundef nonnull %i.e)
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.o, %bb.p, %.thread
  %.087 = phi i1 [ false, %.thread ], [ true, %bb.o ], [ true, %bb.p ], [ false, %bb.d ]
  ret i1 %.087
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @intel_hda_mmio_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 380
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr @regtab, i64 %1 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e

end_hunk_0
