Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pngrutil?download=true
inline.NumInlined: 132
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_handle_iTXt:bb.a
.critedge4.loopexit.split.loop.exit171:           ; preds = %.lr.ph138
  %i.as = trunc nuw i64 %indvars.iv148 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.s, %.critedge4.loopexit.split.loop.exit171, %bb.r
  %.189.lcssa = phi i32 [ %i.an, %bb.r ], [ %i.as, %.critedge4.loopexit.split.loop.exit171 ], [ %2, %bb.s ]
  %i.at = add i32 %.189.lcssa, 1                  ; 4 uses
  %i.au = icmp ult i32 %i.at, %2
  br i1 %i.au, label %.lr.ph143.preheader, label %.critedge6

.lr.ph143.preheader:                              ; preds = %.critedge4
  %i.av = zext i32 %i.at to i64
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.t
  %indvars.iv152 = phi i64 [ %i.av, %.lr.ph143.preheader ], [ %indvars.iv.next153, %bb.t ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv152
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10
  %.not108 = icmp eq i8 %i.ax, 0
  br i1 %.not108, label %.critedge6.loopexit.split.loop.exit173, label %bb.t

bb.t:                                             ; preds = %.lr.ph143
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %lftr.wideiv155 = trunc i64 %indvars.iv.next153 to i32
  %exitcond156.not = icmp eq i32 %2, %lftr.wideiv155
  br i1 %exitcond156.not, label %.critedge6, label %.lr.ph143, !llvm.loop !237

.critedge6.loopexit.split.loop.exit173:           ; preds = %.lr.ph143
  %i.ay = trunc nuw i64 %indvars.iv152 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.t, %.critedge6.loopexit.split.loop.exit173, %.critedge4
  %.2.lcssa = phi i32 [ %i.at, %.critedge4 ], [ %i.ay, %.critedge6.loopexit.split.loop.exit173 ], [ %2, %bb.t ]
  %i.az = add i32 %.2.lcssa, 1                    ; 5 uses
  %.not110 = icmp ugt i32 %i.az, %2
  %or.cond113 = or i1 %.not109, %.not110
  br i1 %or.cond113, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge6
  %i.ba = sub nuw i32 %2, %i.az
  %i.bb = zext i32 %i.ba to i64
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !93
  br label %.thread

bb.v:                                             ; preds = %.critedge6
  %i.bc = icmp ult i32 %i.az, %2
  %or.cond115 = and i1 %.not109, %i.bc
  br i1 %or.cond115, label %bb.w, label %.thread131

bb.w:                                             ; preds = %bb.v
  store i64 -1, ptr %i.a, align 8, !tbaa !93
  %i.bd = call fastcc i32 @png_decompress_chunk(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.az, ptr noundef %i.a)
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !76
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread, label %.thread131

.thread:                                          ; preds = %bb.x, %bb.u, %bb.y
  %.090121 = phi ptr [ %.021.i, %bb.y ], [ %i.bf, %bb.x ], [ %.021.i, %bb.u ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !93
  %i.bk = zext i32 %i.az to i64                   ; 2 uses
  %i.bl = getelementptr i8, ptr %.090121, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !10
  %. = select i1 %.not109, i32 2, i32 1
  store i32 %., ptr %3, align 8, !tbaa !95
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.090121, ptr %i.bn, align 8, !tbaa !96
  %i.bo = zext nneg i32 %i.an to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.090121, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !239
  %i.br = zext i32 %i.at to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.090121, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !240
  %i.bu = getelementptr inbounds nuw i8, ptr %.090121, i64 %i.bk
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.bw, align 8, !tbaa !98
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !241
  %i.bz = call i32 @png_set_text_2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #15
  %.not111 = icmp eq i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not111, label %.critedge117, label %.thread126

.thread131:                                       ; preds = %bb.y, %bb.v
  %.3.ph = phi ptr [ %i.bh, %bb.y ], [ @.str.53, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.thread126

.thread126:                                       ; preds = %.thread, %.preheader, %bb.q, %bb.p, %.critedge, %bb.o, %.thread131
  %.4129 = phi ptr [ %.3.ph, %.thread131 ], [ @.str.51, %.preheader ], [ @.str.54, %bb.q ], [ @.str.54, %bb.p ], [ @.str.51, %.critedge ], [ @.str.53, %bb.o ], [ @.str.36, %.thread ]
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull %.4129) #15
  br label %.critedge117

.critedge117:                                     ; preds = %.thread, %.thread126, %png_crc_read.exit, %bb.m, %bb.d, %bb.b
  %.397 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.m ], [ 0, %.thread126 ], [ 0, %png_crc_read.exit ], [ 3, %.thread ]
  ret i32 %.397
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_mDCV(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 24) #15
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 24) #15
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i32, ptr %i.d, align 16
  %i.f = call i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = call i32 @llvm.bswap.i32(i32 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.k = load <16 x i8>, ptr %i.a, align 16, !tbaa !10 ; 2 uses
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.m = zext <8 x i8> %i.l to <8 x i32>
  %i.n = shufflevector <16 x i8> %i.k, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.o = zext <8 x i8> %i.n to <8 x i32>
  %i.p = shl nuw nsw <8 x i32> %i.m, splat (i32 9)
  %i.q = shl nuw nsw <8 x i32> %i.o, splat (i32 1)
  %i.r = or disjoint <8 x i32> %i.q, %i.p         ; 9 uses
  %i.s = extractelement <8 x i32> %i.r, i64 0
  %i.t = extractelement <8 x i32> %i.r, i64 1
  %i.u = extractelement <8 x i32> %i.r, i64 2
  %i.v = extractelement <8 x i32> %i.r, i64 3
  %i.w = extractelement <8 x i32> %i.r, i64 4
  %i.x = extractelement <8 x i32> %i.r, i64 5
  %i.y = extractelement <8 x i32> %i.r, i64 6
  %i.z = extractelement <8 x i32> %i.r, i64 7
  call void @png_set_mDCV_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.f, i32 noundef %i.i) #15
  store <8 x i32> %i.r, ptr %i.j, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %png_crc_read.exit, %bb.c
  %.0 = phi i32 [ 3, %bb.c ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_oFFs(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 9) #15
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 9) #15
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !10    ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %.not7 = icmp sgt i8 %i.d, -1
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  %.neg8 = mul i32 %i.h, 2147418112
  %i.i = shl nuw i32 %i.e, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %3 = or disjoint i32 %i.m, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %3, %i.p
  %.neg12 = sub i32 %.neg8, %i.q
  %i.r = and i32 %.neg12, 2147483647
  %i.s = sub nsw i32 0, %i.r
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = shl nuw nsw i32 %i.e, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi i32 [ %i.s, %bb.d ], [ %i.ah, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10  ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %.not13 = icmp sgt i8 %i.ak, -1
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32
  %.neg14 = mul i32 %i.ao, 2147418112
  %i.ap = shl nuw i32 %i.al, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %4 = or disjoint i32 %i.at, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %4, %i.aw
  %.neg18 = sub i32 %.neg14, %i.ax
  %i.ay = and i32 %.neg18, 2147483647
  %i.az = sub nsw i32 0, %i.ay
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = shl nuw nsw i32 %i.al, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 16
  %i.bf = or disjoint i32 %i.be, %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = or disjoint i32 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !10
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bp = phi i32 [ %i.az, %bb.g ], [ %i.bo, %bb.h ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bs = zext i8 %i.br to i32
  call void @png_set_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %i.ai, i32 noundef %i.bp, i32 noundef %i.bs) #15
  br label %bb.j

bb.j:                                             ; preds = %png_crc_read.exit, %bb.i
  %.0 = phi i32 [ 3, %bb.i ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_pCAL(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = add i32 %2, 1
  %i.b = zext i32 %i.a to i64                     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76, !alias.scope !246 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56, !alias.scope !246
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77, !alias.scope !246
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.d, label %png_crc_read.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !246
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.d) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.b) #15 ; 4 uses
  %.not27.i = icmp eq ptr %i.k, null
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 range(i64 0, 4294967296) %i.b, i1 false)
  store ptr %i.k, ptr %i.c, align 8, !tbaa !76, !alias.scope !246
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 %i.b, ptr %i.l, align 8, !tbaa !77, !alias.scope !246
  br label %png_crc_read.exit

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.m = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #15
  br label %bb.y

png_crc_read.exit:                                ; preds = %bb.f, %bb.c
  %.021.i = phi ptr [ %i.d, %bb.c ], [ %i.k, %bb.f ] ; 7 uses
  %i.n = zext i32 %2 to i64                       ; 4 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.n) #15
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.n) #15
  %i.o = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.h, label %bb.y

bb.h:                                             ; preds = %png_crc_read.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.n ; 3 uses
  store i8 0, ptr %i.p, align 1, !tbaa !10
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.021.i) ; 3 uses
  %scevgep = getelementptr i8, ptr %.021.i, i64 %strlen ; 17 uses
  %gepdiff = sub i64 %i.n, %strlen
  %i.q = icmp slt i64 %gepdiff, 13
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #15
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %scevgep, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10    ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %.not103 = icmp sgt i8 %i.s, -1
  br i1 %.not103, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %scevgep, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i32
  %.neg104 = mul i32 %i.w, 2147418112
  %i.x = shl nuw i32 %i.t, 24
  %i.y = getelementptr inbounds nuw i8, ptr %scevgep, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %3 = or disjoint i32 %i.ab, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %3, %i.ae
  %.neg108 = sub i32 %.neg104, %i.af
  %i.ag = and i32 %.neg108, 2147483647
  %i.ah = sub nsw i32 0, %i.ag
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = shl nuw nsw i32 %i.t, 24
  %i.aj = getelementptr inbounds nuw i8, ptr %scevgep, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %scevgep, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = phi i32 [ %i.ah, %bb.k ], [ %i.aw, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %scevgep, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10  ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %.not109 = icmp sgt i8 %i.az, -1
  br i1 %.not109, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %scevgep, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i32
  %.neg110 = mul i32 %i.bd, 2147418112
  %i.be = shl nuw i32 %i.ba, 24
  %i.bf = getelementptr inbounds nuw i8, ptr %scevgep, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %4 = or disjoint i32 %i.bi, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %4, %i.bl
  %.neg114 = sub i32 %.neg110, %i.bm
  %i.bn = and i32 %.neg114, 2147483647
  %i.bo = sub nsw i32 0, %i.bn
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bp = shl nuw nsw i32 %i.ba, 24
  %i.bq = getelementptr inbounds nuw i8, ptr %scevgep, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 16
  %i.bu = or disjoint i32 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %scevgep, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = phi i32 [ %i.bo, %bb.n ], [ %i.cd, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %scevgep, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !10  ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %scevgep, i64 10
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10  ; 7 uses
  %i.cj = getelementptr i8, ptr %scevgep, i64 11  ; 2 uses
  %i.ck = zext i8 %i.cg to i32
  %i.cl = icmp eq i8 %i.cg, 0
  %i.cm = zext i8 %i.ci to i32
  %i.cn = icmp ne i8 %i.ci, 2
  %or.cond = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = icmp ne i8 %i.ci, 3
  %i.cp = add i8 %i.cg, -1
  %i.cq = icmp ult i8 %i.cp, 2
  %or.cond118 = select i1 %i.cq, i1 %i.co, i1 false
  br i1 %or.cond118, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = icmp eq i8 %i.cg, 3
  %i.cs = icmp ne i8 %i.ci, 4
  %or.cond11 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond11, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #15
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.ct = icmp ugt i8 %i.cg, 3
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %strlen131 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cj)
  %i.cu = getelementptr i8, ptr %.021.i, i64 %strlen
  %i.cv = getelementptr i8, ptr %i.cu, i64 %strlen131
  %scevgep132 = getelementptr i8, ptr %i.cv, i64 11
  %i.cw = zext i8 %i.ci to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.cx) #15 ; 5 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.not128 = icmp eq i8 %i.ci, 0
  br i1 %.not128, label %._crit_edge127, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext i8 %i.ci to i64
  br label %.lr.ph126

bb.w:                                             ; preds = %bb.v
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #15
  br label %bb.y

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.2124 = phi ptr [ %scevgep132, %.lr.ph126.preheader ], [ %.3122, %.critedge ]
  %i.da = getelementptr inbounds nuw i8, ptr %.2124, i64 1 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !247
  %.not116121 = icmp ugt ptr %i.da, %i.p
  br i1 %.not116121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph126, %bb.x
  %.3122 = phi ptr [ %i.dd, %bb.x ], [ %i.da, %.lr.ph126 ] ; 3 uses
  %i.dc = load i8, ptr %.3122, align 1, !tbaa !10
  %.not117 = icmp eq i8 %i.dc, 0
  br i1 %.not117, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %.3122, i64 1 ; 2 uses
  %.not116 = icmp ugt ptr %i.dd, %i.p
  br i1 %.not116, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph126, %bb.x
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.cy) #15
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #15
  br label %bb.y

.critedge:                                        ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !245

._crit_edge127:                                   ; preds = %.critedge, %.preheader
  tail call void @png_set_pCAL(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.021.i, i32 noundef %i.ax, i32 noundef %i.ce, i32 noundef %i.ck, i32 noundef %i.cm, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cy) #15
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.cy) #15
  br label %bb.y

bb.y:                                             ; preds = %png_crc_read.exit, %._crit_edge127, %._crit_edge, %bb.w, %bb.s, %bb.i, %bb.g
  %.098 = phi i32 [ 0, %bb.g ], [ 3, %._crit_edge127 ], [ 0, %bb.i ], [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %._crit_edge ], [ 0, %png_crc_read.exit ]
  ret i32 %.098
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_pHYs(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [9 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 9) #15
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 9) #15
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i32, ptr %i.a, align 4
  %i.e = call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i8, ptr %i.i, align 4, !tbaa !10
  %i.k = zext i8 %i.j to i32
  call void @png_set_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.k) #15
  br label %bb.d

bb.d:                                             ; preds = %png_crc_read.exit, %bb.c
  %.0 = phi i32 [ 3, %bb.c ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_sBIT(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 623 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !84
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 627
  %i.f = load i8, ptr %i.e, align 1, !tbaa !86
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = load i8, ptr %i.h, align 8, !tbaa !83
  %i.j = freeze i8 %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.033 = phi i32 [ %i.g, %bb.b ], [ 3, %bb.a ]
  %.0 = phi i8 [ %i.j, %bb.b ], [ 8, %bb.a ]      ; 2 uses
  %.not = icmp eq i32 %2, %.033
  br i1 %.not, label %png_crc_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.58) #15
  br label %bb.j

png_crc_read.exit:                                ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.o = zext nneg i32 %2 to i64                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.a, i8 %.0, i64 4, i1 false)
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.o) #15
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.o) #15
  %i.p = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
end_hunk_0
