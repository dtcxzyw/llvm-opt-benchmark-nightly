inline.NumInlined: 65
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@add_pi:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i32 %i.t, %4
  %..i44 = select i1 %i.ac, i32 %i.v, i32 %i.t    ; 2 uses
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !234
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = sext i32 %..i44 to i64
  %i.ak = sext i32 %i.ah to i64
  %wide.trip.count.i.i = zext nneg i32 %i.aa to i64
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.af, i64 %i.ak
  %i.al = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %gep.i.i, align 4, !tbaa !16 ; 4 uses
  %i.ao = icmp eq i32 %i.an, %3
  br i1 %i.ao, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !71
  %i.aq = mul i32 %i.an, %i.d
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !86
  %i.av = lshr i64 %i.au, %i.l
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.am, align 8, !tbaa !232 ; 2 uses
  %i.ay = sext i32 %i.an to i64                   ; 2 uses
  %i.az = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !232
  %i.bc = icmp sgt i32 %i.bb, %i.ax
  br i1 %i.bc, label %.lr.ph.i.i.i, label %dominates.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %i.bd = phi i64 [ %i.bh, %.lr.ph.i.i.i ], [ %i.ay, %bb.g ]
  %i.be = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !136 ; 2 uses
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !232
  %i.bl = icmp sgt i32 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i, label %dominates.exit.i.i, !llvm.loop !235

dominates.exit.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi i32 [ %i.an, %bb.g ], [ %i.bg, %.lr.ph.i.i.i ]
  %i.bm = icmp eq i32 %..i44, %.0.lcssa.i.i.i
  br i1 %i.bm, label %needs_pi.exit, label %bb.h

bb.h:                                             ; preds = %dominates.exit.i.i, %bb.f, %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !236

.loopexit:                                        ; preds = %bb.h, %bb.c, %bb.d
  %i.bn = sext i32 %i.aa to i64                   ; 2 uses
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = add nsw i64 %i.bo, 4
  %i.bq = and i64 %i.bp, -8
  %i.br = shl nsw i64 %i.bn, 3
  %i.bs = add nsw i64 %i.br, 104
  %i.bt = add nsw i64 %i.bs, %i.bq                ; 2 uses
  %i.bu = tail call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.bt, i64 1) #15, !srcloc !55 ; 2 uses
  %i.bv = extractvalue { i64, i64 } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bu, 1
  %.not.i.not = icmp eq i64 %i.bw, 0
  br i1 %.not.i.not, label %zend_arena_calloc.exit, label %bb.i, !prof !56

bb.i:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.1, i64 noundef %i.bt, i64 noundef 1) #16
  unreachable

zend_arena_calloc.exit:                           ; preds = %.loopexit
  %i.bx = load ptr, ptr %0, align 8, !tbaa !57    ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59 ; 3 uses
  %i.bz = add i64 %i.bv, 7
  %i.ca = and i64 %i.bz, -8                       ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.by to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %.not.i42 = icmp ugt i64 %i.ca, %i.cf
  br i1 %.not.i42, label %bb.k, label %bb.j, !prof !63

bb.j:                                             ; preds = %zend_arena_calloc.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca
  store ptr %i.cg, ptr %i.bx, align 8, !tbaa !59
  br label %zend_arena_alloc.exit

bb.k:                                             ; preds = %zend_arena_calloc.exit
  %i.ch = add i64 %i.ca, 24
  %i.ci = ptrtoint ptr %i.bx to i64
  %i.cj = sub i64 %i.cd, %i.ci
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.cj) ; 2 uses
  %i.ck = tail call noalias ptr @_emalloc(i64 noundef %..i) #17 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ca
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %..i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !64
  store ptr %i.ck, ptr %0, align 8, !tbaa !57
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.j, %bb.k
  %.0.i = phi ptr [ %i.by, %bb.j ], [ %i.cl, %bb.k ] ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i, i8 0, i64 %i.bv, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !140
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.ct = getelementptr inbounds [64 x i8], ptr %i.cs, i64 %i.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !102
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cq, i8 -1, i64 %i.cx, i1 false)
  %i.cy = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.cz = getelementptr inbounds [64 x i8], ptr %i.cy, i64 %i.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !102 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = add nsw i64 %i.dd, 4
  %i.df = and i64 %i.de, -8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !141
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %3, ptr %i.di, align 8, !tbaa !142
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 %5, ptr %i.dj, align 8, !tbaa !143
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 -1, ptr %i.dk, align 4, !tbaa !144
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !65
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.x ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !158
  store ptr %i.do, ptr %.0.i, align 8, !tbaa !147
  store ptr %.0.i, ptr %i.dn, align 8, !tbaa !158
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71
  %i.dr = load i32, ptr %i.c, align 4, !tbaa !69
  %i.ds = mul i32 %i.dr, %4
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = and i32 %5, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl nuw i64 1, %i.dw                    ; 2 uses
  %i.dy = lshr i32 %5, 6
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dz ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !86
  %i.ec = or i64 %i.eb, %i.dx
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !86
  %i.ed = icmp sgt i32 %i.db, 1
  br i1 %i.ed, label %bb.l, label %needs_pi.exit

bb.l:                                             ; preds = %zend_arena_alloc.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !72
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dt
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.dz ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !86
  %i.ej = or i64 %i.ei, %i.dx
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !86
  br label %needs_pi.exit

needs_pi.exit:                                    ; preds = %dominates.exit.i.i, %bb.b, %bb.a, %zend_arena_alloc.exit, %bb.l
  %.0 = phi ptr [ %.0.i, %zend_arena_alloc.exit ], [ %.0.i, %bb.l ], [ null, %bb.a ], [ null, %bb.b ], [ null, %dominates.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -5, 268435451) i32 @find_adjusted_tmp_var(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not65 = icmp eq ptr %1, %i.b
  br i1 %.not65, label %.thread63, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.066 = phi ptr [ %i.c, %bb.c ], [ %1, %bb.a ]  ; 17 uses
  %i.c = getelementptr inbounds i8, ptr %.066, i64 -32 ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.066, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %.not56 = icmp eq i8 %i.e, 2
  br i1 %.not56, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds i8, ptr %.066, i64 -16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %.not57 = icmp eq i32 %i.g, %2
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.not = icmp eq ptr %i.c, %i.b
  br i1 %.not, label %.thread63, label %.lr.ph, !llvm.loop !237

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %.066, i64 -4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !22
  switch i8 %i.i, label %.thread63 [
    i8 37, label %bb.e
    i8 36, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %.066, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = icmp eq i8 %i.k, 8
  br i1 %i.l, label %bb.ab, label %.thread63

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %.066, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = icmp eq i8 %i.n, 8
  br i1 %i.o, label %bb.ab, label %.thread63

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.066, i64 -3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12    ; 2 uses
  %i.r = icmp eq i8 %i.q, 8
  %i.s = getelementptr inbounds i8, ptr %.066, i64 -2
  %i.t = load i8, ptr %i.s, align 2, !tbaa !19    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.i, label %.thread63

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = and i32 %i.w, 33554432
  %.not61 = icmp eq i32 %i.x, 0
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %.066, i64 -20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.c, i64 %i.aa
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ae = getelementptr inbounds i8, ptr %.066, i64 -20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ag
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ab, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !15
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %bb.m, label %.thread63

bb.m:                                             ; preds = %bb.l
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  %.not62 = icmp eq i64 %i.am, -9223372036854775808
  br i1 %.not62, label %.thread63, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = sub nsw i64 0, %i.am
  br label %bb.ab

bb.o:                                             ; preds = %bb.g
  %i.ao = icmp eq i8 %i.t, 8
  %i.ap = icmp eq i8 %i.q, 1
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.p, label %.thread63

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27
  %i.as = and i32 %i.ar, 33554432
  %.not59 = icmp eq i32 %i.as, 0
  br i1 %.not59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds i8, ptr %.066, i64 -24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !15
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.c, i64 %i.av
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = getelementptr inbounds i8, ptr %.066, i64 -24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !15
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bb
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = phi ptr [ %i.aw, %bb.q ], [ %i.bc, %bb.r ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !15
  %i.bg = icmp eq i8 %i.bf, 4
  br i1 %i.bg, label %bb.t, label %.thread63

bb.t:                                             ; preds = %bb.s
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !15 ; 2 uses
  %.not60 = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %.not60, label %.thread63, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = sub nsw i64 0, %i.bh
  br label %bb.ab

bb.v:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds i8, ptr %.066, i64 -3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12
  %i.bl = icmp eq i8 %i.bk, 8
  br i1 %i.bl, label %bb.w, label %.thread63

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds i8, ptr %.066, i64 -2
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !19
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %bb.x, label %.thread63

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %i.br = and i32 %i.bq, 33554432
  %.not58 = icmp eq i32 %i.br, 0
  br i1 %.not58, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds i8, ptr %.066, i64 -20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !15
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.c, i64 %i.bu
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.by = getelementptr inbounds i8, ptr %.066, i64 -20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !15
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.ca
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cc = phi ptr [ %i.bv, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !15
  %i.cf = icmp eq i8 %i.ce, 4
  br i1 %i.cf, label %4, label %.thread63

4:                                                ; preds = %bb.aa
  %5 = load i64, ptr %i.cc, align 8, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.f, %bb.e, %bb.n, %bb.u, %4
  %.sink = phi i64 [ %5, %4 ], [ %i.bi, %bb.u ], [ %i.an, %bb.n ], [ -1, %bb.e ], [ 1, %bb.f ]
  %.sink77 = phi i64 [ -24, %4 ], [ -20, %bb.u ], [ -24, %bb.n ], [ -24, %bb.e ], [ -24, %bb.f ]
  store i64 %.sink, ptr %3, align 8, !tbaa !86
  %i.cg = getelementptr inbounds i8, ptr %.066, i64 %.sink77
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15
  %i.ci = lshr i32 %i.ch, 4
  %i.cj = add nsw i32 %i.ci, -5
  br label %.thread63

.thread63:                                        ; preds = %bb.c, %bb.ab, %bb.a, %bb.h, %bb.f, %bb.aa, %bb.w, %bb.v, %bb.m, %bb.l, %bb.s, %bb.t, %bb.o, %bb.e, %bb.d
  %.052 = phi i32 [ -1, %bb.w ], [ -1, %bb.aa ], [ -1, %bb.f ], [ -1, %bb.a ], [ %i.cj, %bb.ab ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.o ], [ -1, %bb.h ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.v ], [ -1, %bb.c ]
  ret i32 %.052
}

declare ptr @zend_optimizer_get_class_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind memory(read) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !10, i64 29}
!13 = !{!"_zend_op", !14, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !9, i64 0}
!18 = !{!"_zend_ssa_op", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!19 = !{!13, !10, i64 30}
!20 = !{!18, !9, i64 4}
!21 = !{!13, !10, i64 31}
!22 = !{!13, !10, i64 28}
!23 = !{!18, !9, i64 8}
!24 = !{!18, !9, i64 16}
!25 = !{!18, !9, i64 12}
!26 = !{!13, !9, i64 20}
!27 = !{!28, !9, i64 4}
!28 = !{!"_zend_op_array", !10, i64 0, !10, i64 1, !9, i64 4, !29, i64 8, !30, i64 16, !31, i64 24, !9, i64 32, !9, i64 36, !32, i64 40, !33, i64 48, !34, i64 56, !29, i64 64, !9, i64 72, !35, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !36, i64 104, !33, i64 112, !33, i64 120, !37, i64 128, !38, i64 136, !9, i64 144, !9, i64 148, !39, i64 152, !40, i64 160, !29, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !41, i64 192, !42, i64 200, !10, i64 208}
!29 = !{!"p1 _ZTS12_zend_string", !14, i64 0}
!30 = !{!"p1 _ZTS17_zend_class_entry", !14, i64 0}
!31 = !{!"p1 _ZTS14_zend_function", !14, i64 0}
!32 = !{!"p1 _ZTS14_zend_arg_info", !14, i64 0}
!33 = !{!"p1 _ZTS11_zend_array", !14, i64 0}
!34 = !{!"any p2 pointer", !14, i64 0}
!35 = !{!"p1 _ZTS19_zend_property_info", !14, i64 0}
!36 = !{!"p1 _ZTS8_zend_op", !14, i64 0}
!37 = !{!"p2 _ZTS12_zend_string", !34, i64 0}
!38 = !{!"p1 int", !14, i64 0}
!39 = !{!"p1 _ZTS16_zend_live_range", !14, i64 0}
!40 = !{!"p1 _ZTS23_zend_try_catch_element", !14, i64 0}
!41 = !{!"p1 _ZTS12_zval_struct", !14, i64 0}
!42 = !{!"p2 _ZTS14_zend_op_array", !34, i64 0}
!43 = !{!18, !9, i64 20}
!44 = !{!45, !47, i64 8}
!45 = !{!"_zend_ssa", !46, i64 0, !9, i64 40, !9, i64 44, !48, i64 48, !49, i64 56, !50, i64 64, !51, i64 72}
!46 = !{!"_zend_cfg", !9, i64 0, !9, i64 4, !47, i64 8, !38, i64 16, !38, i64 24, !9, i64 32}
!47 = !{!"p1 _ZTS17_zend_basic_block", !14, i64 0}
!48 = !{!"p1 _ZTS15_zend_ssa_block", !14, i64 0}
!49 = !{!"p1 _ZTS12_zend_ssa_op", !14, i64 0}
!50 = !{!"p1 _ZTS13_zend_ssa_var", !14, i64 0}
!51 = !{!"p1 _ZTS18_zend_ssa_var_info", !14, i64 0}
!52 = !{!45, !9, i64 0}
!53 = !{!28, !9, i64 92}
!54 = !{!28, !9, i64 72}
!55 = !{i64 3051770, i64 3051791}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTS11_zend_arena", !14, i64 0}
!59 = !{!60, !61, i64 0}
!60 = !{!"_zend_arena", !61, i64 0, !61, i64 8, !58, i64 16}
!61 = !{!"p1 omnipotent char", !14, i64 0}
!62 = !{!60, !61, i64 8}
!63 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!64 = !{!60, !58, i64 16}
!65 = !{!45, !48, i64 48}
!66 = !{!67, !9, i64 0}
!67 = !{!"_zend_dfg", !9, i64 0, !9, i64 4, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40}
!68 = !{!"p1 long", !14, i64 0}
!69 = !{!67, !9, i64 4}
!70 = !{!67, !68, i64 8}
!71 = !{!67, !68, i64 16}
!72 = !{!67, !68, i64 24}
!73 = !{!67, !68, i64 32}
!74 = !{!67, !68, i64 40}
!75 = !{!28, !36, i64 104}
!76 = !{!77, !9, i64 12}
!77 = !{!"_zend_basic_block", !38, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 52}
!78 = !{!77, !9, i64 16}
!79 = !{!77, !9, i64 8}
!80 = !{!77, !38, i64 0}
!81 = !{!82, !84, i64 76}
!82 = !{!"_zend_ssa_phi", !83, i64 0, !9, i64 8, !10, i64 16, !9, i64 64, !9, i64 68, !9, i64 72, !84, i64 76, !85, i64 80, !83, i64 88, !38, i64 96}
!83 = !{!"p1 _ZTS13_zend_ssa_phi", !14, i64 0}
!84 = !{!"_Bool", !10, i64 0}
!85 = !{!"p2 _ZTS13_zend_ssa_phi", !34, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"long", !10, i64 0}
!88 = !{!28, !41, i64 192}
!89 = !{!90, !9, i64 24}
!90 = !{!"_zend_ssa_range_constraint", !91, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!91 = !{!"_zend_ssa_range", !87, i64 0, !87, i64 8, !84, i64 16, !84, i64 17}
!92 = !{!90, !9, i64 28}
!93 = !{!90, !9, i64 32}
!94 = !{!90, !9, i64 36}
!95 = !{!90, !87, i64 0}
!96 = !{!90, !87, i64 8}
!97 = !{!90, !84, i64 16}
!98 = !{!90, !84, i64 17}
!99 = !{!90, !9, i64 40}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!77, !9, i64 24}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !101, !109, !110}
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !{!"llvm.loop.unroll.runtime.disable"}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = distinct !{!113, !101, !109}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!118, !119}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !116}
!120 = !{!118}
!121 = !{!119}
!122 = distinct !{!122, !101, !109, !110}
!123 = distinct !{!123, !101, !109}
!124 = distinct !{!124, !101}
!125 = !{!126}
!126 = distinct !{!126, !127}
!127 = distinct !{!127, !"LVerDomain"}
!128 = !{!129}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !101, !109, !110}
!131 = distinct !{!131, !112}
!132 = distinct !{!132, !101}
!133 = distinct !{!133, !101, !109}
!134 = distinct !{!134, !101}
!135 = distinct !{!135, !101}
!136 = !{!77, !9, i64 32}
!137 = !{!45, !38, i64 16}
!138 = !{!77, !9, i64 28}
!139 = distinct !{!139, !101}
!140 = !{!82, !38, i64 96}
!141 = !{!82, !85, i64 80}
!142 = !{!82, !9, i64 8}
!143 = !{!82, !9, i64 64}
!144 = !{!82, !9, i64 68}
!145 = !{!83, !83, i64 0}
!146 = distinct !{!146, !101}
!147 = !{!82, !83, i64 0}
!148 = distinct !{!148, !101}
!149 = distinct !{!149, !101}
!150 = distinct !{!150, !101}
!151 = !{!28, !9, i64 96}
!152 = !{!45, !49, i64 56}
!153 = distinct !{!153, !101, !109, !110}
!154 = distinct !{!154, !101, !110, !109}
!155 = !{!45, !9, i64 40}
!156 = !{!38, !38, i64 0}
!157 = !{!77, !9, i64 48}
!158 = !{!159, !83, i64 0}
!159 = !{!"_zend_ssa_block", !83, i64 0}
!160 = distinct !{!160, !101}
!161 = distinct !{!161, !101}
!162 = !{!77, !9, i64 20}
!163 = !{i8 0, i8 2}
!164 = !{}
!165 = distinct !{!165, !101}
end_hunk_0
