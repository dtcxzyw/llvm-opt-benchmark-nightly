inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@encode_residual_fixed:bb.a
  %i.ew = getelementptr i8, ptr %i.eo, i64 -8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47 ; 3 uses
  %reass.add = sub i32 %i.ev, %i.ex
  %reass.mul = mul i32 %reass.add, 3
  %i.ey = add i32 %i.et, %reass.mul
  %i.ez = shl i32 %i.ex, 1
  %i.fa = sub i32 %i.eq, %i.ez
  %i.fb = add nsw i32 %i.fa, %i.ev
  %i.fc = sub nsw i32 %i.eq, %i.ex
  %i.fd = zext nneg i32 %2 to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %.lr.ph172
  %indvars.iv194 = phi i64 [ %i.en, %.lr.ph172.preheader ], [ %indvars.iv.next195, %.lr.ph172 ] ; 4 uses
  %.0134169 = phi i32 [ %i.ey, %.lr.ph172.preheader ], [ %i.ft, %.lr.ph172 ]
  %.0135168 = phi i32 [ %i.fb, %.lr.ph172.preheader ], [ %i.fs, %.lr.ph172 ]
  %.0136167 = phi i32 [ %i.fc, %.lr.ph172.preheader ], [ %i.fr, %.lr.ph172 ]
  %i.fe = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv194 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !47
  %i.fg = getelementptr i8, ptr %i.fe, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !47
  %i.fi = sub nsw i32 %i.ff, %i.fh                ; 2 uses
  %i.fj = sub nsw i32 %i.fi, %.0136167            ; 2 uses
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
  br i1 %i.fw, label %.lr.ph172, label %.loopexit, !llvm.loop !236

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader155.prol.loopexit, %.preheader155, %.preheader.prol.loopexit, %.preheader, %.lr.ph172, %middle.block223, %middle.block237, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @find_subframe_rice_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [9 x i64], align 16               ; 6 uses
  %3 = alloca %struct.RiceContext, align 4        ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7349976
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7349920
  %i.f = load i32, ptr %i.e, align 8, !tbaa !84   ; 7 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !70
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
  %i.z = load i8, ptr %i.y, align 1, !tbaa !70
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %.1.i.i, %i.aa          ; 2 uses
  %...i = tail call i32 @llvm.smin.i32(i32 %..i, i32 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %..i2941 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.p)
  %...i37 = tail call i32 @llvm.smin.i32(i32 %..i2941, i32 %i.ab)
  br label %get_max_p_order.exit38

get_max_p_order.exit38:                           ; preds = %get_max_p_order.exit, %bb.b
  %.0.i42 = phi i32 [ %...i, %bb.b ], [ %..i, %get_max_p_order.exit ] ; 3 uses
  %.0.i30 = phi i32 [ %...i37, %bb.b ], [ %..i29, %get_max_p_order.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !89
  %i.ag = mul nsw i32 %i.af, %2
  %i.ah = add nsw i32 %i.ag, 10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !90 ; 3 uses
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = load i32, ptr %1, align 8, !tbaa !142
  %i.an = icmp eq i32 %i.am, 32
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_max_p_order.exit38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !150
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
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.az = shl nuw i32 1, %i.aj                    ; 3 uses
  %i.ba = add nsw i32 %i.az, -2                   ; 3 uses
  store i32 %i.aj, ptr %3, align 4, !tbaa !238
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
  %wide.load75 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !47 ; 2 uses
  %i.bi = shl <4 x i32> %wide.load, splat (i32 1)
  %i.bj = shl <4 x i32> %wide.load75, splat (i32 1)
  %i.bk = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.bl = ashr <4 x i32> %wide.load75, splat (i32 31)
  %i.bm = xor <4 x i32> %i.bi, %i.bk
  %i.bn = xor <4 x i32> %i.bj, %i.bl
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !47
  store <4 x i32> %i.bn, ptr %i.bp, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !239

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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !240

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
  %i.cc = sext i32 %i.cb to i64                   ; 5 uses
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
  br label %.lr.ph56.i.i

.lr.ph56.us.i.i:                                  ; preds = %.lr.ph62.split.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = add i64 %i.cf, 1184
  %i.ch = shl nsw i64 %i.cc, 2
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge48.us.us.i.i, %.lr.ph56.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge48.us.us.i.i ], [ 0, %.lr.ph56.us.i.i ] ; 3 uses
  %.03654.us.us.i.i = phi ptr [ %.036.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %.03651.i.i, %.lr.ph56.us.i.i ] ; 3 uses
  %.03753.us.us.i.i = phi ptr [ %.2.lcssa.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %i.ca, %.lr.ph56.us.i.i ] ; 6 uses
  %i.ci = icmp ult ptr %.03753.us.us.i.i, %.03654.us.us.i.i
  br i1 %i.ci, label %.lr.ph47.us.us.i.i.preheader, label %._crit_edge48.us.us.i.i

.lr.ph47.us.us.i.i.preheader:                     ; preds = %.preheader.us.us.i.i
  %.03753.us.us.i.i89 = ptrtoaddr ptr %.03753.us.us.i.i to i64 ; 2 uses
  %i.cj = mul i64 %i.ch, %indvars.iv77.i.i
  %i.ck = add i64 %i.cg, %i.cj
  %i.cl = add i64 %.03753.us.us.i.i89, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cm = xor i64 %.03753.us.us.i.i89, -1
  %i.cn = add i64 %umax, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check91 = icmp ult i64 %i.cn, 12
  br i1 %min.iters.check91, label %.lr.ph47.us.us.i.i.preheader126, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph47.us.us.i.i.preheader
  %n.vec93 = and i64 %i.cp, 9223372036854775804   ; 3 uses
  %i.cq = shl i64 %n.vec93, 2
  %i.cr = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cq ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next101, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.cw, %vector.body94 ]
  %vec.phi97 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.cx, %vector.body94 ]
  %i.cs = shl i64 %index95, 2
  %next.gep98 = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep98, i64 8
  %wide.load99 = load <2 x i32>, ptr %next.gep98, align 4, !tbaa !47
  %wide.load100 = load <2 x i32>, ptr %i.ct, align 4, !tbaa !47
  %i.cu = zext <2 x i32> %wide.load99 to <2 x i64>
  %i.cv = zext <2 x i32> %wide.load100 to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi96, %i.cu         ; 2 uses
  %i.cx = add <2 x i64> %vec.phi97, %i.cv         ; 2 uses
  %index.next101 = add nuw i64 %index95, 4        ; 2 uses
  %i.cy = icmp eq i64 %index.next101, %n.vec93
  br i1 %i.cy, label %middle.block102, label %vector.body94, !llvm.loop !241

middle.block102:                                  ; preds = %vector.body94
  %bin.rdx103 = add <2 x i64> %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx103) ; 2 uses
  %cmp.n104 = icmp eq i64 %i.cp, %n.vec93
  br i1 %cmp.n104, label %._crit_edge48.us.us.i.i, label %.lr.ph47.us.us.i.i.preheader126

.lr.ph47.us.us.i.i.preheader126:                  ; preds = %.lr.ph47.us.us.i.i.preheader, %middle.block102
  %.046.us.us.i.i.ph = phi i64 [ 0, %.lr.ph47.us.us.i.i.preheader ], [ %i.cz, %middle.block102 ]
  %.245.us.us.i.i.ph = phi ptr [ %.03753.us.us.i.i, %.lr.ph47.us.us.i.i.preheader ], [ %i.cr, %middle.block102 ]
  br label %.lr.ph47.us.us.i.i

.lr.ph47.us.us.i.i:                               ; preds = %.lr.ph47.us.us.i.i.preheader126, %.lr.ph47.us.us.i.i
  %.046.us.us.i.i = phi i64 [ %i.dd, %.lr.ph47.us.us.i.i ], [ %.046.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader126 ]
  %.245.us.us.i.i = phi ptr [ %i.da, %.lr.ph47.us.us.i.i ], [ %.245.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader126 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.245.us.us.i.i, i64 4 ; 3 uses
  %i.db = load i32, ptr %.245.us.us.i.i, align 4, !tbaa !47
  %i.dc = zext i32 %i.db to i64
  %i.dd = add i64 %.046.us.us.i.i, %i.dc          ; 2 uses
  %i.de = icmp ult ptr %i.da, %.03654.us.us.i.i
  br i1 %i.de, label %.lr.ph47.us.us.i.i, label %._crit_edge48.us.us.i.i, !llvm.loop !242

._crit_edge48.us.us.i.i:                          ; preds = %.lr.ph47.us.us.i.i, %middle.block102, %.preheader.us.us.i.i
  %.2.lcssa.us.us.i.i = phi ptr [ %.03753.us.us.i.i, %.preheader.us.us.i.i ], [ %i.cr, %middle.block102 ], [ %i.da, %.lr.ph47.us.us.i.i ]
  %.0.lcssa.us.us.i.i = phi i64 [ 0, %.preheader.us.us.i.i ], [ %i.cz, %middle.block102 ], [ %i.dd, %.lr.ph47.us.us.i.i ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv77.i.i
  store i64 %.0.lcssa.us.us.i.i, ptr %i.df, align 8, !tbaa !111
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %.036.us.us.i.i = getelementptr inbounds [4 x i8], ptr %.03654.us.us.i.i, i64 %i.cc
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %calc_sum_top.exit.i, label %.preheader.us.us.i.i, !llvm.loop !243

.lr.ph56.i.i:                                     ; preds = %._crit_edge57.split.i.i, %.lr.ph56.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.lr.ph56.preheader.i.i ], [ %i.dg, %._crit_edge57.split.i.i ] ; 3 uses
  %i.dg = add nuw nsw i64 %indvars.iv72.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv72.i.i
  %i.di = trunc nuw nsw i64 %indvars.iv72.i.i to i32 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph56.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph56.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %.03654.i.i = phi ptr [ %.03651.i.i, %.lr.ph56.i.i ], [ %.036.i.i, %._crit_edge.i.i ] ; 4 uses
  %.03753.i.i = phi ptr [ %i.ca, %.lr.ph56.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.dj = ptrtoint ptr %.03654.i.i to i64         ; 2 uses
  %i.dk = ptrtoint ptr %.03753.i.i to i64         ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = mul nsw i64 %i.dm, %i.dg                ; 3 uses
  %i.do = icmp ult ptr %.03753.i.i, %.03654.i.i
  br i1 %i.do, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.dp = add i64 %i.dk, 4
  %i.dq = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dp)
  %i.dr = xor i64 %i.dk, -1
  %i.ds = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ds, 12
  br i1 %min.iters.check77, label %.lr.ph.i.i.preheader131, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec79 = and i64 %i.du, 9223372036854775804   ; 3 uses
  %i.dv = shl i64 %n.vec79, 2
  %i.dw = getelementptr i8, ptr %.03753.i.i, i64 %i.dv ; 2 uses
  %i.dx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dn, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next85, %vector.body80 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dx, %vector.ph78 ], [ %i.ee, %vector.body80 ]
  %vec.phi82 = phi <2 x i64> [ zeroinitializer, %vector.ph78 ], [ %i.ef, %vector.body80 ]
  %i.dy = shl i64 %index81, 2
  %next.gep = getelementptr i8, ptr %.03753.i.i, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load83 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load84 = load <2 x i32>, ptr %i.dz, align 4, !tbaa !47
  %i.ea = lshr <2 x i32> %wide.load83, %broadcast.splat
  %i.eb = lshr <2 x i32> %wide.load84, %broadcast.splat
  %i.ec = zext <2 x i32> %i.ea to <2 x i64>
  %i.ed = zext <2 x i32> %i.eb to <2 x i64>
  %i.ee = add <2 x i64> %vec.phi, %i.ec           ; 2 uses
  %i.ef = add <2 x i64> %vec.phi82, %i.ed         ; 2 uses
  %index.next85 = add nuw i64 %index81, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next85, %n.vec79
  br i1 %i.eg, label %middle.block86, label %vector.body80, !llvm.loop !244

middle.block86:                                   ; preds = %vector.body80
  %bin.rdx = add <2 x i64> %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.du, %n.vec79
  br i1 %cmp.n87, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %.lr.ph.i.i.preheader, %middle.block86
  %.03543.i.i.ph = phi i64 [ %i.dn, %.lr.ph.i.i.preheader ], [ %i.eh, %middle.block86 ]
  %.142.i.i.ph = phi ptr [ %.03753.i.i, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block86 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %.03543.i.i = phi i64 [ %i.em, %.lr.ph.i.i ], [ %.03543.i.i.ph, %.lr.ph.i.i.preheader131 ]
  %.142.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.142.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 4 ; 3 uses
  %i.ej = load i32, ptr %.142.i.i, align 4, !tbaa !47
  %i.ek = lshr i32 %i.ej, %i.di
  %i.el = zext i32 %i.ek to i64
  %i.em = add i64 %.03543.i.i, %i.el              ; 2 uses
  %i.en = icmp ult ptr %i.ei, %.03654.i.i
  br i1 %i.en, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !245

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block86, %bb.e
  %.1.lcssa.i.i = phi ptr [ %.03753.i.i, %bb.e ], [ %i.dw, %middle.block86 ], [ %i.ei, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i64 [ %i.dn, %bb.e ], [ %i.eh, %middle.block86 ], [ %i.em, %.lr.ph.i.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i.i
  store i64 %.035.lcssa.i.i, ptr %i.eo, align 8, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.036.i.i = getelementptr inbounds [4 x i8], ptr %.03654.i.i, i64 %i.cc
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.split.i.i, label %bb.e, !llvm.loop !243

._crit_edge57.split.i.i:                          ; preds = %._crit_edge.i.i
  %exitcond76.not.i.i = icmp eq i64 %i.dg, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %calc_sum_top.exit.i, label %.lr.ph56.i.i, !llvm.loop !246

calc_sum_top.exit.i:                              ; preds = %._crit_edge57.split.i.i, %._crit_edge48.us.us.i.i, %.lr.ph62.i.i, %._crit_edge.i
  %i.ep = sext i32 %.0.i42 to i64                 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ep
  store i64 4294967295, ptr %i.eq, align 8, !tbaa !111
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.es = icmp eq i32 %.0.i30, %.0.i42
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
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 263336
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 263344
  %xtraiter140 = and i64 %wide.trip.count.i49.i, 1
  %i.fa = icmp eq i32 %i.bx, 0
  %unroll_iter143 = and i64 %wide.trip.count.i49.i, 2147483646
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  %lcmp.mod142 = trunc i32 %i.ev to i1
  br label %calc_sum_next.exit.i

end_hunk_0
