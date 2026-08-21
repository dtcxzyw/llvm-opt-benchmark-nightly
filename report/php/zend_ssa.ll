inline.NumInlined: 65
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@zend_ssa_rename_op:bb.a
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.lc
  store i32 %.6.i.ph, ptr %i.ld, align 4, !tbaa !16
  %i.le = add nsw i32 %.6.i.ph, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bc, %bb.bg, %bb.bf
  %.7.i = phi i32 [ %i.le, %bb.bg ], [ %.6.i.ph, %bb.bf ], [ %4, %bb.bc ] ; 6 uses
  %i.lf = icmp eq i8 %i.aq, -49
  br i1 %i.lf, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !12  ; 2 uses
  %i.li = and i8 %i.lh, 14
  %.not230.i = icmp eq i8 %i.li, 0
  br i1 %.not230.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !15
  %i.ll = lshr i32 %i.lk, 4
  %i.lm = add nsw i32 %i.ll, -5
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !16
  %i.lq = add i32 %2, 1
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [36 x i8], ptr %5, i64 %i.lr ; 2 uses
  store i32 %i.lp, ptr %i.ls, align 4, !tbaa !17
  %i.lt = icmp eq i8 %i.lh, 8
  %or.cond14 = and i1 %.not229.i, %i.lt
  br i1 %or.cond14, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  store i32 %.7.i, ptr %i.lu, align 4, !tbaa !25
  %i.lv = load i32, ptr %i.lj, align 8, !tbaa !15
  %i.lw = lshr i32 %i.lv, 4
  %i.lx = add nsw i32 %i.lw, -5
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ly
  store i32 %.7.i, ptr %i.lz, align 4, !tbaa !16
  %i.ma = add nsw i32 %.7.i, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.az, %bb.ay, %._crit_edge, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.p, %bb.m, %bb.l, %bb.i
  %.8.i = phi i32 [ %4, %bb.i ], [ %i.bn, %bb.m ], [ %.0.i, %bb.l ], [ %.2.i, %bb.p ], [ %i.dg, %bb.u ], [ %.3.i, %bb.t ], [ %i.en, %bb.z ], [ %.4.i, %bb.y ], [ %.4.i, %bb.x ], [ %i.fj, %bb.ac ], [ %.7.i, %bb.bh ], [ %4, %bb.ab ], [ %4, %bb.aa ], [ %i.ge, %bb.af ], [ %4, %bb.ae ], [ %4, %bb.ad ], [ %4, %bb.ah ], [ %4, %bb.ag ], [ %.5.i, %bb.al ], [ %.5.i, %bb.ak ], [ %4, %bb.am ], [ %.7.i, %bb.bi ], [ %4, %bb.an ], [ %4, %bb.ao ], [ %4, %bb.as ], [ %4, %bb.ar ], [ %4, %bb.au ], [ %4, %bb.at ], [ %4, %bb.av ], [ %i.jh, %._crit_edge ], [ %i.jw, %bb.az ], [ %4, %bb.ay ], [ %i.kh, %bb.bb ], [ %4, %bb.ba ], [ %i.ma, %bb.bk ], [ %.7.i, %bb.bj ] ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !21
  %i.md = and i8 %i.mc, 14
  %.not251.i = icmp eq i8 %i.md, 0
  br i1 %.not251.i, label %_zend_ssa_rename_op.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.me = zext i32 %2 to i64
  %i.mf = getelementptr inbounds nuw [36 x i8], ptr %5, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 20
  store i32 %.8.i, ptr %i.mg, align 4, !tbaa !43
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !15
  %i.mj = lshr i32 %i.mi, 4
  %i.mk = add nsw i32 %i.mj, -5
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ml
  store i32 %.8.i, ptr %i.mm, align 4, !tbaa !16
  %i.mn = add nsw i32 %.8.i, 1
  br label %_zend_ssa_rename_op.exit

_zend_ssa_rename_op.exit:                         ; preds = %bb.bl, %bb.bm
  %.9.i = phi i32 [ %i.mn, %bb.bm ], [ %.8.i, %bb.bl ]
  ret i32 %.9.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_build_ssa(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 14 uses
  %5 = alloca %struct._zend_dfg, align 8          ; 41 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 3 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !52     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = add i32 %i.i, %i.g
  %i.k = mul i32 %i.j, %i.e
  %i.l = icmp ugt i32 %i.k, 4194304
  br i1 %i.l, label %bb.fm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.e to i64                     ; 2 uses
  %i.n = tail call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 range(i64 -2147483648, 4294967296) %i.m) #15, !srcloc !55 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %.not.i.not = icmp eq i64 %i.p, 0
  br i1 %.not.i.not, label %zend_arena_calloc.exit342, label %bb.c, !prof !56

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.1, i64 noundef 8, i64 noundef range(i64 -2147483648, 4294967296) %i.m) #16
  unreachable

zend_arena_calloc.exit342:                        ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !57     ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 3 uses
  %i.s = add i64 %i.o, 7
  %i.t = and i64 %i.s, -8                         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  %.not.i349 = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i349, label %bb.e, label %bb.d, !prof !63

bb.d:                                             ; preds = %zend_arena_calloc.exit342
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !59
  br label %zend_arena_alloc.exit

bb.e:                                             ; preds = %zend_arena_calloc.exit342
  %i.aa = add i64 %i.t, 24
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.w, %i.ab
  %..i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ad = tail call noalias ptr @_emalloc(i64 noundef %..i) #17 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.t
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.q, ptr %i.ai, align 8, !tbaa !64
  store ptr %i.ad, ptr %0, align 8, !tbaa !57
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.ae, %bb.e ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i, i8 0, i64 %i.o, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %.0.i, ptr %i.aj, align 8, !tbaa !65
  %i.ak = load i32, ptr %i.f, align 4, !tbaa !53
  %i.al = load i32, ptr %i.h, align 8, !tbaa !54
  %i.am = add i32 %i.al, %i.ak
  %.fr430 = freeze i32 %i.am                      ; 5 uses
  store i32 %.fr430, ptr %5, align 8, !tbaa !66
  %i.an = zext i32 %.fr430 to i64
  %i.ao = add nuw nsw i64 %i.an, 63               ; 2 uses
  %i.ap = lshr i64 %i.ao, 6                       ; 27 uses
  %i.aq = trunc nuw nsw i64 %i.ap to i32          ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !69
  %i.as = shl nuw nsw i64 %i.ap, 3
  %i.at = shl nsw i32 %i.e, 2
  %i.au = or disjoint i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.as, %i.av                ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, 32768               ; 3 uses
  br i1 %i.ax, label %bb.f, label %bb.g, !prof !63

bb.f:                                             ; preds = %zend_arena_alloc.exit
  %i.ay = tail call noalias ptr @_emalloc(i64 noundef %i.aw) #17
  br label %bb.h

bb.g:                                             ; preds = %zend_arena_alloc.exit
  %i.az = alloca i8, i64 %i.aw, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ba = phi ptr [ %i.az, %bb.g ], [ %i.ay, %bb.f ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.aw, i1 false)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ap ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !71
  %i.be = mul i32 %i.e, %i.aq
  %i.bf = zext i32 %i.be to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !74
  call void @zend_build_dfg(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %3) #14
  %i.bm = and i32 %3, 536870912
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @zend_dump_dfg(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !71 ; 4 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !73 ; 4 uses
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !72 ; 6 uses
  %i.bq = shl nuw nsw i64 %i.bf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.bs = load i32, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %place_essa_pis.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.bs to i64
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 17 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv.i ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !76
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !78 ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.cf ; 52 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !79
  %i.ck = icmp sgt i32 %i.cj, -1
  %i.cl = icmp eq i32 %i.ce, 0
  %or.cond541.i = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond541.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !22
  switch i8 %i.cn, label %.critedge.i [
    i8 43, label %bb.m
    i8 44, label %bb.n
    i8 -87, label %bb.o
    i8 -58, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !80 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !80 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = icmp eq i8 %i.ct, 8
  br i1 %i.cu, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !15
  %i.cx = lshr i32 %i.cw, 4
  %i.cy = add nsw i32 %i.cx, -5
  %i.cz = load ptr, ptr %i.by, align 8, !tbaa !80
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !16
  %i.db = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dc = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.db, i32 noundef %i.da, i32 noundef %i.cy) ; 4 uses
  %.not496.i = icmp eq ptr %i.dc, null
  br i1 %.not496.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 76
  store i8 0, ptr %i.dd, align 4, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr null, ptr %i.de, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i32 -520093700, ptr %i.df, align 8, !tbaa !15
  br label %.critedge.i

bb.r:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.di = icmp eq i8 %i.dh, 8
  br i1 %i.di, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !15
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = add nsw i32 %i.dl, -5
  %i.dn = load ptr, ptr %i.by, align 8, !tbaa !80
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !16
  %i.dq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dr = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.dq, i32 noundef %i.dp, i32 noundef %i.dm) ; 4 uses
  %.not.i358 = icmp eq ptr %i.dr, null
  br i1 %.not.i358, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 76
  store i8 0, ptr %i.ds, align 4, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr null, ptr %i.dt, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i32 -520093700, ptr %i.du, align 8, !tbaa !15
  br label %.critedge.i

bb.u:                                             ; preds = %bb.n, %bb.m
  %.0452.in.i = phi ptr [ %i.cp, %bb.m ], [ %i.cq, %bb.n ]
  %.0451.in.i = phi ptr [ %i.co, %bb.m ], [ %i.cr, %bb.n ]
  %.0451.i = load i32, ptr %.0451.in.i, align 4, !tbaa !16 ; 13 uses
  %.0452.i = load i32, ptr %.0452.in.i, align 4, !tbaa !16 ; 15 uses
  %i.dv = icmp eq i32 %i.ce, 1
  br i1 %i.dv, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !12
  %i.dy = icmp eq i8 %i.dx, 2
  br i1 %i.dy, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds i8, ptr %i.cg, i64 -64 ; 5 uses
  %i.ea = getelementptr inbounds i8, ptr %i.cg, i64 -36 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !22  ; 7 uses
  %.off.i = add i8 %i.eb, -18
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %bb.x, label %bb.cg

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !15
  %i.ee = getelementptr inbounds i8, ptr %i.cg, i64 -48
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !15
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.y, label %bb.cg

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !86
  %i.eh = getelementptr inbounds i8, ptr %i.cg, i64 -35
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.ei, label %bb.ab [
    i8 8, label %bb.z
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds i8, ptr %i.cg, i64 -56
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !15
  %i.el = lshr i32 %i.ek, 4
  %i.em = add nsw i32 %i.el, -5
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.en = getelementptr inbounds i8, ptr %i.cg, i64 -56
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !15
  %i.ep = call fastcc i32 @find_adjusted_tmp_var(ptr noundef nonnull %2, ptr noundef nonnull %i.ch, i32 noundef %i.eo, ptr noundef %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.0444.i = phi i32 [ %i.em, %bb.z ], [ %i.ep, %bb.aa ], [ -1, %bb.y ] ; 7 uses
  %i.eq = getelementptr inbounds i8, ptr %i.cg, i64 -34
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !19  ; 2 uses
  switch i8 %i.er, label %.thread.i [
    i8 8, label %bb.ac
    i8 2, label %bb.ad
  ]

.thread.i:                                        ; preds = %bb.ab
  %i.es = icmp sgt i32 %.0444.i, -1
  br label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !15
  %i.ev = lshr i32 %i.eu, 4
  %i.ew = add nsw i32 %i.ev, -5
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !15
  %i.ez = call fastcc i32 @find_adjusted_tmp_var(ptr noundef nonnull %2, ptr noundef nonnull %i.ch, i32 noundef %i.ey, ptr noundef %i.a)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0442.i = phi i32 [ %i.ew, %bb.ac ], [ %i.ez, %bb.ad ] ; 3 uses
  %i.fa = icmp sgt i32 %.0444.i, -1               ; 2 uses
  %i.fb = icmp sgt i32 %.0442.i, -1               ; 2 uses
  %or.cond.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr %i.a, align 8, !tbaa !86  ; 8 uses
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !86  ; 8 uses
end_hunk_0
begin_hunk_1_@zend_build_ssa:bb.a
  br i1 %switch600.i, label %_const_op_type.exit.i, label %.critedge.i

_const_op_type.exit.i:                            ; preds = %bb.dr
  %i.tq = zext nneg i8 %i.tp to i32
  %i.tr = shl nuw nsw i32 1, %i.tq                ; 6 uses
  %i.ts = icmp eq i8 %i.eb, 16
  %i.tt = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  br i1 %i.ts, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %_const_op_type.exit.i
  %i.tu = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0452.i, i32 noundef %.0438.i) ; 4 uses
  %.not507.i = icmp eq ptr %i.tu, null
  br i1 %.not507.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 76
  store i8 0, ptr %i.tv, align 4, !tbaa !81
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  store ptr null, ptr %i.tw, align 8, !tbaa !15
  %i.tx = and i32 %i.tr, 2
  %.not.i558.i = icmp eq i32 %i.tx, 0
  %spec.select.v.i559.i = select i1 %.not.i558.i, i32 -1073740800, i32 -1073740799
  %spec.select.i560.i = or i32 %spec.select.v.i559.i, %i.tr
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store i32 %spec.select.i560.i, ptr %i.ty, align 8, !tbaa !15
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tz = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0451.i, i32 noundef %.0438.i) ; 4 uses
  %.not508.i = icmp eq ptr %i.tz, null
  br i1 %.not508.i, label %.critedge.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ua = and i32 %i.tr, 14
  %i.ub = xor i32 %i.ua, 553647102                ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 76
  store i8 0, ptr %i.uc, align 4, !tbaa !81
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store ptr null, ptr %i.ud, align 8, !tbaa !15
  %i.ue = and i32 %i.ub, 2
  %.not.i.i561.i = icmp eq i32 %i.ue, 0
  %spec.select.v.i.i562.i = select i1 %.not.i.i561.i, i32 -1073740800, i32 -1073740799
  %spec.select.i.i563.i = or disjoint i32 %spec.select.v.i.i562.i, %i.ub
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i32 %spec.select.i.i563.i, ptr %i.uf, align 8, !tbaa !15
  br label %.critedge.i

bb.dw:                                            ; preds = %_const_op_type.exit.i
  %i.ug = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0451.i, i32 noundef %.0438.i) ; 4 uses
  %.not505.i = icmp eq ptr %i.ug, null
  br i1 %.not505.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 76
  store i8 0, ptr %i.uh, align 4, !tbaa !81
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 24
  store ptr null, ptr %i.ui, align 8, !tbaa !15
  %i.uj = and i32 %i.tr, 2
  %.not.i564.i = icmp eq i32 %i.uj, 0
  %spec.select.v.i565.i = select i1 %.not.i564.i, i32 -1073740800, i32 -1073740799
  %spec.select.i566.i = or i32 %spec.select.v.i565.i, %i.tr
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  store i32 %spec.select.i566.i, ptr %i.uk, align 8, !tbaa !15
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.ul = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0452.i, i32 noundef %.0438.i) ; 4 uses
  %.not506.i = icmp eq ptr %i.ul, null
  br i1 %.not506.i, label %.critedge.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.um = and i32 %i.tr, 14
  %i.un = xor i32 %i.um, 553647102                ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 76
  store i8 0, ptr %i.uo, align 4, !tbaa !81
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  store ptr null, ptr %i.up, align 8, !tbaa !15
  %i.uq = and i32 %i.un, 2
  %.not.i.i567.i = icmp eq i32 %i.uq, 0
  %spec.select.v.i.i568.i = select i1 %.not.i.i567.i, i32 -1073740800, i32 -1073740799
  %spec.select.i.i569.i = or disjoint i32 %spec.select.v.i.i568.i, %i.un
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  store i32 %spec.select.i.i569.i, ptr %i.ur, align 8, !tbaa !15
  br label %.critedge.i

bb.ea:                                            ; preds = %bb.dg
  %i.us = icmp eq i8 %i.eb, -118
  br i1 %i.us, label %bb.eb, label %.critedge.i

bb.eb:                                            ; preds = %bb.ea
  %i.ut = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !15
  %i.uv = getelementptr inbounds i8, ptr %i.cg, i64 -48
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !15
  %i.ux = icmp eq i32 %i.uu, %i.uw
  br i1 %i.ux, label %bb.ec, label %.critedge.i

bb.ec:                                            ; preds = %bb.eb
  %i.uy = getelementptr inbounds i8, ptr %i.cg, i64 -35
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !12
  %i.va = icmp eq i8 %i.uz, 8
  br i1 %i.va, label %bb.ed, label %.critedge.i

bb.ed:                                            ; preds = %bb.ec
  %i.vb = getelementptr inbounds i8, ptr %i.cg, i64 -34
  %i.vc = load i8, ptr %i.vb, align 2, !tbaa !19
  %i.vd = icmp eq i8 %i.vc, 1
  br i1 %i.vd, label %bb.ee, label %.critedge.i

bb.ee:                                            ; preds = %bb.ed
  %i.ve = getelementptr inbounds i8, ptr %i.cg, i64 -56
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !15
  %i.vg = lshr i32 %i.vf, 4
  %i.vh = add nsw i32 %i.vg, -5
  %i.vi = load i32, ptr %i.bv, align 4, !tbaa !27
  %i.vj = and i32 %i.vi, 33554432
  %.not497.i = icmp eq i32 %i.vj, 0
  br i1 %.not497.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vk = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !15
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %i.dz, i64 %i.vm
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.vo = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.vp = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !15
  %i.vr = zext i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.vo, i64 %i.vr
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.vt = phi ptr [ %i.vn, %bb.ef ], [ %i.vs, %bb.eg ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !15
  %i.vw = call ptr @zend_optimizer_get_class_entry(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.vv) #14 ; 2 uses
  %.not498.not.i = icmp eq ptr %i.vw, null
  br i1 %.not498.not.i, label %.critedge.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vx = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.vy = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.vx, i32 noundef %.0452.i, i32 noundef %i.vh) ; 4 uses
  %.not499.i = icmp eq ptr %i.vy, null
  br i1 %.not499.i, label %.critedge.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 76
  store i8 0, ptr %i.vz, align 4, !tbaa !81
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store i32 -1073740544, ptr %i.wb, align 8, !tbaa !15
  store ptr %i.vw, ptr %i.wa, align 8, !tbaa !15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dv, %bb.du, %bb.dr, %bb.dn, %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.de, %bb.dd, %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cn, %bb.cm, %bb.ci, %bb.ch, %.thread575.thread.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %place_essa_pis.exit, label %bb.k, !llvm.loop !100

place_essa_pis.exit:                              ; preds = %.critedge.i, %bb.j
  %i.wc = icmp sgt i32 %i.e, 0                    ; 2 uses
  %.not.i360 = icmp eq i64 %i.ap, 0               ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.wc, label %.lr.ph413.us.preheader, label %.split.us

.lr.ph413.us.preheader:                           ; preds = %place_essa_pis.exit
  %wide.trip.count442 = zext nneg i32 %i.e to i64
  %i.we = shl nuw nsw i64 %i.ap, 3                ; 7 uses
  %scevgep521.a = getelementptr i8, ptr %i.bn, i64 %i.we
  %scevgep524 = getelementptr i8, ptr %i.bp, i64 %i.we
  %scevgep531.a = getelementptr i8, ptr %i.bp, i64 %i.we
  %scevgep533.a = getelementptr i8, ptr %i.bn, i64 %i.we
  %scevgep536 = getelementptr i8, ptr %i.bo, i64 %i.we
  %scevgep562 = getelementptr i8, ptr %i.bp, i64 %i.we
  %scevgep565 = getelementptr i8, ptr %i.bo, i64 %i.we
  %min.iters.check571 = icmp ult i32 %.fr430, 193
  %n.vec573 = and i64 %i.ap, 134217724            ; 3 uses
  %cmp.n582 = icmp eq i64 %i.ap, %n.vec573
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check545 = icmp ult i32 %.fr430, 321
  %n.vec547 = and i64 %i.ap, 134217724            ; 3 uses
  %cmp.n558 = icmp eq i64 %i.ap, %n.vec547
  %i.wf = and i64 %i.ao, 64
  %lcmp.mod602.not = icmp eq i64 %i.wf, 0
  %min.iters.check = icmp ult i32 %.fr430, 193
  %n.vec = and i64 %i.ap, 134217724               ; 3 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  %xtraiter604 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0
  br label %.lr.ph413.us

.lr.ph413.us:                                     ; preds = %.lr.ph413.us.backedge, %.lr.ph413.us.preheader
  %indvars.iv439 = phi i64 [ 0, %.lr.ph413.us.preheader ], [ %indvars.iv439.be, %.lr.ph413.us.backedge ] ; 6 uses
  %.0315412.us = phi i32 [ 0, %.lr.ph413.us.preheader ], [ %.0315412.us.be, %.lr.ph413.us.backedge ] ; 5 uses
  %i.wg = mul i64 %i.ap, %indvars.iv439
  %i.wh = shl i64 %i.wg, 3
  %i.wi = and i64 %i.wh, 34359738360              ; 2 uses
  %scevgep564 = getelementptr i8, ptr %scevgep562, i64 %i.wi
  %scevgep566 = getelementptr i8, ptr %scevgep565, i64 %i.wi
  %i.wj = mul i64 %i.ap, %indvars.iv439
  %i.wk = shl i64 %i.wj, 3
  %i.wl = and i64 %i.wk, 34359738360              ; 2 uses
  %scevgep535 = getelementptr i8, ptr %scevgep531.a, i64 %i.wl ; 2 uses
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.wl
  %i.wm = mul i64 %i.ap, %indvars.iv439
  %i.wn = shl i64 %i.wm, 3
  %i.wo = and i64 %i.wn, 34359738360              ; 2 uses
  %scevgep523.a = getelementptr i8, ptr %scevgep521.a, i64 %i.wo
  %scevgep525 = getelementptr i8, ptr %scevgep524, i64 %i.wo
  %i.wp = mul i64 %indvars.iv439, %i.ap
  %i.wq = and i64 %i.wp, 4294967295               ; 4 uses
  %i.wr = getelementptr [8 x i8], ptr %i.bn, i64 %i.wq ; 8 uses
  %i.ws = getelementptr [8 x i8], ptr %i.bp, i64 %i.wq ; 21 uses
  %i.wt = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv439 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !79 ; 2 uses
  %i.ww = icmp sgt i32 %i.wv, -1
  br i1 %i.ww, label %zend_bitset_union.exit387.us, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph413.us
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !102 ; 2 uses
  %i.wz = icmp sgt i32 %i.wy, 1
  br i1 %i.wz, label %bb.el, label %zend_bitset_union.exit387.us

bb.el:                                            ; preds = %bb.ek
  %i.xa = and i32 %i.wv, 131072
  %.not338.us = icmp eq i32 %i.xa, 0
  br i1 %.not338.us, label %.lr.ph410.us, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.xb = getelementptr [8 x i8], ptr %i.bo, i64 %i.wq ; 7 uses
  br i1 %.not.i360, label %zend_bitset_union.exit387.us, label %.lr.ph.i362.us.preheader

.lr.ph.i362.us.preheader:                         ; preds = %bb.em
  br i1 %min.iters.check571, label %.lr.ph.i362.us.preheader599, label %vector.memcheck560

vector.memcheck560:                               ; preds = %.lr.ph.i362.us.preheader
  %bound0567 = icmp ult ptr %i.ws, %scevgep566
  %bound1568 = icmp ult ptr %i.xb, %scevgep564
  %found.conflict569 = and i1 %bound0567, %bound1568
  br i1 %found.conflict569, label %.lr.ph.i362.us.preheader599, label %vector.body574

vector.body574:                                   ; preds = %vector.memcheck560, %vector.body574
  %index575 = phi i64 [ %index.next580, %vector.body574 ], [ 0, %vector.memcheck560 ] ; 3 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %index575 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %wide.load576 = load <2 x i64>, ptr %i.xc, align 8, !tbaa !86, !alias.scope !103
  %wide.load577 = load <2 x i64>, ptr %i.xd, align 8, !tbaa !86, !alias.scope !103
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %index575 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16 ; 2 uses
  %wide.load578 = load <2 x i64>, ptr %i.xe, align 8, !tbaa !86, !alias.scope !106, !noalias !103
  %wide.load579 = load <2 x i64>, ptr %i.xf, align 8, !tbaa !86, !alias.scope !106, !noalias !103
  %i.xg = or <2 x i64> %wide.load578, %wide.load576
  %i.xh = or <2 x i64> %wide.load579, %wide.load577
  store <2 x i64> %i.xg, ptr %i.xe, align 8, !tbaa !86, !alias.scope !106, !noalias !103
  store <2 x i64> %i.xh, ptr %i.xf, align 8, !tbaa !86, !alias.scope !106, !noalias !103
  %index.next580 = add nuw i64 %index575, 4       ; 2 uses
  %i.xi = icmp eq i64 %index.next580, %n.vec573
  br i1 %i.xi, label %middle.block581, label %vector.body574, !llvm.loop !108

middle.block581:                                  ; preds = %vector.body574
  br i1 %cmp.n582, label %.lr.ph.i375.us.preheader, label %.lr.ph.i362.us.preheader599

.lr.ph.i362.us.preheader599:                      ; preds = %vector.memcheck560, %.lr.ph.i362.us.preheader, %middle.block581
  %indvars.iv.i363.us.ph = phi i64 [ 0, %vector.memcheck560 ], [ 0, %.lr.ph.i362.us.preheader ], [ %n.vec573, %middle.block581 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i362.us.prol.loopexit, label %.lr.ph.i362.us.prol

.lr.ph.i362.us.prol:                              ; preds = %.lr.ph.i362.us.preheader599, %.lr.ph.i362.us.prol
  %indvars.iv.i363.us.prol = phi i64 [ %indvars.iv.next.i364.us.prol, %.lr.ph.i362.us.prol ], [ %indvars.iv.i363.us.ph, %.lr.ph.i362.us.preheader599 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i362.us.prol ], [ 0, %.lr.ph.i362.us.preheader599 ]
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.i363.us.prol
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !86
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i363.us.prol ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !86
  %i.xn = or i64 %i.xm, %i.xk
  store i64 %i.xn, ptr %i.xl, align 8, !tbaa !86
  %indvars.iv.next.i364.us.prol = add nuw nsw i64 %indvars.iv.i363.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i362.us.prol.loopexit, label %.lr.ph.i362.us.prol, !llvm.loop !111

.lr.ph.i362.us.prol.loopexit:                     ; preds = %.lr.ph.i362.us.prol, %.lr.ph.i362.us.preheader599
  %indvars.iv.i363.us.unr = phi i64 [ %indvars.iv.i363.us.ph, %.lr.ph.i362.us.preheader599 ], [ %indvars.iv.next.i364.us.prol, %.lr.ph.i362.us.prol ]
  %i.xo = sub nsw i64 %indvars.iv.i363.us.ph, %i.ap
  %i.xp = icmp ugt i64 %i.xo, -4
  br i1 %i.xp, label %.lr.ph.i375.us.preheader, label %.lr.ph.i362.us

.lr.ph.i362.us:                                   ; preds = %.lr.ph.i362.us.prol.loopexit, %.lr.ph.i362.us
  %indvars.iv.i363.us = phi i64 [ %indvars.iv.next.i364.us.3, %.lr.ph.i362.us ], [ %indvars.iv.i363.us.unr, %.lr.ph.i362.us.prol.loopexit ] ; 6 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.i363.us
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !86
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i363.us ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !86
  %i.xu = or i64 %i.xt, %i.xr
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !86
  %indvars.iv.next.i364.us = add nuw nsw i64 %indvars.iv.i363.us, 1 ; 2 uses
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i364.us
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !86
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i364.us ; 2 uses
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !86
  %i.xz = or i64 %i.xy, %i.xw
  store i64 %i.xz, ptr %i.xx, align 8, !tbaa !86
  %indvars.iv.next.i364.us.1 = add nuw nsw i64 %indvars.iv.i363.us, 2 ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i364.us.1
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !86
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i364.us.1 ; 2 uses
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !86
  %i.ye = or i64 %i.yd, %i.yb
  store i64 %i.ye, ptr %i.yc, align 8, !tbaa !86
  %indvars.iv.next.i364.us.2 = add nuw nsw i64 %indvars.iv.i363.us, 3 ; 2 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i364.us.2
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !86
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i364.us.2 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !86
  %i.yj = or i64 %i.yi, %i.yg
  store i64 %i.yj, ptr %i.yh, align 8, !tbaa !86
  %indvars.iv.next.i364.us.3 = add nuw nsw i64 %indvars.iv.i363.us, 4 ; 2 uses
  %exitcond.not.i365.us.3 = icmp eq i64 %indvars.iv.next.i364.us.3, %i.ap
  br i1 %exitcond.not.i365.us.3, label %.lr.ph.i375.us.preheader, label %.lr.ph.i362.us, !llvm.loop !113

.lr.ph410.split.us420:                            ; preds = %.lr.ph410.split.us420.preheader, %.critedge.us417
  %indvars.iv = phi i64 [ 0, %.lr.ph410.split.us420.preheader ], [ %indvars.iv.next, %.critedge.us417 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %.0320405.us415 = load i32, ptr %gep, align 4, !tbaa !16 ; 2 uses
  %.not339406.us416 = icmp eq i32 %.0320405.us415, -1
  br i1 %.not339406.us416, label %.critedge.us417, label %.lr.ph.us418

bb.en:                                            ; preds = %.lr.ph.us418, %zend_bitset_union_with_intersection.exit.loopexit.us
  %.0320407.us = phi i32 [ %.0320405.us415, %.lr.ph.us418 ], [ %.0320.us, %zend_bitset_union_with_intersection.exit.loopexit.us ] ; 3 uses
  %.not340.us = icmp eq i32 %.0320407.us, %i.abp
  br i1 %.not340.us, label %.critedge.us417, label %.lr.ph.i369.preheader.us

.lr.ph.i369.preheader.us:                         ; preds = %bb.en
  %i.yk = mul i32 %.0320407.us, %i.aq
  %i.yl = zext i32 %i.yk to i64                   ; 2 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.yl ; 5 uses
  br i1 %min.iters.check545, label %.lr.ph.i369.us.preheader, label %vector.memcheck529

vector.memcheck529:                               ; preds = %.lr.ph.i369.preheader.us
  %i.yn = shl nuw nsw i64 %i.yl, 3
  %scevgep534 = getelementptr i8, ptr %scevgep533.a, i64 %i.yn
  %bound0538 = icmp ult ptr %i.ws, %scevgep534
  %bound1539 = icmp ult ptr %i.ym, %scevgep535
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx = or i1 %found.conflict540, %found.conflict543
  br i1 %conflict.rdx, label %.lr.ph.i369.us.preheader, label %vector.body548

vector.body548:                                   ; preds = %vector.memcheck529, %vector.body548
  %index549 = phi i64 [ %index.next556, %vector.body548 ], [ 0, %vector.memcheck529 ] ; 4 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %index549 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 2 uses
  %wide.load550.a = load <2 x i64>, ptr %i.yo, align 8, !tbaa !86, !alias.scope !114, !noalias !117
  %wide.load551.a = load <2 x i64>, ptr %i.yp, align 8, !tbaa !86, !alias.scope !114, !noalias !117
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %index549 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %wide.load552 = load <2 x i64>, ptr %i.yq, align 8, !tbaa !86, !alias.scope !120
  %wide.load553 = load <2 x i64>, ptr %i.yr, align 8, !tbaa !86, !alias.scope !120
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %index549 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %wide.load554 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !86, !alias.scope !121
  %wide.load555 = load <2 x i64>, ptr %i.yt, align 8, !tbaa !86, !alias.scope !121
  %i.yu = and <2 x i64> %wide.load554, %wide.load552
  %i.yv = and <2 x i64> %wide.load555, %wide.load553
  %i.yw = or <2 x i64> %i.yu, %wide.load550.a
  %i.yx = or <2 x i64> %i.yv, %wide.load551.a
  store <2 x i64> %i.yw, ptr %i.yo, align 8, !tbaa !86, !alias.scope !114, !noalias !117
  store <2 x i64> %i.yx, ptr %i.yp, align 8, !tbaa !86, !alias.scope !114, !noalias !117
  %index.next556 = add nuw i64 %index549, 4       ; 2 uses
  %i.yy = icmp eq i64 %index.next556, %n.vec547
  br i1 %i.yy, label %middle.block557, label %vector.body548, !llvm.loop !122

middle.block557:                                  ; preds = %vector.body548
  br i1 %cmp.n558, label %zend_bitset_union_with_intersection.exit.loopexit.us, label %.lr.ph.i369.us.preheader

.lr.ph.i369.us.preheader:                         ; preds = %vector.memcheck529, %.lr.ph.i369.preheader.us, %middle.block557
  %indvars.iv.i370.us.ph = phi i64 [ 0, %vector.memcheck529 ], [ 0, %.lr.ph.i369.preheader.us ], [ %n.vec547, %middle.block557 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.i370.us.ph, 1
  br i1 %lcmp.mod602.not, label %.lr.ph.i369.us.prol.loopexit, label %.lr.ph.i369.us.prol

.lr.ph.i369.us.prol:                              ; preds = %.lr.ph.i369.us.preheader
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i370.us.ph ; 2 uses
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !86
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %indvars.iv.i370.us.ph
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !86
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv.i370.us.ph
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !86
  %i.zf = and i64 %i.ze, %i.zc
  %i.zg = or i64 %i.zf, %i.za
  store i64 %i.zg, ptr %i.yz, align 8, !tbaa !86
  %indvars.iv.next.i371.us.prol = or disjoint i64 %indvars.iv.i370.us.ph, 1
  br label %.lr.ph.i369.us.prol.loopexit

.lr.ph.i369.us.prol.loopexit:                     ; preds = %.lr.ph.i369.us.prol, %.lr.ph.i369.us.preheader
  %indvars.iv.i370.us.unr = phi i64 [ %indvars.iv.i370.us.ph, %.lr.ph.i369.us.preheader ], [ %indvars.iv.next.i371.us.prol, %.lr.ph.i369.us.prol ]
  %i.zh = icmp eq i64 %i.ap, %.neg
  br i1 %i.zh, label %zend_bitset_union_with_intersection.exit.loopexit.us, label %.lr.ph.i369.us

.lr.ph.i369.us:                                   ; preds = %.lr.ph.i369.us.prol.loopexit, %.lr.ph.i369.us
  %indvars.iv.i370.us = phi i64 [ %indvars.iv.next.i371.us.1, %.lr.ph.i369.us ], [ %indvars.iv.i370.us.unr, %.lr.ph.i369.us.prol.loopexit ] ; 5 uses
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i370.us ; 2 uses
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !86
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %indvars.iv.i370.us
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !86
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv.i370.us
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !86
  %i.zo = and i64 %i.zn, %i.zl
  %i.zp = or i64 %i.zo, %i.zj
  store i64 %i.zp, ptr %i.zi, align 8, !tbaa !86
  %indvars.iv.next.i371.us = add nuw nsw i64 %indvars.iv.i370.us, 1 ; 3 uses
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i371.us ; 2 uses
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !86
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %indvars.iv.next.i371.us
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !86
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv.next.i371.us
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !86
  %i.zw = and i64 %i.zv, %i.zt
  %i.zx = or i64 %i.zw, %i.zr
  store i64 %i.zx, ptr %i.zq, align 8, !tbaa !86
  %indvars.iv.next.i371.us.1 = add nuw nsw i64 %indvars.iv.i370.us, 2 ; 2 uses
  %exitcond.not.i372.us.1 = icmp eq i64 %indvars.iv.next.i371.us.1, %i.ap
  br i1 %exitcond.not.i372.us.1, label %zend_bitset_union_with_intersection.exit.loopexit.us, label %.lr.ph.i369.us, !llvm.loop !123

.critedge.us417:                                  ; preds = %zend_bitset_union_with_intersection.exit.loopexit.us, %bb.en, %.lr.ph410.split.us420
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i375.us.preheader, label %.lr.ph410.split.us420, !llvm.loop !124

.lr.ph.i375.us.preheader:                         ; preds = %.lr.ph.i362.us.prol.loopexit, %.lr.ph.i362.us, %.critedge.us417, %middle.block581
  br label %.lr.ph.i375.us

.lr.ph.i375.us:                                   ; preds = %.lr.ph.i375.us.preheader, %bb.eo
  %indvars.iv.i376.us = phi i64 [ %indvars.iv.next.i378.us, %bb.eo ], [ 0, %.lr.ph.i375.us.preheader ] ; 3 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i376.us
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !86
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.i376.us
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !86
  %i.aac = xor i64 %i.aab, -1
  %i.aad = and i64 %i.zz, %i.aac
  %.not.i377.us = icmp eq i64 %i.aad, 0
  br i1 %.not.i377.us, label %bb.eo, label %.lr.ph.i383.us.preheader

.lr.ph.i383.us.preheader:                         ; preds = %.lr.ph.i375.us
  br i1 %min.iters.check, label %.lr.ph.i383.us.preheader597, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i383.us.preheader
  %bound0 = icmp ult ptr %i.wr, %scevgep525
  %bound1 = icmp ult ptr %i.ws, %scevgep523.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i383.us.preheader597, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %index ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %wide.load = load <2 x i64>, ptr %i.aae, align 8, !tbaa !86, !alias.scope !125
  %wide.load526.a = load <2 x i64>, ptr %i.aaf, align 8, !tbaa !86, !alias.scope !125
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %index ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16 ; 2 uses
  %wide.load527 = load <2 x i64>, ptr %i.aag, align 8, !tbaa !86, !alias.scope !128, !noalias !125
  %wide.load528 = load <2 x i64>, ptr %i.aah, align 8, !tbaa !86, !alias.scope !128, !noalias !125
  %i.aai = or <2 x i64> %wide.load527, %wide.load
  %i.aaj = or <2 x i64> %wide.load528, %wide.load526.a
  store <2 x i64> %i.aai, ptr %i.aag, align 8, !tbaa !86, !alias.scope !128, !noalias !125
  store <2 x i64> %i.aaj, ptr %i.aah, align 8, !tbaa !86, !alias.scope !128, !noalias !125
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aak = icmp eq i64 %index.next, %n.vec
  br i1 %i.aak, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %zend_bitset_union.exit387.us, label %.lr.ph.i383.us.preheader597

.lr.ph.i383.us.preheader597:                      ; preds = %vector.memcheck, %.lr.ph.i383.us.preheader, %middle.block
  %indvars.iv.i384.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i383.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod605.not, label %.lr.ph.i383.us.prol.loopexit, label %.lr.ph.i383.us.prol

.lr.ph.i383.us.prol:                              ; preds = %.lr.ph.i383.us.preheader597, %.lr.ph.i383.us.prol
  %indvars.iv.i384.us.prol = phi i64 [ %indvars.iv.next.i385.us.prol, %.lr.ph.i383.us.prol ], [ %indvars.iv.i384.us.ph, %.lr.ph.i383.us.preheader597 ] ; 3 uses
  %prol.iter606 = phi i64 [ %prol.iter606.next, %.lr.ph.i383.us.prol ], [ 0, %.lr.ph.i383.us.preheader597 ]
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i384.us.prol
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !86
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.i384.us.prol ; 2 uses
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !86
  %i.aap = or i64 %i.aao, %i.aam
  store i64 %i.aap, ptr %i.aan, align 8, !tbaa !86
  %indvars.iv.next.i385.us.prol = add nuw nsw i64 %indvars.iv.i384.us.prol, 1 ; 2 uses
  %prol.iter606.next = add i64 %prol.iter606, 1   ; 2 uses
  %prol.iter606.cmp.not = icmp eq i64 %prol.iter606.next, %xtraiter604
  br i1 %prol.iter606.cmp.not, label %.lr.ph.i383.us.prol.loopexit, label %.lr.ph.i383.us.prol, !llvm.loop !131

.lr.ph.i383.us.prol.loopexit:                     ; preds = %.lr.ph.i383.us.prol, %.lr.ph.i383.us.preheader597
  %indvars.iv.i384.us.unr = phi i64 [ %indvars.iv.i384.us.ph, %.lr.ph.i383.us.preheader597 ], [ %indvars.iv.next.i385.us.prol, %.lr.ph.i383.us.prol ]
  %i.aaq = sub nsw i64 %indvars.iv.i384.us.ph, %i.ap
  %i.aar = icmp ugt i64 %i.aaq, -4
  br i1 %i.aar, label %zend_bitset_union.exit387.us, label %.lr.ph.i383.us

bb.eo:                                            ; preds = %.lr.ph.i375.us
  %indvars.iv.next.i378.us = add nuw nsw i64 %indvars.iv.i376.us, 1 ; 2 uses
  %exitcond.not.i379.us = icmp eq i64 %indvars.iv.next.i378.us, %i.ap
  br i1 %exitcond.not.i379.us, label %zend_bitset_union.exit387.us, label %.lr.ph.i375.us, !llvm.loop !132

.lr.ph.i383.us:                                   ; preds = %.lr.ph.i383.us.prol.loopexit, %.lr.ph.i383.us
  %indvars.iv.i384.us = phi i64 [ %indvars.iv.next.i385.us.3, %.lr.ph.i383.us ], [ %indvars.iv.i384.us.unr, %.lr.ph.i383.us.prol.loopexit ] ; 6 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i384.us
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !86
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.i384.us ; 2 uses
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !86
  %i.aaw = or i64 %i.aav, %i.aat
  store i64 %i.aaw, ptr %i.aau, align 8, !tbaa !86
  %indvars.iv.next.i385.us = add nuw nsw i64 %indvars.iv.i384.us, 1 ; 2 uses
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i385.us
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !86
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.next.i385.us ; 2 uses
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !86
  %i.abb = or i64 %i.aba, %i.aay
  store i64 %i.abb, ptr %i.aaz, align 8, !tbaa !86
  %indvars.iv.next.i385.us.1 = add nuw nsw i64 %indvars.iv.i384.us, 2 ; 2 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i385.us.1
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !86
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.next.i385.us.1 ; 2 uses
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !86
  %i.abg = or i64 %i.abf, %i.abd
  store i64 %i.abg, ptr %i.abe, align 8, !tbaa !86
  %indvars.iv.next.i385.us.2 = add nuw nsw i64 %indvars.iv.i384.us, 3 ; 2 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.next.i385.us.2
  %i.abi = load i64, ptr %i.abh, align 8, !tbaa !86
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.next.i385.us.2 ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !86
  %i.abl = or i64 %i.abk, %i.abi
  store i64 %i.abl, ptr %i.abj, align 8, !tbaa !86
  %indvars.iv.next.i385.us.3 = add nuw nsw i64 %indvars.iv.i384.us, 4 ; 2 uses
  %exitcond.not.i386.us.3 = icmp eq i64 %indvars.iv.next.i385.us.3, %i.ap
  br i1 %exitcond.not.i386.us.3, label %zend_bitset_union.exit387.us, label %.lr.ph.i383.us, !llvm.loop !133

zend_bitset_union.exit387.us:                     ; preds = %bb.eo, %.lr.ph.i383.us.prol.loopexit, %.lr.ph.i383.us, %middle.block, %.lr.ph410.us, %bb.em, %bb.ek, %.lr.ph413.us
  %.2.us = phi i32 [ %.0315412.us, %.lr.ph413.us ], [ %.0315412.us, %.lr.ph410.us ], [ %.0315412.us, %bb.ek ], [ %.0315412.us, %bb.em ], [ 1, %middle.block ], [ 1, %.lr.ph.i383.us.prol.loopexit ], [ 1, %.lr.ph.i383.us ], [ %.0315412.us, %bb.eo ] ; 2 uses
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %._crit_edge.us, label %.lr.ph413.us.backedge

.lr.ph413.us.backedge:                            ; preds = %zend_bitset_union.exit387.us, %._crit_edge.us
  %indvars.iv439.be = phi i64 [ %indvars.iv.next440, %zend_bitset_union.exit387.us ], [ 0, %._crit_edge.us ]
  %.0315412.us.be = phi i32 [ %.2.us, %zend_bitset_union.exit387.us ], [ 0, %._crit_edge.us ]
  br label %.lr.ph413.us, !llvm.loop !134

zend_bitset_union_with_intersection.exit.loopexit.us: ; preds = %.lr.ph.i369.us.prol.loopexit, %.lr.ph.i369.us, %middle.block557
  %i.abm = sext i32 %.0320407.us to i64
  %i.abn = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %.0320.us = load i32, ptr %i.abo, align 4, !tbaa !16 ; 2 uses
  %.not339.us = icmp eq i32 %.0320.us, -1
  br i1 %.not339.us, label %.critedge.us417, label %bb.en, !llvm.loop !135

.lr.ph.us418:                                     ; preds = %.lr.ph410.split.us420
  %i.abp = load i32, ptr %i.abq, align 8, !tbaa !136
  br label %bb.en

.lr.ph410.us:                                     ; preds = %bb.el
  %i.abq = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  %i.abr = getelementptr [8 x i8], ptr %i.bo, i64 %i.wq ; 5 uses
  br i1 %.not.i360, label %zend_bitset_union.exit387.us, label %.lr.ph410.split.us420.preheader

.lr.ph410.split.us420.preheader:                  ; preds = %.lr.ph410.us
  %i.abs = load ptr, ptr %i.wd, align 8, !tbaa !137
  %i.abt = getelementptr inbounds nuw i8, ptr %i.wt, i64 28
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !138
  %i.abv = sext i32 %i.abu to i64
  %wide.trip.count = zext nneg i32 %i.wy to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.abs, i64 %i.abv
  %bound0541 = icmp ult ptr %i.ws, %scevgep537
  %bound1542 = icmp ult ptr %i.abr, %scevgep535
  %found.conflict543 = and i1 %bound0541, %bound1542
  br label %.lr.ph410.split.us420

._crit_edge.us:                                   ; preds = %zend_bitset_union.exit387.us
  %.not331.us = icmp eq i32 %.2.us, 0
  br i1 %.not331.us, label %.split.us, label %.lr.ph413.us.backedge

.split.us:                                        ; preds = %._crit_edge.us, %place_essa_pis.exit
  %i.abw = load i32, ptr %i.f, align 4, !tbaa !53
  %i.abx = load i32, ptr %i.h, align 8, !tbaa !54
  %i.aby = add i32 %i.abx, %i.abw                 ; 2 uses
  %i.abz = zext i32 %i.aby to i64
  %i.aca = shl nuw nsw i64 %i.abz, 2              ; 2 uses
  %i.acb = icmp ugt i32 %i.aby, 8192              ; 2 uses
  br i1 %i.acb, label %bb.ep, label %.thread, !prof !63

bb.ep:                                            ; preds = %.split.us
  %i.acc = call noalias ptr @_emalloc(i64 noundef %i.aca) #17 ; 2 uses
  %.not332 = icmp eq ptr %i.acc, null
  br i1 %.not332, label %bb.eq, label %.preheader

.thread:                                          ; preds = %.split.us
  %i.acd = alloca i8, i64 %i.aca, align 16
  br label %.preheader

.preheader:                                       ; preds = %.thread, %bb.ep
  %i.ace = phi ptr [ %i.acd, %.thread ], [ %i.acc, %bb.ep ] ; 5 uses
  br i1 %i.wc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count450 = zext nneg i32 %i.e to i64
  br label %bb.er

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.ax, label %.sink.split, label %bb.fm, !prof !63

bb.er:                                            ; preds = %.lr.ph, %zend_bitset_empty.exit.thread
  %indvars.iv447 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next448, %zend_bitset_empty.exit.thread ] ; 5 uses
  %i.acf = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv447 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.ach = load i32, ptr %i.acg, align 8, !tbaa !79
  %i.aci = icmp sgt i32 %i.ach, -1
  br i1 %i.aci, label %zend_bitset_empty.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.acj = mul i64 %indvars.iv447, %i.ap
  %i.ack = and i64 %i.acj, 4294967295
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ack ; 2 uses
  br i1 %.not.i360, label %zend_bitset_empty.exit.thread, label %.lr.ph.i390

bb.et:                                            ; preds = %.lr.ph.i390
  %indvars.iv.next.i394 = add nuw nsw i64 %indvars.iv.i391, 1 ; 2 uses
  %exitcond.not.i395 = icmp eq i64 %indvars.iv.next.i394, %i.ap
  br i1 %exitcond.not.i395, label %zend_bitset_empty.exit.thread, label %.lr.ph.i390, !llvm.loop !139

.lr.ph.i390:                                      ; preds = %bb.es, %bb.et
  %indvars.iv.i391 = phi i64 [ %indvars.iv.next.i394, %bb.et ], [ 0, %bb.es ] ; 2 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.i391
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !86
  %.not.i392 = icmp eq i64 %i.acn, 0
  br i1 %.not.i392, label %bb.et, label %zend_bitset_empty.exit.preheader

zend_bitset_empty.exit.preheader:                 ; preds = %.lr.ph.i390
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acf, i64 24 ; 2 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv447
  br label %bb.eu

bb.eu:                                            ; preds = %zend_bitset_empty.exit.preheader, %zend_bitset_empty.exit
  %indvars.iv444 = phi i64 [ %i.ap, %zend_bitset_empty.exit.preheader ], [ %i.acq, %zend_bitset_empty.exit ] ; 2 uses
  %i.acq = add nsw i64 %indvars.iv444, -1         ; 3 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %i.acq
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !86 ; 2 uses
  %.not335 = icmp eq i64 %i.acs, 0
  br i1 %.not335, label %zend_bitset_empty.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.act = trunc nuw nsw i64 %indvars.iv444 to i32
  %i.acu = shl i32 %i.act, 6
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.fe
  %.1321423.in = phi i32 [ %i.acu, %bb.ev ], [ %.1321423, %bb.fe ]
  %.0313422 = phi i64 [ %i.acs, %bb.ev ], [ %i.aew, %bb.fe ] ; 2 uses
  %.1321423 = add i32 %.1321423.in, -1            ; 2 uses
  %i.acv = icmp slt i64 %.0313422, 0
  br i1 %i.acv, label %bb.ex, label %bb.fe

bb.ex:                                            ; preds = %bb.ew
  %i.acw = load i32, ptr %i.aco, align 8, !tbaa !102
  %i.acx = sext i32 %i.acw to i64                 ; 2 uses
  %i.acy = shl nsw i64 %i.acx, 2
  %i.acz = add nsw i64 %i.acy, 4
  %i.ada = and i64 %i.acz, -8
  %i.adb = shl nsw i64 %i.acx, 3
  %i.adc = add nsw i64 %i.adb, 104
  %i.add = add nsw i64 %i.adc, %i.ada             ; 2 uses
  %i.ade = call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.add, i64 1) #15, !srcloc !55 ; 2 uses
  %i.adf = extractvalue { i64, i64 } %i.ade, 0    ; 2 uses
  %i.adg = extractvalue { i64, i64 } %i.ade, 1
  %.not.i343.not = icmp eq i64 %i.adg, 0
  br i1 %.not.i343.not, label %zend_arena_calloc.exit341, label %bb.ey, !prof !56

bb.ey:                                            ; preds = %bb.ex
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.1, i64 noundef %i.add, i64 noundef 1) #16
  unreachable

zend_arena_calloc.exit341:                        ; preds = %bb.ex
  %i.adh = load ptr, ptr %0, align 8, !tbaa !57   ; 5 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !59 ; 3 uses
  %i.adj = add i64 %i.adf, 7
  %i.adk = and i64 %i.adj, -8                     ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !62
  %i.adn = ptrtoint ptr %i.adm to i64             ; 2 uses
  %i.ado = ptrtoint ptr %i.adi to i64
  %i.adp = sub i64 %i.adn, %i.ado
  %.not.i350 = icmp ugt i64 %i.adk, %i.adp
  br i1 %.not.i350, label %bb.fa, label %bb.ez, !prof !63

bb.ez:                                            ; preds = %zend_arena_calloc.exit341
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adk
  store ptr %i.adq, ptr %i.adh, align 8, !tbaa !59
  br label %zend_arena_alloc.exit353

bb.fa:                                            ; preds = %zend_arena_calloc.exit341
  %i.adr = add i64 %i.adk, 24
  %i.ads = ptrtoint ptr %i.adh to i64
  %i.adt = sub i64 %i.adn, %i.ads
  %..i352 = call i64 @llvm.umax.i64(i64 %i.adr, i64 %i.adt) ; 2 uses
  %i.adu = call noalias ptr @_emalloc(i64 noundef %..i352) #17 ; 6 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 24 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.adk
  store ptr %i.adw, ptr %i.adu, align 8, !tbaa !59
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 %..i352
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  store ptr %i.adx, ptr %i.ady, align 8, !tbaa !62
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  store ptr %i.adh, ptr %i.adz, align 8, !tbaa !64
  store ptr %i.adu, ptr %0, align 8, !tbaa !57
  br label %zend_arena_alloc.exit353

zend_arena_alloc.exit353:                         ; preds = %bb.ez, %bb.fa
  %.0.i351 = phi ptr [ %i.adi, %bb.ez ], [ %i.adv, %bb.fa ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i351, i8 0, i64 %i.adf, i1 false)
  %i.aea = getelementptr inbounds nuw i8, ptr %.0.i351, i64 104 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0.i351, i64 96
  store ptr %i.aea, ptr %i.aeb, align 8, !tbaa !140
  %i.aec = load i32, ptr %i.aco, align 8, !tbaa !102
  %i.aed = sext i32 %i.aec to i64
  %i.aee = shl nsw i64 %i.aed, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aea, i8 -1, i64 %i.aee, i1 false)
  %i.aef = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.aeg = getelementptr inbounds nuw [64 x i8], ptr %i.aef, i64 %indvars.iv447
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 24
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !102
  %i.aej = sext i32 %i.aei to i64
  %i.aek = shl nsw i64 %i.aej, 2
  %i.ael = add nsw i64 %i.aek, 4
  %i.aem = and i64 %i.ael, -8
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0.i351, i64 80
  store ptr %i.aen, ptr %i.aeo, align 8, !tbaa !141
  %i.aep = getelementptr inbounds nuw i8, ptr %.0.i351, i64 8
  store i32 -1, ptr %i.aep, align 8, !tbaa !142
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0.i351, i64 64
  store i32 %.1321423, ptr %i.aeq, align 8, !tbaa !143
  %i.aer = getelementptr inbounds nuw i8, ptr %.0.i351, i64 68
  store i32 -1, ptr %i.aer, align 4, !tbaa !144
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fc, %zend_arena_alloc.exit353
  %.0 = phi ptr [ %i.acp, %zend_arena_alloc.exit353 ], [ %i.aes, %bb.fc ] ; 2 uses
  %i.aes = load ptr, ptr %.0, align 8, !tbaa !145 ; 4 uses
  %.not337 = icmp eq ptr %i.aes, null
  br i1 %.not337, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.aeu = load i32, ptr %i.aet, align 8, !tbaa !142
  %i.aev = icmp slt i32 %i.aeu, 0
  br i1 %i.aev, label %bb.fd, label %bb.fb, !llvm.loop !146

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  store ptr %i.aes, ptr %.0.i351, align 8, !tbaa !147
  store ptr %.0.i351, ptr %.0, align 8, !tbaa !145
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ew, %bb.fd
  %i.aew = shl i64 %.0313422, 1                   ; 2 uses
  %.not336 = icmp eq i64 %i.aew, 0
  br i1 %.not336, label %zend_bitset_empty.exit, label %bb.ew, !llvm.loop !148

zend_bitset_empty.exit:                           ; preds = %bb.fe, %bb.eu
  %.not334.wide = icmp eq i64 %i.acq, 0
  br i1 %.not334.wide, label %zend_bitset_empty.exit.thread, label %bb.eu, !llvm.loop !149

zend_bitset_empty.exit.thread:                    ; preds = %bb.et, %zend_bitset_empty.exit, %bb.es, %bb.er
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %._crit_edge, label %bb.er, !llvm.loop !150
end_hunk_1
