Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmscan?download=true
inline.NumInlined: 1147
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@allow_direct_reclaim:bb.a
bb.r:                                             ; preds = %bb.s, %bb.q
  %i.dm = phi i64 [ 0, %bb.q ], [ %i.ed, %bb.s ]
  %.014.i.2 = phi i64 [ %i.dj, %bb.q ], [ %i.eb, %bb.s ] ; 3 uses
  %i.dn = shl nsw i64 -1, %i.dm
  %i.do = and i64 %i.dn, %i.dk                    ; 2 uses
  %.not.i.i.2 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.2, label %zone_page_state_snapshot.exit.2, label %find_next_bit.exit.i.2

find_next_bit.exit.i.2:                           ; preds = %bb.r
  %i.dp = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.do) #17, !srcloc !23 ; 3 uses
  %i.dq = and i64 %i.dp, 4294967232
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.s, label %zone_page_state_snapshot.exit.2

bb.s:                                             ; preds = %find_next_bit.exit.i.2
  %i.ds = load ptr, ptr %i.dl, align 16
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = and i64 %i.dp, 63
  %i.dv = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = add i64 %i.dw, %i.dt
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = sext i8 %i.dz to i64
  %i.eb = add i64 %.014.i.2, %i.ea                ; 2 uses
  %i.ec = add nuw nsw i64 %i.dp, 1
  %i.ed = and i64 %i.ec, 127                      ; 2 uses
  %i.ee = icmp samesign ugt i64 %i.ed, 63
  br i1 %i.ee, label %zone_page_state_snapshot.exit.2, label %bb.r, !prof !24, !llvm.loop !0

zone_page_state_snapshot.exit.2:                  ; preds = %bb.s, %find_next_bit.exit.i.2, %bb.r
  %.0.lcssa.i.2 = phi i64 [ %.014.i.2, %bb.r ], [ %i.eb, %bb.s ], [ %.014.i.2, %find_next_bit.exit.i.2 ]
  %.not29.2 = icmp slt i64 %.0.lcssa.i.2, 1
  br i1 %.not29.2, label %bb.t, label %bb.w

bb.t:                                             ; preds = %._crit_edge47, %zone_page_state_snapshot.exit.2
  %i.ef = phi i64 [ %.pre48, %._crit_edge47 ], [ %i.dk, %zone_page_state_snapshot.exit.2 ]
  %.026.val.2 = load i64, ptr %i.de, align 8
  %i.eg = getelementptr i8, ptr %0, i64 2720
  %.026.val30.2 = load i64, ptr %i.eg, align 32
  %i.eh = add i64 %.026.val.2, %.125.1
  %i.ei = add i64 %i.eh, %.026.val30.2
  %i.ej = getelementptr i8, ptr %0, i64 3776
  %i.ek = load volatile i64, ptr %i.ej, align 32
  %i.el = getelementptr i8, ptr %0, i64 2800
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.em = phi i64 [ 0, %bb.t ], [ %i.fd, %bb.v ]
  %.014.i31.2 = phi i64 [ %i.ek, %bb.t ], [ %i.fb, %bb.v ] ; 3 uses
  %i.en = shl nsw i64 -1, %i.em
  %i.eo = and i64 %i.en, %i.ef                    ; 2 uses
  %.not.i.i32.2 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i32.2, label %zone_page_state_snapshot.exit37.2, label %find_next_bit.exit.i33.2

find_next_bit.exit.i33.2:                         ; preds = %bb.u
  %i.ep = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.eo) #17, !srcloc !23 ; 3 uses
  %i.eq = and i64 %i.ep, 4294967232
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.v, label %zone_page_state_snapshot.exit37.2

bb.v:                                             ; preds = %find_next_bit.exit.i33.2
  %i.es = load ptr, ptr %i.el, align 16
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.ep, 63
  %i.ev = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = add i64 %i.ew, %i.et
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = sext i8 %i.ez to i64
  %i.fb = add i64 %.014.i31.2, %i.fa              ; 2 uses
  %i.fc = add nuw nsw i64 %i.ep, 1
  %i.fd = and i64 %i.fc, 127                      ; 2 uses
  %i.fe = icmp samesign ugt i64 %i.fd, 63
  br i1 %i.fe, label %zone_page_state_snapshot.exit37.2, label %bb.u, !prof !24, !llvm.loop !0

zone_page_state_snapshot.exit37.2:                ; preds = %bb.v, %find_next_bit.exit.i33.2, %bb.u
  %.0.lcssa.i35.2 = phi i64 [ %.014.i31.2, %bb.u ], [ %i.fb, %bb.v ], [ %.014.i31.2, %find_next_bit.exit.i33.2 ]
  %spec.store.select.i36.2 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.0.lcssa.i35.2, i64 0)
  %i.ff = add i64 %spec.store.select.i36.2, %.1.1
  br label %bb.w

bb.w:                                             ; preds = %zone_page_state_snapshot.exit37.2, %zone_page_state_snapshot.exit.2, %.preheader.2
  %.125.2 = phi i64 [ %i.ei, %zone_page_state_snapshot.exit37.2 ], [ %.125.1, %zone_page_state_snapshot.exit.2 ], [ %.125.1, %.preheader.2 ] ; 2 uses
  %.1.2 = phi i64 [ %i.ff, %zone_page_state_snapshot.exit37.2 ], [ %.1.1, %zone_page_state_snapshot.exit.2 ], [ %.1.1, %.preheader.2 ]
  %.not = icmp eq i64 %.125.2, 0
  %i.fg = lshr i64 %.125.2, 1
  %i.fh = icmp ugt i64 %.1.2, %i.fg
  %or.cond = select i1 %.not, i1 true, i1 %i.fh
  br i1 %or.cond, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = getelementptr i8, ptr %0, i64 13640
  %i.fj = getelementptr i8, ptr %0, i64 13648     ; 2 uses
  %i.fk = load volatile ptr, ptr %i.fj, align 8
  %.not39 = icmp eq ptr %i.fk, %i.fj
  br i1 %.not39, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr i8, ptr %0, i64 13812     ; 2 uses
  %i.fm = load volatile i32, ptr %i.fl, align 4
  %i.fn = icmp ugt i32 %i.fm, 2
  br i1 %i.fn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store volatile i32 2, ptr %i.fl, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fo = tail call i32 @__wake_up(ptr noundef %i.fi, i32 noundef 1, i32 noundef 1, ptr noundef null) #14 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa, %bb.w, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.w ], [ false, %bb.aa ], [ false, %bb.x ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__next_zones_zonelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__delayacct_freepages_start() local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @shrink_node(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.nodemask_t, align 8         ; 6 uses
  %3 = alloca %struct.nodemask_t, align 8         ; 6 uses
  %4 = alloca %struct.list_head, align 8          ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.reclaim_stat, align 4       ; 12 uses
  %6 = alloca %struct.nodemask_t, align 8         ; 6 uses
  %i.b = alloca [5 x i64], align 16               ; 17 uses
  %i.c = alloca [5 x i64], align 16               ; 9 uses
  %7 = alloca %struct.blk_plug, align 8           ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 13952      ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 80         ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 72         ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 14032      ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 14040
  %i.i = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 14048
  %i.k = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 48         ; 21 uses
  %i.m = getelementptr i8, ptr %0, i64 14064
  %i.n = getelementptr i8, ptr %0, i64 14072
  %i.o = getelementptr i8, ptr %1, i64 52         ; 10 uses
  %i.p = getelementptr i8, ptr %0, i64 13632      ; 7 uses
  %i.q = getelementptr i8, ptr %0, i64 144
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = getelementptr i8, ptr %0, i64 1488
  %i.u = getelementptr i8, ptr %0, i64 1360
  %i.v = getelementptr i8, ptr %0, i64 1376
  %i.w = getelementptr i8, ptr %0, i64 2832
  %i.x = getelementptr i8, ptr %0, i64 2704
  %i.y = getelementptr i8, ptr %0, i64 2720
  %i.z = getelementptr i8, ptr %0, i64 4176
  %i.aa = getelementptr i8, ptr %0, i64 4048
  %i.ab = getelementptr i8, ptr %0, i64 4064
  %i.ac = getelementptr i8, ptr %1, i64 50        ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %1, null          ; 3 uses
  %i.ae = getelementptr i8, ptr %1, i64 53        ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = getelementptr i8, ptr %1, i64 56        ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 13720     ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 13712
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr i8, ptr %1, i64 84        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.as = getelementptr i8, ptr %1, i64 88        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = getelementptr i8, ptr %1, i64 92        ; 3 uses
  %i.av = getelementptr i8, ptr %1, i64 96        ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = getelementptr i8, ptr %0, i64 14088     ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 14080     ; 4 uses
  %i.bb = getelementptr i8, ptr %1, i64 51        ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %should_continue_reclaim.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %spec.select, %should_continue_reclaim.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.bc = load i64, ptr %i.f, align 8
  call void @_raw_spin_lock_irq(ptr noundef %i.g) #14
  %i.bd = load i64, ptr %i.h, align 8
  store i64 %i.bd, ptr %i.i, align 8
  %i.be = load i64, ptr %i.j, align 8
  store i64 %i.be, ptr %i.k, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.g) #14
  %i.bf = load i16, ptr %i.l, align 8             ; 2 uses
  %i.bg = and i16 %i.bf, 4
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.bh = call i64 @node_page_state(ptr noundef %0, i32 noundef 12) #14
  %i.bi = load i64, ptr %i.m, align 8
  %.not50.i = icmp eq i64 %i.bh, %i.bi
  br i1 %.not50.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bj = call i64 @node_page_state(ptr noundef %0, i32 noundef range(i32 0, 14) 0) #14 ; 3 uses
  %i.bk = call i64 @node_page_state(ptr noundef %0, i32 noundef range(i32 0, 14) 1) #14 ; 2 uses
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = lshr i64 %i.bl, 18                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %inactive_is_low.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = mul nuw nsw i64 %i.bm, 10
  %i.bo = call i64 @int_sqrt(i64 noundef %i.bn) #14
  %i.bp = mul i64 %i.bo, %i.bj
  br label %inactive_is_low.exit.i

inactive_is_low.exit.i:                           ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.bp, %bb.e ], [ %i.bj, %bb.d ]
  %i.bq = icmp ult i64 %.0.i.i, %i.bk
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %inactive_is_low.exit.i, %bb.c
  %i.br = load i16, ptr %i.l, align 8
  %i.bs = or i16 %i.br, 1
  br label %bb.h

bb.g:                                             ; preds = %inactive_is_low.exit.i
  %i.bt = load i16, ptr %i.l, align 8
  %i.bu = and i16 %i.bt, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.i = phi i16 [ %i.bu, %bb.g ], [ %i.bs, %bb.f ]
  store i16 %storemerge.i, ptr %i.l, align 8
  %i.bv = call i64 @node_page_state(ptr noundef %0, i32 noundef 13) #14
  %i.bw = load i64, ptr %i.n, align 8
  %.not51.i = icmp eq i64 %i.bv, %i.bw
  br i1 %.not51.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bx = call i64 @node_page_state(ptr noundef %0, i32 noundef range(i32 0, 14) 2) #14 ; 3 uses
  %i.by = call i64 @node_page_state(ptr noundef %0, i32 noundef range(i32 0, 14) 3) #14 ; 2 uses
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = lshr i64 %i.bz, 18                      ; 2 uses
  %.not.i61.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i61.i, label %inactive_is_low.exit63.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = mul nuw nsw i64 %i.ca, 10
  %i.cc = call i64 @int_sqrt(i64 noundef %i.cb) #14
  %i.cd = mul i64 %i.cc, %i.bx
  br label %inactive_is_low.exit63.i

inactive_is_low.exit63.i:                         ; preds = %bb.j, %bb.i
  %.0.i62.i = phi i64 [ %i.cd, %bb.j ], [ %i.bx, %bb.i ]
  %i.ce = icmp ult i64 %.0.i62.i, %i.by
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %inactive_is_low.exit63.i, %bb.h
  %i.cf = load i16, ptr %i.l, align 8
  %i.cg = or i16 %i.cf, 2
  br label %bb.n

bb.l:                                             ; preds = %inactive_is_low.exit63.i
  %i.ch = load i16, ptr %i.l, align 8
  %i.ci = and i16 %i.ch, -3
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.cj = or i16 %i.bf, 3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %storemerge53.i = phi i16 [ %i.cj, %bb.m ], [ %i.ci, %bb.l ], [ %i.cg, %bb.k ]
  store i16 %storemerge53.i, ptr %i.l, align 8
  %i.ck = call i64 @node_page_state(ptr noundef %0, i32 noundef 2) #14
  %i.cl = load i8, ptr %i.o, align 4
  %i.cm = sext i8 %i.cl to i64
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = lshr i64 %i.ck, %i.cn
  %.not54.i = icmp ne i64 %i.co, 0
  %.pre.i = load i16, ptr %i.l, align 8           ; 2 uses
  %i.cp = and i16 %.pre.i, 130
  %or.cond.i = icmp eq i16 %i.cp, 0
  %or.cond69.i = select i1 %.not54.i, i1 %or.cond.i, i1 false
  %i.cq = and i16 %.pre.i, 32767
  %masksel.i = select i1 %or.cond69.i, i16 -32768, i16 0
  %storemerge57.i = or disjoint i16 %masksel.i, %i.cq
  store i16 %storemerge57.i, ptr %i.l, align 8
  %i.cr = load i32, ptr %i.p, align 64
  %i.cs = call i64 @sum_zone_node_page_state(i32 noundef %i.cr, i32 noundef 0) #14
  %i.ct = call i64 @node_page_state(ptr noundef %0, i32 noundef 3) #14
  %i.cu = call i64 @node_page_state(ptr noundef %0, i32 noundef 2) #14
  %i.cv = load volatile i64, ptr %i.q, align 16
  %.not64.i = icmp eq i64 %i.cv, 0
  br i1 %.not64.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.val.i = load i64, ptr %i.r, align 16
  %.0.val60.i = load i64, ptr %i.s, align 32
  %i.cw = add i64 %.0.val60.i, %.0.val.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i = phi i64 [ %i.cw, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.cx = load volatile i64, ptr %i.t, align 16
  %.not64.1.i = icmp eq i64 %i.cx, 0
  br i1 %.not64.1.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.val.1.i = load i64, ptr %i.u, align 16
  %.0.val60.1.i = load i64, ptr %i.v, align 32
  %i.cy = add i64 %.0.val.1.i, %.1.i
  %i.cz = add i64 %i.cy, %.0.val60.1.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.1.i = phi i64 [ %i.cz, %bb.q ], [ %.1.i, %bb.p ] ; 2 uses
  %i.da = load volatile i64, ptr %i.w, align 16
  %.not64.2.i = icmp eq i64 %i.da, 0
  br i1 %.not64.2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.0.val.2.i = load i64, ptr %i.x, align 16
  %.0.val60.2.i = load i64, ptr %i.y, align 32
  %i.db = add i64 %.0.val.2.i, %.1.1.i
  %i.dc = add i64 %i.db, %.0.val60.2.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.2.i = phi i64 [ %i.dc, %bb.s ], [ %.1.1.i, %bb.r ] ; 2 uses
  %i.dd = load volatile i64, ptr %i.z, align 16
  %.not64.3.i = icmp eq i64 %i.dd, 0
  br i1 %.not64.3.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0.val.3.i = load i64, ptr %i.aa, align 16
  %.0.val60.3.i = load i64, ptr %i.ab, align 32
  %i.de = add i64 %.0.val.3.i, %.1.2.i
  %i.df = add i64 %i.de, %.0.val60.3.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.3.i = phi i64 [ %i.df, %bb.u ], [ %.1.2.i, %bb.t ]
  %i.dg = call i64 @node_page_state(ptr noundef %0, i32 noundef 0) #14
  %i.dh = add i64 %i.ct, %i.cs
  %i.di = add i64 %i.dh, %i.cu
  %.not58.i = icmp ugt i64 %i.di, %.1.3.i
  br i1 %.not58.i, label %prepare_scan_control.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = load i16, ptr %i.l, align 8
  %i.dk = and i16 %i.dj, 1
  %.not59.i = icmp eq i16 %i.dk, 0
  br i1 %.not59.i, label %bb.x, label %prepare_scan_control.exit

bb.x:                                             ; preds = %bb.w
  %i.dl = load i8, ptr %i.o, align 4
  %i.dm = sext i8 %i.dl to i64
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = lshr i64 %i.dg, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i8
  br label %prepare_scan_control.exit

prepare_scan_control.exit:                        ; preds = %bb.v, %bb.w, %bb.x
  %i.dr = phi i8 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.dq, %bb.x ]
  %i.ds = load i8, ptr %i.ac, align 2
  %i.dt = and i8 %i.ds, -2
  %i.du = or disjoint i8 %i.dt, %i.dr
  store i8 %i.du, ptr %i.ac, align 2
  %i.dv = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !26
  %i.dw = inttoptr i64 %i.dv to ptr               ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 44     ; 10 uses
  %i.dy = call i32 @__SCT__cond_resched() #14     ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.dz = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !annotation !19
  %i.ea = load volatile i32, ptr @vm_swappiness, align 4 ; 4 uses
  %i.eb = load i16, ptr %i.l, align 8
  %i.ec = and i16 %i.eb, 64
end_hunk_0
begin_hunk_1_@shrink_node:bb.a
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !32
  %i.nz = getelementptr i8, ptr %i.nu, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.nz, ptr elementtype(i64) %i.nz) #15, !srcloc !33
  br label %shrink_inactive_list.exit.i.i.i

shrink_inactive_list.exit.i.i.i:                  ; preds = %bb.br, %cpumask_test_cpu.exit.i.i.i.i.i.i, %handle_reclaim_writeback.exit.i.i.i.i, %reclaimer_offset.exit.i.i.i.i, %bb.bj, %fatal_signal_pending.exit.i.i.i.i
  %.049.i.i.i.i = phi i64 [ 0, %reclaimer_offset.exit.i.i.i.i ], [ %i.ms, %cpumask_test_cpu.exit.i.i.i.i.i.i ], [ %i.ms, %bb.br ], [ %i.ms, %handle_reclaim_writeback.exit.i.i.i.i ], [ 0, %bb.bj ], [ 32, %fatal_signal_pending.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %shrink_list.exit.i.i

shrink_list.exit.i.i:                             ; preds = %shrink_inactive_list.exit.i.i.i, %bb.bf, %bb.be
  %.0.i90.i.i = phi i64 [ %.049.i.i.i.i, %shrink_inactive_list.exit.i.i.i ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %i.oa = add i64 %.0.i90.i.i, %.182102.i.i
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %shrink_list.exit.i.i, %.critedge.preheader.i.i
  %.2.i.i = phi i64 [ %i.oa, %shrink_list.exit.i.i ], [ %.182102.i.i, %.critedge.preheader.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.not.i.i, label %bb.bs, label %.critedge.preheader.i.i.backedge

.critedge.preheader.i.i.backedge:                 ; preds = %.critedge.i.i, %bb.by
  %indvars.iv.i.i.be = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ 0, %bb.by ]
  br label %.critedge.preheader.i.i, !llvm.loop !169

bb.bs:                                            ; preds = %.critedge.i.i
  %i.ob = call i32 @__SCT__cond_resched() #14     ; 0 uses
  %i.oc = icmp ult i64 %.2.i.i, %i.dz
  %or.cond4.i.i = select i1 %i.oc, i1 true, i1 %spec.select.i.i
  %.pre115.i.i = load i64, ptr %i.b, align 16     ; 2 uses
  %.pre117.i.i = load i64, ptr %i.ah, align 8     ; 2 uses
  %.pre119.i.i = load i64, ptr %i.ad, align 16    ; 2 uses
  br i1 %or.cond4.i.i, label %bb.by, label %bb.bt, !llvm.loop !170

bb.bt:                                            ; preds = %bb.bs
  %i.od = add i64 %.pre119.i.i, %.pre117.i.i      ; 3 uses
  %i.oe = load i64, ptr %i.af, align 8
  %i.of = add i64 %i.oe, %.pre115.i.i             ; 3 uses
  %i.og = icmp ne i64 %i.od, 0
  %i.oh = icmp ne i64 %i.of, 0
  %or.cond6.i.i = select i1 %i.og, i1 %i.oh, i1 false
  br i1 %or.cond6.i.i, label %bb.bu, label %.thread.i.i

bb.bu:                                            ; preds = %bb.bt
  %.not88.i.i = icmp ugt i64 %i.od, %i.of
  br i1 %.not88.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.oi = load i64, ptr %i.c, align 16
  %i.oj = load i64, ptr %i.ay, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ok = load i64, ptr %i.aw, align 16
  %i.ol = load i64, ptr %i.ax, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sink137.i.i = phi i64 [ %i.ok, %bb.bw ], [ %i.oi, %bb.bv ]
  %.sink136.i.i = phi i64 [ %i.ol, %bb.bw ], [ %i.oj, %bb.bv ]
  %.sink135.i.i = phi i64 [ %i.od, %bb.bw ], [ %i.of, %bb.bv ]
  %i.om = phi i32 [ 0, %bb.bw ], [ 2, %bb.bv ]    ; 2 uses
  %.1.sroa.phi.i.i = phi ptr [ %i.ad, %bb.bw ], [ %i.b, %bb.bv ]
  %i.on = add i64 %.sink137.i.i, 1
  %i.oo = add i64 %i.on, %.sink136.i.i
  %i.op = mul i64 %.sink135.i.i, 100
  %i.oq = udiv i64 %i.op, %i.oo
  %i.or = zext nneg i32 %i.om to i64              ; 2 uses
  %i.os = getelementptr [8 x i8], ptr %i.c, i64 %i.or
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.sroa.phi.i.i, i8 0, i64 16, i1 false)
  %i.ot = load i64, ptr %i.os, align 16           ; 2 uses
  %i.ou = getelementptr [8 x i8], ptr %i.b, i64 %i.or ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 16
  %i.ow = sub i64 %i.ot, %i.ov
  %i.ox = sub i64 100, %i.oq                      ; 2 uses
  %i.oy = mul i64 %i.ot, %i.ox
  %i.oz = udiv i64 %i.oy, 100
  %i.pa = call i64 @llvm.usub.sat.i64(i64 %i.oz, i64 %i.ow)
  store i64 %i.pa, ptr %i.ou, align 16
  %i.pb = or disjoint i32 %i.om, 1
  %i.pc = zext nneg i32 %i.pb to i64              ; 2 uses
  %i.pd = getelementptr [8 x i8], ptr %i.c, i64 %i.pc
  %i.pe = load i64, ptr %i.pd, align 8            ; 2 uses
  %i.pf = getelementptr [8 x i8], ptr %i.b, i64 %i.pc ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = sub i64 %i.pe, %i.pg
  %i.pi = mul i64 %i.pe, %i.ox
  %i.pj = udiv i64 %i.pi, 100
  %i.pk = call i64 @llvm.usub.sat.i64(i64 %i.pj, i64 %i.ph)
  store i64 %i.pk, ptr %i.pf, align 8
  %.pre.i.i = load i64, ptr %i.b, align 16
  %.pre116.i.i = load i64, ptr %i.ah, align 8
  %.pre118.i.i = load i64, ptr %i.ad, align 16
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bs
  %i.pl = phi i64 [ %.pre119.i.i, %bb.bs ], [ %.pre118.i.i, %bb.bx ]
  %i.pm = phi i64 [ %.pre117.i.i, %bb.bs ], [ %.pre116.i.i, %bb.bx ]
  %i.pn = phi i64 [ %.pre115.i.i, %bb.bs ], [ %.pre.i.i, %bb.bx ]
  %i.po = icmp ne i64 %i.pn, 0
  %i.pp = icmp ne i64 %i.pm, 0
  %or.cond.i.i = select i1 %i.po, i1 true, i1 %i.pp
  %i.pq = icmp ne i64 %i.pl, 0
  %or.cond9.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.pq
  br i1 %or.cond9.i.i, label %.critedge.preheader.i.i.backedge, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.by, %bb.bt, %get_scan_count.exit.i.i
  %.3.i.i = phi i64 [ 0, %get_scan_count.exit.i.i ], [ %.2.i.i, %bb.bt ], [ %.2.i.i, %bb.by ]
  call void @blk_finish_plug(ptr noundef nonnull %7) #14
  %i.pr = load i64, ptr %i.f, align 8
  %i.ps = add i64 %i.pr, %.3.i.i
  store i64 %i.ps, ptr %i.f, align 8
  %i.pt = load i64, ptr @total_swap_pages, align 8
  %i.pu = icmp sgt i64 %i.pt, 0
  br i1 %i.pu, label %can_age_anon_pages.exit.thread.i.i, label %bb.bz

bb.bz:                                            ; preds = %.thread.i.i
  %i.pv = load i32, ptr %i.p, align 64
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr [8 x i8], ptr @node_data, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.pz = icmp ne ptr %i.py, null
  %i.qa = load i8, ptr @numa_demotion_enabled, align 1, !range !25
  %i.qb = trunc nuw i8 %i.qa to i1
  %or.cond.i.i.i.i = select i1 %i.pz, i1 %i.qb, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ca, label %can_age_anon_pages.exit.thread100.i.i

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not.i.i.i.i.i, label %can_age_anon_pages.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qc = load i8, ptr %i.ac, align 2
  %i.qd = and i8 %i.qc, 2
  %.not9.i.i.i.i = icmp eq i8 %i.qd, 0
  br i1 %.not9.i.i.i.i, label %can_age_anon_pages.exit.i.i, label %can_age_anon_pages.exit.thread100.i.i

can_age_anon_pages.exit.thread100.i.i:            ; preds = %bb.cb, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %shrink_node_memcgs.exit

can_age_anon_pages.exit.i.i:                      ; preds = %bb.cb, %bb.ca
  store i64 0, ptr %3, align 8, !annotation !19
  call void @node_get_allowed_targets(ptr noundef nonnull %i.py, ptr noundef nonnull %3) #14
  %i.qe = load i64, ptr %3, align 8
  %.not.i.i.i95.not.i.i = icmp eq i64 %i.qe, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.not.i.i.i95.not.i.i, label %shrink_node_memcgs.exit, label %can_age_anon_pages.exit.thread.i.i

can_age_anon_pages.exit.thread.i.i:               ; preds = %can_age_anon_pages.exit.i.i, %.thread.i.i
  %i.qf = call i64 @node_page_state(ptr noundef %0, i32 noundef range(i32 0, 14) 0) #14 ; 3 uses
  %i.qg = call i64 @node_page_state(ptr noundef %0, i32 noundef range(i32 0, 14) 1) #14 ; 2 uses
  %i.qh = add i64 %i.qg, %i.qf
  %i.qi = lshr i64 %i.qh, 18                      ; 2 uses
  %.not.i96.i.i = icmp eq i64 %i.qi, 0
  br i1 %.not.i96.i.i, label %inactive_is_low.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %can_age_anon_pages.exit.thread.i.i
  %i.qj = mul nuw nsw i64 %i.qi, 10
  %i.qk = call i64 @int_sqrt(i64 noundef %i.qj) #14
  %i.ql = mul i64 %i.qk, %i.qf
  br label %inactive_is_low.exit.i.i

inactive_is_low.exit.i.i:                         ; preds = %bb.cc, %can_age_anon_pages.exit.thread.i.i
  %.0.i97.i.i = phi i64 [ %i.ql, %bb.cc ], [ %i.qf, %can_age_anon_pages.exit.thread.i.i ]
  %i.qm = icmp ult i64 %.0.i97.i.i, %i.qg
  br i1 %i.qm, label %bb.cd, label %shrink_node_memcgs.exit

bb.cd:                                            ; preds = %inactive_is_low.exit.i.i
  call fastcc void @shrink_active_list(i64 noundef 32, ptr noundef %i.d, ptr noundef %1, i32 noundef 1) #18, !srcloc !180
  br label %shrink_node_memcgs.exit

shrink_node_memcgs.exit:                          ; preds = %can_age_anon_pages.exit.thread100.i.i, %can_age_anon_pages.exit.i.i, %inactive_is_low.exit.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.qn = load i32, ptr %i.aj, align 8
  %i.qo = load i32, ptr %i.p, align 64
  %i.qp = load i8, ptr %i.o, align 4
  %i.qq = sext i8 %i.qp to i32
  %i.qr = call i64 @shrink_slab(i32 noundef %i.qn, i32 noundef %i.qo, ptr noundef null, i32 noundef %i.qq) #14 ; 0 uses
  %i.qs = getelementptr i8, ptr %i.dw, i64 2368   ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 64           ; 2 uses
  %.not.i77 = icmp eq ptr %i.qt, null
  br i1 %.not.i77, label %flush_reclaim_state.exit, label %bb.ce

bb.ce:                                            ; preds = %shrink_node_memcgs.exit
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = load i64, ptr %i.f, align 8
  %i.qw = add i64 %i.qv, %i.qu
  store i64 %i.qw, ptr %i.f, align 8
  %i.qx = load ptr, ptr %i.qs, align 64
  store i64 0, ptr %i.qx, align 8
  br label %flush_reclaim_state.exit

flush_reclaim_state.exit:                         ; preds = %shrink_node_memcgs.exit, %bb.ce
  %i.qy = load i64, ptr %i.f, align 8
  %.not66 = icmp ne i64 %i.qy, %i.bc              ; 3 uses
  %spec.select = select i1 %.not66, i1 true, i1 %.0 ; 7 uses
  %i.qz = load i32, ptr %i.dx, align 4
  %i.ra = and i32 %i.qz, 131072
  %.not67 = icmp eq i32 %i.ra, 0
  br i1 %.not67, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %flush_reclaim_state.exit
  %i.rb = load i32, ptr %i.as, align 8            ; 2 uses
  %.not68 = icmp eq i32 %i.rb, 0
  br i1 %.not68, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rc = load i32, ptr %i.av, align 8
  %i.rd = icmp eq i32 %i.rb, %i.rc
  br i1 %i.rd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.az, i32 1, ptr elementtype(i8) %i.az) #15, !srcloc !42
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.re = load i32, ptr %i.au, align 4
  %.not69 = icmp eq i32 %i.re, 0
  br i1 %.not69, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @reclaim_throttle(ptr noundef %0, i32 noundef 0) #18
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj, %flush_reclaim_state.exit
  %i.rf = load i32, ptr %i.e, align 8             ; 2 uses
  %.not70 = icmp eq i32 %i.rf, 0
  br i1 %.not70, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rg = load i32, ptr %i.aq, align 4
  %i.rh = icmp eq i32 %i.rf, %i.rg
  br i1 %i.rh, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ri = load i32, ptr %i.dx, align 4
  %i.rj = and i32 %i.ri, 131072
  %.not71 = icmp eq i32 %i.rj, 0
  br i1 %.not71, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ba, i32 2, ptr elementtype(i8) %i.ba) #15, !srcloc !42
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.cl, %bb.ck
  %i.rk = load i32, ptr %i.dx, align 4
  %i.rl = and i32 %i.rk, 1179648
  %or.cond92 = icmp eq i32 %i.rl, 0
  br i1 %or.cond92, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.rm = load i16, ptr %i.l, align 8
  %i.rn = and i16 %i.rm, 8192
  %.not74 = icmp eq i16 %i.rn, 0
  br i1 %.not74, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.ro = load volatile i64, ptr %i.ba, align 64
  %i.rp = and i64 %i.ro, 1
  %.not88 = icmp eq i64 %i.rp, 0
  br i1 %.not88, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.rq = load volatile i64, ptr %i.ba, align 64
  %i.rr = and i64 %i.rq, 2
  %.not90 = icmp eq i64 %i.rr, 0
  br i1 %.not90, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @reclaim_throttle(ptr noundef %0, i32 noundef 3) #18
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.co
  %i.rs = load i32, ptr %i.aj, align 8
  %i.rt = and i32 %i.rs, 64
  %.not6.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not6.i.i, label %should_continue_reclaim.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ru = load i8, ptr %i.bb, align 1             ; 3 uses
  %.not.i.i78 = icmp eq i8 %i.ru, 0
  br i1 %.not.i.i78, label %should_continue_reclaim.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rv = icmp sgt i8 %i.ru, 3
  br i1 %i.rv, label %in_reclaim_compaction.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rw = load i8, ptr %i.o, align 4
  %i.rx = icmp slt i8 %i.rw, 10
  %or.cond.i80.not = and i1 %i.rx, %.not66
  br i1 %or.cond.i80.not, label %.preheader.i, label %should_continue_reclaim.exit.thread

in_reclaim_compaction.exit.i:                     ; preds = %bb.cv
  br i1 %.not66, label %.preheader.i, label %should_continue_reclaim.exit.thread

.preheader.i:                                     ; preds = %in_reclaim_compaction.exit.i, %bb.cw
  %i.ry = load i8, ptr %i.ae, align 1             ; 3 uses
  %.not3042.i = icmp slt i8 %i.ry, 0
  br i1 %.not3042.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.rz = zext nneg i8 %i.ry to i32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.da, %.lr.ph.i
  %i.sa = phi i8 [ %i.ry, %.lr.ph.i ], [ %i.so, %bb.da ]
  %i.sb = phi i32 [ %i.rz, %.lr.ph.i ], [ %i.sr, %bb.da ]
  %.02644.i = phi ptr [ %0, %.lr.ph.i ], [ %i.sq, %bb.da ] ; 6 uses
  %.02743.i = phi i32 [ 0, %.lr.ph.i ], [ %i.sp, %bb.da ] ; 2 uses
  %i.sc = getelementptr i8, ptr %.02644.i, i64 144
  %i.sd = load volatile i64, ptr %i.sc, align 8
  %.not41.i = icmp eq i64 %i.sd, 0
  br i1 %.not41.i, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.026.val.i = load i64, ptr %.02644.i, align 8
  %i.se = getelementptr i8, ptr %.02644.i, i64 32
  %.026.val32.i = load i64, ptr %i.se, align 32
  %i.sf = add i64 %.026.val32.i, %.026.val.i      ; 2 uses
  %i.sg = load i8, ptr %i.bb, align 1
  %i.sh = sext i8 %i.sg to i32
  %i.si = call zeroext i1 @zone_watermark_ok(ptr noundef %.02644.i, i32 noundef %i.sh, i64 noundef %i.sf, i32 noundef %i.sb, i32 noundef 0) #14
  br i1 %i.si, label %should_continue_reclaim.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.sj = load i8, ptr %i.bb, align 1
  %i.sk = sext i8 %i.sj to i32
  %i.sl = load i8, ptr %i.ae, align 1
  %i.sm = sext i8 %i.sl to i32
  %i.sn = call zeroext i1 @compaction_suitable(ptr noundef %.02644.i, i32 noundef %i.sk, i64 noundef %i.sf, i32 noundef %i.sm) #14
  br i1 %i.sn, label %should_continue_reclaim.exit.thread, label %._crit_edge45.i

._crit_edge45.i:                                  ; preds = %bb.cz
  %.pre.i81 = load i8, ptr %i.ae, align 1
  br label %bb.da

bb.da:                                            ; preds = %._crit_edge45.i, %bb.cx
  %i.so = phi i8 [ %.pre.i81, %._crit_edge45.i ], [ %i.sa, %bb.cx ] ; 2 uses
  %i.sp = add nuw nsw i32 %.02743.i, 1
  %i.sq = getelementptr i8, ptr %.02644.i, i64 1344
  %i.sr = sext i8 %i.so to i32                    ; 2 uses
  %.not30.not.i = icmp slt i32 %.02743.i, %i.sr
  br i1 %.not30.not.i, label %bb.cx, label %._crit_edge.loopexit.i, !llvm.loop !171

._crit_edge.loopexit.i:                           ; preds = %bb.da
  %.pre46.i = load i8, ptr %i.bb, align 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ss = phi i8 [ %.pre46.i, %._crit_edge.loopexit.i ], [ %i.ru, %.preheader.i ]
  %i.st = zext nneg i8 %i.ss to i64
  %i.su = shl i64 2, %i.st
  %i.sv = call range(i64 0, 33) i64 @llvm.umin.i64(i64 %i.su, i64 32)
  %i.sw = call i64 @node_page_state(ptr noundef %0, i32 noundef 2) #14 ; 3 uses
  %i.sx = load i32, ptr %i.p, align 64
  %i.sy = load volatile i64, ptr @nr_swap_pages, align 8
  %i.sz = icmp sgt i64 %i.sy, 0
  br i1 %i.sz, label %can_reclaim_anon_pages.exit.thread.i, label %.split.i.i

.split.i.i:                                       ; preds = %._crit_edge.i
  %i.ta = sext i32 %i.sx to i64
  %i.tb = getelementptr [8 x i8], ptr @node_data, i64 %i.ta
  %i.tc = load ptr, ptr %i.tb, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.td = icmp ne ptr %i.tc, null
  %i.te = load i8, ptr @numa_demotion_enabled, align 1, !range !25
  %i.tf = trunc nuw i8 %i.te to i1
  %or.cond.i.i.i = select i1 %i.td, i1 %i.tf, i1 false
  br i1 %or.cond.i.i.i, label %bb.db, label %can_reclaim_anon_pages.exit.thread39.i

bb.db:                                            ; preds = %.split.i.i
  br i1 %.not.i.i.i.i.i, label %can_reclaim_anon_pages.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tg = load i8, ptr %i.ac, align 2
  %i.th = and i8 %i.tg, 2
  %.not9.i.i.i = icmp eq i8 %i.th, 0
  br i1 %.not9.i.i.i, label %can_reclaim_anon_pages.exit.i, label %can_reclaim_anon_pages.exit.thread39.i

can_reclaim_anon_pages.exit.thread39.i:           ; preds = %bb.dc, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %should_continue_reclaim.exit

can_reclaim_anon_pages.exit.i:                    ; preds = %bb.dc, %bb.db
  store i64 0, ptr %2, align 8, !annotation !19
  call void @node_get_allowed_targets(ptr noundef nonnull %i.tc, ptr noundef nonnull %2) #14
  %i.ti = load i64, ptr %2, align 8
  %.not.i.i.i.not.i = icmp eq i64 %i.ti, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not.i.i.i.not.i, label %should_continue_reclaim.exit, label %can_reclaim_anon_pages.exit.thread.i

can_reclaim_anon_pages.exit.thread.i:             ; preds = %can_reclaim_anon_pages.exit.i, %._crit_edge.i
  %i.tj = call i64 @node_page_state(ptr noundef %0, i32 noundef 0) #14
  %i.tk = add i64 %i.tj, %i.sw
  br label %should_continue_reclaim.exit

should_continue_reclaim.exit:                     ; preds = %can_reclaim_anon_pages.exit.thread39.i, %can_reclaim_anon_pages.exit.i, %can_reclaim_anon_pages.exit.thread.i
  %.028.i = phi i64 [ %i.tk, %can_reclaim_anon_pages.exit.thread.i ], [ %i.sw, %can_reclaim_anon_pages.exit.i ], [ %i.sw, %can_reclaim_anon_pages.exit.thread39.i ]
  %i.tl = icmp ugt i64 %.028.i, %i.sv
  br i1 %i.tl, label %bb.b, label %should_continue_reclaim.exit.thread

should_continue_reclaim.exit.thread:              ; preds = %bb.ct, %bb.cw, %in_reclaim_compaction.exit.i, %bb.cu, %should_continue_reclaim.exit, %bb.cy, %bb.cz
  %spec.select111 = phi i1 [ %spec.select, %bb.cy ], [ %spec.select, %bb.cz ], [ %.0, %in_reclaim_compaction.exit.i ], [ %spec.select, %bb.cu ], [ %spec.select, %should_continue_reclaim.exit ], [ %spec.select, %bb.ct ], [ %spec.select, %bb.cw ]
  br i1 %spec.select111, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %should_continue_reclaim.exit.thread
  %i.tm = load i8, ptr %i.bb, align 1
  %i.tn = sext i8 %i.tm to i32
  %i.to = load i8, ptr %i.ae, align 1
  %i.tp = sext i8 %i.to to i32
  %i.tq = call fastcc zeroext i1 @pgdat_balanced(ptr noundef %0, i32 noundef %i.tn, i32 noundef %i.tp) #18, !srcloc !58
  br i1 %i.tq, label %bb.de, label %kswapd_try_clear_hopeless.exit

bb.de:                                            ; preds = %bb.dd
  %i.tr = load i32, ptr %i.dx, align 4
  %i.ts = and i32 %i.tr, 131072
  %.not.i83 = icmp eq i32 %i.ts, 0
  %i.tt = select i1 %.not.i83, i32 2, i32 1
  %i.tu = getelementptr i8, ptr %0, i64 13816     ; 2 uses
  %i.tv = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.tu, i32 0, ptr elementtype(i32) %i.tu) #15, !srcloc !56
  %.not.i.i84 = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i84, label %kswapd_try_clear_hopeless.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tw = load i32, ptr %i.p, align 64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_kswapd_clear_hopeless, i64 8), i1 false) #15
          to label %kswapd_try_clear_hopeless.exit [label %cpumask_test_cpu.exit.i.i.i.i], !srcloc !28

cpumask_test_cpu.exit.i.i.i.i:                    ; preds = %bb.df
  %i.tx = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #15, !srcloc !57
  %i.ty = zext i32 %i.tx to i64
  %i.tz = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.ty) #15, !srcloc !29 ; 2 uses
  %i.ua = icmp ult i8 %i.tz, 2
  call void @llvm.assume(i1 %i.ua)
  %i.ub = trunc nuw i8 %i.tz to i1
  br i1 %i.ub, label %bb.dg, label %kswapd_try_clear_hopeless.exit

bb.dg:                                            ; preds = %cpumask_test_cpu.exit.i.i.i.i
  %i.uc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.uc, ptr elementtype(i64) %i.uc) #15, !srcloc !30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !31
  %i.ud = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_kswapd_clear_hopeless, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i.i85, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ue = getelementptr i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = call i32 @__SCT__tp_func_mm_vmscan_kswapd_clear_hopeless(ptr noundef %i.uf, i32 noundef %i.tw, i32 noundef %i.tt) #14 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !32
  %i.uh = getelementptr i8, ptr %i.uc, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.uh, ptr elementtype(i64) %i.uh) #15, !srcloc !33
  br label %kswapd_try_clear_hopeless.exit

bb.dj:                                            ; preds = %should_continue_reclaim.exit.thread
  %i.ui = load i16, ptr %i.l, align 8             ; 2 uses
  %.not75 = icmp sgt i16 %i.ui, -1
  br i1 %.not75, label %kswapd_try_clear_hopeless.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.uj = or i16 %i.ui, 256
  store i16 %i.uj, ptr %i.l, align 8
  br label %kswapd_try_clear_hopeless.exit

kswapd_try_clear_hopeless.exit:                   ; preds = %bb.di, %cpumask_test_cpu.exit.i.i.i.i, %bb.df, %bb.de, %bb.dd, %bb.dk, %bb.dj
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @zone_watermark_ok(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @compaction_suitable(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sum_zone_node_page_state(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @int_sqrt(i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @shrink_active_list(i64 noundef range(i64 1, 0) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 4) %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.list_head, align 8          ; 11 uses
  %5 = alloca %struct.list_head, align 8          ; 10 uses
  %6 = alloca %struct.list_head, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %4, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %5, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %6, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.e, align 8
  %i.f = icmp samesign ugt i32 %3, 1              ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 -13952     ; 3 uses
  call void @lru_add_drain() #14
  call void @__rcu_read_lock() #14
  %i.h = getelementptr i8, ptr %1, i64 80         ; 3 uses
  call void @_raw_spin_lock_irq(ptr noundef %i.h) #14
  %i.i = call fastcc i64 @isolate_lru_folios(i64 noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3) #18, !srcloc !182 ; 3 uses
  %i.j = select i1 %i.f, i32 8, i32 7             ; 2 uses
  call void @__mod_node_page_state(ptr noundef %i.g, i32 noundef %i.j, i64 noundef %i.i) #14
  %i.k = load i64, ptr %i.a, align 8
  %i.l = shl i64 %i.k, 32
  %i.m = ashr exact i64 %i.l, 32
  call void @mod_node_page_state(ptr noundef %i.g, i32 noundef 58, i64 noundef %i.m) #14
  call void @_raw_spin_unlock_irq(ptr noundef %i.h) #14
  call void @__rcu_read_unlock() #14
  %i.n = load volatile ptr, ptr %4, align 8
  %.not51 = icmp eq ptr %i.n, %4
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.052 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ]  ; 3 uses
  %i.p = call i32 @__SCT__cond_resched() #14      ; 0 uses
  %.val = load ptr, ptr %i.c, align 8             ; 12 uses
  %i.q = getelementptr i8, ptr %.val, i64 -8      ; 11 uses
  %i.r = getelementptr i8, ptr %.val, i64 8       ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %.val, align 8             ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store volatile ptr %i.t, ptr %i.s, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.val, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.r, align 8
  call void @__rcu_read_lock() #14
  %i.v = call ptr @folio_mapping(ptr noundef %i.q) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %folio_evictable.exit, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.v, i64 104
  %i.x = load volatile i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 8
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %folio_evictable.exit, label %folio_evictable.exit.thread, !prof !39

folio_evictable.exit.thread:                      ; preds = %.split.i
  call void @__rcu_read_unlock() #14
  br label %bb.c

folio_evictable.exit:                             ; preds = %bb.b, %.split.i
  %i.z = load volatile i64, ptr %i.q, align 8
  %i.aa = and i64 %i.z, 1048576
  %.not3.i = icmp eq i64 %i.aa, 0
  call void @__rcu_read_unlock() #14
  br i1 %.not3.i, label %bb.d, label %bb.c, !prof !40

bb.c:                                             ; preds = %folio_evictable.exit.thread, %folio_evictable.exit
  call void @folio_putback_lru(ptr noundef %i.q) #18
  br label %bb.n, !llvm.loop !181

bb.d:                                             ; preds = %folio_evictable.exit
  %i.ab = load i32, ptr @buffer_heads_over_limit, align 4
  %.not44 = icmp eq i32 %i.ab, 0
  br i1 %.not44, label %bb.h, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.ac = call fastcc zeroext i1 @folio_needs_release(ptr noundef %i.q) #18, !srcloc !183
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, i64 range(i64 0, 2) 0, ptr elementtype(i64) %i.q) #15, !srcloc !38 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call zeroext i1 @filemap_release_folio(ptr noundef %i.q, i32 noundef 0) #14 ; 0 uses
  call void @folio_unlock(ptr noundef %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %i.ah = load ptr, ptr %i.o, align 8
  %i.ai = call i32 @folio_referenced(ptr noundef %i.q, i32 noundef 0, ptr noundef %i.ah, ptr noundef nonnull %i.b) #14
  %.not45 = icmp eq i32 %i.ai, 0
  br i1 %.not45, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_1
