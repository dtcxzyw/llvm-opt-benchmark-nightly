inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@compress_first_pass:bb.a
  %i.cd = icmp sgt i32 %.fr, 0
  %i.ce = sext i32 %.088 to i64                   ; 2 uses
  br i1 %i.cd, label %.lr.ph110.us.us.preheader, label %.lr.ph110.us

.lr.ph110.us.us.preheader:                        ; preds = %.lr.ph114.split.us
  %wide.trip.count145 = zext nneg i32 %.fr to i64 ; 2 uses
  %xtraiter168 = and i64 %wide.trip.count145, 3   ; 3 uses
  %i.cf = icmp ult i32 %.fr, 4
  %unroll_iter172 = and i64 %wide.trip.count145, 2147483644
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  br label %.lr.ph110.us.us

.lr.ph110.us.us:                                  ; preds = %.lr.ph110.us.us.preheader, %._crit_edge111.us.us
  %indvars.iv147 = phi i64 [ %i.ce, %.lr.ph110.us.us.preheader ], [ %indvars.iv.next148, %._crit_edge111.us.us ] ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv147 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.ch, i64 noundef %i.ca) #5
  br label %.lr.ph104.us.us

.lr.ph104.us.us:                                  ; preds = %.lr.ph110.us.us, %._crit_edge105.us.us
  %.0108.us.us = phi ptr [ %i.cj, %.lr.ph110.us.us ], [ %i.ck, %._crit_edge105.us.us ]
  %.085107.us.us = phi ptr [ %i.ch, %.lr.ph110.us.us ], [ %i.cv, %._crit_edge105.us.us ] ; 6 uses
  %.090106.us.us = phi i32 [ 0, %.lr.ph110.us.us ], [ %i.cw, %._crit_edge105.us.us ]
  %i.ck = getelementptr [128 x i8], ptr %.0108.us.us, i64 %i.cb ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -128
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !75 ; 5 uses
  br i1 %i.cf, label %.epil.preheader167, label %.lr.ph104.us.us.new

.lr.ph104.us.us.new:                              ; preds = %.lr.ph104.us.us, %.lr.ph104.us.us.new
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.3, %.lr.ph104.us.us.new ], [ 0, %.lr.ph104.us.us ] ; 5 uses
  %niter173 = phi i64 [ %niter173.next.3, %.lr.ph104.us.us.new ], [ 0, %.lr.ph104.us.us ]
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !75
  %i.co = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  store i16 %i.cm, ptr %i.cp, align 2, !tbaa !75
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 256
  store i16 %i.cm, ptr %i.cr, align 2, !tbaa !75
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 384
  store i16 %i.cm, ptr %i.ct, align 2, !tbaa !75
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %._crit_edge105.us.us.unr-lcssa, label %.lr.ph104.us.us.new, !llvm.loop !92

._crit_edge105.us.us.unr-lcssa:                   ; preds = %.lr.ph104.us.us.new
  br i1 %lcmp.mod170.not, label %._crit_edge105.us.us, label %.epil.preheader167

.epil.preheader167:                               ; preds = %._crit_edge105.us.us.unr-lcssa, %.lr.ph104.us.us
  %indvars.iv142.epil.init = phi i64 [ 0, %.lr.ph104.us.us ], [ %indvars.iv.next143.3, %._crit_edge105.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader167
  %indvars.iv142.epil = phi i64 [ %indvars.iv.next143.epil, %bb.h ], [ %indvars.iv142.epil.init, %.epil.preheader167 ] ; 2 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %bb.h ], [ 0, %.epil.preheader167 ]
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142.epil
  store i16 %i.cm, ptr %i.cu, align 2, !tbaa !75
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %._crit_edge105.us.us, label %bb.h, !llvm.loop !93

._crit_edge105.us.us:                             ; preds = %bb.h, %._crit_edge105.us.us.unr-lcssa
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %i.cb
  %i.cw = add nuw i32 %.090106.us.us, 1           ; 2 uses
  %i.cx = icmp ult i32 %i.cw, %i.bw
  br i1 %i.cx, label %.lr.ph104.us.us, label %._crit_edge111.us.us, !llvm.loop !94

._crit_edge111.us.us:                             ; preds = %._crit_edge105.us.us
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.cy = load i32, ptr %i.u, align 4, !tbaa !48
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next148, %i.cz
  br i1 %i.da, label %.lr.ph110.us.us, label %.loopexit99, !llvm.loop !95

.lr.ph110.us:                                     ; preds = %.lr.ph114.split.us, %.lr.ph110.us
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %.lr.ph110.us ], [ %i.ce, %.lr.ph114.split.us ] ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv139
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.dc, i64 noundef %i.ca) #5
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !48
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next140, %i.de
  br i1 %i.df, label %.lr.ph110.us, label %.loopexit99, !llvm.loop !95

.lr.ph114.split:                                  ; preds = %.lr.ph114.split.preheader, %.lr.ph114.split
  %indvars.iv150 = phi i64 [ %i.cc, %.lr.ph114.split.preheader ], [ %indvars.iv.next151, %.lr.ph114.split ] ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv150
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.dh, i64 noundef %i.ca) #5
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.di = load i32, ptr %i.u, align 4, !tbaa !48
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next151, %i.dj
  br i1 %i.dk, label %.lr.ph114.split, label %.loopexit99, !llvm.loop !95

.loopexit99:                                      ; preds = %.lr.ph110.us, %._crit_edge111.us.us, %.lr.ph114.split, %bb.g, %._crit_edge
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.086118, i64 96
  %i.dm = load i32, ptr %i.d, align 4, !tbaa !41
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next154, %i.dn
  br i1 %i.do, label %bb.b, label %._crit_edge122, !llvm.loop !96

._crit_edge122:                                   ; preds = %.loopexit99, %bb.a
  %i.dp = tail call i32 @compress_output(ptr noundef nonnull %0, ptr poison)
  ret i32 %i.dp
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @compress_output(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !71
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = load i32, ptr %i.j, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !48   ; 2 uses
  %i.x = mul i32 %i.w, %i.u
  %i.y = tail call ptr %i.o(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef %i.x, i32 noundef %i.w, i32 noundef 0) #5
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = phi i32 [ %i.e, %bb.a ], [ %i.aa, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !58 ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ao = sext i32 %i.af to i64
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !62
  %.pre105 = load i32, ptr %i.ak, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %._crit_edge81
  %i.ap = phi i32 [ %i.ah, %.lr.ph84 ], [ %i.bz, %._crit_edge81 ]
  %i.aq = phi i32 [ %.pre105, %.lr.ph84 ], [ %i.ca, %._crit_edge81 ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %.lr.ph84 ], [ 0, %._crit_edge81 ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.ao, %.lr.ph84 ], [ %indvars.iv.next103, %._crit_edge81 ] ; 3 uses
  %i.as = icmp ult i32 %i.ar, %i.aq
  br i1 %i.as, label %.preheader, label %._crit_edge81

.preheader:                                       ; preds = %bb.c, %bb.e
  %.05980 = phi i32 [ %i.bw, %bb.e ], [ %i.ar, %bb.c ] ; 3 uses
  %i.at = load i32, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %.preheader
  %wide.trip.count100 = zext nneg i32 %i.at to i64
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %._crit_edge74
  %indvars.iv97 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next98, %._crit_edge74 ] ; 3 uses
  %.05776 = phi i32 [ 0, %.lr.ph78.preheader ], [ %.158.lcssa, %._crit_edge74 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv97
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !74 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %.lr.ph78
  %i.bc = mul i32 %i.ay, %.05980
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp sgt i32 %i.ay, 0
  br i1 %i.be, label %.lr.ph68.us.preheader, label %._crit_edge74

.lr.ph68.us.preheader:                            ; preds = %.lr.ph73
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  %wide.trip.count = zext nneg i32 %i.ba to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv102
  %i.bh = zext nneg i32 %i.ay to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 4
  %n.vec = and i64 %i.bh, 2147483644              ; 4 uses
  %i.bi = shl nuw nsw i64 %n.vec, 7
  %cmp.n = icmp eq i64 %n.vec, %i.bh
  br label %.lr.ph68.us

.lr.ph68.us:                                      ; preds = %.lr.ph68.us.preheader, %._crit_edge69.us
  %indvars.iv93 = phi i64 [ 0, %.lr.ph68.us.preheader ], [ %indvars.iv.next94, %._crit_edge69.us ] ; 2 uses
  %.15870.us = phi i32 [ %.05776, %.lr.ph68.us.preheader ], [ %3, %._crit_edge69.us ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv93
  %i.bj = load ptr, ptr %gep, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw [128 x i8], ptr %i.bj, i64 %i.bd ; 3 uses
  %2 = sext i32 %.15870.us to i64                 ; 3 uses
  %3 = add i32 %i.ay, %.15870.us                  ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68.us
  %i.bl = add nsw i64 %n.vec, %2
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bi
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.am, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.bk, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128> ; 2 uses
  %step.add127 = getelementptr i8, <2 x ptr> %vector.gep, i64 256
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep137, i64 16
  store <2 x ptr> %vector.gep, ptr %gep137, align 8, !tbaa !54
  store <2 x ptr> %step.add127, ptr %i.bn, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge69.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph68.us, %middle.block
  %indvars.iv90.ph = phi i64 [ %2, %.lr.ph68.us ], [ %i.bl, %middle.block ]
  %.066.us.ph = phi ptr [ %i.bk, %.lr.ph68.us ], [ %i.bm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.a, %scalar.ph ], [ %indvars.iv90.ph, %scalar.ph.preheader ] ; 2 uses
  %.066.us = phi ptr [ %i.bp, %scalar.ph ], [ %.066.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.066.us, i64 128
  %indvars.iv.next91.a = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv90
  store ptr %.066.us, ptr %i.bq, align 8, !tbaa !54
  %lftr.wideiv = trunc i64 %indvars.iv.next91.a to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge69.us, label %scalar.ph, !llvm.loop !101

._crit_edge69.us:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count
  br i1 %exitcond96.not, label %._crit_edge74, label %.lr.ph68.us, !llvm.loop !102

._crit_edge74:                                    ; preds = %._crit_edge69.us, %.lr.ph73, %.lr.ph78
  %.158.lcssa = phi i32 [ %.05776, %.lr.ph78 ], [ %.05776, %.lr.ph73 ], [ %3, %._crit_edge69.us ]
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge79, label %.lr.ph78, !llvm.loop !103

._crit_edge79:                                    ; preds = %._crit_edge74, %.preheader
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !84
  %i.bu = tail call i32 %i.bt(ptr noundef nonnull %0, ptr noundef nonnull %i.am) #5
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge79
  %i.bv = trunc nsw i64 %indvars.iv102 to i32
  store i32 %i.bv, ptr %i.ae, align 8, !tbaa !63
  store i32 %.05980, ptr %i.aj, align 4, !tbaa !62
  br label %bb.j

bb.e:                                             ; preds = %._crit_edge79
  %i.bw = add nuw i32 %.05980, 1                  ; 2 uses
  %i.bx = load i32, ptr %i.ak, align 8, !tbaa !65 ; 2 uses
  %i.by = icmp ult i32 %i.bw, %i.bx
  br i1 %i.by, label %.preheader, label %._crit_edge81.loopexit, !llvm.loop !104

._crit_edge81.loopexit:                           ; preds = %bb.e
  %.pre106 = load i32, ptr %i.ag, align 4, !tbaa !58
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.c
  %i.bz = phi i32 [ %.pre106, %._crit_edge81.loopexit ], [ %i.ap, %bb.c ] ; 2 uses
  %i.ca = phi i32 [ %i.bx, %._crit_edge81.loopexit ], [ %i.aq, %bb.c ]
  store i32 0, ptr %i.aj, align 4, !tbaa !62
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cb = sext i32 %i.bz to i64
  %i.cc = icmp slt i64 %indvars.iv.next103, %i.cb
  br i1 %i.cc, label %bb.c, label %._crit_edge85.loopexit, !llvm.loop !105

._crit_edge85.loopexit:                           ; preds = %._crit_edge81
  %.pre107 = load i32, ptr %i.d, align 8, !tbaa !57
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit, %._crit_edge
  %i.cd = phi i32 [ %.pre107, %._crit_edge85.loopexit ], [ %i.ad, %._crit_edge ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !56
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !56
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !37  ; 5 uses
  %i.ci = icmp sgt i32 %i.cd, 1
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge85
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  store i32 1, ptr %i.cj, align 4, !tbaa !58
  br label %start_iMCU_row.exit

bb.g:                                             ; preds = %._crit_edge85
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !59
  %i.co = add i32 %i.cn, -1
  %i.cp = icmp ult i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !60 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 44 ; 2 uses
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !58
  br label %start_iMCU_row.exit

bb.i:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 76
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !61
  store i32 %i.cw, ptr %i.cs, align 4, !tbaa !58
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.f, %bb.h, %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  store i32 0, ptr %i.cx, align 4, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i32 0, ptr %i.cy, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %start_iMCU_row.exit, %bb.d
  %.052 = phi i32 [ 0, %bb.d ], [ 1, %start_iMCU_row.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.052
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!7 = !{!8, !4, i64 88}
!8 = !{!"jpeg_compress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !15, i64 332, !15, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !16, i64 480, !4, i64 488, !17, i64 496, !18, i64 504, !19, i64 512, !20, i64 520, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !10, i64 568, !4, i64 576}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!26 = !{!8, !9, i64 0}
!27 = !{!28, !4, i64 40}
!28 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !29, i64 128, !30, i64 136, !4, i64 144, !30, i64 152, !4, i64 160, !4, i64 164}
!29 = !{!"long", !5, i64 0}
!30 = !{!"p2 omnipotent char", !31, i64 0}
!31 = !{!"any p2 pointer", !10, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!28, !10, i64 0}
!34 = !{!8, !11, i64 8}
!35 = !{!36, !10, i64 0}
!36 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !29, i64 88, !29, i64 96}
!37 = !{!8, !20, i64 520}
!38 = !{!39, !10, i64 0}
!39 = !{!"", !40, i64 0, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !5, i64 48, !5, i64 128}
!40 = !{!"jpeg_c_coef_controller", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!41 = !{!8, !4, i64 92}
!42 = !{!8, !10, i64 104}
!43 = !{!36, !10, i64 40}
!44 = !{!45, !4, i64 28}
!45 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!46 = !{!45, !4, i64 8}
!47 = !{!45, !4, i64 32}
!48 = !{!45, !4, i64 12}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS20jvirt_barray_control", !10, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!36, !10, i64 8}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 short", !10, i64 0}
!56 = !{!39, !4, i64 32}
!57 = !{!8, !4, i64 368}
!58 = !{!39, !4, i64 44}
!59 = !{!8, !4, i64 364}
!60 = !{!10, !10, i64 0}
!61 = !{!45, !4, i64 76}
!62 = !{!39, !4, i64 36}
!63 = !{!39, !4, i64 40}
!64 = !{!39, !10, i64 16}
!65 = !{!8, !4, i64 408}
!66 = !{!45, !4, i64 68}
!67 = !{!45, !4, i64 60}
!68 = !{!8, !24, i64 552}
!69 = !{!70, !10, i64 16}
!70 = !{!"jpeg_forward_dct", !10, i64 0, !10, i64 8, !10, i64 16}
!71 = !{!45, !4, i64 4}
!72 = !{!73, !73, i64 0}
!73 = !{!"p2 short", !31, i64 0}
!74 = !{!45, !4, i64 56}
!75 = !{!15, !15, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !52}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !77}
!81 = distinct !{!81, !52}
!82 = distinct !{!82, !52}
!83 = !{!8, !25, i64 560}
!84 = !{!85, !10, i64 8}
!85 = !{!"jpeg_entropy_encoder", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!86 = distinct !{!86, !52}
!87 = distinct !{!87, !52}
!88 = !{!36, !10, i64 64}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !77}
end_hunk_0
