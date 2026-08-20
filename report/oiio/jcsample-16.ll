inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@h2v2_downsample:bb.a

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.v
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.y
  %broadcast.splatinsert55 = insertelement <4 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat56 = shufflevector <4 x i16> %broadcast.splatinsert55, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = shl i64 %index57, 1
  %next.gep58 = getelementptr i8, ptr %i.ab, i64 %i.aj
  store <4 x i16> %broadcast.splat56, ptr %next.gep58, align 2, !tbaa !66
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n60, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01418.i.ph = phi i32 [ %i.n, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.01517.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01418.i = phi i32 [ %i.am, %vec.epilog.scalar.ph ], [ %.01418.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.al, %vec.epilog.scalar.ph ], [ %.01517.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i, i64 2
  store i16 %i.ad, ptr %.01517.i, align 2, !tbaa !66
  %i.am = add nsw i32 %.01418.i, -1
  %i.an = icmp sgt i32 %.01418.i, 1
  br i1 %i.an, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %expand_right_edge.exit, label %iter.check, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %._crit_edge.i, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !52 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = icmp ne i32 %i.h, 0
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge42.split

.lr.ph.preheader:                                 ; preds = %expand_right_edge.exit
  %wide.trip.count = zext nneg i32 %i.ap to i64
  %xtraiter = and i32 %i.h, 1
  %i.as = icmp eq i32 %i.h, 1
  %unroll_iter = and i32 %i.h, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod63 = trunc i32 %i.h to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next44, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv43 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64 ; 2 uses
  br i1 %i.as, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.02837 = phi ptr [ %i.ci, %.lr.ph.new ], [ %i.au, %.lr.ph ] ; 3 uses
  %.02936 = phi ptr [ %i.ck, %.lr.ph.new ], [ %i.ay, %.lr.ph ] ; 5 uses
  %.03035 = phi ptr [ %i.cj, %.lr.ph.new ], [ %i.aw, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.az = load i16, ptr %.03035, align 2, !tbaa !66
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.03035, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !66
  %i.bd = zext i16 %i.bc to i32
  %i.be = load i16, ptr %.02936, align 2, !tbaa !66
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02936, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !66
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.ba, 1
  %i.bk = add nuw nsw i32 %i.bj, %i.bd
  %i.bl = add nuw nsw i32 %i.bk, %i.bf
  %i.bm = add nuw nsw i32 %i.bl, %i.bi
  %i.bn = lshr i32 %i.bm, 2
  %i.bo = trunc nuw i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.02837, i64 2
  store i16 %i.bo, ptr %.02837, align 2, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %.03035, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %.02936, i64 4
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !66
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.03035, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !66
  %i.bw = zext i16 %i.bv to i32
  %i.bx = load i16, ptr %i.br, align 2, !tbaa !66
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.02936, i64 6
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !66
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.bt, 2
  %i.cd = add nuw nsw i32 %i.cc, %i.bw
  %i.ce = add nuw nsw i32 %i.cd, %i.by
  %i.cf = add nuw nsw i32 %i.ce, %i.cb
  %i.cg = lshr i32 %i.cf, 2
  %i.ch = trunc nuw i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %.02837, i64 4 ; 2 uses
  store i16 %i.ch, ptr %i.bp, align 2, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %.03035, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02936, i64 8 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !116

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.02837.epil.init = phi ptr [ %i.au, %.lr.ph ], [ %i.ci, %._crit_edge.unr-lcssa ]
  %.02936.epil.init = phi ptr [ %i.ay, %.lr.ph ], [ %i.ck, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03035.epil.init = phi ptr [ %i.aw, %.lr.ph ], [ %i.cj, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.cl = load i16, ptr %.03035.epil.init, align 2, !tbaa !66
  %i.cm = zext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.03035.epil.init, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !66
  %i.cp = zext i16 %i.co to i32
  %i.cq = load i16, ptr %.02936.epil.init, align 2, !tbaa !66
  %i.cr = zext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %.02936.epil.init, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !66
  %i.cu = zext i16 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cm, 1
  %i.cw = add nuw nsw i32 %i.cv, %i.cp
  %i.cx = add nuw nsw i32 %i.cw, %i.cr
  %i.cy = add nuw nsw i32 %i.cx, %i.cu
  %i.cz = lshr i32 %i.cy, 2
  %i.da = trunc nuw i32 %i.cz to i16
  store i16 %i.da, ptr %.02837.epil.init, align 2, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond48.not, label %._crit_edge42.split, label %.lr.ph, !llvm.loop !117

._crit_edge42.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @int_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = sdiv i32 %i.j, %i.l                      ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.o = load i32, ptr %i.n, align 8, !tbaa !53   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52   ; 5 uses
  %i.r = sdiv i32 %i.o, %i.q                      ; 4 uses
  %i.s = mul nsw i32 %i.r, %i.m                   ; 2 uses
  %i.t = sdiv i32 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.w = mul i32 %i.m, %i.h
  %i.x = sub i32 %i.w, %i.v                       ; 7 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp sgt i32 %i.o, 0
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.aa = zext i32 %i.v to i64
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  %i.ab = zext nneg i32 %i.x to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %min.iters.check115 = icmp ult i32 %i.x, 16
  %i.ac = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 2147483632              ; 5 uses
  %i.ad = trunc nuw nsw i64 %n.vec to i32
  %i.ae = sub nsw i32 %i.x, %i.ad
  %i.af = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  %n.vec117 = and i64 %i.ab, 2147483644           ; 4 uses
  %i.ag = trunc nuw nsw i64 %n.vec117 to i32
  %i.ah = sub nsw i32 %i.x, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec117, 1
  %cmp.n123 = icmp eq i64 %n.vec117, %i.ab
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.aa ; 6 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !66 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.af
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.aq, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ai
  %broadcast.splatinsert118 = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat119 = shufflevector <4 x i16> %broadcast.splatinsert118, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index120, 1
  %next.gep121 = getelementptr i8, ptr %i.al, i64 %i.at
  store <4 x i16> %broadcast.splat119, ptr %next.gep121, align 2, !tbaa !66
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n123, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01418.i.ph = phi i32 [ %i.x, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.01517.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01418.i = phi i32 [ %i.aw, %vec.epilog.scalar.ph ], [ %.01418.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.av, %vec.epilog.scalar.ph ], [ %.01517.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i, i64 2
  store i16 %i.an, ptr %.01517.i, align 2, !tbaa !66
  %i.aw = add nsw i32 %.01418.i, -1
  %i.ax = icmp sgt i32 %.01418.i, 1
  br i1 %i.ax, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !120

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %expand_right_edge.exit, label %iter.check, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %._crit_edge.i, %bb.a
  %i.ay = icmp sgt i32 %i.q, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %.not77 = icmp eq i32 %i.h, 0
  %i.az = icmp sgt i32 %i.m, 0
  %i.ba = sext i32 %i.t to i64                    ; 3 uses
  %i.bb = sext i32 %i.s to i64                    ; 3 uses
  br i1 %.not77, label %._crit_edge68.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bc = icmp sgt i32 %i.r, 0
  br i1 %i.bc, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.az, label %.preheader.lr.ph.us.us.preheader, label %.lr.ph.split.split.us.split

.preheader.lr.ph.us.us.preheader:                 ; preds = %.lr.ph.split.split.us
  %i.bd = zext nneg i32 %i.r to i64
  %wide.trip.count102 = zext nneg i32 %i.q to i64
  %4 = zext nneg i32 %i.r to i64
  %i.be = zext nneg i32 %i.m to i64               ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.m, 4
  %n.vec190 = and i64 %i.be, 2147483644           ; 4 uses
  %i.bf = shl nuw nsw i64 %n.vec190, 1
  %i.bg = trunc nuw nsw i64 %n.vec190 to i32
  %cmp.n198 = icmp eq i64 %n.vec190, %i.be
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %indvars.iv97 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next98, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %indvars.iv95 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next96, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv95
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv97
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge56.split.us.us.us.us.us, %.preheader.lr.ph.us.us
  %.04260.us.us.us.us = phi ptr [ %i.bi, %.preheader.lr.ph.us.us ], [ %i.ce, %._crit_edge56.split.us.us.us.us.us ] ; 2 uses
  %.04459.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.cg, %._crit_edge56.split.us.us.us.us.us ] ; 2 uses
  %.04558.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.cf, %._crit_edge56.split.us.us.us.us.us ]
  %i.bj = zext i32 %.04459.us.us.us.us to i64
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %.054.us.us.us.us.us = phi i64 [ %.lcssa, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv89
  %i.bk = load ptr, ptr %gep, align 8, !tbaa !64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bj ; 3 uses
  br i1 %min.iters.check188, label %scalar.ph.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.us.us.us.us.us
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bf
  %i.bn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.054.us.us.us.us.us, i64 0
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body191 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bn, %vector.ph189 ], [ %i.bs, %vector.body191 ]
  %vec.phi193 = phi <2 x i64> [ zeroinitializer, %vector.ph189 ], [ %i.bt, %vector.body191 ]
  %i.bo = shl i64 %index192, 1
  %next.gep194 = getelementptr i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep194, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep194, align 2, !tbaa !66
  %wide.load195 = load <2 x i16>, ptr %i.bp, align 2, !tbaa !66
  %i.bq = zext <2 x i16> %wide.load to <2 x i64>
  %i.br = zext <2 x i16> %wide.load195 to <2 x i64>
  %i.bs = add <2 x i64> %vec.phi, %i.bq           ; 2 uses
  %i.bt = add <2 x i64> %vec.phi193, %i.br        ; 2 uses
  %index.next196 = add nuw i64 %index192, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.bu, label %middle.block197, label %vector.body191, !llvm.loop !121

middle.block197:                                  ; preds = %vector.body191
  %bin.rdx = add <2 x i64> %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n198, label %._crit_edge.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.us.us, %middle.block197
  %.152.us.us.us.us.us.ph = phi i64 [ %.054.us.us.us.us.us, %.lr.ph.us.us.us.us.us ], [ %i.bv, %middle.block197 ]
  %.04351.us.us.us.us.us.ph = phi ptr [ %i.bl, %.lr.ph.us.us.us.us.us ], [ %i.bm, %middle.block197 ]
  %.04750.us.us.us.us.us.ph = phi i32 [ 0, %.lr.ph.us.us.us.us.us ], [ %i.bg, %middle.block197 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.152.us.us.us.us.us = phi i64 [ %i.bz, %scalar.ph ], [ %.152.us.us.us.us.us.ph, %scalar.ph.preheader ]
  %.04351.us.us.us.us.us = phi ptr [ %i.bw, %scalar.ph ], [ %.04351.us.us.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.04750.us.us.us.us.us = phi i32 [ %i.ca, %scalar.ph ], [ %.04750.us.us.us.us.us.ph, %scalar.ph.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 2
  %i.bx = load i16, ptr %.04351.us.us.us.us.us, align 2, !tbaa !66
  %i.by = zext i16 %i.bx to i64
  %i.bz = add nsw i64 %.152.us.us.us.us.us, %i.by ; 2 uses
  %i.ca = add nuw nsw i32 %.04750.us.us.us.us.us, 1 ; 2 uses
  %5 = icmp slt i32 %i.ca, %i.m
  br i1 %5, label %scalar.ph, label %._crit_edge.us.us.us.us.us, !llvm.loop !122

._crit_edge.us.us.us.us.us:                       ; preds = %scalar.ph, %middle.block197
  %.lcssa = phi i64 [ %i.bv, %middle.block197 ], [ %i.bz, %scalar.ph ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %6 = icmp samesign ult i64 %indvars.iv.next90, %i.bd
  br i1 %6, label %.lr.ph.us.us.us.us.us, label %._crit_edge56.split.us.us.us.us.us, !llvm.loop !123

._crit_edge56.split.us.us.us.us.us:               ; preds = %._crit_edge.us.us.us.us.us
  %i.cb = add nsw i64 %.lcssa, %i.ba
  %i.cc = sdiv i64 %i.cb, %i.bb
  %i.cd = trunc i64 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.04260.us.us.us.us, i64 2
  store i16 %i.cd, ptr %.04260.us.us.us.us, align 2, !tbaa !66
  %i.cf = add nuw i32 %.04558.us.us.us.us, 1      ; 2 uses
  %i.cg = add i32 %.04459.us.us.us.us, %i.m
  %exitcond94.not = icmp eq i32 %i.cf, %i.h
  br i1 %exitcond94.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !124

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge56.split.us.us.us.us.us
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, %4
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge68.split, label %.preheader.lr.ph.us.us, !llvm.loop !125

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.ch = sdiv i64 %i.ba, %i.bb
  %i.ci = trunc i64 %i.ch to i16                  ; 3 uses
  %wide.trip.count86 = zext nneg i32 %i.q to i64
  %i.cj = zext i32 %i.h to i64                    ; 5 uses
  %min.iters.check157 = icmp ult i32 %i.h, 4
  %min.iters.check159 = icmp ult i32 %i.h, 16
  %i.ck = and i64 %i.cj, 12
  %n.vec161 = and i64 %i.cj, 4294967280           ; 5 uses
  %i.cl = shl nuw nsw i64 %n.vec161, 1
  %i.cm = trunc nuw i64 %n.vec161 to i32
  %broadcast.splatinsert162 = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat163 = shufflevector <8 x i16> %broadcast.splatinsert162, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n169 = icmp eq i64 %n.vec161, %i.cj
  %min.epilog.iters.check175 = icmp eq i64 %i.ck, 0
  %n.vec177 = and i64 %i.cj, 4294967292           ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec177, 1
  %i.co = trunc nuw i64 %n.vec177 to i32
  %broadcast.splatinsert178 = insertelement <4 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat179 = shufflevector <4 x i16> %broadcast.splatinsert178, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n185 = icmp eq i64 %n.vec177, %i.cj
  br label %iter.check172

iter.check172:                                    ; preds = %._crit_edge.split.us.split.us73, %.lr.ph.split.split.us.split
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %._crit_edge.split.us.split.us73 ], [ 0, %.lr.ph.split.split.us.split ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv83
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !64 ; 5 uses
  br i1 %min.iters.check157, label %.preheader.us.us69.preheader, label %vector.main.loop.iter.check158

vector.main.loop.iter.check158:                   ; preds = %iter.check172
  br i1 %min.iters.check159, label %vec.epilog.ph176, label %vector.ph160

vector.ph160:                                     ; preds = %vector.main.loop.iter.check158
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cl
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph160
  %index165 = phi i64 [ 0, %vector.ph160 ], [ %index.next167, %vector.body164 ] ; 2 uses
  %i.cs = shl i64 %index165, 1
  %next.gep166 = getelementptr i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep166, i64 16
  store <8 x i16> %broadcast.splat163, ptr %next.gep166, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat163, ptr %i.ct, align 2, !tbaa !66
  %index.next167 = add nuw i64 %index165, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next167, %n.vec161
  br i1 %i.cu, label %middle.block168, label %vector.body164, !llvm.loop !126

middle.block168:                                  ; preds = %vector.body164
  br i1 %cmp.n169, label %._crit_edge.split.us.split.us73, label %vec.epilog.iter.check174

vec.epilog.iter.check174:                         ; preds = %middle.block168
  br i1 %min.epilog.iters.check175, label %.preheader.us.us69.preheader, label %vec.epilog.ph176, !prof !70

vec.epilog.ph176:                                 ; preds = %vector.main.loop.iter.check158, %vec.epilog.iter.check174
  %vec.epilog.resume.val170 = phi i64 [ %n.vec161, %vec.epilog.iter.check174 ], [ 0, %vector.main.loop.iter.check158 ]
  %i.cv = getelementptr i8, ptr %i.cq, i64 %i.cn
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph176
  %index181 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph176 ], [ %index.next183, %vec.epilog.vector.body180 ] ; 2 uses
  %i.cw = shl i64 %index181, 1
  %next.gep182 = getelementptr i8, ptr %i.cq, i64 %i.cw
  store <4 x i16> %broadcast.splat179, ptr %next.gep182, align 2, !tbaa !66
  %index.next183 = add nuw i64 %index181, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next183, %n.vec177
  br i1 %i.cx, label %vec.epilog.middle.block184, label %vec.epilog.vector.body180, !llvm.loop !127

vec.epilog.middle.block184:                       ; preds = %vec.epilog.vector.body180
  br i1 %cmp.n185, label %._crit_edge.split.us.split.us73, label %.preheader.us.us69.preheader

.preheader.us.us69.preheader:                     ; preds = %iter.check172, %vec.epilog.iter.check174, %vec.epilog.middle.block184
  %.04260.us.us70.ph = phi ptr [ %i.cq, %iter.check172 ], [ %i.cr, %vec.epilog.iter.check174 ], [ %i.cv, %vec.epilog.middle.block184 ]
  %.04558.us.us72.ph = phi i32 [ 0, %iter.check172 ], [ %i.cm, %vec.epilog.iter.check174 ], [ %i.co, %vec.epilog.middle.block184 ]
  br label %.preheader.us.us69

.preheader.us.us69:                               ; preds = %.preheader.us.us69.preheader, %.preheader.us.us69
  %.04260.us.us70 = phi ptr [ %i.cy, %.preheader.us.us69 ], [ %.04260.us.us70.ph, %.preheader.us.us69.preheader ] ; 2 uses
  %.04558.us.us72 = phi i32 [ %i.cz, %.preheader.us.us69 ], [ %.04558.us.us72.ph, %.preheader.us.us69.preheader ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.04260.us.us70, i64 2
  store i16 %i.ci, ptr %.04260.us.us70, align 2, !tbaa !66
  %i.cz = add nuw i32 %.04558.us.us72, 1          ; 2 uses
  %exitcond82.not = icmp eq i32 %i.cz, %i.h
  br i1 %exitcond82.not, label %._crit_edge.split.us.split.us73, label %.preheader.us.us69, !llvm.loop !128

._crit_edge.split.us.split.us73:                  ; preds = %.preheader.us.us69, %vec.epilog.middle.block184, %middle.block168
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %._crit_edge68.split, label %iter.check172, !llvm.loop !125

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.da = sdiv i64 %i.ba, %i.bb
  %i.db = trunc i64 %i.da to i16                  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.q to i64
  %i.dc = zext i32 %i.h to i64                    ; 5 uses
  %min.iters.check126 = icmp ult i32 %i.h, 4
  %min.iters.check128 = icmp ult i32 %i.h, 16
  %i.dd = and i64 %i.dc, 12
  %n.vec130 = and i64 %i.dc, 4294967280           ; 5 uses
  %i.de = shl nuw nsw i64 %n.vec130, 1
  %i.df = trunc nuw i64 %n.vec130 to i32
  %broadcast.splatinsert131 = insertelement <8 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat132 = shufflevector <8 x i16> %broadcast.splatinsert131, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n138 = icmp eq i64 %n.vec130, %i.dc
  %min.epilog.iters.check144 = icmp eq i64 %i.dd, 0
  %n.vec146 = and i64 %i.dc, 4294967292           ; 4 uses
  %i.dg = shl nuw nsw i64 %n.vec146, 1
  %i.dh = trunc nuw i64 %n.vec146 to i32
  %broadcast.splatinsert147 = insertelement <4 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat148 = shufflevector <4 x i16> %broadcast.splatinsert147, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n154 = icmp eq i64 %n.vec146, %i.dc
  br label %iter.check141

iter.check141:                                    ; preds = %.lr.ph.split.split, %._crit_edge.split
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next, %._crit_edge.split ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !64 ; 5 uses
  br i1 %min.iters.check126, label %.preheader.preheader, label %vector.main.loop.iter.check127

vector.main.loop.iter.check127:                   ; preds = %iter.check141
  br i1 %min.iters.check128, label %vec.epilog.ph145, label %vector.ph129

vector.ph129:                                     ; preds = %vector.main.loop.iter.check127
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.de
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.dl = shl i64 %index134, 1
  %next.gep135 = getelementptr i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep135, i64 16
  store <8 x i16> %broadcast.splat132, ptr %next.gep135, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat132, ptr %i.dm, align 2, !tbaa !66
  %index.next136 = add nuw i64 %index134, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.dn, label %middle.block137, label %vector.body133, !llvm.loop !129

middle.block137:                                  ; preds = %vector.body133
  br i1 %cmp.n138, label %._crit_edge.split, label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block137
  br i1 %min.epilog.iters.check144, label %.preheader.preheader, label %vec.epilog.ph145, !prof !70

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check127, %vec.epilog.iter.check143
  %vec.epilog.resume.val139 = phi i64 [ %n.vec130, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check127 ]
  %i.do = getelementptr i8, ptr %i.dj, i64 %i.dg
  br label %vec.epilog.vector.body149

vec.epilog.vector.body149:                        ; preds = %vec.epilog.vector.body149, %vec.epilog.ph145
  %index150 = phi i64 [ %vec.epilog.resume.val139, %vec.epilog.ph145 ], [ %index.next152, %vec.epilog.vector.body149 ] ; 2 uses
  %i.dp = shl i64 %index150, 1
  %next.gep151 = getelementptr i8, ptr %i.dj, i64 %i.dp
  store <4 x i16> %broadcast.splat148, ptr %next.gep151, align 2, !tbaa !66
  %index.next152 = add nuw i64 %index150, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next152, %n.vec146
  br i1 %i.dq, label %vec.epilog.middle.block153, label %vec.epilog.vector.body149, !llvm.loop !130

vec.epilog.middle.block153:                       ; preds = %vec.epilog.vector.body149
  br i1 %cmp.n154, label %._crit_edge.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check141, %vec.epilog.iter.check143, %vec.epilog.middle.block153
  %.04260.ph = phi ptr [ %i.dj, %iter.check141 ], [ %i.dk, %vec.epilog.iter.check143 ], [ %i.do, %vec.epilog.middle.block153 ]
  %.04558.ph = phi i32 [ 0, %iter.check141 ], [ %i.df, %vec.epilog.iter.check143 ], [ %i.dh, %vec.epilog.middle.block153 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.04260 = phi ptr [ %i.dr, %.preheader ], [ %.04260.ph, %.preheader.preheader ] ; 2 uses
  %.04558 = phi i32 [ %i.ds, %.preheader ], [ %.04558.ph, %.preheader.preheader ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.04260, i64 2
  store i16 %i.db, ptr %.04260, align 2, !tbaa !66
  %i.ds = add nuw i32 %.04558, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ds, %i.h
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader, !llvm.loop !131

._crit_edge.split:                                ; preds = %.preheader, %vec.epilog.middle.block153, %middle.block137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge68.split, label %iter.check141, !llvm.loop !125

._crit_edge68.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.split.us73, %._crit_edge.split.us.split.us.us.us, %.lr.ph, %expand_right_edge.exit
  ret void
}

declare void @j16copy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
