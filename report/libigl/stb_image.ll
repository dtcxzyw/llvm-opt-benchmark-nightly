Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.k, i64 %i.s, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = call noalias noundef dereferenceable_or_null(4) ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) 4) #34 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.k, i64 %i.s, i1 false)
  %i.v = load i32, ptr %i.n, align 8, !tbaa !49
  store i32 %i.v, ptr %i.u, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %i.w = call fastcc noundef ptr @_ZL19stbi__gif_load_nextP13stbi__contextP9stbi__gifPiiPh(ptr noundef nonnull %9, ptr noundef %8, ptr noundef %6, ptr noundef null) ; 3 uses
  %i.x = icmp eq ptr %i.w, %9
  %.not5960.peel.i = icmp eq ptr %i.w, null
  %.not59.peel.i = or i1 %i.x, %.not5960.peel.i
  br i1 %.not59.peel.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.g, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 1, %bb.g ] ; 3 uses
  %i.y = phi ptr [ %i.az, %bb.n ], [ %i.w, %bb.g ]
  %.04771.i = phi ptr [ %.148.i, %bb.n ], [ %i.t, %bb.g ] ; 2 uses
  %i.z = load i32, ptr %8, align 8, !tbaa !47     ; 2 uses
  store i32 %i.z, ptr %3, align 4, !tbaa !24
  %i.aa = load i32, ptr %i.m, align 4, !tbaa !48  ; 2 uses
  store i32 %i.aa, ptr %4, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 2 uses
  %i.ac = shl nsw i32 %i.ab, 2                    ; 3 uses
  %.not61.i = icmp eq ptr %.04771.i, null
  %i.ad = trunc nuw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ae = mul nsw i32 %i.ac, %i.ad
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  br i1 %.not61.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.peel.next.i
  %i.ag = call ptr @realloc(ptr noundef nonnull %.04771.i, i64 noundef %i.af) #35 ; 2 uses
  br i1 %.not58.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %2, align 8, !tbaa !150
  %i.ai = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.aj = call ptr @realloc(ptr noundef %i.ah, i64 noundef %i.ai) #35
  br label %.sink.split.i

bb.j:                                             ; preds = %.peel.next.i
  %i.ak = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.af) #34 ; 2 uses
  br i1 %.not58.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.am = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.al) #34
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.i
  %.sink.i = phi ptr [ %i.am, %bb.k ], [ %i.aj, %bb.i ]
  %.148.ph.i = phi ptr [ %i.ak, %bb.k ], [ %i.ag, %bb.i ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !150
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %bb.j, %bb.h
  %.148.i = phi ptr [ %i.ak, %bb.j ], [ %i.ag, %bb.h ], [ %.148.ph.i, %.sink.split.i ] ; 4 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ao = mul nsw i32 %i.ac, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %.148.i, i64 %i.ap
  %i.ar = sext i32 %i.ac to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.y, i64 %i.ar, i1 false)
  %i.as = shl nsw i32 %i.ab, 3
  %i.at = sext i32 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %.148.i, i64 %i.au
  br i1 %.not58.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.n, align 8, !tbaa !49
  %i.ax = load ptr, ptr %2, align 8, !tbaa !150
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = call fastcc noundef ptr @_ZL19stbi__gif_load_nextP13stbi__contextP9stbi__gifPiiPh(ptr noundef nonnull %9, ptr noundef %8, ptr noundef %6, ptr noundef %i.av) ; 3 uses
  %i.ba = icmp eq ptr %i.az, %9
  %.not5960.i = icmp eq ptr %i.az, null
  %.not59.i = or i1 %i.ba, %.not5960.i
  br i1 %.not59.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !147

._crit_edge.i:                                    ; preds = %bb.n, %bb.g, %bb.d
  %.050.lcssa.i = phi i32 [ 0, %bb.d ], [ 1, %bb.g ], [ %i.ad, %bb.n ] ; 2 uses
  %.047.lcssa.i = phi ptr [ null, %bb.d ], [ %i.t, %bb.g ], [ %.148.i, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  call void @free(ptr noundef %i.bc) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52
  call void @free(ptr noundef %i.be) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  call void @free(ptr noundef %i.bg) #33
  %i.bh = and i32 %7, -5
  %or.cond.not.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.bi = load i32, ptr %8, align 8, !tbaa !47
  %i.bj = mul nsw i32 %i.bi, %.050.lcssa.i
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !48
  %i.bm = call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef %.047.lcssa.i, i32 noundef 4, i32 noundef %7, i32 noundef %i.bj, i32 noundef %i.bl)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.3.i = phi ptr [ %i.bm, %bb.o ], [ %.047.lcssa.i, %._crit_edge.i ]
  store i32 %.050.lcssa.i, ptr %5, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit

bb.q:                                             ; preds = %bb.a
  store ptr @.str.68, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit

_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit: ; preds = %bb.p, %bb.q
  %.052.i = phi ptr [ %.3.i, %bb.p ], [ null, %bb.q ] ; 2 uses
  %i.bn = load i32, ptr @_ZL29stbi__vertically_flip_on_load, align 4, !tbaa !24
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %bb.r

bb.r:                                             ; preds = %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit
  %i.bo = load i32, ptr %4, align 4, !tbaa !24    ; 3 uses
  %i.bp = load i32, ptr %5, align 4, !tbaa !24    ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit

.lr.ph.i:                                         ; preds = %bb.r
  %i.br = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.bs = load i32, ptr %3, align 4, !tbaa !24    ; 2 uses
  %i.bt = mul i32 %i.br, %i.bo
  %i.bu = mul i32 %i.bt, %i.bs
  %i.bv = sext i32 %i.bs to i64
  %i.bw = sext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = ashr i32 %i.bo, 1                       ; 2 uses
  %i.bz = icmp slt i32 %i.by, 1
  %.not32.i.i = icmp eq i64 %i.bx, 0
  %or.cond.i.i = select i1 %i.bz, i1 true, i1 %.not32.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.by to i64
  %i.ca = sext i32 %i.bu to i64
  br i1 %or.cond.i.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i
  %.014.i = phi ptr [ %i.cn, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i ], [ %.052.i, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i32 [ %i.co, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cb = mul i64 %indvars.iv.i.i, %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.cb
  %i.cd = trunc i64 %indvars.iv.i.i to i32
  %i.ce = xor i32 %i.cd, -1
  %i.cf = add i32 %i.bo, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.bx, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ch
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %i.cm, %bb.s ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %i.cl, %bb.s ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.ck, %bb.s ] ; 3 uses
  %i.cj = call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.cj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.cj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.cj
  %i.cm = sub nuw i64 %.02935.i.i, %i.cj          ; 2 uses
  %.not.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.loopexit.i:    ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = getelementptr inbounds i8, ptr %.014.i, i64 %i.ca
  %i.co = add nuw nsw i32 %.01213.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.co, %i.bp
  br i1 %exitcond.not.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %.lr.ph.preheader.i.i, !llvm.loop !148

_ZL26stbi__vertical_flip_slicesPviiii.exit:       ; preds = %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, %.lr.ph.i, %bb.r, %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret ptr %.052.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %0, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr %0, ptr %i.d, align 8, !tbaa !35
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %i.f, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %i.f, ptr %i.h, align 8, !tbaa !36
  %i.i = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 5 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZL29stbi__vertically_flip_on_load, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9.i = icmp eq i32 %4, 0
  br i1 %.not9.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %3, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = phi i32 [ %i.e, %bb.e ], [ %4, %bb.d ]
  %i.g = load i32, ptr %1, align 4, !tbaa !24
  %i.h = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.i = shl i32 %i.f, 2
  %i.j = sext i32 %i.g to i64
  %i.k = sext i32 %i.i to i64
  %i.l = mul nsw i64 %i.k, %i.j                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = ashr i32 %i.h, 1                         ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %.not32.i.i = icmp eq i64 %i.l, 0
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.o = mul i64 %indvars.iv.i.i, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = trunc i64 %indvars.iv.i.i to i32
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %i.h, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.l, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.x, %bb.g ] ; 3 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.w
  %i.z = sub nuw i64 %.02935.i.i, %i.w            ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.i:             ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not28 = icmp eq ptr %i.aa, null
  br i1 %.not28, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %1, align 4, !tbaa !24    ; 3 uses
  %i.ac = load i32, ptr %2, align 4, !tbaa !24    ; 4 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %3, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ae = phi i32 [ %i.ad, %bb.j ], [ %4, %bb.i ] ; 9 uses
  %i.af = or i32 %i.ac, %i.ab
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.af, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.l, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i32 %i.ac, 0
  br i1 %i.ag, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.l
  %i.ah = udiv i32 2147483647, %i.ac
  %.not34.i.i.i = icmp sgt i32 %i.ab, %i.ah
  br i1 %.not34.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.l
  %i.ai = mul nuw nsw i32 %i.ac, %i.ab            ; 9 uses
  %i.aj = or i32 %i.ae, %i.ai
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.aj, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.m, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.m:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.m
  %i.al = udiv i32 2147483647, %i.ae
  %.not.i.i.i = icmp sle i32 %i.ai, %i.al
  %i.am = mul nuw nsw i32 %i.ae, %i.ai
  %or.cond.not.i.i = icmp ult i32 %i.am, 536870912
  %or.cond.i.i31 = select i1 %.not.i.i.i, i1 %or.cond.not.i.i, i1 false
  br i1 %or.cond.i.i31, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.m
  %i.an = shl i32 %i.ai, 2
  %i.ao = mul i32 %i.an, %i.ae
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.ap) #34 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.k
  tail call void @free(ptr noundef nonnull %i.aa) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.as = and i32 %i.ae, 1
  %.not.i32 = icmp eq i32 %i.as, 0                ; 2 uses
  %i.at = sext i1 %.not.i32 to i32
  %.0.i = add i32 %i.ae, %i.at                    ; 5 uses
  %i.au = icmp sgt i32 %i.ai, 0
  br i1 %i.au, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.n
  %i.av = icmp sgt i32 %.0.i, 0
  %i.aw = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.ax = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.av, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.ay = sext i32 %i.ae to i64
  %wide.trip.count57.i = zext nneg i32 %i.ai to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.az = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod42 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 2 uses
  %i.ba = mul nuw nsw i64 %indvars.iv54.i, %i.ay  ; 3 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.bb = add nsw i64 %indvars.iv.i, %i.ba        ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.aa, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !34
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fdiv float %i.be, 2.550000e+02
  %i.bg = tail call noundef float @powf(float noundef %i.bf, float noundef %i.aw) #33
  %i.bh = fmul float %i.ax, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bb
  store float %i.bh, ptr %i.bi, align 4, !tbaa !55
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.bj = add nsw i64 %indvars.iv.next.i, %i.ba   ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.aa, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !34
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fdiv float %i.bm, 2.550000e+02
  %i.bo = tail call noundef float @powf(float noundef %i.bn, float noundef %i.aw) #33
  %i.bp = fmul float %i.ax, %i.bo
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bj
  store float %i.bp, ptr %i.bq, align 4, !tbaa !55
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !151

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.br = add nsw i64 %indvars.iv.i.epil.init, %i.ba ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.aa, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fdiv float %i.bu, 2.550000e+02
  %i.bw = tail call noundef float @powf(float noundef %i.bv, float noundef %i.aw) #33
  %i.bx = fmul float %i.ax, %i.bw
  %i.by = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.br
  store float %i.bx, ptr %i.by, align 4, !tbaa !55
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !152

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i32, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.bz = sext i32 %i.ae to i64                   ; 3 uses
  %i.ca = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.ai to i64 ; 2 uses
  %xtraiter43 = and i64 %wide.trip.count62.i, 1
  %i.cb = icmp eq i32 %i.ai, 1
  br i1 %i.cb, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter46 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph.i ] ; 3 uses
  %niter47 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter47.next.1, %.lr.ph.i ]
  %i.cc = mul nuw nsw i64 %indvars.iv59.i, %i.bz
  %i.cd = add nsw i64 %i.cc, %i.ca                ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.aa, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34
  %i.cg = uitofp i8 %i.cf to float
  %i.ch = fdiv float %i.cg, 2.550000e+02
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cd
  store float %i.ch, ptr %i.ci, align 4, !tbaa !55
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.cj = mul nuw nsw i64 %indvars.iv.next60.i, %i.bz
  %i.ck = add nsw i64 %i.cj, %i.ca                ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.aa, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !34
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fdiv float %i.cn, 2.550000e+02
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ck
  store float %i.co, ptr %i.cp, align 4, !tbaa !55
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !153

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.cq = mul nuw nsw i64 %indvars.iv59.i.epil.init, %i.bz
  %i.cr = add nsw i64 %i.cq, %i.ca                ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.aa, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !34
  %i.cu = uitofp i8 %i.ct to float
  %i.cv = fdiv float %i.cu, 2.550000e+02
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cr
  store float %i.cv, ptr %i.cw, align 4, !tbaa !55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.n
  tail call void @free(ptr noundef nonnull %i.aa) #33
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.o:                                             ; preds = %bb.h
  store ptr @.str.6, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

_ZL23stbi__float_postprocessPfPiS0_S0_i.exit:     ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.b, %bb.c, %_ZL19stbi__vertical_flipPviii.exit.i, %bb.o
  %.0 = phi ptr [ null, %bb.o ], [ null, %bb.b ], [ %i.c, %_ZL19stbi__vertical_flipPviii.exit.i ], [ %i.c, %bb.c ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.aq, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.e, ptr %i.f, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.h = call noundef i32 %i.g(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 128), !inline_history !3 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.e, align 8, !tbaa !34
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr %i.e, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %.sink.i.i, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !37
  %i.p = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 13 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !26
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = call noundef i32 %i.h(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !154 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr %i.f, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %.sink.i.i.i.i, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 208
  store ptr %.sink.i.i.i.i, ptr %i.p, align 8, !tbaa !37
  %i.q = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.r = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.q, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !26
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.e, ptr %i.f, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.h = call noundef i32 %i.g(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 128), !inline_history !0 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.e, align 8, !tbaa !34
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr %i.e, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %.sink.i.i.i, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 208
  store ptr %.sink.i.i.i, ptr %i.o, align 8, !tbaa !37
  %i.p = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_is_hdr_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.stbi__context, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %0, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %0, ptr %i.d, align 8, !tbaa !35
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %i.f, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr %i.f, ptr %i.h, align 8, !tbaa !36
  %i.i = call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 23 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !35
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %.not.i, label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit, label %bb.c, !llvm.loop !155

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre12.i, %bb.a ], [ %i.x, %bb.b ] ; 3 uses
  %i.j = phi ptr [ %.pre.i, %bb.a ], [ %i.y, %bb.b ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr @.str.103, i64 %indvars.iv.i
  %i.l = icmp ult ptr %i.j, %i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !35
  %i.n = load i8, ptr %i.j, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.r = load i32, ptr %i.g, align 4, !tbaa !30
  %i.s = tail call noundef i32 %i.p(ptr noundef %i.q, ptr noundef nonnull %i.f, i32 noundef %i.r), !inline_history !156 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.h, %bb.g
  %i.w = phi i8 [ 0, %bb.g ], [ %.pre.i.i, %bb.h ]
  %.sink.i.i.i = phi ptr [ %i.h, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.e, %bb.d
  %i.x = phi ptr [ %i.i, %bb.d ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.i, %bb.e ]
  %i.y = phi ptr [ %i.m, %bb.d ], [ %i.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.j, %bb.e ]
  %.0.i.i = phi i8 [ %i.n, %bb.d ], [ %i.w, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.e ]
  %i.z = zext i8 %.0.i.i to i32
  %i.aa = load i8, ptr %i.k, align 1, !tbaa !34
  %i.ab = sext i8 %i.aa to i32
  %.not8.i = icmp eq i32 %i.z, %i.ab
  br i1 %.not8.i, label %bb.b, label %bb.i

_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit20

bb.i:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 3 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !36
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.at, label %bb.au

bb.j:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i13
  %i.aj = icmp ult ptr %i.dz, %i.dy
  br i1 %i.aj, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.i9.1 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i9.1, label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit20.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.an = load i32, ptr %i.g, align 4, !tbaa !30
  %i.ao = tail call noundef i32 %i.al(ptr noundef %i.am, ptr noundef nonnull %i.f, i32 noundef %i.an), !inline_history !156 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.f, i64 %i.aq
  %.pre.i.i10.1 = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i11.1

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i11.1

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i11.1: ; preds = %bb.n, %bb.m
  %i.as = phi i8 [ 0, %bb.n ], [ %.pre.i.i10.1, %bb.m ]
  %.sink.i.i.i12.1 = phi ptr [ %i.h, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  store ptr %.sink.i.i.i12.1, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i13.1

bb.o:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !35
  %i.au = load i8, ptr %i.dz, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i13.1

_ZL10stbi__get8P13stbi__context.exit.i13.1:       ; preds = %bb.o, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i11.1
  %i.av = phi ptr [ %i.dy, %bb.o ], [ %.sink.i.i.i12.1, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i11.1 ] ; 2 uses
end_hunk_0
begin_hunk_1_@stbi_zlib_compress:bb.a
  %i.rx = load i8, ptr %gep.3, align 1, !tbaa !34
  %i.ry = zext i8 %i.rx to i32
  %i.rz = add i32 %i.ru, %i.ry                    ; 4 uses
  %i.sa = add i32 %i.rz, %i.rv                    ; 3 uses
  %indvars.iv.next766.3 = add nuw nsw i64 %indvars.iv765, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge694.loopexit.unr-lcssa, label %.lr.ph693, !llvm.loop !212

._crit_edge694.loopexit.unr-lcssa:                ; preds = %.lr.ph693
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge694.loopexit, label %.lr.ph693.epil.preheader

.lr.ph693.epil.preheader:                         ; preds = %._crit_edge694.loopexit.unr-lcssa, %.lr.ph693.preheader
  %indvars.iv765.epil.init = phi i64 [ 0, %.lr.ph693.preheader ], [ %indvars.iv.next766.3, %._crit_edge694.loopexit.unr-lcssa ]
  %.1692.epil.init = phi i32 [ %.0156699, %.lr.ph693.preheader ], [ %i.sa, %._crit_edge694.loopexit.unr-lcssa ]
  %.1158691.epil.init = phi i32 [ %.0157698, %.lr.ph693.preheader ], [ %i.rz, %._crit_edge694.loopexit.unr-lcssa ]
  %lcmp.mod986 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod986)
  br label %.lr.ph693.epil

.lr.ph693.epil:                                   ; preds = %.lr.ph693.epil, %.lr.ph693.epil.preheader
  %indvars.iv765.epil = phi i64 [ %indvars.iv765.epil.init, %.lr.ph693.epil.preheader ], [ %indvars.iv.next766.epil, %.lr.ph693.epil ] ; 2 uses
  %.1692.epil = phi i32 [ %.1692.epil.init, %.lr.ph693.epil.preheader ], [ %i.se, %.lr.ph693.epil ]
  %.1158691.epil = phi i32 [ %.1158691.epil.init, %.lr.ph693.epil.preheader ], [ %i.sd, %.lr.ph693.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph693.epil.preheader ], [ %epil.iter.next, %.lr.ph693.epil ]
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv765.epil
  %i.sb = load i8, ptr %gep.epil, align 1, !tbaa !34
  %i.sc = zext i8 %i.sb to i32
  %i.sd = add i32 %.1158691.epil, %i.sc           ; 3 uses
  %i.se = add i32 %i.sd, %.1692.epil              ; 2 uses
  %indvars.iv.next766.epil = add nuw nsw i64 %indvars.iv765.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge694.loopexit, label %.lr.ph693.epil, !llvm.loop !213

._crit_edge694.loopexit:                          ; preds = %.lr.ph693.epil, %._crit_edge694.loopexit.unr-lcssa
  %.lcssa955 = phi i32 [ %i.rz, %._crit_edge694.loopexit.unr-lcssa ], [ %i.sd, %.lr.ph693.epil ]
  %.lcssa = phi i32 [ %i.sa, %._crit_edge694.loopexit.unr-lcssa ], [ %i.se, %.lr.ph693.epil ]
  %i.sf = urem i32 %.lcssa955, 65521
  %i.sg = urem i32 %.lcssa, 65521
  br label %._crit_edge694

._crit_edge694:                                   ; preds = %._crit_edge694.loopexit, %.preheader
  %.1158.lcssa = phi i32 [ %.0157698, %.preheader ], [ %i.sf, %._crit_edge694.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0156699, %.preheader ], [ %i.sg, %._crit_edge694.loopexit ] ; 2 uses
  %i.sh = add nuw nsw i32 %.0700, %.4169697       ; 2 uses
  %i.si = icmp slt i32 %i.sh, %1
  br i1 %i.si, label %.preheader, label %._crit_edge701, !llvm.loop !214

._crit_edge701:                                   ; preds = %._crit_edge694, %bb.am
  %.0157.lcssa = phi i32 [ 1, %bb.am ], [ %.1158.lcssa, %._crit_edge694 ] ; 2 uses
  %.0156.lcssa = phi i32 [ 0, %bb.am ], [ %.1.lcssa, %._crit_edge694 ] ; 2 uses
  %i.sj = getelementptr inbounds i8, ptr %storemerge.lcssa, i64 -8
  %i.sk = getelementptr inbounds i8, ptr %storemerge.lcssa, i64 -4
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !24
  %i.sm = add nsw i32 %i.sl, 1
  %i.sn = load i32, ptr %i.sj, align 4, !tbaa !24 ; 2 uses
  %.not201 = icmp slt i32 %i.sm, %i.sn
  br i1 %.not201, label %bb.ao, label %.thread612

.thread612:                                       ; preds = %._crit_edge701
  %i.so = shl nsw i32 %i.sn, 1                    ; 2 uses
  %i.sp = getelementptr inbounds i8, ptr %storemerge.lcssa, i64 -8
  %i.sq = sext i32 %i.so to i64
  %i.sr = add nsw i64 %i.sq, 9
  %i.ss = tail call ptr @realloc(ptr noundef nonnull %i.sp, i64 noundef %i.sr) #35 ; 3 uses
  %.not18.i416 = icmp eq ptr %i.ss, null
  br i1 %.not18.i416, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread612
  %i.st = or disjoint i32 %i.so, 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i32 %i.st, ptr %i.ss, align 4, !tbaa !24
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge701, %.thread612, %bb.an
  %.7 = phi ptr [ %storemerge.lcssa, %._crit_edge701 ], [ %storemerge.lcssa, %.thread612 ], [ %i.su, %bb.an ] ; 5 uses
  %i.sv = lshr i32 %.0156.lcssa, 8
  %i.sw = trunc nuw i32 %i.sv to i8
  %i.sx = getelementptr inbounds i8, ptr %.7, i64 -4 ; 3 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !24 ; 2 uses
  %i.sz = add nsw i32 %i.sy, 1
  store i32 %i.sz, ptr %i.sx, align 4, !tbaa !24
  %i.ta = sext i32 %i.sy to i64
  %i.tb = getelementptr inbounds i8, ptr %.7, i64 %i.ta
  store i8 %i.sw, ptr %i.tb, align 1, !tbaa !34
  %i.tc = getelementptr inbounds i8, ptr %.7, i64 -8 ; 2 uses
  %i.td = load i32, ptr %i.sx, align 4, !tbaa !24
  %i.te = add nsw i32 %i.td, 1
  %i.tf = load i32, ptr %i.tc, align 4, !tbaa !24 ; 2 uses
  %.not202 = icmp slt i32 %i.te, %i.tf
  br i1 %.not202, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.tg = shl nsw i32 %i.tf, 1                    ; 2 uses
  %i.th = sext i32 %i.tg to i64
  %i.ti = add nsw i64 %i.th, 9
  %i.tj = tail call ptr @realloc(ptr noundef nonnull %i.tc, i64 noundef %i.ti) #35 ; 3 uses
  %.not18.i422 = icmp eq ptr %i.tj, null
  br i1 %.not18.i422, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.tk = or disjoint i32 %i.tg, 1
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i32 %i.tk, ptr %i.tj, align 4, !tbaa !24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq
  %.8 = phi ptr [ %.7, %bb.ao ], [ %.7, %bb.ap ], [ %i.tl, %bb.aq ] ; 5 uses
  %i.tm = trunc i32 %.0156.lcssa to i8
  %i.tn = getelementptr inbounds i8, ptr %.8, i64 -4 ; 3 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !24 ; 2 uses
  %i.tp = add nsw i32 %i.to, 1
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !24
  %i.tq = sext i32 %i.to to i64
  %i.tr = getelementptr inbounds i8, ptr %.8, i64 %i.tq
  store i8 %i.tm, ptr %i.tr, align 1, !tbaa !34
  %i.ts = getelementptr inbounds i8, ptr %.8, i64 -8 ; 2 uses
  %i.tt = load i32, ptr %i.tn, align 4, !tbaa !24
  %i.tu = add nsw i32 %i.tt, 1
  %i.tv = load i32, ptr %i.ts, align 4, !tbaa !24 ; 2 uses
  %.not203 = icmp slt i32 %i.tu, %i.tv
  br i1 %.not203, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.tw = shl nsw i32 %i.tv, 1                    ; 2 uses
  %i.tx = sext i32 %i.tw to i64
  %i.ty = add nsw i64 %i.tx, 9
  %i.tz = tail call ptr @realloc(ptr noundef nonnull %i.ts, i64 noundef %i.ty) #35 ; 3 uses
  %.not18.i428 = icmp eq ptr %i.tz, null
  br i1 %.not18.i428, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ua = or disjoint i32 %i.tw, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i32 %i.ua, ptr %i.tz, align 4, !tbaa !24
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.at
  %.9 = phi ptr [ %.8, %bb.ar ], [ %.8, %bb.as ], [ %i.ub, %bb.at ] ; 5 uses
  %i.uc = lshr i32 %.0157.lcssa, 8
  %i.ud = trunc nuw i32 %i.uc to i8
  %i.ue = getelementptr inbounds i8, ptr %.9, i64 -4 ; 3 uses
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !24 ; 2 uses
  %i.ug = add nsw i32 %i.uf, 1
  store i32 %i.ug, ptr %i.ue, align 4, !tbaa !24
  %i.uh = sext i32 %i.uf to i64
  %i.ui = getelementptr inbounds i8, ptr %.9, i64 %i.uh
  store i8 %i.ud, ptr %i.ui, align 1, !tbaa !34
  %i.uj = getelementptr inbounds i8, ptr %.9, i64 -8 ; 2 uses
  %i.uk = load i32, ptr %i.ue, align 4, !tbaa !24
  %i.ul = add nsw i32 %i.uk, 1
  %i.um = load i32, ptr %i.uj, align 4, !tbaa !24 ; 2 uses
  %.not204 = icmp slt i32 %i.ul, %i.um
  br i1 %.not204, label %_ZL14stbiw__sbgrowfPPvii.exit437, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.un = shl nsw i32 %i.um, 1                    ; 2 uses
  %i.uo = sext i32 %i.un to i64
  %i.up = add nsw i64 %i.uo, 9
  %i.uq = tail call ptr @realloc(ptr noundef nonnull %i.uj, i64 noundef %i.up) #35 ; 3 uses
  %.not18.i434 = icmp eq ptr %i.uq, null
  br i1 %.not18.i434, label %_ZL14stbiw__sbgrowfPPvii.exit437, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ur = or disjoint i32 %i.un, 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i32 %i.ur, ptr %i.uq, align 4, !tbaa !24
  br label %_ZL14stbiw__sbgrowfPPvii.exit437

_ZL14stbiw__sbgrowfPPvii.exit437:                 ; preds = %bb.aw, %bb.av, %bb.au
  %.10 = phi ptr [ %.9, %bb.au ], [ %.9, %bb.av ], [ %i.us, %bb.aw ] ; 4 uses
  %i.ut = trunc i32 %.0157.lcssa to i8
  %i.uu = getelementptr inbounds i8, ptr %.10, i64 -4 ; 3 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !24 ; 2 uses
  %i.uw = add nsw i32 %i.uv, 1
  store i32 %i.uw, ptr %i.uu, align 4, !tbaa !24
  %i.ux = sext i32 %i.uv to i64
  %i.uy = getelementptr inbounds i8, ptr %.10, i64 %i.ux
  store i8 %i.ut, ptr %i.uy, align 1, !tbaa !34
  %i.uz = load i32, ptr %i.uu, align 4, !tbaa !24 ; 2 uses
  store i32 %i.uz, ptr %2, align 4, !tbaa !24
  %i.va = getelementptr inbounds i8, ptr %.10, i64 -8 ; 2 uses
  %i.vb = sext i32 %i.uz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.va, ptr nonnull align 4 %.10, i64 %i.vb, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %_ZL14stbiw__sbgrowfPPvii.exit437
  %.0176 = phi ptr [ %i.va, %_ZL14stbiw__sbgrowfPPvii.exit437 ], [ null, %bb.a ]
  ret ptr %.0176
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @stbi_write_png_to_mem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @stbi_write_force_png_filter, align 4, !tbaa !24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.c = icmp eq i32 %1, 0
  %i.d = mul i32 %4, %2                           ; 10 uses
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1 ; 13 uses
  %i.e = icmp sgt i32 %i.b, 4
  %spec.store.select = select i1 %i.e, i32 -1, i32 %i.b ; 2 uses
  %i.f = add nsw i32 %i.d, 1                      ; 4 uses
  %i.g = mul nsw i32 %i.f, %3                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #34 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.d to i64                     ; 4 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34 ; 28 uses
  %.not108 = icmp eq ptr %i.k, null
  br i1 %.not108, label %bb.d, label %.preheader179

.preheader179:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader179
  %i.m = icmp sgt i32 %spec.store.select, -1
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = trunc i32 %i.b to i8
  %i.o = sext i32 %i.f to i64
  %wide.trip.count214 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv211 to i32
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.p, i32 noundef %4, i32 noundef %spec.store.select, ptr noundef %i.k)
  %i.q = mul nsw i64 %indvars.iv211, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 2 uses
  store i8 %i.n, ptr %i.r, align 1, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.c, !llvm.loop !218

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = icmp sgt i32 %i.d, 0
  %wide.trip.count209 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %i.t, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.u = sext i32 %i.f to i64
  br label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph.split
  %i.v = zext nneg i32 %i.f to i64
  %wide.trip.count203 = zext nneg i32 %i.d to i64 ; 15 uses
  %min.iters.check287 = icmp ult i32 %i.d, 8
  %n.vec289 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec289, %wide.trip.count203
  %min.iters.check271 = icmp ult i32 %i.d, 8
  %n.vec273 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec273, %wide.trip.count203
  %min.iters.check255 = icmp ult i32 %i.d, 8
  %n.vec257 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec257, %wide.trip.count203
  %min.iters.check239 = icmp ult i32 %i.d, 8
  %n.vec241 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n251 = icmp eq i64 %n.vec241, %wide.trip.count203
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv206 to i32  ; 6 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.body290

vector.body290:                                   ; preds = %.preheader.us, %vector.body290
  %index291 = phi i64 [ %index.next296, %vector.body290 ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi292 = phi <4 x i32> [ %i.ad, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %vec.phi293 = phi <4 x i32> [ %i.ae, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %index291 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load294 = load <4 x i8>, ptr %i.x, align 1, !tbaa !34
  %wide.load295 = load <4 x i8>, ptr %i.y, align 1, !tbaa !34
  %i.z = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load294, i1 false)
  %i.aa = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load295, i1 false)
  %i.ab = zext <4 x i8> %i.z to <4 x i32>
  %i.ac = zext <4 x i8> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi292, %i.ab        ; 2 uses
  %i.ae = add <4 x i32> %vec.phi293, %i.ac        ; 2 uses
  %index.next296 = add nuw i64 %index291, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.af, label %middle.block297, label %vector.body290, !llvm.loop !219

middle.block297:                                  ; preds = %vector.body290
  %bin.rdx298 = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx298) ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.us.us, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %.preheader.us, %middle.block297
  %indvars.iv200.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec289, %middle.block297 ]
  %.092182.us.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.ag, %middle.block297 ]
  br label %scalar.ph286

scalar.ph286:                                     ; preds = %scalar.ph286.preheader, %scalar.ph286
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph286 ], [ %indvars.iv200.ph, %scalar.ph286.preheader ] ; 2 uses
  %.092182.us.us = phi i32 [ %i.al, %scalar.ph286 ], [ %.092182.us.us.ph, %scalar.ph286.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  %i.aj = tail call i8 @llvm.abs.i8(i8 %i.ai, i1 false)
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %.092182.us.us, %i.ak   ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.us.us, label %scalar.ph286, !llvm.loop !220

._crit_edge.us.us:                                ; preds = %scalar.ph286, %middle.block297
  %.lcssa231 = phi i32 [ %i.ag, %middle.block297 ], [ %i.al, %scalar.ph286 ] ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %._crit_edge.us.us, %vector.body274
  %index275 = phi i64 [ %index.next280, %vector.body274 ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %vec.phi276 = phi <4 x i32> [ %i.as, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %vec.phi277 = phi <4 x i32> [ %i.at, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %index275 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load278 = load <4 x i8>, ptr %i.am, align 1, !tbaa !34
  %wide.load279 = load <4 x i8>, ptr %i.an, align 1, !tbaa !34
  %i.ao = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load278, i1 false)
  %i.ap = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load279, i1 false)
  %i.aq = zext <4 x i8> %i.ao to <4 x i32>
  %i.ar = zext <4 x i8> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi276, %i.aq        ; 2 uses
  %i.at = add <4 x i32> %vec.phi277, %i.ar        ; 2 uses
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.au, label %middle.block281, label %vector.body274, !llvm.loop !221

middle.block281:                                  ; preds = %vector.body274
  %bin.rdx282 = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx282) ; 2 uses
  br i1 %cmp.n283, label %._crit_edge.us.us.1, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %._crit_edge.us.us, %middle.block281
  %indvars.iv200.1.ph = phi i64 [ 0, %._crit_edge.us.us ], [ %n.vec273, %middle.block281 ]
  %.092182.us.us.1.ph = phi i32 [ 0, %._crit_edge.us.us ], [ %i.av, %middle.block281 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %indvars.iv200.1 = phi i64 [ %indvars.iv.next201.1, %scalar.ph270 ], [ %indvars.iv200.1.ph, %scalar.ph270.preheader ] ; 2 uses
  %.092182.us.us.1 = phi i32 [ %i.ba, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.ay = tail call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.092182.us.us.1, %i.az ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !222

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
  %.lcssa232 = phi i32 [ %i.av, %middle.block281 ], [ %i.ba, %scalar.ph270 ] ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  br i1 %min.iters.check255, label %scalar.ph254.preheader, label %vector.body258

vector.body258:                                   ; preds = %._crit_edge.us.us.1, %vector.body258
  %index259 = phi i64 [ %index.next264, %vector.body258 ], [ 0, %._crit_edge.us.us.1 ] ; 2 uses
  %vec.phi260 = phi <4 x i32> [ %i.bh, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %vec.phi261 = phi <4 x i32> [ %i.bi, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %index259 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %wide.load262 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !34
  %wide.load263 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !34
  %i.bd = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load262, i1 false)
  %i.be = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load263, i1 false)
  %i.bf = zext <4 x i8> %i.bd to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi260, %i.bf        ; 2 uses
  %i.bi = add <4 x i32> %vec.phi261, %i.bg        ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !223

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx266) ; 2 uses
  br i1 %cmp.n267, label %._crit_edge.us.us.2, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %._crit_edge.us.us.1, %middle.block265
  %indvars.iv200.2.ph = phi i64 [ 0, %._crit_edge.us.us.1 ], [ %n.vec257, %middle.block265 ]
  %.092182.us.us.2.ph = phi i32 [ 0, %._crit_edge.us.us.1 ], [ %i.bk, %middle.block265 ]
end_hunk_1
begin_hunk_2_@_ZL14stbi__pnm_testP13stbi__context:bb.a
  %i.al = tail call noundef i32 %i.af(ptr noundef %i.ah, ptr noundef nonnull %i.ai, i32 noundef %i.ak), !inline_history !9 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ai, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

bb.k:                                             ; preds = %bb.i
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 %i.ao
  %.pre.i10 = load i8, ptr %i.ai, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

_ZL19stbi__refill_bufferP13stbi__context.exit.i11: ; preds = %bb.k, %bb.j
  %i.aq = phi i8 [ 0, %bb.j ], [ %.pre.i10, %bb.k ]
  %.sink.i.i12 = phi ptr [ %i.an, %bb.j ], [ %i.ap, %bb.k ]
  store ptr %.sink.i.i12, ptr %i.c, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit14

_ZL10stbi__get8P13stbi__context.exit14:           ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11
  %.0.i13 = phi i8 [ %i.ab, %bb.g ], [ %i.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11 ]
  %.not = icmp ne i8 %.0.i, 80
  %i.as = add i8 %.0.i13, -55
  %or.cond = icmp ult i8 %i.as, -2
  %or.cond8 = or i1 %.not, %or.cond
  br i1 %or.cond8, label %_ZL10stbi__get8P13stbi__context.exit14.thread, label %bb.l

_ZL10stbi__get8P13stbi__context.exit14.thread:    ; preds = %bb.h, %_ZL10stbi__get8P13stbi__context.exit14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !23
  store <2 x ptr> %i.au, ptr %i.a, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit14, %_ZL10stbi__get8P13stbi__context.exit14.thread
  %.0 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit14.thread ], [ 1, %_ZL10stbi__get8P13stbi__context.exit14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !66
  store i32 %i.d, ptr %1, align 4, !tbaa !24
  %i.e = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  store i32 %i.e, ptr %2, align 4, !tbaa !24
  %.not40 = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !68  ; 5 uses
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.pre, ptr %3, align 4, !tbaa !24
  %.pre4 = load i32, ptr %i.a, align 4, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ %.pre4, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !66     ; 5 uses
  %i.h = or i32 %i.g, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.j = udiv i32 2147483647, %i.g
  %.not23.i = icmp sgt i32 %.pre, %i.j
  br i1 %.not23.i, label %bb.g, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.k = mul i32 %i.g, %.pre                      ; 4 uses
  %i.l = or i32 %i.f, %i.k
  %or.cond.not.i10.i = icmp sgt i32 %i.l, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.m = icmp eq i32 %i.f, 0                      ; 2 uses
  br i1 %i.m, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.n = udiv i32 2147483647, %i.f
  %.not.i = icmp sgt i32 %i.k, %i.n
  br i1 %.not.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.d, %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.n

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  br i1 %i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %i.o = udiv i32 2147483647, %i.g
  %.not23.i.i = icmp sgt i32 %.pre, %i.o
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mad3sizes_validiiii.exit, %_ZL21stbi__mul2sizes_validii.exit.i.i
  br i1 %i.m, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.p = udiv i32 2147483647, %i.f
  %.not.i.i = icmp sgt i32 %i.k, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.q = mul i32 %i.k, %i.f                       ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.r) #34 ; 7 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.h

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.n

bb.h:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %.not.i45 = icmp eq ptr %i.u, null
  br i1 %.not.i45, label %..thread_crit_edge.i, label %bb.i

..thread_crit_edge.i:                             ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !36
  br label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = icmp sgt i32 %i.q, %i.ac
  br i1 %i.ad, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %sext.i = shl i64 %i.ab, 32
  %i.ae = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.y, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 %i.ae
  %i.ai = sub nsw i32 %i.q, %i.ac
  %i.aj = tail call noundef i32 %i.u(ptr noundef %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.ai), !inline_history !123 ; 0 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !36
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.i, %..thread_crit_edge.i
  %i.al = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.w, %bb.i ]
  %i.am = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.y, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.r ; 2 uses
  %.not32.i = icmp ugt ptr %i.an, %i.al
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.am, i64 %i.r, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.j, %.thread.i, %bb.k
  %.not43 = icmp eq i32 %4, 0
  br i1 %.not43, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %.not44 = icmp eq i32 %4, %i.ap
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %0, align 8, !tbaa !66
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !67
  %i.as = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.s, i32 noundef %i.ap, i32 noundef %4, i32 noundef %i.aq, i32 noundef %i.ar)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.l, %bb.a, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.g
  %.034 = phi ptr [ null, %bb.a ], [ %i.as, %bb.m ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.g ], [ %i.s, %bb.l ], [ %i.s, %_ZL10stbi__getnP13stbi__contextPhi.exit ]
  ret ptr %.034
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 2 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not135 = icmp eq i32 %i.u, 0
  br i1 %.not135, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.87, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %._crit_edge58.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.v = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.w = load i8, ptr %i.a, align 16, !tbaa !34
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.012137 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.y = load i128, ptr %i.a, align 16
  %i.z = xor i128 %i.y, 144150481438637697380701673535474650950
  %i.aa = getelementptr i8, ptr %i.a, i64 7
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 526417854750532455411190335003243059
  %i.ad = or i128 %i.z, %i.ac
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i32 1, i32 %.012137 ; 2 uses
  %i.ah = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ai = load i8, ptr %i.a, align 16, !tbaa !34
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph, !llvm.loop !388

._crit_edge:                                      ; preds = %.lr.ph
  %i.ak = icmp eq i32 %spec.select, 0
  br i1 %i.ak, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  store ptr @.str.89, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %._crit_edge58.thread

bb.e:                                             ; preds = %._crit_edge
  %i.al = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.am = load i16, ptr %i.a, align 16
  %i.an = xor i16 %i.am, 22829
  %i.ao = getelementptr i8, ptr %i.a, i64 2
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 32
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not137 = icmp eq i32 %i.au, 0
  br i1 %.not137, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %._crit_edge58.thread

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !23
  %i.aw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, i32 noundef 10) #33 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32                  ; 8 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !23 ; 3 uses
  %i.ay = load i8, ptr %.promoted, align 1, !tbaa !34 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 32
  br i1 %i.az, label %.lr.ph39, label %sub_0

.lr.ph39:                                         ; preds = %bb.g, %.lr.ph39
  %i.ba = phi ptr [ %i.bb, %.lr.ph39 ], [ %.promoted, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 4 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !23
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %.lr.ph39, label %sub_0, !llvm.loop !389

sub_0:                                            ; preds = %.lr.ph39, %bb.g
  %i.be = phi i8 [ %i.ay, %bb.g ], [ %i.bc, %.lr.ph39 ]
  %.lcssa = phi ptr [ %.promoted, %bb.g ], [ %i.bb, %.lr.ph39 ] ; 3 uses
  %.not60 = icmp eq i8 %i.be, 43
  br i1 %.not60, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %.not61 = icmp eq i8 %i.bg, 88
  br i1 %.not61, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 32
  br i1 %i.bj, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %._crit_edge58.thread

bb.h:                                             ; preds = %.tail
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 3 ; 2 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !23
  %i.bl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bk, ptr noundef null, i32 noundef 10) #33 ; 4 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 11 uses
  store i32 %i.bm, ptr %1, align 4, !tbaa !24
  store i32 %i.ax, ptr %2, align 4, !tbaa !24
  %.not139 = icmp eq ptr %3, null
  br i1 %.not139, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %3, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bn = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bn, i32 3, i32 %4 ; 11 uses
  %i.bo = or i32 %i.bm, %i.ax
  %or.cond.not.i.i = icmp sgt i32 %i.bo, -1
  br i1 %or.cond.not.i.i, label %bb.k, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq i32 %i.ax, 0                    ; 2 uses
  br i1 %i.bp, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.k
  %i.bq = udiv i32 2147483647, %i.ax
  %.not34.i = icmp slt i32 %i.bq, %i.bm
  br i1 %.not34.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.k
  %i.br = mul nuw nsw i32 %i.bm, %i.ax            ; 4 uses
  %i.bs = or i32 %i.br, %spec.store.select
  %or.cond.not.i16.i = icmp sgt i32 %i.bs, -1
  br i1 %or.cond.not.i16.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.bt = udiv i32 2147483647, %spec.store.select
  %.not.i = icmp sle i32 %i.br, %i.bt
  %i.bu = mul nuw nsw i32 %i.br, %spec.store.select
  %or.cond13.not = icmp ult i32 %i.bu, 536870912
  %or.cond179 = select i1 %.not.i, i1 %or.cond13.not, i1 false
  br i1 %or.cond179, label %bb.m, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

_ZL21stbi__mad4sizes_validiiiii.exit.thread:      ; preds = %bb.j, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.l
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %._crit_edge58.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.bp, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.m
  %i.bv = udiv i32 2147483647, %i.ax
  %.not34.i.i = icmp slt i32 %i.bv, %i.bm
  br i1 %.not34.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.m
  %i.bw = shl i32 %spec.store.select, 2
  %i.bx = mul i32 %i.bw, %i.br
  %i.by = sext i32 %i.bx to i64
  %i.bz = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.by) #34 ; 11 uses
  %.not141 = icmp eq ptr %i.bz, null
  br i1 %.not141, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %._crit_edge58.thread

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ca = add nsw i32 %i.bm, -32768
  %or.cond = icmp ult i32 %i.ca, -32760
  br i1 %or.cond, label %bb.o, label %.preheader18

.preheader18:                                     ; preds = %bb.n
  %i.cb = icmp sgt i32 %i.ax, 0
  br i1 %i.cb, label %.lr.ph57, label %._crit_edge58.thread
end_hunk_2
begin_hunk_3_@_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.hn = load i32, ptr %i.ce, align 8, !tbaa !31
  %.not.i182 = icmp eq i32 %i.hn, 0
  br i1 %.not.i182, label %_ZL10stbi__get8P13stbi__context.exit187, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.hp = load ptr, ptr %i.cg, align 8, !tbaa !29
  %i.hq = load i32, ptr %i.ci, align 4, !tbaa !30
  %i.hr = call noundef i32 %i.ho(ptr noundef %i.hp, ptr noundef nonnull %i.ch, i32 noundef %i.hq), !inline_history !9 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ce, align 8, !tbaa !31
  store i8 0, ptr %i.ch, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i184

bb.bj:                                            ; preds = %bb.bh
  %i.ht = sext i32 %i.hr to i64
  %i.hu = getelementptr inbounds i8, ptr %i.ch, i64 %i.ht
  %.pre.i183 = load i8, ptr %i.ch, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i184

_ZL19stbi__refill_bufferP13stbi__context.exit.i184: ; preds = %bb.bj, %bb.bi
  %i.hv = phi i8 [ 0, %bb.bi ], [ %.pre.i183, %bb.bj ]
  %.sink.i.i185 = phi ptr [ %i.cj, %bb.bi ], [ %i.hu, %bb.bj ]
  store ptr %.sink.i.i185, ptr %i.cd, align 8, !tbaa !36
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit187

_ZL10stbi__get8P13stbi__context.exit187:          ; preds = %bb.bf, %bb.bg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i184
  %.0.i186 = phi i8 [ %i.hm, %bb.bf ], [ %i.hv, %_ZL19stbi__refill_bufferP13stbi__context.exit.i184 ], [ 0, %bb.bg ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hw = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.hw
  store i8 %.0.i186, ptr %gep, align 1, !tbaa !34
  %i.hx = add nuw nsw i32 %.142, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hx, %i.gj
  br i1 %exitcond.not, label %.loopexit.loopexit64, label %.lr.ph43, !llvm.loop !393

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph47
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv91.epil.init = phi i64 [ %i.ha, %.lr.ph47.preheader ], [ %indvars.iv.next92.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod229 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod229)
  br label %.lr.ph47.epil

.lr.ph47.epil:                                    ; preds = %.lr.ph47.epil, %.lr.ph47.epil.preheader
  %indvars.iv91.epil = phi i64 [ %indvars.iv91.epil.init, %.lr.ph47.epil.preheader ], [ %indvars.iv.next92.epil, %.lr.ph47.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph47.epil.preheader ], [ %epil.iter.next, %.lr.ph47.epil ]
  %indvars.iv.next92.epil = add nsw i64 %indvars.iv91.epil, 1 ; 2 uses
  %i.hy = shl nsw i64 %indvars.iv91.epil, 2
  %gep178.epil = getelementptr i8, ptr %invariant.gep177, i64 %i.hy
  store i8 %.0.i180, ptr %gep178.epil, align 1, !tbaa !34
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph47.epil, !llvm.loop !394

.loopexit.loopexit:                               ; preds = %.lr.ph47.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next92.lcssa = phi i64 [ %indvars.iv.next92.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next92.epil, %.lr.ph47.epil ]
  %i.hz = trunc nsw i64 %indvars.iv.next92.lcssa to i32
  br label %.loopexit

.loopexit.loopexit64:                             ; preds = %_ZL10stbi__get8P13stbi__context.exit187
  %i.ia = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %.loopexit.loopexit64, %.loopexit.loopexit, %.preheader14, %.preheader
  %.5 = phi i32 [ %i.hz, %.loopexit.loopexit ], [ %.211749, %.preheader ], [ %.211749, %.preheader14 ], [ %i.ia, %.loopexit.loopexit64 ], [ %.211749, %bb.at ] ; 2 uses
  %i.ib = sub nsw i32 %i.bm, %.5                  ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 1
  br i1 %i.ic, label %..critedge_crit_edge, label %bb.ar, !llvm.loop !395

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, 4
  br i1 %exitcond98.not, label %.lr.ph53, label %.preheader16, !llvm.loop !396

bb.bk:                                            ; preds = %.lr.ph53, %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv99 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next100, %_ZL17stbi__hdr_convertPfPhi.exit ] ; 3 uses
  %i.id = add nuw nsw i64 %indvars.iv99, %i.fr
  %i.ie = mul nsw i64 %i.id, %i.cn
  %i.if = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ie ; 11 uses
  %i.ig = shl nuw nsw i64 %indvars.iv99, 2
  %i.ih = getelementptr inbounds nuw i8, ptr %.1120, i64 %i.ig ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 3
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !34  ; 2 uses
  %.not.i188 = icmp eq i8 %i.ij, 0
  br i1 %.not.i188, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ik = zext i8 %i.ij to i32
  %i.il = add nsw i32 %i.ik, -136
  %i.im = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.il) #33 ; 4 uses
  %i.in = load i8, ptr %i.ih, align 1, !tbaa !34  ; 2 uses
  br i1 %i.cm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.io = zext i8 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !34
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nuw nsw i32 %i.ir, %i.io
  %i.it = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !34
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nuw nsw i32 %i.is, %i.iv
  %i.ix = uitofp nneg i32 %i.iw to float
  %i.iy = fmul float %i.im, %i.ix
  %i.iz = fdiv float %i.iy, 3.000000e+00
  store float %i.iz, ptr %i.if, align 4, !tbaa !55
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ja = uitofp i8 %i.in to float
  %i.jb = fmul float %i.im, %i.ja
  store float %i.jb, ptr %i.if, align 4, !tbaa !55
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !34
  %i.je = uitofp i8 %i.jd to float
  %i.jf = fmul float %i.im, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store float %i.jf, ptr %i.jg, align 4, !tbaa !55
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !34
  %i.jj = uitofp i8 %i.ji to float
  %i.jk = fmul float %i.im, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store float %i.jk, ptr %i.jl, align 4, !tbaa !55
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.bp
    i32 4, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.jm = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store float 1.000000e+00, ptr %i.jm, align 4, !tbaa !55
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.bq:                                            ; preds = %bb.bo
  %i.jn = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store float 1.000000e+00, ptr %i.jn, align 4, !tbaa !55
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.br:                                            ; preds = %bb.bk
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.bs
    i32 3, label %bb.bt
    i32 2, label %bb.bu
    i32 1, label %bb.bv
  ]

bb.bs:                                            ; preds = %bb.br
  %i.jo = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store float 1.000000e+00, ptr %i.jo, align 4, !tbaa !55
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.jp = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store float 0.000000e+00, ptr %i.jp, align 4, !tbaa !55
  store <2 x float> zeroinitializer, ptr %i.if, align 4, !tbaa !55
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.bu:                                            ; preds = %bb.br
  %i.jq = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store float 1.000000e+00, ptr %i.jq, align 4, !tbaa !55
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br
  store float 0.000000e+00, ptr %i.if, align 4, !tbaa !55
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bt, %bb.bv
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge54, label %bb.bk, !llvm.loop !397

._crit_edge54:                                    ; preds = %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge58, label %bb.s, !llvm.loop !398

._crit_edge58:                                    ; preds = %._crit_edge54
  call void @free(ptr noundef nonnull %.1120) #33
  br label %._crit_edge58.thread

._crit_edge58.thread:                             ; preds = %.preheader18, %bb.bd, %bb.be, %bb.o, %._crit_edge58, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.ap, %_ZL17stbi__malloc_mad4iiiii.exit.thread, %_ZL21stbi__mad4sizes_validiiiii.exit.thread, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3126 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %._crit_edge.thread ], [ null, %bb.ap ], [ %i.bz, %bb.o ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread ], [ null, %_ZL21stbi__mad4sizes_validiiiii.exit.thread ], [ null, %bb.bd ], [ %i.bz, %._crit_edge58 ], [ null, %bb.be ], [ %i.bz, %.preheader18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.3126
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL16stbi__hdr_to_ldrPfiii(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not23.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.i) #34 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef nonnull %0) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.i

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.l                     ; 4 uses
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.n = icmp sgt i32 %.046, 0
  %i.o = load float, ptr @_ZL17stbi__h2l_scale_i, align 4
  %i.p = load float, ptr @_ZL17stbi__h2l_gamma_i, align 4
  br i1 %i.n, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.q = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64
  %i.r = icmp slt i32 %.046, %3
  %i.s = zext nneg i32 %.046 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.h ] ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv63, %i.q      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.u = add nsw i64 %indvars.iv58, %i.t          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !55
  %i.x = fmul float %i.w, %i.o
  %i.y = tail call noundef float @powf(float noundef %i.x, float noundef %i.p) #33
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.aa = fcmp olt float %i.z, 0.000000e+00
  %spec.store.select.us = select i1 %i.aa, float 0.000000e+00, float %i.z ; 2 uses
  %i.ab = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.ab, float 2.550000e+02, float %spec.store.select.us
  %i.ac = fptosi float %spec.store.select2.us to i32
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !34
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.f, !llvm.loop !399

bb.g:                                             ; preds = %._crit_edge.us
  %i.af = add nsw i64 %i.t, %i.s                  ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !55
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.aj = fcmp olt float %i.ai, 0.000000e+00
  %spec.store.select1.us = select i1 %i.aj, float 0.000000e+00, float %i.ai ; 2 uses
  %i.ak = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.ak, float 2.550000e+02, float %spec.store.select1.us
  %i.al = fptosi float %spec.store.select3.us to i32
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds i8, ptr %i.j, i64 %i.af
  store i8 %i.am, ptr %i.an, align 1, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !400

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ao = icmp sgt i32 %3, 0
  br i1 %i.ao, label %.preheader.preheader, label %._crit_edge55

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ap = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader75

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.aq, align 4, !tbaa !55
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.as = fcmp olt <4 x float> %i.ar, zeroinitializer
  %i.at = select <4 x i1> %i.as, <4 x float> zeroinitializer, <4 x float> %i.ar ; 2 uses
  %i.au = fcmp ogt <4 x float> %i.at, splat (float 2.550000e+02)
  %i.av = select <4 x i1> %i.au, <4 x float> splat (float 2.550000e+02), <4 x float> %i.at
  %i.aw = fptosi <4 x float> %i.av to <4 x i32>
  %i.ax = trunc <4 x i32> %i.aw to <4 x i8>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !401

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %.preheader.preheader75

.preheader.preheader75:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader75, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader75 ] ; 2 uses
  %i.ba = mul nuw nsw i64 %indvars.iv, %i.ap      ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !55
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.be = fcmp olt float %i.bd, 0.000000e+00
  %spec.store.select1 = select i1 %i.be, float 0.000000e+00, float %i.bd ; 2 uses
  %i.bf = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.bf, float 2.550000e+02, float %spec.store.select1
  %i.bg = fptosi float %spec.store.select3 to i32
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ba
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.preheader, !llvm.loop !402

._crit_edge55:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge55, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.0 = phi ptr [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ %i.j, %._crit_edge55 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__tga_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 25 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.h, 0
end_hunk_3
