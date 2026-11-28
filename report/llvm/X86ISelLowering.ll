Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7563
loop-unroll.NumCompletelyUnrolled: 257
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZL34canonicalizeShuffleMaskWithCommuteN4llvm8ArrayRefIiEE:bb.a
  %i.ae = icmp eq i32 %.284.lcssa, %.281.lcssa
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.af = sdiv i32 %i.a, 2
  %i.ag = sext i32 %i.af to i64
  %.idx138 = shl nsw i64 %i.ag, 2                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.idx138
  %.off = add i32 %i.a, 1
  %.not90115 = icmp ult i32 %.off, 3
  br i1 %.not90115, label %.preheader109, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.e
  %i.ai = add nsw i64 %.idx138, -4                ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.ai, 28
  br i1 %min.iters.check182, label %.lr.ph120.preheader273, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph120.preheader
  %n.vec184 = and i64 %i.ak, 9223372036854775800  ; 3 uses
  %i.al = shl i64 %n.vec184, 2
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next196, %vector.body187 ] ; 2 uses
  %vec.phi189 = phi <4 x i32> [ zeroinitializer, %vector.ph183 ], [ %i.bd, %vector.body187 ]
  %vec.phi190 = phi <4 x i32> [ zeroinitializer, %vector.ph183 ], [ %i.be, %vector.body187 ]
  %vec.phi191 = phi <4 x i32> [ zeroinitializer, %vector.ph183 ], [ %i.ax, %vector.body187 ]
  %vec.phi192 = phi <4 x i32> [ zeroinitializer, %vector.ph183 ], [ %i.ay, %vector.body187 ]
  %i.an = shl i64 %index188, 2
  %next.gep193 = getelementptr i8, ptr %0, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <4 x i32>, ptr %next.gep193, align 4, !tbaa !240 ; 2 uses
  %wide.load195 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !240 ; 2 uses
  %i.ap = icmp slt <4 x i32> %wide.load194, %broadcast.splat186 ; 2 uses
  %i.aq = icmp slt <4 x i32> %wide.load195, %broadcast.splat186 ; 2 uses
  %i.ar = icmp sgt <4 x i32> %wide.load194, splat (i32 -1)
  %i.as = icmp sgt <4 x i32> %wide.load195, splat (i32 -1)
  %i.at = and <4 x i1> %i.ap, %i.ar
  %i.au = and <4 x i1> %i.aq, %i.as
  %i.av = zext <4 x i1> %i.at to <4 x i32>
  %i.aw = zext <4 x i1> %i.au to <4 x i32>
  %i.ax = add <4 x i32> %vec.phi191, %i.av        ; 2 uses
  %i.ay = add <4 x i32> %vec.phi192, %i.aw        ; 2 uses
  %i.az = xor <4 x i1> %i.ap, splat (i1 true)
  %i.ba = xor <4 x i1> %i.aq, splat (i1 true)
  %i.bb = zext <4 x i1> %i.az to <4 x i32>
  %i.bc = zext <4 x i1> %i.ba to <4 x i32>
  %i.bd = add <4 x i32> %vec.phi189, %i.bb        ; 2 uses
  %i.be = add <4 x i32> %vec.phi190, %i.bc        ; 2 uses
  %index.next196 = add nuw i64 %index188, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next196, %n.vec184
  br i1 %i.bf, label %middle.block197, label %vector.body187, !llvm.loop !4255

middle.block197:                                  ; preds = %vector.body187
  %bin.rdx198 = add <4 x i32> %i.be, %i.bd
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx198) ; 2 uses
  %bin.rdx199 = add <4 x i32> %i.ay, %i.ax
  %i.bh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx199) ; 2 uses
  %cmp.n200 = icmp eq i64 %i.ak, %n.vec184
  br i1 %cmp.n200, label %._crit_edge121, label %.lr.ph120.preheader273

.lr.ph120.preheader273:                           ; preds = %.lr.ph120.preheader, %middle.block197
  %.071118.ph = phi ptr [ %0, %.lr.ph120.preheader ], [ %i.am, %middle.block197 ]
  %.072117.ph = phi i32 [ 0, %.lr.ph120.preheader ], [ %i.bg, %middle.block197 ]
  %.074116.ph = phi i32 [ 0, %.lr.ph120.preheader ], [ %i.bh, %middle.block197 ]
  br label %.lr.ph120

._crit_edge121:                                   ; preds = %.lr.ph120, %middle.block197
  %.175.lcssa = phi i32 [ %i.bh, %middle.block197 ], [ %.175, %.lr.ph120 ] ; 2 uses
  %.173.lcssa = phi i32 [ %i.bg, %middle.block197 ], [ %.173, %.lr.ph120 ] ; 2 uses
  %i.bi = icmp samesign ugt i32 %.173.lcssa, %.175.lcssa
  br i1 %i.bi, label %.critedge, label %bb.f

.lr.ph120:                                        ; preds = %.lr.ph120.preheader273, %.lr.ph120
  %.071118 = phi ptr [ %i.bm, %.lr.ph120 ], [ %.071118.ph, %.lr.ph120.preheader273 ] ; 2 uses
  %.072117 = phi i32 [ %.173, %.lr.ph120 ], [ %.072117.ph, %.lr.ph120.preheader273 ]
  %.074116 = phi i32 [ %.175, %.lr.ph120 ], [ %.074116.ph, %.lr.ph120.preheader273 ]
  %i.bj = load i32, ptr %.071118, align 4, !tbaa !240 ; 2 uses
  %.not94 = icmp slt i32 %i.bj, %i.a              ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  %narrow = and i1 %.not94, %i.bk
  %spec.select = zext i1 %narrow to i32
  %.175 = add nuw nsw i32 %.074116, %spec.select  ; 2 uses
  %not..not94 = xor i1 %.not94, true
  %i.bl = zext i1 %not..not94 to i32
  %.173 = add nuw nsw i32 %.072117, %i.bl         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.071118, i64 4 ; 2 uses
  %.not90 = icmp eq ptr %i.bm, %i.ah
  br i1 %.not90, label %._crit_edge121, label %.lr.ph120, !llvm.loop !4256

bb.f:                                             ; preds = %._crit_edge121
  %i.bn = icmp eq i32 %.173.lcssa, %.175.lcssa
  %i.bo = icmp sgt i32 %i.a, 0
  %or.cond171 = and i1 %i.bn, %i.bo
  br i1 %or.cond171, label %.lr.ph127.preheader, label %.critedge96

.preheader109:                                    ; preds = %bb.e
  %.old = icmp sgt i32 %i.a, 0
  br i1 %.old, label %.lr.ph127.preheader, label %.critedge96

.lr.ph127.preheader:                              ; preds = %bb.f, %.preheader109
  %wide.trip.count = and i64 %1, 2147483647       ; 5 uses
  %min.iters.check205 = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check205, label %.lr.ph127.preheader267, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph127.preheader
  %n.vec207 = and i64 %1, 2147483640              ; 3 uses
  %broadcast.splatinsert208 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat209 = shufflevector <4 x i32> %broadcast.splatinsert208, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph206
  %index211 = phi i64 [ 0, %vector.ph206 ], [ %index.next218, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.cb, %vector.body210 ]
  %vec.phi213 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.cc, %vector.body210 ]
  %vec.phi214 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.bx, %vector.body210 ]
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.by, %vector.body210 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph206 ], [ %vec.ind.next, %vector.body210 ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index211 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load216 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !240 ; 2 uses
  %wide.load217 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !240 ; 2 uses
  %i.br = icmp slt <4 x i32> %wide.load216, %broadcast.splat209
  %i.bs = icmp slt <4 x i32> %wide.load217, %broadcast.splat209
  %i.bt = icmp ult <4 x i32> %wide.load216, %broadcast.splat209
  %i.bu = icmp ult <4 x i32> %wide.load217, %broadcast.splat209
  %i.bv = select <4 x i1> %i.bt, <4 x i32> %vec.ind, <4 x i32> zeroinitializer
  %i.bw = select <4 x i1> %i.bu, <4 x i32> %step.add, <4 x i32> zeroinitializer
  %i.bx = add <4 x i32> %i.bv, %vec.phi214        ; 2 uses
  %i.by = add <4 x i32> %i.bw, %vec.phi215        ; 2 uses
  %i.bz = select <4 x i1> %i.br, <4 x i32> zeroinitializer, <4 x i32> %vec.ind
  %i.ca = select <4 x i1> %i.bs, <4 x i32> zeroinitializer, <4 x i32> %step.add
  %i.cb = add <4 x i32> %i.bz, %vec.phi212        ; 2 uses
  %i.cc = add <4 x i32> %i.ca, %vec.phi213        ; 2 uses
  %index.next218 = add nuw i64 %index211, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cd = icmp eq i64 %index.next218, %n.vec207
  br i1 %i.cd, label %middle.block219, label %vector.body210, !llvm.loop !4257

middle.block219:                                  ; preds = %vector.body210
  %bin.rdx220 = add <4 x i32> %i.cc, %i.cb
  %i.ce = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx220) ; 2 uses
  %bin.rdx221 = add <4 x i32> %i.by, %i.bx
  %i.cf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx221) ; 2 uses
  %cmp.n222 = icmp eq i64 %wide.trip.count, %n.vec207
  br i1 %cmp.n222, label %._crit_edge128, label %.lr.ph127.preheader267

.lr.ph127.preheader267:                           ; preds = %.lr.ph127.preheader, %middle.block219
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph127.preheader ], [ %n.vec207, %middle.block219 ]
  %.067125.ph = phi i32 [ 0, %.lr.ph127.preheader ], [ %i.ce, %middle.block219 ]
  %.069124.ph = phi i32 [ 0, %.lr.ph127.preheader ], [ %i.cf, %middle.block219 ]
  br label %.lr.ph127

._crit_edge128:                                   ; preds = %.lr.ph127, %middle.block219
  %.170.lcssa = phi i32 [ %i.cf, %middle.block219 ], [ %.170, %.lr.ph127 ] ; 2 uses
  %.168.lcssa = phi i32 [ %i.ce, %middle.block219 ], [ %.168, %.lr.ph127 ] ; 2 uses
  %i.cg = icmp samesign ult i32 %.168.lcssa, %.170.lcssa
  br i1 %i.cg, label %.critedge, label %bb.g

.lr.ph127:                                        ; preds = %.lr.ph127.preheader267, %.lr.ph127
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph127 ], [ %indvars.iv.ph, %.lr.ph127.preheader267 ] ; 3 uses
  %.067125 = phi i32 [ %.168, %.lr.ph127 ], [ %.067125.ph, %.lr.ph127.preheader267 ]
  %.069124 = phi i32 [ %.170, %.lr.ph127 ], [ %.069124.ph, %.lr.ph127.preheader267 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !240 ; 2 uses
  %.not93 = icmp slt i32 %i.ci, %i.a
  %i.cj = icmp ult i32 %i.ci, %i.a
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select95 = select i1 %i.cj, i32 %i.ck, i32 0
  %.170 = add nuw nsw i32 %spec.select95, %.069124 ; 2 uses
  %i.cl = select i1 %.not93, i32 0, i32 %i.ck
  %.168 = add nuw nsw i32 %i.cl, %.067125         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge128, label %.lr.ph127, !llvm.loop !4258

bb.g:                                             ; preds = %._crit_edge128
  %i.cm = icmp eq i32 %.168.lcssa, %.170.lcssa
  br i1 %i.cm, label %.lr.ph134.preheader, label %.critedge96

.lr.ph134.preheader:                              ; preds = %bb.g
  %wide.trip.count143 = and i64 %1, 2147483647
  %min.iters.check227 = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check227, label %.lr.ph134.preheader264, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph134.preheader
  %n.vec229 = and i64 %1, 2147483640              ; 3 uses
  %broadcast.splatinsert230 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat231 = shufflevector <4 x i32> %broadcast.splatinsert230, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph228
  %index233 = phi i64 [ 0, %vector.ph228 ], [ %index.next248, %vector.body232 ] ; 2 uses
  %vec.phi235.a = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %predphi246, %vector.body232 ]
  %vec.phi236.a = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %predphi247, %vector.body232 ]
  %vec.phi237.a = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %predphi244.a, %vector.body232 ]
  %vec.ind238.a = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %predphi245.a, %vector.body232 ]
  %vec.ind239 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph228 ], [ %vec.ind.next250, %vector.body232 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index233 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load242 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !240 ; 2 uses
  %wide.load243 = load <4 x i32>, ptr %i.co, align 4, !tbaa !240 ; 2 uses
  %i.cp = icmp slt <4 x i32> %wide.load242, %broadcast.splat231 ; 2 uses
  %i.cq = icmp slt <4 x i32> %wide.load243, %broadcast.splat231 ; 2 uses
  %i.cr = and <4 x i32> %vec.ind239, splat (i32 1) ; 2 uses
  %i.cs = and <4 x i32> %vec.ind239, splat (i32 1) ; 2 uses
  %i.ct = icmp sgt <4 x i32> %wide.load242, splat (i32 -1)
  %i.cu = icmp sgt <4 x i32> %wide.load243, splat (i32 -1)
  %i.cv = and <4 x i1> %i.cp, %i.ct
  %i.cw = and <4 x i1> %i.cq, %i.cu
  %i.cx = select <4 x i1> %i.cv, <4 x i32> %i.cr, <4 x i32> zeroinitializer
  %predphi244.a = add <4 x i32> %vec.phi237.a, %i.cx ; 2 uses
  %i.cy = select <4 x i1> %i.cw, <4 x i32> %i.cs, <4 x i32> zeroinitializer
  %predphi245.a = add <4 x i32> %vec.ind238.a, %i.cy ; 2 uses
  %i.cz = select <4 x i1> %i.cp, <4 x i32> zeroinitializer, <4 x i32> %i.cr
  %predphi246 = add <4 x i32> %vec.phi235.a, %i.cz ; 2 uses
  %i.da = select <4 x i1> %i.cq, <4 x i32> zeroinitializer, <4 x i32> %i.cs
  %predphi247 = add <4 x i32> %vec.phi236.a, %i.da ; 2 uses
  %index.next248 = add nuw i64 %index233, 8       ; 2 uses
  %vec.ind.next250 = add <4 x i32> %vec.ind239, splat (i32 8)
  %i.db = icmp eq i64 %index.next248, %n.vec229
  br i1 %i.db, label %middle.block251, label %vector.body232, !llvm.loop !4259

middle.block251:                                  ; preds = %vector.body232
  %bin.rdx252 = add <4 x i32> %predphi247, %predphi246
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx252) ; 2 uses
  %bin.rdx253 = add <4 x i32> %predphi245.a, %predphi244.a
  %i.dd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx253) ; 2 uses
  %cmp.n254 = icmp eq i64 %wide.trip.count, %n.vec229
  br i1 %cmp.n254, label %._crit_edge135, label %.lr.ph134.preheader264

.lr.ph134.preheader264:                           ; preds = %.lr.ph134.preheader, %middle.block251
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph134.preheader ], [ %n.vec229, %middle.block251 ]
  %.063132.ph = phi i32 [ 0, %.lr.ph134.preheader ], [ %i.dc, %middle.block251 ]
  %.064131.ph = phi i32 [ 0, %.lr.ph134.preheader ], [ %i.dd, %middle.block251 ]
  br label %.lr.ph134

._crit_edge135:                                   ; preds = %bb.k, %middle.block251
  %.165.lcssa = phi i32 [ %i.dd, %middle.block251 ], [ %.165, %bb.k ]
  %.1.lcssa = phi i32 [ %i.dc, %middle.block251 ], [ %.1, %bb.k ]
  %i.de = icmp slt i32 %.1.lcssa, %.165.lcssa
  br i1 %i.de, label %.critedge, label %.critedge96

.lr.ph134:                                        ; preds = %.lr.ph134.preheader264, %bb.k
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.k ], [ %indvars.iv140.ph, %.lr.ph134.preheader264 ] ; 4 uses
  %.063132 = phi i32 [ %.1, %bb.k ], [ %.063132.ph, %.lr.ph134.preheader264 ] ; 3 uses
  %.064131 = phi i32 [ %.165, %bb.k ], [ %.064131.ph, %.lr.ph134.preheader264 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv140
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !240 ; 2 uses
  %.not92 = icmp slt i32 %i.dg, %i.a
  br i1 %.not92, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph134
  %i.dh = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.di = and i32 %i.dh, 1
  %i.dj = add nsw i32 %i.di, %.063132
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph134
  %i.dk = icmp sgt i32 %i.dg, -1
  br i1 %i.dk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dl = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.dm = and i32 %i.dl, 1
  %i.dn = add nsw i32 %i.dm, %.064131
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %.165 = phi i32 [ %.064131, %bb.h ], [ %i.dn, %bb.j ], [ %.064131, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %i.dj, %bb.h ], [ %.063132, %bb.j ], [ %.063132, %bb.i ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge135, label %.lr.ph134, !llvm.loop !4260

.critedge96:                                      ; preds = %.preheader109, %bb.g, %._crit_edge135, %bb.f
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge96, %._crit_edge121, %._crit_edge128, %._crit_edge135, %bb.d, %._crit_edge
  %.5 = phi i1 [ false, %bb.d ], [ true, %._crit_edge ], [ true, %._crit_edge121 ], [ true, %._crit_edge135 ], [ true, %._crit_edge128 ], [ false, %.critedge96 ], [ false, %bb.a ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL18lower128BitShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) unnamed_addr #1 {
bb.a:
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %11 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %12 = alloca %"class.llvm::ArrayRef.421", align 8 ; 20 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 28 uses
  %14 = alloca %class.anon.1522, align 1          ; 3 uses
  %15 = alloca %class.anon.1524, align 8          ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %17 = alloca %"class.llvm::SmallVector.402", align 8 ; 23 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %28 = alloca %"struct.std::array.1525", align 4 ; 21 uses
  %29 = alloca %"struct.std::array.1525", align 4 ; 21 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %37 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %39 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 11 uses
  %43 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 11 uses
  %45 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %46 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %47 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %48 = alloca %"class.llvm::SmallVector.429", align 8 ; 7 uses
  %49 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %53 = alloca %"class.llvm::SmallVector.527", align 8 ; 15 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %56 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 11 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %69 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %70 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %71 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %72 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %73 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %74 = alloca %"class.llvm::SDValue", align 8    ; 17 uses
  %75 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %78 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %80 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %81 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %82 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %85 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %i.f = alloca [4 x i32], align 16               ; 4 uses
  %86 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %87 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %88 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %89 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %90 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %91 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %92 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %93 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %94 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %i.g = alloca [4 x i32], align 16               ; 7 uses
  %i.h = alloca [4 x i32], align 16               ; 6 uses
  %i.i = alloca [4 x i32], align 16               ; 4 uses
  %95 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %97 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %98 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %99 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %100 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %101 = alloca %"class.llvm::SDLoc", align 8     ; 4 uses
  %102 = alloca %"class.llvm::SDLoc", align 8     ; 4 uses
  %103 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %104 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %105 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %106 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %107 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %i.j = alloca [2 x i32], align 8                ; 4 uses
  %108 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %109 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %110 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %111 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %i.k = alloca [4 x i32], align 16               ; 7 uses
  %112 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %113 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %i.l = alloca [2 x i32], align 8                ; 4 uses
  %114 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %115 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %116 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
  %117 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  switch i16 %3, label %bb.jm [
    i16 124, label %bb.b
    i16 94, label %bb.c
    i16 154, label %bb.u
    i16 73, label %bb.ar
    i16 136, label %bb.bx
    i16 62, label %bb.ds
    i16 112, label %bb.fi
    i16 48, label %bb.fo
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 62, ptr null, ptr %4, i32 %5) #39 ; 2 uses
end_hunk_0
