Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_sbit_decoder_load_bitmap:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !725
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !726
  %i.k = add i64 %i.j, %2
  %i.l = tail call i32 @FT_Stream_Seek(ptr noundef %i.d, i64 noundef %i.k) #27 ; 2 uses
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @FT_Stream_ExtractFrame(ptr noundef %i.d, i64 noundef %3, ptr noundef nonnull %i.b) #27 ; 2 uses
  %.not55 = icmp eq i32 %i.m, 0
  br i1 %.not55, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 8 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %3 ; 4 uses
  %trunc = trunc nuw i32 %1 to i16                ; 2 uses
  switch i16 %trunc, label %tt_sbit_decoder_load_metrics.exit.thread63 [
    i16 1, label %bb.f
    i16 2, label %bb.f
    i16 8, label %bb.f
    i16 17, label %bb.f
    i16 6, label %tt_sbit_decoder_load_metrics.exit
    i16 7, label %tt_sbit_decoder_load_metrics.exit
    i16 9, label %tt_sbit_decoder_load_metrics.exit
    i16 18, label %tt_sbit_decoder_load_metrics.exit
    i16 5, label %bb.j
    i16 19, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.p = icmp samesign ult i64 %3, 5
  br i1 %i.p, label %tt_sbit_decoder_load_metrics.exit.thread63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241  ; 8 uses
  %i.t = load i8, ptr %i.n, align 1, !tbaa !29
  %i.u = zext i8 %i.t to i16
  store i16 %i.u, ptr %i.s, align 2, !tbaa !253
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = zext i8 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.x, ptr %i.y, align 2, !tbaa !252
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %i.ab = sext i8 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !258
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.af = sext i8 %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !260
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !265
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 0, ptr %i.al, align 2, !tbaa !259
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i16 0, ptr %i.am, align 2, !tbaa !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  store i16 0, ptr %i.an, align 2, !tbaa !266
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ao, align 8, !tbaa !242
  store ptr %i.q, ptr %i.a, align 8, !tbaa !141
  br label %tt_sbit_decoder_load_metrics.exit.thread

tt_sbit_decoder_load_metrics.exit:                ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ap = call fastcc i32 @tt_sbit_decoder_load_metrics(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef nonnull %i.o, i8 noundef zeroext 1) ; 2 uses
  %.not56 = icmp eq i32 %i.ap, 0
  br i1 %.not56, label %tt_sbit_decoder_load_metrics.exit.thread, label %tt_sbit_decoder_load_metrics.exit.thread63

tt_sbit_decoder_load_metrics.exit.thread:         ; preds = %bb.g, %tt_sbit_decoder_load_metrics.exit
  switch i16 %trunc, label %tt_sbit_decoder_load_metrics.exit.thread63 [
    i16 1, label %bb.o
    i16 6, label %bb.o
    i16 2, label %bb.h
    i16 7, label %bb.h
    i16 5, label %bb.j
    i16 8, label %bb.k
    i16 9, label %bb.m
    i16 17, label %bb.n
    i16 18, label %bb.n
  ]

bb.h:                                             ; preds = %tt_sbit_decoder_load_metrics.exit.thread, %tt_sbit_decoder_load_metrics.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !241 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !252
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !253
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = mul nuw i32 %i.aw, %i.au
  %i.ay = add nuw i32 %i.ax, 7
  %i.az = lshr i32 %i.ay, 3
  %i.ba = add nuw nsw i32 %i.au, 7
  %i.bb = lshr i32 %i.ba, 3
  %i.bc = mul nuw nsw i32 %i.bb, %i.aw            ; 2 uses
  %i.bd = icmp samesign ult i32 %i.az, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.bf = ptrtoint ptr %i.o to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = icmp eq i32 %i.bc, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.j

bb.j:                                             ; preds = %tt_sbit_decoder_load_metrics.exit.thread, %bb.e, %bb.i, %bb.h
  br label %bb.o

bb.k:                                             ; preds = %tt_sbit_decoder_load_metrics.exit.thread
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.bm = icmp ugt ptr %i.bl, %i.o
  br i1 %i.bm, label %tt_sbit_decoder_load_metrics.exit.thread63, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !141
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %tt_sbit_decoder_load_metrics.exit.thread
  br label %bb.o

bb.n:                                             ; preds = %bb.e, %tt_sbit_decoder_load_metrics.exit.thread, %tt_sbit_decoder_load_metrics.exit.thread
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.i, %tt_sbit_decoder_load_metrics.exit.thread, %tt_sbit_decoder_load_metrics.exit.thread, %bb.n, %bb.m
  %.1 = phi ptr [ @tt_sbit_decoder_load_png, %bb.n ], [ @tt_sbit_decoder_load_byte_aligned, %tt_sbit_decoder_load_metrics.exit.thread ], [ @tt_sbit_decoder_load_byte_aligned, %bb.i ], [ @tt_sbit_decoder_load_compound, %bb.m ], [ @tt_sbit_decoder_load_byte_aligned, %tt_sbit_decoder_load_metrics.exit.thread ], [ @tt_sbit_decoder_load_bit_aligned, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !243
  %.not58 = icmp eq i8 %i.bo, 0
  br i1 %.not58, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = call fastcc i32 @tt_sbit_decoder_alloc_bitmap(ptr noundef nonnull %0, i8 noundef zeroext %7) ; 2 uses
  %.not59 = icmp eq i32 %i.bp, 0
  br i1 %.not59, label %bb.q, label %tt_sbit_decoder_load_metrics.exit.thread63

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not60 = icmp eq i8 %7, 0
  br i1 %.not60, label %bb.r, label %tt_sbit_decoder_load_metrics.exit.thread63

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.br = call i32 %.1(ptr noundef nonnull %0, ptr noundef %i.bq, ptr noundef nonnull %i.o, i32 noundef %4, i32 noundef %5, i32 noundef %6) #27, !callees !727
  br label %tt_sbit_decoder_load_metrics.exit.thread63

tt_sbit_decoder_load_metrics.exit.thread63:       ; preds = %bb.e, %bb.f, %bb.r, %bb.k, %tt_sbit_decoder_load_metrics.exit.thread, %bb.p, %bb.q, %tt_sbit_decoder_load_metrics.exit
  %.3 = phi i32 [ %i.ap, %tt_sbit_decoder_load_metrics.exit ], [ 0, %bb.k ], [ %i.bp, %bb.p ], [ %i.br, %bb.r ], [ 8, %tt_sbit_decoder_load_metrics.exit.thread ], [ 0, %bb.q ], [ 6, %bb.f ], [ 8, %bb.e ]
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.b) #27
  br label %bb.s

bb.s:                                             ; preds = %tt_sbit_decoder_load_metrics.exit.thread63, %bb.d, %bb.c, %bb.b, %bb.a
  %.4 = phi i32 [ %.3, %tt_sbit_decoder_load_metrics.exit.thread63 ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ 6, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @tt_sbit_decoder_load_byte_aligned(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 %5) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !256
  %i.e = load i32, ptr %i.b, align 8, !tbaa !255
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !274  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !257  ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !252
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = load i16, ptr %i.k, align 2, !tbaa !253  ; 7 uses
  %i.p = zext i16 %i.o to i32                     ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.r = load i8, ptr %i.q, align 2, !tbaa !250
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, %i.n               ; 17 uses
  %i.u = icmp slt i32 %3, 0
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add nuw nsw i32 %3, %i.n
  %i.w = icmp ugt i32 %i.v, %i.d
  %i.x = icmp slt i32 %4, 0
  %or.cond = or i1 %i.x, %i.w
  %i.y = add nuw nsw i32 %4, %i.p
  %i.z = icmp ugt i32 %i.y, %i.e
  %or.cond98 = select i1 %or.cond, i1 true, i1 %i.z
  br i1 %or.cond98, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add nuw nsw i32 %i.t, 7
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = mul nuw nsw i32 %i.ab, %i.p
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = icmp ugt ptr %i.ae, %2
  br i1 %i.af, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = mul i32 %i.g, %4
  %i.ah = lshr i32 %3, 3                          ; 2 uses
  %i.ai = add i32 %i.ag, %i.ah
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.i, i64 %i.aj   ; 18 uses
  %i.al = and i32 %3, 7                           ; 20 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.preheader99, label %.preheader101

.preheader101:                                    ; preds = %bb.e
  %invariant.op = sub nuw nsw i32 8, %i.al        ; 2 uses
  %.not135 = icmp eq i16 %i.o, 0
  br i1 %.not135, label %.loopexit, label %.preheader100.lr.ph

.preheader100.lr.ph:                              ; preds = %.preheader101
  %i.an = icmp samesign ugt i32 %i.t, 7
  %i.ao = sext i32 %i.g to i64                    ; 10 uses
  br i1 %i.an, label %.preheader100.us, label %.preheader100.lr.ph.split

.preheader100.us:                                 ; preds = %.preheader100.lr.ph, %bb.j
  %.187112.us = phi i32 [ %i.bs, %bb.j ], [ %i.p, %.preheader100.lr.ph ] ; 2 uses
  %.189111.us = phi ptr [ %i.bt, %bb.j ], [ %i.ak, %.preheader100.lr.ph ] ; 2 uses
  %.3110.us = phi ptr [ %.5.us, %bb.j ], [ %1, %.preheader100.lr.ph ]
  br label %bb.f

bb.f:                                             ; preds = %.preheader100.us, %bb.f
  %.0106.us = phi i32 [ 0, %.preheader100.us ], [ %i.ay, %bb.f ]
  %.082105.us = phi i32 [ %i.t, %.preheader100.us ], [ %i.az, %bb.f ] ; 3 uses
  %.083104.us = phi ptr [ %.189111.us, %.preheader100.us ], [ %i.ax, %bb.f ] ; 4 uses
  %.4103.us = phi ptr [ %.3110.us, %.preheader100.us ], [ %i.ap, %bb.f ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.4103.us, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.4103.us, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %.0106.us, %i.ar        ; 2 uses
  %i.at = load i8, ptr %.083104.us, align 1, !tbaa !29
  %i.au = lshr i32 %i.as, %i.al
  %i.av = trunc i32 %i.au to i8
  %i.aw = or i8 %i.at, %i.av
  store i8 %i.aw, ptr %.083104.us, align 1, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %.083104.us, i64 1 ; 3 uses
  %i.ay = shl i32 %i.as, 8                        ; 3 uses
  %i.az = add nsw i32 %.082105.us, -8             ; 3 uses
  %i.ba = icmp sgt i32 %.082105.us, 15
  br i1 %i.ba, label %bb.f, label %._crit_edge.us, !llvm.loop !728

bb.g:                                             ; preds = %._crit_edge.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.4103.us, i64 2
  %i.bc = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.bd = zext i8 %i.bc to i32
  %i.be = lshr i32 65280, %i.az
  %i.bf = and i32 %i.be, %i.bd
  %i.bg = or disjoint i32 %i.bf, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %.5.us = phi ptr [ %i.bb, %bb.g ], [ %i.ap, %._crit_edge.us ]
  %.1.us = phi i32 [ %i.bg, %bb.g ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.bh = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.bi = lshr i32 %.1.us, %i.al
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = or i8 %i.bh, %i.bj
  store i8 %i.bk, ptr %i.ax, align 1, !tbaa !29
  %i.bl = icmp sgt i32 %i.az, %invariant.op
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.083104.us, i64 2 ; 2 uses
  %i.bn = shl i32 %.1.us, 8
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !29
  %i.bp = lshr exact i32 %i.bn, %i.al
  %i.bq = trunc i32 %i.bp to i8
  %i.br = or i8 %i.bo, %i.bq
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = add nsw i32 %.187112.us, -1
  %i.bt = getelementptr inbounds i8, ptr %.189111.us, i64 %i.ao
  %i.bu = icmp sgt i32 %.187112.us, 1
  br i1 %i.bu, label %.preheader100.us, label %.loopexit, !llvm.loop !729

._crit_edge.us:                                   ; preds = %bb.f
  %i.bv = icmp sgt i32 %.082105.us, 8
  br i1 %i.bv, label %bb.g, label %bb.h

.preheader100.lr.ph.split:                        ; preds = %.preheader100.lr.ph
  %i.bw = icmp samesign ugt i32 %i.t, %invariant.op
  %i.bx = lshr exact i32 65280, %i.t              ; 9 uses
  br i1 %i.bw, label %.preheader100.us113.us.lver.check, label %.preheader100.lr.ph.split.split

.preheader100.us113.us.lver.check:                ; preds = %.preheader100.lr.ph.split
  %ident.check.not = icmp eq i32 %i.g, 1
  br i1 %ident.check.not, label %.preheader100.us113.us.ph, label %.preheader100.us113.us.lver.orig.preheader

.preheader100.us113.us.lver.orig.preheader:       ; preds = %.preheader100.us113.us.lver.check
  %xtraiter211 = and i32 %i.p, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.preheader100.us113.us.lver.orig.prol.loopexit, label %.preheader100.us113.us.lver.orig.prol

.preheader100.us113.us.lver.orig.prol:            ; preds = %.preheader100.us113.us.lver.orig.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bz = load i8, ptr %1, align 1, !tbaa !29
  %i.ca = zext i8 %i.bz to i32
  %i.cb = and i32 %i.bx, %i.ca                    ; 2 uses
  %i.cc = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.cd = lshr i32 %i.cb, %i.al
  %i.ce = trunc nuw nsw i32 %i.cd to i8
  %i.cf = or i8 %i.cc, %i.ce
  store i8 %i.cf, ptr %i.ak, align 1, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.ch = shl nuw nsw i32 %i.cb, 8
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.cj = lshr exact i32 %i.ch, %i.al
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = or i8 %i.ci, %i.ck
  store i8 %i.cl, ptr %i.cg, align 1, !tbaa !29
  %i.cm = add nsw i32 %i.p, -1
  %i.cn = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  br label %.preheader100.us113.us.lver.orig.prol.loopexit

.preheader100.us113.us.lver.orig.prol.loopexit:   ; preds = %.preheader100.us113.us.lver.orig.prol, %.preheader100.us113.us.lver.orig.preheader
  %.187112.us114.us.lver.orig.unr = phi i32 [ %i.p, %.preheader100.us113.us.lver.orig.preheader ], [ %i.cm, %.preheader100.us113.us.lver.orig.prol ]
  %.189111.us115.us.lver.orig.unr = phi ptr [ %i.ak, %.preheader100.us113.us.lver.orig.preheader ], [ %i.cn, %.preheader100.us113.us.lver.orig.prol ]
  %.3110.us116.us.lver.orig.unr = phi ptr [ %1, %.preheader100.us113.us.lver.orig.preheader ], [ %i.by, %.preheader100.us113.us.lver.orig.prol ]
  %i.co = icmp eq i16 %i.o, 1
  br i1 %i.co, label %.loopexit, label %.preheader100.us113.us.lver.orig

.preheader100.us113.us.lver.orig:                 ; preds = %.preheader100.us113.us.lver.orig.prol.loopexit, %.preheader100.us113.us.lver.orig
  %.187112.us114.us.lver.orig = phi i32 [ %i.ds, %.preheader100.us113.us.lver.orig ], [ %.187112.us114.us.lver.orig.unr, %.preheader100.us113.us.lver.orig.prol.loopexit ] ; 2 uses
  %.189111.us115.us.lver.orig = phi ptr [ %i.dt, %.preheader100.us113.us.lver.orig ], [ %.189111.us115.us.lver.orig.unr, %.preheader100.us113.us.lver.orig.prol.loopexit ] ; 4 uses
  %.3110.us116.us.lver.orig = phi ptr [ %i.de, %.preheader100.us113.us.lver.orig ], [ %.3110.us116.us.lver.orig.unr, %.preheader100.us113.us.lver.orig.prol.loopexit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.3110.us116.us.lver.orig, i64 1
  %i.cq = load i8, ptr %.3110.us116.us.lver.orig, align 1, !tbaa !29
  %i.cr = zext i8 %i.cq to i32
  %i.cs = and i32 %i.bx, %i.cr                    ; 2 uses
  %i.ct = load i8, ptr %.189111.us115.us.lver.orig, align 1, !tbaa !29
  %i.cu = lshr i32 %i.cs, %i.al
  %i.cv = trunc nuw nsw i32 %i.cu to i8
  %i.cw = or i8 %i.ct, %i.cv
  store i8 %i.cw, ptr %.189111.us115.us.lver.orig, align 1, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %.189111.us115.us.lver.orig, i64 1 ; 2 uses
  %i.cy = shl nuw nsw i32 %i.cs, 8
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.da = lshr exact i32 %i.cy, %i.al
  %i.db = trunc i32 %i.da to i8
  %i.dc = or i8 %i.cz, %i.db
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !29
  %i.dd = getelementptr inbounds i8, ptr %.189111.us115.us.lver.orig, i64 %i.ao ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.3110.us116.us.lver.orig, i64 2
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.dg = zext i8 %i.df to i32
  %i.dh = and i32 %i.bx, %i.dg                    ; 2 uses
  %i.di = load i8, ptr %i.dd, align 1, !tbaa !29
  %i.dj = lshr i32 %i.dh, %i.al
  %i.dk = trunc nuw nsw i32 %i.dj to i8
  %i.dl = or i8 %i.di, %i.dk
  store i8 %i.dl, ptr %i.dd, align 1, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 2 uses
  %i.dn = shl nuw nsw i32 %i.dh, 8
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !29
  %i.dp = lshr exact i32 %i.dn, %i.al
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = or i8 %i.do, %i.dq
  store i8 %i.dr, ptr %i.dm, align 1, !tbaa !29
  %i.ds = add nsw i32 %.187112.us114.us.lver.orig, -2
  %i.dt = getelementptr inbounds i8, ptr %i.dd, i64 %i.ao
  %i.du = icmp sgt i32 %.187112.us114.us.lver.orig, 2
  br i1 %i.du, label %.preheader100.us113.us.lver.orig, label %.loopexit, !llvm.loop !729

.preheader100.us113.us.ph:                        ; preds = %.preheader100.us113.us.lver.check
  %i.dv = add nuw i32 %4, %i.ah
  %i.dw = sext i32 %i.dv to i64
  %scevgep196 = getelementptr i8, ptr %i.i, i64 %i.dw
  %load_initial = load i8, ptr %scevgep196, align 1 ; 2 uses
  %xtraiter213 = and i32 %i.p, 1
  %lcmp.mod214.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.preheader100.us113.us.prol.loopexit, label %.preheader100.us113.us.prol

.preheader100.us113.us.prol:                      ; preds = %.preheader100.us113.us.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dy = load i8, ptr %1, align 1, !tbaa !29
  %i.dz = zext i8 %i.dy to i32
  %i.ea = and i32 %i.bx, %i.dz                    ; 2 uses
  %i.eb = lshr i32 %i.ea, %i.al
  %i.ec = trunc nuw nsw i32 %i.eb to i8
  %i.ed = or i8 %load_initial, %i.ec
  store i8 %i.ed, ptr %i.ak, align 1, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.ef = shl nuw nsw i32 %i.ea, 8
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !29
  %i.eh = lshr exact i32 %i.ef, %i.al
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = or i8 %i.eg, %i.ei                      ; 2 uses
  store i8 %i.ej, ptr %i.ee, align 1, !tbaa !29
  %i.ek = add nsw i32 %i.p, -1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  br label %.preheader100.us113.us.prol.loopexit

.preheader100.us113.us.prol.loopexit:             ; preds = %.preheader100.us113.us.prol, %.preheader100.us113.us.ph
  %store_forwarded.unr = phi i8 [ %load_initial, %.preheader100.us113.us.ph ], [ %i.ej, %.preheader100.us113.us.prol ]
  %.187112.us114.us.unr = phi i32 [ %i.p, %.preheader100.us113.us.ph ], [ %i.ek, %.preheader100.us113.us.prol ]
  %.189111.us115.us.unr = phi ptr [ %i.ak, %.preheader100.us113.us.ph ], [ %i.el, %.preheader100.us113.us.prol ]
  %.3110.us116.us.unr = phi ptr [ %1, %.preheader100.us113.us.ph ], [ %i.dx, %.preheader100.us113.us.prol ]
  %i.em = icmp eq i16 %i.o, 1
  br i1 %i.em, label %.loopexit, label %.preheader100.us113.us

.preheader100.us113.us:                           ; preds = %.preheader100.us113.us.prol.loopexit, %.preheader100.us113.us
  %store_forwarded = phi i8 [ %i.fn, %.preheader100.us113.us ], [ %store_forwarded.unr, %.preheader100.us113.us.prol.loopexit ]
  %.187112.us114.us = phi i32 [ %i.fo, %.preheader100.us113.us ], [ %.187112.us114.us.unr, %.preheader100.us113.us.prol.loopexit ] ; 2 uses
  %.189111.us115.us = phi ptr [ %i.fp, %.preheader100.us113.us ], [ %.189111.us115.us.unr, %.preheader100.us113.us.prol.loopexit ] ; 3 uses
  %.3110.us116.us = phi ptr [ %i.fb, %.preheader100.us113.us ], [ %.3110.us116.us.unr, %.preheader100.us113.us.prol.loopexit ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.3110.us116.us, i64 1
  %i.eo = load i8, ptr %.3110.us116.us, align 1, !tbaa !29
  %i.ep = zext i8 %i.eo to i32
  %i.eq = and i32 %i.bx, %i.ep                    ; 2 uses
  %i.er = lshr i32 %i.eq, %i.al
  %i.es = trunc nuw nsw i32 %i.er to i8
  %i.et = or i8 %store_forwarded, %i.es
  store i8 %i.et, ptr %.189111.us115.us, align 1, !tbaa !29
  %i.eu = getelementptr inbounds nuw i8, ptr %.189111.us115.us, i64 1 ; 2 uses
  %i.ev = shl nuw nsw i32 %i.eq, 8
  %i.ew = load i8, ptr %i.eu, align 1, !tbaa !29
  %i.ex = lshr exact i32 %i.ev, %i.al
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = or i8 %i.ew, %i.ey                      ; 2 uses
  store i8 %i.ez, ptr %i.eu, align 1, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %.189111.us115.us, i64 %i.ao ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.3110.us116.us, i64 2
  %i.fc = load i8, ptr %i.en, align 1, !tbaa !29
  %i.fd = zext i8 %i.fc to i32
  %i.fe = and i32 %i.bx, %i.fd                    ; 2 uses
  %i.ff = lshr i32 %i.fe, %i.al
  %i.fg = trunc nuw nsw i32 %i.ff to i8
  %i.fh = or i8 %i.ez, %i.fg
  store i8 %i.fh, ptr %i.fa, align 1, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  %i.fj = shl nuw nsw i32 %i.fe, 8
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !29
  %i.fl = lshr exact i32 %i.fj, %i.al
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = or i8 %i.fk, %i.fm                      ; 2 uses
  store i8 %i.fn, ptr %i.fi, align 1, !tbaa !29
  %i.fo = add nsw i32 %.187112.us114.us, -2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ao
  %i.fq = icmp sgt i32 %.187112.us114.us, 2
  br i1 %i.fq, label %.preheader100.us113.us, label %.loopexit, !llvm.loop !729

.preheader100.lr.ph.split.split:                  ; preds = %.preheader100.lr.ph.split
  %.not136 = icmp eq i32 %i.t, 0
  br i1 %.not136, label %.loopexit, label %.preheader100.us119.preheader

.preheader100.us119.preheader:                    ; preds = %.preheader100.lr.ph.split.split
  %xtraiter = and i32 %i.p, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader100.us119.prol.loopexit, label %.preheader100.us119.prol

.preheader100.us119.prol:                         ; preds = %.preheader100.us119.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fs = load i8, ptr %1, align 1, !tbaa !29
  %i.ft = zext i8 %i.fs to i32
  %i.fu = and i32 %i.bx, %i.ft
  %i.fv = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.fw = lshr i32 %i.fu, %i.al
  %i.fx = trunc nuw nsw i32 %i.fw to i8
  %i.fy = or i8 %i.fv, %i.fx
  store i8 %i.fy, ptr %i.ak, align 1, !tbaa !29
  %i.fz = add nsw i32 %i.p, -1
  %i.ga = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  br label %.preheader100.us119.prol.loopexit

.preheader100.us119.prol.loopexit:                ; preds = %.preheader100.us119.prol, %.preheader100.us119.preheader
  %.187112.us120.unr = phi i32 [ %i.p, %.preheader100.us119.preheader ], [ %i.fz, %.preheader100.us119.prol ]
  %.189111.us121.unr = phi ptr [ %i.ak, %.preheader100.us119.preheader ], [ %i.ga, %.preheader100.us119.prol ]
  %.3110.us122.unr = phi ptr [ %1, %.preheader100.us119.preheader ], [ %i.fr, %.preheader100.us119.prol ]
  %i.gb = icmp eq i16 %i.o, 1
  br i1 %i.gb, label %.loopexit, label %.preheader100.us119

.preheader100.us119:                              ; preds = %.preheader100.us119.prol.loopexit, %.preheader100.us119
  %.187112.us120 = phi i32 [ %i.gt, %.preheader100.us119 ], [ %.187112.us120.unr, %.preheader100.us119.prol.loopexit ] ; 2 uses
  %.189111.us121 = phi ptr [ %i.gu, %.preheader100.us119 ], [ %.189111.us121.unr, %.preheader100.us119.prol.loopexit ] ; 3 uses
  %.3110.us122 = phi ptr [ %i.gl, %.preheader100.us119 ], [ %.3110.us122.unr, %.preheader100.us119.prol.loopexit ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.3110.us122, i64 1
  %i.gd = load i8, ptr %.3110.us122, align 1, !tbaa !29
  %i.ge = zext i8 %i.gd to i32
  %i.gf = and i32 %i.bx, %i.ge
  %i.gg = load i8, ptr %.189111.us121, align 1, !tbaa !29
  %i.gh = lshr i32 %i.gf, %i.al
  %i.gi = trunc nuw nsw i32 %i.gh to i8
  %i.gj = or i8 %i.gg, %i.gi
  store i8 %i.gj, ptr %.189111.us121, align 1, !tbaa !29
  %i.gk = getelementptr inbounds i8, ptr %.189111.us121, i64 %i.ao ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.3110.us122, i64 2
  %i.gm = load i8, ptr %i.gc, align 1, !tbaa !29
  %i.gn = zext i8 %i.gm to i32
  %i.go = and i32 %i.bx, %i.gn
  %i.gp = load i8, ptr %i.gk, align 1, !tbaa !29
  %i.gq = lshr i32 %i.go, %i.al
  %i.gr = trunc nuw nsw i32 %i.gq to i8
  %i.gs = or i8 %i.gp, %i.gr
  store i8 %i.gs, ptr %i.gk, align 1, !tbaa !29
  %i.gt = add nsw i32 %.187112.us120, -2
  %i.gu = getelementptr inbounds i8, ptr %i.gk, i64 %i.ao
  %i.gv = icmp sgt i32 %.187112.us120, 2
  br i1 %i.gv, label %.preheader100.us119, label %.loopexit, !llvm.loop !729

.preheader99:                                     ; preds = %bb.e
  %.not137 = icmp eq i16 %i.o, 0
  br i1 %.not137, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader99
  %i.gw = icmp samesign ugt i32 %i.t, 7
  %i.gx = sext i32 %i.g to i64                    ; 7 uses
  br i1 %i.gw, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.gy = add nuw nsw i32 %i.t, 7
  %smin = tail call i32 @llvm.smin.i32(i32 %i.t, i32 15)
  %i.gz = sub nsw i32 %i.gy, %smin
  %i.ha = lshr i32 %i.gz, 3
  %i.hb = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hc = add nsw i32 %i.p, -1
  %i.hd = zext i32 %i.hc to i64
  %i.he = mul nsw i64 %i.gx, %i.hd
  %i.hf = getelementptr i8, ptr %i.i, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.hb
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.hh, i64 1
  %6 = add nuw nsw i32 %i.t, 7
  %smin176 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 15)
  %7 = sub nsw i32 %6, %smin176                   ; 3 uses
  %8 = lshr i32 %7, 3
  %narrow = add nuw nsw i32 %8, 1
  %9 = zext nneg i32 %narrow to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %7, 24
  %stride.check = icmp slt i32 %i.g, 0
  %min.iters.check177 = icmp ult i32 %7, 248
  %i.hi = and i64 %9, 28
  %n.vec = and i64 %9, 1073741792                 ; 6 uses
  %i.hj = trunc nuw nsw i64 %n.vec to i32
  %i.hk = shl i32 %i.hj, 3
  %i.hl = sub i32 %i.t, %i.hk                     ; 3 uses
  %ind.escape = add i32 %i.hl, 8
  %cmp.n = icmp eq i64 %n.vec, %9
  %min.epilog.iters.check = icmp eq i64 %i.hi, 0
  %n.vec183 = and i64 %9, 1073741820              ; 5 uses
  %i.hm = trunc nuw nsw i64 %n.vec183 to i32
  %i.hn = shl i32 %i.hm, 3
  %i.ho = sub i32 %i.t, %i.hn                     ; 3 uses
  %ind.escape190.a = add i32 %i.ho, 8
  %cmp.n192 = icmp eq i64 %n.vec183, %9
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %bb.l
  %.086132.us = phi i32 [ %i.ip, %bb.l ], [ %i.p, %.preheader.us.preheader ] ; 2 uses
  %.088131.us = phi ptr [ %i.iq, %bb.l ], [ %i.ak, %.preheader.us.preheader ] ; 7 uses
  %.091130.us = phi ptr [ %.2.us, %bb.l ], [ %1, %.preheader.us.preheader ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %10 = getelementptr i8, ptr %.091130.us, i64 %i.hb
  %scevgep175 = getelementptr i8, ptr %10, i64 1
  %bound0 = icmp ult ptr %i.ak, %scevgep175
  %bound1 = icmp ult ptr %.091130.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.hp = or i1 %found.conflict, %stride.check
  br i1 %i.hp, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hq = getelementptr i8, ptr %.088131.us, i64 %n.vec ; 2 uses
  %i.hr = getelementptr i8, ptr %.091130.us, i64 %n.vec ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.088131.us, i64 %index ; 3 uses
  %next.gep178 = getelementptr i8, ptr %.091130.us, i64 %index ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29, !alias.scope !738, !noalias !739
  %wide.load179.a = load <16 x i8>, ptr %i.hs, align 1, !tbaa !29, !alias.scope !738, !noalias !739
  %i.ht = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load180.a = load <16 x i8>, ptr %next.gep178, align 1, !tbaa !29, !alias.scope !739
  %wide.load181 = load <16 x i8>, ptr %i.ht, align 1, !tbaa !29, !alias.scope !739
  %i.hu = or <16 x i8> %wide.load180.a, %wide.load
  %i.hv = or <16 x i8> %wide.load181, %wide.load179.a
  store <16 x i8> %i.hu, ptr %next.gep, align 1, !tbaa !29, !alias.scope !738, !noalias !739
  store <16 x i8> %i.hv, ptr %i.hs, align 1, !tbaa !29, !alias.scope !738, !noalias !739
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !733

middle.block:                                     ; preds = %vector.body
  %ind.escape182 = getelementptr i8, ptr %i.hr, i64 -1
  br i1 %cmp.n, label %._crit_edge.us133, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !740

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hx = getelementptr i8, ptr %.088131.us, i64 %n.vec183 ; 2 uses
  %i.hy = getelementptr i8, ptr %.091130.us, i64 %n.vec183 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 3 uses
  %next.gep185.a = getelementptr i8, ptr %.088131.us, i64 %index184 ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.091130.us, i64 %index184
  %wide.load187.a = load <4 x i8>, ptr %next.gep185.a, align 1, !tbaa !29, !alias.scope !738, !noalias !739
  %wide.load188 = load <4 x i8>, ptr %next.gep186, align 1, !tbaa !29, !alias.scope !739
  %i.hz = or <4 x i8> %wide.load188, %wide.load187.a
  store <4 x i8> %i.hz, ptr %next.gep185.a, align 1, !tbaa !29, !alias.scope !738, !noalias !739
  %index.next189 = add nuw i64 %index184, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.ia, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !734

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape191 = getelementptr i8, ptr %i.hy, i64 -1
  br i1 %cmp.n192, label %._crit_edge.us133, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.084127.us.ph = phi i32 [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.hl, %vec.epilog.iter.check ], [ %i.ho, %vec.epilog.middle.block ]
  %.085126.us.ph = phi ptr [ %.088131.us, %iter.check ], [ %.088131.us, %vector.memcheck ], [ %i.hq, %vec.epilog.iter.check ], [ %i.hx, %vec.epilog.middle.block ]
  %.192125.us.ph = phi ptr [ %.091130.us, %iter.check ], [ %.091130.us, %vector.memcheck ], [ %i.hr, %vec.epilog.iter.check ], [ %i.hy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.084127.us = phi i32 [ %i.ig, %vec.epilog.scalar.ph ], [ %.084127.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.085126.us = phi ptr [ %i.if, %vec.epilog.scalar.ph ], [ %.085126.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.192125.us = phi ptr [ %i.ic, %vec.epilog.scalar.ph ], [ %.192125.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ib = load i8, ptr %.085126.us, align 1, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %.192125.us, i64 1 ; 2 uses
  %i.id = load i8, ptr %.192125.us, align 1, !tbaa !29
  %i.ie = or i8 %i.id, %i.ib
  store i8 %i.ie, ptr %.085126.us, align 1, !tbaa !29
  %i.if = getelementptr inbounds nuw i8, ptr %.085126.us, i64 1 ; 2 uses
  %i.ig = add nsw i32 %.084127.us, -8             ; 2 uses
  %i.ih = icmp sgt i32 %.084127.us, 15
  br i1 %i.ih, label %vec.epilog.scalar.ph, label %._crit_edge.us133, !llvm.loop !735

bb.k:                                             ; preds = %._crit_edge.us133
  %i.ii = load i8, ptr %.lcssa169, align 1, !tbaa !29
  %i.ij = getelementptr inbounds nuw i8, ptr %.192125.us.lcssa, i64 2
  %i.ik = load i8, ptr %.lcssa170, align 1, !tbaa !29
  %i.il = lshr i32 65280, %.lcssa
  %i.im = trunc i32 %i.il to i8
  %i.in = and i8 %i.ik, %i.im
  %i.io = or i8 %i.in, %i.ii
  store i8 %i.io, ptr %.lcssa169, align 1, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.us133
  %.2.us = phi ptr [ %i.ij, %bb.k ], [ %.lcssa170, %._crit_edge.us133 ]
  %i.ip = add nsw i32 %.086132.us, -1
  %i.iq = getelementptr inbounds i8, ptr %.088131.us, i64 %i.gx
  %i.ir = icmp sgt i32 %.086132.us, 1
  br i1 %i.ir, label %iter.check, label %.loopexit, !llvm.loop !736

._crit_edge.us133:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.084127.us.lcssa = phi i32 [ %ind.escape190.a, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.084127.us, %vec.epilog.scalar.ph ]
  %.192125.us.lcssa = phi ptr [ %ind.escape191, %vec.epilog.middle.block ], [ %ind.escape182, %middle.block ], [ %.192125.us, %vec.epilog.scalar.ph ]
  %.lcssa170 = phi ptr [ %i.hy, %vec.epilog.middle.block ], [ %i.hr, %middle.block ], [ %i.ic, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa169 = phi ptr [ %i.hx, %vec.epilog.middle.block ], [ %i.hq, %middle.block ], [ %i.if, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.ho, %vec.epilog.middle.block ], [ %i.hl, %middle.block ], [ %i.ig, %vec.epilog.scalar.ph ]
  %i.is = icmp sgt i32 %.084127.us.lcssa, 8
  br i1 %i.is, label %bb.k, label %bb.l

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not138 = icmp eq i32 %i.t, 0
  %i.it = lshr exact i32 65280, %i.t
  %i.iu = trunc i32 %i.it to i8                   ; 5 uses
  br i1 %.not138, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter215 = and i32 %i.p, 3                  ; 2 uses
  %lcmp.mod216.not = icmp eq i32 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.086132.prol = phi i32 [ %i.ja, %.preheader.prol ], [ %i.p, %.preheader.preheader ]
  %.088131.prol = phi ptr [ %i.jb, %.preheader.prol ], [ %i.ak, %.preheader.preheader ] ; 3 uses
  %.091130.prol = phi ptr [ %i.iw, %.preheader.prol ], [ %1, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.iv = load i8, ptr %.088131.prol, align 1, !tbaa !29
  %i.iw = getelementptr inbounds nuw i8, ptr %.091130.prol, i64 1 ; 2 uses
  %i.ix = load i8, ptr %.091130.prol, align 1, !tbaa !29
  %i.iy = and i8 %i.ix, %i.iu
  %i.iz = or i8 %i.iy, %i.iv
  store i8 %i.iz, ptr %.088131.prol, align 1, !tbaa !29
  %i.ja = add nsw i32 %.086132.prol, -1           ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %.088131.prol, i64 %i.gx ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter215
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !737

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.086132.unr = phi i32 [ %i.p, %.preheader.preheader ], [ %i.ja, %.preheader.prol ]
  %.088131.unr = phi ptr [ %i.ak, %.preheader.preheader ], [ %i.jb, %.preheader.prol ]
  %.091130.unr = phi ptr [ %1, %.preheader.preheader ], [ %i.iw, %.preheader.prol ]
  %i.jc = icmp ult i16 %i.o, 4
  br i1 %i.jc, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.086132 = phi i32 [ %i.ka, %.preheader ], [ %.086132.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.088131 = phi ptr [ %i.kb, %.preheader ], [ %.088131.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.091130 = phi ptr [ %i.jw, %.preheader ], [ %.091130.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.jd = load i8, ptr %.088131, align 1, !tbaa !29
  %i.je = getelementptr inbounds nuw i8, ptr %.091130, i64 1
  %i.jf = load i8, ptr %.091130, align 1, !tbaa !29
  %i.jg = and i8 %i.jf, %i.iu
  %i.jh = or i8 %i.jg, %i.jd
  store i8 %i.jh, ptr %.088131, align 1, !tbaa !29
  %i.ji = getelementptr inbounds i8, ptr %.088131, i64 %i.gx ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %.091130, i64 2
  %i.jl = load i8, ptr %i.je, align 1, !tbaa !29
  %i.jm = and i8 %i.jl, %i.iu
  %i.jn = or i8 %i.jm, %i.jj
  store i8 %i.jn, ptr %i.ji, align 1, !tbaa !29
  %i.jo = getelementptr inbounds i8, ptr %i.ji, i64 %i.gx ; 3 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !29
  %i.jq = getelementptr inbounds nuw i8, ptr %.091130, i64 3
  %i.jr = load i8, ptr %i.jk, align 1, !tbaa !29
  %i.js = and i8 %i.jr, %i.iu
  %i.jt = or i8 %i.js, %i.jp
  store i8 %i.jt, ptr %i.jo, align 1, !tbaa !29
  %i.ju = getelementptr inbounds i8, ptr %i.jo, i64 %i.gx ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !29
  %i.jw = getelementptr inbounds nuw i8, ptr %.091130, i64 4
  %i.jx = load i8, ptr %i.jq, align 1, !tbaa !29
  %i.jy = and i8 %i.jx, %i.iu
  %i.jz = or i8 %i.jy, %i.jv
  store i8 %i.jz, ptr %i.ju, align 1, !tbaa !29
  %i.ka = add nsw i32 %.086132, -4
  %i.kb = getelementptr inbounds i8, ptr %i.ju, i64 %i.gx
  %i.kc = icmp sgt i32 %.086132, 4
  br i1 %i.kc, label %.preheader, label %.loopexit, !llvm.loop !736

.loopexit:                                        ; preds = %.preheader100.us119.prol.loopexit, %.preheader100.us119, %.preheader100.us113.us.lver.orig.prol.loopexit, %.preheader100.us113.us.lver.orig, %.preheader100.us113.us.prol.loopexit, %.preheader100.us113.us, %bb.j, %.preheader.prol.loopexit, %.preheader, %bb.l, %.preheader100.lr.ph.split.split, %.preheader101, %.preheader99, %.preheader.lr.ph.split, %bb.d, %bb.c, %bb.b, %bb.a
  %.090 = phi i32 [ 0, %bb.a ], [ 3, %bb.c ], [ 3, %bb.d ], [ 0, %.preheader99 ], [ 3, %bb.b ], [ 0, %.preheader101 ], [ 0, %.preheader100.lr.ph.split.split ], [ 0, %.preheader.lr.ph.split ], [ 0, %.preheader100.us113.us.prol.loopexit ], [ 0, %.preheader100.us113.us.lver.orig.prol.loopexit ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %.preheader.prol.loopexit ], [ 0, %.preheader ], [ 0, %.preheader100.us113.us ], [ 0, %.preheader100.us113.us.lver.orig ], [ 0, %.preheader100.us119 ], [ 0, %.preheader100.us119.prol.loopexit ]
  ret i32 %.090
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @tt_sbit_decoder_load_bit_aligned(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 %5) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !257
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !241  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !252
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i16, ptr %i.h, align 2, !tbaa !253  ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 6 uses
end_hunk_0
