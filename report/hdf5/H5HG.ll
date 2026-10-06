Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5HG?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@H5HG_get_obj_size:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  store i64 %i.p, ptr %i.y, align 8, !tbaa !28
  %i.z = load i64, ptr %i.i, align 8, !tbaa !43   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %.not = icmp ult i64 %i.z, %i.ab
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ae = load i64, ptr %1, align 8, !tbaa !42
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_get_obj_size, i32 noundef 710, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.13, i64 noundef %i.ae, i64 noundef %i.z) #7 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.an = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ao = load i64, ptr %1, align 8, !tbaa !42
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_get_obj_size, i32 noundef 713, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.14, i64 noundef %i.ao, i64 noundef %i.z) #7 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !37
  store i64 %i.ar, ptr %2, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k
  %.0.ph = phi i32 [ 0, %bb.k ], [ -1, %bb.j ], [ -1, %bb.h ]
  %i.as = load i64, ptr %1, align 8, !tbaa !42
  %i.at = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_GHEAP, i64 noundef %i.as, ptr noundef nonnull %i.q, i32 noundef 0) #7
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.aw = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !14
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_get_obj_size, i32 noundef 720, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.f, %bb.l, %bb.m, %bb.b
  %.1 = phi i32 [ -1, %bb.m ], [ %.0.ph, %bb.l ], [ 0, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ]
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !14
  call void @H5AC_tag(i64 noundef %i.ay, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HG_remove(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 -1, ptr %i.a, align 8, !tbaa !14
  call void @H5AC_tag(i64 noundef 6, ptr noundef nonnull %i.a) #7
  %i.b = load i8, ptr @H5HG_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5HG_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = xor i1 %i.e, true
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.af, !prof !38

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = call i32 @H5F_get_intent(ptr noundef %0) #7
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.m = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !14
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 750, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.8) #7 ; 0 uses
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !43
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.t = load i64, ptr %1, align 8, !tbaa !42
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 755, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.13, i64 noundef %i.t, i64 noundef 0) #7 ; 0 uses
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.w = load i8, ptr @H5HG_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = xor i1 %i.z, true
  %i.ab = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %i.ab, label %bb.h, label %bb.j, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.ac = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_GHEAP, i64 noundef %i.v, ptr noundef %0, i32 noundef 0) #7 ; 11 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.af = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !14
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG__protect, i32 noundef 239, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ah = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.ai = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !14
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 759, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 248
  store i64 %i.v, ptr %i.ak, align 8, !tbaa !28
  %i.al = load i64, ptr %i.o, align 8, !tbaa !43  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 280 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %.not = icmp ult i64 %i.al, %i.an
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.ap = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.aq = load i64, ptr %1, align 8, !tbaa !42
  %i.ar = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 764, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.13, i64 noundef %i.aq, i64 noundef %i.al) #7 ; 0 uses
  br label %bb.ad

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 296 ; 13 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.al ; 5 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !40
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35
  %.not138 = icmp eq ptr %i.bb, null
  br i1 %.not138, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.bg = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.bh = load i64, ptr %1, align 8, !tbaa !42
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 776, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.14, i64 noundef %i.bh, i64 noundef %i.al) #7 ; 0 uses
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !37
  %i.bl = add i64 %i.bk, 7
  %i.bm = and i64 %i.bl, -8
  %i.bn = call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  %i.bo = zext i8 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 15
  %i.bq = and i64 %i.bp, 504
  %i.br = add i64 %i.bq, %i.bm                    ; 5 uses
  %i.bs = load i64, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %.not155 = icmp eq i64 %i.bs, 0
  %.pre.a = load ptr, ptr %i.as, align 8, !tbaa !33 ; 6 uses
  br i1 %.not155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %.pre.a, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bw = sub i64 0, %i.br
  %.pre157 = load ptr, ptr %i.bv, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.u
  %2 = phi ptr [ %.pre157, %.lr.ph ], [ %3, %bb.u ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.pre.a, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35 ; 2 uses
  %i.ca = icmp ugt ptr %i.bz, %2
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.bw
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !35
  %.pre = load ptr, ptr %i.bv, align 8, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %3 = phi ptr [ %2, %bb.s ], [ %.pre, %bb.t ]
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cc = and i64 %indvars.iv.next, 4294967295
  %i.cd = icmp ugt i64 %i.bs, %i.cc
  br i1 %i.cd, label %bb.s, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.u, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.a, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !30 ; 2 uses
  %i.cl = sub i64 %i.ck, %i.br
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  store i64 %i.br, ptr %i.cn, align 8, !tbaa !37
  store i32 0, ptr %.pre.a, align 8, !tbaa !40
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !37
  %i.cq = add i64 %i.cp, %i.br
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %.pre157.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !30
  %.phi.trans.insert158 = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  %.pre159 = load ptr, ptr %.phi.trans.insert158, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = phi ptr [ %.pre159, %bb.w ], [ %i.ci, %bb.v ]
  %i.cs = phi i64 [ %.pre157.a, %bb.w ], [ %i.ck, %bb.v ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.br ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %.neg = sub i64 %i.cs, %i.cv
  %i.cx = add i64 %.neg, %i.cw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 1 %i.ct, i64 %i.cx, i1 false)
  %i.cy = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37
  %i.db = call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  %i.dc = zext i8 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 15
  %i.de = and i64 %i.dd, 504
  %.not139 = icmp ult i64 %i.da, %i.de
  br i1 %.not139, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  store i64 0, ptr %i.dh, align 1
  %i.dj = call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  switch i8 %i.dj, label %.loopexit [
    i8 4, label %bb.z
    i8 8, label %.loopexit.loopexit
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !37
  %i.dn = trunc i64 %i.dm to i8
  store i8 %i.dn, ptr %i.di, align 1, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 9
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !37
  %i.ds = lshr i64 %i.dr, 8
  %i.dt = trunc i64 %i.ds to i8
  store i8 %i.dt, ptr %i.do, align 1, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 10
  %i.dv = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !37
  %i.dy = lshr i64 %i.dx, 16
  %i.dz = trunc i64 %i.dy to i8
  store i8 %i.dz, ptr %i.du, align 1, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 11
  %i.eb = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !37
  %i.ee = lshr i64 %i.ed, 24
  %i.ef = trunc i64 %i.ee to i8
  store i8 %i.ef, ptr %i.ea, align 1, !tbaa !31
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.y
  %i.eg = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load <8 x i8>, ptr %i.eh, align 8, !tbaa !37
  store <8 x i8> %i.ei, ptr %i.di, align 1, !tbaa !31
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !37
  %i.em = trunc i64 %i.el to i8
  store i8 %i.em, ptr %i.di, align 1, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %i.dh, i64 9
  %i.eo = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !37
  %i.er = lshr i64 %i.eq, 8
  %i.es = trunc i64 %i.er to i8
  store i8 %i.es, ptr %i.en, align 1, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.z, %bb.aa, %bb.y, %bb.x
  %i.et = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.eu = load i64, ptr %i.o, align 8, !tbaa !43
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.eu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  %i.ew = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !37
  %i.ez = call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  %i.fa = zext i8 %i.ez to i64
  %i.fb = add nuw nsw i64 %i.fa, 15
  %i.fc = and i64 %i.fb, 504
  %i.fd = add i64 %i.fc, %i.ey
  %i.fe = load i64, ptr %i.cu, align 8, !tbaa !30
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.fg = call i32 @H5F_cwfs_advance_heap(ptr noundef %0, ptr noundef nonnull %i.ac, i1 noundef zeroext true) #7
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fi = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.fj = load i64, ptr @H5E_CANTMODIFY_g, align 8, !tbaa !14
  %i.fk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 820, i64 noundef %i.fi, i64 noundef %i.fj, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.q, %bb.o, %bb.ac, %bb.ab, %.loopexit
  %.0127.ph = phi i32 [ 259, %.loopexit ], [ 2, %bb.ab ], [ 2, %bb.ac ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ]
  %.0125.ph = phi i32 [ 0, %.loopexit ], [ 0, %bb.ab ], [ -1, %bb.ac ], [ 0, %bb.o ], [ -1, %bb.q ], [ -1, %bb.l ]
  %i.fl = load i64, ptr %1, align 8, !tbaa !42
  %i.fm = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_GHEAP, i64 noundef %i.fl, ptr noundef nonnull %i.ac, i32 noundef %.0127.ph) #7
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fo = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.fp = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !14
  %i.fq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG_remove, i32 noundef 825, i64 noundef %i.fo, i64 noundef %i.fp, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %bb.f, %bb.j, %bb.ad, %bb.ae, %bb.b
  %.1126 = phi i32 [ -1, %bb.ae ], [ %.0125.ph, %bb.ad ], [ 0, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.j ]
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !14
  call void @H5AC_tag(i64 noundef %i.fr, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HG__free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HG_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = tail call i32 @H5F_cwfs_remove_heap(ptr noundef %i.h, ptr noundef %0) #7
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !14
  %i.l = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !14
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5HG__free, i32 noundef 851, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.o, null
end_hunk_0
