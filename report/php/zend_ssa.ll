Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ssa?download=true
inline.NumInlined: 65
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@zend_ssa_rename_op:bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !17
  %i.kd = lshr i32 %i.kc, 4
  %i.ke = add nsw i32 %i.kd, -5
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kf
  store i32 %4, ptr %i.kg, align 4, !tbaa !18
  %i.kh = add nsw i32 %4, 1
  br label %bb.bl

bb.bc:                                            ; preds = %bb.i, %bb.i, %bb.i
  %i.ki = and i32 %3, 134217728
  %.not229.i = icmp ne i32 %i.ki, 0               ; 2 uses
  br i1 %.not229.i, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.kj = icmp eq i8 %i.b, 8
  br i1 %i.kj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kk = zext i32 %2 to i64
  %i.kl = getelementptr inbounds nuw [36 x i8], ptr %5, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 %4, ptr %i.km, align 4, !tbaa !27
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !17
  %i.kp = lshr i32 %i.ko, 4
  %i.kq = add nsw i32 %i.kp, -5
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kr
  store i32 %4, ptr %i.ks, align 4, !tbaa !18
  %i.kt = add nsw i32 %4, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6.i.ph = phi i32 [ %4, %bb.bd ], [ %i.kt, %bb.be ] ; 4 uses
  %i.ku = icmp eq i8 %i.n, 8
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = zext i32 %2 to i64
  %i.kw = getelementptr inbounds nuw [36 x i8], ptr %5, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store i32 %.6.i.ph, ptr %i.kx, align 4, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !17
  %i.la = lshr i32 %i.kz, 4
  %i.lb = add nsw i32 %i.la, -5
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.lc
  store i32 %.6.i.ph, ptr %i.ld, align 4, !tbaa !18
  %i.le = add nsw i32 %.6.i.ph, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bc, %bb.bg, %bb.bf
  %.7.i = phi i32 [ %i.le, %bb.bg ], [ %.6.i.ph, %bb.bf ], [ %4, %bb.bc ] ; 6 uses
  %i.lf = icmp eq i8 %i.aq, -49
  br i1 %i.lf, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !16  ; 2 uses
  %i.li = and i8 %i.lh, 14
  %.not230.i = icmp eq i8 %i.li, 0
  br i1 %.not230.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !17
  %i.ll = lshr i32 %i.lk, 4
  %i.lm = add nsw i32 %i.ll, -5
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !18
  %i.lq = add i32 %2, 1
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [36 x i8], ptr %5, i64 %i.lr ; 2 uses
  store i32 %i.lp, ptr %i.ls, align 4, !tbaa !20
  %i.lt = icmp eq i8 %i.lh, 8
  %or.cond14 = and i1 %.not229.i, %i.lt
  br i1 %or.cond14, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  store i32 %.7.i, ptr %i.lu, align 4, !tbaa !27
  %i.lv = load i32, ptr %i.lj, align 8, !tbaa !17
  %i.lw = lshr i32 %i.lv, 4
  %i.lx = add nsw i32 %i.lw, -5
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ly
  store i32 %.7.i, ptr %i.lz, align 4, !tbaa !18
  %i.ma = add nsw i32 %.7.i, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.az, %bb.ay, %._crit_edge, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.p, %bb.m, %bb.l, %bb.i
  %.8.i = phi i32 [ %4, %bb.i ], [ %i.bn, %bb.m ], [ %.0.i, %bb.l ], [ %.2.i, %bb.p ], [ %i.dg, %bb.u ], [ %.3.i, %bb.t ], [ %i.en, %bb.z ], [ %.4.i, %bb.y ], [ %.4.i, %bb.x ], [ %i.fj, %bb.ac ], [ %.7.i, %bb.bh ], [ %4, %bb.ab ], [ %4, %bb.aa ], [ %i.ge, %bb.af ], [ %4, %bb.ae ], [ %4, %bb.ad ], [ %4, %bb.ah ], [ %4, %bb.ag ], [ %.5.i, %bb.al ], [ %.5.i, %bb.ak ], [ %4, %bb.am ], [ %.7.i, %bb.bi ], [ %4, %bb.an ], [ %4, %bb.ao ], [ %4, %bb.as ], [ %4, %bb.ar ], [ %4, %bb.au ], [ %4, %bb.at ], [ %4, %bb.av ], [ %i.jh, %._crit_edge ], [ %i.jw, %bb.az ], [ %4, %bb.ay ], [ %i.kh, %bb.bb ], [ %4, %bb.ba ], [ %i.ma, %bb.bk ], [ %.7.i, %bb.bj ] ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !23
  %i.md = and i8 %i.mc, 14
  %.not251.i = icmp eq i8 %i.md, 0
  br i1 %.not251.i, label %_zend_ssa_rename_op.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.me = zext i32 %2 to i64
  %i.mf = getelementptr inbounds nuw [36 x i8], ptr %5, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 20
  store i32 %.8.i, ptr %i.mg, align 4, !tbaa !45
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !17
  %i.mj = lshr i32 %i.mi, 4
  %i.mk = add nsw i32 %i.mj, -5
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ml
  store i32 %.8.i, ptr %i.mm, align 4, !tbaa !18
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !54     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = add i32 %i.i, %i.g
  %i.k = mul i32 %i.j, %i.e
  %i.l = icmp ugt i32 %i.k, 4194304
  br i1 %i.l, label %bb.fm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.e to i64                     ; 2 uses
  %i.n = tail call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 range(i64 -2147483648, 4294967296) %i.m) #15, !srcloc !57 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %.not.i.not = icmp eq i64 %i.p, 0
  br i1 %.not.i.not, label %zend_arena_calloc.exit342, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.1, i64 noundef 8, i64 noundef range(i64 -2147483648, 4294967296) %i.m) #16
  unreachable

zend_arena_calloc.exit342:                        ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63   ; 3 uses
  %i.s = add i64 %i.o, 7
  %i.t = and i64 %i.s, -8                         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  %.not.i349 = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i349, label %bb.e, label %bb.d, !prof !65

bb.d:                                             ; preds = %zend_arena_calloc.exit342
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !63
  br label %zend_arena_alloc.exit

bb.e:                                             ; preds = %zend_arena_calloc.exit342
  %i.aa = add i64 %i.t, 24
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.w, %i.ab
  %..i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ad = tail call noalias ptr @_emalloc(i64 noundef %..i) #17 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.t
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.q, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.ad, ptr %0, align 8, !tbaa !60
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.ae, %bb.e ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i, i8 0, i64 %i.o, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %.0.i, ptr %i.aj, align 8, !tbaa !67
  %i.ak = load i32, ptr %i.f, align 4, !tbaa !55
  %i.al = load i32, ptr %i.h, align 8, !tbaa !56
  %i.am = add i32 %i.al, %i.ak
  %.fr430 = freeze i32 %i.am                      ; 5 uses
  store i32 %.fr430, ptr %5, align 8, !tbaa !159
  %i.an = zext i32 %.fr430 to i64
  %i.ao = add nuw nsw i64 %i.an, 63               ; 2 uses
  %i.ap = lshr i64 %i.ao, 6                       ; 28 uses
  %i.aq = trunc nuw nsw i64 %i.ap to i32          ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !70
  %i.as = shl nuw nsw i64 %i.ap, 3
  %i.at = shl nsw i32 %i.e, 2
  %i.au = or disjoint i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.as, %i.av                ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, 32768               ; 3 uses
  br i1 %i.ax, label %bb.f, label %bb.g, !prof !65

bb.f:                                             ; preds = %zend_arena_alloc.exit
  %i.ay = tail call noalias ptr @_emalloc(i64 noundef %i.aw) #17
  br label %bb.h

bb.g:                                             ; preds = %zend_arena_alloc.exit
  %i.az = alloca i8, i64 %i.aw, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ba = phi ptr [ %i.az, %bb.g ], [ %i.ay, %bb.f ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !160
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
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !161
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
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bs = load i32, ptr %4, align 8, !tbaa !54    ; 2 uses
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
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv.i ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !76
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !77 ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.cf ; 52 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !78
  %i.ck = icmp sgt i32 %i.cj, -1
  %i.cl = icmp eq i32 %i.ce, 0
  %or.cond541.i = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond541.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !24
  switch i8 %i.cn, label %.critedge.i [
    i8 43, label %bb.m
    i8 44, label %bb.n
    i8 -87, label %bb.o
    i8 -58, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = icmp eq i8 %i.ct, 8
  br i1 %i.cu, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !17
  %i.cx = lshr i32 %i.cw, 4
  %i.cy = add nsw i32 %i.cx, -5
  %i.cz = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !18
  %i.db = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dc = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.db, i32 noundef %i.da, i32 noundef %i.cy) ; 4 uses
  %.not496.i = icmp eq ptr %i.dc, null
  br i1 %.not496.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 76
  store i8 0, ptr %i.dd, align 4, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr null, ptr %i.de, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i32 -520093700, ptr %i.df, align 8, !tbaa !17
  br label %.critedge.i

bb.r:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.di = icmp eq i8 %i.dh, 8
  br i1 %i.di, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !17
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = add nsw i32 %i.dl, -5
  %i.dn = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !18
  %i.dq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dr = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.dq, i32 noundef %i.dp, i32 noundef %i.dm) ; 4 uses
  %.not.i358 = icmp eq ptr %i.dr, null
  br i1 %.not.i358, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 76
  store i8 0, ptr %i.ds, align 4, !tbaa !84
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr null, ptr %i.dt, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i32 -520093700, ptr %i.du, align 8, !tbaa !17
  br label %.critedge.i

bb.u:                                             ; preds = %bb.n, %bb.m
  %.0452.in.i = phi ptr [ %i.cp, %bb.m ], [ %i.cq, %bb.n ]
  %.0451.in.i = phi ptr [ %i.co, %bb.m ], [ %i.cr, %bb.n ]
  %.0451.i = load i32, ptr %.0451.in.i, align 4, !tbaa !18 ; 13 uses
  %.0452.i = load i32, ptr %.0452.in.i, align 4, !tbaa !18 ; 15 uses
  %i.dv = icmp eq i32 %i.ce, 1
  br i1 %i.dv, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  %i.dy = icmp eq i8 %i.dx, 2
  br i1 %i.dy, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds i8, ptr %i.cg, i64 -64 ; 5 uses
  %i.ea = getelementptr inbounds i8, ptr %i.cg, i64 -36 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !24  ; 7 uses
  %.off.i = add i8 %i.eb, -18
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %bb.x, label %bb.cg

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !17
  %i.ee = getelementptr inbounds i8, ptr %i.cg, i64 -48
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !17
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.y, label %bb.cg

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !86
  %i.eh = getelementptr inbounds i8, ptr %i.cg, i64 -35
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.ei, label %bb.ab [
    i8 8, label %bb.z
    i8 2, label %bb.aa
end_hunk_0
begin_hunk_1_@zend_build_ssa:bb.a
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !17 ; 2 uses
  %i.td = load i32, ptr %i.bv, align 4, !tbaa !44
  %i.te = and i32 %i.td, 33554432
  %.not500.i = icmp eq i32 %i.te, 0
  br i1 %.not500.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tf = getelementptr inbounds i8, ptr %i.cg, i64 -56
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !17
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds i8, ptr %i.dz, i64 %i.th
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.tj = load ptr, ptr %i.bw, align 8, !tbaa !87
  %i.tk = getelementptr inbounds i8, ptr %i.cg, i64 -56
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !17
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [16 x i8], ptr %i.tj, i64 %i.tm
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dm, %bb.dl
  %.0438.in.in.i = phi i32 [ %i.sm, %bb.dl ], [ %i.sm, %bb.dm ], [ %i.tc, %bb.dq ], [ %i.tc, %bb.dp ]
  %.0.i359 = phi ptr [ %i.ss, %bb.dl ], [ %i.sx, %bb.dm ], [ %i.tn, %bb.dq ], [ %i.ti, %bb.dp ]
  %.0438.in.i = lshr i32 %.0438.in.in.i, 4
  %.0438.i = add nsw i32 %.0438.in.i, -5          ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0.i359, i64 8
  %i.tp = load i8, ptr %i.to, align 8, !tbaa !17  ; 2 uses
  %.off599.i = add i8 %i.tp, -1
  %switch600.i = icmp ult i8 %.off599.i, 3
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
  store i8 0, ptr %i.tv, align 4, !tbaa !84
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  store ptr null, ptr %i.tw, align 8, !tbaa !17
  %i.tx = and i32 %i.tr, 2
  %.not.i558.i = icmp eq i32 %i.tx, 0
  %spec.select.v.i559.i = select i1 %.not.i558.i, i32 -1073740800, i32 -1073740799
  %spec.select.i560.i = or i32 %spec.select.v.i559.i, %i.tr
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store i32 %spec.select.i560.i, ptr %i.ty, align 8, !tbaa !17
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tz = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0451.i, i32 noundef %.0438.i) ; 4 uses
  %.not508.i = icmp eq ptr %i.tz, null
  br i1 %.not508.i, label %.critedge.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ua = and i32 %i.tr, 14
  %i.ub = xor i32 %i.ua, 553647102                ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 76
  store i8 0, ptr %i.uc, align 4, !tbaa !84
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store ptr null, ptr %i.ud, align 8, !tbaa !17
  %i.ue = and i32 %i.ub, 2
  %.not.i.i561.i = icmp eq i32 %i.ue, 0
  %spec.select.v.i.i562.i = select i1 %.not.i.i561.i, i32 -1073740800, i32 -1073740799
  %spec.select.i.i563.i = or disjoint i32 %spec.select.v.i.i562.i, %i.ub
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i32 %spec.select.i.i563.i, ptr %i.uf, align 8, !tbaa !17
  br label %.critedge.i

bb.dw:                                            ; preds = %_const_op_type.exit.i
  %i.ug = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0451.i, i32 noundef %.0438.i) ; 4 uses
  %.not505.i = icmp eq ptr %i.ug, null
  br i1 %.not505.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 76
  store i8 0, ptr %i.uh, align 4, !tbaa !84
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 24
  store ptr null, ptr %i.ui, align 8, !tbaa !17
  %i.uj = and i32 %i.tr, 2
  %.not.i564.i = icmp eq i32 %i.uj, 0
  %spec.select.v.i565.i = select i1 %.not.i564.i, i32 -1073740800, i32 -1073740799
  %spec.select.i566.i = or i32 %spec.select.v.i565.i, %i.tr
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  store i32 %spec.select.i566.i, ptr %i.uk, align 8, !tbaa !17
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.ul = call fastcc ptr @add_pi(ptr noundef %0, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, i32 noundef %i.tt, i32 noundef %.0452.i, i32 noundef %.0438.i) ; 4 uses
  %.not506.i = icmp eq ptr %i.ul, null
  br i1 %.not506.i, label %.critedge.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.um = and i32 %i.tr, 14
  %i.un = xor i32 %i.um, 553647102                ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 76
  store i8 0, ptr %i.uo, align 4, !tbaa !84
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  store ptr null, ptr %i.up, align 8, !tbaa !17
  %i.uq = and i32 %i.un, 2
  %.not.i.i567.i = icmp eq i32 %i.uq, 0
  %spec.select.v.i.i568.i = select i1 %.not.i.i567.i, i32 -1073740800, i32 -1073740799
  %spec.select.i.i569.i = or disjoint i32 %spec.select.v.i.i568.i, %i.un
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  store i32 %spec.select.i.i569.i, ptr %i.ur, align 8, !tbaa !17
  br label %.critedge.i

bb.ea:                                            ; preds = %bb.dg
  %i.us = icmp eq i8 %i.eb, -118
  br i1 %i.us, label %bb.eb, label %.critedge.i

bb.eb:                                            ; preds = %bb.ea
  %i.ut = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !17
  %i.uv = getelementptr inbounds i8, ptr %i.cg, i64 -48
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !17
  %i.ux = icmp eq i32 %i.uu, %i.uw
  br i1 %i.ux, label %bb.ec, label %.critedge.i

bb.ec:                                            ; preds = %bb.eb
  %i.uy = getelementptr inbounds i8, ptr %i.cg, i64 -35
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !16
  %i.va = icmp eq i8 %i.uz, 8
  br i1 %i.va, label %bb.ed, label %.critedge.i

bb.ed:                                            ; preds = %bb.ec
  %i.vb = getelementptr inbounds i8, ptr %i.cg, i64 -34
  %i.vc = load i8, ptr %i.vb, align 2, !tbaa !21
  %i.vd = icmp eq i8 %i.vc, 1
  br i1 %i.vd, label %bb.ee, label %.critedge.i

bb.ee:                                            ; preds = %bb.ed
  %i.ve = getelementptr inbounds i8, ptr %i.cg, i64 -56
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !17
  %i.vg = lshr i32 %i.vf, 4
  %i.vh = add nsw i32 %i.vg, -5
  %i.vi = load i32, ptr %i.bv, align 4, !tbaa !44
  %i.vj = and i32 %i.vi, 33554432
  %.not497.i = icmp eq i32 %i.vj, 0
  br i1 %.not497.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vk = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !17
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %i.dz, i64 %i.vm
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.vo = load ptr, ptr %i.bw, align 8, !tbaa !87
  %i.vp = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !17
  %i.vr = zext i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.vo, i64 %i.vr
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.vt = phi ptr [ %i.vn, %bb.ef ], [ %i.vs, %bb.eg ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !17
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
  store i8 0, ptr %i.vz, align 4, !tbaa !84
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store i32 -1073740544, ptr %i.wb, align 8, !tbaa !17
  store ptr %i.vw, ptr %i.wa, align 8, !tbaa !17
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dv, %bb.du, %bb.dr, %bb.dn, %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.de, %bb.dd, %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cn, %bb.cm, %bb.ci, %bb.ch, %.thread575.thread.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %place_essa_pis.exit, label %bb.k, !llvm.loop !129

place_essa_pis.exit:                              ; preds = %.critedge.i, %bb.j
  %i.wc = icmp sgt i32 %i.e, 0                    ; 2 uses
  %.not.i360 = icmp eq i64 %i.ap, 0               ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.wc, label %.lr.ph413.us.preheader, label %.split.us

.lr.ph413.us.preheader:                           ; preds = %place_essa_pis.exit
  %wide.trip.count442 = zext nneg i32 %i.e to i64
  %i.we = shl nuw nsw i64 %i.ap, 3                ; 2 uses
  %scevgep557 = getelementptr i8, ptr %i.bo, i64 %i.we
  %scevgep559 = getelementptr i8, ptr %i.bp, i64 %i.we
  %min.iters.check565 = icmp ult i32 %.fr430, 193
  %n.vec567 = and i64 %i.ap, 134217724            ; 3 uses
  %cmp.n576 = icmp eq i64 %i.ap, %n.vec567
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check541 = icmp ult i32 %.fr430, 321
  %n.vec543 = and i64 %i.ap, 134217724            ; 3 uses
  %cmp.n554 = icmp eq i64 %i.ap, %n.vec543
  %i.wf = and i64 %i.ao, 64
  %lcmp.mod596.not = icmp eq i64 %i.wf, 0
  %min.iters.check = icmp ult i32 %.fr430, 193
  %n.vec = and i64 %i.ap, 134217724               ; 3 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  %xtraiter598 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br label %.lr.ph413.us

.lr.ph413.us:                                     ; preds = %.lr.ph413.us.backedge, %.lr.ph413.us.preheader
  %indvars.iv439 = phi i64 [ 0, %.lr.ph413.us.preheader ], [ %indvars.iv439.be, %.lr.ph413.us.backedge ] ; 4 uses
  %.0315412.us = phi i32 [ 0, %.lr.ph413.us.preheader ], [ %.0315412.us.be, %.lr.ph413.us.backedge ] ; 5 uses
  %i.wg = mul i64 %i.ap, %indvars.iv439
  %i.wh = shl i64 %i.wg, 3
  %i.wi = and i64 %i.wh, 34359738360              ; 2 uses
  %scevgep521 = getelementptr i8, ptr %scevgep557, i64 %i.wi
  %scevgep523 = getelementptr i8, ptr %scevgep559, i64 %i.wi ; 2 uses
  %i.wj = mul i64 %indvars.iv439, %i.ap
  %i.wk = and i64 %i.wj, 4294967295               ; 6 uses
  %i.wl = getelementptr [8 x i8], ptr %i.bn, i64 %i.wk ; 8 uses
  %i.wm = getelementptr [8 x i8], ptr %i.bp, i64 %i.wk ; 21 uses
  %i.wn = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv439 ; 4 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !78 ; 2 uses
  %i.wq = icmp sgt i32 %i.wp, -1
  br i1 %i.wq, label %zend_bitset_union.exit387.us, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph413.us
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !93 ; 2 uses
  %i.wt = icmp sgt i32 %i.ws, 1
  br i1 %i.wt, label %bb.el, label %zend_bitset_union.exit387.us

bb.el:                                            ; preds = %bb.ek
  %i.wu = and i32 %i.wp, 131072
  %.not338.us = icmp eq i32 %i.wu, 0
  br i1 %.not338.us, label %.lr.ph410.us, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.wv = getelementptr [8 x i8], ptr %i.bo, i64 %i.wk ; 7 uses
  br i1 %.not.i360, label %zend_bitset_union.exit387.us, label %.lr.ph.i362.us.preheader

.lr.ph.i362.us.preheader:                         ; preds = %bb.em
  br i1 %min.iters.check565, label %.lr.ph.i362.us.preheader593, label %vector.memcheck556

vector.memcheck556:                               ; preds = %.lr.ph.i362.us.preheader
  %6 = add nuw nsw i64 %i.ap, %i.wk
  %7 = shl nuw nsw i64 %6, 3                      ; 2 uses
  %8 = getelementptr i8, ptr %i.bp, i64 %7
  %9 = getelementptr i8, ptr %i.bo, i64 %7
  %bound0561 = icmp ult ptr %i.wm, %9
  %bound1562 = icmp ult ptr %i.wv, %8
  %found.conflict563 = and i1 %bound0561, %bound1562
  br i1 %found.conflict563, label %.lr.ph.i362.us.preheader593, label %vector.body568

vector.body568:                                   ; preds = %vector.memcheck556, %vector.body568
  %index569 = phi i64 [ %index.next574, %vector.body568 ], [ 0, %vector.memcheck556 ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %index569 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %wide.load570 = load <2 x i64>, ptr %i.ww, align 8, !tbaa !86, !alias.scope !169
  %wide.load571 = load <2 x i64>, ptr %i.wx, align 8, !tbaa !86, !alias.scope !169
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %index569 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 2 uses
  %wide.load572 = load <2 x i64>, ptr %i.wy, align 8, !tbaa !86, !alias.scope !170, !noalias !169
  %wide.load573 = load <2 x i64>, ptr %i.wz, align 8, !tbaa !86, !alias.scope !170, !noalias !169
  %i.xa = or <2 x i64> %wide.load572, %wide.load570
  %i.xb = or <2 x i64> %wide.load573, %wide.load571
  store <2 x i64> %i.xa, ptr %i.wy, align 8, !tbaa !86, !alias.scope !170, !noalias !169
  store <2 x i64> %i.xb, ptr %i.wz, align 8, !tbaa !86, !alias.scope !170, !noalias !169
  %index.next574 = add nuw i64 %index569, 4       ; 2 uses
  %i.xc = icmp eq i64 %index.next574, %n.vec567
  br i1 %i.xc, label %middle.block575, label %vector.body568, !llvm.loop !133

middle.block575:                                  ; preds = %vector.body568
  br i1 %cmp.n576, label %.lr.ph.i375.us.preheader, label %.lr.ph.i362.us.preheader593

.lr.ph.i362.us.preheader593:                      ; preds = %vector.memcheck556, %.lr.ph.i362.us.preheader, %middle.block575
  %indvars.iv.i363.us.ph = phi i64 [ 0, %vector.memcheck556 ], [ 0, %.lr.ph.i362.us.preheader ], [ %n.vec567, %middle.block575 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i362.us.prol.loopexit, label %.lr.ph.i362.us.prol

.lr.ph.i362.us.prol:                              ; preds = %.lr.ph.i362.us.preheader593, %.lr.ph.i362.us.prol
  %indvars.iv.i363.us.prol = phi i64 [ %indvars.iv.next.i364.us.prol, %.lr.ph.i362.us.prol ], [ %indvars.iv.i363.us.ph, %.lr.ph.i362.us.preheader593 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i362.us.prol ], [ 0, %.lr.ph.i362.us.preheader593 ]
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.i363.us.prol
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !86
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i363.us.prol ; 2 uses
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !86
  %i.xh = or i64 %i.xg, %i.xe
  store i64 %i.xh, ptr %i.xf, align 8, !tbaa !86
  %indvars.iv.next.i364.us.prol = add nuw nsw i64 %indvars.iv.i363.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i362.us.prol.loopexit, label %.lr.ph.i362.us.prol, !llvm.loop !134

.lr.ph.i362.us.prol.loopexit:                     ; preds = %.lr.ph.i362.us.prol, %.lr.ph.i362.us.preheader593
  %indvars.iv.i363.us.unr = phi i64 [ %indvars.iv.i363.us.ph, %.lr.ph.i362.us.preheader593 ], [ %indvars.iv.next.i364.us.prol, %.lr.ph.i362.us.prol ]
  %i.xi = sub nsw i64 %indvars.iv.i363.us.ph, %i.ap
  %i.xj = icmp ugt i64 %i.xi, -4
  br i1 %i.xj, label %.lr.ph.i375.us.preheader, label %.lr.ph.i362.us

.lr.ph.i362.us:                                   ; preds = %.lr.ph.i362.us.prol.loopexit, %.lr.ph.i362.us
  %indvars.iv.i363.us = phi i64 [ %indvars.iv.next.i364.us.3, %.lr.ph.i362.us ], [ %indvars.iv.i363.us.unr, %.lr.ph.i362.us.prol.loopexit ] ; 6 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.i363.us
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !86
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i363.us ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !86
  %i.xo = or i64 %i.xn, %i.xl
  store i64 %i.xo, ptr %i.xm, align 8, !tbaa !86
  %indvars.iv.next.i364.us = add nuw nsw i64 %indvars.iv.i363.us, 1 ; 2 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.next.i364.us
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !86
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i364.us ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !86
  %i.xt = or i64 %i.xs, %i.xq
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !86
  %indvars.iv.next.i364.us.1 = add nuw nsw i64 %indvars.iv.i363.us, 2 ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.next.i364.us.1
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !86
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i364.us.1 ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !86
  %i.xy = or i64 %i.xx, %i.xv
  store i64 %i.xy, ptr %i.xw, align 8, !tbaa !86
  %indvars.iv.next.i364.us.2 = add nuw nsw i64 %indvars.iv.i363.us, 3 ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.next.i364.us.2
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !86
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i364.us.2 ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !86
  %i.yd = or i64 %i.yc, %i.ya
  store i64 %i.yd, ptr %i.yb, align 8, !tbaa !86
  %indvars.iv.next.i364.us.3 = add nuw nsw i64 %indvars.iv.i363.us, 4 ; 2 uses
  %exitcond.not.i365.us.3 = icmp eq i64 %indvars.iv.next.i364.us.3, %i.ap
  br i1 %exitcond.not.i365.us.3, label %.lr.ph.i375.us.preheader, label %.lr.ph.i362.us, !llvm.loop !135

.lr.ph410.us:                                     ; preds = %bb.el
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.yf = getelementptr [8 x i8], ptr %i.bo, i64 %i.wk ; 5 uses
  br i1 %.not.i360, label %zend_bitset_union.exit387.us, label %.lr.ph410.split.us414.preheader

.lr.ph410.split.us414.preheader:                  ; preds = %.lr.ph410.us
  %i.yg = load ptr, ptr %i.wd, align 8, !tbaa !95
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wn, i64 28
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !96
  %i.yj = sext i32 %i.yi to i64
  %wide.trip.count = zext nneg i32 %i.ws to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.yg, i64 %i.yj
  %bound0537 = icmp ult ptr %i.wm, %scevgep521
  %bound1538 = icmp ult ptr %i.yf, %scevgep523
  %found.conflict539 = and i1 %bound0537, %bound1538
  br label %.lr.ph410.split.us414

.lr.ph410.split.us414:                            ; preds = %.lr.ph410.split.us414.preheader, %.critedge.us419
  %indvars.iv = phi i64 [ 0, %.lr.ph410.split.us414.preheader ], [ %indvars.iv.next, %.critedge.us419 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %.0320405.us416 = load i32, ptr %gep, align 4, !tbaa !18 ; 2 uses
  %.not339406.us417 = icmp eq i32 %.0320405.us416, -1
  br i1 %.not339406.us417, label %.critedge.us419, label %.lr.ph.us418

.lr.ph.us418:                                     ; preds = %.lr.ph410.split.us414
  %i.yk = load i32, ptr %i.ye, align 8, !tbaa !97
  br label %bb.en

bb.en:                                            ; preds = %zend_bitset_union_with_intersection.exit.loopexit.us, %.lr.ph.us418
  %.0320407.us = phi i32 [ %.0320405.us416, %.lr.ph.us418 ], [ %.0320.us, %zend_bitset_union_with_intersection.exit.loopexit.us ] ; 3 uses
  %.not340.us = icmp eq i32 %.0320407.us, %i.yk
  br i1 %.not340.us, label %.critedge.us419, label %.lr.ph.i369.preheader.us

.lr.ph.i369.preheader.us:                         ; preds = %bb.en
  %i.yl = mul i32 %.0320407.us, %i.aq
  %i.ym = zext i32 %i.yl to i64                   ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ym ; 5 uses
  br i1 %min.iters.check541, label %.lr.ph.i369.us.preheader, label %vector.memcheck527

vector.memcheck527:                               ; preds = %.lr.ph.i369.preheader.us
  %10 = add nuw nsw i64 %i.ap, %i.ym
  %i.yo = shl nuw nsw i64 %10, 3
  %scevgep531 = getelementptr i8, ptr %i.bn, i64 %i.yo
  %bound0534 = icmp ult ptr %i.wm, %scevgep531
  %bound1535 = icmp ult ptr %i.yn, %scevgep523
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx = or i1 %found.conflict536, %found.conflict539
  br i1 %conflict.rdx, label %.lr.ph.i369.us.preheader, label %vector.body544

vector.body544:                                   ; preds = %vector.memcheck527, %vector.body544
  %index545 = phi i64 [ %index.next552, %vector.body544 ], [ 0, %vector.memcheck527 ] ; 4 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %index545 ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16 ; 2 uses
  %wide.load546 = load <2 x i64>, ptr %i.yp, align 8, !tbaa !86, !alias.scope !173, !noalias !174
  %wide.load547 = load <2 x i64>, ptr %i.yq, align 8, !tbaa !86, !alias.scope !173, !noalias !174
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %index545 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %wide.load548 = load <2 x i64>, ptr %i.yr, align 8, !tbaa !86, !alias.scope !175
  %wide.load549 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !86, !alias.scope !175
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %index545 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load550 = load <2 x i64>, ptr %i.yt, align 8, !tbaa !86, !alias.scope !176
  %wide.load551 = load <2 x i64>, ptr %i.yu, align 8, !tbaa !86, !alias.scope !176
  %i.yv = and <2 x i64> %wide.load550, %wide.load548
  %i.yw = and <2 x i64> %wide.load551, %wide.load549
  %i.yx = or <2 x i64> %i.yv, %wide.load546
  %i.yy = or <2 x i64> %i.yw, %wide.load547
  store <2 x i64> %i.yx, ptr %i.yp, align 8, !tbaa !86, !alias.scope !173, !noalias !174
  store <2 x i64> %i.yy, ptr %i.yq, align 8, !tbaa !86, !alias.scope !173, !noalias !174
  %index.next552 = add nuw i64 %index545, 4       ; 2 uses
  %i.yz = icmp eq i64 %index.next552, %n.vec543
  br i1 %i.yz, label %middle.block553, label %vector.body544, !llvm.loop !140

middle.block553:                                  ; preds = %vector.body544
  br i1 %cmp.n554, label %zend_bitset_union_with_intersection.exit.loopexit.us, label %.lr.ph.i369.us.preheader

.lr.ph.i369.us.preheader:                         ; preds = %vector.memcheck527, %.lr.ph.i369.preheader.us, %middle.block553
  %indvars.iv.i370.us.ph = phi i64 [ 0, %vector.memcheck527 ], [ 0, %.lr.ph.i369.preheader.us ], [ %n.vec543, %middle.block553 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.i370.us.ph, 1
  br i1 %lcmp.mod596.not, label %.lr.ph.i369.us.prol.loopexit, label %.lr.ph.i369.us.prol

.lr.ph.i369.us.prol:                              ; preds = %.lr.ph.i369.us.preheader
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i370.us.ph ; 2 uses
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !86
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv.i370.us.ph
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !86
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %indvars.iv.i370.us.ph
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !86
  %i.zg = and i64 %i.zf, %i.zd
  %i.zh = or i64 %i.zg, %i.zb
  store i64 %i.zh, ptr %i.za, align 8, !tbaa !86
  %indvars.iv.next.i371.us.prol = or disjoint i64 %indvars.iv.i370.us.ph, 1
  br label %.lr.ph.i369.us.prol.loopexit

.lr.ph.i369.us.prol.loopexit:                     ; preds = %.lr.ph.i369.us.prol, %.lr.ph.i369.us.preheader
  %indvars.iv.i370.us.unr = phi i64 [ %indvars.iv.i370.us.ph, %.lr.ph.i369.us.preheader ], [ %indvars.iv.next.i371.us.prol, %.lr.ph.i369.us.prol ]
  %i.zi = icmp eq i64 %i.ap, %.neg
  br i1 %i.zi, label %zend_bitset_union_with_intersection.exit.loopexit.us, label %.lr.ph.i369.us

.lr.ph.i369.us:                                   ; preds = %.lr.ph.i369.us.prol.loopexit, %.lr.ph.i369.us
  %indvars.iv.i370.us = phi i64 [ %indvars.iv.next.i371.us.1, %.lr.ph.i369.us ], [ %indvars.iv.i370.us.unr, %.lr.ph.i369.us.prol.loopexit ] ; 5 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i370.us ; 2 uses
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !86
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv.i370.us
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !86
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %indvars.iv.i370.us
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !86
  %i.zp = and i64 %i.zo, %i.zm
  %i.zq = or i64 %i.zp, %i.zk
  store i64 %i.zq, ptr %i.zj, align 8, !tbaa !86
  %indvars.iv.next.i371.us = add nuw nsw i64 %indvars.iv.i370.us, 1 ; 3 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i371.us ; 2 uses
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !86
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv.next.i371.us
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !86
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %indvars.iv.next.i371.us
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !86
  %i.zx = and i64 %i.zw, %i.zu
  %i.zy = or i64 %i.zx, %i.zs
  store i64 %i.zy, ptr %i.zr, align 8, !tbaa !86
  %indvars.iv.next.i371.us.1 = add nuw nsw i64 %indvars.iv.i370.us, 2 ; 2 uses
  %exitcond.not.i372.us.1 = icmp eq i64 %indvars.iv.next.i371.us.1, %i.ap
  br i1 %exitcond.not.i372.us.1, label %zend_bitset_union_with_intersection.exit.loopexit.us, label %.lr.ph.i369.us, !llvm.loop !141

zend_bitset_union_with_intersection.exit.loopexit.us: ; preds = %.lr.ph.i369.us.prol.loopexit, %.lr.ph.i369.us, %middle.block553
  %i.zz = sext i32 %.0320407.us to i64
  %i.aaa = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  %.0320.us = load i32, ptr %i.aab, align 4, !tbaa !18 ; 2 uses
  %.not339.us = icmp eq i32 %.0320.us, -1
  br i1 %.not339.us, label %.critedge.us419, label %bb.en, !llvm.loop !142

.critedge.us419:                                  ; preds = %bb.en, %zend_bitset_union_with_intersection.exit.loopexit.us, %.lr.ph410.split.us414
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i375.us.preheader, label %.lr.ph410.split.us414, !llvm.loop !143

.lr.ph.i375.us.preheader:                         ; preds = %.lr.ph.i362.us.prol.loopexit, %.lr.ph.i362.us, %.critedge.us419, %middle.block575
  br label %.lr.ph.i375.us

.lr.ph.i375.us:                                   ; preds = %.lr.ph.i375.us.preheader, %bb.eo
  %indvars.iv.i376.us = phi i64 [ %indvars.iv.next.i378.us, %bb.eo ], [ 0, %.lr.ph.i375.us.preheader ] ; 3 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i376.us
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !86
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i376.us
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !86
  %i.aag = xor i64 %i.aaf, -1
  %i.aah = and i64 %i.aad, %i.aag
  %.not.i377.us = icmp eq i64 %i.aah, 0
  br i1 %.not.i377.us, label %bb.eo, label %.lr.ph.i383.us.preheader

.lr.ph.i383.us.preheader:                         ; preds = %.lr.ph.i375.us
  br i1 %min.iters.check, label %.lr.ph.i383.us.preheader591, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i383.us.preheader
  %11 = add nuw nsw i64 %i.ap, %i.wk
  %12 = shl nuw nsw i64 %11, 3                    ; 2 uses
  %13 = getelementptr i8, ptr %i.bn, i64 %12
  %14 = getelementptr i8, ptr %i.bp, i64 %12
  %bound0 = icmp ult ptr %i.wl, %14
  %bound1 = icmp ult ptr %i.wm, %13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i383.us.preheader591, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %index ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %wide.load = load <2 x i64>, ptr %i.aai, align 8, !tbaa !86, !alias.scope !177
  %wide.load524 = load <2 x i64>, ptr %i.aaj, align 8, !tbaa !86, !alias.scope !177
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %index ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16 ; 2 uses
  %wide.load525 = load <2 x i64>, ptr %i.aak, align 8, !tbaa !86, !alias.scope !178, !noalias !177
  %wide.load526 = load <2 x i64>, ptr %i.aal, align 8, !tbaa !86, !alias.scope !178, !noalias !177
  %i.aam = or <2 x i64> %wide.load525, %wide.load
  %i.aan = or <2 x i64> %wide.load526, %wide.load524
  store <2 x i64> %i.aam, ptr %i.aak, align 8, !tbaa !86, !alias.scope !178, !noalias !177
  store <2 x i64> %i.aan, ptr %i.aal, align 8, !tbaa !86, !alias.scope !178, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aao = icmp eq i64 %index.next, %n.vec
  br i1 %i.aao, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %zend_bitset_union.exit387.us, label %.lr.ph.i383.us.preheader591

.lr.ph.i383.us.preheader591:                      ; preds = %vector.memcheck, %.lr.ph.i383.us.preheader, %middle.block
  %indvars.iv.i384.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i383.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod599.not, label %.lr.ph.i383.us.prol.loopexit, label %.lr.ph.i383.us.prol

.lr.ph.i383.us.prol:                              ; preds = %.lr.ph.i383.us.preheader591, %.lr.ph.i383.us.prol
  %indvars.iv.i384.us.prol = phi i64 [ %indvars.iv.next.i385.us.prol, %.lr.ph.i383.us.prol ], [ %indvars.iv.i384.us.ph, %.lr.ph.i383.us.preheader591 ] ; 3 uses
  %prol.iter600 = phi i64 [ %prol.iter600.next, %.lr.ph.i383.us.prol ], [ 0, %.lr.ph.i383.us.preheader591 ]
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i384.us.prol
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !86
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i384.us.prol ; 2 uses
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !86
  %i.aat = or i64 %i.aas, %i.aaq
  store i64 %i.aat, ptr %i.aar, align 8, !tbaa !86
  %indvars.iv.next.i385.us.prol = add nuw nsw i64 %indvars.iv.i384.us.prol, 1 ; 2 uses
  %prol.iter600.next = add i64 %prol.iter600, 1   ; 2 uses
  %prol.iter600.cmp.not = icmp eq i64 %prol.iter600.next, %xtraiter598
  br i1 %prol.iter600.cmp.not, label %.lr.ph.i383.us.prol.loopexit, label %.lr.ph.i383.us.prol, !llvm.loop !148

.lr.ph.i383.us.prol.loopexit:                     ; preds = %.lr.ph.i383.us.prol, %.lr.ph.i383.us.preheader591
  %indvars.iv.i384.us.unr = phi i64 [ %indvars.iv.i384.us.ph, %.lr.ph.i383.us.preheader591 ], [ %indvars.iv.next.i385.us.prol, %.lr.ph.i383.us.prol ]
  %i.aau = sub nsw i64 %indvars.iv.i384.us.ph, %i.ap
  %i.aav = icmp ugt i64 %i.aau, -4
  br i1 %i.aav, label %zend_bitset_union.exit387.us, label %.lr.ph.i383.us

bb.eo:                                            ; preds = %.lr.ph.i375.us
  %indvars.iv.next.i378.us = add nuw nsw i64 %indvars.iv.i376.us, 1 ; 2 uses
  %exitcond.not.i379.us = icmp eq i64 %indvars.iv.next.i378.us, %i.ap
  br i1 %exitcond.not.i379.us, label %zend_bitset_union.exit387.us, label %.lr.ph.i375.us, !llvm.loop !149

.lr.ph.i383.us:                                   ; preds = %.lr.ph.i383.us.prol.loopexit, %.lr.ph.i383.us
  %indvars.iv.i384.us = phi i64 [ %indvars.iv.next.i385.us.3, %.lr.ph.i383.us ], [ %indvars.iv.i384.us.unr, %.lr.ph.i383.us.prol.loopexit ] ; 6 uses
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i384.us
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !86
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i384.us ; 2 uses
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !86
  %i.aba = or i64 %i.aaz, %i.aax
  store i64 %i.aba, ptr %i.aay, align 8, !tbaa !86
  %indvars.iv.next.i385.us = add nuw nsw i64 %indvars.iv.i384.us, 1 ; 2 uses
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i385.us
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !86
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.next.i385.us ; 2 uses
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !86
  %i.abf = or i64 %i.abe, %i.abc
  store i64 %i.abf, ptr %i.abd, align 8, !tbaa !86
  %indvars.iv.next.i385.us.1 = add nuw nsw i64 %indvars.iv.i384.us, 2 ; 2 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i385.us.1
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !86
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.next.i385.us.1 ; 2 uses
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !86
  %i.abk = or i64 %i.abj, %i.abh
  store i64 %i.abk, ptr %i.abi, align 8, !tbaa !86
  %indvars.iv.next.i385.us.2 = add nuw nsw i64 %indvars.iv.i384.us, 3 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.next.i385.us.2
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !86
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.next.i385.us.2 ; 2 uses
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !86
  %i.abp = or i64 %i.abo, %i.abm
  store i64 %i.abp, ptr %i.abn, align 8, !tbaa !86
  %indvars.iv.next.i385.us.3 = add nuw nsw i64 %indvars.iv.i384.us, 4 ; 2 uses
  %exitcond.not.i386.us.3 = icmp eq i64 %indvars.iv.next.i385.us.3, %i.ap
  br i1 %exitcond.not.i386.us.3, label %zend_bitset_union.exit387.us, label %.lr.ph.i383.us, !llvm.loop !150

zend_bitset_union.exit387.us:                     ; preds = %bb.eo, %.lr.ph.i383.us.prol.loopexit, %.lr.ph.i383.us, %middle.block, %.lr.ph410.us, %bb.em, %bb.ek, %.lr.ph413.us
  %.2.us = phi i32 [ %.0315412.us, %.lr.ph413.us ], [ %.0315412.us, %.lr.ph410.us ], [ %.0315412.us, %bb.ek ], [ %.0315412.us, %bb.em ], [ 1, %middle.block ], [ 1, %.lr.ph.i383.us.prol.loopexit ], [ 1, %.lr.ph.i383.us ], [ %.0315412.us, %bb.eo ] ; 2 uses
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %._crit_edge.us, label %.lr.ph413.us.backedge

.lr.ph413.us.backedge:                            ; preds = %zend_bitset_union.exit387.us, %._crit_edge.us
  %indvars.iv439.be = phi i64 [ %indvars.iv.next440, %zend_bitset_union.exit387.us ], [ 0, %._crit_edge.us ]
  %.0315412.us.be = phi i32 [ %.2.us, %zend_bitset_union.exit387.us ], [ 0, %._crit_edge.us ]
  br label %.lr.ph413.us, !llvm.loop !151

._crit_edge.us:                                   ; preds = %zend_bitset_union.exit387.us
  %.not331.us = icmp eq i32 %.2.us, 0
  br i1 %.not331.us, label %.split.us, label %.lr.ph413.us.backedge

.split.us:                                        ; preds = %._crit_edge.us, %place_essa_pis.exit
  %i.abq = load i32, ptr %i.f, align 4, !tbaa !55
  %i.abr = load i32, ptr %i.h, align 8, !tbaa !56
  %i.abs = add i32 %i.abr, %i.abq                 ; 2 uses
  %i.abt = zext i32 %i.abs to i64
  %i.abu = shl nuw nsw i64 %i.abt, 2              ; 2 uses
  %i.abv = icmp ugt i32 %i.abs, 8192              ; 2 uses
  br i1 %i.abv, label %bb.ep, label %.thread, !prof !65

bb.ep:                                            ; preds = %.split.us
  %i.abw = call noalias ptr @_emalloc(i64 noundef %i.abu) #17 ; 2 uses
  %.not332 = icmp eq ptr %i.abw, null
  br i1 %.not332, label %bb.eq, label %.preheader

.thread:                                          ; preds = %.split.us
  %i.abx = alloca i8, i64 %i.abu, align 16
  br label %.preheader

.preheader:                                       ; preds = %.thread, %bb.ep
  %i.aby = phi ptr [ %i.abx, %.thread ], [ %i.abw, %bb.ep ] ; 5 uses
  br i1 %i.wc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count450 = zext nneg i32 %i.e to i64
  br label %bb.er

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.ax, label %.sink.split, label %bb.fm, !prof !65

bb.er:                                            ; preds = %.lr.ph, %zend_bitset_empty.exit.thread
  %indvars.iv447 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next448, %zend_bitset_empty.exit.thread ] ; 5 uses
  %i.abz = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv447 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !78
  %i.acc = icmp sgt i32 %i.acb, -1
  br i1 %i.acc, label %zend_bitset_empty.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.acd = mul i64 %indvars.iv447, %i.ap
  %i.ace = and i64 %i.acd, 4294967295
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ace ; 2 uses
  br i1 %.not.i360, label %zend_bitset_empty.exit.thread, label %.lr.ph.i390

bb.et:                                            ; preds = %.lr.ph.i390
  %indvars.iv.next.i394 = add nuw nsw i64 %indvars.iv.i391, 1 ; 2 uses
  %exitcond.not.i395 = icmp eq i64 %indvars.iv.next.i394, %i.ap
  br i1 %exitcond.not.i395, label %zend_bitset_empty.exit.thread, label %.lr.ph.i390, !llvm.loop !152

.lr.ph.i390:                                      ; preds = %bb.es, %bb.et
  %indvars.iv.i391 = phi i64 [ %indvars.iv.next.i394, %bb.et ], [ 0, %bb.es ] ; 2 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv.i391
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !86
  %.not.i392 = icmp eq i64 %i.ach, 0
  br i1 %.not.i392, label %bb.et, label %zend_bitset_empty.exit.preheader

zend_bitset_empty.exit.preheader:                 ; preds = %.lr.ph.i390
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abz, i64 24 ; 2 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv447
  br label %bb.eu

bb.eu:                                            ; preds = %zend_bitset_empty.exit.preheader, %zend_bitset_empty.exit
  %indvars.iv444 = phi i64 [ %i.ap, %zend_bitset_empty.exit.preheader ], [ %i.ack, %zend_bitset_empty.exit ] ; 2 uses
  %i.ack = add nsw i64 %indvars.iv444, -1         ; 3 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.ack
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !86 ; 2 uses
  %.not335 = icmp eq i64 %i.acm, 0
  br i1 %.not335, label %zend_bitset_empty.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.acn = trunc nuw nsw i64 %indvars.iv444 to i32
  %i.aco = shl i32 %i.acn, 6
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.fe
  %.1321423.in = phi i32 [ %i.aco, %bb.ev ], [ %.1321423, %bb.fe ]
  %.0313422 = phi i64 [ %i.acm, %bb.ev ], [ %i.aeq, %bb.fe ] ; 2 uses
  %.1321423 = add i32 %.1321423.in, -1            ; 2 uses
  %i.acp = icmp slt i64 %.0313422, 0
  br i1 %i.acp, label %bb.ex, label %bb.fe

bb.ex:                                            ; preds = %bb.ew
  %i.acq = load i32, ptr %i.aci, align 8, !tbaa !93
  %i.acr = sext i32 %i.acq to i64                 ; 2 uses
  %i.acs = shl nsw i64 %i.acr, 2
  %i.act = add nsw i64 %i.acs, 4
  %i.acu = and i64 %i.act, -8
  %i.acv = shl nsw i64 %i.acr, 3
  %i.acw = add nsw i64 %i.acv, 104
  %i.acx = add nsw i64 %i.acw, %i.acu             ; 2 uses
  %i.acy = call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.acx, i64 1) #15, !srcloc !57 ; 2 uses
  %i.acz = extractvalue { i64, i64 } %i.acy, 0    ; 2 uses
  %i.ada = extractvalue { i64, i64 } %i.acy, 1
  %.not.i343.not = icmp eq i64 %i.ada, 0
  br i1 %.not.i343.not, label %zend_arena_calloc.exit341, label %bb.ey, !prof !58

bb.ey:                                            ; preds = %bb.ex
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.1, i64 noundef %i.acx, i64 noundef 1) #16
  unreachable

end_hunk_1
