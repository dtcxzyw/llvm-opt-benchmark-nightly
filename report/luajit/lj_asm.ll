Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@asm_intarith:bb.a
  br i1 %i.jf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %asm_fuseloadm.exit112
  %i.jg = trunc nsw i32 %.0114 to i8
  %i.jh = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -1 ; 2 uses
  store ptr %i.ji, ptr %i.h, align 8, !tbaa !52
  store i8 %i.jg, ptr %i.ji, align 1, !tbaa !25
  br label %bb.bh

bb.bg:                                            ; preds = %asm_fuseloadm.exit112
  %i.jj = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -4 ; 2 uses
  store i32 %.0114, ptr %i.jk, align 4, !tbaa !26
  store ptr %i.jk, ptr %i.h, align 8, !tbaa !52
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0 = phi i32 [ 1795162366, %bb.bf ], [ 1761607934, %bb.bg ]
  %i.jl = load i8, ptr %i.et, align 4, !tbaa !25
  %i.jm = and i8 %i.jl, 31
  %i.jn = zext nneg i8 %i.jm to i32
  %i.jo = shl nuw i32 1, %i.jn
  %i.jp = and i32 %i.jo, 6315993
  %.not90 = icmp eq i32 %i.jp, 0
  %i.jq = select i1 %.not90, i32 0, i32 524800
  %i.jr = or disjoint i32 %i.jq, %.1.i
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef %.0, i32 noundef %i.jr, i32 noundef %.0.i108)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.as, %emit_gri.exit, %bb.az
  tail call fastcc void @ra_left(ptr noundef %0, i32 noundef %.1.i, i32 noundef %.1)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_bitshift(ptr nofree noundef nonnull %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 8) %2, i32 noundef range(i32 -143007036, 1) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !25   ; 3 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = zext i16 %i.b to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = icmp sgt i16 %i.b, -1
  br i1 %i.h, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !25    ; 3 uses
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %.not.i = icmp sgt i8 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !83   ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw i32 1, %i.k                      ; 2 uses
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %i.l, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !71
  %i.r = or i32 %i.q, %i.n
  store i32 %i.r, ptr %i.p, align 4, !tbaa !71
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i8 %i.j, -3
  br i1 %i.s, label %bb.e, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.d
  %.pre193 = and i32 %i.m, 49135
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.k, 127                        ; 2 uses
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = and i32 %i.m, 49135                      ; 2 uses
  %i.w = and i32 %i.v, %i.u
  %.not22.i = icmp eq i32 %i.w, 0
  br i1 %.not22.i, label %._crit_edge.i, label %bb.k

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre193, %.._crit_edge.i_crit_edge ], [ %i.v, %bb.e ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.z = load <4 x i32>, ptr %0, align 8, !tbaa !26
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.ab = load <4 x i32>, ptr %i.x, align 4, !tbaa !26
  %i.ac = load <4 x i32>, ptr %i.y, align 4, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = shufflevector <4 x i32> %i.ac, <4 x i32> %i.aa, <12 x i32> <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <12 x i32> %i.ah, <12 x i32> %i.ai, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.ak = tail call i32 @llvm.vector.reduce.umin.v12i32(<12 x i32> %i.aj)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ae)
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.ag)
  %i.an = and i32 %i.am, 65535                    ; 5 uses
  %i.ao = icmp samesign ult i32 %i.an, 32768
  br i1 %i.ao, label %ra_evict.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !82 ; 2 uses
  %i.ar = and i32 %i.aq, 49135                    ; 2 uses
  %.not200.i = icmp eq i32 %i.ar, 0
  br i1 %.not200.i, label %ra_evict.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = zext nneg i32 %i.an to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = load i8, ptr %i.au, align 2, !tbaa !25
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %i.aq
  %.not201.i = icmp eq i32 %i.ay, 0
  br i1 %.not201.i, label %bb.i, label %ra_evict.exit

bb.i:                                             ; preds = %bb.h
  %i.az = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ar, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26
  %i.bd = and i32 %i.bc, 65535
  br label %ra_evict.exit

ra_evict.exit:                                    ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.1134.i = phi i32 [ %i.an, %bb.f ], [ %i.an, %bb.g ], [ %i.an, %bb.h ], [ %i.bd, %bb.i ]
  %i.be = tail call fastcc range(i32 0, 256) i32 @ra_restore(ptr noundef nonnull %0, i32 noundef %.1134.i)
  br label %ra_scratch.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bf = tail call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.pre-phi)
  %i.bg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bf, i1 true)
  %i.bh = xor i32 %i.bg, 7
  br label %ra_scratch.exit.i

ra_scratch.exit.i:                                ; preds = %bb.j, %ra_evict.exit
  %.0.i.i.i = phi i32 [ %i.bh, %bb.j ], [ %i.be, %ra_evict.exit ] ; 2 uses
  %i.bi = shl nuw i32 1, %.0.i.i.i
  br label %bb.k

bb.k:                                             ; preds = %ra_scratch.exit.i, %bb.e
  %.sink30.i = phi i32 [ %i.bi, %ra_scratch.exit.i ], [ %i.u, %bb.e ]
  %.0.i = phi i32 [ %.0.i.i.i, %ra_scratch.exit.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !71
  %i.bl = or i32 %i.bk, %.sink30.i
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !71
  %i.bm = trunc nuw i32 %.0.i to i8
  store i8 %i.bm, ptr %i.i, align 2, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.1.i = phi i32 [ %.0.i, %bb.k ], [ %i.k, %bb.c ] ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25  ; 2 uses
  %.not23.i = icmp eq i8 %i.bo, 0
  br i1 %.not23.i, label %ra_dest.exit, label %bb.m, !prof !39

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr i8, ptr %1, i64 4
  %.val.i = load i8, ptr %i.bp, align 4, !tbaa !25
  tail call fastcc void @ra_save(ptr noundef nonnull %0, i8 %.val.i, i8 %i.bo, i32 noundef %.1.i)
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.l, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25
  %i.bs = icmp eq i8 %i.br, 23
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ra_dest.exit
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !25
  br label %bb.p

bb.o:                                             ; preds = %ra_dest.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !25
  %i.bw = trunc i64 %i.bv to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bx = phi i32 [ %i.bt, %bb.n ], [ %i.bw, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !25
  %i.ca = and i8 %i.bz, 31
  %i.cb = zext nneg i8 %i.ca to i32
  %4 = lshr i32 6315993, %i.cb
  %i.cc = and i32 %4, 1                           ; 2 uses
  %5 = shl nuw nsw i32 %i.cc, 5
  %6 = or disjoint i32 %5, 31
  %i.cd = and i32 %6, %i.bx                       ; 5 uses
  %i.ce = icmp eq i32 %3, 0
  %i.cf = icmp ne i32 %i.cd, 0
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47
  %i.ci = and i32 %i.ch, 64
  %.not101 = icmp eq i32 %i.ci, 0
  br i1 %.not101, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load i16, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %.not.i108 = icmp eq i32 %i.cc, 0
  br i1 %.not.i108, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.cm = zext i16 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !25
  %i.cq = and i8 %i.cp, 31
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = and i32 %i.cs, 6315993
  %.not9.i = icmp eq i32 %i.ct, 0
  br i1 %.not9.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !25  ; 2 uses
  %i.cw = zext nneg i8 %i.cv to i32
  %.not.i.i = icmp sgt i8 %i.cv, -1
  br i1 %.not.i.i, label %ra_alloc1.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %i.ck, i32 noundef 49135)
  br label %ra_alloc1.exit.i

ra_alloc1.exit.i:                                 ; preds = %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.cx, %bb.u ], [ %i.cw, %bb.t ] ; 2 uses
  %i.cy = shl nuw i32 1, %.0.i.i
  %i.cz = xor i32 %i.cy, -1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !82
  %i.dc = and i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !82
  br label %asm_fuseloadm.exit

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.dd = tail call fastcc i32 @asm_fuseload(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %i.ck, i32 noundef 49135)
  br label %asm_fuseloadm.exit

asm_fuseloadm.exit:                               ; preds = %ra_alloc1.exit.i, %bb.v
  %.0.i109 = phi i32 [ %i.dd, %bb.v ], [ %.0.i.i, %ra_alloc1.exit.i ] ; 2 uses
  %.not102 = icmp eq i32 %.0.i109, %.1.i
  br i1 %.not102, label %.critedge, label %bb.w

bb.w:                                             ; preds = %asm_fuseloadm.exit
  %i.de = icmp eq i32 %2, 0
  %i.df = sub nsw i32 0, %i.cd
  %i.dg = select i1 %i.de, i32 %i.df, i32 %i.cd
  %i.dh = trunc nsw i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !52
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -1 ; 2 uses
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !52
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !25
  %i.dl = load i8, ptr %i.by, align 4, !tbaa !25
  %i.dm = and i8 %i.dl, 31
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = and i32 %i.do, 6315993
  %.not103 = icmp eq i32 %i.dp, 0
  %i.dq = select i1 %.not103, i32 -260316220, i32 -251927612
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef %i.dq, i32 noundef %.1.i, i32 noundef %.0.i109)
  br label %.critedge107

.critedge:                                        ; preds = %asm_fuseloadm.exit, %bb.q, %bb.p
  switch i32 %i.cd, label %bb.z [
    i32 0, label %bb.bo
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %.critedge
  %i.dr = load i8, ptr %i.by, align 4, !tbaa !25
  %i.ds = and i8 %i.dr, 31
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw i32 1, %i.dt
  %i.dv = and i32 %i.du, 6315993
  %.not104 = icmp eq i32 %i.dv, 0
  %i.dw = select i1 %.not104, i32 0, i32 524800   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !52 ; 3 uses
  %i.dz = shl nuw nsw i32 %2, 3
  %i.ea = and i32 %.1.i, 7
  %i.eb = or disjoint i32 %i.ea, %i.dz
  %i.ec = trunc nuw nsw i32 %i.eb to i8
  %i.ed = or disjoint i8 %i.ec, -64
  %i.ee = getelementptr inbounds i8, ptr %i.dy, i64 -1
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !25
  %i.ef = getelementptr i8, ptr %i.dy, i64 -2     ; 2 uses
  store i8 -47, ptr %i.ef, align 1, !tbaa !25
  %i.eg = lshr exact i32 %i.dw, 1
  %i.eh = and i32 %i.eg, 256
  %i.ei = lshr i32 %.1.i, 3
  %i.ej = and i32 %i.ei, 1                        ; 2 uses
  %i.ek = or disjoint i32 %i.eh, %i.ej
  %.not.i.i110 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i110, label %emit_rr.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = lshr i32 %i.dw, 16
  %i.em = or disjoint i32 %i.el, %i.ej
  %i.en = trunc nuw nsw i32 %i.em to i8
  %i.eo = or disjoint i8 %i.en, 64
  %i.ep = getelementptr i8, ptr %i.dy, i64 -3     ; 2 uses
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !25
  br label %emit_rr.exit

emit_rr.exit:                                     ; preds = %bb.x, %bb.y
  %.046.i.i = phi ptr [ %i.ef, %bb.x ], [ %i.ep, %bb.y ]
  store ptr %.046.i.i, ptr %i.dx, align 8, !tbaa !52
  br label %bb.bo

bb.z:                                             ; preds = %.critedge
  %i.eq = trunc nuw nsw i32 %i.cd to i8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !52
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -1 ; 2 uses
  store ptr %i.et, ptr %i.er, align 8, !tbaa !52
  store i8 %i.eq, ptr %i.et, align 1, !tbaa !25
  %i.eu = load i8, ptr %i.by, align 4, !tbaa !25
  %i.ev = and i8 %i.eu, 31
  %i.ew = zext nneg i8 %i.ev to i32
  %i.ex = shl nuw i32 1, %i.ew
  %i.ey = and i32 %i.ex, 6315993
  %.not105 = icmp eq i32 %i.ey, 0
  %i.ez = select i1 %.not105, i32 0, i32 524800   ; 2 uses
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !52 ; 3 uses
  %i.fb = shl nuw nsw i32 %2, 3
  %i.fc = and i32 %.1.i, 7
  %i.fd = or disjoint i32 %i.fc, %i.fb
  %i.fe = trunc nuw nsw i32 %i.fd to i8
  %i.ff = or disjoint i8 %i.fe, -64
  %i.fg = getelementptr inbounds i8, ptr %i.fa, i64 -1
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !25
  %i.fh = getelementptr i8, ptr %i.fa, i64 -2     ; 2 uses
  store i8 -63, ptr %i.fh, align 1, !tbaa !25
  %i.fi = lshr exact i32 %i.ez, 1
  %i.fj = and i32 %i.fi, 256
  %i.fk = lshr i32 %.1.i, 3
  %i.fl = and i32 %i.fk, 1                        ; 2 uses
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %.not.i.i112 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i112, label %emit_rr.exit115, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = lshr i32 %i.ez, 16
  %i.fo = or disjoint i32 %i.fn, %i.fl
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  %i.fq = or disjoint i8 %i.fp, 64
  %i.fr = getelementptr i8, ptr %i.fa, i64 -3     ; 2 uses
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !25
  br label %emit_rr.exit115

emit_rr.exit115:                                  ; preds = %bb.z, %bb.aa
  %.046.i.i114 = phi ptr [ %i.fh, %bb.z ], [ %i.fr, %bb.aa ]
  store ptr %.046.i.i114, ptr %i.er, align 8, !tbaa !52
  br label %bb.bo

bb.ab:                                            ; preds = %bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !47
  %i.fu = and i32 %i.ft, 64
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = icmp ne i32 %3, 0
  %or.cond4 = and i1 %i.fw, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !25  ; 4 uses
  %i.fz = zext i8 %i.fy to i32                    ; 6 uses
  %.not.i116 = icmp sgt i8 %i.fy, -1              ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !83 ; 6 uses
  br i1 %or.cond4, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not.i116, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gc = shl nuw i32 1, %i.fz                    ; 2 uses
  %i.gd = or i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.ga, align 8, !tbaa !83
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !71
  %i.gg = or i32 %i.gf, %i.gc
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !71
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.gh = icmp samesign ult i8 %i.fy, -3
  br i1 %i.gh, label %bb.af, label %.._crit_edge.i117_crit_edge

.._crit_edge.i117_crit_edge:                      ; preds = %bb.ae
  %.pre194 = and i32 %i.gb, 49135
  br label %._crit_edge.i117

bb.af:                                            ; preds = %bb.ae
  %i.gi = and i32 %i.fz, 127                      ; 2 uses
  %i.gj = shl nuw i32 1, %i.gi                    ; 2 uses
  %i.gk = and i32 %i.gb, 49135                    ; 2 uses
  %i.gl = and i32 %i.gk, %i.gj
  %.not22.i126 = icmp eq i32 %i.gl, 0
  br i1 %.not22.i126, label %._crit_edge.i117, label %bb.ai
end_hunk_0
