Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@encode_residual_fixed:bb.a
  %i.fk = sub nsw i32 %i.fj, %.0135168            ; 2 uses
  %i.fl = sub nsw i32 %i.fk, %.0134169
  %i.fm = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv194
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !47
  %i.fn = add nsw i64 %indvars.iv194, 1           ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !47
  %i.fq = load i32, ptr %i.fe, align 4, !tbaa !47
  %i.fr = sub nsw i32 %i.fp, %i.fq                ; 2 uses
  %i.fs = sub nsw i32 %i.fr, %i.fi                ; 2 uses
  %i.ft = sub nsw i32 %i.fs, %i.fj                ; 2 uses
  %i.fu = sub nsw i32 %i.ft, %i.fk
  %i.fv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fn
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !47
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, 2 ; 2 uses
  %i.fw = icmp slt i64 %indvars.iv.next195, %i.fd
  br i1 %i.fw, label %.lr.ph172, label %.loopexit, !llvm.loop !234

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader155.prol.loopexit, %.preheader155, %.preheader.prol.loopexit, %.preheader, %.lr.ph172, %middle.block223, %middle.block237, %bb.f
  ret void
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
  %i.cg = add i64 %i.cf, 1183
  %i.ch = shl nsw i64 %i.cc, 2
  br label %.lr.ph56.i.i

.lr.ph56.us.i.i:                                  ; preds = %.lr.ph62.split.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.by to i64
  %i.ci = shl nsw i64 %i.cc, 2
  %i.cj = add i64 %i.ci, %i.a
  %i.ck = add i64 %i.cj, 1183
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
  %i.cp = ptrtoaddr ptr %.03753.us.us.i.i to i64
  %4 = sub i64 %i.co, %i.cp                       ; 2 uses
  %i.cq = lshr i64 %4, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check91 = icmp ult i64 %4, 12
  br i1 %min.iters.check91, label %.lr.ph47.us.us.i.i.preheader126, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph47.us.us.i.i.preheader
  %n.vec93 = and i64 %i.cr, 9223372036854775804   ; 3 uses
  %i.cs = shl i64 %n.vec93, 2
  %i.ct = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cs ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next101, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.cy, %vector.body94 ]
  %vec.phi97 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.cz, %vector.body94 ]
  %i.cu = shl i64 %index95, 2
  %next.gep98 = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep98, i64 8
  %wide.load99 = load <2 x i32>, ptr %next.gep98, align 4, !tbaa !47
  %wide.load100 = load <2 x i32>, ptr %i.cv, align 4, !tbaa !47
  %i.cw = zext <2 x i32> %wide.load99 to <2 x i64>
  %i.cx = zext <2 x i32> %wide.load100 to <2 x i64>
  %i.cy = add <2 x i64> %vec.phi96, %i.cw         ; 2 uses
  %i.cz = add <2 x i64> %vec.phi97, %i.cx         ; 2 uses
  %index.next101 = add nuw i64 %index95, 4        ; 2 uses
  %i.da = icmp eq i64 %index.next101, %n.vec93
  br i1 %i.da, label %middle.block102, label %vector.body94, !llvm.loop !239

middle.block102:                                  ; preds = %vector.body94
  %bin.rdx103 = add <2 x i64> %i.cz, %i.cy
  %i.db = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx103) ; 2 uses
  %cmp.n104 = icmp eq i64 %i.cr, %n.vec93
  br i1 %cmp.n104, label %._crit_edge48.us.us.i.i, label %.lr.ph47.us.us.i.i.preheader126

.lr.ph47.us.us.i.i.preheader126:                  ; preds = %.lr.ph47.us.us.i.i.preheader, %middle.block102
  %.046.us.us.i.i.ph = phi i64 [ 0, %.lr.ph47.us.us.i.i.preheader ], [ %i.db, %middle.block102 ]
  %.245.us.us.i.i.ph = phi ptr [ %.03753.us.us.i.i, %.lr.ph47.us.us.i.i.preheader ], [ %i.ct, %middle.block102 ]
  br label %.lr.ph47.us.us.i.i

.lr.ph47.us.us.i.i:                               ; preds = %.lr.ph47.us.us.i.i.preheader126, %.lr.ph47.us.us.i.i
  %.046.us.us.i.i = phi i64 [ %i.df, %.lr.ph47.us.us.i.i ], [ %.046.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader126 ]
  %.245.us.us.i.i = phi ptr [ %i.dc, %.lr.ph47.us.us.i.i ], [ %.245.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader126 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.245.us.us.i.i, i64 4 ; 3 uses
  %i.dd = load i32, ptr %.245.us.us.i.i, align 4, !tbaa !47
  %i.de = zext i32 %i.dd to i64
  %i.df = add i64 %.046.us.us.i.i, %i.de          ; 2 uses
  %i.dg = icmp ult ptr %i.dc, %.03654.us.us.i.i
  br i1 %i.dg, label %.lr.ph47.us.us.i.i, label %._crit_edge48.us.us.i.i, !llvm.loop !240

._crit_edge48.us.us.i.i:                          ; preds = %.lr.ph47.us.us.i.i, %middle.block102, %.preheader.us.us.i.i
  %.2.lcssa.us.us.i.i = phi ptr [ %.03753.us.us.i.i, %.preheader.us.us.i.i ], [ %i.ct, %middle.block102 ], [ %i.dc, %.lr.ph47.us.us.i.i ]
  %.0.lcssa.us.us.i.i = phi i64 [ 0, %.preheader.us.us.i.i ], [ %i.db, %middle.block102 ], [ %i.df, %.lr.ph47.us.us.i.i ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv77.i.i
  store i64 %.0.lcssa.us.us.i.i, ptr %i.dh, align 8, !tbaa !109
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %.036.us.us.i.i = getelementptr inbounds [4 x i8], ptr %.03654.us.us.i.i, i64 %i.cc
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %calc_sum_top.exit.i, label %.preheader.us.us.i.i, !llvm.loop !241

.lr.ph56.i.i:                                     ; preds = %._crit_edge57.split.i.i, %.lr.ph56.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.lr.ph56.preheader.i.i ], [ %i.di, %._crit_edge57.split.i.i ] ; 3 uses
  %i.di = add nuw nsw i64 %indvars.iv72.i.i, 1    ; 3 uses
  %i.dj = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv72.i.i
  %i.dk = trunc nuw nsw i64 %indvars.iv72.i.i to i32 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.dk, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph56.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph56.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03654.i.i = phi ptr [ %.03651.i.i, %.lr.ph56.i.i ], [ %.036.i.i, %._crit_edge.i.i ] ; 4 uses
  %.03753.i.i = phi ptr [ %i.ca, %.lr.ph56.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.dl = ptrtoint ptr %.03654.i.i to i64
  %i.dm = ptrtoint ptr %.03753.i.i to i64         ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2
  %i.dp = mul nsw i64 %i.do, %i.di                ; 3 uses
  %i.dq = icmp ult ptr %.03753.i.i, %.03654.i.i
  br i1 %i.dq, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.dr = mul i64 %i.ch, %indvars.iv.i.i
  %i.ds = add i64 %i.cg, %i.dr
  %5 = sub i64 %i.ds, %i.dm                       ; 2 uses
  %i.dt = lshr i64 %5, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %5, 12
  br i1 %min.iters.check78, label %.lr.ph.i.i.preheader131, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec80 = and i64 %i.du, 9223372036854775804   ; 3 uses
  %i.dv = shl i64 %n.vec80, 2
  %i.dw = getelementptr i8, ptr %.03753.i.i, i64 %i.dv ; 2 uses
  %i.dx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dp, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next86, %vector.body81 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dx, %vector.ph79 ], [ %i.ee, %vector.body81 ]
  %vec.phi83 = phi <2 x i64> [ zeroinitializer, %vector.ph79 ], [ %i.ef, %vector.body81 ]
  %i.dy = shl i64 %index82, 2
  %next.gep = getelementptr i8, ptr %.03753.i.i, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load84 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load85 = load <2 x i32>, ptr %i.dz, align 4, !tbaa !47
  %i.ea = lshr <2 x i32> %wide.load84, %broadcast.splat
  %i.eb = lshr <2 x i32> %wide.load85, %broadcast.splat
  %i.ec = zext <2 x i32> %i.ea to <2 x i64>
  %i.ed = zext <2 x i32> %i.eb to <2 x i64>
  %i.ee = add <2 x i64> %vec.phi, %i.ec           ; 2 uses
  %i.ef = add <2 x i64> %vec.phi83, %i.ed         ; 2 uses
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next86, %n.vec80
  br i1 %i.eg, label %middle.block87, label %vector.body81, !llvm.loop !242

middle.block87:                                   ; preds = %vector.body81
  %bin.rdx = add <2 x i64> %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n88 = icmp eq i64 %i.du, %n.vec80
  br i1 %cmp.n88, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %.lr.ph.i.i.preheader, %middle.block87
  %.03543.i.i.ph = phi i64 [ %i.dp, %.lr.ph.i.i.preheader ], [ %i.eh, %middle.block87 ]
  %.142.i.i.ph = phi ptr [ %.03753.i.i, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block87 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %.03543.i.i = phi i64 [ %i.em, %.lr.ph.i.i ], [ %.03543.i.i.ph, %.lr.ph.i.i.preheader131 ]
  %.142.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.142.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 4 ; 3 uses
  %i.ej = load i32, ptr %.142.i.i, align 4, !tbaa !47
  %i.ek = lshr i32 %i.ej, %i.dk
  %i.el = zext i32 %i.ek to i64
  %i.em = add i64 %.03543.i.i, %i.el              ; 2 uses
  %i.en = icmp ult ptr %i.ei, %.03654.i.i
  br i1 %i.en, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block87, %bb.e
  %.1.lcssa.i.i = phi ptr [ %.03753.i.i, %bb.e ], [ %i.dw, %middle.block87 ], [ %i.ei, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i64 [ %i.dp, %bb.e ], [ %i.eh, %middle.block87 ], [ %i.em, %.lr.ph.i.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.i
  store i64 %.035.lcssa.i.i, ptr %i.eo, align 8, !tbaa !109
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.036.i.i = getelementptr inbounds [4 x i8], ptr %.03654.i.i, i64 %i.cc
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.split.i.i, label %bb.e, !llvm.loop !241

._crit_edge57.split.i.i:                          ; preds = %._crit_edge.i.i
  %exitcond76.not.i.i = icmp eq i64 %i.di, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %calc_sum_top.exit.i, label %.lr.ph56.i.i, !llvm.loop !244

calc_sum_top.exit.i:                              ; preds = %._crit_edge57.split.i.i, %._crit_edge48.us.us.i.i, %.lr.ph62.i.i, %._crit_edge.i
  %i.ep = sext i32 %.0.i43 to i64                 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ep
  store i64 4294967295, ptr %i.eq, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.es = icmp eq i32 %.0.i30, %.0.i43
  %i.et = add i32 %i.az, -1                       ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.et to i64  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not15.i.i.i = icmp slt i32 %i.az, 2
  %i.ev = add nsw i32 %i.bx, 1                    ; 2 uses
  %wide.trip.count.i49.i = zext i32 %i.ev to i64  ; 2 uses
  %i.ew = sext i32 %.0.i30 to i64
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ex = icmp eq i32 %i.et, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod138 = trunc i32 %i.et to i1
  %xtraiter140 = and i64 %wide.trip.count.i49.i, 1
  %i.ey = icmp eq i32 %i.bx, 0
  %unroll_iter143 = and i64 %wide.trip.count.i49.i, 2147483646
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  %lcmp.mod142 = trunc i32 %i.ev to i1
  br label %calc_sum_next.exit.i

calc_sum_next.exit.i:                             ; preds = %calc_sum_next.exit.i.backedge, %calc_sum_top.exit.i
  %indvars.iv68.i = phi i64 [ %i.ew, %calc_sum_top.exit.i ], [ %indvars.iv.next69.i, %calc_sum_next.exit.i.backedge ] ; 7 uses
  %.0.i39 = phi i32 [ %.0.i43, %calc_sum_top.exit.i ], [ %.1.i, %calc_sum_next.exit.i.backedge ] ; 2 uses
  %i.ez = trunc nsw i64 %indvars.iv68.i to i32    ; 5 uses
  %i.fa = shl i32 4, %i.ez
  %i.fb = sext i32 %i.fa to i64                   ; 5 uses
  %i.fc = ashr i32 %i.f, %i.ez                    ; 4 uses
  %i.fd = icmp eq i64 %indvars.iv68.i, 31
  br i1 %i.fd, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %calc_sum_next.exit.i
  %i.fe = shl nuw nsw i32 1, %i.ez
  %i.ff = sub nsw i32 %i.fc, %2                   ; 3 uses
  %wide.trip.count60.i.i = zext nneg i32 %i.fe to i64 ; 5 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i44.i
  %i.fg = load i64, ptr %i.av, align 8, !tbaa !109 ; 2 uses
  %i.fh = ashr i32 %i.ff, 1
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %.not.i.us.peel.i.i = icmp ugt i64 %i.fg, %i.fi
  %i.fj = sub i64 %i.fg, %i.fi                    ; 2 uses
  br i1 %.not.i.us.peel.i.i, label %bb.f, label %find_optimal_param.exit.us.peel.i.i

bb.f:                                             ; preds = %.lr.ph.split.us.preheader.i.i
  %i.fk = sext i32 %i.ff to i64
  %i.fl = udiv i64 %i.fj, %i.fk
  %i.fm = tail call i64 @llvm.smax.i64(i64 %i.fl, i64 -2147483648)
  %i.fn = tail call i64 @llvm.smin.i64(i64 %i.fm, i64 2147483647) ; 2 uses
  %.0.i.i.us.peel.i.i = trunc nsw i64 %i.fn to i32 ; 2 uses
  %.not.i.i.us.peel.i.i = icmp ult i64 %i.fn, 65536 ; 2 uses
  %i.fo = lshr i32 %.0.i.i.us.peel.i.i, 16
  %spec.select.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 %.0.i.i.us.peel.i.i, i32 %i.fo ; 3 uses
  %spec.select12.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.peel.i.i = icmp samesign ult i32 %spec.select.i.i.us.peel.i.i, 256 ; 2 uses
  %i.fp = lshr i32 %spec.select.i.i.us.peel.i.i, 8
  %i.fq = or disjoint i32 %spec.select12.i.i.us.peel.i.i, 8
  %.110.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select.i.i.us.peel.i.i, i32 %i.fp
  %.1.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select12.i.i.us.peel.i.i, i32 %i.fq
  %i.fr = zext nneg i32 %.110.i.i.us.peel.i.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !68
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nuw nsw i32 %.1.i.i.us.peel.i.i, %i.fu
  %i.fw = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.peel.i.i

find_optimal_param.exit.us.peel.i.i:              ; preds = %bb.f, %.lr.ph.split.us.preheader.i.i
  %.0.i.us.peel.i.i = phi i32 [ %i.fw, %bb.f ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 3 uses
  %i.fx = add nsw i32 %.0.i.us.peel.i.i, 1
  %i.fy = mul nsw i32 %i.fx, %i.ff
  %i.fz = sext i32 %i.fy to i64
  %i.ga = zext nneg i32 %.0.i.us.peel.i.i to i64
  %i.gb = lshr i64 %i.fj, %i.ga
  %i.gc = add i64 %i.gb, %i.fb
  %.1.us.peel.i.i = add i64 %i.gc, %i.fz          ; 2 uses
  store i32 %.0.i.us.peel.i.i, ptr %i.eu, align 4, !tbaa !47
  %i.gd = icmp eq i64 %indvars.iv68.i, 0
  br i1 %i.gd, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.peel.next.i.i

.lr.ph.split.us.peel.next.i.i:                    ; preds = %find_optimal_param.exit.us.peel.i.i
  %i.ge = ashr i32 %i.fc, 1
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = sext i32 %i.fc to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %find_optimal_param.exit.us.i.i, %.lr.ph.split.us.peel.next.i.i
  %indvars.iv56.i.i = phi i64 [ 1, %.lr.ph.split.us.peel.next.i.i ], [ %indvars.iv.next57.i.i, %find_optimal_param.exit.us.i.i ] ; 3 uses
  %.040.us.i.i = phi i64 [ %.1.us.peel.i.i, %.lr.ph.split.us.peel.next.i.i ], [ %.1.us.i.i, %find_optimal_param.exit.us.i.i ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv56.i.i
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !109 ; 2 uses
  %.not.i.us.i.i = icmp ugt i64 %i.gi, %i.gf
  %i.gj = sub i64 %i.gi, %i.gf                    ; 2 uses
  br i1 %.not.i.us.i.i, label %bb.g, label %find_optimal_param.exit.us.i.i

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gk = udiv i64 %i.gj, %i.gg
  %i.gl = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 -2147483648)
  %i.gm = tail call i64 @llvm.smin.i64(i64 %i.gl, i64 2147483647) ; 2 uses
  %.0.i.i.us.i.i = trunc nsw i64 %i.gm to i32     ; 2 uses
  %.not.i.i.us.i.i = icmp ult i64 %i.gm, 65536    ; 2 uses
  %i.gn = lshr i32 %.0.i.i.us.i.i, 16
  %spec.select.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 %.0.i.i.us.i.i, i32 %i.gn ; 3 uses
  %spec.select12.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.i.i = icmp samesign ult i32 %spec.select.i.i.us.i.i, 256 ; 2 uses
  %i.go = lshr i32 %spec.select.i.i.us.i.i, 8
  %i.gp = or disjoint i32 %spec.select12.i.i.us.i.i, 8
  %.110.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select.i.i.us.i.i, i32 %i.go
  %.1.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select12.i.i.us.i.i, i32 %i.gp
  %i.gq = zext nneg i32 %.110.i.i.us.i.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !68
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nuw nsw i32 %.1.i.i.us.i.i, %i.gt
  %i.gv = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.i.i

find_optimal_param.exit.us.i.i:                   ; preds = %bb.g, %.lr.ph.split.us.i.i
  %.0.i.us.i.i = phi i32 [ %i.gv, %bb.g ], [ 0, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.gw = add nsw i32 %.0.i.us.i.i, 1
  %i.gx = mul nsw i32 %i.gw, %i.fc
  %i.gy = sext i32 %i.gx to i64
  %i.gz = zext nneg i32 %.0.i.us.i.i to i64
  %i.ha = lshr i64 %i.gj, %i.gz
  %i.hb = add i64 %i.ha, %.040.us.i.i
  %.1.us.i.i = add i64 %i.hb, %i.gy               ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv56.i.i
  store i32 %.0.i.us.i.i, ptr %i.hc, align 4, !tbaa !47
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !245
end_hunk_0
begin_hunk_1_@lpc_encode_choose_datapath:bb.a

scalar.ph143.prol.loopexit:                       ; preds = %scalar.ph143.prol, %scalar.ph143.preheader
  %.lcssa207.unr = phi i64 [ poison, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %indvars.iv60.i74.unr = phi i64 [ %indvars.iv60.i74.ph, %scalar.ph143.preheader ], [ %indvars.iv.next61.i77.prol, %scalar.ph143.prol ]
  %.03344.us.i75.unr = phi i64 [ %.03344.us.i75.ph, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %i.fm = icmp eq i64 %indvars.iv60.i74.ph, %i.ea
  br i1 %i.fm, label %._crit_edge.us.i79, label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143
  %indvars.iv60.i74 = phi i64 [ %indvars.iv.next61.i77.1, %scalar.ph143 ], [ %indvars.iv60.i74.unr, %scalar.ph143.prol.loopexit ] ; 5 uses
  %.03344.us.i75 = phi i64 [ %i.gi, %scalar.ph143 ], [ %.03344.us.i75.unr, %scalar.ph143.prol.loopexit ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !47
  %i.fp = sext i32 %i.fo to i64
  %i.fq = xor i64 %indvars.iv60.i74, -1
  %i.fr = add nsw i64 %indvars.iv65.i73, %i.fq
  %sext.i76 = shl i64 %i.fr, 32
  %i.fs = ashr exact i64 %sext.i76, 30
  %i.ft = getelementptr inbounds i8, ptr %3, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !47
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fv, %i.fp
  %i.fx = add nsw i64 %i.fw, %.03344.us.i75
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  %i.gb = sext i32 %i.ga to i64
  %reass.sub = sub i64 %indvars.iv65.i73, %indvars.iv60.i74
  %i.gc = shl i64 %reass.sub, 32
  %sext.i76.1 = add i64 %i.gc, -8589934592
  %i.gd = ashr exact i64 %sext.i76.1, 30
  %i.ge = getelementptr inbounds i8, ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %i.gg, %i.gb
  %i.gi = add nsw i64 %i.gh, %i.fx                ; 2 uses
  %indvars.iv.next61.i77.1 = add nuw nsw i64 %indvars.iv60.i74, 2 ; 2 uses
  %exitcond64.not.i78.1 = icmp eq i64 %indvars.iv.next61.i77.1, %wide.trip.count.i63
  br i1 %exitcond64.not.i78.1, label %._crit_edge.us.i79, label %scalar.ph143, !llvm.loop !264

bb.e:                                             ; preds = %._crit_edge.us.i79
  %i.gj = trunc nsw i64 %i.gp to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i73
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !47
  %indvars.iv.next66.i81 = add nuw nsw i64 %indvars.iv65.i73, 1 ; 2 uses
  %exitcond69.not.i82 = icmp eq i64 %indvars.iv.next66.i81, %wide.trip.count68.i70
  %indvar.next = add i34 %indvar, 1
  br i1 %exitcond69.not.i82, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i72, !llvm.loop !194

._crit_edge.us.i79:                               ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143, %middle.block157
  %.lcssa127 = phi i64 [ %i.fa, %middle.block157 ], [ %.lcssa207.unr, %scalar.ph143.prol.loopexit ], [ %i.gi, %scalar.ph143 ]
  %i.gl = ashr i64 %.lcssa127, %i.dg
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv65.i73
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !47
  %i.go = sext i32 %i.gn to i64
  %i.gp = sub nsw i64 %i.go, %i.gl                ; 2 uses
  %i.gq = add i64 %i.gp, 2147483647
  %or.cond.us.i80 = icmp ult i64 %i.gq, 4294967295
  br i1 %or.cond.us.i80, label %bb.e, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66.3, %.lr.ph.i64 ], [ %indvars.iv.i65.unr, %.lr.ph.i64.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !47
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !47
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !47
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !47
  %indvars.iv.next.i66.1 = add nuw nsw i64 %indvars.iv.i65, 2 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.1
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !47
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.1
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !47
  %indvars.iv.next.i66.2 = add nuw nsw i64 %indvars.iv.i65, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.2
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !47
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.2
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !47
  %indvars.iv.next.i66.3 = add nuw nsw i64 %indvars.iv.i65, 4 ; 2 uses
  %exitcond.not.i67.3 = icmp eq i64 %indvars.iv.next.i66.3, %wide.trip.count.i63
  br i1 %exitcond.not.i67.3, label %.preheader42.i68, label %.lr.ph.i64, !llvm.loop !265

.preheader.i57:                                   ; preds = %bb.f, %.preheader.preheader.i55
  %indvars.iv55.i58 = phi i64 [ %i.eb, %.preheader.preheader.i55 ], [ %indvars.iv.next56.i60, %bb.f ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv55.i58
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !47 ; 2 uses
  %.not.i59 = icmp eq i32 %i.he, -2147483648
  br i1 %.not.i59, label %lpc_encode_with_residual_limit_33bps.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i57
  %i.hf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i58
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !47
  %indvars.iv.next56.i60 = add nsw i64 %indvars.iv55.i58, 1 ; 2 uses
  %exitcond59.not.i61 = icmp eq i64 %indvars.iv.next56.i60, %wide.trip.count58.i56
  br i1 %exitcond59.not.i61, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i57, !llvm.loop !194

lpc_encode_with_residual_limit_33bps.exit.sink.split: ; preds = %.thread109, %bb.d
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !148
  %.not.i = icmp ult i32 %6, 65536                ; 2 uses
  %i.hi = lshr i32 %6, 16
  %spec.select.i = select i1 %.not.i, i32 %6, i32 %i.hi ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.hj = lshr i32 %spec.select.i, 8
  %i.hk = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.hj
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.hk
  %i.hl = zext nneg i32 %.110.i to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !68
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nsw i32 %.1.i, %1
  %i.hq = add i32 %i.hp, %i.hh
  %i.hr = add i32 %i.hq, %i.ho
  %i.hs = icmp slt i32 %i.hr, 33
  %. = select i1 %i.hs, i64 7387800, i64 7387808
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !196
  tail call void %i.hu(ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #13
  br label %lpc_encode_with_residual_limit_33bps.exit

lpc_encode_with_residual_limit_33bps.exit:        ; preds = %bb.f, %.preheader.i57, %bb.c, %.preheader.i, %bb.e, %._crit_edge.us.i79, %bb.b, %._crit_edge.us.i, %lpc_encode_with_residual_limit_33bps.exit.sink.split, %.preheader42.i68, %.preheader42.i
  %.050 = phi i32 [ 0, %.preheader42.i ], [ 0, %lpc_encode_with_residual_limit_33bps.exit.sink.split ], [ 0, %.preheader42.i68 ], [ 0, %bb.c ], [ 1, %._crit_edge.us.i79 ], [ 1, %._crit_edge.us.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.preheader.i ], [ 0, %bb.f ], [ 1, %.preheader.i57 ]
  ret i32 %.050
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #9

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ff_lpc_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 344}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 356}
!30 = !{!10, !12, i64 32}
!31 = !{!32, !36, i64 7350000}
!32 = !{!"FlacEncodeContext", !11, i64 0, !33, i64 8, !6, i64 40, !6, i64 44, !7, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !15, i64 80, !7, i64 88, !34, i64 104, !35, i64 7349944, !36, i64 7350000, !37, i64 7350016, !39, i64 7387760, !16, i64 7387768, !6, i64 7387776, !40, i64 7387784, !41, i64 7387800, !6, i64 7387816, !15, i64 7387824}
!33 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !16, i64 8, !16, i64 16, !16, i64 24}
!34 = !{!"FlacFrame", !7, i64 0, !7, i64 6825536, !6, i64 7349816, !7, i64 7349820, !7, i64 7349828, !6, i64 7349832, !6, i64 7349836}
!35 = !{!"CompressionOptions", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!36 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!37 = !{!"LPCContext", !6, i64 0, !6, i64 4, !6, i64 8, !38, i64 16, !38, i64 24, !12, i64 32, !12, i64 40, !7, i64 48}
!38 = !{!"p1 double", !12, i64 0}
!39 = !{!"p1 _ZTS5AVMD5", !12, i64 0}
!40 = !{!"BswapDSPContext", !12, i64 0, !12, i64 8}
!41 = !{!"FLACEncDSPContext", !12, i64 0, !12, i64 8}
!42 = !{!10, !6, i64 348}
!43 = !{!10, !6, i64 652}
!44 = !{!10, !6, i64 516}
!45 = !{!32, !6, i64 56}
!46 = !{!32, !6, i64 40}
!47 = !{!6, !6, i64 0}
!48 = !{!32, !6, i64 44}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!10, !6, i64 424}
!52 = !{!32, !6, i64 7349944}
!53 = !{!32, !6, i64 7349948}
!54 = !{!32, !6, i64 7349952}
!55 = !{!32, !6, i64 7349964}
!56 = !{!32, !6, i64 7349968}
!57 = !{!32, !6, i64 7349972}
!58 = !{!32, !6, i64 7349976}
!59 = !{!32, !6, i64 7349980}
!60 = !{!10, !6, i64 376}
!61 = !{!32, !6, i64 60}
!62 = !{!32, !6, i64 68}
!63 = !{!32, !39, i64 7387760}
!64 = !{!10, !16, i64 72}
!65 = !{!10, !6, i64 80}
!66 = !{!32, !6, i64 76}
!67 = !{!32, !6, i64 64}
!68 = !{!7, !7, i64 0}
!69 = !{!20, !12, i64 16}
!70 = !{!10, !6, i64 352}
!71 = !{!32, !6, i64 72}
!72 = !{!32, !15, i64 80}
!73 = !{!32, !6, i64 7387816}
!74 = !{!32, !15, i64 7387824}
!75 = !{!76, !15, i64 8}
!76 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!77 = !{!78, !6, i64 112}
!78 = !{!"AVFrame", !7, i64 0, !7, i64 64, !79, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !80, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !81, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!79 = !{!"p2 omnipotent char", !28, i64 0}
!80 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!81 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!82 = !{!32, !6, i64 7349920}
!83 = !{!34, !6, i64 7349816}
!84 = !{!85, !6, i64 12}
!85 = !{!"FlacSubframe", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 148, !86, i64 152, !7, i64 1184, !7, i64 263328, !7, i64 328864, !7, i64 591004}
!86 = !{!"RiceContext", !6, i64 0, !6, i64 4, !7, i64 8}
!87 = !{!85, !6, i64 8}
!88 = !{!85, !6, i64 152}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !91}
!93 = !{!34, !6, i64 7349836}
!94 = !{!16, !16, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"short", !7, i64 0}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !91}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = !{!32, !6, i64 7349984}
!103 = distinct !{!103, !50, !104, !105}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = distinct !{!106, !50, !104, !105}
!107 = distinct !{!107, !50, !105, !104}
!108 = distinct !{!108, !50, !105, !104}
!109 = !{!15, !15, i64 0}
!110 = !{!34, !6, i64 7349832}
!111 = distinct !{!111, !50, !104, !105}
!112 = distinct !{!112, !50, !104, !105}
!113 = distinct !{!113, !50, !104, !105}
!114 = distinct !{!114, !50, !105, !104}
!115 = distinct !{!115, !50, !105, !104}
!116 = distinct !{!116, !50, !105, !104}
!117 = distinct !{!117, !50, !104, !105}
!118 = distinct !{!118, !50, !104, !105}
!119 = distinct !{!119, !50, !104, !105}
!120 = distinct !{!120, !50, !105, !104}
!121 = distinct !{!121, !50, !105, !104}
!122 = distinct !{!122, !50, !105, !104}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50}
!128 = !{!32, !6, i64 7349940}
!129 = !{!76, !16, i64 24}
!130 = !{!76, !6, i64 32}
!131 = !{!33, !16, i64 8}
!132 = !{!33, !16, i64 24}
!133 = !{!33, !16, i64 16}
!134 = !{!33, !6, i64 0}
!135 = !{!33, !6, i64 4}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = !{!32, !16, i64 16}
!139 = !{!85, !6, i64 4}
!140 = !{!85, !6, i64 0}
!141 = distinct !{!141, !50}
!142 = distinct !{!142, !50}
!143 = distinct !{!143, !50}
!144 = !{!85, !6, i64 16}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50}
!147 = distinct !{!147, !50}
!148 = !{!32, !6, i64 7349960}
!149 = !{!85, !6, i64 148}
!150 = distinct !{!150, !50}
!151 = !{!85, !6, i64 156}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = !{!32, !16, i64 7387768}
!157 = distinct !{!157, !50}
!158 = distinct !{!158, !50}
!159 = !{!78, !15, i64 136}
!160 = !{!35, !6, i64 0}
!161 = !{!35, !6, i64 8}
!162 = !{!35, !6, i64 12}
!163 = !{!35, !6, i64 20}
!164 = !{!35, !6, i64 24}
!165 = !{!35, !6, i64 28}
!166 = !{!35, !6, i64 32}
!167 = !{!35, !6, i64 36}
!168 = !{!35, !6, i64 16}
!169 = distinct !{!169, !50}
!170 = distinct !{!170, !50}
!171 = distinct !{!171, !50}
!172 = distinct !{!172, !50, !104, !105}
!173 = distinct !{!173, !50, !105, !104}
!174 = distinct !{!174, !50}
!175 = distinct !{!175, !50, !104, !105}
!176 = distinct !{!176, !50, !105, !104}
end_hunk_1
