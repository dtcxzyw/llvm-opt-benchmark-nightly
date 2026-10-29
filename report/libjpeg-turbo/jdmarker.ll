Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdmarker?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@skip_variable:bb.a
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.d, %bb.a ]
  %.034 = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.j = add i64 %.0, -1                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.l = load i8, ptr %.034, align 1, !tbaa !38
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #6
  %.not40 = icmp eq i32 %i.r, 0
  br i1 %.not40, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.t = load i64, ptr %i.c, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.135 = phi ptr [ %i.s, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %i.t, %bb.f ], [ %i.j, %bb.d ]
  %i.u = add i64 %.1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %.135, i64 1
  %i.w = load i8, ptr %.135, align 1, !tbaa !38
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.n, %i.x               ; 2 uses
  %i.z = add nsw i64 %i.y, -2                     ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 91, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !38
  %i.af = trunc nsw i64 %i.z to i32
  %i.ag = load ptr, ptr %0, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !38
  %i.ai = load ptr, ptr %0, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  tail call void %i.ak(ptr noundef nonnull %0, i32 noundef 1) #6
  store ptr %i.v, ptr %i.b, align 8, !tbaa !42
  store i64 %i.u, ptr %i.c, align 8, !tbaa !43
  %i.al = icmp samesign ugt i64 %i.y, 2
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  tail call void %i.ao(ptr noundef nonnull %0, i64 noundef %i.z) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.b
  %.036 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @get_interesting_appn(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [14 x i8], align 4                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.a ]
  %.055 = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.k = add i64 %.0, -1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.055, i64 1
  %i.m = load i8, ptr %.055, align 1, !tbaa !38
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0) #6
  %.not66 = icmp eq i32 %i.s, 0
  br i1 %.not66, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.u = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.156 = phi ptr [ %i.t, %bb.f ], [ %i.l, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %i.u, %bb.f ], [ %i.k, %bb.d ]
  %i.v = load i8, ptr %.156, align 1, !tbaa !38
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.o, %i.w               ; 3 uses
  %i.y = add nsw i64 %i.x, -2                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.x, 15
  %i.aa = icmp samesign ugt i64 %i.x, 2
  %i.ab = trunc nuw nsw i64 %i.y to i32
  %spec.select = select i1 %i.aa, i32 %i.ab, i32 0
  %.059 = select i1 %i.z, i32 14, i32 %spec.select ; 5 uses
  %.25783 = getelementptr inbounds nuw i8, ptr %.156, i64 1 ; 2 uses
  %.284 = add i64 %.1, -1                         ; 2 uses
  %.not89 = icmp eq i32 %.059, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %wide.trip.count = zext nneg i32 %.059 to i64   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.287 = phi i64 [ %.284, %.lr.ph ], [ %.2, %bb.k ] ; 2 uses
  %.25786 = phi ptr [ %.25783, %.lr.ph ], [ %.257, %bb.k ]
  %i.ad = icmp eq i64 %.287, 0
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.af = tail call i32 %i.ae(ptr noundef %0) #6
  %.not67 = icmp eq i32 %i.af, 0
  br i1 %.not67, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.358 = phi ptr [ %i.ag, %bb.j ], [ %.25786, %bb.h ] ; 2 uses
  %.3 = phi i64 [ %i.ah, %bb.j ], [ %.287, %bb.h ]
  %i.ai = load i8, ptr %.358, align 1, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.257 = getelementptr inbounds nuw i8, ptr %.358, i64 1 ; 2 uses
  %.2 = add i64 %.3, -1                           ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.k, %bb.g
  %.pre-phi = phi i64 [ 0, %bb.g ], [ %wide.trip.count, %bb.k ]
  %.257.lcssa = phi ptr [ %.25783, %bb.g ], [ %.257, %bb.k ]
  %.2.lcssa = phi i64 [ %.284, %bb.g ], [ %.2, %bb.k ]
  %i.ak = sub nsw i64 %i.y, %.pre-phi             ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 2 uses
  switch i32 %i.am, label %bb.p [
    i32 224, label %bb.l
    i32 238, label %bb.m
  ]

bb.l:                                             ; preds = %._crit_edge
  call fastcc void @examine_app0(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.059, i64 noundef %i.ak)
  br label %examine_app14.exit

bb.m:                                             ; preds = %._crit_edge
  %i.an = icmp ugt i32 %.059, 11
  %i.ao = load <4 x i8>, ptr %i.a, align 4
  %.fr = freeze <4 x i8> %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = icmp eq i8 %i.aq, 101
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.as = icmp eq i32 %.fr.scalar, 1651467329
  %i.at = and i1 %i.as, %i.an
  %op.rdx100 = select i1 %i.at, i1 %i.ar, i1 false
  br i1 %op.rdx100, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !38
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !38
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !38
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !38
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !38
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !38
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !38  ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load ptr, ptr %0, align 8, !tbaa !34    ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  store i32 %i.bb, ptr %i.bw, align 4, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i32 %i.bj, ptr %i.bx, align 4, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  store i32 %i.br, ptr %i.by, align 4, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i32 %i.bu, ptr %i.bz, align 4, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 76, ptr %i.ca, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !39
  tail call void %i.cc(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !0
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 1, ptr %i.cd, align 8, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i8 %i.bt, ptr %i.ce, align 4, !tbaa !69
  br label %examine_app14.exit

bb.o:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 78, ptr %i.cg, align 8, !tbaa !37
  %i.ch = trunc i64 %i.ak to i32
  %i.ci = add i32 %.059, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 44
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !38
  %i.ck = load ptr, ptr %0, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  tail call void %i.cm(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !0
  br label %examine_app14.exit

bb.p:                                             ; preds = %._crit_edge
  %i.cn = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i32 68, ptr %i.co, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  store i32 %i.am, ptr %i.cp, align 4, !tbaa !38
  %i.cq = load ptr, ptr %0, align 8, !tbaa !34
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61
  tail call void %i.cr(ptr noundef nonnull %0) #6
  br label %examine_app14.exit

examine_app14.exit:                               ; preds = %bb.o, %bb.n, %bb.p, %bb.l
  store ptr %.257.lcssa, ptr %i.c, align 8, !tbaa !42
  store i64 %.2.lcssa, ptr %i.d, align 8, !tbaa !43
  %i.cs = icmp sgt i64 %i.ak, 0
  br i1 %i.cs, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %examine_app14.exit
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !76
  tail call void %i.cv(ptr noundef nonnull %0, i64 noundef %i.ak) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %examine_app14.exit, %bb.q, %bb.e, %bb.b
  %.061 = phi i32 [ 0, %bb.e ], [ 1, %examine_app14.exit ], [ 0, %bb.b ], [ 1, %bb.q ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define void @jpeg_save_markers(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = add i64 %i.f, -32
  %i.h = zext i32 %2 to i64
  %spec.select50 = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.h)
  %spec.select = trunc i64 %spec.select50 to i32  ; 4 uses
  %.not = icmp eq i32 %spec.select, 0
  %i.i = icmp eq i32 %1, 224                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %spec.select, 14
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %1, 238
  %i.l = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 12)
  %spec.store.select = select i1 %i.k, i32 %i.l, i32 %spec.select
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %1, 238
  %or.cond5 = or i1 %i.i, %i.m
  %spec.store.select8 = select i1 %or.cond5, ptr @get_interesting_appn, ptr @skip_variable
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ 0, %bb.d ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %spec.store.select8, %bb.d ], [ @save_marker, %bb.c ] ; 2 uses
  %i.n = icmp eq i32 %1, 254
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.0, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i32 %.1, ptr %i.p, align 8, !tbaa !114
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = and i32 %1, -16
  %or.cond7 = icmp eq i32 %i.q, 224
  br i1 %or.cond7, label %.thread44, label %bb.h

.thread44:                                        ; preds = %bb.b, %bb.g
  %.14249 = phi i32 [ %.1, %bb.g ], [ 14, %bb.b ]
  %.04348 = phi ptr [ %.0, %bb.g ], [ @save_marker, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = add nsw i32 %1, -224
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  store ptr %.04348, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store i32 %.14249, ptr %i.w, align 4, !tbaa !54
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 68, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i32 %1, ptr %i.z, align 4, !tbaa !38
  %i.aa = load ptr, ptr %0, align 8, !tbaa !34
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61
  tail call void %i.ab(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread44, %bb.h, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @save_marker(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = icmp eq ptr %i.d, null
  br i1 %i.j, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit141, label %bb.d
end_hunk_0
