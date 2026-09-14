Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@resize:bb.a
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !79
  %i.cy = tail call ptr %i.cv(ptr noundef %i.cx, ptr noundef %i.f, i64 noundef %i.cr, i64 noundef 0) #33, !inline_history !8 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 120 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !89
  %i.db = sub i64 %i.da, %i.cr
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !89
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setarrayvector(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, -2
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !118
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 4                      ; 2 uses
  %i.h = sext i32 %2 to i64
  %i.i = shl nsw i64 %i.h, 4                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.p = tail call ptr %i.m(ptr noundef %i.o, ptr noundef %i.c, i64 noundef %i.g, i64 noundef %i.i) #33, !inline_history !8 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.r, %i.q
  br i1 %or.cond.i, label %bb.c, label %luaM_realloc_.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  store volatile i32 4, ptr %i.u, align 8, !tbaa !136
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.v, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 4, ptr %i.w, align 2, !tbaa !74
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84
  %.not10.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @resetstack(ptr noundef nonnull %0, i32 noundef 4), !inline_history !7
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %0) #33, !inline_history !7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit:                               ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !89
  %i.ag = sub nsw i64 %i.i, %i.g
  %i.ah = add i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !118 ; 2 uses
  %i.al = icmp slt i32 %i.ak, %2
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

.lr.ph.preheader:                                 ; preds = %luaM_realloc_.exit
  %i.am = sext i32 %i.ak to i64                   ; 4 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.an = sub nsw i64 %wide.trip.count, %i.am
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.p, i64 %indvars.iv.prol
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !99
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !386

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.am, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aq = sub nsw i64 %i.am, %wide.trip.count
  %i.ar = icmp ugt i64 %i.aq, -8
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !99
  %i.au = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 24
  store i32 0, ptr %i.av, align 8, !tbaa !99
  %i.aw = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ax = getelementptr i8, ptr %i.aw, i64 40
  store i32 0, ptr %i.ax, align 8, !tbaa !99
  %i.ay = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.az = getelementptr i8, ptr %i.ay, i64 56
  store i32 0, ptr %i.az, align 8, !tbaa !99
  %i.ba = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bb = getelementptr i8, ptr %i.ba, i64 72
  store i32 0, ptr %i.bb, align 8, !tbaa !99
  %i.bc = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 88
  store i32 0, ptr %i.bd, align 8, !tbaa !99
  %i.be = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bf = getelementptr i8, ptr %i.be, i64 104
  store i32 0, ptr %i.bf, align 8, !tbaa !99
  %i.bg = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 120
  store i32 0, ptr %i.bh, align 8, !tbaa !99
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !387

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %luaM_realloc_.exit
  store i32 %2, ptr %i.aj, align 8, !tbaa !118
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setnodevector(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @dummynode_, ptr %i.b, align 8, !tbaa !103
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, -1                       ; 3 uses
  %i.d = icmp ugt i32 %i.c, 255
  br i1 %i.d, label %.lr.ph.i, label %luaO_log2.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i32 [ %i.e, %.lr.ph.i ], [ -1, %bb.c ]
  %.056.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.e = add nsw i32 %.07.i, 8                    ; 2 uses
  %i.f = lshr i32 %.056.i, 8                      ; 2 uses
  %i.g = icmp ugt i32 %.056.i, 65535
  br i1 %i.g, label %.lr.ph.i, label %luaO_log2.exit, !llvm.loop !22

luaO_log2.exit:                                   ; preds = %.lr.ph.i, %bb.c
  %.05.lcssa.i = phi i32 [ %i.c, %bb.c ], [ %i.f, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ -1, %bb.c ], [ %i.e, %.lr.ph.i ]
  %i.h = zext nneg i32 %.05.lcssa.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr @luaO_log2.log_2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !81
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %.0.lcssa.i, %i.k            ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 5 uses
  %i.n = icmp sgt i32 %i.l, 29
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %luaO_log2.exit
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.43)
  unreachable

bb.e:                                             ; preds = %luaO_log2.exit
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %i.p = shl nuw i64 1, %i.o                      ; 4 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = shl i64 4294967296, %i.o                 ; 3 uses
  %sext = add nuw i64 %i.r, 4294967296
  %i.s = icmp sgt i64 %sext, -1
  br i1 %i.s, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %3 = lshr exact i64 %i.r, 32
  %i.t = mul nuw nsw i64 %3, 40                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.aa = tail call ptr %i.x(ptr noundef %i.z, ptr noundef null, i64 noundef 0, i64 noundef %i.t) #33, !inline_history !8 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp ult i32 %i.m, 32
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %bb.g, label %luaM_realloc_.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  store volatile i32 4, ptr %i.af, align 8, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.ag, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 4, ptr %i.ah, align 2, !tbaa !74
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84
  %.not10.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @resetstack(ptr noundef nonnull %0, i32 noundef 4), !inline_history !7
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = tail call i32 %i.an(ptr noundef nonnull %0) #33, !inline_history !7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit:                               ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !89
  %i.ar = add i64 %i.aq, %i.t
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  store ptr %i.aa, ptr %i.as, align 8, !tbaa !103
  %i.at = icmp sgt i32 %i.q, 0
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

bb.l:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

.lr.ph.preheader:                                 ; preds = %luaM_realloc_.exit
  %wide.trip.count = and i64 %i.p, 2147483647
  %i.au = add nsw i64 %wide.trip.count, -1
  %i.av = icmp ult i64 %i.au, 3
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.p, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %indvars.iv ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr null, ptr %i.ay, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !185
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %indvars.iv ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store ptr null, ptr %i.bd, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store i32 0, ptr %i.be, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i32 0, ptr %i.bf, align 8, !tbaa !185
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %indvars.iv ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  store ptr null, ptr %i.bi, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  store i32 0, ptr %i.bj, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i32 0, ptr %i.bk, align 8, !tbaa !185
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 152
  store ptr null, ptr %i.bn, align 8, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  store i32 0, ptr %i.bo, align 8, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  store i32 0, ptr %i.bp, align 8, !tbaa !185
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !388

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp ugt i32 %i.m, 1
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ult i32 %i.m, 2
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %indvars.iv.epil ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !81
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i32 0, ptr %i.bt, align 8, !tbaa !81
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 0, ptr %i.bu, align 8, !tbaa !185
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.p
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !389

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre.pre = load ptr, ptr %i.as, align 8, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %luaM_realloc_.exit
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %i.aa, %luaM_realloc_.exit ]
  %i.bv = trunc i32 %i.m to i8
  %i.bw = ashr exact i64 %i.r, 32
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.b
  %i.bx = phi ptr [ @dummynode_, %bb.b ], [ %.pre, %._crit_edge ]
  %.024 = phi i8 [ 0, %bb.b ], [ %i.bv, %._crit_edge ]
  %.0 = phi i64 [ 0, %bb.b ], [ %i.bw, %._crit_edge ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %.024, ptr %i.by, align 1, !tbaa !120
  %i.bz = getelementptr inbounds [40 x i8], ptr %i.bx, i64 %.0
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc i64 @singlestep(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 40 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !85
  switch i8 %i.d, label %bb.bb [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.aj
    i8 3, label %bb.am
    i8 4, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81
  %i.j = and i8 %i.i, 3
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %i.b, ptr noundef nonnull %i.g)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !80
  br label %bb.d
end_hunk_0
