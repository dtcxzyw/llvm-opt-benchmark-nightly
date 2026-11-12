Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@wc_GetSubjectPubKeyInfoDerFromCert:bb.a
  %.0.i.i.i = phi i32 [ %i.af, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.ag = add nuw i32 %i.z, %i.s                  ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, %1
  br i1 %i.ah, label %wc_GetPubX509.exit, label %.preheader.i.i.i

.thread69.i.i.i:                                  ; preds = %bb.f
  %i.ai = add nuw i32 %i.k, 3                     ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, %1
  br i1 %i.aj, label %wc_GetPubX509.exit, label %.lr.ph.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i
  %.not58.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not58.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i, %.thread69.i.i.i
  %.07174.i.i.i = phi i32 [ %.0.i.i.i, %.preheader.i.i.i ], [ 128, %.thread69.i.i.i ] ; 2 uses
  %i.ak = phi i32 [ %i.ag, %.preheader.i.i.i ], [ %i.ai, %.thread69.i.i.i ] ; 2 uses
  %i.al = add nsw i32 %i.z, -1
  %xtraiter = and i32 %i.x, 3                     ; 3 uses
  %i.am = icmp ult i32 %i.al, 3
  br i1 %i.am, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i32 %i.x, 124
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.03760.i.i.i = phi i32 [ %i.s, %.lr.ph.preheader.i.i.i.new ], [ %i.an, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.an = add i32 %.03760.i.i.i, 4                ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %i.ao = zext i32 %.03760.i.i.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 16
  %i.at = add i32 %.03760.i.i.i, 1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.as, %i.ay
  %i.ba = add i32 %.03760.i.i.i, 2
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.az, %i.be
  %i.bg = shl nuw i32 %i.bf, 8
  %i.bh = add i32 %.03760.i.i.i, 3
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bg, %i.bl            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.03760.i.i.i.epil.init = phi i32 [ %i.s, %.lr.ph.preheader.i.i.i ], [ %i.an, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.03859.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bm, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.03760.i.i.i.epil = phi i32 [ %i.bn, %.lr.ph.i.i.i.epil ], [ %.03760.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.03859.i.i.i.epil = phi i32 [ %i.bt, %.lr.ph.i.i.i.epil ], [ %.03859.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bn = add i32 %.03760.i.i.i.epil, 1
  %i.bo = zext i32 %.03760.i.i.i.epil to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.br = shl i32 %.03859.i.i.i.epil, 8
  %i.bs = zext i8 %i.bq to i32
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !272

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %.preheader.i.i.i
  %.07175.i.i.i = phi i32 [ %.0.i.i.i, %.preheader.i.i.i ], [ %.07174.i.i.i, %.lr.ph.i.i.i.epil ], [ %.07174.i.i.i, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.038.lcssa.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.bm, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.i.i.epil ] ; 3 uses
  %.037.lcssa.i.i.i = phi i32 [ %i.s, %.preheader.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.epil ], [ %i.ak, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.not48.i.i.i = icmp sgt i32 %.038.lcssa.i.i.i, -1
  %i.bu = icmp uge i32 %.038.lcssa.i.i.i, %.07175.i.i.i
  %or.cond57.i.i.i = select i1 %.not48.i.i.i, i1 %i.bu, i1 false
  br i1 %or.cond57.i.i.i, label %bb.j, label %wc_GetPubX509.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i, %bb.d
  %.240.i.i.i = phi i32 [ %.038.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.d ] ; 4 uses
  %.2.i.i.i = phi i32 [ %.037.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.bv = add i32 %.2.i.i.i, %.240.i.i.i
  %i.bw = icmp ugt i32 %i.bv, %1
  br i1 %i.bw, label %wc_GetPubX509.exit, label %GetSequence.exit

GetSequence.exit:                                 ; preds = %bb.j
  %i.bx = sub i32 %.2.i.i.i, %i.k
  %i.by = add i32 %i.bx, %.240.i.i.i              ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %wc_GetPubX509.exit, label %bb.k

bb.k:                                             ; preds = %GetSequence.exit
  %i.bz = load i32, ptr %3, align 4, !tbaa !26
  %i.ca = icmp ult i32 %i.bz, %i.by
  br i1 %i.ca, label %wc_GetPubX509.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = zext i32 %i.by to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %i.p, i64 %i.cb, i1 false)
  br label %wc_GetPubX509.exit

wc_GetPubX509.exit:                               ; preds = %bb.j, %._crit_edge.i.i.i, %bb.i, %.thread69.i.i.i, %GetASNTag.exit.i.i, %.thread.i.i.i, %bb.c, %bb.g, %bb.b, %bb.k, %bb.l, %GetSequence.exit
  %.033 = phi i32 [ %i.by, %GetSequence.exit ], [ %i.by, %bb.k ], [ %i.by, %bb.l ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %.thread.i.i.i ], [ 0, %GetASNTag.exit.i.i ], [ 0, %.thread69.i.i.i ], [ 0, %bb.i ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.j ]
  %.0 = phi i32 [ %.240.i.i.i, %GetSequence.exit ], [ -132, %bb.k ], [ %.240.i.i.i, %bb.l ], [ %i.k, %bb.b ], [ -140, %bb.g ], [ -140, %bb.c ], [ -140, %.thread.i.i.i ], [ -140, %GetASNTag.exit.i.i ], [ -140, %.thread69.i.i.i ], [ -140, %bb.i ], [ -140, %._crit_edge.i.i.i ], [ -140, %bb.j ]
  %spec.store.select = call i32 @llvm.smin.i32(i32 %.0, i32 0)
  store i32 %.033, ptr %3, align 4, !tbaa !26
  call void @FreeDecodedCert(ptr noundef nonnull %4)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %wc_GetPubX509.exit
  %.022 = phi i32 [ %spec.store.select, %wc_GetPubX509.exit ], [ -173, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @findSignerByName(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  %.not8 = icmp eq ptr %0, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ]   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.09, i64 56 ; 2 uses
  %i.b = load i128, ptr %i.a, align 1
  %i.c = load i128, ptr %1, align 1
  %i.d = xor i128 %i.b, %i.c
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.e, align 1
  %i.h = load i32, ptr %i.f, align 1
  %i.i = zext i32 %i.g to i128
  %i.j = zext i32 %i.h to i128
  %i.k = xor i128 %i.i, %i.j
  %i.l = or i128 %i.d, %i.k
  %i.m = icmp ne i128 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.09, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.09, %.lr.ph ]
  ret ptr %.0.lcssa
}

declare ptr @GetCA(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetCAByName(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @FillSigner(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50
  store i32 %i.k, ptr %0, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 1
  %.not52 = icmp eq i32 %i.n, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.p = load i32, ptr %i.o, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.p, ptr %i.q, align 8, !tbaa !274
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !124
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 854
  %i.v = load i16, ptr %i.u, align 2, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.v, ptr %i.w, align 4, !tbaa !117
  %i.x = load i32, ptr %i.l, align 8
  %i.y = lshr i32 %i.x, 17
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = and i8 %i.ac, -2
  %i.ae = or disjoint i8 %i.aa, %i.ad             ; 2 uses
  store i8 %i.ae, ptr %i.ab, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !125
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !tbaa !125
  %4 = getelementptr i8, ptr %1, i64 1035
  %5 = load i8, ptr %4, align 1
  %6 = shl i8 %5, 1
  %i.ai = and i8 %6, 2
  %i.aj = and i8 %i.ae, -3
  %i.ak = or disjoint i8 %i.ai, %i.aj             ; 2 uses
  store i8 %i.ak, ptr %i.ab, align 2
  %i.al = load i32, ptr %i.l, align 8
  %sh.diff53 = lshr i32 %i.al, 23
  %tr.sh.diff54 = trunc i32 %sh.diff53 to i8
  %i.am = and i8 %tr.sh.diff54, 4
  %i.an = and i8 %i.ak, -5
  %i.ao = or disjoint i8 %i.am, %i.an
  store i8 %i.ao, ptr %i.ab, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 804
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 4 dereferenceable(20) %i.aq, i64 20, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, ptr noundef nonnull align 8 dereferenceable(20) %i.as, i64 20, i1 false)
  %i.at = load i32, ptr %i.l, align 8
  %i.au = and i32 %i.at, 128
  %.not55 = icmp eq i32 %i.au, 0
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 858
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ax = phi i16 [ %i.aw, %bb.g ], [ -1, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.ax, ptr %i.ay, align 8, !tbaa !275
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 860
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !276
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ba, ptr %i.bb, align 2, !tbaa !277
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.bc, align 8, !tbaa !123
  store ptr null, ptr %1, align 8, !tbaa !49
  store i32 0, ptr %i.f, align 4, !tbaa !74
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr null, ptr %i.bd, align 8, !tbaa !73
  %i.be = load i32, ptr %i.l, align 8
  %i.bf = and i32 %i.be, -2
  store i32 %i.bf, ptr %i.l, align 8
  %i.bg = trunc i32 %2 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !126
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @MakeSigner(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 112) #24 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i8 0, i64 112, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @FreeSigner(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.d) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 2 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %FreeNameSubtrees.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.012.i = phi ptr [ %i.g, %bb.g ], [ %i.f, %bb.e ] ; 3 uses
  %i.g = load ptr, ptr %.012.i, align 8, !tbaa !71 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.i) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  tail call void @wolfSSL_Free(ptr noundef nonnull %.012.i) #24
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %FreeNameSubtrees.exit, label %.lr.ph.i, !llvm.loop !4

FreeNameSubtrees.exit:                            ; preds = %bb.g, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !121  ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %FreeNameSubtrees.exit28.thread, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %FreeNameSubtrees.exit, %bb.i
  %.012.i25 = phi ptr [ %i.l, %bb.i ], [ %i.k, %FreeNameSubtrees.exit ] ; 3 uses
  %i.l = load ptr, ptr %.012.i25, align 8, !tbaa !71 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i25, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %.not10.i26 = icmp eq ptr %i.n, null
  br i1 %.not10.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i24
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.n) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i24
  tail call void @wolfSSL_Free(ptr noundef nonnull %.012.i25) #24
  %.not.i27 = icmp eq ptr %i.l, null
  br i1 %.not.i27, label %FreeNameSubtrees.exit28, label %.lr.ph.i24, !llvm.loop !4

FreeNameSubtrees.exit28:                          ; preds = %bb.i
  %.not22 = icmp eq ptr %0, null
  br i1 %.not22, label %bb.j, label %FreeNameSubtrees.exit28.thread

FreeNameSubtrees.exit28.thread:                   ; preds = %FreeNameSubtrees.exit, %FreeNameSubtrees.exit28
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #24
  br label %bb.j

bb.j:                                             ; preds = %FreeNameSubtrees.exit28.thread, %FreeNameSubtrees.exit28
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreeSignerTable(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph16.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127  ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph16, %FreeSigner.exit
  %.01113 = phi ptr [ %i.e, %FreeSigner.exit ], [ %i.c, %.lr.ph16 ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01113, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01113, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.g) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01113, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %.not19.i = icmp eq ptr %i.i, null
  br i1 %.not19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.i) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.01113, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122  ; 2 uses
  %.not20.i = icmp eq ptr %i.k, null
  br i1 %.not20.i, label %FreeNameSubtrees.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %.012.i.i = phi ptr [ %i.l, %bb.g ], [ %i.k, %bb.e ] ; 3 uses
  %i.l = load ptr, ptr %.012.i.i, align 8, !tbaa !71 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.n) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  tail call void @wolfSSL_Free(ptr noundef nonnull %.012.i.i) #24
end_hunk_0
