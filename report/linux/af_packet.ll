Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/af_packet?download=true
inline.NumInlined: 737
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@packet_mmap:bb.a
._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %.lr.ph87.split
  %i.bc = phi i32 [ %i.ac, %.lr.ph87.split ], [ %.pre, %._crit_edge83.loopexit ] ; 2 uses
  %i.bd = phi i32 [ 0, %.lr.ph87.split ], [ %i.ba, %._crit_edge83.loopexit ]
  %.251.lcssa = phi i64 [ %.15085, %.lr.ph87.split ], [ %i.ax, %._crit_edge83.loopexit ] ; 2 uses
  %i.be = add nuw i32 %.04786, 1                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, %i.bc
  br i1 %i.bf, label %.lr.ph87.split, label %.loopexit69, !llvm.loop !133

.loopexit69:                                      ; preds = %._crit_edge83, %.lr.ph87, %.preheader, %.lr.ph92
  %.352 = phi i64 [ %.04991, %.lr.ph92 ], [ %.04991, %.preheader ], [ %.04991, %.lr.ph87 ], [ %.251.lcssa, %._crit_edge83 ]
  %i.bg = getelementptr i8, ptr %.15490, i64 232  ; 2 uses
  %.not63 = icmp ugt ptr %i.bg, %i.g
  br i1 %.not63, label %._crit_edge93, label %.lr.ph92, !llvm.loop !134

._crit_edge93:                                    ; preds = %.loopexit69
  %i.bh = getelementptr i8, ptr %i.b, i64 1328    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bh, ptr elementtype(i64) %i.bh) #21, !srcloc !52
  %i.bi = getelementptr i8, ptr %2, i64 72
  store ptr @packet_mmap_ops, ptr %i.bi, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %pgv_to_page.exit, %bb.b, %bb.e, %._crit_edge, %._crit_edge93
  %.5 = phi i32 [ -22, %._crit_edge ], [ -22, %bb.e ], [ 0, %._crit_edge93 ], [ -22, %bb.b ], [ %i.aw, %pgv_to_page.exit ]
  tail call void @mutex_unlock(ptr noundef %i.e) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.loopexit
  %.057 = phi i32 [ -22, %bb.a ], [ %.5, %.loopexit ]
  ret i32 %.057
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @packet_set_ring(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.timespec64, align 8         ; 6 uses
  %5 = alloca %struct.ethtool_link_ksettings, align 8 ; 5 uses
  %i.a = icmp ne i32 %3, 0                        ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 1032
  %i.c = getelementptr i8, ptr %0, i64 800        ; 2 uses
  %i.d = select i1 %i.a, ptr %i.b, ptr %i.c       ; 12 uses
  %.v = select i1 %i.a, i64 392, i64 168
  %i.e = getelementptr i8, ptr %0, i64 %.v        ; 2 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %packet_read_pending.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1328
  %i.g = load volatile i64, ptr %i.f, align 8
  %.not145 = icmp eq i64 %i.g, 0
  br i1 %.not145, label %bb.c, label %.thread185

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 40
  %.val = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %packet_read_pending.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.j = load i64, ptr @__cpu_possible_mask, align 8
  %i.k = ptrtoint ptr %.val to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %i.l = phi i64 [ 0, %.preheader.i ], [ %i.z, %bb.e ]
  %.092.i = phi i32 [ 0, %.preheader.i ], [ %i.x, %bb.e ] ; 3 uses
  %i.m = shl nsw i64 -1, %i.l
  %i.n = and i64 %i.m, %i.j                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %packet_read_pending.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.d
  %i.o = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.n) #26, !srcloc !53 ; 3 uses
  %i.p = and i64 %i.o, 4294967232
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %packet_read_pending.exit

bb.e:                                             ; preds = %find_next_bit.exit.i
  %i.r = and i64 %i.o, 63
  %i.s = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.k
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add i32 %i.w, %.092.i                    ; 2 uses
  %i.y = add nuw nsw i64 %i.o, 1
  %i.z = and i64 %i.y, 127                        ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.z, 63
  br i1 %i.aa, label %packet_read_pending.exit, label %bb.d, !prof !54, !llvm.loop !1

packet_read_pending.exit:                         ; preds = %bb.d, %find_next_bit.exit.i, %bb.e
  %.0.i168 = phi i32 [ %.092.i, %bb.d ], [ %.092.i, %find_next_bit.exit.i ], [ %i.x, %bb.e ]
  %.not146 = icmp eq i32 %.0.i168, 0
  br i1 %.not146, label %packet_read_pending.exit.thread, label %.thread185

packet_read_pending.exit.thread:                  ; preds = %bb.c, %packet_read_pending.exit, %bb.a
  %i.ab = getelementptr i8, ptr %1, i64 4         ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %.not147 = icmp eq i32 %i.ac, 0
  br i1 %.not147, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %packet_read_pending.exit.thread
  %i.ad = load ptr, ptr %i.d, align 8
  %.not149 = icmp eq ptr %i.ad, null
  br i1 %.not149, label %bb.g, label %.thread185, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 1336      ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  switch i32 %i.af, label %bb.i [
    i32 0, label %.sink.split
    i32 1, label %.sink.split
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.g, %bb.h
  %.sink = phi i32 [ 68, %bb.h ], [ 52, %bb.g ], [ 52, %bb.g ]
  %i.ag = getelementptr i8, ptr %0, i64 1340
  store i32 %.sink, ptr %i.ag, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %i.ah = load i32, ptr %1, align 4               ; 4 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %.thread185, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  %i.aj = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.ak = and i64 %i.aj, 4095
  %.not150 = icmp eq i64 %i.ak, 0
  br i1 %.not150, label %bb.k, label %.thread185, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %0, i64 1340      ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr i8, ptr %0, i64 1344
  %i.ao = load i32, ptr %i.an, align 64
  %i.ap = add i32 %i.ao, %i.am                    ; 2 uses
  %i.aq = icmp ugt i32 %i.af, 1
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %1, i64 20
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 7
  %i.av = and i64 %i.au, 8589934584
  %i.aw = zext i32 %i.ap to i64
  %i.ax = add nuw nsw i64 %i.aw, 48
  %i.ay = add nuw nsw i64 %i.ax, %i.av
  %i.az = icmp samesign ugt i64 %i.ay, %i.aj
  br i1 %i.az, label %.thread185, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = getelementptr i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 4            ; 4 uses
  %i.bc = icmp uge i32 %i.bb, %i.ap
  %i.bd = and i32 %i.bb, 15
  %.not151 = icmp eq i32 %i.bd, 0
  %or.cond163 = and i1 %i.bc, %.not151
  br i1 %or.cond163, label %bb.n, label %.thread185, !prof !137

bb.n:                                             ; preds = %bb.m
  %i.be = udiv i32 %i.ah, %i.bb                   ; 3 uses
  %i.bf = getelementptr i8, ptr %i.d, i64 12
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = icmp ugt i32 %i.bb, %i.ah
  br i1 %i.bg, label %.thread185, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %i.ab, align 4            ; 6 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bh, i32 %i.be)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %.thread185, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.bi = mul i32 %i.bh, %i.be
  %i.bj = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %.not152 = icmp eq i32 %i.bi, %i.bk
  br i1 %.not152, label %get_order.exit, label %.thread185, !prof !22

get_order.exit:                                   ; preds = %bb.p
  %i.bl = load i32, ptr %1, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = lshr i64 %i.bn, 12
  %i.bp = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4503599627370496) %i.bo, i32 -1) #26, !srcloc !138
  %i.bq = add i32 %i.bp, 1                        ; 13 uses
  %i.br = icmp ne i32 %i.bh, 0
  %i.bs = zext i32 %i.bh to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.bt, i32 noundef range(i32 3264, 11776) 11712) #23 ; 14 uses
  %.not.i169 = icmp ne ptr %i.bu, null            ; 2 uses
  %brmerge.not.i = and i1 %i.br, %.not.i169
  br i1 %brmerge.not.i, label %.lr.ph.i, label %alloc_pg_vec.exit, !prof !139

.lr.ph.i:                                         ; preds = %get_order.exit
  %i.bv = shl nuw i32 1, %i.bq
  %6 = sext i32 %i.bv to i64
  %i.bw = icmp eq i32 %i.bq, 31
  %i.bx = shl nsw i64 %6, 12
  %.0.i.i25.i = select i1 %i.bw, i64 -1, i64 %i.bx
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i
  %.0213.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cf, %bb.s ] ; 3 uses
  %i.by = tail call i64 @get_free_pages_noprof(i32 noundef 339392, i32 noundef %i.bq) #20 ; 2 uses
  %.not.i.i171 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i171, label %bb.r, label %alloc_one_pg_vec_page.exit.thread9.i

alloc_one_pg_vec_page.exit.thread9.i:             ; preds = %bb.q
  %.0.i2411.i = inttoptr i64 %i.by to ptr
  br label %.sink.split.i

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call noalias ptr @vzalloc_noprof(i64 noundef %.0.i.i25.i) #23 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.bz, null
  br i1 %.not31.i.i, label %alloc_one_pg_vec_page.exit.i, label %.sink.split.i

alloc_one_pg_vec_page.exit.i:                     ; preds = %bb.r
  %i.ca = tail call i64 @get_free_pages_noprof(i32 noundef 273856, i32 noundef %i.bq) #20 ; 2 uses
  %.0.i24.i = inttoptr i64 %i.ca to ptr
  %i.cb = sext i32 %.0213.i to i64
  %i.cc = getelementptr [8 x i8], ptr %i.bu, i64 %i.cb
  store ptr %.0.i24.i, ptr %i.cc, align 8
  %.not23.i = icmp eq i64 %i.ca, 0
  br i1 %.not23.i, label %alloc_pg_vec.exit.thread, label %bb.s, !prof !140

.sink.split.i:                                    ; preds = %bb.r, %alloc_one_pg_vec_page.exit.thread9.i
  %.0.i2411.sink.i = phi ptr [ %.0.i2411.i, %alloc_one_pg_vec_page.exit.thread9.i ], [ %i.bz, %bb.r ]
  %i.cd = sext i32 %.0213.i to i64
  %i.ce = getelementptr [8 x i8], ptr %i.bu, i64 %i.cd
  store ptr %.0.i2411.sink.i, ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %alloc_one_pg_vec_page.exit.i
  %i.cf = add nuw i32 %.0213.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cf, %i.bh
  br i1 %exitcond.not.i, label %alloc_pg_vec.exit, label %bb.q, !llvm.loop !136

alloc_pg_vec.exit.thread:                         ; preds = %alloc_one_pg_vec_page.exit.i
  tail call fastcc void @free_pg_vec(ptr noundef nonnull %i.bu, i32 noundef %i.bq, i32 noundef %i.bh) #22, !srcloc !141
  br label %.thread185

alloc_pg_vec.exit:                                ; preds = %bb.s, %get_order.exit
  br i1 %.not.i169, label %bb.t, label %.thread185, !prof !45

bb.t:                                             ; preds = %alloc_pg_vec.exit
  %i.cg = load i32, ptr %i.ae, align 8
  %cond = icmp eq i32 %i.cg, 2
  br i1 %cond, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  br i1 %i.a, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr i8, ptr %0, i64 848
  %i.ci = getelementptr i8, ptr %0, i64 856       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(176) %i.ci, i8 0, i64 176, i1 false)
  %i.cj = getelementptr i8, ptr %0, i64 904       ; 3 uses
  store i64 1, ptr %i.cj, align 8
  store ptr %i.bu, ptr %i.ch, align 16
  %i.ck = load ptr, ptr %i.bu, align 8            ; 11 uses
  %i.cl = getelementptr i8, ptr %0, i64 872       ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8
  %i.cm = load i32, ptr %1, align 4               ; 2 uses
  %i.cn = getelementptr i8, ptr %0, i64 888       ; 3 uses
  store i32 %i.cm, ptr %i.cn, align 8
  %i.co = load i32, ptr %i.ab, align 4
  %i.cp = getelementptr i8, ptr %0, i64 896
  store i32 %i.co, ptr %i.cp, align 64
  %i.cq = load i32, ptr %i.al, align 4
  %i.cr = getelementptr i8, ptr %0, i64 860
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %0, i64 870       ; 2 uses
  store i16 2, ptr %i.cs, align 2
  %i.ct = getelementptr i8, ptr %0, i64 792
  store i32 0, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %1, i64 16
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %.not.i172 = icmp eq i32 %i.cv, 0
  br i1 %.not.i172, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw nsw i64 %i.cw, 1000000
  br label %init_prb_bdqc.exit

bb.x:                                             ; preds = %bb.v
  %i.cy = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  tail call void @rtnl_lock() #20
  %i.cz = getelementptr i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.cz, align 16
  %i.da = getelementptr i8, ptr %0, i64 1304
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = tail call ptr @__dev_get_by_index(ptr noundef %.val.i.i, i32 noundef %i.db) #20 ; 2 uses
  %.not.i.i173 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i173, label %bb.y, label %bb.z, !prof !19

bb.y:                                             ; preds = %bb.x
  tail call void @rtnl_unlock() #20
  br label %prb_calc_retire_blk_tmo.exit.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i64 104, i1 false), !annotation !31
  %i.dd = call i32 @__ethtool_get_link_ksettings(ptr noundef nonnull %i.dc, ptr noundef nonnull %5) #20
  call void @rtnl_unlock() #20
  %.not18.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not18.i.i, label %bb.aa, label %prb_calc_retire_blk_tmo.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = add i32 %i.df, 1
  %or.cond.i.i = icmp ult i32 %i.dg, 1001
  br i1 %or.cond.i.i, label %prb_calc_retire_blk_tmo.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = shl i32 %i.cy, 3
  %i.di = sdiv i32 %i.dh, 1048576
  %i.dj = udiv i32 %i.df, 1000
  %i.dk = udiv i32 %i.di, %i.dj
  %i.dl = add i32 %i.dk, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.dm, 1000000
  br label %prb_calc_retire_blk_tmo.exit.i

prb_calc_retire_blk_tmo.exit.i:                   ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.015.i.i = phi i64 [ 8000000, %bb.y ], [ %i.dn, %bb.ab ], [ 8000000, %bb.z ], [ 8000000, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pre = load i32, ptr %i.cn, align 8
  br label %init_prb_bdqc.exit

init_prb_bdqc.exit:                               ; preds = %bb.w, %prb_calc_retire_blk_tmo.exit.i
  %i.do = phi i32 [ %.pre, %prb_calc_retire_blk_tmo.exit.i ], [ %i.cm, %bb.w ]
  %.015.i.sink.i = phi i64 [ %.015.i.i, %prb_calc_retire_blk_tmo.exit.i ], [ %i.cx, %bb.w ]
  %i.dp = getelementptr i8, ptr %0, i64 944       ; 2 uses
  store i64 %.015.i.sink.i, ptr %i.dp, align 16
  %i.dq = getelementptr i8, ptr %1, i64 20
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = getelementptr i8, ptr %0, i64 868       ; 3 uses
  store i16 %i.ds, ptr %i.dt, align 4
  %i.du = getelementptr i8, ptr %0, i64 936
  store i32 0, ptr %i.du, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %0, i64 940
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %i.dv = and i32 %i.dr, 65535
  %i.dw = add nuw nsw i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 131064
  %reass.sub = sub i32 %i.do, %i.dx
  %i.dy = add i32 %reass.sub, -48
  %i.dz = getelementptr i8, ptr %0, i64 892
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.ea, align 4
  store i32 %.val.i, ptr %i.ci, align 8
  %i.eb = getelementptr i8, ptr %0, i64 952       ; 2 uses
  call void @hrtimer_setup(ptr noundef %i.eb, ptr noundef @prb_retire_rx_blk_timer_expired, i32 noundef 1, i32 noundef 5) #20
  %i.ec = load i64, ptr %i.dp, align 16
  call void @hrtimer_start_range_ns(ptr noundef %i.eb, i64 noundef %i.ec, i64 noundef 0, i32 noundef 5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !31
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !55
  %i.ed = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.cj, align 8
  %i.ef = getelementptr i8, ptr %i.ck, i64 24
  store i64 %i.ed, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.eg, align 4
  %i.eh = load i16, ptr %i.dt, align 4
  %i.ei = zext i16 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ei, 7
  %i.ek = and i32 %i.ej, 131064
  %i.el = add nuw nsw i32 %i.ek, 48
  %i.em = getelementptr i8, ptr %i.ck, i64 20
  store i32 %i.el, ptr %i.em, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #20
  %i.en = load i64, ptr %4, align 8
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr i8, ptr %i.ck, i64 32
  store i32 %i.eo, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = trunc i64 %i.er to i32
  %i.et = getelementptr i8, ptr %i.ck, i64 36
  store i32 %i.es, ptr %i.et, align 4
  store ptr %i.ck, ptr %i.cl, align 8
  %i.eu = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.ev = zext i16 %i.eu to i64
  %i.ew = add nuw nsw i64 %i.ev, 7
  %i.ex = and i64 %i.ew, 131064
  %i.ey = getelementptr i8, ptr %i.ck, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %i.fa = getelementptr i8, ptr %0, i64 920       ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8
  %i.fb = zext i16 %i.eu to i32
  %i.fc = add nuw nsw i32 %i.fb, 7
  %i.fd = and i32 %i.fc, 131064
end_hunk_0
