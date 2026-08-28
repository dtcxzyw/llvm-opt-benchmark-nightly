Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@encode_residual_fixed:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @find_subframe_rice_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca [9 x i64], align 16               ; 6 uses
  %3 = alloca %struct.RiceContext, align 4        ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7349976
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7349920
  %i.f = load i32, ptr %i.e, align 8, !tbaa !82   ; 7 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = xor i32 %i.g, %i.f                       ; 3 uses
  %.not.i19.i = icmp ult i32 %i.h, 65536          ; 2 uses
  %i.i = lshr i32 %i.h, 16
  %spec.select.i20.i = select i1 %.not.i19.i, i32 %i.h, i32 %i.i ; 3 uses
  %spec.select12.i21.i = select i1 %.not.i19.i, i32 0, i32 16 ; 2 uses
  %.not11.i22.i = icmp samesign ult i32 %spec.select.i20.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i20.i, 8
  %i.k = or disjoint i32 %spec.select12.i21.i, 8
  %.110.i23.i = select i1 %.not11.i22.i, i32 %spec.select.i20.i, i32 %i.j
  %.1.i24.i = select i1 %.not11.i22.i, i32 %spec.select12.i21.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i23.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !68
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i24.i, %i.o          ; 3 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.p) ; 2 uses
  %i.q = icmp sgt i32 %2, 0
  br i1 %i.q, label %bb.b, label %get_max_p_order.exit

get_max_p_order.exit:                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  %..i29 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.p)
  br label %get_max_p_order.exit38

bb.b:                                             ; preds = %bb.a
  %i.t = sdiv i32 %i.f, %2                        ; 3 uses
  %.not.i.i = icmp ult i32 %i.t, 65536            ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.t, i32 %i.u ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.v = lshr i32 %spec.select.i.i, 8
  %i.w = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.v
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.w
  %i.x = zext nneg i32 %.110.i.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %.1.i.i, %i.aa          ; 2 uses
  %...i = tail call i32 @llvm.smin.i32(i32 %..i, i32 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %..i2942 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.p)
  %...i37 = tail call i32 @llvm.smin.i32(i32 %..i2942, i32 %i.ab)
  br label %get_max_p_order.exit38

get_max_p_order.exit38:                           ; preds = %get_max_p_order.exit, %bb.b
  %.0.i43 = phi i32 [ %...i, %bb.b ], [ %..i, %get_max_p_order.exit ] ; 3 uses
  %.0.i30 = phi i32 [ %...i37, %bb.b ], [ %..i29, %get_max_p_order.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !87
  %i.ag = mul nsw i32 %i.af, %2
  %i.ah = add nsw i32 %i.ag, 10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !88 ; 3 uses
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = load i32, ptr %1, align 8, !tbaa !140
  %i.an = icmp eq i32 %i.am, 32
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_max_p_order.exit38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !148
  %i.aq = mul nsw i32 %i.ap, %2
  %i.ar = add nsw i32 %i.aq, 9
  %i.as = sext i32 %i.ar to i64
  %i.at = add nsw i64 %i.as, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %get_max_p_order.exit38
  %.0 = phi i64 [ %i.at, %bb.c ], [ %i.al, %get_max_p_order.exit38 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 263328 ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 591004 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7349988
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.az = shl nuw i32 1, %i.aj                    ; 3 uses
  %i.ba = add nsw i32 %i.az, -2                   ; 3 uses
  store i32 %i.aj, ptr %3, align 4, !tbaa !236
  %i.bb = icmp slt i32 %2, %i.f
  br i1 %i.bb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.bc = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count.i = sext i32 %i.f to i64       ; 2 uses
  %i.bd = sub nsw i64 %wide.trip.count.i, %i.bc   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bd, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bd, -8                      ; 3 uses
  %i.be = add nsw i64 %n.vec, %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = add i64 %index, %i.bc                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !47 ; 2 uses
  %wide.load76 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !47 ; 2 uses
  %i.bi = shl <4 x i32> %wide.load, splat (i32 1)
  %i.bj = shl <4 x i32> %wide.load76, splat (i32 1)
  %i.bk = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.bl = ashr <4 x i32> %wide.load76, splat (i32 31)
  %i.bm = xor <4 x i32> %i.bi, %i.bk
  %i.bn = xor <4 x i32> %i.bj, %i.bl
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !47
  store <4 x i32> %i.bn, ptr %i.bp, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bc, %.lr.ph.preheader.i ], [ %i.be, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47 ; 2 uses
  %i.bt = shl i32 %i.bs, 1
  %i.bu = ashr i32 %i.bs, 31
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.i
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !47
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !238

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.not.i = icmp eq i32 %i.ay, 0                  ; 2 uses
  %i.bx = select i1 %.not.i, i32 0, i32 %i.ba     ; 5 uses
  %i.by = shl nuw nsw i32 1, %.0.i30              ; 2 uses
  %.not58.i.i = icmp slt i32 %i.bx, 0             ; 2 uses
  br i1 %.not58.i.i, label %calc_sum_top.exit.i, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %._crit_edge.i
  %i.bz = sext i32 %2 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bz ; 2 uses
  %i.cb = ashr i32 %i.f, %.0.i30
  %i.cc = sext i32 %i.cb to i64                   ; 7 uses
  %.03651.i.i = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cc ; 2 uses
  %.not66.i.i = icmp eq i32 %.0.i30, 31
  br i1 %.not66.i.i, label %calc_sum_top.exit.i, label %.lr.ph62.split.i.i

.lr.ph62.split.i.i:                               ; preds = %.lr.ph62.i.i
  %.not41.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not41.i.i, label %.lr.ph56.us.i.i, label %.lr.ph56.preheader.i.i

.lr.ph56.preheader.i.i:                           ; preds = %.lr.ph62.split.i.i
  %i.cd = add nuw nsw i32 %i.bx, 1
  %wide.trip.count75.i.i = zext nneg i32 %i.cd to i64
  %wide.trip.count.i.i = zext nneg i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = add i64 %i.cf, 1184
  %i.ch = shl nsw i64 %i.cc, 2
  br label %.lr.ph56.i.i

.lr.ph56.us.i.i:                                  ; preds = %.lr.ph62.split.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.by to i64
  %i.ci = shl nsw i64 %i.cc, 2
  %i.cj = add i64 %i.ci, %i.a
  %i.ck = add i64 %i.cj, 1184
  %i.cl = shl nsw i64 %i.cc, 2
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge48.us.us.i.i, %.lr.ph56.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge48.us.us.i.i ], [ 0, %.lr.ph56.us.i.i ] ; 3 uses
  %.03654.us.us.i.i = phi ptr [ %.036.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %.03651.i.i, %.lr.ph56.us.i.i ] ; 3 uses
  %.03753.us.us.i.i = phi ptr [ %.2.lcssa.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %i.ca, %.lr.ph56.us.i.i ] ; 6 uses
  %i.cm = icmp ult ptr %.03753.us.us.i.i, %.03654.us.us.i.i
  br i1 %i.cm, label %.lr.ph47.us.us.i.i.preheader, label %._crit_edge48.us.us.i.i

.lr.ph47.us.us.i.i.preheader:                     ; preds = %.preheader.us.us.i.i
  %i.cn = mul i64 %i.cl, %indvars.iv77.i.i
  %i.co = add i64 %i.ck, %i.cn
  %4 = ptrtoaddr ptr %.03753.us.us.i.i to i64     ; 2 uses
  %i.cp = add i64 %4, 4
  %umax91 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cp)
  %i.cq = xor i64 %4, -1
  %i.cr = add i64 %umax91, %i.cq                  ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.cr, 12
  br i1 %min.iters.check93, label %.lr.ph47.us.us.i.i.preheader128, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph47.us.us.i.i.preheader
  %n.vec95 = and i64 %i.ct, 9223372036854775804   ; 3 uses
  %i.cu = shl i64 %n.vec95, 2
  %i.cv = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cu ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next103, %vector.body96 ] ; 2 uses
  %vec.phi98 = phi <2 x i64> [ zeroinitializer, %vector.ph94 ], [ %i.da, %vector.body96 ]
  %vec.phi99 = phi <2 x i64> [ zeroinitializer, %vector.ph94 ], [ %i.db, %vector.body96 ]
  %i.cw = shl i64 %index97, 2
  %next.gep100 = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep100, i64 8
  %wide.load101 = load <2 x i32>, ptr %next.gep100, align 4, !tbaa !47
  %wide.load102 = load <2 x i32>, ptr %i.cx, align 4, !tbaa !47
  %i.cy = zext <2 x i32> %wide.load101 to <2 x i64>
  %i.cz = zext <2 x i32> %wide.load102 to <2 x i64>
  %i.da = add <2 x i64> %vec.phi98, %i.cy         ; 2 uses
  %i.db = add <2 x i64> %vec.phi99, %i.cz         ; 2 uses
  %index.next103 = add nuw i64 %index97, 4        ; 2 uses
  %i.dc = icmp eq i64 %index.next103, %n.vec95
  br i1 %i.dc, label %middle.block104, label %vector.body96, !llvm.loop !239

middle.block104:                                  ; preds = %vector.body96
  %bin.rdx105 = add <2 x i64> %i.db, %i.da
  %i.dd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx105) ; 2 uses
  %cmp.n106 = icmp eq i64 %i.ct, %n.vec95
  br i1 %cmp.n106, label %._crit_edge48.us.us.i.i, label %.lr.ph47.us.us.i.i.preheader128

.lr.ph47.us.us.i.i.preheader128:                  ; preds = %.lr.ph47.us.us.i.i.preheader, %middle.block104
  %.046.us.us.i.i.ph = phi i64 [ 0, %.lr.ph47.us.us.i.i.preheader ], [ %i.dd, %middle.block104 ]
  %.245.us.us.i.i.ph = phi ptr [ %.03753.us.us.i.i, %.lr.ph47.us.us.i.i.preheader ], [ %i.cv, %middle.block104 ]
  br label %.lr.ph47.us.us.i.i

.lr.ph47.us.us.i.i:                               ; preds = %.lr.ph47.us.us.i.i.preheader128, %.lr.ph47.us.us.i.i
  %.046.us.us.i.i = phi i64 [ %i.dh, %.lr.ph47.us.us.i.i ], [ %.046.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader128 ]
  %.245.us.us.i.i = phi ptr [ %i.de, %.lr.ph47.us.us.i.i ], [ %.245.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader128 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.245.us.us.i.i, i64 4 ; 3 uses
  %i.df = load i32, ptr %.245.us.us.i.i, align 4, !tbaa !47
  %i.dg = zext i32 %i.df to i64
  %i.dh = add i64 %.046.us.us.i.i, %i.dg          ; 2 uses
  %i.di = icmp ult ptr %i.de, %.03654.us.us.i.i
  br i1 %i.di, label %.lr.ph47.us.us.i.i, label %._crit_edge48.us.us.i.i, !llvm.loop !240

._crit_edge48.us.us.i.i:                          ; preds = %.lr.ph47.us.us.i.i, %middle.block104, %.preheader.us.us.i.i
  %.2.lcssa.us.us.i.i = phi ptr [ %.03753.us.us.i.i, %.preheader.us.us.i.i ], [ %i.cv, %middle.block104 ], [ %i.de, %.lr.ph47.us.us.i.i ]
  %.0.lcssa.us.us.i.i = phi i64 [ 0, %.preheader.us.us.i.i ], [ %i.dd, %middle.block104 ], [ %i.dh, %.lr.ph47.us.us.i.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv77.i.i
  store i64 %.0.lcssa.us.us.i.i, ptr %i.dj, align 8, !tbaa !109
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %.036.us.us.i.i = getelementptr inbounds [4 x i8], ptr %.03654.us.us.i.i, i64 %i.cc
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %calc_sum_top.exit.i, label %.preheader.us.us.i.i, !llvm.loop !241

.lr.ph56.i.i:                                     ; preds = %._crit_edge57.split.i.i, %.lr.ph56.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.lr.ph56.preheader.i.i ], [ %i.dk, %._crit_edge57.split.i.i ] ; 3 uses
  %i.dk = add nuw nsw i64 %indvars.iv72.i.i, 1    ; 3 uses
  %i.dl = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv72.i.i
  %i.dm = trunc nuw nsw i64 %indvars.iv72.i.i to i32 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph56.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph56.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03654.i.i = phi ptr [ %.03651.i.i, %.lr.ph56.i.i ], [ %.036.i.i, %._crit_edge.i.i ] ; 4 uses
  %.03753.i.i = phi ptr [ %i.ca, %.lr.ph56.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.dn = ptrtoint ptr %.03654.i.i to i64
  %i.do = ptrtoint ptr %.03753.i.i to i64         ; 3 uses
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 2
  %i.dr = mul nsw i64 %i.dq, %i.dk                ; 3 uses
  %i.ds = icmp ult ptr %.03753.i.i, %.03654.i.i
  br i1 %i.ds, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.dt = mul i64 %i.ch, %indvars.iv.i.i
  %i.du = add i64 %i.cg, %i.dt
  %i.dv = add i64 %i.do, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dv)
  %i.dw = xor i64 %i.do, -1
  %i.dx = add i64 %umax, %i.dw                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.dx, 12
  br i1 %min.iters.check78, label %.lr.ph.i.i.preheader133, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec80 = and i64 %i.dz, 9223372036854775804   ; 3 uses
  %i.ea = shl i64 %n.vec80, 2
  %i.eb = getelementptr i8, ptr %.03753.i.i, i64 %i.ea ; 2 uses
  %i.ec = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dr, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next86, %vector.body81 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ec, %vector.ph79 ], [ %i.ej, %vector.body81 ]
  %vec.phi83 = phi <2 x i64> [ zeroinitializer, %vector.ph79 ], [ %i.ek, %vector.body81 ]
  %i.ed = shl i64 %index82, 2
  %next.gep = getelementptr i8, ptr %.03753.i.i, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep, i64 8
  %wide.load84 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load85 = load <2 x i32>, ptr %i.ee, align 4, !tbaa !47
  %i.ef = lshr <2 x i32> %wide.load84, %broadcast.splat
  %i.eg = lshr <2 x i32> %wide.load85, %broadcast.splat
  %i.eh = zext <2 x i32> %i.ef to <2 x i64>
  %i.ei = zext <2 x i32> %i.eg to <2 x i64>
  %i.ej = add <2 x i64> %vec.phi, %i.eh           ; 2 uses
  %i.ek = add <2 x i64> %vec.phi83, %i.ei         ; 2 uses
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.el = icmp eq i64 %index.next86, %n.vec80
  br i1 %i.el, label %middle.block87, label %vector.body81, !llvm.loop !242

middle.block87:                                   ; preds = %vector.body81
  %bin.rdx = add <2 x i64> %i.ek, %i.ej
  %i.em = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n88 = icmp eq i64 %i.dz, %n.vec80
  br i1 %cmp.n88, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader133

.lr.ph.i.i.preheader133:                          ; preds = %.lr.ph.i.i.preheader, %middle.block87
  %.03543.i.i.ph = phi i64 [ %i.dr, %.lr.ph.i.i.preheader ], [ %i.em, %middle.block87 ]
  %.142.i.i.ph = phi ptr [ %.03753.i.i, %.lr.ph.i.i.preheader ], [ %i.eb, %middle.block87 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader133, %.lr.ph.i.i
  %.03543.i.i = phi i64 [ %i.er, %.lr.ph.i.i ], [ %.03543.i.i.ph, %.lr.ph.i.i.preheader133 ]
  %.142.i.i = phi ptr [ %i.en, %.lr.ph.i.i ], [ %.142.i.i.ph, %.lr.ph.i.i.preheader133 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 4 ; 3 uses
  %i.eo = load i32, ptr %.142.i.i, align 4, !tbaa !47
  %i.ep = lshr i32 %i.eo, %i.dm
  %i.eq = zext i32 %i.ep to i64
  %i.er = add i64 %.03543.i.i, %i.eq              ; 2 uses
  %i.es = icmp ult ptr %i.en, %.03654.i.i
  br i1 %i.es, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block87, %bb.e
  %.1.lcssa.i.i = phi ptr [ %.03753.i.i, %bb.e ], [ %i.eb, %middle.block87 ], [ %i.en, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i64 [ %i.dr, %bb.e ], [ %i.em, %middle.block87 ], [ %i.er, %.lr.ph.i.i ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i.i
  store i64 %.035.lcssa.i.i, ptr %i.et, align 8, !tbaa !109
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.036.i.i = getelementptr inbounds [4 x i8], ptr %.03654.i.i, i64 %i.cc
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.split.i.i, label %bb.e, !llvm.loop !241

._crit_edge57.split.i.i:                          ; preds = %._crit_edge.i.i
  %exitcond76.not.i.i = icmp eq i64 %i.dk, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %calc_sum_top.exit.i, label %.lr.ph56.i.i, !llvm.loop !244

calc_sum_top.exit.i:                              ; preds = %._crit_edge57.split.i.i, %._crit_edge48.us.us.i.i, %.lr.ph62.i.i, %._crit_edge.i
  %i.eu = sext i32 %.0.i43 to i64                 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.eu
  store i64 4294967295, ptr %i.ev, align 8, !tbaa !109
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ex = icmp eq i32 %.0.i30, %.0.i43
  %i.ey = add i32 %i.az, -1                       ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.ey to i64  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not15.i.i.i = icmp slt i32 %i.az, 2
  %i.fa = add nsw i32 %i.bx, 1                    ; 2 uses
  %wide.trip.count.i49.i = zext i32 %i.fa to i64  ; 2 uses
  %i.fb = sext i32 %.0.i30 to i64
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.fc = icmp eq i32 %i.ey, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod140 = trunc i32 %i.ey to i1
  %xtraiter142 = and i64 %wide.trip.count.i49.i, 1
  %i.fd = icmp eq i32 %i.bx, 0
  %unroll_iter145 = and i64 %wide.trip.count.i49.i, 2147483646
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod144 = trunc i32 %i.fa to i1
  br label %calc_sum_next.exit.i

calc_sum_next.exit.i:                             ; preds = %calc_sum_next.exit.i.backedge, %calc_sum_top.exit.i
  %indvars.iv68.i = phi i64 [ %i.fb, %calc_sum_top.exit.i ], [ %indvars.iv.next69.i, %calc_sum_next.exit.i.backedge ] ; 7 uses
  %.0.i39 = phi i32 [ %.0.i43, %calc_sum_top.exit.i ], [ %.1.i, %calc_sum_next.exit.i.backedge ] ; 2 uses
  %i.fe = trunc nsw i64 %indvars.iv68.i to i32    ; 5 uses
  %i.ff = shl i32 4, %i.fe
  %i.fg = sext i32 %i.ff to i64                   ; 5 uses
  %i.fh = ashr i32 %i.f, %i.fe                    ; 4 uses
  %i.fi = icmp eq i64 %indvars.iv68.i, 31
  br i1 %i.fi, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %calc_sum_next.exit.i
  %i.fj = shl nuw nsw i32 1, %i.fe
  %i.fk = sub nsw i32 %i.fh, %2                   ; 3 uses
  %wide.trip.count60.i.i = zext nneg i32 %i.fj to i64 ; 5 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i44.i
  %i.fl = load i64, ptr %i.av, align 8, !tbaa !109 ; 2 uses
  %i.fm = ashr i32 %i.fk, 1
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
end_hunk_0
