Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cipso_ipv4?download=true
inline.NumInlined: 163
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cipso_v4_getattr:bb.a
  %i.cb = or i32 %i.ca, 4
  store i32 %i.cb, ptr %1, align 8
  %i.cc = icmp ugt i8 %i.bi, 4
  br i1 %i.cc, label %bb.s, label %cipso_v4_parsetag_rbm.exit

bb.s:                                             ; preds = %cipso_v4_map_lvl_ntoh.exit.i
  %i.cd = zext i8 %i.bi to i32
  %i.ce = getelementptr i8, ptr %0, i64 10
  %i.cf = shl nuw nsw i32 %i.cd, 3
  %i.cg = add nsw i32 %i.cf, -32
  %i.ch = load i32, ptr %i.bm, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr i8, ptr %.pn17.i, i64 -24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 24
  %i.cm = getelementptr i8, ptr %i.ck, i64 40
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.cl, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.019.i.i = phi i32 [ %i.cn, %bb.t ], [ 0, %bb.s ]
  %.0.i22.i = phi ptr [ %i.co, %bb.t ], [ null, %bb.s ]
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %bb.u
  %.021.i.i = phi i32 [ -1, %bb.u ], [ %i.cq, %bb.aa ]
  %.020.i.i = phi i32 [ -2147483648, %bb.u ], [ %.1.i.i, %bb.aa ]
  %i.cp = add i32 %.021.i.i, 1
  %i.cq = tail call i32 @netlbl_bitmap_walk(ptr noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.cp, i8 noundef zeroext 1) #14 ; 5 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %cipso_v4_map_cat_rbm_ntoh.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load i32, ptr %i.bm, align 4
  switch i32 %i.cs, label %bb.aa [
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp ult i32 %i.cq, %.019.i.i
  br i1 %.not.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = getelementptr [4 x i8], ptr %.0.i22.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w
  %.1.i.i = phi i32 [ %.020.i.i, %bb.w ], [ %i.cq, %bb.x ], [ %i.cv, %bb.z ] ; 2 uses
  %i.cx = tail call i32 @netlbl_catmap_setbit(ptr noundef %i.by, i32 noundef %.1.i.i, i32 noundef 2080) #14 ; 2 uses
  %.not26.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not26.i.i, label %bb.v, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.022.i.ph.i = phi i32 [ %i.cx, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.y ] ; 2 uses
  %i.cy = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not4.i.i = icmp eq ptr %i.cy, null
  br i1 %.not4.i.i, label %cipso_v4_doi_search.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cy, %bb.ab ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.05.i.i, i64 40
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  tail call void @kfree(ptr noundef nonnull %.05.i.i) #14
  %.not.i23.i = icmp eq ptr %i.da, null
  br i1 %.not.i23.i, label %cipso_v4_doi_search.exit.thread, label %.lr.ph.i.i, !llvm.loop !39

cipso_v4_map_cat_rbm_ntoh.exit.i:                 ; preds = %bb.v
  %i.db = load ptr, ptr %i.by, align 8
  %.not21.i = icmp eq ptr %i.db, null
  br i1 %.not21.i, label %cipso_v4_parsetag_rbm.exit, label %cipso_v4_parsetag_rbm.exit.sink.split

bb.ac:                                            ; preds = %bb.o
  %i.dc = getelementptr i8, ptr %0, i64 7
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = getelementptr i8, ptr %0, i64 9
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = getelementptr i8, ptr %.pn17.i, i64 -28
  %i.di = load i32, ptr %i.dh, align 4
  switch i32 %i.di, label %cipso_v4_doi_search.exit.thread [
    i32 2, label %cipso_v4_map_lvl_ntoh.exit.i30
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr i8, ptr %.pn17.i, i64 -24
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = icmp ugt i32 %i.dm, %i.dg
  br i1 %i.dn, label %bb.ae, label %cipso_v4_doi_search.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.do = load ptr, ptr %i.dk, align 8
  %i.dp = zext i8 %i.df to i64
  %i.dq = getelementptr [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %cipso_v4_map_lvl_ntoh.exit.i30, label %cipso_v4_doi_search.exit.thread

cipso_v4_map_lvl_ntoh.exit.i30:                   ; preds = %bb.ae, %bb.ac
  %.sink.i.i31 = phi i32 [ %i.dg, %bb.ac ], [ %i.dr, %bb.ae ]
  %i.dt = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 32
  store i32 %.sink.i.i31, ptr %i.du, align 8
  %i.dv = load i32, ptr %1, align 8
  %i.dw = or i32 %i.dv, 4
  store i32 %i.dw, ptr %1, align 8
  %i.dx = icmp ugt i8 %i.dd, 4
  br i1 %i.dx, label %bb.af, label %cipso_v4_parsetag_rbm.exit

bb.af:                                            ; preds = %cipso_v4_map_lvl_ntoh.exit.i30
  %i.dy = zext i8 %i.dd to i64
  %i.dz = getelementptr i8, ptr %0, i64 10
  %i.ea = add nsw i64 %i.dy, -4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.i.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next.i.i, %bb.ag ] ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 %indvars.iv.i.i
  %.val.i.i = load i16, ptr %i.eb, align 1
  %i.ec = tail call i16 @llvm.bswap.i16(i16 %.val.i.i)
  %i.ed = zext i16 %i.ec to i32
  %i.ee = tail call i32 @netlbl_catmap_setbit(ptr noundef %i.dt, i32 noundef %i.ed, i32 noundef 2080) #14 ; 3 uses
  %.not.i.i32 = icmp eq i32 %i.ee, 0              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ea
  %or.cond.i.i = select i1 %.not.i.i32, i1 %i.ef, i1 false
  br i1 %or.cond.i.i, label %bb.ag, label %cipso_v4_map_cat_enum_ntoh.exit.i, !llvm.loop !40

cipso_v4_map_cat_enum_ntoh.exit.i:                ; preds = %bb.ag
  br i1 %.not.i.i32, label %cipso_v4_parsetag_rbm.exit.sink.split, label %bb.ah

bb.ah:                                            ; preds = %cipso_v4_map_cat_enum_ntoh.exit.i
  %i.eg = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not4.i.i33 = icmp eq ptr %i.eg, null
  br i1 %.not4.i.i33, label %cipso_v4_doi_search.exit.thread, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.ah, %.lr.ph.i.i34
  %.05.i.i35 = phi ptr [ %i.ei, %.lr.ph.i.i34 ], [ %i.eg, %bb.ah ] ; 2 uses
  %i.eh = getelementptr i8, ptr %.05.i.i35, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  tail call void @kfree(ptr noundef nonnull %.05.i.i35) #14
  %.not.i20.i = icmp eq ptr %i.ei, null
  br i1 %.not.i20.i, label %cipso_v4_doi_search.exit.thread, label %.lr.ph.i.i34, !llvm.loop !39

bb.ai:                                            ; preds = %bb.o
  %i.ej = getelementptr i8, ptr %0, i64 7
  %i.ek = load i8, ptr %i.ej, align 1             ; 2 uses
  %i.el = getelementptr i8, ptr %0, i64 9
  %i.em = load i8, ptr %i.el, align 1             ; 2 uses
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = getelementptr i8, ptr %.pn17.i, i64 -28
  %i.ep = load i32, ptr %i.eo, align 4
  switch i32 %i.ep, label %cipso_v4_doi_search.exit.thread [
    i32 2, label %cipso_v4_map_lvl_ntoh.exit.i37
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr i8, ptr %.pn17.i, i64 -24
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = icmp ugt i32 %i.et, %i.en
  br i1 %i.eu, label %bb.ak, label %cipso_v4_doi_search.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ev = load ptr, ptr %i.er, align 8
  %i.ew = zext i8 %i.em to i64
  %i.ex = getelementptr [4 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %cipso_v4_map_lvl_ntoh.exit.i37, label %cipso_v4_doi_search.exit.thread

cipso_v4_map_lvl_ntoh.exit.i37:                   ; preds = %bb.ak, %bb.ai
  %.sink.i.i38 = phi i32 [ %i.en, %bb.ai ], [ %i.ey, %bb.ak ]
  %i.fa = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.fb = getelementptr i8, ptr %1, i64 32
  store i32 %.sink.i.i38, ptr %i.fb, align 8
  %i.fc = load i32, ptr %1, align 8
  %i.fd = or i32 %i.fc, 4
  store i32 %i.fd, ptr %1, align 8
  %i.fe = icmp ugt i8 %i.ek, 4
  br i1 %i.fe, label %bb.al, label %cipso_v4_parsetag_rbm.exit

bb.al:                                            ; preds = %cipso_v4_map_lvl_ntoh.exit.i37
  %i.ff = zext i8 %i.ek to i64
  %i.fg = getelementptr i8, ptr %0, i64 10
  %i.fh = add nsw i64 %i.ff, -4                   ; 3 uses
  %.not111 = icmp eq i64 %i.fh, 0
  br i1 %.not111, label %bb.aq, label %bb.an

bb.am:                                            ; preds = %bb.ap
  %i.fi = icmp samesign ult i64 %indvars.iv.next.i.i41, %i.fh
  br i1 %i.fi, label %bb.an, label %bb.aq, !llvm.loop !41

bb.an:                                            ; preds = %bb.al, %bb.am
  %indvars.iv.i.i39110 = phi i64 [ %indvars.iv.next.i.i41, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fg, i64 %indvars.iv.i.i39110 ; 2 uses
  %.val19.i.i = load i16, ptr %i.fj, align 1
  %i.fk = tail call i16 @llvm.bswap.i16(i16 %.val19.i.i)
  %indvars.iv.next.i.i41 = add nuw nsw i64 %indvars.iv.i.i39110, 4 ; 3 uses
  %.not.i.i42 = icmp samesign ugt i64 %indvars.iv.next.i.i41, %i.fh
  br i1 %.not.i.i42, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr i8, ptr %i.fj, i64 2
  %.val.i.i43 = load i16, ptr %i.fl, align 1
  %i.fm = tail call i16 @llvm.bswap.i16(i16 %.val.i.i43)
  %i.fn = zext i16 %i.fm to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i22.i44 = phi i32 [ %i.fn, %bb.ao ], [ 0, %bb.an ]
  %i.fo = zext i16 %i.fk to i32
  %i.fp = tail call i32 @netlbl_catmap_setrng(ptr noundef %i.fa, i32 noundef %.0.i22.i44, i32 noundef %i.fo, i32 noundef 2080) #14 ; 3 uses
  %.not18.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not18.i.i, label %bb.am, label %cipso_v4_map_cat_rng_ntoh.exit.i, !llvm.loop !41

cipso_v4_map_cat_rng_ntoh.exit.i:                 ; preds = %bb.ap
  %i.fq = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not4.i.i45 = icmp eq ptr %i.fq, null
  br i1 %.not4.i.i45, label %cipso_v4_doi_search.exit.thread, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %cipso_v4_map_cat_rng_ntoh.exit.i, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.fs, %.lr.ph.i.i46 ], [ %i.fq, %cipso_v4_map_cat_rng_ntoh.exit.i ] ; 2 uses
  %i.fr = getelementptr i8, ptr %.05.i.i47, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  tail call void @kfree(ptr noundef nonnull %.05.i.i47) #14
  %.not.i23.i48 = icmp eq ptr %i.fs, null
  br i1 %.not.i23.i48, label %cipso_v4_doi_search.exit.thread, label %.lr.ph.i.i46, !llvm.loop !39

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.ft = load ptr, ptr %i.fa, align 8
  %.not21.i40 = icmp eq ptr %i.ft, null
  br i1 %.not21.i40, label %cipso_v4_parsetag_rbm.exit, label %cipso_v4_parsetag_rbm.exit.sink.split

bb.ar:                                            ; preds = %bb.o
  %i.fu = getelementptr i8, ptr %0, i64 8
  %.val24 = load i32, ptr %i.fu, align 4
  %i.fv = getelementptr i8, ptr %1, i64 40
  store i32 %.val24, ptr %i.fv, align 8
  br label %cipso_v4_parsetag_rbm.exit.sink.split

cipso_v4_parsetag_rbm.exit.sink.split:            ; preds = %bb.aq, %cipso_v4_map_cat_enum_ntoh.exit.i, %cipso_v4_map_cat_rbm_ntoh.exit.i, %bb.ar
  %.sink102 = phi i32 [ 16, %bb.ar ], [ 8, %cipso_v4_map_cat_enum_ntoh.exit.i ], [ 8, %cipso_v4_map_cat_rbm_ntoh.exit.i ], [ 8, %bb.aq ]
  %i.fw = load i32, ptr %1, align 8
  %i.fx = or i32 %i.fw, %.sink102
  store i32 %i.fx, ptr %1, align 8
  br label %cipso_v4_parsetag_rbm.exit

cipso_v4_parsetag_rbm.exit:                       ; preds = %cipso_v4_parsetag_rbm.exit.sink.split, %cipso_v4_map_lvl_ntoh.exit.i, %cipso_v4_map_cat_rbm_ntoh.exit.i, %cipso_v4_map_lvl_ntoh.exit.i30, %cipso_v4_map_lvl_ntoh.exit.i37, %bb.aq
  %i.fy = getelementptr i8, ptr %1, i64 4
  store i32 3, ptr %i.fy, align 4
  br label %cipso_v4_doi_search.exit.thread

cipso_v4_doi_search.exit.thread:                  ; preds = %bb.n, %.lr.ph.i.i46, %.lr.ph.i.i34, %.lr.ph.i.i, %bb.ak, %bb.ai, %cipso_v4_map_cat_rng_ntoh.exit.i, %bb.aj, %bb.ae, %bb.ac, %bb.ah, %bb.ad, %bb.r, %bb.p, %bb.ab, %bb.q, %bb.o, %cipso_v4_cache_check.exit.thread, %cipso_v4_parsetag_rbm.exit, %cipso_v4_doi_search.exit
  %.1 = phi i32 [ 0, %cipso_v4_parsetag_rbm.exit ], [ %i.fp, %.lr.ph.i.i46 ], [ -42, %cipso_v4_doi_search.exit ], [ -42, %cipso_v4_cache_check.exit.thread ], [ %i.ee, %.lr.ph.i.i34 ], [ -1, %bb.ak ], [ -22, %bb.ai ], [ %i.fp, %cipso_v4_map_cat_rng_ntoh.exit.i ], [ -1, %bb.aj ], [ -1, %bb.ae ], [ -22, %bb.ac ], [ %i.ee, %bb.ah ], [ -1, %bb.ad ], [ -1, %bb.r ], [ -22, %bb.p ], [ %.022.i.ph.i, %bb.ab ], [ -1, %bb.q ], [ %.022.i.ph.i, %.lr.ph.i.i ], [ -42, %bb.o ], [ -42, %bb.n ]
  tail call void @__rcu_read_unlock() #14
  br label %bb.as

bb.as:                                            ; preds = %cipso_v4_cache_check.exit.thread50, %cipso_v4_doi_search.exit.thread
  %.022 = phi i32 [ %.1, %cipso_v4_doi_search.exit.thread ], [ 0, %cipso_v4_cache_check.exit.thread50 ]
  ret i32 %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @cipso_v4_sock_getattr(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #14
  %i.a = getelementptr i8, ptr %0, i64 808
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 30
  %i.d = load i8, ptr %i.c, align 2               ; 2 uses
  %.not13 = icmp eq i8 %i.d, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 12
  %i.h = tail call i32 @cipso_v4_getattr(ptr noundef %i.g, ptr noundef %1) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.c ], [ -42, %bb.b ], [ -42, %bb.a ]
  tail call void @__rcu_read_unlock() #14
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @cipso_v4_skbuff_setattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !annotation !18
  %i.c = call fastcc i32 @cipso_v4_genopt(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2) #18 ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.c, 3                  ; 2 uses
  %i.f = and i32 %i.e, 2147483644                 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 52         ; 4 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = sub nsw i32 %i.f, %i.i                   ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %.val65 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %.val66 = load ptr, ptr %i.l, align 8
  %i.m = ptrtoint ptr %.val66 to i64
  %i.n = ptrtoint ptr %.val65 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.r = add i32 %i.q, %i.p
  %i.s = getelementptr i8, ptr %0, i64 126
  %i.t = load i8, ptr %i.s, align 2
  %i.u = and i8 %i.t, 1
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %skb_cloned.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %0, i64 192
  %.val.i.i = load i32, ptr %i.v, align 8
  %i.w = zext i32 %.val.i.i to i64
  %i.x = getelementptr i8, ptr %.val65, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load volatile i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 65535
  %i.ab = icmp ne i32 %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %bb.b, %bb.c
  %i.ad = phi i32 [ %i.ac, %bb.c ], [ 0, %bb.b ]
  %spec.select.i.i = call i32 @llvm.usub.sat.i32(i32 %i.r, i32 %i.p) ; 2 uses
  %i.ae = or i32 %i.ad, %spec.select.i.i
  %or.cond.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %or.cond.not.i.i, label %skb_cow.exit.thread, label %skb_cow.exit

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %i.af = add i32 %spec.select.i.i, 63
  %i.ag = and i32 %i.af, -64
  %i.ah = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %i.ag, i32 noundef 0, i32 noundef 2080) #14 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %skb_cow.exit.thread

skb_cow.exit.thread:                              ; preds = %skb_cloned.exit.i, %skb_cow.exit
  %i.aj = icmp sgt i32 %i.j, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %skb_cow.exit.thread
  %i.ak = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %.val63 = load i16, ptr %i.ak, align 8
  %.val64 = load ptr, ptr %i.k, align 8
  %i.al = zext i16 %.val63 to i64
  %i.am = getelementptr i8, ptr %.val64, i64 %i.al ; 3 uses
  %i.an = call ptr @skb_push(ptr noundef %0, i32 noundef %i.j) #14 ; 0 uses
  %i.ao = zext nneg i32 %i.j to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.ap
  %i.ar = load i8, ptr %i.am, align 4
  %i.as = shl i8 %i.ar, 2
  %i.at = and i8 %i.as, 60
  %i.au = zext nneg i8 %i.at to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aq, ptr align 4 %i.am, i64 %i.au, i1 false)
  %i.av = load ptr, ptr %i.l, align 8
  %i.aw = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %i.ak, align 8
  %i.bb = and i64 %i.az, 65535
  %i.bc = getelementptr i8, ptr %i.aw, i64 %i.bb
  br label %bb.g

bb.e:                                             ; preds = %skb_cow.exit.thread
  %i.bd = icmp slt i32 %i.j, 0
  %i.be = getelementptr i8, ptr %0, i64 184
  %.val59 = load i16, ptr %i.be, align 8
  %.val60 = load ptr, ptr %i.k, align 8
  %i.bf = zext i16 %.val59 to i64
  %i.bg = getelementptr i8, ptr %.val60, i64 %i.bf ; 3 uses
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr i8, ptr %i.bg, i64 20
  %i.bi = load i8, ptr %i.g, align 4
  %i.bj = zext i8 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 1, i64 %i.bj, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi ptr [ %i.bc, %bb.d ], [ %i.bg, %bb.f ], [ %i.bg, %bb.e ] ; 5 uses
  %i.bk = load i8, ptr %i.g, align 4
  %.not = icmp eq i8 %i.bk, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %i.bl = or i8 %.pre, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.bm = phi i8 [ %i.bl, %._crit_edge ], [ 4, %bb.h ]
  %i.bn = trunc nuw nsw i32 %i.f to i8
  store i8 %i.bn, ptr %i.g, align 4
  %i.bo = getelementptr i8, ptr %0, i64 58
  store i8 20, ptr %i.bo, align 2
  %i.bp = getelementptr i8, ptr %0, i64 56
  store i8 %i.bm, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %.0, i64 20       ; 2 uses
  %i.br = zext nneg i32 %i.c to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 %i.bq, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.br, i1 false)
  %i.bs = icmp samesign ugt i32 %i.f, %i.c
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.br
  %i.bu = sub nuw nsw i32 %i.f, %i.c
end_hunk_0
