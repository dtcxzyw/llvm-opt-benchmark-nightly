Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/PyDict?download=true
inline.NumInlined: 36
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Dict__set:bb.a
  %.037.i = phi i32 [ %i.ct, %Dict__get_index.exit.i ], [ %i.bf, %.split.i ] ; 2 uses
  %i.cr = icmp ult i32 %.037.i, %i.am
  %i.cs = add i32 %.037.i, 1
  %i.ct = select i1 %i.cr, i32 %i.cs, i32 0       ; 2 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !25
  %i.cx = icmp eq i32 %i.cw, %i.bj
  br i1 %i.cx, label %.split36.us.i, label %Dict__get_index.exit.i

bb.bc:                                            ; preds = %.thread.i, %bb.aw
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.az
  br i1 %exitcond.not, label %Dict__rehash_2x.exit, label %bb.aw, !llvm.loop !54

Dict__rehash_2x.exit:                             ; preds = %bb.bc, %bb.av
  store i32 0, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.ai, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.cz) #11
  call void @c11_vector__dtor(ptr noundef nonnull %i.an) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.bd

bb.bd:                                            ; preds = %Dict__set_index.exit, %Dict__rehash_2x.exit, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @py_dict_delitem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #11
  %i.b = tail call fastcc i32 @Dict__pop(ptr noundef %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @Dict__pop(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = call fastcc zeroext i1 @Dict__probe(ptr noundef %0, ptr noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  br i1 %i.d, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr (...) @py_retval() #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !27
  %i.h = load i32, ptr %i.b, align 4, !tbaa !25   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !15, !range !40, !noundef !41
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = trunc i32 %i.j to i16
  %i.q = zext i32 %i.h to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.q
  store i16 %i.p, ptr %i.r, align 2, !tbaa !23
  br label %Dict__set_index.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.h to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s
  store i32 %i.j, ptr %i.t, align 4, !tbaa !25
  br label %Dict__set_index.exit

Dict__set_index.exit:                             ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @py_newnil(ptr noundef nonnull %i.u) #11
  tail call void @py_newnil(ptr noundef nonnull %i.g) #11
  %i.v = load i32, ptr %0, align 8, !tbaa !13
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %0, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = add i32 %i.y, -1
  %i.aa = load i8, ptr %i.k, align 4, !tbaa !15, !range !40, !noundef !41
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !17  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %Dict__swap_null_index.exit.outer

Dict__swap_null_index.exit.outer:                 ; preds = %Dict__swap_null_index.exit.outer.backedge, %Dict__set_index.exit
  %.0.ph = phi i32 [ %i.h, %Dict__set_index.exit ], [ %i.ah, %Dict__swap_null_index.exit.outer.backedge ] ; 4 uses
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !16
  br label %Dict__swap_null_index.exit

Dict__swap_null_index.exit:                       ; preds = %Dict__swap_null_index.exit.outer, %bb.i
  %.0 = phi i32 [ %i.ah, %bb.i ], [ %.0.ph, %Dict__swap_null_index.exit.outer ] ; 2 uses
  %i.af = icmp ult i32 %.0, %i.z
  %i.ag = add i32 %.0, 1
  %i.ah = select i1 %i.af, i32 %i.ag, i32 0       ; 5 uses
  %i.ai = zext i32 %i.ah to i64                   ; 4 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Dict__swap_null_index.exit
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !23
  %i.al = zext i16 %i.ak to i32
  br label %Dict__get_index.exit

bb.g:                                             ; preds = %Dict__swap_null_index.exit
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25
  br label %Dict__get_index.exit

Dict__get_index.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.al, %bb.f ], [ %i.an, %bb.g ] ; 2 uses
  %i.ao = icmp eq i32 %.0.i, %i.ae
  br i1 %i.ao, label %bb.m, label %bb.h

bb.h:                                             ; preds = %Dict__get_index.exit
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.aq = zext i32 %.0.i to i64
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.at = load i32, ptr %i.x, align 4, !tbaa !14
  %i.au = zext i32 %i.at to i64
  %i.av = urem i64 %i.as, %i.au
  %i.aw = trunc nuw i64 %i.av to i32              ; 2 uses
  %i.ax = icmp uge i32 %.0.ph, %i.aw              ; 2 uses
  %i.ay = icmp ule i32 %.0.ph, %i.ah              ; 2 uses
  %or.cond = and i1 %i.ay, %i.ax
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp ult i32 %i.ah, %i.aw
  %or.cond3 = or i1 %i.ay, %i.ax
  %or.cond45 = and i1 %i.az, %or.cond3
  br i1 %or.cond45, label %bb.j, label %Dict__swap_null_index.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = zext i32 %.0.ph to i64                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !23
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ba
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !23
  store i16 -1, ptr %i.bb, align 2, !tbaa !23
  br label %Dict__swap_null_index.exit.outer.backedge

bb.l:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ba
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !25
  store i32 -1, ptr %i.be, align 4, !tbaa !25
  br label %Dict__swap_null_index.exit.outer.backedge

Dict__swap_null_index.exit.outer.backedge:        ; preds = %bb.l, %bb.k
  br label %Dict__swap_null_index.exit.outer

bb.m:                                             ; preds = %Dict__get_index.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !29 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 16
  br i1 %i.bj, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.bk = load i32, ptr %0, align 8, !tbaa !13
  %i.bl = lshr i32 %i.bi, 1
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #12 ; 6 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.u
  store i32 %.1.i, ptr %i.bh, align 8, !tbaa !29
  %i.bq = load i32, ptr %i.x, align 4, !tbaa !14  ; 5 uses
  %.not42.i = icmp eq i32 %i.bq, 0
  br i1 %.not42.i, label %Dict__compact_entries.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %._crit_edge.i
  %i.br = load i8, ptr %i.k, align 4, !tbaa !15, !range !40, !noundef !41
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !17  ; 4 uses
  %2 = load i32, ptr %i.i, align 8, !tbaa !16     ; 4 uses
  br i1 %i.bs, label %.lr.ph40.split.us.i, label %Dict__get_index.exit.thread.i

.lr.ph40.split.us.i:                              ; preds = %.lr.ph40.i
  %wide.trip.count.i = zext i32 %i.bq to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bu = icmp eq i32 %i.bq, 1
  br i1 %i.bu, label %Dict__get_index.exit.us.i.epil.preheader, label %.lr.ph40.split.us.i.new

.lr.ph40.split.us.i.new:                          ; preds = %.lr.ph40.split.us.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %Dict__get_index.exit.us.i

Dict__get_index.exit.us.i:                        ; preds = %Dict__set_index.exit.us.i.1, %.lr.ph40.split.us.i.new
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph40.split.us.i.new ], [ %indvars.iv.next49.i.1, %Dict__set_index.exit.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph40.split.us.i.new ], [ %niter.next.1, %Dict__set_index.exit.us.i.1 ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv48.i ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !23 ; 2 uses
  %i.bx = zext i16 %i.bw to i32
  %i.by = icmp eq i32 %2, %i.bx
  br i1 %i.by, label %Dict__set_index.exit.us.i, label %bb.p

bb.p:                                             ; preds = %Dict__get_index.exit.us.i
  %i.bz = zext i16 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.cc = trunc i32 %i.cb to i16
  store i16 %i.cc, ptr %i.bv, align 2, !tbaa !23
  br label %Dict__set_index.exit.us.i

Dict__set_index.exit.us.i:                        ; preds = %bb.p, %Dict__get_index.exit.us.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv48.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !23 ; 2 uses
  %i.cg = zext i16 %i.cf to i32
  %i.ch = icmp eq i32 %2, %i.cg
  br i1 %i.ch, label %Dict__set_index.exit.us.i.1, label %bb.q

bb.q:                                             ; preds = %Dict__set_index.exit.us.i
  %i.ci = zext i16 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.ce, align 2, !tbaa !23
  br label %Dict__set_index.exit.us.i.1

Dict__set_index.exit.us.i.1:                      ; preds = %bb.q, %Dict__set_index.exit.us.i
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Dict__compact_entries.exit.loopexit.unr-lcssa, label %Dict__get_index.exit.us.i, !llvm.loop !56

.lr.ph.i:                                         ; preds = %bb.o, %bb.u
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ 0, %bb.o ] ; 4 uses
  %.03136.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.o ] ; 5 uses
  %i.cm = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.cm, i64 %indvars.iv.i ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.co, i16 noundef signext 0) #11
  br i1 %i.cp, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store i32 %.03136.i, ptr %i.cq, align 4, !tbaa !25
  %i.cr = zext i32 %.03136.i to i64
  %.not.i = icmp eq i64 %indvars.iv.i, %i.cr
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.ct = sext i32 %.03136.i to i64
  %i.cu = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cu, ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i64 56, i1 false), !tbaa.struct !43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = add nsw i32 %.03136.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.1.i = phi i32 [ %i.cv, %bb.t ], [ %.03136.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cw = load i32, ptr %i.bh, align 8, !tbaa !29
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next.i, %i.cx
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !57

Dict__get_index.exit.thread.i:                    ; preds = %.lr.ph40.i, %Dict__set_index.exit.i
  %i.cz = phi i32 [ %i.df, %Dict__set_index.exit.i ], [ %i.bq, %.lr.ph40.i ]
  %3 = phi i32 [ %5, %Dict__set_index.exit.i ], [ %2, %.lr.ph40.i ] ; 2 uses
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %Dict__set_index.exit.i ], [ 0, %.lr.ph40.i ] ; 2 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv45.i ; 2 uses
  %i.da = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.db = icmp eq i32 %i.da, %3
  br i1 %i.db, label %Dict__set_index.exit.i, label %bb.v

bb.v:                                             ; preds = %Dict__get_index.exit.thread.i
  %i.dc = zext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25
  store i32 %i.de, ptr %4, align 4, !tbaa !25
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !16
  %.pre.i.a = load i32, ptr %i.x, align 4, !tbaa !14
  br label %Dict__set_index.exit.i

Dict__set_index.exit.i:                           ; preds = %bb.v, %Dict__get_index.exit.thread.i
  %i.df = phi i32 [ %.pre.i.a, %bb.v ], [ %i.cz, %Dict__get_index.exit.thread.i ] ; 2 uses
  %5 = phi i32 [ %.pre.i, %bb.v ], [ %3, %Dict__get_index.exit.thread.i ]
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next46.i, %i.dg
  br i1 %i.dh, label %Dict__get_index.exit.thread.i, label %Dict__compact_entries.exit, !llvm.loop !56

Dict__compact_entries.exit.loopexit.unr-lcssa:    ; preds = %Dict__set_index.exit.us.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Dict__compact_entries.exit, label %Dict__get_index.exit.us.i.epil.preheader

Dict__get_index.exit.us.i.epil.preheader:         ; preds = %Dict__compact_entries.exit.loopexit.unr-lcssa, %.lr.ph40.split.us.i
  %indvars.iv48.i.epil.init = phi i64 [ 0, %.lr.ph40.split.us.i ], [ %indvars.iv.next49.i.1, %Dict__compact_entries.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i32 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv48.i.epil.init ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !23 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = icmp eq i32 %2, %i.dk
  br i1 %i.dl, label %Dict__compact_entries.exit, label %bb.w

bb.w:                                             ; preds = %Dict__get_index.exit.us.i.epil.preheader
  %i.dm = zext i16 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  %i.dp = trunc i32 %i.do to i16
  store i16 %i.dp, ptr %i.di, align 2, !tbaa !23
  br label %Dict__compact_entries.exit

Dict__compact_entries.exit:                       ; preds = %Dict__set_index.exit.i, %Dict__compact_entries.exit.loopexit.unr-lcssa, %bb.w, %Dict__get_index.exit.us.i.epil.preheader, %._crit_edge.i
  tail call void @free(ptr noundef %i.bp) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.n, %Dict__compact_entries.exit, %bb.b, %bb.a
  %.042 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ 1, %Dict__compact_entries.exit ], [ 1, %bb.n ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @py_dict_getitem_by_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call ptr (...) @py_pushtmp() #11    ; 2 uses
  tail call void @py_newstr(ptr noundef %i.d, ptr noundef %1) #11
  %i.e = tail call ptr @py_touserdata(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = call fastcc noundef zeroext i1 @Dict__probe(ptr noundef readonly %i.e, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.f, label %bb.b, label %py_dict_getitem.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %py_dict_getitem.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr (...) @py_retval() #11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !27
  br label %py_dict_getitem.exit

py_dict_getitem.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  tail call void (...) @py_pop() #11
  ret i32 %.0.i
}

declare ptr @py_pushtmp(...) local_unnamed_addr #2

declare void @py_newstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @py_pop(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @py_dict_setitem_by_str(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @py_pushtmp() #11    ; 2 uses
  tail call void @py_newstr(ptr noundef %i.a, ptr noundef %1) #11
  %i.b = tail call ptr @py_touserdata(ptr noundef %0) #11
  %i.c = tail call fastcc noundef zeroext i1 @Dict__set(ptr noundef %i.b, ptr noundef %i.a, ptr noundef readonly %2)
  tail call void (...) @py_pop() #11
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @py_dict_delitem_by_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @py_pushtmp() #11    ; 2 uses
  tail call void @py_newstr(ptr noundef %i.a, ptr noundef %1) #11
  %i.b = tail call ptr @py_touserdata(ptr noundef %0) #11
  %i.c = tail call fastcc range(i32 -1, 2) i32 @Dict__pop(ptr noundef %i.b, ptr noundef %i.a)
  tail call void (...) @py_pop() #11
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @py_dict_getitem_by_int(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.py_TValue, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @py_newint(ptr noundef nonnull %2, i64 noundef %1) #11
  %i.d = call ptr @py_touserdata(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.e = call fastcc noundef zeroext i1 @Dict__probe(ptr noundef readonly %i.d, ptr noundef nonnull %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.e, label %bb.b, label %py_dict_getitem.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %py_dict_getitem.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr (...) @py_retval() #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !27
  br label %py_dict_getitem.exit

py_dict_getitem.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @py_dict_setitem_by_int(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.py_TValue, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @py_newint(ptr noundef nonnull %3, i64 noundef %1) #11
  %i.a = call ptr @py_touserdata(ptr noundef %0) #11
  %i.b = call fastcc noundef zeroext i1 @Dict__set(ptr noundef %i.a, ptr noundef nonnull %3, ptr noundef readonly %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @py_dict_delitem_by_int(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.py_TValue, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @py_newint(ptr noundef nonnull %2, i64 noundef %1) #11
  %i.a = call ptr @py_touserdata(ptr noundef %0) #11
  %i.b = call fastcc range(i32 -1, 2) i32 @Dict__pop(ptr noundef %i.a, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @py_dict_len(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #11
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @py_dict_apply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %.not17 = icmp slt i32 %i.c, 1
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.g, i16 noundef signext 0) #11
  br i1 %i.h, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = tail call zeroext i1 %1(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef %2) #11
  br i1 %i.j, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !29
  %i.l = sext i32 %i.k to i64
end_hunk_0
