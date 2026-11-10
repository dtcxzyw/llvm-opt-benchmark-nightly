Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/auditfilter?download=true
inline.NumInlined: 144
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@audit_data_to_entry:bb.a
  %i.j = icmp ugt i32 %i.i, 64
  br i1 %i.j, label %audit_init_entry.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.l = tail call noalias align 8 dereferenceable_or_null(408) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef 3520, i64 noundef range(i64 0, -8589933550) 408) #15 ; 10 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %audit_init_entry.exit.thread.i, label %_kzalloc_noprof.exit.i.i, !prof !17

_kzalloc_noprof.exit.i.i:                         ; preds = %bb.f
  %i.m = shl nuw nsw i32 %i.i, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.n, i32 noundef 3520) #14 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.o, null
  br i1 %.not21.i.i, label %bb.g, label %.preheader56.i, !prof !17

bb.g:                                             ; preds = %_kzalloc_noprof.exit.i.i
  tail call void @kfree(ptr noundef nonnull %i.l) #13
  br label %audit_init_entry.exit.thread.i

.preheader56.i:                                   ; preds = %_kzalloc_noprof.exit.i.i
  %i.p = getelementptr i8, ptr %i.l, i64 320
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load i32, ptr %0, align 4
  %i.r = and i32 %i.q, 16
  %i.s = getelementptr i8, ptr %i.l, i64 36
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.l, i64 40
  store i32 %i.c, ptr %i.t, align 8
  %i.u = load i32, ptr %i.e, align 4
  %i.v = getelementptr i8, ptr %i.l, i64 44
  store i32 %i.u, ptr %i.v, align 4
  %i.w = load i32, ptr %i.h, align 4
  %i.x = getelementptr i8, ptr %i.l, i64 308
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %0, i64 12
  %i.z = getelementptr i8, ptr %i.l, i64 48       ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(256) %i.z, ptr noundef readonly align 4 dereferenceable(256) %i.y, i64 256, i1 false)
  %i.aa = getelementptr i8, ptr %i.l, i64 300     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.preheader56.i
  %indvars.iv63.i = phi i64 [ 0, %.preheader56.i ], [ %indvars.iv.next64.i, %.loopexit.i ] ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.ad = lshr exact i32 -2147483648, %i.ac       ; 2 uses
  %i.ae = and i32 %i.ad, %i.ab
  %.not52.i = icmp eq i32 %i.ae, 0
  br i1 %.not52.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = xor i32 %i.ad, -1
  %i.ag = and i32 %i.ab, %i.af
  store i32 %i.ag, ptr %i.aa, align 4
  %i.ah = getelementptr [8 x i8], ptr @classes, i64 %indvars.iv63.i
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %.not53.i = icmp eq ptr %i.ai, null
  br i1 %.not53.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i ], [ 0, %bb.i ] ; 6 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = or i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.next.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i.1
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i.2
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %.preheader.i, !llvm.loop !36

.loopexit.i:                                      ; preds = %.preheader.i, %bb.i, %bb.h
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 16
  br i1 %exitcond66.not.i, label %audit_to_entry_common.exit, label %bb.h, !llvm.loop !37

audit_init_entry.exit.thread.i:                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.044.i = phi i64 [ -22, %bb.a ], [ -22, %bb.b ], [ -22, %bb.d ], [ -22, %bb.c ], [ -22, %bb.e ], [ -12, %bb.g ], [ -12, %bb.f ]
  %i.bd = inttoptr i64 %.044.i to ptr
  br label %audit_to_entry_common.exit

audit_to_entry_common.exit:                       ; preds = %.loopexit.i, %audit_init_entry.exit.thread.i
  %.043.i = phi ptr [ %i.bd, %audit_init_entry.exit.thread.i ], [ %i.l, %.loopexit.i ] ; 18 uses
  %i.be = icmp ugt ptr %.043.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.be, label %bb.bk, label %bb.j

bb.j:                                             ; preds = %audit_to_entry_common.exit
  %i.bf = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %.not294 = icmp eq i32 %i.bg, 0
  br i1 %.not294, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bh = getelementptr i8, ptr %0, i64 1040
  %i.bi = getelementptr i8, ptr %.043.i, i64 32   ; 5 uses
  %i.bj = getelementptr i8, ptr %.043.i, i64 320  ; 4 uses
  %i.bk = getelementptr i8, ptr %0, i64 780
  %i.bl = getelementptr i8, ptr %0, i64 268
  %i.bm = getelementptr i8, ptr %0, i64 524
  %.phi.trans.insert.i = getelementptr i8, ptr %.043.i, i64 40 ; 2 uses
  %i.bn = getelementptr i8, ptr %.043.i, i64 360  ; 3 uses
  %i.bo = getelementptr i8, ptr %.043.i, i64 304  ; 10 uses
  %i.bp = getelementptr i8, ptr %.043.i, i64 312  ; 3 uses
  %i.bq = getelementptr i8, ptr %.043.i, i64 336  ; 2 uses
  %i.br = getelementptr i8, ptr %.043.i, i64 344  ; 2 uses
  %i.bs = getelementptr i8, ptr %.043.i, i64 352  ; 2 uses
  %i.bt = getelementptr i8, ptr %.043.i, i64 328
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.bc
  %.0122293 = phi i32 [ 0, %.lr.ph ], [ %i.hb, %bb.bc ] ; 2 uses
  %.0213292 = phi i64 [ %i.a, %.lr.ph ], [ %.1214, %bb.bc ] ; 15 uses
  %.0215291 = phi ptr [ %i.bh, %.lr.ph ], [ %.1216, %bb.bc ] ; 20 uses
  %i.bu = load ptr, ptr %i.bj, align 8
  %i.bv = sext i32 %.0122293 to i64               ; 4 uses
  %i.bw = getelementptr [32 x i8], ptr %i.bu, i64 %i.bv ; 20 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bk, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 5)
  switch i32 %i.bz, label %audit_to_op.exit [
    i32 8, label %bb.l
    i32 6, label %.critedge.fold.split.i
    i32 1, label %.critedge.fold.split7.i
    i32 9, label %.critedge.fold.split8.i
    i32 2, label %.critedge.fold.split9.i
    i32 4, label %.critedge.fold.split10.i
    i32 10, label %.critedge.fold.split11.i
    i32 12, label %.critedge.fold.split12.i
  ]

.critedge.fold.split.i:                           ; preds = %bb.k
  br label %bb.l

.critedge.fold.split7.i:                          ; preds = %bb.k
  br label %bb.l

.critedge.fold.split8.i:                          ; preds = %bb.k
  br label %bb.l

.critedge.fold.split9.i:                          ; preds = %bb.k
  br label %bb.l

.critedge.fold.split10.i:                         ; preds = %bb.k
  br label %bb.l

.critedge.fold.split11.i:                         ; preds = %bb.k
  br label %bb.l

.critedge.fold.split12.i:                         ; preds = %bb.k
  br label %bb.l

audit_to_op.exit:                                 ; preds = %bb.k
  %i.ca = getelementptr i8, ptr %i.bw, i64 24
  store i32 8, ptr %i.ca, align 8
  br label %audit_field_valid.exit.thread

bb.l:                                             ; preds = %bb.k, %.critedge.fold.split8.i, %.critedge.fold.split11.i, %.critedge.fold.split.i, %.critedge.fold.split9.i, %.critedge.fold.split7.i, %.critedge.fold.split10.i, %.critedge.fold.split12.i
  %.0.lcssa.i.ph = phi i32 [ 7, %.critedge.fold.split12.i ], [ 5, %.critedge.fold.split10.i ], [ 2, %.critedge.fold.split7.i ], [ 4, %.critedge.fold.split9.i ], [ 1, %.critedge.fold.split.i ], [ 6, %.critedge.fold.split11.i ], [ 3, %.critedge.fold.split8.i ], [ 0, %bb.k ]
  %i.cb = getelementptr i8, ptr %i.bw, i64 24     ; 7 uses
  store i32 %.0.lcssa.i.ph, ptr %i.cb, align 8
  %i.cc = getelementptr [4 x i8], ptr %i.bl, i64 %i.bv
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  store i32 %i.cd, ptr %i.bw, align 8
  %i.ce = getelementptr [4 x i8], ptr %i.bm, i64 %i.bv
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = icmp eq i32 %i.cd, 9
  %i.ch = icmp eq i32 %i.cf, -1
  %or.cond = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 24, ptr %i.bw, align 8
  %i.ci = load i32, ptr %i.bi, align 8
  %i.cj = or i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bi, align 8
  %.pre = load i32, ptr %i.bw, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = phi i32 [ %.pre, %bb.m ], [ %i.cd, %bb.l ] ; 4 uses
  %.0121 = phi i32 [ 0, %bb.m ], [ %i.cf, %bb.l ] ; 29 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8 ; 4 uses
  switch i32 %i.ck, label %._crit_edge.i [
    i32 12, label %bb.o
    i32 26, label %bb.p
    i32 106, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  switch i32 %.pre.i, label %audit_field_valid.exit.thread [
    i32 5, label %.thread38.i.a
    i32 0, label %.thread38.i.a
  ]

bb.p:                                             ; preds = %bb.n
  %.not.i = icmp eq i32 %.pre.i, 6
  br i1 %.not.i, label %.thread39.i, label %audit_field_valid.exit.thread

bb.q:                                             ; preds = %bb.n
  %i.cl = and i32 %.pre.i, -2
  %switch = icmp eq i32 %i.cl, 6
  br i1 %switch, label %audit_field_valid.exit.thread, label %.thread39.i

._crit_edge.i:                                    ; preds = %bb.n
  %cond.i = icmp eq i32 %.pre.i, 6
  br i1 %cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i
  switch i32 %i.ck, label %audit_field_valid.exit.thread [
    i32 26, label %bb.s
    i32 210, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %._crit_edge.i
  switch i32 %i.ck, label %audit_field_valid.exit.thread [
    i32 200, label %bb.t
    i32 201, label %bb.t
    i32 202, label %bb.t
    i32 203, label %bb.t
    i32 10, label %bb.t
    i32 101, label %bb.t
    i32 1, label %.thread38.i.a
    i32 2, label %.thread38.i.a
    i32 3, label %.thread38.i.a
    i32 4, label %.thread38.i.a
    i32 9, label %.thread38.i.a
    i32 109, label %.thread38.i.a
    i32 5, label %.thread38.i.a
    i32 6, label %.thread38.i.a
    i32 7, label %.thread38.i.a
    i32 8, label %.thread38.i.a
    i32 110, label %.thread38.i.a
    i32 0, label %.thread38.i.a
    i32 12, label %.thread38.i.a
    i32 18, label %.thread38.i.a
    i32 100, label %.thread38.i.a
    i32 103, label %.thread38.i.a
    i32 104, label %.thread38.i.a
    i32 102, label %.thread38.i.a
    i32 25, label %.thread38.i.a
    i32 16, label %.thread38.i.a
    i32 17, label %.thread38.i.a
    i32 22, label %.thread38.i.a
    i32 23, label %.thread38.i.a
    i32 113, label %.thread38.i.a
    i32 13, label %.thread39.i
    i32 14, label %.thread39.i
    i32 15, label %.thread39.i
    i32 19, label %.thread39.i
    i32 20, label %.thread39.i
    i32 21, label %.thread39.i
    i32 105, label %.thread39.i
    i32 107, label %.thread39.i
    i32 210, label %.thread39.i
    i32 24, label %.thread39.i
    i32 11, label %.thread39.i
    i32 26, label %.thread39.i
    i32 106, label %.thread39.i
    i32 108, label %.thread39.i
    i32 111, label %.thread39.i
    i32 112, label %.thread39.i
  ]

.thread38.i.a:                                    ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.o, %bb.o
  %i.cm = load i32, ptr %i.cb, align 8
  %i.cn = and i32 %i.cm, -2
  %switch.i = icmp eq i32 %i.cn, 2
  br i1 %switch.i, label %audit_field_valid.exit.thread, label %bb.t

.thread39.i:                                      ; preds = %bb.q, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.p
  %i.co = load i32, ptr %i.cb, align 8
  %switch31.i = icmp ult i32 %i.co, 2
  br i1 %switch31.i, label %bb.t, label %audit_field_valid.exit.thread

bb.t:                                             ; preds = %.thread39.i, %.thread38.i.a, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  switch i32 %i.ck, label %audit_field_valid.exit.thread227 [
    i32 24, label %bb.u
    i32 106, label %bb.v
    i32 108, label %bb.w
    i32 111, label %bb.x
    i32 113, label %bb.y
    i32 9, label %bb.z
    i32 1, label %bb.z
    i32 2, label %bb.z
    i32 3, label %bb.z
    i32 4, label %bb.z
    i32 109, label %bb.z
    i32 5, label %bb.aa
    i32 6, label %bb.aa
    i32 7, label %bb.aa
    i32 8, label %bb.aa
    i32 110, label %bb.aa
    i32 11, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ac
    i32 15, label %bb.ac
    i32 16, label %bb.ac
    i32 17, label %bb.ac
    i32 19, label %bb.ac
    i32 20, label %bb.ac
    i32 21, label %bb.ac
    i32 22, label %bb.ac
    i32 23, label %bb.ac
    i32 105, label %bb.ag
    i32 107, label %bb.al
    i32 102, label %bb.ap
    i32 210, label %bb.au
    i32 112, label %bb.ax
  ]

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %i.bw, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %switch32.i = icmp ult i32 %i.cq, 2
  br i1 %switch32.i, label %audit_field_valid.exit.thread227, label %audit_field_valid.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.cr = getelementptr i8, ptr %i.bw, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %.not28.i = icmp ult i32 %i.cs, 16
  br i1 %.not28.i, label %audit_field_valid.exit.thread227, label %audit_field_valid.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.ct = getelementptr i8, ptr %i.bw, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = and i32 %i.cu, -61441
  %.not27.i = icmp eq i32 %i.cv, 0
  br i1 %.not27.i, label %audit_field_valid.exit.thread227, label %audit_field_valid.exit.thread

bb.x:                                             ; preds = %bb.t
  %i.cw = getelementptr i8, ptr %i.bw, i64 8
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = icmp ugt i32 %i.cx, 25
  br i1 %i.cy, label %audit_field_valid.exit.thread, label %audit_field_valid.exit.thread227

bb.y:                                             ; preds = %bb.t
  %i.cz = getelementptr i8, ptr %i.bw, i64 8
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp ugt i32 %i.da, 45
  br i1 %i.db, label %audit_field_valid.exit.thread, label %audit_field_valid.exit.thread227

bb.z:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.dc = getelementptr i8, ptr %i.bw, i64 8
  store i32 %.0121, ptr %i.dc, align 8
  %.not271 = icmp eq i32 %.0121, -1
  br i1 %.not271, label %audit_field_valid.exit.thread, label %bb.bc

bb.aa:                                            ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.dd = getelementptr i8, ptr %i.bw, i64 8
  store i32 %.0121, ptr %i.dd, align 8
  %.not270 = icmp eq i32 %.0121, -1
  br i1 %.not270, label %audit_field_valid.exit.thread, label %bb.bc

bb.ab:                                            ; preds = %bb.t
  %i.de = getelementptr i8, ptr %i.bw, i64 8
  store i32 %.0121, ptr %i.de, align 8
  store ptr %i.bw, ptr %i.bt, align 8
  br label %bb.bc

bb.ac:                                            ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.df = zext i32 %.0121 to i64                  ; 6 uses
  %i.dg = icmp eq ptr %.0215291, null
  %i.dh = icmp eq i32 %.0121, 0
  %or.cond.i = or i1 %i.dg, %i.dh
  %i.di = icmp ult i64 %.0213292, %i.df
  %or.cond265 = select i1 %or.cond.i, i1 true, i1 %i.di
  br i1 %or.cond265, label %audit_unpack_string.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = icmp ugt i32 %.0121, 4096
  br i1 %i.dj, label %audit_unpack_string.exit.thread, label %_kmalloc_noprof.exit.i

_kmalloc_noprof.exit.i:                           ; preds = %bb.ad
  %i.dk = add nuw nsw i64 %i.df, 1
  %i.dl = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.dk, i32 noundef 3264) #14 ; 8 uses
  %.not.i141 = icmp eq ptr %i.dl, null
  br i1 %.not.i141, label %audit_unpack_string.exit.thread, label %audit_unpack_string.exit, !prof !17

audit_unpack_string.exit:                         ; preds = %_kmalloc_noprof.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull align 1 %.0215291, i64 %i.df, i1 false)
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.df
  store i8 0, ptr %i.dm, align 1
  %i.dn = getelementptr i8, ptr %.0215291, i64 %i.df ; 2 uses
  %i.do = sub nuw i64 %.0213292, %i.df            ; 2 uses
  %i.dp = icmp ugt ptr %i.dl, inttoptr (i64 -4096 to ptr)
  br i1 %i.dp, label %audit_unpack_string.exit.thread, label %bb.ae

audit_unpack_string.exit.thread:                  ; preds = %_kmalloc_noprof.exit.i, %bb.ad, %bb.ac, %audit_unpack_string.exit
  %.0.i142233 = phi ptr [ %i.dl, %audit_unpack_string.exit ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit.i ], [ inttoptr (i64 -22 to ptr), %bb.ac ], [ inttoptr (i64 -36 to ptr), %bb.ad ]
  %i.dq = ptrtoint ptr %.0.i142233 to i64
  %i.dr = trunc nsw i64 %i.dq to i32
  br label %audit_field_valid.exit.thread

bb.ae:                                            ; preds = %audit_unpack_string.exit
  %i.ds = load i32, ptr %i.bo, align 8
  %i.dt = add i32 %i.ds, %.0121
  store i32 %i.dt, ptr %i.bo, align 8
  %i.du = getelementptr i8, ptr %i.bw, i64 8
  store ptr %i.dl, ptr %i.du, align 8
  %i.dv = load i32, ptr %i.bw, align 8
  %i.dw = load i32, ptr %i.cb, align 8
  %i.dx = getelementptr i8, ptr %i.bw, i64 16
  %i.dy = tail call i32 @security_audit_rule_init(i32 noundef %i.dv, i32 noundef %i.dw, ptr noundef nonnull %i.dl, ptr noundef %i.dx, i32 noundef 3264) #13 ; 2 uses
  switch i32 %i.dy, label %audit_field_valid.exit.thread [
    i32 -22, label %bb.af
    i32 0, label %bb.bc
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dz = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef nonnull %i.dl) #16 ; 0 uses
  br label %bb.bc

bb.ag:                                            ; preds = %bb.t
  %i.ea = zext i32 %.0121 to i64                  ; 6 uses
  %i.eb = icmp eq ptr %.0215291, null
  %i.ec = icmp eq i32 %.0121, 0
  %or.cond.i143 = or i1 %i.eb, %i.ec
  %i.ed = icmp ult i64 %.0213292, %i.ea
  %or.cond266 = select i1 %or.cond.i143, i1 true, i1 %i.ed
  br i1 %or.cond266, label %audit_unpack_string.exit153.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = icmp ugt i32 %.0121, 4096
  br i1 %i.ee, label %audit_unpack_string.exit153.thread, label %_kmalloc_noprof.exit.i144

_kmalloc_noprof.exit.i144:                        ; preds = %bb.ah
  %i.ef = add nuw nsw i64 %i.ea, 1
  %i.eg = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.ef, i32 noundef 3264) #14 ; 7 uses
  %.not.i146 = icmp eq ptr %i.eg, null
  br i1 %.not.i146, label %audit_unpack_string.exit153.thread, label %audit_unpack_string.exit153, !prof !17

audit_unpack_string.exit153:                      ; preds = %_kmalloc_noprof.exit.i144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 1 %.0215291, i64 %i.ea, i1 false)
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.ea
  store i8 0, ptr %i.eh, align 1
  %i.ei = getelementptr i8, ptr %.0215291, i64 %i.ea
  %i.ej = sub nuw i64 %.0213292, %i.ea
  %i.ek = icmp ugt ptr %i.eg, inttoptr (i64 -4096 to ptr)
  br i1 %i.ek, label %audit_unpack_string.exit153.thread, label %bb.ai

audit_unpack_string.exit153.thread:               ; preds = %_kmalloc_noprof.exit.i144, %bb.ah, %bb.ag, %audit_unpack_string.exit153
  %.0.i147239 = phi ptr [ %i.eg, %audit_unpack_string.exit153 ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit.i144 ], [ inttoptr (i64 -22 to ptr), %bb.ag ], [ inttoptr (i64 -36 to ptr), %bb.ah ]
  %i.el = ptrtoint ptr %.0.i147239 to i64
  %i.em = trunc nsw i64 %i.el to i32
  br label %audit_field_valid.exit.thread

bb.ai:                                            ; preds = %audit_unpack_string.exit153
  %i.en = load i32, ptr %i.cb, align 8
  %i.eo = tail call i32 @audit_to_watch(ptr noundef %i.bi, ptr noundef nonnull %i.eg, i32 noundef %.0121, i32 noundef %i.en) #13 ; 2 uses
  %.not137 = icmp eq i32 %i.eo, 0
  br i1 %.not137, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @kfree(ptr noundef nonnull %i.eg) #13
  br label %audit_field_valid.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ep = load i32, ptr %i.bo, align 8
  %i.eq = add i32 %i.ep, %.0121
  store i32 %i.eq, ptr %i.bo, align 8
  br label %bb.bc

bb.al:                                            ; preds = %bb.t
  %i.er = zext i32 %.0121 to i64                  ; 6 uses
  %i.es = icmp eq ptr %.0215291, null
  %i.et = icmp eq i32 %.0121, 0
  %or.cond.i154 = or i1 %i.es, %i.et
  %i.eu = icmp ult i64 %.0213292, %i.er
  %or.cond267 = select i1 %or.cond.i154, i1 true, i1 %i.eu
  br i1 %or.cond267, label %audit_unpack_string.exit164.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = icmp ugt i32 %.0121, 4096
  br i1 %i.ev, label %audit_unpack_string.exit164.thread, label %_kmalloc_noprof.exit.i155

_kmalloc_noprof.exit.i155:                        ; preds = %bb.am
  %i.ew = add nuw nsw i64 %i.er, 1
  %i.ex = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.ew, i32 noundef 3264) #14 ; 7 uses
  %.not.i157 = icmp eq ptr %i.ex, null
  br i1 %.not.i157, label %audit_unpack_string.exit164.thread, label %audit_unpack_string.exit164, !prof !17

audit_unpack_string.exit164:                      ; preds = %_kmalloc_noprof.exit.i155
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr nonnull align 1 %.0215291, i64 %i.er, i1 false)
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.er
  store i8 0, ptr %i.ey, align 1
  %i.ez = getelementptr i8, ptr %.0215291, i64 %i.er
  %i.fa = sub nuw i64 %.0213292, %i.er
  %i.fb = icmp ugt ptr %i.ex, inttoptr (i64 -4096 to ptr)
  br i1 %i.fb, label %audit_unpack_string.exit164.thread, label %bb.an

audit_unpack_string.exit164.thread:               ; preds = %_kmalloc_noprof.exit.i155, %bb.am, %bb.al, %audit_unpack_string.exit164
  %.0.i158245 = phi ptr [ %i.ex, %audit_unpack_string.exit164 ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit.i155 ], [ inttoptr (i64 -22 to ptr), %bb.al ], [ inttoptr (i64 -36 to ptr), %bb.am ]
  %i.fc = ptrtoint ptr %.0.i158245 to i64
  %i.fd = trunc nsw i64 %i.fc to i32
  br label %audit_field_valid.exit.thread

bb.an:                                            ; preds = %audit_unpack_string.exit164
  %i.fe = load i32, ptr %i.cb, align 8
  %i.ff = tail call i32 @audit_make_tree(ptr noundef %i.bi, ptr noundef nonnull %i.ex, i32 noundef %i.fe) #13 ; 2 uses
  tail call void @kfree(ptr noundef nonnull %i.ex) #13
  %.not136 = icmp eq i32 %i.ff, 0
  br i1 %.not136, label %bb.ao, label %audit_field_valid.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.fg = load i32, ptr %i.bo, align 8
  %i.fh = add i32 %i.fg, %.0121
  store i32 %i.fh, ptr %i.bo, align 8
  br label %bb.bc

bb.ap:                                            ; preds = %bb.t
  %i.fi = getelementptr i8, ptr %i.bw, i64 8
  store i32 %.0121, ptr %i.fi, align 8
  %i.fj = load i32, ptr %.phi.trans.insert.i, align 8
  switch i32 %i.fj, label %audit_field_valid.exit.thread [
    i32 4, label %bb.aq
    i32 7, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.fk = load ptr, ptr %i.bq, align 8
  %.not12.i = icmp eq ptr %i.fk, null
  br i1 %.not12.i, label %bb.ar, label %audit_field_valid.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load ptr, ptr %i.br, align 8
  %.not13.i = icmp eq ptr %i.fl, null
  br i1 %.not13.i, label %bb.as, label %audit_field_valid.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.fm = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.fm, null
  br i1 %.not14.i, label %bb.at, label %audit_field_valid.exit.thread.thread329

bb.at:                                            ; preds = %bb.as
  %i.fn = load i32, ptr %i.cb, align 8
  %switch.i166 = icmp ult i32 %i.fn, 2
  br i1 %switch.i166, label %audit_to_inode.exit, label %audit_field_valid.exit.thread.thread

audit_to_inode.exit:                              ; preds = %bb.at
  store ptr %i.bw, ptr %i.bq, align 8
  br label %bb.bc

bb.au:                                            ; preds = %bb.t
  %i.fo = load ptr, ptr %i.bp, align 8
  %i.fp = icmp ne ptr %i.fo, null
  %i.fq = icmp ugt i32 %.0121, 256
  %or.cond3 = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond3, label %audit_field_valid.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = zext nneg i32 %.0121 to i64             ; 6 uses
  %i.fs = icmp eq ptr %.0215291, null
  %i.ft = icmp eq i32 %.0121, 0
  %or.cond.i167 = or i1 %i.fs, %i.ft
  %i.fu = icmp ult i64 %.0213292, %i.fr
  %or.cond268 = select i1 %or.cond.i167, i1 true, i1 %i.fu
  br i1 %or.cond268, label %audit_unpack_string.exit177.thread, label %_kmalloc_noprof.exit.i168

_kmalloc_noprof.exit.i168:                        ; preds = %bb.av
  %i.fv = add nuw nsw i64 %i.fr, 1
  %i.fw = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.fv, i32 noundef 3264) #14 ; 6 uses
  %.not.i170 = icmp eq ptr %i.fw, null
  br i1 %.not.i170, label %audit_unpack_string.exit177.thread, label %audit_unpack_string.exit177, !prof !17

audit_unpack_string.exit177:                      ; preds = %_kmalloc_noprof.exit.i168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull align 1 %.0215291, i64 %i.fr, i1 false)
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.fr
  store i8 0, ptr %i.fx, align 1
  %i.fy = icmp ugt ptr %i.fw, inttoptr (i64 -4096 to ptr)
  br i1 %i.fy, label %audit_unpack_string.exit177.thread, label %bb.aw

audit_unpack_string.exit177.thread:               ; preds = %_kmalloc_noprof.exit.i168, %bb.av, %audit_unpack_string.exit177
  %.0.i171253 = phi ptr [ %i.fw, %audit_unpack_string.exit177 ], [ inttoptr (i64 -22 to ptr), %bb.av ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit.i168 ]
  %i.fz = ptrtoint ptr %.0.i171253 to i64
  %i.ga = trunc nsw i64 %i.fz to i32
  br label %audit_field_valid.exit.thread

bb.aw:                                            ; preds = %audit_unpack_string.exit177
  %i.gb = sub nuw i64 %.0213292, %i.fr
  %i.gc = getelementptr i8, ptr %.0215291, i64 %i.fr
  %i.gd = load i32, ptr %i.bo, align 8
  %i.ge = add i32 %i.gd, %.0121
  store i32 %i.ge, ptr %i.bo, align 8
  store ptr %i.fw, ptr %i.bp, align 8
  br label %bb.bc

bb.ax:                                            ; preds = %bb.t
  %i.gf = load ptr, ptr %i.bn, align 8
  %i.gg = icmp ne ptr %i.gf, null
  %i.gh = icmp ugt i32 %.0121, 4096
  %or.cond5 = select i1 %i.gg, i1 true, i1 %i.gh
  br i1 %or.cond5, label %audit_field_valid.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = zext nneg i32 %.0121 to i64             ; 6 uses
  %i.gj = icmp eq ptr %.0215291, null
  %i.gk = icmp eq i32 %.0121, 0
  %or.cond.i178 = or i1 %i.gj, %i.gk
  %i.gl = icmp ult i64 %.0213292, %i.gi
  %or.cond269 = select i1 %or.cond.i178, i1 true, i1 %i.gl
  br i1 %or.cond269, label %audit_unpack_string.exit188.thread, label %_kmalloc_noprof.exit.i179

_kmalloc_noprof.exit.i179:                        ; preds = %bb.ay
  %i.gm = add nuw nsw i64 %i.gi, 1
  %i.gn = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.gm, i32 noundef 3264) #14 ; 7 uses
  %.not.i181 = icmp eq ptr %i.gn, null
  br i1 %.not.i181, label %audit_unpack_string.exit188.thread, label %audit_unpack_string.exit188, !prof !17

audit_unpack_string.exit188:                      ; preds = %_kmalloc_noprof.exit.i179
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 1 %.0215291, i64 %i.gi, i1 false)
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gi
  store i8 0, ptr %i.go, align 1
  %i.gp = getelementptr i8, ptr %.0215291, i64 %i.gi
  %i.gq = sub nuw i64 %.0213292, %i.gi
  %i.gr = icmp ugt ptr %i.gn, inttoptr (i64 -4096 to ptr)
  br i1 %i.gr, label %audit_unpack_string.exit188.thread, label %bb.az

audit_unpack_string.exit188.thread:               ; preds = %_kmalloc_noprof.exit.i179, %bb.ay, %audit_unpack_string.exit188
  %.0.i182259 = phi ptr [ %i.gn, %audit_unpack_string.exit188 ], [ inttoptr (i64 -22 to ptr), %bb.ay ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit.i179 ]
  %i.gs = ptrtoint ptr %.0.i182259 to i64
  %i.gt = trunc nsw i64 %i.gs to i32
  br label %audit_field_valid.exit.thread

bb.az:                                            ; preds = %audit_unpack_string.exit188
  %i.gu = tail call ptr @audit_alloc_mark(ptr noundef %i.bi, ptr noundef nonnull %i.gn, i32 noundef %.0121, ptr noundef null) #13 ; 3 uses
  %i.gv = icmp ugt ptr %i.gu, inttoptr (i64 -4096 to ptr)
  br i1 %i.gv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @kfree(ptr noundef nonnull %i.gn) #13
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = trunc i64 %i.gw to i32
  br label %audit_field_valid.exit.thread

bb.bb:                                            ; preds = %bb.az
  %i.gy = load i32, ptr %i.bo, align 8
  %i.gz = add i32 %i.gy, %.0121
  store i32 %i.gz, ptr %i.bo, align 8
  store ptr %i.gu, ptr %i.bn, align 8
  br label %bb.bc

audit_field_valid.exit.thread227:                 ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %i.ha = getelementptr i8, ptr %i.bw, i64 8
  store i32 %.0121, ptr %i.ha, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %audit_to_inode.exit, %bb.ae, %bb.af, %bb.aa, %bb.z, %audit_field_valid.exit.thread227, %bb.bb, %bb.aw, %bb.ao, %bb.ak, %bb.ab
  %.1216 = phi ptr [ %.0215291, %audit_field_valid.exit.thread227 ], [ %.0215291, %bb.z ], [ %.0215291, %bb.aa ], [ %.0215291, %bb.ab ], [ %i.dn, %bb.af ], [ %i.dn, %bb.ae ], [ %i.ei, %bb.ak ], [ %i.ez, %bb.ao ], [ %.0215291, %audit_to_inode.exit ], [ %i.gc, %bb.aw ], [ %i.gp, %bb.bb ]
  %.1214 = phi i64 [ %.0213292, %audit_field_valid.exit.thread227 ], [ %.0213292, %bb.z ], [ %.0213292, %bb.aa ], [ %.0213292, %bb.ab ], [ %i.do, %bb.af ], [ %i.do, %bb.ae ], [ %i.ej, %bb.ak ], [ %i.fa, %bb.ao ], [ %.0213292, %audit_to_inode.exit ], [ %i.gb, %bb.aw ], [ %i.gq, %bb.bb ]
  %i.hb = add nuw i32 %.0122293, 1                ; 2 uses
  %i.hc = load i32, ptr %i.bf, align 4
  %i.hd = icmp ult i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.k, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.bc, %bb.j
  %i.he = getelementptr i8, ptr %.043.i, i64 336  ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not = icmp eq ptr %i.hf, null
  br i1 %.not, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %i.hg = getelementptr i8, ptr %i.hf, i64 24
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  store ptr null, ptr %i.he, align 8
  br label %bb.bk

audit_field_valid.exit.thread:                    ; preds = %bb.aq, %bb.ar, %bb.ap, %.thread38.i.a, %bb.o, %bb.p, %bb.y, %bb.r, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %.thread39.i, %bb.z, %bb.aa, %bb.ae, %bb.an, %bb.au, %bb.ax, %bb.q, %bb.ba, %audit_to_op.exit, %audit_unpack_string.exit.thread, %audit_unpack_string.exit153.thread, %bb.aj, %audit_unpack_string.exit164.thread, %audit_unpack_string.exit177.thread, %audit_unpack_string.exit188.thread
  %.1.ph.ph = phi i32 [ %i.eo, %bb.aj ], [ %i.fd, %audit_unpack_string.exit164.thread ], [ -22, %audit_to_op.exit ], [ %i.dr, %audit_unpack_string.exit.thread ], [ %i.gx, %bb.ba ], [ %i.ga, %audit_unpack_string.exit177.thread ], [ %i.em, %audit_unpack_string.exit153.thread ], [ %i.gt, %audit_unpack_string.exit188.thread ], [ -22, %bb.ax ], [ -22, %bb.aq ], [ -22, %bb.ar ], [ -22, %bb.ap ], [ -22, %bb.o ], [ -22, %bb.p ], [ -22, %bb.y ], [ -22, %bb.r ], [ -22, %bb.x ], [ -22, %bb.w ], [ -22, %bb.v ], [ -22, %bb.u ], [ -22, %bb.s ], [ -22, %.thread39.i ], [ -22, %bb.q ], [ -22, %bb.z ], [ -22, %bb.aa ], [ %i.dy, %bb.ae ], [ %i.ff, %bb.an ], [ -22, %.thread38.i.a ], [ -22, %bb.au ] ; 2 uses
  %.pr = load ptr, ptr %i.bs, align 8             ; 2 uses
  %.not139 = icmp eq ptr %.pr, null
  br i1 %.not139, label %audit_field_valid.exit.thread.thread, label %audit_field_valid.exit.thread.thread329

audit_field_valid.exit.thread.thread329:          ; preds = %bb.as, %audit_field_valid.exit.thread
  %.1.ph332 = phi i32 [ %.1.ph.ph, %audit_field_valid.exit.thread ], [ -22, %bb.as ]
  %i.hj = phi ptr [ %.pr, %audit_field_valid.exit.thread ], [ %i.fm, %bb.as ]
  tail call void @audit_put_tree(ptr noundef nonnull %i.hj) #13
  br label %audit_field_valid.exit.thread.thread

audit_field_valid.exit.thread.thread:             ; preds = %bb.at, %audit_field_valid.exit.thread.thread329, %audit_field_valid.exit.thread
  %.1.ph328 = phi i32 [ %.1.ph.ph, %audit_field_valid.exit.thread ], [ %.1.ph332, %audit_field_valid.exit.thread.thread329 ], [ -22, %bb.at ]
  %i.hk = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not140 = icmp eq ptr %i.hk, null
  br i1 %.not140, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %audit_field_valid.exit.thread.thread
  tail call void @audit_remove_mark(ptr noundef nonnull %i.hk) #13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %audit_field_valid.exit.thread.thread
  %i.hl = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i189 = icmp eq ptr %i.hl, null
  br i1 %.not.i189, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @audit_put_watch(ptr noundef nonnull %i.hl) #13
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.hm = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not12.i190 = icmp eq ptr %i.hm, null
  br i1 %.not12.i190, label %audit_free_rule.exit, label %.preheader.i191

.preheader.i191:                                  ; preds = %bb.bi
  %i.hn = getelementptr i8, ptr %.043.i, i64 308  ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4            ; 2 uses
  %.not14.i192 = icmp eq i32 %i.ho, 0
  br i1 %.not14.i192, label %audit_free_rule.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i191, %audit_free_lsm_field.exit.i
  %i.hp = phi i32 [ %i.hy, %audit_free_lsm_field.exit.i ], [ %i.ho, %.preheader.i191 ]
  %.013.i = phi i32 [ %i.hz, %audit_free_lsm_field.exit.i ], [ 0, %.preheader.i191 ] ; 2 uses
  %i.hq = load ptr, ptr %i.bj, align 8
  %i.hr = sext i32 %.013.i to i64
  %i.hs = getelementptr [32 x i8], ptr %i.hq, i64 %i.hr ; 3 uses
  %i.ht = load i32, ptr %i.hs, align 8
  switch i32 %i.ht, label %audit_free_lsm_field.exit.i [
    i32 13, label %bb.bj
    i32 14, label %bb.bj
    i32 15, label %bb.bj
    i32 16, label %bb.bj
    i32 17, label %bb.bj
    i32 19, label %bb.bj
    i32 20, label %bb.bj
    i32 21, label %bb.bj
    i32 22, label %bb.bj
    i32 23, label %bb.bj
  ]

bb.bj:                                            ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.hu = getelementptr i8, ptr %i.hs, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  tail call void @kfree(ptr noundef %i.hv) #13
  %i.hw = getelementptr i8, ptr %i.hs, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  tail call void @security_audit_rule_free(ptr noundef %i.hx) #13
  %.pre.i193 = load i32, ptr %i.hn, align 4
  br label %audit_free_lsm_field.exit.i

audit_free_lsm_field.exit.i:                      ; preds = %bb.bj, %.lr.ph.i
  %i.hy = phi i32 [ %i.hp, %.lr.ph.i ], [ %.pre.i193, %bb.bj ] ; 2 uses
  %i.hz = add nuw i32 %.013.i, 1                  ; 2 uses
  %i.ia = icmp ult i32 %i.hz, %i.hy
  br i1 %i.ia, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !0

.loopexit.loopexit.i:                             ; preds = %audit_free_lsm_field.exit.i
  %.pre15.i = load ptr, ptr %i.bj, align 8
  br label %audit_free_rule.exit

audit_free_rule.exit:                             ; preds = %bb.bi, %.preheader.i191, %.loopexit.loopexit.i
  %i.ib = phi ptr [ %.pre15.i, %.loopexit.loopexit.i ], [ %i.hm, %.preheader.i191 ], [ null, %bb.bi ]
  tail call void @kfree(ptr noundef %i.ib) #13
  %i.ic = load ptr, ptr %i.bp, align 8
  tail call void @kfree(ptr noundef %i.ic) #13
  tail call void @kfree(ptr noundef %.043.i) #13
  %i.id = sext i32 %.1.ph328 to i64
  %i.ie = inttoptr i64 %i.id to ptr
  br label %bb.bk

bb.bk:                                            ; preds = %audit_to_entry_common.exit, %bb.be, %bb.bd, %._crit_edge, %audit_free_rule.exit
  %.0119 = phi ptr [ %i.ie, %audit_free_rule.exit ], [ %.043.i, %._crit_edge ], [ %.043.i, %bb.bd ], [ %.043.i, %bb.be ], [ %.043.i, %audit_to_entry_common.exit ]
  ret ptr %.0119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @audit_log_rule_change(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @audit_enabled, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #19, !srcloc !20
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 2192
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = tail call ptr @audit_log_start(ptr noundef %i.e, i32 noundef 3264, i32 noundef 1305) #13 ; 7 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @audit_log_session_info(ptr noundef nonnull %i.f) #13
  %i.g = tail call i32 @audit_log_task_context(ptr noundef nonnull %i.f) #13 ; 0 uses
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.f, ptr noundef @.str.9, ptr noundef %0) #13
  %i.h = getelementptr i8, ptr %1, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @audit_log_key(ptr noundef nonnull %i.f, ptr noundef %i.i) #13
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.f, ptr noundef @.str.10, i32 noundef %i.k, i32 noundef %2) #13
  tail call void @audit_log_end(ptr noundef nonnull %i.f) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @audit_list_rules_send(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
_kmalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.b = tail call noalias align 8 dereferenceable_or_null(40) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3264, i64 noundef range(i64 0, -8589933550) 40) #15 ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ac, label %bb.a

bb.a:                                             ; preds = %_kmalloc_noprof.exit
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %.val = load ptr, ptr %i.e, align 8             ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %get_net.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 192     ; 3 uses
  %i.g = getelementptr i8, ptr %.val, i64 288
  %i.h = load i64, ptr %i.g, align 32
  %i.i = icmp ult i64 %i.h, 9
  br i1 %i.i, label %get_net.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #18, !srcloc !43 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.j, 1
  %i.l = or i32 %i.k, %i.j
  %.not10.i.i.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not10.i.i.i.i, label %get_net.exit, label %.sink.split.i.i.i.i, !prof !44

.sink.split.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i) #13
  br label %get_net.exit

get_net.exit:                                     ; preds = %bb.a, %bb.b, %bb.d, %.sink.split.i.i.i.i
  %i.m = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  store ptr %.val, ptr %i.m, align 8
end_hunk_0
