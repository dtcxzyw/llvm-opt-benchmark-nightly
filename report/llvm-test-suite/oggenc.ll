Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@oggpackB_write:bb.a
  %i.i = load i64, ptr %i.c, align 8
  %i.j = add nsw i64 %i.i, 256
  store i64 %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = sub nsw i32 32, %2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl i64 %1, %i.p                         ; 2 uses
  %i.r = and i64 %i.q, 4294967295                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = add nsw i32 %i.t, %2                     ; 6 uses
  %i.v = add nsw i32 %i.t, 24
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 %i.r, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.z = load i8, ptr %i.n, align 1
  %i.aa = trunc i64 %i.x to i8
  %i.ab = or i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.n, align 1
  %i.ac = icmp sgt i32 %i.u, 7
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.s, align 8
  %i.ae = add nsw i32 %i.ad, 16
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.r, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = load ptr, ptr %i.y, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = icmp samesign ugt i32 %i.u, 15
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.s, align 8
  %i.am = add nsw i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %i.r, %i.an
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = load ptr, ptr %i.y, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i8 %i.ap, ptr %i.ar, align 1
  %i.as = icmp samesign ugt i32 %i.u, 23
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.s, align 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.r, %i.au
  %i.aw = trunc i64 %i.av to i8
  %i.ax = load ptr, ptr %i.y, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.aw, ptr %i.ay, align 1
  %i.az = icmp samesign ugt i32 %i.u, 31
  br i1 %i.az, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f
  %i.ba = load i32, ptr %i.s, align 8             ; 2 uses
  %.not42 = icmp eq i32 %i.ba, 0
  %i.bb = sub nsw i32 8, %i.ba
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.q, %i.bc
  %i.be = trunc i64 %i.bd to i8
  %.sink = select i1 %.not42, i8 0, i8 %i.be
  %i.bf = load ptr, ptr %i.y, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i8 %.sink, ptr %i.bg, align 1
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.f, %bb.e, %bb.c
  %i.bh = sdiv i32 %i.u, 8
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = load i64, ptr %0, align 8
  %i.bk = add nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %0, align 8
  %i.bl = load ptr, ptr %i.y, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bi
  store ptr %i.bm, ptr %i.y, align 8
  %i.bn = and i32 %i.u, 7
  store i32 %i.bn, ptr %i.s, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpack_writealign(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 8, %i.b
  tail call void @oggpack_write(ptr noundef nonnull %0, i64 noundef 0, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpackB_writealign(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 8, %i.b
  tail call void @oggpackB_write(ptr noundef nonnull %0, i64 noundef 0, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpack_writecopy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = sdiv i64 %2, 8                           ; 7 uses
  %i.b = shl nsw i64 %i.a, 3                      ; 2 uses
  %i.c = sub nsw i64 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp sgt i64 %2, 7
  br i1 %i.f, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  tail call void @oggpack_write(ptr noundef nonnull %0, i64 noundef %i.i, i32 noundef 8) #62, !callees !48, !inline_history !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !37

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8
  %i.k = add nsw i64 %i.j, %i.a                   ; 2 uses
  %i.l = add nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not46.i = icmp slt i64 %i.l, %i.n
  br i1 %.not46.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i64 %i.k, 256                    ; 2 uses
  store i64 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @realloc(ptr noundef %i.q, i64 noundef %i.o) #66 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8
  %i.s = load i64, ptr %0, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.v = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %1, i64 %i.a, i1 false)
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 2 uses
  store ptr %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.a
  store ptr %i.ab, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.d, %.preheader.i
  %.not47.i = icmp eq i64 %2, %i.b
  br i1 %.not47.i, label %oggpack_writecopy_helper.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit.i
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = trunc i64 %i.c to i32
  %i.af = zext i8 %i.ad to i64
  tail call void @oggpack_write(ptr noundef nonnull %0, i64 noundef %i.af, i32 noundef %i.ae) #62, !inline_history !36
  br label %oggpack_writecopy_helper.exit

oggpack_writecopy_helper.exit:                    ; preds = %.loopexit.i, %.sink.split.i
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpackB_writecopy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = sdiv i64 %2, 8                           ; 7 uses
  %i.b = shl nsw i64 %i.a, 3                      ; 2 uses
  %i.c = sub nsw i64 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp sgt i64 %2, 7
  br i1 %i.f, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  tail call void @oggpackB_write(ptr noundef nonnull %0, i64 noundef %i.i, i32 noundef 8) #62, !callees !48, !inline_history !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !37

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8
  %i.k = add nsw i64 %i.j, %i.a                   ; 2 uses
  %i.l = add nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not46.i = icmp slt i64 %i.l, %i.n
  br i1 %.not46.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i64 %i.k, 256                    ; 2 uses
  store i64 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @realloc(ptr noundef %i.q, i64 noundef %i.o) #66 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8
  %i.s = load i64, ptr %0, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.v = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %1, i64 %i.a, i1 false)
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 2 uses
  store ptr %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.a
  store ptr %i.ab, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.d, %.preheader.i
  %.not47.i = icmp eq i64 %2, %i.b
  br i1 %.not47.i, label %oggpack_writecopy_helper.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit.i
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = trunc i64 %i.c to i32                   ; 2 uses
  %i.af = zext i8 %i.ad to i32
  %i.ag = sub i32 8, %i.ae
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  tail call void @oggpackB_write(ptr noundef nonnull %0, i64 noundef %i.ai, i32 noundef %i.ae) #62, !inline_history !36
  br label %oggpack_writecopy_helper.exit

oggpack_writecopy_helper.exit:                    ; preds = %.loopexit.i, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @oggpackB_reset(ptr nofree noundef captures(none) initializes((0, 12), (24, 32)) %0) local_unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8
  store i8 0, ptr %i.b, align 1
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpackB_writeclear(ptr nofree noundef captures(none) initializes((0, 16), (24, 40)) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @free(ptr noundef %i.b) #62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @oggpackB_readinit(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #38 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @oggpack_look(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %notmask = shl nsw i64 -1, %i.a
  %i.b = xor i64 %notmask, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 7 uses
  %i.e = add nsw i32 %i.d, %1                     ; 5 uses
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = add nsw i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not = icmp slt i64 %i.g, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl nsw i64 %i.f, 3
  %i.k = sext i32 %i.e to i64
  %i.l = add nsw i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.i, 3
  %i.n = icmp sgt i64 %i.l, %i.m
  br i1 %i.n, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = lshr i32 %i.r, %i.d
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp sgt i32 %i.e, 8
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 8, %i.d
  %i.z = shl i32 %i.x, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = or i64 %i.aa, %i.t                      ; 2 uses
  %i.ac = icmp samesign ugt i32 %i.e, 16
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = sub nsw i32 16, %i.d
  %i.ah = shl i32 %i.af, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = or i64 %i.ab, %i.ai                     ; 2 uses
  %i.ak = icmp samesign ugt i32 %i.e, 24
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 24, %i.d
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = or i64 %i.aj, %i.aq                     ; 2 uses
  %i.as = icmp samesign ult i32 %i.e, 33
  %.not33 = icmp eq i32 %i.d, 0
  %or.cond = or i1 %.not33, %i.as
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = sub nsw i32 32, %i.d
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ar, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.e, %bb.c
  %.0 = phi i64 [ %i.az, %bb.g ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ %i.aj, %bb.e ], [ %i.ab, %bb.d ]
  %i.ba = and i64 %.0, %i.b
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.029 = phi i64 [ %i.ba, %bb.h ], [ -1, %bb.b ]
  ret i64 %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @oggpackB_look(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = sub nsw i32 32, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 7 uses
  %i.d = add nsw i32 %i.c, %1                     ; 5 uses
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = add nsw i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp slt i64 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl nsw i64 %i.e, 3
  %i.j = sext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.h, 3
  %i.m = icmp sgt i64 %i.k, %i.l
  br i1 %i.m, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.c, 24
  %i.s = shl i32 %i.q, %i.r                       ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp sgt i32 %i.d, 8
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.c, 16
  %i.z = shl i32 %i.x, %i.y
  %i.aa = or i32 %i.z, %i.s                       ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp samesign ugt i32 %i.d, 16
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.c, 8
  %i.ah = shl i32 %i.af, %i.ag
  %i.ai = or i32 %i.ah, %i.aa                     ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp samesign ugt i32 %i.d, 24
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = shl i32 %i.an, %i.c
  %i.ap = or i32 %i.ao, %i.ai
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp samesign ult i32 %i.d, 33
  %.not34 = icmp eq i32 %i.c, 0
  %or.cond = or i1 %.not34, %i.ar
  br i1 %or.cond, label %bb.h, label %bb.g

end_hunk_0
