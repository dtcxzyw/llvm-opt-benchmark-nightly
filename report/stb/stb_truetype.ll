Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__find_table:bb.a
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
  %i.ab = sext i8 %i.aa to i32
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37
  %i.af = zext i8 %i.ae to i32
  %i.ag = load i8, ptr %i.o, align 1, !tbaa !37
  %i.ah = sext i8 %i.ag to i32
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
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
  br i1 %i.n, label %stbtt__dict_get_ints.exit, label %stbtt__dict_get_ints.exit.thread, !llvm.loop !2

stbtt__dict_get_ints.exit:                        ; preds = %.lr.ph.i.preheader
  %i.o = call i32 @stbtt__cff_int(ptr noundef nonnull %5) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp ne i32 %i.k, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.b, label %bb.m

stbtt__dict_get_ints.exit.thread:                 ; preds = %.lr.ph.i.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.m

bb.b:                                             ; preds = %stbtt__dict_get_ints.exit
  %i.r = or i32 %i.o, %i.k
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
  %i.x = zext i32 %i.k to i64
  %i.y = shl nuw i64 %i.x, 32
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
  %i.ct = zext i32 %i.co to i64
  %i.cu = shl nuw i64 %i.ct, 32
  %.sroa.0.0.i.i = select i1 %or.cond.i13, ptr null, ptr %i.cs
  %.sroa.5.0.i.i = select i1 %or.cond.i13, i64 0, i64 %i.cu
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.5.0.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %stbtt__dict_get_ints.exit12, %stbtt__dict_get_ints.exit12.thread, %stbtt__dict_get_ints.exit, %stbtt__dict_get_ints.exit.thread, %stbtt__cff_get_index.exit
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i.i, %stbtt__cff_get_index.exit ], [ zeroinitializer, %stbtt__dict_get_ints.exit ], [ zeroinitializer, %stbtt__dict_get_ints.exit.thread ], [ zeroinitializer, %stbtt__dict_get_ints.exit12.thread ], [ zeroinitializer, %stbtt__dict_get_ints.exit12 ]
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
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = icmp eq i8 %i.an, 111
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = icmp eq i8 %i.aq, 99
end_hunk_0
