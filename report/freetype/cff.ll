Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_charset_load:bb.a

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %vec.ind, ptr %gep, align 2, !tbaa !66
  store <8 x i16> %step.add, ptr %i.ba, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !293

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val130 = phi i16 [ %i.az, %vec.epilog.iter.check ], [ %i.z, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.au, 8589934588           ; 5 uses
  %i.bc = add nuw nsw i64 %n.vec131, %i.aq        ; 2 uses
  %i.bd = trunc i64 %n.vec131 to i32
  %i.be = trunc i64 %n.vec131 to i16
  %i.bf = add i16 %i.z, %i.be
  %broadcast.splatinsert132 = insertelement <4 x i16> poison, i16 %bc.resume.val130, i64 0
  %broadcast.splat133 = shufflevector <4 x i16> %broadcast.splatinsert132, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction134 = add <4 x i16> %broadcast.splat133, <i16 0, i16 1, i16 2, i16 3>
  %invariant.gep180 = getelementptr [2 x i8], ptr %i.ap, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind136 = phi <4 x i16> [ %induction134, %vec.epilog.ph ], [ %vec.ind.next138, %vec.epilog.vector.body ] ; 2 uses
  %gep181 = getelementptr [2 x i8], ptr %invariant.gep180, i64 %index135
  store <4 x i16> %vec.ind136, ptr %gep181, align 2, !tbaa !66
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %vec.ind.next138 = add <4 x i16> %vec.ind136, splat (i16 4)
  %i.bg = icmp eq i64 %index.next137, %n.vec131
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !616

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.au, %n.vec131
  br i1 %cmp.n139, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.078115.ph = phi i32 [ 0, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.083113.ph = phi i16 [ %i.z, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.078115 = phi i32 [ %i.bi, %vec.epilog.scalar.ph ], [ %.078115.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.083113 = phi i16 [ %i.bj, %vec.epilog.scalar.ph ], [ %.083113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv
  store i16 %.083113, ptr %i.bh, align 2, !tbaa !66
  %i.bi = add nuw nsw i32 %.078115, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = add i16 %.083113, 1
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.l
  %i.bl = icmp samesign ult i32 %.078115, %.180.fr
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !617

bb.l:                                             ; preds = %bb.e
  store i32 3, ptr %i.b, align 4, !tbaa !67
  br label %thread-pre-split

.loopexit112:                                     ; preds = %.loopexit, %bb.g, %._crit_edge
  %.not101 = icmp eq i8 %5, 0
  br i1 %.not101, label %thread-pre-split, label %bb.x

bb.m:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.bn, align 8, !tbaa !621
  %i.bo = trunc nuw nsw i64 %4 to i32
  switch i32 %i.bo, label %default.unreachable127 [
    i32 0, label %bb.n
    i32 1, label %bb.q
    i32 2, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp ugt i32 %1, 229
  br i1 %i.bp, label %.thread110.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = zext nneg i32 %1 to i64                 ; 2 uses
  %i.br = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.bq, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !71
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !67
  %.not92 = icmp eq i32 %i.bt, 0
  br i1 %.not92, label %bb.p, label %.thread110

bb.p:                                             ; preds = %bb.o
  %i.bu = shl nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.br, ptr noundef nonnull align 16 dereferenceable(1) @cff_isoadobe_charset, i64 %i.bu, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  %i.bv = icmp ugt i32 %1, 166
  br i1 %i.bv, label %.thread110.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = zext nneg i32 %1 to i64                 ; 2 uses
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !71
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !67
  %.not91 = icmp eq i32 %i.bz, 0
  br i1 %.not91, label %bb.s, label %.thread110

bb.s:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bx, ptr noundef nonnull align 16 dereferenceable(1) @cff_expert_charset, i64 %i.ca, i1 false)
  br label %bb.w

bb.t:                                             ; preds = %bb.m
  %i.cb = icmp ugt i32 %1, 87
  br i1 %i.cb, label %.thread110.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cd = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cc, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !71
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !67
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.v, label %.thread110

bb.v:                                             ; preds = %bb.u
  %i.cg = shl nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cd, ptr noundef nonnull align 16 dereferenceable(1) @cff_expertsubset_charset, i64 %i.cg, i1 false)
  br label %bb.w

default.unreachable127:                           ; preds = %bb.m
  unreachable

bb.w:                                             ; preds = %bb.p, %bb.s, %bb.v
  %.not101.old = icmp eq i8 %5, 0
  br i1 %.not101.old, label %thread-pre-split, label %bb.x

bb.x:                                             ; preds = %.loopexit112, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !147
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %iter.check156, label %cff_charset_compute_cids.exit

iter.check156:                                    ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !71 ; 3 uses
  %wide.trip.count.i = zext i32 %1 to i64         ; 6 uses
  %min.iters.check143.a = icmp ult i32 %1, 4
  br i1 %min.iters.check143.a, label %vec.epilog.scalar.ph157.preheader, label %vector.main.loop.iter.check144

vector.main.loop.iter.check144:                   ; preds = %iter.check156
  %min.iters.check145 = icmp ult i32 %1, 16
  br i1 %min.iters.check145, label %vec.epilog.ph160, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check144
  %i.cl = and i64 %wide.trip.count.i, 12
  %n.vec147 = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.ph146, %vector.body148
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next152, %vector.body148 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph146 ], [ %i.co, %vector.body148 ]
  %vec.phi150 = phi <8 x i16> [ zeroinitializer, %vector.ph146 ], [ %i.cp, %vector.body148 ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index149 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <8 x i16>, ptr %i.cm, align 2, !tbaa !66
  %wide.load151 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !66
  %i.co = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.cp = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load151, <8 x i16> %vec.phi150) ; 2 uses
  %index.next152 = add nuw i64 %index149, 16      ; 2 uses
  %i.cq = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.cq, label %middle.block153, label %vector.body148, !llvm.loop !618

middle.block153:                                  ; preds = %vector.body148
  %rdx.minmax = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.co, <8 x i16> %i.cp)
  %i.cr = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i
  br i1 %cmp.n154, label %._crit_edge.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block153
  %min.epilog.iters.check159 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check159, label %vec.epilog.scalar.ph157.preheader, label %vec.epilog.ph160, !prof !293

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check144, %vec.epilog.iter.check158
  %vec.epilog.resume.val155 = phi i64 [ %n.vec147, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check144 ]
  %bc.merge.rdx = phi i16 [ %i.cr, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check144 ]
  %broadcast.splatinsert162 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat163 = shufflevector <4 x i16> %broadcast.splatinsert162, <4 x i16> poison, <4 x i32> zeroinitializer
  %n.vec159 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body164

vec.epilog.vector.body164:                        ; preds = %vec.epilog.vector.body164, %vec.epilog.ph160
  %index165 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph160 ], [ %index.next168, %vec.epilog.vector.body164 ] ; 2 uses
  %vec.phi166 = phi <4 x i16> [ %broadcast.splat163, %vec.epilog.ph160 ], [ %i.ct, %vec.epilog.vector.body164 ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index165
  %wide.load167 = load <4 x i16>, ptr %i.cs, align 2, !tbaa !66
  %i.ct = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load167, <4 x i16> %vec.phi166) ; 2 uses
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next168, %n.vec159
  br i1 %i.cu, label %vec.epilog.middle.block169, label %vec.epilog.vector.body164, !llvm.loop !619

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body164
  %i.cv = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ct) ; 2 uses
  %cmp.n170 = icmp eq i64 %n.vec159, %wide.trip.count.i
  br i1 %cmp.n170, label %._crit_edge.i, label %vec.epilog.scalar.ph157.preheader

vec.epilog.scalar.ph157.preheader:                ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block169
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check156 ], [ %n.vec147, %vec.epilog.iter.check158 ], [ %n.vec159, %vec.epilog.middle.block169 ]
  %.029.i.ph = phi i16 [ 0, %iter.check156 ], [ %i.cr, %vec.epilog.iter.check158 ], [ %i.cv, %vec.epilog.middle.block169 ]
  br label %vec.epilog.scalar.ph157

vec.epilog.scalar.ph157:                          ; preds = %vec.epilog.scalar.ph157.preheader, %vec.epilog.scalar.ph157
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph157 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph157.preheader ] ; 2 uses
  %.029.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph157 ], [ %.029.i.ph, %vec.epilog.scalar.ph157.preheader ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !66
  %spec.select.i = call i16 @llvm.umax.i16(i16 %i.cx, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph157, !llvm.loop !620

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph157, %vec.epilog.middle.block169, %middle.block153
  %spec.select.i.lcssa = phi i16 [ %i.cv, %vec.epilog.middle.block169 ], [ %i.cr, %middle.block153 ], [ %spec.select.i, %vec.epilog.scalar.ph157 ] ; 2 uses
  %i.cy = zext i16 %spec.select.i.lcssa to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cz, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.da, ptr %i.db, align 8, !tbaa !146
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not26.i = icmp eq i32 %i.dc, 0
  br i1 %.not26.i, label %.preheader.i, label %cff_charset_compute_cids.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %.12430.i = add i32 %1, -1
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !71
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.preheader.i
  %.12431.i = phi i32 [ %.12430.i, %.preheader.i ], [ %.124.i, %bb.y ] ; 3 uses
  %i.de = trunc i32 %.12431.i to i16
  %i.df = zext i32 %.12431.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !66
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.di
  store i16 %i.de, ptr %i.dj, align 2, !tbaa !66
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.dk = icmp ult i32 %.124.i, %1
  br i1 %i.dk, label %bb.y, label %._crit_edge33.i, !llvm.loop !4

._crit_edge33.i:                                  ; preds = %bb.y
  %i.dl = zext i16 %spec.select.i.lcssa to i32
  store i32 %i.dl, ptr %i.ch, align 8, !tbaa !147
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.dm, align 4, !tbaa !294
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.x, %._crit_edge.i, %._crit_edge33.i
  %i.dn = phi i32 [ %i.dc, %._crit_edge.i ], [ 0, %bb.x ], [ 0, %._crit_edge33.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !67
  br label %bb.z

thread-pre-split:                                 ; preds = %.lr.ph118, %bb.i, %bb.j, %bb.c, %bb.f, %bb.d, %bb.l, %bb.b, %bb.w, %.loopexit112
  %.pr = load i32, ptr %i.b, align 4, !tbaa !67
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %cff_charset_compute_cids.exit
  %i.do = phi i32 [ %.pr, %thread-pre-split ], [ %i.dn, %cff_charset_compute_cids.exit ]
  %.not102 = icmp eq i32 %i.do, 0
  br i1 %.not102, label %bb.aa, label %.thread110

.thread110.sink.split:                            ; preds = %bb.t, %bb.q, %bb.n
  store i32 3, ptr %i.b, align 4, !tbaa !67
  br label %.thread110

.thread110:                                       ; preds = %.thread110.sink.split, %bb.o, %bb.r, %bb.u, %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dq) #18
  store ptr null, ptr %i.dp, align 8, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.ds) #18
  store ptr null, ptr %i.dr, align 8, !tbaa !146
  store i32 0, ptr %0, align 8, !tbaa !148
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !621
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %bb.aa

bb.aa:                                            ; preds = %.thread110, %bb.z
  %i.du = phi i32 [ %.pre, %.thread110 ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.du
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_encoding_load(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %5, 1
  br i1 %i.e, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 7 uses
  %i.h = add i64 %5, %4                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  store i64 %i.h, ptr %i.i, align 8, !tbaa !136
  %i.j = tail call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.h) #18 ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %.not130 = icmp eq i32 %i.j, 0
  br i1 %.not130, label %bb.d, label %.loopexit151

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.l = zext i8 %i.k to i32
  store i32 %i.l, ptr %0, align 8, !tbaa !144
  %i.m = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not131 = icmp eq i32 %i.m, 0
  br i1 %.not131, label %bb.e, label %.loopexit151

bb.e:                                             ; preds = %bb.d
  %i.n = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not132 = icmp eq i32 %i.p, 0
  br i1 %.not132, label %bb.f, label %.loopexit151

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %0, align 8, !tbaa !144
  %i.r = and i32 %i.q, 127
  switch i32 %i.r, label %.loopexit151 [
    i32 0, label %bb.g
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i32 %i.o, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 8, !tbaa !135
  %i.u = zext i8 %i.n to i64
  %i.v = call i32 @FT_Stream_EnterFrame(ptr noundef %3, i64 noundef %i.u) #18 ; 3 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !67
  %.not136 = icmp eq i32 %i.v, 0
  br i1 %.not136, label %bb.h, label %.loopexit151

bb.h:                                             ; preds = %bb.g
  %.not137164 = icmp eq i8 %i.n, 0
  br i1 %.not137164, label %.thread, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254  ; 2 uses
  %i.y = zext i32 %2 to i64                       ; 3 uses
  %i.z = zext i8 %i.n to i64                      ; 2 uses
  %xtraiter248 = and i64 %i.z, 1
  %i.aa = icmp eq i8 %i.n, 1
  br i1 %i.aa, label %.lr.ph168.epil.preheader, label %.lr.ph168.preheader.new

.lr.ph168.preheader.new:                          ; preds = %.lr.ph168.preheader
  %unroll_iter = and i64 %i.z, 254
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.k, %.lr.ph168.preheader.new
  %indvars.iv192 = phi i64 [ 1, %.lr.ph168.preheader.new ], [ %indvars.iv.next193.1, %bb.k ] ; 5 uses
  %.0116166 = phi ptr [ %i.x, %.lr.ph168.preheader.new ], [ %i.al, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0116166, i64 1
  %i.ac = icmp samesign ult i64 %indvars.iv192, %i.y
  br i1 %i.ac, label %bb.i, label %.lr.ph168.1

bb.i:                                             ; preds = %.lr.ph168
  %i.ad = load i8, ptr %.0116166, align 1, !tbaa !130
  %i.ae = trunc i64 %indvars.iv192 to i16
  %i.af = zext i8 %i.ad to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !66
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv192
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !66
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !66
  br label %.lr.ph168.1

.lr.ph168.1:                                      ; preds = %.lr.ph168, %bb.i
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0116166, i64 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next193, %i.y
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph168.1
  %i.an = load i8, ptr %i.ab, align 1, !tbaa !130
  %i.ao = trunc i64 %indvars.iv.next193 to i16
  %i.ap = zext i8 %i.an to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ap
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !66
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !71
end_hunk_0
begin_hunk_1_@cff_encoding_load:bb.a
.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.u
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.1, %bb.u ], [ %indvars.iv185.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.1, %bb.u ], [ %indvars.iv183.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.cc = icmp samesign ult i64 %indvars.iv183, %i.bf
  %i.cd = icmp samesign ult i64 %indvars.iv185, 256
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %i.ce = trunc i64 %indvars.iv183 to i16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv185
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !66
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %indvars.iv183
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !66
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv185
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !66
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.s
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 3 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next184, %i.bf
  %i.cl = icmp ult i64 %indvars.iv185, 255
  %or.cond.1 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.cm = trunc i64 %indvars.iv.next184 to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next186
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !66
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv.next184
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !66
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next186
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !66
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2
  %exitcond190.not.1 = icmp eq i64 %indvars.iv.next184.1, %wide.trip.count
  br i1 %exitcond190.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !623

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.u, %bb.q
  %i.cs = add nuw nsw i32 %.1119159, 1            ; 2 uses
  %exitcond191.not = icmp eq i32 %i.cs, %i.o
  br i1 %exitcond191.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !624

._crit_edge163:                                   ; preds = %._crit_edge
  %i.ct = icmp ugt i32 %i.bn, 256
  br i1 %i.ct, label %bb.v, label %.thread146

bb.v:                                             ; preds = %._crit_edge163
  store i32 256, ptr %i.be, align 8, !tbaa !135
  br label %.thread146

.thread146:                                       ; preds = %bb.m, %._crit_edge163, %bb.v, %.thread
  %i.cu = load i32, ptr %0, align 8, !tbaa !144
  %i.cv = and i32 %i.cu, 128
  %.not138 = icmp eq i32 %i.cv, 0
  br i1 %.not138, label %.thread146..loopexit151_crit_edge, label %bb.w

.thread146..loopexit151_crit_edge:                ; preds = %.thread146
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.loopexit151

bb.w:                                             ; preds = %.thread146
  %i.cw = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not139 = icmp eq i32 %i.cy, 0
  %i.cz = icmp ne i8 %i.cw, 0
  %or.cond176 = select i1 %.not139, i1 %i.cz, i1 false
  br i1 %or.cond176, label %.lr.ph173, label %.loopexit151

.lr.ph173:                                        ; preds = %bb.w
  %.not178 = icmp eq i32 %2, 0
  %wide.trip.count200 = zext i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph173, %.loopexit
  %.2120172 = phi i32 [ 0, %.lr.ph173 ], [ %i.dm, %.loopexit ]
  %i.da = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.db = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not140 = icmp eq i32 %i.db, 0
  br i1 %.not140, label %bb.y, label %.loopexit151

bb.y:                                             ; preds = %bb.x
  %i.dc = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not141 = icmp eq i32 %i.dd, 0
  br i1 %.not141, label %bb.z, label %.loopexit151

bb.z:                                             ; preds = %bb.y
  %i.de = zext i8 %i.da to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.de
  store i16 %i.dc, ptr %i.df, align 2, !tbaa !66
  br i1 %.not178, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.z
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph171, %bb.ac
  %indvars.iv197 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next198, %bb.ac ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv197
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !66
  %i.dj = icmp eq i16 %i.di, %i.dc
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = trunc i64 %indvars.iv197 to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.de
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !66
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %.loopexit, label %bb.aa, !llvm.loop !625

.loopexit:                                        ; preds = %bb.ac, %bb.z, %bb.ab
  %i.dm = add nuw nsw i32 %.2120172, 1            ; 2 uses
  %exitcond202.not = icmp eq i32 %i.dm, %i.cx
  br i1 %exitcond202.not, label %.loopexit151, label %bb.x, !llvm.loop !626

bb.ad:                                            ; preds = %bb.b
  %trunc = trunc nuw i64 %5 to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %trunc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dn, ptr noundef nonnull align 16 dereferenceable(512) @cff_standard_encoding, i64 512, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dn, ptr noundef nonnull align 16 dereferenceable(512) @cff_expert_encoding, i64 512, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.do, align 8, !tbaa !136
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !135
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !147 ; 2 uses
  %.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i, label %.preheader27.i, label %cff_charset_compute_cids.exit

.preheader27.i:                                   ; preds = %bb.ag
  %.not34.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %.not34.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader27.i
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !71  ; 3 uses
  %wide.trip.count.i = zext i32 %2 to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check231 = icmp ult i32 %2, 16
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dy, %vector.body ]
  %vec.phi232 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dz, %vector.body ]
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <8 x i16>, ptr %i.dw, align 2, !tbaa !66
  %wide.load233 = load <8 x i16>, ptr %i.dx, align 2, !tbaa !66
  %i.dy = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.dz = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load233, <8 x i16> %vec.phi232) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dy, <8 x i16> %i.dz)
  %i.eb = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !293

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %n.vec234 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next238, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi236 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ed, %vec.epilog.vector.body ]
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index235
  %wide.load237 = load <4 x i16>, ptr %i.ec, align 2, !tbaa !66
  %i.ed = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load237, <4 x i16> %vec.phi236) ; 2 uses
  %index.next238 = add nuw i64 %index235, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next238, %n.vec234
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !628

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ef = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ed) ; 2 uses
  %cmp.n239 = icmp eq i64 %n.vec234, %wide.trip.count.i
  br i1 %cmp.n239, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec234, %vec.epilog.middle.block ]
  %.029.i.ph = phi i16 [ 0, %iter.check ], [ %i.eb, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.029.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.029.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !66
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.eh, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !629

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader27.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader27.i ], [ %i.ef, %vec.epilog.middle.block ], [ %i.eb, %middle.block ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ei = zext i16 %.0.lcssa.i to i64
  %i.ej = add nuw nsw i64 %i.ei, 1
  %i.ek = call ptr @ft_mem_realloc(ptr noundef %i.dr, i64 noundef 2, i64 noundef 0, i64 noundef %i.ej, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !146
  %i.em = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not26.i = icmp eq i32 %i.em, 0
  br i1 %.not26.i, label %.preheader.i, label %cff_charset_compute_cids.exit.thread

cff_charset_compute_cids.exit.thread:             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit151

.preheader.i:                                     ; preds = %._crit_edge.i
  br i1 %.not34.i, label %._crit_edge33.i, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %.12430.i = add i32 %2, -1
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph32.i
  %.12431.i = phi i32 [ %.12430.i, %.lr.ph32.i ], [ %.124.i, %bb.ah ] ; 3 uses
  %i.eo = trunc i32 %.12431.i to i16
  %i.ep = zext i32 %.12431.i to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !66
  %i.es = zext i16 %i.er to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.es
  store i16 %i.eo, ptr %i.et, align 2, !tbaa !66
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.eu = icmp ult i32 %.124.i, %2
  br i1 %i.eu, label %bb.ah, label %._crit_edge33.i, !llvm.loop !4

._crit_edge33.i:                                  ; preds = %bb.ah, %.preheader.i
  %i.ev = zext i16 %.0.lcssa.i to i32             ; 2 uses
  store i32 %i.ev, ptr %i.ds, align 8, !tbaa !147
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %2, ptr %i.ew, align 4, !tbaa !294
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.ag, %._crit_edge33.i
  %i.ex = phi i32 [ %i.dt, %bb.ag ], [ %i.ev, %._crit_edge33.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %cff_charset_compute_cids.exit, %bb.ak
  %indvars.iv = phi i64 [ 0, %cff_charset_compute_cids.exit ], [ %indvars.iv.next.pre-phi, %bb.ak ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !66 ; 3 uses
  %.not128 = icmp eq i16 %i.fc, 0
  %i.fd = zext i16 %i.fc to i32
  %.not.i144 = icmp ult i32 %i.ex, %i.fd
  %or.cond226 = or i1 %.not128, %.not.i144
  br i1 %or.cond226, label %cff_charset_cid_to_gindex.exit.thread, label %cff_charset_cid_to_gindex.exit

cff_charset_cid_to_gindex.exit:                   ; preds = %bb.ai
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !146
  %i.ff = zext i16 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !66 ; 2 uses
  %.not129 = icmp eq i16 %i.fh, 0
  br i1 %.not129, label %cff_charset_cid_to_gindex.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %cff_charset_cid_to_gindex.exit
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !66
  %i.fj = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  store i32 %i.fk, ptr %i.dp, align 8, !tbaa !135
  br label %bb.ak

cff_charset_cid_to_gindex.exit.thread:            ; preds = %bb.ai, %cff_charset_cid_to_gindex.exit
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv
  store i16 0, ptr %i.fl, align 2, !tbaa !66
  store i16 0, ptr %i.fb, align 2, !tbaa !66
  %.pre203 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ak

bb.ak:                                            ; preds = %cff_charset_cid_to_gindex.exit.thread, %bb.aj
  %indvars.iv.next.pre-phi = phi i64 [ %.pre203, %cff_charset_cid_to_gindex.exit.thread ], [ %i.fj, %bb.aj ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 256
  br i1 %exitcond.not, label %.loopexit151, label %bb.ai, !llvm.loop !630

.loopexit151:                                     ; preds = %bb.ak, %.lr.ph162, %bb.n, %.loopexit, %bb.y, %bb.x, %bb.f, %bb.a, %.thread146..loopexit151_crit_edge, %cff_charset_compute_cids.exit.thread, %bb.g, %bb.w, %bb.c, %bb.d, %bb.e
  %i.fm = phi i32 [ %.pre, %.thread146..loopexit151_crit_edge ], [ 3, %bb.f ], [ 0, %.loopexit ], [ %i.bh, %.lr.ph162 ], [ %i.em, %cff_charset_compute_cids.exit.thread ], [ %i.v, %bb.g ], [ %i.cy, %bb.w ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 3, %bb.a ], [ %i.dd, %bb.y ], [ %i.db, %bb.x ], [ %i.bj, %bb.n ], [ 0, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.fm
}

declare hidden i32 @FT_Stream_ReadULong(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_vstore_done(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !272
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %.loopexit25, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24, %.lr.ph
  %i.e = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader24 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader24 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !276
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.g) #18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr null, ptr %i.i, align 8, !tbaa !276
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !272
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !631

.loopexit25:                                      ; preds = %.lr.ph, %.preheader24, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %.preheader24 ], [ %i.h, %.lr.ph ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.m) #18
  store ptr null, ptr %i.a, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !266  ; 3 uses
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit25
  %i.p = load i32, ptr %0, align 8, !tbaa !265
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader, %.lr.ph28
  %i.q = phi ptr [ %i.u, %.lr.ph28 ], [ %i.o, %.preheader ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph28 ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.t) #18
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !266  ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv32
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !271
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !265
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next33, %i.y
  br i1 %i.z, label %.lr.ph28, label %.loopexit, !llvm.loop !632

.loopexit:                                        ; preds = %.lr.ph28, %.preheader, %.loopexit25
  %i.aa = phi ptr [ null, %.loopexit25 ], [ %i.o, %.preheader ], [ %i.u, %.lr.ph28 ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.aa) #18
  store ptr null, ptr %i.n, align 8, !tbaa !266
  ret void
}

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

end_hunk_1
