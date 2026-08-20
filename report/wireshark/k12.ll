inline.NumInlined: 43
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@k12_open:bb.a
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
  %.0165248 = phi i64 [ 512, %.lr.ph249 ], [ %i.ge, %bb.ap ]
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
  %i.di = add nsw i32 %i.cb, -24                  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.bd, i64 60     ; 5 uses
  %wide.trip.count = zext i32 %i.di to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.di, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr nuw i8, ptr %i.bq, i64 28
  %scevgep436 = getelementptr i8, ptr %.val, i64 60
  %i.dk = getelementptr i8, ptr %scevgep436, i64 %.val181
  %scevgep437 = getelementptr i8, ptr %i.dk, i64 %wide.trip.count
  %bound0 = icmp ult ptr %i.dg, %scevgep437
  %bound1 = icmp ult ptr %i.dj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %vec.phi438 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dl = getelementptr i8, ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %wide.load = load <4 x i8>, ptr %i.dl, align 1, !alias.scope !8
  %wide.load439 = load <4 x i8>, ptr %i.dm, align 1, !alias.scope !8
  %i.dn = icmp eq <4 x i8> %wide.load, splat (i8 -1)
  %i.do = icmp eq <4 x i8> %wide.load439, splat (i8 -1)
  %i.dp = lshr exact <4 x i32> splat (i32 -2147483648), %vec.ind
  %i.dq = lshr exact <4 x i32> splat (i32 -2147483648), %step.add
  %i.dr = select <4 x i1> %i.dn, <4 x i32> %i.dp, <4 x i32> zeroinitializer
  %i.ds = select <4 x i1> %i.do, <4 x i32> %i.dq, <4 x i32> zeroinitializer
  %i.dt = or <4 x i32> %i.dr, %vec.phi            ; 2 uses
  %i.du = or <4 x i32> %i.ds, %vec.phi438         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.du, %i.dt
  %i.dw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dw, ptr %i.dg, align 8, !alias.scope !14, !noalias !8
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.dw, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %3 = getelementptr i8, ptr %i.dj, i64 %indvars.iv.ph
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, -1
  %6 = trunc nuw nsw i64 %indvars.iv.ph to i32
  %7 = lshr exact i32 -2147483648, %6
  %8 = select i1 %5, i32 %7, i32 0
  %9 = or i32 %8, %.ph                            ; 2 uses
  store i32 %9, ptr %i.dg, align 8
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %9, %scalar.ph.prol ]
  %10 = add nsw i64 %wide.trip.count, -1
  %11 = icmp eq i64 %indvars.iv.ph, %10
  br i1 %11, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dx = phi i32 [ %i.ee, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %12 = getelementptr i8, ptr %i.dj, i64 %indvars.iv
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -1
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = lshr exact i32 -2147483648, %15
  %17 = select i1 %14, i32 %16, i32 0
  %18 = or i32 %17, %i.dx                         ; 2 uses
  store i32 %18, ptr %i.dg, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dj, i64 %indvars.iv.next
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.dz, -1
  %i.eb = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ec = lshr exact i32 -2147483648, %i.eb
  %i.ed = select i1 %i.ea, i32 %i.ec, i32 0
  %i.ee = or i32 %i.ed, %18                       ; 2 uses
  store i32 %i.ee, ptr %i.dg, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !16

bb.ag:                                            ; preds = %bb.ae
  %i.ef = icmp ult i16 %i.ca, 24
  br i1 %i.ef, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 -13, ptr %1, align 4
  %i.eg = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.cb, i32 noundef 24)
  store ptr %i.eg, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.eh = getelementptr i8, ptr %i.bd, i64 56
  %.val184 = load i8, ptr %i.eh, align 1
  %i.ei = getelementptr i8, ptr %i.bd, i64 57
  %.val185 = load i8, ptr %i.ei, align 1
  %i.ej = zext i8 %.val184 to i16
  %i.ek = shl nuw i16 %i.ej, 8
  %i.el = zext i8 %.val185 to i16
  %i.em = or disjoint i16 %i.ek, %i.el
  %i.en = getelementptr i8, ptr %i.bq, i64 24
  store i16 %i.em, ptr %i.en, align 8
  %i.eo = getelementptr i8, ptr %i.bd, i64 58
  %.val182 = load i8, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %i.bd, i64 59
  %.val183 = load i8, ptr %i.ep, align 1
  %i.eq = zext i8 %.val182 to i16
  %i.er = shl nuw i16 %i.eq, 8
  %i.es = zext i8 %.val183 to i16
  %i.et = or disjoint i16 %i.er, %i.es
  br label %.loopexit.sink.split

bb.aj:                                            ; preds = %bb.ab
  %i.eu = and i8 %i.bu, -4
  %or.cond = icmp eq i8 %i.eu, 20
  br i1 %or.cond, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr i8, ptr %i.bq, i64 4
  store i32 16908288, ptr %i.ev, align 4
  %i.ew = getelementptr i8, ptr %i.bq, i64 24
  store i16 0, ptr %i.ew, align 8
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ai, %bb.ak
  %.sink = phi i16 [ 0, %bb.ak ], [ %i.et, %bb.ai ]
  %i.ex = getelementptr i8, ptr %i.bq, i64 26
  store i16 %.sink, ptr %i.ex, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit.sink.split, %bb.aj, %bb.af, %bb.ae
  %i.ey = zext nneg i32 %i.cw to i64
  %i.ez = getelementptr i8, ptr %i.bd, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1
  %.not177 = icmp eq i8 %i.fb, 0
  br i1 %.not177, label %bb.al, label %g_strdup_inline.exit180

g_strdup_inline.exit180:                          ; preds = %.loopexit
  store i32 -13, ptr %1, align 4
  %i.fc = call noalias dereferenceable_or_null(80) ptr @g_malloc(i64 noundef 80) #12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(80) %i.fc, ptr noundef nonnull align 1 dereferenceable(80) @.str.6, i64 noundef 80, i1 noundef false) #11
  store ptr %i.fc, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.al:                                            ; preds = %.loopexit
  %i.fd = zext nneg i32 %i.cx to i64
  %i.fe = getelementptr i8, ptr %i.bd, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -1
  %i.fg = load i8, ptr %i.ff, align 1
  %.not178 = icmp eq i8 %i.fg, 0
  br i1 %.not178, label %bb.am, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.al
  store i32 -13, ptr %1, align 4
  %i.fh = call noalias dereferenceable_or_null(75) ptr @g_malloc(i64 noundef 75) #12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(75) %i.fh, ptr noundef nonnull align 1 dereferenceable(75) @.str.7, i64 noundef 75, i1 noundef false) #11
  store ptr %i.fh, ptr %2, align 8
  call fastcc void @destroy_k12_file_data(ptr noundef %i.e)
  call void @g_free(ptr noundef %i.bq)
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.fi = getelementptr i8, ptr %i.bd, i64 36
  %i.fj = zext i16 %i.ca to i64
  %i.fk = getelementptr i8, ptr %i.fi, i64 %i.fj  ; 2 uses
  %i.fl = zext i16 %i.ch to i64                   ; 2 uses
  %i.fm = call ptr @g_memdup2(ptr noundef %i.fk, i64 noundef %i.fl) #13
  %i.fn = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %i.fk, i64 %i.fl
  %i.fp = zext i16 %i.co to i64
  %i.fq = call ptr @g_memdup2(ptr noundef %i.fo, i64 noundef %i.fp) #13 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.bq, i64 16
  store ptr %i.fq, ptr %i.fr, align 8
  %i.fs = call ptr @ascii_strdown_inplace(ptr noundef %i.fq) ; 0 uses
  %i.ft = load ptr, ptr %i.h, align 8
  %i.fu = load i32, ptr %i.bq, align 8
  %i.fv = zext i32 %i.fu to i64
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = call i32 @g_hash_table_insert(ptr noundef %i.ft, ptr noundef %i.fw, ptr noundef %i.bq) ; 0 uses
  br label %bb.ap

bb.an:                                            ; preds = %bb.s
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.9)
  %i.fy = getelementptr i8, ptr %i.bd, i64 8
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = call i32 @llvm.bswap.i32(i32 %i.fz)
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %i.ga)
  %i.gb = getelementptr i8, ptr %i.bd, i64 12
  %i.gc = load i32, ptr %i.gb, align 1
  %i.gd = call i32 @llvm.bswap.i32(i32 %i.gc)
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef %i.gd)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.s
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %i.bl)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ge = add nuw nsw i64 %i.aw, %i.ay
  %i.gf = load i32, ptr %i.f, align 4
  %i.gg = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gg, ptr %i.f, align 4
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %._crit_edge, label %bb.j

bb.aq:                                            ; preds = %bb.q
  %i.gi = load i32, ptr @k12_file_type_subtype, align 4
  %i.gj = getelementptr i8, ptr %0, i64 20
  store i32 %i.gi, ptr %i.gj, align 4
  %i.gk = getelementptr i8, ptr %0, i64 168
  store i32 80, ptr %i.gk, align 8
  %i.gl = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.gl, align 8
  %i.gm = getelementptr i8, ptr %0, i64 136
  store ptr @k12_read, ptr %i.gm, align 8
  %i.gn = getelementptr i8, ptr %0, i64 144
  store ptr @k12_seek_read, ptr %i.gn, align 8
  %i.go = getelementptr i8, ptr %0, i64 160
  store ptr @k12_close, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.gp, align 8
  %i.gq = getelementptr i8, ptr %0, i64 172
  store i32 9, ptr %i.gq, align 4
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
  %.051 = phi i32 [ 4, %bb.a ], [ 20, %bb.b ]     ; 2 uses
  %i.g = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = tail call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.a, i32 noundef 4, ptr noundef %4, ptr noundef %5)
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.a, align 8
  %.val56 = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %.val, i64 %.val56
  %i.j = load i32, ptr %i.i, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)  ; 5 uses
  %i.l = sub nsw i32 8188, %i.d                   ; 3 uses
  %i.m = icmp ult i32 %i.k, 8
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -13, ptr %4, align 4
  %i.n = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef %i.k)
  store ptr %i.n, ptr %5, align 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i32 %i.k, 262144
  br i1 %i.o, label %bb.g, label %.peel.begin

bb.g:                                             ; preds = %bb.f
  store i32 -13, ptr %4, align 4
  %i.p = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef %i.k, i32 noundef 262144)
  store ptr %i.p, ptr %5, align 8
  br label %.loopexit

.peel.begin:                                      ; preds = %bb.f
  %i.q = add nsw i32 %i.k, -4                     ; 3 uses
  %i.r = icmp ugt i32 %i.l, %i.q
  br i1 %i.r, label %.loopexit62, label %bb.h

bb.h:                                             ; preds = %.peel.begin
  %i.s = tail call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.a, i32 noundef %i.l, ptr noundef %4, ptr noundef %5)
  br i1 %i.s, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.t = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 16, ptr noundef %4, ptr noundef %5)
  br i1 %i.t, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.u = sub nsw i32 %.051, %i.d
  %i.v = add nsw i32 %i.u, 8204                   ; 3 uses
  %i.w = sub nsw i32 %i.q, %i.l                   ; 4 uses
  %.not.peel = icmp eq i32 %i.w, 0
  br i1 %.not.peel, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.j
  %i.x = icmp ult i32 %i.w, 8192
end_hunk_0
