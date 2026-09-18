Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytes_methods?download=true
inline.NumInlined: 37
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@find_internal:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
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
  br i1 %or.cond.i, label %.thread.i, label %parse_args_finds_byte.exit.thread13

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.7) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread13:              ; preds = %bb.e
  %i.o = trunc nuw i64 %i.k to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !17
  br label %bb.h

parse_args_finds_byte.exit:                       ; preds = %bb.a
  %.not57 = icmp eq ptr %2, null
  br i1 %.not57, label %bb.h, label %bb.f

bb.f:                                             ; preds = %parse_args_finds_byte.exit
  %i.p = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef 0) #14
  %.not58 = icmp eq i32 %i.p, 0
  br i1 %.not58, label %bb.g, label %parse_args_finds_byte.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %6, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26
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
  %i.ad = load i8, ptr %.046, align 1, !tbaa !17  ; 4 uses
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
  %.021.i = phi ptr [ %i.al, %bb.p ], [ %i.ac, %.preheader.i ] ; 3 uses
  %i.aj = load i8, ptr %.021.i, align 1, !tbaa !17
  %i.ak = icmp eq i8 %i.aj, %i.ad
  br i1 %i.ak, label %stringlib_find_char.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %.021.i, i64 1    ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.al, %i.ae
  br i1 %exitcond.not.i, label %stringlib_find_slice.exit, label %.lr.ph.i, !llvm.loop !1

bb.q:                                             ; preds = %bb.m
  %i.am = icmp sgt i64 %i.y, 15
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = sext i8 %i.ad to i32
  %i.ao = call ptr @memrchr(ptr noundef %i.ac, i32 noundef %i.an, i64 noundef %i.y) #15 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ao, null
  br i1 %.not.i61, label %stringlib_find_slice.exit, label %stringlib_find_char.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %0, i64 %.048     ; 2 uses
  %i.aq = icmp ugt ptr %i.ap, %i.ac
  br i1 %i.aq, label %.lr.ph, label %stringlib_find_slice.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ar = icmp ugt ptr %i.as, %i.ac
  br i1 %i.ar, label %.lr.ph, label %stringlib_find_slice.exit, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.0.i55 = phi ptr [ %i.as, %bb.t ], [ %i.ap, %bb.s ]
  %i.as = getelementptr i8, ptr %.0.i55, i64 -1   ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = icmp eq i8 %i.at, %i.ad
  br i1 %i.au, label %stringlib_find_char.exit, label %bb.t, !llvm.loop !2

stringlib_find_char.exit:                         ; preds = %.lr.ph, %.lr.ph.i, %bb.r, %bb.o
  %.lcssa.sink = phi ptr [ %i.ao, %bb.r ], [ %.021.i, %.lr.ph.i ], [ %i.ai, %bb.o ], [ %i.as, %.lr.ph ]
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
  %i.bj = load i8, ptr %.046, align 1, !tbaa !17  ; 5 uses
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  %xtraiter = and i64 %i.bi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i75.i.i.i.prol.loopexit, label %.lr.ph.i75.i.i.i.prol

.lr.ph.i75.i.i.i.prol:                            ; preds = %bb.z
  %i.bn = getelementptr i8, ptr %.046, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17  ; 2 uses
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bm                     ; 2 uses
  %i.bt = icmp eq i8 %i.bo, %i.bj
  %i.bu = add nsw i64 %.045, -2                   ; 2 uses
  %spec.select.i76.i.i.i.prol = select i1 %i.bt, i64 %i.bu, i64 %i.bi ; 2 uses
  br label %.lr.ph.i75.i.i.i.prol.loopexit

.lr.ph.i75.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i75.i.i.i.prol, %bb.z
  %.060.i.i.i.i.unr = phi i64 [ %i.bi, %bb.z ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.bi, %bb.z ], [ %i.bu, %.lr.ph.i75.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.bm, %bb.z ], [ %i.bs, %.lr.ph.i75.i.i.i.prol ]
  %.lcssa62.unr = phi i64 [ poison, %bb.z ], [ %i.bs, %.lr.ph.i75.i.i.i.prol ]
  %spec.select.i76.i.i.i.lcssa.unr = phi i64 [ poison, %bb.z ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %i.bv = icmp eq i64 %.045, 2
  br i1 %i.bv, label %.preheader56.i.i.i.i, label %.lr.ph.i75.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i75.i.i.i, %.lr.ph.i75.i.i.i.prol.loopexit
  %.lcssa62 = phi i64 [ %.lcssa62.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %i.dj, %.lr.ph.i75.i.i.i ] ; 2 uses
  %spec.select.i76.i.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.i.lcssa.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ]
  %i.bw = sub nuw i64 %i.y, %.045                 ; 2 uses
  %7 = icmp sgt i64 %i.bw, -1
  br i1 %7, label %.lr.ph66.split.us.i.i.i.i, label %stringlib_find_slice.exit

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.af
  %.14865.us.i.i.i.i = phi i64 [ %i.cu, %bb.af ], [ %i.bw, %.preheader56.i.i.i.i ]
  %.14865.us.i.i.fr.i.i = freeze i64 %.14865.us.i.i.i.i ; 6 uses
  %i.bx = getelementptr i8, ptr %i.bf, i64 %.14865.us.i.i.fr.i.i ; 4 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = icmp eq i8 %i.by, %i.bj
  br i1 %i.bz, label %.preheader.us.i78.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.fr.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %stringlib_find_slice.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr i8, ptr %i.bx, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cc = and i8 %i.cb, 63
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %.lcssa62
  %.not51.us.i.i.i.i = icmp eq i64 %i.cf, 0
  %i.cg = select i1 %.not51.us.i.i.i.i, i64 %.045, i64 0
  br label %bb.af

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.ac
  %.04662.us.i.i.i.i = phi i64 [ %i.cl, %bb.ac ], [ %i.bi, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.ch = getelementptr i8, ptr %i.bx, i64 %.04662.us.i.i.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17
  %i.cj = getelementptr i8, ptr %.046, i64 %.04662.us.i.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %.not52.us.i.i.i.i = icmp eq i8 %i.ci, %i.ck
  br i1 %.not52.us.i.i.i.i, label %bb.ac, label %.thread.us.i.i.i.i

bb.ac:                                            ; preds = %.preheader.us.i78.i.i.i
  %i.cl = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.cm = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.cm, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !3

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.fr.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread.us.i.i.i.i
  %i.cn = getelementptr i8, ptr %i.bx, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = and i64 %i.cr, %.lcssa62
  %.not54.us.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not54.us.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread.us.i.i.i.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.ae ], [ %i.cg, %bb.ab ], [ %.045, %bb.ad ]
  %i.ct = sub nsw i64 %.14865.us.i.i.fr.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.cu = add nsw i64 %i.ct, -1
  %i.cv = icmp sgt i64 %i.ct, 0
  br i1 %i.cv, label %.lr.ph66.split.us.i.i.i.i, label %stringlib_find_slice.exit, !llvm.loop !4

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.cw = getelementptr i8, ptr %.046, i64 %.04759.i.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17  ; 2 uses
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = or i64 %i.da, %.04958.i.i.i.i
  %i.dc = icmp eq i8 %i.cx, %i.bj
  %i.dd = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.dc, i64 %i.dd, i64 %.060.i.i.i.i
  %i.de = getelementptr i8, ptr %.046, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17  ; 2 uses
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = or i64 %i.di, %i.db                     ; 2 uses
  %i.dk = icmp eq i8 %i.df, %i.bj
  %i.dl = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.dk, i64 %i.dl, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.dm = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.dm, label %.lr.ph.i75.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !5

fastsearch.exit.i.i:                              ; preds = %bb.ac
  %i.dn = icmp slt i64 %.14865.us.i.i.fr.i.i, 0
  %i.do = select i1 %i.dn, i64 0, i64 %.049
  %spec.select.i.i62 = add i64 %i.do, %.14865.us.i.i.fr.i.i
  br label %stringlib_find_slice.exit

stringlib_find_slice.exit:                        ; preds = %bb.af, %bb.aa, %bb.t, %bb.p, %bb.s, %stringlib_find_char.exit, %bb.r, %.preheader.i, %bb.o, %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.k
  %.1 = phi i64 [ %.049, %bb.v ], [ -1, %bb.k ], [ -1, %.preheader.i ], [ -1, %bb.s ], [ %spec.select, %stringlib_find_char.exit ], [ %spec.select.i.i, %bb.w ], [ %.048, %bb.x ], [ -1, %bb.y ], [ %spec.select.i.i62, %fastsearch.exit.i.i ], [ -1, %.preheader56.i.i.i.i ], [ -1, %bb.p ], [ -1, %bb.r ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.aa ], [ -1, %bb.af ] ; 2 uses
  br i1 %.not5717, label %parse_args_finds_byte.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %stringlib_find_slice.exit
  call void @PyBuffer_Release(ptr noundef nonnull %6) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread:                ; preds = %bb.d, %.thread.i, %_PyIndex_Check.exit.thread.i, %stringlib_find_slice.exit, %bb.ag, %bb.f
  %.047 = phi i64 [ %.1, %stringlib_find_slice.exit ], [ -2, %bb.f ], [ %.1, %bb.ag ], [ -2, %_PyIndex_Check.exit.thread.i ], [ -2, %.thread.i ], [ -2, %bb.d ]
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
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !27
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
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !27
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
  %.val14.i = load ptr, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  %i.d = getelementptr i8, ptr %.val14.i, i64 96
  %.val14.val.i = load ptr, ptr %i.d, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %.val14.val.i, null
  br i1 %.not.i.i, label %_PyIndex_Check.exit.thread.i, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.val14.val.i, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %.not3.i = icmp eq ptr %i.f, null
  br i1 %.not3.i, label %_PyIndex_Check.exit.thread.i, label %bb.c

_PyIndex_Check.exit.thread.i:                     ; preds = %_PyIndex_Check.exit.i, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !27
  %i.h = getelementptr i8, ptr %.val14.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
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
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.7) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread38:              ; preds = %bb.e
  %i.o = trunc nuw i64 %i.k to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !17
  br label %bb.h

parse_args_finds_byte.exit:                       ; preds = %bb.a
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %parse_args_finds_byte.exit
  %i.p = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 0) #14
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.g, label %parse_args_finds_byte.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %5, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %parse_args_finds_byte.exit.thread38, %parse_args_finds_byte.exit, %bb.g
  %.not2842 = phi i1 [ false, %bb.g ], [ true, %parse_args_finds_byte.exit ], [ true, %parse_args_finds_byte.exit.thread38 ]
  %.019 = phi ptr [ %i.q, %bb.g ], [ %i.a, %parse_args_finds_byte.exit ], [ %i.a, %parse_args_finds_byte.exit.thread38 ]
  %.0 = phi i64 [ %i.s, %bb.g ], [ 1, %parse_args_finds_byte.exit ], [ 1, %parse_args_finds_byte.exit.thread38 ] ; 2 uses
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
  %.020 = phi i64 [ %4, %bb.i ], [ %spec.store.select, %bb.j ], [ %1, %bb.h ]
  %i.w = icmp slt i64 %3, 0
  %i.x = add i64 %3, %1
  %spec.store.select1 = call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %.021 = select i1 %i.w, i64 %spec.store.select1, i64 %3 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %.021
  %i.z = sub i64 %.020, %.021                     ; 3 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %stringlib_count.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %.0, 0
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = call i64 @llvm.sadd.sat.i64(i64 %i.z, i64 1)
  br label %stringlib_count.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = call fastcc i64 @fastsearch(ptr noundef %i.y, i64 noundef %i.z, ptr noundef %.019, i64 noundef %.0, i64 noundef 9223372036854775807, i32 noundef 0)
  %..i = call i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  br label %stringlib_count.exit

stringlib_count.exit:                             ; preds = %bb.k, %bb.m, %bb.n
  %.0.i = phi i64 [ 0, %bb.k ], [ %i.ac, %bb.m ], [ %..i, %bb.n ]
  %i.ae = call ptr @PyLong_FromSsize_t(i64 noundef %.0.i) #14 ; 2 uses
  br i1 %.not2842, label %parse_args_finds_byte.exit.thread, label %bb.o

bb.o:                                             ; preds = %stringlib_count.exit
  call void @PyBuffer_Release(ptr noundef nonnull %5) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread:                ; preds = %bb.d, %.thread.i, %_PyIndex_Check.exit.thread.i, %stringlib_count.exit, %bb.o, %bb.f
end_hunk_0
begin_hunk_1_@fastsearch:bb.a
.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %stringlib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = sext i8 %i.c to i32
  %i.h = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %stringlib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.021.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.021.i, align 1, !tbaa !17
  %i.m = icmp eq i8 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.021.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %stringlib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.021.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.d
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !1

bb.j:                                             ; preds = %bb.d
  %i.r = load i8, ptr %2, align 1, !tbaa !17      ; 2 uses
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = sext i8 %i.r to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #15 ; 2 uses
  %.not.i67 = icmp eq ptr %i.u, null
  br i1 %.not.i67, label %stringlib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %stringlib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %stringlib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i142 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i142, i64 -1  ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !2

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %stringlib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !17     ; 3 uses
  br i1 %i.ah, label %.lr.ph.i68.preheader, label %.lr.ph.i70

.lr.ph.i68.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i68.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i68.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi143 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !17
  %wide.load144 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !17
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load144, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi143, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i68.preheader145

.lr.ph.i68.preheader145:                          ; preds = %.lr.ph.i68.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader145, %.lr.ph.i68
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i68 ], [ %.09.i.ph, %.lr.ph.i68.preheader145 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i68 ], [ %.078.i.ph, %.lr.ph.i68.preheader145 ]
  %i.at = getelementptr i8, ptr %0, i64 %.09.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = icmp eq i8 %i.au, %i.ai
  %i.aw = zext i1 %i.av to i64
  %spec.select.i = add i64 %.078.i, %i.aw         ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i69, label %stringlib_find_char.exit, label %.lr.ph.i68, !llvm.loop !72

.lr.ph.i70:                                       ; preds = %bb.p, %bb.r
  %.016.i71 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i70
  %i.bb = add i64 %.016.i71, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %stringlib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i71, %.lr.ph.i70 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i72, label %stringlib_find_char.exit, label %.lr.ph.i70, !llvm.loop !73

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.al, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 12 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17  ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i73.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i73

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.ds, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod162 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17  ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.171.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i73.epil.preheader
  %.lcssa159 = phi i64 [ %i.ds, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i73.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i73.epil.preheader ]
  %i.bv = sub i64 %1, %3                          ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa159, %i.bz                ; 2 uses
  %.not108.i = icmp slt i64 %i.bv, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.af, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.db, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.af

bb.y:                                             ; preds = %.preheader.us.i, %bb.z
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cq, %bb.z ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.dc, i64 %.0102.us.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %.not90.us.i = icmp eq i8 %i.cn, %i.cp
  br i1 %.not90.us.i, label %bb.z, label %._crit_edge104.us.i

bb.z:                                             ; preds = %bb.y
  %i.cq = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.cq, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.y, !llvm.loop !74

._crit_edge104.us.i:                              ; preds = %bb.y
  %i.cr = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cr, %i.bv
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge104.us.i
  %i.cs = getelementptr i8, ptr %i.bw, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = and i8 %i.ct, 63
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.ca
  %.not92.us.i = icmp eq i64 %i.cx, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge104.us.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.z
  br i1 %.not93.i, label %bb.ad, label %stringlib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.cy = add i64 %.072109.us.i, 1                ; 2 uses
  %i.cz = icmp eq i64 %i.cy, %4
  br i1 %i.cz, label %stringlib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = add i64 %.066110.us.i, %i.bi
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.x, %bb.w
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.w ], [ %.072109.us.i, %bb.x ], [ %.072109.us.i, %bb.ac ], [ %i.cy, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.w ], [ %spec.select.us.i, %bb.x ], [ %.167.us.i, %bb.ac ], [ %i.da, %bb.ae ]
  %i.db = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.db, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !75

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dc = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dw, %.lr.ph.i73 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.ds, %.lr.ph.i73 ]
  %.07098.i = phi i64 [ %i.bi, %.new ], [ %.171.i.1, %.lr.ph.i73 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i73 ]
  %i.dd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17  ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = or i64 %i.dh, %.06999.i
  %i.dj = icmp eq i8 %i.de, %i.bk
  %i.dk = xor i64 %.068100.i, -1
  %i.dl = add nsw i64 %i.bi, %i.dk
  %.171.i = select i1 %i.dj, i64 %i.dl, i64 %.07098.i
  %i.dm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !17  ; 2 uses
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = or i64 %i.dr, %i.di                     ; 3 uses
  %i.dt = icmp eq i8 %i.do, %i.bk
  %i.du = xor i64 %.068100.i, -2
  %i.dv = add nsw i64 %i.bi, %i.du
  %.171.i.1 = select i1 %i.dt, i64 %i.dv, i64 %.171.i ; 3 uses
  %i.dw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i73, !llvm.loop !76

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.375.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.274.us.i, %bb.af ]
  %6 = icmp eq i32 %5, 0
  %i.dx = select i1 %6, i64 %.375.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ag:                                            ; preds = %bb.u
  %i.dy = lshr i64 %3, 2
  %i.dz = mul nuw nsw i64 %i.dy, 3
  %i.ea = lshr i64 %1, 2
  %i.eb = icmp samesign ult i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ec = icmp eq i32 %5, 1
  br i1 %i.ec, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ed = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ee = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ag
  %i.ef = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.s
  %i.eg = add nsw i64 %3, -1                      ; 6 uses
  %i.eh = load i8, ptr %2, align 1, !tbaa !17     ; 5 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej                    ; 2 uses
  %xtraiter164 = and i64 %i.eg, 1
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.al
  %i.el = getelementptr i8, ptr %2, i64 %i.eg
  %i.em = load i8, ptr %i.el, align 1, !tbaa !17  ; 2 uses
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = or i64 %i.ep, %i.ek                     ; 2 uses
  %i.er = icmp eq i8 %i.em, %i.eh
  %i.es = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.prol = select i1 %i.er, i64 %i.es, i64 %i.eg ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.al
  %.060.i.unr = phi i64 [ %i.eg, %bb.al ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %.04759.i.unr = phi i64 [ %i.eg, %bb.al ], [ %i.es, %.lr.ph.i75.prol ]
  %.04958.i.unr = phi i64 [ %i.ek, %bb.al ], [ %i.eq, %.lr.ph.i75.prol ]
  %.lcssa156.unr = phi i64 [ poison, %bb.al ], [ %i.eq, %.lr.ph.i75.prol ]
  %spec.select.i76.lcssa.unr = phi i64 [ poison, %bb.al ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %i.et = icmp eq i64 %3, 2
  br i1 %i.et, label %.preheader56.i, label %.lr.ph.i75

.preheader56.i:                                   ; preds = %.lr.ph.i75, %.lr.ph.i75.prol.loopexit
  %.lcssa156 = phi i64 [ %.lcssa156.unr, %.lr.ph.i75.prol.loopexit ], [ %i.gh, %.lr.ph.i75 ] ; 2 uses
  %spec.select.i76.lcssa = phi i64 [ %spec.select.i76.lcssa.unr, %.lr.ph.i75.prol.loopexit ], [ %spec.select.i76.1, %.lr.ph.i75 ]
  %i.eu = sub i64 %1, %3                          ; 2 uses
  %7 = icmp sgt i64 %i.eu, -1
  br i1 %7, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ar
  %.14865.us.i = phi i64 [ %i.fs, %bb.ar ], [ %i.eu, %.preheader56.i ] ; 5 uses
  %i.ev = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !17
  %i.ex = icmp eq i8 %i.ew, %i.eh
  br i1 %i.ex, label %.preheader.us.i78, label %bb.am

bb.am:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i77, label %stringlib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr i8, ptr %i.ev, i64 -1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = and i8 %i.ez, 63
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = and i64 %i.fc, %.lcssa156
  %.not51.us.i = icmp eq i64 %i.fd, 0
  %i.fe = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.ao
  %.04662.us.i = phi i64 [ %i.fj, %bb.ao ], [ %i.eg, %.lr.ph66.split.us.i ] ; 4 uses
  %i.ff = getelementptr i8, ptr %i.ev, i64 %.04662.us.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !17
  %i.fh = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !17
  %.not52.us.i = icmp eq i8 %i.fg, %i.fi
  br i1 %.not52.us.i, label %bb.ao, label %.thread.us.i

bb.ao:                                            ; preds = %.preheader.us.i78
  %i.fj = add nsw i64 %.04662.us.i, -1
  %i.fk = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.fk, label %.preheader.us.i78, label %stringlib_find_char.exit, !llvm.loop !3

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fl = getelementptr i8, ptr %i.ev, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !17
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %.lcssa156
  %.not54.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i76.lcssa, %bb.aq ], [ %i.fe, %bb.an ], [ %3, %bb.ap ]
  %i.fr = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = icmp sgt i64 %i.fr, 0
  br i1 %i.ft, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !4

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.060.i = phi i64 [ %spec.select.i76.1, %.lr.ph.i75 ], [ %.060.i.unr, %.lr.ph.i75.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gj, %.lr.ph.i75 ], [ %.04759.i.unr, %.lr.ph.i75.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.gh, %.lr.ph.i75 ], [ %.04958.i.unr, %.lr.ph.i75.prol.loopexit ]
  %i.fu = getelementptr i8, ptr %2, i64 %.04759.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !17  ; 2 uses
  %i.fw = and i8 %i.fv, 63
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = or i64 %i.fy, %.04958.i
  %i.ga = icmp eq i8 %i.fv, %i.eh
  %i.gb = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i76 = select i1 %i.ga, i64 %i.gb, i64 %.060.i
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !17  ; 2 uses
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = or i64 %i.gg, %i.fz                     ; 2 uses
  %i.gi = icmp eq i8 %i.gd, %i.eh
  %i.gj = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i76.1 = select i1 %i.gi, i64 %i.gj, i64 %spec.select.i76 ; 2 uses
  %i.gk = icmp sgt i64 %.04759.i, 2
  br i1 %i.gk, label %.lr.ph.i75, label %.preheader56.i, !llvm.loop !5

stringlib_find_char.exit:                         ; preds = %bb.ad, %._crit_edge104.us.thread.i.loopexit, %bb.ar, %bb.am, %bb.ao, %bb.n, %bb.i, %bb.r, %bb.q, %.lr.ph.i68, %bb.m, %middle.block, %.preheader56.i, %.loopexit.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.ak, %bb.aj, %bb.ai
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ %4, %bb.q ], [ %.14865.us.i, %bb.ao ], [ -1, %bb.m ], [ %spec.select.i, %.lr.ph.i68 ], [ %i.ed, %bb.ai ], [ %i.ee, %bb.aj ], [ %i.ef, %bb.ak ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.p, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %bb.n ], [ -1, %bb.i ], [ %i.dx, %.loopexit.i ], [ %i.as, %middle.block ], [ -1, %bb.ar ], [ %.1.i, %bb.r ], [ -1, %bb.am ], [ %4, %bb.ad ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
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
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 9223372036854775807, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17    ; 4 uses
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
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !17 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !17 ; 2 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !77

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
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
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

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !78

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
end_hunk_1
begin_hunk_2_@stringlib_adaptive_find:.lr.ph.preheader
.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @stringlib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %stringlib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %stringlib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #4 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !47
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !48
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !81

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.03339.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !81

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !50
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %stringlib__factorize.exit
  %i.ao = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ao)
  %i.ap = add i64 %., 1
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !51
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %stringlib__factorize.exit
  %i.aq = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.aq, align 8, !tbaa !52
  %i.ar = add nsw i64 %1, -1                      ; 3 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.ba, %.critedge ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 %.05559
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = xor i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 63
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.az = sub nsw i64 %i.ar, %.05559
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !52
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.ba = add nsw i64 %.05559, -1
  %i.bb = icmp sgt i64 %.05559, 0
  br i1 %i.bb, label %.lr.ph, label %.lr.ph62, !llvm.loop !82

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !17
  %i.bf = sub nuw nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub nuw i64 %i.ar, %.061
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.061
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !17
  %i.bn = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !83
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !47     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !52   ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50
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
  %.1138 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1138.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1138, align 1, !tbaa !17
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1138, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0128 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0128, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0126199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = getelementptr i8, ptr %i.af, i64 %.0126199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr i8, ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr i8, ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !85

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1127200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1127200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2139, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr i8, ptr %i.az, i64 %.4141.idx ; 2 uses
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
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6143.us, align 1, !tbaa !17
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6143.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.l
  %.6143.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.l ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph207.us, %bb.i
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cb, %bb.i ] ; 5 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %.not153.us = icmp eq i8 %i.by, %i.ca
  br i1 %.not153.us, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cb = add i64 %.0124205.us, 1                 ; 2 uses
  %exitcond280.not = icmp eq i64 %i.cb, %.fr240
end_hunk_2
