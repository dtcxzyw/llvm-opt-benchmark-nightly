inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@decode_i2_frame:bb.a
.preheader58.us:                                  ; preds = %.preheader58.us.preheader, %._crit_edge.split.us.us
  %.04173.us = phi i32 [ %i.da, %._crit_edge.split.us.us ], [ 0, %.preheader58.us.preheader ]
  %.04272.us = phi ptr [ %i.cz, %._crit_edge.split.us.us ], [ %i.k, %.preheader58.us.preheader ]
  %.sroa.0.071.us = phi ptr [ %i.bg, %._crit_edge.split.us.us ], [ %1, %.preheader58.us.preheader ]
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.preheader58.us
  %.03966.us.us = phi i32 [ 0, %.preheader58.us ], [ %i.bi, %bb.i ]
  %.14365.us.us = phi ptr [ %.04272.us, %.preheader58.us ], [ %i.bh, %bb.i ] ; 3 uses
  %.sroa.0.164.us.us = phi ptr [ %.sroa.0.071.us, %.preheader58.us ], [ %i.bg, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.164.us.us, i64 4
  %i.y = load <2 x i16>, ptr %.sroa.0.164.us.us, align 1, !tbaa !43 ; 6 uses
  %i.z = zext <2 x i16> %i.y to <2 x i32>         ; 2 uses
  %i.aa = zext <2 x i16> %i.y to <2 x i32>
  store <2 x i32> %i.aa, ptr %i.a, align 16, !tbaa !73
  %i.ab = extractelement <2 x i16> %i.y, i64 0
  %.not.us.us = icmp sgt i16 %i.ab, -1
  br i1 %.not.us.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 16, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = extractelement <2 x i16> %i.y, i64 1
  %.not50.us.us = icmp sgt i16 %i.ad, -1
  br i1 %.not50.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %0, align 16, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.26) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = shl nuw nsw <2 x i32> %i.z, splat (i32 1) ; 2 uses
  %i.ag = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = and <2 x i32> %i.ag, splat (i32 31)
  %i.ai = and <2 x i32> %i.ag, splat (i32 992)
  %i.aj = lshr <2 x i16> %i.y, splat (i16 9)
  %i.ak = lshr <2 x i16> %i.y, splat (i16 10)
  %i.al = shufflevector <2 x i16> %i.ak, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.am = and <2 x i32> %i.af, splat (i32 62)
  %i.an = add nuw nsw <2 x i32> %i.am, %i.ah
  %i.ao = and <2 x i32> %i.af, splat (i32 1984)
  %i.ap = add nuw nsw <2 x i32> %i.ao, %i.ai
  %i.aq = and <2 x i16> %i.aj, splat (i16 126)
  %i.ar = add nuw nsw <2 x i16> %i.al, %i.aq
  %i.as = trunc nuw <2 x i16> %i.ar to <2 x i8>
  %i.at = udiv <2 x i8> %i.as, splat (i8 3)
  %i.au = zext nneg <2 x i8> %i.at to <2 x i32>
  %i.av = shl nuw nsw <2 x i32> %i.au, splat (i32 10)
  %i.aw = trunc nuw nsw <2 x i32> %i.ap to <2 x i16>
  %i.ax = udiv <2 x i16> %i.aw, splat (i16 96)
  %i.ay = shl nuw nsw <2 x i16> %i.ax, splat (i16 5)
  %i.az = zext nneg <2 x i16> %i.ay to <2 x i32>
  %i.ba = trunc nuw nsw <2 x i32> %i.an to <2 x i8>
  %i.bb = udiv <2 x i8> %i.ba, splat (i8 3)
  %i.bc = zext nneg <2 x i8> %i.bb to <2 x i32>
  %i.bd = or disjoint <2 x i32> %i.av, %i.bc
  %i.be = add nuw nsw <2 x i32> %i.bd, %i.az
  store <2 x i32> %i.be, ptr %i.t, align 8, !tbaa !73
  %i.bf = load i32, ptr %i.x, align 1, !tbaa !43  ; 4 uses
  br label %.preheader.us.us

bb.i:                                             ; preds = %.preheader.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.164.us.us, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.14365.us.us, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bi = add nuw nsw i32 %.03966.us.us, 16       ; 3 uses
  %i.bj = icmp slt i32 %i.bi, %i.d
  br i1 %i.bj, label %bb.d, label %._crit_edge.split.us.us, !llvm.loop !85

.preheader.us.us:                                 ; preds = %.preheader.us.us, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.us.us ], [ 0, %bb.h ] ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bk = shl i32 %indvars.iv.tr, 1
  %i.bl = and i32 %i.bk, 24                       ; 4 uses
  %i.bm = mul nuw nsw i64 %indvars.iv, %i.w       ; 2 uses
  %i.bn = lshr i32 %i.bf, %i.bl
  %i.bo = and i32 %i.bn, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.14365.us.us, i64 %i.bm
  %i.bt = or disjoint i32 %i.bl, 2
  %i.bu = lshr i32 %i.bf, %i.bt
  %i.bv = and i32 %i.bu, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = trunc i32 %i.by to i16
  %i.ca = trunc i32 %i.br to i16
  %i.cb = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bz, i64 1
  %i.cd = shufflevector <8 x i16> %i.cc, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %i.cd, ptr %i.bs, align 2, !tbaa !86
  %i.ce = or disjoint i32 %i.bl, 4
  %i.cf = lshr i32 %i.bf, %i.ce
  %i.cg = and i32 %i.cf, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.14365.us.us, i64 %i.bm
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = or disjoint i32 %i.bl, 6
  %i.cn = lshr i32 %i.bf, %i.cm
  %i.co = and i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !73
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = trunc i32 %i.cj to i16
  %i.cu = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cs, i64 1
  %i.cw = shufflevector <8 x i16> %i.cv, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %i.cw, ptr %i.cl, align 2, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.i, label %.preheader.us.us, !llvm.loop !88

._crit_edge.split.us.us:                          ; preds = %bb.i
  %i.cx = sub nsw i32 %i.u, %i.bi
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.cy
  %i.da = add nuw nsw i32 %.04173.us, 16          ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.f
  br i1 %i.db, label %.preheader58.us, label %.loopexit, !llvm.loop !89

bb.j:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

.loopexit:                                        ; preds = %._crit_edge.split.us.us, %.preheader58.lr.ph.split.us, %.preheader58.lr.ph, %bytestream2_init.exit.preheader, %bb.b
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %.preheader58.lr.ph.split.us ], [ 0, %bytestream2_init.exit.preheader ], [ 0, %.preheader58.lr.ph ], [ 0, %._crit_edge.split.us.us ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_i_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 17 uses
  %i.b = alloca [512 x i8], align 16              ; 6 uses
  %i.c = alloca [512 x i32], align 16             ; 8 uses
  %i.d = alloca [257 x i8], align 16              ; 5 uses
  %i.e = alloca [257 x i32], align 16             ; 5 uses
  %i.f = load ptr, ptr %0, align 16, !tbaa !45    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32   ; 2 uses
  %i.k = load i32, ptr %1, align 1, !tbaa !43     ; 5 uses
  %i.l = icmp ugt i32 %i.k, 67108864
  br i1 %i.l, label %decode_i_mb.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i32 %i.k, 12                 ; 2 uses
  %i.n = icmp ult i32 %2, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.f, i32 noundef 16, ptr noundef nonnull @.str.24) #9
  br label %decode_i_mb.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 1, !tbaa !43
  %i.s = shl i32 %i.r, 2                          ; 4 uses
  %i.t = add i32 %i.m, %i.s
  %i.u = icmp ne i32 %i.t, %2
  %i.v = icmp ugt i32 %i.s, 67108864
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.f, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.s, i32 noundef %i.k, i32 noundef %2) #9
  br label %decode_i_mb.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.x = zext nneg i32 %i.s to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 -1, i64 2048, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !43
  %i.ab = ptrtoint ptr %i.y to i64
  %scevgep147 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %.088.in.i = phi i8 [ %i.aa, %bb.f ], [ %i.by, %._crit_edge.i ] ; 4 uses
  %.086.in.in.i = phi ptr [ %i.z, %bb.f ], [ %i.bx, %._crit_edge.i ]
  %.pn.i = phi ptr [ %i.w, %bb.f ], [ %.184.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.083.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2 ; 7 uses
  %.086.in.i = load i8, ptr %.086.in.in.i, align 1, !tbaa !43 ; 5 uses
  %.086.i = zext i8 %.086.in.i to i32             ; 2 uses
  %.088.i = zext i8 %.088.in.i to i32
  %i.ac = ptrtoint ptr %.083.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sub nsw i32 %.086.i, %.088.i
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 -1)
  %i.ag = add nsw i32 %i.af, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = icmp slt i64 %i.ad, %i.ah
  br i1 %i.ai, label %read_huffman_tables.exit.thread.sink.split, label %.preheader110.i

.preheader110.i:                                  ; preds = %bb.g
  %.not111.i = icmp ugt i8 %.088.in.i, %.086.in.i
  br i1 %.not111.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader110.i
  %i.aj = zext i8 %.088.in.i to i64               ; 6 uses
  %i.ak = add nuw nsw i32 %.086.i, 1
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  %narrow = sub nuw i8 %.086.in.i, %.088.in.i     ; 2 uses
  %3 = zext i8 %narrow to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %min.iters.check = icmp ult i8 %narrow, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.al = shl nuw nsw i64 %i.aj, 2
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.al
  %i.am = zext i8 %.086.in.i to i64               ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 2
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.an
  %scevgep149 = getelementptr i8, ptr %.pn.i, i64 3
  %i.ao = sub nsw i64 %i.am, %i.aj
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.ao
  %bound0 = icmp ult ptr %scevgep, %scevgep150
  %bound1 = icmp ult ptr %.083.i, %scevgep148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, 504                        ; 4 uses
  %i.ap = add nuw nsw i64 %n.vec, %i.aj
  %i.aq = getelementptr i8, ptr %.083.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.083.i, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !43, !alias.scope !90
  %wide.load151 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !43, !alias.scope !90
  %i.as = zext <4 x i8> %wide.load to <4 x i32>
  %i.at = zext <4 x i8> %wide.load151 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.as, ptr %gep, align 4, !tbaa !73, !alias.scope !93, !noalias !90
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !73, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.preheader.i ], [ %i.ap, %middle.block ] ; 4 uses
  %.184112.i.ph = phi ptr [ %.083.i, %vector.memcheck ], [ %.083.i, %.lr.ph.preheader.i ], [ %i.aq, %middle.block ] ; 2 uses
  %5 = zext i8 %.086.in.i to i64                  ; 2 uses
  %i.aw = add nuw nsw i64 %5, 1
  %i.ax = sub nsw i64 %i.aw, %indvars.iv.i.ph
  %i.ay = sub nsw i64 %5, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.184112.i.prol = phi ptr [ %i.az, %.lr.ph.i.prol ], [ %.184112.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.184112.i.prol, i64 1 ; 3 uses
  %i.ba = load i8, ptr %.184112.i.prol, align 1, !tbaa !43
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.prol
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !73
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !98

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa159.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.184112.i.unr = phi ptr [ %.184112.i.ph, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i.prol ]
  %i.bd = icmp ult i64 %i.ay, 3
  br i1 %i.bd, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.184112.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.184112.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.184112.i, i64 1
  %i.bf = load i8, ptr %.184112.i, align 1, !tbaa !43
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %.184112.i, i64 2
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !43
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %.184112.i, i64 3
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !43
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %.184112.i, i64 4 ; 2 uses
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !43
  %i.bu = zext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !73
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !100

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader110.i
  %.184.lcssa.i = phi ptr [ %.083.i, %.preheader110.i ], [ %i.aq, %middle.block ], [ %.lcssa159.unr, %.lr.ph.i.prol.loopexit ], [ %i.bs, %.lr.ph.i ] ; 4 uses
  %i.bx = getelementptr i8, ptr %.184.lcssa.i, i64 1 ; 2 uses
  %i.by = load i8, ptr %.184.lcssa.i, align 1, !tbaa !43 ; 2 uses
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.h, label %bb.g

bb.h:                                             ; preds = %._crit_edge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  store i32 1, ptr %i.ca, align 16, !tbaa !73
  %.184.lcssa.lcssa132.i = ptrtoaddr ptr %.184.lcssa.i to i64
  %i.cb = ptrtoint ptr %i.w to i64
  %i.cc = xor i64 %.184.lcssa.lcssa132.i, -1
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = and i64 %i.cd, 3
  %scevgep133.i = getelementptr i8, ptr %i.bx, i64 %i.ce ; 5 uses
  %i.cf = icmp ugt ptr %scevgep133.i, %i.y
  br i1 %i.cf, label %read_huffman_tables.exit.thread.sink.split, label %.preheader108.i

.preheader108.i:                                  ; preds = %bb.h, %bb.m
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %bb.m ], [ 257, %bb.h ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.preheader108.i
  %indvars.iv134.i = phi i64 [ 0, %.preheader108.i ], [ %indvars.iv.next135.i, %bb.k ] ; 3 uses
  %.sroa.8.0117.i = phi i32 [ 0, %.preheader108.i ], [ %.sroa.8.1.i, %bb.k ]
  %.sroa.0.0116.i = phi i32 [ 0, %.preheader108.i ], [ %.sroa.0.1.i, %bb.k ] ; 3 uses
  %.sroa.026.0115.i = phi i32 [ 65536, %.preheader108.i ], [ %.sroa.026.1.i, %bb.k ] ; 4 uses
  %.sroa.7.0114.i = phi i32 [ 65536, %.preheader108.i ], [ %.sroa.7.1.i, %bb.k ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !73 ; 5 uses
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp slt i32 %i.ch, %.sroa.7.0114.i
  %or.cond.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ck = icmp slt i32 %i.ch, %.sroa.026.0115.i   ; 2 uses
  %.sroa.026.0..i = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 %.sroa.026.0115.i)
  %..sroa.026.0.i = tail call i32 @llvm.smin.i32(i32 %i.ch, i32 %.sroa.026.0115.i)
  %i.cl = trunc nuw nsw i64 %indvars.iv134.i to i32 ; 2 uses
  %.076..sroa.0.0.i = select i1 %i.ck, i32 %i.cl, i32 %.sroa.0.0116.i
  %.sroa.0.0..076.i = select i1 %i.ck, i32 %.sroa.0.0116.i, i32 %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.1.i = phi i32 [ %.sroa.7.0114.i, %bb.i ], [ %.sroa.026.0..i, %bb.j ] ; 3 uses
  %.sroa.026.1.i = phi i32 [ %.sroa.026.0115.i, %bb.i ], [ %..sroa.026.0.i, %bb.j ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0116.i, %bb.i ], [ %.076..sroa.0.0.i, %bb.j ] ; 2 uses
  %.sroa.8.1.i = phi i32 [ %.sroa.8.0117.i, %bb.i ], [ %.sroa.0.0..076.i, %bb.j ] ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %indvars.iv139.i
  br i1 %exitcond138.not.i, label %bb.l, label %bb.i, !llvm.loop !101

bb.l:                                             ; preds = %bb.k
  %i.cm = icmp eq i32 %.sroa.7.1.i, 65536
  br i1 %i.cm, label %.preheader.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = add nsw i32 %.sroa.026.1.i, %.sroa.7.1.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv139.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !73
  %i.cp = sext i32 %.sroa.0.1.i to i64            ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.b, i64 %i.cp
  store i8 0, ptr %i.cq, align 1, !tbaa !43
  %i.cr = sext i32 %.sroa.8.1.i to i64            ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.b, i64 %i.cr
  store i8 1, ptr %i.cs, align 1, !tbaa !43
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cr
  %i.cu = trunc nuw nsw i64 %indvars.iv139.i to i32 ; 2 uses
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !73
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cp
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !73
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cr
  store i32 0, ptr %i.cw, align 4, !tbaa !73
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cp
  store i32 0, ptr %i.cx, align 4, !tbaa !73
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next140.i, 512
  br i1 %exitcond142.not.i, label %.preheader.i.preheader, label %.preheader108.i, !llvm.loop !102

.preheader.i.preheader:                           ; preds = %bb.m, %bb.l
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge124.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %._crit_edge124.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv143.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !73 ; 2 uses
  %.not95120.i = icmp eq i32 %i.cz, -1
  br i1 %.not95120.i, label %._crit_edge124.i, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %.preheader.i, %bb.o
  %i.da = phi i32 [ %i.dm, %bb.o ], [ %i.cz, %.preheader.i ]
  %i.db = phi i64 [ %i.dk, %bb.o ], [ %indvars.iv143.i, %.preheader.i ]
  %.0122.i = phi i32 [ %i.dg, %bb.o ], [ 0, %.preheader.i ]
  %.074121.i = phi i32 [ %i.dh, %bb.o ], [ 0, %.preheader.i ] ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.b, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.de = zext i8 %i.dd to i32
  %i.df = shl i32 %i.de, %.074121.i
  %i.dg = add nsw i32 %i.df, %.0122.i             ; 2 uses
  %i.dh = add nuw nsw i32 %.074121.i, 1           ; 2 uses
  %i.di = icmp samesign ugt i32 %.074121.i, 30
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph123.i
  %i.dj = load ptr, ptr %0, align 16, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dj, i32 noundef 16, ptr noundef nonnull @.str.35) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph123.i
  %i.dk = sext i32 %i.da to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !73 ; 2 uses
  %.not95.i = icmp eq i32 %i.dm, -1
  br i1 %.not95.i, label %._crit_edge124.loopexit.i, label %.lr.ph123.i, !llvm.loop !103

._crit_edge124.loopexit.i:                        ; preds = %bb.o
  %i.dn = trunc i32 %i.dh to i8
  br label %._crit_edge124.i

._crit_edge124.i:                                 ; preds = %._crit_edge124.loopexit.i, %.preheader.i
  %.074.lcssa.i = phi i8 [ 0, %.preheader.i ], [ %i.dn, %._crit_edge124.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.dg, %._crit_edge124.loopexit.i ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv143.i
  store i32 %.0.lcssa.i, ptr %i.do, align 4, !tbaa !73
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv143.i
  store i8 %.074.lcssa.i, ptr %i.dp, align 1, !tbaa !43
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next144.i, 257
  br i1 %exitcond146.not.i, label %bb.p, label %.preheader.i, !llvm.loop !104

bb.p:                                             ; preds = %._crit_edge124.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  tail call void @ff_vlc_free(ptr noundef nonnull %i.dq) #9
  %i.dr = call i32 @ff_vlc_init_sparse(ptr noundef nonnull %i.dq, i32 noundef 9, i32 noundef 257, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.e, i32 noundef 4, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %.not94.i = icmp eq i32 %i.dr, 0
  br i1 %.not94.i, label %read_huffman_tables.exit, label %read_huffman_tables.exit.thread

read_huffman_tables.exit.thread.sink.split:       ; preds = %bb.g, %bb.h
  %.str.33.sink = phi ptr [ @.str.34, %bb.h ], [ @.str.33, %bb.g ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull %.str.33.sink) #9
  br label %read_huffman_tables.exit.thread

read_huffman_tables.exit.thread:                  ; preds = %read_huffman_tables.exit.thread.sink.split, %bb.p
end_hunk_0
