Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_handle_IHDR:png_crc_read.exit
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
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1.a, %.lr.ph ] ; 3 uses
  %.055 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %14, %.lr.ph ] ; 7 uses
  %niter.a = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %4 = or disjoint i32 %.055, 1
  %5 = zext i32 %.055 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %5
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !8
  %i.ah = getelementptr inbounds nuw [3 x i8], ptr %3, i64 %indvars.iv.a ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 2, !tbaa !72
  %6 = add i32 %.055, 2
  %7 = zext i32 %4 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !73
  %8 = add i32 %.055, 3
  %9 = zext i32 %6 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %9
  %i.am = load i8, ptr %i.al, align 2, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.am, ptr %i.an, align 2, !tbaa !74
  %10 = add i32 %.055, 4
  %11 = zext i32 %8 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = getelementptr inbounds nuw [3 x i8], ptr %3, i64 %indvars.iv.a ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !72
  %12 = add i32 %.055, 5
  %13 = zext i32 %10 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %13
  %i.at = load i8, ptr %i.as, align 2, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i8 %i.at, ptr %i.au, align 2, !tbaa !73
  %14 = add i32 %.055, 6                          ; 2 uses
  %15 = zext i32 %12 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %15
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !74
  %indvars.iv.next.1.a = add nuw nsw i64 %indvars.iv.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !182

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init.a = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1.a, %._crit_edge.loopexit.unr-lcssa ]
  %.055.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %14, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod59 = trunc i32 %i.w to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %16 = add i32 %.055.epil.init, 1
  %17 = zext i32 %.055.epil.init to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %17
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw [3 x i8], ptr %3, i64 %indvars.iv.epil.init.a ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !72
  %18 = add i32 %.055.epil.init, 2
  %19 = zext i32 %16 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %19
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !73
  %20 = zext i32 %18 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %20
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %png_crc_read.exit
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !26
  %i.bi = or i32 %i.bh, 2
  store i32 %i.bi, ptr %i.b, align 4, !tbaa !26
  call void @png_set_PLTE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %i.w) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.044 = phi ptr [ @.str.30, %bb.d ], [ @.str.13, %bb.a ], [ @.str.12, %bb.b ], [ @.str.29, %bb.c ], [ @.str.12, %bb.f ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !68
  %i.bl = icmp eq i8 %i.bk, 3
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) ; 0 uses
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull %.044) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call fastcc i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 1) ; 0 uses
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
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.l) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.l) #13
  %i.m = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %bb.g, label %bb.y

bb.g:                                             ; preds = %png_crc_read.exit
  %i.n = load i8, ptr %i.b, align 1, !tbaa !68    ; 2 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %i.a, align 1, !tbaa !8     ; 3 uses
  store i8 %i.p, ptr %3, align 2, !tbaa !183
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i16, ptr %i.q, align 8, !tbaa !184  ; 2 uses
  %.not49 = icmp eq i16 %i.r, 0
  br i1 %.not49, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = zext i8 %i.p to i16
  %.not50 = icmp ugt i16 %i.r, %i.s
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #13
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !185
  %i.v = zext i8 %i.p to i64
  %i.w = getelementptr inbounds nuw [3 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !72
  %i.y = zext i8 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.y, ptr %i.z, align 2, !tbaa !186
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !73
  %i.ac = zext i8 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !187
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !74
  %i.ag = zext i8 %i.af to i16
  br label %bb.x

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 0, ptr %i.ah, align 2, !tbaa !188
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.ai, align 2, !tbaa !187
  br label %bb.x

bb.n:                                             ; preds = %bb.g
  %i.aj = and i8 %i.n, 2
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.am = load i8, ptr %i.al, align 8, !tbaa !67  ; 3 uses
  br i1 %i.ak, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = icmp ult i8 %i.am, 9
  %.pre54 = load i8, ptr %i.a, align 1, !tbaa !8  ; 2 uses
  br i1 %i.ao, label %bb.p, label %._crit_edge55

._crit_edge55:                                    ; preds = %bb.o
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre57 = load i8, ptr %.phi.trans.insert56, align 1, !tbaa !8
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not46 = icmp eq i8 %.pre54, 0
  br i1 %.not46, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8   ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %.highbits = lshr i32 %i.ar, %i.an
  %.not47 = icmp eq i32 %.highbits, 0
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #13
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge55, %bb.q
  %i.as = phi i8 [ %.pre57, %._crit_edge55 ], [ %i.aq, %bb.q ]
end_hunk_0
