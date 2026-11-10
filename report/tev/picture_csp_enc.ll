Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/picture_csp_enc?download=true
inline.NumInlined: 94
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@WebPPictureSharpARGBToYUVA:bb.a
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %PictureARGBToYUVA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %PictureARGBToYUVA.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  %i.l = shl nsw i32 %i.k, 2
  %i.m = tail call fastcc i32 @ImportYUVAFromRGBA(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.c, ptr noundef nonnull %i.f, i32 noundef 4, i32 noundef %i.l, float noundef 0.000000e+00, i32 noundef 1, ptr noundef %0)
  br label %PictureARGBToYUVA.exit

PictureARGBToYUVA.exit:                           ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.m, %bb.d ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureSmartARGBToYUVA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %WebPPictureSharpARGBToYUVA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %WebPPictureSharpARGBToYUVA.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  %i.l = shl nsw i32 %i.k, 2
  %i.m = tail call fastcc i32 @ImportYUVAFromRGBA(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.c, ptr noundef nonnull %i.f, i32 noundef 4, i32 noundef %i.l, float noundef 0.000000e+00, i32 noundef 1, ptr noundef %0)
  br label %WebPPictureSharpARGBToYUVA.exit

WebPPictureSharpARGBToYUVA.exit:                  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.m, %bb.d ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureYUVAToARGB(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26   ; 2 uses
  %i.m = and i32 %i.l, 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = and i32 %i.l, 3
  %.not93 = icmp eq i32 %i.q, 0
  br i1 %.not93, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @WebPPictureAllocARGB(ptr noundef nonnull %0) #9
  %.not94 = icmp eq i32 %i.r, 0
  br i1 %.not94, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !19   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = shl nsw i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !28  ; 4 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !29  ; 4 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.ae = tail call ptr @WebPGetLinePairConverter(i32 noundef 1) #9 ; 3 uses
  tail call void %i.ae(ptr noundef %i.ad, ptr noundef null, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.aa, ptr noundef null, i32 noundef %i.t) #9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = sext i32 %i.y to i64                    ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 %i.aj ; 2 uses
  %i.al = icmp sgt i32 %i.v, 2
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.an = shl nsw i32 %i.x, 3
  %i.ao = sext i32 %i.an to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %i.ap = phi i32 [ %i.ag, %.lr.ph ], [ %i.ax, %bb.j ]
  %.086101 = phi i32 [ 1, %.lr.ph ], [ %i.bc, %bb.j ] ; 2 uses
  %.087100 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ba, %bb.j ] ; 3 uses
  %.08899 = phi ptr [ %i.ac, %.lr.ph ], [ %i.at, %bb.j ] ; 2 uses
  %.08998 = phi ptr [ %i.ab, %.lr.ph ], [ %i.as, %bb.j ] ; 2 uses
  %.09097 = phi ptr [ %i.ak, %.lr.ph ], [ %i.bb, %bb.j ] ; 3 uses
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !31
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.08998, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.08899, i64 %i.ar ; 3 uses
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds i8, ptr %.087100, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %.09097, i64 %i.aj
  tail call void %i.ae(ptr noundef %.087100, ptr noundef %i.av, ptr noundef %.08998, ptr noundef %.08899, ptr noundef %i.as, ptr noundef %i.at, ptr noundef %.09097, ptr noundef %i.aw, i32 noundef %i.t) #9
  %i.ax = load i32, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ay = shl nsw i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %.087100, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.09097, i64 %i.ao ; 2 uses
  %i.bc = add nuw nsw i32 %.086101, 2
  %i.bd = add nuw nsw i32 %.086101, 3
  %i.be = icmp slt i32 %i.bd, %i.v
  br i1 %i.be, label %bb.j, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.090.lcssa = phi ptr [ %i.ak, %bb.i ], [ %i.bb, %bb.j ]
  %.089.lcssa = phi ptr [ %i.ab, %bb.i ], [ %i.as, %bb.j ] ; 2 uses
  %.088.lcssa = phi ptr [ %i.ac, %bb.i ], [ %i.at, %bb.j ] ; 2 uses
  %.087.lcssa = phi ptr [ %i.ai, %bb.i ], [ %i.ba, %bb.j ]
  %i.bf = icmp sgt i32 %i.v, 1
  %i.bg = and i32 %i.v, 1
  %.not95 = icmp eq i32 %i.bg, 0
  %or.cond = and i1 %i.bf, %.not95
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  tail call void %i.ae(ptr noundef %.087.lcssa, ptr noundef null, ptr noundef %.089.lcssa, ptr noundef %.088.lcssa, ptr noundef %.089.lcssa, ptr noundef %.088.lcssa, ptr noundef %.090.lcssa, ptr noundef null, i32 noundef %i.t) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.bh = load i32, ptr %i.k, align 4, !tbaa !26
  %i.bi = and i32 %i.bh, 4
  %.not96 = icmp ne i32 %i.bi, 0
  %i.bj = icmp sgt i32 %i.v, 0
  %or.cond111 = select i1 %.not96, i1 %i.bj, i1 false
  br i1 %or.cond111, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %bb.l
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = icmp sgt i32 %i.t, 0
  br i1 %i.bo, label %.lr.ph107.preheader, label %.loopexit

.lr.ph107.preheader:                              ; preds = %.lr.ph110
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 7 uses
  %scevgep = getelementptr i8, ptr %i.bm, i64 %wide.trip.count
  %1 = shl nuw nsw i64 %wide.trip.count, 2
  %invariant.gep = getelementptr i8, ptr %i.bk, i64 %1
  %min.iters.check = icmp ult i32 %i.t, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bp = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %._crit_edge108
  %.1109 = phi i32 [ %i.dm, %._crit_edge108 ], [ 0, %.lr.ph107.preheader ] ; 3 uses
  %i.bq = load i32, ptr %i.w, align 8, !tbaa !21
  %i.br = mul nsw i32 %i.bq, %.1109
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bs ; 5 uses
  %i.bu = load i32, ptr %i.bn, align 8, !tbaa !25
  %i.bv = mul nsw i32 %i.bu, %.1109
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bm, i64 %i.bw ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107
  %i.by = shl nsw i64 %i.bs, 2
  %i.bz = getelementptr i8, ptr %invariant.gep, i64 %i.by
  %gep = getelementptr i8, ptr %scevgep, i64 %i.bw
  %bound0 = icmp ult ptr %i.bt, %gep
  %bound1 = icmp ult ptr %i.bx, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !32, !alias.scope !44, !noalias !45
  %wide.load129 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !32, !alias.scope !44, !noalias !45
  %i.cc = and <4 x i32> %wide.load, splat (i32 16777215)
  %i.cd = and <4 x i32> %wide.load129, splat (i32 16777215)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %wide.load130 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !33, !alias.scope !45
  %wide.load131 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !33, !alias.scope !45
  %i.cg = zext <4 x i8> %wide.load130 to <4 x i32>
  %i.ch = zext <4 x i8> %wide.load131 to <4 x i32>
  %i.ci = shl nuw <4 x i32> %i.cg, splat (i32 24)
  %i.cj = shl nuw <4 x i32> %i.ch, splat (i32 24)
  %i.ck = or disjoint <4 x i32> %i.ci, %i.cc
  %i.cl = or disjoint <4 x i32> %i.cj, %i.cd
  store <4 x i32> %i.ck, ptr %i.ca, align 4, !tbaa !32, !alias.scope !44, !noalias !45
  store <4 x i32> %i.cl, ptr %i.cb, align 4, !tbaa !32, !alias.scope !44, !noalias !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge108, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph107, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.ph ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !32
  %i.cp = and i32 %i.co, 16777215
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.ph
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !33
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw i32 %i.cs, 24
  %i.cu = or disjoint i32 %i.ct, %i.cp
  store i32 %i.cu, ptr %i.cn, align 4, !tbaa !32
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cv = icmp eq i64 %indvars.iv.ph, %i.bp
  br i1 %i.cv, label %._crit_edge108, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32
  %i.cy = and i32 %i.cx, 16777215
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !33
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 24
  %i.dd = or disjoint i32 %i.dc, %i.cy
  store i32 %i.dd, ptr %i.cw, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !32
  %i.dg = and i32 %i.df, 16777215
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !33
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw i32 %i.dj, 24
  %i.dl = or disjoint i32 %i.dk, %i.dg
  store i32 %i.dl, ptr %i.de, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge108, label %scalar.ph, !llvm.loop !42

._crit_edge108:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dm = add nuw nsw i32 %.1109, 1               ; 2 uses
  %exitcond116.not = icmp eq i32 %i.dm, %i.v
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph107, !llvm.loop !43

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.d
  %.sink = phi i32 [ 3, %bb.f ], [ 3, %bb.b ], [ 3, %bb.d ], [ 3, %bb.c ], [ 4, %bb.g ]
  %i.dn = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef %.sink) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge108, %.loopexit.sink.split, %.lr.ph110, %bb.l, %bb.h, %bb.a
  %.085 = phi i32 [ 0, %bb.a ], [ 1, %bb.l ], [ 1, %.lr.ph110 ], [ %i.dn, %.loopexit.sink.split ], [ 0, %bb.h ], [ 1, %._crit_edge108 ]
  ret i32 %.085
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WebPPictureAllocARGB(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @WebPGetLinePairConverter(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @WebPPictureImportBGR(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %Import.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.j = mul nsw i32 %i.f, 3
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %Import.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !17
  %.not73.i = icmp eq i32 %i.l, 0
  br i1 %.not73.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc i32 @ImportYUVAFromRGBA(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, ptr noundef null, i32 noundef 3, i32 noundef %2, float noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %0)
  br label %Import.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @WebPPictureAlloc(ptr noundef nonnull %0) #9
  %.not74.i = icmp eq i32 %i.n, 0
  br i1 %.not74.i, label %Import.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInit() #9
  tail call void @WebPInitAlphaProcessing() #9
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %.lr.ph90.i, label %Import.exit

.lr.ph90.i:                                       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = sext i32 %2 to i64                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph90.i
  %.089.i = phi ptr [ %i.q, %.lr.ph90.i ], [ %i.z, %bb.g ] ; 2 uses
  %.06588.i = phi ptr [ %1, %.lr.ph90.i ], [ %i.w, %bb.g ] ; 2 uses
  %.06687.i = phi ptr [ %i.d, %.lr.ph90.i ], [ %i.v, %bb.g ] ; 2 uses
  %.06786.i = phi ptr [ %i.c, %.lr.ph90.i ], [ %i.u, %bb.g ] ; 2 uses
  %.285.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.aa, %bb.g ]
  %i.t = load ptr, ptr @WebPPackRGB, align 8, !tbaa !22
  tail call void %i.t(ptr noundef %.06786.i, ptr noundef %.06687.i, ptr noundef %.06588.i, i32 noundef %i.f, i32 noundef 3, ptr noundef %.089.i) #9, !inline_history !2
  %i.u = getelementptr inbounds i8, ptr %.06786.i, i64 %i.r
  %i.v = getelementptr inbounds i8, ptr %.06687.i, i64 %i.r
  %i.w = getelementptr inbounds i8, ptr %.06588.i, i64 %i.r
  %i.x = load i32, ptr %i.s, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.089.i, i64 %i.y
  %i.aa = add nuw nsw i32 %.285.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.aa, %i.h
  br i1 %exitcond94.not.i, label %Import.exit, label %bb.g, !llvm.loop !3

Import.exit:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureImportBGRA(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %Import.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 4 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.j = shl nsw i32 %i.f, 2                      ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %Import.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !17
  %.not73.i = icmp eq i32 %i.l, 0
  br i1 %.not73.i, label %bb.d, label %bb.e
end_hunk_0
