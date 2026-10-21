Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__buf_get8
define zeroext i8 @stbtt__buf_get8(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !34
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i8 @stbtt__buf_peek8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt__buf_seek(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = icmp slt i32 %1, 0
  %i.d = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.b)
  %. = select i1 %i.c, i32 %i.b, i32 %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %., ptr %i.e, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt__buf_skip(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %i.c = add nsw i32 %i.b, %1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.f = icmp slt i32 %i.c, 0
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.e)
  %..i = select i1 %i.f, i32 %i.e, i32 %i.g
  store i32 %..i, ptr %i.a, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt__buf_get(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 3 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %xtraiter = and i32 %1, 1
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %1, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %stbtt__buf_get8.exit.1, %.lr.ph.new
  %i.f = phi i32 [ %.promoted, %.lr.ph.new ], [ %i.x, %stbtt__buf_get8.exit.1 ] ; 4 uses
  %.056 = phi i32 [ 0, %.lr.ph.new ], [ %.0.i.1, %stbtt__buf_get8.exit.1 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %stbtt__buf_get8.exit.1 ]
  %i.g = shl i32 %.056, 8                         ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.d
  br i1 %.not.i, label %bb.c, label %stbtt__buf_get8.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !36
  %i.i = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !34
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.g, %i.m
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.i, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  %.0.i = phi i32 [ %i.n, %bb.c ], [ %i.g, %bb.b ]
  %i.p = shl i32 %.0.i, 8                         ; 2 uses
  %.not.i.1 = icmp slt i32 %i.o, %i.d
  br i1 %.not.i.1, label %bb.d, label %stbtt__buf_get8.exit.1

bb.d:                                             ; preds = %stbtt__buf_get8.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = add nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.r, ptr %i.b, align 8, !tbaa !34
  %i.s = sext i32 %i.o to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.p, %i.v
  br label %stbtt__buf_get8.exit.1

stbtt__buf_get8.exit.1:                           ; preds = %bb.d, %stbtt__buf_get8.exit
  %i.x = phi i32 [ %i.r, %bb.d ], [ %i.o, %stbtt__buf_get8.exit ] ; 2 uses
  %.0.i.1 = phi i32 [ %i.w, %bb.d ], [ %i.p, %stbtt__buf_get8.exit ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %stbtt__buf_get8.exit.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.promoted, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.056.epil.init = phi i32 [ 0, %.lr.ph ], [ %.0.i.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.y = shl i32 %.056.epil.init, 8               ; 2 uses
  %.not.i.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.epil, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.epil.preheader
  %i.z = load ptr, ptr %0, align 8, !tbaa !36
  %i.aa = add nsw i32 %.epil.init, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !34
  %i.ab = sext i32 %.epil.init to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.y, %i.ae
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %.0.i.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %bb.e ], [ %i.y, %.epil.preheader ]
  ret i32 %.05.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, i64 } @stbtt__new_buf(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.sroa.4.8.insert.ext = shl i64 %1, 32
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.8.insert.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @stbtt__buf_range(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %i.d = icmp sgt i32 %1, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %i.f = icmp sgt i32 %2, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !36
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = zext nneg i32 %2 to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.i, %bb.c ]
  %.sroa.5.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.k, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @stbtt__cff_get_index(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 11 uses
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36
  %i.f = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !34
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.l, %i.d
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !36
  %i.n = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !34
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %.0.i.i, %i.r
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %i.t = phi i32 [ %i.n, %bb.c ], [ %i.l, %stbtt__buf_get8.exit.i ] ; 5 uses
  %.0.i.i.1 = phi i32 [ %i.s, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ] ; 2 uses
  %.not = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i.1
  %.not.i = icmp slt i32 %i.t, %i.d
  br i1 %.not.i, label %bb.e, label %stbtt__buf_get8.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !36
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !34
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = zext i8 %i.y to i32
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.v, %bb.e ], [ %i.t, %bb.d ]
  %.0.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]   ; 6 uses
  %i.ab = mul nuw nsw i32 %.0.i, %.0.i.i.1
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.d)
  %..i.i = select i1 %i.ad, i32 %i.d, i32 %i.ae   ; 3 uses
  %.not22 = icmp eq i32 %.0.i, 0
  br i1 %.not22, label %stbtt__buf_get.exit20, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %xtraiter = and i32 %.0.i, 1
  %i.af = icmp eq i32 %.0.i, 1
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.0.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i17.1, %.lr.ph.i.preheader.new
  %i.ag = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.ay, %stbtt__buf_get8.exit.i17.1 ] ; 4 uses
  %.056.i15 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i18.1, %stbtt__buf_get8.exit.i17.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i17.1 ]
  %i.ah = shl i32 %.056.i15, 8                    ; 2 uses
  %.not.i.i16 = icmp slt i32 %i.ag, %i.d
  br i1 %.not.i.i16, label %bb.f, label %stbtt__buf_get8.exit.i17

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !36
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !34
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %stbtt__buf_get8.exit.i17

stbtt__buf_get8.exit.i17:                         ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i18 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i18, 8                    ; 2 uses
  %.not.i.i16.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i16.1, label %bb.g, label %stbtt__buf_get8.exit.i17.1

bb.g:                                             ; preds = %stbtt__buf_get8.exit.i17
  %i.ar = load ptr, ptr %0, align 8, !tbaa !36
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !34
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %stbtt__buf_get8.exit.i17.1

stbtt__buf_get8.exit.i17.1:                       ; preds = %bb.g, %stbtt__buf_get8.exit.i17
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %stbtt__buf_get8.exit.i17 ] ; 3 uses
  %.0.i.i18.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %stbtt__buf_get8.exit.i17 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit20.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

stbtt__buf_get.exit20.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i17.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit20.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbtt__buf_get.exit20.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %stbtt__buf_get.exit20.loopexit.unr-lcssa ] ; 4 uses
  %.056.i15.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i18.1, %stbtt__buf_get.exit20.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i15.epil.init, 8          ; 2 uses
  %.not.i.i16.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i16.epil, label %bb.h, label %stbtt__buf_get.exit20.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8, !tbaa !36
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !34
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %stbtt__buf_get.exit20.loopexit

stbtt__buf_get.exit20.loopexit:                   ; preds = %.lr.ph.i.epil.preheader, %bb.h, %stbtt__buf_get.exit20.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %stbtt__buf_get.exit20.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i18.lcssa = phi i32 [ %.0.i.i18.1, %stbtt__buf_get.exit20.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i18.lcssa, -1
  br label %stbtt__buf_get.exit20

stbtt__buf_get.exit20:                            ; preds = %stbtt__buf_get.exit20.loopexit, %stbtt__buf_get8.exit
  %i.bi = phi i32 [ %..i.i, %stbtt__buf_get8.exit ], [ %.lcssa, %stbtt__buf_get.exit20.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %stbtt__buf_get8.exit ], [ %i.bh, %stbtt__buf_get.exit20.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i21 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i21, ptr %i.a, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %stbtt__buf_get.exit20, %stbtt__buf_get8.exit.i.1
  %i.bm = phi i32 [ %..i.i21, %stbtt__buf_get.exit20 ], [ %i.t, %stbtt__buf_get8.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %stbtt__buf_range.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !36
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = shl nuw nsw i64 %i.bt, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt__cff_int(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 9 uses
  %.not.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get.exit

stbtt__buf_get8.exit:                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36     ; 9 uses
  %i.f = add nsw i32 %i.b, 1                      ; 11 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !34
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 5 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = add i8 %i.i, -32
  %or.cond = icmp ult i8 %i.k, -41
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %stbtt__buf_get8.exit
  %i.l = add nsw i32 %i.j, -139
  br label %stbtt__buf_get.exit

bb.c:                                             ; preds = %stbtt__buf_get8.exit
  %or.cond3 = icmp slt i8 %i.i, -5
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i32 %i.j, 8
  %i.n = add nsw i32 %i.m, -63232                 ; 2 uses
  %.not.i22 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i22, label %bb.e, label %stbtt__buf_get8.exit24

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.b, 2
  store i32 %i.o, ptr %i.a, align 8, !tbaa !34
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.n, %i.s
  br label %stbtt__buf_get8.exit24

stbtt__buf_get8.exit24:                           ; preds = %bb.d, %bb.e
  %.0.i23 = phi i32 [ %i.t, %bb.e ], [ %i.n, %bb.d ]
  %i.u = add nuw nsw i32 %.0.i23, 108
  br label %stbtt__buf_get.exit

bb.f:                                             ; preds = %bb.c
  %or.cond5 = icmp slt i8 %i.i, -1
  br i1 %or.cond5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw nsw i32 %i.j, 8                  ; 2 uses
  %.not.i25 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i25, label %bb.h, label %stbtt__buf_get8.exit27

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.b, 2
  store i32 %i.w, ptr %i.a, align 8, !tbaa !34
  %i.x = sext i32 %i.f to i64
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.v, %i.aa
  br label %stbtt__buf_get8.exit27

stbtt__buf_get8.exit27:                           ; preds = %bb.g, %bb.h
  %.0.i26 = phi i32 [ %i.ab, %bb.h ], [ %i.v, %bb.g ]
  %i.ac = sub nsw i32 64148, %.0.i26
  br label %stbtt__buf_get.exit

bb.i:                                             ; preds = %bb.f
  switch i8 %i.i, label %stbtt__buf_get.exit [
    i8 28, label %bb.j
    i8 29, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i, label %bb.k, label %stbtt__buf_get8.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !34
  %i.ae = sext i32 %i.f to i64
  %i.af = getelementptr inbounds i8, ptr %i.e, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ %i.ad, %bb.k ], [ %i.f, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.aj, %i.d
  br i1 %.not.i.i.1, label %bb.l, label %stbtt__buf_get.exit

bb.l:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !34
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %i.e, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %.0.i.i, %i.ao
  br label %stbtt__buf_get.exit

bb.m:                                             ; preds = %bb.i
  %.not.i.i31 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i31, label %bb.n, label %stbtt__buf_get8.exit.i32

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !34
  %i.ar = sext i32 %i.f to i64
  %i.as = getelementptr inbounds i8, ptr %i.e, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  br label %stbtt__buf_get8.exit.i32

stbtt__buf_get8.exit.i32:                         ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %i.aq, %bb.n ], [ %i.f, %bb.m ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not.i.i31.1 = icmp slt i32 %i.aw, %i.d
  br i1 %.not.i.i31.1, label %bb.o, label %stbtt__buf_get8.exit.i32.1

bb.o:                                             ; preds = %stbtt__buf_get8.exit.i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !34
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.e, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %.0.i.i33, %i.bb
  br label %stbtt__buf_get8.exit.i32.1

stbtt__buf_get8.exit.i32.1:                       ; preds = %bb.o, %stbtt__buf_get8.exit.i32
  %i.bd = phi i32 [ %i.ax, %bb.o ], [ %i.aw, %stbtt__buf_get8.exit.i32 ] ; 4 uses
  %.0.i.i33.1 = phi i32 [ %i.bc, %bb.o ], [ %.0.i.i33, %stbtt__buf_get8.exit.i32 ]
  %i.be = shl nuw nsw i32 %.0.i.i33.1, 8          ; 2 uses
  %.not.i.i31.2 = icmp slt i32 %i.bd, %i.d
  br i1 %.not.i.i31.2, label %bb.p, label %stbtt__buf_get8.exit.i32.2

bb.p:                                             ; preds = %stbtt__buf_get8.exit.i32.1
  %i.bf = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !34
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %i.e, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.be, %i.bj
  br label %stbtt__buf_get8.exit.i32.2

stbtt__buf_get8.exit.i32.2:                       ; preds = %bb.p, %stbtt__buf_get8.exit.i32.1
  %i.bl = phi i32 [ %i.bf, %bb.p ], [ %i.bd, %stbtt__buf_get8.exit.i32.1 ] ; 3 uses
  %.0.i.i33.2 = phi i32 [ %i.bk, %bb.p ], [ %i.be, %stbtt__buf_get8.exit.i32.1 ]
  %i.bm = shl nuw i32 %.0.i.i33.2, 8              ; 2 uses
  %.not.i.i31.3 = icmp slt i32 %i.bl, %i.d
  br i1 %.not.i.i31.3, label %bb.q, label %stbtt__buf_get.exit

bb.q:                                             ; preds = %stbtt__buf_get8.exit.i32.2
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !34
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bm, %i.br
  br label %stbtt__buf_get.exit

stbtt__buf_get.exit:                              ; preds = %stbtt__buf_get8.exit.i32.2, %bb.q, %stbtt__buf_get8.exit.i, %bb.l, %bb.a, %bb.i, %stbtt__buf_get8.exit27, %stbtt__buf_get8.exit24, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.u, %stbtt__buf_get8.exit24 ], [ %i.ac, %stbtt__buf_get8.exit27 ], [ %.0.i.i, %stbtt__buf_get8.exit.i ], [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ap, %bb.l ], [ %i.bs, %bb.q ], [ %i.bm, %stbtt__buf_get8.exit.i32.2 ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt__cff_skip_operand(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 4 uses
  %.not.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i, label %stbtt__buf_peek8.exit, label %stbtt__buf_peek8.exit.thread

end_hunk_0
begin_hunk_1_@stbtt__cff_skip_operand:bb.a

stbtt__buf_peek8.exit.thread:                     ; preds = %bb.a, %stbtt__buf_peek8.exit
  %i.t = tail call i32 @stbtt__cff_int(ptr noundef nonnull %0) ; 0 uses
  br label %.loopexit

stbtt__buf_get8.exit..loopexit.loopexit_crit_edge: ; preds = %stbtt__buf_get8.exit
  br label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.b, %stbtt__buf_get8.exit..loopexit.loopexit_crit_edge, %stbtt__buf_peek8.exit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @stbtt__dict_get(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 17 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %stbtt__buf_get8.exit.thread, %bb.a
  %.promoted57 = phi i32 [ %.promoted55, %stbtt__buf_get8.exit.thread ], [ %i.c, %bb.a ] ; 5 uses
  %i.e = icmp slt i32 %.promoted57, %i.b
  br i1 %i.e, label %stbtt__buf_peek8.exit.lr.ph, label %bb.r

stbtt__buf_peek8.exit.lr.ph:                      ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !36     ; 6 uses
  br label %stbtt__buf_peek8.exit

stbtt__buf_peek8.exit:                            ; preds = %stbtt__buf_peek8.exit.lr.ph, %stbtt__cff_skip_operand.exit
  %spec.select434853 = phi i32 [ %.promoted57, %stbtt__buf_peek8.exit.lr.ph ], [ %spec.select4349, %stbtt__cff_skip_operand.exit ] ; 12 uses
  %i.g = sext i32 %spec.select434853 to i64       ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = icmp ugt i8 %i.i, 27
  br i1 %i.j, label %stbtt__buf_peek8.exit.i, label %stbtt__buf_get8.exit

stbtt__buf_peek8.exit.i:                          ; preds = %stbtt__buf_peek8.exit
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  %i.m = icmp eq i8 %i.l, 30
  %i.n = add nsw i32 %spec.select434853, 1        ; 14 uses
  br i1 %i.m, label %bb.c, label %stbtt__buf_get8.exit.i34

bb.c:                                             ; preds = %stbtt__buf_peek8.exit.i
  %i.o = icmp slt i32 %spec.select434853, -1
  %..i.i.i = select i1 %i.o, i32 %i.b, i32 %i.n   ; 4 uses
  store i32 %..i.i.i, ptr %i.d, align 8, !tbaa !34
  %smax.i = tail call i32 @llvm.smax.i32(i32 %..i.i.i, i32 %i.b) ; 5 uses
  %wide.trip.count.i = sext i32 %smax.i to i64
  %exitcond.not.i85.not = icmp slt i32 %..i.i.i, %i.b
  br i1 %exitcond.not.i85.not, label %stbtt__buf_get8.exit.i.lr.ph, label %stbtt__buf_get8.exit.thread

stbtt__buf_get8.exit.i.lr.ph:                     ; preds = %bb.c
  %i.p = sext i32 %..i.i.i to i64
  br label %stbtt__buf_get8.exit.i

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__buf_get8.exit.thread, label %stbtt__buf_get8.exit.i, !llvm.loop !1

stbtt__buf_get8.exit.i:                           ; preds = %stbtt__buf_get8.exit.i.lr.ph, %bb.d
  %indvars.iv.i86 = phi i64 [ %i.p, %stbtt__buf_get8.exit.i.lr.ph ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i86, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %indvars, ptr %i.d, align 8, !tbaa !34
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i86
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = and i32 %i.s, 15
  %i.u = icmp eq i32 %i.t, 15
  %.mask.i = and i32 %i.s, 240
  %i.v = icmp eq i32 %.mask.i, 240
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %stbtt__cff_skip_operand.exit, label %bb.d, !llvm.loop !1

stbtt__buf_get8.exit.i34:                         ; preds = %stbtt__buf_peek8.exit.i
  store i32 %i.n, ptr %i.d, align 8, !tbaa !34
  %i.w = load i8, ptr %i.h, align 1, !tbaa !37    ; 4 uses
  %i.x = add i8 %i.w, -32
  %or.cond.i35 = icmp ult i8 %i.x, -41
  br i1 %or.cond.i35, label %stbtt__cff_skip_operand.exit, label %bb.e

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i34
  %or.cond3.i = icmp slt i8 %i.w, -5
  br i1 %or.cond3.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i22.i = icmp slt i32 %i.n, %i.b
  br i1 %.not.i22.i, label %bb.g, label %stbtt__cff_skip_operand.exit

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %spec.select434853, 2
  br label %stbtt__cff_skip_operand.exit.sink.split

bb.h:                                             ; preds = %bb.e
  %or.cond5.i = icmp slt i8 %i.w, -1
  br i1 %or.cond5.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not.i25.i = icmp slt i32 %i.n, %i.b
  br i1 %.not.i25.i, label %bb.j, label %stbtt__cff_skip_operand.exit

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %spec.select434853, 2
  br label %stbtt__cff_skip_operand.exit.sink.split

bb.k:                                             ; preds = %bb.h
  switch i8 %i.w, label %stbtt__cff_skip_operand.exit [
    i8 28, label %stbtt__buf_get8.exit.i.i
    i8 29, label %stbtt__buf_get8.exit.i32.i
  ]

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.k
  %.not.i.i.i = icmp slt i32 %i.n, %i.b           ; 2 uses
  %i.aa = add nsw i32 %spec.select434853, 2
  %i.ab = select i1 %.not.i.i.i, i32 %i.aa, i32 %i.n ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.ab, %i.b        ; 2 uses
  %i.ac = or i1 %.not.i.i.i, %.not.i.i.1.i
  br i1 %i.ac, label %bb.l, label %stbtt__cff_skip_operand.exit

stbtt__buf_get8.exit.i32.i:                       ; preds = %bb.k
  %.not.i.i31.i = icmp slt i32 %i.n, %i.b         ; 2 uses
  %i.ad = add nsw i32 %spec.select434853, 2
  %i.ae = select i1 %.not.i.i31.i, i32 %i.ad, i32 %i.n ; 2 uses
  %.not.i.i31.1.i = icmp slt i32 %i.ae, %i.b      ; 2 uses
  %i.af = zext i1 %.not.i.i31.1.i to i32
  %i.ag = add nsw i32 %i.ae, %i.af                ; 2 uses
  %i.ah = or i1 %.not.i.i31.i, %.not.i.i31.1.i
  %.not.i.i31.2.i = icmp slt i32 %i.ag, %i.b      ; 2 uses
  %i.ai = zext i1 %.not.i.i31.2.i to i32
  %spec.select = add nsw i32 %i.ag, %i.ai         ; 2 uses
  %i.aj = or i1 %i.ah, %.not.i.i31.2.i
  %.not.i.i31.3.i = icmp slt i32 %spec.select, %i.b ; 2 uses
  %i.ak = or i1 %i.aj, %.not.i.i31.3.i
  br i1 %i.ak, label %bb.m, label %stbtt__cff_skip_operand.exit

bb.l:                                             ; preds = %stbtt__buf_get8.exit.i.i
  %i.al = zext i1 %.not.i.i.1.i to i32
  %simplifycfg.merge = add nsw i32 %i.ab, %i.al
  br label %stbtt__cff_skip_operand.exit.sink.split

bb.m:                                             ; preds = %stbtt__buf_get8.exit.i32.i
  %i.am = zext i1 %.not.i.i31.3.i to i32
  %spec.select43 = add nsw i32 %spec.select, %i.am
  br label %stbtt__cff_skip_operand.exit.sink.split

stbtt__cff_skip_operand.exit.sink.split:          ; preds = %bb.g, %bb.j, %bb.l, %bb.m
  %spec.select43.sink = phi i32 [ %spec.select43, %bb.m ], [ %simplifycfg.merge, %bb.l ], [ %i.z, %bb.j ], [ %i.y, %bb.g ] ; 2 uses
  store i32 %spec.select43.sink, ptr %i.d, align 8, !tbaa !34
  br label %stbtt__cff_skip_operand.exit

stbtt__cff_skip_operand.exit:                     ; preds = %stbtt__buf_get8.exit.i, %stbtt__cff_skip_operand.exit.sink.split, %stbtt__buf_get8.exit.i32.i, %stbtt__buf_get8.exit.i.i, %bb.i, %bb.f, %stbtt__buf_get8.exit.i34, %bb.k
  %spec.select4349 = phi i32 [ %i.n, %bb.k ], [ %i.n, %bb.f ], [ %i.n, %stbtt__buf_get8.exit.i32.i ], [ %spec.select43.sink, %stbtt__cff_skip_operand.exit.sink.split ], [ %i.n, %stbtt__buf_get8.exit.i.i ], [ %i.n, %bb.i ], [ %i.n, %stbtt__buf_get8.exit.i34 ], [ %indvars, %stbtt__buf_get8.exit.i ] ; 4 uses
  %.not.i = icmp slt i32 %spec.select4349, %i.b
  br i1 %.not.i, label %stbtt__buf_peek8.exit, label %stbtt__buf_get8.exit.thread, !llvm.loop !150

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_peek8.exit
  %i.an = add nsw i32 %spec.select434853, 1       ; 5 uses
  store i32 %i.an, ptr %i.d, align 8, !tbaa !34
  %i.ao = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i8 %i.ap, 12
  br i1 %i.ar, label %bb.n, label %stbtt__buf_get8.exit.thread

bb.n:                                             ; preds = %stbtt__buf_get8.exit
  %.not.i22 = icmp slt i32 %i.an, %i.b
  br i1 %.not.i22, label %bb.o, label %stbtt__buf_get8.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %spec.select434853, 2       ; 2 uses
  store i32 %i.as, ptr %i.d, align 8, !tbaa !34
  %i.at = sext i32 %i.an to i64
  %i.au = getelementptr inbounds i8, ptr %i.f, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aw, 256
  br label %stbtt__buf_get8.exit.thread

stbtt__buf_get8.exit.thread:                      ; preds = %stbtt__cff_skip_operand.exit, %bb.c, %bb.d, %bb.o, %bb.n, %stbtt__buf_get8.exit
  %.promoted55 = phi i32 [ %i.an, %bb.n ], [ %i.an, %stbtt__buf_get8.exit ], [ %i.as, %bb.o ], [ %smax.i, %bb.d ], [ %spec.select4349, %stbtt__cff_skip_operand.exit ], [ %smax.i, %bb.c ]
  %i.ay = phi i32 [ %spec.select434853, %bb.n ], [ %spec.select434853, %stbtt__buf_get8.exit ], [ %spec.select434853, %bb.o ], [ %smax.i, %bb.d ], [ %spec.select4349, %stbtt__cff_skip_operand.exit ], [ %smax.i, %bb.c ] ; 2 uses
  %.017 = phi i32 [ 256, %bb.n ], [ %i.aq, %stbtt__buf_get8.exit ], [ %i.ax, %bb.o ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %stbtt__cff_skip_operand.exit ]
  %i.az = icmp eq i32 %.017, %1
  br i1 %i.az, label %bb.p, label %bb.b

bb.p:                                             ; preds = %stbtt__buf_get8.exit.thread
  %i.ba = sub nsw i32 %i.ay, %.promoted57         ; 2 uses
  %i.bb = or i32 %i.ba, %.promoted57
  %or.cond.not.i = icmp slt i32 %i.bb, 0
  %i.bc = icmp sgt i32 %i.ay, %i.b
  %or.cond = or i1 %or.cond.not.i, %i.bc
  br i1 %or.cond, label %.thread38, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = zext nneg i32 %.promoted57 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bd
  %i.bf = zext nneg i32 %i.ba to i64
  %i.bg = shl nuw nsw i64 %i.bf, 32
  br label %.thread38

bb.r:                                             ; preds = %bb.b
  %i.bh = icmp slt i32 %i.b, 0
  br i1 %i.bh, label %.thread38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %0, align 8, !tbaa !36
  br label %.thread38

.thread38:                                        ; preds = %bb.s, %bb.r, %bb.p, %bb.q
  %.sroa.0.2 = phi ptr [ %i.be, %bb.q ], [ null, %bb.p ], [ null, %bb.r ], [ %i.bi, %bb.s ]
  %.sroa.3.2 = phi i64 [ %i.bg, %bb.q ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.s ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt__dict_get_ints(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = tail call { ptr, i64 } @stbtt__dict_get(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1        ; 3 uses
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = icmp sgt i32 %2, 0
  %i.g = trunc i64 %i.d to i32
  %i.h = lshr i64 %i.d, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = icmp slt i32 %i.g, %i.i
  %i.k = select i1 %i.f, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.m = call i32 @stbtt__cff_int(ptr noundef nonnull %4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.l
  %i.p = load i32, ptr %i.c, align 8
  %i.q = load i32, ptr %i.e, align 4
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @stbtt__cff_index_count(ptr nofree noundef captures(none) initializes((8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !34
  %.not.i.i = icmp sgt i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36
  store i32 1, ptr %i.d, align 8, !tbaa !34
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ 1, %bb.b ], [ %i.c, %bb.a ]    ; 3 uses
  %.0.i.i = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.k, %i.b
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !36
  %i.m = add nsw i32 %i.k, 1
  store i32 %i.m, ptr %i.d, align 8, !tbaa !34
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %.0.i.i, %i.q
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %.0.i.i.1 = phi i32 [ %i.r, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ]
  ret i32 %.0.i.i.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.18.8.extract.shift = lshr i64 %1, 32
  %.sroa.18.8.extract.trunc = trunc nuw i64 %.sroa.18.8.extract.shift to i32 ; 14 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %.sroa.18.8.extract.trunc, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %.sroa.18.8.extract.trunc, 0
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi i32 [ 1, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %.sroa.6.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.g = add nsw i32 %.sroa.6.1, 1
  %i.h = sext i32 %.sroa.6.1 to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %.0.i.i, %i.k
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %.sroa.6.1.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.6.1, %stbtt__buf_get8.exit.i ] ; 3 uses
  %.0.i.i.1 = phi i32 [ %i.l, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ]
  %.not.i = icmp slt i32 %.sroa.6.1.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get.exit26

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.i.1
  %i.m = sext i32 %.sroa.6.1.1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37    ; 4 uses
  %i.p = zext i8 %i.o to i32                      ; 9 uses
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %stbtt__buf_get.exit26, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %i.q = add nsw i32 %.sroa.6.1.1, 1
  %i.r = mul nsw i32 %2, %i.p
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.sroa.18.8.extract.trunc)
  %..i.i = select i1 %i.t, i32 %.sroa.18.8.extract.trunc, i32 %i.u ; 4 uses
  %i.v = add nsw i32 %i.p, -1                     ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.p, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i13.1, %.lr.ph.i.preheader.new
  %.sroa.6.3 = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %.sroa.6.4.1, %stbtt__buf_get8.exit.i13.1 ]
  %i.x = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.an, %stbtt__buf_get8.exit.i13.1 ] ; 4 uses
  %.056.i11 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i14.1, %stbtt__buf_get8.exit.i13.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i13.1 ]
  %i.y = shl i32 %.056.i11, 8                     ; 2 uses
  %.not.i.i12 = icmp slt i32 %i.x, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i12, label %bb.d, label %stbtt__buf_get8.exit.i13

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.x, 1                      ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.y, %i.ad
  br label %stbtt__buf_get8.exit.i13

stbtt__buf_get8.exit.i13:                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.6.4 = phi i32 [ %i.z, %bb.d ], [ %.sroa.6.3, %.lr.ph.i ]
  %i.af = phi i32 [ %i.z, %bb.d ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.0.i.i14 = phi i32 [ %i.ae, %bb.d ], [ %i.y, %.lr.ph.i ]
  %i.ag = shl i32 %.0.i.i14, 8                    ; 2 uses
  %.not.i.i12.1 = icmp slt i32 %i.af, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i12.1, label %bb.e, label %stbtt__buf_get8.exit.i13.1

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i13
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  br label %stbtt__buf_get8.exit.i13.1

stbtt__buf_get8.exit.i13.1:                       ; preds = %bb.e, %stbtt__buf_get8.exit.i13
  %.sroa.6.4.1 = phi i32 [ %i.ah, %bb.e ], [ %.sroa.6.4, %stbtt__buf_get8.exit.i13 ] ; 3 uses
  %i.an = phi i32 [ %i.ah, %bb.e ], [ %i.af, %stbtt__buf_get8.exit.i13 ] ; 2 uses
  %.0.i.i14.1 = phi i32 [ %i.am, %bb.e ], [ %i.ag, %stbtt__buf_get8.exit.i13 ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i18.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i18.preheader.unr-lcssa:                   ; preds = %stbtt__buf_get8.exit.i13.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i18.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.6.3.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %.sroa.6.4.1, %.lr.ph.i18.preheader.unr-lcssa ]
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i18.preheader.unr-lcssa ] ; 3 uses
  %.056.i11.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i14.1, %.lr.ph.i18.preheader.unr-lcssa ]
  %lcmp.mod56 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ao = shl i32 %.056.i11.epil.init, 8          ; 2 uses
  %.not.i.i12.epil = icmp slt i32 %.epil.init, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i12.epil, label %bb.f, label %.lr.ph.i18.preheader

bb.f:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add nsw i32 %.epil.init, 1
  %i.aq = sext i32 %.epil.init to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ao, %i.at
  br label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %.lr.ph.i.epil.preheader, %bb.f, %.lr.ph.i18.preheader.unr-lcssa
  %.sroa.6.4.lcssa = phi i32 [ %.sroa.6.4.1, %.lr.ph.i18.preheader.unr-lcssa ], [ %i.ap, %bb.f ], [ %.sroa.6.3.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0.i.i14.lcssa = phi i32 [ %.0.i.i14.1, %.lr.ph.i18.preheader.unr-lcssa ], [ %i.au, %bb.f ], [ %i.ao, %.lr.ph.i.epil.preheader ] ; 3 uses
  %xtraiter57 = and i32 %i.p, 1
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.lr.ph.i18.epil.preheader, label %.lr.ph.i18.preheader.new

.lr.ph.i18.preheader.new:                         ; preds = %.lr.ph.i18.preheader
  %unroll_iter63 = and i32 %i.p, 254
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %stbtt__buf_get8.exit.i23.1, %.lr.ph.i18.preheader.new
  %i.aw = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i18.preheader.new ], [ %i.bm, %stbtt__buf_get8.exit.i23.1 ] ; 4 uses
  %.056.i21 = phi i32 [ 0, %.lr.ph.i18.preheader.new ], [ %.0.i.i24.1, %stbtt__buf_get8.exit.i23.1 ]
  %niter64 = phi i32 [ 0, %.lr.ph.i18.preheader.new ], [ %niter64.next.1, %stbtt__buf_get8.exit.i23.1 ]
  %i.ax = shl i32 %.056.i21, 8                    ; 2 uses
  %.not.i.i22 = icmp slt i32 %i.aw, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i22, label %bb.g, label %stbtt__buf_get8.exit.i23

bb.g:                                             ; preds = %.lr.ph.i18
  %i.ay = add nsw i32 %i.aw, 1
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ax, %i.bc
  br label %stbtt__buf_get8.exit.i23

stbtt__buf_get8.exit.i23:                         ; preds = %bb.g, %.lr.ph.i18
  %i.be = phi i32 [ %i.ay, %bb.g ], [ %i.aw, %.lr.ph.i18 ] ; 4 uses
  %.0.i.i24 = phi i32 [ %i.bd, %bb.g ], [ %i.ax, %.lr.ph.i18 ]
  %i.bf = shl i32 %.0.i.i24, 8                    ; 2 uses
  %.not.i.i22.1 = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i22.1, label %bb.h, label %stbtt__buf_get8.exit.i23.1

bb.h:                                             ; preds = %stbtt__buf_get8.exit.i23
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %stbtt__buf_get8.exit.i23.1

stbtt__buf_get8.exit.i23.1:                       ; preds = %bb.h, %stbtt__buf_get8.exit.i23
  %i.bm = phi i32 [ %i.bg, %bb.h ], [ %i.be, %stbtt__buf_get8.exit.i23 ] ; 2 uses
  %.0.i.i24.1 = phi i32 [ %i.bl, %bb.h ], [ %i.bf, %stbtt__buf_get8.exit.i23 ] ; 3 uses
  %niter64.next.1 = add i32 %niter64, 2           ; 2 uses
  %niter64.ncmp.1 = icmp eq i32 %niter64.next.1, %unroll_iter63
  br i1 %niter64.ncmp.1, label %stbtt__buf_get.exit26.loopexit.unr-lcssa, label %.lr.ph.i18, !llvm.loop !0

stbtt__buf_get.exit26.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i23.1
  %lcmp.mod60.not = icmp eq i32 %xtraiter57, 0
  br i1 %lcmp.mod60.not, label %stbtt__buf_get.exit26, label %.lr.ph.i18.epil.preheader

.lr.ph.i18.epil.preheader:                        ; preds = %stbtt__buf_get.exit26.loopexit.unr-lcssa, %.lr.ph.i18.preheader
  %.epil.init59 = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i18.preheader ], [ %i.bm, %stbtt__buf_get.exit26.loopexit.unr-lcssa ] ; 2 uses
  %.056.i21.epil.init = phi i32 [ 0, %.lr.ph.i18.preheader ], [ %.0.i.i24.1, %stbtt__buf_get.exit26.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bn = shl i32 %.056.i21.epil.init, 8          ; 2 uses
  %.not.i.i22.epil = icmp slt i32 %.epil.init59, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i22.epil, label %bb.i, label %stbtt__buf_get.exit26

bb.i:                                             ; preds = %.lr.ph.i18.epil.preheader
  %i.bo = sext i32 %.epil.init59 to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, %i.br
  br label %stbtt__buf_get.exit26

stbtt__buf_get.exit26:                            ; preds = %stbtt__buf_get.exit26.loopexit.unr-lcssa, %bb.i, %.lr.ph.i18.epil.preheader, %stbtt__buf_get8.exit.i.1, %stbtt__buf_get8.exit
  %.0.i53 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %i.p, %.lr.ph.i18.epil.preheader ], [ %i.p, %bb.i ], [ %i.p, %stbtt__buf_get.exit26.loopexit.unr-lcssa ]
  %.05.lcssa.i40 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i14.lcssa, %.lr.ph.i18.epil.preheader ], [ %.0.i.i14.lcssa, %bb.i ], [ %.0.i.i14.lcssa, %stbtt__buf_get.exit26.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i17 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i24.1, %stbtt__buf_get.exit26.loopexit.unr-lcssa ], [ %i.bs, %bb.i ], [ %i.bn, %.lr.ph.i18.epil.preheader ]
  %i.bt = add nuw nsw i32 %.0.i.i.1, 1
  %i.bu = mul nuw nsw i32 %.0.i53, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, %.05.lcssa.i40       ; 4 uses
  %i.bx = sub nsw i32 %.05.lcssa.i17, %.05.lcssa.i40 ; 3 uses
  %i.by = or i32 %i.bx, %i.bw
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %stbtt__buf_range.exit

bb.j:                                             ; preds = %stbtt__buf_get.exit26
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %stbtt__buf_range.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext nneg i32 %i.bx to i64
  %i.cf = shl nuw nsw i64 %i.ce, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %stbtt__buf_get.exit26, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %stbtt__buf_get.exit26 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %stbtt__buf_get.exit26 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ttUSHORT(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define signext i16 @ttSHORT(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ttULONG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ttLONG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt__isfont(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37
  switch i8 %i.a, label %.thread26 [
    i8 49, label %bb.b
    i8 116, label %bb.e
    i8 79, label %bb.h
    i8 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !37
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !37
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %.thread26

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.p, label %.thread26

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  switch i8 %i.l, label %.thread26 [
    i8 121, label %bb.f
    i8 114, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  %i.o = icmp eq i8 %i.n, 112
  br i1 %i.o, label %bb.g, label %.thread26

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = icmp eq i8 %i.q, 49
  br i1 %i.r, label %bb.p, label %.thread26

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = icmp eq i8 %i.t, 84
  br i1 %i.u, label %bb.i, label %.thread26

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = icmp eq i8 %i.w, 84
  br i1 %i.x, label %bb.j, label %.thread26

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = icmp eq i8 %i.z, 79
  br i1 %i.aa, label %bb.p, label %.thread26

bb.k:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %.thread26

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.m, label %.thread26

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %.thread26

bb.n:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = icmp eq i8 %i.al, 117
  br i1 %i.am, label %bb.o, label %.thread26

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = icmp eq i8 %i.ao, 101
  br i1 %i.ap, label %bb.p, label %.thread26

.thread26:                                        ; preds = %bb.e, %bb.g, %bb.f, %bb.a, %bb.j, %bb.i, %bb.h, %bb.k, %bb.l, %bb.m, %bb.b, %bb.c, %bb.d, %bb.o, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.j, %bb.g, %bb.d, %.thread26
  %.0 = phi i32 [ 0, %.thread26 ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.m ], [ 1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt__find_table(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 2 uses
  %i.k = add i32 %1, 12
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i8, ptr %2, align 1, !tbaa !37
  %i.m = sext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl nuw nsw i32 %indvars.iv.tr, 4
  %i.r = add i32 %i.k, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 5 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = zext i8 %i.u to i32
  %i.w = icmp eq i32 %i.v, %i.m
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = zext i8 %i.y to i32
  %i.aa = load i8, ptr %i.n, align 1, !tbaa !37
end_hunk_1
begin_hunk_2_@stbtt__find_table:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = zext i8 %i.ak to i32
  %i.am = load i8, ptr %i.p, align 1, !tbaa !37
  %i.an = sext i8 %i.am to i32
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !3

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.f
  %.2 = phi i32 [ %i.ar, %bb.f ], [ 0, %bb.a ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetFontOffsetForIndex_internal(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = sext i1 %i.b to i32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !37
  %i.e = icmp eq i8 %i.d, 116
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %i.h = icmp eq i8 %i.g, 116
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37
  %i.k = icmp eq i8 %i.j, 99
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = icmp eq i8 %i.m, 102
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  switch i32 %i.q, label %bb.j [
    i32 65536, label %bb.h
    i32 131072, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %.not14 = icmp slt i32 %1, %i.t
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = shl nsw i32 %1, 2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.h ], [ %i.z, %bb.i ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetNumberOfFonts_internal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !37
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %bb.h [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %bb.g
  %.0 = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @stbtt__get_subrs(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 6 uses
  %5 = alloca %struct.stbtt__buf, align 8         ; 8 uses
  %6 = alloca %struct.stbtt__buf, align 8         ; 3 uses
  %7 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %.sroa.15.8.extract.shift = lshr i64 %1, 32
  %.sroa.15.8.extract.trunc = trunc nuw i64 %.sroa.15.8.extract.shift to i32 ; 15 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %6, i32 noundef 18) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  store i64 %i.e, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %i.e, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %stbtt__dict_get_ints.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = call i32 @stbtt__cff_int(ptr noundef nonnull %5) ; 4 uses
  %i.l = load i32, ptr %i.d, align 8
  %i.m = load i32, ptr %i.j, align 4
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %stbtt__dict_get_ints.exit, label %stbtt__dict_get_ints.exit.thread

stbtt__dict_get_ints.exit.thread:                 ; preds = %bb.a, %.lr.ph.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.m

stbtt__dict_get_ints.exit:                        ; preds = %.lr.ph.i.preheader
  %i.o = call i32 @stbtt__cff_int(ptr noundef nonnull %5) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %stbtt__dict_get_ints.exit
  %i.r = or i32 %i.k, %i.o
  %or.cond.not.i = icmp sgt i32 %i.r, -1
  br i1 %or.cond.not.i, label %bb.c, label %stbtt__buf_range.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp sgt i32 %i.o, %.sroa.15.8.extract.trunc
  %i.t = sub nsw i32 %.sroa.15.8.extract.trunc, %i.o
  %i.u = icmp sgt i32 %i.k, %i.t
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond.i, label %stbtt__buf_range.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = zext nneg i32 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = zext nneg i32 %i.k to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.w, %bb.d ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.y, %bb.d ]
  store ptr %.sroa.0.0.i, ptr %7, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.z = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %7, i32 noundef 19) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  store ptr %i.aa, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = extractvalue { ptr, i64 } %i.z, 1       ; 3 uses
  store i64 %i.ac, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = lshr i64 %i.ac, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %stbtt__dict_get_ints.exit12, label %stbtt__dict_get_ints.exit12.thread

stbtt__dict_get_ints.exit12.thread:               ; preds = %stbtt__buf_range.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.m

stbtt__dict_get_ints.exit12:                      ; preds = %stbtt__buf_range.exit
  %i.ah = call i32 @stbtt__cff_int(ptr noundef nonnull %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %stbtt__dict_get_ints.exit12
  %i.ai = add i32 %i.ah, %i.o                     ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %.sroa.15.8.extract.trunc)
  %..i = select i1 %i.aj, i32 %.sroa.15.8.extract.trunc, i32 %i.ak ; 7 uses
  %.not.i.i.i = icmp slt i32 %..i, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.i, label %bb.f, label %stbtt__buf_get8.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %..i, 1
  %i.am = sext i32 %..i to i64
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.f, %bb.e
  %i.ar = phi i32 [ %i.al, %bb.f ], [ %..i, %bb.e ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.aq, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.ar, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.1.i, label %bb.g, label %stbtt__buf_get8.exit.i.1.i

bb.g:                                             ; preds = %stbtt__buf_get8.exit.i.i
  %i.as = add nsw i32 %i.ar, 1
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %.0.i.i.i, %i.aw
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.g, %stbtt__buf_get8.exit.i.i
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ar, %stbtt__buf_get8.exit.i.i ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.ax, %bb.g ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i, label %stbtt__cff_get_index.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__buf_get8.exit.i.1.i
  %.not.i.i = icmp slt i32 %i.ay, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i, label %bb.i, label %stbtt__buf_get8.exit.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nsw i32 %i.ay, 1
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = zext i8 %i.bc to i32
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.i, %bb.h
  %i.be = phi i32 [ %i.az, %bb.i ], [ %i.ay, %bb.h ]
  %.0.i.i = phi i32 [ %i.bd, %bb.i ], [ 0, %bb.h ] ; 6 uses
  %i.bf = mul nuw nsw i32 %.0.i.i, %.0.i.i.1.i
  %i.bg = add nsw i32 %i.bf, %i.be                ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  %i.bi = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %.sroa.15.8.extract.trunc)
  %..i.i.i = select i1 %i.bh, i32 %.sroa.15.8.extract.trunc, i32 %i.bi ; 3 uses
  %.not22.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not22.i, label %stbtt__buf_get.exit20.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %stbtt__buf_get8.exit.i
  %xtraiter = and i32 %.0.i.i, 1
  %i.bj = icmp eq i32 %.0.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i.i, 254
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %stbtt__buf_get8.exit.i17.i.1, %.lr.ph.i.i.preheader.new
  %i.bk = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ca, %stbtt__buf_get8.exit.i17.i.1 ] ; 4 uses
  %.056.i15.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.0.i.i18.i.1, %stbtt__buf_get8.exit.i17.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i17.i.1 ]
  %i.bl = shl i32 %.056.i15.i, 8                  ; 2 uses
  %.not.i.i16.i = icmp slt i32 %i.bk, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i16.i, label %bb.j, label %stbtt__buf_get8.exit.i17.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bm = add nsw i32 %i.bk, 1
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bl, %i.bq
  br label %stbtt__buf_get8.exit.i17.i

stbtt__buf_get8.exit.i17.i:                       ; preds = %bb.j, %.lr.ph.i.i
  %i.bs = phi i32 [ %i.bm, %bb.j ], [ %i.bk, %.lr.ph.i.i ] ; 4 uses
  %.0.i.i18.i = phi i32 [ %i.br, %bb.j ], [ %i.bl, %.lr.ph.i.i ]
  %i.bt = shl i32 %.0.i.i18.i, 8                  ; 2 uses
  %.not.i.i16.i.1 = icmp slt i32 %i.bs, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i16.i.1, label %bb.k, label %stbtt__buf_get8.exit.i17.i.1

bb.k:                                             ; preds = %stbtt__buf_get8.exit.i17.i
  %i.bu = add nsw i32 %i.bs, 1
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bt, %i.by
  br label %stbtt__buf_get8.exit.i17.i.1

stbtt__buf_get8.exit.i17.i.1:                     ; preds = %bb.k, %stbtt__buf_get8.exit.i17.i
  %i.ca = phi i32 [ %i.bu, %bb.k ], [ %i.bs, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %.0.i.i18.i.1 = phi i32 [ %i.bz, %bb.k ], [ %i.bt, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

stbtt__buf_get.exit20.loopexit.i.unr-lcssa:       ; preds = %stbtt__buf_get8.exit.i17.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit20.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.ca, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i15.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.cb = shl i32 %.056.i15.i.epil.init, 8        ; 2 uses
  %.not.i.i16.i.epil = icmp slt i32 %.epil.init, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i16.i.epil, label %bb.l, label %stbtt__buf_get.exit20.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.cc = add nsw i32 %.epil.init, 1
  %i.cd = sext i32 %.epil.init to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cb, %i.cg
  br label %stbtt__buf_get.exit20.loopexit.i

stbtt__buf_get.exit20.loopexit.i:                 ; preds = %.lr.ph.i.i.epil.preheader, %bb.l, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ca, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ], [ %i.cc, %bb.l ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0.i.i18.i.lcssa = phi i32 [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ], [ %i.ch, %bb.l ], [ %i.cb, %.lr.ph.i.i.epil.preheader ]
  %i.ci = add i32 %.0.i.i18.i.lcssa, -1
  br label %stbtt__buf_get.exit20.i

stbtt__buf_get.exit20.i:                          ; preds = %stbtt__buf_get.exit20.loopexit.i, %stbtt__buf_get8.exit.i
  %i.cj = phi i32 [ %..i.i.i, %stbtt__buf_get8.exit.i ], [ %.lcssa, %stbtt__buf_get.exit20.loopexit.i ]
  %.05.lcssa.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i ], [ %i.ci, %stbtt__buf_get.exit20.loopexit.i ]
  %i.ck = add nsw i32 %.05.lcssa.i.i, %i.cj       ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %.sroa.15.8.extract.trunc)
  %..i.i21.i = select i1 %i.cl, i32 %.sroa.15.8.extract.trunc, i32 %i.cm
  br label %stbtt__cff_get_index.exit

stbtt__cff_get_index.exit:                        ; preds = %stbtt__buf_get.exit20.i, %stbtt__buf_get8.exit.i.1.i
  %i.cn = phi i32 [ %..i.i21.i, %stbtt__buf_get.exit20.i ], [ %i.ay, %stbtt__buf_get8.exit.i.1.i ] ; 2 uses
  %i.co = sub nsw i32 %i.cn, %..i                 ; 2 uses
  %i.cp = or i32 %i.co, %..i
  %or.cond.not.i.i = icmp slt i32 %i.cp, 0
  %i.cq = icmp sgt i32 %i.cn, %.sroa.15.8.extract.trunc
  %or.cond.i13 = or i1 %i.cq, %or.cond.not.i.i    ; 2 uses
  %i.cr = zext nneg i32 %..i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %i.ct = zext nneg i32 %i.co to i64
  %i.cu = shl nuw nsw i64 %i.ct, 32
  %.sroa.0.0.i.i = select i1 %or.cond.i13, ptr null, ptr %i.cs
  %.sroa.5.0.i.i = select i1 %or.cond.i13, i64 0, i64 %i.cu
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.5.0.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %stbtt__dict_get_ints.exit.thread, %stbtt__dict_get_ints.exit12, %stbtt__dict_get_ints.exit12.thread, %stbtt__dict_get_ints.exit, %stbtt__cff_get_index.exit
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i.i, %stbtt__cff_get_index.exit ], [ zeroinitializer, %stbtt__dict_get_ints.exit ], [ zeroinitializer, %stbtt__dict_get_ints.exit12.thread ], [ zeroinitializer, %stbtt__dict_get_ints.exit12 ], [ zeroinitializer, %stbtt__dict_get_ints.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret { ptr, i64 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt__get_svg(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %i.r = add i32 %i.g, 12
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.s = shl nuw nsw i32 %indvars.iv.tr.i, 4
  %i.t = add i32 %i.r, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = icmp eq i8 %i.w, 83
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = icmp eq i8 %i.z, 86
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = icmp eq i8 %i.ac, 71
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = icmp eq i8 %i.af, 32
  br i1 %i.ag, label %stbtt__find_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.sink.split, label %bb.c, !llvm.loop !3

stbtt__find_table.exit:                           ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = load i32, ptr %i.ah, align 1            ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %stbtt__find_table.exit
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = add i32 %i.ao, %i.aj
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %stbtt__find_table.exit, %bb.b, %bb.h
  %.sink = phi i32 [ %i.ap, %bb.h ], [ 0, %stbtt__find_table.exit ], [ 0, %bb.b ], [ 0, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 4, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %i.aq = phi i32 [ %i.b, %bb.a ], [ %.sink, %.sink.split ]
  ret i32 %i.aq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr nofree noundef captures(none) initializes((8, 20), (64, 80)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %5 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %6 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %7 = alloca %struct.stbtt__buf, align 8         ; 28 uses
  %8 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 9 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = add i32 %2, 12                           ; 10 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %stbtt__find_table.exit130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.m to i64  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.o = shl nuw nsw i32 %indvars.iv.tr.i, 4
  %i.p = add i32 %i.o, %i.n
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 5 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37
  %i.t = icmp eq i8 %i.s, 99
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  %i.w = icmp eq i8 %i.v, 109
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = icmp eq i8 %i.y, 97
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = icmp eq i8 %i.ab, 112
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  br label %.lr.ph.i123

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i123, label %bb.b, !llvm.loop !3

.lr.ph.i123:                                      ; preds = %bb.g, %bb.f
  %.2.i = phi i32 [ %i.af, %bb.f ], [ 0, %bb.g ]  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.lr.ph.i123
  %indvars.iv.i125 = phi i64 [ 0, %.lr.ph.i123 ], [ %indvars.iv.next.i127, %bb.m ] ; 2 uses
  %indvars.iv.tr.i126 = trunc nuw nsw i64 %indvars.iv.i125 to i32
  %i.ag = shl nuw nsw i32 %indvars.iv.tr.i126, 4
  %i.ah = add i32 %i.ag, %i.n
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 5 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = icmp eq i8 %i.ak, 108
  br i1 %i.al, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
end_hunk_2
begin_hunk_3_@stbtt_InitFont_internal:bb.a
  br label %stbtt__buf_get8.exit.i17.i.1

stbtt__buf_get8.exit.i17.i.1:                     ; preds = %bb.bm, %stbtt__buf_get8.exit.i17.i
  %i.kb = phi i32 [ %i.jv, %bb.bm ], [ %i.jt, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %.0.i.i18.i.1 = phi i32 [ %i.ka, %bb.bm ], [ %i.ju, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

stbtt__buf_get.exit20.loopexit.i.unr-lcssa:       ; preds = %stbtt__buf_get8.exit.i17.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit20.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.kb, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i15.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ]
  %lcmp.mod587 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod587)
  %i.kc = shl i32 %.056.i15.i.epil.init, 8        ; 2 uses
  %.not.i.i16.i.epil = icmp slt i32 %.epil.init, %i.ia
  br i1 %.not.i.i16.i.epil, label %bb.bn, label %stbtt__buf_get.exit20.loopexit.i

bb.bn:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.kd = add nsw i32 %.epil.init, 1
  %i.ke = sext i32 %.epil.init to i64
  %i.kf = getelementptr inbounds i8, ptr %i.jj, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !37
  %i.kh = zext i8 %i.kg to i32
  %i.ki = or disjoint i32 %i.kc, %i.kh
  br label %stbtt__buf_get.exit20.loopexit.i

stbtt__buf_get.exit20.loopexit.i:                 ; preds = %.lr.ph.i.i.epil.preheader, %bb.bn, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa
  %.lcssa566 = phi i32 [ %i.kb, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ], [ %i.kd, %bb.bn ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0.i.i18.i.lcssa = phi i32 [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ], [ %i.ki, %bb.bn ], [ %i.kc, %.lr.ph.i.i.epil.preheader ]
  %i.kj = add i32 %.0.i.i18.i.lcssa, -1
  br label %stbtt__buf_get.exit20.i

stbtt__buf_get.exit20.i:                          ; preds = %stbtt__buf_get.exit20.loopexit.i, %stbtt__buf_get8.exit.i
  %i.kk = phi i32 [ %..i.i.i, %stbtt__buf_get8.exit.i ], [ %.lcssa566, %stbtt__buf_get.exit20.loopexit.i ]
  %.05.lcssa.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i ], [ %i.kj, %stbtt__buf_get.exit20.loopexit.i ]
  %i.kl = add nsw i32 %.05.lcssa.i.i, %i.kk       ; 2 uses
  %i.km = icmp slt i32 %i.kl, 0
  %i.kn = tail call i32 @llvm.smin.i32(i32 %i.kl, i32 %i.ia)
  %..i.i21.i = select i1 %i.km, i32 %i.ia, i32 %i.kn ; 2 uses
  store i32 %..i.i21.i, ptr %i.hw, align 8, !tbaa !34
  br label %stbtt__cff_get_index.exit

stbtt__cff_get_index.exit:                        ; preds = %stbtt__buf_get.exit20.i, %stbtt__buf_get8.exit.i.1.i
  %i.ko = phi i32 [ %..i.i21.i, %stbtt__buf_get.exit20.i ], [ %i.iy, %stbtt__buf_get8.exit.i.1.i ] ; 7 uses
  %.not.i.i.i196 = icmp slt i32 %i.ko, %i.ia
  br i1 %.not.i.i.i196, label %bb.bo, label %stbtt__buf_get8.exit.i.i197

bb.bo:                                            ; preds = %stbtt__cff_get_index.exit
  %i.kp = load ptr, ptr %7, align 8, !tbaa !36
  %i.kq = add nsw i32 %i.ko, 1                    ; 2 uses
  store i32 %i.kq, ptr %i.hw, align 8, !tbaa !34
  %i.kr = sext i32 %i.ko to i64
  %i.ks = getelementptr inbounds i8, ptr %i.kp, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !37
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 8
  br label %stbtt__buf_get8.exit.i.i197

stbtt__buf_get8.exit.i.i197:                      ; preds = %bb.bo, %stbtt__cff_get_index.exit
  %i.kw = phi i32 [ %i.kq, %bb.bo ], [ %i.ko, %stbtt__cff_get_index.exit ] ; 4 uses
  %.0.i.i.i198 = phi i32 [ %i.kv, %bb.bo ], [ 0, %stbtt__cff_get_index.exit ] ; 2 uses
  %.not.i.i.1.i199 = icmp slt i32 %i.kw, %i.ia
  br i1 %.not.i.i.1.i199, label %bb.bp, label %stbtt__buf_get8.exit.i.1.i200

bb.bp:                                            ; preds = %stbtt__buf_get8.exit.i.i197
  %i.kx = load ptr, ptr %7, align 8, !tbaa !36
  %i.ky = add nsw i32 %i.kw, 1                    ; 2 uses
  store i32 %i.ky, ptr %i.hw, align 8, !tbaa !34
  %i.kz = sext i32 %i.kw to i64
  %i.la = getelementptr inbounds i8, ptr %i.kx, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !37
  %i.lc = zext i8 %i.lb to i32
  %i.ld = or disjoint i32 %.0.i.i.i198, %i.lc
  br label %stbtt__buf_get8.exit.i.1.i200

stbtt__buf_get8.exit.i.1.i200:                    ; preds = %bb.bp, %stbtt__buf_get8.exit.i.i197
  %i.le = phi i32 [ %i.ky, %bb.bp ], [ %i.kw, %stbtt__buf_get8.exit.i.i197 ] ; 5 uses
  %.0.i.i.1.i201 = phi i32 [ %i.ld, %bb.bp ], [ %.0.i.i.i198, %stbtt__buf_get8.exit.i.i197 ] ; 2 uses
  %.not.i202 = icmp eq i32 %.0.i.i.1.i201, 0
  br i1 %.not.i202, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %stbtt__buf_get8.exit.i.1.i200
  %.not.i.i203 = icmp slt i32 %i.le, %i.ia
  br i1 %.not.i.i203, label %bb.br, label %stbtt__buf_get8.exit.i204

bb.br:                                            ; preds = %bb.bq
  %i.lf = load ptr, ptr %7, align 8, !tbaa !36
  %i.lg = add nsw i32 %i.le, 1
  %i.lh = sext i32 %i.le to i64
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !37
  %i.lk = zext i8 %i.lj to i32
  br label %stbtt__buf_get8.exit.i204

stbtt__buf_get8.exit.i204:                        ; preds = %bb.br, %bb.bq
  %.promoted399 = phi i32 [ %i.lg, %bb.br ], [ %i.le, %bb.bq ]
  %.0.i.i205 = phi i32 [ %i.lk, %bb.br ], [ 0, %bb.bq ] ; 6 uses
  %i.ll = mul nuw nsw i32 %.0.i.i205, %.0.i.i.1.i201
  %i.lm = add nsw i32 %i.ll, %.promoted399        ; 2 uses
  %i.ln = icmp slt i32 %i.lm, 0
  %i.lo = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ia)
  %..i.i.i206 = select i1 %i.ln, i32 %i.ia, i32 %i.lo ; 3 uses
  %.not22.i207 = icmp eq i32 %.0.i.i205, 0
  br i1 %.not22.i207, label %stbtt__buf_get.exit20.i216, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %stbtt__buf_get8.exit.i204
  %i.lp = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter588 = and i32 %.0.i.i205, 1
  %i.lq = icmp eq i32 %.0.i.i205, 1
  br i1 %i.lq, label %.lr.ph.i.i208.epil.preheader, label %.lr.ph.i.i208.preheader.new

.lr.ph.i.i208.preheader.new:                      ; preds = %.lr.ph.i.i208.preheader
  %unroll_iter595 = and i32 %.0.i.i205, 254
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %stbtt__buf_get8.exit.i17.i212.1, %.lr.ph.i.i208.preheader.new
  %i.lr = phi i32 [ %..i.i.i206, %.lr.ph.i.i208.preheader.new ], [ %i.mh, %stbtt__buf_get8.exit.i17.i212.1 ] ; 4 uses
  %.056.i15.i210 = phi i32 [ 0, %.lr.ph.i.i208.preheader.new ], [ %.0.i.i18.i213.1, %stbtt__buf_get8.exit.i17.i212.1 ]
  %niter596 = phi i32 [ 0, %.lr.ph.i.i208.preheader.new ], [ %niter596.next.1, %stbtt__buf_get8.exit.i17.i212.1 ]
  %i.ls = shl i32 %.056.i15.i210, 8               ; 2 uses
  %.not.i.i16.i211 = icmp slt i32 %i.lr, %i.ia
  br i1 %.not.i.i16.i211, label %bb.bs, label %stbtt__buf_get8.exit.i17.i212

bb.bs:                                            ; preds = %.lr.ph.i.i208
  %i.lt = add nsw i32 %i.lr, 1
  %i.lu = sext i32 %i.lr to i64
  %i.lv = getelementptr inbounds i8, ptr %i.lp, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !37
  %i.lx = zext i8 %i.lw to i32
  %i.ly = or disjoint i32 %i.ls, %i.lx
  br label %stbtt__buf_get8.exit.i17.i212

stbtt__buf_get8.exit.i17.i212:                    ; preds = %bb.bs, %.lr.ph.i.i208
  %i.lz = phi i32 [ %i.lt, %bb.bs ], [ %i.lr, %.lr.ph.i.i208 ] ; 4 uses
  %.0.i.i18.i213 = phi i32 [ %i.ly, %bb.bs ], [ %i.ls, %.lr.ph.i.i208 ]
  %i.ma = shl i32 %.0.i.i18.i213, 8               ; 2 uses
  %.not.i.i16.i211.1 = icmp slt i32 %i.lz, %i.ia
  br i1 %.not.i.i16.i211.1, label %bb.bt, label %stbtt__buf_get8.exit.i17.i212.1

bb.bt:                                            ; preds = %stbtt__buf_get8.exit.i17.i212
  %i.mb = add nsw i32 %i.lz, 1
  %i.mc = sext i32 %i.lz to i64
  %i.md = getelementptr inbounds i8, ptr %i.lp, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !37
  %i.mf = zext i8 %i.me to i32
  %i.mg = or disjoint i32 %i.ma, %i.mf
  br label %stbtt__buf_get8.exit.i17.i212.1

stbtt__buf_get8.exit.i17.i212.1:                  ; preds = %bb.bt, %stbtt__buf_get8.exit.i17.i212
  %i.mh = phi i32 [ %i.mb, %bb.bt ], [ %i.lz, %stbtt__buf_get8.exit.i17.i212 ] ; 3 uses
  %.0.i.i18.i213.1 = phi i32 [ %i.mg, %bb.bt ], [ %i.ma, %stbtt__buf_get8.exit.i17.i212 ] ; 3 uses
  %niter596.next.1 = add nuw nsw i32 %niter596, 2 ; 2 uses
  %niter596.ncmp.1 = icmp eq i32 %niter596.next.1, %unroll_iter595
  br i1 %niter596.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa, label %.lr.ph.i.i208, !llvm.loop !0

stbtt__buf_get.exit20.loopexit.i215.unr-lcssa:    ; preds = %stbtt__buf_get8.exit.i17.i212.1
  %lcmp.mod591.not = icmp eq i32 %xtraiter588, 0
  br i1 %lcmp.mod591.not, label %stbtt__buf_get.exit20.loopexit.i215, label %.lr.ph.i.i208.epil.preheader

.lr.ph.i.i208.epil.preheader:                     ; preds = %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa, %.lr.ph.i.i208.preheader
  %.epil.init590 = phi i32 [ %..i.i.i206, %.lr.ph.i.i208.preheader ], [ %i.mh, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ] ; 4 uses
  %.056.i15.i210.epil.init = phi i32 [ 0, %.lr.ph.i.i208.preheader ], [ %.0.i.i18.i213.1, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ]
  %lcmp.mod594 = trunc i32 %.0.i.i205 to i1
  tail call void @llvm.assume(i1 %lcmp.mod594)
  %i.mi = shl i32 %.056.i15.i210.epil.init, 8     ; 2 uses
  %.not.i.i16.i211.epil = icmp slt i32 %.epil.init590, %i.ia
  br i1 %.not.i.i16.i211.epil, label %bb.bu, label %stbtt__buf_get.exit20.loopexit.i215

bb.bu:                                            ; preds = %.lr.ph.i.i208.epil.preheader
  %i.mj = add nsw i32 %.epil.init590, 1
  %i.mk = sext i32 %.epil.init590 to i64
  %i.ml = getelementptr inbounds i8, ptr %i.lp, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !37
  %i.mn = zext i8 %i.mm to i32
  %i.mo = or disjoint i32 %i.mi, %i.mn
  br label %stbtt__buf_get.exit20.loopexit.i215

stbtt__buf_get.exit20.loopexit.i215:              ; preds = %.lr.ph.i.i208.epil.preheader, %bb.bu, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa
  %.lcssa565 = phi i32 [ %i.mh, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ], [ %i.mj, %bb.bu ], [ %.epil.init590, %.lr.ph.i.i208.epil.preheader ]
  %.0.i.i18.i213.lcssa = phi i32 [ %.0.i.i18.i213.1, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ], [ %i.mo, %bb.bu ], [ %i.mi, %.lr.ph.i.i208.epil.preheader ]
  %i.mp = add i32 %.0.i.i18.i213.lcssa, -1
  br label %stbtt__buf_get.exit20.i216

stbtt__buf_get.exit20.i216:                       ; preds = %stbtt__buf_get.exit20.loopexit.i215, %stbtt__buf_get8.exit.i204
  %i.mq = phi i32 [ %..i.i.i206, %stbtt__buf_get8.exit.i204 ], [ %.lcssa565, %stbtt__buf_get.exit20.loopexit.i215 ]
  %.05.lcssa.i.i217 = phi i32 [ -1, %stbtt__buf_get8.exit.i204 ], [ %i.mp, %stbtt__buf_get.exit20.loopexit.i215 ]
  %i.mr = add nsw i32 %.05.lcssa.i.i217, %i.mq    ; 2 uses
  %i.ms = icmp slt i32 %i.mr, 0
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.ia)
  %..i.i21.i218 = select i1 %i.ms, i32 %i.ia, i32 %i.mt ; 2 uses
  store i32 %..i.i21.i218, ptr %i.hw, align 8, !tbaa !34
  br label %bb.bv

bb.bv:                                            ; preds = %stbtt__buf_get.exit20.i216, %stbtt__buf_get8.exit.i.1.i200
  %i.mu = phi i32 [ %..i.i21.i218, %stbtt__buf_get.exit20.i216 ], [ %i.le, %stbtt__buf_get8.exit.i.1.i200 ] ; 6 uses
  %i.mv = sub nsw i32 %i.mu, %i.ko                ; 4 uses
  %i.mw = or i32 %i.mv, %i.ko
  %or.cond.not.i.i219 = icmp slt i32 %i.mw, 0
  %i.mx = icmp sgt i32 %i.mu, %i.ia
  %or.cond.i220 = or i1 %i.mx, %or.cond.not.i.i219
  br i1 %or.cond.i220, label %stbtt__buf_get.exit26.i, label %stbtt__cff_get_index.exit225

stbtt__cff_get_index.exit225:                     ; preds = %bb.bv
  %i.my = load ptr, ptr %7, align 8, !tbaa !36
  %i.mz = zext nneg i32 %i.ko to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mz ; 15 uses
  %.not.i.i.i226.not = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i.i226.not, label %stbtt__buf_get.exit26.i, label %bb.bw

bb.bw:                                            ; preds = %stbtt__cff_get_index.exit225
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !37
  %i.nc = zext i8 %i.nb to i32
  %i.nd = shl nuw nsw i32 %i.nc, 8                ; 2 uses
  %.not.i.i.1.i229.not = icmp eq i32 %i.mv, 1
  br i1 %.not.i.i.1.i229.not, label %stbtt__buf_get8.exit.i.1.i230, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !37
  %i.ng = zext i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.nd, %i.ng
  br label %stbtt__buf_get8.exit.i.1.i230

stbtt__buf_get8.exit.i.1.i230:                    ; preds = %bb.bx, %bb.bw
  %.sroa.18.8.extract.trunc.i353496 = phi i32 [ %i.mv, %bb.bx ], [ 1, %bb.bw ] ; 12 uses
  %.sroa.6.1.1.i = phi i32 [ 2, %bb.bx ], [ 1, %bb.bw ] ; 3 uses
  %.0.i.i.1.i231 = phi i32 [ %i.nh, %bb.bx ], [ %i.nd, %bb.bw ] ; 5 uses
  %.not.i.i232 = icmp samesign ult i32 %.sroa.6.1.1.i, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i232, label %stbtt__buf_get8.exit.i238, label %stbtt__buf_get.exit26.i

stbtt__buf_get8.exit.i238:                        ; preds = %stbtt__buf_get8.exit.i.1.i230
  %9 = zext nneg i32 %.sroa.6.1.1.i to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 %9
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !37  ; 4 uses
  %i.nk = zext i8 %i.nj to i32                    ; 8 uses
  %.not.i239 = icmp eq i8 %i.nj, 0
  br i1 %.not.i239, label %stbtt__buf_get.exit26.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %stbtt__buf_get8.exit.i238
  %i.nl = add nuw nsw i32 %.sroa.6.1.1.i, 1       ; 4 uses
  %i.nm = add nsw i32 %i.nk, -1                   ; 2 uses
  %xtraiter597 = and i32 %i.nk, 1
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %.lr.ph.i.i241.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter604 = and i32 %i.nk, 254
  br label %.lr.ph.i.i241

.lr.ph.i.i241:                                    ; preds = %stbtt__buf_get8.exit.i13.i.1, %.lr.ph.i.preheader.i.new
  %.sroa.6.3.i = phi i32 [ %i.nl, %.lr.ph.i.preheader.i.new ], [ %.sroa.6.4.i.1, %stbtt__buf_get8.exit.i13.i.1 ]
  %i.no = phi i32 [ %i.nl, %.lr.ph.i.preheader.i.new ], [ %i.oe, %stbtt__buf_get8.exit.i13.i.1 ] ; 4 uses
  %.056.i11.i = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %.0.i.i14.i.1, %stbtt__buf_get8.exit.i13.i.1 ]
  %niter605 = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter605.next.1, %stbtt__buf_get8.exit.i13.i.1 ]
  %i.np = shl i32 %.056.i11.i, 8                  ; 2 uses
  %.not.i.i12.i = icmp slt i32 %i.no, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i12.i, label %bb.by, label %stbtt__buf_get8.exit.i13.i

bb.by:                                            ; preds = %.lr.ph.i.i241
  %i.nq = add nsw i32 %i.no, 1                    ; 2 uses
  %i.nr = sext i32 %i.no to i64
  %i.ns = getelementptr inbounds i8, ptr %i.na, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !37
  %i.nu = zext i8 %i.nt to i32
  %i.nv = or disjoint i32 %i.np, %i.nu
  br label %stbtt__buf_get8.exit.i13.i

stbtt__buf_get8.exit.i13.i:                       ; preds = %bb.by, %.lr.ph.i.i241
  %.sroa.6.4.i = phi i32 [ %i.nq, %bb.by ], [ %.sroa.6.3.i, %.lr.ph.i.i241 ]
  %i.nw = phi i32 [ %i.nq, %bb.by ], [ %i.no, %.lr.ph.i.i241 ] ; 4 uses
  %.0.i.i14.i = phi i32 [ %i.nv, %bb.by ], [ %i.np, %.lr.ph.i.i241 ]
  %i.nx = shl i32 %.0.i.i14.i, 8                  ; 2 uses
  %.not.i.i12.i.1 = icmp slt i32 %i.nw, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i12.i.1, label %bb.bz, label %stbtt__buf_get8.exit.i13.i.1

bb.bz:                                            ; preds = %stbtt__buf_get8.exit.i13.i
  %i.ny = add nsw i32 %i.nw, 1                    ; 2 uses
  %i.nz = sext i32 %i.nw to i64
  %i.oa = getelementptr inbounds i8, ptr %i.na, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !37
  %i.oc = zext i8 %i.ob to i32
  %i.od = or disjoint i32 %i.nx, %i.oc
  br label %stbtt__buf_get8.exit.i13.i.1

stbtt__buf_get8.exit.i13.i.1:                     ; preds = %bb.bz, %stbtt__buf_get8.exit.i13.i
  %.sroa.6.4.i.1 = phi i32 [ %i.ny, %bb.bz ], [ %.sroa.6.4.i, %stbtt__buf_get8.exit.i13.i ] ; 3 uses
  %i.oe = phi i32 [ %i.ny, %bb.bz ], [ %i.nw, %stbtt__buf_get8.exit.i13.i ] ; 2 uses
  %.0.i.i14.i.1 = phi i32 [ %i.od, %bb.bz ], [ %i.nx, %stbtt__buf_get8.exit.i13.i ] ; 3 uses
  %niter605.next.1 = add i32 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i32 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %.lr.ph.i18.i.preheader.unr-lcssa, label %.lr.ph.i.i241, !llvm.loop !0

.lr.ph.i18.i.preheader.unr-lcssa:                 ; preds = %stbtt__buf_get8.exit.i13.i.1
  %lcmp.mod600.not = icmp eq i32 %xtraiter597, 0
  br i1 %lcmp.mod600.not, label %.lr.ph.i18.i.preheader, label %.lr.ph.i.i241.epil.preheader

.lr.ph.i.i241.epil.preheader:                     ; preds = %.lr.ph.i18.i.preheader.unr-lcssa, %.lr.ph.i.preheader.i
  %.sroa.6.3.i.epil.init = phi i32 [ %i.nl, %.lr.ph.i.preheader.i ], [ %.sroa.6.4.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ]
  %.epil.init599 = phi i32 [ %i.nl, %.lr.ph.i.preheader.i ], [ %i.oe, %.lr.ph.i18.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i11.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i ], [ %.0.i.i14.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ]
  %lcmp.mod603 = trunc i8 %i.nj to i1
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.of = shl i32 %.056.i11.i.epil.init, 8        ; 2 uses
  %.not.i.i12.i.epil = icmp slt i32 %.epil.init599, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i12.i.epil, label %bb.ca, label %.lr.ph.i18.i.preheader

bb.ca:                                            ; preds = %.lr.ph.i.i241.epil.preheader
  %i.og = add nsw i32 %.epil.init599, 1
  %i.oh = sext i32 %.epil.init599 to i64
  %i.oi = getelementptr inbounds i8, ptr %i.na, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !37
  %i.ok = zext i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.of, %i.ok
  br label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %.lr.ph.i.i241.epil.preheader, %bb.ca, %.lr.ph.i18.i.preheader.unr-lcssa
  %.sroa.6.4.i.lcssa = phi i32 [ %.sroa.6.4.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ], [ %i.og, %bb.ca ], [ %.sroa.6.3.i.epil.init, %.lr.ph.i.i241.epil.preheader ] ; 2 uses
  %.0.i.i14.i.lcssa = phi i32 [ %.0.i.i14.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ], [ %i.ol, %bb.ca ], [ %i.of, %.lr.ph.i.i241.epil.preheader ] ; 3 uses
  %xtraiter606 = and i32 %i.nk, 1
  %i.om = icmp eq i32 %i.nm, 0
  br i1 %i.om, label %.lr.ph.i18.i.epil.preheader, label %.lr.ph.i18.i.preheader.new

.lr.ph.i18.i.preheader.new:                       ; preds = %.lr.ph.i18.i.preheader
  %unroll_iter612 = and i32 %i.nk, 254
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %stbtt__buf_get8.exit.i23.i.1, %.lr.ph.i18.i.preheader.new
  %i.on = phi i32 [ %.sroa.6.4.i.lcssa, %.lr.ph.i18.i.preheader.new ], [ %i.pd, %stbtt__buf_get8.exit.i23.i.1 ] ; 4 uses
  %.056.i21.i = phi i32 [ 0, %.lr.ph.i18.i.preheader.new ], [ %.0.i.i24.i.1, %stbtt__buf_get8.exit.i23.i.1 ]
  %niter613 = phi i32 [ 0, %.lr.ph.i18.i.preheader.new ], [ %niter613.next.1, %stbtt__buf_get8.exit.i23.i.1 ]
  %i.oo = shl i32 %.056.i21.i, 8                  ; 2 uses
  %.not.i.i22.i = icmp slt i32 %i.on, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i22.i, label %bb.cb, label %stbtt__buf_get8.exit.i23.i

bb.cb:                                            ; preds = %.lr.ph.i18.i
  %i.op = add nsw i32 %i.on, 1
  %i.oq = sext i32 %i.on to i64
  %i.or = getelementptr inbounds i8, ptr %i.na, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !37
  %i.ot = zext i8 %i.os to i32
  %i.ou = or disjoint i32 %i.oo, %i.ot
  br label %stbtt__buf_get8.exit.i23.i

stbtt__buf_get8.exit.i23.i:                       ; preds = %bb.cb, %.lr.ph.i18.i
  %i.ov = phi i32 [ %i.op, %bb.cb ], [ %i.on, %.lr.ph.i18.i ] ; 4 uses
  %.0.i.i24.i = phi i32 [ %i.ou, %bb.cb ], [ %i.oo, %.lr.ph.i18.i ]
  %i.ow = shl i32 %.0.i.i24.i, 8                  ; 2 uses
  %.not.i.i22.i.1 = icmp slt i32 %i.ov, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i22.i.1, label %bb.cc, label %stbtt__buf_get8.exit.i23.i.1

bb.cc:                                            ; preds = %stbtt__buf_get8.exit.i23.i
  %i.ox = add nsw i32 %i.ov, 1
  %i.oy = sext i32 %i.ov to i64
  %i.oz = getelementptr inbounds i8, ptr %i.na, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !37
  %i.pb = zext i8 %i.pa to i32
  %i.pc = or disjoint i32 %i.ow, %i.pb
  br label %stbtt__buf_get8.exit.i23.i.1

stbtt__buf_get8.exit.i23.i.1:                     ; preds = %bb.cc, %stbtt__buf_get8.exit.i23.i
  %i.pd = phi i32 [ %i.ox, %bb.cc ], [ %i.ov, %stbtt__buf_get8.exit.i23.i ] ; 2 uses
  %.0.i.i24.i.1 = phi i32 [ %i.pc, %bb.cc ], [ %i.ow, %stbtt__buf_get8.exit.i23.i ] ; 3 uses
  %niter613.next.1 = add i32 %niter613, 2         ; 2 uses
  %niter613.ncmp.1 = icmp eq i32 %niter613.next.1, %unroll_iter612
  br i1 %niter613.ncmp.1, label %stbtt__buf_get.exit26.i.loopexit.unr-lcssa, label %.lr.ph.i18.i, !llvm.loop !0

stbtt__buf_get.exit26.i.loopexit.unr-lcssa:       ; preds = %stbtt__buf_get8.exit.i23.i.1
  %lcmp.mod609.not = icmp eq i32 %xtraiter606, 0
  br i1 %lcmp.mod609.not, label %stbtt__buf_get.exit26.i, label %.lr.ph.i18.i.epil.preheader

.lr.ph.i18.i.epil.preheader:                      ; preds = %stbtt__buf_get.exit26.i.loopexit.unr-lcssa, %.lr.ph.i18.i.preheader
  %.epil.init608 = phi i32 [ %.sroa.6.4.i.lcssa, %.lr.ph.i18.i.preheader ], [ %i.pd, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i21.i.epil.init = phi i32 [ 0, %.lr.ph.i18.i.preheader ], [ %.0.i.i24.i.1, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %lcmp.mod611 = trunc i8 %i.nj to i1
  tail call void @llvm.assume(i1 %lcmp.mod611)
  %i.pe = shl i32 %.056.i21.i.epil.init, 8        ; 2 uses
  %.not.i.i22.i.epil = icmp slt i32 %.epil.init608, %.sroa.18.8.extract.trunc.i353496
  br i1 %.not.i.i22.i.epil, label %bb.cd, label %stbtt__buf_get.exit26.i

bb.cd:                                            ; preds = %.lr.ph.i18.i.epil.preheader
  %i.pf = sext i32 %.epil.init608 to i64
  %i.pg = getelementptr inbounds i8, ptr %i.na, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !37
  %i.pi = zext i8 %i.ph to i32
  %i.pj = or disjoint i32 %i.pe, %i.pi
  br label %stbtt__buf_get.exit26.i

stbtt__buf_get.exit26.i:                          ; preds = %stbtt__buf_get.exit26.i.loopexit.unr-lcssa, %bb.cd, %.lr.ph.i18.i.epil.preheader, %stbtt__cff_get_index.exit225, %bb.bv, %stbtt__buf_get8.exit.i238, %stbtt__buf_get8.exit.i.1.i230
  %.0.i.i.1.i231368 = phi i32 [ %.0.i.i.1.i231, %stbtt__buf_get8.exit.i238 ], [ %.0.i.i.1.i231, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit225 ], [ %.0.i.i.1.i231, %.lr.ph.i18.i.epil.preheader ], [ %.0.i.i.1.i231, %bb.cd ], [ %.0.i.i.1.i231, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i353359367 = phi i32 [ %.sroa.18.8.extract.trunc.i353496, %stbtt__buf_get8.exit.i238 ], [ %.sroa.18.8.extract.trunc.i353496, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit225 ], [ %.sroa.18.8.extract.trunc.i353496, %.lr.ph.i18.i.epil.preheader ], [ %.sroa.18.8.extract.trunc.i353496, %bb.cd ], [ %.sroa.18.8.extract.trunc.i353496, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i221352360366 = phi ptr [ %i.na, %stbtt__buf_get8.exit.i238 ], [ %i.na, %stbtt__buf_get8.exit.i.1.i230 ], [ null, %bb.bv ], [ %i.na, %stbtt__cff_get_index.exit225 ], [ %i.na, %.lr.ph.i18.i.epil.preheader ], [ %i.na, %bb.cd ], [ %i.na, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %.0.i53.i = phi i32 [ 0, %stbtt__buf_get8.exit.i238 ], [ 0, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit225 ], [ %i.nk, %.lr.ph.i18.i.epil.preheader ], [ %i.nk, %bb.cd ], [ %i.nk, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %.05.lcssa.i40.i = phi i32 [ 0, %stbtt__buf_get8.exit.i238 ], [ 0, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit225 ], [ %.0.i.i14.i.lcssa, %.lr.ph.i18.i.epil.preheader ], [ %.0.i.i14.i.lcssa, %bb.cd ], [ %.0.i.i14.i.lcssa, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i17.i = phi i32 [ 0, %stbtt__buf_get8.exit.i238 ], [ 0, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit225 ], [ %.0.i.i24.i.1, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ], [ %i.pj, %bb.cd ], [ %i.pe, %.lr.ph.i18.i.epil.preheader ]
  %i.pk = add nuw nsw i32 %.0.i.i.1.i231368, 1
  %i.pl = mul nuw nsw i32 %.0.i53.i, %i.pk
  %i.pm = add nuw nsw i32 %i.pl, 2
  %i.pn = add nsw i32 %i.pm, %.05.lcssa.i40.i     ; 4 uses
  %i.po = sub nsw i32 %.05.lcssa.i17.i, %.05.lcssa.i40.i ; 3 uses
  %i.pp = or i32 %i.po, %i.pn
  %or.cond.not.i.i233 = icmp sgt i32 %i.pp, -1
  br i1 %or.cond.not.i.i233, label %bb.ce, label %stbtt__cff_index_get.exit

bb.ce:                                            ; preds = %stbtt__buf_get.exit26.i
  %i.pq = icmp sgt i32 %i.pn, %.sroa.18.8.extract.trunc.i353359367
  %i.pr = sub nsw i32 %.sroa.18.8.extract.trunc.i353359367, %i.pn
  %i.ps = icmp sgt i32 %i.po, %i.pr
  %or.cond.i.i = select i1 %i.pq, i1 true, i1 %i.ps
  br i1 %or.cond.i.i, label %stbtt__cff_index_get.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pt = zext nneg i32 %i.pn to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i221352360366, i64 %i.pt
  %i.pv = zext nneg i32 %i.po to i64
  %i.pw = shl nuw nsw i64 %i.pv, 32
  br label %stbtt__cff_index_get.exit

stbtt__cff_index_get.exit:                        ; preds = %stbtt__buf_get.exit26.i, %bb.ce, %bb.cf
  %.sroa.0.0.i.i234 = phi ptr [ null, %stbtt__buf_get.exit26.i ], [ null, %bb.ce ], [ %i.pu, %bb.cf ]
  %.sroa.5.0.i.i235 = phi i64 [ 0, %stbtt__buf_get.exit26.i ], [ 0, %bb.ce ], [ %i.pw, %bb.cf ]
  store ptr %.sroa.0.0.i.i234, ptr %8, align 8, !tbaa !40
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i235, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !39
  %.not.i.i.i242 = icmp slt i32 %i.mu, %i.ia
  br i1 %.not.i.i.i242, label %bb.cg, label %stbtt__buf_get8.exit.i.i243

bb.cg:                                            ; preds = %stbtt__cff_index_get.exit
  %i.px = load ptr, ptr %7, align 8, !tbaa !36
  %i.py = add nsw i32 %i.mu, 1                    ; 2 uses
  store i32 %i.py, ptr %i.hw, align 8, !tbaa !34
  %i.pz = sext i32 %i.mu to i64
  %i.qa = getelementptr inbounds i8, ptr %i.px, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !37
  %i.qc = zext i8 %i.qb to i32
  %i.qd = shl nuw nsw i32 %i.qc, 8
  br label %stbtt__buf_get8.exit.i.i243

stbtt__buf_get8.exit.i.i243:                      ; preds = %bb.cg, %stbtt__cff_index_get.exit
  %i.qe = phi i32 [ %i.py, %bb.cg ], [ %i.mu, %stbtt__cff_index_get.exit ] ; 4 uses
  %.0.i.i.i244 = phi i32 [ %i.qd, %bb.cg ], [ 0, %stbtt__cff_index_get.exit ] ; 2 uses
  %.not.i.i.1.i245 = icmp slt i32 %i.qe, %i.ia
  br i1 %.not.i.i.1.i245, label %bb.ch, label %stbtt__buf_get8.exit.i.1.i246

bb.ch:                                            ; preds = %stbtt__buf_get8.exit.i.i243
  %i.qf = load ptr, ptr %7, align 8, !tbaa !36
  %i.qg = add nsw i32 %i.qe, 1                    ; 2 uses
  store i32 %i.qg, ptr %i.hw, align 8, !tbaa !34
  %i.qh = sext i32 %i.qe to i64
  %i.qi = getelementptr inbounds i8, ptr %i.qf, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !37
  %i.qk = zext i8 %i.qj to i32
  %i.ql = or disjoint i32 %.0.i.i.i244, %i.qk
  br label %stbtt__buf_get8.exit.i.1.i246

stbtt__buf_get8.exit.i.1.i246:                    ; preds = %bb.ch, %stbtt__buf_get8.exit.i.i243
  %i.qm = phi i32 [ %i.qg, %bb.ch ], [ %i.qe, %stbtt__buf_get8.exit.i.i243 ] ; 5 uses
  %.0.i.i.1.i247 = phi i32 [ %i.ql, %bb.ch ], [ %.0.i.i.i244, %stbtt__buf_get8.exit.i.i243 ] ; 2 uses
  %.not.i248 = icmp eq i32 %.0.i.i.1.i247, 0
  br i1 %.not.i248, label %stbtt__cff_get_index.exit271, label %bb.ci

bb.ci:                                            ; preds = %stbtt__buf_get8.exit.i.1.i246
  %.not.i.i249 = icmp slt i32 %i.qm, %i.ia
  br i1 %.not.i.i249, label %bb.cj, label %stbtt__buf_get8.exit.i250

bb.cj:                                            ; preds = %bb.ci
  %i.qn = load ptr, ptr %7, align 8, !tbaa !36
  %i.qo = add nsw i32 %i.qm, 1
  %i.qp = sext i32 %i.qm to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qn, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !37
  %i.qs = zext i8 %i.qr to i32
  br label %stbtt__buf_get8.exit.i250

stbtt__buf_get8.exit.i250:                        ; preds = %bb.cj, %bb.ci
  %.promoted401 = phi i32 [ %i.qo, %bb.cj ], [ %i.qm, %bb.ci ]
  %.0.i.i251 = phi i32 [ %i.qs, %bb.cj ], [ 0, %bb.ci ] ; 6 uses
  %i.qt = mul nuw nsw i32 %.0.i.i251, %.0.i.i.1.i247
  %i.qu = add nsw i32 %i.qt, %.promoted401        ; 2 uses
  %i.qv = icmp slt i32 %i.qu, 0
  %i.qw = tail call i32 @llvm.smin.i32(i32 %i.qu, i32 %i.ia)
  %..i.i.i252 = select i1 %i.qv, i32 %i.ia, i32 %i.qw ; 3 uses
  %.not22.i253 = icmp eq i32 %.0.i.i251, 0
  br i1 %.not22.i253, label %stbtt__buf_get.exit20.i262, label %.lr.ph.i.i254.preheader

.lr.ph.i.i254.preheader:                          ; preds = %stbtt__buf_get8.exit.i250
  %i.qx = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter614 = and i32 %.0.i.i251, 1
  %i.qy = icmp eq i32 %.0.i.i251, 1
  br i1 %i.qy, label %.lr.ph.i.i254.epil.preheader, label %.lr.ph.i.i254.preheader.new

.lr.ph.i.i254.preheader.new:                      ; preds = %.lr.ph.i.i254.preheader
  %unroll_iter621 = and i32 %.0.i.i251, 254
  br label %.lr.ph.i.i254

.lr.ph.i.i254:                                    ; preds = %stbtt__buf_get8.exit.i17.i258.1, %.lr.ph.i.i254.preheader.new
  %i.qz = phi i32 [ %..i.i.i252, %.lr.ph.i.i254.preheader.new ], [ %i.rp, %stbtt__buf_get8.exit.i17.i258.1 ] ; 4 uses
  %.056.i15.i256 = phi i32 [ 0, %.lr.ph.i.i254.preheader.new ], [ %.0.i.i18.i259.1, %stbtt__buf_get8.exit.i17.i258.1 ]
  %niter622 = phi i32 [ 0, %.lr.ph.i.i254.preheader.new ], [ %niter622.next.1, %stbtt__buf_get8.exit.i17.i258.1 ]
  %i.ra = shl i32 %.056.i15.i256, 8               ; 2 uses
  %.not.i.i16.i257 = icmp slt i32 %i.qz, %i.ia
  br i1 %.not.i.i16.i257, label %bb.ck, label %stbtt__buf_get8.exit.i17.i258

bb.ck:                                            ; preds = %.lr.ph.i.i254
  %i.rb = add nsw i32 %i.qz, 1
  %i.rc = sext i32 %i.qz to i64
  %i.rd = getelementptr inbounds i8, ptr %i.qx, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !37
  %i.rf = zext i8 %i.re to i32
  %i.rg = or disjoint i32 %i.ra, %i.rf
  br label %stbtt__buf_get8.exit.i17.i258

stbtt__buf_get8.exit.i17.i258:                    ; preds = %bb.ck, %.lr.ph.i.i254
  %i.rh = phi i32 [ %i.rb, %bb.ck ], [ %i.qz, %.lr.ph.i.i254 ] ; 4 uses
  %.0.i.i18.i259 = phi i32 [ %i.rg, %bb.ck ], [ %i.ra, %.lr.ph.i.i254 ]
  %i.ri = shl i32 %.0.i.i18.i259, 8               ; 2 uses
  %.not.i.i16.i257.1 = icmp slt i32 %i.rh, %i.ia
  br i1 %.not.i.i16.i257.1, label %bb.cl, label %stbtt__buf_get8.exit.i17.i258.1

bb.cl:                                            ; preds = %stbtt__buf_get8.exit.i17.i258
  %i.rj = add nsw i32 %i.rh, 1
  %i.rk = sext i32 %i.rh to i64
  %i.rl = getelementptr inbounds i8, ptr %i.qx, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !37
  %i.rn = zext i8 %i.rm to i32
  %i.ro = or disjoint i32 %i.ri, %i.rn
  br label %stbtt__buf_get8.exit.i17.i258.1

stbtt__buf_get8.exit.i17.i258.1:                  ; preds = %bb.cl, %stbtt__buf_get8.exit.i17.i258
  %i.rp = phi i32 [ %i.rj, %bb.cl ], [ %i.rh, %stbtt__buf_get8.exit.i17.i258 ] ; 3 uses
  %.0.i.i18.i259.1 = phi i32 [ %i.ro, %bb.cl ], [ %i.ri, %stbtt__buf_get8.exit.i17.i258 ] ; 3 uses
  %niter622.next.1 = add nuw nsw i32 %niter622, 2 ; 2 uses
  %niter622.ncmp.1 = icmp eq i32 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa, label %.lr.ph.i.i254, !llvm.loop !0

stbtt__buf_get.exit20.loopexit.i261.unr-lcssa:    ; preds = %stbtt__buf_get8.exit.i17.i258.1
  %lcmp.mod617.not = icmp eq i32 %xtraiter614, 0
  br i1 %lcmp.mod617.not, label %stbtt__buf_get.exit20.loopexit.i261, label %.lr.ph.i.i254.epil.preheader

.lr.ph.i.i254.epil.preheader:                     ; preds = %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa, %.lr.ph.i.i254.preheader
  %.epil.init616 = phi i32 [ %..i.i.i252, %.lr.ph.i.i254.preheader ], [ %i.rp, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ] ; 4 uses
  %.056.i15.i256.epil.init = phi i32 [ 0, %.lr.ph.i.i254.preheader ], [ %.0.i.i18.i259.1, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ]
  %lcmp.mod620 = trunc i32 %.0.i.i251 to i1
  tail call void @llvm.assume(i1 %lcmp.mod620)
  %i.rq = shl i32 %.056.i15.i256.epil.init, 8     ; 2 uses
  %.not.i.i16.i257.epil = icmp slt i32 %.epil.init616, %i.ia
  br i1 %.not.i.i16.i257.epil, label %bb.cm, label %stbtt__buf_get.exit20.loopexit.i261

bb.cm:                                            ; preds = %.lr.ph.i.i254.epil.preheader
  %i.rr = add nsw i32 %.epil.init616, 1
  %i.rs = sext i32 %.epil.init616 to i64
  %i.rt = getelementptr inbounds i8, ptr %i.qx, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !37
  %i.rv = zext i8 %i.ru to i32
  %i.rw = or disjoint i32 %i.rq, %i.rv
  br label %stbtt__buf_get.exit20.loopexit.i261

stbtt__buf_get.exit20.loopexit.i261:              ; preds = %.lr.ph.i.i254.epil.preheader, %bb.cm, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa
  %.lcssa564 = phi i32 [ %i.rp, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ], [ %i.rr, %bb.cm ], [ %.epil.init616, %.lr.ph.i.i254.epil.preheader ]
  %.0.i.i18.i259.lcssa = phi i32 [ %.0.i.i18.i259.1, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ], [ %i.rw, %bb.cm ], [ %i.rq, %.lr.ph.i.i254.epil.preheader ]
  %i.rx = add i32 %.0.i.i18.i259.lcssa, -1
  br label %stbtt__buf_get.exit20.i262

stbtt__buf_get.exit20.i262:                       ; preds = %stbtt__buf_get.exit20.loopexit.i261, %stbtt__buf_get8.exit.i250
  %i.ry = phi i32 [ %..i.i.i252, %stbtt__buf_get8.exit.i250 ], [ %.lcssa564, %stbtt__buf_get.exit20.loopexit.i261 ]
  %.05.lcssa.i.i263 = phi i32 [ -1, %stbtt__buf_get8.exit.i250 ], [ %i.rx, %stbtt__buf_get.exit20.loopexit.i261 ]
  %i.rz = add nsw i32 %.05.lcssa.i.i263, %i.ry    ; 2 uses
  %i.sa = icmp slt i32 %i.rz, 0
  %i.sb = tail call i32 @llvm.smin.i32(i32 %i.rz, i32 %i.ia)
  %..i.i21.i264 = select i1 %i.sa, i32 %i.ia, i32 %i.sb ; 2 uses
  store i32 %..i.i21.i264, ptr %i.hw, align 8, !tbaa !34
  br label %stbtt__cff_get_index.exit271

stbtt__cff_get_index.exit271:                     ; preds = %stbtt__buf_get.exit20.i262, %stbtt__buf_get8.exit.i.1.i246
  %i.sc = phi i32 [ %..i.i21.i264, %stbtt__buf_get.exit20.i262 ], [ %i.qm, %stbtt__buf_get8.exit.i.1.i246 ] ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not.i.i.i272 = icmp slt i32 %i.sc, %i.ia
  br i1 %.not.i.i.i272, label %bb.cn, label %stbtt__buf_get8.exit.i.i273

bb.cn:                                            ; preds = %stbtt__cff_get_index.exit271
  %i.se = load ptr, ptr %7, align 8, !tbaa !36
  %i.sf = add nsw i32 %i.sc, 1                    ; 2 uses
  store i32 %i.sf, ptr %i.hw, align 8, !tbaa !34
  %i.sg = sext i32 %i.sc to i64
  %i.sh = getelementptr inbounds i8, ptr %i.se, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !37
  %i.sj = zext i8 %i.si to i32
  %i.sk = shl nuw nsw i32 %i.sj, 8
  br label %stbtt__buf_get8.exit.i.i273

stbtt__buf_get8.exit.i.i273:                      ; preds = %bb.cn, %stbtt__cff_get_index.exit271
  %i.sl = phi i32 [ %i.sf, %bb.cn ], [ %i.sc, %stbtt__cff_get_index.exit271 ] ; 4 uses
  %.0.i.i.i274 = phi i32 [ %i.sk, %bb.cn ], [ 0, %stbtt__cff_get_index.exit271 ] ; 2 uses
  %.not.i.i.1.i275 = icmp slt i32 %i.sl, %i.ia
  br i1 %.not.i.i.1.i275, label %bb.co, label %stbtt__buf_get8.exit.i.1.i276

bb.co:                                            ; preds = %stbtt__buf_get8.exit.i.i273
  %i.sm = load ptr, ptr %7, align 8, !tbaa !36
  %i.sn = add nsw i32 %i.sl, 1                    ; 2 uses
  store i32 %i.sn, ptr %i.hw, align 8, !tbaa !34
  %i.so = sext i32 %i.sl to i64
  %i.sp = getelementptr inbounds i8, ptr %i.sm, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !37
  %i.sr = zext i8 %i.sq to i32
  %i.ss = or disjoint i32 %.0.i.i.i274, %i.sr
  br label %stbtt__buf_get8.exit.i.1.i276

stbtt__buf_get8.exit.i.1.i276:                    ; preds = %bb.co, %stbtt__buf_get8.exit.i.i273
  %i.st = phi i32 [ %i.sn, %bb.co ], [ %i.sl, %stbtt__buf_get8.exit.i.i273 ] ; 5 uses
  %.0.i.i.1.i277 = phi i32 [ %i.ss, %bb.co ], [ %.0.i.i.i274, %stbtt__buf_get8.exit.i.i273 ] ; 2 uses
  %.not.i278 = icmp eq i32 %.0.i.i.1.i277, 0
  br i1 %.not.i278, label %stbtt__cff_get_index.exit301, label %bb.cp

bb.cp:                                            ; preds = %stbtt__buf_get8.exit.i.1.i276
  %.not.i.i279 = icmp slt i32 %i.st, %i.ia
  br i1 %.not.i.i279, label %bb.cq, label %stbtt__buf_get8.exit.i280

bb.cq:                                            ; preds = %bb.cp
  %i.su = load ptr, ptr %7, align 8, !tbaa !36
  %i.sv = add nsw i32 %i.st, 1
  %i.sw = sext i32 %i.st to i64
  %i.sx = getelementptr inbounds i8, ptr %i.su, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !37
  %i.sz = zext i8 %i.sy to i32
  br label %stbtt__buf_get8.exit.i280

stbtt__buf_get8.exit.i280:                        ; preds = %bb.cq, %bb.cp
  %.promoted403 = phi i32 [ %i.sv, %bb.cq ], [ %i.st, %bb.cp ]
  %.0.i.i281 = phi i32 [ %i.sz, %bb.cq ], [ 0, %bb.cp ] ; 6 uses
  %i.ta = mul nuw nsw i32 %.0.i.i281, %.0.i.i.1.i277
  %i.tb = add nsw i32 %i.ta, %.promoted403        ; 2 uses
  %i.tc = icmp slt i32 %i.tb, 0
  %i.td = tail call i32 @llvm.smin.i32(i32 %i.tb, i32 %i.ia)
  %..i.i.i282 = select i1 %i.tc, i32 %i.ia, i32 %i.td ; 3 uses
  %.not22.i283 = icmp eq i32 %.0.i.i281, 0
  br i1 %.not22.i283, label %stbtt__buf_get.exit20.i292, label %.lr.ph.i.i284.preheader

.lr.ph.i.i284.preheader:                          ; preds = %stbtt__buf_get8.exit.i280
  %i.te = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter623 = and i32 %.0.i.i281, 1
  %i.tf = icmp eq i32 %.0.i.i281, 1
  br i1 %i.tf, label %.lr.ph.i.i284.epil.preheader, label %.lr.ph.i.i284.preheader.new

.lr.ph.i.i284.preheader.new:                      ; preds = %.lr.ph.i.i284.preheader
  %unroll_iter630 = and i32 %.0.i.i281, 254
  br label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %stbtt__buf_get8.exit.i17.i288.1, %.lr.ph.i.i284.preheader.new
  %i.tg = phi i32 [ %..i.i.i282, %.lr.ph.i.i284.preheader.new ], [ %i.tw, %stbtt__buf_get8.exit.i17.i288.1 ] ; 4 uses
  %.056.i15.i286 = phi i32 [ 0, %.lr.ph.i.i284.preheader.new ], [ %.0.i.i18.i289.1, %stbtt__buf_get8.exit.i17.i288.1 ]
  %niter631 = phi i32 [ 0, %.lr.ph.i.i284.preheader.new ], [ %niter631.next.1, %stbtt__buf_get8.exit.i17.i288.1 ]
  %i.th = shl i32 %.056.i15.i286, 8               ; 2 uses
  %.not.i.i16.i287 = icmp slt i32 %i.tg, %i.ia
  br i1 %.not.i.i16.i287, label %bb.cr, label %stbtt__buf_get8.exit.i17.i288

bb.cr:                                            ; preds = %.lr.ph.i.i284
  %i.ti = add nsw i32 %i.tg, 1
  %i.tj = sext i32 %i.tg to i64
  %i.tk = getelementptr inbounds i8, ptr %i.te, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !37
  %i.tm = zext i8 %i.tl to i32
  %i.tn = or disjoint i32 %i.th, %i.tm
  br label %stbtt__buf_get8.exit.i17.i288

stbtt__buf_get8.exit.i17.i288:                    ; preds = %bb.cr, %.lr.ph.i.i284
  %i.to = phi i32 [ %i.ti, %bb.cr ], [ %i.tg, %.lr.ph.i.i284 ] ; 4 uses
  %.0.i.i18.i289 = phi i32 [ %i.tn, %bb.cr ], [ %i.th, %.lr.ph.i.i284 ]
  %i.tp = shl i32 %.0.i.i18.i289, 8               ; 2 uses
  %.not.i.i16.i287.1 = icmp slt i32 %i.to, %i.ia
  br i1 %.not.i.i16.i287.1, label %bb.cs, label %stbtt__buf_get8.exit.i17.i288.1

bb.cs:                                            ; preds = %stbtt__buf_get8.exit.i17.i288
  %i.tq = add nsw i32 %i.to, 1
  %i.tr = sext i32 %i.to to i64
  %i.ts = getelementptr inbounds i8, ptr %i.te, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !37
  %i.tu = zext i8 %i.tt to i32
  %i.tv = or disjoint i32 %i.tp, %i.tu
  br label %stbtt__buf_get8.exit.i17.i288.1

stbtt__buf_get8.exit.i17.i288.1:                  ; preds = %bb.cs, %stbtt__buf_get8.exit.i17.i288
  %i.tw = phi i32 [ %i.tq, %bb.cs ], [ %i.to, %stbtt__buf_get8.exit.i17.i288 ] ; 3 uses
  %.0.i.i18.i289.1 = phi i32 [ %i.tv, %bb.cs ], [ %i.tp, %stbtt__buf_get8.exit.i17.i288 ] ; 3 uses
  %niter631.next.1 = add nuw nsw i32 %niter631, 2 ; 2 uses
  %niter631.ncmp.1 = icmp eq i32 %niter631.next.1, %unroll_iter630
  br i1 %niter631.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa, label %.lr.ph.i.i284, !llvm.loop !0

stbtt__buf_get.exit20.loopexit.i291.unr-lcssa:    ; preds = %stbtt__buf_get8.exit.i17.i288.1
  %lcmp.mod626.not = icmp eq i32 %xtraiter623, 0
  br i1 %lcmp.mod626.not, label %stbtt__buf_get.exit20.loopexit.i291, label %.lr.ph.i.i284.epil.preheader

.lr.ph.i.i284.epil.preheader:                     ; preds = %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa, %.lr.ph.i.i284.preheader
  %.epil.init625 = phi i32 [ %..i.i.i282, %.lr.ph.i.i284.preheader ], [ %i.tw, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa ] ; 4 uses
  %.056.i15.i286.epil.init = phi i32 [ 0, %.lr.ph.i.i284.preheader ], [ %.0.i.i18.i289.1, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa ]
  %lcmp.mod629 = trunc i32 %.0.i.i281 to i1
  tail call void @llvm.assume(i1 %lcmp.mod629)
  %i.tx = shl i32 %.056.i15.i286.epil.init, 8     ; 2 uses
  %.not.i.i16.i287.epil = icmp slt i32 %.epil.init625, %i.ia
  br i1 %.not.i.i16.i287.epil, label %bb.ct, label %stbtt__buf_get.exit20.loopexit.i291

bb.ct:                                            ; preds = %.lr.ph.i.i284.epil.preheader
  %i.ty = add nsw i32 %.epil.init625, 1
  %i.tz = sext i32 %.epil.init625 to i64
  %i.ua = getelementptr inbounds i8, ptr %i.te, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !37
  %i.uc = zext i8 %i.ub to i32
  %i.ud = or disjoint i32 %i.tx, %i.uc
  br label %stbtt__buf_get.exit20.loopexit.i291

stbtt__buf_get.exit20.loopexit.i291:              ; preds = %.lr.ph.i.i284.epil.preheader, %bb.ct, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa
  %.lcssa563 = phi i32 [ %i.tw, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa ], [ %i.ty, %bb.ct ], [ %.epil.init625, %.lr.ph.i.i284.epil.preheader ]
  %.0.i.i18.i289.lcssa = phi i32 [ %.0.i.i18.i289.1, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa ], [ %i.ud, %bb.ct ], [ %i.tx, %.lr.ph.i.i284.epil.preheader ]
  %i.ue = add i32 %.0.i.i18.i289.lcssa, -1
  br label %stbtt__buf_get.exit20.i292

stbtt__buf_get.exit20.i292:                       ; preds = %stbtt__buf_get.exit20.loopexit.i291, %stbtt__buf_get8.exit.i280
  %i.uf = phi i32 [ %..i.i.i282, %stbtt__buf_get8.exit.i280 ], [ %.lcssa563, %stbtt__buf_get.exit20.loopexit.i291 ]
  %.05.lcssa.i.i293 = phi i32 [ -1, %stbtt__buf_get8.exit.i280 ], [ %i.ue, %stbtt__buf_get.exit20.loopexit.i291 ]
  %i.ug = add nsw i32 %.05.lcssa.i.i293, %i.uf    ; 2 uses
  %i.uh = icmp slt i32 %i.ug, 0
  %i.ui = tail call i32 @llvm.smin.i32(i32 %i.ug, i32 %i.ia)
  %..i.i21.i294 = select i1 %i.uh, i32 %i.ia, i32 %i.ui ; 2 uses
  store i32 %..i.i21.i294, ptr %i.hw, align 8, !tbaa !34
  br label %stbtt__cff_get_index.exit301

stbtt__cff_get_index.exit301:                     ; preds = %stbtt__buf_get.exit20.i292, %stbtt__buf_get8.exit.i.1.i276
  %i.uj = phi i32 [ %..i.i21.i294, %stbtt__buf_get.exit20.i292 ], [ %i.st, %stbtt__buf_get8.exit.i.1.i276 ] ; 2 uses
  %i.uk = sub nsw i32 %i.uj, %i.sc                ; 2 uses
  %i.ul = or i32 %i.uk, %i.sc
  %or.cond.not.i.i295 = icmp slt i32 %i.ul, 0
  %i.um = icmp sgt i32 %i.uj, %i.ia
  %or.cond.i296 = or i1 %i.um, %or.cond.not.i.i295 ; 2 uses
  %i.un = load ptr, ptr %7, align 8               ; 2 uses
  %i.uo = zext nneg i32 %i.sc to i64
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uo
  %i.uq = zext nneg i32 %i.uk to i64
  %i.ur = shl nuw nsw i64 %i.uq, 32
  %.sroa.0.0.i.i297 = select i1 %or.cond.i296, ptr null, ptr %i.up
  %.sroa.5.0.i.i298 = select i1 %or.cond.i296, i64 0, i64 %i.ur
  store ptr %.sroa.0.0.i.i297, ptr %i.sd, align 8, !tbaa !40
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.5.0.i.i298, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.us = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 17) ; 2 uses
  %i.ut = extractvalue { ptr, i64 } %i.us, 0
  store ptr %i.ut, ptr %6, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.uv = extractvalue { ptr, i64 } %i.us, 1      ; 3 uses
  store i64 %i.uv, ptr %i.uu, align 8
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = lshr i64 %i.uv, 32
  %i.uy = trunc nuw i64 %i.ux to i32
  %i.uz = icmp slt i32 %i.uw, %i.uy
  br i1 %i.uz, label %.lr.ph.preheader.i, label %stbtt__dict_get_ints.exit

.lr.ph.preheader.i:                               ; preds = %stbtt__cff_get_index.exit301
  %i.va = call i32 @stbtt__cff_int(ptr noundef nonnull %6)
  br label %stbtt__dict_get_ints.exit, !llvm.loop !2

stbtt__dict_get_ints.exit:                        ; preds = %stbtt__cff_get_index.exit301, %.lr.ph.preheader.i
  %.0339 = phi i32 [ %i.va, %.lr.ph.preheader.i ], [ 0, %stbtt__cff_get_index.exit301 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.vb = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 262) ; 2 uses
  %i.vc = extractvalue { ptr, i64 } %i.vb, 0
  store ptr %i.vc, ptr %5, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ve = extractvalue { ptr, i64 } %i.vb, 1      ; 3 uses
  store i64 %i.ve, ptr %i.vd, align 8
  %i.vf = trunc i64 %i.ve to i32
  %i.vg = lshr i64 %i.ve, 32
  %i.vh = trunc nuw i64 %i.vg to i32
  %i.vi = icmp slt i32 %i.vf, %i.vh
  br i1 %i.vi, label %.lr.ph.preheader.i305, label %stbtt__dict_get_ints.exit309

.lr.ph.preheader.i305:                            ; preds = %stbtt__dict_get_ints.exit
  %i.vj = call i32 @stbtt__cff_int(ptr noundef nonnull %5)
  %i.vk = icmp ne i32 %i.vj, 2
  br label %stbtt__dict_get_ints.exit309, !llvm.loop !2

stbtt__dict_get_ints.exit309:                     ; preds = %stbtt__dict_get_ints.exit, %.lr.ph.preheader.i305
  %.0340 = phi i1 [ %i.vk, %.lr.ph.preheader.i305 ], [ false, %stbtt__dict_get_ints.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.vl = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 292) ; 2 uses
  %i.vm = extractvalue { ptr, i64 } %i.vl, 0
  store ptr %i.vm, ptr %4, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.vo = extractvalue { ptr, i64 } %i.vl, 1      ; 3 uses
  store i64 %i.vo, ptr %i.vn, align 8
  %i.vp = trunc i64 %i.vo to i32
  %i.vq = lshr i64 %i.vo, 32
  %i.vr = trunc nuw i64 %i.vq to i32
  %i.vs = icmp slt i32 %i.vp, %i.vr
  br i1 %i.vs, label %.lr.ph.preheader.i310, label %stbtt__dict_get_ints.exit314

.lr.ph.preheader.i310:                            ; preds = %stbtt__dict_get_ints.exit309
  %i.vt = call i32 @stbtt__cff_int(ptr noundef nonnull %4)
  br label %stbtt__dict_get_ints.exit314, !llvm.loop !2

stbtt__dict_get_ints.exit314:                     ; preds = %stbtt__dict_get_ints.exit309, %.lr.ph.preheader.i310
  %.0338 = phi i32 [ %i.vt, %.lr.ph.preheader.i310 ], [ 0, %stbtt__dict_get_ints.exit309 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.vu = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 293) ; 2 uses
  %i.vv = extractvalue { ptr, i64 } %i.vu, 0
  store ptr %i.vv, ptr %3, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vx = extractvalue { ptr, i64 } %i.vu, 1      ; 3 uses
  store i64 %i.vx, ptr %i.vw, align 8
  %i.vy = trunc i64 %i.vx to i32
  %i.vz = lshr i64 %i.vx, 32
  %i.wa = trunc nuw i64 %i.vz to i32
  %i.wb = icmp slt i32 %i.vy, %i.wa
  br i1 %i.wb, label %.lr.ph.preheader.i315, label %stbtt__dict_get_ints.exit319

.lr.ph.preheader.i315:                            ; preds = %stbtt__dict_get_ints.exit314
  %i.wc = call i32 @stbtt__cff_int(ptr noundef nonnull %3)
  br label %stbtt__dict_get_ints.exit319, !llvm.loop !2

stbtt__dict_get_ints.exit319:                     ; preds = %stbtt__dict_get_ints.exit314, %.lr.ph.preheader.i315
  %.0 = phi i32 [ %i.wc, %.lr.ph.preheader.i315 ], [ 0, %stbtt__dict_get_ints.exit314 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.we = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.wf = load ptr, ptr %8, align 8
  %i.wg = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %i.wh = tail call { ptr, i64 } @stbtt__get_subrs(ptr %i.un, i64 %i.we, ptr %i.wf, i64 %i.wg) ; 2 uses
  %i.wi = extractvalue { ptr, i64 } %i.wh, 0
  %i.wj = extractvalue { ptr, i64 } %i.wh, 1
  store ptr %i.wi, ptr %i.wd, align 8, !tbaa !40
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.wj, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !39
  %i.wk = icmp eq i32 %.0339, 0
  %or.cond = select i1 %.0340, i1 true, i1 %i.wk
  br i1 %or.cond, label %.critedge, label %bb.cu

bb.cu:                                            ; preds = %stbtt__dict_get_ints.exit319
  %i.wl = lshr i64 %i.we, 32
  %i.wm = trunc nuw i64 %i.wl to i32
  %.not117 = icmp eq i32 %.0338, 0
  br i1 %.not117, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not118 = icmp eq i32 %.0, 0
  br i1 %.not118, label %.critedge, label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.cv
  %i.wn = icmp slt i32 %.0338, 0
  %i.wo = tail call i32 @llvm.smin.i32(i32 %.0338, i32 %i.ia)
  %..i = select i1 %i.wn, i32 %i.ia, i32 %i.wo
  store i32 %..i, ptr %i.hw, align 8, !tbaa !34
  %i.wp = call { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %7) ; 2 uses
  %i.wq = extractvalue { ptr, i64 } %i.wp, 0
  %i.wr = extractvalue { ptr, i64 } %i.wp, 1
  store ptr %i.wq, ptr %i.hs, align 8, !tbaa !40
  store i64 %i.wr, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !39
  %i.ws = load i32, ptr %i.hz, align 4, !tbaa !35 ; 3 uses
  %i.wt = sub i32 %i.ws, %.0                      ; 2 uses
  %i.wu = or i32 %i.wt, %.0
  %or.cond.not.i = icmp slt i32 %i.wu, 0
  %i.wv = icmp sgt i32 %.0, %i.ws
  %or.cond374 = or i1 %i.wv, %or.cond.not.i       ; 2 uses
  %i.ww = load ptr, ptr %7, align 8
  %i.wx = zext nneg i32 %.0 to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wx
  %i.wz = zext nneg i32 %i.wt to i64
  %i.xa = shl nuw nsw i64 %i.wz, 32
  %.sroa.0.0.i = select i1 %or.cond374, ptr null, ptr %i.wy
  %.sroa.5.0.i = select i1 %or.cond374, i64 0, i64 %i.xa
  store ptr %.sroa.0.0.i, ptr %i.ht, align 8, !tbaa !40
  store i64 %.sroa.5.0.i, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !39
  br label %bb.cw

bb.cw:                                            ; preds = %stbtt__buf_range.exit, %bb.cu
  %i.xb = phi i32 [ %i.ws, %stbtt__buf_range.exit ], [ %i.wm, %bb.cu ] ; 2 uses
  %i.xc = icmp slt i32 %.0339, 0
  %i.xd = tail call i32 @llvm.smin.i32(i32 %.0339, i32 %i.xb)
  %..i323 = select i1 %i.xc, i32 %i.xb, i32 %i.xd
  store i32 %..i323, ptr %i.hw, align 8, !tbaa !34
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xf = call { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %7) ; 2 uses
  %i.xg = extractvalue { ptr, i64 } %i.xf, 0
  %i.xh = extractvalue { ptr, i64 } %i.xf, 1
  store ptr %i.xg, ptr %i.xe, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.xh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ay
  %i.xi = load i8, ptr %i.f, align 1, !tbaa !37
  %i.xj = zext i8 %i.xi to i32
  %i.xk = shl nuw nsw i32 %i.xj, 8
  %i.xl = load i8, ptr %i.j, align 1, !tbaa !37
  %i.xm = zext i8 %i.xl to i32
  %i.xn = or disjoint i32 %i.xk, %i.xm            ; 2 uses
  %.not.i324 = icmp eq i32 %i.xn, 0
  br i1 %.not.i324, label %stbtt__find_table.exit332.thread, label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %bb.cx
  %wide.trip.count.i326 = zext nneg i32 %i.xn to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.dc, %.lr.ph.i325
  %indvars.iv.i327 = phi i64 [ 0, %.lr.ph.i325 ], [ %indvars.iv.next.i329, %bb.dc ] ; 2 uses
  %indvars.iv.tr.i328 = trunc nuw nsw i64 %indvars.iv.i327 to i32
  %i.xo = shl nuw nsw i32 %indvars.iv.tr.i328, 4
  %i.xp = add i32 %i.xo, %i.n
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 %i.xq ; 5 uses
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !37
  %i.xt = icmp eq i8 %i.xs, 109
  br i1 %i.xt, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 1
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !37
  %i.xw = icmp eq i8 %i.xv, 97
  br i1 %i.xw, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xr, i64 2
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !37
  %i.xz = icmp eq i8 %i.xy, 120
  br i1 %i.xz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xr, i64 3
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !37
  %i.yc = icmp eq i8 %i.yb, 112
  br i1 %i.yc, label %stbtt__find_table.exit332, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %indvars.iv.next.i329 = add nuw nsw i64 %indvars.iv.i327, 1 ; 2 uses
  %exitcond.not.i330 = icmp eq i64 %indvars.iv.next.i329, %wide.trip.count.i326
  br i1 %exitcond.not.i330, label %stbtt__find_table.exit332.thread, label %bb.cy, !llvm.loop !3

stbtt__find_table.exit332:                        ; preds = %bb.db
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.ye = load i32, ptr %i.yd, align 1            ; 2 uses
  %.not120 = icmp eq i32 %i.ye, 0
  br i1 %.not120, label %stbtt__find_table.exit332.thread, label %bb.dd

bb.dd:                                            ; preds = %stbtt__find_table.exit332
  %i.yf = tail call i32 @llvm.bswap.i32(i32 %i.ye)
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 %i.yg ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !37
  %i.yk = zext i8 %i.yj to i32
  %i.yl = shl nuw nsw i32 %i.yk, 8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 5
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !37
  %i.yo = zext i8 %i.yn to i32
  %i.yp = or disjoint i32 %i.yl, %i.yo
  br label %stbtt__find_table.exit332.thread

stbtt__find_table.exit332.thread:                 ; preds = %bb.dc, %stbtt__find_table.exit332, %bb.cx, %bb.dd
  %.sink = phi i32 [ %i.yp, %bb.dd ], [ 65535, %stbtt__find_table.exit332 ], [ 65535, %bb.cx ], [ 65535, %bb.dc ]
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink, ptr %i.yq, align 4, !tbaa !53
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -1, ptr %i.yr, align 4, !tbaa !42
  %i.ys = zext i32 %.2.i342 to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ys ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 2
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !37
  %i.yw = zext i8 %i.yv to i32
  %i.yx = shl nuw nsw i32 %i.yw, 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yt, i64 3
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !37
  %i.za = zext i8 %i.yz to i32
  %i.zb = or disjoint i32 %i.yx, %i.za            ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.zc, align 8, !tbaa !54
  %.not406 = icmp eq i32 %i.zb, 0
  br i1 %.not406, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %stbtt__find_table.exit332.thread
  %i.zd = add i32 %.2.i342, 4
  %wide.trip.count = zext nneg i32 %i.zb to i64
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph, %bb.dg
  %i.ze = phi i32 [ 0, %.lr.ph ], [ %i.aac, %bb.dg ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.dg ] ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.zf = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.zg = add i32 %i.zd, %i.zf
  %i.zh = zext i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 %i.zh ; 5 uses
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !37
  %i.zk = zext i8 %i.zj to i16
  %i.zl = shl nuw i16 %i.zk, 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zi, i64 1
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !37
  %i.zo = zext i8 %i.zn to i16
  %i.zp = or disjoint i16 %i.zl, %i.zo
  switch i16 %i.zp, label %bb.dg [
    i16 3, label %bb.df
    i16 0, label %.sink.split
  ]

bb.df:                                            ; preds = %bb.de
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zi, i64 2
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !37
  %i.zs = zext i8 %i.zr to i16
  %i.zt = shl nuw i16 %i.zs, 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zi, i64 3
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !37
  %i.zw = zext i8 %i.zv to i16
  %i.zx = or disjoint i16 %i.zt, %i.zw
  switch i16 %i.zx, label %bb.dg [
    i16 1, label %.sink.split
    i16 10, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.de, %bb.df, %bb.df
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zz = load i32, ptr %i.zy, align 1
  %i.aaa = tail call i32 @llvm.bswap.i32(i32 %i.zz)
  %i.aab = add i32 %i.aaa, %.2.i342               ; 2 uses
  store i32 %i.aab, ptr %i.zc, align 8, !tbaa !54
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.df, %bb.de
  %i.aac = phi i32 [ %i.ze, %bb.df ], [ %i.ze, %bb.de ], [ %i.aab, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.de, !llvm.loop !151

._crit_edge:                                      ; preds = %bb.dg
  %i.aad = icmp eq i32 %i.aac, 0
  br i1 %i.aad, label %._crit_edge.thread, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge
  %i.aae = sext i32 %i.bx to i64
  %i.aaf = getelementptr inbounds i8, ptr %1, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 50
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !37
  %i.aai = zext i8 %i.aah to i32
  %i.aaj = shl nuw nsw i32 %i.aai, 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaf, i64 51
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !37
  %i.aam = zext i8 %i.aal to i32
  %i.aan = or disjoint i32 %i.aaj, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.aan, ptr %i.aao, align 4, !tbaa !55
  br label %._crit_edge.thread

.critedge:                                        ; preds = %bb.be, %bb.az, %bb.cv, %stbtt__dict_get_ints.exit319, %stbtt__find_table.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %stbtt__find_table.exit332.thread, %._crit_edge, %.critedge, %bb.ay, %stbtt__find_table.exit184, %bb.dh
  %.1 = phi i32 [ 0, %bb.ay ], [ 1, %bb.dh ], [ 0, %stbtt__find_table.exit184 ], [ 0, %.critedge ], [ 0, %._crit_edge ], [ 0, %stbtt__find_table.exit332.thread ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_FindGlyphIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_3
