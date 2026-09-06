Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_inflate_claim:bb.a
  br i1 %i.af, label %bb.f, label %.thread32

bb.f:                                             ; preds = %.thread, %bb.e
  store i32 %1, ptr %i.b, align 8, !tbaa !61
  br label %bb.g

.thread32:                                        ; preds = %bb.d, %bb.e
  %.02634 = phi i32 [ %i.ae, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.02634) #13
  br label %bb.g

bb.g:                                             ; preds = %.thread32, %bb.f
  %.02630 = phi i32 [ %.02634, %.thread32 ], [ 0, %bb.f ]
  ret i32 %.02630
}

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_handle_IHDR(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
png_crc_read.exit:
  %i.a = alloca [13 x i8], align 1                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !26
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 13) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 13) #13
  %i.e = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.f = load i8, ptr %i.a, align 1, !tbaa !8, !noalias !178
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24                     ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.a, label %png_get_uint_31.exit

bb.a:                                             ; preds = %png_crc_read.exit
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

png_get_uint_31.exit:                             ; preds = %png_crc_read.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8, !noalias !178
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8, !noalias !178
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8, !noalias !178
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.m, %i.t
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = or disjoint i32 %i.v, %i.h               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8, !noalias !179
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 24                    ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %png_get_uint_31.exit41

bb.b:                                             ; preds = %png_get_uint_31.exit
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

png_get_uint_31.exit41:                           ; preds = %png_get_uint_31.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8, !noalias !179
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8, !noalias !179
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8, !noalias !179
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.af, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  %i.ap = or disjoint i32 %i.ao, %i.aa            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %i.w, ptr %i.ba, align 4, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 %i.ap, ptr %i.bb, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 %i.ar, ptr %i.bc, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 %i.az, ptr %i.bd, align 4, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 623
  store i8 %i.at, ptr %i.be, align 1, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i8 %i.ax, ptr %i.bf, align 4, !tbaa !180
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i8 %i.av, ptr %i.bg, align 8, !tbaa !181
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 627
  %i.bi = icmp ult i8 %i.at, 7
  %switch.cast = zext i8 %i.at to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1127008025379073, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.sink = select i1 %i.bi, i8 %switch.masked, i8 1 ; 2 uses
  store i8 %.sink, ptr %i.bh, align 1, !tbaa !70
  %i.bj = mul i8 %.sink, %i.ar                    ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 626
  store i8 %i.bj, ptr %i.bk, align 2, !tbaa !55
  %i.bl = icmp ugt i8 %i.bj, 7
  %i.bm = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %i.bl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_get_uint_31.exit41
  %i.bn = lshr i8 %i.bj, 3
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, %i.bm
  br label %bb.e

bb.d:                                             ; preds = %png_get_uint_31.exit41
  %i.bq = zext nneg i8 %i.bj to i64
  %i.br = mul nuw nsw i64 %i.bq, %i.bm
  %i.bs = add nuw nsw i64 %i.br, 7
  %i.bt = lshr i64 %i.bs, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi i64 [ %i.bp, %bb.c ], [ %i.bt, %bb.d ]
  %i.bv = zext i8 %i.az to i32
  %i.bw = zext i8 %i.ax to i32
  %i.bx = zext i8 %i.av to i32
  %i.by = zext i8 %i.at to i32
  %i.bz = zext i8 %i.ar to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.bu, ptr %i.ca, align 8, !tbaa !64
  call void @png_set_IHDR(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.w, i32 noundef %i.ap, i32 noundef %i.bz, i32 noundef %i.by, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.bw) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_PLTE(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [768 x i8], align 16              ; 13 uses
  %3 = alloca [256 x %struct.png_color_struct], align 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26   ; 2 uses
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 4
  %.not48 = icmp eq i32 %i.e, 0
  br i1 %.not48, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 623 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !68    ; 2 uses
  %i.h = and i8 %i.g, 2
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %2, 769
  %i.k = urem i32 %2, 3
  %.not49 = icmp eq i32 %i.k, 0
  %or.cond = and i1 %i.j, %.not49
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not50 = icmp eq i8 %i.g, 3
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38
  %i.n = and i32 %i.m, 67108896
  %or.cond53 = icmp eq i32 %i.n, 0
  br i1 %or.cond53, label %png_crc_read.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.p = load i8, ptr %i.o, align 8, !tbaa !67
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw i32 1, %i.q
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.f, %bb.g
  %i.s = phi i32 [ %i.r, %bb.g ], [ 256, %bb.f ]  ; 2 uses
  %i.t = mul i32 %i.s, 3
  %i.u = icmp ugt i32 %2, %i.t
  %.lhs.trunc = trunc nuw nsw i32 %2 to i16
  %i.v = udiv i16 %.lhs.trunc, 3
  %.zext = zext nneg i16 %i.v to i32
  %i.w = select i1 %i.u, i32 %i.s, i32 %.zext     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.x = mul i32 %i.w, 3                          ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.y) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.y) #13
  %i.z = sub i32 %2, %i.x
  %i.aa = load i8, ptr %i.f, align 1, !tbaa !68
  %i.ab = icmp ne i8 %i.aa, 3
  %i.ac = zext i1 %i.ab to i32
  %i.ad = call fastcc i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %i.z, i32 noundef %i.ac) ; 0 uses
  %.not56 = icmp eq i32 %i.w, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %png_crc_read.exit
  %wide.trip.count = zext i32 %i.w to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %i.w, 1
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.055 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bf, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.af = or disjoint i32 %.055, 1
  %i.ag = zext i32 %.055 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !8
  %i.aj = getelementptr inbounds nuw [3 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store i8 %i.ai, ptr %i.aj, align 2, !tbaa !72
  %i.ak = add i32 %.055, 2
  %i.al = zext i32 %i.af to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !73
  %i.ap = add i32 %.055, 3
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.as, ptr %i.at, align 2, !tbaa !74
  %i.au = add i32 %.055, 4
  %i.av = zext i32 %i.ap to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw [3 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !72
  %i.ba = add i32 %.055, 5
  %i.bb = zext i32 %i.au to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !73
  %i.bf = add i32 %.055, 6                        ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !74
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !182

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.055.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod59 = trunc i32 %i.w to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.bk = add i32 %.055.epil.init, 1
  %i.bl = zext i32 %.055.epil.init to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = getelementptr inbounds nuw [3 x i8], ptr %3, i64 %indvars.iv.epil.init ; 3 uses
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !72
  %i.bp = add i32 %.055.epil.init, 2
  %i.bq = zext i32 %i.bk to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !73
  %i.bu = zext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %png_crc_read.exit
  %i.by = load i32, ptr %i.b, align 4, !tbaa !26
  %i.bz = or i32 %i.by, 2
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !26
  call void @png_set_PLTE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %i.w) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.044 = phi ptr [ @.str.30, %bb.d ], [ @.str.13, %bb.a ], [ @.str.12, %bb.b ], [ @.str.29, %bb.c ], [ @.str.12, %bb.f ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !68
  %i.cc = icmp eq i8 %i.cb, 3
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) ; 0 uses
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull %.044) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ce = tail call fastcc i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 1) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull %.044) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.045 = phi i32 [ 0, %bb.j ], [ 3, %._crit_edge ]
  ret i32 %.045
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_handle_IEND(ptr noalias noundef %0, ptr noalias nofree readnone captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = or i32 %i.b, 24
  store i32 %i.c, ptr %i.a, align 4, !tbaa !26
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.split, label %.split5

.split5:                                          ; preds = %bb.a
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  br label %.split

.split:                                           ; preds = %bb.a, %.split5
  %.sink = phi i32 [ %2, %.split5 ], [ 0, %bb.a ]
  %i.d = tail call fastcc i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %.sink, i32 noundef 1) ; 0 uses
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_bKGD(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 16 uses
  %3 = alloca %struct.png_color_16_struct, align 2 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 623 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !68    ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  %.sink67.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink67.sroa.gep71 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink67.sroa.gep72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink67.sroa.gep73 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink70.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sink70.sroa.gep74 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sink70.sroa.gep75 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink70.sroa.gep76 = getelementptr inbounds nuw i8, ptr %3, i64 6
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = and i32 %i.f, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #13
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.j = and i8 %i.c, 2
  %.not = icmp eq i8 %i.j, 0
  %. = select i1 %.not, i32 2, i32 6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %., %bb.d ]
  %.not44 = icmp eq i32 %2, %.0
  br i1 %.not44, label %png_crc_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  br label %bb.y

png_crc_read.exit:                                ; preds = %bb.e
end_hunk_0
begin_hunk_1_@png_handle_sCAL:bb.a
bb.g:                                             ; preds = %bb.a, %bb.e
  %i.o = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.t

png_crc_read.exit:                                ; preds = %bb.f, %bb.c
  %.021.i = phi ptr [ %i.f, %bb.c ], [ %i.m, %bb.f ] ; 10 uses
  %i.p = zext i32 %2 to i64                       ; 7 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.p) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !8
  %i.r = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.t

bb.h:                                             ; preds = %png_crc_read.exit
  %i.s = load i8, ptr %.021.i, align 1, !tbaa !8
  %.off = add i8 %i.s, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #13
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %i.a, align 8, !tbaa !84
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %i.t = call i32 @png_check_fp_number(ptr noundef nonnull %.021.i, i64 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i64, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %.not40 = icmp ult i64 %i.v, %i.p
  br i1 %.not40, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %.not41 = icmp eq i8 %i.y, 0
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #13
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.b, align 4, !tbaa !45
  %i.aa = and i32 %i.z, 392
  %.not42 = icmp eq i32 %i.aa, 264
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #13
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %i.ab = call i32 @png_check_fp_number(ptr noundef nonnull %.021.i, i64 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = load i64, ptr %i.a, align 8
  %.not43 = icmp eq i64 %i.ad, %i.p
  %or.cond = select i1 %i.ac, i1 %.not43, i1 false
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #13
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !45
  %i.af = and i32 %i.ae, 392
  %.not44 = icmp eq i32 %i.af, 264
  br i1 %.not44, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #13
  br label %bb.t

.critedge:                                        ; preds = %bb.r
  %i.ag = load i8, ptr %.021.i, align 1, !tbaa !8
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.w
  call void @png_set_sCAL_s(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %.critedge, %png_crc_read.exit, %bb.i, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 3, %.critedge ], [ 0, %bb.i ], [ 0, %png_crc_read.exit ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_sPLT(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.png_sPLT_struct, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !35
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #13
  %i.f = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.g = add i32 %2, 1
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59, !alias.scope !227 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37, !alias.scope !227
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60, !alias.scope !227
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %bb.h, label %png_crc_read.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !227
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.h) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.q, null
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 range(i64 0, 4294967296) %i.h, i1 false)
  store ptr %i.q, ptr %i.i, align 8, !tbaa !59, !alias.scope !227
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.h, ptr %i.r, align 8, !tbaa !60, !alias.scope !227
  br label %png_crc_read.exit

bb.k:                                             ; preds = %bb.e, %bb.i
  %i.s = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.r

png_crc_read.exit:                                ; preds = %bb.j, %bb.g
  %.021.i = phi ptr [ %i.j, %bb.g ], [ %i.q, %bb.j ] ; 7 uses
  %i.t = zext i32 %2 to i64                       ; 3 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.t) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.t) #13
  %i.u = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not87 = icmp eq i32 %i.u, 0
  br i1 %.not87, label %bb.l, label %bb.r

bb.l:                                             ; preds = %png_crc_read.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !8
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.021.i) ; 2 uses
  %scevgep = getelementptr i8, ptr %.021.i, i64 %strlen ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  %i.x = icmp ult i32 %2, 2
  %i.y = add i32 %2, -2
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.z
  %i.ab = icmp ugt ptr %i.w, %i.aa
  %or.cond = select i1 %i.x, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #13
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %scevgep, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !8    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !230
  %i.af = icmp eq i8 %i.ad, 8                     ; 2 uses
  %i.ag = select i1 %i.af, i32 6, i32 10          ; 3 uses
  %i.ah = trunc i64 %strlen to i32
  %reass.sub = sub i32 %2, %i.ah
  %i.ai = add i32 %reass.sub, -2                  ; 3 uses
  %i.aj = urem i32 %i.ai, %i.ag
  %i.ak = udiv i32 %i.ai, %i.ag                   ; 2 uses
  %.not90 = icmp eq i32 %i.aj, 0
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.51) #13
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !231
  %i.am = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.an = mul nuw nsw i64 %i.am, 10
  %i.ao = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.an) #13 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !232
  %i.aq = icmp eq ptr %i.ao, null
  br i1 %i.aq, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.not = icmp ugt i32 %i.ag, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.af, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.195.us = phi ptr [ %i.bp, %.lr.ph.split.us ], [ %i.ac, %.lr.ph ] ; 7 uses
  %i.ar = getelementptr inbounds nuw [10 x i8], ptr %i.ao, i64 %indvars.iv99 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.195.us, i64 1
  %i.at = load i8, ptr %.195.us, align 1, !tbaa !8
  %i.au = zext i8 %i.at to i16
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !234
  %i.av = getelementptr inbounds nuw i8, ptr %.195.us, i64 2
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !235
  %i.az = getelementptr inbounds nuw i8, ptr %.195.us, i64 3
  %i.ba = load i8, ptr %i.av, align 1, !tbaa !8
  %i.bb = zext i8 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !236
  %i.bd = getelementptr inbounds nuw i8, ptr %.195.us, i64 4
  %i.be = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !237
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bi = zext i8 %i.bh to i16
  %i.bj = shl nuw i16 %i.bi, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.195.us, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = zext i8 %i.bl to i16
  %i.bn = or disjoint i16 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !238
  %i.bp = getelementptr inbounds nuw i8, ptr %.195.us, i64 6
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %i.am
  br i1 %exitcond103.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !226

bb.q:                                             ; preds = %bb.p
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #13
  br label %bb.r

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.195 = phi ptr [ %i.di, %.lr.ph.split ], [ %i.ac, %.lr.ph ] ; 11 uses
  %i.bq = getelementptr inbounds nuw [10 x i8], ptr %i.ao, i64 %indvars.iv ; 5 uses
  %i.br = load i8, ptr %.195, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i16
  %i.bt = shl nuw i16 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.195, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i16
  %i.bx = or disjoint i16 %i.bt, %i.bw
  store i16 %i.bx, ptr %i.bq, align 2, !tbaa !234
  %i.by = getelementptr inbounds nuw i8, ptr %.195, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.195, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = zext i8 %i.cd to i16
  %i.cf = or disjoint i16 %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !235
  %i.ch = getelementptr inbounds nuw i8, ptr %.195, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i16
  %i.ck = shl nuw i16 %i.cj, 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.195, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = zext i8 %i.cm to i16
  %i.co = or disjoint i16 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !236
  %i.cq = getelementptr inbounds nuw i8, ptr %.195, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = zext i8 %i.cr to i16
  %i.ct = shl nuw i16 %i.cs, 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.195, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i16
  %i.cx = or disjoint i16 %i.ct, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !237
  %i.cz = getelementptr inbounds nuw i8, ptr %.195, i64 8
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = zext i8 %i.da to i16
  %i.dc = shl nuw i16 %i.db, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.195, i64 9
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %i.df = zext i8 %i.de to i16
  %i.dg = or disjoint i16 %i.dc, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !238
  %i.di = getelementptr inbounds nuw i8, ptr %.195, i64 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader
  store ptr %.021.i, ptr %3, align 8, !tbaa !239
  call void @png_set_sPLT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #13
  %i.dj = load ptr, ptr %i.ap, align 8, !tbaa !232
  call void @png_free(ptr noundef nonnull %0, ptr noundef %i.dj) #13
  br label %bb.r

bb.r:                                             ; preds = %png_crc_read.exit, %._crit_edge, %bb.q, %bb.o, %bb.m, %bb.k, %bb.d, %bb.b
  %.082 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.o ], [ 3, %._crit_edge ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_sRGB(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8     ; 2 uses
  %i.e = icmp ugt i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = zext nneg i8 %i.d to i32
  call void @png_set_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = and i32 %i.h, 128
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 724
  store i32 45455, ptr %i.m, align 4, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %png_crc_read.exit, %bb.d
  %.0 = phi i32 [ 0, %png_crc_read.exit ], [ 0, %bb.d ], [ 3, %bb.g ], [ 3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_tEXt(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.png_text_struct, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !35
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.g = add i32 %2, 1
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
end_hunk_1
