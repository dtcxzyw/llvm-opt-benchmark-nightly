Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cipso_ipv4?download=true
inline.NumInlined: 163
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cipso_v4_validate:bb.a
bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %.071152, i64 1
  %i.ak = load i8, ptr %i.aj, align 1             ; 10 uses
  %i.al = zext i8 %i.ak to i32                    ; 6 uses
  %i.am = sub nuw nsw i32 %i.d, %i.w
  %i.an = icmp samesign ult i32 %i.am, %i.al
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = trunc nuw i32 %i.ah to i8
  br label %cipso_v4_doi_search.exit.thread

bb.p:                                             ; preds = %bb.n
  switch i8 %i.x, label %cipso_v4_doi_search.exit.thread [
    i8 1, label %bb.q
    i8 2, label %bb.z
    i8 5, label %bb.ah
    i8 -128, label %bb.aq
  ]

bb.q:                                             ; preds = %bb.p
  %i.ap = icmp ult i8 %i.ak, 4
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = trunc nuw i32 %i.ah to i8
  br label %cipso_v4_doi_search.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.ar = load volatile i32, ptr @cipso_v4_rbm_strictvalid, align 4
  %.not87 = icmp eq i32 %i.ar, 0
  br i1 %.not87, label %cipso_v4_map_cat_enum_valid.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr i8, ptr %.071152, i64 3
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %i.au = load i32, ptr %i.q, align 4
  switch i32 %i.au, label %cipso_v4_map_lvl_valid.exit [
    i32 2, label %bb.w
    i32 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.av = zext i8 %i.at to i32
  %i.aw = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp ugt i32 %i.ay, %i.av
  br i1 %i.az, label %bb.v, label %cipso_v4_map_lvl_valid.exit

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.aw, align 8
  %i.bb = zext i8 %i.at to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.w, label %cipso_v4_map_lvl_valid.exit

cipso_v4_map_lvl_valid.exit:                      ; preds = %bb.v, %bb.u, %bb.t
  %i.bf = add i8 %.070153, 3
  br label %cipso_v4_doi_search.exit.thread

bb.w:                                             ; preds = %bb.t, %bb.v
  %.not88 = icmp eq i8 %i.ak, 4
  br i1 %.not88, label %cipso_v4_map_cat_enum_valid.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr i8, ptr %.071152, i64 4
  %i.bh = add nsw i32 %i.al, -4
  %i.bi = tail call fastcc i32 @cipso_v4_map_cat_rbm_valid(ptr noundef %.01218.i.le, ptr noundef %i.bg, i32 noundef %i.bh) #18, !srcloc !31
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %cipso_v4_map_cat_enum_valid.exit

bb.y:                                             ; preds = %bb.x
  %i.bk = add i8 %.070153, 4
  br label %cipso_v4_doi_search.exit.thread

bb.z:                                             ; preds = %bb.p
  %i.bl = icmp ult i8 %i.ak, 4
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bm = trunc nuw i32 %i.ah to i8
  br label %cipso_v4_doi_search.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.bn = getelementptr i8, ptr %.071152, i64 3
  %i.bo = load i8, ptr %i.bn, align 1             ; 2 uses
  %i.bp = load i32, ptr %i.q, align 4             ; 2 uses
  switch i32 %i.bp, label %cipso_v4_map_lvl_valid.exit94 [
    i32 2, label %bb.ae
    i32 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bq = zext i8 %i.bo to i32
  %i.br = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp ugt i32 %i.bt, %i.bq
  br i1 %i.bu, label %bb.ad, label %cipso_v4_map_lvl_valid.exit94

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load ptr, ptr %i.br, align 8
  %i.bw = zext i8 %i.bo to i64
  %i.bx = getelementptr [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.ae, label %cipso_v4_map_lvl_valid.exit94

cipso_v4_map_lvl_valid.exit94:                    ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ca = add i8 %.070153, 3
  br label %cipso_v4_doi_search.exit.thread

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %.not86 = icmp eq i8 %i.ak, 4
  br i1 %.not86, label %cipso_v4_map_cat_enum_valid.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr i8, ptr %.071152, i64 4
  %.not.i95 = icmp eq i32 %i.bp, 2
  %i.cc = and i32 %i.al, 1
  %.not13.i = icmp eq i32 %i.cc, 0
  %or.cond.i = and i1 %.not13.i, %.not.i95
  br i1 %or.cond.i, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %bb.af
  %i.cd = add nsw i32 %i.al, -4
  %i.ce = zext nneg i32 %i.cd to i64
  br label %.preheader.i

bb.ag:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next.i, %i.ce
  br i1 %i.cf, label %.preheader.i, label %cipso_v4_map_cat_enum_valid.exit, !llvm.loop !28

.preheader.i:                                     ; preds = %bb.ag, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.ag ] ; 2 uses
  %.0101.i = phi i32 [ -1, %.preheader.preheader.i ], [ %i.ci, %bb.ag ]
  %i.cg = getelementptr i8, ptr %i.cb, i64 %indvars.iv.i
  %.val.i = load i16, ptr %i.cg, align 1
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %.val.i)
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %.not14.i96 = icmp slt i32 %.0101.i, %i.ci
  br i1 %.not14.i96, label %bb.ag, label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.preheader.i
  %i.cj = add i8 %.070153, 4
  br label %cipso_v4_doi_search.exit.thread

bb.ah:                                            ; preds = %bb.p
  %i.ck = icmp ult i8 %i.ak, 4
  br i1 %i.ck, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cl = trunc nuw i32 %i.ah to i8
  br label %cipso_v4_doi_search.exit.thread

bb.aj:                                            ; preds = %bb.ah
  %i.cm = getelementptr i8, ptr %.071152, i64 3
  %i.cn = load i8, ptr %i.cm, align 1             ; 2 uses
  %i.co = load i32, ptr %i.q, align 4             ; 2 uses
  switch i32 %i.co, label %cipso_v4_map_lvl_valid.exit98 [
    i32 2, label %bb.am
    i32 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cp = zext i8 %i.cn to i32
  %i.cq = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = icmp ugt i32 %i.cs, %i.cp
  br i1 %i.ct, label %bb.al, label %cipso_v4_map_lvl_valid.exit98

bb.al:                                            ; preds = %bb.ak
  %i.cu = load ptr, ptr %i.cq, align 8
  %i.cv = zext i8 %i.cn to i64
  %i.cw = getelementptr [4 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp sgt i32 %i.cx, -1
  br i1 %i.cy, label %bb.am, label %cipso_v4_map_lvl_valid.exit98

cipso_v4_map_lvl_valid.exit98:                    ; preds = %bb.al, %bb.ak, %bb.aj
  %i.cz = add i8 %.070153, 3
  br label %cipso_v4_doi_search.exit.thread

bb.am:                                            ; preds = %bb.aj, %bb.al
  %.not85 = icmp eq i8 %i.ak, 4
  br i1 %.not85, label %cipso_v4_map_cat_enum_valid.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = getelementptr i8, ptr %.071152, i64 4
  %.not.i99 = icmp eq i32 %i.co, 2
  %i.db = and i32 %i.al, 1
  %.not18.i = icmp eq i32 %i.db, 0
  %or.cond.i100 = and i1 %.not18.i, %.not.i99
  br i1 %or.cond.i100, label %.preheader.preheader.i101, label %.loopexit114

.preheader.preheader.i101:                        ; preds = %bb.an
  %i.dc = add nsw i32 %i.al, -4                   ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %.not284 = icmp eq i32 %i.dc, 0
  br i1 %.not284, label %cipso_v4_map_cat_enum_valid.exit, label %.lr.ph

.preheader.i102:                                  ; preds = %bb.ap
  %i.de = icmp samesign ult i64 %indvars.iv.next.i104, %i.dd
  br i1 %i.de, label %.lr.ph, label %cipso_v4_map_cat_enum_valid.exit, !llvm.loop !29

.lr.ph:                                           ; preds = %.preheader.preheader.i101, %.preheader.i102
  %.014.i283 = phi i32 [ %.015.i, %.preheader.i102 ], [ 65535, %.preheader.preheader.i101 ]
  %indvars.iv.i103282 = phi i64 [ %indvars.iv.next.i104, %.preheader.i102 ], [ 0, %.preheader.preheader.i101 ] ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 %indvars.iv.i103282 ; 2 uses
  %.val20.i = load i16, ptr %i.df, align 1
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %.val20.i)
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i103282, 4 ; 3 uses
  %.not19.i = icmp samesign ugt i64 %indvars.iv.next.i104, %i.dd
  br i1 %.not19.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.dh = getelementptr i8, ptr %i.df, i64 2
  %.val.i105 = load i16, ptr %i.dh, align 1
  %i.di = tail call i16 @llvm.bswap.i16(i16 %.val.i105)
  %i.dj = zext i16 %i.di to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph
  %.015.i = phi i32 [ %i.dj, %bb.ao ], [ 0, %.lr.ph ]
  %i.dk = zext i16 %i.dg to i32
  %i.dl = icmp samesign ult i32 %.014.i283, %i.dk
  br i1 %i.dl, label %.loopexit114, label %.preheader.i102, !llvm.loop !29

.loopexit114:                                     ; preds = %bb.an, %bb.ap
  %i.dm = add i8 %.070153, 4
  br label %cipso_v4_doi_search.exit.thread

bb.aq:                                            ; preds = %bb.p
  br i1 %.not82, label %cipso_v4_doi_search.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = load ptr, ptr %i.p, align 8
  %i.do = getelementptr i8, ptr %i.dn, i64 176
  %i.dp = load i32, ptr %i.do, align 16
  %i.dq = and i32 %i.dp, 8
  %.not83 = icmp eq i32 %i.dq, 0
  br i1 %.not83, label %cipso_v4_doi_search.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not84 = icmp eq i8 %i.ak, 6
  br i1 %.not84, label %cipso_v4_map_cat_enum_valid.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dr = trunc nuw i32 %i.ah to i8
  br label %cipso_v4_doi_search.exit.thread

cipso_v4_map_cat_enum_valid.exit:                 ; preds = %.preheader.i102, %bb.ag, %.preheader.preheader.i101, %bb.as, %bb.am, %bb.ae, %bb.s, %bb.x, %bb.w
  %i.ds = zext i8 %i.ak to i64
  %i.dt = getelementptr i8, ptr %.071152, i64 %i.ds
  %i.du = add i8 %i.ak, %.070153                  ; 3 uses
  %i.dv = zext i8 %i.du to i32
  %i.dw = icmp ult i8 %i.du, %i.c
  br i1 %i.dw, label %.preheader, label %cipso_v4_doi_search.exit.thread, !llvm.loop !30

cipso_v4_doi_search.exit.thread:                  ; preds = %bb.d, %cipso_v4_map_cat_enum_valid.exit, %bb.m, %bb.ar, %bb.aq, %bb.p, %bb.l, %bb.e, %bb.g, %bb.i, %bb.k, %bb.b, %cipso_v4_doi_search.exit, %bb.at, %.loopexit114, %cipso_v4_map_lvl_valid.exit98, %bb.ai, %.loopexit, %cipso_v4_map_lvl_valid.exit94, %bb.aa, %bb.y, %cipso_v4_map_lvl_valid.exit, %bb.r, %bb.o
  %.069 = phi i8 [ 2, %cipso_v4_doi_search.exit ], [ %.070153, %bb.l ], [ %i.ao, %bb.o ], [ %.070153, %bb.p ], [ %i.aq, %bb.r ], [ %i.bf, %cipso_v4_map_lvl_valid.exit ], [ %i.bk, %bb.y ], [ %i.bm, %bb.aa ], [ %i.ca, %cipso_v4_map_lvl_valid.exit94 ], [ %i.cj, %.loopexit ], [ %i.cl, %bb.ai ], [ %i.cz, %cipso_v4_map_lvl_valid.exit98 ], [ %i.dm, %.loopexit114 ], [ %i.dr, %bb.at ], [ 2, %bb.b ], [ %.070153, %bb.k ], [ %.070153, %bb.i ], [ %.070153, %bb.g ], [ %.070153, %bb.e ], [ %.070153, %bb.aq ], [ %.070153, %bb.m ], [ 0, %cipso_v4_map_cat_enum_valid.exit ], [ %.070153, %bb.ar ], [ 2, %bb.d ]
  tail call void @__rcu_read_unlock() #14
  %i.dx = zext i8 %.069 to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %cipso_v4_doi_search.exit.thread
  %.1 = phi i32 [ %i.dx, %cipso_v4_doi_search.exit.thread ], [ 1, %bb.a ] ; 2 uses
  %i.dy = zext nneg i32 %.1 to i64
  %i.dz = getelementptr i8, ptr %i.a, i64 %i.dy
  store ptr %i.dz, ptr %1, align 8
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -14, 1) i32 @cipso_v4_map_cat_rbm_valid(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 252) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = shl nuw nsw i32 %2, 3
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  switch i32 %i.c, label %bb.g [
    i32 2, label %.loopexit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = getelementptr i8, ptr %i.e, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.k, %bb.e ]
  %i.j = add i32 %.0, 1
  %i.k = tail call i32 @netlbl_bitmap_walk(ptr noundef %1, i32 noundef %i.a, i32 noundef %i.j, i8 noundef zeroext 1) #14 ; 5 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ult i32 %i.k, %i.h
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr [4 x i8], ptr %i.i, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.k, -1
  br i1 %i.q, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.a, %bb.g
  %.013 = phi i32 [ -14, %bb.g ], [ 0, %bb.a ], [ 0, %bb.f ], [ -14, %bb.e ], [ -14, %bb.d ]
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cipso_v4_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.inet_skb_parm, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val11 = load i16, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val12 = load ptr, ptr %i.b, align 8
  %i.c = zext i16 %.val11 to i64
  %i.d = getelementptr i8, ptr %.val12, i64 %i.c  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 9
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 1
  %i.h = icmp ne i32 %1, -13
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = load i8, ptr %i.d, align 4
  %i.j = shl i8 %i.i, 2
  %i.k = and i8 %i.j, 60
  %i.l = add nsw i8 %i.k, -20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.l, ptr %i.n, align 4
  tail call void @__rcu_read_lock() #14
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 264
  %.val13 = load ptr, ptr %i.q, align 8
  %i.r = call i32 @__ip_options_compile(ptr noundef %.val13, ptr noundef nonnull %i.m, ptr noundef %0, ptr noundef null) #14
  call void @__rcu_read_unlock() #14
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  %.not9 = icmp eq i32 %2, 0
  %. = select i1 %.not9, i32 10, i32 9
  call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef %., i32 noundef 0, ptr noundef nonnull %3) #14
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ip_options_compile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -28, 1) i32 @cipso_v4_sock_setattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.b = tail call noalias align 8 dereferenceable_or_null(40) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 2080, i64 noundef 40) #16 ; 5 uses
  %.not77 = icmp eq ptr %i.b, null
  br i1 %.not77, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @cipso_v4_genopt(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #18 ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.j, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.c
  %i.e = add nuw nsw i32 %i.c, 3
  %i.f = and i32 %i.e, 2147483644                 ; 2 uses
  %narrow = add nuw nsw i32 %i.f, 32
  %i.g = zext nneg i32 %narrow to i64
  %i.h = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 24, 2147483683) %i.g, i32 noundef range(i32 2080, 3584) 2336) #19 ; 5 uses
  %.not78 = icmp eq ptr %i.h, null
  br i1 %.not78, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = zext nneg i32 %i.c to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.j, i1 false)
  %i.k = trunc nuw nsw i32 %i.f to i8
  %i.l = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  store i8 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.h, i64 30
  store i8 20, ptr %i.m, align 2
  tail call void @kfree(ptr noundef nonnull %i.b) #14
  %i.n = getelementptr i8, ptr %0, i64 808        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 792
  %i.q = load volatile i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 65536
  %.not84 = icmp eq i64 %i.r, 0
  br i1 %.not84, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not79 = icmp eq ptr %i.o, null
  br i1 %.not79, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 1262
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = load i8, ptr %i.s, align 8
  %i.u = zext i8 %i.t to i16
  %i.v = getelementptr i8, ptr %0, i64 1262
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sub i16 %i.w, %i.u
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.y = phi i16 [ %.pre, %._crit_edge ], [ %i.x, %bb.f ]
  %i.z = load i8, ptr %i.l, align 8
  %i.aa = zext i8 %i.z to i16
  %i.ab = getelementptr i8, ptr %0, i64 1262
  %i.ac = add i16 %i.y, %i.aa
  store i16 %i.ac, ptr %i.ab, align 2
  %i.ad = getelementptr i8, ptr %0, i64 1248
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %0, i64 1208
end_hunk_0
