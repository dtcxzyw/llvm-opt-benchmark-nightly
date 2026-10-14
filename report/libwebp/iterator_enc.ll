Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/iterator_enc?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 28
begin_hunk_0_@VP8IteratorSetCountDown:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @VP8IteratorIsDone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %i.c = icmp slt i32 %i.b, 1
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorInit(ptr noundef %0, ptr noundef initializes((40, 48)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 31
  %i.e = and i64 %i.d, -32
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1536
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.l, ptr %i.m, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23688
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.o, ptr %i.p, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 340
  store i32 %i.r, ptr %i.s, align 4, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 401
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.u, 31
  %i.w = and i64 %i.v, -32
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 23696
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !48
  store i32 0, ptr %1, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 23656
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !54
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 23648
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 23672
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !42
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 47
  store i8 127, ptr %i.at, align 1, !tbaa !44
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  store i8 127, ptr %i.av, align 1, !tbaa !44
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  store i8 127, ptr %i.ax, align 1, !tbaa !44
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i8 -127, i64 16, i1 false)
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !45
  store i64 -9114861777597660799, ptr %i.az, align 1
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !43
  store i64 -9114861777597660799, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i32 0, ptr %i.bb, align 8, !tbaa !47
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %VP8IteratorSetRow.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 0, ptr %i.bd, align 8
  br label %VP8IteratorSetRow.exit.i

VP8IteratorSetRow.exit.i:                         ; preds = %bb.b, %bb.a
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55
  %i.bh = mul nsw i32 %i.bg, %i.be                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 332
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !50
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !40
  %i.bm = shl nsw i32 %i.bl, 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i, i64 23672
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !78
  %i.bq = shl nsw i64 %i.bn, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bp, i8 127, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 23664
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  %i.bt = load i32, ptr %i.bk, align 8, !tbaa !40
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bs, i8 0, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i, i64 23696
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %VP8IteratorReset.exit, label %bb.c

bb.c:                                             ; preds = %VP8IteratorSetRow.exit.i
  %i.by = load i32, ptr %i.bk, align 8, !tbaa !40
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.ca, i1 false)
  br label %VP8IteratorReset.exit

VP8IteratorReset.exit:                            ; preds = %VP8IteratorSetRow.exit.i, %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, i8 0, i64 96, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i32 0, ptr %i.cc, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @VP8IteratorProgress(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sub nsw i32 %i.h, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = mul nsw i32 %i.n, %1
  %i.r = sdiv i32 %i.q, %i.h
  %i.s = add nsw i32 %i.r, %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.k, %bb.d ], [ %i.s, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.v = tail call i32 @WebPReportProgress(ptr noundef nonnull %i.d, i32 noundef %i.t, ptr noundef nonnull %i.u) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ %i.v, %bb.f ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorImport(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load i32, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.l = mul i32 %i.k, %i.e
  %i.m = add i32 %i.l, %i.c
  %i.n = shl i32 %i.m, 4
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.o ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 9 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62
  %i.u = mul i32 %i.t, %i.e
  %i.v = add i32 %i.u, %i.c
  %i.w = shl i32 %i.v, 3
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.x ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !64
  %i.ae = shl nsw i32 %i.c, 4
  %i.af = sub nsw i32 %i.ad, %i.ae                ; 6 uses
  %i.ag = tail call noundef range(i32 -2147483648, 17) i32 @llvm.smin.i32(i32 %i.af, i32 16) ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !65
  %i.aj = shl nsw i32 %i.e, 4
  %i.ak = sub nsw i32 %i.ai, %i.aj                ; 7 uses
  %i.al = tail call noundef range(i32 -2147483648, 17) i32 @llvm.smin.i32(i32 %i.ak, i32 16) ; 13 uses
  %i.am = add nsw i32 %i.ag, 1
  %i.an = ashr i32 %i.am, 1                       ; 18 uses
  %i.ao = add nsw i32 %i.al, 1                    ; 3 uses
  %i.ap = ashr i32 %i.ao, 1                       ; 32 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 5 uses
  %i.as = icmp sgt i32 %i.ak, 0                   ; 2 uses
  br i1 %i.as, label %.lr.ph.i, label %.lr.ph36.i.preheader

.lr.ph.i:                                         ; preds = %bb.a
  %i.at = sext i32 %i.ag to i64                   ; 11 uses
  %i.au = icmp slt i32 %i.af, 16
  %i.av = sub nsw i32 16, %i.ag
  %i.aw = zext nneg i32 %i.av to i64              ; 3 uses
  %i.ax = sext i32 %i.k to i64                    ; 7 uses
  br i1 %i.au, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i32 %i.al, 3                    ; 3 uses
  %i.ay = icmp slt i32 %i.ak, 4
  br i1 %i.ay, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i32 %i.al, 28
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter313 = and i32 %i.al, 1
  %i.az = icmp eq i32 %i.ak, 1
  br i1 %i.az, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter318 = and i32 %i.al, 30
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.02432.us.i = phi ptr [ %i.p, %.lr.ph.split.us.i.preheader.new ], [ %i.bj, %.lr.ph.split.us.i ] ; 2 uses
  %.02531.us.i = phi ptr [ %i.ar, %.lr.ph.split.us.i.preheader.new ], [ %i.bi, %.lr.ph.split.us.i ] ; 4 uses
  %niter319 = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter319.next.1, %.lr.ph.split.us.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.us.i, ptr align 1 %.02432.us.i, i64 %i.at, i1 false)
  %i.ba = getelementptr i8, ptr %.02531.us.i, i64 %i.at ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 %i.bc, i64 %i.aw, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.02531.us.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.02432.us.i, i64 %i.ax ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.be, i64 %i.at, i1 false)
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.at  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bf, i8 %i.bh, i64 %i.aw, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.02531.us.i, i64 64 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.ax ; 2 uses
  %niter319.next.1 = add i32 %niter319, 2         ; 2 uses
  %niter319.ncmp.1 = icmp eq i32 %niter319.next.1, %unroll_iter318
  br i1 %niter319.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !81

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.split.us.i
  %lcmp.mod315.not = icmp eq i32 %xtraiter313, 0
  br i1 %lcmp.mod315.not, label %.preheader.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.02432.us.i.epil.init = phi ptr [ %i.p, %.lr.ph.split.us.i.preheader ], [ %i.bj, %.preheader.i.loopexit.unr-lcssa ]
  %.02531.us.i.epil.init = phi ptr [ %i.ar, %.lr.ph.split.us.i.preheader ], [ %i.bi, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod317 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod317)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.us.i.epil.init, ptr align 1 %.02432.us.i.epil.init, i64 %i.at, i1 false)
  %i.bk = getelementptr i8, ptr %.02531.us.i.epil.init, i64 %i.at ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 %i.bm, i64 %i.aw, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.02531.us.i.epil.init, i64 32
  br label %.preheader.i

.preheader.i.loopexit309.unr-lcssa:               ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.preheader.i.loopexit309.unr-lcssa, %.lr.ph.split.i.preheader
  %.02432.i.epil.init = phi ptr [ %i.p, %.lr.ph.split.i.preheader ], [ %i.ce, %.preheader.i.loopexit309.unr-lcssa ]
  %.02531.i.epil.init = phi ptr [ %i.ar, %.lr.ph.split.i.preheader ], [ %i.cd, %.preheader.i.loopexit309.unr-lcssa ]
  %lcmp.mod312 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod312)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %.02432.i.epil = phi ptr [ %i.bp, %.lr.ph.split.i.epil ], [ %.02432.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.02531.i.epil = phi ptr [ %i.bo, %.lr.ph.split.i.epil ], [ %.02531.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.i.epil, ptr align 1 %.02432.i.epil, i64 %i.at, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.02531.i.epil, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.02432.i.epil, i64 %i.ax
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.split.i.epil, !llvm.loop !82

.preheader.i:                                     ; preds = %.preheader.i.loopexit309.unr-lcssa, %.lr.ph.split.i.epil, %.lr.ph.split.us.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa
  %.025.lcssa.i = phi ptr [ %i.bn, %.lr.ph.split.us.i.epil.preheader ], [ %i.bi, %.preheader.i.loopexit.unr-lcssa ], [ %i.cd, %.preheader.i.loopexit309.unr-lcssa ], [ %i.bo, %.lr.ph.split.i.epil ]
  %i.bq = icmp samesign ult i32 %i.ak, 16
  br i1 %i.bq, label %.lr.ph36.i.preheader, label %ImportBlock.exit

.lr.ph36.i.preheader:                             ; preds = %bb.a, %.preheader.i
  %.12634.i.ph = phi ptr [ %.025.lcssa.i, %.preheader.i ], [ %i.ar, %bb.a ] ; 2 uses
  %i.br = sub i32 0, %i.al
  %xtraiter320 = and i32 %i.br, 3                 ; 2 uses
  %lcmp.mod321.not = icmp eq i32 %xtraiter320, 0
  br i1 %lcmp.mod321.not, label %.lr.ph36.i.prol.loopexit, label %.lr.ph36.i.prol

.lr.ph36.i.prol:                                  ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i.prol
  %.135.i.prol = phi i32 [ %i.bu, %.lr.ph36.i.prol ], [ %i.al, %.lr.ph36.i.preheader ]
  %.12634.i.prol = phi ptr [ %i.bt, %.lr.ph36.i.prol ], [ %.12634.i.ph, %.lr.ph36.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph36.i.prol ], [ 0, %.lr.ph36.i.preheader ]
  %i.bs = getelementptr inbounds i8, ptr %.12634.i.prol, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.12634.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %i.bs, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.12634.i.prol, i64 32 ; 2 uses
  %i.bu = add nsw i32 %.135.i.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter320
  br i1 %prol.iter.cmp.not, label %.lr.ph36.i.prol.loopexit, label %.lr.ph36.i.prol, !llvm.loop !83

.lr.ph36.i.prol.loopexit:                         ; preds = %.lr.ph36.i.prol, %.lr.ph36.i.preheader
  %.135.i.unr = phi i32 [ %i.al, %.lr.ph36.i.preheader ], [ %i.bu, %.lr.ph36.i.prol ]
  %.12634.i.unr = phi ptr [ %.12634.i.ph, %.lr.ph36.i.preheader ], [ %i.bt, %.lr.ph36.i.prol ]
  %i.bv = add i32 %i.al, -13
  %i.bw = icmp ult i32 %i.bv, 3
  br i1 %i.bw, label %ImportBlock.exit, label %.lr.ph36.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.02432.i = phi ptr [ %i.p, %.lr.ph.split.i.preheader.new ], [ %i.ce, %.lr.ph.split.i ] ; 2 uses
  %.02531.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.new ], [ %i.cd, %.lr.ph.split.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.i, ptr align 1 %.02432.i, i64 %i.at, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.02531.i, i64 32
  %i.by = getelementptr inbounds i8, ptr %.02432.i, i64 %i.ax ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr align 1 %i.by, i64 %i.at, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.02531.i, i64 64
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.ax ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %i.ca, i64 %i.at, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.02531.i, i64 96
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 %i.ax ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr align 1 %i.cc, i64 %i.at, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.02531.i, i64 128 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.ax ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit309.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !81

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.prol.loopexit, %.lr.ph36.i
  %.135.i = phi i32 [ %i.cm, %.lr.ph36.i ], [ %.135.i.unr, %.lr.ph36.i.prol.loopexit ]
  %.12634.i = phi ptr [ %i.cl, %.lr.ph36.i ], [ %.12634.i.unr, %.lr.ph36.i.prol.loopexit ] ; 9 uses
  %i.cf = getelementptr inbounds i8, ptr %.12634.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.12634.i, ptr noundef nonnull align 1 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.12634.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cg, ptr noundef nonnull align 1 dereferenceable(16) %.12634.i, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.12634.i, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %.12634.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(16) %i.ci, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.12634.i, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %.12634.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cj, ptr noundef nonnull align 1 dereferenceable(16) %i.ck, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.12634.i, i64 128
  %i.cm = add nsw i32 %.135.i, 4                  ; 2 uses
  %exitcond40.not.i.3 = icmp eq i32 %i.cm, 16
  br i1 %exitcond40.not.i.3, label %ImportBlock.exit, label %.lr.ph36.i, !llvm.loop !84

ImportBlock.exit:                                 ; preds = %.lr.ph36.i.prol.loopexit, %.lr.ph36.i, %.preheader.i
  %i.cn = load ptr, ptr %i.aq, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 5 uses
  %i.cp = icmp sgt i32 %i.ap, 0                   ; 3 uses
  br i1 %i.cp, label %.lr.ph.i88, label %.lr.ph36.i84.preheader

.lr.ph.i88:                                       ; preds = %ImportBlock.exit
  %i.cq = load i32, ptr %i.s, align 4, !tbaa !62
  %i.cr = sext i32 %i.an to i64                   ; 12 uses
  %i.cs = icmp slt i32 %i.an, 8
  %i.ct = sub nsw i32 8, %i.an
  %i.cu = zext nneg i32 %i.ct to i64              ; 4 uses
  %i.cv = sext i32 %i.cq to i64                   ; 7 uses
  br i1 %i.cs, label %.lr.ph.split.us.i94.preheader, label %.lr.ph.split.i89.preheader

end_hunk_0
begin_hunk_1_@VP8IteratorImport:bb.a
  br i1 %i.ke, label %.epil.preheader362, label %.lr.ph.i127.new

.lr.ph.i127.new:                                  ; preds = %.lr.ph.i127
  %unroll_iter367 = and i64 %wide.trip.count.i128, 2147483644
  br label %bb.l

.preheader.i133.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod365.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod365.not, label %.preheader.i133, label %.epil.preheader362

.epil.preheader362:                               ; preds = %.preheader.i133.unr-lcssa, %.lr.ph.i127
  %indvars.iv.i129.epil.init = phi i64 [ 0, %.lr.ph.i127 ], [ %indvars.iv.next.i131.3, %.preheader.i133.unr-lcssa ]
  %.01415.i130.epil.init = phi ptr [ %i.kb, %.lr.ph.i127 ], [ %i.lh, %.preheader.i133.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter363, 0
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader362
  %indvars.iv.i129.epil = phi i64 [ %indvars.iv.i129.epil.init, %.epil.preheader362 ], [ %indvars.iv.next.i131.epil, %bb.k ] ; 2 uses
  %.01415.i130.epil = phi ptr [ %.01415.i130.epil.init, %.epil.preheader362 ], [ %i.kh, %bb.k ] ; 2 uses
  %epil.iter364 = phi i64 [ 0, %.epil.preheader362 ], [ %epil.iter364.next, %bb.k ]
  %i.kf = load i8, ptr %.01415.i130.epil, align 1, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv.i129.epil
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !44
  %indvars.iv.next.i131.epil = add nuw nsw i64 %indvars.iv.i129.epil, 1
  %i.kh = getelementptr inbounds i8, ptr %.01415.i130.epil, i64 %i.kc
  %epil.iter364.next = add i64 %epil.iter364, 1   ; 2 uses
  %epil.iter364.cmp.not = icmp eq i64 %epil.iter364.next, %xtraiter363
  br i1 %epil.iter364.cmp.not, label %.preheader.i133, label %bb.k, !llvm.loop !91

.preheader.i133:                                  ; preds = %bb.k, %.preheader.i133.unr-lcssa
  %i.ki = icmp samesign ult i32 %i.ap, 8
  br i1 %i.ki, label %.lr.ph18.i121..lr.ph.i141_crit_edge, label %.lr.ph.i141

.lr.ph18.i121..lr.ph.i141_crit_edge:              ; preds = %.preheader.i133
  %i.kj = zext nneg i32 %i.ap to i64
  %i.kk = getelementptr i8, ptr %i.jz, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 -1
  %i.km = zext nneg i32 %i.ap to i64              ; 2 uses
  %.pre.i123236 = load i8, ptr %i.kl, align 1, !tbaa !44
  %scevgep214237 = getelementptr i8, ptr %i.jz, i64 %i.km
  %i.kn = sub nuw nsw i64 8, %i.km
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep214237, i8 %.pre.i123236, i64 %i.kn, i1 false), !tbaa !44
  %.pre226 = zext nneg i32 %i.ap to i64
  br label %.lr.ph.i141

.lr.ph18.i121..lr.ph18.i135_crit_edge:            ; preds = %ImportLine.exit
  %i.ko = sext i32 %i.ap to i64                   ; 2 uses
  %i.kp = getelementptr i8, ptr %i.jz, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 -1
  %.pre.i123 = load i8, ptr %i.kq, align 1, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.jz, i8 %.pre.i123, i64 8, i1 false), !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !43
  br label %.lr.ph18.i135

bb.l:                                             ; preds = %bb.l, %.lr.ph.i127.new
  %indvars.iv.i129 = phi i64 [ 0, %.lr.ph.i127.new ], [ %indvars.iv.next.i131.3, %bb.l ] ; 5 uses
  %.01415.i130 = phi ptr [ %i.kb, %.lr.ph.i127.new ], [ %i.lh, %bb.l ] ; 2 uses
  %niter368 = phi i64 [ 0, %.lr.ph.i127.new ], [ %niter368.next.3, %bb.l ]
  %i.kt = load i8, ptr %.01415.i130, align 1, !tbaa !44
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv.i129
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !44
  %i.kv = getelementptr inbounds i8, ptr %.01415.i130, i64 %i.kc ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !44
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv.i129
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store i8 %i.kw, ptr %i.ky, align 1, !tbaa !44
  %i.kz = getelementptr inbounds i8, ptr %i.kv, i64 %i.kc ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !44
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv.i129
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  store i8 %i.la, ptr %i.lc, align 1, !tbaa !44
  %i.ld = getelementptr inbounds i8, ptr %i.kz, i64 %i.kc ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !44
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv.i129
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  store i8 %i.le, ptr %i.lg, align 1, !tbaa !44
  %indvars.iv.next.i131.3 = add nuw nsw i64 %indvars.iv.i129, 4 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 %i.kc ; 2 uses
  %niter368.next.3 = add i64 %niter368, 4         ; 2 uses
  %niter368.ncmp.3 = icmp eq i64 %niter368.next.3, %unroll_iter367
  br i1 %niter368.ncmp.3, label %.preheader.i133.unr-lcssa, label %bb.l, !llvm.loop !90

.lr.ph.i141:                                      ; preds = %.preheader.i133, %.lr.ph18.i121..lr.ph.i141_crit_edge
  %wide.trip.count.i142.pre-phi = phi i64 [ %.pre226, %.lr.ph18.i121..lr.ph.i141_crit_edge ], [ 8, %.preheader.i133 ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.li = load ptr, ptr %.in, align 8, !tbaa !43  ; 6 uses
  %i.lj = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 2 uses
  %i.lk = load i32, ptr %i.s, align 4, !tbaa !62
  %i.ll = sext i32 %i.lk to i64                   ; 5 uses
  %i.lm = add nsw i64 %wide.trip.count.i142.pre-phi, -1
  %xtraiter370 = and i64 %wide.trip.count.i142.pre-phi, 3 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, 3
  br i1 %i.ln, label %.epil.preheader369, label %.lr.ph.i141.new

.lr.ph.i141.new:                                  ; preds = %.lr.ph.i141
  %unroll_iter374 = and i64 %wide.trip.count.i142.pre-phi, 2147483644
  br label %bb.n

.preheader.i147.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod372.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod372.not, label %.preheader.i147, label %.epil.preheader369

.epil.preheader369:                               ; preds = %.preheader.i147.unr-lcssa, %.lr.ph.i141
  %indvars.iv.i143.epil.init = phi i64 [ 0, %.lr.ph.i141 ], [ %indvars.iv.next.i145.3, %.preheader.i147.unr-lcssa ]
  %.01415.i144.epil.init = phi ptr [ %i.lj, %.lr.ph.i141 ], [ %i.ml, %.preheader.i147.unr-lcssa ]
  %lcmp.mod373 = icmp ne i64 %xtraiter370, 0
  tail call void @llvm.assume(i1 %lcmp.mod373)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader369
  %indvars.iv.i143.epil = phi i64 [ %indvars.iv.i143.epil.init, %.epil.preheader369 ], [ %indvars.iv.next.i145.epil, %bb.m ] ; 2 uses
  %.01415.i144.epil = phi ptr [ %.01415.i144.epil.init, %.epil.preheader369 ], [ %i.lq, %bb.m ] ; 2 uses
  %epil.iter371 = phi i64 [ 0, %.epil.preheader369 ], [ %epil.iter371.next, %bb.m ]
  %i.lo = load i8, ptr %.01415.i144.epil, align 1, !tbaa !44
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %indvars.iv.i143.epil
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !44
  %indvars.iv.next.i145.epil = add nuw nsw i64 %indvars.iv.i143.epil, 1
  %i.lq = getelementptr inbounds i8, ptr %.01415.i144.epil, i64 %i.ll
  %epil.iter371.next = add i64 %epil.iter371, 1   ; 2 uses
  %epil.iter371.cmp.not = icmp eq i64 %epil.iter371.next, %xtraiter370
  br i1 %epil.iter371.cmp.not, label %.preheader.i147, label %bb.m, !llvm.loop !92

.preheader.i147:                                  ; preds = %bb.m, %.preheader.i147.unr-lcssa
  %i.lr = icmp samesign ult i32 %i.ap, 8
  br i1 %i.lr, label %.preheader.i147..lr.ph18.i135_crit_edge, label %InitLeft.exit

.preheader.i147..lr.ph18.i135_crit_edge:          ; preds = %.preheader.i147
  %.pre227 = zext nneg i32 %i.ap to i64
  %i.ls = zext nneg i32 %i.ap to i64
  br label %.lr.ph18.i135

.lr.ph18.i135:                                    ; preds = %.preheader.i147..lr.ph18.i135_crit_edge, %.lr.ph18.i121..lr.ph18.i135_crit_edge
  %.pre-phi228 = phi i64 [ %.pre227, %.preheader.i147..lr.ph18.i135_crit_edge ], [ %i.ko, %.lr.ph18.i121..lr.ph18.i135_crit_edge ]
  %i.lt = phi ptr [ %i.li, %.preheader.i147..lr.ph18.i135_crit_edge ], [ %i.ks, %.lr.ph18.i121..lr.ph18.i135_crit_edge ] ; 2 uses
  %.0.lcssa27.i136 = phi i64 [ %i.ls, %.preheader.i147..lr.ph18.i135_crit_edge ], [ 0, %.lr.ph18.i121..lr.ph18.i135_crit_edge ] ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 %.pre-phi228
  %i.lv = getelementptr i8, ptr %i.lu, i64 -1
  %.pre.i137 = load i8, ptr %i.lv, align 1, !tbaa !44
  %scevgep215 = getelementptr nuw i8, ptr %i.lt, i64 %.0.lcssa27.i136
  %i.lw = sub nuw nsw i64 8, %.0.lcssa27.i136
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep215, i8 %.pre.i137, i64 %i.lw, i1 false), !tbaa !44
  br label %InitLeft.exit

bb.n:                                             ; preds = %bb.n, %.lr.ph.i141.new
  %indvars.iv.i143 = phi i64 [ 0, %.lr.ph.i141.new ], [ %indvars.iv.next.i145.3, %bb.n ] ; 5 uses
  %.01415.i144 = phi ptr [ %i.lj, %.lr.ph.i141.new ], [ %i.ml, %bb.n ] ; 2 uses
  %niter375 = phi i64 [ 0, %.lr.ph.i141.new ], [ %niter375.next.3, %bb.n ]
  %i.lx = load i8, ptr %.01415.i144, align 1, !tbaa !44
  %i.ly = getelementptr inbounds nuw i8, ptr %i.li, i64 %indvars.iv.i143
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !44
  %i.lz = getelementptr inbounds i8, ptr %.01415.i144, i64 %i.ll ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !44
  %i.mb = getelementptr inbounds nuw i8, ptr %i.li, i64 %indvars.iv.i143
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store i8 %i.ma, ptr %i.mc, align 1, !tbaa !44
  %i.md = getelementptr inbounds i8, ptr %i.lz, i64 %i.ll ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !44
  %i.mf = getelementptr inbounds nuw i8, ptr %i.li, i64 %indvars.iv.i143
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.me, ptr %i.mg, align 1, !tbaa !44
  %i.mh = getelementptr inbounds i8, ptr %i.md, i64 %i.ll ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !44
  %i.mj = getelementptr inbounds nuw i8, ptr %i.li, i64 %indvars.iv.i143
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 3
  store i8 %i.mi, ptr %i.mk, align 1, !tbaa !44
  %indvars.iv.next.i145.3 = add nuw nsw i64 %indvars.iv.i143, 4 ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.mh, i64 %i.ll ; 2 uses
  %niter375.next.3 = add i64 %niter375, 4         ; 2 uses
  %niter375.ncmp.3 = icmp eq i64 %niter375.next.3, %unroll_iter374
  br i1 %niter375.ncmp.3, label %.preheader.i147.unr-lcssa, label %bb.n, !llvm.loop !90

InitLeft.exit:                                    ; preds = %.lr.ph18.i135, %.preheader.i147, %bb.d, %bb.c
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.mm, align 8, !tbaa !68
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !69
  %i.mp = icmp eq i32 %i.e, 0
  br i1 %i.mp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %InitLeft.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, i8 127, i64 32, i1 false)
  br label %ImportLine.exit190

bb.p:                                             ; preds = %InitLeft.exit
  %i.mq = icmp sgt i32 %i.af, 0
  br i1 %i.mq, label %iter.check, label %.lr.ph18.i149

iter.check:                                       ; preds = %bb.p
  %i.mr = load i32, ptr %i.j, align 8, !tbaa !60
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = sub nsw i64 0, %i.ms
  %i.mu = getelementptr inbounds i8, ptr %i.p, i64 %i.mt ; 6 uses
  %wide.trip.count.i156 = zext nneg i32 %i.ag to i64 ; 8 uses
  %min.iters.check = icmp slt i32 %i.af, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = ptrtoaddr ptr %1 to i64
  %3 = ptrtoaddr ptr %i.i to i64
  %i.mv = add i64 %2, %i.ms
  %i.mw = add i64 %3, %i.o
  %i.mx = sub i64 %i.mw, %i.mv
  %diff.check = icmp ugt i64 %i.mx, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check261 = icmp slt i32 %i.af, 16
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.my = and i64 %wide.trip.count.i156, 12
  %n.vec = and i64 %wide.trip.count.i156, 16      ; 4 uses
  %i.mz = getelementptr i8, ptr %i.mu, i64 %n.vec
  %wide.load = load <16 x i8>, ptr %i.mu, align 1, !tbaa !44
  store <16 x i8> %wide.load, ptr %1, align 1, !tbaa !44
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i156
  br i1 %cmp.n, label %.preheader.i161, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %i.my, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %wide.trip.count.i156, 28   ; 4 uses
  %i.na = getelementptr i8, ptr %i.mu, i64 %n.vec262
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 3 uses
  %next.gep264 = getelementptr i8, ptr %i.mu, i64 %index263
  %wide.load265 = load <4 x i8>, ptr %next.gep264, align 1, !tbaa !44
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 %index263
  store <4 x i8> %wide.load265, ptr %i.nb, align 1, !tbaa !44
  %index.next266 = add nuw i64 %index263, 4       ; 2 uses
  %i.nc = icmp eq i64 %index.next266, %n.vec262
  br i1 %i.nc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n267 = icmp eq i64 %n.vec262, %wide.trip.count.i156
  br i1 %cmp.n267, label %.preheader.i161, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i157.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec262, %vec.epilog.middle.block ] ; 3 uses
  %.01415.i158.ph = phi ptr [ %i.mu, %iter.check ], [ %i.mu, %vector.memcheck ], [ %i.mz, %vec.epilog.iter.check ], [ %i.na, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter376 = and i64 %wide.trip.count.i156, 3 ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i157.prol = phi i64 [ %indvars.iv.next.i159.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01415.i158.prol = phi ptr [ %i.nf, %vec.epilog.scalar.ph.prol ], [ %.01415.i158.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter378 = phi i64 [ %prol.iter378.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nd = load i8, ptr %.01415.i158.prol, align 1, !tbaa !44
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157.prol
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !44
  %indvars.iv.next.i159.prol = add nuw nsw i64 %indvars.iv.i157.prol, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.01415.i158.prol, i64 1 ; 2 uses
  %prol.iter378.next = add i64 %prol.iter378, 1   ; 2 uses
  %prol.iter378.cmp.not = icmp eq i64 %prol.iter378.next, %xtraiter376
  br i1 %prol.iter378.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !94

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i157.unr = phi i64 [ %indvars.iv.i157.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i159.prol, %vec.epilog.scalar.ph.prol ]
  %.01415.i158.unr = phi ptr [ %.01415.i158.ph, %vec.epilog.scalar.ph.preheader ], [ %i.nf, %vec.epilog.scalar.ph.prol ]
  %i.ng = sub nsw i64 %indvars.iv.i157.ph, %wide.trip.count.i156
  %i.nh = icmp ugt i64 %i.ng, -4
  br i1 %i.nh, label %.preheader.i161, label %vec.epilog.scalar.ph

.preheader.i161:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.ni = icmp samesign ult i32 %i.af, 16
  br i1 %i.ni, label %.lr.ph18.i149, label %ImportLine.exit162

.lr.ph18.i149:                                    ; preds = %bb.p, %.preheader.i161
  %.0.lcssa27.i150 = phi i32 [ %i.ag, %.preheader.i161 ], [ 0, %bb.p ]
  %i.nj = sext i32 %i.ag to i64
  %i.nk = getelementptr i8, ptr %1, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 -1
  %i.nm = zext i32 %.0.lcssa27.i150 to i64        ; 2 uses
  %.pre.i151 = load i8, ptr %i.nl, align 1, !tbaa !44
  %scevgep216 = getelementptr nuw i8, ptr %1, i64 %i.nm
  %i.nn = sub nsw i64 16, %i.nm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep216, i8 %.pre.i151, i64 %i.nn, i1 false), !tbaa !44
  br label %ImportLine.exit162

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i157 = phi i64 [ %indvars.iv.next.i159.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i157.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.01415.i158 = phi ptr [ %i.oc, %vec.epilog.scalar.ph ], [ %.01415.i158.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.no = load i8, ptr %.01415.i158, align 1, !tbaa !44
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  store i8 %i.no, ptr %i.np, align 1, !tbaa !44
  %i.nq = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !44
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store i8 %i.nr, ptr %i.nt, align 1, !tbaa !44
  %i.nu = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 2
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !44
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 2
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !44
  %i.ny = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 3
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !44
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  store i8 %i.nz, ptr %i.ob, align 1, !tbaa !44
  %indvars.iv.next.i159.3 = add nuw nsw i64 %indvars.iv.i157, 4 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 4
  %exitcond.not.i160.3 = icmp eq i64 %indvars.iv.next.i159.3, %wide.trip.count.i156
  br i1 %exitcond.not.i160.3, label %.preheader.i161, label %vec.epilog.scalar.ph, !llvm.loop !95

ImportLine.exit162:                               ; preds = %.lr.ph18.i149, %.preheader.i161
  %i.od = icmp sgt i32 %i.an, 0
  br i1 %i.od, label %iter.check286, label %.lr.ph18.i163..lr.ph18.i177_crit_edge

iter.check286:                                    ; preds = %ImportLine.exit162
  %i.oe = load i32, ptr %i.s, align 4, !tbaa !62
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = sub nsw i64 0, %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.y, i64 %i.og ; 6 uses
  %wide.trip.count.i170 = zext nneg i32 %i.an to i64 ; 8 uses
  %min.iters.check272 = icmp ult i32 %i.an, 4
  br i1 %min.iters.check272, label %vec.epilog.scalar.ph287.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %iter.check286
  %4 = ptrtoaddr ptr %1 to i64
  %5 = ptrtoaddr ptr %i.r to i64
  %i.oi = add i64 %4, %i.of
  %i.oj = add i64 %5, %i.x
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = add i64 %i.ok, 15
  %diff.check271 = icmp ult i64 %i.ol, 31
  br i1 %diff.check271, label %vec.epilog.scalar.ph287.preheader, label %vector.main.loop.iter.check273

vector.main.loop.iter.check273:                   ; preds = %vector.memcheck270
  %min.iters.check274 = icmp ult i32 %i.an, 32
  br i1 %min.iters.check274, label %vec.epilog.ph290, label %vector.ph275

vector.ph275:                                     ; preds = %vector.main.loop.iter.check273
  %i.om = and i64 %wide.trip.count.i170, 28
  %n.vec276 = and i64 %wide.trip.count.i170, 2147483616 ; 5 uses
  %i.on = getelementptr i8, ptr %i.oh, i64 %n.vec276
  br label %vector.body277

vector.body277:                                   ; preds = %vector.ph275, %vector.body277
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next282, %vector.body277 ] ; 3 uses
  %next.gep279 = getelementptr i8, ptr %i.oh, i64 %index278 ; 2 uses
  %i.oo = getelementptr i8, ptr %next.gep279, i64 16
  %wide.load280 = load <16 x i8>, ptr %next.gep279, align 1, !tbaa !44
  %wide.load281 = load <16 x i8>, ptr %i.oo, align 1, !tbaa !44
  %i.op = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index278 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store <16 x i8> %wide.load280, ptr %i.op, align 1, !tbaa !44
  store <16 x i8> %wide.load281, ptr %i.oq, align 1, !tbaa !44
  %index.next282 = add nuw i64 %index278, 32      ; 2 uses
  %i.or = icmp eq i64 %index.next282, %n.vec276
  br i1 %i.or, label %middle.block283, label %vector.body277, !llvm.loop !96

middle.block283:                                  ; preds = %vector.body277
  %cmp.n284 = icmp eq i64 %n.vec276, %wide.trip.count.i170
  br i1 %cmp.n284, label %.preheader.i175, label %vec.epilog.iter.check288

vec.epilog.iter.check288:                         ; preds = %middle.block283
  %min.epilog.iters.check289 = icmp eq i64 %i.om, 0
  br i1 %min.epilog.iters.check289, label %vec.epilog.scalar.ph287.preheader, label %vec.epilog.ph290, !prof !104

vec.epilog.ph290:                                 ; preds = %vector.main.loop.iter.check273, %vec.epilog.iter.check288
  %vec.epilog.resume.val285 = phi i64 [ %n.vec276, %vec.epilog.iter.check288 ], [ 0, %vector.main.loop.iter.check273 ]
  %n.vec291 = and i64 %wide.trip.count.i170, 2147483644 ; 4 uses
  %i.os = getelementptr i8, ptr %i.oh, i64 %n.vec291
  br label %vec.epilog.vector.body292

vec.epilog.vector.body292:                        ; preds = %vec.epilog.vector.body292, %vec.epilog.ph290
  %index293 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph290 ], [ %index.next296, %vec.epilog.vector.body292 ] ; 3 uses
  %next.gep294 = getelementptr i8, ptr %i.oh, i64 %index293
  %wide.load295 = load <4 x i8>, ptr %next.gep294, align 1, !tbaa !44
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index293
  store <4 x i8> %wide.load295, ptr %i.ot, align 1, !tbaa !44
  %index.next296 = add nuw i64 %index293, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.ou, label %vec.epilog.middle.block297, label %vec.epilog.vector.body292, !llvm.loop !97

vec.epilog.middle.block297:                       ; preds = %vec.epilog.vector.body292
  %cmp.n298 = icmp eq i64 %n.vec291, %wide.trip.count.i170
  br i1 %cmp.n298, label %.preheader.i175, label %vec.epilog.scalar.ph287.preheader

vec.epilog.scalar.ph287.preheader:                ; preds = %iter.check286, %vector.memcheck270, %vec.epilog.iter.check288, %vec.epilog.middle.block297
  %indvars.iv.i171.ph = phi i64 [ 0, %iter.check286 ], [ 0, %vector.memcheck270 ], [ %n.vec276, %vec.epilog.iter.check288 ], [ %n.vec291, %vec.epilog.middle.block297 ] ; 3 uses
  %.01415.i172.ph = phi ptr [ %i.oh, %iter.check286 ], [ %i.oh, %vector.memcheck270 ], [ %i.on, %vec.epilog.iter.check288 ], [ %i.os, %vec.epilog.middle.block297 ] ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count.i170, 3 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %vec.epilog.scalar.ph287.prol.loopexit, label %vec.epilog.scalar.ph287.prol

vec.epilog.scalar.ph287.prol:                     ; preds = %vec.epilog.scalar.ph287.preheader, %vec.epilog.scalar.ph287.prol
  %indvars.iv.i171.prol = phi i64 [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph287.prol ], [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph287.preheader ] ; 2 uses
  %.01415.i172.prol = phi ptr [ %i.ox, %vec.epilog.scalar.ph287.prol ], [ %.01415.i172.ph, %vec.epilog.scalar.ph287.preheader ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %vec.epilog.scalar.ph287.prol ], [ 0, %vec.epilog.scalar.ph287.preheader ]
  %i.ov = load i8, ptr %.01415.i172.prol, align 1, !tbaa !44
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.i171.prol
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !44
  %indvars.iv.next.i173.prol = add nuw nsw i64 %indvars.iv.i171.prol, 1 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.01415.i172.prol, i64 1 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %vec.epilog.scalar.ph287.prol.loopexit, label %vec.epilog.scalar.ph287.prol, !llvm.loop !98

vec.epilog.scalar.ph287.prol.loopexit:            ; preds = %vec.epilog.scalar.ph287.prol, %vec.epilog.scalar.ph287.preheader
  %indvars.iv.i171.unr = phi i64 [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph287.preheader ], [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph287.prol ]
  %.01415.i172.unr = phi ptr [ %.01415.i172.ph, %vec.epilog.scalar.ph287.preheader ], [ %i.ox, %vec.epilog.scalar.ph287.prol ]
  %i.oy = sub nsw i64 %indvars.iv.i171.ph, %wide.trip.count.i170
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.preheader.i175, label %vec.epilog.scalar.ph287

.preheader.i175:                                  ; preds = %vec.epilog.scalar.ph287.prol.loopexit, %vec.epilog.scalar.ph287, %vec.epilog.middle.block297, %middle.block283
  %i.pa = icmp samesign ult i32 %i.an, 8
  br i1 %i.pa, label %.lr.ph18.i163..lr.ph.i183_crit_edge, label %.lr.ph.i183

.lr.ph18.i163..lr.ph.i183_crit_edge:              ; preds = %.preheader.i175
  %i.pb = zext nneg i32 %i.an to i64
  %i.pc = getelementptr i8, ptr %i.mn, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 -1
  %i.pe = zext nneg i32 %i.an to i64              ; 2 uses
  %.pre.i165239 = load i8, ptr %i.pd, align 1, !tbaa !44
  %i.pf = getelementptr i8, ptr %1, i64 %i.pe
  %scevgep217240 = getelementptr i8, ptr %i.pf, i64 16
  %i.pg = sub nuw nsw i64 8, %i.pe
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep217240, i8 %.pre.i165239, i64 %i.pg, i1 false), !tbaa !44
  %.pre223 = zext nneg i32 %i.an to i64
  br label %.lr.ph.i183

.lr.ph18.i163..lr.ph18.i177_crit_edge:            ; preds = %ImportLine.exit162
  %i.ph = sext i32 %i.an to i64                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.mn, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -1
  %.pre.i165 = load i8, ptr %i.pj, align 1, !tbaa !44
  %scevgep217 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %scevgep217, i8 %.pre.i165, i64 8, i1 false), !tbaa !44
  br label %.lr.ph18.i177

vec.epilog.scalar.ph287:                          ; preds = %vec.epilog.scalar.ph287.prol.loopexit, %vec.epilog.scalar.ph287
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i173.3, %vec.epilog.scalar.ph287 ], [ %indvars.iv.i171.unr, %vec.epilog.scalar.ph287.prol.loopexit ] ; 5 uses
  %.01415.i172 = phi ptr [ %i.py, %vec.epilog.scalar.ph287 ], [ %.01415.i172.unr, %vec.epilog.scalar.ph287.prol.loopexit ] ; 5 uses
  %i.pk = load i8, ptr %.01415.i172, align 1, !tbaa !44
  %i.pl = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.i171
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !44
  %i.pm = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 1
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.i171
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  store i8 %i.pn, ptr %i.pp, align 1, !tbaa !44
  %i.pq = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 2
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !44
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.i171
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !44
  %i.pu = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 3
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !44
  %i.pw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.i171
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  store i8 %i.pv, ptr %i.px, align 1, !tbaa !44
  %indvars.iv.next.i173.3 = add nuw nsw i64 %indvars.iv.i171, 4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 4
  %exitcond.not.i174.3 = icmp eq i64 %indvars.iv.next.i173.3, %wide.trip.count.i170
  br i1 %exitcond.not.i174.3, label %.preheader.i175, label %vec.epilog.scalar.ph287, !llvm.loop !99

.lr.ph.i183:                                      ; preds = %.preheader.i175, %.lr.ph18.i163..lr.ph.i183_crit_edge
  %wide.trip.count.i184.pre-phi = phi i64 [ %.pre223, %.lr.ph18.i163..lr.ph.i183_crit_edge ], [ 8, %.preheader.i175 ] ; 3 uses
  %.pn197.in = load i32, ptr %i.s, align 4, !tbaa !62
  %.pn197 = sext i32 %.pn197.in to i64
  %.pn = sub nsw i64 0, %.pn197
  %i.pz = getelementptr inbounds i8, ptr %i.ab, i64 %.pn ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.qb = add nsw i64 %wide.trip.count.i184.pre-phi, -1
  %xtraiter383 = and i64 %wide.trip.count.i184.pre-phi, 3 ; 3 uses
  %i.qc = icmp ult i64 %i.qb, 3
  br i1 %i.qc, label %.epil.preheader382, label %.lr.ph.i183.new

.lr.ph.i183.new:                                  ; preds = %.lr.ph.i183
  %unroll_iter387 = and i64 %wide.trip.count.i184.pre-phi, 2147483644
  br label %bb.r

.preheader.i189.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %.preheader.i189, label %.epil.preheader382

.epil.preheader382:                               ; preds = %.preheader.i189.unr-lcssa, %.lr.ph.i183
  %indvars.iv.i185.epil.init = phi i64 [ 0, %.lr.ph.i183 ], [ %indvars.iv.next.i187.3, %.preheader.i189.unr-lcssa ]
  %.01415.i186.epil.init = phi ptr [ %i.pz, %.lr.ph.i183 ], [ %i.ra, %.preheader.i189.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter383, 0
  tail call void @llvm.assume(i1 %lcmp.mod386)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader382
  %indvars.iv.i185.epil = phi i64 [ %indvars.iv.i185.epil.init, %.epil.preheader382 ], [ %indvars.iv.next.i187.epil, %bb.q ] ; 2 uses
  %.01415.i186.epil = phi ptr [ %.01415.i186.epil.init, %.epil.preheader382 ], [ %i.qf, %bb.q ] ; 2 uses
  %epil.iter384 = phi i64 [ 0, %.epil.preheader382 ], [ %epil.iter384.next, %bb.q ]
  %i.qd = load i8, ptr %.01415.i186.epil, align 1, !tbaa !44
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185.epil
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !44
  %indvars.iv.next.i187.epil = add nuw nsw i64 %indvars.iv.i185.epil, 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.01415.i186.epil, i64 1
  %epil.iter384.next = add i64 %epil.iter384, 1   ; 2 uses
  %epil.iter384.cmp.not = icmp eq i64 %epil.iter384.next, %xtraiter383
  br i1 %epil.iter384.cmp.not, label %.preheader.i189, label %bb.q, !llvm.loop !100

.preheader.i189:                                  ; preds = %bb.q, %.preheader.i189.unr-lcssa
  %i.qg = icmp samesign ult i32 %i.an, 8
  br i1 %i.qg, label %.preheader.i189..lr.ph18.i177_crit_edge, label %ImportLine.exit190

.preheader.i189..lr.ph18.i177_crit_edge:          ; preds = %.preheader.i189
  %.pre224 = zext nneg i32 %i.an to i64
  %i.qh = zext nneg i32 %i.an to i64
  br label %.lr.ph18.i177

.lr.ph18.i177:                                    ; preds = %.preheader.i189..lr.ph18.i177_crit_edge, %.lr.ph18.i163..lr.ph18.i177_crit_edge
  %.pre-phi225 = phi i64 [ %.pre224, %.preheader.i189..lr.ph18.i177_crit_edge ], [ %i.ph, %.lr.ph18.i163..lr.ph18.i177_crit_edge ]
  %.0.lcssa27.i178 = phi i64 [ %i.qh, %.preheader.i189..lr.ph18.i177_crit_edge ], [ 0, %.lr.ph18.i163..lr.ph18.i177_crit_edge ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 %.pre-phi225
  %i.qk = getelementptr i8, ptr %i.qj, i64 -1
  %.pre.i179 = load i8, ptr %i.qk, align 1, !tbaa !44
  %scevgep218 = getelementptr nuw i8, ptr %i.qi, i64 %.0.lcssa27.i178
  %i.ql = sub nuw nsw i64 8, %.0.lcssa27.i178
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep218, i8 %.pre.i179, i64 %i.ql, i1 false), !tbaa !44
  br label %ImportLine.exit190

bb.r:                                             ; preds = %bb.r, %.lr.ph.i183.new
  %indvars.iv.i185 = phi i64 [ 0, %.lr.ph.i183.new ], [ %indvars.iv.next.i187.3, %bb.r ] ; 5 uses
  %.01415.i186 = phi ptr [ %i.pz, %.lr.ph.i183.new ], [ %i.ra, %bb.r ] ; 5 uses
end_hunk_1
