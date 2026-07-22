inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@JPEGCleanup:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !44
  %i.f = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store ptr %i.h, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.k = load i32, ptr %i.j, align 8, !tbaa !67
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @TIFFjpeg_destroy(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.n) #16
  store ptr null, ptr %i.a, align 8, !tbaa !29
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @JPEGDefaultStripSize(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = tail call i32 %i.d(ptr noundef %0, i32 noundef %1) #16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.j = load i16, ptr %i.i, align 2, !tbaa !79
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 3                  ; 3 uses
  %i.m = sub nsw i32 0, %i.l
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.e, -1
  %i.p = add i32 %i.o, %i.l
  %.fr = freeze i32 %i.p                          ; 2 uses
  %i.q = urem i32 %.fr, %i.l
  %i.r = sub nuw i32 %.fr, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.r, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @JPEGDefaultTileSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  tail call void %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %i.e = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load i16, ptr %i.f, align 8, !tbaa !79
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 3                  ; 3 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = icmp ult i32 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.i
  %.fr = freeze i32 %i.m                          ; 2 uses
  %i.n = urem i32 %.fr, %i.i
  %i.o = sub nuw i32 %.fr, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]
  store i32 %i.p, ptr %1, align 4, !tbaa !3
  %i.q = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.s = load i16, ptr %i.r, align 2, !tbaa !79
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 3                  ; 3 uses
  %i.v = sub nsw i32 0, %i.u
  %i.w = icmp ult i32 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.q, -1
  %i.y = add i32 %i.x, %i.u
  %.fr21 = freeze i32 %i.y                        ; 2 uses
  %i.z = urem i32 %.fr21, %i.u
  %i.aa = sub nuw i32 %.fr21, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ab = phi i32 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  store i32 %i.ab, ptr %2, align 4, !tbaa !3
  ret void
}

declare void @_TIFFsetByteArrayExt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @TIFFFieldWithTag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #3

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i64 @TIFFGetStrileOffset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @TIFFGetStrileByteCount(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_abort(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_abort(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare i64 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal noundef i32 @DecodeRowError(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, i16 zeroext %3) #0 {
bb.a:
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGDecodeRaw(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !141
  %i.i = sub i32 %i.f, %i.h                       ; 2 uses
  %i.j = icmp ugt i32 %i.d, %i.i
  br i1 %i.j, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66
  %i.m = and i32 %i.l, 1024
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  %.0115.in = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.not137 = icmp eq i32 %.0115.in, 0
  br i1 %.not137, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.b, %select.unfold
  %.0115.in143 = phi i32 [ %.0115.in, %select.unfold ], [ %i.d, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !189  ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !177  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.aa) #16 ; 17 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread152, label %.preheader161

.preheader161:                                    ; preds = %.thread
  %.0115 = zext i32 %.0115.in143 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 412
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 2 uses
  %.not139165 = icmp eq i32 %i.q, 0               ; 2 uses
  %i.ah = sext i32 %i.s to i64                    ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !142
  %4 = add i32 %i.q, -1
  %5 = zext i32 %4 to i64                         ; 2 uses
  %6 = mul nsw i64 %i.ah, %5
  %i.ak = shl nuw nsw i64 %5, 1
  %7 = add nuw nsw i64 %i.ak, 2
  %stride.check = icmp slt i32 %i.s, 0
  %xtraiter308 = and i32 %i.q, 7                  ; 2 uses
  %lcmp.mod309.not = icmp eq i32 %xtraiter308, 0
  %i.al = icmp ult i32 %i.q, 8
  br label %bb.c

.thread152:                                       ; preds = %.thread
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #16
  br label %bb.l

bb.c:                                             ; preds = %.preheader161, %.loopexit159
  %i.am = phi i64 [ %i.hc, %.loopexit159 ], [ %.pre, %.preheader161 ]
  %.1116 = phi i64 [ %i.hg, %.loopexit159 ], [ %.0115, %.preheader161 ]
  %.0113 = phi i64 [ %i.he, %.loopexit159 ], [ %2, %.preheader161 ] ; 2 uses
  %.0110 = phi ptr [ %i.hd, %.loopexit159 ], [ %1, %.preheader161 ] ; 11 uses
  %i.an = icmp slt i64 %.0113, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #16
  br label %.loopexit162

bb.e:                                             ; preds = %bb.c
  %i.ao = load i32, ptr %i.ae, align 8, !tbaa !149 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 7
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ar = shl nsw i32 %i.aq, 3                    ; 2 uses
  %i.as = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ag, i32 noundef %i.ar)
  %.not138 = icmp eq i32 %i.as, %i.ar
  br i1 %.not138, label %.thread144, label %.loopexit162

.thread144:                                       ; preds = %bb.f
  store i32 0, ptr %i.ae, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %.thread144, %bb.e
  %i.at = phi i32 [ 0, %.thread144 ], [ %i.ao, %bb.e ]
  %i.au = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge176
  %indvars.iv229 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next230, %._crit_edge176 ] ; 2 uses
  %.0130190 = phi ptr [ %i.aw, %.lr.ph.preheader ], [ %i.em, %._crit_edge176 ] ; 3 uses
  %.0131189 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1132.lcssa, %._crit_edge176 ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0130190, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !144 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0130190, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !146 ; 7 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv229
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !175 ; 2 uses
  %i.be = mul nsw i32 %i.at, %i.ba                ; 2 uses
  %i.bf = icmp eq i32 %i.ay, 1
  %i.bg = icmp sgt i32 %i.ay, 0
  br i1 %i.bf, label %.lr.ph175.split.us, label %.lr.ph175.split

.lr.ph175.split.us:                               ; preds = %.lr.ph175
  br i1 %.not139165, label %.preheader156.us.us.preheader, label %.preheader156.us.preheader

.preheader156.us.preheader:                       ; preds = %.lr.ph175.split.us
  %i.bh = sext i32 %i.be to i64
  %i.bi = sext i32 %.0131189 to i64
  %wide.trip.count227 = zext nneg i32 %i.ba to i64
  %invariant.gep258 = getelementptr [8 x i8], ptr %i.bd, i64 %i.bh
  br label %.preheader156.us

.preheader156.us.us.preheader:                    ; preds = %.lr.ph175.split.us
  %i.bj = add i32 %.0131189, %i.ba
  br label %._crit_edge176

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv222 = phi i64 [ %i.bi, %.preheader156.us.preheader ], [ %indvars.iv.next223, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv220 = phi i64 [ 0, %.preheader156.us.preheader ], [ %indvars.iv.next221, %..loopexit_crit_edge.us ] ; 2 uses
  %gep259 = getelementptr [8 x i8], ptr %invariant.gep258, i64 %indvars.iv220
  %i.bk = load ptr, ptr %gep259, align 8, !tbaa !151 ; 2 uses
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv222 ; 2 uses
  br i1 %lcmp.mod309.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader156.us, %.prol.preheader
  %.0119171.us.prol = phi ptr [ %i.bp, %.prol.preheader ], [ %i.bl, %.preheader156.us ] ; 2 uses
  %.0121170.us.prol = phi i32 [ %i.bm, %.prol.preheader ], [ %i.q, %.preheader156.us ]
  %.0123169.us.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bk, %.preheader156.us ] ; 2 uses
  %prol.iter310 = phi i32 [ %prol.iter310.next, %.prol.preheader ], [ 0, %.preheader156.us ]
  %i.bm = add i32 %.0121170.us.prol, -1           ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0123169.us.prol, i64 2 ; 2 uses
  %i.bo = load i16, ptr %.0123169.us.prol, align 2, !tbaa !79
  store i16 %i.bo, ptr %.0119171.us.prol, align 2, !tbaa !79
  %i.bp = getelementptr inbounds [2 x i8], ptr %.0119171.us.prol, i64 %i.ah ; 2 uses
  %prol.iter310.next = add i32 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i32 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !190

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader156.us
  %.0119171.us.unr = phi ptr [ %i.bl, %.preheader156.us ], [ %i.bp, %.prol.preheader ]
  %.0121170.us.unr = phi i32 [ %i.q, %.preheader156.us ], [ %i.bm, %.prol.preheader ]
  %.0123169.us.unr = phi ptr [ %i.bk, %.preheader156.us ], [ %i.bn, %.prol.preheader ]
  br i1 %i.al, label %..loopexit_crit_edge.us, label %.preheader156.us.new

.preheader156.us.new:                             ; preds = %.prol.loopexit, %.preheader156.us.new
  %.0119171.us = phi ptr [ %i.co, %.preheader156.us.new ], [ %.0119171.us.unr, %.prol.loopexit ] ; 2 uses
  %.0121170.us = phi i32 [ %i.cl, %.preheader156.us.new ], [ %.0121170.us.unr, %.prol.loopexit ]
  %.0123169.us = phi ptr [ %i.cm, %.preheader156.us.new ], [ %.0123169.us.unr, %.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 2
  %i.br = load i16, ptr %.0123169.us, align 2, !tbaa !79
  store i16 %i.br, ptr %.0119171.us, align 2, !tbaa !79
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0119171.us, i64 %i.ah ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 4
  %i.bu = load i16, ptr %i.bq, align 2, !tbaa !79
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !79
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.ah ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 6
  %i.bx = load i16, ptr %i.bt, align 2, !tbaa !79
  store i16 %i.bx, ptr %i.bv, align 2, !tbaa !79
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.ah ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 8
  %i.ca = load i16, ptr %i.bw, align 2, !tbaa !79
  store i16 %i.ca, ptr %i.by, align 2, !tbaa !79
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ah ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 10
  %i.cd = load i16, ptr %i.bz, align 2, !tbaa !79
  store i16 %i.cd, ptr %i.cb, align 2, !tbaa !79
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.ah ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 12
  %i.cg = load i16, ptr %i.cc, align 2, !tbaa !79
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !79
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.ah ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 14
  %i.cj = load i16, ptr %i.cf, align 2, !tbaa !79
  store i16 %i.cj, ptr %i.ch, align 2, !tbaa !79
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.ah ; 2 uses
  %i.cl = add i32 %.0121170.us, -8                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 16
  %i.cn = load i16, ptr %i.ci, align 2, !tbaa !79
  store i16 %i.cn, ptr %i.ck, align 2, !tbaa !79
  %i.co = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.ah
  %.not140.us.7 = icmp eq i32 %i.cl, 0
  br i1 %.not140.us.7, label %..loopexit_crit_edge.us, label %.preheader156.us.new

..loopexit_crit_edge.us:                          ; preds = %.preheader156.us.new, %.prol.loopexit
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge176.loopexit198, label %.preheader156.us

.lr.ph175.split:                                  ; preds = %.lr.ph175
  br i1 %.not139165, label %.preheader157.us.preheader, label %.lr.ph175.split.split

.preheader157.us.preheader:                       ; preds = %.lr.ph175.split
  %i.cp = mul i32 %i.ba, %i.ay
  %i.cq = add i32 %.0131189, %i.cp
  br label %._crit_edge176

.lr.ph175.split.split:                            ; preds = %.lr.ph175.split
  br i1 %i.bg, label %.preheader157.us182.preheader, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.lr.ph175.split.split
  %i.cr = mul i32 %i.ba, %i.ay
  %i.cs = add i32 %.0131189, %i.cr
  br label %._crit_edge176

.preheader157.us182.preheader:                    ; preds = %.lr.ph175.split.split
  %i.ct = sext i32 %i.be to i64
  %i.cu = sext i32 %.0131189 to i64               ; 3 uses
  %i.cv = zext nneg i32 %i.ay to i64
  %wide.trip.count218 = zext nneg i32 %i.ba to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bd, i64 %i.ct
  %wide.trip.count = zext nneg i32 %i.ay to i64   ; 11 uses
  %8 = shl nsw i64 %i.cu, 1
  %i.cw = shl nuw nsw i64 %wide.trip.count, 1
  %9 = add i64 %6, %i.cu
  %i.cx = add i64 %9, %wide.trip.count
  %i.cy = shl i64 %i.cx, 1
  %10 = mul i64 %7, %wide.trip.count
  %11 = getelementptr i8, ptr %i.ab, i64 %8
  %12 = getelementptr i8, ptr %i.ab, i64 %i.cy
  %min.iters.check274 = icmp ult i32 %i.ay, 4
  %min.iters.check276 = icmp ult i32 %i.ay, 16
  %n.mod.vf278 = and i64 %wide.trip.count, 12
  %n.vec279 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.cz = shl nuw nsw i64 %n.vec279, 1
  %cmp.n286 = icmp eq i64 %n.vec279, %wide.trip.count
  %min.epilog.iters.check292 = icmp eq i64 %n.mod.vf278, 0
  %n.vec295 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.da = shl nuw nsw i64 %n.vec295, 1
  %cmp.n302 = icmp eq i64 %n.vec295, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader157.us182

.preheader157.us182:                              ; preds = %.preheader157.us182.preheader, %..loopexit158_crit_edge.us
  %indvars.iv213 = phi i64 [ %i.cu, %.preheader157.us182.preheader ], [ %indvars.iv.next214, %..loopexit158_crit_edge.us ] ; 2 uses
  %indvars.iv211 = phi i64 [ 0, %.preheader157.us182.preheader ], [ %indvars.iv.next212, %..loopexit158_crit_edge.us ] ; 3 uses
  %i.db = mul i64 %i.cw, %indvars.iv211           ; 2 uses
  %scevgep273 = getelementptr i8, ptr %11, i64 %i.db
  %scevgep274 = getelementptr i8, ptr %12, i64 %i.db
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv211
  %i.dc = load ptr, ptr %gep, align 8, !tbaa !151 ; 3 uses
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv213
  %scevgep275 = getelementptr i8, ptr %i.dc, i64 %10
  %bound0276 = icmp ult ptr %scevgep273, %scevgep275
  %bound1277 = icmp ult ptr %i.dc, %scevgep274
  %found.conflict278 = and i1 %bound0276, %bound1277
  %13 = or i1 %found.conflict278, %stride.check
  br label %iter.check289

vec.epilog.scalar.ph290:                          ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph290 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 5 uses
  %.2125163.us = phi ptr [ %i.dp, %vec.epilog.scalar.ph290 ], [ %.2125163.us.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 2
  %i.df = load i16, ptr %.2125163.us, align 2, !tbaa !79
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 4
  %i.di = load i16, ptr %i.de, align 2, !tbaa !79
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i16 %i.di, ptr %i.dk, align 2, !tbaa !79
  %i.dl = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 6
  %i.dm = load i16, ptr %i.dh, align 2, !tbaa !79
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i16 %i.dm, ptr %i.do, align 2, !tbaa !79
  %i.dp = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 8 ; 2 uses
  %i.dq = load i16, ptr %i.dl, align 2, !tbaa !79
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  store i16 %i.dq, ptr %i.ds, align 2, !tbaa !79
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph290, !llvm.loop !191

iter.check289:                                    ; preds = %.preheader157.us182, %._crit_edge.us
  %.in = phi i32 [ %i.q, %.preheader157.us182 ], [ %i.ei, %._crit_edge.us ]
  %.1120167.us = phi ptr [ %i.dd, %.preheader157.us182 ], [ %i.ej, %._crit_edge.us ] ; 8 uses
  %.1120167.us.a = phi ptr [ %i.dc, %.preheader157.us182 ], [ %.lcssa261, %._crit_edge.us ] ; 5 uses
  %brmerge = select i1 %min.iters.check274, i1 true, i1 %13
  br i1 %brmerge, label %vec.epilog.scalar.ph290.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %iter.check289
  br i1 %min.iters.check276, label %vec.epilog.ph293, label %vector.ph277

vector.ph277:                                     ; preds = %vector.main.loop.iter.check275
  %i.dt = getelementptr i8, ptr %.1120167.us.a, i64 %i.cz ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph277
  %index281 = phi i64 [ 0, %vector.ph277 ], [ %index.next284, %vector.body280 ] ; 3 uses
  %i.du = shl i64 %index281, 1
  %next.gep = getelementptr i8, ptr %.1120167.us.a, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load282 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !79, !alias.scope !192
  %wide.load283 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !79, !alias.scope !192
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %index281 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <8 x i16> %wide.load282, ptr %i.dw, align 2, !tbaa !79, !alias.scope !195, !noalias !192
  store <8 x i16> %wide.load283, ptr %i.dx, align 2, !tbaa !79, !alias.scope !195, !noalias !192
  %index.next284 = add nuw i64 %index281, 16      ; 2 uses
  %i.dy = icmp eq i64 %index.next284, %n.vec279
  br i1 %i.dy, label %middle.block285, label %vector.body280, !llvm.loop !197

middle.block285:                                  ; preds = %vector.body280
  br i1 %cmp.n286, label %._crit_edge.us, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block285
  br i1 %min.epilog.iters.check292, label %vec.epilog.scalar.ph290.preheader, label %vec.epilog.ph293, !prof !160

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check291
  %vec.epilog.resume.val287 = phi i64 [ %n.vec279, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check275 ]
  %i.dz = getelementptr i8, ptr %.1120167.us.a, i64 %i.da ; 2 uses
  br label %vec.epilog.vector.body296

vec.epilog.vector.body296:                        ; preds = %vec.epilog.vector.body296, %vec.epilog.ph293
  %index297 = phi i64 [ %vec.epilog.resume.val287, %vec.epilog.ph293 ], [ %index.next300, %vec.epilog.vector.body296 ] ; 3 uses
  %i.ea = shl i64 %index297, 1
  %next.gep298 = getelementptr i8, ptr %.1120167.us.a, i64 %i.ea
  %wide.load299 = load <4 x i16>, ptr %next.gep298, align 2, !tbaa !79, !alias.scope !192
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %index297
  store <4 x i16> %wide.load299, ptr %i.eb, align 2, !tbaa !79, !alias.scope !195, !noalias !192
  %index.next300 = add nuw i64 %index297, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.ec, label %vec.epilog.middle.block301, label %vec.epilog.vector.body296, !llvm.loop !198

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body296
  br i1 %cmp.n302, label %._crit_edge.us, label %vec.epilog.scalar.ph290.preheader

vec.epilog.scalar.ph290.preheader:                ; preds = %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block301
  %indvars.iv.ph = phi i64 [ 0, %iter.check289 ], [ %n.vec295, %vec.epilog.middle.block301 ], [ %n.vec279, %vec.epilog.iter.check291 ] ; 3 uses
  %.2125163.us.ph = phi ptr [ %.1120167.us.a, %iter.check289 ], [ %i.dz, %vec.epilog.middle.block301 ], [ %i.dt, %vec.epilog.iter.check291 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol

vec.epilog.scalar.ph290.prol:                     ; preds = %vec.epilog.scalar.ph290.preheader, %vec.epilog.scalar.ph290.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph290.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph290.preheader ] ; 2 uses
  %.2125163.us.prol = phi ptr [ %i.ed, %vec.epilog.scalar.ph290.prol ], [ %.2125163.us.ph, %vec.epilog.scalar.ph290.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph290.prol ], [ 0, %vec.epilog.scalar.ph290.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.2125163.us.prol, i64 2 ; 3 uses
  %i.ee = load i16, ptr %.2125163.us.prol, align 2, !tbaa !79
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv.prol
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol, !llvm.loop !199

vec.epilog.scalar.ph290.prol.loopexit:            ; preds = %vec.epilog.scalar.ph290.prol, %vec.epilog.scalar.ph290.preheader
  %.lcssa306.unr = phi ptr [ poison, %vec.epilog.scalar.ph290.preheader ], [ %i.ed, %vec.epilog.scalar.ph290.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph290.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph290.prol ]
  %.2125163.us.unr = phi ptr [ %.2125163.us.ph, %vec.epilog.scalar.ph290.preheader ], [ %i.ed, %vec.epilog.scalar.ph290.prol ]
  %i.eg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge.us, label %vec.epilog.scalar.ph290

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290, %vec.epilog.middle.block301, %middle.block285
  %.lcssa261 = phi ptr [ %i.dz, %vec.epilog.middle.block301 ], [ %i.dt, %middle.block285 ], [ %.lcssa306.unr, %vec.epilog.scalar.ph290.prol.loopexit ], [ %i.dp, %vec.epilog.scalar.ph290 ]
  %i.ei = add i32 %.in, -1                        ; 2 uses
  %i.ej = getelementptr inbounds [2 x i8], ptr %.1120167.us, i64 %i.ah
  %.not139.us = icmp eq i32 %i.ei, 0
  br i1 %.not139.us, label %..loopexit158_crit_edge.us, label %iter.check289

..loopexit158_crit_edge.us:                       ; preds = %._crit_edge.us
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, %i.cv ; 2 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge176.loopexit200, label %.preheader157.us182

._crit_edge176.loopexit198:                       ; preds = %..loopexit_crit_edge.us
  %i.ek = trunc nsw i64 %indvars.iv.next223 to i32
  br label %._crit_edge176

._crit_edge176.loopexit200:                       ; preds = %..loopexit158_crit_edge.us
  %i.el = trunc nsw i64 %indvars.iv.next214 to i32
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %.preheader157.preheader, %._crit_edge176.loopexit200, %.preheader157.us.preheader, %._crit_edge176.loopexit198, %.preheader156.us.us.preheader, %.lr.ph
  %.1132.lcssa = phi i32 [ %.0131189, %.lr.ph ], [ %i.bj, %.preheader156.us.us.preheader ], [ %i.el, %._crit_edge176.loopexit200 ], [ %i.ek, %._crit_edge176.loopexit198 ], [ %i.cq, %.preheader157.us.preheader ], [ %i.cs, %.preheader157.preheader ]
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0130190, i64 96
  %i.en = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next230, %i.eo
  br i1 %i.ep, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge176, %bb.g
  %.lcssa = phi i32 [ %i.au, %bb.g ], [ %i.en, %._crit_edge176 ]
  %i.eq = load i32, ptr %i.ai, align 8, !tbaa !21
  %i.er = icmp eq i32 %i.eq, 8
  %i.es = load i32, ptr %i.t, align 8, !tbaa !21
  %i.et = mul i32 %i.es, %.lcssa                  ; 5 uses
  br i1 %i.er, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %iter.check, label %.loopexit159

iter.check:                                       ; preds = %bb.h
  %wide.trip.count240 = zext nneg i32 %i.et to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %i.et, 4
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.0110, i64 %wide.trip.count240
  %i.ev = shl nuw nsw i64 %wide.trip.count240, 1
  %scevgep263 = getelementptr i8, ptr %i.ab, i64 %i.ev
  %bound0 = icmp ult ptr %.0110, %scevgep263
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check264 = icmp ult i32 %i.et, 16
  br i1 %min.iters.check264, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count240, 12
  %n.vec = and i64 %wide.trip.count240, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <8 x i16>, ptr %i.ew, align 2, !tbaa !79, !alias.scope !200
  %wide.load265 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !79, !alias.scope !200
  %i.ey = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ez = trunc <8 x i16> %wide.load265 to <8 x i8>
  %i.fa = getelementptr inbounds nuw i8, ptr %.0110, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store <8 x i8> %i.ey, ptr %i.fa, align 1, !tbaa !21, !alias.scope !203, !noalias !200
  store <8 x i8> %i.ez, ptr %i.fb, align 1, !tbaa !21, !alias.scope !203, !noalias !200
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count240
  br i1 %cmp.n, label %.loopexit159, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec267 = and i64 %wide.trip.count240, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next270, %vec.epilog.vector.body ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index268
  %wide.load269 = load <4 x i16>, ptr %i.fd, align 2, !tbaa !79, !alias.scope !200
  %i.fe = trunc <4 x i16> %wide.load269 to <4 x i8>
  %i.ff = getelementptr inbounds nuw i8, ptr %.0110, i64 %index268
  store <4 x i8> %i.fe, ptr %i.ff, align 1, !tbaa !21, !alias.scope !203, !noalias !200
  %index.next270 = add nuw i64 %index268, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next270, %n.vec267
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !206

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n271 = icmp eq i64 %n.vec267, %wide.trip.count240
  br i1 %cmp.n271, label %.loopexit159, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv237.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec267, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count240, 3   ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %indvars.iv237.prol = phi i64 [ %indvars.iv.next238.prol, %.lr.ph196.prol ], [ %indvars.iv237.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter313 = phi i64 [ %prol.iter313.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv237.prol
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !79
  %i.fj = trunc i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.0110, i64 %indvars.iv237.prol
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !21
  %indvars.iv.next238.prol = add nuw nsw i64 %indvars.iv237.prol, 1 ; 2 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !207

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %indvars.iv237.unr = phi i64 [ %indvars.iv237.ph, %.lr.ph196.preheader ], [ %indvars.iv.next238.prol, %.lr.ph196.prol ]
  %i.fl = sub nsw i64 %indvars.iv237.ph, %wide.trip.count240
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit159, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %indvars.iv237 = phi i64 [ %indvars.iv.next238.3, %.lr.ph196 ], [ %indvars.iv237.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv237
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !79
  %i.fp = trunc i16 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.0110, i64 %indvars.iv237
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !21
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next238
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !79
  %i.ft = trunc i16 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.0110, i64 %indvars.iv.next238
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !21
  %indvars.iv.next238.1 = add nuw nsw i64 %indvars.iv237, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next238.1
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !79
  %i.fx = trunc i16 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0110, i64 %indvars.iv.next238.1
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !21
  %indvars.iv.next238.2 = add nuw nsw i64 %indvars.iv237, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next238.2
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !79
  %i.gb = trunc i16 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.0110, i64 %indvars.iv.next238.2
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %indvars.iv.next238.3 = add nuw nsw i64 %indvars.iv237, 4 ; 2 uses
  %exitcond241.not.3 = icmp eq i64 %indvars.iv.next238.3, %wide.trip.count240
  br i1 %exitcond241.not.3, label %.loopexit159, label %.lr.ph196, !llvm.loop !208

bb.i:                                             ; preds = %._crit_edge
  %i.gd = lshr i32 %i.et, 1                       ; 2 uses
  %.not197 = icmp eq i32 %i.gd, 0
  br i1 %.not197, label %.loopexit159, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %bb.i
  %wide.trip.count235 = zext nneg i32 %i.gd to i64
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %.lr.ph193
  %indvars.iv232 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next233, %.lr.ph193 ] ; 3 uses
  %i.ge = mul nuw nsw i64 %indvars.iv232, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %.0110, i64 %i.ge ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv232, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 3 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !79
  %i.gi = lshr i16 %i.gh, 4
  %i.gj = trunc i16 %i.gi to i8
  store i8 %i.gj, ptr %i.gf, align 1, !tbaa !21
  %i.gk = load i16, ptr %i.gg, align 2, !tbaa !79
  %i.gl = shl i16 %i.gk, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 2 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !79
  %i.go = lshr i16 %i.gn, 8
  %i.gp = and i16 %i.go, 15
  %i.gq = or disjoint i16 %i.gp, %i.gl
  %i.gr = trunc i16 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !21
  %i.gt = load i16, ptr %i.gm, align 2, !tbaa !79
  %i.gu = trunc i16 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !21
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.loopexit159, label %.lr.ph193

.loopexit159:                                     ; preds = %.lr.ph193, %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block, %vec.epilog.middle.block, %bb.i, %bb.h
  %i.gw = load i32, ptr %i.ae, align 8, !tbaa !149
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.ae, align 8, !tbaa !149
  %i.gy = load i16, ptr %i.aj, align 4, !tbaa !81 ; 2 uses
  %i.gz = zext i16 %i.gy to i32
  %i.ha = load i32, ptr %i.g, align 4, !tbaa !141
  %i.hb = add i32 %i.ha, %i.gz
  store i32 %i.hb, ptr %i.g, align 4, !tbaa !141
  %i.hc = load i64, ptr %i.ad, align 8, !tbaa !142 ; 3 uses
  %i.hd = getelementptr inbounds i8, ptr %.0110, i64 %i.hc
  %i.he = sub nsw i64 %.0113, %i.hc
  %i.hf = zext i16 %i.gy to i64
  %i.hg = sub nsw i64 %.1116, %i.hf               ; 2 uses
  %i.hh = icmp sgt i64 %i.hg, 0
  br i1 %i.hh, label %bb.c, label %.thread154

.thread154:                                       ; preds = %.loopexit159
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ab) #16
  br label %bb.j

bb.j:                                             ; preds = %.thread154, %select.unfold
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !21
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !21
  %i.hm = icmp ult i32 %i.hj, %i.hl
  br i1 %i.hm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hn = tail call fastcc i32 @TIFFjpeg_finish_decompress(ptr noundef nonnull %i.b)
  %i.ho = icmp ne i32 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  br label %bb.l

.loopexit162:                                     ; preds = %bb.f, %bb.d
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ab) #16
  br label %bb.l

bb.l:                                             ; preds = %.thread152, %bb.j, %bb.k, %.loopexit162
  %.1 = phi i32 [ 0, %.thread152 ], [ 0, %.loopexit162 ], [ 1, %bb.j ], [ %i.hp, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_start_decompress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !21
  store ptr @TIFFjpeg_progress_monitor, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  store i32 100, ptr %i.c, align 4, !tbaa !210
  %i.d = call ptr @getenv(ptr noundef nonnull @.str.30) #16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #16, !inline_history !211
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr %i.c, align 4, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = call i32 @_setjmp(ptr noundef nonnull %i.g) #17
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @jpeg_start_decompress(ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @alloc_downsampled_buffers(ptr %.1072.val, ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.1072.val, i64 1184
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.04 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.c ]
  %.0193 = phi ptr [ %0, %.lr.ph ], [ %i.p, %bb.c ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0193, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %.0193, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0193, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !147
  %i.i = shl i32 %i.h, 3
  %i.j = shl nsw i32 %i.f, 3
  %i.k = tail call fastcc ptr @TIFFjpeg_alloc_sarray(ptr noundef %.1072.val, i32 noundef %i.i, i32 noundef %i.j) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = mul nsw i32 %i.f, %i.d
  %i.n = add nsw i32 %i.m, %.04                   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.k, ptr %i.o, align 8, !tbaa !175
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0193, i64 96
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.1072.val, i64 1268
  store i32 %.0.lcssa, ptr %i.q, align 4, !tbaa !177
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.018 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg12_read_raw_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_finish_decompress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_finish_decompress(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg12_read_raw_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @TIFFjpeg_progress_monitor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !212
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !213  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.f = load i32, ptr %i.e, align 4, !tbaa !210  ; 2 uses
  %.not10 = icmp slt i32 %i.d, %i.f
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.h, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %i.d, i32 noundef %i.f) #16
  tail call void @jpeg_abort(ptr noundef nonnull %0) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @longjmp(ptr noundef nonnull %i.i, i32 noundef 1) #18
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc ptr @TIFFjpeg_alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214
  %i.g = call ptr %i.f(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_read_scanlines(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg12_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_colorspace(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_quality(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGEncodeRaw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.d = load i32, ptr %i.c, align 4, !tbaa !177  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !178
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !150
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull @.str.35) #16
  br label %.loopexit108

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.l = load i16, ptr %i.k, align 2, !tbaa !80
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = sdiv i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1172 ; 3 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !81
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, %i.m
  %i.u = add nuw nsw i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.p, %i.x
  %i.z = mul i64 %i.y, %i.u
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = sdiv i64 %i.aa, 8                       ; 4 uses
  %i.ac = sdiv i64 %2, %i.ab
  %i.ad = mul nsw i64 %i.ac, %i.s                 ; 3 uses
  %i.ae = srem i64 %2, %i.ab
  %.not101 = icmp eq i64 %i.ae, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %0, align 8, !tbaa !150
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull @.str.36) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 140
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !189
  %.fr = freeze i32 %i.aj                         ; 8 uses
  %i.ak = icmp sgt i64 %i.ad, 0
  br i1 %i.ak, label %.lr.ph157, label %.loopexit108

.lr.ph157:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 8 uses
  %.not103111 = icmp eq i32 %.fr, 0
  %i.ao = sext i32 %i.d to i64                    ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %.not103111, label %.lr.ph157.split.us, label %.lr.ph157.split.preheader

.lr.ph157.split.preheader:                        ; preds = %.lr.ph157
  %4 = add i32 %.fr, -1
  %5 = zext i32 %4 to i64                         ; 2 uses
  %6 = shl nuw nsw i64 %5, 1
  %7 = add nuw nsw i64 %6, 2
  %i.ar = mul nsw i64 %i.ao, %5
  %8 = shl i64 %i.ar, 1
  %9 = getelementptr i8, ptr %1, i64 %8
  %stride.check = icmp slt i32 %i.d, 0
  %xtraiter269 = and i32 %.fr, 7                  ; 2 uses
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  %i.as = icmp ult i32 %.fr, 8
  br label %.lr.ph157.split

.lr.ph157.split.us:                               ; preds = %.lr.ph157, %bb.g
  %.089153.us = phi i64 [ %i.bh, %bb.g ], [ %i.ad, %.lr.ph157 ]
  %i.at = load i32, ptr %i.al, align 4, !tbaa !21
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.us158.preheader, label %._crit_edge144.split.us.us

.lr.ph.us158.preheader:                           ; preds = %.lr.ph157.split.us
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !21
  br label %.lr.ph.us158

._crit_edge144.split.us.us:                       ; preds = %._crit_edge126.us.us, %.lr.ph157.split.us
  %i.aw = load i32, ptr %i.an, align 8, !tbaa !149 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.an, align 8, !tbaa !149
  %i.ay = icmp sgt i32 %i.aw, 6
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge144.split.us.us
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.ba = shl nsw i32 %i.az, 3                    ; 2 uses
  %i.bb = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.am, i32 noundef %i.ba)
  %.not102.us = icmp eq i32 %i.bb, %i.ba
  br i1 %.not102.us, label %.thread.us, label %.split.us

.thread.us:                                       ; preds = %bb.f
  store i32 0, ptr %i.an, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %.thread.us, %._crit_edge144.split.us.us
  %i.bc = load i16, ptr %i.q, align 4, !tbaa !81  ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.bf = add i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.aq, align 4, !tbaa !141
  %i.bg = zext i16 %i.bc to i64
  %i.bh = sub nsw i64 %.089153.us, %i.bg          ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph157.split.us, label %.loopexit108

.lr.ph.us158:                                     ; preds = %.lr.ph.us158.preheader, %._crit_edge126.us.us
  %indvars.iv212 = phi i64 [ 0, %.lr.ph.us158.preheader ], [ %indvars.iv.next213, %._crit_edge126.us.us ] ; 2 uses
  %.092142.us.us = phi ptr [ %i.av, %.lr.ph.us158.preheader ], [ %i.bp, %._crit_edge126.us.us ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !146 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !147
  %i.bn = shl i32 %i.bm, 3                        ; 3 uses
  %i.bo = icmp sgt i32 %i.bk, 0
  br i1 %i.bo, label %.lr.ph125.us.us, label %._crit_edge126.us.us

._crit_edge126.us.us:                             ; preds = %._crit_edge.us136.us.us.us, %._crit_edge.us129.us.us, %.lr.ph125.split.us145.us, %.lr.ph.us158
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 96
  %i.bq = load i32, ptr %i.al, align 4, !tbaa !21
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next213, %i.br
  br i1 %i.bs, label %.lr.ph.us158, label %._crit_edge144.split.us.us

.lr.ph125.us.us:                                  ; preds = %.lr.ph.us158
  %i.bt = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !144
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv212
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !175 ; 2 uses
  %i.bx = load i32, ptr %i.an, align 8, !tbaa !149
  %i.by = mul nsw i32 %i.bx, %i.bk                ; 2 uses
  %i.bz = icmp eq i32 %i.bu, 1
  %i.ca = icmp sgt i32 %i.bn, 0                   ; 2 uses
  br i1 %i.bz, label %.preheader105.us.us.us.preheader, label %.lr.ph125.split.us145.us

.preheader105.us.us.us.preheader:                 ; preds = %.lr.ph125.us.us
  %i.cb = sext i32 %i.by to i64
  %wide.trip.count210 = zext nneg i32 %i.bk to i64
  %invariant.gep232 = getelementptr [8 x i8], ptr %i.bw, i64 %i.cb
  br label %.loopexit.us.us.us

.lr.ph125.split.us145.us:                         ; preds = %.lr.ph125.us.us
  br i1 %i.ca, label %.preheader106.us.us.us.us.preheader, label %._crit_edge126.us.us

.preheader106.us.us.us.us.preheader:              ; preds = %.lr.ph125.split.us145.us
  %i.cc = sext i32 %i.by to i64
  %wide.trip.count200 = zext nneg i32 %i.bk to i64
  %invariant.gep230 = getelementptr [8 x i8], ptr %i.bw, i64 %i.cc
  br label %.preheader106.us.us.us.us

._crit_edge.us129.us.us:                          ; preds = %.lr.ph121.us.us.us, %.loopexit.us.us.us
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge126.us.us, label %.loopexit.us.us.us

.lr.ph121.us.us.us:                               ; preds = %.lr.ph121.us.us.us, %.lr.ph121.us.us.us.preheader
  %.4120.us.us.us = phi ptr [ %i.cm, %.lr.ph121.us.us.us.preheader ], [ %i.ck, %.lr.ph121.us.us.us ] ; 9 uses
  %.195119.us.us.us = phi i32 [ 0, %.lr.ph121.us.us.us.preheader ], [ %i.cl, %.lr.ph121.us.us.us ]
  store i16 %load_initial253, ptr %.4120.us.us.us, align 2, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 2
  store i16 %load_initial253, ptr %i.cd, align 2, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 4
  store i16 %load_initial253, ptr %i.ce, align 2, !tbaa !79
  %i.cf = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 6
  store i16 %load_initial253, ptr %i.cf, align 2, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 8
  store i16 %load_initial253, ptr %i.cg, align 2, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 10
  store i16 %load_initial253, ptr %i.ch, align 2, !tbaa !79
  %i.ci = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 12
  store i16 %load_initial253, ptr %i.ci, align 2, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 14
  store i16 %load_initial253, ptr %i.cj, align 2, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 16
  %i.cl = add nuw nsw i32 %.195119.us.us.us, 8    ; 2 uses
  %exitcond202.not.7 = icmp eq i32 %i.cl, %i.bn
  br i1 %exitcond202.not.7, label %._crit_edge.us129.us.us, label %.lr.ph121.us.us.us

.loopexit.us.us.us:                               ; preds = %._crit_edge.us129.us.us, %.preheader105.us.us.us.preheader
  %indvars.iv203 = phi i64 [ 0, %.preheader105.us.us.us.preheader ], [ %indvars.iv.next204, %._crit_edge.us129.us.us ] ; 2 uses
  br i1 %i.ca, label %.lr.ph121.us.us.us.preheader, label %._crit_edge.us129.us.us

.lr.ph121.us.us.us.preheader:                     ; preds = %.loopexit.us.us.us
  %gep233 = getelementptr [8 x i8], ptr %invariant.gep232, i64 %indvars.iv203
  %i.cm = load ptr, ptr %gep233, align 8, !tbaa !151 ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.cm, i64 -2
  %load_initial253 = load i16, ptr %scevgep252, align 2 ; 8 uses
  br label %.lr.ph121.us.us.us

.preheader106.us.us.us.us:                        ; preds = %.preheader106.us.us.us.us.preheader, %._crit_edge.us136.us.us.us
  %indvars.iv197 = phi i64 [ 0, %.preheader106.us.us.us.us.preheader ], [ %indvars.iv.next198, %._crit_edge.us136.us.us.us ] ; 2 uses
  %gep231 = getelementptr [8 x i8], ptr %invariant.gep230, i64 %indvars.iv197
  %i.cn = load ptr, ptr %gep231, align 8, !tbaa !151 ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.cn, i64 -2
  %load_initial = load i16, ptr %scevgep.a, align 2 ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader106.us.us.us.us
  %.4120.us133.us.us.us = phi ptr [ %i.cn, %.preheader106.us.us.us.us ], [ %i.cv, %bb.h ] ; 9 uses
  %.195119.us134.us.us.us = phi i32 [ 0, %.preheader106.us.us.us.us ], [ %i.cw, %bb.h ]
  store i16 %load_initial, ptr %.4120.us133.us.us.us, align 2, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 2
  store i16 %load_initial, ptr %i.co, align 2, !tbaa !79
  %i.cp = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 4
  store i16 %load_initial, ptr %i.cp, align 2, !tbaa !79
  %i.cq = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 6
  store i16 %load_initial, ptr %i.cq, align 2, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 8
  store i16 %load_initial, ptr %i.cr, align 2, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 10
  store i16 %load_initial, ptr %i.cs, align 2, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 12
  store i16 %load_initial, ptr %i.ct, align 2, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 14
  store i16 %load_initial, ptr %i.cu, align 2, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 16
  %i.cw = add nuw nsw i32 %.195119.us134.us.us.us, 8 ; 2 uses
  %exitcond196.not.7 = icmp eq i32 %i.cw, %i.bn
  br i1 %exitcond196.not.7, label %._crit_edge.us136.us.us.us, label %bb.h

._crit_edge.us136.us.us.us:                       ; preds = %bb.h
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %._crit_edge126.us.us, label %.preheader106.us.us.us.us

.lr.ph157.split:                                  ; preds = %.lr.ph157.split.preheader, %bb.j
  %indvar = phi i64 [ 0, %.lr.ph157.split.preheader ], [ %indvar.next, %bb.j ] ; 2 uses
  %.081154 = phi ptr [ %1, %.lr.ph157.split.preheader ], [ %i.in, %bb.j ] ; 3 uses
  %.089153 = phi i64 [ %i.ad, %.lr.ph157.split.preheader ], [ %i.ip, %bb.j ]
  %i.cx = mul i64 %i.ab, %indvar                  ; 2 uses
  %i.cy = load i32, ptr %i.al, align 4, !tbaa !21
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.preheader, label %._crit_edge144.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157.split
  %i.da = load ptr, ptr %i.ag, align 8, !tbaa !21
  %10 = getelementptr i8, ptr %1, i64 %i.cx
  %11 = getelementptr i8, ptr %9, i64 %i.cx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge126
  %indvars.iv193 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next194, %._crit_edge126 ] ; 2 uses
  %.092142 = phi ptr [ %i.da, %.lr.ph.preheader ], [ %i.hz, %._crit_edge126 ] ; 4 uses
  %.097140 = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.lcssa, %._crit_edge126 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.092142, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !144 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.092142, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !146 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.092142, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !147
  %i.dh = shl i32 %i.dg, 3                        ; 3 uses
  %i.di = mul i32 %i.dc, %.fr                     ; 3 uses
  %i.dj = sub i32 %i.dh, %i.di                    ; 5 uses
  %i.dk = icmp sgt i32 %i.de, 0
  br i1 %i.dk, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv193
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !175 ; 2 uses
  %i.dn = load i32, ptr %i.an, align 8, !tbaa !149
  %i.do = mul nsw i32 %i.dn, %i.de
  %i.dp = icmp eq i32 %i.dc, 1
  %i.dq = icmp sgt i32 %i.dc, 0
  %i.dr = icmp sgt i32 %i.dj, 0                   ; 2 uses
  %i.ds = sext i32 %i.do to i64                   ; 2 uses
  %i.dt = sext i32 %.097140 to i64                ; 3 uses
  br i1 %i.dp, label %.preheader105.us.preheader, label %.preheader106.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.du = sext i32 %i.dc to i64                   ; 2 uses
  %wide.trip.count181 = zext nneg i32 %i.de to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.dm, i64 %i.ds
  %wide.trip.count = zext i32 %i.dc to i64        ; 10 uses
  %.neg = mul i64 %7, %wide.trip.count
  %12 = shl nsw i64 %i.dt, 1                      ; 2 uses
  %13 = shl nsw i64 %i.du, 1
  %14 = shl nuw nsw i64 %wide.trip.count, 1
  %15 = getelementptr i8, ptr %10, i64 %12
  %16 = getelementptr i8, ptr %11, i64 %12
  %17 = getelementptr i8, ptr %16, i64 %14
  %min.iters.check = icmp ult i32 %i.dc, 4
  %min.iters.check241 = icmp ult i32 %i.dc, 16
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.dv = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec244 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.dw = shl nuw nsw i64 %n.vec244, 1
  %cmp.n249 = icmp eq i64 %n.vec244, %wide.trip.count
  %xtraiter266 = and i32 %i.dj, 7                 ; 3 uses
  %i.dx = sub i32 %i.di, %i.dh
  %i.dy = icmp ugt i32 %i.dx, -8
  %unroll_iter = and i32 %i.dj, 2147483640
  %lcmp.mod267.not = icmp eq i32 %xtraiter266, 0
  %lcmp.mod268 = icmp ne i32 %xtraiter266, 0
  br label %.preheader106

.preheader105.us.preheader:                       ; preds = %.lr.ph125
  %wide.trip.count191 = zext nneg i32 %i.de to i64
  %invariant.gep228 = getelementptr [8 x i8], ptr %i.dm, i64 %i.ds
  %xtraiter272 = and i32 %i.dj, 7                 ; 3 uses
  %i.dz = sub i32 %i.di, %i.dh
  %i.ea = icmp ugt i32 %i.dz, -8
  %unroll_iter276 = and i32 %i.dj, 2147483640
  %lcmp.mod274.not = icmp eq i32 %xtraiter272, 0
  %lcmp.mod275 = icmp ne i32 %xtraiter272, 0
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us129, %.preheader105.us.preheader
  %indvars.iv186 = phi i64 [ %i.dt, %.preheader105.us.preheader ], [ %indvars.iv.next187, %._crit_edge.us129 ] ; 2 uses
  %indvars.iv184 = phi i64 [ 0, %.preheader105.us.preheader ], [ %indvars.iv.next185, %._crit_edge.us129 ] ; 2 uses
  %gep229 = getelementptr [8 x i8], ptr %invariant.gep228, i64 %indvars.iv184
  %i.eb = load ptr, ptr %gep229, align 8, !tbaa !151 ; 2 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.081154, i64 %indvars.iv186 ; 2 uses
  br i1 %lcmp.mod270.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.082118.us.prol = phi ptr [ %i.eg, %.lr.ph.us.prol ], [ %i.ec, %.lr.ph.us.preheader ] ; 2 uses
  %.084117.us.prol = phi ptr [ %i.ef, %.lr.ph.us.prol ], [ %i.eb, %.lr.ph.us.preheader ] ; 3 uses
  %.090116.us.prol = phi i32 [ %i.ed, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %prol.iter271 = phi i32 [ %prol.iter271.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.ed = add i32 %.090116.us.prol, -1            ; 2 uses
  %i.ee = load i16, ptr %.082118.us.prol, align 2, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %.084117.us.prol, i64 2 ; 3 uses
  store i16 %i.ee, ptr %.084117.us.prol, align 2, !tbaa !79
  %i.eg = getelementptr inbounds [2 x i8], ptr %.082118.us.prol, i64 %i.ao ; 2 uses
  %prol.iter271.next = add i32 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i32 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !215

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.084117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.084117.us.prol, %.lr.ph.us.prol ]
  %.lcssa265.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.ef, %.lr.ph.us.prol ]
  %.082118.us.unr = phi ptr [ %i.ec, %.lr.ph.us.preheader ], [ %i.eg, %.lr.ph.us.prol ]
  %.084117.us.unr = phi ptr [ %i.eb, %.lr.ph.us.preheader ], [ %i.ef, %.lr.ph.us.prol ]
  %.090116.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.ed, %.lr.ph.us.prol ]
  br i1 %i.as, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.082118.us = phi ptr [ %i.ff, %.lr.ph.us ], [ %.082118.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.084117.us = phi ptr [ %i.fe, %.lr.ph.us ], [ %.084117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.090116.us = phi i32 [ %i.fc, %.lr.ph.us ], [ %.090116.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.eh = load i16, ptr %.082118.us, align 2, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %.084117.us, i64 2
  store i16 %i.eh, ptr %.084117.us, align 2, !tbaa !79
  %i.ej = getelementptr inbounds [2 x i8], ptr %.082118.us, i64 %i.ao ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !79
  %i.el = getelementptr inbounds nuw i8, ptr %.084117.us, i64 4
  store i16 %i.ek, ptr %i.ei, align 2, !tbaa !79
  %i.em = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ao ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !79
  %i.eo = getelementptr inbounds nuw i8, ptr %.084117.us, i64 6
  store i16 %i.en, ptr %i.el, align 2, !tbaa !79
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.em, i64 %i.ao ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !79
  %i.er = getelementptr inbounds nuw i8, ptr %.084117.us, i64 8
  store i16 %i.eq, ptr %i.eo, align 2, !tbaa !79
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.ao ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !79
  %i.eu = getelementptr inbounds nuw i8, ptr %.084117.us, i64 10
  store i16 %i.et, ptr %i.er, align 2, !tbaa !79
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ao ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !79
  %i.ex = getelementptr inbounds nuw i8, ptr %.084117.us, i64 12
  store i16 %i.ew, ptr %i.eu, align 2, !tbaa !79
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ao ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !79
  %i.fa = getelementptr inbounds nuw i8, ptr %.084117.us, i64 14
  store i16 %i.ez, ptr %i.ex, align 2, !tbaa !79
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ao ; 2 uses
  %i.fc = add i32 %.090116.us, -8                 ; 2 uses
  %i.fd = load i16, ptr %i.fb, align 2, !tbaa !79
  %i.fe = getelementptr inbounds nuw i8, ptr %.084117.us, i64 16 ; 2 uses
  store i16 %i.fd, ptr %i.fa, align 2, !tbaa !79
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.ao
  %.not104.us.7 = icmp eq i32 %i.fc, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

._crit_edge.us129.loopexit.unr-lcssa:             ; preds = %.lr.ph121.us
  br i1 %lcmp.mod274.not, label %._crit_edge.us129, label %.lr.ph121.us.epil.preheader

.lr.ph121.us.epil.preheader:                      ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.preheader
  %.4120.us.epil.init = phi ptr [ %.lcssa265, %.lr.ph121.us.preheader ], [ %i.fo, %._crit_edge.us129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph121.us.epil

.lr.ph121.us.epil:                                ; preds = %.lr.ph121.us.epil, %.lr.ph121.us.epil.preheader
  %.4120.us.epil = phi ptr [ %i.fg, %.lr.ph121.us.epil ], [ %.4120.us.epil.init, %.lr.ph121.us.epil.preheader ] ; 2 uses
  %epil.iter273 = phi i32 [ %epil.iter273.next, %.lr.ph121.us.epil ], [ 0, %.lr.ph121.us.epil.preheader ]
  store i16 %load_initial258, ptr %.4120.us.epil, align 2, !tbaa !79
  %i.fg = getelementptr inbounds nuw i8, ptr %.4120.us.epil, i64 2
  %epil.iter273.next = add i32 %epil.iter273, 1   ; 2 uses
  %epil.iter273.cmp.not = icmp eq i32 %epil.iter273.next, %xtraiter272
  br i1 %epil.iter273.cmp.not, label %._crit_edge.us129, label %.lr.ph121.us.epil, !llvm.loop !216

._crit_edge.us129:                                ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.epil, %.loopexit.us
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, 1 ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge126.loopexit, label %.lr.ph.us.preheader

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4120.us = phi ptr [ %i.fo, %.lr.ph121.us ], [ %.lcssa265, %.lr.ph121.us.preheader ] ; 9 uses
  %niter277 = phi i32 [ %niter277.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i16 %load_initial258, ptr %.4120.us, align 2, !tbaa !79
  %i.fh = getelementptr inbounds nuw i8, ptr %.4120.us, i64 2
  store i16 %load_initial258, ptr %i.fh, align 2, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %.4120.us, i64 4
  store i16 %load_initial258, ptr %i.fi, align 2, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %.4120.us, i64 6
  store i16 %load_initial258, ptr %i.fj, align 2, !tbaa !79
  %i.fk = getelementptr inbounds nuw i8, ptr %.4120.us, i64 8
  store i16 %load_initial258, ptr %i.fk, align 2, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %.4120.us, i64 10
  store i16 %load_initial258, ptr %i.fl, align 2, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %.4120.us, i64 12
  store i16 %load_initial258, ptr %i.fm, align 2, !tbaa !79
  %i.fn = getelementptr inbounds nuw i8, ptr %.4120.us, i64 14
  store i16 %load_initial258, ptr %i.fn, align 2, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %.4120.us, i64 16 ; 2 uses
  %niter277.next.7 = add i32 %niter277, 8         ; 2 uses
  %niter277.ncmp.7 = icmp eq i32 %niter277.next.7, %unroll_iter276
  br i1 %niter277.ncmp.7, label %._crit_edge.us129.loopexit.unr-lcssa, label %.lr.ph121.us

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.us
  %i.fp = getelementptr inbounds nuw i8, ptr %.084117.us, i64 14
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.loopexit.us.unr-lcssa
  %.084117.us.lcssa = phi ptr [ %.084117.us.lcssa.unr, %.lr.ph.us.prol.loopexit ], [ %i.fp, %.loopexit.us.unr-lcssa ]
  %.lcssa265 = phi ptr [ %.lcssa265.unr, %.lr.ph.us.prol.loopexit ], [ %i.fe, %.loopexit.us.unr-lcssa ] ; 2 uses
  br i1 %i.dr, label %.lr.ph121.us.preheader, label %._crit_edge.us129

.lr.ph121.us.preheader:                           ; preds = %.loopexit.us
  %load_initial258 = load i16, ptr %.084117.us.lcssa, align 2 ; 9 uses
  br i1 %i.ea, label %.lr.ph121.us.epil.preheader, label %.lr.ph121.us

.preheader106:                                    ; preds = %.preheader106.preheader, %._crit_edge
  %indvars.iv176 = phi i64 [ %i.dt, %.preheader106.preheader ], [ %indvars.iv.next177, %._crit_edge ] ; 2 uses
  %indvars.iv174 = phi i64 [ 0, %.preheader106.preheader ], [ %indvars.iv.next175, %._crit_edge ] ; 3 uses
  %i.fq = mul i64 %13, %indvars.iv174             ; 2 uses
  %scevgep238 = getelementptr i8, ptr %15, i64 %i.fq
  %scevgep239 = getelementptr i8, ptr %17, i64 %i.fq
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv174
  %i.fr = load ptr, ptr %gep, align 8, !tbaa !151 ; 4 uses
  br i1 %i.dq, label %iter.check.a, label %..loopexit107_crit_edge

iter.check.a:                                     ; preds = %.preheader106
  %18 = getelementptr inbounds [2 x i8], ptr %.081154, i64 %indvars.iv176
  %scevgep = getelementptr i8, ptr %i.fr, i64 %.neg
  %bound0 = icmp ult ptr %i.fr, %scevgep239
  %bound1 = icmp ult ptr %scevgep238, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %19 = or i1 %found.conflict, %stride.check
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check.a, %._crit_edge.us
  %.in = phi i32 [ %20, %._crit_edge.us ], [ %.fr, %iter.check.a ]
  %.183113.us = phi ptr [ %i.hn, %._crit_edge.us ], [ %18, %iter.check.a ] ; 12 uses
  %.185112.us = phi ptr [ %.lcssa, %._crit_edge.us ], [ %i.fr, %iter.check.a ] ; 5 uses
  %20 = add i32 %.in, -1                          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %19
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fs = getelementptr i8, ptr %.185112.us, i64 %i.dv ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.185112.us, i64 %i.ft ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load = load <8 x i16>, ptr %i.fu, align 2, !tbaa !79, !alias.scope !217
  %wide.load242 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !79, !alias.scope !217
  %i.fw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !79, !alias.scope !220, !noalias !217
  store <8 x i16> %wide.load242, ptr %i.fw, align 2, !tbaa !79, !alias.scope !220, !noalias !217
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fy = getelementptr i8, ptr %.185112.us, i64 %i.dw ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index245 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 3 uses
  %i.fz = shl i64 %index245, 1
  %next.gep246 = getelementptr i8, ptr %.185112.us, i64 %i.fz
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %index245
  %wide.load247 = load <4 x i16>, ptr %i.ga, align 2, !tbaa !79, !alias.scope !217
  store <4 x i16> %wide.load247, ptr %next.gep246, align 2, !tbaa !79, !alias.scope !220, !noalias !217
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next248, %n.vec244
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n249, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec244, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %.286110.us.ph = phi ptr [ %.185112.us, %vector.memcheck ], [ %i.fy, %vec.epilog.middle.block ], [ %i.fs, %vec.epilog.iter.check ] ; 2 uses
  %i.gc = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.286110.us.prol = phi ptr [ %i.gf, %vec.epilog.scalar.ph.prol ], [ %.286110.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv.prol
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !79
  %i.gf = getelementptr inbounds nuw i8, ptr %.286110.us.prol, i64 2 ; 3 uses
  store i16 %i.ge, ptr %.286110.us.prol, align 2, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !224

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa264.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gf, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.286110.us.unr = phi ptr [ %.286110.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gf, %vec.epilog.scalar.ph.prol ]
  %i.gg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gh = icmp ugt i64 %i.gg, -8
  br i1 %i.gh, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.286110.us = phi ptr [ %i.hm, %vec.epilog.scalar.ph ], [ %.286110.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !79
  %i.gk = getelementptr inbounds nuw i8, ptr %.286110.us, i64 2
  store i16 %i.gj, ptr %.286110.us, align 2, !tbaa !79
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !79
  %i.go = getelementptr inbounds nuw i8, ptr %.286110.us, i64 4
  store i16 %i.gn, ptr %i.gk, align 2, !tbaa !79
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !79
  %i.gs = getelementptr inbounds nuw i8, ptr %.286110.us, i64 6
  store i16 %i.gr, ptr %i.go, align 2, !tbaa !79
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 6
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !79
  %i.gw = getelementptr inbounds nuw i8, ptr %.286110.us, i64 8
  store i16 %i.gv, ptr %i.gs, align 2, !tbaa !79
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !79
  %i.ha = getelementptr inbounds nuw i8, ptr %.286110.us, i64 10
  store i16 %i.gz, ptr %i.gw, align 2, !tbaa !79
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 10
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !79
  %i.he = getelementptr inbounds nuw i8, ptr %.286110.us, i64 12
  store i16 %i.hd, ptr %i.ha, align 2, !tbaa !79
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !79
  %i.hi = getelementptr inbounds nuw i8, ptr %.286110.us, i64 14
  store i16 %i.hh, ptr %i.he, align 2, !tbaa !79
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 14
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !79
  %i.hm = getelementptr inbounds nuw i8, ptr %.286110.us, i64 16 ; 2 uses
  store i16 %i.hl, ptr %i.hi, align 2, !tbaa !79
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !225

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.fy, %vec.epilog.middle.block ], [ %i.fs, %middle.block ], [ %.lcssa264.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ] ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %.183113.us, i64 %i.ao
  %.not103.us = icmp eq i32 %20, 0
  br i1 %.not103.us, label %..loopexit107_crit_edge, label %vector.memcheck

..loopexit107_crit_edge:                          ; preds = %._crit_edge.us, %.preheader106
  %.us-phi = phi ptr [ %i.fr, %.preheader106 ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  br i1 %i.dr, label %.lr.ph121.preheader, label %._crit_edge

.lr.ph121.preheader:                              ; preds = %..loopexit107_crit_edge
  %scevgep255 = getelementptr i8, ptr %.us-phi, i64 -2
  %load_initial256 = load i16, ptr %scevgep255, align 2 ; 9 uses
  br i1 %i.dy, label %.lr.ph121.epil.preheader, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.4120 = phi ptr [ %i.hv, %.lr.ph121 ], [ %.us-phi, %.lr.ph121.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ]
  store i16 %load_initial256, ptr %.4120, align 2, !tbaa !79
  %i.ho = getelementptr inbounds nuw i8, ptr %.4120, i64 2
  store i16 %load_initial256, ptr %i.ho, align 2, !tbaa !79
  %i.hp = getelementptr inbounds nuw i8, ptr %.4120, i64 4
  store i16 %load_initial256, ptr %i.hp, align 2, !tbaa !79
  %i.hq = getelementptr inbounds nuw i8, ptr %.4120, i64 6
  store i16 %load_initial256, ptr %i.hq, align 2, !tbaa !79
  %i.hr = getelementptr inbounds nuw i8, ptr %.4120, i64 8
  store i16 %load_initial256, ptr %i.hr, align 2, !tbaa !79
  %i.hs = getelementptr inbounds nuw i8, ptr %.4120, i64 10
  store i16 %load_initial256, ptr %i.hs, align 2, !tbaa !79
  %i.ht = getelementptr inbounds nuw i8, ptr %.4120, i64 12
  store i16 %load_initial256, ptr %i.ht, align 2, !tbaa !79
  %i.hu = getelementptr inbounds nuw i8, ptr %.4120, i64 14
  store i16 %load_initial256, ptr %i.hu, align 2, !tbaa !79
  %i.hv = getelementptr inbounds nuw i8, ptr %.4120, i64 16 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph121

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph121
  br i1 %lcmp.mod267.not, label %._crit_edge, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.preheader
  %.4120.epil.init = phi ptr [ %.us-phi, %.lr.ph121.preheader ], [ %i.hv, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %.4120.epil = phi ptr [ %i.hw, %.lr.ph121.epil ], [ %.4120.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph121.epil ], [ 0, %.lr.ph121.epil.preheader ]
  store i16 %load_initial256, ptr %.4120.epil, align 2, !tbaa !79
  %i.hw = getelementptr inbounds nuw i8, ptr %.4120.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter266
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph121.epil, !llvm.loop !226

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.epil, %..loopexit107_crit_edge
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.du ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge126.loopexit162, label %.preheader106

._crit_edge126.loopexit:                          ; preds = %._crit_edge.us129
  %i.hx = trunc nsw i64 %indvars.iv.next187 to i32
  br label %._crit_edge126

._crit_edge126.loopexit162:                       ; preds = %._crit_edge
  %i.hy = trunc nsw i64 %indvars.iv.next177 to i32
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit162, %._crit_edge126.loopexit, %.lr.ph
  %.198.lcssa = phi i32 [ %.097140, %.lr.ph ], [ %i.hx, %._crit_edge126.loopexit ], [ %i.hy, %._crit_edge126.loopexit162 ]
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.092142, i64 96
  %i.ia = load i32, ptr %i.al, align 4, !tbaa !21
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp slt i64 %indvars.iv.next194, %i.ib
  br i1 %i.ic, label %.lr.ph, label %._crit_edge144.split

._crit_edge144.split:                             ; preds = %._crit_edge126, %.lr.ph157.split
  %i.id = load i32, ptr %i.an, align 8, !tbaa !149 ; 2 uses
  %i.ie = add nsw i32 %i.id, 1
  store i32 %i.ie, ptr %i.an, align 8, !tbaa !149
  %i.if = icmp sgt i32 %i.id, 6
  br i1 %i.if, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge144.split
  %i.ig = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.ih = shl nsw i32 %i.ig, 3                    ; 2 uses
  %i.ii = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.am, i32 noundef %i.ih)
  %.not102 = icmp eq i32 %i.ii, %i.ih
  br i1 %.not102, label %.thread, label %.split.us

.thread:                                          ; preds = %bb.i
  store i32 0, ptr %i.an, align 8, !tbaa !149
  br label %bb.j

.split.us:                                        ; preds = %bb.i, %bb.f
  store i32 1, ptr %i.e, align 8, !tbaa !178
  br label %.loopexit108

bb.j:                                             ; preds = %.thread, %._crit_edge144.split
  %i.ij = load i16, ptr %i.q, align 4, !tbaa !81  ; 2 uses
  %i.ik = zext i16 %i.ij to i32
  %i.il = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.im = add i32 %i.il, %i.ik
  store i32 %i.im, ptr %i.aq, align 4, !tbaa !141
  %i.in = getelementptr inbounds i8, ptr %.081154, i64 %i.ab
  %i.io = zext i16 %i.ij to i64
  %i.ip = sub nsw i64 %.089153, %i.io             ; 2 uses
  %i.iq = icmp sgt i64 %i.ip, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.iq, label %.lr.ph157.split, label %.loopexit108

.loopexit108:                                     ; preds = %bb.j, %bb.g, %bb.e, %.split.us, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %.split.us ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.j ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_start_compress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg12_write_raw_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg12_write_raw_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_finish_compress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_write_scanlines(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg12_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg12_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_defaults(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_defaults(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prepare_JPEGTables(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !124
  %i.e = tail call fastcc i32 @TIFFjpeg_set_quality(ptr noundef %i.b, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @TIFFjpeg_suppress_tables(ptr noundef nonnull %i.b)
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1332
  %i.h = load i32, ptr %i.g, align 4, !tbaa !78   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %unsuppress_quant_table.exit21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %unsuppress_quant_table.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.l, align 4, !tbaa !171
  br label %unsuppress_quant_table.exit

unsuppress_quant_table.exit:                      ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.n = load i16, ptr %i.m, align 8, !tbaa !74
  %i.o = icmp eq i16 %i.n, 6
  br i1 %i.o, label %bb.f, label %unsuppress_quant_table.exit21

bb.f:                                             ; preds = %unsuppress_quant_table.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.not.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i20, label %unsuppress_quant_table.exit21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i32 0, ptr %i.r, align 4, !tbaa !171
  br label %unsuppress_quant_table.exit21

unsuppress_quant_table.exit21:                    ; preds = %bb.g, %bb.f, %unsuppress_quant_table.exit, %bb.c
  %i.s = and i32 %i.h, 2
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %unsuppress_huff_table.exit25, label %bb.h

bb.h:                                             ; preds = %unsuppress_quant_table.exit21
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %.not.i22 = icmp eq ptr %i.u, null
  br i1 %.not.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 276
  store i32 0, ptr %i.v, align 4, !tbaa !173
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %.not6.i = icmp eq ptr %i.x, null
  br i1 %.not6.i, label %unsuppress_huff_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 276
  store i32 0, ptr %i.y, align 4, !tbaa !173
  br label %unsuppress_huff_table.exit

unsuppress_huff_table.exit:                       ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !74
  %i.ab = icmp eq i16 %i.aa, 6
  br i1 %i.ab, label %bb.l, label %unsuppress_huff_table.exit25

bb.l:                                             ; preds = %unsuppress_huff_table.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ad, null
  br i1 %.not.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 276
  store i32 0, ptr %i.ae, align 4, !tbaa !173
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %.not6.i24 = icmp eq ptr %i.ag, null
  br i1 %.not6.i24, label %unsuppress_huff_table.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 276
  store i32 0, ptr %i.ah, align 4, !tbaa !173
  br label %unsuppress_huff_table.exit25

unsuppress_huff_table.exit25:                     ; preds = %bb.o, %bb.n, %unsuppress_huff_table.exit, %unsuppress_quant_table.exit21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1312 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %.not.i26 = icmp eq ptr %i.aj, null
  br i1 %.not.i26, label %bb.q, label %bb.p

bb.p:                                             ; preds = %unsuppress_huff_table.exit25
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aj) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %unsuppress_huff_table.exit25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1320 ; 2 uses
  store i32 1000, ptr %i.ak, align 8, !tbaa !69
  %i.al = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 1000) #16 ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !47
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %TIFFjpeg_tables_dest.exit.thread, label %bb.r

TIFFjpeg_tables_dest.exit.thread:                 ; preds = %bb.q
  store i32 0, ptr %i.ak, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.ao, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store ptr @tables_init_destination, ptr %i.ar, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store ptr @tables_empty_output_buffer, ptr %i.as, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store ptr @tables_term_destination, ptr %i.at, align 8, !tbaa !90
  %i.au = tail call fastcc i32 @TIFFjpeg_write_tables(ptr noundef nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %TIFFjpeg_tables_dest.exit.thread, %bb.r, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %TIFFjpeg_tables_dest.exit.thread ], [ %i.au, %bb.r ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_create_compress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %i.a) #16
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  store ptr @TIFFjpeg_error_exit, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr @TIFFjpeg_output_message, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = call i32 @_setjmp(ptr noundef nonnull %i.e) #17
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateCompress(ptr noundef nonnull %0, i32 noundef 80, i64 noundef 584) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.g
}

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_suppress_tables(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_suppress_tables(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_write_tables(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_write_tables(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_init_destination(ptr nofree noundef captures(none) initializes((1064, 1080)) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.b, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.f, ptr %i.g, align 8, !tbaa !228
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tables_empty_output_buffer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !69
  %i.g = add i32 %i.f, 1000
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @_TIFFreallocExt(ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h) #16 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !229    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 54, ptr %i.l, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 100, ptr %i.m, align 4, !tbaa !21
  %i.n = load ptr, ptr %0, align 8, !tbaa !229
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241
  tail call void %i.o(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.r, ptr %i.s, align 8, !tbaa !227
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 1000, ptr %i.t, align 8, !tbaa !228
  store ptr %i.i, ptr %i.c, align 8, !tbaa !47
  %i.u = add i32 %i.p, 1000
  store i32 %i.u, ptr %i.e, align 8, !tbaa !69
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_term_destination(ptr nofree noundef captures(none) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load i64, ptr %i.a, align 8, !tbaa !228
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69
  %i.f = sub i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !69
  ret void
}

declare void @jpeg_write_tables(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_init_destination(ptr nofree noundef captures(none) initializes((1064, 1080)) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.d, ptr %i.e, align 8, !tbaa !227
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !242
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.g, ptr %i.h, align 8, !tbaa !228
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @std_empty_output_buffer(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !242
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.d, ptr %i.e, align 8, !tbaa !100
  %i.f = tail call i32 @TIFFFlushData1(ptr noundef %i.b) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.h, ptr %i.i, align 8, !tbaa !227
  %i.j = load i64, ptr %i.c, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.j, ptr %i.k, align 8, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_term_destination(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  store ptr %i.d, ptr %i.e, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !242
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load i64, ptr %i.h, align 8, !tbaa !228
  %i.j = sub nsw i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.j, ptr %i.k, align 8, !tbaa !100
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #3

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_init_source(ptr nofree noundef captures(none) initializes((1104, 1120)) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.b, ptr %i.c, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 %i.f, ptr %i.g, align 8, !tbaa !101
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind returns_twice }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !18, i64 1160}
!8 = !{!"", !5, i64 0, !4, i64 656, !9, i64 664, !5, i64 832, !14, i64 1032, !15, i64 1064, !17, i64 1104, !18, i64 1160, !19, i64 1168, !19, i64 1170, !19, i64 1172, !11, i64 1176, !5, i64 1184, !4, i64 1264, !4, i64 1268, !20, i64 1272, !4, i64 1352}
!9 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !11, i64 128, !12, i64 136, !4, i64 144, !12, i64 152, !4, i64 160, !4, i64 164}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p2 omnipotent char", !13, i64 0}
!13 = !{!"any p2 pointer", !10, i64 0}
!14 = !{!"jpeg_progress_mgr", !10, i64 0, !11, i64 8, !11, i64 16, !4, i64 24, !4, i64 28}
!15 = !{!"jpeg_destination_mgr", !16, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!16 = !{!"p1 omnipotent char", !10, i64 0}
!17 = !{!"jpeg_source_mgr", !16, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!18 = !{!"p1 _ZTS4tiff", !10, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72}
!21 = !{!5, !5, i64 0}
!22 = !{!8, !10, i64 1120}
!23 = !{!8, !10, i64 1128}
!24 = !{!8, !10, i64 1136}
!25 = !{!8, !10, i64 1144}
!26 = !{!8, !10, i64 1152}
!27 = !{!8, !10, i64 664}
!28 = !{!8, !10, i64 680}
!29 = !{!30, !16, i64 1072}
!30 = !{!"tiff", !16, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !31, i64 48, !31, i64 56, !4, i64 64, !32, i64 72, !32, i64 448, !5, i64 824, !19, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !19, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !16, i64 1072, !11, i64 1080, !11, i64 1088, !16, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !16, i64 1128, !11, i64 1136, !16, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !39, i64 1232, !11, i64 1240, !40, i64 1248, !41, i64 1256, !42, i64 1280, !43, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!31 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!32 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !19, i64 52, !19, i64 54, !19, i64 56, !19, i64 58, !4, i64 60, !19, i64 64, !19, i64 66, !33, i64 72, !33, i64 80, !34, i64 88, !34, i64 92, !19, i64 96, !19, i64 98, !34, i64 100, !34, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !19, i64 140, !35, i64 144, !4, i64 152, !4, i64 156, !36, i64 160, !36, i64 168, !4, i64 176, !37, i64 184, !37, i64 216, !19, i64 248, !36, i64 256, !5, i64 264, !19, i64 268, !5, i64 272, !38, i64 296, !4, i64 304, !16, i64 312, !19, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!33 = !{!"p1 double", !10, i64 0}
!34 = !{!"float", !5, i64 0}
!35 = !{!"p1 short", !10, i64 0}
!36 = !{!"p1 long", !10, i64 0}
!37 = !{!"", !19, i64 0, !19, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!38 = !{!"p1 float", !10, i64 0}
!39 = !{!"p2 _ZTS10_TIFFField", !13, i64 0}
!40 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!41 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!42 = !{!"p1 _ZTS11client_info", !10, i64 0}
!43 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!44 = !{!10, !10, i64 0}
!45 = !{!30, !10, i64 1272}
!46 = !{!8, !10, i64 1288}
!47 = !{!8, !10, i64 1312}
!48 = !{!8, !4, i64 1336}
!49 = !{!30, !10, i64 1264}
!50 = !{!30, !10, i64 1256}
!51 = !{!30, !10, i64 928}
!52 = !{!30, !10, i64 936}
!53 = !{!30, !10, i64 944}
!54 = !{!30, !10, i64 984}
!55 = !{!30, !10, i64 1000}
!56 = !{!30, !10, i64 1016}
!57 = !{!30, !10, i64 952}
!58 = !{!30, !10, i64 968}
!59 = !{!30, !10, i64 976}
!60 = !{!30, !10, i64 992}
!61 = !{!30, !10, i64 1008}
!62 = !{!30, !10, i64 1024}
!63 = !{!30, !10, i64 1048}
!64 = !{!30, !10, i64 1056}
!65 = !{!30, !10, i64 1064}
!66 = !{!30, !4, i64 16}
!67 = !{!8, !4, i64 656}
!68 = !{!30, !11, i64 24}
!69 = !{!8, !4, i64 1320}
!70 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !44, i64 48, i64 4, !3, i64 52, i64 4, !3, i64 56, i64 4, !3, i64 60, i64 4, !3, i64 64, i64 4, !3, i64 68, i64 4, !3, i64 72, i64 4, !3}
!71 = !{!72, !11, i64 88}
!72 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 96}
!73 = !{!32, !19, i64 50}
!74 = !{!8, !19, i64 1168}
!75 = !{!32, !19, i64 98}
!76 = !{!32, !19, i64 58}
!77 = !{!8, !4, i64 1328}
!78 = !{!8, !4, i64 1332}
!79 = !{!19, !19, i64 0}
!80 = !{!8, !19, i64 1170}
!81 = !{!8, !19, i64 1172}
!82 = !{!32, !19, i64 44}
!83 = !{!34, !34, i64 0}
!84 = !{!32, !4, i64 32}
!85 = !{!32, !4, i64 28}
!86 = !{!32, !4, i64 60}
!87 = !{!32, !4, i64 20}
!88 = !{!8, !10, i64 1080}
!89 = !{!8, !10, i64 1088}
!90 = !{!8, !10, i64 1096}
!91 = !{!30, !10, i64 1224}
!92 = !{!93, !94, i64 0}
!93 = !{!"jpeg_common_struct", !94, i64 0, !95, i64 8, !96, i64 16, !10, i64 24, !4, i64 32, !4, i64 36}
!94 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!95 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!96 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!97 = !{!9, !10, i64 24}
!98 = !{!30, !16, i64 1096}
!99 = !{!8, !16, i64 1104}
!100 = !{!30, !11, i64 1136}
!101 = !{!8, !11, i64 1112}
!102 = !{!103, !94, i64 0}
!103 = !{!"jpeg_decompress_struct", !94, i64 0, !95, i64 8, !96, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !104, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !105, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !12, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !106, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !19, i64 384, !19, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !107, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !16, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !106, i64 552, !4, i64 560, !4, i64 564, !108, i64 568, !109, i64 576, !110, i64 584, !111, i64 592, !112, i64 600, !113, i64 608, !114, i64 616, !115, i64 624, !116, i64 632, !117, i64 640, !118, i64 648}
!104 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!105 = !{!"double", !5, i64 0}
!106 = !{!"p1 int", !10, i64 0}
!107 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!108 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!109 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!110 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!111 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!112 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!113 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!114 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!115 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!116 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!117 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!118 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!119 = !{!9, !4, i64 40}
!120 = !{!9, !10, i64 8}
!121 = !{ptr @std_fill_input_buffer}
!122 = !{!106, !106, i64 0}
!123 = !{!13, !13, i64 0}
!124 = !{!8, !4, i64 1324}
!125 = !{!8, !10, i64 1272}
!126 = !{!30, !11, i64 912}
!127 = !{!30, !11, i64 1080}
!128 = !{!8, !10, i64 1280}
!129 = !{!130, !19, i64 20}
!130 = !{!"_TIFFField", !4, i64 0, !19, i64 4, !19, i64 6, !4, i64 8, !4, i64 12, !4, i64 16, !19, i64 20, !5, i64 22, !5, i64 23, !16, i64 24, !43, i64 32}
!131 = !{!30, !19, i64 122}
!132 = !{!30, !19, i64 170}
!133 = !{!30, !19, i64 130}
!134 = !{!30, !10, i64 1200}
!135 = !{!30, !10, i64 1176}
!136 = distinct !{null, null, null}
!137 = !{!30, !10, i64 1184}
!138 = distinct !{null, null, null}
!139 = !{!30, !16, i64 1128}
!140 = !{!32, !4, i64 16}
!141 = !{!30, !4, i64 844}
!142 = !{!8, !11, i64 1176}
!143 = !{!8, !4, i64 1344}
!144 = !{!145, !4, i64 8}
!145 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!146 = !{!145, !4, i64 12}
!147 = !{!145, !4, i64 28}
!148 = !{!145, !4, i64 32}
!149 = !{!8, !4, i64 1264}
!150 = !{!30, !16, i64 0}
!151 = !{!35, !35, i64 0}
!152 = !{!153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!156}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !158, !159}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = !{!"llvm.loop.unroll.runtime.disable"}
!160 = !{!"branch_weights", i32 4, i32 12}
!161 = distinct !{!161, !158, !159}
!162 = distinct !{!162, !163}
!163 = !{!"llvm.loop.unroll.disable"}
!164 = distinct !{!164, !158}
!165 = distinct !{!165, !166}
!166 = !{!"llvm.loop.unswitch.partial.disable"}
!167 = !{!145, !4, i64 0}
!168 = !{!145, !4, i64 16}
!169 = !{!145, !4, i64 20}
!170 = !{!145, !4, i64 24}
!171 = !{!172, !4, i64 128}
!172 = !{!"", !5, i64 0, !4, i64 128}
!173 = !{!174, !4, i64 276}
!174 = !{!"", !5, i64 0, !5, i64 17, !4, i64 276}
!175 = !{!176, !176, i64 0}
!176 = !{!"p2 short", !13, i64 0}
!177 = !{!8, !4, i64 1268}
!178 = !{!8, !4, i64 1352}
!179 = !{!30, !4, i64 92}
!180 = !{!181}
!181 = distinct !{!181, !182}
!182 = distinct !{!182, !"LVerDomain"}
!183 = !{!184}
!184 = distinct !{!184, !182}
!185 = distinct !{!185, !158, !159}
!186 = distinct !{!186, !158}
!187 = !{!8, !10, i64 1296}
!188 = !{!8, !10, i64 1304}
!189 = !{!145, !4, i64 44}
!190 = distinct !{!190, !163}
!191 = distinct !{!191, !158}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !158, !159}
!198 = distinct !{!198, !158, !159}
!199 = distinct !{!199, !163}
!200 = !{!201}
!201 = distinct !{!201, !202}
!202 = distinct !{!202, !"LVerDomain"}
!203 = !{!204}
!204 = distinct !{!204, !202}
!205 = distinct !{!205, !158, !159}
!206 = distinct !{!206, !158, !159}
!207 = distinct !{!207, !163}
!208 = distinct !{!208, !158}
!209 = !{!8, !10, i64 1032}
!210 = !{!8, !4, i64 1340}
!211 = distinct !{null}
!212 = !{!93, !4, i64 32}
!213 = !{!103, !4, i64 172}
!214 = !{!72, !10, i64 16}
!215 = distinct !{!215, !163}
!216 = distinct !{!216, !163}
!217 = !{!218}
!218 = distinct !{!218, !219}
!219 = distinct !{!219, !"LVerDomain"}
!220 = !{!221}
!221 = distinct !{!221, !219}
!222 = distinct !{!222, !158, !159}
!223 = distinct !{!223, !158, !159}
!224 = distinct !{!224, !163}
!225 = distinct !{!225, !158}
!226 = distinct !{!226, !163}
!227 = !{!8, !16, i64 1064}
!228 = !{!8, !11, i64 1072}
!229 = !{!230, !94, i64 0}
!230 = !{!"jpeg_compress_struct", !94, i64 0, !95, i64 8, !96, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !231, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !105, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !19, i64 332, !19, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !106, i64 480, !4, i64 488, !232, i64 496, !233, i64 504, !234, i64 512, !235, i64 520, !236, i64 528, !237, i64 536, !238, i64 544, !239, i64 552, !240, i64 560, !10, i64 568, !4, i64 576}
!231 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!232 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!233 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!234 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!235 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!236 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!237 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!238 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!239 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!240 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!241 = !{!9, !10, i64 0}
!242 = !{!30, !11, i64 1104}
end_hunk_0
