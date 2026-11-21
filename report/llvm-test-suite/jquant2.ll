Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jquant2?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@update_box:bb.a
  %.0172 = phi i32 [ %i.au, %bb.i ], [ %i.e, %.loopexit14 ], [ %i.e, %.preheader10 ], [ %i.e, %._crit_edge62.split ] ; 11 uses
  %i.ax = icmp sgt i32 %i.g, %.0172
  br i1 %i.ax, label %.preheader7, label %.loopexit8

.preheader7:                                      ; preds = %.loopexit11
  %.not22774 = icmp sgt i32 %.0174, %.0173
  %i.ay = sext i32 %i.i to i64
  %.not22868 = icmp sgt i32 %i.i, %i.k
  %or.cond257 = select i1 %.not22774, i1 true, i1 %.not22868
  br i1 %or.cond257, label %.loopexit8, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  %i.az = sext i32 %.0174 to i64
  %i.ba = add i32 %.0173, 1
  %i.bb = sext i32 %i.g to i64
  %i.bc = sext i32 %.0172 to i64
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge77.split
  %indvars.iv188 = phi i64 [ %i.bb, %.preheader6.preheader ], [ %indvars.iv.next189, %._crit_edge77.split ] ; 4 uses
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader6, %._crit_edge73
  %indvars.iv183 = phi i64 [ %i.az, %.preheader6 ], [ %indvars.iv.next184, %._crit_edge73 ] ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.608.val.48.val, i64 %indvars.iv183
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.bf = getelementptr inbounds [64 x i8], ptr %i.be, i64 %indvars.iv188
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.ay
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph72, %bb.m
  %.317870 = phi i32 [ %i.i, %.lr.ph72 ], [ %i.bk, %bb.m ] ; 2 uses
  %.319669 = phi ptr [ %i.bg, %.lr.ph72 ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bh = load i16, ptr %.319669, align 2, !tbaa !58
  %.not229 = icmp eq i16 %i.bh, 0
  br i1 %.not229, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = trunc nsw i64 %indvars.iv188 to i32     ; 2 uses
  store i32 %i.bi, ptr %i.f, align 4, !tbaa !66
  br label %.loopexit8

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.319669, i64 2
  %i.bk = add i32 %.317870, 1
  %exitcond182.not = icmp eq i32 %.317870, %i.k
  br i1 %exitcond182.not, label %._crit_edge73, label %bb.k, !llvm.loop !116

._crit_edge73:                                    ; preds = %bb.m
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, 1 ; 2 uses
  %lftr.wideiv186 = trunc i64 %indvars.iv.next184 to i32
  %exitcond187.not = icmp eq i32 %i.ba, %lftr.wideiv186
  br i1 %exitcond187.not, label %._crit_edge77.split, label %.lr.ph72, !llvm.loop !117

._crit_edge77.split:                              ; preds = %._crit_edge73
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, -1
  %.not226.not = icmp sgt i64 %indvars.iv188, %i.bc
  br i1 %.not226.not, label %.preheader6, label %.loopexit8, !llvm.loop !118

.loopexit8:                                       ; preds = %._crit_edge77.split, %.preheader7, %.loopexit11, %bb.l
  %.0171 = phi i32 [ %i.bi, %bb.l ], [ %i.g, %.loopexit11 ], [ %i.g, %.preheader7 ], [ %i.g, %._crit_edge77.split ] ; 7 uses
  %i.bl = icmp sgt i32 %i.k, %i.i
  br i1 %i.bl, label %.preheader4, label %.loopexit5

.preheader4:                                      ; preds = %.loopexit8
  %.not23189 = icmp sgt i32 %.0174, %.0173
  %i.bm = sext i32 %.0172 to i64
  %.not23283 = icmp sgt i32 %.0172, %.0171
  %or.cond258 = select i1 %.not23189, i1 true, i1 %.not23283
  br i1 %or.cond258, label %.loopexit5, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader4
  %i.bn = sext i32 %.0174 to i64
  %i.bo = add i32 %.0173, 1
  %i.bp = sext i32 %i.i to i64
  %smax200 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.i)
  %i.bq = add i32 %smax200, 1
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %._crit_edge92.split
  %indvars.iv197 = phi i64 [ %i.bp, %.preheader3.preheader ], [ %indvars.iv.next198, %._crit_edge92.split ] ; 3 uses
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader3, %._crit_edge88
  %indvars.iv192 = phi i64 [ %i.bn, %.preheader3 ], [ %indvars.iv.next193, %._crit_edge88 ] ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.608.val.48.val, i64 %indvars.iv192
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bt = getelementptr inbounds [64 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %indvars.iv197
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph87, %bb.p
  %.418385 = phi i32 [ %.0172, %.lr.ph87 ], [ %i.bx, %bb.p ] ; 2 uses
  %.419784 = phi ptr [ %i.bu, %.lr.ph87 ], [ %i.by, %bb.p ] ; 2 uses
  %i.bv = load i16, ptr %.419784, align 2, !tbaa !58
  %.not233 = icmp eq i16 %i.bv, 0
  br i1 %.not233, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = trunc nsw i64 %indvars.iv197 to i32     ; 2 uses
  store i32 %i.bw, ptr %i.h, align 8, !tbaa !61
  br label %.loopexit5

bb.p:                                             ; preds = %bb.n
  %i.bx = add i32 %.418385, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.419784, i64 64
  %exitcond191.not = icmp eq i32 %.418385, %.0171
  br i1 %exitcond191.not, label %._crit_edge88, label %bb.n, !llvm.loop !119

._crit_edge88:                                    ; preds = %bb.p
  %indvars.iv.next193 = add nsw i64 %indvars.iv192, 1 ; 2 uses
  %lftr.wideiv195 = trunc i64 %indvars.iv.next193 to i32
  %exitcond196.not = icmp eq i32 %i.bo, %lftr.wideiv195
  br i1 %exitcond196.not, label %._crit_edge92.split, label %.lr.ph87, !llvm.loop !120

._crit_edge92.split:                              ; preds = %._crit_edge88
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 2 uses
  %lftr.wideiv201 = trunc i64 %indvars.iv.next198 to i32
  %exitcond202.not = icmp eq i32 %i.bq, %lftr.wideiv201
  br i1 %exitcond202.not, label %.loopexit5, label %.preheader3, !llvm.loop !121

.loopexit5:                                       ; preds = %._crit_edge92.split, %.preheader4, %.loopexit8, %bb.o
  %.0170 = phi i32 [ %i.bw, %bb.o ], [ %i.i, %.loopexit8 ], [ %i.i, %.preheader4 ], [ %i.i, %._crit_edge92.split ] ; 8 uses
  %i.bz = icmp sgt i32 %i.k, %.0170
  br i1 %i.bz, label %.preheader2, label %.loopexit

.preheader2:                                      ; preds = %.loopexit5
  %.not235104 = icmp sgt i32 %.0174, %.0173
  %i.ca = sext i32 %.0172 to i64
  %.not23698 = icmp sgt i32 %.0172, %.0171
  %or.cond259 = select i1 %.not235104, i1 true, i1 %.not23698
  br i1 %or.cond259, label %.loopexit, label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %.preheader2
  %i.cb = sext i32 %.0174 to i64
  %i.cc = add i32 %.0173, 1
  %i.cd = sext i32 %i.k to i64
  %i.ce = sext i32 %.0170 to i64
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge107.split
  %indvars.iv209 = phi i64 [ %i.cd, %.preheader1.preheader ], [ %indvars.iv.next210, %._crit_edge107.split ] ; 4 uses
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader1, %._crit_edge103
  %indvars.iv204 = phi i64 [ %i.cb, %.preheader1 ], [ %indvars.iv.next205, %._crit_edge103 ] ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.608.val.48.val, i64 %indvars.iv204
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48
  %i.ch = getelementptr inbounds [64 x i8], ptr %i.cg, i64 %i.ca
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %indvars.iv209
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph102, %bb.s
  %.5184100 = phi i32 [ %.0172, %.lr.ph102 ], [ %i.cl, %bb.s ] ; 2 uses
  %.519899 = phi ptr [ %i.ci, %.lr.ph102 ], [ %i.cm, %bb.s ] ; 2 uses
  %i.cj = load i16, ptr %.519899, align 2, !tbaa !58
  %.not237 = icmp eq i16 %i.cj, 0
  br i1 %.not237, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = trunc nsw i64 %indvars.iv209 to i32     ; 2 uses
  store i32 %i.ck, ptr %i.j, align 4, !tbaa !62
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.cl = add i32 %.5184100, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.519899, i64 64
  %exitcond203.not = icmp eq i32 %.5184100, %.0171
  br i1 %exitcond203.not, label %._crit_edge103, label %bb.q, !llvm.loop !122

._crit_edge103:                                   ; preds = %bb.s
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, 1 ; 2 uses
  %lftr.wideiv207 = trunc i64 %indvars.iv.next205 to i32
  %exitcond208.not = icmp eq i32 %i.cc, %lftr.wideiv207
  br i1 %exitcond208.not, label %._crit_edge107.split, label %.lr.ph102, !llvm.loop !123

._crit_edge107.split:                             ; preds = %._crit_edge103
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, -1
  %.not234.not = icmp sgt i64 %indvars.iv209, %i.ce
  br i1 %.not234.not, label %.preheader1, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %._crit_edge107.split, %.preheader2, %.loopexit5, %bb.r
  %.0169 = phi i32 [ %i.ck, %bb.r ], [ %i.k, %.loopexit5 ], [ %i.k, %.preheader2 ], [ %i.k, %._crit_edge107.split ] ; 4 uses
  %i.cn = sub nsw i32 %.0173, %.0174
  %i.co = shl i32 %i.cn, 4
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = sub nsw i32 %.0171, %.0172
  %i.cr = mul i32 %i.cq, 12
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = sub nsw i32 %.0169, %.0170
  %i.cu = shl i32 %i.ct, 3
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = mul nsw i64 %i.cp, %i.cp
  %i.cx = mul nsw i64 %i.cs, %i.cs
  %i.cy = add nuw nsw i64 %i.cx, %i.cw
  %i.cz = mul nsw i64 %i.cv, %i.cv
  %i.da = add nuw nsw i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.da, ptr %i.db, align 8, !tbaa !64
  %.not238128 = icmp sgt i32 %.0174, %.0173
  br i1 %.not238128, label %._crit_edge131, label %.preheader.lr.ph.a

.preheader.lr.ph.a:                               ; preds = %.loopexit
  %.not239120.a = icmp sgt i32 %.0172, %.0171
  %i.dc = sext i32 %.0170 to i64
  %.not240113 = icmp sgt i32 %.0170, %.0169
  br i1 %.not239120.a, label %._crit_edge131, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.a
  %1 = sext i32 %.0172 to i64
  %2 = add i32 %.0171, 1
  %i.dd = sext i32 %.0174 to i64
  %3 = add i32 %.0173, 1
  %i.de = sub i32 %.0169, %.0170                  ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.de, 3
  %n.vec = and i64 %i.dg, 8589934588              ; 4 uses
  %i.dh = trunc i64 %n.vec to i32
  %i.di = add i32 %.0170, %i.dh
  %i.dj = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge124
  %indvars.iv218 = phi i64 [ %i.dd, %.preheader.preheader ], [ %indvars.iv.next219, %._crit_edge124 ] ; 2 uses
  %.0130 = phi i64 [ 0, %.preheader.preheader ], [ %.us-phi, %._crit_edge124 ] ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %.608.val.48.val, i64 %indvars.iv218
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !48
  %invariant.gep126 = getelementptr [2 x i8], ptr %i.dl, i64 %i.dc
  br i1 %.not240113, label %._crit_edge124, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader, %._crit_edge119
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %._crit_edge119 ], [ %1, %.preheader ] ; 2 uses
  %.1122 = phi i64 [ %spec.select.lcssa, %._crit_edge119 ], [ %.0130, %.preheader ] ; 2 uses
  %gep127 = getelementptr [64 x i8], ptr %invariant.gep126, i64 %indvars.iv213 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118
  %i.dm = getelementptr i8, ptr %gep127, i64 %i.dj
  %i.dn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.1122, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dn, %vector.ph ], [ %i.du, %vector.body ]
  %vec.phi266 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dv, %vector.body ]
  %i.do = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %gep127, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep, align 2, !tbaa !58
  %wide.load267 = load <2 x i16>, ptr %i.dp, align 2, !tbaa !58
  %i.dq = icmp ne <2 x i16> %wide.load, zeroinitializer
  %i.dr = icmp ne <2 x i16> %wide.load267, zeroinitializer
  %i.ds = zext <2 x i1> %i.dq to <2 x i64>
  %i.dt = zext <2 x i1> %i.dr to <2 x i64>
  %i.du = add <2 x i64> %vec.phi, %i.ds           ; 2 uses
  %i.dv = add <2 x i64> %vec.phi266, %i.dt        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dv, %i.du
  %i.dx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge119, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph118, %middle.block
  %.2116.ph = phi i64 [ %.1122, %.lr.ph118 ], [ %i.dx, %middle.block ]
  %.6115.ph = phi i32 [ %.0170, %.lr.ph118 ], [ %i.di, %middle.block ]
  %.6199114.ph = phi ptr [ %gep127, %.lr.ph118 ], [ %i.dm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.2116 = phi i64 [ %spec.select, %scalar.ph ], [ %.2116.ph, %scalar.ph.preheader ]
  %.6115 = phi i32 [ %i.ea, %scalar.ph ], [ %.6115.ph, %scalar.ph.preheader ] ; 2 uses
  %.6199114 = phi ptr [ %i.eb, %scalar.ph ], [ %.6199114.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dy = load i16, ptr %.6199114, align 2, !tbaa !58
  %.not241 = icmp ne i16 %i.dy, 0
  %i.dz = zext i1 %.not241 to i64
  %spec.select = add nsw i64 %.2116, %i.dz        ; 2 uses
  %i.ea = add i32 %.6115, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.6199114, i64 2
  %exitcond212.not = icmp eq i32 %.6115, %.0169
  br i1 %exitcond212.not, label %._crit_edge119, label %scalar.ph, !llvm.loop !126

._crit_edge119:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.dx, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, 1 ; 2 uses
  %lftr.wideiv216 = trunc i64 %indvars.iv.next214 to i32
  %exitcond217.not = icmp eq i32 %2, %lftr.wideiv216
  br i1 %exitcond217.not, label %._crit_edge124, label %.lr.ph118, !llvm.loop !127

._crit_edge124:                                   ; preds = %._crit_edge119, %.preheader
  %.us-phi = phi i64 [ %.0130, %.preheader ], [ %spec.select.lcssa, %._crit_edge119 ] ; 2 uses
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 1 ; 2 uses
  %lftr.wideiv221 = trunc i64 %indvars.iv.next219 to i32
  %exitcond222.not = icmp eq i32 %3, %lftr.wideiv221
  br i1 %exitcond222.not, label %._crit_edge131, label %.preheader, !llvm.loop !128

._crit_edge131:                                   ; preds = %._crit_edge124, %.preheader.lr.ph.a, %.loopexit
  %.0.lcssa = phi i64 [ 0, %.loopexit ], [ 0, %.preheader.lr.ph.a ], [ %.us-phi, %._crit_edge124 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.0.lcssa, ptr %i.ec, align 8, !tbaa !63
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fill_inverse_cmap(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 32) %1, i32 noundef range(i32 0, 64) %2, i32 noundef range(i32 0, 32) %3) unnamed_addr #3 !guid !136 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 35 uses
  %i.b = alloca [256 x i64], align 16             ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.i = shl nuw nsw i32 %1, 3                    ; 2 uses
  %i.j = and i32 %i.i, 224
  %i.k = or disjoint i32 %i.j, 4                  ; 6 uses
  %i.l = shl nuw nsw i32 %2, 2                    ; 2 uses
  %i.m = and i32 %i.l, 224
  %i.n = or disjoint i32 %i.m, 2                  ; 6 uses
  %i.o = shl nuw nsw i32 %3, 3                    ; 2 uses
  %i.p = and i32 %i.o, 224
  %i.q = or disjoint i32 %i.p, 4                  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.t = or i32 %i.i, 28                          ; 5 uses
  %i.u = add nuw nsw i32 %i.k, %i.t
  %i.v = lshr exact i32 %i.u, 1
  %i.w = or i32 %i.l, 30                          ; 5 uses
  %i.x = add nuw nsw i32 %i.n, %i.w
  %i.y = lshr exact i32 %i.x, 1
  %i.z = or i32 %i.o, 28                          ; 5 uses
  %i.aa = add nuw nsw i32 %i.q, %i.z
  %i.ab = lshr exact i32 %i.aa, 1
  %i.ac = icmp sgt i32 %i.s, 0
  br i1 %i.ac, label %.lr.ph.i, label %find_nearby_colors.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %.0137167.i = phi i64 [ 2147483647, %.lr.ph.i ], [ %spec.select.i, %bb.w ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51
  %i.am = zext i8 %i.al to i32                    ; 9 uses
  %i.an = icmp samesign ugt i32 %i.k, %i.am
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = sub nsw i32 %i.am, %i.k
  %i.ap = shl nsw i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = mul nsw i64 %i.aq, %i.aq
  %i.as = sub nsw i32 %i.am, %i.t
  %i.at = shl nsw i32 %i.as, 1
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.au
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.aw = icmp samesign ult i32 %i.t, %i.am
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = sub nuw nsw i32 %i.am, %i.t
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, %i.az
  %i.bb = sub nuw nsw i32 %i.am, %i.k
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = mul nuw nsw i64 %i.bd, %i.bd
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not162.i = icmp samesign ult i32 %i.v, %i.am
  br i1 %.not162.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = sub nsw i32 %i.am, %i.t
  %i.bg = shl nsw i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.bh
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bj = sub nuw nsw i32 %i.am, %i.k
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.0134.i = phi i64 [ %i.ar, %bb.c ], [ %i.ba, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ] ; 4 uses
  %.0.i = phi i64 [ %i.av, %bb.c ], [ %i.be, %bb.e ], [ %i.bi, %bb.g ], [ %i.bm, %bb.h ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !51
  %i.bp = zext i8 %i.bo to i32                    ; 9 uses
  %i.bq = icmp samesign ugt i32 %i.n, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = sub nsw i32 %i.bp, %i.n
  %i.bs = mul nsw i32 %i.br, 3
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = mul nsw i64 %i.bt, %i.bt
  %i.bv = add nuw nsw i64 %i.bu, %.0134.i
  %i.bw = sub nsw i32 %i.bp, %i.w
  %i.bx = mul nsw i32 %i.bw, 3
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.by
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ca = icmp samesign ult i32 %i.w, %i.bp
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = sub nuw nsw i32 %i.bp, %i.w
  %i.cc = mul nuw nsw i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cd, %i.cd
  %i.cf = add nuw nsw i64 %i.ce, %.0134.i
  %i.cg = sub nuw nsw i32 %i.bp, %i.n
  %i.ch = mul nuw nsw i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = mul nuw nsw i64 %i.ci, %i.ci
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %.not163.i = icmp samesign ult i32 %i.y, %i.bp
  br i1 %.not163.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = sub nsw i32 %i.bp, %i.w
  %i.cl = mul nsw i32 %i.ck, 3
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %i.cm
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.co = sub nuw nsw i32 %i.bp, %i.n
  %i.cp = mul nuw nsw i32 %i.co, 3
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = mul nuw nsw i64 %i.cq, %i.cq
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j
  %.1135.i = phi i64 [ %i.bv, %bb.j ], [ %i.cf, %bb.l ], [ %.0134.i, %bb.n ], [ %.0134.i, %bb.o ] ; 4 uses
  %.pn.i = phi i64 [ %i.bz, %bb.j ], [ %i.cj, %bb.l ], [ %i.cn, %bb.n ], [ %i.cr, %bb.o ]
  %.1.i = add nuw nsw i64 %.pn.i, %.0.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cu = zext i8 %i.ct to i32                    ; 9 uses
  %i.cv = icmp samesign ugt i32 %i.q, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = sub nsw i32 %i.cu, %i.q
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.cx
  %i.cz = add nsw i64 %i.cy, %.1135.i
  %i.da = sub nsw i32 %i.cu, %i.z
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = mul nsw i64 %i.db, %i.db
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.dd = icmp samesign ult i32 %i.z, %i.cu
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = sub nuw nsw i32 %i.cu, %i.z
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, %i.df
  %i.dh = add nsw i64 %i.dg, %.1135.i
  %i.di = sub nuw nsw i32 %i.cu, %i.q
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, %i.dj
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %.not164.i = icmp samesign ult i32 %i.ab, %i.cu
  br i1 %.not164.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
