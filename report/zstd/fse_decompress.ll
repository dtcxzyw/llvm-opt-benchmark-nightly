Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fse_decompress?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FSE_buildDTable_internal:bb.a
  %i.cs = add nuw nsw i32 %i.cr, %i.ay            ; 3 uses
  %wide.trip.count169 = zext nneg i32 %i.e to i64
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.lr.ph, %._crit_edge146
  %indvars.iv166 = phi i64 [ 0, %.preheader138.lr.ph ], [ %indvars.iv.next167, %._crit_edge146 ] ; 3 uses
  %.0115149 = phi i32 [ 0, %.preheader138.lr.ph ], [ %.1116.lcssa, %._crit_edge146 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv166
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !8  ; 5 uses
  %i.cv = icmp sgt i16 %i.cu, 0
  br i1 %i.cv, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader138
  %i.cw = trunc i64 %indvars.iv166 to i8          ; 3 uses
  %i.cx = icmp eq i16 %i.cu, 1
  br i1 %i.cx, label %.epil.preheader194, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %i.cy = and i16 %i.cu, 32766
  %unroll_iter199 = zext nneg i16 %i.cy to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph145.new
  %.1116143 = phi i32 [ %.0115149, %.lr.ph145.new ], [ %.2.1, %bb.p ] ; 2 uses
  %niter200 = phi i32 [ 0, %.lr.ph145.new ], [ %niter200.next.1, %bb.p ]
  %i.cz = zext nneg i32 %.1116143 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cw, ptr %i.db, align 2, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1116.pn = phi i32 [ %.1116143, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.cs, %.1116.pn
  %.2 = and i32 %.pn, %i.g                        ; 4 uses
  %i.dc = icmp ugt i32 %.2, %.1128.lcssa
  br i1 %i.dc, label %bb.m, label %bb.n, !llvm.loop !23

bb.n:                                             ; preds = %bb.m
  %i.dd = zext nneg i32 %.2 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.cw, ptr %i.df, align 2, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1116.pn.1 = phi i32 [ %.2, %bb.n ], [ %.2.1, %bb.o ]
  %.pn.1 = add nuw i32 %i.cs, %.1116.pn.1
  %.2.1 = and i32 %.pn.1, %i.g                    ; 5 uses
  %i.dg = icmp ugt i32 %.2.1, %.1128.lcssa
  br i1 %i.dg, label %bb.o, label %bb.p, !llvm.loop !23

bb.p:                                             ; preds = %bb.o
  %niter200.next.1 = add i32 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i32 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %bb.l, !llvm.loop !24

._crit_edge146.loopexit.unr-lcssa:                ; preds = %bb.p
  %i.dh = and i16 %i.cu, 1
  %lcmp.mod196.not = icmp eq i16 %i.dh, 0
  br i1 %lcmp.mod196.not, label %._crit_edge146, label %.epil.preheader194

.epil.preheader194:                               ; preds = %._crit_edge146.loopexit.unr-lcssa, %.lr.ph145
  %.1116143.epil.init = phi i32 [ %.0115149, %.lr.ph145 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i16 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.di = zext nneg i32 %.1116143.epil.init to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.cw, ptr %i.dk, align 2, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader194
  %.1116.pn.epil = phi i32 [ %.1116143.epil.init, %.epil.preheader194 ], [ %.2.epil, %bb.q ]
  %.pn.epil = add nuw i32 %i.cs, %.1116.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.g              ; 3 uses
  %i.dl = icmp ugt i32 %.2.epil, %.1128.lcssa
  br i1 %i.dl, label %bb.q, label %._crit_edge146, !llvm.loop !23

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit.unr-lcssa, %bb.q, %.preheader138
  %.1116.lcssa = phi i32 [ %.0115149, %.preheader138 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ], [ %.2.epil, %bb.q ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge150, label %.preheader138, !llvm.loop !25

._crit_edge150:                                   ; preds = %._crit_edge146
  %.not = icmp eq i32 %.1116.lcssa, 0
  br i1 %.not, label %._crit_edge150..loopexit137_crit_edge, label %.loopexit

._crit_edge150..loopexit137_crit_edge:            ; preds = %._crit_edge150
  %.pre = zext nneg i32 %i.f to i64
  br label %.loopexit137

.loopexit137:                                     ; preds = %.preheader, %._crit_edge150..loopexit137_crit_edge
  %wide.trip.count183.pre-phi = phi i64 [ %.pre, %._crit_edge150..loopexit137_crit_edge ], [ %i.be, %.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %.loopexit137, %bb.r
  %indvars.iv180 = phi i64 [ 0, %.loopexit137 ], [ %indvars.iv.next181, %bb.r ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv180 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !10
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !8  ; 2 uses
  %i.ds = add i16 %i.dr, 1
  store i16 %i.ds, ptr %i.dq, align 2, !tbaa !8
  %i.dt = zext i16 %i.dr to i32                   ; 2 uses
  %i.du = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dt, i1 true)
  %i.dv = xor i32 %i.du, 31
  %i.dw = sub nsw i32 %3, %i.dv                   ; 2 uses
  %i.dx = trunc nsw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !26
  %i.dz = and i32 %i.dw, 255
  %i.ea = shl i32 %i.dt, %i.dz
  %i.eb = sub i32 %i.ea, %i.f
  %i.ec = trunc i32 %i.eb to i16
  store i16 %i.ec, ptr %i.dm, align 2, !tbaa !27
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183.pre-phi
  br i1 %exitcond184.not, label %.loopexit, label %bb.r, !llvm.loop !28

.loopexit:                                        ; preds = %bb.r, %bb.b, %bb.a, %._crit_edge150
  %.1 = phi i64 [ -1, %._crit_edge150 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %bb.r ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %struct.BIT_DStream_t, align 8      ; 21 uses
  %9 = alloca %struct.FSE_DState_t, align 8       ; 8 uses
  %10 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %11 = alloca %struct.BIT_DStream_t, align 8     ; 14 uses
  %12 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %13 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 6 uses
  %i.e = icmp ult i64 %6, 512
  br i1 %i.e, label %FSE_decompress_wksp_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 0) #11 ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.e, label %FSE_decompress_wksp_body_default.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4, !tbaa !29   ; 4 uses
  %i.i = icmp ugt i32 %i.h, %4
  br i1 %i.i, label %FSE_decompress_wksp_body_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 11 uses
  %i.k = sub i64 %3, %i.f                         ; 7 uses
  %i.l = shl nuw i32 1, %i.h                      ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.b, align 4, !tbaa !29   ; 2 uses
  %i.p = add i32 %i.o, 1
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = zext nneg i32 %i.h to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = shl nsw i64 %i.n, 2
  %i.v = add nuw i64 %i.t, 11
  %i.w = add i64 %i.v, %i.u
  %i.x = add i64 %i.w, %i.r
  %i.y = and i64 %i.x, -4
  %i.z = add i64 %i.y, 516
  %i.aa = icmp ugt i64 %i.z, %6
  br i1 %i.aa, label %FSE_decompress_wksp_body_default.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw nsw i32 %i.l, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %.neg191.i = add i64 %6, -512
  %i.af = sub i64 %.neg191.i, %i.ad
  %i.ag = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %i.d, ptr noundef %5, i32 noundef %i.o, i32 noundef %i.h, ptr noundef nonnull %i.ae, i64 noundef %i.af) ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %FSE_decompress_wksp_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 514
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !30
  %.not48.i.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -3 ; 2 uses
  br i1 %.not48.i.i, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.am = icmp eq i64 %i.k, 0
  br i1 %i.am, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !36
  %i.aq = icmp ugt i64 %i.k, 7
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !37
  %.val.i.i = load i64, ptr %i.as, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %8, align 8, !tbaa !38
  %i.au = lshr i64 %.val.i.i, 56                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.au, 0
  br i1 %.not51.i.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.av, align 8, !tbaa !37
  %i.aw = load i8, ptr %i.j, align 1, !tbaa !21
  %i.ax = zext i8 %i.aw to i64                    ; 7 uses
  store i64 %i.ax, ptr %8, align 8, !tbaa !38
  switch i64 %i.k, label %bb.s [
    i64 7, label %bb.m
    i64 6, label %bb.n
    i64 5, label %bb.o
    i64 4, label %bb.p
    i64 3, label %bb.q
    i64 2, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !21
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 48
  %i.bc = or disjoint i64 %i.bb, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi i64 [ %i.bc, %bb.m ], [ %i.ax, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 40
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %i.ax, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bp = phi i64 [ %i.bo, %bb.o ], [ %i.ax, %bb.l ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bv = phi i64 [ %i.bu, %bb.p ], [ %i.ax, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = add nuw nsw i64 %i.bz, %i.bv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ %i.ax, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 8
  %i.cg = add nuw nsw i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %8, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.ch = getelementptr i8, ptr %2, i64 %3
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !21  ; 2 uses
  %.not.i70.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i70.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.thread182.i

BIT_initDStream.exit.thread182.i:                 ; preds = %bb.s
  %i.ck = zext i8 %i.cj to i32
  %i.cl = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ck, i1 true)
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = trunc nuw nsw i64 %i.k to i32
  %i.co = shl nuw nsw i32 %i.cn, 3
  %reass.sub = sub nsw i32 %i.cl, %i.co
  %i.cp = add nsw i32 %reass.sub, 41
  store i32 %i.cp, ptr %i.cm, align 8, !tbaa !39
  br label %bb.t

BIT_initDStream.exit.i:                           ; preds = %bb.k
  %i.cq = trunc nuw nsw i64 %i.au to i32
  %i.cr = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cq, i1 true)
  %i.cs = xor i32 %i.cr, 31
  %i.ct = sub nuw nsw i32 8, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !39
  %i.cv = icmp ult i64 %i.k, -119
  br i1 %i.cv, label %bb.t, label %FSE_decompress_usingDTable_generic.exit12.i

bb.t:                                             ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread182.i
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %i.d)
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %i.d)
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39 ; 6 uses
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.u, !prof !40

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !37 ; 8 uses
  %i.db = load ptr, ptr %i.ap, align 8, !tbaa !36 ; 4 uses
  %.not.i28.i = icmp ult ptr %i.da, %i.db
  br i1 %.not.i28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = lshr i32 %i.cx, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de ; 2 uses
  %i.dg = and i32 %i.cx, 7
  %.val.i72.i = load i64, ptr %i.df, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i72.i, ptr %8, align 8, !tbaa !38
  %.pre.i = load ptr, ptr %i.an, align 8
  br label %BIT_reloadDStream.exit34.i.thread

bb.w:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.an, align 8, !tbaa !32 ; 6 uses
  %i.di = icmp eq ptr %i.da, %i.dh
  br i1 %i.di, label %.BIT_reloadDStream.exit34_crit_edge.i, label %BIT_reloadDStream.exit34.i

.BIT_reloadDStream.exit34_crit_edge.i:            ; preds = %bb.w
  %.promoted211.pre.i = load i64, ptr %8, align 8
  br label %BIT_reloadDStream.exit34.i.thread

BIT_reloadDStream.exit34.i.thread:                ; preds = %.BIT_reloadDStream.exit34_crit_edge.i, %bb.v
  %.promoted218.i.ph = phi ptr [ %i.df, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.ph156 = phi ptr [ %.pre.i, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ] ; 2 uses
  %.promoted.ph = phi i64 [ %.val.i72.i, %bb.v ], [ %.promoted211.pre.i, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted.i.ph = phi i32 [ %i.dg, %bb.v ], [ %i.cx, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted214.i160 = load i64, ptr %9, align 8
  %.promoted216.i161 = load i64, ptr %10, align 8
  %i.dj = ptrtoint ptr %.ph156 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  br label %.lr.ph.preheader

BIT_reloadDStream.exit34.i:                       ; preds = %bb.w
  %i.do = lshr i32 %i.cx, 3                       ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.da, i64 %i.dq
  %i.ds = icmp ult ptr %i.dr, %i.dh
  %i.dt = ptrtoint ptr %i.da to i64
  %i.du = ptrtoint ptr %i.dh to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  %.021.i30.i = select i1 %i.ds, i32 %i.dw, i32 %i.do ; 2 uses
  %i.dx = zext i32 %.021.i30.i to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.da, i64 %i.dy ; 2 uses
  %i.ea = shl i32 %.021.i30.i, 3
  %i.eb = sub i32 %i.cx, %i.ea                    ; 3 uses
  %.val66.i = load i64, ptr %i.dz, align 1, !tbaa !14 ; 3 uses
  store i64 %.val66.i, ptr %8, align 8, !tbaa !38
  %.promoted214.i = load i64, ptr %9, align 8     ; 2 uses
  %.promoted216.i = load i64, ptr %10, align 8    ; 2 uses
  %i.ec = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@FSE_decompress_wksp_bmi2:bb.a
  %.sroa.0.0.copyload.i81.i = load i16, ptr %i.gj, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %.sroa.4.0.copyload.i83.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 3
  %.sroa.5.0.copyload.i85.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i, align 1, !tbaa !21
  %i.gk = zext i8 %.sroa.5.0.copyload.i85.i to i32 ; 2 uses
  %i.gl = and i32 %i.gf, 63
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl i64 %.val.i73.sink.i, %i.gm
  %i.go = sub nsw i32 0, %i.gk
  %i.gp = and i32 %i.go, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = lshr i64 %i.gn, %i.gq
  %i.gs = add i32 %i.gf, %i.gk                    ; 2 uses
  %i.gt = zext i16 %.sroa.0.0.copyload.i81.i to i64
  %i.gu = add i64 %i.gr, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.037.i9.i47, i64 2
  store i8 %.sroa.4.0.copyload.i83.i, ptr %i.gv, align 1, !tbaa !21
  %i.gw = getelementptr [4 x i8], ptr %i.ei, i64 %i.ge
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.gg ; 3 uses
  %.sroa.0.0.copyload.i88.i = load i16, ptr %i.gx, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %.sroa.4.0.copyload.i90.i = load i8, ptr %.sroa.4.0..sroa_idx.i89.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  %.sroa.5.0.copyload.i92.i = load i8, ptr %.sroa.5.0..sroa_idx.i91.i, align 1, !tbaa !21
  %i.gy = zext i8 %.sroa.5.0.copyload.i92.i to i32 ; 2 uses
  %i.gz = and i32 %i.gs, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl i64 %.val.i73.sink.i, %i.ha
  %i.hc = sub nsw i32 0, %i.gy
  %i.hd = and i32 %i.hc, 63
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = lshr i64 %i.hb, %i.he
  %i.hg = add i32 %i.gs, %i.gy                    ; 3 uses
  %i.hh = zext i16 %.sroa.0.0.copyload.i88.i to i64
  %i.hi = add i64 %i.hf, %i.hh                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.037.i9.i47, i64 3
  store i8 %.sroa.4.0.copyload.i90.i, ptr %i.hj, align 1, !tbaa !21
  %i.hk = getelementptr inbounds nuw i8, ptr %.037.i9.i47, i64 4 ; 2 uses
  %i.hl = icmp ugt i32 %i.hg, 64
  br i1 %i.hl, label %.preheader193.i, label %.lr.ph, !prof !42, !llvm.loop !43

.lr.ph.i:                                         ; preds = %.preheader193.i, %BIT_reloadDStream.exit.i
  %i.hm = phi ptr [ %i.jx, %BIT_reloadDStream.exit.i ], [ %.promoted237401.i, %.preheader193.i ] ; 6 uses
  %.1.i10232.i = phi ptr [ %i.ji, %BIT_reloadDStream.exit.i ], [ %.037.i9.i.lcssa, %.preheader193.i ] ; 5 uses
  %i.hn = phi i64 [ %i.ib, %BIT_reloadDStream.exit.i ], [ %.lcssa41, %.preheader193.i ]
  %.val.i.i108.i = phi i64 [ %.val.i117224.i, %BIT_reloadDStream.exit.i ], [ %.val.i73.sink.i43, %.preheader193.i ] ; 2 uses
  %i.ho = phi i32 [ %i.jy, %BIT_reloadDStream.exit.i ], [ %.promoted226403.i, %.preheader193.i ] ; 2 uses
  %i.hp = phi i64 [ %i.jh, %BIT_reloadDStream.exit.i ], [ %.lcssa42, %.preheader193.i ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hn ; 3 uses
  %.sroa.0.0.copyload.i95.i = load i16, ptr %i.hq, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %.sroa.4.0.copyload.i97.i = load i8, ptr %.sroa.4.0..sroa_idx.i96.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %.sroa.5.0.copyload.i99.i = load i8, ptr %.sroa.5.0..sroa_idx.i98.i, align 1, !tbaa !21
  %i.hr = zext i8 %.sroa.5.0.copyload.i99.i to i32 ; 2 uses
  %i.hs = and i32 %i.ho, 63
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = shl i64 %.val.i.i108.i, %i.ht
  %i.hv = sub nsw i32 0, %i.hr
  %i.hw = and i32 %i.hv, 63
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = lshr i64 %i.hu, %i.hx
  %i.hz = add i32 %i.ho, %i.hr                    ; 6 uses
  %i.ia = zext i16 %.sroa.0.0.copyload.i95.i to i64
  %i.ib = add i64 %i.hy, %i.ia                    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i97.i, ptr %.1.i10232.i, align 1, !tbaa !21
  %i.id = icmp ugt i32 %i.hz, 64
  br i1 %i.id, label %bb.af, label %bb.ab, !prof !40

bb.ab:                                            ; preds = %.lr.ph.i
  %.not.i14.i = icmp ult ptr %i.hm, %i.db
  br i1 %.not.i14.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ie = lshr i32 %i.hz, 3
  %i.if = and i32 %i.hz, 7
  br label %.sink.split.i

bb.ad:                                            ; preds = %bb.ab
  %i.ig = icmp eq ptr %i.hm, %i.fi
  br i1 %i.ig, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ih = lshr i32 %i.hz, 3                       ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %i.hm, i64 %i.ij
  %i.il = icmp ult ptr %i.ik, %i.fi
  %i.im = ptrtoint ptr %i.hm to i64
  %i.in = sub i64 %i.im, %i.fh
  %i.io = trunc i64 %i.in to i32
  %.021.i16.i = select i1 %i.il, i32 %i.io, i32 %i.ih ; 2 uses
  %i.ip = shl i32 %.021.i16.i, 3
  %i.iq = sub i32 %i.hz, %i.ip
  br label %.sink.split.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hp
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %.sroa.4.0.copyload.i105.i = load i8, ptr %.sroa.4.0..sroa_idx.i104.i, align 2, !tbaa !21
  %i.is = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 2
  store i8 %.sroa.4.0.copyload.i105.i, ptr %i.ic, align 1, !tbaa !21
  br label %bb.an

.sink.split.i:                                    ; preds = %bb.ae, %bb.ac
  %.pn451.in.i = phi i32 [ %i.ie, %bb.ac ], [ %.021.i16.i, %bb.ae ]
  %.ph446.i = phi i32 [ %i.if, %bb.ac ], [ %i.iq, %bb.ae ]
  %.pn451.i = zext i32 %.pn451.in.i to i64
  %.pn450.i = sub nsw i64 0, %.pn451.i
  %.ph.i = getelementptr inbounds i8, ptr %i.hm, i64 %.pn450.i ; 2 uses
  %.val.i102.sink.i = load i64, ptr %.ph.i, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i102.sink.i, ptr %8, align 8, !tbaa !38
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i, %bb.ad
  %i.it = phi ptr [ %i.hm, %bb.ad ], [ %.ph.i, %.sink.split.i ] ; 6 uses
  %i.iu = phi i32 [ %i.hz, %bb.ad ], [ %.ph446.i, %.sink.split.i ] ; 2 uses
  %.val.i.i123.i = phi i64 [ %.val.i.i108.i, %bb.ad ], [ %.val.i102.sink.i, %.sink.split.i ] ; 2 uses
  %i.iv = icmp ugt ptr %i.ic, %i.fj
  br i1 %i.iv, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hp ; 3 uses
  %.sroa.0.0.copyload.i110.i = load i16, ptr %i.iw, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %.sroa.4.0.copyload.i112.i = load i8, ptr %.sroa.4.0..sroa_idx.i111.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %.sroa.5.0.copyload.i114.i = load i8, ptr %.sroa.5.0..sroa_idx.i113.i, align 1, !tbaa !21
  %i.ix = zext i8 %.sroa.5.0.copyload.i114.i to i32 ; 2 uses
  %i.iy = and i32 %i.iu, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %.val.i.i123.i, %i.iz
  %i.jb = sub nsw i32 0, %i.ix
  %i.jc = and i32 %i.jb, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 %i.ja, %i.jd
  %i.jf = add i32 %i.iu, %i.ix                    ; 6 uses
  %i.jg = zext i16 %.sroa.0.0.copyload.i110.i to i64
  %i.jh = add i64 %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i112.i, ptr %i.ic, align 1, !tbaa !21
  %i.jj = icmp ugt i32 %i.jf, 64
  br i1 %i.jj, label %bb.am, label %bb.ai, !prof !40

bb.ai:                                            ; preds = %bb.ah
  %.not.i13.i = icmp ult ptr %i.it, %i.db
  br i1 %.not.i13.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jk = lshr i32 %i.jf, 3
  %i.jl = and i32 %i.jf, 7
  br label %BIT_reloadDStream.exit.sink.split.i

bb.ak:                                            ; preds = %bb.ai
  %i.jm = icmp eq ptr %i.it, %i.fi
  br i1 %i.jm, label %BIT_reloadDStream.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jn = lshr i32 %i.jf, 3                       ; 2 uses
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.it, i64 %i.jp
  %i.jr = icmp ult ptr %i.jq, %i.fi
  %i.js = ptrtoint ptr %i.it to i64
  %i.jt = sub i64 %i.js, %i.fh
  %i.ju = trunc i64 %i.jt to i32
  %.021.i.i = select i1 %i.jr, i32 %i.ju, i32 %i.jn ; 2 uses
  %i.jv = shl i32 %.021.i.i, 3
  %i.jw = sub i32 %i.jf, %i.jv
  br label %BIT_reloadDStream.exit.sink.split.i

BIT_reloadDStream.exit.sink.split.i:              ; preds = %bb.al, %bb.aj
  %.pn453.in.i = phi i32 [ %i.jk, %bb.aj ], [ %.021.i.i, %bb.al ]
  %.ph448.i = phi i32 [ %i.jl, %bb.aj ], [ %i.jw, %bb.al ]
  %.pn453.i = zext i32 %.pn453.in.i to i64
  %.pn452.i = sub nsw i64 0, %.pn453.i
  %.ph447.i = getelementptr inbounds i8, ptr %i.it, i64 %.pn452.i ; 2 uses
  %.val.i117.sink.i = load i64, ptr %.ph447.i, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i117.sink.i, ptr %8, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %BIT_reloadDStream.exit.sink.split.i, %bb.ak
  %i.jx = phi ptr [ %i.it, %bb.ak ], [ %.ph447.i, %BIT_reloadDStream.exit.sink.split.i ]
  %i.jy = phi i32 [ %i.jf, %bb.ak ], [ %.ph448.i, %BIT_reloadDStream.exit.sink.split.i ]
  %.val.i117224.i = phi i64 [ %.val.i.i123.i, %bb.ak ], [ %.val.i117.sink.i, %BIT_reloadDStream.exit.sink.split.i ]
  %i.jz = icmp ugt ptr %i.ji, %i.fj
  br i1 %i.jz, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.am:                                            ; preds = %bb.ah
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ib
  %.sroa.4.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %.sroa.4.0.copyload.i120.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i, align 2, !tbaa !21
  %i.kb = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 3
  store i8 %.sroa.4.0.copyload.i120.i, ptr %i.ji, align 1, !tbaa !21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.2.i11.i = phi ptr [ %i.is, %bb.af ], [ %i.kb, %bb.am ]
  %14 = ptrtoint ptr %.2.i11.i to i64
  %i.kc = ptrtoint ptr %0 to i64
  %i.kd = sub i64 %14, %i.kc
  br label %FSE_decompress_usingDTable_generic.exit12.i

FSE_decompress_usingDTable_generic.exit12.i:      ; preds = %BIT_reloadDStream.exit.i, %bb.ag, %bb.an, %.preheader193.i, %bb.t, %BIT_initDStream.exit.i, %bb.s, %bb.k, %bb.i
  %.139.i8.i = phi i64 [ %i.k, %BIT_initDStream.exit.i ], [ -20, %bb.s ], [ %i.kd, %bb.an ], [ -1, %bb.k ], [ -20, %bb.t ], [ -72, %bb.i ], [ -70, %.preheader193.i ], [ -70, %bb.ag ], [ -70, %BIT_reloadDStream.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %FSE_decompress_wksp_body_default.exit

bb.ao:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.ke = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %i.j, i64 noundef %i.k) ; 2 uses
  %i.kf = icmp ult i64 %i.ke, -119
  br i1 %i.kf, label %bb.ap, label %FSE_decompress_usingDTable_generic.exit.i

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %i.d)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %i.d)
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !39 ; 6 uses
  %i.ki = icmp ugt i32 %i.kh, 64
  br i1 %i.ki, label %FSE_decompress_usingDTable_generic.exit.i, label %bb.aq, !prof !40

bb.aq:                                            ; preds = %bb.ap
  %i.kj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !37 ; 8 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !36 ; 4 uses
  %.not.i56.i = icmp ult ptr %i.kk, %i.km
  br i1 %.not.i56.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kn = lshr i32 %i.kh, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.kk, i64 %i.kp ; 2 uses
  %i.kr = and i32 %i.kh, 7
  %.val.i125.i = load i64, ptr %i.kq, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i125.i, ptr %11, align 8, !tbaa !38
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre346.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %BIT_reloadDStream.exit62.i.thread

bb.as:                                            ; preds = %bb.aq
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !32 ; 6 uses
  %i.ku = icmp eq ptr %i.kk, %i.kt
  br i1 %i.ku, label %.BIT_reloadDStream.exit62_crit_edge.i, label %BIT_reloadDStream.exit62.i

.BIT_reloadDStream.exit62_crit_edge.i:            ; preds = %bb.as
  %.promoted240.pre.i = load i64, ptr %11, align 8
  br label %BIT_reloadDStream.exit62.i.thread

BIT_reloadDStream.exit62.i.thread:                ; preds = %.BIT_reloadDStream.exit62_crit_edge.i, %bb.ar
  %.promoted246.i.ph = phi ptr [ %i.kq, %bb.ar ], [ %i.kk, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.ph167 = phi ptr [ %.pre346.i, %bb.ar ], [ %i.kk, %.BIT_reloadDStream.exit62_crit_edge.i ] ; 2 uses
  %.promoted240.i.ph = phi i64 [ %.val.i125.i, %bb.ar ], [ %.promoted240.pre.i, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted238.i.ph = phi i32 [ %i.kr, %bb.ar ], [ %i.kh, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted242.i171 = load i64, ptr %12, align 8
  %.promoted244.i172 = load i64, ptr %13, align 8
  %i.kv = ptrtoint ptr %.ph167 to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  br label %.lr.ph70.preheader

BIT_reloadDStream.exit62.i:                       ; preds = %bb.as
  %i.la = lshr i32 %i.kh, 3                       ; 2 uses
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = sub nsw i64 0, %i.lb
  %i.ld = getelementptr inbounds i8, ptr %i.kk, i64 %i.lc
  %i.le = icmp ult ptr %i.ld, %i.kt
  %i.lf = ptrtoint ptr %i.kk to i64
  %i.lg = ptrtoint ptr %i.kt to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = trunc i64 %i.lh to i32
  %.021.i58.i = select i1 %i.le, i32 %i.li, i32 %i.la ; 2 uses
  %i.lj = zext i32 %.021.i58.i to i64
  %i.lk = sub nsw i64 0, %i.lj
  %i.ll = getelementptr inbounds i8, ptr %i.kk, i64 %i.lk ; 2 uses
  %i.lm = shl i32 %.021.i58.i, 3
  %i.ln = sub i32 %i.kh, %i.lm                    ; 3 uses
  %.val.i = load i64, ptr %i.ll, align 1, !tbaa !14 ; 3 uses
  store i64 %.val.i, ptr %11, align 8, !tbaa !38
  %.promoted242.i = load i64, ptr %12, align 8    ; 2 uses
  %.promoted244.i = load i64, ptr %13, align 8    ; 2 uses
  %i.lo = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8            ; 2 uses
  %i.lt = icmp ugt i32 %i.ln, 64
  br i1 %i.lt, label %.preheader.i, label %.lr.ph70.preheader, !prof !41

.lr.ph70.preheader:                               ; preds = %BIT_reloadDStream.exit62.i.thread, %BIT_reloadDStream.exit62.i
  %i.lu = phi ptr [ %i.kz, %BIT_reloadDStream.exit62.i.thread ], [ %i.ls, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.lv = phi ptr [ %i.kx, %BIT_reloadDStream.exit62.i.thread ], [ %i.lq, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.lw = phi i64 [ %i.kv, %BIT_reloadDStream.exit62.i.thread ], [ %i.lo, %BIT_reloadDStream.exit62.i ] ; 4 uses
  %.promoted244.i177 = phi i64 [ %.promoted244.i172, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted244.i, %BIT_reloadDStream.exit62.i ]
  %.promoted242.i176 = phi i64 [ %.promoted242.i171, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted242.i, %BIT_reloadDStream.exit62.i ]
  %.promoted238.i175 = phi i32 [ %.promoted238.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.ln, %BIT_reloadDStream.exit62.i ]
  %.promoted240.i174 = phi i64 [ %.promoted240.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %.val.i, %BIT_reloadDStream.exit62.i ]
  %i.lx = phi ptr [ %.ph167, %BIT_reloadDStream.exit62.i.thread ], [ %i.kt, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %.promoted246.i173 = phi ptr [ %.promoted246.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.ll, %BIT_reloadDStream.exit62.i ]
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %bb.aw
  %.037.i.i69 = phi ptr [ %i.pb, %bb.aw ], [ %0, %.lr.ph70.preheader ] ; 8 uses
  %i.ly = phi i32 [ %i.oq, %bb.aw ], [ %.promoted238.i175, %.lr.ph70.preheader ] ; 5 uses
  %i.lz = phi i64 [ %i.mr, %bb.aw ], [ %.promoted240.i174, %.lr.ph70.preheader ]
  %i.ma = phi i64 [ %i.ol, %bb.aw ], [ %.promoted242.i176, %.lr.ph70.preheader ] ; 3 uses
  %i.mb = phi i64 [ %i.oz, %bb.aw ], [ %.promoted244.i177, %.lr.ph70.preheader ] ; 3 uses
  %i.mc = phi ptr [ %.promoted275.i, %bb.aw ], [ %.promoted246.i173, %.lr.ph70.preheader ] ; 6 uses
  %.not.i49.i = icmp ult ptr %i.mc, %i.km
  br i1 %.not.i49.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph70
  %i.md = lshr i32 %i.ly, 3
  %i.me = and i32 %i.ly, 7
  br label %BIT_reloadDStream.exit55.i

bb.au:                                            ; preds = %.lr.ph70
  %i.mf = icmp eq ptr %i.mc, %i.lx
  br i1 %i.mf, label %.preheader.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mg = lshr i32 %i.ly, 3                       ; 2 uses
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = sub nsw i64 0, %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.mc, i64 %i.mi
  %i.mk = icmp uge ptr %i.mj, %i.lx               ; 2 uses
  %i.ml = ptrtoint ptr %i.mc to i64
  %i.mm = sub i64 %i.ml, %i.lw
  %i.mn = trunc i64 %i.mm to i32
  %.021.i51.i = select i1 %i.mk, i32 %i.mg, i32 %i.mn ; 2 uses
  %i.mo = shl i32 %.021.i51.i, 3
  %i.mp = sub i32 %i.ly, %i.mo
  br label %BIT_reloadDStream.exit55.i

BIT_reloadDStream.exit55.i:                       ; preds = %bb.av, %bb.at
  %.pn455.in.i = phi i32 [ %.021.i51.i, %bb.av ], [ %i.md, %bb.at ]
  %i.mq = phi i32 [ %i.mp, %bb.av ], [ %i.me, %bb.at ] ; 2 uses
  %.022.i50.i = phi i1 [ %i.mk, %bb.av ], [ true, %bb.at ]
  %.pn455.i = zext i32 %.pn455.in.i to i64
  %.pn454.i = sub nsw i64 0, %.pn455.i
  %.promoted275.i = getelementptr inbounds i8, ptr %i.mc, i64 %.pn454.i ; 3 uses
  %i.mr = load i64, ptr %.promoted275.i, align 1, !tbaa !14 ; 7 uses
  %i.ms = icmp ult ptr %.037.i.i69, %i.al
  %i.mt = and i1 %i.ms, %.022.i50.i
  br i1 %i.mt, label %bb.aw, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aw, %bb.au, %BIT_reloadDStream.exit55.i, %BIT_reloadDStream.exit62.i
  %i.mu = phi ptr [ %i.ls, %BIT_reloadDStream.exit62.i ], [ %i.lu, %BIT_reloadDStream.exit55.i ], [ %i.lu, %bb.au ], [ %i.lu, %bb.aw ] ; 2 uses
  %i.mv = phi ptr [ %i.lq, %BIT_reloadDStream.exit62.i ], [ %i.lv, %BIT_reloadDStream.exit55.i ], [ %i.lv, %bb.au ], [ %i.lv, %bb.aw ] ; 2 uses
  %i.mw = phi i64 [ %i.lo, %BIT_reloadDStream.exit62.i ], [ %i.lw, %BIT_reloadDStream.exit55.i ], [ %i.lw, %bb.au ], [ %i.lw, %bb.aw ] ; 2 uses
  %i.mx = phi ptr [ %i.kt, %BIT_reloadDStream.exit62.i ], [ %i.lx, %BIT_reloadDStream.exit55.i ], [ %i.lx, %bb.au ], [ %i.lx, %bb.aw ] ; 4 uses
  %.lcssa28 = phi i64 [ %.promoted244.i, %BIT_reloadDStream.exit62.i ], [ %i.oz, %bb.aw ], [ %i.mb, %bb.au ], [ %i.mb, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.lcssa27 = phi i64 [ %.promoted242.i, %BIT_reloadDStream.exit62.i ], [ %i.ol, %bb.aw ], [ %i.ma, %bb.au ], [ %i.ma, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.037.i.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit62.i ], [ %i.pb, %bb.aw ], [ %.037.i.i69, %bb.au ], [ %.037.i.i69, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.my = phi i32 [ %i.ln, %BIT_reloadDStream.exit62.i ], [ %i.oq, %bb.aw ], [ %i.ly, %bb.au ], [ %i.mq, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.mz = phi i64 [ %.val.i, %BIT_reloadDStream.exit62.i ], [ %i.mr, %bb.aw ], [ %i.lz, %bb.au ], [ %i.mr, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.promoted275406.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit62.i ], [ @BIT_reloadDStream.zeroFilled, %bb.aw ], [ %i.mc, %bb.au ], [ %.promoted275.i, %BIT_reloadDStream.exit55.i ] ; 2 uses
  store ptr %.promoted275406.i, ptr %i.kj, align 8
  store i32 %i.my, ptr %i.kg, align 8
  store i64 %i.mz, ptr %11, align 8
  store i64 %.lcssa27, ptr %12, align 8
  store i64 %.lcssa28, ptr %13, align 8
  %i.na = getelementptr inbounds i8, ptr %i.ak, i64 -2 ; 3 uses
  %i.nb = icmp ugt ptr %.037.i.i.lcssa, %i.na
  br i1 %i.nb, label %FSE_decompress_usingDTable_generic.exit.i, label %.lr.ph265.i

bb.aw:                                            ; preds = %BIT_reloadDStream.exit55.i
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ma ; 3 uses
  %.sroa.0.0.copyload.i127.i = load i16, ptr %i.nc, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i128.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %.sroa.4.0.copyload.i129.i = load i8, ptr %.sroa.4.0..sroa_idx.i128.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 3
  %.sroa.5.0.copyload.i131.i = load i8, ptr %.sroa.5.0..sroa_idx.i130.i, align 1, !tbaa !21 ; 2 uses
  %i.nd = zext i8 %.sroa.5.0.copyload.i131.i to i32
  %i.ne = add i32 %i.mq, %i.nd                    ; 2 uses
  %i.nf = sub i32 0, %i.ne
  %i.ng = and i32 %i.nf, 63
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = lshr i64 %i.mr, %i.nh
  %i.nj = zext nneg i8 %.sroa.5.0.copyload.i131.i to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.nj
  %i.nk = xor i64 %notmask.i.i.i, -1
  %i.nl = and i64 %i.ni, %i.nk
  %i.nm = zext i16 %.sroa.0.0.copyload.i127.i to i64
  store i8 %.sroa.4.0.copyload.i129.i, ptr %.037.i.i69, align 1, !tbaa !21
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.mb ; 3 uses
  %.sroa.0.0.copyload.i132.i = load i16, ptr %i.nn, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 2
  %.sroa.4.0.copyload.i134.i = load i8, ptr %.sroa.4.0..sroa_idx.i133.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i135.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 3
  %.sroa.5.0.copyload.i136.i = load i8, ptr %.sroa.5.0..sroa_idx.i135.i, align 1, !tbaa !21 ; 2 uses
  %i.no = zext i8 %.sroa.5.0.copyload.i136.i to i32
end_hunk_1
begin_hunk_2_@FSE_decompress_wksp_bmi2:bb.a
  %.sroa.0.0.copyload.i138.i = load i16, ptr %i.oa, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i139.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 2
  %.sroa.4.0.copyload.i140.i = load i8, ptr %.sroa.4.0..sroa_idx.i139.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  %.sroa.5.0.copyload.i142.i = load i8, ptr %.sroa.5.0..sroa_idx.i141.i, align 1, !tbaa !21 ; 2 uses
  %i.ob = zext i8 %.sroa.5.0.copyload.i142.i to i32
  %i.oc = add i32 %i.np, %i.ob                    ; 2 uses
  %i.od = sub i32 0, %i.oc
  %i.oe = and i32 %i.od, 63
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = lshr i64 %i.mr, %i.of
  %i.oh = zext nneg i8 %.sroa.5.0.copyload.i142.i to i64
  %notmask.i.i143.i = shl nsw i64 -1, %i.oh
  %i.oi = xor i64 %notmask.i.i143.i, -1
  %i.oj = and i64 %i.og, %i.oi
  %i.ok = zext i16 %.sroa.0.0.copyload.i138.i to i64
  %i.ol = add nuw i64 %i.oj, %i.ok                ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.037.i.i69, i64 2
  store i8 %.sroa.4.0.copyload.i140.i, ptr %i.om, align 1, !tbaa !21
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.nw
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nx ; 3 uses
  %.sroa.0.0.copyload.i144.i = load i16, ptr %i.oo, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %.sroa.4.0.copyload.i146.i = load i8, ptr %.sroa.4.0..sroa_idx.i145.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i147.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 3
  %.sroa.5.0.copyload.i148.i = load i8, ptr %.sroa.5.0..sroa_idx.i147.i, align 1, !tbaa !21 ; 2 uses
  %i.op = zext i8 %.sroa.5.0.copyload.i148.i to i32
  %i.oq = add i32 %i.oc, %i.op                    ; 4 uses
  %i.or = sub i32 0, %i.oq
  %i.os = and i32 %i.or, 63
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = lshr i64 %i.mr, %i.ot
  %i.ov = zext nneg i8 %.sroa.5.0.copyload.i148.i to i64
  %notmask.i.i149.i = shl nsw i64 -1, %i.ov
  %i.ow = xor i64 %notmask.i.i149.i, -1
  %i.ox = and i64 %i.ou, %i.ow
  %i.oy = zext i16 %.sroa.0.0.copyload.i144.i to i64
  %i.oz = add nuw i64 %i.ox, %i.oy                ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.037.i.i69, i64 3
  store i8 %.sroa.4.0.copyload.i146.i, ptr %i.pa, align 1, !tbaa !21
  %i.pb = getelementptr inbounds nuw i8, ptr %.037.i.i69, i64 4 ; 2 uses
  %i.pc = icmp ugt i32 %i.oq, 64
  br i1 %i.pc, label %.preheader.i, label %.lr.ph70, !prof !42, !llvm.loop !43

.lr.ph265.i:                                      ; preds = %.preheader.i, %BIT_reloadDStream.exit41.i
  %i.pd = phi ptr [ %i.sa, %BIT_reloadDStream.exit41.i ], [ %.promoted275406.i, %.preheader.i ] ; 7 uses
  %.1.i264.i = phi ptr [ %i.rf, %BIT_reloadDStream.exit41.i ], [ %.037.i.i.lcssa, %.preheader.i ] ; 5 uses
  %i.pe = phi i64 [ %i.ps, %BIT_reloadDStream.exit41.i ], [ %.lcssa27, %.preheader.i ]
  %.val.i169252263.i = phi i64 [ %.val.i169253.i, %BIT_reloadDStream.exit41.i ], [ %i.mz, %.preheader.i ] ; 2 uses
  %i.pf = phi i32 [ %i.sb, %BIT_reloadDStream.exit41.i ], [ %i.my, %.preheader.i ]
  %i.pg = phi i64 [ %i.re, %BIT_reloadDStream.exit41.i ], [ %.lcssa28, %.preheader.i ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.pe ; 3 uses
  %.sroa.0.0.copyload.i150.i = load i16, ptr %i.ph, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  %.sroa.4.0.copyload.i152.i = load i8, ptr %.sroa.4.0..sroa_idx.i151.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i153.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 3
  %.sroa.5.0.copyload.i154.i = load i8, ptr %.sroa.5.0..sroa_idx.i153.i, align 1, !tbaa !21 ; 2 uses
  %i.pi = zext i8 %.sroa.5.0.copyload.i154.i to i32
  %i.pj = add i32 %i.pf, %i.pi                    ; 7 uses
  %i.pk = sub i32 0, %i.pj
  %i.pl = and i32 %i.pk, 63
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = lshr i64 %.val.i169252263.i, %i.pm
  %i.po = zext nneg i8 %.sroa.5.0.copyload.i154.i to i64
  %notmask.i.i155.i = shl nsw i64 -1, %i.po
  %i.pp = xor i64 %notmask.i.i155.i, -1
  %i.pq = and i64 %i.pn, %i.pp
  %i.pr = zext i16 %.sroa.0.0.copyload.i150.i to i64
  %i.ps = add nuw i64 %i.pq, %i.pr                ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.1.i264.i, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i152.i, ptr %.1.i264.i, align 1, !tbaa !21
  %i.pu = icmp ugt i32 %i.pj, 64
  br i1 %i.pu, label %bb.bb, label %bb.ax, !prof !40

bb.ax:                                            ; preds = %.lr.ph265.i
  %.not.i42.i = icmp ult ptr %i.pd, %i.km
  br i1 %.not.i42.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pv = lshr i32 %i.pj, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = sub nsw i64 0, %i.pw
  %i.py = getelementptr inbounds i8, ptr %i.pd, i64 %i.px ; 2 uses
  %i.pz = and i32 %i.pj, 7
  %.val.i156.i = load i64, ptr %i.py, align 1, !tbaa !14
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.qa = icmp eq ptr %i.pd, %i.mx
  br i1 %i.qa, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qb = lshr i32 %i.pj, 3                       ; 2 uses
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = sub nsw i64 0, %i.qc
  %i.qe = getelementptr inbounds i8, ptr %i.pd, i64 %i.qd
  %i.qf = icmp ult ptr %i.qe, %i.mx
  %i.qg = ptrtoint ptr %i.pd to i64
  %i.qh = sub i64 %i.qg, %i.mw
  %i.qi = trunc i64 %i.qh to i32
  %.021.i44.i = select i1 %i.qf, i32 %i.qi, i32 %i.qb ; 2 uses
  %i.qj = zext i32 %.021.i44.i to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds i8, ptr %i.pd, i64 %i.qk ; 2 uses
  %i.qm = shl i32 %.021.i44.i, 3
  %i.qn = sub i32 %i.pj, %i.qm
  %.val64.i = load i64, ptr %i.ql, align 1, !tbaa !14
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph265.i
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.pg
  %.sroa.4.0..sroa_idx.i158.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 2
  %.sroa.4.0.copyload.i159.i = load i8, ptr %.sroa.4.0..sroa_idx.i158.i, align 2, !tbaa !21
  %i.qp = getelementptr inbounds nuw i8, ptr %.1.i264.i, i64 2
  store i8 %.sroa.4.0.copyload.i159.i, ptr %i.pt, align 1, !tbaa !21
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.qq = phi ptr [ %i.pd, %bb.az ], [ %i.py, %bb.ay ], [ %i.ql, %bb.ba ] ; 7 uses
  %i.qr = phi i32 [ %i.pj, %bb.az ], [ %i.pz, %bb.ay ], [ %i.qn, %bb.ba ]
  %.val.i169254.i = phi i64 [ %.val.i169252263.i, %bb.az ], [ %.val.i156.i, %bb.ay ], [ %.val64.i, %bb.ba ] ; 2 uses
  %i.qs = icmp ugt ptr %i.pt, %i.na
  br i1 %i.qs, label %FSE_decompress_usingDTable_generic.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.pg ; 3 uses
  %.sroa.0.0.copyload.i163.i = load i16, ptr %i.qt, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i164.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %.sroa.4.0.copyload.i165.i = load i8, ptr %.sroa.4.0..sroa_idx.i164.i, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i166.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 3
  %.sroa.5.0.copyload.i167.i = load i8, ptr %.sroa.5.0..sroa_idx.i166.i, align 1, !tbaa !21 ; 2 uses
  %i.qu = zext i8 %.sroa.5.0.copyload.i167.i to i32
  %i.qv = add i32 %i.qr, %i.qu                    ; 7 uses
  %i.qw = sub i32 0, %i.qv
  %i.qx = and i32 %i.qw, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = lshr i64 %.val.i169254.i, %i.qy
  %i.ra = zext nneg i8 %.sroa.5.0.copyload.i167.i to i64
  %notmask.i.i168.i = shl nsw i64 -1, %i.ra
  %i.rb = xor i64 %notmask.i.i168.i, -1
  %i.rc = and i64 %i.qz, %i.rb
  %i.rd = zext i16 %.sroa.0.0.copyload.i163.i to i64
  %i.re = add nuw i64 %i.rc, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %.1.i264.i, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i165.i, ptr %i.pt, align 1, !tbaa !21
  %i.rg = icmp ugt i32 %i.qv, 64
  br i1 %i.rg, label %bb.bi, label %bb.be, !prof !40

bb.be:                                            ; preds = %bb.bd
  %.not.i35.i = icmp ult ptr %i.qq, %i.km
  br i1 %.not.i35.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rh = lshr i32 %i.qv, 3
  %i.ri = zext nneg i32 %i.rh to i64
  %i.rj = sub nsw i64 0, %i.ri
  %i.rk = getelementptr inbounds i8, ptr %i.qq, i64 %i.rj ; 2 uses
  %i.rl = and i32 %i.qv, 7
  %.val.i169.i = load i64, ptr %i.rk, align 1, !tbaa !14
  br label %BIT_reloadDStream.exit41.i

bb.bg:                                            ; preds = %bb.be
  %i.rm = icmp eq ptr %i.qq, %i.mx
  br i1 %i.rm, label %BIT_reloadDStream.exit41.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rn = lshr i32 %i.qv, 3                       ; 2 uses
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = sub nsw i64 0, %i.ro
  %i.rq = getelementptr inbounds i8, ptr %i.qq, i64 %i.rp
  %i.rr = icmp ult ptr %i.rq, %i.mx
  %i.rs = ptrtoint ptr %i.qq to i64
  %i.rt = sub i64 %i.rs, %i.mw
  %i.ru = trunc i64 %i.rt to i32
  %.021.i37.i = select i1 %i.rr, i32 %i.ru, i32 %i.rn ; 2 uses
  %i.rv = zext i32 %.021.i37.i to i64
  %i.rw = sub nsw i64 0, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %i.qq, i64 %i.rw ; 2 uses
  %i.ry = shl i32 %.021.i37.i, 3
  %i.rz = sub i32 %i.qv, %i.ry
  %.val65.i = load i64, ptr %i.rx, align 1, !tbaa !14
  br label %BIT_reloadDStream.exit41.i

BIT_reloadDStream.exit41.i:                       ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.sa = phi ptr [ %i.qq, %bb.bg ], [ %i.rk, %bb.bf ], [ %i.rx, %bb.bh ]
  %i.sb = phi i32 [ %i.qv, %bb.bg ], [ %i.rl, %bb.bf ], [ %i.rz, %bb.bh ]
  %.val.i169253.i = phi i64 [ %.val.i169254.i, %bb.bg ], [ %.val.i169.i, %bb.bf ], [ %.val65.i, %bb.bh ]
  %i.sc = icmp ugt ptr %i.rf, %i.na
  br i1 %i.sc, label %FSE_decompress_usingDTable_generic.exit.i, label %.lr.ph265.i

bb.bi:                                            ; preds = %bb.bd
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ps
  %.sroa.4.0..sroa_idx.i171.i = getelementptr inbounds nuw i8, ptr %i.sd, i64 2
  %.sroa.4.0.copyload.i172.i = load i8, ptr %.sroa.4.0..sroa_idx.i171.i, align 2, !tbaa !21
  %i.se = getelementptr inbounds nuw i8, ptr %.1.i264.i, i64 3
  store i8 %.sroa.4.0.copyload.i172.i, ptr %i.rf, align 1, !tbaa !21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bb
  %.2.i.i = phi ptr [ %i.qp, %bb.bb ], [ %i.se, %bb.bi ]
  %15 = ptrtoint ptr %.2.i.i to i64
  %i.sf = ptrtoint ptr %0 to i64
  %i.sg = sub i64 %15, %i.sf
  br label %FSE_decompress_usingDTable_generic.exit.i

FSE_decompress_usingDTable_generic.exit.i:        ; preds = %BIT_reloadDStream.exit41.i, %bb.bc, %bb.bj, %.preheader.i, %bb.ap, %bb.ao
  %.139.i.i = phi i64 [ %i.ke, %bb.ao ], [ -20, %bb.ap ], [ %i.sg, %bb.bj ], [ -70, %.preheader.i ], [ -70, %bb.bc ], [ -70, %BIT_reloadDStream.exit41.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %FSE_decompress_wksp_body_default.exit

FSE_decompress_wksp_body_default.exit:            ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %FSE_decompress_usingDTable_generic.exit12.i, %FSE_decompress_usingDTable_generic.exit.i
  %.3.i.i = phi i64 [ %.139.i.i, %FSE_decompress_usingDTable_generic.exit.i ], [ -1, %bb.c ], [ -44, %bb.f ], [ %i.ag, %bb.g ], [ %.139.i8.i, %FSE_decompress_usingDTable_generic.exit12.i ], [ -44, %bb.e ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bk

bb.bk:                                            ; preds = %FSE_decompress_wksp_body_default.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.3.i.i, %FSE_decompress_wksp_body_default.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 22 uses
  %8 = alloca %struct.FSE_DState_t, align 8       ; 6 uses
  %9 = alloca %struct.FSE_DState_t, align 8       ; 6 uses
  %10 = alloca %struct.BIT_DStream_t, align 8     ; 14 uses
  %11 = alloca %struct.FSE_DState_t, align 8      ; 6 uses
  %12 = alloca %struct.FSE_DState_t, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 6 uses
  %i.d = icmp ult i64 %6, 512
  br i1 %i.d, label %FSE_decompress_wksp_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 1) #11 ; 4 uses
  %i.f = icmp ult i64 %i.e, -119
  br i1 %i.f, label %bb.c, label %FSE_decompress_wksp_body.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !29   ; 4 uses
  %i.h = icmp ugt i32 %i.g, %4
  br i1 %i.h, label %FSE_decompress_wksp_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.e ; 11 uses
  %i.j = sub i64 %3, %i.e                         ; 7 uses
  %i.k = shl nuw i32 1, %i.g                      ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = load i32, ptr %i.b, align 4, !tbaa !29   ; 2 uses
  %i.o = add i32 %i.n, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = zext nneg i32 %i.g to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = shl nsw i64 %i.m, 2
  %i.u = add nuw i64 %i.s, 11
  %i.v = add nuw i64 %i.u, %i.q
  %i.w = add i64 %i.v, %i.t
  %i.x = and i64 %i.w, -4
  %i.y = add i64 %i.x, 516
  %i.z = icmp ugt i64 %i.y, %6
  br i1 %i.z, label %FSE_decompress_wksp_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.k, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %.neg191 = add i64 %6, -512
  %i.ae = sub i64 %.neg191, %i.ac
  %i.af = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %i.c, ptr noundef %5, i32 noundef %i.n, i32 noundef %i.g, ptr noundef nonnull %i.ad, i64 noundef %i.ae) ; 2 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.f, label %FSE_decompress_wksp_body.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 514
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30
  %.not48.i = icmp eq i16 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -3 ; 2 uses
  br i1 %.not48.i, label %bb.an, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %FSE_decompress_usingDTable_generic.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.am, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !36
  %i.ap = icmp ugt i64 %i.j, 7
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !37
  %.val.i = load i64, ptr %i.ar, align 1          ; 2 uses
  store i64 %.val.i, ptr %7, align 8, !tbaa !38
  %i.at = lshr i64 %.val.i, 56                    ; 2 uses
  %.not51.i = icmp eq i64 %i.at, 0
  br i1 %.not51.i, label %FSE_decompress_usingDTable_generic.exit12, label %BIT_initDStream.exit

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.i, ptr %i.au, align 8, !tbaa !37
  %i.av = load i8, ptr %i.i, align 1, !tbaa !21
  %i.aw = zext i8 %i.av to i64                    ; 7 uses
  store i64 %i.aw, ptr %7, align 8, !tbaa !38
  switch i64 %i.j, label %bb.q [
    i64 7, label %bb.k
    i64 6, label %bb.l
    i64 5, label %bb.m
    i64 4, label %bb.n
    i64 3, label %bb.o
    i64 2, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 48
  %i.bb = or disjoint i64 %i.ba, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i64 [ %i.bb, %bb.k ], [ %i.aw, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bi = phi i64 [ %i.bh, %bb.l ], [ %i.aw, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 32
  %i.bn = add nuw nsw i64 %i.bm, %i.bi
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bo = phi i64 [ %i.bn, %bb.m ], [ %i.aw, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.bs, %i.bo
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.bu = phi i64 [ %i.bt, %bb.n ], [ %i.aw, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 16
  %i.bz = add nuw nsw i64 %i.by, %i.bu
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.ca = phi i64 [ %i.bz, %bb.o ], [ %i.aw, %bb.j ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = add nuw nsw i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %7, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cg = getelementptr i8, ptr %2, i64 %3
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !21  ; 2 uses
  %.not.i70 = icmp eq i8 %i.ci, 0
  br i1 %.not.i70, label %FSE_decompress_usingDTable_generic.exit12, label %BIT_initDStream.exit.thread182

BIT_initDStream.exit.thread182:                   ; preds = %bb.q
  %i.cj = zext i8 %i.ci to i32
  %i.ck = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cj, i1 true)
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = trunc nuw nsw i64 %i.j to i32
  %i.cn = shl nuw nsw i32 %i.cm, 3
  %reass.sub = sub nsw i32 %i.ck, %i.cn
  %i.co = add nsw i32 %reass.sub, 41
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !39
  br label %bb.r

BIT_initDStream.exit:                             ; preds = %bb.i
  %i.cp = trunc nuw nsw i64 %i.at to i32
  %i.cq = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cp, i1 true)
  %i.cr = xor i32 %i.cq, 31
  %i.cs = sub nuw nsw i32 8, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !39
  %i.cu = icmp ult i64 %i.j, -119
  br i1 %i.cu, label %bb.r, label %FSE_decompress_usingDTable_generic.exit12

bb.r:                                             ; preds = %BIT_initDStream.exit.thread182, %BIT_initDStream.exit
  call fastcc void @FSE_initDState(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %i.c)
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %7, ptr noundef nonnull %i.c)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !39 ; 6 uses
  %i.cx = icmp ugt i32 %i.cw, 64
  br i1 %i.cx, label %FSE_decompress_usingDTable_generic.exit12, label %bb.s, !prof !40

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !37 ; 8 uses
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 4 uses
  %.not.i28 = icmp ult ptr %i.cz, %i.da
  br i1 %.not.i28, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = lshr i32 %i.cw, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %i.dd ; 2 uses
  %i.df = and i32 %i.cw, 7
  %.val.i72 = load i64, ptr %i.de, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i72, ptr %7, align 8, !tbaa !38
  %.pre = load ptr, ptr %i.am, align 8
  br label %BIT_reloadDStream.exit34

bb.u:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !32 ; 4 uses
  %i.dh = icmp eq ptr %i.cz, %i.dg
  br i1 %i.dh, label %.BIT_reloadDStream.exit34_crit_edge, label %bb.v

.BIT_reloadDStream.exit34_crit_edge:              ; preds = %bb.u
  %.promoted211.pre = load i64, ptr %7, align 8
  br label %BIT_reloadDStream.exit34

bb.v:                                             ; preds = %bb.u
  %i.di = lshr i32 %i.cw, 3                       ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk
  %i.dm = icmp ult ptr %i.dl, %i.dg
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %i.dg to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %.021.i30 = select i1 %i.dm, i32 %i.dq, i32 %i.di ; 2 uses
  %i.dr = zext i32 %.021.i30 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.cz, i64 %i.ds ; 2 uses
  %i.du = shl i32 %.021.i30, 3
  %i.dv = sub i32 %i.cw, %i.du
  %.val66 = load i64, ptr %i.dt, align 1, !tbaa !14 ; 2 uses
  store i64 %.val66, ptr %7, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit34

BIT_reloadDStream.exit34:                         ; preds = %.BIT_reloadDStream.exit34_crit_edge, %bb.t, %bb.v
  %.promoted218 = phi ptr [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge ], [ %i.de, %bb.t ], [ %i.dt, %bb.v ]
  %i.dw = phi ptr [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge ], [ %.pre, %bb.t ], [ %i.dg, %bb.v ] ; 7 uses
  %.promoted211 = phi i64 [ %.promoted211.pre, %.BIT_reloadDStream.exit34_crit_edge ], [ %.val.i72, %bb.t ], [ %.val66, %bb.v ] ; 2 uses
  %.promoted = phi i32 [ %i.cw, %.BIT_reloadDStream.exit34_crit_edge ], [ %i.df, %bb.t ], [ %i.dv, %bb.v ] ; 3 uses
  %.promoted214 = load i64, ptr %8, align 8       ; 2 uses
  %.promoted216 = load i64, ptr %9, align 8       ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8            ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 4 uses
  %i.ec = icmp ugt i32 %.promoted, 64
  br i1 %i.ec, label %.preheader193, label %.lr.ph485.preheader, !prof !44

.lr.ph485.preheader:                              ; preds = %BIT_reloadDStream.exit34
  %.promoted573 = load i64, ptr %7, align 1
end_hunk_2
begin_hunk_3_@FSE_decompress_wksp_body_bmi2:bb.a
  %.sroa.0.0.copyload.i81 = load i16, ptr %i.fw, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %.sroa.4.0.copyload.i83 = load i8, ptr %.sroa.4.0..sroa_idx.i82, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  %.sroa.5.0.copyload.i85 = load i8, ptr %.sroa.5.0..sroa_idx.i84, align 1, !tbaa !21
  %i.fx = zext i8 %.sroa.5.0.copyload.i85 to i32  ; 2 uses
  %i.fy = and i32 %i.fs, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl i64 %.val.i73.sink, %i.fz
  %i.gb = sub nsw i32 0, %i.fx
  %i.gc = and i32 %i.gb, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 %i.ga, %i.gd
  %i.gf = add i32 %i.fs, %i.fx                    ; 2 uses
  %i.gg = zext i16 %.sroa.0.0.copyload.i81 to i64
  %i.gh = add i64 %i.ge, %i.gg                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.037.i9484, i64 2
  store i8 %.sroa.4.0.copyload.i83, ptr %i.gi, align 1, !tbaa !21
  %i.gj = getelementptr [4 x i8], ptr %i.eb, i64 %i.fr
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %i.ft ; 3 uses
  %.sroa.0.0.copyload.i88 = load i16, ptr %i.gk, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %.sroa.4.0.copyload.i90 = load i8, ptr %.sroa.4.0..sroa_idx.i89, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  %.sroa.5.0.copyload.i92 = load i8, ptr %.sroa.5.0..sroa_idx.i91, align 1, !tbaa !21
  %i.gl = zext i8 %.sroa.5.0.copyload.i92 to i32  ; 2 uses
  %i.gm = and i32 %i.gf, 63
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = shl i64 %.val.i73.sink, %i.gn
  %i.gp = sub nsw i32 0, %i.gl
  %i.gq = and i32 %i.gp, 63
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = lshr i64 %i.go, %i.gr
  %i.gt = add i32 %i.gf, %i.gl                    ; 3 uses
  %i.gu = zext i16 %.sroa.0.0.copyload.i88 to i64
  %i.gv = add i64 %i.gs, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.037.i9484, i64 3
  store i8 %.sroa.4.0.copyload.i90, ptr %i.gw, align 1, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %.037.i9484, i64 4 ; 2 uses
  %i.gy = icmp ugt i32 %i.gt, 64
  br i1 %i.gy, label %.preheader193.loopexit, label %.lr.ph485, !prof !42, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader193, %BIT_reloadDStream.exit
  %i.gz = phi ptr [ %i.jk, %BIT_reloadDStream.exit ], [ %.promoted237401, %.preheader193 ] ; 6 uses
  %.1.i10232 = phi ptr [ %i.iv, %BIT_reloadDStream.exit ], [ %.037.i9.lcssa, %.preheader193 ] ; 5 uses
  %i.ha = phi i64 [ %i.ho, %BIT_reloadDStream.exit ], [ %.lcssa481, %.preheader193 ]
  %.val.i.i108 = phi i64 [ %.val.i117224, %BIT_reloadDStream.exit ], [ %.promoted222402, %.preheader193 ] ; 2 uses
  %i.hb = phi i32 [ %i.jl, %BIT_reloadDStream.exit ], [ %.promoted226403, %.preheader193 ] ; 2 uses
  %i.hc = phi i64 [ %i.iu, %BIT_reloadDStream.exit ], [ %.lcssa482, %.preheader193 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ha ; 3 uses
  %.sroa.0.0.copyload.i95 = load i16, ptr %i.hd, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %.sroa.4.0.copyload.i97 = load i8, ptr %.sroa.4.0..sroa_idx.i96, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %.sroa.5.0.copyload.i99 = load i8, ptr %.sroa.5.0..sroa_idx.i98, align 1, !tbaa !21
  %i.he = zext i8 %.sroa.5.0.copyload.i99 to i32  ; 2 uses
  %i.hf = and i32 %i.hb, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl i64 %.val.i.i108, %i.hg
  %i.hi = sub nsw i32 0, %i.he
  %i.hj = and i32 %i.hi, 63
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = lshr i64 %i.hh, %i.hk
  %i.hm = add i32 %i.hb, %i.he                    ; 6 uses
  %i.hn = zext i16 %.sroa.0.0.copyload.i95 to i64
  %i.ho = add i64 %i.hl, %i.hn                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.1.i10232, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i97, ptr %.1.i10232, align 1, !tbaa !21
  %i.hq = icmp ugt i32 %i.hm, 64
  br i1 %i.hq, label %bb.ae, label %bb.aa, !prof !40

bb.aa:                                            ; preds = %.lr.ph
  %.not.i14 = icmp ult ptr %i.gz, %i.da
  br i1 %.not.i14, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hr = lshr i32 %i.hm, 3
  %i.hs = and i32 %i.hm, 7
  br label %.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.ht = icmp eq ptr %i.gz, %i.dw
  br i1 %i.ht, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hu = lshr i32 %i.hm, 3                       ; 2 uses
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.gz, i64 %i.hw
  %i.hy = icmp ult ptr %i.hx, %i.dw
  %i.hz = ptrtoint ptr %i.gz to i64
  %i.ia = sub i64 %i.hz, %i.dx
  %i.ib = trunc i64 %i.ia to i32
  %.021.i16 = select i1 %i.hy, i32 %i.ib, i32 %i.hu ; 2 uses
  %i.ic = shl i32 %.021.i16, 3
  %i.id = sub i32 %i.hm, %i.ic
  br label %.sink.split

bb.ae:                                            ; preds = %.lr.ph
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.hc
  %.sroa.4.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %.sroa.4.0.copyload.i105 = load i8, ptr %.sroa.4.0..sroa_idx.i104, align 2, !tbaa !21
  %i.if = getelementptr inbounds nuw i8, ptr %.1.i10232, i64 2
  store i8 %.sroa.4.0.copyload.i105, ptr %i.hp, align 1, !tbaa !21
  br label %bb.am

.sink.split:                                      ; preds = %bb.ad, %bb.ab
  %.pn451.in = phi i32 [ %i.hr, %bb.ab ], [ %.021.i16, %bb.ad ]
  %.ph446 = phi i32 [ %i.hs, %bb.ab ], [ %i.id, %bb.ad ]
  %.pn451 = zext i32 %.pn451.in to i64
  %.pn450 = sub nsw i64 0, %.pn451
  %.ph = getelementptr inbounds i8, ptr %i.gz, i64 %.pn450 ; 2 uses
  %.val.i102.sink = load i64, ptr %.ph, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i102.sink, ptr %7, align 8, !tbaa !38
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ac
  %i.ig = phi ptr [ %i.gz, %bb.ac ], [ %.ph, %.sink.split ] ; 6 uses
  %i.ih = phi i32 [ %i.hm, %bb.ac ], [ %.ph446, %.sink.split ] ; 2 uses
  %.val.i.i123 = phi i64 [ %.val.i.i108, %bb.ac ], [ %.val.i102.sink, %.sink.split ] ; 2 uses
  %i.ii = icmp ugt ptr %i.hp, %i.ew
  br i1 %i.ii, label %FSE_decompress_usingDTable_generic.exit12, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.hc ; 3 uses
  %.sroa.0.0.copyload.i110 = load i16, ptr %i.ij, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %.sroa.4.0.copyload.i112 = load i8, ptr %.sroa.4.0..sroa_idx.i111, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.ij, i64 3
  %.sroa.5.0.copyload.i114 = load i8, ptr %.sroa.5.0..sroa_idx.i113, align 1, !tbaa !21
  %i.ik = zext i8 %.sroa.5.0.copyload.i114 to i32 ; 2 uses
  %i.il = and i32 %i.ih, 63
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl i64 %.val.i.i123, %i.im
  %i.io = sub nsw i32 0, %i.ik
  %i.ip = and i32 %i.io, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = lshr i64 %i.in, %i.iq
  %i.is = add i32 %i.ih, %i.ik                    ; 6 uses
  %i.it = zext i16 %.sroa.0.0.copyload.i110 to i64
  %i.iu = add i64 %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %.1.i10232, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i112, ptr %i.hp, align 1, !tbaa !21
  %i.iw = icmp ugt i32 %i.is, 64
  br i1 %i.iw, label %bb.al, label %bb.ah, !prof !40

bb.ah:                                            ; preds = %bb.ag
  %.not.i13 = icmp ult ptr %i.ig, %i.da
  br i1 %.not.i13, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ix = lshr i32 %i.is, 3
  %i.iy = and i32 %i.is, 7
  br label %BIT_reloadDStream.exit.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.iz = icmp eq ptr %i.ig, %i.dw
  br i1 %i.iz, label %BIT_reloadDStream.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ja = lshr i32 %i.is, 3                       ; 2 uses
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = sub nsw i64 0, %i.jb
  %i.jd = getelementptr inbounds i8, ptr %i.ig, i64 %i.jc
  %i.je = icmp ult ptr %i.jd, %i.dw
  %i.jf = ptrtoint ptr %i.ig to i64
  %i.jg = sub i64 %i.jf, %i.dx
  %i.jh = trunc i64 %i.jg to i32
  %.021.i = select i1 %i.je, i32 %i.jh, i32 %i.ja ; 2 uses
  %i.ji = shl i32 %.021.i, 3
  %i.jj = sub i32 %i.is, %i.ji
  br label %BIT_reloadDStream.exit.sink.split

BIT_reloadDStream.exit.sink.split:                ; preds = %bb.ak, %bb.ai
  %.pn453.in = phi i32 [ %i.ix, %bb.ai ], [ %.021.i, %bb.ak ]
  %.ph448 = phi i32 [ %i.iy, %bb.ai ], [ %i.jj, %bb.ak ]
  %.pn453 = zext i32 %.pn453.in to i64
  %.pn452 = sub nsw i64 0, %.pn453
  %.ph447 = getelementptr inbounds i8, ptr %i.ig, i64 %.pn452 ; 2 uses
  %.val.i117.sink = load i64, ptr %.ph447, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i117.sink, ptr %7, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %BIT_reloadDStream.exit.sink.split, %bb.aj
  %i.jk = phi ptr [ %i.ig, %bb.aj ], [ %.ph447, %BIT_reloadDStream.exit.sink.split ]
  %i.jl = phi i32 [ %i.is, %bb.aj ], [ %.ph448, %BIT_reloadDStream.exit.sink.split ]
  %.val.i117224 = phi i64 [ %.val.i.i123, %bb.aj ], [ %.val.i117.sink, %BIT_reloadDStream.exit.sink.split ]
  %i.jm = icmp ugt ptr %i.iv, %i.ew
  br i1 %i.jm, label %FSE_decompress_usingDTable_generic.exit12, label %.lr.ph

bb.al:                                            ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ho
  %.sroa.4.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %.sroa.4.0.copyload.i120 = load i8, ptr %.sroa.4.0..sroa_idx.i119, align 2, !tbaa !21
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.i10232, i64 3
  store i8 %.sroa.4.0.copyload.i120, ptr %i.iv, align 1, !tbaa !21
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ae
  %.2.i11 = phi ptr [ %i.if, %bb.ae ], [ %i.jo, %bb.al ]
  %13 = ptrtoint ptr %.2.i11 to i64
  %i.jp = ptrtoint ptr %0 to i64
  %i.jq = sub i64 %13, %i.jp
  br label %FSE_decompress_usingDTable_generic.exit12

FSE_decompress_usingDTable_generic.exit12:        ; preds = %bb.af, %BIT_reloadDStream.exit, %.preheader193, %bb.r, %bb.q, %bb.i, %bb.g, %BIT_initDStream.exit, %bb.am
  %.139.i8 = phi i64 [ %i.j, %BIT_initDStream.exit ], [ -20, %bb.q ], [ %i.jq, %bb.am ], [ -1, %bb.i ], [ -20, %bb.r ], [ -72, %bb.g ], [ -70, %.preheader193 ], [ -70, %BIT_reloadDStream.exit ], [ -70, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %FSE_decompress_wksp_body.exit

bb.an:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.jr = call fastcc i64 @BIT_initDStream(ptr noundef %10, ptr noundef %i.i, i64 noundef %i.j) ; 2 uses
  %i.js = icmp ult i64 %i.jr, -119
  br i1 %i.js, label %bb.ao, label %FSE_decompress_usingDTable_generic.exit

bb.ao:                                            ; preds = %bb.an
  call fastcc void @FSE_initDState(ptr noundef %11, ptr noundef %10, ptr noundef nonnull %i.c)
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %10, ptr noundef nonnull %i.c)
  %i.jt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !39 ; 6 uses
  %i.jv = icmp ugt i32 %i.ju, 64
  br i1 %i.jv, label %FSE_decompress_usingDTable_generic.exit, label %bb.ap, !prof !40

bb.ap:                                            ; preds = %bb.ao
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !37 ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !36 ; 4 uses
  %.not.i56 = icmp ult ptr %i.jx, %i.jz
  br i1 %.not.i56, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ka = lshr i32 %i.ju, 3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = sub nsw i64 0, %i.kb
  %i.kd = getelementptr inbounds i8, ptr %i.jx, i64 %i.kc ; 2 uses
  %i.ke = and i32 %i.ju, 7
  %.val.i125 = load i64, ptr %i.kd, align 1, !tbaa !14 ; 2 uses
  store i64 %.val.i125, ptr %10, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.pre346 = load ptr, ptr %.phi.trans.insert, align 8
  br label %BIT_reloadDStream.exit62

bb.ar:                                            ; preds = %bb.ap
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !32 ; 4 uses
  %i.kh = icmp eq ptr %i.jx, %i.kg
  br i1 %i.kh, label %.BIT_reloadDStream.exit62_crit_edge, label %bb.as

.BIT_reloadDStream.exit62_crit_edge:              ; preds = %bb.ar
  %.promoted240.pre = load i64, ptr %10, align 8
  br label %BIT_reloadDStream.exit62

bb.as:                                            ; preds = %bb.ar
  %i.ki = lshr i32 %i.ju, 3                       ; 2 uses
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = sub nsw i64 0, %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.jx, i64 %i.kk
  %i.km = icmp ult ptr %i.kl, %i.kg
  %i.kn = ptrtoint ptr %i.jx to i64
  %i.ko = ptrtoint ptr %i.kg to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = trunc i64 %i.kp to i32
  %.021.i58 = select i1 %i.km, i32 %i.kq, i32 %i.ki ; 2 uses
  %i.kr = zext i32 %.021.i58 to i64
  %i.ks = sub nsw i64 0, %i.kr
  %i.kt = getelementptr inbounds i8, ptr %i.jx, i64 %i.ks ; 2 uses
  %i.ku = shl i32 %.021.i58, 3
  %i.kv = sub i32 %i.ju, %i.ku
  %.val = load i64, ptr %i.kt, align 1, !tbaa !14 ; 2 uses
  store i64 %.val, ptr %10, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit62

BIT_reloadDStream.exit62:                         ; preds = %.BIT_reloadDStream.exit62_crit_edge, %bb.aq, %bb.as
  %.promoted246 = phi ptr [ %i.jx, %.BIT_reloadDStream.exit62_crit_edge ], [ %i.kd, %bb.aq ], [ %i.kt, %bb.as ]
  %i.kw = phi ptr [ %i.jx, %.BIT_reloadDStream.exit62_crit_edge ], [ %.pre346, %bb.aq ], [ %i.kg, %bb.as ] ; 7 uses
  %.promoted240 = phi i64 [ %.promoted240.pre, %.BIT_reloadDStream.exit62_crit_edge ], [ %.val.i125, %bb.aq ], [ %.val, %bb.as ] ; 2 uses
  %.promoted238 = phi i32 [ %i.ju, %.BIT_reloadDStream.exit62_crit_edge ], [ %i.ke, %bb.aq ], [ %i.kv, %bb.as ] ; 3 uses
  %.promoted242 = load i64, ptr %11, align 8      ; 2 uses
  %.promoted244 = load i64, ptr %12, align 8      ; 2 uses
  %i.kx = ptrtoint ptr %i.kw to i64               ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8            ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lb = load ptr, ptr %i.la, align 8            ; 4 uses
  %i.lc = icmp ugt i32 %.promoted238, 64
  br i1 %i.lc, label %.preheader, label %.lr.ph505, !prof !44

.lr.ph505:                                        ; preds = %BIT_reloadDStream.exit62, %bb.aw
  %.037.i504 = phi ptr [ %i.oc, %bb.aw ], [ %0, %BIT_reloadDStream.exit62 ] ; 8 uses
  %i.ld = phi i32 [ %i.nr, %bb.aw ], [ %.promoted238, %BIT_reloadDStream.exit62 ] ; 5 uses
  %i.le = phi i64 [ %i.lw, %bb.aw ], [ %.promoted240, %BIT_reloadDStream.exit62 ]
  %i.lf = phi i64 [ %i.nm, %bb.aw ], [ %.promoted242, %BIT_reloadDStream.exit62 ] ; 3 uses
  %i.lg = phi i64 [ %i.oa, %bb.aw ], [ %.promoted244, %BIT_reloadDStream.exit62 ] ; 3 uses
  %i.lh = phi ptr [ %.promoted275, %bb.aw ], [ %.promoted246, %BIT_reloadDStream.exit62 ] ; 6 uses
  %.not.i49 = icmp ult ptr %i.lh, %i.jz
  br i1 %.not.i49, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph505
  %i.li = lshr i32 %i.ld, 3
  %i.lj = and i32 %i.ld, 7
  br label %BIT_reloadDStream.exit55

bb.au:                                            ; preds = %.lr.ph505
  %i.lk = icmp eq ptr %i.lh, %i.kw
  br i1 %i.lk, label %.preheader, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ll = lshr i32 %i.ld, 3                       ; 2 uses
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds i8, ptr %i.lh, i64 %i.ln
  %i.lp = icmp uge ptr %i.lo, %i.kw               ; 2 uses
  %i.lq = ptrtoint ptr %i.lh to i64
  %i.lr = sub i64 %i.lq, %i.kx
  %i.ls = trunc i64 %i.lr to i32
  %.021.i51 = select i1 %i.lp, i32 %i.ll, i32 %i.ls ; 2 uses
  %i.lt = shl i32 %.021.i51, 3
  %i.lu = sub i32 %i.ld, %i.lt
  br label %BIT_reloadDStream.exit55

BIT_reloadDStream.exit55:                         ; preds = %bb.at, %bb.av
  %.pn455.in = phi i32 [ %.021.i51, %bb.av ], [ %i.li, %bb.at ]
  %i.lv = phi i32 [ %i.lu, %bb.av ], [ %i.lj, %bb.at ] ; 2 uses
  %.022.i50 = phi i1 [ %i.lp, %bb.av ], [ true, %bb.at ]
  %.pn455 = zext i32 %.pn455.in to i64
  %.pn454 = sub nsw i64 0, %.pn455
  %.promoted275 = getelementptr inbounds i8, ptr %i.lh, i64 %.pn454 ; 3 uses
  %i.lw = load i64, ptr %.promoted275, align 1, !tbaa !14 ; 7 uses
  %i.lx = icmp ult ptr %.037.i504, %i.ak
  %i.ly = and i1 %i.lx, %.022.i50
  br i1 %i.ly, label %bb.aw, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit55, %bb.au, %bb.aw, %BIT_reloadDStream.exit62
  %.lcssa468 = phi i64 [ %.promoted244, %BIT_reloadDStream.exit62 ], [ %i.lg, %BIT_reloadDStream.exit55 ], [ %i.lg, %bb.au ], [ %i.oa, %bb.aw ] ; 2 uses
  %.lcssa467 = phi i64 [ %.promoted242, %BIT_reloadDStream.exit62 ], [ %i.lf, %BIT_reloadDStream.exit55 ], [ %i.lf, %bb.au ], [ %i.nm, %bb.aw ] ; 2 uses
  %.037.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit62 ], [ %.037.i504, %BIT_reloadDStream.exit55 ], [ %.037.i504, %bb.au ], [ %i.oc, %bb.aw ] ; 2 uses
  %i.lz = phi i32 [ %.promoted238, %BIT_reloadDStream.exit62 ], [ %i.lv, %BIT_reloadDStream.exit55 ], [ %i.ld, %bb.au ], [ %i.nr, %bb.aw ] ; 2 uses
  %i.ma = phi i64 [ %.promoted240, %BIT_reloadDStream.exit62 ], [ %i.lw, %BIT_reloadDStream.exit55 ], [ %i.le, %bb.au ], [ %i.lw, %bb.aw ] ; 2 uses
  %.promoted275406 = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit62 ], [ %.promoted275, %BIT_reloadDStream.exit55 ], [ %i.lh, %bb.au ], [ @BIT_reloadDStream.zeroFilled, %bb.aw ] ; 2 uses
  store ptr %.promoted275406, ptr %i.jw, align 8
  store i32 %i.lz, ptr %i.jt, align 8
  store i64 %i.ma, ptr %10, align 8
  store i64 %.lcssa467, ptr %11, align 8
  store i64 %.lcssa468, ptr %12, align 8
  %i.mb = getelementptr inbounds i8, ptr %i.aj, i64 -2 ; 3 uses
  %i.mc = icmp ugt ptr %.037.i.lcssa, %i.mb
  br i1 %i.mc, label %FSE_decompress_usingDTable_generic.exit, label %.lr.ph265

bb.aw:                                            ; preds = %BIT_reloadDStream.exit55
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lf ; 3 uses
  %.sroa.0.0.copyload.i127 = load i16, ptr %i.md, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %.sroa.4.0.copyload.i129 = load i8, ptr %.sroa.4.0..sroa_idx.i128, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.md, i64 3
  %.sroa.5.0.copyload.i131 = load i8, ptr %.sroa.5.0..sroa_idx.i130, align 1, !tbaa !21 ; 2 uses
  %i.me = zext i8 %.sroa.5.0.copyload.i131 to i32
  %i.mf = add i32 %i.lv, %i.me                    ; 2 uses
  %i.mg = sub i32 0, %i.mf
  %i.mh = and i32 %i.mg, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = lshr i64 %i.lw, %i.mi
  %i.mk = zext nneg i8 %.sroa.5.0.copyload.i131 to i64
  %notmask.i.i = shl nsw i64 -1, %i.mk
  %i.ml = xor i64 %notmask.i.i, -1
  %i.mm = and i64 %i.mj, %i.ml
  %i.mn = zext i16 %.sroa.0.0.copyload.i127 to i64
  store i8 %.sroa.4.0.copyload.i129, ptr %.037.i504, align 1, !tbaa !21
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lg ; 3 uses
  %.sroa.0.0.copyload.i132 = load i16, ptr %i.mo, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %.sroa.4.0.copyload.i134 = load i8, ptr %.sroa.4.0..sroa_idx.i133, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  %.sroa.5.0.copyload.i136 = load i8, ptr %.sroa.5.0..sroa_idx.i135, align 1, !tbaa !21 ; 2 uses
  %i.mp = zext i8 %.sroa.5.0.copyload.i136 to i32
  %i.mq = add i32 %i.mf, %i.mp                    ; 2 uses
  %i.mr = sub i32 0, %i.mq
  %i.ms = and i32 %i.mr, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = lshr i64 %i.lw, %i.mt
  %i.mv = zext nneg i8 %.sroa.5.0.copyload.i136 to i64
  %notmask.i.i137 = shl nsw i64 -1, %i.mv
  %i.mw = xor i64 %notmask.i.i137, -1
  %i.mx = and i64 %i.mu, %i.mw
  %i.my = zext i16 %.sroa.0.0.copyload.i132 to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %.037.i504, i64 1
  store i8 %.sroa.4.0.copyload.i134, ptr %i.mz, align 1, !tbaa !21
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.mm
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.mn ; 3 uses
  %.sroa.0.0.copyload.i138 = load i16, ptr %i.nb, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  %.sroa.4.0.copyload.i140 = load i8, ptr %.sroa.4.0..sroa_idx.i139, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.nb, i64 3
  %.sroa.5.0.copyload.i142 = load i8, ptr %.sroa.5.0..sroa_idx.i141, align 1, !tbaa !21 ; 2 uses
  %i.nc = zext i8 %.sroa.5.0.copyload.i142 to i32
  %i.nd = add i32 %i.mq, %i.nc                    ; 2 uses
  %i.ne = sub i32 0, %i.nd
  %i.nf = and i32 %i.ne, 63
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = lshr i64 %i.lw, %i.ng
  %i.ni = zext nneg i8 %.sroa.5.0.copyload.i142 to i64
  %notmask.i.i143 = shl nsw i64 -1, %i.ni
  %i.nj = xor i64 %notmask.i.i143, -1
  %i.nk = and i64 %i.nh, %i.nj
  %i.nl = zext i16 %.sroa.0.0.copyload.i138 to i64
  %i.nm = add nuw i64 %i.nk, %i.nl                ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.037.i504, i64 2
  store i8 %.sroa.4.0.copyload.i140, ptr %i.nn, align 1, !tbaa !21
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.mx
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.my ; 3 uses
  %.sroa.0.0.copyload.i144 = load i16, ptr %i.np, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.np, i64 2
  %.sroa.4.0.copyload.i146 = load i8, ptr %.sroa.4.0..sroa_idx.i145, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.np, i64 3
  %.sroa.5.0.copyload.i148 = load i8, ptr %.sroa.5.0..sroa_idx.i147, align 1, !tbaa !21 ; 2 uses
  %i.nq = zext i8 %.sroa.5.0.copyload.i148 to i32
  %i.nr = add i32 %i.nd, %i.nq                    ; 4 uses
  %i.ns = sub i32 0, %i.nr
  %i.nt = and i32 %i.ns, 63
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = lshr i64 %i.lw, %i.nu
  %i.nw = zext nneg i8 %.sroa.5.0.copyload.i148 to i64
  %notmask.i.i149 = shl nsw i64 -1, %i.nw
  %i.nx = xor i64 %notmask.i.i149, -1
  %i.ny = and i64 %i.nv, %i.nx
  %i.nz = zext i16 %.sroa.0.0.copyload.i144 to i64
  %i.oa = add nuw i64 %i.ny, %i.nz                ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.037.i504, i64 3
  store i8 %.sroa.4.0.copyload.i146, ptr %i.ob, align 1, !tbaa !21
  %i.oc = getelementptr inbounds nuw i8, ptr %.037.i504, i64 4 ; 2 uses
  %i.od = icmp ugt i32 %i.nr, 64
  br i1 %i.od, label %.preheader, label %.lr.ph505, !prof !42, !llvm.loop !43

.lr.ph265:                                        ; preds = %.preheader, %BIT_reloadDStream.exit41
  %i.oe = phi ptr [ %i.rb, %BIT_reloadDStream.exit41 ], [ %.promoted275406, %.preheader ] ; 7 uses
  %.1.i264 = phi ptr [ %i.qg, %BIT_reloadDStream.exit41 ], [ %.037.i.lcssa, %.preheader ] ; 5 uses
  %i.of = phi i64 [ %i.ot, %BIT_reloadDStream.exit41 ], [ %.lcssa467, %.preheader ]
  %.val.i169252263 = phi i64 [ %.val.i169253, %BIT_reloadDStream.exit41 ], [ %i.ma, %.preheader ] ; 2 uses
  %i.og = phi i32 [ %i.rc, %BIT_reloadDStream.exit41 ], [ %i.lz, %.preheader ]
  %i.oh = phi i64 [ %i.qf, %BIT_reloadDStream.exit41 ], [ %.lcssa468, %.preheader ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.of ; 3 uses
  %.sroa.0.0.copyload.i150 = load i16, ptr %i.oi, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  %.sroa.4.0.copyload.i152 = load i8, ptr %.sroa.4.0..sroa_idx.i151, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.oi, i64 3
  %.sroa.5.0.copyload.i154 = load i8, ptr %.sroa.5.0..sroa_idx.i153, align 1, !tbaa !21 ; 2 uses
  %i.oj = zext i8 %.sroa.5.0.copyload.i154 to i32
  %i.ok = add i32 %i.og, %i.oj                    ; 7 uses
  %i.ol = sub i32 0, %i.ok
  %i.om = and i32 %i.ol, 63
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = lshr i64 %.val.i169252263, %i.on
  %i.op = zext nneg i8 %.sroa.5.0.copyload.i154 to i64
  %notmask.i.i155 = shl nsw i64 -1, %i.op
  %i.oq = xor i64 %notmask.i.i155, -1
  %i.or = and i64 %i.oo, %i.oq
  %i.os = zext i16 %.sroa.0.0.copyload.i150 to i64
  %i.ot = add nuw i64 %i.or, %i.os                ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.i264, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i152, ptr %.1.i264, align 1, !tbaa !21
  %i.ov = icmp ugt i32 %i.ok, 64
  br i1 %i.ov, label %bb.bb, label %bb.ax, !prof !40

bb.ax:                                            ; preds = %.lr.ph265
  %.not.i42 = icmp ult ptr %i.oe, %i.jz
  br i1 %.not.i42, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ow = lshr i32 %i.ok, 3
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = sub nsw i64 0, %i.ox
  %i.oz = getelementptr inbounds i8, ptr %i.oe, i64 %i.oy ; 2 uses
  %i.pa = and i32 %i.ok, 7
  %.val.i156 = load i64, ptr %i.oz, align 1, !tbaa !14
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.pb = icmp eq ptr %i.oe, %i.kw
  br i1 %i.pb, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pc = lshr i32 %i.ok, 3                       ; 2 uses
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = sub nsw i64 0, %i.pd
  %i.pf = getelementptr inbounds i8, ptr %i.oe, i64 %i.pe
  %i.pg = icmp ult ptr %i.pf, %i.kw
  %i.ph = ptrtoint ptr %i.oe to i64
  %i.pi = sub i64 %i.ph, %i.kx
  %i.pj = trunc i64 %i.pi to i32
  %.021.i44 = select i1 %i.pg, i32 %i.pj, i32 %i.pc ; 2 uses
  %i.pk = zext i32 %.021.i44 to i64
  %i.pl = sub nsw i64 0, %i.pk
  %i.pm = getelementptr inbounds i8, ptr %i.oe, i64 %i.pl ; 2 uses
  %i.pn = shl i32 %.021.i44, 3
  %i.po = sub i32 %i.ok, %i.pn
  %.val64 = load i64, ptr %i.pm, align 1, !tbaa !14
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph265
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.oh
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.pp, i64 2
  %.sroa.4.0.copyload.i159 = load i8, ptr %.sroa.4.0..sroa_idx.i158, align 2, !tbaa !21
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i264, i64 2
  store i8 %.sroa.4.0.copyload.i159, ptr %i.ou, align 1, !tbaa !21
  br label %bb.bj

bb.bc:                                            ; preds = %bb.az, %bb.ay, %bb.ba
  %i.pr = phi ptr [ %i.oe, %bb.az ], [ %i.oz, %bb.ay ], [ %i.pm, %bb.ba ] ; 7 uses
  %i.ps = phi i32 [ %i.ok, %bb.az ], [ %i.pa, %bb.ay ], [ %i.po, %bb.ba ]
  %.val.i169254 = phi i64 [ %.val.i169252263, %bb.az ], [ %.val.i156, %bb.ay ], [ %.val64, %bb.ba ] ; 2 uses
  %i.pt = icmp ugt ptr %i.ou, %i.mb
  br i1 %i.pt, label %FSE_decompress_usingDTable_generic.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.oh ; 3 uses
  %.sroa.0.0.copyload.i163 = load i16, ptr %i.pu, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.pu, i64 2
  %.sroa.4.0.copyload.i165 = load i8, ptr %.sroa.4.0..sroa_idx.i164, align 2, !tbaa !21
  %.sroa.5.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %.sroa.5.0.copyload.i167 = load i8, ptr %.sroa.5.0..sroa_idx.i166, align 1, !tbaa !21 ; 2 uses
  %i.pv = zext i8 %.sroa.5.0.copyload.i167 to i32
  %i.pw = add i32 %i.ps, %i.pv                    ; 7 uses
  %i.px = sub i32 0, %i.pw
  %i.py = and i32 %i.px, 63
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = lshr i64 %.val.i169254, %i.pz
  %i.qb = zext nneg i8 %.sroa.5.0.copyload.i167 to i64
  %notmask.i.i168 = shl nsw i64 -1, %i.qb
  %i.qc = xor i64 %notmask.i.i168, -1
  %i.qd = and i64 %i.qa, %i.qc
  %i.qe = zext i16 %.sroa.0.0.copyload.i163 to i64
  %i.qf = add nuw i64 %i.qd, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %.1.i264, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i165, ptr %i.ou, align 1, !tbaa !21
  %i.qh = icmp ugt i32 %i.pw, 64
  br i1 %i.qh, label %bb.bi, label %bb.be, !prof !40

bb.be:                                            ; preds = %bb.bd
  %.not.i35 = icmp ult ptr %i.pr, %i.jz
  br i1 %.not.i35, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qi = lshr i32 %i.pw, 3
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds i8, ptr %i.pr, i64 %i.qk ; 2 uses
  %i.qm = and i32 %i.pw, 7
  %.val.i169 = load i64, ptr %i.ql, align 1, !tbaa !14
  br label %BIT_reloadDStream.exit41

bb.bg:                                            ; preds = %bb.be
  %i.qn = icmp eq ptr %i.pr, %i.kw
  br i1 %i.qn, label %BIT_reloadDStream.exit41, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qo = lshr i32 %i.pw, 3                       ; 2 uses
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = sub nsw i64 0, %i.qp
  %i.qr = getelementptr inbounds i8, ptr %i.pr, i64 %i.qq
  %i.qs = icmp ult ptr %i.qr, %i.kw
  %i.qt = ptrtoint ptr %i.pr to i64
  %i.qu = sub i64 %i.qt, %i.kx
  %i.qv = trunc i64 %i.qu to i32
  %.021.i37 = select i1 %i.qs, i32 %i.qv, i32 %i.qo ; 2 uses
  %i.qw = zext i32 %.021.i37 to i64
  %i.qx = sub nsw i64 0, %i.qw
  %i.qy = getelementptr inbounds i8, ptr %i.pr, i64 %i.qx ; 2 uses
  %i.qz = shl i32 %.021.i37, 3
  %i.ra = sub i32 %i.pw, %i.qz
  %.val65 = load i64, ptr %i.qy, align 1, !tbaa !14
  br label %BIT_reloadDStream.exit41

BIT_reloadDStream.exit41:                         ; preds = %bb.bg, %bb.bf, %bb.bh
  %i.rb = phi ptr [ %i.pr, %bb.bg ], [ %i.ql, %bb.bf ], [ %i.qy, %bb.bh ]
  %i.rc = phi i32 [ %i.pw, %bb.bg ], [ %i.qm, %bb.bf ], [ %i.ra, %bb.bh ]
  %.val.i169253 = phi i64 [ %.val.i169254, %bb.bg ], [ %.val.i169, %bb.bf ], [ %.val65, %bb.bh ]
  %i.rd = icmp ugt ptr %i.qg, %i.mb
  br i1 %i.rd, label %FSE_decompress_usingDTable_generic.exit, label %.lr.ph265

bb.bi:                                            ; preds = %bb.bd
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ot
  %.sroa.4.0..sroa_idx.i171 = getelementptr inbounds nuw i8, ptr %i.re, i64 2
  %.sroa.4.0.copyload.i172 = load i8, ptr %.sroa.4.0..sroa_idx.i171, align 2, !tbaa !21
  %i.rf = getelementptr inbounds nuw i8, ptr %.1.i264, i64 3
  store i8 %.sroa.4.0.copyload.i172, ptr %i.qg, align 1, !tbaa !21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bb
  %.2.i = phi ptr [ %i.pq, %bb.bb ], [ %i.rf, %bb.bi ]
  %14 = ptrtoint ptr %.2.i to i64
  %i.rg = ptrtoint ptr %0 to i64
  %i.rh = sub i64 %14, %i.rg
  br label %FSE_decompress_usingDTable_generic.exit

FSE_decompress_usingDTable_generic.exit:          ; preds = %bb.bc, %BIT_reloadDStream.exit41, %.preheader, %bb.ao, %bb.an, %bb.bj
  %.139.i = phi i64 [ %i.jr, %bb.an ], [ -20, %bb.ao ], [ %i.rh, %bb.bj ], [ -70, %.preheader ], [ -70, %BIT_reloadDStream.exit41 ], [ -70, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %FSE_decompress_wksp_body.exit

FSE_decompress_wksp_body.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %bb.e, %FSE_decompress_usingDTable_generic.exit12, %FSE_decompress_usingDTable_generic.exit
  %.3.i = phi i64 [ %.139.i, %FSE_decompress_usingDTable_generic.exit ], [ -1, %bb.a ], [ -44, %bb.d ], [ %i.af, %bb.e ], [ %.139.i8, %FSE_decompress_usingDTable_generic.exit12 ], [ -44, %bb.c ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i64 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !36
  %i.e = icmp ugt i64 %2, 7
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %.val = load i64, ptr %i.g, align 1, !tbaa !14
  store i64 %.val, ptr %0, align 8, !tbaa !38
  %i.i = getelementptr i8, ptr %i.f, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21    ; 2 uses
  %.not51 = icmp eq i8 %i.j, 0
  br i1 %.not51, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = sub nuw nsw i32 8, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !39
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !39
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !37
  %i.r = load i8, ptr %1, align 1, !tbaa !21
  %i.s = zext i8 %i.r to i64                      ; 7 uses
  store i64 %i.s, ptr %0, align 8, !tbaa !38
  switch i64 %2, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.w, %i.s               ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i64 [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = add nuw nsw i64 %i.ac, %i.y             ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ %i.s, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = add nuw nsw i64 %i.ai, %i.ae            ; 2 uses
  store i64 %i.aj, ptr %0, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %i.s, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = add nuw nsw i64 %i.ao, %i.ak            ; 2 uses
  store i64 %i.ap, ptr %0, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.j ], [ %i.s, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = add nuw nsw i64 %i.au, %i.aq            ; 2 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.k ], [ %i.s, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %0, align 8, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l
  %i.bc = getelementptr i8, ptr %1, i64 %2
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21  ; 2 uses
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bf, align 8, !tbaa !39
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bg = zext i8 %i.be to i32
  %i.bh = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.bg, i1 true)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = trunc nuw nsw i64 %2 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 3
  %i.bl = sub nsw i32 %i.bh, %i.bk
  %i.bm = add nsw i32 %i.bl, 41
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.e, %bb.b
  %.2 = phi i64 [ -72, %bb.b ], [ -20, %bb.n ], [ -1, %bb.e ], [ %2, %.thread ], [ %2, %bb.o ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @FSE_initDState(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !45     ; 2 uses
  %i.b = zext i16 %i.a to i32
  %i.c = load i64, ptr %1, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = add i32 %i.e, %i.b                       ; 7 uses
  %i.g = sub i32 0, %i.f
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.c, %i.i
  %i.k = zext nneg i16 %i.a to i64
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1
  %i.m = and i64 %i.j, %i.l
  store i32 %i.f, ptr %i.d, align 8, !tbaa !39
  store i64 %i.m, ptr %0, align 8, !tbaa !46
  %i.n = icmp ugt i32 %i.f, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.o, align 8, !tbaa !37
  br label %BIT_reloadDStream.exit
end_hunk_3
