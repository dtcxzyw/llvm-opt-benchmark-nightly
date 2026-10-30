Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/schema?download=true
inline.NumInlined: 147
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ArrowSchemaSetMetadata:bb.a
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.k, %.020.i
  %i.o = add i64 %i.n, %i.j
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.m ; 2 uses
  %.0.copyload2.i.i.1 = load i32, ptr %i.p, align 1
  %i.q = sext i32 %.0.copyload2.i.i.1 to i64      ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.0.copyload.i.i.1 = load i32, ptr %i.s, align 1
  %i.t = sext i32 %.0.copyload.i.i.1 to i64       ; 2 uses
  %i.u = add nsw i64 %i.q, 8                      ; 2 uses
  %i.v = add i64 %i.u, %i.m
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = add i64 %i.u, %i.o
  %i.y = add i64 %i.x, %i.t                       ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, label %.lr.ph.i

ArrowMetadataSizeOf.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ArrowMetadataSizeOf.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.020.i.epil.init = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.y, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ]
  %.sroa.4.019.i.epil.init = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.w, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.z = getelementptr inbounds i8, ptr %1, i64 %.sroa.4.019.i.epil.init ; 2 uses
  %.0.copyload2.i.i.epil = load i32, ptr %i.z, align 1
  %i.aa = sext i32 %.0.copyload2.i.i.epil to i64  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.0.copyload.i.i.epil = load i32, ptr %i.ac, align 1
  %i.ad = sext i32 %.0.copyload.i.i.epil to i64
  %i.ae = add nsw i64 %i.aa, 8
  %i.af = add i64 %i.ae, %.020.i.epil.init
  %i.ag = add i64 %i.af, %i.ad
  br label %ArrowMetadataSizeOf.exit

ArrowMetadataSizeOf.exit:                         ; preds = %.lr.ph.i.epil.preheader, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, %ArrowMetadataReaderInit.exit.i
  %.1.i = phi i64 [ 4, %ArrowMetadataReaderInit.exit.i ], [ %i.y, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.ah = tail call ptr @ArrowMalloc(i64 noundef %.1.i) #17 ; 3 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !21
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %.thread

.thread:                                          ; preds = %ArrowMetadataSizeOf.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %1, i64 %.1.i, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %ArrowMetadataSizeOf.exit
  %.1 = phi i32 [ 12, %ArrowMetadataSizeOf.exit ], [ 0, %.thread ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @ArrowMetadataSizeOf(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ArrowMetadataReaderRead.exit, label %ArrowMetadataReaderInit.exit

ArrowMetadataReaderInit.exit:                     ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1                ; 5 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %ArrowMetadataReaderRead.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ArrowMetadataReaderInit.exit
  %xtraiter = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.b, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 4, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %.sroa.4.019 = phi i64 [ 4, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.sroa.4.019 ; 2 uses
  %.0.copyload2.i = load i32, ptr %i.e, align 1
  %i.f = sext i32 %.0.copyload2.i to i64          ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.0.copyload.i = load i32, ptr %i.h, align 1
  %i.i = sext i32 %.0.copyload.i to i64           ; 2 uses
  %i.j = add i64 %.sroa.4.019, 8
  %i.k = add i64 %i.j, %i.f
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = add i64 %.020, 8
  %i.n = add i64 %i.m, %i.f
  %i.o = add i64 %i.n, %i.i
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.l ; 2 uses
  %.0.copyload2.i.1 = load i32, ptr %i.p, align 1
  %i.q = sext i32 %.0.copyload2.i.1 to i64        ; 3 uses
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.0.copyload.i.1 = load i32, ptr %i.s, align 1
  %i.t = sext i32 %.0.copyload.i.1 to i64         ; 2 uses
  %i.u = add i64 %i.l, 8
  %i.v = add i64 %i.u, %i.q
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = add i64 %i.o, 8
  %i.y = add i64 %i.x, %i.q
  %i.z = add i64 %i.y, %i.t                       ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ArrowMetadataReaderRead.exit.loopexit.unr-lcssa, label %.lr.ph

ArrowMetadataReaderRead.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ArrowMetadataReaderRead.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %ArrowMetadataReaderRead.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 4, %.lr.ph.preheader ], [ %i.z, %ArrowMetadataReaderRead.exit.loopexit.unr-lcssa ]
  %.sroa.4.019.epil.init = phi i64 [ 4, %.lr.ph.preheader ], [ %i.w, %ArrowMetadataReaderRead.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.sroa.4.019.epil.init ; 2 uses
  %.0.copyload2.i.epil = load i32, ptr %i.aa, align 1
  %i.ab = sext i32 %.0.copyload2.i.epil to i64    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.0.copyload.i.epil = load i32, ptr %i.ad, align 1
  %i.ae = sext i32 %.0.copyload.i.epil to i64
  %i.af = add i64 %.020.epil.init, 8
  %i.ag = add i64 %i.af, %i.ab
  %i.ah = add i64 %i.ag, %i.ae
  br label %ArrowMetadataReaderRead.exit

ArrowMetadataReaderRead.exit:                     ; preds = %.lr.ph.epil.preheader, %ArrowMetadataReaderRead.exit.loopexit.unr-lcssa, %ArrowMetadataReaderInit.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 4, %ArrowMetadataReaderInit.exit ], [ %i.z, %ArrowMetadataReaderRead.exit.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.epil.preheader ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 18) i32 @ArrowSchemaAllocateDictionary(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ArrowMalloc(i64 noundef 72) #17 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %i.e, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 17, %bb.a ], [ 12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 18) i32 @ArrowSchemaDeepCopy(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 72)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr @ArrowSchemaReleaseInternal, ptr %i.d, align 8, !tbaa !18
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not16.i = icmp eq ptr %i.e, null
  br i1 %.not16.i, label %.thread109, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #18
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = tail call ptr @ArrowMalloc(i64 noundef %i.g) #17 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !19
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.sink.split, label %bb.c

.thread109:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.k, ptr %i.a, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.e, i64 %i.g, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  store i64 %i.o, ptr %i.a, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %.not.i61 = icmp eq ptr %.pre, null
  br i1 %.not.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ArrowFree(ptr noundef nonnull %.pre) #17
  br label %bb.e

bb.e:                                             ; preds = %.thread109, %bb.d, %bb.c
  %i.r = phi ptr [ %i.m, %.thread109 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not16.i62 = icmp eq ptr %i.r, null
  br i1 %.not16.i62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.r) #18
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = tail call ptr @ArrowMalloc(i64 noundef %i.u) #17 ; 3 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !20
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.sink.split, label %.thread.i63

.thread.i63:                                      ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.r, i64 %i.u, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.s, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %.thread.i63, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %.not.i65 = icmp eq ptr %i.aa, null
  br i1 %.not.i65, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ArrowFree(ptr noundef nonnull %i.aa) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not16.i66 = icmp eq ptr %i.y, null
  br i1 %.not16.i66, label %bb.k, label %ArrowMetadataReaderInit.exit.i.i

ArrowMetadataReaderInit.exit.i.i:                 ; preds = %bb.j
  %i.ab = load i32, ptr %i.y, align 1             ; 5 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %ArrowMetadataSizeOf.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %ArrowMetadataReaderInit.exit.i.i
  %xtraiter = and i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ab, 1
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ab, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.020.i.i = phi i64 [ 4, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ]
  %.sroa.4.019.i.i = phi i64 [ 4, %.lr.ph.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %.sroa.4.019.i.i ; 2 uses
  %.0.copyload2.i.i.i = load i32, ptr %i.ae, align 1
  %i.af = sext i32 %.0.copyload2.i.i.i to i64     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.ah, align 1
  %i.ai = sext i32 %.0.copyload.i.i.i to i64
  %i.aj = add nsw i64 %i.af, 8
  %i.ak = add nsw i64 %i.aj, %i.ai                ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.4.019.i.i         ; 2 uses
  %i.am = add i64 %i.ak, %.020.i.i
  %i.an = getelementptr inbounds i8, ptr %i.y, i64 %i.al ; 2 uses
  %.0.copyload2.i.i.i.1 = load i32, ptr %i.an, align 1
  %i.ao = sext i32 %.0.copyload2.i.i.i.1 to i64   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.0.copyload.i.i.i.1 = load i32, ptr %i.aq, align 1
  %i.ar = sext i32 %.0.copyload.i.i.i.1 to i64
  %i.as = add nsw i64 %i.ao, 8
  %i.at = add nsw i64 %i.as, %i.ar                ; 2 uses
  %i.au = add i64 %i.at, %i.al                    ; 2 uses
  %i.av = add i64 %i.at, %i.am                    ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ArrowMetadataSizeOf.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.020.i.i.epil.init = phi i64 [ 4, %.lr.ph.i.i.preheader ], [ %i.av, %ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa ]
  %.sroa.4.019.i.i.epil.init = phi i64 [ 4, %.lr.ph.i.i.preheader ], [ %i.au, %ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod121 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.aw = getelementptr inbounds i8, ptr %i.y, i64 %.sroa.4.019.i.i.epil.init ; 2 uses
  %.0.copyload2.i.i.i.epil = load i32, ptr %i.aw, align 1
  %i.ax = sext i32 %.0.copyload2.i.i.i.epil to i64 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.0.copyload.i.i.i.epil = load i32, ptr %i.az, align 1
  %i.ba = sext i32 %.0.copyload.i.i.i.epil to i64
  %i.bb = add nsw i64 %i.ax, 8
  %i.bc = add nsw i64 %i.bb, %i.ba
  %i.bd = add i64 %i.bc, %.020.i.i.epil.init
  br label %ArrowMetadataSizeOf.exit.i

ArrowMetadataSizeOf.exit.i:                       ; preds = %.lr.ph.i.i.epil.preheader, %ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa, %ArrowMetadataReaderInit.exit.i.i
  %.1.i.i = phi i64 [ 4, %ArrowMetadataReaderInit.exit.i.i ], [ %i.av, %ArrowMetadataSizeOf.exit.i.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.be = tail call ptr @ArrowMalloc(i64 noundef %.1.i.i) #17 ; 3 uses
  store ptr %i.be, ptr %i.z, align 8, !tbaa !21
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.sink.split, label %.thread.i67

.thread.i67:                                      ; preds = %ArrowMetadataSizeOf.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %i.y, i64 %.1.i.i, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.z, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %.thread.i67, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22
  %.not.i69 = icmp eq ptr %i.bj, null
  br i1 %.not.i69, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp sgt i64 %i.bh, 0
  br i1 %i.bk, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.bl = shl i64 %i.bh, 3                        ; 2 uses
  %i.bm = tail call ptr @ArrowMalloc(i64 noundef %i.bl) #17 ; 3 uses
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !22
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bm, i8 0, i64 %i.bl, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.01924.i = phi i64 [ %i.bt, %bb.o ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.bo = tail call ptr @ArrowMalloc(i64 noundef 72) #17 ; 3 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.01924.i
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !24
  %i.br = icmp eq ptr %i.bo, null
  br i1 %i.br, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr null, ptr %i.bs, align 8, !tbaa !18
  %i.bt = add nuw nsw i64 %.01924.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bh
  br i1 %exitcond.not.i, label %ArrowSchemaAllocateChildren.exit, label %.lr.ph.i

ArrowSchemaAllocateChildren.exit:                 ; preds = %bb.o
  %.pre91 = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bu = icmp sgt i64 %.pre91, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ArrowSchemaAllocateChildren.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.bw = add nuw nsw i64 %.088, 1                ; 2 uses
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !23
  %.not57 = icmp slt i64 %i.bw, %i.bx
  br i1 %.not57, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.088 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %bb.p ] ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.088
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24
  %i.cb = load ptr, ptr %i.bi, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.088
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ce = tail call i32 @ArrowSchemaDeepCopy(ptr noundef %i.ca, ptr noundef %i.cd) ; 2 uses
  %.not56 = icmp eq i32 %i.ce, 0
  br i1 %.not56, label %bb.p, label %.sink.split

._crit_edge:                                      ; preds = %bb.p, %bb.m, %ArrowSchemaAllocateChildren.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25
  %.not58 = icmp eq ptr %i.cg, null
  br i1 %.not58, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !25
  %.not.i72 = icmp eq ptr %i.ci, null
end_hunk_0
begin_hunk_1_@ArrowSchemaViewValidate:bb.a
bb.s:                                             ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.q, label %ArrowSchemaViewValidateNChildren.exit

bb.t:                                             ; preds = %bb.a
  %.pre.i46 = load ptr, ptr %0, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 32
  %.pre31.i48 = load i64, ptr %.phi.trans.insert.i47, align 8, !tbaa !23 ; 2 uses
  %.not2427.i = icmp sgt i64 %.pre31.i48, 0
  br i1 %.not2427.i, label %.lr.ph.i, label %ArrowSchemaViewValidateNChildren.exit

.lr.ph.i:                                         ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i
  %.01828.i51 = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %bb.y ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01828.i51
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.al = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.98, i64 noundef %.01828.i51) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.w:                                             ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef %.01828.i51) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.y:                                             ; preds = %bb.w
  %i.aq = add nuw nsw i64 %.01828.i51, 1          ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %i.aq, %.pre31.i48
  br i1 %exitcond.not.i52, label %ArrowSchemaViewValidateNChildren.exit, label %bb.u

bb.z:                                             ; preds = %bb.a, %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.pre31.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23 ; 2 uses
  %.not2427.i.i = icmp sgt i64 %.pre31.i.i, 0
  br i1 %.not2427.i.i, label %.lr.ph.i.i, label %ArrowSchemaViewValidateNChildren.exit

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %.01828.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.ae ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01828.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aw = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.98, i64 noundef %.01828.i.i) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ba = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef %.01828.i.i) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bb = add nuw nsw i64 %.01828.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %.pre31.i.i
  br i1 %exitcond.not.i.i, label %ArrowSchemaViewValidateNChildren.exit, label %bb.aa

bb.af:                                            ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert.i.i54 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 32
  %.pre31.i.i55 = load i64, ptr %.phi.trans.insert.i.i54, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i = icmp eq i64 %.pre31.i.i55, 1
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.97, i64 noundef 1, i64 noundef %.pre31.i.i55) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

._crit_edge.i.i:                                  ; preds = %bb.af
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 6 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.bh = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.98, i64 noundef 0) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bl = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef 0) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ak:                                            ; preds = %bb.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !23 ; 2 uses
  %.not17.i = icmp eq i64 %i.bn, 2
  br i1 %.not17.i, label %sub_0.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.100, i64 noundef %i.bn) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

sub_0.i:                                          ; preds = %bb.ak
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %.not.i = icmp eq i8 %i.bq, 43
  br i1 %.not.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bs = load i8, ptr %i.br, align 1
  %.not25.i = icmp eq i8 %i.bs, 115
  br i1 %.not25.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.am, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.bw = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.bp) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.am:                                            ; preds = %.tail.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.bz = and i64 %i.by, 2
  %.not19.i = icmp eq i64 %i.bz, 0
  br i1 %.not19.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.102) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ao:                                            ; preds = %bb.am
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.cg = and i64 %i.cf, 2
  %.not20.i = icmp eq i64 %i.cg, 0
  br i1 %.not20.i, label %ArrowSchemaViewValidateNChildren.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.103) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.aq:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !34
  %.off.i = add i32 %i.cj, -3
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load ptr, ptr %0, align 8, !tbaa !31
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cm = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.104, ptr noundef %i.cl) #17, !inline_history !57 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.cn = load ptr, ptr %0, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %3, ptr noundef %i.cp, ptr noundef %2), !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %ArrowSchemaViewValidateNChildren.exit

bb.at:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !33
  %i.ct = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef %i.cs) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

ArrowSchemaViewValidateNChildren.exit:            ; preds = %bb.ae, %bb.y, %bb.s, %bb.k, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %.tail.thread.i, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.c, %bb.b, %bb.at, %bb.e
  %.0 = phi i32 [ 22, %bb.at ], [ 22, %bb.aj ], [ 22, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.cq, %bb.as ], [ 0, %bb.y ], [ 0, %bb.t ], [ 0, %bb.s ], [ 22, %bb.c ], [ 22, %bb.g ], [ 22, %bb.i ], [ 22, %bb.j ], [ 22, %bb.l ], [ 22, %bb.n ], [ 22, %bb.o ], [ 22, %bb.q ], [ 0, %bb.k ], [ 22, %bb.v ], [ 22, %bb.x ], [ 0, %bb.z ], [ 22, %bb.ab ], [ 22, %bb.ad ], [ 22, %bb.al ], [ 22, %.tail.thread.i ], [ 22, %bb.an ], [ 22, %bb.ap ], [ 0, %bb.ao ], [ 22, %bb.ag ], [ 22, %bb.ah ], [ 22, %bb.ar ], [ 0, %bb.ae ]
  ret i32 %.0
}

declare void @ArrowLayoutInit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 23) i32 @ArrowMetadataGetValue(ptr noundef %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %ArrowMetadataGetValueInternal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ArrowMetadataGetValueInternal.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1                ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ArrowMetadataReaderInit.exit.i, %.critedge.i
  %.sroa.416.035.i = phi i64 [ %i.l, %.critedge.i ], [ 4, %ArrowMetadataReaderInit.exit.i ] ; 2 uses
  %.sroa.7.034.i = phi i32 [ %i.m, %.critedge.i ], [ %i.c, %ArrowMetadataReaderInit.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.sroa.416.035.i ; 4 uses
  %.0.copyload2.i.i = load i32, ptr %i.e, align 1
  %i.f = sext i32 %.0.copyload2.i.i to i64        ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.0.copyload.i.i = load i32, ptr %i.h, align 1
  %i.i = add nsw i64 %i.f, 8                      ; 2 uses
  %i.j = sext i32 %.0.copyload.i.i to i64         ; 2 uses
  %i.k = add i64 %i.i, %.sroa.416.035.i
  %i.l = add i64 %i.k, %i.j
  %i.m = add nsw i32 %.sroa.7.034.i, -1
  %i.n = icmp eq i64 %2, %i.f
  br i1 %i.n, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.p = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %i.o, i64 noundef %2) #18
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge.thread.i, label %.critedge.i

.critedge.thread.i:                               ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.s, align 8, !tbaa !42
  br label %ArrowMetadataGetValueInternal.exit

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i
  %i.t = icmp samesign ult i32 %.sroa.7.034.i, 2
  br i1 %i.t, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

ArrowMetadataGetValueInternal.exit:               ; preds = %.critedge.i, %.critedge.thread.i, %ArrowMetadataReaderInit.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 22, %bb.a ], [ 0, %bb.b ], [ 0, %ArrowMetadataReaderInit.exit.i ], [ 0, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, -9223372036854775808) i64 @ArrowSchemaToString(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.ArrowSchemaView, align 8    ; 15 uses
  %5 = alloca %struct.ArrowError, align 1         ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.25) #17
  %i.c = sext i32 %i.b to i64
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.26) #17
  %i.h = sext i32 %i.g to i64
  br label %bb.bj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %5)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #17
  %i.k = sext i32 %i.j to i64
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59   ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp ne ptr %i.q, null                   ; 4 uses
  %or.cond = select i1 %i.o, i1 %i.r, i1 false    ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = trunc i64 %i.n to i32
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %switch.tableidx = add i32 %i.v, -1             ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx, 45
  br i1 %i.w, label %switch.lookup, label %ArrowTypeString.exit

switch.lookup:                                    ; preds = %bb.h
  %i.x = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowTypeString, i64 %i.x
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %ArrowTypeString.exit

ArrowTypeString.exit:                             ; preds = %bb.h, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.h ]
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.28, i32 noundef %i.s, ptr noundef %i.t, ptr noundef %.0.i) #17
  br label %ArrowToStringLogChars.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = trunc i64 %i.n to i32
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.z, ptr noundef %i.aa) #17
  br label %ArrowToStringLogChars.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = call fastcc ptr @ArrowTypeString(i32 noundef %i.ad)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.30, ptr noundef %i.ae) #17
  br label %ArrowToStringLogChars.exit

ArrowToStringLogChars.exit:                       ; preds = %bb.j, %bb.l, %ArrowTypeString.exit
  %.042.in = phi i32 [ %i.y, %ArrowTypeString.exit ], [ %i.ab, %bb.j ], [ %i.af, %bb.l ]
  %i.ag = call i32 @llvm.smax.i32(i32 %.042.in, i32 0)
  %spec.store.select.i = zext nneg i32 %i.ag to i64 ; 4 uses
  %i.ah = sub nsw i64 %2, %spec.store.select.i
  %spec.select.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 0) ; 3 uses
  %.not.i = icmp eq ptr %1, null
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %spec.store.select.i
  %spec.select = select i1 %.not.i, ptr null, ptr %i.ai ; 3 uses
  br i1 %i.r, label %bb.az, label %ArrowToStringLogChars.exit56

.critedge:                                        ; preds = %bb.k
  %spec.select.i54 = call i64 @llvm.smax.i64(i64 %2, i64 0)
  br label %ArrowToStringLogChars.exit56

ArrowToStringLogChars.exit56:                     ; preds = %.critedge, %ArrowToStringLogChars.exit
  %.0147 = phi ptr [ %spec.select, %ArrowToStringLogChars.exit ], [ %1, %.critedge ] ; 7 uses
  %.0141 = phi i64 [ %spec.select.i, %ArrowToStringLogChars.exit ], [ %spec.select.i54, %.critedge ] ; 7 uses
  %.0138 = phi i64 [ %spec.store.select.i, %ArrowToStringLogChars.exit ], [ 0, %.critedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  switch i32 %i.ak, label %ArrowTypeString.exit.i [
    i32 1, label %ArrowTypeString.exit.thread.i
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
    i32 10, label %bb.u
    i32 11, label %bb.v
    i32 12, label %bb.w
    i32 13, label %bb.x
    i32 14, label %bb.y
    i32 15, label %bb.z
    i32 16, label %ArrowTypeString.exit.thread44.i
    i32 17, label %bb.aa
    i32 18, label %bb.ab
    i32 19, label %ArrowTypeString.exit.thread52.i
    i32 20, label %ArrowTypeString.exit.thread39.i
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 42, label %ArrowTypeString.exit.thread34.i
    i32 43, label %bb.af
    i32 24, label %bb.ag
    i32 25, label %bb.ah
    i32 26, label %bb.ai
    i32 27, label %bb.aj
    i32 28, label %ArrowTypeString.exit.thread49.i
    i32 29, label %bb.ak
    i32 30, label %bb.al
    i32 31, label %bb.am
end_hunk_1
begin_hunk_2_@ArrowSchemaToString:bb.a

bb.bh:                                            ; preds = %ArrowToStringLogChars.exit69, %.sink.split
  %.6 = phi i64 [ %.5, %ArrowToStringLogChars.exit69 ], [ %i.dw, %.sink.split ]
  %. = call i64 @llvm.smax.i64(i64 %.6, i64 0)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.f
  %.144 = phi i64 [ %i.k, %bb.f ], [ %., %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.d, %bb.b
  %.2 = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.d ], [ %.144, %bb.bi ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef ptr @ArrowTypeString(i32 noundef %0) unnamed_addr #9 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 45
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowTypeString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @ArrowMetadataReaderInit(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink8 = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink8, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.d, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 23) i32 @ArrowMetadataReaderRead(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f ; 4 uses
  %.0.copyload2 = load i32, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %1, align 8, !tbaa !41
  %i.i = sext i32 %.0.copyload2 to i64            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr i8, ptr %i.g, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.0.copyload = load i32, ptr %i.l, align 1
  %i.m = add nsw i64 %i.i, 8                      ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  store ptr %i.n, ptr %2, align 8, !tbaa !41
  %i.o = sext i32 %.0.copyload to i64             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !42
  %i.q = add i64 %i.m, %i.f
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %i.e, align 8, !tbaa !45
  %i.s = add nsw i32 %i.b, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define signext range(i8 0, 2) i8 @ArrowMetadataHasKey(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ArrowMetadataGetValue.exit, label %ArrowMetadataReaderInit.exit.i.i

ArrowMetadataReaderInit.exit.i.i:                 ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1                ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %ArrowMetadataGetValue.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ArrowMetadataReaderInit.exit.i.i, %.critedge.i.i
  %.sroa.416.035.i.i = phi i64 [ %i.k, %.critedge.i.i ], [ 4, %ArrowMetadataReaderInit.exit.i.i ] ; 2 uses
  %.sroa.7.034.i.i = phi i32 [ %i.l, %.critedge.i.i ], [ %i.b, %ArrowMetadataReaderInit.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.sroa.416.035.i.i ; 3 uses
  %.0.copyload2.i.i.i = load i32, ptr %i.d, align 1
  %i.e = sext i32 %.0.copyload2.i.i.i to i64      ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 1
  %i.h = sext i32 %.0.copyload.i.i.i to i64
  %i.i = add i64 %.sroa.416.035.i.i, 8
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.h
  %i.l = add nsw i32 %.sroa.7.034.i.i, -1
  %i.m = icmp eq i64 %2, %i.e
  br i1 %i.m, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = tail call i32 @strncmp(ptr noundef readonly %1, ptr noundef nonnull %i.n, i64 noundef %2) #18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %ArrowMetadataGetValue.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.lr.ph.i.i
  %i.q = icmp samesign ult i32 %.sroa.7.034.i.i, 2
  br i1 %i.q, label %ArrowMetadataGetValue.exit, label %.lr.ph.i.i

ArrowMetadataGetValue.exit:                       ; preds = %bb.b, %.critedge.i.i, %bb.a, %ArrowMetadataReaderInit.exit.i.i
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 0, %ArrowMetadataReaderInit.exit.i.i ], [ 1, %bb.b ], [ 0, %.critedge.i.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @ArrowMetadataBuilderInit(ptr noundef initializes((0, 48)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.ArrowBufferAllocator, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ArrowMetadataSizeOf.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1                ; 5 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataSizeOf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %ArrowMetadataReaderInit.exit.i
  %xtraiter = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.c, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.020.i = phi i64 [ 4, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ]
  %.sroa.4.019.i = phi i64 [ 4, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds i8, ptr %1, i64 %.sroa.4.019.i ; 2 uses
  %.0.copyload2.i.i = load i32, ptr %i.f, align 1
  %i.g = sext i32 %.0.copyload2.i.i to i64        ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.0.copyload.i.i = load i32, ptr %i.i, align 1
  %i.j = sext i32 %.0.copyload.i.i to i64         ; 2 uses
  %i.k = add nsw i64 %i.g, 8                      ; 2 uses
  %i.l = add i64 %i.k, %.sroa.4.019.i
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.k, %.020.i
  %i.o = add i64 %i.n, %i.j
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.m ; 2 uses
  %.0.copyload2.i.i.1 = load i32, ptr %i.p, align 1
  %i.q = sext i32 %.0.copyload2.i.i.1 to i64      ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.0.copyload.i.i.1 = load i32, ptr %i.s, align 1
  %i.t = sext i32 %.0.copyload.i.i.1 to i64       ; 2 uses
  %i.u = add nsw i64 %i.q, 8                      ; 2 uses
  %i.v = add i64 %i.u, %i.m
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = add i64 %i.u, %i.o
  %i.y = add i64 %i.x, %i.t                       ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, label %.lr.ph.i

ArrowMetadataSizeOf.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ArrowMetadataSizeOf.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.020.i.epil.init = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.y, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ]
  %.sroa.4.019.i.epil.init = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.w, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i32 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod9)
  %i.z = getelementptr inbounds i8, ptr %1, i64 %.sroa.4.019.i.epil.init ; 2 uses
  %.0.copyload2.i.i.epil = load i32, ptr %i.z, align 1
  %i.aa = sext i32 %.0.copyload2.i.i.epil to i64  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.0.copyload.i.i.epil = load i32, ptr %i.ac, align 1
  %i.ad = sext i32 %.0.copyload.i.i.epil to i64
  %i.ae = add nsw i64 %i.aa, 8
  %i.af = add i64 %i.ae, %.020.i.epil.init
  %i.ag = add i64 %i.af, %i.ad
  br label %ArrowMetadataSizeOf.exit

ArrowMetadataSizeOf.exit:                         ; preds = %.lr.ph.i.epil.preheader, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, %bb.a, %ArrowMetadataReaderInit.exit.i
  %.1.i = phi i64 [ 0, %bb.a ], [ 4, %ArrowMetadataReaderInit.exit.i ], [ %i.y, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = add nsw i64 %i.ai, %.1.i                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49 ; 3 uses
  %.not.i.i = icmp sgt i64 %i.aj, %i.al
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %ArrowMetadataSizeOf.exit
  %i.am = shl nsw i64 %i.al, 1
  %..i.i.i = call i64 @llvm.smax.i64(i64 %i.am, i64 %i.aj) ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ao = load ptr, ptr %0, align 8, !tbaa !51
  %i.ap = call ptr %i.an(ptr noundef nonnull %i.a, ptr noundef %i.ao, i64 noundef %i.al, i64 noundef %..i.i.i) #17, !inline_history !63 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !51
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = icmp sgt i64 %..i.i.i, 0
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %ArrowBufferReserve.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %..i.i.i, ptr %i.ak, align 8, !tbaa !49
  br label %bb.d

ArrowBufferReserve.exit.i:                        ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %ArrowBufferAppend.exit

bb.d:                                             ; preds = %bb.c, %ArrowMetadataSizeOf.exit
  %3 = icmp sgt i64 %.1.i, 0
  br i1 %3, label %bb.e, label %ArrowBufferAppend.exit

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %0, align 8, !tbaa !51
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %1, i64 %.1.i, i1 false)
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aw = add nsw i64 %i.av, %.1.i
  store i64 %i.aw, ptr %i.ah, align 8, !tbaa !48
  br label %ArrowBufferAppend.exit

ArrowBufferAppend.exit:                           ; preds = %ArrowBufferReserve.exit.i, %bb.d, %bb.e
  %.1.i4 = phi i32 [ 12, %ArrowBufferReserve.exit.i ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.1.i4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowMetadataBuilderAppend(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  %6 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  store ptr %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.b, align 8
  %i.c = call fastcc i32 @ArrowMetadataBuilderAppendInternal(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 23) i32 @ArrowMetadataBuilderAppendInternal(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = add nsw i64 %i.f, 4                      ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.f, -4
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !51  ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %ArrowBufferAppendInt32.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = tail call ptr %i.i(ptr noundef nonnull %i.h, ptr noundef %.pre.i, i64 noundef 0, i64 noundef %i.g) #17, !inline_history !66 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !51
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ArrowBufferAppendInt32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr %i.b, align 8, !tbaa !49
  %.pre1.i = load i64, ptr %i.e, align 8, !tbaa !48
  br label %ArrowBufferAppendInt32.exit.thread

ArrowBufferAppendInt32.exit.thread:               ; preds = %bb.c, %bb.e
  %i.l = phi i64 [ %.pre1.i, %bb.e ], [ %i.f, %bb.c ]
  %i.m = phi ptr [ %i.j, %bb.e ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  store i32 0, ptr %i.n, align 1
  %i.o = load i64, ptr %i.e, align 8, !tbaa !48
  %i.p = add nsw i64 %i.o, 4
  store i64 %i.p, ptr %i.e, align 8, !tbaa !48
  %.pr = load i64, ptr %i.b, align 8, !tbaa !49
  br label %bb.f

ArrowBufferAppendInt32.exit:                      ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.m

bb.f:                                             ; preds = %ArrowBufferAppendInt32.exit.thread, %bb.b
  %i.q = phi i64 [ %.pr, %ArrowBufferAppendInt32.exit.thread ], [ %i.c, %bb.b ] ; 4 uses
  %i.r = icmp ult i64 %i.q, 4
  br i1 %i.r, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %.0.copyload = load i32, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %sext = shl i64 %i.u, 32
  %i.z = ashr exact i64 %sext, 32                 ; 4 uses
  %i.aa = add nsw i64 %i.z, 8
  %sext27 = shl i64 %i.x, 32
  %i.ab = ashr exact i64 %sext27, 32              ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = add i64 %i.aa, %i.ad
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp sgt i64 %i.af, %i.q
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i64 %i.q, 1
  %..i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = tail call ptr %i.ai(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.s, i64 noundef %i.q, i64 noundef %..i.i) #17, !inline_history !67 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !51
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp sgt i64 %..i.i, 0
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %ArrowBufferReserve.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %..i.i, ptr %i.b, align 8, !tbaa !49
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !48
  br label %bb.j

ArrowBufferReserve.exit:                          ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.am = phi i64 [ %i.ad, %bb.g ], [ %.pre, %bb.i ]
  %i.an = phi ptr [ %i.s, %bb.g ], [ %i.aj, %bb.i ]
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.am
  store i32 %i.v, ptr %i.ao, align 1
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.aq = add nsw i64 %i.ap, 4                    ; 3 uses
  store i64 %i.aq, ptr %i.ac, align 8, !tbaa !48
  %i.ar = icmp sgt i64 %i.z, 0
  br i1 %i.ar, label %bb.k, label %ArrowBufferAppendUnsafe.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %1, align 8, !tbaa !41
  %i.at = load ptr, ptr %0, align 8, !tbaa !51
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %i.as, i64 %i.z, i1 false)
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.aw = add nsw i64 %i.av, %i.z                 ; 2 uses
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !48
  br label %ArrowBufferAppendUnsafe.exit

ArrowBufferAppendUnsafe.exit:                     ; preds = %bb.j, %bb.k
  %i.ax = phi i64 [ %i.aq, %bb.j ], [ %i.aw, %bb.k ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !51
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.ax
  store i32 %i.y, ptr %i.az, align 1
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.bb = add nsw i64 %i.ba, 4                    ; 2 uses
  store i64 %i.bb, ptr %i.ac, align 8, !tbaa !48
  %i.bc = icmp sgt i64 %i.ab, 0
  br i1 %i.bc, label %bb.l, label %ArrowBufferAppendUnsafe.exit29

bb.l:                                             ; preds = %ArrowBufferAppendUnsafe.exit
  %i.bd = load ptr, ptr %2, align 8, !tbaa !41
  %i.be = load ptr, ptr %0, align 8, !tbaa !51
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %i.bd, i64 %i.ab, i1 false)
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.bh = add nsw i64 %i.bg, %i.ab
  store i64 %i.bh, ptr %i.ac, align 8, !tbaa !48
  br label %ArrowBufferAppendUnsafe.exit29

ArrowBufferAppendUnsafe.exit29:                   ; preds = %ArrowBufferAppendUnsafe.exit, %bb.l
  %i.bi = add nsw i32 %.0.copyload, 1
  %i.bj = load ptr, ptr %0, align 8, !tbaa !51
  store i32 %i.bi, ptr %i.bj, align 1
  br label %bb.m

bb.m:                                             ; preds = %ArrowBufferAppendUnsafe.exit29, %ArrowBufferReserve.exit, %ArrowBufferAppendInt32.exit, %bb.f, %bb.a
  %.4 = phi i32 [ 12, %ArrowBufferAppendInt32.exit ], [ 0, %bb.a ], [ 22, %bb.f ], [ 0, %ArrowBufferAppendUnsafe.exit29 ], [ 12, %ArrowBufferReserve.exit ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowMetadataBuilderSet(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  %6 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  store ptr %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.b, align 8
  %i.c = call fastcc i32 @ArrowMetadataBuilderSetInternal(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 23) i32 @ArrowMetadataBuilderSetInternal(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.ArrowBufferAllocator, align 8 ; 3 uses
  %4 = alloca %struct.ArrowBufferAllocator, align 8 ; 3 uses
  %5 = alloca %struct.ArrowBufferAllocator, align 8 ; 3 uses
  %6 = alloca %struct.ArrowStringView, align 8    ; 5 uses
  %7 = alloca %struct.ArrowStringView, align 8    ; 5 uses
  %8 = alloca %struct.ArrowBuffer, align 8        ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ArrowMetadataGetValueInternal.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.a
end_hunk_2
