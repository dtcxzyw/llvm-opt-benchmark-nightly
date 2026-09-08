Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/k12?download=true
inline.NumInlined: 43
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@k12_open:bb.a
bb.d:                                             ; preds = %bb.c
  %i.e = call noalias dereferenceable_or_null(112) ptr @g_malloc(i64 noundef 112) #12 ; 24 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 5 uses
  store i32 0, ptr %i.f, align 4
  %i.g = call ptr @g_hash_table_new_full(ptr noundef nonnull @g_direct_hash, ptr noundef nonnull @g_direct_equal, ptr noundef null, ptr noundef nonnull @destroy_srcdsc)
  %i.h = getelementptr i8, ptr %i.e, i64 8        ; 7 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 16       ; 7 uses
  call void @ws_buffer_init(ptr noundef %i.i, i64 noundef 2048)
  %i.j = getelementptr i8, ptr %i.e, i64 48       ; 6 uses
  call void @ws_buffer_init(ptr noundef %i.j, i64 noundef 2048)
  %i.k = getelementptr i8, ptr %i.e, i64 80       ; 6 uses
  call void @ws_buffer_init(ptr noundef %i.k, i64 noundef 100)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i8, ptr %i.l, align 8
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw i32 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = or disjoint i32 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.v = load i8, ptr %i.u, align 2
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  store i32 %i.ac, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.09.i = phi ptr [ %i.ad, %bb.d ], [ %i.af, %bb.e ] ; 2 uses
  %.058.i = phi i64 [ 496, %bb.d ], [ %i.ag, %bb.e ]
  %i.ae = load i8, ptr %.09.i, align 1
  %.not7.i = icmp eq i8 %i.ae, 0                  ; 2 uses
  %i.af = getelementptr i8, ptr %.09.i, i64 1
  %i.ag = add nsw i64 %.058.i, -1                 ; 2 uses
  %.not.i = icmp ne i64 %i.ag, 0
  %or.cond.not.i = select i1 %.not7.i, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.e, label %memiszero.exit, !llvm.loop !7

memiszero.exit:                                   ; preds = %bb.e
  br i1 %.not7.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %memiszero.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = call i32 @llvm.bswap.i32(i32 %i.ai)     ; 2 uses
  store i32 %i.aj, ptr %i.f, align 4
  br label %bb.i

bb.g:                                             ; preds = %memiszero.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = call i32 @llvm.bswap.i32(i32 %i.al)     ; 3 uses
  store i32 %i.am, ptr %i.f, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.not175 = icmp eq i32 %i.al, %i.ao
  br i1 %.not175, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 -13, ptr %1, align 4
  %i.aq = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str, i32 noundef %i.am, i32 noundef 36, i32 noundef %i.ap, i32 noundef 44)
  store ptr %i.aq, ptr %2, align 8
  %i.ar = load ptr, ptr %i.h, align 8
  call void @g_hash_table_destroy(ptr noundef %i.ar)
  call void @ws_buffer_free(ptr noundef %i.k)
  call void @ws_buffer_free(ptr noundef %i.i)
  call void @ws_buffer_free(ptr noundef %i.j)
  call void @g_free(ptr noundef %i.e)
  br label %bb.ar

bb.i:                                             ; preds = %bb.f, %bb.g
  %.pr = phi i32 [ %i.aj, %bb.f ], [ %i.am, %bb.g ]
  %i.as = icmp eq i32 %.pr, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph249

.lr.ph249:                                        ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.e, i64 32
  br label %bb.j

._crit_edge:                                      ; preds = %bb.ap, %bb.i
  store i32 -12, ptr %1, align 4
  %i.au = load ptr, ptr %i.h, align 8
  call void @g_hash_table_destroy(ptr noundef %i.au)
  call void @ws_buffer_free(ptr noundef %i.k)
  call void @ws_buffer_free(ptr noundef %i.i)
  call void @ws_buffer_free(ptr noundef %i.j)
  call void @g_free(ptr noundef %i.e)
  br label %bb.ar

bb.j:                                             ; preds = %.lr.ph249, %bb.ap
  %.0165248 = phi i64 [ 512, %.lr.ph249 ], [ %i.gt, %bb.ap ]
  %i.av = load ptr, ptr %0, align 8
  %i.aw = and i64 %.0165248, 4294967295           ; 3 uses
  %i.ax = call fastcc i32 @get_record(ptr noundef %i.e, ptr noundef %i.av, i64 noundef %i.aw, i1 noundef zeroext false, ptr noundef %1, ptr noundef %2) ; 3 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = icmp slt i32 %i.ax, 0
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.h, align 8
  call void @g_hash_table_destroy(ptr noundef %i.ba)
  call void @ws_buffer_free(ptr noundef %i.k)
  call void @ws_buffer_free(ptr noundef %i.i)
  call void @ws_buffer_free(ptr noundef %i.j)
  call void @g_free(ptr noundef %i.e)
  br label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %i.ax, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -12, ptr %1, align 4
  %i.bc = load ptr, ptr %i.h, align 8
  call void @g_hash_table_destroy(ptr noundef %i.bc)
  call void @ws_buffer_free(ptr noundef %i.k)
  call void @ws_buffer_free(ptr noundef %i.i)
  call void @ws_buffer_free(ptr noundef %i.j)
  call void @g_free(ptr noundef %i.e)
  br label %bb.ar

bb.n:                                             ; preds = %bb.l
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %.val181 = load i64, ptr %i.at, align 8         ; 2 uses
  %i.bd = getelementptr i8, ptr %.val, i64 %.val181 ; 21 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)     ; 6 uses
  %i.bg = icmp ult i32 %i.bf, 8
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -13, ptr %1, align 4
  %i.bh = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %i.bf, i32 noundef 8)
  store ptr %i.bh, ptr %2, align 8
  %i.bi = load ptr, ptr %i.h, align 8
  call void @g_hash_table_destroy(ptr noundef %i.bi)
  call void @ws_buffer_free(ptr noundef %i.k)
  call void @ws_buffer_free(ptr noundef %i.i)
  call void @ws_buffer_free(ptr noundef %i.j)
  call void @g_free(ptr noundef %i.e)
  br label %bb.ar

bb.p:                                             ; preds = %bb.n
  %i.bj = getelementptr i8, ptr %i.bd, i64 4
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = call i32 @llvm.bswap.i32(i32 %i.bk)     ; 3 uses
  %i.bm = and i32 %i.bl, -16
  switch i32 %i.bm, label %bb.s [
    i32 65568, label %bb.q
    i32 852000, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = call i64 @file_seek(ptr noundef %i.bn, i64 noundef %i.aw, i32 noundef 0, ptr noundef %1)
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  br label %bb.ar

bb.s:                                             ; preds = %bb.p
  switch i32 %i.bl, label %bb.ao [
    i32 458817, label %bb.t
    i32 458819, label %bb.t
    i32 458818, label %bb.an
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bq = call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #12 ; 20 uses
  %i.br = icmp ult i32 %i.bf, 36
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 -13, ptr %1, align 4
  %i.bs = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %i.bf, i32 noundef 36)
  store ptr %i.bs, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.bt = getelementptr i8, ptr %i.bd, i64 26
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %i.bd, i64 30
  %.val190 = load i8, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %i.bd, i64 31
  %.val191 = load i8, ptr %i.bw, align 1
  %i.bx = zext i8 %.val190 to i16
  %i.by = shl nuw i16 %i.bx, 8
  %i.bz = zext i8 %.val191 to i16
  %i.ca = or disjoint i16 %i.by, %i.bz            ; 6 uses
  %i.cb = zext i16 %i.ca to i32                   ; 5 uses
  %i.cc = getelementptr i8, ptr %i.bd, i64 32
  %.val188 = load i8, ptr %i.cc, align 1
  %i.cd = getelementptr i8, ptr %i.bd, i64 33
  %.val189 = load i8, ptr %i.cd, align 1
  %i.ce = zext i8 %.val188 to i16
  %i.cf = shl nuw i16 %i.ce, 8
  %i.cg = zext i8 %.val189 to i16
  %i.ch = or disjoint i16 %i.cf, %i.cg            ; 3 uses
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bd, i64 34
  %.val186 = load i8, ptr %i.cj, align 1
  %i.ck = getelementptr i8, ptr %i.bd, i64 35
  %.val187 = load i8, ptr %i.ck, align 1
  %i.cl = zext i8 %.val186 to i16
  %i.cm = shl nuw i16 %i.cl, 8
  %i.cn = zext i8 %.val187 to i16
  %i.co = or disjoint i16 %i.cm, %i.cn            ; 3 uses
  %i.cp = zext i16 %i.co to i32                   ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bd, i64 12
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = call i32 @llvm.bswap.i32(i32 %i.cr)
  store i32 %i.cs, ptr %i.bq, align 8
  %i.ct = icmp eq i16 %i.ch, 0
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.x:                                             ; preds = %bb.v
  %i.cu = icmp eq i16 %i.co, 0
  br i1 %i.cu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.z:                                             ; preds = %bb.x
  %i.cv = add nuw nsw i32 %i.cb, 36
  %i.cw = add nuw nsw i32 %i.cv, %i.ci            ; 2 uses
  %i.cx = add nuw nsw i32 %i.cw, %i.cp            ; 3 uses
  %i.cy = icmp ult i32 %i.bf, %i.cx
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 -13, ptr %1, align 4
  %i.cz = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %i.bf, i32 noundef %i.cx, i32 noundef 36, i32 noundef %i.cb, i32 noundef %i.ci, i32 noundef %i.cp)
  store ptr %i.cz, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %.not176 = icmp eq i16 %i.ca, 0
  br i1 %.not176, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = icmp ult i16 %i.ca, 4
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 -13, ptr %1, align 4
  %i.db = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %i.cb)
  store ptr %i.db, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.ae:                                            ; preds = %bb.ac
  %i.dc = getelementptr i8, ptr %i.bd, i64 36
  %i.dd = load i32, ptr %i.dc, align 1
  %i.de = call i32 @llvm.bswap.i32(i32 %i.dd)     ; 2 uses
  %i.df = getelementptr i8, ptr %i.bq, i64 4
  store i32 %i.de, ptr %i.df, align 4
  switch i32 %i.de, label %.loopexit [
    i32 65544, label %bb.af
    i32 16908288, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr i8, ptr %i.bq, i64 24     ; 6 uses
  store i32 0, ptr %i.dg, align 8
  %i.dh = icmp ugt i16 %i.ca, 24
  br i1 %i.dh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.af
  %3 = add nsw i32 %i.cb, -24                     ; 2 uses
  %4 = getelementptr i8, ptr %i.bd, i64 60        ; 5 uses
  %i.di = zext i32 %3 to i64                      ; 6 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr nuw i8, ptr %i.bq, i64 28
  %scevgep435 = getelementptr i8, ptr %.val, i64 60
  %i.dj = getelementptr i8, ptr %scevgep435, i64 %.val181
  %scevgep436 = getelementptr i8, ptr %i.dj, i64 %i.di
  %bound0 = icmp ult ptr %i.dg, %scevgep436
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dk = and i64 %i.di, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %vec.phi437 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dl = getelementptr i8, ptr %4, i64 %index    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %wide.load = load <4 x i8>, ptr %i.dl, align 1, !alias.scope !13
  %wide.load438 = load <4 x i8>, ptr %i.dm, align 1, !alias.scope !13
  %i.dn = icmp eq <4 x i8> %wide.load, splat (i8 -1)
  %i.do = icmp eq <4 x i8> %wide.load438, splat (i8 -1)
  %i.dp = lshr exact <4 x i32> splat (i32 -2147483648), %vec.ind
  %i.dq = lshr exact <4 x i32> splat (i32 -2147483648), %step.add
  %i.dr = select <4 x i1> %i.dn, <4 x i32> %i.dp, <4 x i32> zeroinitializer
  %i.ds = select <4 x i1> %i.do, <4 x i32> %i.dq, <4 x i32> zeroinitializer
  %i.dt = or <4 x i32> %i.dr, %vec.phi            ; 2 uses
  %i.du = or <4 x i32> %i.ds, %vec.phi437         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %i.dk
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.du, %i.dt
  %i.dw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dw, ptr %i.dg, align 8, !alias.scope !16, !noalias !13
  %cmp.n = icmp eq i64 %i.dk, %i.di
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.dk, %middle.block ] ; 5 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.dw, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.di, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dx = getelementptr i8, ptr %4, i64 %indvars.iv.ph
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp eq i8 %i.dy, -1
  %i.ea = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.eb = lshr exact i32 -2147483648, %i.ea
  %i.ec = select i1 %i.dz, i32 %i.eb, i32 0
  %i.ed = or i32 %i.ec, %.ph                      ; 2 uses
  store i32 %i.ed, ptr %i.dg, align 8
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.ed, %scalar.ph.prol ]
  %5 = add nsw i64 %i.di, -1
  %i.ee = icmp eq i64 %indvars.iv.ph, %5
  br i1 %i.ee, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ef = phi i32 [ %i.et, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.eg = getelementptr i8, ptr %4, i64 %indvars.iv
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp eq i8 %i.eh, -1
  %i.ej = trunc nuw nsw i64 %indvars.iv to i32
  %i.ek = lshr exact i32 -2147483648, %i.ej
  %i.el = select i1 %i.ei, i32 %i.ek, i32 0
  %i.em = or i32 %i.el, %i.ef                     ; 2 uses
  store i32 %i.em, ptr %i.dg, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = getelementptr i8, ptr %4, i64 %indvars.iv.next
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = icmp eq i8 %i.eo, -1
  %i.eq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.er = lshr exact i32 -2147483648, %i.eq
  %i.es = select i1 %i.ep, i32 %i.er, i32 0
  %i.et = or i32 %i.es, %i.em                     ; 2 uses
  store i32 %i.et, ptr %i.dg, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.di
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !12

bb.ag:                                            ; preds = %bb.ae
  %i.eu = icmp ult i16 %i.ca, 24
  br i1 %i.eu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 -13, ptr %1, align 4
  %i.ev = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.cb, i32 noundef 24)
  store ptr %i.ev, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.ew = getelementptr i8, ptr %i.bd, i64 56
  %.val184 = load i8, ptr %i.ew, align 1
  %i.ex = getelementptr i8, ptr %i.bd, i64 57
  %.val185 = load i8, ptr %i.ex, align 1
  %i.ey = zext i8 %.val184 to i16
  %i.ez = shl nuw i16 %i.ey, 8
  %i.fa = zext i8 %.val185 to i16
  %i.fb = or disjoint i16 %i.ez, %i.fa
  %i.fc = getelementptr i8, ptr %i.bq, i64 24
  store i16 %i.fb, ptr %i.fc, align 8
  %i.fd = getelementptr i8, ptr %i.bd, i64 58
  %.val182 = load i8, ptr %i.fd, align 1
  %i.fe = getelementptr i8, ptr %i.bd, i64 59
  %.val183 = load i8, ptr %i.fe, align 1
  %i.ff = zext i8 %.val182 to i16
  %i.fg = shl nuw i16 %i.ff, 8
  %i.fh = zext i8 %.val183 to i16
  %i.fi = or disjoint i16 %i.fg, %i.fh
  br label %.loopexit.sink.split

bb.aj:                                            ; preds = %bb.ab
  %i.fj = and i8 %i.bu, -4
  %or.cond = icmp eq i8 %i.fj, 20
  br i1 %or.cond, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.fk = getelementptr i8, ptr %i.bq, i64 4
  store i32 16908288, ptr %i.fk, align 4
  %i.fl = getelementptr i8, ptr %i.bq, i64 24
  store i16 0, ptr %i.fl, align 8
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ai, %bb.ak
  %.sink = phi i16 [ 0, %bb.ak ], [ %i.fi, %bb.ai ]
  %i.fm = getelementptr i8, ptr %i.bq, i64 26
  store i16 %.sink, ptr %i.fm, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit.sink.split, %bb.aj, %bb.af, %bb.ae
  %i.fn = zext nneg i32 %i.cw to i64
  %i.fo = getelementptr i8, ptr %i.bd, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 -1
  %i.fq = load i8, ptr %i.fp, align 1
  %.not177 = icmp eq i8 %i.fq, 0
  br i1 %.not177, label %bb.al, label %g_strdup_inline.exit180

g_strdup_inline.exit180:                          ; preds = %.loopexit
  store i32 -13, ptr %1, align 4
  %i.fr = call noalias dereferenceable_or_null(80) ptr @g_malloc(i64 noundef 80) #12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(80) %i.fr, ptr noundef nonnull align 1 dereferenceable(80) @.str.6, i64 noundef 80, i1 noundef false) #11
  store ptr %i.fr, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.al:                                            ; preds = %.loopexit
  %i.fs = zext nneg i32 %i.cx to i64
  %i.ft = getelementptr i8, ptr %i.bd, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -1
  %i.fv = load i8, ptr %i.fu, align 1
  %.not178 = icmp eq i8 %i.fv, 0
  br i1 %.not178, label %bb.am, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.al
  store i32 -13, ptr %1, align 4
  %i.fw = call noalias dereferenceable_or_null(75) ptr @g_malloc(i64 noundef 75) #12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(75) %i.fw, ptr noundef nonnull align 1 dereferenceable(75) @.str.7, i64 noundef 75, i1 noundef false) #11
  store ptr %i.fw, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.fx = getelementptr i8, ptr %i.bd, i64 36
  %i.fy = zext i16 %i.ca to i64
  %i.fz = getelementptr i8, ptr %i.fx, i64 %i.fy  ; 2 uses
  %i.ga = zext i16 %i.ch to i64                   ; 2 uses
  %i.gb = call ptr @g_memdup2(ptr noundef %i.fz, i64 noundef %i.ga) #13
  %i.gc = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.gb, ptr %i.gc, align 8
  %i.gd = getelementptr i8, ptr %i.fz, i64 %i.ga
  %i.ge = zext i16 %i.co to i64
  %i.gf = call ptr @g_memdup2(ptr noundef %i.gd, i64 noundef %i.ge) #13 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.bq, i64 16
  store ptr %i.gf, ptr %i.gg, align 8
  %i.gh = call ptr @ascii_strdown_inplace(ptr noundef %i.gf) ; 0 uses
  %i.gi = load ptr, ptr %i.h, align 8
  %i.gj = load i32, ptr %i.bq, align 8
  %i.gk = zext i32 %i.gj to i64
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = call i32 @g_hash_table_insert(ptr noundef %i.gi, ptr noundef %i.gl, ptr noundef %i.bq) ; 0 uses
  br label %bb.ap

bb.an:                                            ; preds = %bb.s
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.9)
  %i.gn = getelementptr i8, ptr %i.bd, i64 8
  %i.go = load i32, ptr %i.gn, align 1
  %i.gp = call i32 @llvm.bswap.i32(i32 %i.go)
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %i.gp)
  %i.gq = getelementptr i8, ptr %i.bd, i64 12
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = call i32 @llvm.bswap.i32(i32 %i.gr)
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef %i.gs)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.s
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %i.bl)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.gt = add nuw nsw i64 %i.aw, %i.ay
  %i.gu = load i32, ptr %i.f, align 4
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  store i32 %i.gv, ptr %i.f, align 4
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %._crit_edge, label %bb.j

bb.aq:                                            ; preds = %bb.q
  %i.gx = load i32, ptr @k12_file_type_subtype, align 4
  %i.gy = getelementptr i8, ptr %0, i64 20
  store i32 %i.gx, ptr %i.gy, align 4
  %i.gz = getelementptr i8, ptr %0, i64 168
  store i32 80, ptr %i.gz, align 8
  %i.ha = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.ha, align 8
  %i.hb = getelementptr i8, ptr %0, i64 136
  store ptr @k12_read, ptr %i.hb, align 8
  %i.hc = getelementptr i8, ptr %0, i64 144
  store ptr @k12_seek_read, ptr %i.hc, align 8
  %i.hd = getelementptr i8, ptr %0, i64 160
  store ptr @k12_close, ptr %i.hd, align 8
  %i.he = getelementptr i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.he, align 8
  %i.hf = getelementptr i8, ptr %0, i64 172
  store i32 9, ptr %i.hf, align 4
  call void @wtap_add_generated_idb(ptr noundef %0)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.c, %bb.b, %bb.aq, %g_strdup_inline.exit, %g_strdup_inline.exit180, %bb.ah, %bb.ad, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.r, %bb.o, %bb.m, %bb.k, %._crit_edge, %bb.h
  %.0 = phi i32 [ %., %bb.b ], [ -1, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.r ], [ 1, %bb.aq ], [ -1, %bb.u ], [ 0, %bb.w ], [ 0, %bb.y ], [ -1, %bb.aa ], [ -1, %bb.ad ], [ -1, %g_strdup_inline.exit180 ], [ -1, %g_strdup_inline.exit ], [ -1, %bb.ah ], [ -1, %bb.h ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @destroy_k12_file_data(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %0, i64 80
  tail call void @ws_buffer_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 16
  tail call void @ws_buffer_free(ptr noundef %i.d)
  %i.e = getelementptr i8, ptr %0, i64 48
  tail call void @ws_buffer_free(ptr noundef %i.e)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @get_record(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %.v = select i1 %3, i64 48, i64 16
  %i.a = getelementptr i8, ptr %0, i64 %.v        ; 6 uses
  %i.b = add i64 %2, -512
  %i.c = srem i64 %i.b, 8192                      ; 2 uses
  %i.d = trunc nsw i64 %i.c to i32                ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 16, ptr noundef %4, ptr noundef %5)
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
