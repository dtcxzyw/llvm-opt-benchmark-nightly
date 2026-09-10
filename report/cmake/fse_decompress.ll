Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/fse_decompress?download=true
inline.NumInlined: 54
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FSE_buildDTable_internal:bb.a
vector.ph:                                        ; preds = %.lr.ph154.preheader
  %n.vec = and i64 %i.bo, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3
  %i.bq = or disjoint i64 %i.bp, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0123157, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl nuw i64 %index, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bt, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.bu, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge155, label %.lr.ph154.preheader190

.lr.ph154.preheader190:                           ; preds = %.lr.ph154.preheader, %middle.block
  %indvars.iv171.ph = phi i64 [ 8, %.lr.ph154.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader190, %.lr.ph154
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph154 ], [ %indvars.iv171.ph, %.lr.ph154.preheader190 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv171
  store i64 %.0123157, ptr %i.bw, align 1, !tbaa !13
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 8 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv.next172, %i.bk
  br i1 %i.bx, label %.lr.ph154, label %._crit_edge155, !llvm.loop !27

._crit_edge155:                                   ; preds = %.lr.ph154, %middle.block, %.lr.ph160
  %i.by = sext i16 %i.bh to i64
  %i.bz = add i64 %.0124156, %i.by
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.ca = add i64 %.0123157, 72340172838076673
  %exitcond179.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count178
  br i1 %exitcond179.not, label %.preheader136, label %.lr.ph160, !llvm.loop !28

.preheader:                                       ; preds = %.preheader136, %.preheader
  %.0119163 = phi i64 [ 0, %.preheader136 ], [ %i.co, %.preheader ] ; 2 uses
  %.0120162 = phi i64 [ 0, %.preheader136 ], [ %i.cn, %.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0119163 ; 2 uses
  %i.cc = and i64 %.0120162, %i.az
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 %i.cd, ptr %i.cf, align 2, !tbaa !35
  %i.cg = add nuw nsw i64 %.0120162, %i.bd
  %i.ch = and i64 %i.cg, %i.az
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.cj, ptr %i.cl, align 2, !tbaa !35
  %i.cm = add nuw nsw i64 %.0120162, %i.bf
  %i.cn = and i64 %i.cm, %i.az
  %i.co = add nuw nsw i64 %.0119163, 2            ; 2 uses
  %i.cp = icmp samesign ult i64 %i.co, %i.be
  br i1 %i.cp, label %.preheader, label %.loopexit137, !llvm.loop !29

.preheader138.lr.ph:                              ; preds = %._crit_edge
  %i.cq = lshr i32 %i.f, 3
  %i.cr = add nuw nsw i32 %i.cq, 3
  %i.cs = add nuw nsw i32 %i.cr, %i.ay            ; 3 uses
  %wide.trip.count169 = zext nneg i32 %i.e to i64
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.lr.ph, %._crit_edge146
  %indvars.iv166 = phi i64 [ 0, %.preheader138.lr.ph ], [ %indvars.iv.next167, %._crit_edge146 ] ; 3 uses
  %.0115149 = phi i32 [ 0, %.preheader138.lr.ph ], [ %.1116.lcssa, %._crit_edge146 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv166
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !10 ; 5 uses
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
  store i8 %i.cw, ptr %i.db, align 2, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1116.pn = phi i32 [ %.1116143, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.cs, %.1116.pn
  %.2 = and i32 %.pn, %i.g                        ; 4 uses
  %i.dc = icmp ugt i32 %.2, %.1128.lcssa
  br i1 %i.dc, label %bb.m, label %bb.n, !llvm.loop !30

bb.n:                                             ; preds = %bb.m
  %i.dd = zext nneg i32 %.2 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.cw, ptr %i.df, align 2, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1116.pn.1 = phi i32 [ %.2, %bb.n ], [ %.2.1, %bb.o ]
  %.pn.1 = add nuw i32 %i.cs, %.1116.pn.1
  %.2.1 = and i32 %.pn.1, %i.g                    ; 5 uses
  %i.dg = icmp ugt i32 %.2.1, %.1128.lcssa
  br i1 %i.dg, label %bb.o, label %bb.p, !llvm.loop !30

bb.p:                                             ; preds = %bb.o
  %niter200.next.1 = add i32 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i32 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %bb.l, !llvm.loop !31

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
  store i8 %i.cw, ptr %i.dk, align 2, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader194
  %.1116.pn.epil = phi i32 [ %.1116143.epil.init, %.epil.preheader194 ], [ %.2.epil, %bb.q ]
  %.pn.epil = add nuw i32 %i.cs, %.1116.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.g              ; 3 uses
  %i.dl = icmp ugt i32 %.2.epil, %.1128.lcssa
  br i1 %i.dl, label %bb.q, label %._crit_edge146, !llvm.loop !30

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit.unr-lcssa, %bb.q, %.preheader138
  %.1116.lcssa = phi i32 [ %.0115149, %.preheader138 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ], [ %.2.epil, %bb.q ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge150, label %.preheader138, !llvm.loop !32

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
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !35
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10 ; 2 uses
  %i.ds = add i16 %i.dr, 1
  store i16 %i.ds, ptr %i.dq, align 2, !tbaa !10
  %i.dt = zext i16 %i.dr to i32                   ; 2 uses
  %i.du = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dt, i1 true)
  %i.dv = xor i32 %i.du, 31
  %i.dw = sub nsw i32 %3, %i.dv                   ; 2 uses
  %i.dx = trunc nsw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !38
  %i.dz = and i32 %i.dw, 255
  %i.ea = shl i32 %i.dt, %i.dz
  %i.eb = sub i32 %i.ea, %i.f
  %i.ec = trunc i32 %i.eb to i16
  store i16 %i.ec, ptr %i.dm, align 2, !tbaa !39
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183.pre-phi
  br i1 %exitcond184.not, label %.loopexit, label %bb.r, !llvm.loop !33

.loopexit:                                        ; preds = %bb.r, %bb.b, %bb.a, %._crit_edge150
  %.1 = phi i64 [ -1, %._crit_edge150 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %bb.r ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %struct.BIT_DStream_t, align 8      ; 21 uses
  %9 = alloca %struct.FSE_DState_t, align 8       ; 8 uses
  %10 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %11 = alloca %struct.BIT_DStream_t, align 8     ; 14 uses
  %12 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %13 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 255, ptr %i.b, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 6 uses
  %i.d = icmp ult i64 %6, 512
  br i1 %i.d, label %FSE_decompress_wksp_body_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 0) #10 ; 4 uses
  %i.f = icmp ult i64 %i.e, -119
  br i1 %i.f, label %bb.c, label %FSE_decompress_wksp_body_default.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !41   ; 4 uses
  %i.h = icmp ugt i32 %i.g, %4
  br i1 %i.h, label %FSE_decompress_wksp_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.e ; 11 uses
  %i.j = sub i64 %3, %i.e                         ; 7 uses
  %i.k = shl nuw i32 1, %i.g                      ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = load i32, ptr %i.b, align 4, !tbaa !41   ; 2 uses
  %i.o = add i32 %i.n, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = zext nneg i32 %i.g to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = shl nsw i64 %i.m, 2
  %i.u = add nuw i64 %i.s, 11
  %i.v = add i64 %i.u, %i.t
  %i.w = add i64 %i.v, %i.q
  %i.x = and i64 %i.w, -4
  %i.y = add i64 %i.x, 516
  %i.z = icmp ugt i64 %i.y, %6
  br i1 %i.z, label %FSE_decompress_wksp_body_default.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.k, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %.neg191.i = add i64 %6, -512
  %i.ae = sub i64 %.neg191.i, %i.ac
  %i.af = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %i.c, ptr noundef %5, i32 noundef %i.n, i32 noundef %i.g, ptr noundef nonnull %i.ad, i64 noundef %i.ae) ; 2 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.f, label %FSE_decompress_wksp_body_default.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 514
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !42
  %.not48.i.i = icmp eq i16 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -3 ; 2 uses
  br i1 %.not48.i.i, label %bb.am, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !20
  %i.ap = icmp ugt i64 %i.j, 7
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !21
  %.val.i.i = load i64, ptr %i.ar, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %8, align 8, !tbaa !22
  %i.at = lshr i64 %.val.i.i, 56                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.at, 0
  br i1 %.not51.i.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.i

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.i, ptr %i.au, align 8, !tbaa !21
  %i.av = load i8, ptr %i.i, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i64                    ; 7 uses
  store i64 %i.aw, ptr %8, align 8, !tbaa !22
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
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 48
  %i.bb = or disjoint i64 %i.ba, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i64 [ %i.bb, %bb.k ], [ %i.aw, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bi = phi i64 [ %i.bh, %bb.l ], [ %i.aw, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 32
  %i.bn = add nuw nsw i64 %i.bm, %i.bi
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bo = phi i64 [ %i.bn, %bb.m ], [ %i.aw, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.bs, %i.bo
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.bu = phi i64 [ %i.bt, %bb.n ], [ %i.aw, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 16
  %i.bz = add nuw nsw i64 %i.by, %i.bu
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.ca = phi i64 [ %i.bz, %bb.o ], [ %i.aw, %bb.j ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = add nuw nsw i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %8, align 8, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cg = getelementptr i8, ptr %2, i64 %3
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14  ; 2 uses
  %.not.i70.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i70.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.thread182.i

BIT_initDStream.exit.thread182.i:                 ; preds = %bb.q
  %i.cj = zext i8 %i.ci to i32
  %i.ck = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cj, i1 true)
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cm = trunc nuw nsw i64 %i.j to i32
  %i.cn = shl nuw nsw i32 %i.cm, 3
  %reass.sub = sub nsw i32 %i.ck, %i.cn
  %i.co = add nsw i32 %reass.sub, 41
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !23
  br label %bb.r

BIT_initDStream.exit.i:                           ; preds = %bb.i
  %i.cp = trunc nuw nsw i64 %i.at to i32
  %i.cq = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cp, i1 true)
  %i.cr = xor i32 %i.cq, 31
  %i.cs = sub nuw nsw i32 8, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !23
  %i.cu = icmp ult i64 %i.j, -119
  br i1 %i.cu, label %bb.r, label %FSE_decompress_usingDTable_generic.exit12.i

bb.r:                                             ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread182.i
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %i.c)
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %i.c)
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !23 ; 6 uses
  %i.cx = icmp ugt i32 %i.cw, 64
  br i1 %i.cx, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21 ; 8 uses
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 4 uses
  %.not.i28.i = icmp ult ptr %i.cz, %i.da
  br i1 %.not.i28.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = lshr i32 %i.cw, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %i.dd ; 2 uses
  %i.df = and i32 %i.cw, 7
  %.val.i72.i = load i64, ptr %i.de, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i72.i, ptr %8, align 8, !tbaa !22
  %.pre.i = load ptr, ptr %i.am, align 8
  br label %BIT_reloadDStream.exit34.i.thread

bb.u:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !19 ; 6 uses
  %i.dh = icmp eq ptr %i.cz, %i.dg
  br i1 %i.dh, label %.BIT_reloadDStream.exit34_crit_edge.i, label %BIT_reloadDStream.exit34.i

.BIT_reloadDStream.exit34_crit_edge.i:            ; preds = %bb.u
  %.promoted211.pre.i = load i64, ptr %8, align 8
  br label %BIT_reloadDStream.exit34.i.thread

BIT_reloadDStream.exit34.i.thread:                ; preds = %.BIT_reloadDStream.exit34_crit_edge.i, %bb.t
  %.promoted218.i.ph = phi ptr [ %i.de, %bb.t ], [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.ph146 = phi ptr [ %.pre.i, %bb.t ], [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge.i ] ; 2 uses
  %.promoted.ph = phi i64 [ %.val.i72.i, %bb.t ], [ %.promoted211.pre.i, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted.i.ph = phi i32 [ %i.df, %bb.t ], [ %i.cw, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted214.i150 = load i64, ptr %9, align 8
  %.promoted216.i151 = load i64, ptr %10, align 8
  %i.di = ptrtoint ptr %.ph146 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %.lr.ph.preheader

BIT_reloadDStream.exit34.i:                       ; preds = %bb.u
  %i.dn = lshr i32 %i.cw, 3                       ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.cz, i64 %i.dp
  %i.dr = icmp ult ptr %i.dq, %i.dg
  %i.ds = ptrtoint ptr %i.cz to i64
  %i.dt = ptrtoint ptr %i.dg to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = trunc i64 %i.du to i32
  %.021.i30.i = select i1 %i.dr, i32 %i.dv, i32 %i.dn ; 2 uses
  %i.dw = zext i32 %.021.i30.i to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %i.dx ; 2 uses
  %i.dz = shl i32 %.021.i30.i, 3
  %i.ea = sub i32 %i.cw, %i.dz                    ; 3 uses
  %.val66.i = load i64, ptr %i.dy, align 1, !tbaa !13 ; 3 uses
  store i64 %.val66.i, ptr %8, align 8, !tbaa !22
  %.promoted214.i = load i64, ptr %9, align 8     ; 2 uses
  %.promoted216.i = load i64, ptr %10, align 8    ; 2 uses
  %i.eb = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp ugt i32 %i.ea, 64
  br i1 %i.eg, label %.preheader193.i, label %.lr.ph.preheader, !prof !43

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit34.i.thread, %BIT_reloadDStream.exit34.i
  %i.eh = phi ptr [ %i.dm, %BIT_reloadDStream.exit34.i.thread ], [ %i.ef, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.ei = phi ptr [ %i.dk, %BIT_reloadDStream.exit34.i.thread ], [ %i.ed, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.ej = phi i64 [ %i.di, %BIT_reloadDStream.exit34.i.thread ], [ %i.eb, %BIT_reloadDStream.exit34.i ] ; 4 uses
  %.promoted216.i156 = phi i64 [ %.promoted216.i151, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted216.i, %BIT_reloadDStream.exit34.i ]
  %.promoted214.i155 = phi i64 [ %.promoted214.i150, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted214.i, %BIT_reloadDStream.exit34.i ]
  %.promoted.i154 = phi i32 [ %.promoted.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.ea, %BIT_reloadDStream.exit34.i ]
  %.promoted153 = phi i64 [ %.promoted.ph, %BIT_reloadDStream.exit34.i.thread ], [ %.val66.i, %BIT_reloadDStream.exit34.i ]
  %i.ek = phi ptr [ %.ph146, %BIT_reloadDStream.exit34.i.thread ], [ %i.dg, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %.promoted218.i152 = phi ptr [ %.promoted218.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.dy, %BIT_reloadDStream.exit34.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.037.i9.i38 = phi ptr [ %i.hj, %bb.y ], [ %0, %.lr.ph.preheader ] ; 8 uses
  %i.el = phi i32 [ %i.hf, %bb.y ], [ %.promoted.i154, %.lr.ph.preheader ] ; 5 uses
  %.val.i.i212.i37 = phi i64 [ %.val.i73.sink.i, %bb.y ], [ %.promoted153, %.lr.ph.preheader ]
  %i.em = phi i64 [ %i.gt, %bb.y ], [ %.promoted214.i155, %.lr.ph.preheader ] ; 3 uses
  %i.en = phi i64 [ %i.hh, %bb.y ], [ %.promoted216.i156, %.lr.ph.preheader ] ; 3 uses
  %i.eo = phi ptr [ %.promoted237.i, %bb.y ], [ %.promoted218.i152, %.lr.ph.preheader ] ; 6 uses
  %.not.i21.i = icmp ult ptr %i.eo, %i.da
  br i1 %.not.i21.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.ep = lshr i32 %i.el, 3
  %i.eq = and i32 %i.el, 7
  br label %BIT_reloadDStream.exit27.i

bb.w:                                             ; preds = %.lr.ph
  %i.er = icmp eq ptr %i.eo, %i.ek
  br i1 %i.er, label %.preheader193.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = lshr i32 %i.el, 3                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.eo, i64 %i.eu
  %i.ew = icmp uge ptr %i.ev, %i.ek               ; 2 uses
  %i.ex = ptrtoint ptr %i.eo to i64
  %i.ey = sub i64 %i.ex, %i.ej
  %i.ez = trunc i64 %i.ey to i32
  %.021.i23.i = select i1 %i.ew, i32 %i.es, i32 %i.ez ; 2 uses
  %i.fa = shl i32 %.021.i23.i, 3
  %i.fb = sub i32 %i.el, %i.fa
  br label %BIT_reloadDStream.exit27.i

BIT_reloadDStream.exit27.i:                       ; preds = %bb.x, %bb.v
  %.pn449.in.i = phi i32 [ %i.ep, %bb.v ], [ %.021.i23.i, %bb.x ]
  %.promoted226.i = phi i32 [ %i.eq, %bb.v ], [ %i.fb, %bb.x ] ; 3 uses
  %.022.i22.i = phi i1 [ true, %bb.v ], [ %i.ew, %bb.x ]
  %.pn449.i = zext i32 %.pn449.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn449.i
  %.promoted237.i = getelementptr inbounds i8, ptr %i.eo, i64 %.pn.i ; 3 uses
  %.val.i73.sink.i = load i64, ptr %.promoted237.i, align 1, !tbaa !13 ; 7 uses
  %i.fc = icmp ult ptr %.037.i9.i38, %i.ak
  %i.fd = and i1 %i.fc, %.022.i22.i
  br i1 %i.fd, label %bb.y, label %.preheader193.i

.preheader193.i:                                  ; preds = %bb.y, %bb.w, %BIT_reloadDStream.exit27.i, %BIT_reloadDStream.exit34.i
  %i.fe = phi ptr [ %i.ef, %BIT_reloadDStream.exit34.i ], [ %i.eh, %BIT_reloadDStream.exit27.i ], [ %i.eh, %bb.w ], [ %i.eh, %bb.y ] ; 2 uses
  %i.ff = phi ptr [ %i.ed, %BIT_reloadDStream.exit34.i ], [ %i.ei, %BIT_reloadDStream.exit27.i ], [ %i.ei, %bb.w ], [ %i.ei, %bb.y ] ; 2 uses
  %i.fg = phi i64 [ %i.eb, %BIT_reloadDStream.exit34.i ], [ %i.ej, %BIT_reloadDStream.exit27.i ], [ %i.ej, %bb.w ], [ %i.ej, %bb.y ] ; 2 uses
  %i.fh = phi ptr [ %i.dg, %BIT_reloadDStream.exit34.i ], [ %i.ek, %BIT_reloadDStream.exit27.i ], [ %i.ek, %bb.w ], [ %i.ek, %bb.y ] ; 4 uses
  %.val.i73.sink.i34 = phi i64 [ %.val66.i, %BIT_reloadDStream.exit34.i ], [ %.val.i73.sink.i, %bb.y ], [ %.val.i.i212.i37, %bb.w ], [ %.val.i73.sink.i, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.lcssa33 = phi i64 [ %.promoted216.i, %BIT_reloadDStream.exit34.i ], [ %i.hh, %bb.y ], [ %i.en, %bb.w ], [ %i.en, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.lcssa32 = phi i64 [ %.promoted214.i, %BIT_reloadDStream.exit34.i ], [ %i.gt, %bb.y ], [ %i.em, %bb.w ], [ %i.em, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.037.i9.i.lcssa.a = phi ptr [ %0, %BIT_reloadDStream.exit34.i ], [ %i.hj, %bb.y ], [ %.037.i9.i38, %bb.w ], [ %.037.i9.i38, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.promoted226403.i = phi i32 [ %i.ea, %BIT_reloadDStream.exit34.i ], [ %i.hf, %bb.y ], [ %i.el, %bb.w ], [ %.promoted226.i, %BIT_reloadDStream.exit27.i ]
  %.promoted237401.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit34.i ], [ @BIT_reloadDStream.zeroFilled, %bb.y ], [ %i.eo, %bb.w ], [ %.promoted237.i, %BIT_reloadDStream.exit27.i ]
  store i64 %.val.i73.sink.i34, ptr %8, align 8
  store i64 %.lcssa32, ptr %9, align 8
  store i64 %.lcssa33, ptr %10, align 8
  %i.fi = getelementptr inbounds i8, ptr %i.aj, i64 -2 ; 3 uses
  %i.fj = icmp ugt ptr %.037.i9.i.lcssa.a, %i.fi
  br i1 %i.fj, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.y:                                             ; preds = %BIT_reloadDStream.exit27.i
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.em ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.fk, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !tbaa !14
  %i.fl = zext i8 %.sroa.5.0.copyload.i.i to i32  ; 2 uses
  %i.fm = and i32 %.promoted226.i, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl i64 %.val.i73.sink.i, %i.fn
  %i.fp = sub nsw i32 0, %i.fl
  %i.fq = and i32 %i.fp, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = lshr i64 %i.fo, %i.fr
  %i.ft = add i32 %.promoted226.i, %i.fl          ; 2 uses
  %i.fu = zext i16 %.sroa.0.0.copyload.i.i to i64
  store i8 %.sroa.4.0.copyload.i.i, ptr %.037.i9.i38, align 1, !tbaa !14
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.en ; 3 uses
  %.sroa.0.0.copyload.i74.i = load i16, ptr %i.fv, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %.sroa.4.0.copyload.i76.i = load i8, ptr %.sroa.4.0..sroa_idx.i75.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %.sroa.5.0.copyload.i78.i = load i8, ptr %.sroa.5.0..sroa_idx.i77.i, align 1, !tbaa !14
  %i.fw = zext i8 %.sroa.5.0.copyload.i78.i to i32 ; 2 uses
  %i.fx = and i32 %i.ft, 63
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl i64 %.val.i73.sink.i, %i.fy
  %i.ga = sub nsw i32 0, %i.fw
  %i.gb = and i32 %i.ga, 63
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = lshr i64 %i.fz, %i.gc
  %i.ge = add i32 %i.ft, %i.fw                    ; 2 uses
  %i.gf = zext i16 %.sroa.0.0.copyload.i74.i to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.037.i9.i38, i64 1
  store i8 %.sroa.4.0.copyload.i76.i, ptr %i.gg, align 1, !tbaa !14
  %i.gh = getelementptr [4 x i8], ptr %i.ei, i64 %i.fs
  %i.gi = getelementptr [4 x i8], ptr %i.gh, i64 %i.fu ; 3 uses
  %.sroa.0.0.copyload.i81.i = load i16, ptr %i.gi, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %.sroa.4.0.copyload.i83.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %.sroa.5.0.copyload.i85.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i, align 1, !tbaa !14
  %i.gj = zext i8 %.sroa.5.0.copyload.i85.i to i32 ; 2 uses
  %i.gk = and i32 %i.ge, 63
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = shl i64 %.val.i73.sink.i, %i.gl
  %i.gn = sub nsw i32 0, %i.gj
  %i.go = and i32 %i.gn, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = lshr i64 %i.gm, %i.gp
  %i.gr = add i32 %i.ge, %i.gj                    ; 2 uses
  %i.gs = zext i16 %.sroa.0.0.copyload.i81.i to i64
  %i.gt = add i64 %i.gq, %i.gs                    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.037.i9.i38, i64 2
  store i8 %.sroa.4.0.copyload.i83.i, ptr %i.gu, align 1, !tbaa !14
  %i.gv = getelementptr [4 x i8], ptr %i.eh, i64 %i.gd
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.gf ; 3 uses
  %.sroa.0.0.copyload.i88.i = load i16, ptr %i.gw, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %.sroa.4.0.copyload.i90.i = load i8, ptr %.sroa.4.0..sroa_idx.i89.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  %.sroa.5.0.copyload.i92.i = load i8, ptr %.sroa.5.0..sroa_idx.i91.i, align 1, !tbaa !14
  %i.gx = zext i8 %.sroa.5.0.copyload.i92.i to i32 ; 2 uses
  %i.gy = and i32 %i.gr, 63
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl i64 %.val.i73.sink.i, %i.gz
  %i.hb = sub nsw i32 0, %i.gx
  %i.hc = and i32 %i.hb, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = lshr i64 %i.ha, %i.hd
  %i.hf = add i32 %i.gr, %i.gx                    ; 3 uses
  %i.hg = zext i16 %.sroa.0.0.copyload.i88.i to i64
  %i.hh = add i64 %i.he, %i.hg                    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.037.i9.i38, i64 3
  store i8 %.sroa.4.0.copyload.i90.i, ptr %i.hi, align 1, !tbaa !14
  %i.hj = getelementptr inbounds nuw i8, ptr %.037.i9.i38, i64 4 ; 2 uses
  %i.hk = icmp ugt i32 %i.hf, 64
  br i1 %i.hk, label %.preheader193.i, label %.lr.ph, !prof !44, !llvm.loop !40

.lr.ph.i:                                         ; preds = %.preheader193.i, %BIT_reloadDStream.exit.i
  %i.hl = phi ptr [ %16, %BIT_reloadDStream.exit.i ], [ %.promoted237401.i, %.preheader193.i ] ; 6 uses
  %.1.i10232.i = phi ptr [ %i.jf, %BIT_reloadDStream.exit.i ], [ %.037.i9.i.lcssa.a, %.preheader193.i ] ; 5 uses
  %i.hm = phi i64 [ %i.ia, %BIT_reloadDStream.exit.i ], [ %.lcssa32, %.preheader193.i ]
  %.val.i.i108.i = phi i64 [ %.val.i117224.i, %BIT_reloadDStream.exit.i ], [ %.val.i73.sink.i34, %.preheader193.i ] ; 2 uses
  %i.hn = phi i32 [ %17, %BIT_reloadDStream.exit.i ], [ %.promoted226403.i, %.preheader193.i ] ; 2 uses
  %i.ho = phi i64 [ %i.je, %BIT_reloadDStream.exit.i ], [ %.lcssa33, %.preheader193.i ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hm ; 3 uses
  %.sroa.0.0.copyload.i95.i = load i16, ptr %i.hp, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %.sroa.4.0.copyload.i97.i = load i8, ptr %.sroa.4.0..sroa_idx.i96.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %.sroa.5.0.copyload.i99.i = load i8, ptr %.sroa.5.0..sroa_idx.i98.i, align 1, !tbaa !14
  %i.hq = zext i8 %.sroa.5.0.copyload.i99.i to i32 ; 2 uses
  %i.hr = and i32 %i.hn, 63
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl i64 %.val.i.i108.i, %i.hs
  %i.hu = sub nsw i32 0, %i.hq
  %i.hv = and i32 %i.hu, 63
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = lshr i64 %i.ht, %i.hw
  %i.hy = add i32 %i.hn, %i.hq                    ; 6 uses
  %i.hz = zext i16 %.sroa.0.0.copyload.i95.i to i64
  %i.ia = add i64 %i.hx, %i.hz                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i97.i, ptr %.1.i10232.i, align 1, !tbaa !14
  %i.ic = icmp ugt i32 %i.hy, 64
  br i1 %i.ic, label %bb.ad, label %bb.z, !prof !24

bb.z:                                             ; preds = %.lr.ph.i
  %.not.i14.i = icmp ult ptr %i.hl, %i.da
  br i1 %.not.i14.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.id = lshr i32 %i.hy, 3
  %i.ie = and i32 %i.hy, 7
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %i.if = icmp eq ptr %i.hl, %i.fh
  br i1 %i.if, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = lshr i32 %i.hy, 3                       ; 2 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = sub nsw i64 0, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.hl, i64 %i.ii
  %i.ik = icmp ult ptr %i.ij, %i.fh
  %i.il = ptrtoint ptr %i.hl to i64
  %i.im = sub i64 %i.il, %i.fg
  %i.in = trunc i64 %i.im to i32
  %.021.i16.i = select i1 %i.ik, i32 %i.in, i32 %i.ig ; 2 uses
  %i.io = shl i32 %.021.i16.i, 3
  %i.ip = sub i32 %i.hy, %i.io
  br label %.sink.split.i

bb.ad:                                            ; preds = %.lr.ph.i
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ho
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %.sroa.4.0.copyload.i105.i = load i8, ptr %.sroa.4.0..sroa_idx.i104.i, align 2, !tbaa !14
  %i.ir = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 2
  store i8 %.sroa.4.0.copyload.i105.i, ptr %i.ib, align 1, !tbaa !14
  br label %bb.al

.sink.split.i:                                    ; preds = %bb.ac, %bb.aa
  %.pn451.in.i = phi i32 [ %i.id, %bb.aa ], [ %.021.i16.i, %bb.ac ]
  %.ph446.i = phi i32 [ %i.ie, %bb.aa ], [ %i.ip, %bb.ac ]
  %.pn451.i = zext i32 %.pn451.in.i to i64
  %.pn450.i = sub nsw i64 0, %.pn451.i
  %.ph.i = getelementptr inbounds i8, ptr %i.hl, i64 %.pn450.i ; 2 uses
  %.val.i102.sink.i = load i64, ptr %.ph.i, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i102.sink.i, ptr %8, align 8, !tbaa !22
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %bb.ab
  %14 = phi ptr [ %i.hl, %bb.ab ], [ %.ph.i, %.sink.split.i ] ; 6 uses
  %15 = phi i32 [ %i.hy, %bb.ab ], [ %.ph446.i, %.sink.split.i ] ; 2 uses
  %.val.i.i123.i = phi i64 [ %.val.i.i108.i, %bb.ab ], [ %.val.i102.sink.i, %.sink.split.i ] ; 2 uses
  %i.is = icmp ugt ptr %i.ib, %i.fi
  br i1 %i.is, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ho ; 3 uses
  %.sroa.0.0.copyload.i110.i = load i16, ptr %i.it, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %.sroa.4.0.copyload.i112.i = load i8, ptr %.sroa.4.0..sroa_idx.i111.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.it, i64 3
  %.sroa.5.0.copyload.i114.i = load i8, ptr %.sroa.5.0..sroa_idx.i113.i, align 1, !tbaa !14
  %i.iu = zext i8 %.sroa.5.0.copyload.i114.i to i32 ; 2 uses
  %i.iv = and i32 %15, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = shl i64 %.val.i.i123.i, %i.iw
  %i.iy = sub nsw i32 0, %i.iu
  %i.iz = and i32 %i.iy, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = lshr i64 %i.ix, %i.ja
  %i.jc = add i32 %15, %i.iu                      ; 6 uses
  %i.jd = zext i16 %.sroa.0.0.copyload.i110.i to i64
  %i.je = add i64 %i.jb, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i112.i, ptr %i.ib, align 1, !tbaa !14
  %i.jg = icmp ugt i32 %i.jc, 64
  br i1 %i.jg, label %bb.ak, label %bb.ag, !prof !24

bb.ag:                                            ; preds = %bb.af
  %.not.i13.i = icmp ult ptr %14, %i.da
  br i1 %.not.i13.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = lshr i32 %i.jc, 3
  %i.ji = and i32 %i.jc, 7
  br label %BIT_reloadDStream.exit.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  %i.jj = icmp eq ptr %14, %i.fh
  br i1 %i.jj, label %BIT_reloadDStream.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jk = lshr i32 %i.jc, 3                       ; 2 uses
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = sub nsw i64 0, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %14, i64 %i.jm
  %i.jo = icmp ult ptr %i.jn, %i.fh
  %i.jp = ptrtoint ptr %14 to i64
  %i.jq = sub i64 %i.jp, %i.fg
  %i.jr = trunc i64 %i.jq to i32
  %.021.i.i = select i1 %i.jo, i32 %i.jr, i32 %i.jk ; 2 uses
  %i.js = shl i32 %.021.i.i, 3
  %i.jt = sub i32 %i.jc, %i.js
  br label %BIT_reloadDStream.exit.sink.split.i

BIT_reloadDStream.exit.sink.split.i:              ; preds = %bb.aj, %bb.ah
  %.pn453.in.i = phi i32 [ %i.jh, %bb.ah ], [ %.021.i.i, %bb.aj ]
  %.ph448.i = phi i32 [ %i.ji, %bb.ah ], [ %i.jt, %bb.aj ]
  %.pn453.i = zext i32 %.pn453.in.i to i64
  %.pn452.i = sub nsw i64 0, %.pn453.i
  %.ph447.i = getelementptr inbounds i8, ptr %14, i64 %.pn452.i ; 2 uses
  %.val.i117.sink.i = load i64, ptr %.ph447.i, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i117.sink.i, ptr %8, align 8, !tbaa !22
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %BIT_reloadDStream.exit.sink.split.i, %bb.ai
  %16 = phi ptr [ %14, %bb.ai ], [ %.ph447.i, %BIT_reloadDStream.exit.sink.split.i ]
  %17 = phi i32 [ %i.jc, %bb.ai ], [ %.ph448.i, %BIT_reloadDStream.exit.sink.split.i ]
  %.val.i117224.i = phi i64 [ %.val.i.i123.i, %bb.ai ], [ %.val.i117.sink.i, %BIT_reloadDStream.exit.sink.split.i ]
  %i.ju = icmp ugt ptr %i.jf, %i.fi
  br i1 %i.ju, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.ak:                                            ; preds = %bb.af
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ia
  %.sroa.4.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %.sroa.4.0.copyload.i120.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i, align 2, !tbaa !14
  %i.jw = getelementptr inbounds nuw i8, ptr %.1.i10232.i, i64 3
  store i8 %.sroa.4.0.copyload.i120.i, ptr %i.jf, align 1, !tbaa !14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ad
  %.2.i11.i = phi ptr [ %i.ir, %bb.ad ], [ %i.jw, %bb.ak ]
  %i.jx = ptrtoint ptr %.2.i11.i to i64
  %i.jy = ptrtoint ptr %0 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  br label %FSE_decompress_usingDTable_generic.exit12.i

FSE_decompress_usingDTable_generic.exit12.i:      ; preds = %BIT_reloadDStream.exit.i, %bb.ae, %bb.al, %.preheader193.i, %bb.r, %BIT_initDStream.exit.i, %bb.q, %bb.i, %bb.g
  %.139.i8.i = phi i64 [ %i.j, %BIT_initDStream.exit.i ], [ -20, %bb.q ], [ %i.jz, %bb.al ], [ -1, %bb.i ], [ -20, %bb.r ], [ -72, %bb.g ], [ -70, %.preheader193.i ], [ -70, %bb.ae ], [ -70, %BIT_reloadDStream.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %FSE_decompress_wksp_body_default.exit

bb.am:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.ka = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %i.i, i64 noundef %i.j) ; 2 uses
  %i.kb = icmp ult i64 %i.ka, -119
  br i1 %i.kb, label %bb.an, label %FSE_decompress_usingDTable_generic.exit.i

bb.an:                                            ; preds = %bb.am
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %i.c)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %i.c)
  %i.kc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !23 ; 6 uses
  %i.ke = icmp ugt i32 %i.kd, 64
  br i1 %i.ke, label %FSE_decompress_usingDTable_generic.exit.i, label %bb.ao, !prof !24

bb.ao:                                            ; preds = %bb.an
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !21 ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !20 ; 4 uses
  %.not.i56.i = icmp ult ptr %i.kg, %i.ki
  br i1 %.not.i56.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kj = lshr i32 %i.kd, 3
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = sub nsw i64 0, %i.kk
  %i.km = getelementptr inbounds i8, ptr %i.kg, i64 %i.kl ; 2 uses
  %i.kn = and i32 %i.kd, 7
  %.val.i125.i = load i64, ptr %i.km, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i125.i, ptr %11, align 8, !tbaa !22
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre346.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %BIT_reloadDStream.exit62.i.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !19 ; 6 uses
  %i.kq = icmp eq ptr %i.kg, %i.kp
  br i1 %i.kq, label %.BIT_reloadDStream.exit62_crit_edge.i, label %BIT_reloadDStream.exit62.i

.BIT_reloadDStream.exit62_crit_edge.i:            ; preds = %bb.aq
  %.promoted240.pre.i = load i64, ptr %11, align 8
  br label %BIT_reloadDStream.exit62.i.thread

BIT_reloadDStream.exit62.i.thread:                ; preds = %.BIT_reloadDStream.exit62_crit_edge.i, %bb.ap
  %.promoted246.i.ph = phi ptr [ %i.km, %bb.ap ], [ %i.kg, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.ph157 = phi ptr [ %.pre346.i, %bb.ap ], [ %i.kg, %.BIT_reloadDStream.exit62_crit_edge.i ] ; 2 uses
  %.promoted240.i.ph = phi i64 [ %.val.i125.i, %bb.ap ], [ %.promoted240.pre.i, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted238.i.ph = phi i32 [ %i.kn, %bb.ap ], [ %i.kd, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted242.i161 = load i64, ptr %12, align 8
  %.promoted244.i162 = load i64, ptr %13, align 8
  %i.kr = ptrtoint ptr %.ph157 to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  br label %.lr.ph61.preheader

BIT_reloadDStream.exit62.i:                       ; preds = %bb.aq
  %i.kw = lshr i32 %i.kd, 3                       ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.kg, i64 %i.ky
  %i.la = icmp ult ptr %i.kz, %i.kp
  %i.lb = ptrtoint ptr %i.kg to i64
  %i.lc = ptrtoint ptr %i.kp to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = trunc i64 %i.ld to i32
  %.021.i58.i = select i1 %i.la, i32 %i.le, i32 %i.kw ; 2 uses
  %i.lf = zext i32 %.021.i58.i to i64
  %i.lg = sub nsw i64 0, %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.kg, i64 %i.lg ; 2 uses
  %i.li = shl i32 %.021.i58.i, 3
  %i.lj = sub i32 %i.kd, %i.li                    ; 3 uses
  %.val.i = load i64, ptr %i.lh, align 1, !tbaa !13 ; 3 uses
  store i64 %.val.i, ptr %11, align 8, !tbaa !22
  %.promoted242.i = load i64, ptr %12, align 8    ; 2 uses
  %.promoted244.i = load i64, ptr %13, align 8    ; 2 uses
  %i.lk = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8            ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8            ; 2 uses
  %i.lp = icmp ugt i32 %i.lj, 64
  br i1 %i.lp, label %.preheader.i, label %.lr.ph61.preheader, !prof !43

.lr.ph61.preheader:                               ; preds = %BIT_reloadDStream.exit62.i.thread, %BIT_reloadDStream.exit62.i
  %i.lq = phi ptr [ %i.kv, %BIT_reloadDStream.exit62.i.thread ], [ %i.lo, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.lr = phi ptr [ %i.kt, %BIT_reloadDStream.exit62.i.thread ], [ %i.lm, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.ls = phi i64 [ %i.kr, %BIT_reloadDStream.exit62.i.thread ], [ %i.lk, %BIT_reloadDStream.exit62.i ] ; 4 uses
  %.promoted244.i167 = phi i64 [ %.promoted244.i162, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted244.i, %BIT_reloadDStream.exit62.i ]
  %.promoted242.i166 = phi i64 [ %.promoted242.i161, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted242.i, %BIT_reloadDStream.exit62.i ]
  %.promoted238.i165 = phi i32 [ %.promoted238.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.lj, %BIT_reloadDStream.exit62.i ]
  %.promoted240.i164 = phi i64 [ %.promoted240.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %.val.i, %BIT_reloadDStream.exit62.i ]
  %i.lt = phi ptr [ %.ph157, %BIT_reloadDStream.exit62.i.thread ], [ %i.kp, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %.promoted246.i163 = phi ptr [ %.promoted246.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.lh, %BIT_reloadDStream.exit62.i ]
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %bb.au
  %.037.i.i60 = phi ptr [ %i.ox, %bb.au ], [ %0, %.lr.ph61.preheader ] ; 8 uses
  %i.lu = phi i32 [ %i.om, %bb.au ], [ %.promoted238.i165, %.lr.ph61.preheader ] ; 5 uses
  %i.lv = phi i64 [ %i.mn, %bb.au ], [ %.promoted240.i164, %.lr.ph61.preheader ]
  %i.lw = phi i64 [ %i.oh, %bb.au ], [ %.promoted242.i166, %.lr.ph61.preheader ] ; 3 uses
  %i.lx = phi i64 [ %i.ov, %bb.au ], [ %.promoted244.i167, %.lr.ph61.preheader ] ; 3 uses
  %i.ly = phi ptr [ %.promoted275.i, %bb.au ], [ %.promoted246.i163, %.lr.ph61.preheader ] ; 6 uses
  %.not.i49.i = icmp ult ptr %i.ly, %i.ki
  br i1 %.not.i49.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph61
  %i.lz = lshr i32 %i.lu, 3
  %i.ma = and i32 %i.lu, 7
  br label %BIT_reloadDStream.exit55.i

bb.as:                                            ; preds = %.lr.ph61
  %i.mb = icmp eq ptr %i.ly, %i.lt
  br i1 %i.mb, label %.preheader.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mc = lshr i32 %i.lu, 3                       ; 2 uses
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = sub nsw i64 0, %i.md
  %i.mf = getelementptr inbounds i8, ptr %i.ly, i64 %i.me
  %i.mg = icmp uge ptr %i.mf, %i.lt               ; 2 uses
  %i.mh = ptrtoint ptr %i.ly to i64
  %i.mi = sub i64 %i.mh, %i.ls
  %i.mj = trunc i64 %i.mi to i32
  %.021.i51.i = select i1 %i.mg, i32 %i.mc, i32 %i.mj ; 2 uses
  %i.mk = shl i32 %.021.i51.i, 3
  %i.ml = sub i32 %i.lu, %i.mk
  br label %BIT_reloadDStream.exit55.i

BIT_reloadDStream.exit55.i:                       ; preds = %bb.at, %bb.ar
  %.pn455.in.i = phi i32 [ %.021.i51.i, %bb.at ], [ %i.lz, %bb.ar ]
  %i.mm = phi i32 [ %i.ml, %bb.at ], [ %i.ma, %bb.ar ] ; 2 uses
  %.022.i50.i = phi i1 [ %i.mg, %bb.at ], [ true, %bb.ar ]
  %.pn455.i = zext i32 %.pn455.in.i to i64
  %.pn454.i = sub nsw i64 0, %.pn455.i
  %.promoted275.i = getelementptr inbounds i8, ptr %i.ly, i64 %.pn454.i ; 3 uses
  %i.mn = load i64, ptr %.promoted275.i, align 1, !tbaa !13 ; 7 uses
  %i.mo = icmp ult ptr %.037.i.i60, %i.ak
  %i.mp = and i1 %i.mo, %.022.i50.i
  br i1 %i.mp, label %bb.au, label %.preheader.i

.preheader.i:                                     ; preds = %bb.au, %bb.as, %BIT_reloadDStream.exit55.i, %BIT_reloadDStream.exit62.i
  %i.mq = phi ptr [ %i.lo, %BIT_reloadDStream.exit62.i ], [ %i.lq, %BIT_reloadDStream.exit55.i ], [ %i.lq, %bb.as ], [ %i.lq, %bb.au ] ; 2 uses
  %i.mr = phi ptr [ %i.lm, %BIT_reloadDStream.exit62.i ], [ %i.lr, %BIT_reloadDStream.exit55.i ], [ %i.lr, %bb.as ], [ %i.lr, %bb.au ] ; 2 uses
  %i.ms = phi i64 [ %i.lk, %BIT_reloadDStream.exit62.i ], [ %i.ls, %BIT_reloadDStream.exit55.i ], [ %i.ls, %bb.as ], [ %i.ls, %bb.au ] ; 2 uses
  %i.mt = phi ptr [ %i.kp, %BIT_reloadDStream.exit62.i ], [ %i.lt, %BIT_reloadDStream.exit55.i ], [ %i.lt, %bb.as ], [ %i.lt, %bb.au ] ; 4 uses
  %.lcssa19 = phi i64 [ %.promoted244.i, %BIT_reloadDStream.exit62.i ], [ %i.ov, %bb.au ], [ %i.lx, %bb.as ], [ %i.lx, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.lcssa18 = phi i64 [ %.promoted242.i, %BIT_reloadDStream.exit62.i ], [ %i.oh, %bb.au ], [ %i.lw, %bb.as ], [ %i.lw, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.037.i.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit62.i ], [ %i.ox, %bb.au ], [ %.037.i.i60, %bb.as ], [ %.037.i.i60, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.mu = phi i32 [ %i.lj, %BIT_reloadDStream.exit62.i ], [ %i.om, %bb.au ], [ %i.lu, %bb.as ], [ %i.mm, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.mv = phi i64 [ %.val.i, %BIT_reloadDStream.exit62.i ], [ %i.mn, %bb.au ], [ %i.lv, %bb.as ], [ %i.mn, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.promoted275406.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit62.i ], [ @BIT_reloadDStream.zeroFilled, %bb.au ], [ %i.ly, %bb.as ], [ %.promoted275.i, %BIT_reloadDStream.exit55.i ] ; 2 uses
  store ptr %.promoted275406.i, ptr %i.kf, align 8
  store i32 %i.mu, ptr %i.kc, align 8
  store i64 %i.mv, ptr %11, align 8
  store i64 %.lcssa18, ptr %12, align 8
  store i64 %.lcssa19, ptr %13, align 8
  %i.mw = getelementptr inbounds i8, ptr %i.aj, i64 -2 ; 3 uses
  %i.mx = icmp ugt ptr %.037.i.i.lcssa, %i.mw
  br i1 %i.mx, label %FSE_decompress_usingDTable_generic.exit.i, label %.lr.ph265.i

bb.au:                                            ; preds = %BIT_reloadDStream.exit55.i
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lw ; 3 uses
  %.sroa.0.0.copyload.i127.i = load i16, ptr %i.my, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i128.i = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %.sroa.4.0.copyload.i129.i = load i8, ptr %.sroa.4.0..sroa_idx.i128.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  %.sroa.5.0.copyload.i131.i = load i8, ptr %.sroa.5.0..sroa_idx.i130.i, align 1, !tbaa !14 ; 2 uses
  %i.mz = zext i8 %.sroa.5.0.copyload.i131.i to i32
  %i.na = add i32 %i.mm, %i.mz                    ; 2 uses
  %i.nb = sub i32 0, %i.na
end_hunk_0
