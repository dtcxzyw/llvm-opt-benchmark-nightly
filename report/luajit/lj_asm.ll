Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ra_left:bb.a
  %i.at = and i8 %i.ap, 8
  %.not.i = icmp eq i8 %i.at, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.au = getelementptr inbounds i8, ptr %i.s, i64 -6 ; 2 uses
  store i8 65, ptr %i.au, align 2, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.0.i = phi ptr [ %i.au, %bb.n ], [ %i.as, %._crit_edge.i ]
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !52
  br label %emit_loadi.exit

bb.p:                                             ; preds = %bb.c, %bb.e, %bb.b
  %i.av = icmp samesign ult i8 %i.f, -3
  br i1 %i.av, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !62
  %i.ay = icmp ult i32 %2, %i.ax
  br i1 %i.ay, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = trunc nuw i32 %1 to i8
  %i.ba = or i8 %i.az, -128
  store i8 %i.ba, ptr %i.e, align 2, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bb = icmp samesign ult i32 %1, 16
  %i.bc = select i1 %i.bb, i32 49135, i32 -65536
  %i.bd = tail call fastcc i32 @ra_allocref(ptr noundef %0, i32 noundef %2, i32 noundef %i.bc)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  %.0 = phi i32 [ %i.bd, %bb.s ], [ %i.g, %bb.a ] ; 7 uses
  %i.be = shl nuw i32 1, %.0                      ; 2 uses
  %i.bf = xor i32 %i.be, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !82
  %i.bi = and i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !82
  %.not53 = icmp eq i32 %1, %.0
  br i1 %.not53, label %emit_loadi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !25  ; 2 uses
  %i.bl = and i8 %i.bk, 64
  %.not54 = icmp eq i8 %i.bl, 0
  br i1 %.not54, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bn = zext nneg i32 %1 to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !69
  %i.bq = zext i16 %i.bp to i32
  %i.br = icmp eq i32 %2, %i.bq
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !71
  %i.bu = or i32 %i.bt, %i.be
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !71
  tail call fastcc void @ra_rename(ptr noundef %0, i32 noundef %.0, i32 noundef %1)
  br label %emit_loadi.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bv = icmp samesign ult i32 %1, 16
  br i1 %i.bv, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bw = and i8 %i.bk, 31
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = and i32 %i.by, 6315993
  %.not.i55 = icmp eq i32 %i.bz, 0
  %i.ca = select i1 %.not.i55, i32 0, i32 524800  ; 2 uses
  %i.cb = or disjoint i32 %i.ca, %1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !52 ; 3 uses
  %i.ce = shl nuw nsw i32 %1, 3
  %i.cf = and i32 %.0, 7
  %i.cg = or disjoint i32 %i.cf, %i.ce
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %i.ci = or i8 %i.ch, -64
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 -1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !25
  %i.ck = getelementptr i8, ptr %i.cd, i64 -2     ; 2 uses
  store i8 -117, ptr %i.ck, align 1, !tbaa !25
  %i.cl = lshr i32 %i.cb, 1
  %i.cm = and i32 %i.cl, 260
  %i.cn = lshr i32 %.0, 3
  %i.co = and i32 %i.cn, 1
  %i.cp = or disjoint i32 %i.cm, %i.co            ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i56, label %emit_rr.exit.i57, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = lshr i32 %i.ca, 16
  %i.cr = or disjoint i32 %i.cp, %i.cq
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, 64
  %i.cu = getelementptr i8, ptr %i.cd, i64 -3     ; 2 uses
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !25
  br label %emit_rr.exit.i57

emit_rr.exit.i57:                                 ; preds = %bb.z, %bb.y
  %.046.i.i.i58 = phi ptr [ %i.ck, %bb.y ], [ %i.cu, %bb.z ]
  store ptr %.046.i.i.i58, ptr %i.cc, align 8, !tbaa !52
  br label %emit_loadi.exit

bb.aa:                                            ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52 ; 3 uses
  %i.cx = shl nuw nsw i32 %1, 3
  %i.cy = and i32 %.0, 7
  %i.cz = or disjoint i32 %i.cy, %i.cx
  %i.da = trunc i32 %i.cz to i8
  %i.db = or i8 %i.da, -64
  %i.dc = getelementptr inbounds i8, ptr %i.cw, i64 -1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !25
  %i.dd = getelementptr inbounds i8, ptr %i.cw, i64 -3 ; 2 uses
  store i16 10255, ptr %i.dd, align 2, !tbaa !69
  %i.de = lshr i32 %1, 1
  %i.df = and i32 %i.de, 4
  %i.dg = lshr i32 %.0, 3
  %i.dh = and i32 %i.dg, 1
  %i.di = or disjoint i32 %i.dh, %i.df            ; 2 uses
  %.not.i.i7.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i7.i, label %emit_rr.exit9.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = trunc nuw nsw i32 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 64
  %i.dl = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 2 uses
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !25
  br label %emit_rr.exit9.i

emit_rr.exit9.i:                                  ; preds = %bb.ab, %bb.aa
  %.046.i.i8.i = phi ptr [ %i.dd, %bb.aa ], [ %i.dl, %bb.ab ]
  store ptr %.046.i.i8.i, ptr %i.cv, align 8, !tbaa !52
  br label %emit_loadi.exit

emit_loadi.exit:                                  ; preds = %emit_rr.exit9.i, %emit_rr.exit.i57, %bb.o, %emit_rr.exit.i, %bb.t, %bb.w, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_setupresult(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25
  %i.c = icmp eq i8 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !25
  %i.f = and i8 %i.e, 31
  %i.g = icmp ne i8 %i.f, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !73
  %i.k = and i32 %i.j, 1024
  %.not = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not, i32 -61497, i32 4039
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !25    ; 2 uses
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw i32 1, %i.n
  %i.p = xor i32 %i.o, -1
  %.not3845 = icmp slt i8 %i.m, 0
  %i.q = select i1 %.not3845, i32 -61497, i32 %i.p
  %.1 = and i32 %i.q, %spec.select                ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.s = load i8, ptr %i.r, align 2, !tbaa !25    ; 2 uses
  %.not39 = icmp sgt i8 %i.s, -1
  br i1 %.not39, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = xor i32 %i.u, -1
  %i.w = and i32 %.1, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.w, %bb.e ], [ %.1, %bb.c ]
  tail call fastcc void @ra_evictset(ptr noundef %0, i32 noundef %.2)
  %i.x = load i8, ptr %i.l, align 2, !tbaa !25    ; 9 uses
  %.not40 = icmp sgt i8 %i.x, -1                  ; 3 uses
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %.not41 = icmp eq i8 %i.z, 0
  br i1 %.not41, label %ra_destpair.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !25
  %i.ac = and i8 %i.ab, 31                        ; 2 uses
  %.off = add nsw i8 %i.ac, -13
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25  ; 3 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 2                ; 2 uses
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !73
  %i.ai = and i32 %i.ah, 512
  %.not42 = icmp eq i32 %i.ai, 0
  br i1 %.not42, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = zext nneg i8 %i.x to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.am = load <2 x i32>, ptr %i.al, align 8, !tbaa !26
  %i.an = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %i.ao = shufflevector <2 x i32> %i.an, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ap = or <2 x i32> %i.am, %i.ao
  store <2 x i32> %i.ap, ptr %i.al, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 3 uses
  %i.as = shl i8 %i.x, 3
  %i.at = or i8 %i.as, -64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !25
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -5 ; 2 uses
  store i32 1846503014, ptr %i.av, align 4, !tbaa !26
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.ax = lshr i8 %i.x, 1
  %i.ay = and i8 %i.ax, 4
  %i.az = or disjoint i8 %i.ay, 72
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !25
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not44 = icmp eq i8 %i.ae, 0
  br i1 %.not44, label %ra_destpair.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 3 uses
  %i.bc = icmp ult i8 %i.ae, 32
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = trunc nuw nsw i32 %i.ag to i8
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 -1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !25
  br label %emit_rmro.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 -4
  store i32 %i.ag, ptr %i.bf, align 4, !tbaa !26
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %bb.n, %bb.o
  %i.bg = phi i64 [ -1, %bb.n ], [ -4, %bb.o ]
  %.0.i = phi i8 [ 68, %bb.n ], [ -124, %bb.o ]
  %i.bh = getelementptr inbounds i8, ptr %i.bb, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -1
  store i8 36, ptr %i.bi, align 1, !tbaa !25
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -2
  store i8 %.0.i, ptr %i.bj, align 1, !tbaa !25
  %i.bk = getelementptr i8, ptr %i.bh, i64 -3
  store i8 -119, ptr %i.bk, align 1, !tbaa !25
  %i.bl = getelementptr i8, ptr %i.bh, i64 -4     ; 2 uses
  store i8 72, ptr %i.bl, align 1, !tbaa !25
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !52
  br label %ra_destpair.exit

bb.p:                                             ; preds = %bb.i
  tail call fastcc void @ra_destreg(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 16)
  br label %ra_destpair.exit

bb.q:                                             ; preds = %bb.h
  br i1 %i.h, label %bb.r, label %bb.bk

bb.r:                                             ; preds = %bb.q
  %i.bm = zext i8 %i.x to i32                     ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !25  ; 10 uses
  %i.bp = zext i8 %i.bo to i32                    ; 5 uses
  %i.bq = zext nneg i8 %i.ac to i32
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = and i32 %i.br, 6315993
  %.not.i = icmp eq i32 %i.bs, 0
  %.idx.i = select i1 %.not.i, i64 8, i64 0
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !83 ; 2 uses
  %i.bw = and i32 %i.bv, 1
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = icmp ne i8 %i.x, 0
  %or.cond.i = and i1 %i.by, %i.bx
  %i.bz = icmp ne i8 %i.bo, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bz, i1 false
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = load i32, ptr %0, align 8, !tbaa !26
  %i.cb = and i32 %i.ca, 65535
  %i.cc = tail call fastcc i32 @ra_restore(ptr noundef nonnull %0, i32 noundef %i.cb) ; 0 uses
  %.pre.i = load i32, ptr %i.bu, align 8, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cd = phi i32 [ %.pre.i, %bb.s ], [ %i.bv, %bb.r ]
  %i.ce = and i32 %i.cd, 4
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = icmp ne i8 %i.x, 2
  %or.cond5.i = and i1 %i.cg, %i.cf
  %i.ch = icmp ne i8 %i.bo, 2
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.ch, i1 false
  br i1 %or.cond7.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !26
  %i.ck = and i32 %i.cj, 65535
  %i.cl = tail call fastcc i32 @ra_restore(ptr noundef nonnull %0, i32 noundef %i.ck) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not40, label %bb.w, label %.thread124.i

bb.w:                                             ; preds = %bb.v
  %i.cm = shl nuw i32 1, %i.bm                    ; 2 uses
  %i.cn = load i32, ptr %i.bu, align 8, !tbaa !83
  %i.co = or i32 %i.cn, %i.cm                     ; 2 uses
  store i32 %i.co, ptr %i.bu, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !71
  %i.cr = or i32 %i.cq, %i.cm                     ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !71
  %.not65.i = icmp sgt i8 %i.bo, -1
  br i1 %.not65.i, label %bb.x, label %.thread.i

.thread124.i:                                     ; preds = %bb.v
  %.not65126.i = icmp sgt i8 %i.bo, -1
  br i1 %.not65126.i, label %.thread147.i, label %emit_movrr.exit79.i

.thread147.i:                                     ; preds = %.thread124.i
  %i.cs = shl nuw i32 1, %i.bp
  %i.ct = load <2 x i32>, ptr %i.bu, align 8, !tbaa !26
  %i.cu = insertelement <2 x i32> poison, i32 %i.cs, i64 0
  %i.cv = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cw = or <2 x i32> %i.ct, %i.cv
  store <2 x i32> %i.cw, ptr %i.bu, align 8, !tbaa !26
  br label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.cx = shl nuw i32 1, %i.bp                    ; 2 uses
  %i.cy = or i32 %i.co, %i.cx
  store i32 %i.cy, ptr %i.bu, align 8, !tbaa !83
  %i.cz = or i32 %i.cr, %i.cx
  store i32 %i.cz, ptr %i.cp, align 4, !tbaa !71
  %3 = icmp eq i8 %i.x, 2
  br i1 %3, label %bb.y, label %bb.ah

.thread.i:                                        ; preds = %bb.w
  %4 = icmp eq i8 %i.x, 2
  br i1 %4, label %.thread119.i, label %emit_movrr.exit100.i

bb.y:                                             ; preds = %bb.x
  %5 = icmp eq i8 %i.bo, 0
  br i1 %5, label %bb.z, label %.thread119.i

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !52
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !52
  store i8 -110, ptr %i.dc, align 1, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !25
  %i.df = and i8 %i.de, 31
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = and i32 %i.dh, 6315993
  %.not70.i = icmp eq i32 %i.di, 0
  br i1 %.not70.i, label %emit_movrr.exit79.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !52
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -1 ; 2 uses
  store ptr %i.dk, ptr %i.da, align 8, !tbaa !52
  store i8 72, ptr %i.dk, align 1, !tbaa !25
  br label %emit_movrr.exit79.i

.thread119.i:                                     ; preds = %bb.y, %.thread.i
  %.0117121.i = phi i32 [ %i.bp, %bb.y ], [ 2, %.thread.i ] ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !25
  %i.dn = and i8 %i.dm, 31
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = shl nuw i32 1, %i.do
  %i.dq = and i32 %i.dp, 6315993
  %.not.i.i = icmp eq i32 %i.dq, 0
  %i.dr = select i1 %.not.i.i, i32 0, i32 524800  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !52 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -1
  store i8 -48, ptr %i.du, align 1, !tbaa !25
  %i.dv = getelementptr i8, ptr %i.dt, i64 -2     ; 2 uses
  store i8 -117, ptr %i.dv, align 1, !tbaa !25
  %i.dw = and i32 %i.dr, 512
  %.not.i.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i.i, label %emit_movrr.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.thread119.i
  %i.dx = lshr i32 %i.dr, 16
  %i.dy = trunc nuw nsw i32 %i.dx to i8
  %i.dz = or disjoint i8 %i.dy, 64
  %i.ea = getelementptr i8, ptr %i.dt, i64 -3     ; 2 uses
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !25
  br label %emit_movrr.exit.i

emit_movrr.exit.i:                                ; preds = %bb.ab, %.thread119.i
  %.046.i.i.i.i = phi ptr [ %i.dv, %.thread119.i ], [ %i.ea, %bb.ab ] ; 7 uses
  store ptr %.046.i.i.i.i, ptr %i.ds, align 8, !tbaa !52
  %.not69.i = icmp eq i32 %.0117121.i, 2
  br i1 %.not69.i, label %emit_movrr.exit79.i, label %bb.ac

bb.ac:                                            ; preds = %emit_movrr.exit.i
  %i.eb = icmp samesign ult i32 %.0117121.i, 16
  br i1 %i.eb, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load i8, ptr %i.dl, align 4, !tbaa !25
  %i.ed = and i8 %i.ec, 31
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw i32 1, %i.ee
  %i.eg = and i32 %i.ef, 6315993
  %.not.i76.i = icmp eq i32 %i.eg, 0
  %i.eh = select i1 %.not.i76.i, i32 0, i32 524800 ; 2 uses
  %i.ei = or disjoint i32 %i.eh, %.0117121.i
  %.0117121.tr136.i = trunc nuw nsw i32 %.0117121.i to i8
  %i.ej = shl nuw nsw i8 %.0117121.tr136.i, 3
  %i.ek = or i8 %i.ej, -62
  %i.el = getelementptr inbounds i8, ptr %.046.i.i.i.i, i64 -1
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !25
  %i.em = getelementptr i8, ptr %.046.i.i.i.i, i64 -2 ; 2 uses
  store i8 -117, ptr %i.em, align 1, !tbaa !25
  %i.en = lshr i32 %i.ei, 1
  %i.eo = and i32 %i.en, 260                      ; 2 uses
  %.not.i.i.i77.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i77.i, label %emit_rr.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = lshr i32 %i.eh, 16
  %i.eq = or disjoint i32 %i.eo, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = or disjoint i8 %i.er, 64
  %i.et = getelementptr i8, ptr %.046.i.i.i.i, i64 -3 ; 2 uses
  store i8 %i.es, ptr %i.et, align 1, !tbaa !25
  br label %emit_rr.exit.i.i

emit_rr.exit.i.i:                                 ; preds = %bb.ae, %bb.ad
  %.046.i.i.i78.i = phi ptr [ %i.em, %bb.ad ], [ %i.et, %bb.ae ]
  store ptr %.046.i.i.i78.i, ptr %i.ds, align 8, !tbaa !52
  br label %emit_movrr.exit79.i

bb.af:                                            ; preds = %bb.ac
  %.0117121.tr.i = trunc nuw nsw i32 %.0117121.i to i8
  %i.eu = shl i8 %.0117121.tr.i, 3
  %i.ev = or i8 %i.eu, -62
  %i.ew = getelementptr inbounds i8, ptr %.046.i.i.i.i, i64 -1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !25
  %i.ex = getelementptr inbounds i8, ptr %.046.i.i.i.i, i64 -3 ; 2 uses
  store i16 10255, ptr %i.ex, align 2, !tbaa !69
  %i.ey = and i32 %.0117121.i, 8
  %.not.i.i7.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i7.i.i, label %emit_rr.exit9.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds i8, ptr %.046.i.i.i.i, i64 -4 ; 2 uses
  store i8 68, ptr %i.ez, align 1, !tbaa !25
  br label %emit_rr.exit9.i.i

emit_rr.exit9.i.i:                                ; preds = %bb.ag, %bb.af
  %.046.i.i8.i.i = phi ptr [ %i.ex, %bb.af ], [ %i.ez, %bb.ag ]
  store ptr %.046.i.i8.i.i, ptr %i.ds, align 8, !tbaa !52
  br label %emit_movrr.exit79.i

bb.ah:                                            ; preds = %bb.x, %.thread147.i
  %.063127149.i = phi i32 [ 0, %.thread147.i ], [ %i.bm, %bb.x ] ; 9 uses
  switch i8 %i.bo, label %bb.ap [
    i8 0, label %bb.ai
    i8 2, label %emit_movrr.exit100.i
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 4, !tbaa !25
  %i.fc = and i8 %i.fb, 31
  %i.fd = zext nneg i8 %i.fc to i32
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = and i32 %i.fe, 6315993
  %.not.i80.i = icmp eq i32 %i.ff, 0
  %i.fg = select i1 %.not.i80.i, i32 0, i32 524800 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !52 ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -1
  store i8 -62, ptr %i.fj, align 1, !tbaa !25
  %i.fk = getelementptr i8, ptr %i.fi, i64 -2     ; 2 uses
  store i8 -117, ptr %i.fk, align 1, !tbaa !25
  %i.fl = and i32 %i.fg, 512
  %.not.i.i.i81.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i81.i, label %emit_movrr.exit84.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = lshr i32 %i.fg, 16
  %i.fn = trunc nuw nsw i32 %i.fm to i8
  %i.fo = or disjoint i8 %i.fn, 64
  %i.fp = getelementptr i8, ptr %i.fi, i64 -3     ; 2 uses
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !25
  br label %emit_movrr.exit84.i

emit_movrr.exit84.i:                              ; preds = %bb.aj, %bb.ai
  %.046.i.i.i83.i = phi ptr [ %i.fk, %bb.ai ], [ %i.fp, %bb.aj ] ; 7 uses
  store ptr %.046.i.i.i83.i, ptr %i.fh, align 8, !tbaa !52
  %.not68.i = icmp eq i32 %.063127149.i, 0
  br i1 %.not68.i, label %emit_movrr.exit79.i, label %bb.ak

bb.ak:                                            ; preds = %emit_movrr.exit84.i
  %i.fq = icmp samesign ult i32 %.063127149.i, 16
  br i1 %i.fq, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fr = load i8, ptr %i.fa, align 4, !tbaa !25
  %i.fs = and i8 %i.fr, 31
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = and i32 %i.fu, 6315993
  %.not.i88.i = icmp eq i32 %i.fv, 0
  %i.fw = select i1 %.not.i88.i, i32 0, i32 524800 ; 2 uses
  %i.fx = or disjoint i32 %i.fw, %.063127149.i
  %.063127.tr134.i = trunc nuw nsw i32 %.063127149.i to i8
  %i.fy = shl nuw nsw i8 %.063127.tr134.i, 3
  %i.fz = or i8 %i.fy, -64
  %i.ga = getelementptr inbounds i8, ptr %.046.i.i.i83.i, i64 -1
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !25
  %i.gb = getelementptr i8, ptr %.046.i.i.i83.i, i64 -2 ; 2 uses
  store i8 -117, ptr %i.gb, align 1, !tbaa !25
  %i.gc = lshr i32 %i.fx, 1
  %i.gd = and i32 %i.gc, 260                      ; 2 uses
  %.not.i.i.i89.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i89.i, label %emit_rr.exit.i90.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = lshr i32 %i.fw, 16
  %i.gf = or disjoint i32 %i.gd, %i.ge
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = or disjoint i8 %i.gg, 64
  %i.gi = getelementptr i8, ptr %.046.i.i.i83.i, i64 -3 ; 2 uses
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !25
  br label %emit_rr.exit.i90.i

emit_rr.exit.i90.i:                               ; preds = %bb.am, %bb.al
  %.046.i.i.i91.i = phi ptr [ %i.gb, %bb.al ], [ %i.gi, %bb.am ]
  store ptr %.046.i.i.i91.i, ptr %i.fh, align 8, !tbaa !52
  br label %emit_movrr.exit79.i

bb.an:                                            ; preds = %bb.ak
  %.063127.tr.i = trunc nuw nsw i32 %.063127149.i to i8
  %i.gj = shl i8 %.063127.tr.i, 3
end_hunk_0
