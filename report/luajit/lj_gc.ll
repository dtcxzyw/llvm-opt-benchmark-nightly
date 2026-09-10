Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_gc?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
begin_hunk_0_@gc_traverse_func:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -96
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28
  %i.r = and i8 %i.q, 3
  %.not26 = icmp eq i8 %i.r, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -104
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28    ; 2 uses
  %.not33 = icmp eq i8 %i.u, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.i
  %i.w = phi i8 [ %i.u, %.lr.ph31 ], [ %i.ad, %bb.i ]
  %indvars.iv36 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next37, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv36
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i8 %i.ab, 3
  %.not27 = icmp eq i8 %i.ac, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.z)
  %.pre39 = load i8, ptr %i.t, align 1, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi i8 [ %i.w, %bb.g ], [ %.pre39, %bb.h ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next37, %i.ae
  br i1 %i.af, label %bb.g, label %.loopexit, !llvm.loop !134

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %i.ag = phi i8 [ %i.k, %.lr.ph ], [ %i.as, %bb.m ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = ashr i64 %i.ai, 47
  %i.ak = trunc nsw i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 13
  %i.am = icmp ult i32 %i.al, 9
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = and i64 %i.ai, 140737488355327
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !28
  %i.ar = and i8 %i.aq, 3
  %.not25 = icmp eq i8 %i.ar, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.ao)
  %.pre = load i8, ptr %i.j, align 1, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.as = phi i8 [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.j, label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %bb.m, %bb.i, %.preheader, %bb.f
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gc_traverse_proto(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !137
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !28
  %i.f = and i8 %i.e, -4
  store i8 %i.f, ptr %i.d, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !138  ; 2 uses
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.013 = phi i64 [ %i.j, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !139
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.013
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !28
  %i.s = and i8 %i.r, 3
  %.not12 = icmp eq i8 %i.s, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = add nsw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, 0
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.v = load i16, ptr %i.u, align 2, !tbaa !140  ; 2 uses
  %.not = icmp eq i16 %i.v, 0
  br i1 %.not, label %gc_marktrace.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84
  %i.y = zext i16 %i.v to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !28  ; 2 uses
  %i.ae = and i8 %i.ad, 3
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %gc_marktrace.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = and i8 %i.ad, -4
  store i8 %i.af, ptr %i.ac, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !28
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !69
  br label %gc_marktrace.exit

gc_marktrace.exit:                                ; preds = %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gc_traverse_thread(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !143
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.g = icmp ult ptr %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.023 = phi ptr [ %i.r, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = load i64, ptr %.023, align 8, !tbaa !28  ; 2 uses
  %i.i = ashr i64 %i.h, 47
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = add nsw i32 %i.j, 13
  %i.l = icmp ult i32 %i.k, 9
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = and i64 %i.h, 140737488355327
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !28
  %i.q = and i8 %i.p, 3
  %.not22 = icmp eq i8 %i.q, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.n)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.b
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.r, %bb.d ] ; 3 uses
  %.0.lcssa27 = ptrtoaddr ptr %.0.lcssa to i64    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.w = load i64, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !88
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = icmp ult ptr %.0.lcssa, %i.ab
  br i1 %i.ac, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %bb.e
  %i.ad = shl nuw nsw i64 %i.aa, 3
  %2 = add nuw i64 %i.w, %i.ad
  %i.ae = add i64 %.0.lcssa27, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.ae)
  %i.af = xor i64 %.0.lcssa27, -1
  %i.ag = add i64 %umax, %i.af
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.lcssa, i8 -1, i64 %i.ai, i1 false), !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph26.preheader, %bb.e, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !144
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !28
  %i.ao = and i8 %i.an, 3
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  tail call fastcc void @gc_mark(ptr noundef nonnull %0, ptr noundef nonnull %i.al)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !143 ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ax = icmp ugt ptr %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %gc_traverse_frames.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.l
  %.0242.i = phi ptr [ %spec.select.i, %bb.l ], [ %i.aq, %bb.g ] ; 2 uses
  %.0251.i = phi ptr [ %i.cc, %bb.l ], [ %i.av, %bb.g ] ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %.0251.i, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = and i64 %i.az, 140737488355327
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !28
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -93
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !82
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0251.i, i64 %i.bk
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.0.i = phi ptr [ %i.bl, %bb.h ], [ %.0251.i, %.lr.ph.i ] ; 2 uses
  %i.bm = icmp ugt ptr %.0.i, %.0242.i
  %spec.select.i = select i1 %i.bm, ptr %.0.i, ptr %.0242.i ; 2 uses
  %i.bn = load i64, ptr %.0251.i, align 8, !tbaa !28 ; 3 uses
  %i.bo = and i64 %i.bn, 3
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = inttoptr i64 %i.bn to ptr
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !87
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %.0251.i, i64 %i.bx
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bz = and i64 %i.bn, -8
  %i.ca = sub i64 0, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %.0251.i, i64 %i.ca
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi ptr [ %i.by, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %i.cd = icmp ugt ptr %i.cc, %i.aw
  br i1 %i.cd, label %.lr.ph.i, label %gc_traverse_frames.exit, !llvm.loop !142

gc_traverse_frames.exit:                          ; preds = %bb.l, %bb.g
  %.024.lcssa.i = phi ptr [ %i.aq, %bb.g ], [ %spec.select.i, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !145
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = icmp ugt ptr %i.ce, %i.ch
  %spec.select28.i = select i1 %i.ci, ptr %i.ch, ptr %i.ce
  %i.cj = ptrtoint ptr %spec.select28.i to i64
  %i.ck = sub i64 %i.cj, %i.ar
  %i.cl = lshr exact i64 %i.ck, 3
  %i.cm = trunc i64 %i.cl to i32
  tail call void @lj_state_shrinkstack(ptr noundef %1, i32 noundef %i.cm) #8
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gc_traverse_trace(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i16, ptr %i.a, align 8, !tbaa !147
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = icmp ult i32 %i.e, 32765
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.037 = phi i32 [ %i.e, %.lr.ph ], [ %i.ab, %bb.h ] ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.i = zext nneg i32 %.037 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = icmp eq i8 %i.l, 24
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !28
  %i.s = and i8 %i.r, 3
  %.not30 = icmp eq i8 %i.s, 0
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !28
  %i.v = and i8 %i.u, 31
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.x, 6315993
  %.not31 = icmp eq i32 %i.y, 0
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.k, align 1, !tbaa !28
  %.not32 = icmp ne i8 %i.z, 27
  %i.aa = zext i1 %.not32 to i32
  %spec.select = add nuw nsw i32 %.037, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.037, %bb.f ], [ %spec.select, %bb.g ] ; 2 uses
  %i.ab = add nuw nsw i32 %.1, 1
  %i.ac = icmp ult i32 %.1, 32764
  br i1 %i.ac, label %bb.c, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !149 ; 2 uses
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %gc_marktrace.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.ah = zext i16 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !28  ; 2 uses
  %i.an = and i8 %i.am, 3
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %gc_marktrace.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = and i8 %i.am, -4
  store i8 %i.ao, ptr %i.al, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !28
  store i64 %i.aj, ptr %i.ap, align 8, !tbaa !69
  br label %gc_marktrace.exit

gc_marktrace.exit:                                ; preds = %bb.j, %bb.i, %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.at = load i16, ptr %i.as, align 2, !tbaa !150 ; 2 uses
  %.not27 = icmp eq i16 %i.at, 0
  br i1 %.not27, label %gc_marktrace.exit34, label %bb.k

bb.k:                                             ; preds = %gc_marktrace.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !84
  %i.aw = zext i16 %i.at to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !28  ; 2 uses
  %i.bc = and i8 %i.bb, 3
  %.not.i33 = icmp eq i8 %i.bc, 0
  br i1 %.not.i33, label %gc_marktrace.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = and i8 %i.bb, -4
  store i8 %i.bd, ptr %i.ba, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !28
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !69
  br label %gc_marktrace.exit34

gc_marktrace.exit34:                              ; preds = %bb.l, %bb.k, %gc_marktrace.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !151 ; 2 uses
  %.not28 = icmp eq i16 %i.bi, 0
  br i1 %.not28, label %gc_marktrace.exit36, label %bb.m

bb.m:                                             ; preds = %gc_marktrace.exit34
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84
  %i.bl = zext i16 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !28  ; 2 uses
  %i.br = and i8 %i.bq, 3
  %.not.i35 = icmp eq i8 %i.br, 0
  br i1 %.not.i35, label %gc_marktrace.exit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = and i8 %i.bq, -4
  store i8 %i.bs, ptr %i.bp, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !28
  store i64 %i.bn, ptr %i.bt, align 8, !tbaa !69
  br label %gc_marktrace.exit36

gc_marktrace.exit36:                              ; preds = %bb.n, %bb.m, %gc_marktrace.exit34
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !152
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !28
  %i.cb = and i8 %i.ca, 3
  %.not29 = icmp eq i8 %i.cb, 0
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %gc_marktrace.exit36
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.by)
  br label %bb.p

bb.p:                                             ; preds = %gc_marktrace.exit36, %bb.o, %bb.a
  ret void
}

declare hidden void @lj_state_shrinkstack(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @lj_buf_shrink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"GCRef", !13, i64 0}
!15 = !{!"MRef", !13, i64 0}
!16 = !{!"GCState", !13, i64 0, !13, i64 8, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !9, i64 20, !14, i64 24, !15, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !13, i64 72, !13, i64 80, !9, i64 88, !9, i64 92, !15, i64 96}
!17 = !{!"GCstr", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !9, i64 12, !9, i64 16, !9, i64 20}
!18 = !{!"p1 _ZTS5GCRef", !12, i64 0}
!19 = !{!"StrInternState", !18, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !13, i64 24}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"SBuf", !20, i64 0, !20, i64 8, !20, i64 16, !15, i64 24}
!22 = !{!"Node", !8, i64 0, !8, i64 8, !15, i64 16}
!23 = !{!"GCupval", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 16, !15, i64 32, !9, i64 40}
!24 = !{!"PRNGState", !8, i64 0}
!25 = !{!"global_State", !12, i64 0, !12, i64 8, !16, i64 16, !17, i64 120, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !19, i64 152, !9, i64 184, !14, i64 192, !21, i64 200, !8, i64 232, !8, i64 240, !22, i64 248, !8, i64 272, !14, i64 280, !23, i64 288, !9, i64 336, !9, i64 340, !12, i64 344, !12, i64 352, !12, i64 360, !9, i64 368, !9, i64 372, !14, i64 376, !15, i64 384, !15, i64 392, !24, i64 400, !8, i64 432}
!26 = !{!25, !13, i64 192}
!27 = !{!14, !13, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!"GCtab", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !15, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !9, i64 48, !9, i64 52, !15, i64 56}
!30 = !{!29, !8, i64 10}
!31 = !{!13, !13, i64 0}
!32 = !{!25, !13, i64 80}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"p1 _ZTS6TValue", !12, i64 0}
!35 = !{!"lua_State", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !15, i64 16, !14, i64 24, !34, i64 32, !34, i64 40, !15, i64 48, !15, i64 56, !14, i64 64, !14, i64 72, !12, i64 80, !9, i64 88}
!36 = !{!35, !13, i64 16}
!37 = !{!25, !13, i64 40}
!38 = !{!25, !8, i64 32}
!39 = !{!29, !13, i64 40}
!40 = !{!29, !13, i64 32}
!41 = !{!29, !9, i64 52}
!42 = !{!25, !13, i64 24}
!43 = !{!25, !13, i64 280}
!44 = !{!"short", !8, i64 0}
!45 = !{!"p1 _ZTS5IRIns", !12, i64 0}
!46 = !{!"p1 _ZTS8SnapShot", !12, i64 0}
!47 = !{!"p1 int", !12, i64 0}
!48 = !{!"GCtrace", !14, i64 0, !8, i64 8, !8, i64 9, !44, i64 10, !9, i64 12, !9, i64 16, !14, i64 24, !45, i64 32, !9, i64 40, !9, i64 44, !46, i64 48, !47, i64 56, !14, i64 64, !15, i64 72, !9, i64 80, !9, i64 84, !20, i64 88, !9, i64 96, !44, i64 100, !44, i64 102, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !8, i64 114, !8, i64 115, !8, i64 116, !8, i64 117}
!49 = !{!"p1 _ZTS7GCtrace", !12, i64 0}
!50 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!51 = !{!"p1 _ZTS6GCfunc", !12, i64 0}
!52 = !{!"p1 _ZTS7GCproto", !12, i64 0}
!53 = !{!"IRType1", !8, i64 0}
!54 = !{!"FoldState", !8, i64 0, !8, i64 8, !8, i64 24}
!55 = !{!"ScEvEntry", !15, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !53, i64 16, !8, i64 17}
!56 = !{!"jit_State", !48, i64 0, !49, i64 120, !50, i64 128, !47, i64 136, !51, i64 144, !52, i64 152, !47, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !8, i64 180, !8, i64 181, !53, i64 182, !8, i64 183, !54, i64 184, !47, i64 224, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !8, i64 260, !8, i64 264, !8, i64 304, !45, i64 328, !9, i64 336, !9, i64 340, !9, i64 344, !9, i64 348, !46, i64 352, !47, i64 360, !9, i64 368, !9, i64 372, !8, i64 376, !18, i64 384, !9, i64 392, !9, i64 396, !44, i64 400, !8, i64 402, !8, i64 604, !8, i64 1636, !8, i64 1696, !8, i64 1824, !9, i64 2848, !8, i64 2852, !9, i64 2980, !55, i64 2984, !47, i64 3008, !9, i64 3016, !9, i64 3020, !9, i64 3024, !47, i64 3032, !9, i64 3040, !9, i64 3044, !20, i64 3048, !20, i64 3056, !20, i64 3064, !13, i64 3072, !13, i64 3080, !13, i64 3088, !13, i64 3096, !8, i64 3104, !52, i64 3112, !9, i64 3120, !9, i64 3124}
!57 = !{!"GG_State", !35, i64 0, !25, i64 96, !56, i64 840, !8, i64 3968, !8, i64 4096, !8, i64 6152}
!58 = !{!35, !34, i64 40}
!59 = !{!25, !13, i64 376}
!60 = !{!25, !9, i64 160}
!61 = !{!25, !18, i64 152}
!62 = !{!25, !9, i64 184}
!63 = !{!25, !9, i64 104}
!64 = !{!25, !13, i64 16}
!65 = !{!25, !13, i64 88}
!66 = !{!25, !8, i64 33}
!67 = !{!25, !13, i64 96}
!68 = !{!25, !9, i64 108}
!69 = !{!25, !13, i64 56}
!70 = !{!25, !13, i64 384}
!71 = !{!23, !13, i64 32}
!72 = !{!25, !13, i64 72}
!73 = !{!25, !13, i64 64}
!74 = !{!29, !8, i64 8}
!75 = !{!29, !9, i64 48}
!76 = !{!29, !13, i64 16}
!77 = !{!29, !13, i64 24}
!78 = !{!25, !13, i64 48}
!79 = !{!25, !9, i64 36}
!80 = !{!35, !34, i64 32}
!81 = !{!"GCproto", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !9, i64 12, !9, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !8, i64 60, !8, i64 61, !44, i64 62, !14, i64 64, !9, i64 72, !9, i64 76, !15, i64 80, !15, i64 88, !15, i64 96}
!82 = !{!81, !8, i64 11}
!83 = !{!23, !8, i64 10}
!84 = !{!57, !18, i64 1224}
!85 = !{!25, !12, i64 0}
!86 = !{!25, !12, i64 8}
!87 = !{!9, !9, i64 0}
!88 = !{!35, !9, i64 88}
!89 = !{!48, !9, i64 40}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = !{!25, !8, i64 145}
!93 = !{!57, !9, i64 1076}
!94 = !{!25, !8, i64 147}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = !{!12, !12, i64 0}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = !{!25, !13, i64 392}
!106 = !{!"p1 _ZTS5CType", !12, i64 0}
!107 = !{!"p1 _ZTS12global_State", !12, i64 0}
!108 = !{!"p1 _ZTS5GCtab", !12, i64 0}
!109 = !{!"p1 long", !12, i64 0}
!110 = !{!"p1 short", !12, i64 0}
!111 = !{!"CCallback", !8, i64 0, !8, i64 64, !109, i64 128, !12, i64 136, !110, i64 144, !9, i64 152, !9, i64 156, !9, i64 160}
!112 = !{!"CTState", !106, i64 0, !9, i64 8, !9, i64 12, !50, i64 16, !107, i64 24, !108, i64 32, !111, i64 40, !8, i64 208}
!113 = !{!112, !50, i64 16}
!114 = !{!25, !8, i64 128}
!115 = !{!25, !9, i64 164}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = !{!"branch_weights", i32 4000000, i32 6003, i32 6000, i32 4000000, i32 4000000}
!120 = !{!"SBufExt", !20, i64 0, !20, i64 8, !20, i64 16, !15, i64 24, !8, i64 32, !20, i64 40, !14, i64 48, !14, i64 56, !9, i64 64}
!121 = !{!120, !13, i64 24}
!122 = !{!120, !13, i64 48}
!123 = !{!120, !13, i64 56}
!124 = !{ptr @lj_mem_realloc}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = !{!"branch_weights", i32 0, i32 -382854991, i32 1955078, i32 977, i32 0}
!129 = !{!81, !9, i64 56}
!130 = !{!35, !13, i64 24}
!131 = !{!48, !9, i64 12}
!132 = !{!48, !44, i64 10}
!133 = !{!48, !9, i64 44}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = !{!81, !13, i64 64}
!138 = !{!81, !9, i64 48}
!139 = !{!81, !13, i64 32}
!140 = !{!81, !44, i64 62}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = !{!35, !13, i64 56}
!144 = !{!35, !13, i64 72}
!145 = !{!35, !13, i64 48}
!146 = distinct !{!146, !33}
!147 = !{!48, !44, i64 104}
!148 = !{!48, !45, i64 32}
!149 = !{!48, !44, i64 106}
!150 = !{!48, !44, i64 110}
!151 = !{!48, !44, i64 112}
!152 = !{!48, !13, i64 64}
end_hunk_0
