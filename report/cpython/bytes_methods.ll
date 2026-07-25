inline.NumInlined: 37
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@find_internal:bb.a

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %6, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %parse_args_finds_byte.exit.thread13, %parse_args_finds_byte.exit, %bb.g
  %.not5717 = phi i1 [ false, %bb.g ], [ true, %parse_args_finds_byte.exit ], [ true, %parse_args_finds_byte.exit.thread13 ]
  %.046 = phi ptr [ %i.q, %bb.g ], [ %i.a, %parse_args_finds_byte.exit ], [ %i.a, %parse_args_finds_byte.exit.thread13 ] ; 7 uses
  %.045 = phi i64 [ %i.s, %bb.g ], [ 1, %parse_args_finds_byte.exit ], [ 1, %parse_args_finds_byte.exit.thread13 ] ; 12 uses
  %i.t = icmp sgt i64 %4, %1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp slt i64 %4, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = add i64 %4, %1
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.048 = phi i64 [ %4, %bb.i ], [ %spec.store.select, %bb.j ], [ %1, %bb.h ] ; 4 uses
  %i.w = icmp slt i64 %3, 0
  %i.x = add i64 %3, %1
  %spec.store.select1 = call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %.049 = select i1 %i.w, i64 %spec.store.select1, i64 %3 ; 8 uses
  %i.y = sub i64 %.048, %.049                     ; 7 uses
  %i.z = icmp slt i64 %i.y, %.045
  br i1 %i.z, label %stringlib_find_slice.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %.045, 1
  %i.ab = icmp sgt i32 %5, 0                      ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %0, i64 %.049     ; 7 uses
  %i.ad = load i8, ptr %.046, align 1, !tbaa !11  ; 4 uses
  br i1 %i.ab, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %0, i64 %.048     ; 2 uses
  %i.af = icmp sgt i64 %i.y, 15
  br i1 %i.af, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.ag = icmp ult ptr %i.ac, %i.ae
  br i1 %i.ag, label %.lr.ph.i, label %stringlib_find_slice.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = sext i8 %i.ad to i32
  %i.ai = call ptr @memchr(ptr noundef %i.ac, i32 noundef %i.ah, i64 noundef %i.y) #15 ; 2 uses
  %.not.i60 = icmp eq ptr %i.ai, null
  br i1 %.not.i60, label %stringlib_find_slice.exit, label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.01721.i = phi ptr [ %i.al, %bb.p ], [ %i.ac, %.preheader.i ] ; 3 uses
  %i.aj = load i8, ptr %.01721.i, align 1, !tbaa !11
  %i.ak = icmp eq i8 %i.aj, %i.ad
  br i1 %i.ak, label %stringlib_find_char.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %.01721.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.al, %i.ae
  br i1 %exitcond.not.i, label %stringlib_find_slice.exit, label %.lr.ph.i, !llvm.loop !51

bb.q:                                             ; preds = %bb.m
  %i.am = icmp sgt i64 %i.y, 15
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = sext i8 %i.ad to i32
  %i.ao = call ptr @memrchr(ptr noundef %i.ac, i32 noundef %i.an, i64 noundef %i.y) #15 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ao, null
  br i1 %.not.i62, label %stringlib_find_slice.exit, label %stringlib_find_char.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %0, i64 %.048     ; 2 uses
  %i.aq = icmp ugt ptr %i.ap, %i.ac
  br i1 %i.aq, label %.lr.ph, label %stringlib_find_slice.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ar = icmp ugt ptr %i.as, %i.ac
  br i1 %i.ar, label %.lr.ph, label %stringlib_find_slice.exit, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.0.i6155 = phi ptr [ %i.as, %bb.t ], [ %i.ap, %bb.s ]
  %i.as = getelementptr i8, ptr %.0.i6155, i64 -1 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = icmp eq i8 %i.at, %i.ad
  br i1 %i.au, label %stringlib_find_char.exit, label %bb.t, !llvm.loop !52

stringlib_find_char.exit:                         ; preds = %.lr.ph, %.lr.ph.i, %bb.r, %bb.o
  %.lcssa.sink = phi ptr [ %i.ao, %bb.r ], [ %.01721.i, %.lr.ph.i ], [ %i.ai, %bb.o ], [ %i.as, %.lr.ph ]
  %.lcssa.sink.fr = freeze ptr %.lcssa.sink
  %i.av = ptrtoint ptr %.lcssa.sink.fr to i64
  %i.aw = ptrtoint ptr %i.ac to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  %i.az = select i1 %i.ay, i64 0, i64 %.049
  %spec.select = add nuw i64 %i.az, %i.ax
  br label %stringlib_find_slice.exit

bb.u:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ba = icmp eq i64 %.045, 0
  br i1 %i.ba, label %stringlib_find_slice.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %0, i64 %.049
  %i.bc = call fastcc i64 @fastsearch(ptr noundef %i.bb, i64 noundef %i.y, ptr noundef %.046, i64 noundef range(i64 2, 1) %.045, i64 noundef -1, i32 noundef 1) ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 0
  %i.be = select i1 %i.bd, i64 0, i64 %.049
  %spec.select.i.i = add i64 %i.be, %i.bc
  br label %stringlib_find_slice.exit

bb.x:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %0, i64 %.049
  %i.bg = icmp eq i64 %.045, 0
  br i1 %i.bg, label %stringlib_find_slice.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = icmp slt i64 %.045, 2
  br i1 %i.bh, label %stringlib_find_slice.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = add nsw i64 %.045, -1                   ; 6 uses
  %i.bj = load i8, ptr %.046, align 1, !tbaa !11  ; 5 uses
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  %xtraiter = and i64 %i.bi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %bb.z
  %i.bn = getelementptr i8, ptr %.046, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11  ; 2 uses
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bm                     ; 2 uses
  %i.bt = icmp eq i8 %i.bo, %i.bj
  %i.bu = add nsw i64 %.045, -2                   ; 2 uses
  %spec.select.i77.i.i.i.prol = select i1 %i.bt, i64 %i.bu, i64 %i.bi ; 2 uses
  br label %.lr.ph.i76.i.i.i.prol.loopexit

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %bb.z
  %.04660.i.i.i.i.unr = phi i64 [ %i.bi, %bb.z ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.bm, %bb.z ], [ %i.bs, %.lr.ph.i76.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.bi, %bb.z ], [ %i.bu, %.lr.ph.i76.i.i.i.prol ]
  %.lcssa62.unr = phi i64 [ poison, %bb.z ], [ %i.bs, %.lr.ph.i76.i.i.i.prol ]
  %spec.select.i77.i.i.i.lcssa.unr = phi i64 [ poison, %bb.z ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %i.bv = icmp eq i64 %.045, 2
  br i1 %i.bv, label %.preheader56.i.i.i.i, label %.lr.ph.i76.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %.lr.ph.i76.i.i.i.prol.loopexit
  %.lcssa62 = phi i64 [ %.lcssa62.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %i.di, %.lr.ph.i76.i.i.i ] ; 2 uses
  %spec.select.i77.i.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.i.lcssa.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ]
  %i.bw = sub i64 %i.y, %.045                     ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  br i1 %i.bx, label %.lr.ph66.split.us.i.i.i.i, label %stringlib_find_slice.exit

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.ae
  %.15065.us.i.i.i.i = phi i64 [ %i.ct, %bb.ae ], [ %i.bw, %.preheader56.i.i.i.i ]
  %.15065.us.i.i.fr.i.i = freeze i64 %.15065.us.i.i.i.i ; 6 uses
  %i.by = getelementptr i8, ptr %i.bf, i64 %.15065.us.i.i.fr.i.i ; 4 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = icmp eq i8 %i.bz, %i.bj
  br i1 %i.ca, label %.preheader.us.i80.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i79.i.i.i = icmp eq i64 %.15065.us.i.i.fr.i.i, 0
  br i1 %.not.us.i79.i.i.i, label %stringlib_find_slice.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr i8, ptr %i.by, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = and i8 %i.cc, 63
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %.lcssa62
  %.not51.us.i.i.i.i = icmp eq i64 %i.cg, 0
  %i.ch = select i1 %.not51.us.i.i.i.i, i64 %.045, i64 0
  br label %bb.ae

.preheader.us.i80.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %7
  %.04862.us.i.i.i.i = phi i64 [ %8, %7 ], [ %i.bi, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 %.04862.us.i.i.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = getelementptr i8, ptr %.046, i64 %.04862.us.i.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %.not52.us.i.i.i.i = icmp eq i8 %i.cj, %i.cl
  br i1 %.not52.us.i.i.i.i, label %7, label %.thread.us.i.i.i.i

7:                                                ; preds = %.preheader.us.i80.i.i.i
  %8 = add nsw i64 %.04862.us.i.i.i.i, -1
  %9 = icmp sgt i64 %.04862.us.i.i.i.i, 1
  br i1 %9, label %.preheader.us.i80.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !53

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i80.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.15065.us.i.i.fr.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread.us.i.i.i.i
  %i.cm = getelementptr i8, ptr %i.by, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = and i8 %i.cn, 63
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %.lcssa62
  %.not54.us.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not54.us.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.us.i.i.i.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.lcssa, %bb.ad ], [ %i.ch, %bb.ab ], [ %.045, %bb.ac ]
  %i.cs = sub nsw i64 %.15065.us.i.i.fr.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = icmp sgt i64 %i.cs, 0
  br i1 %i.cu, label %.lr.ph66.split.us.i.i.i.i, label %stringlib_find_slice.exit, !llvm.loop !54

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.04660.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ], [ %.04660.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i76.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04958.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i76.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 4 uses
  %i.cv = getelementptr i8, ptr %.046, i64 %.04958.i.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11  ; 2 uses
  %i.cx = and i8 %i.cw, 63
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = or i64 %i.cz, %.04759.i.i.i.i
  %i.db = icmp eq i8 %i.cw, %i.bj
  %i.dc = add nsw i64 %.04958.i.i.i.i, -1         ; 2 uses
  %spec.select.i77.i.i.i = select i1 %i.db, i64 %i.dc, i64 %.04660.i.i.i.i
  %i.dd = getelementptr i8, ptr %.046, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11  ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = or i64 %i.dh, %i.da                     ; 2 uses
  %i.dj = icmp eq i8 %i.de, %i.bj
  %i.dk = add nsw i64 %.04958.i.i.i.i, -2         ; 2 uses
  %spec.select.i77.i.i.i.1 = select i1 %i.dj, i64 %i.dk, i64 %spec.select.i77.i.i.i ; 2 uses
  %i.dl = icmp sgt i64 %.04958.i.i.i.i, 2
  br i1 %i.dl, label %.lr.ph.i76.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !55

fastsearch.exit.i.i:                              ; preds = %7
  %i.dm = icmp slt i64 %.15065.us.i.i.fr.i.i, 0
  %i.dn = select i1 %i.dm, i64 0, i64 %.049
  %spec.select.i.i63 = add i64 %i.dn, %.15065.us.i.i.fr.i.i
  br label %stringlib_find_slice.exit

stringlib_find_slice.exit:                        ; preds = %bb.ae, %bb.aa, %bb.t, %bb.p, %bb.s, %stringlib_find_char.exit, %bb.r, %.preheader.i, %bb.o, %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.k
  %.1 = phi i64 [ %.049, %bb.v ], [ -1, %bb.k ], [ -1, %.preheader.i ], [ -1, %bb.s ], [ %spec.select, %stringlib_find_char.exit ], [ %spec.select.i.i, %bb.w ], [ %.048, %bb.x ], [ -1, %bb.y ], [ %spec.select.i.i63, %fastsearch.exit.i.i ], [ -1, %.preheader56.i.i.i.i ], [ -1, %bb.p ], [ -1, %bb.r ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.aa ], [ -1, %bb.ae ] ; 2 uses
  br i1 %.not5717, label %parse_args_finds_byte.exit.thread, label %bb.af

bb.af:                                            ; preds = %stringlib_find_slice.exit
  call void @PyBuffer_Release(ptr noundef nonnull %6) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread:                ; preds = %bb.d, %.thread.i, %_PyIndex_Check.exit.thread.i, %stringlib_find_slice.exit, %bb.af, %bb.f
  %.047 = phi i64 [ %.1, %stringlib_find_slice.exit ], [ -2, %bb.f ], [ %.1, %bb.af ], [ -2, %_PyIndex_Check.exit.thread.i ], [ -2, %.thread.i ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.047
}

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_index(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1) ; 2 uses
  switch i64 %i.a, label %bb.c [
    i64 -2, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_rfind(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef -1) ; 2 uses
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_rindex(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef -1) ; 2 uses
  switch i64 %i.a, label %bb.c [
    i64 -2, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.b = tail call i32 @PyObject_CheckBuffer(ptr noundef %2) #14
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %parse_args_finds_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val14.i = load ptr, ptr %i.c, align 8, !tbaa !38 ; 2 uses
  %i.d = getelementptr i8, ptr %.val14.i, i64 96
  %.val14.val.i = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq ptr %.val14.val.i, null
  br i1 %.not.i.i, label %_PyIndex_Check.exit.thread.i, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.val14.val.i, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %.not3.i = icmp eq ptr %i.f, null
  br i1 %.not3.i, label %_PyIndex_Check.exit.thread.i, label %bb.c

_PyIndex_Check.exit.thread.i:                     ; preds = %_PyIndex_Check.exit.i, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !35
  %i.h = getelementptr i8, ptr %.val14.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.10, ptr noundef %i.i) #14 ; 0 uses
  br label %parse_args_finds_byte.exit.thread

bb.c:                                             ; preds = %_PyIndex_Check.exit.i
  %i.k = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #14 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @PyErr_Occurred() #14
  %.not13.i = icmp eq ptr %i.m, null
  br i1 %.not13.i, label %.thread.i, label %parse_args_finds_byte.exit.thread

bb.e:                                             ; preds = %bb.c
  %or.cond.i = icmp ugt i64 %i.k, 255
  br i1 %or.cond.i, label %.thread.i, label %parse_args_finds_byte.exit.thread38

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.7) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread38:              ; preds = %bb.e
  %i.o = trunc nuw i64 %i.k to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !11
  br label %bb.h

parse_args_finds_byte.exit:                       ; preds = %bb.a
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %parse_args_finds_byte.exit
  %i.p = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 0) #14
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.g, label %parse_args_finds_byte.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %5, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %parse_args_finds_byte.exit.thread38, %parse_args_finds_byte.exit, %bb.g
  %.not2842 = phi i1 [ false, %bb.g ], [ true, %parse_args_finds_byte.exit ], [ true, %parse_args_finds_byte.exit.thread38 ]
  %.020 = phi ptr [ %i.q, %bb.g ], [ %i.a, %parse_args_finds_byte.exit ], [ %i.a, %parse_args_finds_byte.exit.thread38 ]
  %.019 = phi i64 [ %i.s, %bb.g ], [ 1, %parse_args_finds_byte.exit ], [ 1, %parse_args_finds_byte.exit.thread38 ] ; 2 uses
  %i.t = icmp sgt i64 %4, %1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp slt i64 %4, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = add i64 %4, %1
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  br label %bb.k

end_hunk_0
begin_hunk_1_@fastsearch:bb.a
  %i.x = sub i64 %i.v, %i.w
  br label %stringlib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %stringlib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i67144 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i67144, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !52

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %stringlib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !11     ; 3 uses
  br i1 %i.ah, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi145 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !11
  %wide.load146 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !11
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load146, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi145, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader147

.lr.ph.i69.preheader147:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader147, %.lr.ph.i69
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader147 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader147 ]
  %i.at = getelementptr i8, ptr %0, i64 %.09.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = icmp eq i8 %i.au, %i.ai
  %i.aw = zext i1 %i.av to i64
  %spec.select.i = add i64 %.078.i, %i.aw         ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i70, label %stringlib_find_char.exit, label %.lr.ph.i69, !llvm.loop !65

.lr.ph.i71:                                       ; preds = %bb.p, %bb.r
  %.016.i72 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i71
  %i.bb = add i64 %.016.i72, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %stringlib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i73, label %stringlib_find_char.exit, label %.lr.ph.i71, !llvm.loop !66

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 12 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11  ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dv, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dr, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod164 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11  ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.179.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa161 = phi i64 [ %i.dr, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bv = sub i64 %1, %3                          ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa161, %i.bz                ; 2 uses
  %.not108.i = icmp slt i64 %i.bv, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.ae, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.da, %bb.ae ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ae ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.ae

bb.y:                                             ; preds = %.preheader.us.i, %6
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %7, %6 ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.db, i64 %.0102.us.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11
  %.not90.us.i = icmp eq i8 %i.cn, %i.cp
  br i1 %.not90.us.i, label %6, label %._crit_edge104.us.i

6:                                                ; preds = %bb.y
  %7 = add nuw nsw i64 %.0102.us.i, 1             ; 2 uses
  %exitcond179.not.i = icmp eq i64 %7, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.y, !llvm.loop !67

._crit_edge104.us.i:                              ; preds = %bb.y
  %i.cq = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cq, %i.bv
  br i1 %.not91.us.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge104.us.i
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = and i8 %i.cs, 63
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ca
  %.not92.us.i = icmp eq i64 %i.cw, 0
  br i1 %.not92.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge104.us.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.aa ], [ %3, %bb.z ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ae

._crit_edge104.us.thread.i.loopexit:              ; preds = %6
  br i1 %.not93.i, label %bb.ac, label %stringlib_find_char.exit

bb.ac:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.cx = add i64 %.074109.us.i, 1                ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %4
  br i1 %i.cy, label %stringlib_find_char.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = add i64 %.066110.us.i, %i.bi
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.x, %bb.w
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.w ], [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.ab ], [ %i.cx, %bb.ad ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.w ], [ %spec.select.us.i, %bb.x ], [ %.167.us.i, %bb.ab ], [ %i.cz, %bb.ad ]
  %i.da = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.da, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !68

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.db = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dv, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.dr, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bi, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.dc = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11  ; 2 uses
  %i.de = and i8 %i.dd, 63
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = or i64 %i.dg, %.06999.i
  %i.di = icmp eq i8 %i.dd, %i.bk
  %i.dj = xor i64 %.068100.i, -1
  %i.dk = add nsw i64 %i.bi, %i.dj
  %.179.i = select i1 %i.di, i64 %i.dk, i64 %.07898.i
  %i.dl = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !11  ; 2 uses
  %i.do = and i8 %i.dn, 63
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = or i64 %i.dq, %i.dh                     ; 3 uses
  %i.ds = icmp eq i8 %i.dn, %i.bk
  %i.dt = xor i64 %.068100.i, -2
  %i.du = add nsw i64 %i.bi, %i.dt
  %.179.i.1 = select i1 %i.ds, i64 %i.du, i64 %.179.i ; 3 uses
  %i.dv = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.ae, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ae ]
  %i.dw = icmp eq i32 %5, 0
  %i.dx = select i1 %i.dw, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.af:                                            ; preds = %bb.u
  %i.dy = lshr i64 %3, 2
  %i.dz = mul nuw nsw i64 %i.dy, 3
  %i.ea = lshr i64 %1, 2
  %i.eb = icmp samesign ult i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ec = icmp eq i32 %5, 1
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.aj:                                            ; preds = %bb.af
  %i.ef = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.s
  %i.eg = add nsw i64 %3, -1                      ; 6 uses
  %i.eh = load i8, ptr %2, align 1, !tbaa !11     ; 5 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej                    ; 2 uses
  %xtraiter166 = and i64 %i.eg, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.ak
  %i.el = getelementptr i8, ptr %2, i64 %i.eg
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11  ; 2 uses
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = or i64 %i.ep, %i.ek                     ; 2 uses
  %i.er = icmp eq i8 %i.em, %i.eh
  %i.es = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.er, i64 %i.es, i64 %i.eg ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.ak
  %.04660.i.unr = phi i64 [ %i.eg, %bb.ak ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.ek, %bb.ak ], [ %i.eq, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.eg, %bb.ak ], [ %i.es, %.lr.ph.i76.prol ]
  %.lcssa158.unr = phi i64 [ poison, %bb.ak ], [ %i.eq, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.ak ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.et = icmp eq i64 %3, 2
  br i1 %i.et, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa158 = phi i64 [ %.lcssa158.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gg, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.eu = sub i64 %1, %3                          ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  br i1 %i.ev, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ap
  %.15065.us.i = phi i64 [ %i.fr, %bb.ap ], [ %i.eu, %.preheader56.i ] ; 5 uses
  %i.ew = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11
  %i.ey = icmp eq i8 %i.ex, %i.eh
  br i1 %i.ey, label %.preheader.us.i80, label %bb.al

bb.al:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr i8, ptr %i.ew, i64 -1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !11
  %i.fb = and i8 %i.fa, 63
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = and i64 %i.fd, %.lcssa158
  %.not51.us.i = icmp eq i64 %i.fe, 0
  %i.ff = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ap

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %8
  %.04862.us.i = phi i64 [ %9, %8 ], [ %i.eg, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ew, i64 %.04862.us.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !11
  %i.fi = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !11
  %.not52.us.i = icmp eq i8 %i.fh, %i.fj
  br i1 %.not52.us.i, label %8, label %.thread.us.i

8:                                                ; preds = %.preheader.us.i80
  %9 = add nsw i64 %.04862.us.i, -1
  %10 = icmp sgt i64 %.04862.us.i, 1
  br i1 %10, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !53

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread.us.i
  %i.fk = getelementptr i8, ptr %i.ew, i64 -1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %i.fm = and i8 %i.fl, 63
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %.lcssa158
  %.not54.us.i = icmp eq i64 %i.fp, 0
  br i1 %.not54.us.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread.us.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.ao ], [ %i.ff, %bb.am ], [ %3, %bb.an ]
  %i.fq = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fr = add nsw i64 %i.fq, -1
  %i.fs = icmp sgt i64 %i.fq, 0
  br i1 %i.fs, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !54

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gg, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gi, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.ft = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11  ; 2 uses
  %i.fv = and i8 %i.fu, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = or i64 %i.fx, %.04759.i
  %i.fz = icmp eq i8 %i.fu, %i.eh
  %i.ga = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.fz, i64 %i.ga, i64 %.04660.i
  %i.gb = getelementptr i8, ptr %2, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !11  ; 2 uses
  %i.gd = and i8 %i.gc, 63
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = or i64 %i.gf, %i.fy                     ; 2 uses
  %i.gh = icmp eq i8 %i.gc, %i.eh
  %i.gi = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i77.1 = select i1 %i.gh, i64 %i.gi, i64 %spec.select.i77 ; 2 uses
  %i.gj = icmp sgt i64 %.04958.i, 2
  br i1 %i.gj, label %.lr.ph.i76, label %.preheader56.i, !llvm.loop !55

stringlib_find_char.exit:                         ; preds = %bb.ac, %._crit_edge104.us.thread.i.loopexit, %bb.ap, %bb.al, %8, %bb.n, %bb.i, %bb.r, %bb.q, %.lr.ph.i69, %bb.m, %middle.block, %.preheader56.i, %.loopexit.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.aj, %bb.ai, %bb.ah
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ %4, %bb.q ], [ %.15065.us.i, %8 ], [ -1, %bb.m ], [ %spec.select.i, %.lr.ph.i69 ], [ %i.ed, %bb.ah ], [ %i.ee, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.p, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %bb.n ], [ -1, %bb.i ], [ %i.dx, %.loopexit.i ], [ %i.as, %middle.block ], [ -1, %bb.ap ], [ %.1.i, %bb.r ], [ -1, %bb.al ], [ %4, %bb.ac ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 9223372036854775807, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !11 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bp, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %8
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %9, %8 ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bj, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %8, label %._crit_edge141.us

8:                                                ; preds = %bb.c
  %9 = add nuw nsw i64 %.0139.us, 1               ; 2 uses
  %exitcond225.not = icmp eq i64 %9, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !71

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %8, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.av, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bf, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bh, %bb.j ]
  %i.bi = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bi, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !72

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bj = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bt, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bp, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bk = getelementptr i8, ptr %2, i64 %.094137
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11  ; 2 uses
  %i.bm = and i8 %i.bl, 63
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = or i64 %i.bo, %.095136                  ; 2 uses
  %i.bq = icmp eq i8 %i.bl, %i.d
  %i.br = xor i64 %.094137, -1
  %i.bs = add nsw i64 %i.b, %i.br
  %.1108 = select i1 %i.bq, i64 %i.bs, i64 %.0107135 ; 2 uses
  %i.bt = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

.split.us:                                        ; preds = %bb.d
  %i.bu = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bv = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bw = call fastcc i64 @stringlib__two_way(ptr noundef readonly %i.bu, i64 noundef %i.bv, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = add i64 %i.bw, %.092148.us
  %i.bz = select i1 %i.bx, i64 -1, i64 %i.by
  br label %.thread.thread

bb.m:                                             ; preds = %.split.us
  %i.ca = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cb = call fastcc i64 @stringlib__two_way(ptr noundef %i.bu, i64 noundef %i.bv, ptr noundef %6) ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %stringlib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.cd = icmp eq i64 %i.ca, 1
  br i1 %i.cd, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.ce = add i64 %i.cg, 1                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cf, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cg = phi i64 [ %i.ce, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.cj, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = phi i64 [ %i.cm, %.lr.ph.i ], [ %i.cb, %.lr.ph.i.preheader ]
  %i.ci = add i64 %i.ch, %3
  %i.cj = add i64 %i.ci, %.01930.i249             ; 3 uses
  %i.ck = getelementptr i8, ptr %i.bu, i64 %i.cj
  %i.cl = sub i64 %i.bv, %i.cj
  %i.cm = call fastcc i64 @stringlib__two_way(ptr noundef %i.ck, i64 noundef %i.cl, ptr noundef %6) ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.m
  %.1.ph.i = phi i64 [ 0, %bb.m ], [ %i.ca, %.lr.ph.i.preheader ], [ %i.ca, %.lr.ph.i ], [ %i.cg, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.co = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.cp = icmp eq i32 %5, 0
  %i.cq = select i1 %i.cp, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.l, %stringlib__two_way_count.exit, %.loopexit
  %i.cr = phi i64 [ %i.cq, %.loopexit ], [ %i.bz, %bb.l ], [ %i.co, %stringlib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cr
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #4 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !74
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !76
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !77

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.042.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.03339.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.03140.i.i    ; 2 uses
  %spec.select.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  %i.ad = select i1 %.not37.i.i, i64 %.03140.i.i, i64 0
  %spec.select38.i.i = add i64 %i.ad, %.02941.i.i
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.02941.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.132.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.03140.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.042.i.i, %bb.g ], [ %.02941.i.i, %bb.j ], [ %.042.i.i, %bb.i ] ; 3 uses
  %i.af = add i64 %.130.i.i, %.134.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !77

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.1.us.i.i, %.1.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.1.us.i.i, i64 %.1.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.132.us.i.i, i64 %.132.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !78
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !79
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %stringlib__factorize.exit
  %i.ao = sub i64 %1, %..i
end_hunk_1
begin_hunk_2_@stringlib__preprocess:bb.a
.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !11
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.05361 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub i64 %i.ar, %.05361
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.05361
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nsw i64 %.05361, 1                  ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !83
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !74     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81   ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !79
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr240
  %i.t = sub i64 %.fr240, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1127, align 1, !tbaa !11
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0135199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = getelementptr i8, ptr %i.af, i64 %.0135199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr i8, ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !85

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1136200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1136200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2128, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr i8, ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr240                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6132.us, align 1, !tbaa !11
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6132.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.j
  %.6132.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.j ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %.lr.ph210.us.a

.lr.ph210.us.a:                                   ; preds = %.lr.ph207.us, %3
  %.0209.us.a = phi i64 [ %.fr239, %.lr.ph207.us ], [ %4, %3 ] ; 5 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0209.us.a
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0209.us.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %.not151.us.a = icmp eq i8 %i.by, %i.ca
  br i1 %.not151.us.a, label %3, label %bb.i

3:                                                ; preds = %.lr.ph210.us.a
  %4 = add i64 %.0209.us.a, 1                     ; 2 uses
  %exitcond280.not = icmp eq i64 %4, %.fr240
  br i1 %exitcond280.not, label %..preheader_crit_edge.us, label %.lr.ph210.us.a, !llvm.loop !86

.thread167.us.a:                                  ; preds = %bb.h
  %5 = add nuw nsw i64 %.0124205.us, 1            ; 2 uses
  %exitcond281.not = icmp eq i64 %5, %.fr239
  br i1 %exitcond281.not, label %.thread170, label %bb.h, !llvm.loop !87

bb.h:                                             ; preds = %..preheader_crit_edge.us, %.thread167.us.a
  %.0124205.us = phi i64 [ %5, %.thread167.us.a ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.cb = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %.not153.us = icmp eq i8 %i.cc, %i.ce
  br i1 %.not153.us, label %.thread167.us.a, label %.thread167.us

.thread167.us:                                    ; preds = %bb.h
  %6 = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph210.us.a
  %i.cf = icmp slt i64 %.0209.us.a, %i.o
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.ch = sub i64 %.0209.us.a, %.fr239
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  %.7133.us = select i1 %i.cf, ptr %i.cg, ptr %i.cj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.i ], [ %6, %.thread167.us ] ; 2 uses
  %i.ck = icmp ult ptr %.9.us, %i.j
  br i1 %i.ck, label %.preheader177.us.backedge, label %.thread

..preheader_crit_edge.us:                         ; preds = %3
  br i1 %.not152208, label %bb.h, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.cl = load i8, ptr %.6132.us220, align 1, !tbaa !11
  %i.cm = and i8 %i.cl, 63
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.k, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11  ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %.6132.us220, i64 %i.cq ; 4 uses
  %.not293 = icmp eq i8 %i.cp, 0
  %.not150.us222 = icmp uge ptr %i.cr, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cr, %.preheader177.us217 ], [ %i.cz, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bm
  %i.ct = getelementptr i8, ptr %i.cs, i64 1      ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.cu = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond279.not = icmp eq i64 %i.cu, %.fr239
  br i1 %exitcond279.not, label %.thread170, label %bb.l, !llvm.loop !87

bb.l:                                             ; preds = %.preheader.us227, %bb.k
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cu, %bb.k ] ; 3 uses
  %i.cv = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = getelementptr i8, ptr %i.ct, i64 %.0209.us231
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %.not151.us232 = icmp eq i8 %i.cw, %i.cy
  br i1 %.not151.us232, label %bb.k, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.l
  %i.cz = getelementptr i8, ptr %i.cr, i64 %i.bk  ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.j
  br i1 %i.da, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dh, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.db = load i8, ptr %.6132, align 1, !tbaa !11
  %i.dc = and i8 %i.db, 63
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr i8, ptr %i.k, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11  ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %.6132, i64 %i.dg ; 3 uses
  %.not292 = icmp eq i8 %i.df, 0
  %.not150 = icmp uge ptr %i.dh, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.bm
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  br label %.thread170

.thread170:                                       ; preds = %bb.k, %..preheader_crit_edge.us, %.thread167.us.a, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dj, %.preheader ], [ %i.bw, %.thread167.us.a ], [ %i.ct, %bb.k ]
  %i.dk = ptrtoint ptr %.lcssa to i64
  %i.dl = ptrtoint ptr %0 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.j, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dm, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.j ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @tailmatch(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 -1, 2) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val49 = load i64, ptr %i.b, align 8, !tbaa !56
  %i.c = and i64 %.val49, 134217728
  %.not = icmp eq i64 %i.c, 0
  %.sink54.sroa.gep55 = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sink54.sroa.gep = getelementptr i8, ptr %2, i64 16
  %i.d = getelementptr i8, ptr %2, i64 32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef 0) #14
  %.not47 = icmp eq i32 %i.e, 0
  br i1 %.not47, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %6, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink54.sroa.phi = phi ptr [ %.sink54.sroa.gep, %bb.b ], [ %.sink54.sroa.gep55, %bb.d ]
  %.037 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ]
  %.val50 = load i64, ptr %.sink54.sroa.phi, align 8, !tbaa !59 ; 5 uses
  %i.g = icmp sgt i64 %4, %1
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i64 %4, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = add i64 %4, %1
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.i, i64 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.039 = phi i64 [ %4, %bb.f ], [ %spec.store.select, %bb.g ], [ %1, %bb.e ] ; 3 uses
  %i.j = icmp slt i64 %3, 0
  %i.k = add i64 %3, %1
  %spec.store.select1 = call i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %.040 = select i1 %i.j, i64 %spec.store.select1, i64 %3 ; 5 uses
  %i.l = icmp slt i32 %5, 0
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = sub i64 %1, %.val50
  %i.n = icmp sgt i64 %.040, %i.m
  br i1 %i.n, label %bb.n, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.o = sub i64 %.039, %.040
  %i.p = icmp slt i64 %i.o, %.val50
  %i.q = icmp sgt i64 %.040, %1
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = sub i64 %.039, %.val50
  %spec.select = call i64 @llvm.smax.i64(i64 %i.r, i64 %.040)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1 = phi i64 [ %.040, %bb.i ], [ %spec.select, %bb.k ] ; 2 uses
  %i.s = sub i64 %.039, %.1
  %i.t = icmp slt i64 %i.s, %.val50
  br i1 %i.t, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr i8, ptr %0, i64 %.1
  %bcmp = call i32 @bcmp(ptr %i.u, ptr %.037, i64 %.val50)
  %.not48 = icmp eq i32 %bcmp, 0
  br i1 %.not48, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.038.ph = phi i32 [ 0, %bb.n ], [ 1, %bb.m ]
  call void @PyBuffer_Release(ptr noundef nonnull %6) #14
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.c
  %.038 = phi i32 [ -1, %bb.c ], [ %.038.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.038
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #11

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !13}
!28 = !{!29, !32, i64 16}
!29 = !{!"", !30, i64 0, !31, i64 8, !32, i64 16, !32, i64 24, !8, i64 32, !8, i64 36, !33, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !30, i64 72}
!30 = !{!"any pointer", !9, i64 0}
!31 = !{!"p1 _ZTS7_object", !30, i64 0}
!32 = !{!"long", !9, i64 0}
!33 = !{!"p1 omnipotent char", !30, i64 0}
!34 = !{!"p1 long", !30, i64 0}
end_hunk_2
