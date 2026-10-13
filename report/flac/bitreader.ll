Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/bitreader?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FLAC__bitreader_read_byte_block_aligned_no_crc:bb.a
  store i32 %i.w, ptr %i.k, align 4, !tbaa !18
  %i.x = zext i32 %i.s to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load <8 x i8>, ptr %i.y, align 8, !tbaa !25
  %i.aa = shufflevector <8 x i8> %i.z, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.aa, ptr %.14269, align 1, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.14269, i64 8 ; 2 uses
  %i.ac = add i32 %.170, -8                       ; 2 uses
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !12
  %.not54 = icmp eq i32 %i.ad, 0
  br i1 %.not54, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !13
  %i.af = add i32 %i.ae, -64
  store i32 %i.af, ptr %i.m, align 4, !tbaa !13
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ag = tail call fastcc i32 @bitreader_read_from_client_(ptr noundef nonnull %0)
  %.not53 = icmp eq i32 %i.ag, 0
  br i1 %.not53, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.j, %bb.k
  %.243 = phi ptr [ %.14269, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.170, %bb.k ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ] ; 4 uses
  %i.ah = icmp ugt i32 %.2, 7
  br i1 %i.ah, label %bb.h, label %.preheader, !llvm.loop !41

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %bb.l
  %.376 = phi i32 [ %i.am, %bb.l ], [ %.376.ph, %.lr.ph77.preheader ]
  %.34475 = phi ptr [ %i.al, %bb.l ], [ %.34475.ph, %.lr.ph77.preheader ] ; 2 uses
  %i.ai = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not52 = icmp eq i32 %i.ai, 0
  br i1 %.not52, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph77
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.34475, i64 1
  store i8 %i.ak, ptr %.34475, align 1, !tbaa !31
  %i.am = add nsw i32 %.376, -1                   ; 2 uses
  %.not51 = icmp eq i32 %i.am, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph77, !llvm.loop !42

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.k, %.lr.ph77, %bb.l, %bb.d, %.preheader, %bb.c
  %.045 = phi i32 [ 0, %bb.c ], [ 0, %bb.k ], [ 1, %bb.d ], [ 1, %bb.l ], [ 1, %.preheader ], [ 0, %.lr.ph77 ], [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_unary_unsigned(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #9 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !18   ; 3 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !29
  %i.g = icmp ult i32 %i.e, %i.f
  %.pre77 = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  br i1 %i.g, label %.lr.ph.peel, label %._crit_edge

.lr.ph.peel:                                      ; preds = %bb.b
  %i.h = icmp ult i32 %.pre77, 64
  br i1 %i.h, label %bb.c, label %.lr.ph..thread_crit_edge.peel

.lr.ph..thread_crit_edge.peel:                    ; preds = %.lr.ph.peel
  %.pre75.peel = load i32, ptr %1, align 4, !tbaa !21
  br label %.thread.peel

bb.c:                                             ; preds = %.lr.ph.peel
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = zext nneg i32 %.pre77 to i64
  %i.n = shl i64 %i.l, %i.m                       ; 2 uses
  %.not54.peel = icmp eq i64 %i.n, 0
  %.pre76.peel = load i32, ptr %1, align 4, !tbaa !21 ; 2 uses
  br i1 %.not54.peel, label %.thread.peel, label %.loopexit

.thread.peel:                                     ; preds = %bb.c, %.lr.ph..thread_crit_edge.peel
  %i.o = phi i32 [ %.pre75.peel, %.lr.ph..thread_crit_edge.peel ], [ %.pre76.peel, %bb.c ]
  %reass.sub71.peel = sub i32 %i.o, %.pre77
  %i.p = add i32 %reass.sub71.peel, 64
  store i32 %i.p, ptr %1, align 4, !tbaa !21
  %i.q = load i32, ptr %i.a, align 4, !tbaa !18
  %i.r = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !18
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.s = load i32, ptr %i.b, align 4, !tbaa !29
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread.peel, %.thread
  %i.u = phi i32 [ %i.ak, %.thread ], [ %i.r, %.thread.peel ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %.not54 = icmp eq i64 %i.y, 0
  %.pre76 = load i32, ptr %1, align 4, !tbaa !21  ; 2 uses
  br i1 %.not54, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph
  %.lcssa91 = phi i64 [ %i.y, %.lr.ph ], [ %i.n, %bb.c ]
  %.pre76.lcssa = phi i32 [ %.pre76, %.lr.ph ], [ %.pre76.peel, %bb.c ]
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.lcssa91, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 2 uses
  %i.ab = add i32 %.pre76.lcssa, %i.aa
  store i32 %i.ab, ptr %1, align 4, !tbaa !21
  %i.ac = add nuw nsw i32 %i.aa, 1
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !19
  %i.ae = add i32 %i.ac, %i.ad                    ; 2 uses
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !19
  %i.af = icmp ugt i32 %i.ae, 63
  br i1 %i.af, label %bb.d, label %.thread58

bb.d:                                             ; preds = %.loopexit
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !18
  br label %.thread58.sink.split

.thread:                                          ; preds = %.lr.ph
  %i.ai = add i32 %.pre76, 64
  store i32 %i.ai, ptr %1, align 4, !tbaa !21
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ak = add i32 %i.aj, 1                        ; 4 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !18
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.al = load i32, ptr %i.b, align 4, !tbaa !29
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.thread.peel, %.thread, %bb.b
  %i.an = phi i32 [ %.pre77, %bb.b ], [ 0, %.thread ], [ 0, %.thread.peel ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.b ], [ %i.r, %.thread.peel ], [ %i.ak, %.thread ]
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !30
  %i.ap = shl i32 %i.ao, 3                        ; 4 uses
  %i.aq = icmp ugt i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %0, align 8, !tbaa !11
  %i.as = zext i32 %.lcssa to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25
  %i.av = sub i32 64, %i.ap
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nsw i64 -1, %i.aw
  %i.ay = and i64 %i.au, %i.ax
  %i.az = zext nneg i32 %i.an to i64
  %i.ba = shl i64 %i.ay, %i.az                    ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.thread60, label %bb.f

.thread60:                                        ; preds = %bb.e
  %i.bb = sub i32 %i.ap, %i.an
  %i.bc = load i32, ptr %1, align 4, !tbaa !21
  %i.bd = add i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %1, align 4, !tbaa !21
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ba, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32          ; 2 uses
  %i.bg = load i32, ptr %1, align 4, !tbaa !21
  %i.bh = add i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %1, align 4, !tbaa !21
  %i.bi = add nuw nsw i32 %i.bf, 1
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !19
  %i.bk = add i32 %i.bi, %i.bj
  br label %.thread58.sink.split

bb.g:                                             ; preds = %.thread60, %._crit_edge
  %i.bl = tail call fastcc i32 @bitreader_read_from_client_(ptr noundef nonnull %0)
  %.not53 = icmp eq i32 %i.bl, 0
  br i1 %.not53, label %.thread58, label %bb.b

.thread58.sink.split:                             ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.bk, %bb.f ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !19
  br label %.thread58

.thread58:                                        ; preds = %bb.g, %.thread58.sink.split, %.loopexit
  %.5 = phi i32 [ 1, %.loopexit ], [ 1, %.thread58.sink.split ], [ 0, %bb.g ]
  ret i32 %.5
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_rice_signed_block(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = lshr i32 -1, %3
  %i.d = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not172 = icmp eq i32 %2, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader, %bb.b
  %.0167 = phi ptr [ %i.m, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %i.g = call i32 @FLAC__bitreader_read_unary_unsigned(ptr noundef %0, ptr noundef nonnull %i.b)
  %.not138 = icmp eq i32 %i.g, 0
  br i1 %.not138, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph168
  %i.h = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.i = lshr i32 %i.h, 1
  %i.j = and i32 %i.h, 1
  %i.k = sub nsw i32 0, %i.j
  %i.l = xor i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.0167, i64 4 ; 2 uses
  store i32 %i.l, ptr %.0167, align 4, !tbaa !21
  %i.n = icmp ult ptr %i.m, %i.e
  br i1 %i.n, label %.lr.ph168, label %.loopexit, !llvm.loop !45

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 2 uses
  %.not = icmp ult i32 %i.p, %i.r
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !11
  %i.v = zext i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = zext nneg i32 %i.t to i64
  %i.z = shl i64 %i.x, %i.y
  br label %.preheader142

.preheader142:                                    ; preds = %bb.d, %bb.r
  %.0114.ph = phi i32 [ %i.p, %bb.d ], [ %i.cp, %bb.r ] ; 2 uses
  %.0113.ph = phi i32 [ %i.r, %bb.d ], [ %i.cq, %bb.r ] ; 5 uses
  %.pn = phi i32 [ %i.t, %bb.d ], [ %i.cs, %bb.r ]
  %.0100.ph = phi i64 [ %i.z, %bb.d ], [ %i.dc, %bb.r ]
  %.1.ph = phi ptr [ %1, %bb.d ], [ %i.co, %bb.r ] ; 2 uses
  %.0103.ph = sub i32 64, %.pn                    ; 2 uses
  %i.aa = icmp ult ptr %.1.ph, %i.e
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader142
  %i.ab = sub i32 64, %3                          ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = zext nneg i32 %3 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.1165 = phi ptr [ %.1.ph, %.lr.ph ], [ %i.bv, %bb.j ] ; 4 uses
  %.0100164 = phi i64 [ %.0100.ph, %.lr.ph ], [ %.2102, %bb.j ] ; 3 uses
  %.0103163 = phi i32 [ %.0103.ph, %.lr.ph ], [ %.1104, %bb.j ] ; 3 uses
  %.0114162 = phi i32 [ %.0114.ph, %.lr.ph ], [ %.3117, %bb.j ] ; 3 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0100164, i1 false) ; 2 uses
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = icmp eq i64 %.0100164, 0
  br i1 %i.ag, label %.preheader140.preheader, label %.loopexit141

.preheader140.preheader:                          ; preds = %bb.e
  %i.ah = add i32 %.0114162, 1                    ; 2 uses
  %.not135237 = icmp ult i32 %i.ah, %.0113.ph
  br i1 %.not135237, label %.lr.ph239.preheader, label %.preheader140.preheader._crit_edge

.lr.ph239.preheader:                              ; preds = %.preheader140.preheader
  %i.ai = load ptr, ptr %0, align 8, !tbaa !11
  br label %.lr.ph239

.preheader140:                                    ; preds = %.lr.ph239
  %i.aj = add i32 %i.ak, 1                        ; 2 uses
  %.not135 = icmp ult i32 %i.aj, %.0113.ph
  br i1 %.not135, label %.lr.ph239, label %.preheader140.preheader._crit_edge, !llvm.loop !46

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %.preheader140
  %i.ak = phi i32 [ %i.aj, %.preheader140 ], [ %i.ah, %.lr.ph239.preheader ] ; 3 uses
  %.0108238 = phi i32 [ %i.aq, %.preheader140 ], [ %.0103163, %.lr.ph239.preheader ]
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25 ; 3 uses
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false) ; 2 uses
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add i32 %.0108238, %i.ap                ; 3 uses
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %.preheader140, label %.loopexit141, !llvm.loop !46

.loopexit141:                                     ; preds = %.lr.ph239, %bb.e
  %.2116 = phi i32 [ %.0114162, %bb.e ], [ %i.ak, %.lr.ph239 ] ; 2 uses
  %.1109 = phi i32 [ %i.af, %bb.e ], [ %i.aq, %.lr.ph239 ] ; 4 uses
  %.0107 = phi i64 [ %i.ae, %bb.e ], [ %i.ao, %.lr.ph239 ]
  %.1101 = phi i64 [ %.0100164, %bb.e ], [ %i.an, %.lr.ph239 ]
  %i.as = shl i64 %.1101, %.0107
  %i.at = shl i64 %i.as, 1                        ; 2 uses
  %i.au = xor i32 %.1109, -1
  %i.av = add i32 %.0103163, %i.au
  %i.aw = and i32 %i.av, 63                       ; 4 uses
  %i.ax = icmp ugt i32 %.1109, %i.c
  br i1 %i.ax, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.loopexit141
  %i.ay = lshr i64 %i.at, %i.ac                   ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %.not136 = icmp ugt i32 %3, %i.aw
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = sub nuw nsw i32 %i.aw, %3
  %i.bb = shl i64 %i.at, %i.ad
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bc = add i32 %.2116, 1                       ; 4 uses
  %.not137 = icmp ult i32 %i.bc, %.0113.ph
  br i1 %.not137, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !11
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25 ; 2 uses
  %i.bh = add i32 %i.aw, %i.ab                    ; 3 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.bg, %i.bi
  %i.bk = or i64 %i.bj, %i.ay
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = sub i32 64, %i.bh
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bg, %i.bn
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.3117 = phi i32 [ %.2116, %bb.g ], [ %i.bc, %bb.i ] ; 2 uses
  %.2110 = phi i32 [ %i.az, %bb.g ], [ %i.bl, %bb.i ] ; 2 uses
  %.1104 = phi i32 [ %i.ba, %bb.g ], [ %i.bh, %bb.i ] ; 2 uses
  %.2102 = phi i64 [ %i.bb, %bb.g ], [ %i.bo, %bb.i ]
  store i32 %.2110, ptr %i.a, align 4, !tbaa !21
  %i.bp = shl i32 %.1109, %3
  %i.bq = or i32 %.2110, %i.bp                    ; 2 uses
  %i.br = lshr i32 %i.bq, 1
  %i.bs = and i32 %i.bq, 1
  %i.bt = sub nsw i32 0, %i.bs
  %i.bu = xor i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.1165, i64 4 ; 2 uses
  store i32 %i.bu, ptr %.1165, align 4, !tbaa !21
  %i.bw = icmp ult ptr %i.bv, %i.e
  br i1 %i.bw, label %bb.e, label %._crit_edge, !llvm.loop !47

.preheader140.preheader._crit_edge:               ; preds = %.preheader140.preheader, %.preheader140
  %.0108.lcssa = phi i32 [ %i.aq, %.preheader140 ], [ %.0103163, %.preheader140.preheader ]
  %i.bx = add i32 %.0114162, 1
  %umax.le = tail call i32 @llvm.umax.i32(i32 %.0113.ph, i32 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.by, align 8, !tbaa !19
  store i32 %umax.le, ptr %i.o, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %bb.c, %.preheader140.preheader._crit_edge
  %.4112 = phi i32 [ %.0108.lcssa, %.preheader140.preheader._crit_edge ], [ 0, %bb.c ], [ 0, %bb.q ]
  %.3 = phi ptr [ %.1165, %.preheader140.preheader._crit_edge ], [ %1, %bb.c ], [ %i.co, %bb.q ]
  %i.bz = call i32 @FLAC__bitreader_read_unary_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %.not133 = icmp eq i32 %i.bz, 0
  br i1 %.not133, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !21
  %i.cb = add i32 %i.ca, %.4112                   ; 2 uses
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !21
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cc, align 8, !tbaa !19
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cd = phi i32 [ %i.cb, %bb.l ], [ %.1109, %bb.m ]
  %.5 = phi i32 [ 0, %bb.l ], [ %i.az, %bb.m ]
  %.2105 = phi i32 [ 0, %bb.l ], [ %i.aw, %bb.m ]
  %.4 = phi ptr [ %.3, %bb.l ], [ %.1165, %bb.m ] ; 2 uses
  %i.ce = sub i32 %3, %.2105
  %i.cf = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.ce)
  %.not134 = icmp eq i32 %i.cf, 0
  br i1 %.not134, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ch = or i32 %i.cg, %.5                       ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !21
  %i.ci = shl i32 %i.cd, %3
  %i.cj = or i32 %i.ci, %i.ch                     ; 2 uses
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = and i32 %i.cj, 1
  %i.cm = sub nsw i32 0, %i.cl
  %i.cn = xor i32 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 3 uses
  store i32 %i.cn, ptr %.4, align 4, !tbaa !21
  %i.cp = load i32, ptr %i.o, align 4, !tbaa !18  ; 4 uses
  %i.cq = load i32, ptr %i.q, align 4, !tbaa !29  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !15
  %i.cv = icmp ult i32 %i.cp, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = load ptr, ptr %0, align 8, !tbaa !11
  %i.cx = zext i32 %i.cp to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.da = zext nneg i32 %i.cs to i64
  %i.db = shl i64 %i.cz, %i.da
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.dc = phi i64 [ %i.db, %bb.p ], [ 0, %bb.o ]
  %i.dd = icmp uge i32 %i.cp, %i.cq
  %i.de = icmp ult ptr %i.co, %i.e
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %bb.k, label %bb.r, !llvm.loop !48

bb.r:                                             ; preds = %bb.q
  br label %.preheader142, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.j, %.preheader142
  %.0114.lcssa = phi i32 [ %.0114.ph, %.preheader142 ], [ %.3117, %bb.j ] ; 2 uses
  %.0103.lcssa = phi i32 [ %.0103.ph, %.preheader142 ], [ %.1104, %bb.j ] ; 2 uses
  %i.dg = icmp eq i32 %.0103.lcssa, 0             ; 2 uses
  %i.dh = icmp ult i32 %.0114.lcssa, %.0113.ph    ; 2 uses
  %spec.select139 = select i1 %i.dh, i32 64, i32 0
  %narrow = select i1 %i.dg, i1 %i.dh, i1 false
  %spec.select = zext i1 %narrow to i32
  %.4118 = add i32 %.0114.lcssa, %spec.select
  %.3106 = select i1 %i.dg, i32 %spec.select139, i32 %.0103.lcssa
  %i.di = sub i32 64, %.3106
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !19
  store i32 %.4118, ptr %i.o, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit141, %.lr.ph168, %bb.b, %.preheader, %bb.n, %bb.k, %._crit_edge
  %.0119 = phi i32 [ 1, %.preheader ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %._crit_edge ], [ 1, %bb.b ], [ 0, %.lr.ph168 ], [ 0, %.loopexit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0119
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_rice_signed_block_bmi2(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = lshr i32 -1, %3
  %i.d = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not172 = icmp eq i32 %2, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader, %bb.b
  %.0167 = phi ptr [ %i.m, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %i.g = call i32 @FLAC__bitreader_read_unary_unsigned(ptr noundef %0, ptr noundef nonnull %i.b)
  %.not138 = icmp eq i32 %i.g, 0
  br i1 %.not138, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph168
  %i.h = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.i = lshr i32 %i.h, 1
  %i.j = and i32 %i.h, 1
  %i.k = sub nsw i32 0, %i.j
  %i.l = xor i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.0167, i64 4 ; 2 uses
  store i32 %i.l, ptr %.0167, align 4, !tbaa !21
  %i.n = icmp ult ptr %i.m, %i.e
  br i1 %i.n, label %.lr.ph168, label %.loopexit, !llvm.loop !49

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 2 uses
  %.not = icmp ult i32 %i.p, %i.r
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !11
  %i.v = zext i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = zext nneg i32 %i.t to i64
  %i.z = shl i64 %i.x, %i.y
  br label %.preheader142

.preheader142:                                    ; preds = %bb.d, %bb.r
  %.0114.ph = phi i32 [ %i.p, %bb.d ], [ %i.cp, %bb.r ] ; 2 uses
  %.0113.ph = phi i32 [ %i.r, %bb.d ], [ %i.cq, %bb.r ] ; 5 uses
  %.pn = phi i32 [ %i.t, %bb.d ], [ %i.cs, %bb.r ]
  %.0100.ph = phi i64 [ %i.z, %bb.d ], [ %i.dc, %bb.r ]
  %.1.ph = phi ptr [ %1, %bb.d ], [ %i.co, %bb.r ] ; 2 uses
  %.0103.ph = sub i32 64, %.pn                    ; 2 uses
  %i.aa = icmp ult ptr %.1.ph, %i.e
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader142
  %i.ab = sub i32 64, %3                          ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = zext nneg i32 %3 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.1165 = phi ptr [ %.1.ph, %.lr.ph ], [ %i.bv, %bb.j ] ; 4 uses
  %.0100164 = phi i64 [ %.0100.ph, %.lr.ph ], [ %.2102, %bb.j ] ; 3 uses
  %.0103163 = phi i32 [ %.0103.ph, %.lr.ph ], [ %.1104, %bb.j ] ; 3 uses
  %.0114162 = phi i32 [ %.0114.ph, %.lr.ph ], [ %.3117, %bb.j ] ; 3 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0100164, i1 false) ; 2 uses
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = icmp eq i64 %.0100164, 0
  br i1 %i.ag, label %.preheader140.preheader, label %.loopexit141

.preheader140.preheader:                          ; preds = %bb.e
  %i.ah = add i32 %.0114162, 1                    ; 2 uses
  %.not135237 = icmp ult i32 %i.ah, %.0113.ph
  br i1 %.not135237, label %.lr.ph239.preheader, label %.preheader140.preheader._crit_edge

.lr.ph239.preheader:                              ; preds = %.preheader140.preheader
  %i.ai = load ptr, ptr %0, align 8, !tbaa !11
  br label %.lr.ph239

.preheader140:                                    ; preds = %.lr.ph239
  %i.aj = add i32 %i.ak, 1                        ; 2 uses
  %.not135 = icmp ult i32 %i.aj, %.0113.ph
  br i1 %.not135, label %.lr.ph239, label %.preheader140.preheader._crit_edge, !llvm.loop !50

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %.preheader140
  %i.ak = phi i32 [ %i.aj, %.preheader140 ], [ %i.ah, %.lr.ph239.preheader ] ; 3 uses
  %.0108238 = phi i32 [ %i.aq, %.preheader140 ], [ %.0103163, %.lr.ph239.preheader ]
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25 ; 3 uses
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false) ; 2 uses
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add i32 %.0108238, %i.ap                ; 3 uses
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %.preheader140, label %.loopexit141, !llvm.loop !50

.loopexit141:                                     ; preds = %.lr.ph239, %bb.e
  %.2116 = phi i32 [ %.0114162, %bb.e ], [ %i.ak, %.lr.ph239 ] ; 2 uses
  %.1109 = phi i32 [ %i.af, %bb.e ], [ %i.aq, %.lr.ph239 ] ; 4 uses
  %.0107 = phi i64 [ %i.ae, %bb.e ], [ %i.ao, %.lr.ph239 ]
  %.1101 = phi i64 [ %.0100164, %bb.e ], [ %i.an, %.lr.ph239 ]
  %i.as = shl i64 %.1101, %.0107
  %i.at = shl i64 %i.as, 1                        ; 2 uses
  %i.au = xor i32 %.1109, -1
  %i.av = add i32 %.0103163, %i.au
  %i.aw = and i32 %i.av, 63                       ; 4 uses
  %i.ax = icmp ugt i32 %.1109, %i.c
  br i1 %i.ax, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.loopexit141
  %i.ay = lshr i64 %i.at, %i.ac                   ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %.not136 = icmp ugt i32 %3, %i.aw
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = sub nuw nsw i32 %i.aw, %3
  %i.bb = shl i64 %i.at, %i.ad
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bc = add i32 %.2116, 1                       ; 4 uses
  %.not137 = icmp ult i32 %i.bc, %.0113.ph
  br i1 %.not137, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !11
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25 ; 2 uses
  %i.bh = add i32 %i.aw, %i.ab                    ; 3 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.bg, %i.bi
  %i.bk = or i64 %i.bj, %i.ay
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = sub i32 64, %i.bh
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bg, %i.bn
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.3117 = phi i32 [ %.2116, %bb.g ], [ %i.bc, %bb.i ] ; 2 uses
  %.2110 = phi i32 [ %i.az, %bb.g ], [ %i.bl, %bb.i ] ; 2 uses
  %.1104 = phi i32 [ %i.ba, %bb.g ], [ %i.bh, %bb.i ] ; 2 uses
  %.2102 = phi i64 [ %i.bb, %bb.g ], [ %i.bo, %bb.i ]
  store i32 %.2110, ptr %i.a, align 4, !tbaa !21
  %i.bp = shl i32 %.1109, %3
  %i.bq = or i32 %.2110, %i.bp                    ; 2 uses
  %i.br = lshr i32 %i.bq, 1
  %i.bs = and i32 %i.bq, 1
  %i.bt = sub nsw i32 0, %i.bs
  %i.bu = xor i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.1165, i64 4 ; 2 uses
  store i32 %i.bu, ptr %.1165, align 4, !tbaa !21
  %i.bw = icmp ult ptr %i.bv, %i.e
  br i1 %i.bw, label %bb.e, label %._crit_edge, !llvm.loop !51

.preheader140.preheader._crit_edge:               ; preds = %.preheader140.preheader, %.preheader140
  %.0108.lcssa = phi i32 [ %i.aq, %.preheader140 ], [ %.0103163, %.preheader140.preheader ]
  %i.bx = add i32 %.0114162, 1
  %umax.le = tail call i32 @llvm.umax.i32(i32 %.0113.ph, i32 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.by, align 8, !tbaa !19
  store i32 %umax.le, ptr %i.o, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %bb.c, %.preheader140.preheader._crit_edge
  %.4112 = phi i32 [ %.0108.lcssa, %.preheader140.preheader._crit_edge ], [ 0, %bb.c ], [ 0, %bb.q ]
  %.3 = phi ptr [ %.1165, %.preheader140.preheader._crit_edge ], [ %1, %bb.c ], [ %i.co, %bb.q ]
  %i.bz = call i32 @FLAC__bitreader_read_unary_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %.not133 = icmp eq i32 %i.bz, 0
  br i1 %.not133, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !21
  %i.cb = add i32 %i.ca, %.4112                   ; 2 uses
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !21
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cc, align 8, !tbaa !19
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cd = phi i32 [ %i.cb, %bb.l ], [ %.1109, %bb.m ]
  %.5 = phi i32 [ 0, %bb.l ], [ %i.az, %bb.m ]
  %.2105 = phi i32 [ 0, %bb.l ], [ %i.aw, %bb.m ]
  %.4 = phi ptr [ %.3, %bb.l ], [ %.1165, %bb.m ] ; 2 uses
  %i.ce = sub i32 %3, %.2105
  %i.cf = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.ce)
  %.not134 = icmp eq i32 %i.cf, 0
  br i1 %.not134, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ch = or i32 %i.cg, %.5                       ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !21
  %i.ci = shl i32 %i.cd, %3
  %i.cj = or i32 %i.ci, %i.ch                     ; 2 uses
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = and i32 %i.cj, 1
  %i.cm = sub nsw i32 0, %i.cl
  %i.cn = xor i32 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 3 uses
  store i32 %i.cn, ptr %.4, align 4, !tbaa !21
  %i.cp = load i32, ptr %i.o, align 4, !tbaa !18  ; 4 uses
  %i.cq = load i32, ptr %i.q, align 4, !tbaa !29  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !15
  %i.cv = icmp ult i32 %i.cp, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = load ptr, ptr %0, align 8, !tbaa !11
  %i.cx = zext i32 %i.cp to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.da = zext nneg i32 %i.cs to i64
  %i.db = shl i64 %i.cz, %i.da
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.dc = phi i64 [ %i.db, %bb.p ], [ 0, %bb.o ]
  %i.dd = icmp uge i32 %i.cp, %i.cq
  %i.de = icmp ult ptr %i.co, %i.e
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %bb.k, label %bb.r, !llvm.loop !52

bb.r:                                             ; preds = %bb.q
  br label %.preheader142, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.j, %.preheader142
  %.0114.lcssa = phi i32 [ %.0114.ph, %.preheader142 ], [ %.3117, %bb.j ] ; 2 uses
  %.0103.lcssa = phi i32 [ %.0103.ph, %.preheader142 ], [ %.1104, %bb.j ] ; 2 uses
  %i.dg = icmp eq i32 %.0103.lcssa, 0             ; 2 uses
  %i.dh = icmp ult i32 %.0114.lcssa, %.0113.ph    ; 2 uses
  %spec.select139 = select i1 %i.dh, i32 64, i32 0
  %narrow = select i1 %i.dg, i1 %i.dh, i1 false
  %spec.select = zext i1 %narrow to i32
  %.4118 = add i32 %.0114.lcssa, %spec.select
  %.3106 = select i1 %i.dg, i32 %spec.select139, i32 %.0103.lcssa
  %i.di = sub i32 64, %.3106
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !19
  store i32 %.4118, ptr %i.o, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit141, %.lr.ph168, %bb.b, %.preheader, %bb.n, %bb.k, %._crit_edge
  %.0119 = phi i32 [ 1, %.preheader ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %._crit_edge ], [ 1, %bb.b ], [ 0, %.lr.ph168 ], [ 0, %.loopexit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0119
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_utf8_uint32(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq ptr %2, null                  ; 2 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !21  ; 9 uses
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i32 %.pre to i8
  %i.d = load i32, ptr %3, align 4, !tbaa !21     ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %3, align 4, !tbaa !21
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store i8 %i.c, ptr %i.g, align 1, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %.pre, 128
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %.pre, 224
  %i.j = icmp eq i32 %i.i, 192
  br i1 %i.j, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %.pre, 240
  %i.l = icmp eq i32 %i.k, 224
  br i1 %i.l, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i32 %.pre, 248
  %i.n = icmp eq i32 %i.m, 240
  br i1 %i.n, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = and i32 %.pre, 252
  %i.p = icmp eq i32 %i.o, 248
  br i1 %i.p, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = and i32 %.pre, 254
  %i.r = icmp eq i32 %i.q, 252
  br i1 %i.r, label %.lr.ph, label %.loopexit.sink.split

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sink = phi i32 [ 31, %bb.e ], [ 15, %bb.f ], [ 3, %bb.h ], [ 7, %bb.g ], [ 1, %bb.i ]
  %.0.ph = phi i32 [ 1, %bb.e ], [ 2, %bb.f ], [ 4, %bb.h ], [ 3, %bb.g ], [ 5, %bb.i ] ; 2 uses
  %i.s = and i32 %.pre, %.sink                    ; 2 uses
  br i1 %.not21, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %.131.us = phi i32 [ %i.z, %bb.k ], [ %.0.ph, %.lr.ph ]
  %.11730.us = phi i32 [ %i.y, %bb.k ], [ %i.s, %.lr.ph ]
  %i.t = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not24.us = icmp eq i32 %i.t, 0
  br i1 %.not24.us, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.u = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.v = and i32 %i.u, 192
  %or.cond.us = icmp eq i32 %i.v, 128
  br i1 %or.cond.us, label %bb.k, label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.w = shl i32 %.11730.us, 6
  %i.x = and i32 %i.u, 63
  %i.y = or disjoint i32 %i.x, %i.w               ; 2 uses
  %i.z = add nsw i32 %.131.us, -1                 ; 2 uses
  %.not23.us = icmp eq i32 %i.z, 0
  br i1 %.not23.us, label %.loopexit.sink.split, label %.lr.ph.split.us, !llvm.loop !53

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.131 = phi i32 [ %i.al, %bb.m ], [ %.0.ph, %.lr.ph ]
  %.11730 = phi i32 [ %i.ak, %bb.m ], [ %i.s, %.lr.ph ]
  %i.aa = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not24 = icmp eq i32 %i.aa, 0
  br i1 %.not24, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = load i32, ptr %3, align 4, !tbaa !21    ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %3, align 4, !tbaa !21
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  store i8 %i.ac, ptr %i.ag, align 1, !tbaa !31
  %i.ah = and i32 %i.ab, 192
  %or.cond = icmp eq i32 %i.ah, 128
  br i1 %or.cond, label %bb.m, label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ai = shl i32 %.11730, 6
  %i.aj = and i32 %i.ab, 63
  %i.ak = or disjoint i32 %i.aj, %i.ai            ; 2 uses
  %i.al = add nsw i32 %.131, -1                   ; 2 uses
  %.not23 = icmp eq i32 %i.al, 0
  br i1 %.not23, label %.loopexit.sink.split, label %.lr.ph.split, !llvm.loop !53

.loopexit.sink.split:                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.d, %bb.i
  %.117.lcssa.sink = phi i32 [ %.pre, %bb.d ], [ -1, %bb.i ], [ -1, %bb.j ], [ %i.y, %bb.k ], [ -1, %bb.l ], [ %i.ak, %bb.m ]
  store i32 %.117.lcssa.sink, ptr %1, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.loopexit.sink.split, %bb.a
  %.018 = phi i32 [ 0, %.lr.ph.split.us ], [ 0, %bb.a ], [ 1, %.loopexit.sink.split ], [ 0, %.lr.ph.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.018
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_utf8_uint64(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq ptr %2, null                  ; 2 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !21  ; 14 uses
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i32 %.pre to i8
  %i.d = load i32, ptr %3, align 4, !tbaa !21     ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %3, align 4, !tbaa !21
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store i8 %i.c, ptr %i.g, align 1, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %.pre, 128
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %.pre, 224
  %i.j = icmp eq i32 %i.i, 192
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %.pre, 31
  br label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.l = and i32 %.pre, 240
  %i.m = icmp eq i32 %i.l, 224
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %.pre, 15
  br label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.o = and i32 %.pre, 248
  %i.p = icmp eq i32 %i.o, 240
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = and i32 %.pre, 7
  br label %.lr.ph

bb.k:                                             ; preds = %bb.i
  %i.r = and i32 %.pre, 252
  %i.s = icmp eq i32 %i.r, 248
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = and i32 %.pre, 3
  br label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.u = and i32 %.pre, 254
  %i.v = icmp eq i32 %i.u, 252
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = and i32 %.pre, 1
  br label %.lr.ph

bb.o:                                             ; preds = %bb.m
end_hunk_0
