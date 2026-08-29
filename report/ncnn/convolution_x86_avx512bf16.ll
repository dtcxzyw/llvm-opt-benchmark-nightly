Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %invariant.op6869 = add <16 x i32> %invariant.op6867, %i.ba
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  %n.vec6239 = and i64 %i.aw, 2147483640          ; 4 uses
  %i.bc = trunc nuw nsw i64 %n.vec6239 to i32
  %i.bd = mul i32 %6, %i.bc
  %broadcast.splatinsert6240 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6241 = shufflevector <8 x i32> %broadcast.splatinsert6240, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert6244.a = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat6245.a = shufflevector <8 x i32> %broadcast.splatinsert6244.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = mul nsw <8 x i32> %broadcast.splat6245.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = shl nsw i32 %6, 3
  %broadcast.splatinsert6247 = insertelement <8 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat6248 = shufflevector <8 x i32> %broadcast.splatinsert6247, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n6253 = icmp eq i64 %n.vec6239, %i.aw
  br label %iter.check

iter.check:                                       ; preds = %.preheader4403.preheader, %._crit_edge
  %.016314412 = phi i32 [ %i.cl, %._crit_edge ], [ 0, %.preheader4403.preheader ]
  %.016324411 = phi i32 [ %i.ck, %._crit_edge ], [ 0, %.preheader4403.preheader ] ; 5 uses
  %.016344410 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader4403.preheader ] ; 2 uses
  %i.bg = sext i32 %.016344410 to i64             ; 5 uses
  %i.bh = add i32 %4, %.016344410                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check6233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = add nsw i64 %n.vec, %i.bg
  %i.bj = add i32 %.016324411, %i.az              ; 3 uses
  %broadcast.splatinsert6236 = insertelement <16 x i32> poison, i32 %.016324411, i64 0
  %broadcast.splat6237 = shufflevector <16 x i32> %broadcast.splatinsert6236, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat6237, %i.bb
  %invariant.gep6868 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.ba
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op6867
  %i.bk = mul nsw <16 x i32> %vec.ind, %broadcast.splat6235
  %i.bl = mul nsw <16 x i32> %step.add, %broadcast.splat6235
  %i.bm = mul nsw <16 x i32> %step.add.2.reass, %broadcast.splat6235
  %i.bn = mul nsw <16 x i32> %step.add.3.reass, %broadcast.splat6235
  %gep = getelementptr [4 x i8], ptr %invariant.gep6868, i64 %index ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bk, ptr %gep, align 4, !tbaa !113
  store <16 x i32> %i.bl, ptr %i.bo, align 4, !tbaa !113
  store <16 x i32> %i.bm, ptr %i.bp, align 4, !tbaa !113
  store <16 x i32> %i.bn, ptr %i.bq, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op6869
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val6238 = phi i32 [ %i.bj, %vec.epilog.iter.check ], [ %.016324411, %vector.main.loop.iter.check ]
  %i.bs = add nsw i64 %n.vec6239, %i.bg
  %i.bt = add i32 %.016324411, %i.bd              ; 2 uses
  %broadcast.splatinsert6242 = insertelement <8 x i32> poison, i32 %bc.resume.val6238, i64 0
  %broadcast.splat6243 = shufflevector <8 x i32> %broadcast.splatinsert6242, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction6246 = add nsw <8 x i32> %broadcast.splat6243, %i.be
  %invariant.gep6870 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6249 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next6251, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind6250 = phi <8 x i32> [ %induction6246, %vec.epilog.ph ], [ %vec.ind.next6252, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = mul nsw <8 x i32> %vec.ind6250, %broadcast.splat6241
  %gep6871 = getelementptr [4 x i8], ptr %invariant.gep6870, i64 %index6249
  store <8 x i32> %i.bu, ptr %gep6871, align 4, !tbaa !113
  %index.next6251 = add nuw i64 %index6249, 8     ; 2 uses
  %vec.ind.next6252 = add nsw <8 x i32> %vec.ind6250, %broadcast.splat6248
  %i.bv = icmp eq i64 %index.next6251, %n.vec6239
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n6253, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bg, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.116334407.ph = phi i32 [ %.016324411, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4413.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.bw = load ptr, ptr %3, align 8, !tbaa !9
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.bx = sdiv i32 %i.ad, 16
  store i32 %i.bx, ptr %i.i, align 4, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !124
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %11, ptr nonnull %i.e)
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !113
  %i.cb = shl nsw i32 %i.ca, 4                    ; 3 uses
  %i.cc = sub nsw i32 %i.ad, %i.cb                ; 2 uses
  %i.cd = sdiv i32 %i.cc, 8                       ; 3 uses
  store i32 %i.cd, ptr %i.i, align 4, !tbaa !113
  %i.ce = icmp sgt i32 %i.cc, 7
  br i1 %i.ce, label %.noexc2330.lr.ph, label %._crit_edge4630

.noexc2330.lr.ph:                                 ; preds = %._crit_edge4413.split
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cj = sext i32 %i.cb to i64
  %wide.trip.count5522 = zext nneg i32 %i.cd to i64
  br label %.noexc2330

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa6232 = phi i32 [ %i.bt, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.co, %vec.epilog.scalar.ph ]
  %i.ck = add nsw i32 %i.at, %.lcssa6232
  %i.cl = add nuw nsw i32 %.016314412, 1          ; 2 uses
  %exitcond5431.not = icmp eq i32 %i.cl, %5
  br i1 %exitcond5431.not, label %._crit_edge4413.split, label %iter.check, !llvm.loop !127

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.116334407 = phi i32 [ %i.co, %vec.epilog.scalar.ph ], [ %.116334407.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cm = mul nsw i32 %.116334407, %i.n
  %i.cn = getelementptr inbounds [4 x i8], ptr %.sroa.03778.0, i64 %indvars.iv
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !113
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.co = add nsw i32 %.116334407, %6             ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bh, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !128

._crit_edge4630:                                  ; preds = %._crit_edge4628.split, %._crit_edge4413.split
  %i.cp = shl nsw i32 %i.cd, 3
  %i.cq = add nsw i32 %i.cp, %i.cb                ; 3 uses
  %i.cr = sub nsw i32 %i.ad, %i.cq                ; 2 uses
  %i.cs = sdiv i32 %i.cr, 4                       ; 3 uses
  store i32 %i.cs, ptr %i.i, align 4, !tbaa !113
  %i.ct = icmp sgt i32 %i.cr, 3
  br i1 %i.ct, label %.noexc2328.lr.ph, label %._crit_edge4853

.noexc2328.lr.ph:                                 ; preds = %._crit_edge4630
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count5617 = zext nneg i32 %i.cs to i64
  br label %.noexc2328

.noexc2330:                                       ; preds = %.noexc2330.lr.ph, %._crit_edge4628.split
  %indvars.iv5519 = phi i64 [ 0, %.noexc2330.lr.ph ], [ %indvars.iv.next5520, %._crit_edge4628.split ] ; 2 uses
  %i.cz = load i32, ptr %i.m, align 8, !tbaa !115 ; 9 uses
  %i.da = load i32, ptr %i.o, align 8, !tbaa !116
  %i.db = mul i32 %i.da, %i.cz                    ; 12 uses
  %i.dc = load i32, ptr %i.v, align 4, !tbaa !114 ; 2 uses
  %i.dd = load i32, ptr %i.x, align 8, !tbaa !118 ; 2 uses
  %i.de = load i32, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %i.df = icmp sgt i32 %i.dd, 0
  br i1 %i.df, label %.preheader4402.lr.ph, label %._crit_edge4628.split

.preheader4402.lr.ph:                             ; preds = %.noexc2330
  %i.dg = shl nuw nsw i64 %indvars.iv5519, 3
  %i.dh = add nsw i64 %i.dg, %i.cj                ; 2 uses
  %i.di = trunc nsw i64 %i.dh to i32              ; 3 uses
  %i.dj = icmp sgt i32 %i.dc, 0
  %i.dk = sdiv i32 %i.di, 16
  %i.dl = srem i32 %i.di, 16
  %i.dm = ashr exact i32 %i.dl, 3
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp sgt i32 %i.db, 15
  %i.dq = icmp eq i32 %i.cz, 16
  %i.dr = icmp eq i32 %i.cz, 8                    ; 2 uses
  %i.ds = icmp eq i32 %i.cz, 4                    ; 3 uses
  %i.dt = icmp eq i32 %i.cz, 1                    ; 3 uses
  %i.du = load i32, ptr %i.c, align 4
  br i1 %i.dj, label %.preheader4402.preheader, label %._crit_edge4628.split

.preheader4402.preheader:                         ; preds = %.preheader4402.lr.ph
  %i.dv = load ptr, ptr %1, align 8, !tbaa !9, !noalias !129
  %i.dw = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !129
  %i.dx = sdiv i32 %i.di, %i.de
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %i.dw, %i.dy
  %i.ea = load i64, ptr %i.cf, align 8, !tbaa !19, !noalias !129
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb
  %i.ed = and i32 %i.db, -16
  %13 = add i32 %i.db, -2
  %wide.trip.count5516 = zext nneg i32 %i.dc to i64
  br label %.preheader4402

.preheader4402:                                   ; preds = %.preheader4402.preheader, %._crit_edge4618
  %.016234627 = phi i32 [ %i.eq, %._crit_edge4618 ], [ 0, %.preheader4402.preheader ] ; 2 uses
  %.016244626 = phi ptr [ %.41628, %._crit_edge4618 ], [ %i.ec, %.preheader4402.preheader ]
  %i.ee = load i32, ptr %i.b, align 4
  %i.ef = mul nsw i32 %i.ee, %.016234627
  %i.eg = sext i32 %i.ef to i64                   ; 5 uses
  %i.eh = load i32, ptr %i.a, align 4             ; 2 uses
  %factor.op.mul4620 = mul i32 %i.cz, %i.eh       ; 3 uses
  %i.ei = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ej = icmp sgt i32 %i.ei, 0                   ; 2 uses
  %i.ek = add i32 %i.ei, -1
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 5
  %i.en = shl nuw nsw i64 %i.el, 4
  %i.eo = sext i32 %i.eh to i64                   ; 2 uses
  %wide.trip.count5498 = zext i32 %i.ei to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count5498, 1
  %i.ep = icmp eq i32 %i.ei, 1
  %unroll_iter = and i64 %wide.trip.count5498, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6641 = trunc i32 %i.ei to i1
  br label %bb.b

._crit_edge4628.split:                            ; preds = %._crit_edge4618, %.preheader4402.lr.ph, %.noexc2330
  %indvars.iv.next5520 = add nuw nsw i64 %indvars.iv5519, 1 ; 2 uses
  %exitcond5523.not = icmp eq i64 %indvars.iv.next5520, %wide.trip.count5522
  br i1 %exitcond5523.not, label %._crit_edge4630, label %.noexc2330, !llvm.loop !132

._crit_edge4618:                                  ; preds = %.thread4292
  %i.eq = add nuw nsw i32 %.016234627, 1          ; 2 uses
  %exitcond5518.not = icmp eq i32 %i.eq, %i.dd
  br i1 %exitcond5518.not, label %._crit_edge4628.split, label %.preheader4402, !llvm.loop !133

bb.b:                                             ; preds = %.preheader4402, %.thread4292
  %indvars.iv5513 = phi i64 [ 0, %.preheader4402 ], [ %indvars.iv.next5514, %.thread4292 ] ; 6 uses
  %.116254615 = phi ptr [ %.016244626, %.preheader4402 ], [ %.41628, %.thread4292 ] ; 15 uses
  %i.er = load ptr, ptr %i.h, align 8, !tbaa !122 ; 2 uses
  %.not2173 = icmp eq ptr %i.er, null
  br i1 %.not2173, label %_ZN4ncnn3MatD2Ev.exit2358, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.dh
  %i.et = load <8 x float>, ptr %i.es, align 1, !tbaa !20
  br label %_ZN4ncnn3MatD2Ev.exit2358

_ZN4ncnn3MatD2Ev.exit2358:                        ; preds = %bb.c, %bb.b
  %.04110 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.et, %bb.c ] ; 2 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !9, !noalias !134
  %i.ev = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !134
  %i.ew = mul i64 %i.ev, %i.do
  %i.ex = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !134
  %i.ey = mul i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ey ; 2 uses
  br i1 %i.dp, label %_ZN4ncnn3MatD2Ev.exit2357.lr.ph, label %.preheader4401

_ZN4ncnn3MatD2Ev.exit2357.lr.ph:                  ; preds = %_ZN4ncnn3MatD2Ev.exit2358
  %i.fa = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !137
  %i.fb = load ptr, ptr %0, align 8, !tbaa !9, !noalias !137
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !137
  %i.fd = load i64, ptr %i.ci, align 8, !tbaa !19, !noalias !137 ; 2 uses
  %factor.op.mul = mul i64 %i.fc, %i.fd
  %i.fe = sext i32 %i.fa to i64
  %i.ff = mul i64 %i.fd, %i.fe
  %i.fg = mul i64 %i.ff, %i.eg
  %invariant.gep = getelementptr i8, ptr %i.fb, i64 %i.fg
  %i.fh = trunc nuw nsw i64 %indvars.iv5513 to i32
  %.reass4621 = mul i32 %factor.op.mul4620, %i.fh
  %i.fi = sext i32 %.reass4621 to i64
  %invariant.gep4475 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fi
  %i.fj = load i32, ptr %i.f, align 4             ; 6 uses
  %i.fk = icmp sgt i32 %i.fj, 0                   ; 4 uses
  %i.fl = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.fm = load i64, ptr %i.d, align 8             ; 17 uses
  %.idx2234 = shl i64 %i.fm, 2                    ; 2 uses
  %.idx2235 = mul i64 %i.fm, 6                    ; 2 uses
  %.idx2238 = shl i64 %i.fm, 3
  %.idx2239 = mul i64 %i.fm, 10
  %.idx2240 = mul i64 %i.fm, 12
  %.idx2241 = mul i64 %i.fm, 14
  %.idx2242 = shl i64 %i.fm, 4
  %.idx2243 = mul i64 %i.fm, 18
  %.idx2244 = mul i64 %i.fm, 20
  %.idx2245 = mul i64 %i.fm, 22
  %.idx2246 = mul i64 %i.fm, 24
  %.idx2247 = mul i64 %i.fm, 26
  %.idx2248 = mul i64 %i.fm, 28
  %.idx2249 = mul i64 %i.fm, 30
  %i.fn = add i32 %i.fj, -1
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 8                ; 4 uses
  %wide.trip.count5456 = zext nneg i32 %i.fj to i64
  %wide.trip.count5449 = zext nneg i32 %i.fj to i64
  %wide.trip.count5442 = zext nneg i32 %i.fj to i64
  %wide.trip.count = zext nneg i32 %i.fj to i64
  br label %_ZN4ncnn3MatD2Ev.exit2357

.preheader4401:                                   ; preds = %.loopexit4393, %_ZN4ncnn3MatD2Ev.exit2358
  %.04179.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.84187, %.loopexit4393 ] ; 2 uses
  %.04158.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.84166, %.loopexit4393 ] ; 2 uses
  %.04135.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.84143, %.loopexit4393 ] ; 2 uses
  %.14111.lcssa = phi <8 x float> [ %.04110, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.94119, %.loopexit4393 ] ; 2 uses
  %.01597.lcssa = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.81605, %.loopexit4393 ] ; 2 uses
  %.01592.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %i.ed, %.loopexit4393 ] ; 3 uses
  %i.fq = or disjoint i32 %.01592.lcssa, 7
  %i.fr = icmp slt i32 %i.fq, %i.db
  br i1 %i.fr, label %_ZN4ncnn3MatD2Ev.exit2356.lr.ph, label %.preheader4400

_ZN4ncnn3MatD2Ev.exit2356.lr.ph:                  ; preds = %.preheader4401
  %i.fs = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !140
  %i.ft = load ptr, ptr %0, align 8, !tbaa !9, !noalias !140
  %i.fu = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !140
  %i.fv = load i64, ptr %i.ci, align 8, !tbaa !19, !noalias !140 ; 2 uses
  %factor.op.mul4526 = mul i64 %i.fu, %i.fv
  %i.fw = sext i32 %i.fs to i64
  %i.fx = mul i64 %i.fv, %i.fw
  %i.fy = mul i64 %i.fx, %i.eg
  %invariant.gep4528 = getelementptr i8, ptr %i.ft, i64 %i.fy
  %i.fz = trunc nuw nsw i64 %indvars.iv5513 to i32
  %.reass4623 = mul i32 %factor.op.mul4620, %i.fz
  %i.ga = sext i32 %.reass4623 to i64
  %invariant.gep4529 = getelementptr [2 x i8], ptr %invariant.gep4528, i64 %i.ga
  %i.gb = load i32, ptr %i.f, align 4             ; 5 uses
  %i.gc = icmp sgt i32 %i.gb, 0                   ; 3 uses
  %i.gd = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ge = load i64, ptr %i.d, align 8             ; 8 uses
  %.idx2200 = shl i64 %i.ge, 2
  %.idx2201 = mul i64 %i.ge, 6
  %.idx2202 = shl i64 %i.ge, 3
  %.idx2203 = mul i64 %i.ge, 10
  %.idx2204 = mul i64 %i.ge, 12
  %.idx2205 = mul i64 %i.ge, 14
  %i.gf = add i32 %i.gb, -1
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 7                ; 3 uses
  %wide.trip.count5477 = zext nneg i32 %i.gb to i64
  %wide.trip.count5470 = zext nneg i32 %i.gb to i64
  %wide.trip.count5463 = zext nneg i32 %i.gb to i64
  br label %_ZN4ncnn3MatD2Ev.exit2356

_ZN4ncnn3MatD2Ev.exit2357:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2357.lr.ph, %.loopexit4393
  %.015924468 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2357.lr.ph ], [ %i.aal, %.loopexit4393 ] ; 2 uses
  %.015974467 = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit2357.lr.ph ], [ %.81605, %.loopexit4393 ] ; 13 uses
  %.141114466 = phi <8 x float> [ %.04110, %_ZN4ncnn3MatD2Ev.exit2357.lr.ph ], [ %.94119, %.loopexit4393 ] ; 9 uses
  %.041354465 = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2357.lr.ph ], [ %.84143, %.loopexit4393 ] ; 9 uses
  %.041584464 = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2357.lr.ph ], [ %.84166, %.loopexit4393 ] ; 9 uses
  %.041794463 = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2357.lr.ph ], [ %.84187, %.loopexit4393 ] ; 9 uses
  %i.gi = sdiv i32 %.015924468, %i.cz
  %i.gj = sext i32 %i.gi to i64
  %.reass = mul i64 %factor.op.mul, %i.gj
  %gep4476 = getelementptr i8, ptr %invariant.gep4475, i64 %.reass ; 23 uses
  br i1 %i.dq, label %.preheader4396, label %.loopexit4397

.preheader4396:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2357
  br i1 %i.fk, label %.lr.ph, label %.loopexit4393

.lr.ph:                                           ; preds = %.preheader4396, %.lr.ph
  %indvars.iv5432 = phi i64 [ %indvars.iv.next5433, %.lr.ph ], [ 0, %.preheader4396 ] ; 2 uses
  %.115984418 = phi ptr [ %i.ki, %.lr.ph ], [ %.015974467, %.preheader4396 ] ; 17 uses
  %.241124417 = phi <8 x float> [ %i.jy, %.lr.ph ], [ %.141114466, %.preheader4396 ]
  %.141364416 = phi <8 x float> [ %i.kb, %.lr.ph ], [ %.041354465, %.preheader4396 ]
  %.141594415 = phi <8 x float> [ %i.ke, %.lr.ph ], [ %.041584464, %.preheader4396 ]
  %.141804414 = phi <8 x float> [ %i.kh, %.lr.ph ], [ %.041794463, %.preheader4396 ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv5432
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !113
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %gep4476, i64 %i.gm
  %i.go = load <8 x bfloat>, ptr %.115984418, align 16, !tbaa !20
  %i.gp = fpext fast <8 x bfloat> %i.go to <8 x float>
  %i.gq = getelementptr inbounds nuw i8, ptr %.115984418, i64 16
  %i.gr = load <8 x bfloat>, ptr %i.gq, align 16, !tbaa !20
  %i.gs = fpext fast <8 x bfloat> %i.gr to <8 x float>
  %i.gt = getelementptr inbounds nuw i8, ptr %.115984418, i64 32
  %i.gu = load <8 x bfloat>, ptr %i.gt, align 16, !tbaa !20
  %i.gv = fpext fast <8 x bfloat> %i.gu to <8 x float>
  %i.gw = getelementptr inbounds nuw i8, ptr %.115984418, i64 48
  %i.gx = load <8 x bfloat>, ptr %i.gw, align 16, !tbaa !20
  %i.gy = fpext fast <8 x bfloat> %i.gx to <8 x float>
  %i.gz = getelementptr inbounds nuw i8, ptr %.115984418, i64 64
  %i.ha = load <8 x bfloat>, ptr %i.gz, align 16, !tbaa !20
  %i.hb = fpext fast <8 x bfloat> %i.ha to <8 x float>
  %i.hc = getelementptr inbounds nuw i8, ptr %.115984418, i64 80
  %i.hd = load <8 x bfloat>, ptr %i.hc, align 16, !tbaa !20
  %i.he = fpext fast <8 x bfloat> %i.hd to <8 x float>
  %i.hf = getelementptr inbounds nuw i8, ptr %.115984418, i64 96
  %i.hg = load <8 x bfloat>, ptr %i.hf, align 16, !tbaa !20
  %i.hh = fpext fast <8 x bfloat> %i.hg to <8 x float>
  %i.hi = getelementptr inbounds nuw i8, ptr %.115984418, i64 112
  %i.hj = load <8 x bfloat>, ptr %i.hi, align 16, !tbaa !20
  %i.hk = fpext fast <8 x bfloat> %i.hj to <8 x float>
  %i.hl = getelementptr inbounds nuw i8, ptr %.115984418, i64 128
  %i.hm = load <8 x bfloat>, ptr %i.hl, align 16, !tbaa !20
  %i.hn = fpext fast <8 x bfloat> %i.hm to <8 x float>
  %i.ho = getelementptr inbounds nuw i8, ptr %.115984418, i64 144
  %i.hp = load <8 x bfloat>, ptr %i.ho, align 16, !tbaa !20
  %i.hq = fpext fast <8 x bfloat> %i.hp to <8 x float>
  %i.hr = getelementptr inbounds nuw i8, ptr %.115984418, i64 160
  %i.hs = load <8 x bfloat>, ptr %i.hr, align 16, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.adt = getelementptr inbounds nuw i8, ptr %.1216094493, i64 16
  %i.adu = load <8 x bfloat>, ptr %i.adt, align 16, !tbaa !20
  %i.adv = fpext fast <8 x bfloat> %i.adu to <8 x float>
  %i.adw = getelementptr inbounds nuw i8, ptr %.1216094493, i64 32
  %i.adx = load <8 x bfloat>, ptr %i.adw, align 16, !tbaa !20
  %i.ady = fpext fast <8 x bfloat> %i.adx to <8 x float>
  %i.adz = getelementptr inbounds nuw i8, ptr %.1216094493, i64 48
  %i.aea = load <8 x bfloat>, ptr %i.adz, align 16, !tbaa !20
  %i.aeb = fpext fast <8 x bfloat> %i.aea to <8 x float>
  %i.aec = getelementptr inbounds nuw i8, ptr %.1216094493, i64 64
  %i.aed = load <8 x bfloat>, ptr %i.aec, align 16, !tbaa !20
  %i.aee = fpext fast <8 x bfloat> %i.aed to <8 x float>
  %i.aef = getelementptr inbounds nuw i8, ptr %.1216094493, i64 80
  %i.aeg = load <8 x bfloat>, ptr %i.aef, align 16, !tbaa !20
  %i.aeh = fpext fast <8 x bfloat> %i.aeg to <8 x float>
  %i.aei = getelementptr inbounds nuw i8, ptr %.1216094493, i64 96
  %i.aej = load <8 x bfloat>, ptr %i.aei, align 16, !tbaa !20
  %i.aek = fpext fast <8 x bfloat> %i.aej to <8 x float>
  %i.ael = getelementptr inbounds nuw i8, ptr %.1216094493, i64 112
  %i.aem = load <8 x bfloat>, ptr %i.ael, align 16, !tbaa !20
  %i.aen = fpext fast <8 x bfloat> %i.aem to <8 x float>
  %i.aeo = load <4 x i16>, ptr %i.adp, align 2, !tbaa !76
  %i.aep = load <4 x i16>, ptr %i.adq, align 2, !tbaa !76
  %i.aeq = shufflevector <4 x i16> %i.aeo, <4 x i16> %i.aep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aer = zext <8 x i16> %i.aeq to <8 x i32>
  %i.aes = shl nuw <8 x i32> %i.aer, splat (i32 16) ; 8 uses
  %i.aet = bitcast <8 x i32> %i.aes to <8 x float>
  %i.aeu = shufflevector <8 x float> %i.aet, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aev = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> nofpclass(nan inf) %i.aeu, <8 x float> nofpclass(nan inf) %.1341234492)
  %i.aew = bitcast <8 x i32> %i.aes to <8 x float>
  %i.aex = shufflevector <8 x float> %i.aew, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adv, <8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %.1241474491)
  %i.aez = bitcast <8 x i32> %i.aes to <8 x float>
  %i.afa = shufflevector <8 x float> %i.aez, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.afb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ady, <8 x float> nofpclass(nan inf) %i.afa, <8 x float> nofpclass(nan inf) %.1241704490)
  %i.afc = bitcast <8 x i32> %i.aes to <8 x float>
  %i.afd = shufflevector <8 x float> %i.afc, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.afe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeb, <8 x float> nofpclass(nan inf) %i.afd, <8 x float> nofpclass(nan inf) %.1241914489)
  %i.aff = bitcast <8 x i32> %i.aes to <8 x float>
  %i.afg = shufflevector <8 x float> %i.aff, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.afh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aee, <8 x float> nofpclass(nan inf) %i.afg, <8 x float> nofpclass(nan inf) %i.aev) ; 2 uses
  %i.afi = bitcast <8 x i32> %i.aes to <8 x float>
  %i.afj = shufflevector <8 x float> %i.afi, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.afk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeh, <8 x float> nofpclass(nan inf) %i.afj, <8 x float> nofpclass(nan inf) %i.aey) ; 2 uses
  %i.afl = bitcast <8 x i32> %i.aes to <8 x float>
  %i.afm = shufflevector <8 x float> %i.afl, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.afn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aek, <8 x float> nofpclass(nan inf) %i.afm, <8 x float> nofpclass(nan inf) %i.afb) ; 2 uses
  %i.afo = bitcast <8 x i32> %i.aes to <8 x float>
  %i.afp = shufflevector <8 x float> %i.afo, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.afq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aen, <8 x float> nofpclass(nan inf) %i.afp, <8 x float> nofpclass(nan inf) %i.afe) ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.1216094493, i64 128
  %indvars.iv.next5466 = add nuw nsw i64 %indvars.iv5465, 1 ; 2 uses
  %exitcond5471.not = icmp eq i64 %indvars.iv.next5466, %wide.trip.count5470
  br i1 %exitcond5471.not, label %.loopexit4389.loopexit, label %.lr.ph4496, !llvm.loop !152

.loopexit4389.loopexit:                           ; preds = %.lr.ph4496
  %scevgep5467 = getelementptr i8, ptr %.916064518, i64 128
  %scevgep5468 = getelementptr i8, ptr %scevgep5467, i64 %i.gh
  br label %.loopexit4388

.loopexit4389:                                    ; preds = %.loopexit4391
  br i1 %i.dt, label %.preheader4387, label %.loopexit4388

.preheader4387:                                   ; preds = %.loopexit4389
  br i1 %i.gc, label %.lr.ph4508, label %.loopexit4388

.lr.ph4508:                                       ; preds = %.preheader4387
  %i.afs = getelementptr [2 x i8], ptr %gep4530, i64 %i.ge
  %i.aft = getelementptr i8, ptr %gep4530, i64 %.idx2200
  %i.afu = getelementptr i8, ptr %gep4530, i64 %.idx2201
  %i.afv = getelementptr i8, ptr %gep4530, i64 %.idx2202
  %i.afw = getelementptr i8, ptr %gep4530, i64 %.idx2203
  %i.afx = getelementptr i8, ptr %gep4530, i64 %.idx2204
  %i.afy = getelementptr i8, ptr %gep4530, i64 %.idx2205
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph4508, %bb.h
  %indvars.iv5472 = phi i64 [ 0, %.lr.ph4508 ], [ %indvars.iv.next5473, %bb.h ] ; 2 uses
  %.1416114506 = phi ptr [ %.916064518, %.lr.ph4508 ], [ %i.ajl, %bb.h ] ; 9 uses
  %.1541254505 = phi <8 x float> [ %.1041204517, %.lr.ph4508 ], [ %i.aim, %bb.h ]
  %.1441494504 = phi <8 x float> [ %.941444516, %.lr.ph4508 ], [ %i.aiu, %bb.h ]
  %.1441724503 = phi <8 x float> [ %.941674515, %.lr.ph4508 ], [ %i.ajc, %bb.h ]
  %.1441934502 = phi <8 x float> [ %.941884514, %.lr.ph4508 ], [ %i.ajk, %bb.h ]
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv5472
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !113
  %i.agb = load <8 x bfloat>, ptr %.1416114506, align 16, !tbaa !20
  %i.agc = fpext fast <8 x bfloat> %i.agb to <8 x float>
  %i.agd = getelementptr inbounds nuw i8, ptr %.1416114506, i64 16
  %i.age = load <8 x bfloat>, ptr %i.agd, align 16, !tbaa !20
  %i.agf = fpext fast <8 x bfloat> %i.age to <8 x float>
  %i.agg = getelementptr inbounds nuw i8, ptr %.1416114506, i64 32
  %i.agh = load <8 x bfloat>, ptr %i.agg, align 16, !tbaa !20
  %i.agi = fpext fast <8 x bfloat> %i.agh to <8 x float>
  %i.agj = getelementptr inbounds nuw i8, ptr %.1416114506, i64 48
  %i.agk = load <8 x bfloat>, ptr %i.agj, align 16, !tbaa !20
  %i.agl = fpext fast <8 x bfloat> %i.agk to <8 x float>
  %i.agm = getelementptr inbounds nuw i8, ptr %.1416114506, i64 64
  %i.agn = load <8 x bfloat>, ptr %i.agm, align 16, !tbaa !20
  %i.ago = fpext fast <8 x bfloat> %i.agn to <8 x float>
  %i.agp = getelementptr inbounds nuw i8, ptr %.1416114506, i64 80
  %i.agq = load <8 x bfloat>, ptr %i.agp, align 16, !tbaa !20
  %i.agr = fpext fast <8 x bfloat> %i.agq to <8 x float>
  %i.ags = getelementptr inbounds nuw i8, ptr %.1416114506, i64 96
  %i.agt = load <8 x bfloat>, ptr %i.ags, align 16, !tbaa !20
  %i.agu = fpext fast <8 x bfloat> %i.agt to <8 x float>
  %i.agv = getelementptr inbounds nuw i8, ptr %.1416114506, i64 112
  %i.agw = load <8 x bfloat>, ptr %i.agv, align 16, !tbaa !20
  %i.agx = fpext fast <8 x bfloat> %i.agw to <8 x float>
  %i.agy = sext i32 %i.aga to i64                 ; 8 uses
  %i.agz = getelementptr inbounds [2 x i8], ptr %gep4530, i64 %i.agy
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !76
  %i.ahb = zext i16 %i.aha to i32
  %i.ahc = shl nuw i32 %i.ahb, 16
  %i.ahd = insertelement <8 x i32> poison, i32 %i.ahc, i64 0
  %i.ahe = bitcast <8 x i32> %i.ahd to <8 x float>
  %i.ahf = shufflevector <8 x float> %i.ahe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agc, <8 x float> nofpclass(nan inf) %i.ahf, <8 x float> nofpclass(nan inf) %.1541254505)
  %i.ahh = getelementptr [2 x i8], ptr %i.afs, i64 %i.agy
  %i.ahi = load i16, ptr %i.ahh, align 2, !tbaa !76
  %i.ahj = zext i16 %i.ahi to i32
  %i.ahk = shl nuw i32 %i.ahj, 16
  %i.ahl = insertelement <8 x i32> poison, i32 %i.ahk, i64 0
  %i.ahm = bitcast <8 x i32> %i.ahl to <8 x float>
  %i.ahn = shufflevector <8 x float> %i.ahm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agf, <8 x float> nofpclass(nan inf) %i.ahn, <8 x float> nofpclass(nan inf) %.1441494504)
  %i.ahp = getelementptr [2 x i8], ptr %i.aft, i64 %i.agy
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !76
  %i.ahr = zext i16 %i.ahq to i32
  %i.ahs = shl nuw i32 %i.ahr, 16
  %i.aht = insertelement <8 x i32> poison, i32 %i.ahs, i64 0
  %i.ahu = bitcast <8 x i32> %i.aht to <8 x float>
  %i.ahv = shufflevector <8 x float> %i.ahu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agi, <8 x float> nofpclass(nan inf) %i.ahv, <8 x float> nofpclass(nan inf) %.1441724503)
  %i.ahx = getelementptr [2 x i8], ptr %i.afu, i64 %i.agy
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !76
  %i.ahz = zext i16 %i.ahy to i32
  %i.aia = shl nuw i32 %i.ahz, 16
  %i.aib = insertelement <8 x i32> poison, i32 %i.aia, i64 0
  %i.aic = bitcast <8 x i32> %i.aib to <8 x float>
  %i.aid = shufflevector <8 x float> %i.aic, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aie = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agl, <8 x float> nofpclass(nan inf) %i.aid, <8 x float> nofpclass(nan inf) %.1441934502)
  %i.aif = getelementptr [2 x i8], ptr %i.afv, i64 %i.agy
  %i.aig = load i16, ptr %i.aif, align 2, !tbaa !76
  %i.aih = zext i16 %i.aig to i32
  %i.aii = shl nuw i32 %i.aih, 16
  %i.aij = insertelement <8 x i32> poison, i32 %i.aii, i64 0
  %i.aik = bitcast <8 x i32> %i.aij to <8 x float>
  %i.ail = shufflevector <8 x float> %i.aik, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aim = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ago, <8 x float> nofpclass(nan inf) %i.ail, <8 x float> nofpclass(nan inf) %i.ahg) ; 2 uses
  %i.ain = getelementptr [2 x i8], ptr %i.afw, i64 %i.agy
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !76
  %i.aip = zext i16 %i.aio to i32
  %i.aiq = shl nuw i32 %i.aip, 16
  %i.air = insertelement <8 x i32> poison, i32 %i.aiq, i64 0
  %i.ais = bitcast <8 x i32> %i.air to <8 x float>
  %i.ait = shufflevector <8 x float> %i.ais, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aiu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agr, <8 x float> nofpclass(nan inf) %i.ait, <8 x float> nofpclass(nan inf) %i.aho) ; 2 uses
  %i.aiv = getelementptr [2 x i8], ptr %i.afx, i64 %i.agy
  %i.aiw = load i16, ptr %i.aiv, align 2, !tbaa !76
  %i.aix = zext i16 %i.aiw to i32
  %i.aiy = shl nuw i32 %i.aix, 16
  %i.aiz = insertelement <8 x i32> poison, i32 %i.aiy, i64 0
  %i.aja = bitcast <8 x i32> %i.aiz to <8 x float>
  %i.ajb = shufflevector <8 x float> %i.aja, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agu, <8 x float> nofpclass(nan inf) %i.ajb, <8 x float> nofpclass(nan inf) %i.ahw) ; 2 uses
  %i.ajd = getelementptr [2 x i8], ptr %i.afy, i64 %i.agy
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !76
  %i.ajf = zext i16 %i.aje to i32
  %i.ajg = shl nuw i32 %i.ajf, 16
  %i.ajh = insertelement <8 x i32> poison, i32 %i.ajg, i64 0
  %i.aji = bitcast <8 x i32> %i.ajh to <8 x float>
  %i.ajj = shufflevector <8 x float> %i.aji, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agx, <8 x float> nofpclass(nan inf) %i.ajj, <8 x float> nofpclass(nan inf) %i.aie) ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.1416114506, i64 128
  %indvars.iv.next5473 = add nuw nsw i64 %indvars.iv5472, 1 ; 2 uses
  %exitcond5478.not = icmp eq i64 %indvars.iv.next5473, %wide.trip.count5477
  br i1 %exitcond5478.not, label %.loopexit4388.loopexit, label %bb.h, !llvm.loop !153

.loopexit4388.loopexit:                           ; preds = %bb.h
  %scevgep5474 = getelementptr i8, ptr %.916064518, i64 128
  %scevgep5475 = getelementptr i8, ptr %scevgep5474, i64 %i.gh
  br label %.loopexit4388

.loopexit4388:                                    ; preds = %.preheader4390, %.loopexit4391.loopexit, %bb.g, %.loopexit4389.loopexit, %.loopexit4388.loopexit, %.preheader4387, %.loopexit4389
  %.154194 = phi nsz <8 x float> [ %.941884514, %.loopexit4389 ], [ %.941884514, %.preheader4387 ], [ %i.ajk, %.loopexit4388.loopexit ], [ %.941884514, %bb.g ], [ %i.afq, %.loopexit4389.loopexit ], [ %i.adj, %.loopexit4391.loopexit ], [ %.941884514, %.preheader4390 ] ; 2 uses
  %.154173 = phi nsz <8 x float> [ %.941674515, %.loopexit4389 ], [ %.941674515, %.preheader4387 ], [ %i.ajc, %.loopexit4388.loopexit ], [ %.941674515, %bb.g ], [ %i.afn, %.loopexit4389.loopexit ], [ %i.adg, %.loopexit4391.loopexit ], [ %.941674515, %.preheader4390 ] ; 2 uses
  %.154150 = phi nsz <8 x float> [ %.941444516, %.loopexit4389 ], [ %.941444516, %.preheader4387 ], [ %i.aiu, %.loopexit4388.loopexit ], [ %.941444516, %bb.g ], [ %i.afk, %.loopexit4389.loopexit ], [ %i.add, %.loopexit4391.loopexit ], [ %.941444516, %.preheader4390 ] ; 2 uses
  %.164126 = phi nsz <8 x float> [ %.1041204517, %.loopexit4389 ], [ %.1041204517, %.preheader4387 ], [ %i.aim, %.loopexit4388.loopexit ], [ %.1041204517, %bb.g ], [ %i.afh, %.loopexit4389.loopexit ], [ %i.ada, %.loopexit4391.loopexit ], [ %.1041204517, %.preheader4390 ] ; 2 uses
  %.151612 = phi ptr [ %.916064518, %.loopexit4389 ], [ %.916064518, %.preheader4387 ], [ %scevgep5475, %.loopexit4388.loopexit ], [ %.916064518, %bb.g ], [ %scevgep5468, %.loopexit4389.loopexit ], [ %scevgep5461, %.loopexit4391.loopexit ], [ %.916064518, %.preheader4390 ] ; 2 uses
  %i.ajm = add nuw nsw i32 %.115934519, 8         ; 3 uses
  %i.ajn = or disjoint i32 %i.ajm, 7
  %i.ajo = icmp slt i32 %i.ajn, %i.db
  br i1 %i.ajo, label %_ZN4ncnn3MatD2Ev.exit2356, label %.preheader4400, !llvm.loop !154

.preheader4399:                                   ; preds = %.loopexit4384, %.preheader4400
  %.164195.lcssa = phi <8 x float> [ %.94188.lcssa, %.preheader4400 ], [ %.204199, %.loopexit4384 ]
  %.164174.lcssa = phi <8 x float> [ %.94167.lcssa, %.preheader4400 ], [ %.204178, %.loopexit4384 ]
  %.164151.lcssa = phi <8 x float> [ %.94144.lcssa, %.preheader4400 ], [ %.204155, %.loopexit4384 ] ; 3 uses
  %.174127.lcssa = phi <8 x float> [ %.104120.lcssa, %.preheader4400 ], [ %.214131, %.loopexit4384 ] ; 3 uses
  %.161613.lcssa = phi ptr [ %.91606.lcssa, %.preheader4400 ], [ %.201617, %.loopexit4384 ] ; 3 uses
  %.21594.lcssa = phi i32 [ %.11593.lcssa, %.preheader4400 ], [ %i.aoo, %.loopexit4384 ] ; 5 uses
  %i.ajp = or disjoint i32 %.21594.lcssa, 1
  %i.ajq = icmp slt i32 %i.ajp, %i.db
  br i1 %i.ajq, label %_ZN4ncnn3MatD2Ev.exit2354.lr.ph, label %.preheader4398

_ZN4ncnn3MatD2Ev.exit2354.lr.ph:                  ; preds = %.preheader4399
  %i.ajr = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !155
  %i.ajs = load ptr, ptr %0, align 8, !tbaa !9, !noalias !155
  %i.ajt = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !155
  %i.aju = load i64, ptr %i.ci, align 8, !tbaa !19, !noalias !155 ; 2 uses
  %factor.op.mul4589 = mul i64 %i.ajt, %i.aju
  %i.ajv = sext i32 %i.ajr to i64
  %i.ajw = mul i64 %i.aju, %i.ajv
  %i.ajx = mul i64 %i.ajw, %i.eg
  %invariant.gep4591 = getelementptr i8, ptr %i.ajs, i64 %i.ajx
  %i.ajy = mul nsw i64 %indvars.iv5513, %i.eo
  %invariant.gep4592 = getelementptr [2 x i8], ptr %invariant.gep4591, i64 %i.ajy
  %i.ajz = load ptr, ptr %i.g, align 8
  %i.aka = load i64, ptr %i.d, align 8
  br i1 %i.ej, label %_ZN4ncnn3MatD2Ev.exit2354.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2354.preheader

_ZN4ncnn3MatD2Ev.exit2354.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2354.lr.ph
  %i.akb = add i32 %.21594.lcssa, 2
  %i.akc = sub i32 %13, %.21594.lcssa
  %i.akd = and i32 %i.akc, -2
  %i.ake = add i32 %i.akb, %i.akd
  br label %.preheader4398

_ZN4ncnn3MatD2Ev.exit2354.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2354.lr.ph
  %i.akf = zext i32 %.21594.lcssa to i64
  br label %_ZN4ncnn3MatD2Ev.exit2354.us

_ZN4ncnn3MatD2Ev.exit2354.us:                     ; preds = %_ZN4ncnn3MatD2Ev.exit2354.us.preheader, %._crit_edge4577.us
  %indvars.iv5500 = phi i64 [ %i.akf, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %indvars.iv.next5501, %._crit_edge4577.us ] ; 2 uses
  %.2116184583.us = phi ptr [ %.161613.lcssa, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %scevgep5496, %._crit_edge4577.us ] ; 2 uses
  %.2241324582.us = phi <8 x float> [ %.174127.lcssa, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %i.akw, %._crit_edge4577.us ]
  %.2141564581.us = phi <8 x float> [ %.164151.lcssa, %_ZN4ncnn3MatD2Ev.exit2354.us.preheader ], [ %i.ale, %._crit_edge4577.us ]
  %.reass4590.us = mul i64 %factor.op.mul4589, %indvars.iv5500
  %gep4593.us = getelementptr i8, ptr %invariant.gep4592, i64 %.reass4590.us ; 2 uses
  %i.akg = getelementptr [2 x i8], ptr %gep4593.us, i64 %i.aka
  br label %bb.i

bb.i:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2354.us, %bb.i
  %indvars.iv5493 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %indvars.iv.next5494, %bb.i ] ; 2 uses
  %.2216194574.us = phi ptr [ %.2116184583.us, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %i.alf, %bb.i ] ; 3 uses
  %.2341334573.us = phi <8 x float> [ %.2241324582.us, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %i.akw, %bb.i ]
  %.2241574572.us = phi <8 x float> [ %.2141564581.us, %_ZN4ncnn3MatD2Ev.exit2354.us ], [ %i.ale, %bb.i ]
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %indvars.iv5493
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !113
  %i.akj = load <8 x bfloat>, ptr %.2216194574.us, align 16, !tbaa !20
  %i.akk = fpext fast <8 x bfloat> %i.akj to <8 x float>
  %i.akl = getelementptr inbounds nuw i8, ptr %.2216194574.us, i64 16
  %i.akm = load <8 x bfloat>, ptr %i.akl, align 16, !tbaa !20
  %i.akn = fpext fast <8 x bfloat> %i.akm to <8 x float>
  %i.ako = sext i32 %i.aki to i64                 ; 2 uses
  %i.akp = getelementptr inbounds [2 x i8], ptr %gep4593.us, i64 %i.ako
  %i.akq = load i16, ptr %i.akp, align 2, !tbaa !76
  %i.akr = zext i16 %i.akq to i32
  %i.aks = shl nuw i32 %i.akr, 16
  %i.akt = insertelement <8 x i32> poison, i32 %i.aks, i64 0
  %i.aku = bitcast <8 x i32> %i.akt to <8 x float>
  %i.akv = shufflevector <8 x float> %i.aku, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akk, <8 x float> nofpclass(nan inf) %i.akv, <8 x float> nofpclass(nan inf) %.2341334573.us) ; 3 uses
  %i.akx = getelementptr [2 x i8], ptr %i.akg, i64 %i.ako
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !76
  %i.akz = zext i16 %i.aky to i32
  %i.ala = shl nuw i32 %i.akz, 16
  %i.alb = insertelement <8 x i32> poison, i32 %i.ala, i64 0
  %i.alc = bitcast <8 x i32> %i.alb to <8 x float>
  %i.ald = shufflevector <8 x float> %i.alc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ale = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akn, <8 x float> nofpclass(nan inf) %i.ald, <8 x float> nofpclass(nan inf) %.2241574572.us) ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.2216194574.us, i64 32
  %indvars.iv.next5494 = add nuw nsw i64 %indvars.iv5493, 1 ; 2 uses
  %exitcond5499.not = icmp eq i64 %indvars.iv.next5494, %wide.trip.count5498
  br i1 %exitcond5499.not, label %._crit_edge4577.us, label %bb.i, !llvm.loop !158

._crit_edge4577.us:                               ; preds = %bb.i
  %scevgep5495 = getelementptr i8, ptr %.2116184583.us, i64 32
  %scevgep5496 = getelementptr i8, ptr %scevgep5495, i64 %i.em ; 2 uses
  %indvars.iv.next5501 = add nuw nsw i64 %indvars.iv5500, 2 ; 3 uses
  %i.alg = trunc i64 %indvars.iv.next5501 to i32
  %i.alh = or i32 %i.alg, 1
  %i.ali = icmp slt i32 %i.alh, %i.db
  br i1 %i.ali, label %_ZN4ncnn3MatD2Ev.exit2354.us, label %.preheader4398.loopexit, !llvm.loop !159

_ZN4ncnn3MatD2Ev.exit2355:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2355.lr.ph, %.loopexit4384
  %.215944560 = phi i32 [ %.11593.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %i.aoo, %.loopexit4384 ] ; 2 uses
  %.1616134559 = phi ptr [ %.91606.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.201617, %.loopexit4384 ] ; 7 uses
  %.1741274558 = phi <8 x float> [ %.104120.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.214131, %.loopexit4384 ] ; 5 uses
  %.1641514557 = phi <8 x float> [ %.94144.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.204155, %.loopexit4384 ] ; 5 uses
  %.1641744556 = phi <8 x float> [ %.94167.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.204178, %.loopexit4384 ] ; 5 uses
  %.1641954555 = phi <8 x float> [ %.94188.lcssa, %_ZN4ncnn3MatD2Ev.exit2355.lr.ph ], [ %.204199, %.loopexit4384 ] ; 5 uses
  %i.alj = sdiv i32 %.215944560, %i.cz
  %i.alk = sext i32 %i.alj to i64
  %.reass4568 = mul i64 %factor.op.mul4567, %i.alk
  %gep4571 = getelementptr i8, ptr %invariant.gep4570, i64 %.reass4568 ; 5 uses
  br i1 %i.ds, label %.preheader4385, label %.loopexit4386

.preheader4385:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2355
  br i1 %i.aba, label %.lr.ph4537, label %.loopexit4384

.lr.ph4537:                                       ; preds = %.preheader4385, %.lr.ph4537
  %indvars.iv5479 = phi i64 [ %indvars.iv.next5480, %.lr.ph4537 ], [ 0, %.preheader4385 ] ; 2 uses
  %.1716144535 = phi ptr [ %i.amp, %.lr.ph4537 ], [ %.1616134559, %.preheader4385 ] ; 5 uses
  %.1841284534 = phi <8 x float> [ %i.amf, %.lr.ph4537 ], [ %.1741274558, %.preheader4385 ]
  %.1741524533 = phi <8 x float> [ %i.ami, %.lr.ph4537 ], [ %.1641514557, %.preheader4385 ]
  %.1741754532 = phi <8 x float> [ %i.aml, %.lr.ph4537 ], [ %.1641744556, %.preheader4385 ]
  %.1741964531 = phi <8 x float> [ %i.amo, %.lr.ph4537 ], [ %.1641954555, %.preheader4385 ]
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv5479
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !113
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [2 x i8], ptr %gep4571, i64 %i.aln
  %i.alp = load <8 x bfloat>, ptr %.1716144535, align 16, !tbaa !20
  %i.alq = fpext fast <8 x bfloat> %i.alp to <8 x float>
  %i.alr = getelementptr inbounds nuw i8, ptr %.1716144535, i64 16
  %i.als = load <8 x bfloat>, ptr %i.alr, align 16, !tbaa !20
  %i.alt = fpext fast <8 x bfloat> %i.als to <8 x float>
  %i.alu = getelementptr inbounds nuw i8, ptr %.1716144535, i64 32
  %i.alv = load <8 x bfloat>, ptr %i.alu, align 16, !tbaa !20
  %i.alw = fpext fast <8 x bfloat> %i.alv to <8 x float>
  %i.alx = getelementptr inbounds nuw i8, ptr %.1716144535, i64 48
  %i.aly = load <8 x bfloat>, ptr %i.alx, align 16, !tbaa !20
  %i.alz = fpext fast <8 x bfloat> %i.aly to <8 x float>
  %i.ama = load <4 x i16>, ptr %i.alo, align 2, !tbaa !76
  %i.amb = zext <4 x i16> %i.ama to <4 x i32>
  %i.amc = shl nuw <4 x i32> %i.amb, splat (i32 16) ; 4 uses
  %i.amd = bitcast <4 x i32> %i.amc to <4 x float>
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <8 x i32> zeroinitializer
  %i.amf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alq, <8 x float> nofpclass(nan inf) %i.ame, <8 x float> nofpclass(nan inf) %.1841284534) ; 2 uses
  %i.amg = bitcast <4 x i32> %i.amc to <4 x float>
  %i.amh = shufflevector <4 x float> %i.amg, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ami = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alt, <8 x float> nofpclass(nan inf) %i.amh, <8 x float> nofpclass(nan inf) %.1741524533) ; 2 uses
  %i.amj = bitcast <4 x i32> %i.amc to <4 x float>
  %i.amk = shufflevector <4 x float> %i.amj, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aml = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alw, <8 x float> nofpclass(nan inf) %i.amk, <8 x float> nofpclass(nan inf) %.1741754532) ; 2 uses
  %i.amm = bitcast <4 x i32> %i.amc to <4 x float>
  %i.amn = shufflevector <4 x float> %i.amm, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.amo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alz, <8 x float> nofpclass(nan inf) %i.amn, <8 x float> nofpclass(nan inf) %.1741964531) ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.1716144535, i64 64
  %indvars.iv.next5480 = add nuw nsw i64 %indvars.iv5479, 1 ; 2 uses
  %exitcond5485.not = icmp eq i64 %indvars.iv.next5480, %wide.trip.count5484
  br i1 %exitcond5485.not, label %.loopexit4386.loopexit, label %.lr.ph4537, !llvm.loop !160

.loopexit4386.loopexit:                           ; preds = %.lr.ph4537
  %scevgep5481 = getelementptr i8, ptr %.1616134559, i64 64
  %scevgep5482 = getelementptr i8, ptr %scevgep5481, i64 %i.abf
  br label %.loopexit4384

.loopexit4386:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2355
  br i1 %i.dt, label %.preheader4383, label %.loopexit4384

.preheader4383:                                   ; preds = %.loopexit4386
  br i1 %i.aba, label %.lr.ph4549, label %.loopexit4384

.lr.ph4549:                                       ; preds = %.preheader4383
  %i.amq = getelementptr [2 x i8], ptr %gep4571, i64 %i.abc
  %i.amr = getelementptr i8, ptr %gep4571, i64 %.idx2187
  %i.ams = getelementptr i8, ptr %gep4571, i64 %.idx2188
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph4549, %bb.j
  %indvars.iv5486 = phi i64 [ 0, %.lr.ph4549 ], [ %indvars.iv.next5487, %bb.j ] ; 2 uses
  %.1916164547 = phi ptr [ %.1616134559, %.lr.ph4549 ], [ %i.aon, %bb.j ] ; 5 uses
  %.2041304546 = phi <8 x float> [ %.1741274558, %.lr.ph4549 ], [ %i.ano, %bb.j ]
  %.1941544545 = phi <8 x float> [ %.1641514557, %.lr.ph4549 ], [ %i.anw, %bb.j ]
  %.1941774544 = phi <8 x float> [ %.1641744556, %.lr.ph4549 ], [ %i.aoe, %bb.j ]
  %.1941984543 = phi <8 x float> [ %.1641954555, %.lr.ph4549 ], [ %i.aom, %bb.j ]
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv5486
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !113
  %i.amv = load <8 x bfloat>, ptr %.1916164547, align 16, !tbaa !20
  %i.amw = fpext fast <8 x bfloat> %i.amv to <8 x float>
  %i.amx = getelementptr inbounds nuw i8, ptr %.1916164547, i64 16
  %i.amy = load <8 x bfloat>, ptr %i.amx, align 16, !tbaa !20
  %i.amz = fpext fast <8 x bfloat> %i.amy to <8 x float>
  %i.ana = getelementptr inbounds nuw i8, ptr %.1916164547, i64 32
  %i.anb = load <8 x bfloat>, ptr %i.ana, align 16, !tbaa !20
  %i.anc = fpext fast <8 x bfloat> %i.anb to <8 x float>
  %i.and = getelementptr inbounds nuw i8, ptr %.1916164547, i64 48
  %i.ane = load <8 x bfloat>, ptr %i.and, align 16, !tbaa !20
  %i.anf = fpext fast <8 x bfloat> %i.ane to <8 x float>
  %i.ang = sext i32 %i.amu to i64                 ; 4 uses
  %i.anh = getelementptr inbounds [2 x i8], ptr %gep4571, i64 %i.ang
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !76
  %i.anj = zext i16 %i.ani to i32
  %i.ank = shl nuw i32 %i.anj, 16
  %i.anl = insertelement <8 x i32> poison, i32 %i.ank, i64 0
  %i.anm = bitcast <8 x i32> %i.anl to <8 x float>
  %i.ann = shufflevector <8 x float> %i.anm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ano = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amw, <8 x float> nofpclass(nan inf) %i.ann, <8 x float> nofpclass(nan inf) %.2041304546) ; 2 uses
  %i.anp = getelementptr [2 x i8], ptr %i.amq, i64 %i.ang
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !76
  %i.anr = zext i16 %i.anq to i32
  %i.ans = shl nuw i32 %i.anr, 16
  %i.ant = insertelement <8 x i32> poison, i32 %i.ans, i64 0
  %i.anu = bitcast <8 x i32> %i.ant to <8 x float>
  %i.anv = shufflevector <8 x float> %i.anu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amz, <8 x float> nofpclass(nan inf) %i.anv, <8 x float> nofpclass(nan inf) %.1941544545) ; 2 uses
  %i.anx = getelementptr [2 x i8], ptr %i.amr, i64 %i.ang
  %i.any = load i16, ptr %i.anx, align 2, !tbaa !76
  %i.anz = zext i16 %i.any to i32
  %i.aoa = shl nuw i32 %i.anz, 16
  %i.aob = insertelement <8 x i32> poison, i32 %i.aoa, i64 0
  %i.aoc = bitcast <8 x i32> %i.aob to <8 x float>
  %i.aod = shufflevector <8 x float> %i.aoc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aoe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.anc, <8 x float> nofpclass(nan inf) %i.aod, <8 x float> nofpclass(nan inf) %.1941774544) ; 2 uses
  %i.aof = getelementptr [2 x i8], ptr %i.ams, i64 %i.ang
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !76
  %i.aoh = zext i16 %i.aog to i32
  %i.aoi = shl nuw i32 %i.aoh, 16
  %i.aoj = insertelement <8 x i32> poison, i32 %i.aoi, i64 0
  %i.aok = bitcast <8 x i32> %i.aoj to <8 x float>
  %i.aol = shufflevector <8 x float> %i.aok, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aom = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.anf, <8 x float> nofpclass(nan inf) %i.aol, <8 x float> nofpclass(nan inf) %.1941984543) ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.1916164547, i64 64
  %indvars.iv.next5487 = add nuw nsw i64 %indvars.iv5486, 1 ; 2 uses
  %exitcond5492.not = icmp eq i64 %indvars.iv.next5487, %wide.trip.count5491
  br i1 %exitcond5492.not, label %.loopexit4384.loopexit, label %bb.j, !llvm.loop !161

.loopexit4384.loopexit:                           ; preds = %bb.j
  %scevgep5488 = getelementptr i8, ptr %.1616134559, i64 64
  %scevgep5489 = getelementptr i8, ptr %scevgep5488, i64 %i.abf
  br label %.loopexit4384

.loopexit4384:                                    ; preds = %.preheader4385, %.loopexit4386.loopexit, %.loopexit4384.loopexit, %.preheader4383, %.loopexit4386
end_hunk_1
begin_hunk_2_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.ate = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atd, <8 x float> nofpclass(nan inf) %i.ata, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.atf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ate, <8 x float> nofpclass(nan inf) %i.ata, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.atg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atf, <8 x float> nofpclass(nan inf) %i.ata, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.ath = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atg, <8 x float> nofpclass(nan inf) %i.atb, <8 x float> nofpclass(nan inf) %i.ata)
  %i.ati = fadd fast <8 x float> %i.ath, splat (float 1.000000e+00)
  %i.atj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.asx)
  %i.atk = shl <8 x i32> %i.atj, splat (i32 23)
  %i.atl = add <8 x i32> %i.atk, splat (i32 1065353216)
  %i.atm = bitcast <8 x i32> %i.atl to <8 x float>
  %i.atn = fmul fast <8 x float> %i.ati, %i.atm
  %i.ato = fadd fast <8 x float> %i.atn, splat (float 1.000000e+00) ; 2 uses
  %i.atp = fcmp fast ole <8 x float> %i.ato, zeroinitializer
  %i.atq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ato, <8 x float> splat (float f0x00800000))
  %i.atr = bitcast <8 x float> %i.atq to <8 x i32> ; 2 uses
  %i.ats = lshr <8 x i32> %i.atr, splat (i32 23)
  %i.att = and <8 x i32> %i.atr, splat (i32 -2139095041)
  %i.atu = or disjoint <8 x i32> %i.att, splat (i32 1056964608)
  %i.atv = bitcast <8 x i32> %i.atu to <8 x float> ; 3 uses
  %i.atw = add nsw <8 x i32> %i.ats, splat (i32 -127)
  %i.atx = sitofp fast <8 x i32> %i.atw to <8 x float> ; 2 uses
  %i.aty = fadd fast <8 x float> %i.atx, splat (float 1.000000e+00)
  %i.atz = fcmp fast olt <8 x float> %i.atv, splat (float f0x3F3504F3) ; 2 uses
  %i.aua = select <8 x i1> %i.atz, <8 x float> %i.atv, <8 x float> zeroinitializer
  %i.aub = fadd fast <8 x float> %i.atv, splat (float -1.000000e+00)
  %i.auc = select fast <8 x i1> %i.atz, <8 x float> %i.atx, <8 x float> %i.aty ; 2 uses
  %i.aud = fadd fast <8 x float> %i.aub, %i.aua   ; 12 uses
  %i.aue = fmul fast <8 x float> %i.aud, %i.aud   ; 2 uses
  %i.auf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.aug = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auf, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.auh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aug, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.aui = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auh, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.auj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aui, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.auk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auj, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.aul = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auk, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.aum = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aul, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.aun = fmul fast <8 x float> %i.aue, %i.aud
  %i.auo = fmul fast <8 x float> %i.aun, %i.aum
  %i.aup = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auc, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.auo)
  %i.auq = fneg fast <8 x float> %i.aue
  %i.aur = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.auq, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.aup)
  %i.aus = fadd fast <8 x float> %i.aur, %i.aud
  %i.aut = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auc, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.aus)
  %.neg4329 = fmul fast <8 x float> %i.aut, splat (float -2.000000e+00)
  %i.auu = select fast <8 x i1> %i.atp, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg4329
  %i.auv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.auu, <8 x float> splat (float f0x42B0C0A5))
  %i.auw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aux = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auw, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.auy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aux, i32 1) ; 2 uses
  %i.auz = fcmp fast ogt <8 x float> %i.auy, %i.aux
  %i.ava = select <8 x i1> %i.auz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.avb = fsub fast <8 x float> %i.auy, %i.ava   ; 2 uses
  %i.avc = fneg fast <8 x float> %i.avb           ; 2 uses
  %i.avd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.avc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.auw)
  %i.ave = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.avc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.avd) ; 8 uses
  %i.avf = fmul fast <8 x float> %i.ave, %i.ave
  %i.avg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.avh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avg, <8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.avi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avh, <8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.avj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avi, <8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.avk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avj, <8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.avl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avk, <8 x float> nofpclass(nan inf) %i.avf, <8 x float> nofpclass(nan inf) %i.ave)
  %i.avm = fadd fast <8 x float> %i.avl, splat (float 1.000000e+00)
  %i.avn = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.avb)
  %i.avo = shl <8 x i32> %i.avn, splat (i32 23)
  %i.avp = add <8 x i32> %i.avo, splat (i32 1065353216)
  %i.avq = bitcast <8 x i32> %i.avp to <8 x float>
  %i.avr = fmul fast <8 x float> %i.avm, %i.avq
  %i.avs = fadd fast <8 x float> %i.avr, splat (float 1.000000e+00)
  %i.avt = fdiv fast <8 x float> splat (float 1.000000e+00), %i.avs
  %i.avu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avt, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.avv = fmul fast <8 x float> %i.avu, %i.aqx
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc2556:                                       ; preds = %._crit_edge4607
  %i.avw = load ptr, ptr %11, align 8, !tbaa !9   ; 2 uses
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !74
  %i.avy = insertelement <8 x float> poison, float %i.avx, i64 0
  %i.avz = shufflevector <8 x float> %i.avy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !74
  %i.awc = insertelement <8 x float> poison, float %i.awb, i64 0
  %i.awd = shufflevector <8 x float> %i.awc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqx, <8 x float> nofpclass(nan inf) %i.avz, <8 x float> nofpclass(nan inf) %i.awd)
  %i.awf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.awe, <8 x float> zeroinitializer)
  %i.awg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.awf, <8 x float> splat (float 1.000000e+00))
  %i.awh = fmul fast <8 x float> %i.awg, %i.aqx
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc2556, %.noexc2555, %.noexc2554, %bb.l, %.noexc2553, %bb.k, %._crit_edge4607
  %.0.i = phi nsz <8 x float> [ %i.awh, %.noexc2556 ], [ %i.aqy, %bb.k ], [ %i.arg, %.noexc2553 ], [ %i.arq, %bb.l ], [ %i.asq, %.noexc2554 ], [ %i.avv, %.noexc2555 ], [ %i.aqx, %._crit_edge4607 ] ; 4 uses
  switch i32 %i.de, label %.thread4292 [
    i32 8, label %.thread
    i32 4, label %bb.m
    i32 1, label %bb.n
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.awi = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  store <8 x bfloat> %i.awi, ptr %.116254615, align 1, !tbaa !20
  %i.awj = getelementptr inbounds nuw i8, ptr %.116254615, i64 16
  br label %.thread4292

bb.m:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.awk = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awl = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awk)
  %i.awm = bitcast <8 x bfloat> %i.awl to <2 x i64>
  %i.awn = extractelement <2 x i64> %i.awm, i64 0
  store i64 %i.awn, ptr %.116254615, align 1, !tbaa !20
  %i.awo = load i64, ptr %i.e, align 8, !tbaa !117
  %i.awp = getelementptr inbounds nuw [2 x i8], ptr %.116254615, i64 %i.awo
  %i.awq = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awr = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awq)
  %i.aws = bitcast <8 x bfloat> %i.awr to <2 x i64>
  %i.awt = extractelement <2 x i64> %i.aws, i64 0
  store i64 %i.awt, ptr %i.awp, align 1, !tbaa !20
  %i.awu = getelementptr inbounds nuw i8, ptr %.116254615, i64 8
  br label %.thread4292

bb.n:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.awv = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.aww = extractelement <16 x i16> %i.awv, i64 1
  store i16 %i.aww, ptr %.116254615, align 2, !tbaa !76
  %i.awx = extractelement <16 x i16> %i.awv, i64 3
  %i.awy = load i64, ptr %i.e, align 8, !tbaa !117 ; 7 uses
  %i.awz = getelementptr inbounds nuw [2 x i8], ptr %.116254615, i64 %i.awy
  store i16 %i.awx, ptr %i.awz, align 2, !tbaa !76
  %i.axa = extractelement <16 x i16> %i.awv, i64 5
  %.idx2174 = shl i64 %i.awy, 2
  %i.axb = getelementptr inbounds nuw i8, ptr %.116254615, i64 %.idx2174
  store i16 %i.axa, ptr %i.axb, align 2, !tbaa !76
  %i.axc = extractelement <16 x i16> %i.awv, i64 7
  %.idx2175 = mul i64 %i.awy, 6
  %i.axd = getelementptr inbounds nuw i8, ptr %.116254615, i64 %.idx2175
  store i16 %i.axc, ptr %i.axd, align 2, !tbaa !76
  %i.axe = extractelement <16 x i16> %i.awv, i64 9
  %.idx2176 = shl i64 %i.awy, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %.116254615, i64 %.idx2176
  store i16 %i.axe, ptr %i.axf, align 2, !tbaa !76
  %i.axg = extractelement <16 x i16> %i.awv, i64 11
  %.idx2177 = mul i64 %i.awy, 10
  %i.axh = getelementptr inbounds nuw i8, ptr %.116254615, i64 %.idx2177
  store i16 %i.axg, ptr %i.axh, align 2, !tbaa !76
  %i.axi = extractelement <16 x i16> %i.awv, i64 13
  %.idx2178 = mul i64 %i.awy, 12
  %i.axj = getelementptr inbounds nuw i8, ptr %.116254615, i64 %.idx2178
  store i16 %i.axi, ptr %i.axj, align 2, !tbaa !76
  %i.axk = extractelement <16 x i16> %i.awv, i64 15
  %.idx2179 = mul i64 %i.awy, 14
  %i.axl = getelementptr inbounds nuw i8, ptr %.116254615, i64 %.idx2179
  store i16 %i.axk, ptr %i.axl, align 2, !tbaa !76
  %i.axm = getelementptr inbounds nuw i8, ptr %.116254615, i64 2
  br label %.thread4292

.thread4292:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.m, %.thread, %bb.n
  %.41628 = phi ptr [ %i.axm, %bb.n ], [ %.116254615, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.awj, %.thread ], [ %i.awu, %bb.m ] ; 2 uses
  %indvars.iv.next5514 = add nuw nsw i64 %indvars.iv5513, 1 ; 2 uses
  %exitcond5517.not = icmp eq i64 %indvars.iv.next5514, %wide.trip.count5516
  br i1 %exitcond5517.not, label %._crit_edge4618, label %bb.b, !llvm.loop !168

._crit_edge4853:                                  ; preds = %._crit_edge4851.split, %._crit_edge4630
  %i.axn = shl nsw i32 %i.cs, 2
  %i.axo = add nsw i32 %i.axn, %i.cq              ; 3 uses
  %i.axp = sub nsw i32 %i.ad, %i.axo              ; 2 uses
  %i.axq = sdiv i32 %i.axp, 2                     ; 3 uses
  store i32 %i.axq, ptr %i.i, align 4, !tbaa !113
  %i.axr = icmp sgt i32 %i.axp, 1
  br i1 %i.axr, label %.noexc2326.lr.ph, label %._crit_edge5039.split

.noexc2326.lr.ph:                                 ; preds = %._crit_edge4853
  %i.axs = load i32, ptr %i.m, align 8, !tbaa !115 ; 11 uses
  %i.axt = load i32, ptr %i.o, align 8, !tbaa !116
  %i.axu = mul i32 %i.axt, %i.axs                 ; 12 uses
  %i.axv = load i32, ptr %i.v, align 4, !tbaa !114 ; 2 uses
  %i.axw = load i32, ptr %i.x, align 8, !tbaa !118 ; 2 uses
  %i.axx = load ptr, ptr %1, align 8, !tbaa !9, !noalias !169 ; 2 uses
  %i.axy = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !169
  %i.axz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !19, !noalias !169
  %factor.op.mul5041 = mul i64 %i.axy, %i.aya     ; 2 uses
  %i.ayb = icmp slt i32 %i.axw, 1
  %i.ayc = icmp slt i32 %i.axv, 1
  %i.ayd = icmp sgt i32 %i.axu, 15
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ayf = icmp ne i32 %i.axs, 16
  %i.ayg = icmp eq i32 %i.axs, 8
  %i.ayh = icmp eq i32 %i.axs, 4                  ; 2 uses
  %i.ayi = icmp ne i32 %i.axs, 1                  ; 3 uses
  %i.ayj = icmp ne i32 %i.axs, 8
  %i.ayk = icmp ne i32 %i.axs, 4
  %brmerge = select i1 %i.ayb, i1 true, i1 %i.ayc
  br i1 %brmerge, label %._crit_edge5039.split, label %.noexc2326.lr.ph.split.split

.noexc2326.lr.ph.split.split:                     ; preds = %.noexc2326.lr.ph
  %i.ayl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aym = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ayn = load ptr, ptr %2, align 8, !tbaa !9, !noalias !172
  %i.ayo = load i64, ptr %i.aym, align 8, !tbaa !18, !noalias !172
  %i.ayp = load i64, ptr %i.ayl, align 8, !tbaa !19, !noalias !172
  %factor.op.mul5047 = mul i64 %i.ayo, %i.ayp
  %i.ayq = and i32 %i.axu, -16
  %14 = add i32 %i.axu, -2
  %i.ayr = sext i32 %i.axo to i64
  %wide.trip.count5712 = zext nneg i32 %i.axq to i64
  %wide.trip.count5706 = zext nneg i32 %i.axv to i64
  br label %.noexc2326

.noexc2328:                                       ; preds = %.noexc2328.lr.ph, %._crit_edge4851.split
  %indvars.iv5614 = phi i64 [ 0, %.noexc2328.lr.ph ], [ %indvars.iv.next5615, %._crit_edge4851.split ] ; 2 uses
  %i.ays = load i32, ptr %i.m, align 8, !tbaa !115 ; 9 uses
  %i.ayt = load i32, ptr %i.o, align 8, !tbaa !116
  %i.ayu = mul i32 %i.ayt, %i.ays                 ; 12 uses
  %i.ayv = load i32, ptr %i.v, align 4, !tbaa !114 ; 2 uses
  %i.ayw = load i32, ptr %i.x, align 8, !tbaa !118 ; 2 uses
  %i.ayx = load i32, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %i.ayy = icmp sgt i32 %i.ayw, 0
  br i1 %i.ayy, label %.preheader4382.lr.ph, label %._crit_edge4851.split

.preheader4382.lr.ph:                             ; preds = %.noexc2328
  %i.ayz = shl nuw nsw i64 %indvars.iv5614, 2
  %i.aza = add nsw i64 %i.ayz, %i.cy              ; 2 uses
  %i.azb = trunc nsw i64 %i.aza to i32            ; 3 uses
  %i.azc = icmp sgt i32 %i.ayv, 0
  %i.azd = sdiv i32 %i.azb, 16
  %i.aze = insertelement <2 x i32> poison, i32 %i.azb, i64 0
  %i.azf = shufflevector <2 x i32> %i.aze, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.azg = srem <2 x i32> %i.azf, <i32 16, i32 8> ; 2 uses
  %i.azh = bitcast <2 x i32> %i.azg to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.azh, i64 0
  %i.azi = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.azi to i32
  %i.azj = extractelement <2 x i32> %i.azg, i64 1
  %i.azk = ashr exact i32 %i.azj, 2
  %i.azl = add nsw i32 %i.azk, %i.azd
  %i.azm = add nsw i32 %i.azl, %.sext
  %i.azn = sext i32 %i.azm to i64
  %i.azo = icmp sgt i32 %i.ayu, 15
  %i.azp = icmp eq i32 %i.ays, 16
  %i.azq = icmp eq i32 %i.ays, 8                  ; 2 uses
  %i.azr = icmp eq i32 %i.ays, 4                  ; 3 uses
  %i.azs = icmp eq i32 %i.ays, 1                  ; 3 uses
  %i.azt = load i32, ptr %i.c, align 4
  br i1 %i.azc, label %.preheader4382.preheader, label %._crit_edge4851.split

.preheader4382.preheader:                         ; preds = %.preheader4382.lr.ph
  %i.azu = load ptr, ptr %1, align 8, !tbaa !9, !noalias !175
  %i.azv = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !175
  %i.azw = sdiv i32 %i.azb, %i.ayx
  %i.azx = sext i32 %i.azw to i64
  %i.azy = mul i64 %i.azv, %i.azx
  %i.azz = load i64, ptr %i.cu, align 8, !tbaa !19, !noalias !175
  %i.baa = mul i64 %i.azy, %i.azz
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 %i.baa
  %i.bac = and i32 %i.ayu, -16
  %15 = add i32 %i.ayu, -2
  %wide.trip.count5611 = zext nneg i32 %i.ayv to i64
  br label %.preheader4382

.preheader4382:                                   ; preds = %.preheader4382.preheader, %._crit_edge4841
  %.015754850 = phi i32 [ %i.bap, %._crit_edge4841 ], [ 0, %.preheader4382.preheader ] ; 2 uses
  %.015764849 = phi ptr [ %.31579, %._crit_edge4841 ], [ %i.bab, %.preheader4382.preheader ]
  %i.bad = load i32, ptr %i.b, align 4
  %i.bae = mul nsw i32 %i.bad, %.015754850
  %i.baf = sext i32 %i.bae to i64                 ; 5 uses
  %i.bag = load i32, ptr %i.a, align 4            ; 2 uses
  %factor.op.mul4843 = mul i32 %i.ays, %i.bag     ; 3 uses
  %i.bah = load i32, ptr %i.f, align 4            ; 5 uses
  %i.bai = icmp sgt i32 %i.bah, 0                 ; 2 uses
  %i.baj = add i32 %i.bah, -1
  %i.bak = zext i32 %i.baj to i64                 ; 2 uses
  %i.bal = shl nuw nsw i64 %i.bak, 4
  %i.bam = shl nuw nsw i64 %i.bak, 3
  %i.ban = sext i32 %i.bag to i64                 ; 2 uses
  %wide.trip.count5593 = zext i32 %i.bah to i64   ; 3 uses
  %xtraiter6643 = and i64 %wide.trip.count5593, 1
  %i.bao = icmp eq i32 %i.bah, 1
  %unroll_iter6647 = and i64 %wide.trip.count5593, 2147483646
  %lcmp.mod6644.not = icmp eq i64 %xtraiter6643, 0
  %lcmp.mod6646 = trunc i32 %i.bah to i1
  br label %bb.o

._crit_edge4851.split:                            ; preds = %._crit_edge4841, %.preheader4382.lr.ph, %.noexc2328
  %indvars.iv.next5615 = add nuw nsw i64 %indvars.iv5614, 1 ; 2 uses
  %exitcond5618.not = icmp eq i64 %indvars.iv.next5615, %wide.trip.count5617
  br i1 %exitcond5618.not, label %._crit_edge4853, label %.noexc2328, !llvm.loop !178

._crit_edge4841:                                  ; preds = %bb.ab
  %i.bap = add nuw nsw i32 %.015754850, 1         ; 2 uses
  %exitcond5613.not = icmp eq i32 %i.bap, %i.ayw
  br i1 %exitcond5613.not, label %._crit_edge4851.split, label %.preheader4382, !llvm.loop !179

bb.o:                                             ; preds = %.preheader4382, %bb.ab
  %indvars.iv5608 = phi i64 [ 0, %.preheader4382 ], [ %indvars.iv.next5609, %bb.ab ] ; 6 uses
  %.115774838 = phi ptr [ %.015764849, %.preheader4382 ], [ %.31579, %bb.ab ] ; 8 uses
  %i.baq = load ptr, ptr %i.h, align 8, !tbaa !122 ; 2 uses
  %.not2039 = icmp eq ptr %i.baq, null
  br i1 %.not2039, label %_ZN4ncnn3MatD2Ev.exit2351, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bar = getelementptr inbounds [4 x i8], ptr %i.baq, i64 %i.aza
  %i.bas = load <4 x float>, ptr %i.bar, align 1, !tbaa !20
  br label %_ZN4ncnn3MatD2Ev.exit2351

_ZN4ncnn3MatD2Ev.exit2351:                        ; preds = %bb.p, %bb.o
  %.04265 = phi nsz <4 x float> [ zeroinitializer, %bb.o ], [ %i.bas, %bb.p ] ; 2 uses
  %i.bat = load ptr, ptr %2, align 8, !tbaa !9, !noalias !180
  %i.bau = load i64, ptr %i.cv, align 8, !tbaa !18, !noalias !180
  %i.bav = mul i64 %i.bau, %i.azn
  %i.baw = load i64, ptr %i.cw, align 8, !tbaa !19, !noalias !180
  %i.bax = mul i64 %i.bav, %i.baw
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bat, i64 %i.bax ; 2 uses
  br i1 %i.azo, label %_ZN4ncnn3MatD2Ev.exit2350.lr.ph, label %.preheader4381

_ZN4ncnn3MatD2Ev.exit2350.lr.ph:                  ; preds = %_ZN4ncnn3MatD2Ev.exit2351
  %i.baz = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !183
  %i.bba = load ptr, ptr %0, align 8, !tbaa !9, !noalias !183
  %i.bbb = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !183
  %i.bbc = load i64, ptr %i.cx, align 8, !tbaa !19, !noalias !183 ; 2 uses
  %factor.op.mul4694 = mul i64 %i.bbb, %i.bbc
  %i.bbd = sext i32 %i.baz to i64
  %i.bbe = mul i64 %i.bbc, %i.bbd
  %i.bbf = mul i64 %i.bbe, %i.baf
  %invariant.gep4696 = getelementptr i8, ptr %i.bba, i64 %i.bbf
  %i.bbg = trunc nuw nsw i64 %indvars.iv5608 to i32
  %.reass4844 = mul i32 %factor.op.mul4843, %i.bbg
  %i.bbh = sext i32 %.reass4844 to i64
  %invariant.gep4697 = getelementptr [2 x i8], ptr %invariant.gep4696, i64 %i.bbh
  %i.bbi = load i32, ptr %i.f, align 4            ; 6 uses
  %i.bbj = icmp sgt i32 %i.bbi, 0                 ; 4 uses
  %i.bbk = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.bbl = load i64, ptr %i.d, align 8            ; 17 uses
  %.idx2089 = shl i64 %i.bbl, 2                   ; 2 uses
  %.idx2090 = mul i64 %i.bbl, 6                   ; 2 uses
  %.idx2109 = shl i64 %i.bbl, 3
  %.idx2110 = mul i64 %i.bbl, 10
  %.idx2111 = mul i64 %i.bbl, 12
  %.idx2112 = mul i64 %i.bbl, 14
  %.idx2113 = shl i64 %i.bbl, 4
  %.idx2114 = mul i64 %i.bbl, 18
  %.idx2115 = mul i64 %i.bbl, 20
  %.idx2116 = mul i64 %i.bbl, 22
  %.idx2117 = mul i64 %i.bbl, 24
  %.idx2118 = mul i64 %i.bbl, 26
  %.idx2119 = mul i64 %i.bbl, 28
  %.idx2120 = mul i64 %i.bbl, 30
  %i.bbm = add i32 %i.bbi, -1
  %i.bbn = zext i32 %i.bbm to i64
  %i.bbo = shl nuw nsw i64 %i.bbn, 7              ; 4 uses
  %wide.trip.count5550 = zext nneg i32 %i.bbi to i64
  %wide.trip.count5543 = zext nneg i32 %i.bbi to i64
  %wide.trip.count5536 = zext nneg i32 %i.bbi to i64
  %wide.trip.count5529 = zext nneg i32 %i.bbi to i64
  br label %_ZN4ncnn3MatD2Ev.exit2350

.preheader4381:                                   ; preds = %.loopexit4373, %_ZN4ncnn3MatD2Ev.exit2351
  %.14266.lcssa = phi <4 x float> [ %.04265, %_ZN4ncnn3MatD2Ev.exit2351 ], [ %.94274, %.loopexit4373 ] ; 2 uses
  %.04242.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2351 ], [ %.84250, %.loopexit4373 ] ; 2 uses
  %.04221.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2351 ], [ %.84229, %.loopexit4373 ] ; 2 uses
  %.04200.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2351 ], [ %.84208, %.loopexit4373 ] ; 2 uses
  %.01549.lcssa = phi ptr [ %i.bay, %_ZN4ncnn3MatD2Ev.exit2351 ], [ %.81557, %.loopexit4373 ] ; 2 uses
  %.01544.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2351 ], [ %i.bac, %.loopexit4373 ] ; 3 uses
  %i.bbp = or disjoint i32 %.01544.lcssa, 7
  %i.bbq = icmp slt i32 %i.bbp, %i.ayu
  br i1 %i.bbq, label %_ZN4ncnn3MatD2Ev.exit2349.lr.ph, label %.preheader4380

_ZN4ncnn3MatD2Ev.exit2349.lr.ph:                  ; preds = %.preheader4381
  %i.bbr = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !186
  %i.bbs = load ptr, ptr %0, align 8, !tbaa !9, !noalias !186
  %i.bbt = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !186
  %i.bbu = load i64, ptr %i.cx, align 8, !tbaa !19, !noalias !186 ; 2 uses
  %factor.op.mul4748 = mul i64 %i.bbt, %i.bbu
  %i.bbv = sext i32 %i.bbr to i64
  %i.bbw = mul i64 %i.bbu, %i.bbv
  %i.bbx = mul i64 %i.bbw, %i.baf
  %invariant.gep4750 = getelementptr i8, ptr %i.bbs, i64 %i.bbx
  %i.bby = trunc nuw nsw i64 %indvars.iv5608 to i32
  %.reass4846 = mul i32 %factor.op.mul4843, %i.bby
  %i.bbz = sext i32 %.reass4846 to i64
  %invariant.gep4751 = getelementptr [2 x i8], ptr %invariant.gep4750, i64 %i.bbz
  %i.bca = load i32, ptr %i.f, align 4            ; 5 uses
  %i.bcb = icmp sgt i32 %i.bca, 0                 ; 3 uses
  %i.bcc = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.bcd = load i64, ptr %i.d, align 8            ; 8 uses
  %.idx2066 = shl i64 %i.bcd, 2
  %.idx2067 = mul i64 %i.bcd, 6
  %.idx2068 = shl i64 %i.bcd, 3
  %.idx2069 = mul i64 %i.bcd, 10
  %.idx2070 = mul i64 %i.bcd, 12
  %.idx2071 = mul i64 %i.bcd, 14
  %i.bce = add i32 %i.bca, -1
  %i.bcf = zext i32 %i.bce to i64
  %i.bcg = shl nuw nsw i64 %i.bcf, 6              ; 3 uses
  %wide.trip.count5571 = zext nneg i32 %i.bca to i64
  %wide.trip.count5564 = zext nneg i32 %i.bca to i64
  %wide.trip.count5557 = zext nneg i32 %i.bca to i64
  br label %_ZN4ncnn3MatD2Ev.exit2349

_ZN4ncnn3MatD2Ev.exit2350:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2350.lr.ph, %.loopexit4373
  %.015444687 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2350.lr.ph ], [ %i.cdu, %.loopexit4373 ] ; 2 uses
  %.015494686 = phi ptr [ %i.bay, %_ZN4ncnn3MatD2Ev.exit2350.lr.ph ], [ %.81557, %.loopexit4373 ] ; 13 uses
  %.042004685 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2350.lr.ph ], [ %.84208, %.loopexit4373 ] ; 9 uses
  %.042214684 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2350.lr.ph ], [ %.84229, %.loopexit4373 ] ; 9 uses
  %.042424683 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2350.lr.ph ], [ %.84250, %.loopexit4373 ] ; 9 uses
  %.142664682 = phi <4 x float> [ %.04265, %_ZN4ncnn3MatD2Ev.exit2350.lr.ph ], [ %.94274, %.loopexit4373 ] ; 9 uses
  %i.bch = sdiv i32 %.015444687, %i.ays
  %i.bci = sext i32 %i.bch to i64
  %.reass4695 = mul i64 %factor.op.mul4694, %i.bci
  %gep4698 = getelementptr i8, ptr %invariant.gep4697, i64 %.reass4695 ; 23 uses
  br i1 %i.azp, label %.preheader4376, label %.loopexit4377

.preheader4376:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2350
  br i1 %i.bbj, label %.lr.ph4638, label %.loopexit4373

.lr.ph4638:                                       ; preds = %.preheader4376, %.lr.ph4638
  %indvars.iv5524 = phi i64 [ %indvars.iv.next5525, %.lr.ph4638 ], [ 0, %.preheader4376 ] ; 2 uses
  %.115504636 = phi ptr [ %i.bid, %.lr.ph4638 ], [ %.015494686, %.preheader4376 ] ; 17 uses
  %.142014635 = phi <4 x float> [ %i.bic, %.lr.ph4638 ], [ %.042004685, %.preheader4376 ]
  %.142224634 = phi <4 x float> [ %i.bhz, %.lr.ph4638 ], [ %.042214684, %.preheader4376 ]
  %.142434633 = phi <4 x float> [ %i.bhw, %.lr.ph4638 ], [ %.042424683, %.preheader4376 ]
  %.242674632 = phi <4 x float> [ %i.bht, %.lr.ph4638 ], [ %.142664682, %.preheader4376 ]
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bbk, i64 %indvars.iv5524
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !113
  %i.bcl = sext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds [2 x i8], ptr %gep4698, i64 %i.bcl
  %i.bcn = load i64, ptr %.115504636, align 1, !tbaa !20
  %i.bco = insertelement <2 x i64> poison, i64 %i.bcn, i64 0
  %i.bcp = bitcast <2 x i64> %i.bco to <8 x i16>
  %i.bcq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcr = bitcast <8 x i16> %i.bcq to <4 x float>
  %i.bcs = getelementptr inbounds nuw i8, ptr %.115504636, i64 8
  %i.bct = load i64, ptr %i.bcs, align 1, !tbaa !20
  %i.bcu = insertelement <2 x i64> poison, i64 %i.bct, i64 0
  %i.bcv = bitcast <2 x i64> %i.bcu to <8 x i16>
  %i.bcw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcx = bitcast <8 x i16> %i.bcw to <4 x float>
  %i.bcy = getelementptr inbounds nuw i8, ptr %.115504636, i64 16
  %i.bcz = load i64, ptr %i.bcy, align 1, !tbaa !20
  %i.bda = insertelement <2 x i64> poison, i64 %i.bcz, i64 0
  %i.bdb = bitcast <2 x i64> %i.bda to <8 x i16>
  %i.bdc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdd = bitcast <8 x i16> %i.bdc to <4 x float>
  %i.bde = getelementptr inbounds nuw i8, ptr %.115504636, i64 24
  %i.bdf = load i64, ptr %i.bde, align 1, !tbaa !20
  %i.bdg = insertelement <2 x i64> poison, i64 %i.bdf, i64 0
  %i.bdh = bitcast <2 x i64> %i.bdg to <8 x i16>
  %i.bdi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdj = bitcast <8 x i16> %i.bdi to <4 x float>
  %i.bdk = getelementptr inbounds nuw i8, ptr %.115504636, i64 32
  %i.bdl = load i64, ptr %i.bdk, align 1, !tbaa !20
  %i.bdm = insertelement <2 x i64> poison, i64 %i.bdl, i64 0
  %i.bdn = bitcast <2 x i64> %i.bdm to <8 x i16>
  %i.bdo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdp = bitcast <8 x i16> %i.bdo to <4 x float>
  %i.bdq = getelementptr inbounds nuw i8, ptr %.115504636, i64 40
  %i.bdr = load i64, ptr %i.bdq, align 1, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.cjw = zext <8 x i16> %i.cjv to <8 x i32>
  %i.cjx = shl nuw <8 x i32> %i.cjw, splat (i32 16) ; 8 uses
  %i.cjy = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.cjz = shufflevector <8 x float> %i.cjy, <8 x float> poison, <4 x i32> zeroinitializer
  %i.cka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cic, <4 x float> nofpclass(nan inf) %i.cjz, <4 x float> nofpclass(nan inf) %.1342784711)
  %i.ckb = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.ckc = shufflevector <8 x float> %i.ckb, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ckd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cii, <4 x float> nofpclass(nan inf) %i.ckc, <4 x float> nofpclass(nan inf) %.1242544712)
  %i.cke = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.ckf = shufflevector <8 x float> %i.cke, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ckg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cio, <4 x float> nofpclass(nan inf) %i.ckf, <4 x float> nofpclass(nan inf) %.1242334713)
  %i.ckh = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.cki = shufflevector <8 x float> %i.ckh, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ckj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ciu, <4 x float> nofpclass(nan inf) %i.cki, <4 x float> nofpclass(nan inf) %.1242124714)
  %i.ckk = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.ckl = shufflevector <8 x float> %i.ckk, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ckm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cja, <4 x float> nofpclass(nan inf) %i.ckl, <4 x float> nofpclass(nan inf) %i.cka) ; 2 uses
  %i.ckn = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.cko = shufflevector <8 x float> %i.ckn, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ckp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cjg, <4 x float> nofpclass(nan inf) %i.cko, <4 x float> nofpclass(nan inf) %i.ckd) ; 2 uses
  %i.ckq = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.ckr = shufflevector <8 x float> %i.ckq, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cjm, <4 x float> nofpclass(nan inf) %i.ckr, <4 x float> nofpclass(nan inf) %i.ckg) ; 2 uses
  %i.ckt = bitcast <8 x i32> %i.cjx to <8 x float>
  %i.cku = shufflevector <8 x float> %i.ckt, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ckv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cjs, <4 x float> nofpclass(nan inf) %i.cku, <4 x float> nofpclass(nan inf) %i.ckj) ; 2 uses
  %i.ckw = getelementptr inbounds nuw i8, ptr %.1215614715, i64 64
  %indvars.iv.next5560 = add nuw nsw i64 %indvars.iv5559, 1 ; 2 uses
  %exitcond5565.not = icmp eq i64 %indvars.iv.next5560, %wide.trip.count5564
  br i1 %exitcond5565.not, label %.loopexit4369.loopexit, label %.lr.ph4718, !llvm.loop !198

.loopexit4369.loopexit:                           ; preds = %.lr.ph4718
  %scevgep5561 = getelementptr i8, ptr %.915584740, i64 64
  %scevgep5562 = getelementptr i8, ptr %scevgep5561, i64 %i.bcg
  br label %.loopexit4368

.loopexit4369:                                    ; preds = %.loopexit4371
  br i1 %i.azs, label %.preheader4367, label %.loopexit4368

.preheader4367:                                   ; preds = %.loopexit4369
  br i1 %i.bcb, label %.lr.ph4730, label %.loopexit4368

.lr.ph4730:                                       ; preds = %.preheader4367
  %i.ckx = getelementptr [2 x i8], ptr %gep4752, i64 %i.bcd
  %i.cky = getelementptr i8, ptr %gep4752, i64 %.idx2066
  %i.ckz = getelementptr i8, ptr %gep4752, i64 %.idx2067
  %i.cla = getelementptr i8, ptr %gep4752, i64 %.idx2068
  %i.clb = getelementptr i8, ptr %gep4752, i64 %.idx2069
  %i.clc = getelementptr i8, ptr %gep4752, i64 %.idx2070
  %i.cld = getelementptr i8, ptr %gep4752, i64 %.idx2071
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph4730, %bb.u
  %indvars.iv5566 = phi i64 [ 0, %.lr.ph4730 ], [ %indvars.iv.next5567, %bb.u ] ; 2 uses
  %.1415634728 = phi ptr [ %.915584740, %.lr.ph4730 ], [ %i.cpo, %bb.u ] ; 9 uses
  %.1442144727 = phi <4 x float> [ %.942094739, %.lr.ph4730 ], [ %i.cpn, %bb.u ]
  %.1442354726 = phi <4 x float> [ %.942304738, %.lr.ph4730 ], [ %i.cpf, %bb.u ]
  %.1442564725 = phi <4 x float> [ %.942514737, %.lr.ph4730 ], [ %i.cox, %bb.u ]
  %.1542804724 = phi <4 x float> [ %.1042754736, %.lr.ph4730 ], [ %i.cop, %bb.u ]
  %i.cle = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv5566
  %i.clf = load i32, ptr %i.cle, align 4, !tbaa !113
  %i.clg = load i64, ptr %.1415634728, align 1, !tbaa !20
  %i.clh = insertelement <2 x i64> poison, i64 %i.clg, i64 0
  %i.cli = bitcast <2 x i64> %i.clh to <8 x i16>
  %i.clj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cli, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clk = bitcast <8 x i16> %i.clj to <4 x float>
  %i.cll = getelementptr inbounds nuw i8, ptr %.1415634728, i64 8
  %i.clm = load i64, ptr %i.cll, align 1, !tbaa !20
  %i.cln = insertelement <2 x i64> poison, i64 %i.clm, i64 0
  %i.clo = bitcast <2 x i64> %i.cln to <8 x i16>
  %i.clp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clq = bitcast <8 x i16> %i.clp to <4 x float>
  %i.clr = getelementptr inbounds nuw i8, ptr %.1415634728, i64 16
  %i.cls = load i64, ptr %i.clr, align 1, !tbaa !20
  %i.clt = insertelement <2 x i64> poison, i64 %i.cls, i64 0
  %i.clu = bitcast <2 x i64> %i.clt to <8 x i16>
  %i.clv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clw = bitcast <8 x i16> %i.clv to <4 x float>
  %i.clx = getelementptr inbounds nuw i8, ptr %.1415634728, i64 24
  %i.cly = load i64, ptr %i.clx, align 1, !tbaa !20
  %i.clz = insertelement <2 x i64> poison, i64 %i.cly, i64 0
  %i.cma = bitcast <2 x i64> %i.clz to <8 x i16>
  %i.cmb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cma, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmc = bitcast <8 x i16> %i.cmb to <4 x float>
  %i.cmd = getelementptr inbounds nuw i8, ptr %.1415634728, i64 32
  %i.cme = load i64, ptr %i.cmd, align 1, !tbaa !20
  %i.cmf = insertelement <2 x i64> poison, i64 %i.cme, i64 0
  %i.cmg = bitcast <2 x i64> %i.cmf to <8 x i16>
  %i.cmh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmi = bitcast <8 x i16> %i.cmh to <4 x float>
  %i.cmj = getelementptr inbounds nuw i8, ptr %.1415634728, i64 40
  %i.cmk = load i64, ptr %i.cmj, align 1, !tbaa !20
  %i.cml = insertelement <2 x i64> poison, i64 %i.cmk, i64 0
  %i.cmm = bitcast <2 x i64> %i.cml to <8 x i16>
  %i.cmn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmo = bitcast <8 x i16> %i.cmn to <4 x float>
  %i.cmp = getelementptr inbounds nuw i8, ptr %.1415634728, i64 48
  %i.cmq = load i64, ptr %i.cmp, align 1, !tbaa !20
  %i.cmr = insertelement <2 x i64> poison, i64 %i.cmq, i64 0
  %i.cms = bitcast <2 x i64> %i.cmr to <8 x i16>
  %i.cmt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cms, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cmu = bitcast <8 x i16> %i.cmt to <4 x float>
  %i.cmv = getelementptr inbounds nuw i8, ptr %.1415634728, i64 56
  %i.cmw = load i64, ptr %i.cmv, align 1, !tbaa !20
  %i.cmx = insertelement <2 x i64> poison, i64 %i.cmw, i64 0
  %i.cmy = bitcast <2 x i64> %i.cmx to <8 x i16>
  %i.cmz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cmy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cna = bitcast <8 x i16> %i.cmz to <4 x float>
  %i.cnb = sext i32 %i.clf to i64                 ; 8 uses
  %i.cnc = getelementptr inbounds [2 x i8], ptr %gep4752, i64 %i.cnb
  %i.cnd = load i16, ptr %i.cnc, align 2, !tbaa !76
  %i.cne = zext i16 %i.cnd to i32
  %i.cnf = shl nuw i32 %i.cne, 16
  %i.cng = insertelement <4 x i32> poison, i32 %i.cnf, i64 0
  %i.cnh = bitcast <4 x i32> %i.cng to <4 x float>
  %i.cni = shufflevector <4 x float> %i.cnh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clk, <4 x float> nofpclass(nan inf) %i.cni, <4 x float> nofpclass(nan inf) %.1542804724)
  %i.cnk = getelementptr [2 x i8], ptr %i.ckx, i64 %i.cnb
  %i.cnl = load i16, ptr %i.cnk, align 2, !tbaa !76
  %i.cnm = zext i16 %i.cnl to i32
  %i.cnn = shl nuw i32 %i.cnm, 16
  %i.cno = insertelement <4 x i32> poison, i32 %i.cnn, i64 0
  %i.cnp = bitcast <4 x i32> %i.cno to <4 x float>
  %i.cnq = shufflevector <4 x float> %i.cnp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clq, <4 x float> nofpclass(nan inf) %i.cnq, <4 x float> nofpclass(nan inf) %.1442564725)
  %i.cns = getelementptr [2 x i8], ptr %i.cky, i64 %i.cnb
  %i.cnt = load i16, ptr %i.cns, align 2, !tbaa !76
  %i.cnu = zext i16 %i.cnt to i32
  %i.cnv = shl nuw i32 %i.cnu, 16
  %i.cnw = insertelement <4 x i32> poison, i32 %i.cnv, i64 0
  %i.cnx = bitcast <4 x i32> %i.cnw to <4 x float>
  %i.cny = shufflevector <4 x float> %i.cnx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clw, <4 x float> nofpclass(nan inf) %i.cny, <4 x float> nofpclass(nan inf) %.1442354726)
  %i.coa = getelementptr [2 x i8], ptr %i.ckz, i64 %i.cnb
  %i.cob = load i16, ptr %i.coa, align 2, !tbaa !76
  %i.coc = zext i16 %i.cob to i32
  %i.cod = shl nuw i32 %i.coc, 16
  %i.coe = insertelement <4 x i32> poison, i32 %i.cod, i64 0
  %i.cof = bitcast <4 x i32> %i.coe to <4 x float>
  %i.cog = shufflevector <4 x float> %i.cof, <4 x float> poison, <4 x i32> zeroinitializer
  %i.coh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmc, <4 x float> nofpclass(nan inf) %i.cog, <4 x float> nofpclass(nan inf) %.1442144727)
  %i.coi = getelementptr [2 x i8], ptr %i.cla, i64 %i.cnb
  %i.coj = load i16, ptr %i.coi, align 2, !tbaa !76
  %i.cok = zext i16 %i.coj to i32
  %i.col = shl nuw i32 %i.cok, 16
  %i.com = insertelement <4 x i32> poison, i32 %i.col, i64 0
  %i.con = bitcast <4 x i32> %i.com to <4 x float>
  %i.coo = shufflevector <4 x float> %i.con, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cop = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmi, <4 x float> nofpclass(nan inf) %i.coo, <4 x float> nofpclass(nan inf) %i.cnj) ; 2 uses
  %i.coq = getelementptr [2 x i8], ptr %i.clb, i64 %i.cnb
  %i.cor = load i16, ptr %i.coq, align 2, !tbaa !76
  %i.cos = zext i16 %i.cor to i32
  %i.cot = shl nuw i32 %i.cos, 16
  %i.cou = insertelement <4 x i32> poison, i32 %i.cot, i64 0
  %i.cov = bitcast <4 x i32> %i.cou to <4 x float>
  %i.cow = shufflevector <4 x float> %i.cov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cox = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmo, <4 x float> nofpclass(nan inf) %i.cow, <4 x float> nofpclass(nan inf) %i.cnr) ; 2 uses
  %i.coy = getelementptr [2 x i8], ptr %i.clc, i64 %i.cnb
  %i.coz = load i16, ptr %i.coy, align 2, !tbaa !76
  %i.cpa = zext i16 %i.coz to i32
  %i.cpb = shl nuw i32 %i.cpa, 16
  %i.cpc = insertelement <4 x i32> poison, i32 %i.cpb, i64 0
  %i.cpd = bitcast <4 x i32> %i.cpc to <4 x float>
  %i.cpe = shufflevector <4 x float> %i.cpd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) %i.cpe, <4 x float> nofpclass(nan inf) %i.cnz) ; 2 uses
  %i.cpg = getelementptr [2 x i8], ptr %i.cld, i64 %i.cnb
  %i.cph = load i16, ptr %i.cpg, align 2, !tbaa !76
  %i.cpi = zext i16 %i.cph to i32
  %i.cpj = shl nuw i32 %i.cpi, 16
  %i.cpk = insertelement <4 x i32> poison, i32 %i.cpj, i64 0
  %i.cpl = bitcast <4 x i32> %i.cpk to <4 x float>
  %i.cpm = shufflevector <4 x float> %i.cpl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cna, <4 x float> nofpclass(nan inf) %i.cpm, <4 x float> nofpclass(nan inf) %i.coh) ; 2 uses
  %i.cpo = getelementptr inbounds nuw i8, ptr %.1415634728, i64 64
  %indvars.iv.next5567 = add nuw nsw i64 %indvars.iv5566, 1 ; 2 uses
  %exitcond5572.not = icmp eq i64 %indvars.iv.next5567, %wide.trip.count5571
  br i1 %exitcond5572.not, label %.loopexit4368.loopexit, label %bb.u, !llvm.loop !199

.loopexit4368.loopexit:                           ; preds = %bb.u
  %scevgep5568 = getelementptr i8, ptr %.915584740, i64 64
  %scevgep5569 = getelementptr i8, ptr %scevgep5568, i64 %i.bcg
  br label %.loopexit4368

.loopexit4368:                                    ; preds = %.preheader4370, %.loopexit4371.loopexit, %bb.t, %.loopexit4369.loopexit, %.loopexit4368.loopexit, %.preheader4367, %.loopexit4369
  %.164281 = phi nsz <4 x float> [ %.1042754736, %.loopexit4369 ], [ %.1042754736, %.preheader4367 ], [ %i.cop, %.loopexit4368.loopexit ], [ %.1042754736, %bb.t ], [ %i.ckm, %.loopexit4369.loopexit ], [ %i.chh, %.loopexit4371.loopexit ], [ %.1042754736, %.preheader4370 ] ; 2 uses
  %.154257 = phi nsz <4 x float> [ %.942514737, %.loopexit4369 ], [ %.942514737, %.preheader4367 ], [ %i.cox, %.loopexit4368.loopexit ], [ %.942514737, %bb.t ], [ %i.ckp, %.loopexit4369.loopexit ], [ %i.chk, %.loopexit4371.loopexit ], [ %.942514737, %.preheader4370 ] ; 2 uses
  %.154236 = phi nsz <4 x float> [ %.942304738, %.loopexit4369 ], [ %.942304738, %.preheader4367 ], [ %i.cpf, %.loopexit4368.loopexit ], [ %.942304738, %bb.t ], [ %i.cks, %.loopexit4369.loopexit ], [ %i.chn, %.loopexit4371.loopexit ], [ %.942304738, %.preheader4370 ] ; 2 uses
  %.154215 = phi nsz <4 x float> [ %.942094739, %.loopexit4369 ], [ %.942094739, %.preheader4367 ], [ %i.cpn, %.loopexit4368.loopexit ], [ %.942094739, %bb.t ], [ %i.ckv, %.loopexit4369.loopexit ], [ %i.chq, %.loopexit4371.loopexit ], [ %.942094739, %.preheader4370 ] ; 2 uses
  %.151564 = phi ptr [ %.915584740, %.loopexit4369 ], [ %.915584740, %.preheader4367 ], [ %scevgep5569, %.loopexit4368.loopexit ], [ %.915584740, %bb.t ], [ %scevgep5562, %.loopexit4369.loopexit ], [ %scevgep5555, %.loopexit4371.loopexit ], [ %.915584740, %.preheader4370 ] ; 2 uses
  %i.cpp = add nuw nsw i32 %.115454741, 8         ; 3 uses
  %i.cpq = or disjoint i32 %i.cpp, 7
  %i.cpr = icmp slt i32 %i.cpq, %i.ayu
  br i1 %i.cpr, label %_ZN4ncnn3MatD2Ev.exit2349, label %.preheader4380, !llvm.loop !200

.preheader4379:                                   ; preds = %.loopexit4364, %.preheader4380
  %.174282.lcssa = phi <4 x float> [ %.104275.lcssa, %.preheader4380 ], [ %.214286, %.loopexit4364 ] ; 3 uses
  %.164258.lcssa = phi <4 x float> [ %.94251.lcssa, %.preheader4380 ], [ %.204262, %.loopexit4364 ] ; 3 uses
  %.164237.lcssa = phi <4 x float> [ %.94230.lcssa, %.preheader4380 ], [ %.204241, %.loopexit4364 ]
  %.164216.lcssa = phi <4 x float> [ %.94209.lcssa, %.preheader4380 ], [ %.204220, %.loopexit4364 ]
  %.161565.lcssa = phi ptr [ %.91558.lcssa, %.preheader4380 ], [ %.201569, %.loopexit4364 ] ; 3 uses
  %.21546.lcssa = phi i32 [ %.11545.lcssa, %.preheader4380 ], [ %i.cvv, %.loopexit4364 ] ; 5 uses
  %i.cps = or disjoint i32 %.21546.lcssa, 1
  %i.cpt = icmp slt i32 %i.cps, %i.ayu
  br i1 %i.cpt, label %_ZN4ncnn3MatD2Ev.exit2347.lr.ph, label %.preheader4378

_ZN4ncnn3MatD2Ev.exit2347.lr.ph:                  ; preds = %.preheader4379
  %i.cpu = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !201
  %i.cpv = load ptr, ptr %0, align 8, !tbaa !9, !noalias !201
  %i.cpw = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !201
  %i.cpx = load i64, ptr %i.cx, align 8, !tbaa !19, !noalias !201 ; 2 uses
  %factor.op.mul4811 = mul i64 %i.cpw, %i.cpx
  %i.cpy = sext i32 %i.cpu to i64
  %i.cpz = mul i64 %i.cpx, %i.cpy
  %i.cqa = mul i64 %i.cpz, %i.baf
  %invariant.gep4813 = getelementptr i8, ptr %i.cpv, i64 %i.cqa
  %i.cqb = mul nsw i64 %indvars.iv5608, %i.ban
  %invariant.gep4814 = getelementptr [2 x i8], ptr %invariant.gep4813, i64 %i.cqb
  %i.cqc = load ptr, ptr %i.g, align 8
  %i.cqd = load i64, ptr %i.d, align 8
  br i1 %i.bai, label %_ZN4ncnn3MatD2Ev.exit2347.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2347.preheader

_ZN4ncnn3MatD2Ev.exit2347.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2347.lr.ph
  %i.cqe = add i32 %.21546.lcssa, 2
  %i.cqf = sub i32 %15, %.21546.lcssa
  %i.cqg = and i32 %i.cqf, -2
  %i.cqh = add i32 %i.cqe, %i.cqg
  br label %.preheader4378

_ZN4ncnn3MatD2Ev.exit2347.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2347.lr.ph
  %i.cqi = zext i32 %.21546.lcssa to i64
  br label %_ZN4ncnn3MatD2Ev.exit2347.us

_ZN4ncnn3MatD2Ev.exit2347.us:                     ; preds = %_ZN4ncnn3MatD2Ev.exit2347.us.preheader, %._crit_edge4799.us
  %indvars.iv5595 = phi i64 [ %i.cqi, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %indvars.iv.next5596, %._crit_edge4799.us ] ; 2 uses
  %.2115704805.us = phi ptr [ %.161565.lcssa, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %scevgep5591, %._crit_edge4799.us ] ; 2 uses
  %.2142634804.us = phi <4 x float> [ %.164258.lcssa, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %i.crn, %._crit_edge4799.us ]
  %.2242874803.us = phi <4 x float> [ %.174282.lcssa, %_ZN4ncnn3MatD2Ev.exit2347.us.preheader ], [ %i.crf, %._crit_edge4799.us ]
  %.reass4812.us = mul i64 %factor.op.mul4811, %indvars.iv5595
  %gep4815.us = getelementptr i8, ptr %invariant.gep4814, i64 %.reass4812.us ; 2 uses
  %i.cqj = getelementptr [2 x i8], ptr %gep4815.us, i64 %i.cqd
  br label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2347.us, %bb.v
  %indvars.iv5588 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %indvars.iv.next5589, %bb.v ] ; 2 uses
  %.2215714796.us = phi ptr [ %.2115704805.us, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %i.cro, %bb.v ] ; 3 uses
  %.2242644795.us = phi <4 x float> [ %.2142634804.us, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %i.crn, %bb.v ]
  %.2342884794.us = phi <4 x float> [ %.2242874803.us, %_ZN4ncnn3MatD2Ev.exit2347.us ], [ %i.crf, %bb.v ]
  %i.cqk = getelementptr inbounds nuw [4 x i8], ptr %i.cqc, i64 %indvars.iv5588
  %i.cql = load i32, ptr %i.cqk, align 4, !tbaa !113
  %i.cqm = load i64, ptr %.2215714796.us, align 1, !tbaa !20
  %i.cqn = insertelement <2 x i64> poison, i64 %i.cqm, i64 0
  %i.cqo = bitcast <2 x i64> %i.cqn to <8 x i16>
  %i.cqp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqq = bitcast <8 x i16> %i.cqp to <4 x float>
  %i.cqr = getelementptr inbounds nuw i8, ptr %.2215714796.us, i64 8
  %i.cqs = load i64, ptr %i.cqr, align 1, !tbaa !20
  %i.cqt = insertelement <2 x i64> poison, i64 %i.cqs, i64 0
  %i.cqu = bitcast <2 x i64> %i.cqt to <8 x i16>
  %i.cqv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqw = bitcast <8 x i16> %i.cqv to <4 x float>
  %i.cqx = sext i32 %i.cql to i64                 ; 2 uses
  %i.cqy = getelementptr inbounds [2 x i8], ptr %gep4815.us, i64 %i.cqx
  %i.cqz = load i16, ptr %i.cqy, align 2, !tbaa !76
  %i.cra = zext i16 %i.cqz to i32
  %i.crb = shl nuw i32 %i.cra, 16
  %i.crc = insertelement <4 x i32> poison, i32 %i.crb, i64 0
  %i.crd = bitcast <4 x i32> %i.crc to <4 x float>
  %i.cre = shufflevector <4 x float> %i.crd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.crf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqq, <4 x float> nofpclass(nan inf) %i.cre, <4 x float> nofpclass(nan inf) %.2342884794.us) ; 3 uses
  %i.crg = getelementptr [2 x i8], ptr %i.cqj, i64 %i.cqx
  %i.crh = load i16, ptr %i.crg, align 2, !tbaa !76
  %i.cri = zext i16 %i.crh to i32
  %i.crj = shl nuw i32 %i.cri, 16
  %i.crk = insertelement <4 x i32> poison, i32 %i.crj, i64 0
  %i.crl = bitcast <4 x i32> %i.crk to <4 x float>
  %i.crm = shufflevector <4 x float> %i.crl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.crn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqw, <4 x float> nofpclass(nan inf) %i.crm, <4 x float> nofpclass(nan inf) %.2242644795.us) ; 3 uses
  %i.cro = getelementptr inbounds nuw i8, ptr %.2215714796.us, i64 16
  %indvars.iv.next5589 = add nuw nsw i64 %indvars.iv5588, 1 ; 2 uses
  %exitcond5594.not = icmp eq i64 %indvars.iv.next5589, %wide.trip.count5593
  br i1 %exitcond5594.not, label %._crit_edge4799.us, label %bb.v, !llvm.loop !204

._crit_edge4799.us:                               ; preds = %bb.v
  %scevgep5590.a = getelementptr i8, ptr %.2115704805.us, i64 16
  %scevgep5591 = getelementptr i8, ptr %scevgep5590.a, i64 %i.bal ; 2 uses
  %indvars.iv.next5596 = add nuw nsw i64 %indvars.iv5595, 2 ; 3 uses
  %i.crp = trunc i64 %indvars.iv.next5596 to i32
  %i.crq = or i32 %i.crp, 1
  %i.crr = icmp slt i32 %i.crq, %i.ayu
  br i1 %i.crr, label %_ZN4ncnn3MatD2Ev.exit2347.us, label %.preheader4378.loopexit, !llvm.loop !205

_ZN4ncnn3MatD2Ev.exit2348:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2348.lr.ph, %.loopexit4364
  %.215464782 = phi i32 [ %.11545.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %i.cvv, %.loopexit4364 ] ; 2 uses
  %.1615654781 = phi ptr [ %.91558.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.201569, %.loopexit4364 ] ; 7 uses
  %.1642164780 = phi <4 x float> [ %.94209.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.204220, %.loopexit4364 ] ; 5 uses
  %.1642374779 = phi <4 x float> [ %.94230.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.204241, %.loopexit4364 ] ; 5 uses
  %.1642584778 = phi <4 x float> [ %.94251.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.204262, %.loopexit4364 ] ; 5 uses
  %.1742824777 = phi <4 x float> [ %.104275.lcssa, %_ZN4ncnn3MatD2Ev.exit2348.lr.ph ], [ %.214286, %.loopexit4364 ] ; 5 uses
  %i.crs = sdiv i32 %.215464782, %i.ays
  %i.crt = sext i32 %i.crs to i64
  %.reass4790 = mul i64 %factor.op.mul4789, %i.crt
  %gep4793 = getelementptr i8, ptr %invariant.gep4792, i64 %.reass4790 ; 5 uses
  br i1 %i.azr, label %.preheader4365, label %.loopexit4366

.preheader4365:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2348
  br i1 %i.cej, label %.lr.ph4759, label %.loopexit4364

.lr.ph4759:                                       ; preds = %.preheader4365, %.lr.ph4759
  %indvars.iv5573 = phi i64 [ %indvars.iv.next5574, %.lr.ph4759 ], [ 0, %.preheader4365 ] ; 2 uses
  %.1715664757 = phi ptr [ %i.ctk, %.lr.ph4759 ], [ %.1615654781, %.preheader4365 ] ; 5 uses
  %.1742174756 = phi <4 x float> [ %i.ctj, %.lr.ph4759 ], [ %.1642164780, %.preheader4365 ]
  %.1742384755 = phi <4 x float> [ %i.ctg, %.lr.ph4759 ], [ %.1642374779, %.preheader4365 ]
  %.1742594754 = phi <4 x float> [ %i.ctd, %.lr.ph4759 ], [ %.1642584778, %.preheader4365 ]
  %.1842834753 = phi <4 x float> [ %i.cta, %.lr.ph4759 ], [ %.1742824777, %.preheader4365 ]
  %i.cru = getelementptr inbounds nuw [4 x i8], ptr %i.cek, i64 %indvars.iv5573
  %i.crv = load i32, ptr %i.cru, align 4, !tbaa !113
  %i.crw = sext i32 %i.crv to i64
  %i.crx = getelementptr inbounds [2 x i8], ptr %gep4793, i64 %i.crw
  %i.cry = load i64, ptr %.1715664757, align 1, !tbaa !20
  %i.crz = insertelement <2 x i64> poison, i64 %i.cry, i64 0
  %i.csa = bitcast <2 x i64> %i.crz to <8 x i16>
  %i.csb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csc = bitcast <8 x i16> %i.csb to <4 x float>
  %i.csd = getelementptr inbounds nuw i8, ptr %.1715664757, i64 8
  %i.cse = load i64, ptr %i.csd, align 1, !tbaa !20
  %i.csf = insertelement <2 x i64> poison, i64 %i.cse, i64 0
  %i.csg = bitcast <2 x i64> %i.csf to <8 x i16>
  %i.csh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csi = bitcast <8 x i16> %i.csh to <4 x float>
  %i.csj = getelementptr inbounds nuw i8, ptr %.1715664757, i64 16
  %i.csk = load i64, ptr %i.csj, align 1, !tbaa !20
  %i.csl = insertelement <2 x i64> poison, i64 %i.csk, i64 0
  %i.csm = bitcast <2 x i64> %i.csl to <8 x i16>
  %i.csn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cso = bitcast <8 x i16> %i.csn to <4 x float>
  %i.csp = getelementptr inbounds nuw i8, ptr %.1715664757, i64 24
  %i.csq = load i64, ptr %i.csp, align 1, !tbaa !20
  %i.csr = insertelement <2 x i64> poison, i64 %i.csq, i64 0
  %i.css = bitcast <2 x i64> %i.csr to <8 x i16>
  %i.cst = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.css, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csu = bitcast <8 x i16> %i.cst to <4 x float>
  %i.csv = load <4 x i16>, ptr %i.crx, align 2, !tbaa !76
  %i.csw = zext <4 x i16> %i.csv to <4 x i32>
  %i.csx = shl nuw <4 x i32> %i.csw, splat (i32 16) ; 4 uses
  %i.csy = bitcast <4 x i32> %i.csx to <4 x float>
  %i.csz = shufflevector <4 x float> %i.csy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csc, <4 x float> nofpclass(nan inf) %i.csz, <4 x float> nofpclass(nan inf) %.1842834753) ; 2 uses
  %i.ctb = bitcast <4 x i32> %i.csx to <4 x float>
  %i.ctc = shufflevector <4 x float> %i.ctb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ctd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csi, <4 x float> nofpclass(nan inf) %i.ctc, <4 x float> nofpclass(nan inf) %.1742594754) ; 2 uses
  %i.cte = bitcast <4 x i32> %i.csx to <4 x float>
  %i.ctf = shufflevector <4 x float> %i.cte, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ctg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cso, <4 x float> nofpclass(nan inf) %i.ctf, <4 x float> nofpclass(nan inf) %.1742384755) ; 2 uses
  %i.cth = bitcast <4 x i32> %i.csx to <4 x float>
  %i.cti = shufflevector <4 x float> %i.cth, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ctj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csu, <4 x float> nofpclass(nan inf) %i.cti, <4 x float> nofpclass(nan inf) %.1742174756) ; 2 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %.1715664757, i64 32
  %indvars.iv.next5574 = add nuw nsw i64 %indvars.iv5573, 1 ; 2 uses
  %exitcond5579.not = icmp eq i64 %indvars.iv.next5574, %wide.trip.count5578
  br i1 %exitcond5579.not, label %.loopexit4366.loopexit, label %.lr.ph4759, !llvm.loop !206

.loopexit4366.loopexit:                           ; preds = %.lr.ph4759
  %scevgep5575 = getelementptr i8, ptr %.1615654781, i64 32
  %scevgep5576 = getelementptr i8, ptr %scevgep5575, i64 %i.ceo
  br label %.loopexit4364

.loopexit4366:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2348
  br i1 %i.azs, label %.preheader4363, label %.loopexit4364

.preheader4363:                                   ; preds = %.loopexit4366
  br i1 %i.cej, label %.lr.ph4771, label %.loopexit4364

.lr.ph4771:                                       ; preds = %.preheader4363
  %i.ctl = getelementptr [2 x i8], ptr %gep4793, i64 %i.cel
  %i.ctm = getelementptr i8, ptr %gep4793, i64 %.idx2051
  %i.ctn = getelementptr i8, ptr %gep4793, i64 %.idx2052
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph4771, %bb.w
  %indvars.iv5580 = phi i64 [ 0, %.lr.ph4771 ], [ %indvars.iv.next5581, %bb.w ] ; 2 uses
  %.1915684769 = phi ptr [ %.1615654781, %.lr.ph4771 ], [ %i.cvu, %bb.w ] ; 5 uses
  %.1942194768 = phi <4 x float> [ %.1642164780, %.lr.ph4771 ], [ %i.cvt, %bb.w ]
  %.1942404767 = phi <4 x float> [ %.1642374779, %.lr.ph4771 ], [ %i.cvl, %bb.w ]
  %.1942614766 = phi <4 x float> [ %.1642584778, %.lr.ph4771 ], [ %i.cvd, %bb.w ]
  %.2042854765 = phi <4 x float> [ %.1742824777, %.lr.ph4771 ], [ %i.cuv, %bb.w ]
  %i.cto = getelementptr inbounds nuw [4 x i8], ptr %i.cek, i64 %indvars.iv5580
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !113
  %i.ctq = load i64, ptr %.1915684769, align 1, !tbaa !20
  %i.ctr = insertelement <2 x i64> poison, i64 %i.ctq, i64 0
  %i.cts = bitcast <2 x i64> %i.ctr to <8 x i16>
  %i.ctt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cts, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ctu = bitcast <8 x i16> %i.ctt to <4 x float>
  %i.ctv = getelementptr inbounds nuw i8, ptr %.1915684769, i64 8
  %i.ctw = load i64, ptr %i.ctv, align 1, !tbaa !20
  %i.ctx = insertelement <2 x i64> poison, i64 %i.ctw, i64 0
  %i.cty = bitcast <2 x i64> %i.ctx to <8 x i16>
  %i.ctz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cty, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cua = bitcast <8 x i16> %i.ctz to <4 x float>
  %i.cub = getelementptr inbounds nuw i8, ptr %.1915684769, i64 16
  %i.cuc = load i64, ptr %i.cub, align 1, !tbaa !20
  %i.cud = insertelement <2 x i64> poison, i64 %i.cuc, i64 0
  %i.cue = bitcast <2 x i64> %i.cud to <8 x i16>
  %i.cuf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cug = bitcast <8 x i16> %i.cuf to <4 x float>
  %i.cuh = getelementptr inbounds nuw i8, ptr %.1915684769, i64 24
  %i.cui = load i64, ptr %i.cuh, align 1, !tbaa !20
  %i.cuj = insertelement <2 x i64> poison, i64 %i.cui, i64 0
  %i.cuk = bitcast <2 x i64> %i.cuj to <8 x i16>
  %i.cul = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cuk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cum = bitcast <8 x i16> %i.cul to <4 x float>
  %i.cun = sext i32 %i.ctp to i64                 ; 4 uses
  %i.cuo = getelementptr inbounds [2 x i8], ptr %gep4793, i64 %i.cun
  %i.cup = load i16, ptr %i.cuo, align 2, !tbaa !76
  %i.cuq = zext i16 %i.cup to i32
  %i.cur = shl nuw i32 %i.cuq, 16
  %i.cus = insertelement <4 x i32> poison, i32 %i.cur, i64 0
  %i.cut = bitcast <4 x i32> %i.cus to <4 x float>
  %i.cuu = shufflevector <4 x float> %i.cut, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cuv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctu, <4 x float> nofpclass(nan inf) %i.cuu, <4 x float> nofpclass(nan inf) %.2042854765) ; 2 uses
  %i.cuw = getelementptr [2 x i8], ptr %i.ctl, i64 %i.cun
  %i.cux = load i16, ptr %i.cuw, align 2, !tbaa !76
  %i.cuy = zext i16 %i.cux to i32
  %i.cuz = shl nuw i32 %i.cuy, 16
  %i.cva = insertelement <4 x i32> poison, i32 %i.cuz, i64 0
end_hunk_3
begin_hunk_4_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.czr = fneg fast <4 x float> %i.czq           ; 2 uses
  %i.czs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.czr, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.czj)
  %i.czt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.czr, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.czs) ; 8 uses
  %i.czu = fmul fast <4 x float> %i.czt, %i.czt
  %i.czv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czt, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.czw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czv, <4 x float> nofpclass(nan inf) %i.czt, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.czx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czw, <4 x float> nofpclass(nan inf) %i.czt, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.czy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czx, <4 x float> nofpclass(nan inf) %i.czt, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.czz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czy, <4 x float> nofpclass(nan inf) %i.czt, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.daa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czz, <4 x float> nofpclass(nan inf) %i.czu, <4 x float> nofpclass(nan inf) %i.czt)
  %i.dab = fadd fast <4 x float> %i.daa, splat (float 1.000000e+00)
  %i.dac = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.czq)
  %i.dad = shl <4 x i32> %i.dac, splat (i32 23)
  %i.dae = add <4 x i32> %i.dad, splat (i32 1065353216)
  %i.daf = bitcast <4 x i32> %i.dae to <4 x float>
  %i.dag = fmul fast <4 x float> %i.dab, %i.daf
  %i.dah = fadd fast <4 x float> %i.dag, splat (float 1.000000e+00)
  %i.dai = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dah
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc2560:                                       ; preds = %._crit_edge4830
  %i.daj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cyn, <4 x float> splat (float f0x42B0C0A5))
  %i.dak = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.daj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dal = fmul fast <4 x float> %i.dak, splat (float f0x3FB8AA3B)
  %i.dam = fadd fast <4 x float> %i.dal, splat (float 5.000000e-01) ; 2 uses
  %i.dan = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dam)
  %i.dao = sitofp fast <4 x i32> %i.dan to <4 x float> ; 2 uses
  %i.dap = fcmp fast olt <4 x float> %i.dam, %i.dao
  %i.daq = select <4 x i1> %i.dap, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dar = fsub fast <4 x float> %i.dao, %i.daq   ; 2 uses
  %i.das = fneg fast <4 x float> %i.dar           ; 2 uses
  %i.dat = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.das, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dak)
  %i.dau = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.das, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dat) ; 8 uses
  %i.dav = fmul fast <4 x float> %i.dau, %i.dau
  %i.daw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dau, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.dax = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.daw, <4 x float> nofpclass(nan inf) %i.dau, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.day = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dax, <4 x float> nofpclass(nan inf) %i.dau, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.daz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.day, <4 x float> nofpclass(nan inf) %i.dau, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.dba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.daz, <4 x float> nofpclass(nan inf) %i.dau, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.dbb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dba, <4 x float> nofpclass(nan inf) %i.dav, <4 x float> nofpclass(nan inf) %i.dau)
  %i.dbc = fadd fast <4 x float> %i.dbb, splat (float 1.000000e+00)
  %i.dbd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dar)
  %i.dbe = shl <4 x i32> %i.dbd, splat (i32 23)
  %i.dbf = add <4 x i32> %i.dbe, splat (i32 1065353216)
  %i.dbg = bitcast <4 x i32> %i.dbf to <4 x float>
  %i.dbh = fmul fast <4 x float> %i.dbc, %i.dbg
  %i.dbi = fadd fast <4 x float> %i.dbh, splat (float 1.000000e+00) ; 2 uses
  %i.dbj = fcmp fast ole <4 x float> %i.dbi, zeroinitializer
  %i.dbk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbi, <4 x float> splat (float f0x00800000))
  %i.dbl = bitcast <4 x float> %i.dbk to <4 x i32> ; 2 uses
  %i.dbm = lshr <4 x i32> %i.dbl, splat (i32 23)
  %i.dbn = and <4 x i32> %i.dbl, splat (i32 -2139095041)
  %i.dbo = or disjoint <4 x i32> %i.dbn, splat (i32 1056964608)
  %i.dbp = bitcast <4 x i32> %i.dbo to <4 x float> ; 3 uses
  %i.dbq = add nsw <4 x i32> %i.dbm, splat (i32 -127)
  %i.dbr = sitofp fast <4 x i32> %i.dbq to <4 x float> ; 2 uses
  %i.dbs = fadd fast <4 x float> %i.dbr, splat (float 1.000000e+00)
  %i.dbt = fcmp fast olt <4 x float> %i.dbp, splat (float f0x3F3504F3) ; 2 uses
  %i.dbu = select <4 x i1> %i.dbt, <4 x float> %i.dbp, <4 x float> zeroinitializer
  %i.dbv = fadd fast <4 x float> %i.dbp, splat (float -1.000000e+00)
  %i.dbw = select fast <4 x i1> %i.dbt, <4 x float> %i.dbr, <4 x float> %i.dbs ; 2 uses
  %i.dbx = fadd fast <4 x float> %i.dbv, %i.dbu   ; 12 uses
  %i.dby = fmul fast <4 x float> %i.dbx, %i.dbx   ; 2 uses
  %i.dbz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.dca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbz, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.dcb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dca, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.dcc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcb, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.dcd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcc, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.dce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcd, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.dcf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dce, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.dcg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcf, <4 x float> nofpclass(nan inf) %i.dbx, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.dch = fmul fast <4 x float> %i.dby, %i.dbx
  %i.dci = fmul fast <4 x float> %i.dch, %i.dcg
  %i.dcj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbw, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dci)
  %i.dck = fneg fast <4 x float> %i.dby
  %i.dcl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dck, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.dcj)
  %i.dcm = fadd fast <4 x float> %i.dcl, %i.dbx
  %i.dcn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbw, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dcm)
  %.neg = fmul fast <4 x float> %i.dcn, splat (float -2.000000e+00)
  %i.dco = select fast <4 x i1> %i.dbj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.dcp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dco, <4 x float> splat (float f0x42B0C0A5))
  %i.dcq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dcp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dcr = fmul fast <4 x float> %i.dcq, splat (float f0x3FB8AA3B)
  %i.dcs = fadd fast <4 x float> %i.dcr, splat (float 5.000000e-01) ; 2 uses
  %i.dct = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dcs)
  %i.dcu = sitofp fast <4 x i32> %i.dct to <4 x float> ; 2 uses
  %i.dcv = fcmp fast olt <4 x float> %i.dcs, %i.dcu
  %i.dcw = select <4 x i1> %i.dcv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dcx = fsub fast <4 x float> %i.dcu, %i.dcw   ; 2 uses
  %i.dcy = fneg fast <4 x float> %i.dcx           ; 2 uses
  %i.dcz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dcy, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dcq)
  %i.dda = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dcy, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dcz) ; 8 uses
  %i.ddb = fmul fast <4 x float> %i.dda, %i.dda
  %i.ddc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dda, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.ddd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddc, <4 x float> nofpclass(nan inf) %i.dda, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.dde = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddd, <4 x float> nofpclass(nan inf) %i.dda, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.ddf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dde, <4 x float> nofpclass(nan inf) %i.dda, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ddg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddf, <4 x float> nofpclass(nan inf) %i.dda, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.ddh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddg, <4 x float> nofpclass(nan inf) %i.ddb, <4 x float> nofpclass(nan inf) %i.dda)
  %i.ddi = fadd fast <4 x float> %i.ddh, splat (float 1.000000e+00)
  %i.ddj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dcx)
  %i.ddk = shl <4 x i32> %i.ddj, splat (i32 23)
  %i.ddl = add <4 x i32> %i.ddk, splat (i32 1065353216)
  %i.ddm = bitcast <4 x i32> %i.ddl to <4 x float>
  %i.ddn = fmul fast <4 x float> %i.ddi, %i.ddm
  %i.ddo = fadd fast <4 x float> %i.ddn, splat (float 1.000000e+00)
  %i.ddp = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ddo
  %i.ddq = fadd fast <4 x float> %i.ddp, splat (float -1.000000e+00)
  %i.ddr = fmul fast <4 x float> %i.ddq, %i.cyn
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.z:                                             ; preds = %._crit_edge4830
  %i.dds = load ptr, ptr %11, align 8, !tbaa !9   ; 2 uses
  %i.ddt = load float, ptr %i.dds, align 4, !tbaa !74
  %i.ddu = insertelement <4 x float> poison, float %i.ddt, i64 0
  %i.ddv = shufflevector <4 x float> %i.ddu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.dds, i64 4
  %i.ddx = load float, ptr %i.ddw, align 4, !tbaa !74
  %i.ddy = insertelement <4 x float> poison, float %i.ddx, i64 0
  %i.ddz = shufflevector <4 x float> %i.ddy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dea = fmul fast <4 x float> %i.ddv, %i.cyn
  %i.deb = fadd fast <4 x float> %i.dea, %i.ddz
  %i.dec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.deb, <4 x float> zeroinitializer)
  %i.ded = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dec, <4 x float> splat (float 1.000000e+00))
  %i.dee = fmul fast <4 x float> %i.ded, %i.cyn
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.z, %.noexc2560, %.noexc2559, %bb.y, %.noexc2558, %bb.x, %._crit_edge4830
  %.0.i2557 = phi nsz <4 x float> [ %i.dee, %bb.z ], [ %i.cyo, %bb.x ], [ %i.cyw, %.noexc2558 ], [ %i.czg, %bb.y ], [ %i.dai, %.noexc2559 ], [ %i.ddr, %.noexc2560 ], [ %i.cyn, %._crit_edge4830 ] ; 2 uses
  switch i32 %i.ayx, label %bb.ab [
    i32 4, label %.thread4294
    i32 1, label %bb.aa
  ]

.thread4294:                                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.def = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i2557)
  %i.deg = bitcast <8 x bfloat> %i.def to <2 x i64>
  %i.deh = extractelement <2 x i64> %i.deg, i64 0
  store i64 %i.deh, ptr %.115774838, align 1, !tbaa !20
  %i.dei = getelementptr inbounds nuw i8, ptr %.115774838, i64 8
  br label %bb.ab

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.dej = bitcast <4 x float> %.0.i2557 to <8 x i16> ; 4 uses
  %i.dek = extractelement <8 x i16> %i.dej, i64 1
  store i16 %i.dek, ptr %.115774838, align 2, !tbaa !76
  %i.del = extractelement <8 x i16> %i.dej, i64 3
  %i.dem = load i64, ptr %i.e, align 8, !tbaa !117 ; 3 uses
  %i.den = getelementptr inbounds nuw [2 x i8], ptr %.115774838, i64 %i.dem
  store i16 %i.del, ptr %i.den, align 2, !tbaa !76
  %i.deo = extractelement <8 x i16> %i.dej, i64 5
  %.idx2040 = shl i64 %i.dem, 2
  %i.dep = getelementptr inbounds nuw i8, ptr %.115774838, i64 %.idx2040
  store i16 %i.deo, ptr %i.dep, align 2, !tbaa !76
  %i.deq = extractelement <8 x i16> %i.dej, i64 7
  %.idx2041 = mul i64 %i.dem, 6
  %i.der = getelementptr inbounds nuw i8, ptr %.115774838, i64 %.idx2041
  store i16 %i.deq, ptr %i.der, align 2, !tbaa !76
  %i.des = getelementptr inbounds nuw i8, ptr %.115774838, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread4294, %bb.aa
  %.31579 = phi ptr [ %i.des, %bb.aa ], [ %.115774838, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.dei, %.thread4294 ] ; 2 uses
  %indvars.iv.next5609 = add nuw nsw i64 %indvars.iv5608, 1 ; 2 uses
  %exitcond5612.not = icmp eq i64 %indvars.iv.next5609, %wide.trip.count5611
  br i1 %exitcond5612.not, label %._crit_edge4841, label %bb.o, !llvm.loop !214

._crit_edge5039.split:                            ; preds = %._crit_edge5037, %.noexc2326.lr.ph, %._crit_edge4853
  %i.det = shl nsw i32 %i.axq, 1
  %i.deu = add nsw i32 %i.det, %i.axo             ; 2 uses
  %i.dev = icmp slt i32 %i.deu, %i.ad
  br i1 %i.dev, label %.noexc.lr.ph, label %._crit_edge5196.split

.noexc.lr.ph:                                     ; preds = %._crit_edge5039.split
  %i.dew = load ptr, ptr %1, align 8, !tbaa !9, !noalias !215
  %i.dex = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !215
  %i.dey = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dez = load i64, ptr %i.dey, align 8, !tbaa !19, !noalias !215
  %factor.op.mul5197 = mul i64 %i.dex, %i.dez
  %i.dfa = icmp slt i32 %i.y, 1
  %i.dfb = icmp slt i32 %i.w, 1
  %i.dfc = icmp sgt i32 %i.q, 15
  %i.dfd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dfe = icmp ne i32 %i.n, 16
  %i.dff = icmp eq i32 %i.n, 8
  %i.dfg = icmp eq i32 %i.n, 4                    ; 2 uses
  %i.dfh = icmp ne i32 %i.n, 1                    ; 3 uses
  %i.dfi = icmp ne i32 %i.n, 8
  %i.dfj = icmp ne i32 %i.n, 4
  %brmerge5206 = select i1 %i.dfa, i1 true, i1 %i.dfb
  br i1 %brmerge5206, label %._crit_edge5196.split, label %.noexc.lr.ph.split.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph
  %i.dfk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dfl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dfm = load ptr, ptr %2, align 8, !tbaa !9, !noalias !218
  %i.dfn = load i64, ptr %i.dfl, align 8, !tbaa !18, !noalias !218
  %i.dfo = load i64, ptr %i.dfk, align 8, !tbaa !19, !noalias !218
  %factor.op.mul5200 = mul i64 %i.dfn, %i.dfo
  %i.dfp = and i32 %i.q, -16
  %16 = add i32 %i.q, -2
  %i.dfq = sext i32 %i.deu to i64
  %wide.trip.count5807 = sext i32 %i.ad to i64
  %wide.trip.count5801 = zext nneg i32 %i.w to i64
  br label %.noexc

.noexc2326:                                       ; preds = %.noexc2326.lr.ph.split.split, %._crit_edge5037
  %indvars.iv5709 = phi i64 [ 0, %.noexc2326.lr.ph.split.split ], [ %indvars.iv.next5710, %._crit_edge5037 ] ; 2 uses
  %i.dfr = shl nuw nsw i64 %indvars.iv5709, 1
  %i.dfs = add nsw i64 %i.dfr, %i.ayr             ; 4 uses
  %.reass5042 = mul i64 %factor.op.mul5041, %i.dfs
  %i.dft = getelementptr inbounds nuw i8, ptr %i.axx, i64 %.reass5042
  %i.dfu = or disjoint i64 %i.dfs, 1
  %.reass5044 = mul i64 %factor.op.mul5041, %i.dfu
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.axx, i64 %.reass5044
  %i.dfw = load ptr, ptr %i.h, align 8            ; 2 uses
  %.not1973 = icmp eq ptr %i.dfw, null
  %i.dfx = getelementptr inbounds [4 x i8], ptr %i.dfw, i64 %i.dfs
  %i.dfy = trunc nsw i64 %i.dfs to i32            ; 3 uses
  %i.dfz = sdiv i32 %i.dfy, 16
  %i.dga = srem i32 %i.dfy, 16
  %.lhs.trunc4316 = trunc nsw i32 %i.dga to i8
  %i.dgb = sdiv i8 %.lhs.trunc4316, 8
  %.sext4317 = sext i8 %i.dgb to i32
  %i.dgc = insertelement <2 x i32> poison, i32 %i.dfy, i64 0
  %i.dgd = shufflevector <2 x i32> %i.dgc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dge = srem <2 x i32> %i.dgd, <i32 8, i32 4>  ; 2 uses
  %i.dgf = bitcast <2 x i32> %i.dge to <8 x i8>
  %.lhs.trunc4318 = extractelement <8 x i8> %i.dgf, i64 0
  %i.dgg = sdiv i8 %.lhs.trunc4318, 4
  %.sext4319 = sext i8 %i.dgg to i32
  %i.dgh = extractelement <2 x i32> %i.dge, i64 1
  %i.dgi = ashr exact i32 %i.dgh, 1
  %i.dgj = add nsw i32 %i.dgi, %i.dfz
  %i.dgk = add nsw i32 %i.dgj, %.sext4317
  %i.dgl = add nsw i32 %i.dgk, %.sext4319
  %i.dgm = sext i32 %i.dgl to i64
  %i.dgn = load i32, ptr %i.c, align 4
  %.reass5048 = mul i64 %factor.op.mul5047, %i.dgm
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %.reass5048 ; 2 uses
  br label %.preheader4362

.preheader4362:                                   ; preds = %.noexc2326, %._crit_edge5025
  %.015275036 = phi i32 [ 0, %.noexc2326 ], [ %i.dhg, %._crit_edge5025 ] ; 2 uses
  %.015285035 = phi ptr [ %i.dfv, %.noexc2326 ], [ %i.fmo, %._crit_edge5025 ]
  %.015305034 = phi ptr [ %i.dft, %.noexc2326 ], [ %i.fmn, %._crit_edge5025 ]
  %i.dgp = load i32, ptr %i.b, align 4
  %i.dgq = mul nsw i32 %i.dgp, %.015275036
  %i.dgr = sext i32 %i.dgq to i64                 ; 5 uses
  %i.dgs = load i32, ptr %i.a, align 4            ; 2 uses
  %factor.op.mul5028 = mul i32 %i.axs, %i.dgs     ; 3 uses
  %i.dgt = load i32, ptr %i.f, align 4            ; 8 uses
  %i.dgu = icmp sgt i32 %i.dgt, 0                 ; 2 uses
  %i.dgv = add i32 %i.dgt, -1
  %i.dgw = zext i32 %i.dgv to i64                 ; 2 uses
  %i.dgx = shl nuw nsw i64 %i.dgw, 3
  %i.dgy = shl nuw nsw i64 %i.dgw, 2
  %i.dgz = sext i32 %i.dgs to i64                 ; 2 uses
  %wide.trip.count5688 = zext i32 %i.dgt to i64   ; 11 uses
  %wide.trip.count5698 = zext nneg i32 %i.dgt to i64
  %min.iters.check6318 = icmp ult i32 %i.dgt, 8
  %min.iters.check6320 = icmp ult i32 %i.dgt, 32
  %i.dha = and i64 %wide.trip.count5688, 24
  %n.vec6322 = and i64 %wide.trip.count5688, 2147483616 ; 5 uses
  %i.dhb = shl nuw nsw i64 %n.vec6322, 3
  %cmp.n6347 = icmp eq i64 %n.vec6322, %wide.trip.count5688
  %min.epilog.iters.check6354 = icmp eq i64 %i.dha, 0
  %n.vec6356 = and i64 %wide.trip.count5688, 2147483640 ; 4 uses
  %i.dhc = shl nuw nsw i64 %n.vec6356, 3
  %cmp.n6370 = icmp eq i64 %n.vec6356, %wide.trip.count5688
  %min.iters.check6256 = icmp ult i32 %i.dgt, 8
  %min.iters.check6258 = icmp ult i32 %i.dgt, 64
  %i.dhd = and i64 %wide.trip.count5688, 56
  %n.vec6260 = and i64 %wide.trip.count5688, 2147483584 ; 5 uses
  %i.dhe = shl nuw nsw i64 %n.vec6260, 2
  %cmp.n6293 = icmp eq i64 %n.vec6260, %wide.trip.count5688
  %min.epilog.iters.check6299 = icmp eq i64 %i.dhd, 0
  %n.vec6301 = and i64 %wide.trip.count5688, 2147483640 ; 4 uses
  %i.dhf = shl nuw nsw i64 %n.vec6301, 2
  %cmp.n6313 = icmp eq i64 %n.vec6301, %wide.trip.count5688
  br label %bb.ac

._crit_edge5037:                                  ; preds = %._crit_edge5025
  %indvars.iv.next5710 = add nuw nsw i64 %indvars.iv5709, 1 ; 2 uses
  %exitcond5713.not = icmp eq i64 %indvars.iv.next5710, %wide.trip.count5712
  br i1 %exitcond5713.not, label %._crit_edge5039.split, label %.noexc2326, !llvm.loop !221

._crit_edge5025:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566
  %i.dhg = add nuw nsw i32 %.015275036, 1         ; 2 uses
  %exitcond5708.not = icmp eq i32 %i.dhg, %i.axw
  br i1 %exitcond5708.not, label %._crit_edge5037, label %.preheader4362, !llvm.loop !222

bb.ac:                                            ; preds = %.preheader4362, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566
  %indvars.iv5703 = phi i64 [ 0, %.preheader4362 ], [ %indvars.iv.next5704, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566 ] ; 6 uses
  %.115295022 = phi ptr [ %.015285035, %.preheader4362 ], [ %i.fmo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566 ] ; 2 uses
  %.115315021 = phi ptr [ %.015305034, %.preheader4362 ], [ %i.fmn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566 ] ; 2 uses
  br i1 %.not1973, label %_ZN4ncnn3MatD2Ev.exit2343, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dhh = load <2 x float>, ptr %i.dfx, align 4, !tbaa !74
  br label %_ZN4ncnn3MatD2Ev.exit2343

_ZN4ncnn3MatD2Ev.exit2343:                        ; preds = %bb.ad, %bb.ac
  %i.dhi = phi <2 x float> [ %i.dhh, %bb.ad ], [ zeroinitializer, %bb.ac ]
  br i1 %i.ayd, label %_ZN4ncnn3MatD2Ev.exit2342.lr.ph, label %._crit_edge4893

_ZN4ncnn3MatD2Ev.exit2342.lr.ph:                  ; preds = %_ZN4ncnn3MatD2Ev.exit2343
  %i.dhj = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !223
  %i.dhk = load ptr, ptr %0, align 8, !tbaa !9, !noalias !223
  %i.dhl = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !223
  %i.dhm = load i64, ptr %i.aye, align 8, !tbaa !19, !noalias !223 ; 2 uses
  %factor.op.mul4898 = mul i64 %i.dhl, %i.dhm
  %i.dhn = sext i32 %i.dhj to i64
  %i.dho = mul i64 %i.dhm, %i.dhn
  %i.dhp = mul i64 %i.dho, %i.dgr
  %invariant.gep4900 = getelementptr i8, ptr %i.dhk, i64 %i.dhp
  %i.dhq = trunc nuw nsw i64 %indvars.iv5703 to i32
  %.reass5029 = mul i32 %factor.op.mul5028, %i.dhq
  %i.dhr = sext i32 %.reass5029 to i64
  %invariant.gep4901 = getelementptr [2 x i8], ptr %invariant.gep4900, i64 %i.dhr
  %i.dhs = load i32, ptr %i.f, align 4            ; 8 uses
  %i.dht = icmp slt i32 %i.dhs, 1                 ; 2 uses
  %i.dhu = load ptr, ptr %i.g, align 8            ; 8 uses
  %i.dhv = load i64, ptr %i.d, align 8            ; 17 uses
  %i.dhw = icmp sgt i32 %i.dhs, 0                 ; 2 uses
  %.idx2001 = shl i64 %i.dhv, 2                   ; 2 uses
  %.idx2002 = mul i64 %i.dhv, 6                   ; 2 uses
  %.idx2003 = mul i64 %i.dhv, 30
  %.idx2004 = mul i64 %i.dhv, 28
  %.idx2005 = mul i64 %i.dhv, 26
  %.idx2006 = mul i64 %i.dhv, 24
  %.idx2007 = mul i64 %i.dhv, 22
  %.idx2008 = mul i64 %i.dhv, 20
  %.idx2009 = mul i64 %i.dhv, 18
  %.idx2010 = shl i64 %i.dhv, 4
  %.idx2011 = mul i64 %i.dhv, 14
  %.idx2012 = mul i64 %i.dhv, 12
  %.idx2013 = mul i64 %i.dhv, 10
  %.idx2014 = shl i64 %i.dhv, 3
  %i.dhx = add i32 %i.dhs, -1
  %i.dhy = zext i32 %i.dhx to i64
  %i.dhz = shl nuw nsw i64 %i.dhy, 6              ; 4 uses
  %brmerge5209 = select i1 %i.ayf, i1 true, i1 %i.dht
  %wide.trip.count5624 = zext i32 %i.dhs to i64   ; 5 uses
  %brmerge5212 = select i1 %i.ayi, i1 true, i1 %i.dht
  %wide.trip.count5645 = zext nneg i32 %i.dhs to i64
  %wide.trip.count5638 = zext nneg i32 %i.dhs to i64
  %i.dia = add nsw i64 %wide.trip.count5624, -1   ; 2 uses
  %xtraiter6649 = and i64 %wide.trip.count5624, 1
  %i.dib = icmp eq i64 %i.dia, 0
  %unroll_iter6654 = and i64 %wide.trip.count5624, 2147483646
  %lcmp.mod6650.not = icmp eq i64 %xtraiter6649, 0
  %lcmp.mod6653 = trunc i32 %i.dhs to i1
  %xtraiter6656 = and i64 %wide.trip.count5624, 1
  %i.dic = icmp eq i64 %i.dia, 0
  %unroll_iter6661 = and i64 %wide.trip.count5624, 2147483646
  %lcmp.mod6657.not = icmp eq i64 %xtraiter6656, 0
  %lcmp.mod6660 = trunc i32 %i.dhs to i1
  br label %_ZN4ncnn3MatD2Ev.exit2342

_ZN4ncnn3MatD2Ev.exit2342:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2342.lr.ph, %.loopexit4356
  %.014864892 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2342.lr.ph ], [ %i.dqs, %.loopexit4356 ] ; 2 uses
  %.014914891 = phi ptr [ %i.dgo, %_ZN4ncnn3MatD2Ev.exit2342.lr.ph ], [ %.81499, %.loopexit4356 ] ; 13 uses
  %.040864890 = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2342.lr.ph ], [ %.84094, %.loopexit4356 ] ; 9 uses
  %.040954889 = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2342.lr.ph ], [ %.84103, %.loopexit4356 ] ; 9 uses
  %i.did = sdiv i32 %.014864892, %i.axs
  %i.die = sext i32 %i.did to i64
  %.reass4899 = mul i64 %factor.op.mul4898, %i.die
  %gep4902 = getelementptr i8, ptr %invariant.gep4901, i64 %.reass4899 ; 27 uses
  br i1 %brmerge5209, label %.loopexit4360, label %.lr.ph4859.preheader

.lr.ph4859.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2342
  br i1 %i.dib, label %.lr.ph4859.epil.preheader, label %.lr.ph4859

.lr.ph4859:                                       ; preds = %.lr.ph4859.preheader, %.lr.ph4859
  %indvars.iv5619 = phi i64 [ %indvars.iv.next5620.1, %.lr.ph4859 ], [ 0, %.lr.ph4859.preheader ] ; 3 uses
  %.114924857 = phi ptr [ %i.djh, %.lr.ph4859 ], [ %.014914891, %.lr.ph4859.preheader ] ; 5 uses
  %.140874856 = phi <16 x float> [ %i.djg, %.lr.ph4859 ], [ %.040864890, %.lr.ph4859.preheader ]
  %.140964855 = phi <16 x float> [ %i.djf, %.lr.ph4859 ], [ %.040954889, %.lr.ph4859.preheader ]
  %niter6655 = phi i64 [ %niter6655.next.1, %.lr.ph4859 ], [ 0, %.lr.ph4859.preheader ]
  %i.dif = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv5619
  %i.dig = load i32, ptr %i.dif, align 4, !tbaa !113
  %i.dih = sext i32 %i.dig to i64
  %i.dii = getelementptr inbounds [2 x i8], ptr %gep4902, i64 %i.dih
  %i.dij = load <16 x bfloat>, ptr %i.dii, align 1, !tbaa !20
  %i.dik = fpext fast <16 x bfloat> %i.dij to <16 x float> ; 2 uses
  %i.dil = load <16 x bfloat>, ptr %.114924857, align 32, !tbaa !20
  %i.dim = fpext fast <16 x bfloat> %i.dil to <16 x float>
  %i.din = getelementptr inbounds nuw i8, ptr %.114924857, i64 32
  %i.dio = load <16 x bfloat>, ptr %i.din, align 32, !tbaa !20
  %i.dip = fpext fast <16 x bfloat> %i.dio to <16 x float>
  %i.diq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dik, <16 x float> nofpclass(nan inf) %i.dim, <16 x float> nofpclass(nan inf) %.140964855)
  %i.dir = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dik, <16 x float> nofpclass(nan inf) %i.dip, <16 x float> nofpclass(nan inf) %.140874856)
  %i.dis = getelementptr inbounds nuw i8, ptr %.114924857, i64 64
  %i.dit = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv5619
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dit, i64 4
  %i.div = load i32, ptr %i.diu, align 4, !tbaa !113
  %i.diw = sext i32 %i.div to i64
  %i.dix = getelementptr inbounds [2 x i8], ptr %gep4902, i64 %i.diw
  %i.diy = load <16 x bfloat>, ptr %i.dix, align 1, !tbaa !20
  %i.diz = fpext fast <16 x bfloat> %i.diy to <16 x float> ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dxk = load i64, ptr %i.d, align 8            ; 3 uses
  %.idx1974 = mul i64 %i.dxk, 6
  %.idx1975 = shl i64 %i.dxk, 2
  %i.dxl = add i32 %i.dxh, -1
  %i.dxm = zext i32 %i.dxl to i64
  %i.dxn = shl nuw nsw i64 %i.dxm, 4              ; 2 uses
  %brmerge5221 = select i1 %i.ayk, i1 true, i1 %i.dxi
  %wide.trip.count5673 = zext i32 %i.dxh to i64   ; 2 uses
  %brmerge5224 = select i1 %i.ayi, i1 true, i1 %i.dxi
  %wide.trip.count5680 = zext nneg i32 %i.dxh to i64
  %xtraiter6670 = and i64 %wide.trip.count5673, 1
  %i.dxo = icmp eq i32 %i.dxh, 1
  %unroll_iter6675 = and i64 %wide.trip.count5673, 2147483646
  %lcmp.mod6671.not = icmp eq i64 %xtraiter6670, 0
  %lcmp.mod6674 = trunc i32 %i.dxh to i1
  br label %_ZN4ncnn3MatD2Ev.exit2340

_ZN4ncnn3MatD2Ev.exit2340:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2340.lr.ph, %.loopexit4347
  %.214884961 = phi i32 [ %.11487.lcssa, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %i.ebu, %.loopexit4347 ] ; 2 uses
  %.1615074960 = phi ptr [ %.91500.lcssa, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %.201511, %.loopexit4347 ] ; 6 uses
  %.040624959 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %.44066, %.loopexit4347 ] ; 4 uses
  %.040674958 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %.44071, %.loopexit4347 ] ; 4 uses
  %i.dxp = sdiv i32 %.214884961, %i.axs
  %i.dxq = sext i32 %i.dxp to i64
  %.reass4968 = mul i64 %factor.op.mul4967, %i.dxq
  %gep4971 = getelementptr i8, ptr %invariant.gep4970, i64 %.reass4968 ; 7 uses
  br i1 %brmerge5221, label %.loopexit4349, label %.lr.ph4946.preheader

.lr.ph4946.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  br i1 %i.dxo, label %.lr.ph4946.epil.preheader, label %.lr.ph4946

.lr.ph4946:                                       ; preds = %.lr.ph4946.preheader, %.lr.ph4946
  %indvars.iv5668 = phi i64 [ %indvars.iv.next5669.1, %.lr.ph4946 ], [ 0, %.lr.ph4946.preheader ] ; 3 uses
  %.1715084944 = phi ptr [ %i.dzl, %.lr.ph4946 ], [ %.1615074960, %.lr.ph4946.preheader ] ; 5 uses
  %.140634943 = phi <4 x float> [ %i.dzk, %.lr.ph4946 ], [ %.040624959, %.lr.ph4946.preheader ]
  %.140684942 = phi <4 x float> [ %i.dzj, %.lr.ph4946 ], [ %.040674958, %.lr.ph4946.preheader ]
  %niter6676 = phi i64 [ %niter6676.next.1, %.lr.ph4946 ], [ 0, %.lr.ph4946.preheader ]
  %i.dxr = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5668
  %i.dxs = load i32, ptr %i.dxr, align 4, !tbaa !113
  %i.dxt = sext i32 %i.dxs to i64
  %i.dxu = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dxt
  %i.dxv = load i64, ptr %i.dxu, align 1, !tbaa !20
  %i.dxw = insertelement <2 x i64> poison, i64 %i.dxv, i64 0
  %i.dxx = bitcast <2 x i64> %i.dxw to <8 x i16>
  %i.dxy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxz = bitcast <8 x i16> %i.dxy to <4 x float> ; 2 uses
  %i.dya = load i64, ptr %.1715084944, align 1, !tbaa !20
  %i.dyb = insertelement <2 x i64> poison, i64 %i.dya, i64 0
  %i.dyc = bitcast <2 x i64> %i.dyb to <8 x i16>
  %i.dyd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dye = bitcast <8 x i16> %i.dyd to <4 x float>
  %i.dyf = getelementptr inbounds nuw i8, ptr %.1715084944, i64 8
  %i.dyg = load i64, ptr %i.dyf, align 1, !tbaa !20
  %i.dyh = insertelement <2 x i64> poison, i64 %i.dyg, i64 0
  %i.dyi = bitcast <2 x i64> %i.dyh to <8 x i16>
  %i.dyj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyk = bitcast <8 x i16> %i.dyj to <4 x float>
  %i.dyl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxz, <4 x float> nofpclass(nan inf) %i.dye, <4 x float> nofpclass(nan inf) %.140684942)
  %i.dym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxz, <4 x float> nofpclass(nan inf) %i.dyk, <4 x float> nofpclass(nan inf) %.140634943)
  %i.dyn = getelementptr inbounds nuw i8, ptr %.1715084944, i64 16
  %i.dyo = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5668
  %i.dyp = getelementptr inbounds nuw i8, ptr %i.dyo, i64 4
  %i.dyq = load i32, ptr %i.dyp, align 4, !tbaa !113
  %i.dyr = sext i32 %i.dyq to i64
  %i.dys = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dyr
  %i.dyt = load i64, ptr %i.dys, align 1, !tbaa !20
  %i.dyu = insertelement <2 x i64> poison, i64 %i.dyt, i64 0
  %i.dyv = bitcast <2 x i64> %i.dyu to <8 x i16>
  %i.dyw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyx = bitcast <8 x i16> %i.dyw to <4 x float> ; 2 uses
  %i.dyy = load i64, ptr %i.dyn, align 1, !tbaa !20
  %i.dyz = insertelement <2 x i64> poison, i64 %i.dyy, i64 0
  %i.dza = bitcast <2 x i64> %i.dyz to <8 x i16>
  %i.dzb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dza, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzc = bitcast <8 x i16> %i.dzb to <4 x float>
  %i.dzd = getelementptr inbounds nuw i8, ptr %.1715084944, i64 24
  %i.dze = load i64, ptr %i.dzd, align 1, !tbaa !20
  %i.dzf = insertelement <2 x i64> poison, i64 %i.dze, i64 0
  %i.dzg = bitcast <2 x i64> %i.dzf to <8 x i16>
  %i.dzh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzi = bitcast <8 x i16> %i.dzh to <4 x float>
  %i.dzj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dyx, <4 x float> nofpclass(nan inf) %i.dzc, <4 x float> nofpclass(nan inf) %i.dyl) ; 3 uses
  %i.dzk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dyx, <4 x float> nofpclass(nan inf) %i.dzi, <4 x float> nofpclass(nan inf) %i.dym) ; 3 uses
  %i.dzl = getelementptr inbounds nuw i8, ptr %.1715084944, i64 32 ; 2 uses
  %indvars.iv.next5669.1 = add nuw nsw i64 %indvars.iv5668, 2 ; 2 uses
  %niter6676.next.1 = add i64 %niter6676, 2       ; 2 uses
  %niter6676.ncmp.1 = icmp eq i64 %niter6676.next.1, %unroll_iter6675
  br i1 %niter6676.ncmp.1, label %.loopexit4349.thread.unr-lcssa, label %.lr.ph4946, !llvm.loop !241

.loopexit4349.thread.unr-lcssa:                   ; preds = %.lr.ph4946
  br i1 %lcmp.mod6671.not, label %.loopexit4349.thread, label %.lr.ph4946.epil.preheader

.lr.ph4946.epil.preheader:                        ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.preheader
  %indvars.iv5668.epil.init = phi i64 [ 0, %.lr.ph4946.preheader ], [ %indvars.iv.next5669.1, %.loopexit4349.thread.unr-lcssa ]
  %.1715084944.epil.init = phi ptr [ %.1615074960, %.lr.ph4946.preheader ], [ %i.dzl, %.loopexit4349.thread.unr-lcssa ] ; 2 uses
  %.140634943.epil.init = phi <4 x float> [ %.040624959, %.lr.ph4946.preheader ], [ %i.dzk, %.loopexit4349.thread.unr-lcssa ]
  %.140684942.epil.init = phi <4 x float> [ %.040674958, %.lr.ph4946.preheader ], [ %i.dzj, %.loopexit4349.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6674)
  %i.dzm = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5668.epil.init
  %i.dzn = load i32, ptr %i.dzm, align 4, !tbaa !113
  %i.dzo = sext i32 %i.dzn to i64
  %i.dzp = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dzo
  %i.dzq = load i64, ptr %i.dzp, align 1, !tbaa !20
  %i.dzr = insertelement <2 x i64> poison, i64 %i.dzq, i64 0
  %i.dzs = bitcast <2 x i64> %i.dzr to <8 x i16>
  %i.dzt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzu = bitcast <8 x i16> %i.dzt to <4 x float> ; 2 uses
  %i.dzv = load i64, ptr %.1715084944.epil.init, align 1, !tbaa !20
  %i.dzw = insertelement <2 x i64> poison, i64 %i.dzv, i64 0
  %i.dzx = bitcast <2 x i64> %i.dzw to <8 x i16>
  %i.dzy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzz = bitcast <8 x i16> %i.dzy to <4 x float>
  %i.eaa = getelementptr inbounds nuw i8, ptr %.1715084944.epil.init, i64 8
  %i.eab = load i64, ptr %i.eaa, align 1, !tbaa !20
  %i.eac = insertelement <2 x i64> poison, i64 %i.eab, i64 0
  %i.ead = bitcast <2 x i64> %i.eac to <8 x i16>
  %i.eae = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ead, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eaf = bitcast <8 x i16> %i.eae to <4 x float>
  %i.eag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzu, <4 x float> nofpclass(nan inf) %i.dzz, <4 x float> nofpclass(nan inf) %.140684942.epil.init)
  %i.eah = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzu, <4 x float> nofpclass(nan inf) %i.eaf, <4 x float> nofpclass(nan inf) %.140634943.epil.init)
  br label %.loopexit4349.thread

.loopexit4349.thread:                             ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.epil.preheader
  %.lcssa6531 = phi <4 x float> [ %i.dzj, %.loopexit4349.thread.unr-lcssa ], [ %i.eag, %.lr.ph4946.epil.preheader ]
  %.lcssa6530 = phi <4 x float> [ %i.dzk, %.loopexit4349.thread.unr-lcssa ], [ %i.eah, %.lr.ph4946.epil.preheader ]
  %scevgep5670.a = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5671 = getelementptr i8, ptr %scevgep5670.a, i64 %i.dxn
  br label %.loopexit4347

.loopexit4349:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  br i1 %brmerge5224, label %.loopexit4347, label %.lr.ph4954

.lr.ph4954:                                       ; preds = %.loopexit4349
  %i.eai = getelementptr i8, ptr %gep4971, i64 %.idx1974
  %i.eaj = getelementptr i8, ptr %gep4971, i64 %.idx1975
  %i.eak = getelementptr [2 x i8], ptr %gep4971, i64 %i.dxk
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph4954, %bb.aj
  %indvars.iv5675 = phi i64 [ 0, %.lr.ph4954 ], [ %indvars.iv.next5676, %bb.aj ] ; 2 uses
  %.1915104952 = phi ptr [ %.1615074960, %.lr.ph4954 ], [ %i.ebt, %bb.aj ] ; 3 uses
  %.340654951 = phi <4 x float> [ %.040624959, %.lr.ph4954 ], [ %i.ebs, %bb.aj ]
  %.340704950 = phi <4 x float> [ %.040674958, %.lr.ph4954 ], [ %i.ebr, %bb.aj ]
  %i.eal = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5675
  %i.eam = load i32, ptr %i.eal, align 4, !tbaa !113
  %i.ean = sext i32 %i.eam to i64                 ; 4 uses
  %i.eao = getelementptr [2 x i8], ptr %i.eai, i64 %i.ean
  %i.eap = load i16, ptr %i.eao, align 2, !tbaa !76
  %i.eaq = getelementptr [2 x i8], ptr %i.eaj, i64 %i.ean
  %i.ear = load i16, ptr %i.eaq, align 2, !tbaa !76
  %i.eas = getelementptr [2 x i8], ptr %i.eak, i64 %i.ean
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !76
  %i.eau = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.ean
  %i.eav = load i16, ptr %i.eau, align 2, !tbaa !76
  %i.eaw = zext i16 %i.eap to i32
  %i.eax = zext i16 %i.ear to i32
  %i.eay = zext i16 %i.eat to i32
  %i.eaz = zext i16 %i.eav to i32
  %i.eba = insertelement <4 x i32> poison, i32 %i.eaz, i64 0
  %i.ebb = insertelement <4 x i32> %i.eba, i32 %i.eay, i64 1
  %i.ebc = insertelement <4 x i32> %i.ebb, i32 %i.eax, i64 2
  %i.ebd = insertelement <4 x i32> %i.ebc, i32 %i.eaw, i64 3
  %i.ebe = shl nuw <4 x i32> %i.ebd, splat (i32 16)
  %i.ebf = bitcast <4 x i32> %i.ebe to <4 x float> ; 2 uses
  %i.ebg = load i64, ptr %.1915104952, align 1, !tbaa !20
  %i.ebh = insertelement <2 x i64> poison, i64 %i.ebg, i64 0
  %i.ebi = bitcast <2 x i64> %i.ebh to <8 x i16>
  %i.ebj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebk = bitcast <8 x i16> %i.ebj to <4 x float>
  %i.ebl = getelementptr inbounds nuw i8, ptr %.1915104952, i64 8
  %i.ebm = load i64, ptr %i.ebl, align 1, !tbaa !20
  %i.ebn = insertelement <2 x i64> poison, i64 %i.ebm, i64 0
  %i.ebo = bitcast <2 x i64> %i.ebn to <8 x i16>
  %i.ebp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebq = bitcast <8 x i16> %i.ebp to <4 x float>
  %i.ebr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebf, <4 x float> nofpclass(nan inf) %i.ebk, <4 x float> nofpclass(nan inf) %.340704950) ; 2 uses
  %i.ebs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebf, <4 x float> nofpclass(nan inf) %i.ebq, <4 x float> nofpclass(nan inf) %.340654951) ; 2 uses
  %i.ebt = getelementptr inbounds nuw i8, ptr %.1915104952, i64 16
  %indvars.iv.next5676 = add nuw nsw i64 %indvars.iv5675, 1 ; 2 uses
  %exitcond5681.not = icmp eq i64 %indvars.iv.next5676, %wide.trip.count5680
  br i1 %exitcond5681.not, label %.loopexit4347.loopexit, label %bb.aj, !llvm.loop !242

.loopexit4347.loopexit:                           ; preds = %bb.aj
  %scevgep5677.a = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5678 = getelementptr i8, ptr %scevgep5677.a, i64 %i.dxn
  br label %.loopexit4347

.loopexit4347:                                    ; preds = %.loopexit4349.thread, %.loopexit4347.loopexit, %.loopexit4349
  %.44071 = phi nsz <4 x float> [ %.040674958, %.loopexit4349 ], [ %i.ebr, %.loopexit4347.loopexit ], [ %.lcssa6531, %.loopexit4349.thread ] ; 2 uses
  %.44066 = phi nsz <4 x float> [ %.040624959, %.loopexit4349 ], [ %i.ebs, %.loopexit4347.loopexit ], [ %.lcssa6530, %.loopexit4349.thread ] ; 2 uses
  %.201511 = phi ptr [ %.1615074960, %.loopexit4349 ], [ %scevgep5678, %.loopexit4347.loopexit ], [ %scevgep5671, %.loopexit4349.thread ] ; 2 uses
  %i.ebu = add nuw nsw i32 %.214884961, 4         ; 3 uses
  %i.ebv = or disjoint i32 %i.ebu, 3
  %i.ebw = icmp slt i32 %i.ebv, %i.axu
  br i1 %i.ebw, label %_ZN4ncnn3MatD2Ev.exit2340, label %._crit_edge4962, !llvm.loop !243

._crit_edge4962:                                  ; preds = %.loopexit4347, %._crit_edge4932
  %.04067.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44071, %.loopexit4347 ] ; 4 uses
  %.04062.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44066, %.loopexit4347 ] ; 4 uses
  %.161507.lcssa = phi ptr [ %.91500.lcssa, %._crit_edge4932 ], [ %.201511, %.loopexit4347 ] ; 3 uses
  %.21488.lcssa = phi i32 [ %.11487.lcssa, %._crit_edge4932 ], [ %i.ebu, %.loopexit4347 ] ; 5 uses
  %i.ebx = shufflevector <4 x float> %i.dra, <4 x float> %i.drg, <2 x i32> <i32 3, i32 7>
  %i.eby = shufflevector <4 x float> %i.dra, <4 x float> %i.drg, <2 x i32> <i32 1, i32 5>
  %i.ebz = fadd fast <2 x float> %i.ebx, %i.eby
  %i.eca = fadd fast <2 x float> %i.ebz, %i.dhi
  %i.ecb = shufflevector <4 x float> %i.dra, <4 x float> %i.drg, <2 x i32> <i32 2, i32 6>
  %i.ecc = shufflevector <4 x float> %i.dra, <4 x float> %i.drg, <2 x i32> <i32 0, i32 4>
  %i.ecd = fadd fast <2 x float> %i.ecb, %i.ecc
  %i.ece = fadd fast <2 x float> %i.eca, %i.ecd
  %i.ecf = shufflevector <4 x float> %i.dws, <4 x float> %i.dwv, <2 x i32> <i32 3, i32 7>
  %i.ecg = shufflevector <4 x float> %i.dws, <4 x float> %i.dwv, <2 x i32> <i32 1, i32 5>
  %i.ech = fadd fast <2 x float> %i.ecf, %i.ecg
  %i.eci = fadd fast <2 x float> %i.ece, %i.ech
  %i.ecj = shufflevector <4 x float> %i.dws, <4 x float> %i.dwv, <2 x i32> <i32 2, i32 6>
  %i.eck = shufflevector <4 x float> %i.dws, <4 x float> %i.dwv, <2 x i32> <i32 0, i32 4>
  %i.ecl = fadd fast <2 x float> %i.ecj, %i.eck
  %i.ecm = fadd fast <2 x float> %i.eci, %i.ecl
  %i.ecn = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 3, i32 7>
  %i.eco = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 1, i32 5>
  %i.ecp = fadd fast <2 x float> %i.ecn, %i.eco
  %i.ecq = fadd fast <2 x float> %i.ecm, %i.ecp
  %i.ecr = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 2, i32 6>
  %i.ecs = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 0, i32 4>
  %i.ect = fadd fast <2 x float> %i.ecr, %i.ecs
  %i.ecu = fadd fast <2 x float> %i.ecq, %i.ect   ; 3 uses
  %i.ecv = or disjoint i32 %.21488.lcssa, 1
  %i.ecw = icmp slt i32 %i.ecv, %i.axu
  br i1 %i.ecw, label %_ZN4ncnn3MatD2Ev.exit2339.lr.ph, label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.lr.ph:                  ; preds = %._crit_edge4962
  %i.ecx = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !244
  %i.ecy = load ptr, ptr %0, align 8, !tbaa !9, !noalias !244
  %i.ecz = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !244
  %i.eda = load i64, ptr %i.aye, align 8, !tbaa !19, !noalias !244 ; 2 uses
  %factor.op.mul4989 = mul i64 %i.ecz, %i.eda
  %i.edb = sext i32 %i.ecx to i64
  %i.edc = mul i64 %i.eda, %i.edb
  %i.edd = mul i64 %i.edc, %i.dgr
  %invariant.gep4991 = getelementptr i8, ptr %i.ecy, i64 %i.edd
  %i.ede = mul nsw i64 %indvars.iv5703, %i.dgz
  %invariant.gep4992 = getelementptr [2 x i8], ptr %invariant.gep4991, i64 %i.ede
  %i.edf = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.edg = load i64, ptr %i.d, align 8
  br i1 %i.dgu, label %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2339.preheader

_ZN4ncnn3MatD2Ev.exit2339.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edh = add i32 %.21488.lcssa, 2
  %i.edi = sub i32 %14, %.21488.lcssa
  %i.edj = and i32 %i.edi, -2
  %i.edk = add i32 %i.edh, %i.edj
  br label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edl = zext i32 %.21488.lcssa to i64
  br label %iter.check6351

iter.check6351:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, %._crit_edge4977.us
  %indvars.iv5690 = phi i64 [ %i.edl, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %indvars.iv.next5691, %._crit_edge4977.us ] ; 2 uses
  %.2115124983.us = phi ptr [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %scevgep5686, %._crit_edge4977.us ] ; 7 uses
  %i.edm = phi <2 x float> [ %i.ecu, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %i.etq, %._crit_edge4977.us ] ; 4 uses
  %.reass4990.us = mul i64 %factor.op.mul4989, %indvars.iv5690
  %gep4993.us = getelementptr i8, ptr %invariant.gep4992, i64 %.reass4990.us ; 42 uses
  %i.edn = getelementptr [2 x i8], ptr %gep4993.us, i64 %i.edg ; 41 uses
  br i1 %min.iters.check6318, label %vec.epilog.scalar.ph6352.preheader, label %vector.main.loop.iter.check6319

vector.main.loop.iter.check6319:                  ; preds = %iter.check6351
  %i.edo = extractelement <2 x float> %i.edm, i64 0
  %i.edp = extractelement <2 x float> %i.edm, i64 1
  br i1 %min.iters.check6320, label %vec.epilog.ph6355, label %vector.ph6321

vector.ph6321:                                    ; preds = %vector.main.loop.iter.check6319
  %i.edq = getelementptr i8, ptr %.2115124983.us, i64 %i.dhb
  %i.edr = shufflevector <2 x float> %i.edm, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eds = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.edr, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edt = shufflevector <16 x float> %i.edr, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6323

vector.body6323:                                  ; preds = %vector.body6323, %vector.ph6321
  %index6324 = phi i64 [ 0, %vector.ph6321 ], [ %index.next6343, %vector.body6323 ] ; 3 uses
  %vec.phi6325.a = phi <16 x float> [ %i.eds, %vector.ph6321 ], [ %i.eoo, %vector.body6323 ]
  %vec.phi6326 = phi <16 x float> [ zeroinitializer, %vector.ph6321 ], [ %i.eop, %vector.body6323 ]
  %vec.phi6327 = phi <16 x float> [ %i.edt, %vector.ph6321 ], [ %i.eoe, %vector.body6323 ]
  %vec.phi6328 = phi <16 x float> [ zeroinitializer, %vector.ph6321 ], [ %i.eof, %vector.body6323 ]
  %i.edu = shl i64 %index6324, 3                  ; 2 uses
  %next.gep6329 = getelementptr i8, ptr %.2115124983.us, i64 %i.edu
  %i.edv = getelementptr i8, ptr %.2115124983.us, i64 %i.edu
  %next.gep6330 = getelementptr i8, ptr %i.edv, i64 128
  %i.edw = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %index6324 ; 2 uses
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edw, i64 64
  %wide.load6331 = load <16 x i32>, ptr %i.edw, align 4, !tbaa !113
  %wide.load6332 = load <16 x i32>, ptr %i.edx, align 4, !tbaa !113
  %i.edy = sext <16 x i32> %wide.load6331 to <16 x i64> ; 16 uses
  %i.edz = sext <16 x i32> %wide.load6332 to <16 x i64> ; 16 uses
  %i.eea = extractelement <16 x i64> %i.edy, i64 0 ; 2 uses
  %i.eeb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eea
  %i.eec = extractelement <16 x i64> %i.edy, i64 1 ; 2 uses
  %i.eed = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eec
  %i.eee = extractelement <16 x i64> %i.edy, i64 2 ; 2 uses
  %i.eef = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eee
  %i.eeg = extractelement <16 x i64> %i.edy, i64 3 ; 2 uses
  %i.eeh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeg
  %i.eei = extractelement <16 x i64> %i.edy, i64 4 ; 2 uses
  %i.eej = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eei
  %i.eek = extractelement <16 x i64> %i.edy, i64 5 ; 2 uses
  %i.eel = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eek
  %i.eem = extractelement <16 x i64> %i.edy, i64 6 ; 2 uses
  %i.een = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eem
  %i.eeo = extractelement <16 x i64> %i.edy, i64 7 ; 2 uses
  %i.eep = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeo
  %i.eeq = extractelement <16 x i64> %i.edy, i64 8 ; 2 uses
  %i.eer = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeq
  %i.ees = extractelement <16 x i64> %i.edy, i64 9 ; 2 uses
  %i.eet = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ees
  %i.eeu = extractelement <16 x i64> %i.edy, i64 10 ; 2 uses
  %i.eev = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeu
  %i.eew = extractelement <16 x i64> %i.edy, i64 11 ; 2 uses
  %i.eex = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eew
  %i.eey = extractelement <16 x i64> %i.edy, i64 12 ; 2 uses
  %i.eez = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eey
  %i.efa = extractelement <16 x i64> %i.edy, i64 13 ; 2 uses
  %i.efb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efa
  %i.efc = extractelement <16 x i64> %i.edy, i64 14 ; 2 uses
  %i.efd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efc
  %i.efe = extractelement <16 x i64> %i.edy, i64 15 ; 2 uses
  %i.eff = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efe
  %i.efg = extractelement <16 x i64> %i.edz, i64 0 ; 2 uses
  %i.efh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efg
  %i.efi = extractelement <16 x i64> %i.edz, i64 1 ; 2 uses
  %i.efj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efi
  %i.efk = extractelement <16 x i64> %i.edz, i64 2 ; 2 uses
  %i.efl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efk
  %i.efm = extractelement <16 x i64> %i.edz, i64 3 ; 2 uses
  %i.efn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efm
  %i.efo = extractelement <16 x i64> %i.edz, i64 4 ; 2 uses
  %i.efp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efo
  %i.efq = extractelement <16 x i64> %i.edz, i64 5 ; 2 uses
  %i.efr = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efq
  %i.efs = extractelement <16 x i64> %i.edz, i64 6 ; 2 uses
  %i.eft = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efs
  %i.efu = extractelement <16 x i64> %i.edz, i64 7 ; 2 uses
  %i.efv = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efu
  %i.efw = extractelement <16 x i64> %i.edz, i64 8 ; 2 uses
  %i.efx = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efw
  %i.efy = extractelement <16 x i64> %i.edz, i64 9 ; 2 uses
  %i.efz = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efy
  %i.ega = extractelement <16 x i64> %i.edz, i64 10 ; 2 uses
  %i.egb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ega
  %i.egc = extractelement <16 x i64> %i.edz, i64 11 ; 2 uses
  %i.egd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egc
  %i.ege = extractelement <16 x i64> %i.edz, i64 12 ; 2 uses
  %i.egf = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ege
  %i.egg = extractelement <16 x i64> %i.edz, i64 13 ; 2 uses
  %i.egh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egg
  %i.egi = extractelement <16 x i64> %i.edz, i64 14 ; 2 uses
  %i.egj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egi
  %i.egk = extractelement <16 x i64> %i.edz, i64 15 ; 2 uses
  %i.egl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egk
  %i.egm = load i16, ptr %i.eeb, align 2, !tbaa !76
  %i.egn = load i16, ptr %i.eed, align 2, !tbaa !76
  %i.ego = load i16, ptr %i.eef, align 2, !tbaa !76
  %i.egp = load i16, ptr %i.eeh, align 2, !tbaa !76
  %i.egq = load i16, ptr %i.eej, align 2, !tbaa !76
  %i.egr = load i16, ptr %i.eel, align 2, !tbaa !76
  %i.egs = load i16, ptr %i.een, align 2, !tbaa !76
  %i.egt = load i16, ptr %i.eep, align 2, !tbaa !76
  %i.egu = load i16, ptr %i.eer, align 2, !tbaa !76
  %i.egv = load i16, ptr %i.eet, align 2, !tbaa !76
  %i.egw = load i16, ptr %i.eev, align 2, !tbaa !76
  %i.egx = load i16, ptr %i.eex, align 2, !tbaa !76
  %i.egy = load i16, ptr %i.eez, align 2, !tbaa !76
  %i.egz = load i16, ptr %i.efb, align 2, !tbaa !76
  %i.eha = load i16, ptr %i.efd, align 2, !tbaa !76
  %i.ehb = load i16, ptr %i.eff, align 2, !tbaa !76
  %i.ehc = insertelement <16 x i16> poison, i16 %i.egm, i64 0
  %i.ehd = insertelement <16 x i16> %i.ehc, i16 %i.egn, i64 1
  %i.ehe = insertelement <16 x i16> %i.ehd, i16 %i.ego, i64 2
  %i.ehf = insertelement <16 x i16> %i.ehe, i16 %i.egp, i64 3
  %i.ehg = insertelement <16 x i16> %i.ehf, i16 %i.egq, i64 4
  %i.ehh = insertelement <16 x i16> %i.ehg, i16 %i.egr, i64 5
  %i.ehi = insertelement <16 x i16> %i.ehh, i16 %i.egs, i64 6
  %i.ehj = insertelement <16 x i16> %i.ehi, i16 %i.egt, i64 7
  %i.ehk = insertelement <16 x i16> %i.ehj, i16 %i.egu, i64 8
  %i.ehl = insertelement <16 x i16> %i.ehk, i16 %i.egv, i64 9
  %i.ehm = insertelement <16 x i16> %i.ehl, i16 %i.egw, i64 10
  %i.ehn = insertelement <16 x i16> %i.ehm, i16 %i.egx, i64 11
  %i.eho = insertelement <16 x i16> %i.ehn, i16 %i.egy, i64 12
  %i.ehp = insertelement <16 x i16> %i.eho, i16 %i.egz, i64 13
  %i.ehq = insertelement <16 x i16> %i.ehp, i16 %i.eha, i64 14
  %i.ehr = insertelement <16 x i16> %i.ehq, i16 %i.ehb, i64 15
  %i.ehs = load i16, ptr %i.efh, align 2, !tbaa !76
  %i.eht = load i16, ptr %i.efj, align 2, !tbaa !76
  %i.ehu = load i16, ptr %i.efl, align 2, !tbaa !76
  %i.ehv = load i16, ptr %i.efn, align 2, !tbaa !76
  %i.ehw = load i16, ptr %i.efp, align 2, !tbaa !76
  %i.ehx = load i16, ptr %i.efr, align 2, !tbaa !76
  %i.ehy = load i16, ptr %i.eft, align 2, !tbaa !76
  %i.ehz = load i16, ptr %i.efv, align 2, !tbaa !76
  %i.eia = load i16, ptr %i.efx, align 2, !tbaa !76
  %i.eib = load i16, ptr %i.efz, align 2, !tbaa !76
  %i.eic = load i16, ptr %i.egb, align 2, !tbaa !76
  %i.eid = load i16, ptr %i.egd, align 2, !tbaa !76
  %i.eie = load i16, ptr %i.egf, align 2, !tbaa !76
  %i.eif = load i16, ptr %i.egh, align 2, !tbaa !76
  %i.eig = load i16, ptr %i.egj, align 2, !tbaa !76
  %i.eih = load i16, ptr %i.egl, align 2, !tbaa !76
  %i.eii = insertelement <16 x i16> poison, i16 %i.ehs, i64 0
  %i.eij = insertelement <16 x i16> %i.eii, i16 %i.eht, i64 1
  %i.eik = insertelement <16 x i16> %i.eij, i16 %i.ehu, i64 2
  %i.eil = insertelement <16 x i16> %i.eik, i16 %i.ehv, i64 3
  %i.eim = insertelement <16 x i16> %i.eil, i16 %i.ehw, i64 4
  %i.ein = insertelement <16 x i16> %i.eim, i16 %i.ehx, i64 5
  %i.eio = insertelement <16 x i16> %i.ein, i16 %i.ehy, i64 6
  %i.eip = insertelement <16 x i16> %i.eio, i16 %i.ehz, i64 7
  %i.eiq = insertelement <16 x i16> %i.eip, i16 %i.eia, i64 8
  %i.eir = insertelement <16 x i16> %i.eiq, i16 %i.eib, i64 9
  %i.eis = insertelement <16 x i16> %i.eir, i16 %i.eic, i64 10
  %i.eit = insertelement <16 x i16> %i.eis, i16 %i.eid, i64 11
  %i.eiu = insertelement <16 x i16> %i.eit, i16 %i.eie, i64 12
  %i.eiv = insertelement <16 x i16> %i.eiu, i16 %i.eif, i64 13
  %i.eiw = insertelement <16 x i16> %i.eiv, i16 %i.eig, i64 14
  %i.eix = insertelement <16 x i16> %i.eiw, i16 %i.eih, i64 15
  %i.eiy = zext <16 x i16> %i.ehr to <16 x i32>
  %i.eiz = zext <16 x i16> %i.eix to <16 x i32>
  %i.eja = shl nuw <16 x i32> %i.eiy, splat (i32 16)
  %i.ejb = shl nuw <16 x i32> %i.eiz, splat (i32 16)
  %i.ejc = bitcast <16 x i32> %i.eja to <16 x float> ; 2 uses
  %i.ejd = bitcast <16 x i32> %i.ejb to <16 x float> ; 2 uses
  %wide.vec6333 = load <64 x i16>, ptr %next.gep6329, align 2, !tbaa !76 ; 4 uses
  %strided.vec6334.a = shufflevector <64 x i16> %wide.vec6333, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6335 = shufflevector <64 x i16> %wide.vec6333, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6336.a = shufflevector <64 x i16> %wide.vec6333, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6337.a = shufflevector <64 x i16> %wide.vec6333, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec6338 = load <64 x i16>, ptr %next.gep6330, align 2, !tbaa !76 ; 4 uses
  %strided.vec6339.a = shufflevector <64 x i16> %wide.vec6338, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6340 = shufflevector <64 x i16> %wide.vec6338, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6341 = shufflevector <64 x i16> %wide.vec6338, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6342 = shufflevector <64 x i16> %wide.vec6338, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eje = zext <16 x i16> %strided.vec6334.a to <16 x i32>
  %i.ejf = zext <16 x i16> %strided.vec6339.a to <16 x i32>
  %i.ejg = shl nuw <16 x i32> %i.eje, splat (i32 16)
  %i.ejh = shl nuw <16 x i32> %i.ejf, splat (i32 16)
  %i.eji = bitcast <16 x i32> %i.ejg to <16 x float>
  %i.ejj = bitcast <16 x i32> %i.ejh to <16 x float>
  %i.ejk = fmul fast <16 x float> %i.eji, %i.ejc
  %i.ejl = fmul fast <16 x float> %i.ejj, %i.ejd
  %i.ejm = fadd fast <16 x float> %vec.phi6327, %i.ejk
  %i.ejn = fadd fast <16 x float> %vec.phi6328, %i.ejl
  %i.ejo = zext <16 x i16> %strided.vec6335 to <16 x i32>
end_hunk_5
begin_hunk_6_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.64052 = phi nsz <8 x float> [ %.040465106, %.loopexit4335 ], [ %i.gcv, %.loopexit4334.loopexit ], [ %.lcssa6494, %.loopexit4337.thread ], [ %.lcssa6496, %.loopexit4335.loopexit ], [ %.040465106, %bb.av ] ; 2 uses
  %.15 = phi ptr [ %.95107, %.loopexit4335 ], [ %scevgep5759, %.loopexit4334.loopexit ], [ %scevgep5745, %.loopexit4337.thread ], [ %scevgep5752, %.loopexit4335.loopexit ], [ %.95107, %bb.av ] ; 2 uses
  %i.gcx = add nuw nsw i32 %.15108, 8             ; 3 uses
  %i.gcy = or disjoint i32 %i.gcx, 7
  %i.gcz = icmp slt i32 %i.gcy, %i.q
  br i1 %i.gcz, label %_ZN4ncnn3MatD2Ev.exit2334, label %._crit_edge5109, !llvm.loop !275

._crit_edge5109:                                  ; preds = %.loopexit4334, %._crit_edge5078
  %.04046.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge5078 ], [ %.64052, %.loopexit4334 ] ; 2 uses
  %.9.lcssa = phi ptr [ %.01460.lcssa, %._crit_edge5078 ], [ %.15, %.loopexit4334 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.01459.lcssa, %._crit_edge5078 ], [ %i.gcx, %.loopexit4334 ] ; 3 uses
  %i.gda = shufflevector <8 x float> %.04046.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gdb = shufflevector <8 x float> %.04046.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gdc = fadd fast <4 x float> %i.gda, %i.gdb   ; 2 uses
  %i.gdd = or disjoint i32 %.1.lcssa, 3
  %i.gde = icmp slt i32 %i.gdd, %i.q
  br i1 %i.gde, label %_ZN4ncnn3MatD2Ev.exit2333.lr.ph, label %._crit_edge5133

_ZN4ncnn3MatD2Ev.exit2333.lr.ph:                  ; preds = %._crit_edge5109
  %i.gdf = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !276
  %i.gdg = load ptr, ptr %0, align 8, !tbaa !9, !noalias !276
  %i.gdh = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !276
  %i.gdi = load i64, ptr %i.dfd, align 8, !tbaa !19, !noalias !276 ; 2 uses
  %factor.op.mul5137 = mul i64 %i.gdh, %i.gdi
  %i.gdj = sext i32 %i.gdf to i64
  %i.gdk = mul i64 %i.gdi, %i.gdj
  %i.gdl = mul i64 %i.gdk, %i.fnq
  %invariant.gep5139 = getelementptr i8, ptr %i.gdg, i64 %i.gdl
  %i.gdm = trunc nuw nsw i64 %indvars.iv5798 to i32
  %.reass5191 = mul i32 %factor.op.mul5186, %i.gdm
  %i.gdn = sext i32 %.reass5191 to i64
  %invariant.gep5140 = getelementptr [2 x i8], ptr %invariant.gep5139, i64 %i.gdn
  %i.gdo = load i32, ptr %i.f, align 4            ; 6 uses
  %i.gdp = icmp slt i32 %i.gdo, 1                 ; 2 uses
  %i.gdq = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.gdr = load i64, ptr %i.d, align 8            ; 3 uses
  %.idx = mul i64 %i.gdr, 6
  %.idx1923 = shl i64 %i.gdr, 2
  %i.gds = add i32 %i.gdo, -1
  %i.gdt = zext i32 %i.gds to i64
  %i.gdu = shl nuw nsw i64 %i.gdt, 3              ; 2 uses
  %brmerge5239 = select i1 %i.dfj, i1 true, i1 %i.gdp
  %wide.trip.count5768 = zext i32 %i.gdo to i64   ; 2 uses
  %brmerge5242 = select i1 %i.dfh, i1 true, i1 %i.gdp
  %wide.trip.count5775 = zext nneg i32 %i.gdo to i64
  %xtraiter6701 = and i64 %wide.trip.count5768, 1
  %i.gdv = icmp eq i32 %i.gdo, 1
  %unroll_iter6705 = and i64 %wide.trip.count5768, 2147483646
  %lcmp.mod6702.not = icmp eq i64 %xtraiter6701, 0
  %lcmp.mod6704 = trunc i32 %i.gdo to i1
  br label %_ZN4ncnn3MatD2Ev.exit2333

_ZN4ncnn3MatD2Ev.exit2333:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2333.lr.ph, %.loopexit
  %.25132 = phi i32 [ %.1.lcssa, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %i.ggz, %.loopexit ] ; 2 uses
  %.165131 = phi ptr [ %.9.lcssa, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %.20, %.loopexit ] ; 6 uses
  %.040415130 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %.44045, %.loopexit ] ; 4 uses
  %i.gdw = sdiv i32 %.25132, %i.n
  %i.gdx = sext i32 %i.gdw to i64
  %.reass5138 = mul i64 %factor.op.mul5137, %i.gdx
  %gep5141 = getelementptr i8, ptr %invariant.gep5140, i64 %.reass5138 ; 7 uses
  br i1 %brmerge5239, label %.loopexit4332, label %.lr.ph5121.preheader

.lr.ph5121.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2333
  br i1 %i.gdv, label %.lr.ph5121.epil.preheader, label %.lr.ph5121

.lr.ph5121:                                       ; preds = %.lr.ph5121.preheader, %.lr.ph5121
  %indvars.iv5763 = phi i64 [ %indvars.iv.next5764.1, %.lr.ph5121 ], [ 0, %.lr.ph5121.preheader ] ; 3 uses
  %.175119 = phi ptr [ %i.gfe, %.lr.ph5121 ], [ %.165131, %.lr.ph5121.preheader ] ; 3 uses
  %.140425118 = phi <4 x float> [ %i.gfd, %.lr.ph5121 ], [ %.040415130, %.lr.ph5121.preheader ]
  %niter6706 = phi i64 [ %niter6706.next.1, %.lr.ph5121 ], [ 0, %.lr.ph5121.preheader ]
  %i.gdy = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5763
  %i.gdz = load i32, ptr %i.gdy, align 4, !tbaa !113
  %i.gea = sext i32 %i.gdz to i64
  %i.geb = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gea
  %i.gec = load i64, ptr %i.geb, align 1, !tbaa !20
  %i.ged = insertelement <2 x i64> poison, i64 %i.gec, i64 0
  %i.gee = bitcast <2 x i64> %i.ged to <8 x i16>
  %i.gef = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.geg = bitcast <8 x i16> %i.gef to <4 x float>
  %i.geh = load i64, ptr %.175119, align 1, !tbaa !20
  %i.gei = insertelement <2 x i64> poison, i64 %i.geh, i64 0
  %i.gej = bitcast <2 x i64> %i.gei to <8 x i16>
  %i.gek = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gel = bitcast <8 x i16> %i.gek to <4 x float>
  %i.gem = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.geg, <4 x float> nofpclass(nan inf) %i.gel, <4 x float> nofpclass(nan inf) %.140425118)
  %i.gen = getelementptr inbounds nuw i8, ptr %.175119, i64 8
  %i.geo = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5763
  %i.gep = getelementptr inbounds nuw i8, ptr %i.geo, i64 4
  %i.geq = load i32, ptr %i.gep, align 4, !tbaa !113
  %i.ger = sext i32 %i.geq to i64
  %i.ges = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.ger
  %i.get = load i64, ptr %i.ges, align 1, !tbaa !20
  %i.geu = insertelement <2 x i64> poison, i64 %i.get, i64 0
  %i.gev = bitcast <2 x i64> %i.geu to <8 x i16>
  %i.gew = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gex = bitcast <8 x i16> %i.gew to <4 x float>
  %i.gey = load i64, ptr %i.gen, align 1, !tbaa !20
  %i.gez = insertelement <2 x i64> poison, i64 %i.gey, i64 0
  %i.gfa = bitcast <2 x i64> %i.gez to <8 x i16>
  %i.gfb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfc = bitcast <8 x i16> %i.gfb to <4 x float>
  %i.gfd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gex, <4 x float> nofpclass(nan inf) %i.gfc, <4 x float> nofpclass(nan inf) %i.gem) ; 3 uses
  %i.gfe = getelementptr inbounds nuw i8, ptr %.175119, i64 16 ; 2 uses
  %indvars.iv.next5764.1 = add nuw nsw i64 %indvars.iv5763, 2 ; 2 uses
  %niter6706.next.1 = add i64 %niter6706, 2       ; 2 uses
  %niter6706.ncmp.1 = icmp eq i64 %niter6706.next.1, %unroll_iter6705
  br i1 %niter6706.ncmp.1, label %.loopexit4332.thread.unr-lcssa, label %.lr.ph5121, !llvm.loop !279

.loopexit4332.thread.unr-lcssa:                   ; preds = %.lr.ph5121
  br i1 %lcmp.mod6702.not, label %.loopexit4332.thread, label %.lr.ph5121.epil.preheader

.lr.ph5121.epil.preheader:                        ; preds = %.loopexit4332.thread.unr-lcssa, %.lr.ph5121.preheader
  %indvars.iv5763.epil.init = phi i64 [ 0, %.lr.ph5121.preheader ], [ %indvars.iv.next5764.1, %.loopexit4332.thread.unr-lcssa ]
  %.175119.epil.init = phi ptr [ %.165131, %.lr.ph5121.preheader ], [ %i.gfe, %.loopexit4332.thread.unr-lcssa ]
  %.140425118.epil.init = phi <4 x float> [ %.040415130, %.lr.ph5121.preheader ], [ %i.gfd, %.loopexit4332.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6704)
  %i.gff = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5763.epil.init
  %i.gfg = load i32, ptr %i.gff, align 4, !tbaa !113
  %i.gfh = sext i32 %i.gfg to i64
  %i.gfi = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gfh
  %i.gfj = load i64, ptr %i.gfi, align 1, !tbaa !20
  %i.gfk = insertelement <2 x i64> poison, i64 %i.gfj, i64 0
  %i.gfl = bitcast <2 x i64> %i.gfk to <8 x i16>
  %i.gfm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfn = bitcast <8 x i16> %i.gfm to <4 x float>
  %i.gfo = load i64, ptr %.175119.epil.init, align 1, !tbaa !20
  %i.gfp = insertelement <2 x i64> poison, i64 %i.gfo, i64 0
  %i.gfq = bitcast <2 x i64> %i.gfp to <8 x i16>
  %i.gfr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfs = bitcast <8 x i16> %i.gfr to <4 x float>
  %i.gft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gfn, <4 x float> nofpclass(nan inf) %i.gfs, <4 x float> nofpclass(nan inf) %.140425118.epil.init)
  br label %.loopexit4332.thread

.loopexit4332.thread:                             ; preds = %.loopexit4332.thread.unr-lcssa, %.lr.ph5121.epil.preheader
  %.lcssa6498 = phi <4 x float> [ %i.gfd, %.loopexit4332.thread.unr-lcssa ], [ %i.gft, %.lr.ph5121.epil.preheader ]
  %scevgep5765 = getelementptr i8, ptr %.165131, i64 8
  %scevgep5766 = getelementptr i8, ptr %scevgep5765, i64 %i.gdu
  br label %.loopexit

.loopexit4332:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2333
  br i1 %brmerge5242, label %.loopexit, label %.lr.ph5127

.lr.ph5127:                                       ; preds = %.loopexit4332
  %i.gfu = getelementptr i8, ptr %gep5141, i64 %.idx
  %i.gfv = getelementptr i8, ptr %gep5141, i64 %.idx1923
  %i.gfw = getelementptr [2 x i8], ptr %gep5141, i64 %i.gdr
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph5127, %bb.ax
  %indvars.iv5770 = phi i64 [ 0, %.lr.ph5127 ], [ %indvars.iv.next5771, %bb.ax ] ; 2 uses
  %.195125 = phi ptr [ %.165131, %.lr.ph5127 ], [ %i.ggy, %bb.ax ] ; 2 uses
  %.340445124 = phi <4 x float> [ %.040415130, %.lr.ph5127 ], [ %i.ggx, %bb.ax ]
  %i.gfx = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5770
  %i.gfy = load i32, ptr %i.gfx, align 4, !tbaa !113
  %i.gfz = sext i32 %i.gfy to i64                 ; 4 uses
  %i.gga = getelementptr [2 x i8], ptr %i.gfu, i64 %i.gfz
  %i.ggb = load i16, ptr %i.gga, align 2, !tbaa !76
  %i.ggc = getelementptr [2 x i8], ptr %i.gfv, i64 %i.gfz
  %i.ggd = load i16, ptr %i.ggc, align 2, !tbaa !76
  %i.gge = getelementptr [2 x i8], ptr %i.gfw, i64 %i.gfz
  %i.ggf = load i16, ptr %i.gge, align 2, !tbaa !76
  %i.ggg = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gfz
  %i.ggh = load i16, ptr %i.ggg, align 2, !tbaa !76
  %i.ggi = zext i16 %i.ggb to i32
  %i.ggj = zext i16 %i.ggd to i32
  %i.ggk = zext i16 %i.ggf to i32
  %i.ggl = zext i16 %i.ggh to i32
  %i.ggm = insertelement <4 x i32> poison, i32 %i.ggl, i64 0
  %i.ggn = insertelement <4 x i32> %i.ggm, i32 %i.ggk, i64 1
  %i.ggo = insertelement <4 x i32> %i.ggn, i32 %i.ggj, i64 2
  %i.ggp = insertelement <4 x i32> %i.ggo, i32 %i.ggi, i64 3
  %i.ggq = shl nuw <4 x i32> %i.ggp, splat (i32 16)
  %i.ggr = bitcast <4 x i32> %i.ggq to <4 x float>
  %i.ggs = load i64, ptr %.195125, align 1, !tbaa !20
  %i.ggt = insertelement <2 x i64> poison, i64 %i.ggs, i64 0
  %i.ggu = bitcast <2 x i64> %i.ggt to <8 x i16>
  %i.ggv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ggu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ggw = bitcast <8 x i16> %i.ggv to <4 x float>
  %i.ggx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ggr, <4 x float> nofpclass(nan inf) %i.ggw, <4 x float> nofpclass(nan inf) %.340445124) ; 2 uses
  %i.ggy = getelementptr inbounds nuw i8, ptr %.195125, i64 8
  %indvars.iv.next5771 = add nuw nsw i64 %indvars.iv5770, 1 ; 2 uses
  %exitcond5776.not = icmp eq i64 %indvars.iv.next5771, %wide.trip.count5775
  br i1 %exitcond5776.not, label %.loopexit.loopexit, label %bb.ax, !llvm.loop !280

.loopexit.loopexit:                               ; preds = %bb.ax
  %scevgep5772 = getelementptr i8, ptr %.165131, i64 8
  %scevgep5773 = getelementptr i8, ptr %scevgep5772, i64 %i.gdu
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit4332.thread, %.loopexit.loopexit, %.loopexit4332
  %.44045 = phi nsz <4 x float> [ %.040415130, %.loopexit4332 ], [ %i.ggx, %.loopexit.loopexit ], [ %.lcssa6498, %.loopexit4332.thread ] ; 2 uses
  %.20 = phi ptr [ %.165131, %.loopexit4332 ], [ %scevgep5773, %.loopexit.loopexit ], [ %scevgep5766, %.loopexit4332.thread ] ; 2 uses
  %i.ggz = add nuw nsw i32 %.25132, 4             ; 3 uses
  %i.gha = or disjoint i32 %i.ggz, 3
  %i.ghb = icmp slt i32 %i.gha, %i.q
  br i1 %i.ghb, label %_ZN4ncnn3MatD2Ev.exit2333, label %._crit_edge5133, !llvm.loop !281

._crit_edge5133:                                  ; preds = %.loopexit, %._crit_edge5109
  %.04041.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge5109 ], [ %.44045, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge5109 ], [ %.20, %.loopexit ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge5109 ], [ %i.ggz, %.loopexit ] ; 5 uses
  %i.ghc = shufflevector <4 x float> %.04041.lcssa, <4 x float> %i.gdc, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ghd = shufflevector <4 x float> %.04041.lcssa, <4 x float> %i.gdc, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ghe = fadd fast <4 x float> %i.ghc, %i.ghd
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fwv, <4 x float> %i.ghe)
  %op.rdx6480 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01465, <8 x float> %i.fww)
  %op.rdx6481 = fadd fast float %op.rdx, %op.rdx6480 ; 3 uses
  %i.ghf = or disjoint i32 %.2.lcssa, 1
  %i.ghg = icmp slt i32 %i.ghf, %i.q
  br i1 %i.ghg, label %_ZN4ncnn3MatD2Ev.exit2332.lr.ph, label %.preheader4344

_ZN4ncnn3MatD2Ev.exit2332.lr.ph:                  ; preds = %._crit_edge5133
  %i.ghh = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !282
  %i.ghi = load ptr, ptr %0, align 8, !tbaa !9, !noalias !282
  %i.ghj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !282
  %i.ghk = load i64, ptr %i.dfd, align 8, !tbaa !19, !noalias !282 ; 2 uses
  %factor.op.mul5155 = mul i64 %i.ghj, %i.ghk
  %i.ghl = sext i32 %i.ghh to i64
  %i.ghm = mul i64 %i.ghk, %i.ghl
  %i.ghn = mul i64 %i.ghm, %i.fnq
  %invariant.gep5157 = getelementptr i8, ptr %i.ghi, i64 %i.ghn
  %i.gho = mul nsw i64 %indvars.iv5798, %i.fny
  %invariant.gep5158 = getelementptr [2 x i8], ptr %invariant.gep5157, i64 %i.gho
  %i.ghp = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.ghq = load i64, ptr %i.d, align 8
  br i1 %i.fnt, label %_ZN4ncnn3MatD2Ev.exit2332.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2332.preheader

_ZN4ncnn3MatD2Ev.exit2332.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2332.lr.ph
  %i.ghr = add i32 %.2.lcssa, 2
  %i.ghs = sub i32 %16, %.2.lcssa
  %i.ght = and i32 %i.ghs, -2
  %i.ghu = add i32 %i.ghr, %i.ght
  br label %.preheader4344

_ZN4ncnn3MatD2Ev.exit2332.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2332.lr.ph
  %i.ghv = zext i32 %.2.lcssa to i64
  br label %iter.check6460

iter.check6460:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2332.us.preheader, %._crit_edge5146.us
  %indvars.iv5785.a = phi i64 [ %i.ghv, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %indvars.iv.next5786.a, %._crit_edge5146.us ] ; 2 uses
  %.215150.us = phi ptr [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %scevgep5781, %._crit_edge5146.us ] ; 9 uses
  %.114665149.us = phi float [ %op.rdx6481, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %.lcssa6121, %._crit_edge5146.us ] ; 3 uses
  %.reass5156.us = mul i64 %factor.op.mul5155, %indvars.iv5785.a
  %gep5159.us = getelementptr i8, ptr %invariant.gep5158, i64 %.reass5156.us ; 74 uses
  %i.ghw = getelementptr [2 x i8], ptr %gep5159.us, i64 %i.ghq ; 73 uses
  br i1 %min.iters.check6421, label %vec.epilog.scalar.ph6461.preheader, label %vector.main.loop.iter.check6422

vector.main.loop.iter.check6422:                  ; preds = %iter.check6460
  br i1 %min.iters.check6423, label %vec.epilog.ph6464, label %vector.ph6424

vector.ph6424:                                    ; preds = %vector.main.loop.iter.check6422
  %i.ghx = getelementptr i8, ptr %.215150.us, i64 %i.foa
  %i.ghy = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.114665149.us, i64 0
  br label %vector.body6426

vector.body6426:                                  ; preds = %vector.body6426, %vector.ph6424
  %index6427 = phi i64 [ 0, %vector.ph6424 ], [ %index.next6452, %vector.body6426 ] ; 3 uses
  %vec.phi6428.a = phi <16 x float> [ %i.ghy, %vector.ph6424 ], [ %i.hcd, %vector.body6426 ]
  %vec.phi6429 = phi <16 x float> [ zeroinitializer, %vector.ph6424 ], [ %i.hce, %vector.body6426 ]
  %vec.phi6430 = phi <16 x float> [ zeroinitializer, %vector.ph6424 ], [ %i.hcf, %vector.body6426 ]
  %vec.phi6431 = phi <16 x float> [ zeroinitializer, %vector.ph6424 ], [ %i.hcg, %vector.body6426 ]
  %i.ghz = shl i64 %index6427, 2                  ; 4 uses
  %next.gep6432.a = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %i.gia = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %next.gep6433 = getelementptr i8, ptr %i.gia, i64 64
  %i.gib = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %next.gep6434 = getelementptr i8, ptr %i.gib, i64 128
  %i.gic = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %next.gep6435 = getelementptr i8, ptr %i.gic, i64 192
  %i.gid = getelementptr inbounds nuw [4 x i8], ptr %i.ghp, i64 %index6427 ; 4 uses
  %i.gie = getelementptr inbounds nuw i8, ptr %i.gid, i64 64
  %i.gif = getelementptr inbounds nuw i8, ptr %i.gid, i64 128
  %i.gig = getelementptr inbounds nuw i8, ptr %i.gid, i64 192
  %wide.load6436.a = load <16 x i32>, ptr %i.gid, align 4, !tbaa !113
  %wide.load6437 = load <16 x i32>, ptr %i.gie, align 4, !tbaa !113
  %wide.load6438 = load <16 x i32>, ptr %i.gif, align 4, !tbaa !113
  %wide.load6439 = load <16 x i32>, ptr %i.gig, align 4, !tbaa !113
  %i.gih = sext <16 x i32> %wide.load6436.a to <16 x i64> ; 16 uses
  %i.gii = sext <16 x i32> %wide.load6437 to <16 x i64> ; 16 uses
  %i.gij = sext <16 x i32> %wide.load6438 to <16 x i64> ; 16 uses
  %i.gik = sext <16 x i32> %wide.load6439 to <16 x i64> ; 16 uses
  %i.gil = extractelement <16 x i64> %i.gih, i64 0 ; 2 uses
  %i.gim = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gil
  %i.gin = extractelement <16 x i64> %i.gih, i64 1 ; 2 uses
  %i.gio = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gin
  %i.gip = extractelement <16 x i64> %i.gih, i64 2 ; 2 uses
  %i.giq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gip
  %i.gir = extractelement <16 x i64> %i.gih, i64 3 ; 2 uses
  %i.gis = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gir
  %i.git = extractelement <16 x i64> %i.gih, i64 4 ; 2 uses
  %i.giu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.git
  %i.giv = extractelement <16 x i64> %i.gih, i64 5 ; 2 uses
  %i.giw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giv
  %i.gix = extractelement <16 x i64> %i.gih, i64 6 ; 2 uses
  %i.giy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gix
  %i.giz = extractelement <16 x i64> %i.gih, i64 7 ; 2 uses
  %i.gja = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giz
  %i.gjb = extractelement <16 x i64> %i.gih, i64 8 ; 2 uses
  %i.gjc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjb
  %i.gjd = extractelement <16 x i64> %i.gih, i64 9 ; 2 uses
  %i.gje = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjd
  %i.gjf = extractelement <16 x i64> %i.gih, i64 10 ; 2 uses
  %i.gjg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjf
  %i.gjh = extractelement <16 x i64> %i.gih, i64 11 ; 2 uses
  %i.gji = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjh
  %i.gjj = extractelement <16 x i64> %i.gih, i64 12 ; 2 uses
  %i.gjk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjj
  %i.gjl = extractelement <16 x i64> %i.gih, i64 13 ; 2 uses
  %i.gjm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjl
  %i.gjn = extractelement <16 x i64> %i.gih, i64 14 ; 2 uses
  %i.gjo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjn
  %i.gjp = extractelement <16 x i64> %i.gih, i64 15 ; 2 uses
  %i.gjq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjp
  %i.gjr = extractelement <16 x i64> %i.gii, i64 0 ; 2 uses
  %i.gjs = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjr
  %i.gjt = extractelement <16 x i64> %i.gii, i64 1 ; 2 uses
  %i.gju = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjt
  %i.gjv = extractelement <16 x i64> %i.gii, i64 2 ; 2 uses
  %i.gjw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjv
  %i.gjx = extractelement <16 x i64> %i.gii, i64 3 ; 2 uses
  %i.gjy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjx
  %i.gjz = extractelement <16 x i64> %i.gii, i64 4 ; 2 uses
  %i.gka = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjz
  %i.gkb = extractelement <16 x i64> %i.gii, i64 5 ; 2 uses
  %i.gkc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkb
  %i.gkd = extractelement <16 x i64> %i.gii, i64 6 ; 2 uses
  %i.gke = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkd
  %i.gkf = extractelement <16 x i64> %i.gii, i64 7 ; 2 uses
  %i.gkg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkf
  %i.gkh = extractelement <16 x i64> %i.gii, i64 8 ; 2 uses
  %i.gki = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkh
  %i.gkj = extractelement <16 x i64> %i.gii, i64 9 ; 2 uses
  %i.gkk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkj
  %i.gkl = extractelement <16 x i64> %i.gii, i64 10 ; 2 uses
  %i.gkm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkl
  %i.gkn = extractelement <16 x i64> %i.gii, i64 11 ; 2 uses
  %i.gko = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkn
  %i.gkp = extractelement <16 x i64> %i.gii, i64 12 ; 2 uses
  %i.gkq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkp
  %i.gkr = extractelement <16 x i64> %i.gii, i64 13 ; 2 uses
  %i.gks = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkr
  %i.gkt = extractelement <16 x i64> %i.gii, i64 14 ; 2 uses
  %i.gku = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkt
  %i.gkv = extractelement <16 x i64> %i.gii, i64 15 ; 2 uses
  %i.gkw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkv
  %i.gkx = extractelement <16 x i64> %i.gij, i64 0 ; 2 uses
  %i.gky = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkx
  %i.gkz = extractelement <16 x i64> %i.gij, i64 1 ; 2 uses
  %i.gla = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkz
  %i.glb = extractelement <16 x i64> %i.gij, i64 2 ; 2 uses
  %i.glc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glb
  %i.gld = extractelement <16 x i64> %i.gij, i64 3 ; 2 uses
  %i.gle = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gld
  %i.glf = extractelement <16 x i64> %i.gij, i64 4 ; 2 uses
  %i.glg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glf
  %i.glh = extractelement <16 x i64> %i.gij, i64 5 ; 2 uses
  %i.gli = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glh
  %i.glj = extractelement <16 x i64> %i.gij, i64 6 ; 2 uses
  %i.glk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glj
  %i.gll = extractelement <16 x i64> %i.gij, i64 7 ; 2 uses
  %i.glm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gll
  %i.gln = extractelement <16 x i64> %i.gij, i64 8 ; 2 uses
  %i.glo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gln
  %i.glp = extractelement <16 x i64> %i.gij, i64 9 ; 2 uses
  %i.glq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glp
  %i.glr = extractelement <16 x i64> %i.gij, i64 10 ; 2 uses
  %i.gls = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glr
  %i.glt = extractelement <16 x i64> %i.gij, i64 11 ; 2 uses
  %i.glu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glt
  %i.glv = extractelement <16 x i64> %i.gij, i64 12 ; 2 uses
  %i.glw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glv
  %i.glx = extractelement <16 x i64> %i.gij, i64 13 ; 2 uses
  %i.gly = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glx
  %i.glz = extractelement <16 x i64> %i.gij, i64 14 ; 2 uses
  %i.gma = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glz
  %i.gmb = extractelement <16 x i64> %i.gij, i64 15 ; 2 uses
  %i.gmc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmb
  %i.gmd = extractelement <16 x i64> %i.gik, i64 0 ; 2 uses
  %i.gme = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmd
  %i.gmf = extractelement <16 x i64> %i.gik, i64 1 ; 2 uses
  %i.gmg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmf
  %i.gmh = extractelement <16 x i64> %i.gik, i64 2 ; 2 uses
  %i.gmi = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmh
  %i.gmj = extractelement <16 x i64> %i.gik, i64 3 ; 2 uses
  %i.gmk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmj
  %i.gml = extractelement <16 x i64> %i.gik, i64 4 ; 2 uses
  %i.gmm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gml
  %i.gmn = extractelement <16 x i64> %i.gik, i64 5 ; 2 uses
  %i.gmo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmn
  %i.gmp = extractelement <16 x i64> %i.gik, i64 6 ; 2 uses
  %i.gmq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmp
  %i.gmr = extractelement <16 x i64> %i.gik, i64 7 ; 2 uses
  %i.gms = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmr
  %i.gmt = extractelement <16 x i64> %i.gik, i64 8 ; 2 uses
  %i.gmu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmt
  %i.gmv = extractelement <16 x i64> %i.gik, i64 9 ; 2 uses
  %i.gmw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmv
  %i.gmx = extractelement <16 x i64> %i.gik, i64 10 ; 2 uses
  %i.gmy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmx
  %i.gmz = extractelement <16 x i64> %i.gik, i64 11 ; 2 uses
  %i.gna = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmz
  %i.gnb = extractelement <16 x i64> %i.gik, i64 12 ; 2 uses
  %i.gnc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnb
  %i.gnd = extractelement <16 x i64> %i.gik, i64 13 ; 2 uses
  %i.gne = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnd
  %i.gnf = extractelement <16 x i64> %i.gik, i64 14 ; 2 uses
  %i.gng = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnf
  %i.gnh = extractelement <16 x i64> %i.gik, i64 15 ; 2 uses
  %i.gni = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnh
  %i.gnj = load i16, ptr %i.gim, align 2, !tbaa !76
  %i.gnk = load i16, ptr %i.gio, align 2, !tbaa !76
  %i.gnl = load i16, ptr %i.giq, align 2, !tbaa !76
  %i.gnm = load i16, ptr %i.gis, align 2, !tbaa !76
  %i.gnn = load i16, ptr %i.giu, align 2, !tbaa !76
  %i.gno = load i16, ptr %i.giw, align 2, !tbaa !76
  %i.gnp = load i16, ptr %i.giy, align 2, !tbaa !76
  %i.gnq = load i16, ptr %i.gja, align 2, !tbaa !76
  %i.gnr = load i16, ptr %i.gjc, align 2, !tbaa !76
  %i.gns = load i16, ptr %i.gje, align 2, !tbaa !76
  %i.gnt = load i16, ptr %i.gjg, align 2, !tbaa !76
  %i.gnu = load i16, ptr %i.gji, align 2, !tbaa !76
  %i.gnv = load i16, ptr %i.gjk, align 2, !tbaa !76
  %i.gnw = load i16, ptr %i.gjm, align 2, !tbaa !76
  %i.gnx = load i16, ptr %i.gjo, align 2, !tbaa !76
  %i.gny = load i16, ptr %i.gjq, align 2, !tbaa !76
  %i.gnz = insertelement <16 x i16> poison, i16 %i.gnj, i64 0
  %i.goa = insertelement <16 x i16> %i.gnz, i16 %i.gnk, i64 1
  %i.gob = insertelement <16 x i16> %i.goa, i16 %i.gnl, i64 2
  %i.goc = insertelement <16 x i16> %i.gob, i16 %i.gnm, i64 3
  %i.god = insertelement <16 x i16> %i.goc, i16 %i.gnn, i64 4
end_hunk_6
begin_hunk_7_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.huq = sext i32 %i.hup to i64
  %i.hur = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.huq
  %i.hus = load i16, ptr %i.hur, align 2, !tbaa !76
  %i.hut = zext i16 %i.hus to i32
  %i.huu = shl nuw i32 %i.hut, 16
  %i.huv = bitcast i32 %i.huu to float
  %i.huw = load i16, ptr %.245164.us, align 2, !tbaa !76
  %i.hux = zext i16 %i.huw to i32
  %i.huy = shl nuw i32 %i.hux, 16
  %i.huz = bitcast i32 %i.huy to float
  %i.hva = fmul fast float %i.huz, %i.huv
  %i.hvb = fadd fast float %i.hva, %.414695163.us ; 2 uses
  %i.hvc = getelementptr inbounds nuw i8, ptr %.245164.us, i64 2
  %indvars.iv.next5789 = add nuw nsw i64 %indvars.iv5788, 1 ; 2 uses
  %exitcond5794.not = icmp eq i64 %indvars.iv.next5789, %wide.trip.count5793
  br i1 %exitcond5794.not, label %._crit_edge5167.us, label %vec.epilog.scalar.ph6404, !llvm.loop !294

._crit_edge5167.us:                               ; preds = %vec.epilog.scalar.ph6404, %vec.epilog.middle.block6416, %middle.block6396
  %.lcssa6122 = phi float [ %i.hun, %vec.epilog.middle.block6416 ], [ %i.hss, %middle.block6396 ], [ %i.hvb, %vec.epilog.scalar.ph6404 ] ; 2 uses
  %scevgep5790 = getelementptr i8, ptr %.235171.us, i64 2
  %scevgep5791 = getelementptr i8, ptr %scevgep5790, i64 %i.fnx
  %indvars.iv.next5796.a = add nuw nsw i64 %indvars.iv5795, 1 ; 2 uses
  %i.hvd = trunc nuw i64 %indvars.iv.next5796.a to i32
  %i.hve = icmp sgt i32 %i.q, %i.hvd
  br i1 %i.hve, label %iter.check6403, label %._crit_edge5173, !llvm.loop !295

._crit_edge5173:                                  ; preds = %._crit_edge5167.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.preheader4344
  %.31468.lcssa = phi float [ %.11466.lcssa, %.preheader4344 ], [ %.11466.lcssa, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %.lcssa6122, %._crit_edge5167.us ] ; 13 uses
  switch i32 %i.fnm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ay
    i32 2, label %bb.az
    i32 3, label %bb.ba
    i32 4, label %bb.bb
    i32 5, label %bb.bc
    i32 6, label %bb.bd
  ]

bb.ay:                                            ; preds = %._crit_edge5173
  %i.hvf = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31468.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.az:                                            ; preds = %._crit_edge5173
  %i.hvg = load ptr, ptr %11, align 8, !tbaa !9
  %i.hvh = load float, ptr %i.hvg, align 4, !tbaa !74
  %i.hvi = fcmp fast ogt float %.31468.lcssa, 0.000000e+00
  %i.hvj = select fast i1 %i.hvi, float 1.000000e+00, float %i.hvh
  %i.hvk = fmul fast float %i.hvj, %.31468.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ba:                                            ; preds = %._crit_edge5173
  %i.hvl = load ptr, ptr %11, align 8, !tbaa !9   ; 2 uses
  %i.hvm = load float, ptr %i.hvl, align 4, !tbaa !74
  %i.hvn = getelementptr inbounds nuw i8, ptr %i.hvl, i64 4
  %i.hvo = load float, ptr %i.hvn, align 4, !tbaa !74
  %spec.select4326 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31468.lcssa, float %i.hvm)
  %spec.select4327 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select4326, float %i.hvo)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bb:                                            ; preds = %._crit_edge5173
  %.sroa.speculated3787 = call nnan ninf nsz float @llvm.minnum.f32(float %.31468.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated3787, float f0xC2B0C0A5)
  %i.hvp = fneg fast float %.sroa.speculated
  %i.hvq = call fast float @llvm.exp.f32(float %i.hvp)
  %i.hvr = fadd fast float %i.hvq, 1.000000e+00
  %i.hvs = fdiv fast float 1.000000e+00, %i.hvr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bc:                                            ; preds = %._crit_edge5173
  %i.hvt = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31468.lcssa)
  %i.hvu = fadd fast float %i.hvt, 1.000000e+00
  %i.hvv = call fast float @llvm.log.f32(float %i.hvu)
  %i.hvw = call fast float @llvm.tanh.f32(float %i.hvv)
  %i.hvx = fmul fast float %i.hvw, %.31468.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bd:                                            ; preds = %._crit_edge5173
  %i.hvy = load ptr, ptr %11, align 8, !tbaa !9   ; 2 uses
  %i.hvz = load float, ptr %i.hvy, align 4, !tbaa !74 ; 3 uses
  %i.hwa = getelementptr inbounds nuw i8, ptr %i.hvy, i64 4
  %i.hwb = load float, ptr %i.hwa, align 4, !tbaa !74 ; 2 uses
  %i.hwc = fneg fast float %i.hwb
  %i.hwd = fdiv fast float %i.hwc, %i.hvz         ; 2 uses
  %i.hwe = fcmp fast olt float %.31468.lcssa, %i.hwd
  br i1 %i.hwe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hwf = fdiv fast float 1.000000e+00, %i.hvz
  %i.hwg = fadd fast float %i.hwd, %i.hwf
  %i.hwh = fcmp fast ogt float %.31468.lcssa, %i.hwg
  br i1 %i.hwh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hwi = fmul fast float %i.hvz, %.31468.lcssa
  %i.hwj = fadd fast float %i.hwi, %i.hwb
  %i.hwk = fmul fast float %i.hwj, %.31468.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ba, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ay, %._crit_edge5173, %bb.bd
  %.14109 = phi nsz float [ %.31468.lcssa, %._crit_edge5173 ], [ %i.hvf, %bb.ay ], [ %i.hvk, %bb.az ], [ 0.000000e+00, %bb.bd ], [ %spec.select4327, %bb.ba ], [ %i.hvs, %bb.bb ], [ %i.hvx, %bb.bc ], [ %i.hwk, %bb.bf ], [ %.31468.lcssa, %bb.be ]
  %i.hwl = bitcast float %.14109 to i32
  %i.hwm = lshr i32 %i.hwl, 16
  %i.hwn = trunc nuw i32 %i.hwm to i16
  store i16 %i.hwn, ptr %.114735181, align 2, !tbaa !76
  %i.hwo = getelementptr inbounds nuw i8, ptr %.114735181, i64 2 ; 2 uses
  %indvars.iv.next5799 = add nuw nsw i64 %indvars.iv5798, 1 ; 2 uses
  %exitcond5802.not = icmp eq i64 %indvars.iv.next5799, %wide.trip.count5801
  br i1 %exitcond5802.not, label %._crit_edge5184, label %bb.aq, !llvm.loop !296
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !113
  %i.h = load i32, ptr %0, align 4, !tbaa !113    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !113
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not1289 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1289, label %._crit_edge1291, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.x = load i32, ptr %i.o, align 8, !tbaa !118  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.noexc.preheader, label %._crit_edge1291

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.z = sext i32 %i.k to i64
  %i.aa = add nsw i32 %i.j, 1
  br label %.noexc

.noexcthread-pre-split:                           ; preds = %._crit_edge1288.split
  %.pr = load i32, ptr %i.o, align 8, !tbaa !118
  br label %.noexc

.noexc:                                           ; preds = %.noexcthread-pre-split, %.noexc.preheader
  %i.ab = phi i32 [ %.pr, %.noexcthread-pre-split ], [ %i.x, %.noexc.preheader ] ; 2 uses
  %indvars.iv1429 = phi i64 [ %indvars.iv.next1430, %.noexcthread-pre-split ], [ %i.z, %.noexc.preheader ] ; 3 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !115 ; 11 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !116
  %i.ae = mul i32 %i.ad, %i.ac                    ; 12 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !114 ; 2 uses
  %i.ag = icmp sgt i32 %i.ab, 0
  br i1 %i.ag, label %.preheader1085.lr.ph, label %._crit_edge1288.split

.preheader1085.lr.ph:                             ; preds = %.noexc
  %i.ah = shl nsw i64 %indvars.iv1429, 4          ; 2 uses
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !115 ; 3 uses
  %i.aj = icmp sgt i32 %i.af, 0
  %i.ak = icmp sgt i32 %i.ae, 15
  %i.al = icmp eq i32 %i.ac, 16
  %i.am = icmp eq i32 %i.ac, 8                    ; 2 uses
  %i.an = icmp eq i32 %i.ac, 4                    ; 3 uses
  %i.ao = icmp eq i32 %i.ac, 1                    ; 3 uses
  %i.ap = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ai, i1 true)
  br i1 %i.aj, label %.preheader1085.preheader, label %._crit_edge1288.split

.preheader1085.preheader:                         ; preds = %.preheader1085.lr.ph
  %i.as = load ptr, ptr %4, align 8, !tbaa !9, !noalias !297
  %i.at = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !297
  %i.au = trunc nsw i64 %i.ah to i32
  %i.av = sdiv i32 %i.au, %i.ai
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.at, %i.aw
  %i.ay = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !297
  %i.az = mul i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bb = and i32 %i.ae, -16
  %15 = add i32 %i.ae, -2
  br label %.preheader1085

.preheader1085:                                   ; preds = %.preheader1085.preheader, %._crit_edge
  %.06751287 = phi i32 [ %i.bc, %._crit_edge ], [ 0, %.preheader1085.preheader ] ; 6 uses
  %.06761286 = phi ptr [ %.5681, %._crit_edge ], [ %i.ba, %.preheader1085.preheader ]
  br label %bb.c

._crit_edge1288.split:                            ; preds = %._crit_edge, %.preheader1085.lr.ph, %.noexc
  %indvars.iv.next1430 = add nsw i64 %indvars.iv1429, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1430 to i32
  %exitcond1432.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond1432.not, label %._crit_edge1291, label %.noexcthread-pre-split, !llvm.loop !300

._crit_edge:                                      ; preds = %.thread1066
  %i.bc = add nuw nsw i32 %.06751287, 1           ; 2 uses
  %exitcond1428.not = icmp eq i32 %i.bc, %i.ab
  br i1 %exitcond1428.not, label %._crit_edge1288.split, label %.preheader1085, !llvm.loop !302

bb.c:                                             ; preds = %.preheader1085, %.thread1066
  %.06741283 = phi i32 [ 0, %.preheader1085 ], [ %i.ayf, %.thread1066 ] ; 6 uses
  %.16771282 = phi ptr [ %.06761286, %.preheader1085 ], [ %.5681, %.thread1066 ] ; 29 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %.not684 = icmp eq ptr %i.bd, null
  br i1 %.not684, label %_ZN4ncnn3MatD2Ev.exit728, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ah
  %i.bf = load <16 x float>, ptr %i.be, align 1, !tbaa !20
  br label %_ZN4ncnn3MatD2Ev.exit728

_ZN4ncnn3MatD2Ev.exit728:                         ; preds = %bb.d, %bb.c
  %.01037 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.bf, %bb.d ] ; 2 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !9, !noalias !303
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !303
  %i.bi = mul i64 %i.bh, %indvars.iv1429
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !303
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk ; 2 uses
  br i1 %i.ak, label %_ZN4ncnn3MatD2Ev.exit727.lr.ph, label %.preheader1084

_ZN4ncnn3MatD2Ev.exit727.lr.ph:                   ; preds = %_ZN4ncnn3MatD2Ev.exit728
  %i.bm = load i32, ptr %i.u, align 4, !tbaa !114, !noalias !306
  %i.bn = load ptr, ptr %3, align 8, !tbaa !9, !noalias !306
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !306
  %i.bp = load i64, ptr %i.w, align 8, !tbaa !19, !noalias !306 ; 2 uses
  %factor.op.mul = mul i64 %i.bo, %i.bp
  %i.bq = sext i32 %i.bm to i64
  %i.br = load i32, ptr %7, align 4, !tbaa !113
  %i.bs = mul nsw i32 %i.br, %.06751287
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %i.bp, %i.bq
  %i.bv = mul i64 %i.bu, %i.bt
  %invariant.gep = getelementptr i8, ptr %i.bn, i64 %i.bv
  %i.bw = load i32, ptr %8, align 4, !tbaa !113
  %i.bx = mul i32 %.06741283, %i.ac
  %i.by = mul i32 %i.bx, %i.bw
  %i.bz = sext i32 %i.by to i64
  %invariant.gep1144 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bz
  br label %_ZN4ncnn3MatD2Ev.exit727

.preheader1084:                                   ; preds = %.loopexit1076, %_ZN4ncnn3MatD2Ev.exit728
  %.11038.lcssa = phi <16 x float> [ %.01037, %_ZN4ncnn3MatD2Ev.exit728 ], [ %.91046, %.loopexit1076 ] ; 2 uses
  %.0651.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit728 ], [ %.8659, %.loopexit1076 ] ; 2 uses
  %.0630.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit728 ], [ %.8638, %.loopexit1076 ] ; 2 uses
  %.0609.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit728 ], [ %.8617, %.loopexit1076 ] ; 2 uses
  %.0604.lcssa = phi ptr [ %i.bl, %_ZN4ncnn3MatD2Ev.exit728 ], [ %.8, %.loopexit1076 ] ; 2 uses
  %.0603.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit728 ], [ %i.bb, %.loopexit1076 ] ; 3 uses
  %i.ca = or disjoint i32 %.0603.lcssa, 7
  %i.cb = icmp slt i32 %i.ca, %i.ae
  br i1 %i.cb, label %_ZN4ncnn3MatD2Ev.exit726.lr.ph, label %.preheader1083

_ZN4ncnn3MatD2Ev.exit726.lr.ph:                   ; preds = %.preheader1084
  %i.cc = load i32, ptr %i.u, align 4, !tbaa !114, !noalias !309
  %i.cd = load ptr, ptr %3, align 8, !tbaa !9, !noalias !309
  %i.ce = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !309
  %i.cf = load i64, ptr %i.w, align 8, !tbaa !19, !noalias !309 ; 2 uses
  %factor.op.mul1194 = mul i64 %i.ce, %i.cf
  %i.cg = sext i32 %i.cc to i64
  %i.ch = load i32, ptr %7, align 4, !tbaa !113
  %i.ci = mul nsw i32 %i.ch, %.06751287
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cf, %i.cg
  %i.cl = mul i64 %i.ck, %i.cj
  %invariant.gep1196 = getelementptr i8, ptr %i.cd, i64 %i.cl
  %i.cm = load i32, ptr %8, align 4, !tbaa !113
  %i.cn = mul i32 %.06741283, %i.ac
  %i.co = mul i32 %i.cn, %i.cm
  %i.cp = sext i32 %i.co to i64
  %invariant.gep1197 = getelementptr [2 x i8], ptr %invariant.gep1196, i64 %i.cp
  br label %_ZN4ncnn3MatD2Ev.exit726

_ZN4ncnn3MatD2Ev.exit727:                         ; preds = %_ZN4ncnn3MatD2Ev.exit727.lr.ph, %.loopexit1076
  %.06031137 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit727.lr.ph ], [ %i.xu, %.loopexit1076 ] ; 2 uses
  %.06041136 = phi ptr [ %i.bl, %_ZN4ncnn3MatD2Ev.exit727.lr.ph ], [ %.8, %.loopexit1076 ] ; 13 uses
  %.06091135 = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit727.lr.ph ], [ %.8617, %.loopexit1076 ] ; 9 uses
  %.06301134 = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit727.lr.ph ], [ %.8638, %.loopexit1076 ] ; 9 uses
  %.06511133 = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit727.lr.ph ], [ %.8659, %.loopexit1076 ] ; 9 uses
  %.110381132 = phi <16 x float> [ %.01037, %_ZN4ncnn3MatD2Ev.exit727.lr.ph ], [ %.91046, %.loopexit1076 ] ; 9 uses
  %i.cq = sdiv i32 %.06031137, %i.ac
  %i.cr = sext i32 %i.cq to i64
  %.reass = mul i64 %factor.op.mul, %i.cr
  %gep1145 = getelementptr i8, ptr %invariant.gep1144, i64 %.reass ; 23 uses
  br i1 %i.al, label %.preheader1079, label %.loopexit1080

.preheader1079:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit727
  %i.cs = load i32, ptr %9, align 4, !tbaa !113   ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph, label %.loopexit1076

.lr.ph:                                           ; preds = %.preheader1079
  %i.cu = load ptr, ptr %10, align 8, !tbaa !119
  %wide.trip.count = zext nneg i32 %i.cs to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.16051090 = phi ptr [ %.06041136, %.lr.ph ], [ %i.gt, %bb.e ] ; 17 uses
  %.16101089 = phi <16 x float> [ %.06091135, %.lr.ph ], [ %i.gs, %bb.e ]
  %.16311088 = phi <16 x float> [ %.06301134, %.lr.ph ], [ %i.gp, %bb.e ]
  %.16521087 = phi <16 x float> [ %.06511133, %.lr.ph ], [ %i.gm, %bb.e ]
  %.210391086 = phi <16 x float> [ %.110381132, %.lr.ph ], [ %i.gj, %bb.e ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !113
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %gep1145, i64 %i.cx
  %i.cz = load <16 x bfloat>, ptr %.16051090, align 32, !tbaa !20
  %i.da = fpext fast <16 x bfloat> %i.cz to <16 x float>
  %i.db = getelementptr inbounds nuw i8, ptr %.16051090, i64 32
  %i.dc = load <16 x bfloat>, ptr %i.db, align 32, !tbaa !20
  %i.dd = fpext fast <16 x bfloat> %i.dc to <16 x float>
  %i.de = getelementptr inbounds nuw i8, ptr %.16051090, i64 64
  %i.df = load <16 x bfloat>, ptr %i.de, align 32, !tbaa !20
  %i.dg = fpext fast <16 x bfloat> %i.df to <16 x float>
  %i.dh = getelementptr inbounds nuw i8, ptr %.16051090, i64 96
  %i.di = load <16 x bfloat>, ptr %i.dh, align 32, !tbaa !20
  %i.dj = fpext fast <16 x bfloat> %i.di to <16 x float>
  %i.dk = getelementptr inbounds nuw i8, ptr %.16051090, i64 128
  %i.dl = load <16 x bfloat>, ptr %i.dk, align 32, !tbaa !20
  %i.dm = fpext fast <16 x bfloat> %i.dl to <16 x float>
  %i.dn = getelementptr inbounds nuw i8, ptr %.16051090, i64 160
  %i.do = load <16 x bfloat>, ptr %i.dn, align 32, !tbaa !20
  %i.dp = fpext fast <16 x bfloat> %i.do to <16 x float>
  %i.dq = getelementptr inbounds nuw i8, ptr %.16051090, i64 192
  %i.dr = load <16 x bfloat>, ptr %i.dq, align 32, !tbaa !20
  %i.ds = fpext fast <16 x bfloat> %i.dr to <16 x float>
  %i.dt = getelementptr inbounds nuw i8, ptr %.16051090, i64 224
  %i.du = load <16 x bfloat>, ptr %i.dt, align 32, !tbaa !20
  %i.dv = fpext fast <16 x bfloat> %i.du to <16 x float>
  %i.dw = getelementptr inbounds nuw i8, ptr %.16051090, i64 256
  %i.dx = load <16 x bfloat>, ptr %i.dw, align 32, !tbaa !20
  %i.dy = fpext fast <16 x bfloat> %i.dx to <16 x float>
  %i.dz = getelementptr inbounds nuw i8, ptr %.16051090, i64 288
  %i.ea = load <16 x bfloat>, ptr %i.dz, align 32, !tbaa !20
  %i.eb = fpext fast <16 x bfloat> %i.ea to <16 x float>
  %i.ec = getelementptr inbounds nuw i8, ptr %.16051090, i64 320
  %i.ed = load <16 x bfloat>, ptr %i.ec, align 32, !tbaa !20
  %i.ee = fpext fast <16 x bfloat> %i.ed to <16 x float>
  %i.ef = getelementptr inbounds nuw i8, ptr %.16051090, i64 352
  %i.eg = load <16 x bfloat>, ptr %i.ef, align 32, !tbaa !20
  %i.eh = fpext fast <16 x bfloat> %i.eg to <16 x float>
  %i.ei = getelementptr inbounds nuw i8, ptr %.16051090, i64 384
  %i.ej = load <16 x bfloat>, ptr %i.ei, align 32, !tbaa !20
  %i.ek = fpext fast <16 x bfloat> %i.ej to <16 x float>
  %i.el = getelementptr inbounds nuw i8, ptr %.16051090, i64 416
  %i.em = load <16 x bfloat>, ptr %i.el, align 32, !tbaa !20
  %i.en = fpext fast <16 x bfloat> %i.em to <16 x float>
  %i.eo = getelementptr inbounds nuw i8, ptr %.16051090, i64 448
  %i.ep = load <16 x bfloat>, ptr %i.eo, align 32, !tbaa !20
  %i.eq = fpext fast <16 x bfloat> %i.ep to <16 x float>
  %i.er = getelementptr inbounds nuw i8, ptr %.16051090, i64 480
  %i.es = load <16 x bfloat>, ptr %i.er, align 32, !tbaa !20
  %i.et = fpext fast <16 x bfloat> %i.es to <16 x float>
  %i.eu = load <16 x i16>, ptr %i.cy, align 2, !tbaa !76
  %i.ev = zext <16 x i16> %i.eu to <16 x i32>
  %i.ew = shl nuw <16 x i32> %i.ev, splat (i32 16) ; 16 uses
  %i.ex = bitcast <16 x i32> %i.ew to <16 x float>
  %i.ey = shufflevector <16 x float> %i.ex, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ez = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.da, <16 x float> nofpclass(nan inf) %i.ey, <16 x float> nofpclass(nan inf) %.210391086)
  %i.fa = bitcast <16 x i32> %i.ew to <16 x float>
  %i.fb = shufflevector <16 x float> %i.fa, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> nofpclass(nan inf) %.16521087)
  %i.fd = bitcast <16 x i32> %i.ew to <16 x float>
  %i.fe = shufflevector <16 x float> %i.fd, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dg, <16 x float> nofpclass(nan inf) %i.fe, <16 x float> nofpclass(nan inf) %.16311088)
  %i.fg = bitcast <16 x i32> %i.ew to <16 x float>
  %i.fh = shufflevector <16 x float> %i.fg, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dj, <16 x float> nofpclass(nan inf) %i.fh, <16 x float> nofpclass(nan inf) %.16101089)
  %i.fj = bitcast <16 x i32> %i.ew to <16 x float>
  %i.fk = shufflevector <16 x float> %i.fj, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dm, <16 x float> nofpclass(nan inf) %i.fk, <16 x float> nofpclass(nan inf) %i.ez)
  %i.fm = bitcast <16 x i32> %i.ew to <16 x float>
  %i.fn = shufflevector <16 x float> %i.fm, <16 x float> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.fo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.fn, <16 x float> nofpclass(nan inf) %i.fc)
  %i.fp = bitcast <16 x i32> %i.ew to <16 x float>
  %i.fq = shufflevector <16 x float> %i.fp, <16 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.fr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.fq, <16 x float> nofpclass(nan inf) %i.ff)
  %i.fs = bitcast <16 x i32> %i.ew to <16 x float>
  %i.ft = shufflevector <16 x float> %i.fs, <16 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dv, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %i.fi)
  %i.fv = bitcast <16 x i32> %i.ew to <16 x float>
end_hunk_7
begin_hunk_8_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.acb = fpext fast <16 x bfloat> %i.aca to <16 x float>
  %i.acc = getelementptr inbounds nuw i8, ptr %.121162, i64 224
  %i.acd = load <16 x bfloat>, ptr %i.acc, align 32, !tbaa !20
  %i.ace = fpext fast <16 x bfloat> %i.acd to <16 x float>
  %i.acf = load <4 x i16>, ptr %i.abg, align 2, !tbaa !76
  %i.acg = load <4 x i16>, ptr %i.abh, align 2, !tbaa !76
  %i.ach = shufflevector <4 x i16> %i.acf, <4 x i16> %i.acg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aci = zext <8 x i16> %i.ach to <8 x i32>
  %i.acj = shl nuw <8 x i32> %i.aci, splat (i32 16) ; 8 uses
  %i.ack = bitcast <8 x i32> %i.acj to <8 x float>
  %i.acl = shufflevector <8 x float> %i.ack, <8 x float> poison, <16 x i32> zeroinitializer
  %i.acm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abj, <16 x float> nofpclass(nan inf) %i.acl, <16 x float> nofpclass(nan inf) %.1310501158)
  %i.acn = bitcast <8 x i32> %i.acj to <8 x float>
  %i.aco = shufflevector <8 x float> %i.acn, <8 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.acp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abm, <16 x float> nofpclass(nan inf) %i.aco, <16 x float> nofpclass(nan inf) %.126631159)
  %i.acq = bitcast <8 x i32> %i.acj to <8 x float>
  %i.acr = shufflevector <8 x float> %i.acq, <8 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.acs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abp, <16 x float> nofpclass(nan inf) %i.acr, <16 x float> nofpclass(nan inf) %.126421160)
  %i.act = bitcast <8 x i32> %i.acj to <8 x float>
  %i.acu = shufflevector <8 x float> %i.act, <8 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.acv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abs, <16 x float> nofpclass(nan inf) %i.acu, <16 x float> nofpclass(nan inf) %.126211161)
  %i.acw = bitcast <8 x i32> %i.acj to <8 x float>
  %i.acx = shufflevector <8 x float> %i.acw, <8 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.acy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abv, <16 x float> nofpclass(nan inf) %i.acx, <16 x float> nofpclass(nan inf) %i.acm) ; 2 uses
  %i.acz = bitcast <8 x i32> %i.acj to <8 x float>
  %i.ada = shufflevector <8 x float> %i.acz, <8 x float> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.adb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aby, <16 x float> nofpclass(nan inf) %i.ada, <16 x float> nofpclass(nan inf) %i.acp) ; 2 uses
  %i.adc = bitcast <8 x i32> %i.acj to <8 x float>
  %i.add = shufflevector <8 x float> %i.adc, <8 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ade = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acb, <16 x float> nofpclass(nan inf) %i.add, <16 x float> nofpclass(nan inf) %i.acs) ; 2 uses
  %i.adf = bitcast <8 x i32> %i.acj to <8 x float>
  %i.adg = shufflevector <8 x float> %i.adf, <8 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.adh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ace, <16 x float> nofpclass(nan inf) %i.adg, <16 x float> nofpclass(nan inf) %i.acv) ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.121162, i64 256
  %indvars.iv.next1380 = add nuw nsw i64 %indvars.iv1379, 1 ; 2 uses
  %exitcond1385.not = icmp eq i64 %indvars.iv.next1380, %wide.trip.count1384
  br i1 %exitcond1385.not, label %.loopexit1072.loopexit, label %bb.m, !llvm.loop !321

.loopexit1072.loopexit:                           ; preds = %bb.m
  %scevgep1381 = getelementptr i8, ptr %.91186, i64 256
  %i.adj = add nsw i32 %i.aba, -1
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = shl nuw nsw i64 %i.adk, 8
  %scevgep1382 = getelementptr i8, ptr %scevgep1381, i64 %i.adl
  br label %.loopexit1071

.loopexit1072:                                    ; preds = %.loopexit1074
  br i1 %i.ao, label %.preheader1070, label %.loopexit1071

.preheader1070:                                   ; preds = %.loopexit1072
  %i.adm = load i32, ptr %9, align 4, !tbaa !113  ; 3 uses
  %i.adn = icmp sgt i32 %i.adm, 0
  br i1 %i.adn, label %.lr.ph1176, label %.loopexit1071

.lr.ph1176:                                       ; preds = %.preheader1070
  %i.ado = load ptr, ptr %10, align 8, !tbaa !119
  %i.adp = load i64, ptr %11, align 8, !tbaa !117 ; 7 uses
  %i.adq = getelementptr [2 x i8], ptr %gep1198, i64 %i.adp
  %.idx702 = shl i64 %i.adp, 2
  %i.adr = getelementptr i8, ptr %gep1198, i64 %.idx702
  %.idx703 = mul i64 %i.adp, 6
  %i.ads = getelementptr i8, ptr %gep1198, i64 %.idx703
  %.idx704 = shl i64 %i.adp, 3
  %i.adt = getelementptr i8, ptr %gep1198, i64 %.idx704
  %.idx705 = mul i64 %i.adp, 10
  %i.adu = getelementptr i8, ptr %gep1198, i64 %.idx705
  %.idx706 = mul i64 %i.adp, 12
  %i.adv = getelementptr i8, ptr %gep1198, i64 %.idx706
  %.idx707 = mul i64 %i.adp, 14
  %i.adw = getelementptr i8, ptr %gep1198, i64 %.idx707
  %wide.trip.count1391 = zext nneg i32 %i.adm to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1176, %bb.n
  %indvars.iv1386 = phi i64 [ 0, %.lr.ph1176 ], [ %indvars.iv.next1387, %bb.n ] ; 2 uses
  %.141174 = phi ptr [ %.91186, %.lr.ph1176 ], [ %i.ahj, %bb.n ] ; 9 uses
  %.146231173 = phi <16 x float> [ %.96181185, %.lr.ph1176 ], [ %i.ahi, %bb.n ]
  %.146441172 = phi <16 x float> [ %.96391184, %.lr.ph1176 ], [ %i.aha, %bb.n ]
  %.146651171 = phi <16 x float> [ %.96601183, %.lr.ph1176 ], [ %i.ags, %bb.n ]
  %.1510521170 = phi <16 x float> [ %.1010471182, %.lr.ph1176 ], [ %i.agk, %bb.n ]
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1386
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !113
  %i.adz = load <16 x bfloat>, ptr %.141174, align 32, !tbaa !20
  %i.aea = fpext fast <16 x bfloat> %i.adz to <16 x float>
  %i.aeb = getelementptr inbounds nuw i8, ptr %.141174, i64 32
  %i.aec = load <16 x bfloat>, ptr %i.aeb, align 32, !tbaa !20
  %i.aed = fpext fast <16 x bfloat> %i.aec to <16 x float>
  %i.aee = getelementptr inbounds nuw i8, ptr %.141174, i64 64
  %i.aef = load <16 x bfloat>, ptr %i.aee, align 32, !tbaa !20
  %i.aeg = fpext fast <16 x bfloat> %i.aef to <16 x float>
  %i.aeh = getelementptr inbounds nuw i8, ptr %.141174, i64 96
  %i.aei = load <16 x bfloat>, ptr %i.aeh, align 32, !tbaa !20
  %i.aej = fpext fast <16 x bfloat> %i.aei to <16 x float>
  %i.aek = getelementptr inbounds nuw i8, ptr %.141174, i64 128
  %i.ael = load <16 x bfloat>, ptr %i.aek, align 32, !tbaa !20
  %i.aem = fpext fast <16 x bfloat> %i.ael to <16 x float>
  %i.aen = getelementptr inbounds nuw i8, ptr %.141174, i64 160
  %i.aeo = load <16 x bfloat>, ptr %i.aen, align 32, !tbaa !20
  %i.aep = fpext fast <16 x bfloat> %i.aeo to <16 x float>
  %i.aeq = getelementptr inbounds nuw i8, ptr %.141174, i64 192
  %i.aer = load <16 x bfloat>, ptr %i.aeq, align 32, !tbaa !20
  %i.aes = fpext fast <16 x bfloat> %i.aer to <16 x float>
  %i.aet = getelementptr inbounds nuw i8, ptr %.141174, i64 224
  %i.aeu = load <16 x bfloat>, ptr %i.aet, align 32, !tbaa !20
  %i.aev = fpext fast <16 x bfloat> %i.aeu to <16 x float>
  %i.aew = sext i32 %i.ady to i64                 ; 8 uses
  %i.aex = getelementptr inbounds [2 x i8], ptr %gep1198, i64 %i.aew
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !76
  %i.aez = zext i16 %i.aey to i32
  %i.afa = shl nuw i32 %i.aez, 16
  %i.afb = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.afc = bitcast <16 x i32> %i.afb to <16 x float>
  %i.afd = shufflevector <16 x float> %i.afc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aea, <16 x float> nofpclass(nan inf) %i.afd, <16 x float> nofpclass(nan inf) %.1510521170)
  %i.aff = getelementptr [2 x i8], ptr %i.adq, i64 %i.aew
  %i.afg = load i16, ptr %i.aff, align 2, !tbaa !76
  %i.afh = zext i16 %i.afg to i32
  %i.afi = shl nuw i32 %i.afh, 16
  %i.afj = insertelement <16 x i32> poison, i32 %i.afi, i64 0
  %i.afk = bitcast <16 x i32> %i.afj to <16 x float>
  %i.afl = shufflevector <16 x float> %i.afk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aed, <16 x float> nofpclass(nan inf) %i.afl, <16 x float> nofpclass(nan inf) %.146651171)
  %i.afn = getelementptr [2 x i8], ptr %i.adr, i64 %i.aew
  %i.afo = load i16, ptr %i.afn, align 2, !tbaa !76
  %i.afp = zext i16 %i.afo to i32
  %i.afq = shl nuw i32 %i.afp, 16
  %i.afr = insertelement <16 x i32> poison, i32 %i.afq, i64 0
  %i.afs = bitcast <16 x i32> %i.afr to <16 x float>
  %i.aft = shufflevector <16 x float> %i.afs, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeg, <16 x float> nofpclass(nan inf) %i.aft, <16 x float> nofpclass(nan inf) %.146441172)
  %i.afv = getelementptr [2 x i8], ptr %i.ads, i64 %i.aew
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !76
  %i.afx = zext i16 %i.afw to i32
  %i.afy = shl nuw i32 %i.afx, 16
  %i.afz = insertelement <16 x i32> poison, i32 %i.afy, i64 0
  %i.aga = bitcast <16 x i32> %i.afz to <16 x float>
  %i.agb = shufflevector <16 x float> %i.aga, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aej, <16 x float> nofpclass(nan inf) %i.agb, <16 x float> nofpclass(nan inf) %.146231173)
  %i.agd = getelementptr [2 x i8], ptr %i.adt, i64 %i.aew
  %i.age = load i16, ptr %i.agd, align 2, !tbaa !76
  %i.agf = zext i16 %i.age to i32
  %i.agg = shl nuw i32 %i.agf, 16
  %i.agh = insertelement <16 x i32> poison, i32 %i.agg, i64 0
  %i.agi = bitcast <16 x i32> %i.agh to <16 x float>
  %i.agj = shufflevector <16 x float> %i.agi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aem, <16 x float> nofpclass(nan inf) %i.agj, <16 x float> nofpclass(nan inf) %i.afe) ; 2 uses
  %i.agl = getelementptr [2 x i8], ptr %i.adu, i64 %i.aew
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !76
  %i.agn = zext i16 %i.agm to i32
  %i.ago = shl nuw i32 %i.agn, 16
  %i.agp = insertelement <16 x i32> poison, i32 %i.ago, i64 0
  %i.agq = bitcast <16 x i32> %i.agp to <16 x float>
  %i.agr = shufflevector <16 x float> %i.agq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ags = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aep, <16 x float> nofpclass(nan inf) %i.agr, <16 x float> nofpclass(nan inf) %i.afm) ; 2 uses
  %i.agt = getelementptr [2 x i8], ptr %i.adv, i64 %i.aew
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !76
  %i.agv = zext i16 %i.agu to i32
  %i.agw = shl nuw i32 %i.agv, 16
  %i.agx = insertelement <16 x i32> poison, i32 %i.agw, i64 0
  %i.agy = bitcast <16 x i32> %i.agx to <16 x float>
  %i.agz = shufflevector <16 x float> %i.agy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aha = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aes, <16 x float> nofpclass(nan inf) %i.agz, <16 x float> nofpclass(nan inf) %i.afu) ; 2 uses
  %i.ahb = getelementptr [2 x i8], ptr %i.adw, i64 %i.aew
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !76
  %i.ahd = zext i16 %i.ahc to i32
  %i.ahe = shl nuw i32 %i.ahd, 16
  %i.ahf = insertelement <16 x i32> poison, i32 %i.ahe, i64 0
  %i.ahg = bitcast <16 x i32> %i.ahf to <16 x float>
  %i.ahh = shufflevector <16 x float> %i.ahg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aev, <16 x float> nofpclass(nan inf) %i.ahh, <16 x float> nofpclass(nan inf) %i.agc) ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.141174, i64 256
  %indvars.iv.next1387 = add nuw nsw i64 %indvars.iv1386, 1 ; 2 uses
  %exitcond1392.not = icmp eq i64 %indvars.iv.next1387, %wide.trip.count1391
  br i1 %exitcond1392.not, label %.loopexit1071.loopexit, label %bb.n, !llvm.loop !322

.loopexit1071.loopexit:                           ; preds = %bb.n
  %scevgep1388 = getelementptr i8, ptr %.91186, i64 256
  %i.ahk = add nsw i32 %i.adm, -1
  %i.ahl = zext nneg i32 %i.ahk to i64
  %i.ahm = shl nuw nsw i64 %i.ahl, 8
  %scevgep1389 = getelementptr i8, ptr %scevgep1388, i64 %i.ahm
  br label %.loopexit1071

.loopexit1071:                                    ; preds = %.preheader1073, %.loopexit1074.loopexit, %bb.l, %.loopexit1072.loopexit, %.loopexit1071.loopexit, %.preheader1070, %.loopexit1072
  %.161053 = phi nsz <16 x float> [ %.1010471182, %.loopexit1072 ], [ %.1010471182, %.preheader1070 ], [ %i.agk, %.loopexit1071.loopexit ], [ %.1010471182, %bb.l ], [ %i.acy, %.loopexit1072.loopexit ], [ %i.aak, %.loopexit1074.loopexit ], [ %.1010471182, %.preheader1073 ] ; 2 uses
  %.15666 = phi nsz <16 x float> [ %.96601183, %.loopexit1072 ], [ %.96601183, %.preheader1070 ], [ %i.ags, %.loopexit1071.loopexit ], [ %.96601183, %bb.l ], [ %i.adb, %.loopexit1072.loopexit ], [ %i.aan, %.loopexit1074.loopexit ], [ %.96601183, %.preheader1073 ] ; 2 uses
  %.15645 = phi nsz <16 x float> [ %.96391184, %.loopexit1072 ], [ %.96391184, %.preheader1070 ], [ %i.aha, %.loopexit1071.loopexit ], [ %.96391184, %bb.l ], [ %i.ade, %.loopexit1072.loopexit ], [ %i.aaq, %.loopexit1074.loopexit ], [ %.96391184, %.preheader1073 ] ; 2 uses
  %.15624 = phi nsz <16 x float> [ %.96181185, %.loopexit1072 ], [ %.96181185, %.preheader1070 ], [ %i.ahi, %.loopexit1071.loopexit ], [ %.96181185, %bb.l ], [ %i.adh, %.loopexit1072.loopexit ], [ %i.aat, %.loopexit1074.loopexit ], [ %.96181185, %.preheader1073 ] ; 2 uses
  %.15 = phi ptr [ %.91186, %.loopexit1072 ], [ %.91186, %.preheader1070 ], [ %scevgep1389, %.loopexit1071.loopexit ], [ %.91186, %bb.l ], [ %scevgep1382, %.loopexit1072.loopexit ], [ %scevgep1375, %.loopexit1074.loopexit ], [ %.91186, %.preheader1073 ] ; 2 uses
  %i.ahn = add nuw nsw i32 %.11187, 8             ; 3 uses
  %i.aho = or disjoint i32 %i.ahn, 7
  %i.ahp = icmp slt i32 %i.aho, %i.ae
  br i1 %i.ahp, label %_ZN4ncnn3MatD2Ev.exit726, label %.preheader1083, !llvm.loop !323

.preheader1082:                                   ; preds = %.loopexit, %.preheader1083
  %.171054.lcssa = phi <16 x float> [ %.101047.lcssa, %.preheader1083 ], [ %.211058, %.loopexit ] ; 3 uses
  %.16667.lcssa = phi <16 x float> [ %.9660.lcssa, %.preheader1083 ], [ %.20671, %.loopexit ] ; 3 uses
  %.16646.lcssa = phi <16 x float> [ %.9639.lcssa, %.preheader1083 ], [ %.20650, %.loopexit ]
  %.16625.lcssa = phi <16 x float> [ %.9618.lcssa, %.preheader1083 ], [ %.20629, %.loopexit ]
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader1083 ], [ %.20, %.loopexit ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1083 ], [ %i.anm, %.loopexit ] ; 5 uses
  %i.ahq = or disjoint i32 %.2.lcssa, 1
  %i.ahr = icmp slt i32 %i.ahq, %i.ae
  br i1 %i.ahr, label %_ZN4ncnn3MatD2Ev.exit724.lr.ph, label %.preheader1081

_ZN4ncnn3MatD2Ev.exit724.lr.ph:                   ; preds = %.preheader1082
  %i.ahs = load i32, ptr %i.u, align 4, !tbaa !114, !noalias !324
  %i.aht = load ptr, ptr %3, align 8, !tbaa !9, !noalias !324
  %i.ahu = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !324
  %i.ahv = load i64, ptr %i.w, align 8, !tbaa !19, !noalias !324 ; 2 uses
  %factor.op.mul1256 = mul i64 %i.ahu, %i.ahv
  %i.ahw = sext i32 %i.ahs to i64
  %i.ahx = load i32, ptr %7, align 4, !tbaa !113
  %i.ahy = mul nsw i32 %i.ahx, %.06751287
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = mul i64 %i.ahv, %i.ahw
  %i.aib = mul i64 %i.aia, %i.ahz
  %invariant.gep1258 = getelementptr i8, ptr %i.aht, i64 %i.aib
  %i.aic = load i32, ptr %8, align 4, !tbaa !113
  %i.aid = mul nsw i32 %i.aic, %.06741283
  %i.aie = sext i32 %i.aid to i64
  %invariant.gep1259 = getelementptr [2 x i8], ptr %invariant.gep1258, i64 %i.aie
  %i.aif = load i32, ptr %9, align 4, !tbaa !113  ; 3 uses
  %i.aig = icmp sgt i32 %i.aif, 0
  br i1 %i.aig, label %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us, label %_ZN4ncnn3MatD2Ev.exit724.preheader

_ZN4ncnn3MatD2Ev.exit724.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit724.lr.ph
  %i.aih = add i32 %.2.lcssa, 2
  %i.aii = sub i32 %15, %.2.lcssa
  %i.aij = and i32 %i.aii, -2
  %i.aik = add i32 %i.aih, %i.aij
  br label %.preheader1081

_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us:          ; preds = %_ZN4ncnn3MatD2Ev.exit724.lr.ph
  %i.ail = load ptr, ptr %10, align 8, !tbaa !119
  %i.aim = load i64, ptr %11, align 8, !tbaa !117
  %i.ain = add nsw i32 %i.aif, -1
  %i.aio = zext nneg i32 %i.ain to i64
  %i.aip = shl nuw nsw i64 %i.aio, 6
  %i.aiq = zext i32 %.2.lcssa to i64
  %wide.trip.count1412 = zext nneg i32 %i.aif to i64
  br label %_ZN4ncnn3MatD2Ev.exit724.us

_ZN4ncnn3MatD2Ev.exit724.us:                      ; preds = %._crit_edge.us, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us
  %indvars.iv1414 = phi i64 [ %indvars.iv.next1415, %._crit_edge.us ], [ %i.aiq, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ] ; 2 uses
  %.211250.us = phi ptr [ %scevgep1410, %._crit_edge.us ], [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ] ; 2 uses
  %.216721249.us = phi <16 x float> [ %i.ajp, %._crit_edge.us ], [ %.16667.lcssa, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ]
  %.2210591248.us = phi <16 x float> [ %i.ajh, %._crit_edge.us ], [ %.171054.lcssa, %_ZN4ncnn3MatD2Ev.exit724.lr.ph.split.us ]
  %.reass1257.us = mul i64 %factor.op.mul1256, %indvars.iv1414
  %gep1260.us = getelementptr i8, ptr %invariant.gep1259, i64 %.reass1257.us ; 2 uses
  %i.air = getelementptr [2 x i8], ptr %gep1260.us, i64 %i.aim
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit724.us, %bb.o
  %indvars.iv1407 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %indvars.iv.next1408, %bb.o ] ; 2 uses
  %.221242.us = phi ptr [ %.211250.us, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %i.ajq, %bb.o ] ; 3 uses
  %.226731241.us = phi <16 x float> [ %.216721249.us, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %i.ajp, %bb.o ]
  %.2310601240.us = phi <16 x float> [ %.2210591248.us, %_ZN4ncnn3MatD2Ev.exit724.us ], [ %i.ajh, %bb.o ]
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %indvars.iv1407
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !113
  %i.aiu = load <16 x bfloat>, ptr %.221242.us, align 32, !tbaa !20
  %i.aiv = fpext fast <16 x bfloat> %i.aiu to <16 x float>
  %i.aiw = getelementptr inbounds nuw i8, ptr %.221242.us, i64 32
  %i.aix = load <16 x bfloat>, ptr %i.aiw, align 32, !tbaa !20
  %i.aiy = fpext fast <16 x bfloat> %i.aix to <16 x float>
  %i.aiz = sext i32 %i.ait to i64                 ; 2 uses
  %i.aja = getelementptr inbounds [2 x i8], ptr %gep1260.us, i64 %i.aiz
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !76
  %i.ajc = zext i16 %i.ajb to i32
  %i.ajd = shl nuw i32 %i.ajc, 16
  %i.aje = insertelement <16 x i32> poison, i32 %i.ajd, i64 0
  %i.ajf = bitcast <16 x i32> %i.aje to <16 x float>
  %i.ajg = shufflevector <16 x float> %i.ajf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aiv, <16 x float> nofpclass(nan inf) %i.ajg, <16 x float> nofpclass(nan inf) %.2310601240.us) ; 3 uses
  %i.aji = getelementptr [2 x i8], ptr %i.air, i64 %i.aiz
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !76
  %i.ajk = zext i16 %i.ajj to i32
  %i.ajl = shl nuw i32 %i.ajk, 16
  %i.ajm = insertelement <16 x i32> poison, i32 %i.ajl, i64 0
  %i.ajn = bitcast <16 x i32> %i.ajm to <16 x float>
  %i.ajo = shufflevector <16 x float> %i.ajn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aiy, <16 x float> nofpclass(nan inf) %i.ajo, <16 x float> nofpclass(nan inf) %.226731241.us) ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.221242.us, i64 64
  %indvars.iv.next1408 = add nuw nsw i64 %indvars.iv1407, 1 ; 2 uses
  %exitcond1413.not = icmp eq i64 %indvars.iv.next1408, %wide.trip.count1412
  br i1 %exitcond1413.not, label %._crit_edge.us, label %bb.o, !llvm.loop !327

._crit_edge.us:                                   ; preds = %bb.o
  %scevgep1409 = getelementptr i8, ptr %.211250.us, i64 64
  %scevgep1410 = getelementptr i8, ptr %scevgep1409, i64 %i.aip ; 2 uses
  %indvars.iv.next1415 = add nuw nsw i64 %indvars.iv1414, 2 ; 3 uses
  %i.ajr = trunc i64 %indvars.iv.next1415 to i32
  %i.ajs = or i32 %i.ajr, 1
  %i.ajt = icmp slt i32 %i.ajs, %i.ae
  br i1 %i.ajt, label %_ZN4ncnn3MatD2Ev.exit724.us, label %.preheader1081.loopexit, !llvm.loop !328

_ZN4ncnn3MatD2Ev.exit725:                         ; preds = %_ZN4ncnn3MatD2Ev.exit725.lr.ph, %.loopexit
  %.21228 = phi i32 [ %.1.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %i.anm, %.loopexit ] ; 2 uses
  %.161227 = phi ptr [ %.9.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20, %.loopexit ] ; 7 uses
  %.166251226 = phi <16 x float> [ %.9618.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20629, %.loopexit ] ; 5 uses
  %.166461225 = phi <16 x float> [ %.9639.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20650, %.loopexit ] ; 5 uses
  %.166671224 = phi <16 x float> [ %.9660.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.20671, %.loopexit ] ; 5 uses
  %.1710541223 = phi <16 x float> [ %.101047.lcssa, %_ZN4ncnn3MatD2Ev.exit725.lr.ph ], [ %.211058, %.loopexit ] ; 5 uses
  %i.aju = sdiv i32 %.21228, %i.ac
  %i.ajv = sext i32 %i.aju to i64
  %.reass1236 = mul i64 %factor.op.mul1235, %i.ajv
  %gep1239 = getelementptr i8, ptr %invariant.gep1238, i64 %.reass1236 ; 5 uses
  br i1 %i.an, label %.preheader1068, label %.loopexit1069

.preheader1068:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit725
  %i.ajw = load i32, ptr %9, align 4, !tbaa !113  ; 3 uses
  %i.ajx = icmp sgt i32 %i.ajw, 0
  br i1 %i.ajx, label %.lr.ph1205, label %.loopexit

.lr.ph1205:                                       ; preds = %.preheader1068
  %i.ajy = load ptr, ptr %10, align 8, !tbaa !119
  %wide.trip.count1398 = zext nneg i32 %i.ajw to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph1205, %bb.p
  %indvars.iv1393 = phi i64 [ 0, %.lr.ph1205 ], [ %indvars.iv.next1394, %bb.p ] ; 2 uses
  %.171203 = phi ptr [ %.161227, %.lr.ph1205 ], [ %i.ald, %bb.p ] ; 5 uses
  %.176261202 = phi <16 x float> [ %.166251226, %.lr.ph1205 ], [ %i.alc, %bb.p ]
  %.176471201 = phi <16 x float> [ %.166461225, %.lr.ph1205 ], [ %i.akz, %bb.p ]
  %.176681200 = phi <16 x float> [ %.166671224, %.lr.ph1205 ], [ %i.akw, %bb.p ]
  %.1810551199 = phi <16 x float> [ %.1710541223, %.lr.ph1205 ], [ %i.akt, %bb.p ]
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %indvars.iv1393
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !113
  %i.akb = sext i32 %i.aka to i64
  %i.akc = getelementptr inbounds [2 x i8], ptr %gep1239, i64 %i.akb
  %i.akd = load <16 x bfloat>, ptr %.171203, align 32, !tbaa !20
  %i.ake = fpext fast <16 x bfloat> %i.akd to <16 x float>
  %i.akf = getelementptr inbounds nuw i8, ptr %.171203, i64 32
  %i.akg = load <16 x bfloat>, ptr %i.akf, align 32, !tbaa !20
  %i.akh = fpext fast <16 x bfloat> %i.akg to <16 x float>
  %i.aki = getelementptr inbounds nuw i8, ptr %.171203, i64 64
  %i.akj = load <16 x bfloat>, ptr %i.aki, align 32, !tbaa !20
  %i.akk = fpext fast <16 x bfloat> %i.akj to <16 x float>
  %i.akl = getelementptr inbounds nuw i8, ptr %.171203, i64 96
  %i.akm = load <16 x bfloat>, ptr %i.akl, align 32, !tbaa !20
  %i.akn = fpext fast <16 x bfloat> %i.akm to <16 x float>
  %i.ako = load <4 x i16>, ptr %i.akc, align 2, !tbaa !76
  %i.akp = zext <4 x i16> %i.ako to <4 x i32>
  %i.akq = shl nuw <4 x i32> %i.akp, splat (i32 16) ; 4 uses
  %i.akr = bitcast <4 x i32> %i.akq to <4 x float>
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ake, <16 x float> nofpclass(nan inf) %i.aks, <16 x float> nofpclass(nan inf) %.1810551199) ; 2 uses
  %i.aku = bitcast <4 x i32> %i.akq to <4 x float>
  %i.akv = shufflevector <4 x float> %i.aku, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.akw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akh, <16 x float> nofpclass(nan inf) %i.akv, <16 x float> nofpclass(nan inf) %.176681200) ; 2 uses
  %i.akx = bitcast <4 x i32> %i.akq to <4 x float>
  %i.aky = shufflevector <4 x float> %i.akx, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.akz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akk, <16 x float> nofpclass(nan inf) %i.aky, <16 x float> nofpclass(nan inf) %.176471201) ; 2 uses
  %i.ala = bitcast <4 x i32> %i.akq to <4 x float>
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.alc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akn, <16 x float> nofpclass(nan inf) %i.alb, <16 x float> nofpclass(nan inf) %.176261202) ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.171203, i64 128
  %indvars.iv.next1394 = add nuw nsw i64 %indvars.iv1393, 1 ; 2 uses
  %exitcond1399.not = icmp eq i64 %indvars.iv.next1394, %wide.trip.count1398
  br i1 %exitcond1399.not, label %.loopexit1069.loopexit, label %bb.p, !llvm.loop !329

.loopexit1069.loopexit:                           ; preds = %bb.p
  %scevgep1395 = getelementptr i8, ptr %.161227, i64 128
  %i.ale = add nsw i32 %i.ajw, -1
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = shl nuw nsw i64 %i.alf, 7
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %i.alg
  br label %.loopexit

.loopexit1069:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit725
  br i1 %i.ao, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit1069
  %i.alh = load i32, ptr %9, align 4, !tbaa !113  ; 3 uses
  %i.ali = icmp sgt i32 %i.alh, 0
  br i1 %i.ali, label %.lr.ph1217, label %.loopexit

.lr.ph1217:                                       ; preds = %.preheader
  %i.alj = load ptr, ptr %10, align 8, !tbaa !119
  %i.alk = load i64, ptr %11, align 8, !tbaa !117 ; 3 uses
  %i.all = getelementptr [2 x i8], ptr %gep1239, i64 %i.alk
  %.idx700 = shl i64 %i.alk, 2
  %i.alm = getelementptr i8, ptr %gep1239, i64 %.idx700
  %.idx701 = mul i64 %i.alk, 6
  %i.aln = getelementptr i8, ptr %gep1239, i64 %.idx701
  %wide.trip.count1405 = zext nneg i32 %i.alh to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1217, %bb.q
  %indvars.iv1400 = phi i64 [ 0, %.lr.ph1217 ], [ %indvars.iv.next1401, %bb.q ] ; 2 uses
  %.191215 = phi ptr [ %.161227, %.lr.ph1217 ], [ %i.ani, %bb.q ] ; 5 uses
  %.196281214 = phi <16 x float> [ %.166251226, %.lr.ph1217 ], [ %i.anh, %bb.q ]
  %.196491213 = phi <16 x float> [ %.166461225, %.lr.ph1217 ], [ %i.amz, %bb.q ]
  %.196701212 = phi <16 x float> [ %.166671224, %.lr.ph1217 ], [ %i.amr, %bb.q ]
  %.2010571211 = phi <16 x float> [ %.1710541223, %.lr.ph1217 ], [ %i.amj, %bb.q ]
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv1400
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !113
  %i.alq = load <16 x bfloat>, ptr %.191215, align 32, !tbaa !20
  %i.alr = fpext fast <16 x bfloat> %i.alq to <16 x float>
  %i.als = getelementptr inbounds nuw i8, ptr %.191215, i64 32
  %i.alt = load <16 x bfloat>, ptr %i.als, align 32, !tbaa !20
  %i.alu = fpext fast <16 x bfloat> %i.alt to <16 x float>
  %i.alv = getelementptr inbounds nuw i8, ptr %.191215, i64 64
  %i.alw = load <16 x bfloat>, ptr %i.alv, align 32, !tbaa !20
  %i.alx = fpext fast <16 x bfloat> %i.alw to <16 x float>
  %i.aly = getelementptr inbounds nuw i8, ptr %.191215, i64 96
  %i.alz = load <16 x bfloat>, ptr %i.aly, align 32, !tbaa !20
  %i.ama = fpext fast <16 x bfloat> %i.alz to <16 x float>
  %i.amb = sext i32 %i.alp to i64                 ; 4 uses
  %i.amc = getelementptr inbounds [2 x i8], ptr %gep1239, i64 %i.amb
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !76
  %i.ame = zext i16 %i.amd to i32
  %i.amf = shl nuw i32 %i.ame, 16
  %i.amg = insertelement <16 x i32> poison, i32 %i.amf, i64 0
  %i.amh = bitcast <16 x i32> %i.amg to <16 x float>
  %i.ami = shufflevector <16 x float> %i.amh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alr, <16 x float> nofpclass(nan inf) %i.ami, <16 x float> nofpclass(nan inf) %.2010571211) ; 2 uses
  %i.amk = getelementptr [2 x i8], ptr %i.all, i64 %i.amb
  %i.aml = load i16, ptr %i.amk, align 2, !tbaa !76
  %i.amm = zext i16 %i.aml to i32
  %i.amn = shl nuw i32 %i.amm, 16
  %i.amo = insertelement <16 x i32> poison, i32 %i.amn, i64 0
  %i.amp = bitcast <16 x i32> %i.amo to <16 x float>
  %i.amq = shufflevector <16 x float> %i.amp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alu, <16 x float> nofpclass(nan inf) %i.amq, <16 x float> nofpclass(nan inf) %.196701212) ; 2 uses
  %i.ams = getelementptr [2 x i8], ptr %i.alm, i64 %i.amb
  %i.amt = load i16, ptr %i.ams, align 2, !tbaa !76
  %i.amu = zext i16 %i.amt to i32
  %i.amv = shl nuw i32 %i.amu, 16
end_hunk_8
begin_hunk_9_@_ZN4ncnn57convolution_im2col_gemm_transform_kernel_bf16s_avx512bf16ERKNS_3MatERS0_iiiiRKNS_6OptionE:bb.a
  %i.hy = mul nsw i32 %i.hx, %i.hw
  %i.hz = load i32, ptr %i.b, align 4, !tbaa !113
  %i.ia = add i32 %i.hw, -1
  %i.ib = add i32 %i.ia, %i.hz
  %i.ic = sdiv i32 %i.ib, %i.hw
  %i.id = load i32, ptr %i.a, align 4, !tbaa !113
  %i.ie = add i32 %i.hx, -1
  %i.if = add i32 %i.ie, %i.id
  %i.ig = sdiv i32 %i.if, %i.hx
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.hy, i32 noundef %i.ic, i32 noundef %i.ig, i64 noundef 2, ptr noundef null)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.ih = load i32, ptr %i.i, align 4, !tbaa !124
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ih)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %7)
  %i.ii = load ptr, ptr %i.bh, align 8, !tbaa !343 ; 2 uses
  %.not.i90.i = icmp eq ptr %i.ii, null
  br i1 %.not.i90.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ij = atomicrmw add ptr %i.ii, i32 -1 acq_rel, align 4
  %i.ik = icmp eq i32 %i.ij, 1
  br i1 %i.ik, label %bb.az, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.az:                                            ; preds = %bb.ay
  %i.il = load ptr, ptr %i.bk, align 16, !tbaa !344 ; 3 uses
  %.not3.i91.i = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %7, align 16, !tbaa !9    ; 3 uses
  br i1 %.not3.i91.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !345
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit unwind label %bb.bd, !inline_history !349

bb.bb:                                            ; preds = %bb.az
  %.not.i99.i = icmp eq ptr %i.im, null
  br i1 %.not.i99.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.im) #10
  br label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.bd:                                            ; preds = %bb.ba
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #26
  unreachable

bb.be:                                            ; preds = %bb.aw
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4ncnn3MatD2Ev.exit68.i, %_ZN4ncnn3MatD2Ev.exit71.i
  %.pn65.i = phi { ptr, i32 } [ %i.is, %bb.be ], [ %.pn63.i, %_ZN4ncnn3MatD2Ev.exit71.i ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit68.i ]
  %i.it = load ptr, ptr %i.bh, align 8, !tbaa !343 ; 2 uses
  %.not.i94.i = icmp eq ptr %i.it, null
  br i1 %.not.i94.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iu = atomicrmw add ptr %i.it, i32 -1 acq_rel, align 4
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.iw = load ptr, ptr %i.bk, align 16, !tbaa !344 ; 3 uses
  %.not3.i95.i = icmp eq ptr %i.iw, null
  %i.ix = load ptr, ptr %7, align 16, !tbaa !9    ; 3 uses
  br i1 %.not3.i95.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !345
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  invoke void %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef %i.ix)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bl, !inline_history !349

bb.bj:                                            ; preds = %bb.bh
  %.not.i98.i = icmp eq ptr %i.ix, null
  br i1 %.not.i98.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ix) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  resume { ptr, i32 } %.pn65.i

_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit: ; preds = %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !113
  %i.h = load i32, ptr %0, align 4, !tbaa !113    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !113
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not106 = icmp sgt i32 %i.k, %i.j
  br i1 %.not106, label %._crit_edge109.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !113    ; 3 uses
  %i.m = load i32, ptr %5, align 4, !tbaa !113    ; 7 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.split, label %._crit_edge109.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %4, align 4, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = load i32, ptr %6, align 4, !tbaa !113    ; 11 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !114, !noalias !361
  %i.v = load ptr, ptr %7, align 8, !tbaa !9, !noalias !361
  %i.w = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !361
  %i.x = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !361 ; 2 uses
  %factor.op.mul = mul i64 %i.w, %i.x
  %i.y = sext i32 %i.u to i64
  %i.z = mul i64 %i.x, %i.y
  %.val38 = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.aa = sext i32 %.val38 to i64                 ; 33 uses
  %i.ab = sext i32 %i.t to i64
  %i.ac = zext nneg i32 %i.m to i64
  %i.ad = sext i32 %i.k to i64
  %i.ae = sext i32 %i.l to i64
  %i.af = add nsw i32 %i.j, 1
  %ident.check.not = icmp eq i32 %.val38, 1
  br label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %.lr.ph.split, %._crit_edge
  %indvars.iv152 = phi i64 [ %i.ad, %.lr.ph.split ], [ %indvars.iv.next153, %._crit_edge ] ; 2 uses
  %i.ag = mul i64 %indvars.iv152, %i.ae           ; 10 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = sub i32 %i.o, %i.ah
  %.sroa.speculated60 = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.ai) ; 8 uses
  %i.aj = trunc nsw i64 %i.ag to i32
  %i.ak = sdiv i32 %i.aj, %i.l
  %i.al = sext i32 %i.ak to i64
  %.reass = mul i64 %factor.op.mul, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass
  %i.an = icmp sgt i32 %.sroa.speculated60, 15
  %i.ao = zext nneg i32 %.sroa.speculated60 to i64
  %i.ap = sext i32 %.sroa.speculated60 to i64     ; 4 uses
  %invariant.op.i = add nsw i64 %i.ap, -7
  %invariant.op382.i = add nsw i64 %i.ap, -3
  %9 = add i32 %.sroa.speculated60, -2
  %invariant.op383.i = add nsw i64 %i.ap, -1      ; 3 uses
  br label %.noexc

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next153 to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge109.split, label %.noexc.lr.ph

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.noexc.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 8 uses
  %i.aq = mul i32 %i.t, %indvar
  %i.ar = sub i32 %i.m, %i.aq
  %smin474 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ar)
  %i.as = add i32 %smin474, -2                    ; 3 uses
  %i.at = lshr i32 %i.as, 1
  %narrow = add nuw i32 %i.at, 1
  %i.au = zext i32 %narrow to i64                 ; 5 uses
  %i.av = mul i32 %i.t, %indvar
  %i.aw = sub i32 %i.m, %i.av
  %smin336 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.aw)
  %i.ax = add i32 %smin336, -2                    ; 3 uses
  %i.ay = lshr i32 %i.ax, 1
  %narrow621 = add nuw i32 %i.ay, 1
  %i.az = zext i32 %narrow621 to i64              ; 5 uses
  %i.ba = mul i32 %i.t, %indvar
  %i.bb = sub i32 %i.m, %i.ba
  %smin294 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.bb) ; 2 uses
  %i.bc = and i32 %smin294, 2147483646
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %smin294, %i.bd                 ; 3 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 5 uses
  %i.bh = mul i32 %i.t, %indvar
  %i.bi = sub i32 %i.m, %i.bh
  %smin = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.bi)
  %i.bj = add i32 %smin, -2                       ; 3 uses
  %i.bk = lshr i32 %i.bj, 1
  %narrow622 = add nuw i32 %i.bk, 1
  %i.bl = zext i32 %narrow622 to i64              ; 5 uses
  %i.bm = trunc i64 %indvars.iv to i32
  %i.bn = sub i32 %i.m, %i.bm
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.bn) ; 29 uses
  %i.bo = trunc nsw i64 %indvars.iv to i32
  %i.bp = sdiv i32 %i.bo, %i.t
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %i.z, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br ; 2 uses
  %.val = load ptr, ptr %8, align 8               ; 5 uses
  br i1 %i.an, label %.lr.ph69.i, label %.preheader9.i

.lr.ph69.i:                                       ; preds = %.noexc
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 16 uses
  %i.bt = icmp sgt i32 %.sroa.speculated, 1
  %i.bu = and i32 %.sroa.speculated, -2
  br label %bb.c

.preheader9.loopexit.i:                           ; preds = %._crit_edge.i
  %i.bv = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader9.i

.preheader9.i:                                    ; preds = %.preheader9.loopexit.i, %.noexc
  %.0531.lcssa.i = phi ptr [ %i.bs, %.noexc ], [ %.2533.lcssa.i, %.preheader9.loopexit.i ] ; 2 uses
  %.0529.lcssa.i = phi i32 [ 0, %.noexc ], [ %i.bv, %.preheader9.loopexit.i ] ; 3 uses
  %i.bw = or disjoint i32 %.0529.lcssa.i, 7
  %i.bx = icmp slt i32 %i.bw, %.sroa.speculated60
  br i1 %i.bx, label %.lr.ph139.i, label %.preheader7.i

.lr.ph139.i:                                      ; preds = %.preheader9.i
  %invariant.gep142.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 8 uses
  %i.by = icmp sgt i32 %.sroa.speculated, 1
  %i.bz = and i32 %.sroa.speculated, -2
  %i.ca = zext nneg i32 %.0529.lcssa.i to i64
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph69.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph69.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.053166.i = phi ptr [ %i.bs, %.lr.ph69.i ], [ %.2533.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cb = add nsw i64 %indvars.iv.i, %i.ag        ; 16 uses
  %i.cc = mul nsw i64 %i.cb, %i.aa
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cc ; 2 uses
  %i.cd = add nsw i64 %i.cb, 1
  %i.ce = mul nsw i64 %i.cd, %i.aa
  %gep73.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ce ; 2 uses
  %i.cf = add nsw i64 %i.cb, 2
  %i.cg = mul nsw i64 %i.cf, %i.aa
  %gep75.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cg ; 2 uses
  %i.ch = add nsw i64 %i.cb, 3
  %i.ci = mul nsw i64 %i.ch, %i.aa
  %gep77.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ci ; 2 uses
  %i.cj = add nsw i64 %i.cb, 4
  %i.ck = mul nsw i64 %i.cj, %i.aa
  %gep79.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ck ; 2 uses
  %i.cl = add nsw i64 %i.cb, 5
  %i.cm = mul nsw i64 %i.cl, %i.aa
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cm ; 2 uses
  %i.cn = add nsw i64 %i.cb, 6
  %i.co = mul nsw i64 %i.cn, %i.aa
  %gep83.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.co ; 2 uses
  %i.cp = add nsw i64 %i.cb, 7
  %i.cq = mul nsw i64 %i.cp, %i.aa
  %gep85.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cq ; 2 uses
  %i.cr = add nsw i64 %i.cb, 8
  %i.cs = mul nsw i64 %i.cr, %i.aa
  %gep87.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cs ; 2 uses
  %i.ct = add nsw i64 %i.cb, 9
  %i.cu = mul nsw i64 %i.ct, %i.aa
  %gep89.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cu ; 2 uses
  %i.cv = add nsw i64 %i.cb, 10
  %i.cw = mul nsw i64 %i.cv, %i.aa
  %gep91.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cw ; 2 uses
  %i.cx = add nsw i64 %i.cb, 11
  %i.cy = mul nsw i64 %i.cx, %i.aa
  %gep93.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cy ; 2 uses
  %i.cz = add nsw i64 %i.cb, 12
  %i.da = mul nsw i64 %i.cz, %i.aa
  %gep95.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.da ; 2 uses
  %i.db = add nsw i64 %i.cb, 13
  %i.dc = mul nsw i64 %i.db, %i.aa
  %gep97.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dc ; 2 uses
  %i.dd = add nsw i64 %i.cb, 14
  %i.de = mul nsw i64 %i.dd, %i.aa
  %gep99.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.de ; 2 uses
  %i.df = add nsw i64 %i.cb, 15
  %i.dg = mul nsw i64 %i.df, %i.aa
  %gep101.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dg ; 2 uses
  br i1 %i.bt, label %.lr.ph.i, label %.preheader10.i

.preheader10.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.1532.lcssa.i = phi ptr [ %.053166.i, %bb.c ], [ %i.fd, %.lr.ph.i ] ; 2 uses
  %.0527.lcssa.i = phi ptr [ %gep.i, %bb.c ], [ %i.fe, %.lr.ph.i ]
  %.0525.lcssa.i = phi ptr [ %gep73.i, %bb.c ], [ %i.ff, %.lr.ph.i ]
  %.0523.lcssa.i = phi ptr [ %gep75.i, %bb.c ], [ %i.fg, %.lr.ph.i ]
  %.0521.lcssa.i = phi ptr [ %gep77.i, %bb.c ], [ %i.fh, %.lr.ph.i ]
  %.0519.lcssa.i = phi ptr [ %gep79.i, %bb.c ], [ %i.fi, %.lr.ph.i ]
  %.0517.lcssa.i = phi ptr [ %gep81.i, %bb.c ], [ %i.fj, %.lr.ph.i ]
  %.0515.lcssa.i = phi ptr [ %gep83.i, %bb.c ], [ %i.fk, %.lr.ph.i ]
  %.0513.lcssa.i = phi ptr [ %gep85.i, %bb.c ], [ %i.fl, %.lr.ph.i ]
  %.0511.lcssa.i = phi ptr [ %gep87.i, %bb.c ], [ %i.fm, %.lr.ph.i ]
  %.0509.lcssa.i = phi ptr [ %gep89.i, %bb.c ], [ %i.fn, %.lr.ph.i ]
  %.0507.lcssa.i = phi ptr [ %gep91.i, %bb.c ], [ %i.fo, %.lr.ph.i ]
  %.0505.lcssa.i = phi ptr [ %gep93.i, %bb.c ], [ %i.fp, %.lr.ph.i ]
  %.0503.lcssa.i = phi ptr [ %gep95.i, %bb.c ], [ %i.fq, %.lr.ph.i ]
  %.0501.lcssa.i = phi ptr [ %gep97.i, %bb.c ], [ %i.fr, %.lr.ph.i ]
  %.0499.lcssa.i = phi ptr [ %gep99.i, %bb.c ], [ %i.fs, %.lr.ph.i ]
  %.0497.lcssa.i = phi ptr [ %gep101.i, %bb.c ], [ %i.ft, %.lr.ph.i ]
  %.0495.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bu, %.lr.ph.i ] ; 2 uses
  %i.dh = icmp slt i32 %.0495.lcssa.i, %.sroa.speculated
  br i1 %i.dh, label %.lr.ph64.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.049528.i = phi i32 [ %i.fu, %.lr.ph.i ], [ 0, %bb.c ]
  %.049727.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %gep101.i, %bb.c ] ; 2 uses
  %.049926.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %gep99.i, %bb.c ] ; 2 uses
  %.050125.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %gep97.i, %bb.c ] ; 2 uses
  %.050324.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %gep95.i, %bb.c ] ; 2 uses
  %.050523.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %gep93.i, %bb.c ] ; 2 uses
  %.050722.i = phi ptr [ %i.fo, %.lr.ph.i ], [ %gep91.i, %bb.c ] ; 2 uses
  %.050921.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %gep89.i, %bb.c ] ; 2 uses
  %.051120.i = phi ptr [ %i.fm, %.lr.ph.i ], [ %gep87.i, %bb.c ] ; 2 uses
  %.051319.i = phi ptr [ %i.fl, %.lr.ph.i ], [ %gep85.i, %bb.c ] ; 2 uses
  %.051518.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %gep83.i, %bb.c ] ; 2 uses
  %.051717.i = phi ptr [ %i.fj, %.lr.ph.i ], [ %gep81.i, %bb.c ] ; 2 uses
  %.051916.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %gep79.i, %bb.c ] ; 2 uses
  %.052115.i = phi ptr [ %i.fh, %.lr.ph.i ], [ %gep77.i, %bb.c ] ; 2 uses
  %.052314.i = phi ptr [ %i.fg, %.lr.ph.i ], [ %gep75.i, %bb.c ] ; 2 uses
  %.052513.i = phi ptr [ %i.ff, %.lr.ph.i ], [ %gep73.i, %bb.c ] ; 2 uses
  %.052712.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %gep.i, %bb.c ] ; 2 uses
  %.153211.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.053166.i, %bb.c ] ; 2 uses
  %i.di = load <2 x i32>, ptr %.052712.i, align 4, !tbaa !74
  %i.dj = load <2 x i32>, ptr %.052513.i, align 4, !tbaa !74
  %i.dk = load <2 x i32>, ptr %.052314.i, align 4, !tbaa !74
  %i.dl = load <2 x i32>, ptr %.052115.i, align 4, !tbaa !74
  %i.dm = load <2 x i32>, ptr %.051916.i, align 4, !tbaa !74
  %i.dn = load <2 x i32>, ptr %.051717.i, align 4, !tbaa !74
  %i.do = load <2 x i32>, ptr %.051518.i, align 4, !tbaa !74
  %i.dp = load <2 x i32>, ptr %.051319.i, align 4, !tbaa !74
  %i.dq = load <2 x i32>, ptr %.051120.i, align 4, !tbaa !74
  %i.dr = load <2 x i32>, ptr %.050921.i, align 4, !tbaa !74
  %i.ds = load <2 x i32>, ptr %.050722.i, align 4, !tbaa !74
  %i.dt = load <2 x i32>, ptr %.050523.i, align 4, !tbaa !74
  %i.du = load <2 x i32>, ptr %.050324.i, align 4, !tbaa !74
  %i.dv = load <2 x i32>, ptr %.050125.i, align 4, !tbaa !74
  %i.dw = load <2 x i32>, ptr %.049926.i, align 4, !tbaa !74
  %i.dx = load <2 x i32>, ptr %.049727.i, align 4, !tbaa !74
  %i.dy = shufflevector <2 x i32> %i.di, <2 x i32> %i.dj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <32 x i32> %i.dy, <32 x i32> %i.dz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ec = shufflevector <32 x i32> %i.ea, <32 x i32> %i.eb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <32 x i32> %i.ec, <32 x i32> %i.ed, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <32 x i32> %i.ee, <32 x i32> %i.ef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x i32> %i.do, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <32 x i32> %i.eg, <32 x i32> %i.eh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <32 x i32> %i.ei, <32 x i32> %i.ej, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_9
begin_hunk_10_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %wide.load566 = load <16 x i32>, ptr %next.gep552, align 4, !tbaa !74
  %wide.load567 = load <16 x i32>, ptr %next.gep551, align 4, !tbaa !74
  %i.jz = shufflevector <16 x i32> %wide.load560, <16 x i32> %wide.load561, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ka = shufflevector <16 x i32> %wide.load562, <16 x i32> %wide.load563, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kb = shufflevector <32 x i32> %i.jz, <32 x i32> %i.ka, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.kc = lshr <64 x i32> %i.kb, splat (i32 16)
  %i.kd = trunc nuw <64 x i32> %i.kc to <64 x i16>
  %i.ke = shufflevector <16 x i32> %wide.load564, <16 x i32> %wide.load565, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kf = shufflevector <16 x i32> %wide.load566, <16 x i32> %wide.load567, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kg = shufflevector <32 x i32> %i.ke, <32 x i32> %i.kf, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.kh = lshr <64 x i32> %i.kg, splat (i32 16)
  %i.ki = trunc nuw <64 x i32> %i.kh to <64 x i16>
  %interleaved.vec568 = shufflevector <64 x i16> %i.kd, <64 x i16> %i.ki, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec568, ptr %next.gep559, align 2, !tbaa !76
  %index.next569 = add nuw i64 %index550, 16      ; 2 uses
  %i.kj = icmp eq i64 %index.next569, %n.vec548
  br i1 %i.kj, label %middle.block570, label %vector.body549, !llvm.loop !367

middle.block570:                                  ; preds = %vector.body549
  %cmp.n571 = icmp eq i64 %i.ji, %n.vec548
  br i1 %cmp.n571, label %._crit_edge135.i, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block570
  %min.epilog.iters.check585 = icmp eq i64 %i.jj, 0
  br i1 %min.epilog.iters.check585, label %.lr.ph134.i.preheader, label %vec.epilog.ph586, !prof !81

vec.epilog.ph586:                                 ; preds = %vector.main.loop.iter.check545, %vec.epilog.iter.check584
  %vec.epilog.resume.val572 = phi i64 [ %n.vec548, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check545 ]
  %n.vec587 = and i64 %i.ji, 8589934588           ; 5 uses
  %i.kk = trunc i64 %n.vec587 to i32
  %i.kl = add i32 %.0477.lcssa.i, %i.kk
  %i.km = shl nuw nsw i64 %n.vec587, 2            ; 8 uses
  %i.kn = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.km
  %i.ko = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.km
  %i.kp = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.km
  %i.kq = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.km
  %i.kr = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.km
  %i.ks = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.km
  %i.kt = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.km
  %i.ku = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.km
  %i.kv = shl nuw nsw i64 %n.vec587, 4
  %i.kw = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.kv ; 2 uses
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph586
  %index589 = phi i64 [ %vec.epilog.resume.val572, %vec.epilog.ph586 ], [ %index.next608, %vec.epilog.vector.body588 ] ; 3 uses
  %i.kx = shl i64 %index589, 2                    ; 8 uses
  %next.gep590 = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.kx
  %next.gep591 = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.kx
  %next.gep592 = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.kx
  %next.gep593 = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.kx
  %next.gep594 = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.kx
  %next.gep595 = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.kx
  %next.gep596 = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.kx
  %next.gep597 = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.kx
  %i.ky = shl i64 %index589, 4
  %next.gep598 = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.ky
  %wide.load599 = load <4 x i32>, ptr %next.gep597, align 4, !tbaa !74
  %wide.load600 = load <4 x i32>, ptr %next.gep596, align 4, !tbaa !74
  %wide.load601 = load <4 x i32>, ptr %next.gep595, align 4, !tbaa !74
  %wide.load602 = load <4 x i32>, ptr %next.gep594, align 4, !tbaa !74
  %wide.load603 = load <4 x i32>, ptr %next.gep593, align 4, !tbaa !74
  %wide.load604 = load <4 x i32>, ptr %next.gep592, align 4, !tbaa !74
  %wide.load605 = load <4 x i32>, ptr %next.gep591, align 4, !tbaa !74
  %wide.load606 = load <4 x i32>, ptr %next.gep590, align 4, !tbaa !74
  %i.kz = shufflevector <4 x i32> %wide.load599, <4 x i32> %wide.load600, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.la = shufflevector <4 x i32> %wide.load601, <4 x i32> %wide.load602, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lb = shufflevector <4 x i32> %wide.load603, <4 x i32> %wide.load604, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lc = shufflevector <4 x i32> %wide.load605, <4 x i32> %wide.load606, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ld = shufflevector <8 x i32> %i.kz, <8 x i32> %i.la, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.le = shufflevector <8 x i32> %i.lb, <8 x i32> %i.lc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lf = shufflevector <16 x i32> %i.ld, <16 x i32> %i.le, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.lg = lshr <32 x i32> %i.lf, splat (i32 16)
  %interleaved.vec607 = trunc nuw <32 x i32> %i.lg to <32 x i16>
  store <32 x i16> %interleaved.vec607, ptr %next.gep598, align 2, !tbaa !76
  %index.next608 = add nuw i64 %index589, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next608, %n.vec587
  br i1 %i.lh, label %vec.epilog.middle.block609, label %vec.epilog.vector.body588, !llvm.loop !368

vec.epilog.middle.block609:                       ; preds = %vec.epilog.vector.body588
  %cmp.n610 = icmp eq i64 %i.ji, %n.vec587
  br i1 %cmp.n610, label %._crit_edge135.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %iter.check582, %vec.epilog.iter.check584, %vec.epilog.middle.block609
  %.1478133.i.ph = phi i32 [ %.0477.lcssa.i, %iter.check582 ], [ %i.jl, %vec.epilog.iter.check584 ], [ %i.kl, %vec.epilog.middle.block609 ]
  %.1480132.i.ph = phi ptr [ %.0479.lcssa.i, %iter.check582 ], [ %i.jn, %vec.epilog.iter.check584 ], [ %i.kn, %vec.epilog.middle.block609 ]
  %.1482131.i.ph = phi ptr [ %.0481.lcssa.i, %iter.check582 ], [ %i.jo, %vec.epilog.iter.check584 ], [ %i.ko, %vec.epilog.middle.block609 ]
  %.1484130.i.ph = phi ptr [ %.0483.lcssa.i, %iter.check582 ], [ %i.jp, %vec.epilog.iter.check584 ], [ %i.kp, %vec.epilog.middle.block609 ]
  %.1486129.i.ph = phi ptr [ %.0485.lcssa.i, %iter.check582 ], [ %i.jq, %vec.epilog.iter.check584 ], [ %i.kq, %vec.epilog.middle.block609 ]
  %.1488128.i.ph = phi ptr [ %.0487.lcssa.i, %iter.check582 ], [ %i.jr, %vec.epilog.iter.check584 ], [ %i.kr, %vec.epilog.middle.block609 ]
  %.1490127.i.ph = phi ptr [ %.0489.lcssa.i, %iter.check582 ], [ %i.js, %vec.epilog.iter.check584 ], [ %i.ks, %vec.epilog.middle.block609 ]
  %.1492126.i.ph = phi ptr [ %.0491.lcssa.i, %iter.check582 ], [ %i.jt, %vec.epilog.iter.check584 ], [ %i.kt, %vec.epilog.middle.block609 ]
  %.1494125.i.ph = phi ptr [ %.0493.lcssa.i, %iter.check582 ], [ %i.ju, %vec.epilog.iter.check584 ], [ %i.ku, %vec.epilog.middle.block609 ]
  %.5124.i.ph = phi ptr [ %.4535.lcssa.i, %iter.check582 ], [ %i.jw, %vec.epilog.iter.check584 ], [ %i.kw, %vec.epilog.middle.block609 ]
  br label %.lr.ph134.i

.lr.ph113.i:                                      ; preds = %bb.d, %.lr.ph113.i
  %.0477111.i = phi i32 [ %i.mo, %.lr.ph113.i ], [ 0, %bb.d ]
  %.0479110.i = phi ptr [ %i.mn, %.lr.ph113.i ], [ %gep157.i, %bb.d ] ; 2 uses
  %.0481109.i = phi ptr [ %i.mm, %.lr.ph113.i ], [ %gep155.i, %bb.d ] ; 2 uses
  %.0483108.i = phi ptr [ %i.ml, %.lr.ph113.i ], [ %gep153.i, %bb.d ] ; 2 uses
  %.0485107.i = phi ptr [ %i.mk, %.lr.ph113.i ], [ %gep151.i, %bb.d ] ; 2 uses
  %.0487106.i = phi ptr [ %i.mj, %.lr.ph113.i ], [ %gep149.i, %bb.d ] ; 2 uses
  %.0489105.i = phi ptr [ %i.mi, %.lr.ph113.i ], [ %gep147.i, %bb.d ] ; 2 uses
  %.0491104.i = phi ptr [ %i.mh, %.lr.ph113.i ], [ %gep145.i, %bb.d ] ; 2 uses
  %.0493103.i = phi ptr [ %i.mg, %.lr.ph113.i ], [ %gep143.i, %bb.d ] ; 2 uses
  %.4535102.i = phi ptr [ %i.mf, %.lr.ph113.i ], [ %.3534137.i, %bb.d ] ; 2 uses
  %i.li = load <2 x i32>, ptr %.0493103.i, align 4, !tbaa !74
  %i.lj = load <2 x i32>, ptr %.0491104.i, align 4, !tbaa !74
  %i.lk = load <2 x i32>, ptr %.0489105.i, align 4, !tbaa !74
  %i.ll = load <2 x i32>, ptr %.0487106.i, align 4, !tbaa !74
  %i.lm = load <2 x i32>, ptr %.0485107.i, align 4, !tbaa !74
  %i.ln = load <2 x i32>, ptr %.0483108.i, align 4, !tbaa !74
  %i.lo = load <2 x i32>, ptr %.0481109.i, align 4, !tbaa !74
  %i.lp = load <2 x i32>, ptr %.0479110.i, align 4, !tbaa !74
  %i.lq = shufflevector <2 x i32> %i.li, <2 x i32> %i.lj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lr = shufflevector <2 x i32> %i.lk, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ls = shufflevector <16 x i32> %i.lq, <16 x i32> %i.lr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = shufflevector <2 x i32> %i.ll, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lu = shufflevector <16 x i32> %i.ls, <16 x i32> %i.lt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lv = shufflevector <2 x i32> %i.lm, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lw = shufflevector <16 x i32> %i.lu, <16 x i32> %i.lv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = shufflevector <2 x i32> %i.ln, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ly = shufflevector <16 x i32> %i.lw, <16 x i32> %i.lx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lz = shufflevector <2 x i32> %i.lo, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ma = shufflevector <16 x i32> %i.ly, <16 x i32> %i.lz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.mb = shufflevector <2 x i32> %i.lp, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mc = shufflevector <16 x i32> %i.ma, <16 x i32> %i.mb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.md = lshr <16 x i32> %i.mc, splat (i32 16)
  %i.me = trunc nuw <16 x i32> %i.md to <16 x i16>
  store <16 x i16> %i.me, ptr %.4535102.i, align 2, !tbaa !76
  %i.mf = getelementptr inbounds nuw i8, ptr %.4535102.i, i64 32 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0493103.i, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0491104.i, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0489105.i, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.0487106.i, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0485107.i, i64 8 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0483108.i, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0481109.i, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0479110.i, i64 8 ; 2 uses
  %i.mo = add nuw nsw i32 %.0477111.i, 2          ; 2 uses
  %i.mp = or disjoint i32 %i.mo, 1
  %i.mq = icmp slt i32 %i.mp, %.sroa.speculated
  br i1 %i.mq, label %.lr.ph113.i, label %.preheader8.i, !llvm.loop !369

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i
  %.1478133.i = phi i32 [ %i.ns, %.lr.ph134.i ], [ %.1478133.i.ph, %.lr.ph134.i.preheader ]
  %.1480132.i = phi ptr [ %i.nr, %.lr.ph134.i ], [ %.1480132.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1482131.i = phi ptr [ %i.nq, %.lr.ph134.i ], [ %.1482131.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1484130.i = phi ptr [ %i.np, %.lr.ph134.i ], [ %.1484130.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1486129.i = phi ptr [ %i.no, %.lr.ph134.i ], [ %.1486129.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1488128.i = phi ptr [ %i.nn, %.lr.ph134.i ], [ %.1488128.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1490127.i = phi ptr [ %i.nm, %.lr.ph134.i ], [ %.1490127.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1492126.i = phi ptr [ %i.nl, %.lr.ph134.i ], [ %.1492126.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1494125.i = phi ptr [ %i.nk, %.lr.ph134.i ], [ %.1494125.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.5124.i = phi ptr [ %i.nj, %.lr.ph134.i ], [ %.5124.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %i.mr = load i32, ptr %.1494125.i, align 4, !tbaa !74
  %i.ms = load i32, ptr %.1492126.i, align 4, !tbaa !74
  %i.mt = load i32, ptr %.1490127.i, align 4, !tbaa !74
  %i.mu = load i32, ptr %.1488128.i, align 4, !tbaa !74
  %i.mv = load i32, ptr %.1486129.i, align 4, !tbaa !74
  %i.mw = load i32, ptr %.1484130.i, align 4, !tbaa !74
  %i.mx = load i32, ptr %.1482131.i, align 4, !tbaa !74
  %i.my = load i32, ptr %.1480132.i, align 4, !tbaa !74
  %i.mz = insertelement <8 x i32> poison, i32 %i.mr, i64 0
  %i.na = insertelement <8 x i32> %i.mz, i32 %i.ms, i64 1
  %i.nb = insertelement <8 x i32> %i.na, i32 %i.mt, i64 2
  %i.nc = insertelement <8 x i32> %i.nb, i32 %i.mu, i64 3
  %i.nd = insertelement <8 x i32> %i.nc, i32 %i.mv, i64 4
  %i.ne = insertelement <8 x i32> %i.nd, i32 %i.mw, i64 5
  %i.nf = insertelement <8 x i32> %i.ne, i32 %i.mx, i64 6
  %i.ng = insertelement <8 x i32> %i.nf, i32 %i.my, i64 7
  %i.nh = lshr <8 x i32> %i.ng, splat (i32 16)
  %i.ni = trunc nuw <8 x i32> %i.nh to <8 x i16>
  store <8 x i16> %i.ni, ptr %.5124.i, align 2, !tbaa !76
  %i.nj = getelementptr inbounds nuw i8, ptr %.5124.i, i64 16 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1494125.i, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.1492126.i, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.1490127.i, i64 4
  %i.nn = getelementptr inbounds nuw i8, ptr %.1488128.i, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %.1486129.i, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %.1484130.i, i64 4
  %i.nq = getelementptr inbounds nuw i8, ptr %.1482131.i, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %.1480132.i, i64 4
  %i.ns = add nuw nsw i32 %.1478133.i, 1          ; 2 uses
  %exitcond313.not.i = icmp eq i32 %i.ns, %.sroa.speculated
  br i1 %exitcond313.not.i, label %._crit_edge135.i, label %.lr.ph134.i, !llvm.loop !370

._crit_edge135.i:                                 ; preds = %.lr.ph134.i, %middle.block570, %vec.epilog.middle.block609, %.preheader8.i
  %.5.lcssa.i = phi ptr [ %.4535.lcssa.i, %.preheader8.i ], [ %i.kw, %vec.epilog.middle.block609 ], [ %i.jw, %middle.block570 ], [ %i.nj, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 8 ; 3 uses
  %i.nt = icmp slt i64 %indvars.iv.next315.i, %invariant.op.i
  br i1 %i.nt, label %bb.d, label %.preheader7.loopexit.i, !llvm.loop !371

.preheader5.loopexit.i:                           ; preds = %._crit_edge179.i
  %i.nu = trunc nsw i64 %indvars.iv.next319.i to i32
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %.preheader5.loopexit.i, %.preheader7.i
  %.6.lcssa.i = phi ptr [ %.3534.lcssa.i, %.preheader7.i ], [ %.8.lcssa.i, %.preheader5.loopexit.i ] ; 8 uses
  %.2.lcssa.i = phi i32 [ %.1530.lcssa.i, %.preheader7.i ], [ %i.nu, %.preheader5.loopexit.i ] ; 6 uses
  %i.nv = or disjoint i32 %.2.lcssa.i, 1
  %i.nw = icmp slt i32 %i.nv, %.sroa.speculated60
  br i1 %i.nw, label %.lr.ph213.i, label %.preheader3.i

.lr.ph213.i:                                      ; preds = %.preheader5.i
  %invariant.gep216.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 6 uses
  %i.nx = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.nx, label %.lr.ph199.us.preheader.i, label %.lr.ph213.split.i

.lr.ph199.us.preheader.i:                         ; preds = %.lr.ph213.i
  %i.ny = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.nz = sext i32 %.2.lcssa.i to i64
  %.not63 = icmp eq i32 %i.ny, %.sroa.speculated
  %min.iters.check337 = icmp ult i32 %i.ax, 6
  %min.iters.check339 = icmp ult i32 %i.ax, 30
  %i.oa = and i64 %i.az, 12
  %n.vec341 = and i64 %i.az, 4294967280           ; 5 uses
  %i.ob = trunc nuw i64 %n.vec341 to i32
  %i.oc = shl i32 %i.ob, 1
  %i.od = shl nuw nsw i64 %n.vec341, 3            ; 3 uses
  %cmp.n356 = icmp eq i64 %n.vec341, %i.az
  %min.epilog.iters.check364 = icmp eq i64 %i.oa, 0
  %n.vec366 = and i64 %i.az, 4294967292           ; 4 uses
  %i.oe = trunc nuw i64 %n.vec366 to i32
  %i.of = shl i32 %i.oe, 1
  %i.og = shl nuw nsw i64 %n.vec366, 3            ; 3 uses
  %cmp.n381 = icmp eq i64 %n.vec366, %i.az
  %min.iters.check295 = icmp ult i32 %i.be, 3
  %min.iters.check297 = icmp ult i32 %i.be, 15
  %i.oh = and i64 %i.bg, 12
  %n.vec299 = and i64 %i.bg, 8589934576           ; 5 uses
  %i.oi = trunc i64 %n.vec299 to i32
  %i.oj = add i32 %i.ny, %i.oi
  %i.ok = shl nuw nsw i64 %n.vec299, 2            ; 3 uses
  %cmp.n310 = icmp eq i64 %i.bg, %n.vec299
  %min.epilog.iters.check318 = icmp eq i64 %i.oh, 0
  %n.vec320 = and i64 %i.bg, 8589934588           ; 4 uses
  %i.ol = trunc i64 %n.vec320 to i32
  %i.om = add i32 %i.ny, %i.ol
  %i.on = shl nuw nsw i64 %n.vec320, 2            ; 3 uses
  %cmp.n331 = icmp eq i64 %i.bg, %n.vec320
  br label %iter.check361

iter.check361:                                    ; preds = %._crit_edge209.us.i, %.lr.ph199.us.preheader.i
  %indvars.iv325.i = phi i64 [ %i.nz, %.lr.ph199.us.preheader.i ], [ %indvars.iv.next326.i, %._crit_edge209.us.i ] ; 2 uses
  %.9211.us.i = phi ptr [ %.6.lcssa.i, %.lr.ph199.us.preheader.i ], [ %.11.lcssa.us.i, %._crit_edge209.us.i ] ; 5 uses
  %i.oo = add nsw i64 %indvars.iv325.i, %i.ag     ; 2 uses
  %i.op = mul nsw i64 %i.oo, %i.aa
  %gep217.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.op ; 5 uses
  %i.oq = add nsw i64 %i.oo, 1
  %i.or = mul nsw i64 %i.oq, %i.aa
  %gep219.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.or ; 5 uses
  br i1 %min.iters.check337, label %vec.epilog.scalar.ph362.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %iter.check361
  br i1 %min.iters.check339, label %vec.epilog.ph365, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %i.os = getelementptr i8, ptr %gep219.us.i, i64 %i.od ; 2 uses
  %i.ot = getelementptr i8, ptr %gep217.us.i, i64 %i.od ; 2 uses
  %i.ou = getelementptr i8, ptr %.9211.us.i, i64 %i.od ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next354, %vector.body342 ] ; 2 uses
  %i.ov = shl i64 %index343, 3                    ; 3 uses
  %next.gep344 = getelementptr i8, ptr %gep219.us.i, i64 %i.ov
  %next.gep345 = getelementptr i8, ptr %gep217.us.i, i64 %i.ov
  %next.gep346 = getelementptr i8, ptr %.9211.us.i, i64 %i.ov
  %wide.vec347 = load <32 x i32>, ptr %next.gep345, align 4, !tbaa !74
  %wide.vec350 = load <32 x i32>, ptr %next.gep344, align 4, !tbaa !74
  %i.ow = lshr <32 x i32> %wide.vec347, splat (i32 16)
  %i.ox = shufflevector <32 x i32> %i.ow, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.oy = trunc nuw <32 x i32> %i.ox to <32 x i16>
  %i.oz = lshr <32 x i32> %wide.vec350, splat (i32 16)
  %i.pa = shufflevector <32 x i32> %i.oz, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.pb = trunc nuw <32 x i32> %i.pa to <32 x i16>
  %interleaved.vec353 = shufflevector <32 x i16> %i.oy, <32 x i16> %i.pb, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec353, ptr %next.gep346, align 2, !tbaa !76
  %index.next354 = add nuw i64 %index343, 16      ; 2 uses
  %i.pc = icmp eq i64 %index.next354, %n.vec341
  br i1 %i.pc, label %middle.block355, label %vector.body342, !llvm.loop !372

middle.block355:                                  ; preds = %vector.body342
  br i1 %cmp.n356, label %..preheader4_crit_edge.us.i, label %vec.epilog.iter.check363

vec.epilog.iter.check363:                         ; preds = %middle.block355
  br i1 %min.epilog.iters.check364, label %vec.epilog.scalar.ph362.preheader, label %vec.epilog.ph365, !prof !81

vec.epilog.ph365:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check363
  %vec.epilog.resume.val357 = phi i64 [ %n.vec341, %vec.epilog.iter.check363 ], [ 0, %vector.main.loop.iter.check338 ]
  %i.pd = getelementptr i8, ptr %gep219.us.i, i64 %i.og ; 2 uses
  %i.pe = getelementptr i8, ptr %gep217.us.i, i64 %i.og ; 2 uses
  %i.pf = getelementptr i8, ptr %.9211.us.i, i64 %i.og ; 2 uses
  br label %vec.epilog.vector.body367

vec.epilog.vector.body367:                        ; preds = %vec.epilog.vector.body367, %vec.epilog.ph365
  %index368 = phi i64 [ %vec.epilog.resume.val357, %vec.epilog.ph365 ], [ %index.next379, %vec.epilog.vector.body367 ] ; 2 uses
  %i.pg = shl i64 %index368, 3                    ; 3 uses
  %next.gep369 = getelementptr i8, ptr %gep219.us.i, i64 %i.pg
  %next.gep370 = getelementptr i8, ptr %gep217.us.i, i64 %i.pg
  %next.gep371 = getelementptr i8, ptr %.9211.us.i, i64 %i.pg
  %wide.vec372 = load <8 x i32>, ptr %next.gep370, align 4, !tbaa !74
  %wide.vec375 = load <8 x i32>, ptr %next.gep369, align 4, !tbaa !74
  %i.ph = shufflevector <8 x i32> %wide.vec372, <8 x i32> %wide.vec375, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.pi = lshr <16 x i32> %i.ph, splat (i32 16)
  %interleaved.vec378 = trunc nuw <16 x i32> %i.pi to <16 x i16>
  store <16 x i16> %interleaved.vec378, ptr %next.gep371, align 2, !tbaa !76
  %index.next379 = add nuw i64 %index368, 4       ; 2 uses
  %i.pj = icmp eq i64 %index.next379, %n.vec366
  br i1 %i.pj, label %vec.epilog.middle.block380, label %vec.epilog.vector.body367, !llvm.loop !373

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body367
  br i1 %cmp.n381, label %..preheader4_crit_edge.us.i, label %vec.epilog.scalar.ph362.preheader

vec.epilog.scalar.ph362.preheader:                ; preds = %iter.check361, %vec.epilog.iter.check363, %vec.epilog.middle.block380
  %.0461197.us.i.ph = phi i32 [ 0, %iter.check361 ], [ %i.oc, %vec.epilog.iter.check363 ], [ %i.of, %vec.epilog.middle.block380 ]
  %.0463196.us.i.ph = phi ptr [ %gep219.us.i, %iter.check361 ], [ %i.os, %vec.epilog.iter.check363 ], [ %i.pd, %vec.epilog.middle.block380 ]
  %.0465195.us.i.ph = phi ptr [ %gep217.us.i, %iter.check361 ], [ %i.ot, %vec.epilog.iter.check363 ], [ %i.pe, %vec.epilog.middle.block380 ]
  %.10194.us.i.ph = phi ptr [ %.9211.us.i, %iter.check361 ], [ %i.ou, %vec.epilog.iter.check363 ], [ %i.pf, %vec.epilog.middle.block380 ]
  br label %vec.epilog.scalar.ph362

vec.epilog.scalar.ph362:                          ; preds = %vec.epilog.scalar.ph362.preheader, %vec.epilog.scalar.ph362
  %.0461197.us.i = phi i32 [ %i.ps, %vec.epilog.scalar.ph362 ], [ %.0461197.us.i.ph, %vec.epilog.scalar.ph362.preheader ]
  %.0463196.us.i = phi ptr [ %i.pr, %vec.epilog.scalar.ph362 ], [ %.0463196.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.0465195.us.i = phi ptr [ %i.pq, %vec.epilog.scalar.ph362 ], [ %.0465195.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.10194.us.i = phi ptr [ %i.pp, %vec.epilog.scalar.ph362 ], [ %.10194.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %i.pk = load <2 x i32>, ptr %.0465195.us.i, align 4, !tbaa !74
  %i.pl = load <2 x i32>, ptr %.0463196.us.i, align 4, !tbaa !74
  %i.pm = shufflevector <2 x i32> %i.pk, <2 x i32> %i.pl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pn = lshr <4 x i32> %i.pm, splat (i32 16)
  %i.po = trunc nuw <4 x i32> %i.pn to <4 x i16>
  store <4 x i16> %i.po, ptr %.10194.us.i, align 2, !tbaa !76
  %i.pp = getelementptr inbounds nuw i8, ptr %.10194.us.i, i64 8 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.0465195.us.i, i64 8 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0463196.us.i, i64 8 ; 2 uses
  %i.ps = add nuw nsw i32 %.0461197.us.i, 2       ; 2 uses
  %i.pt = or disjoint i32 %i.ps, 1
  %i.pu = icmp slt i32 %i.pt, %.sroa.speculated
  br i1 %i.pu, label %vec.epilog.scalar.ph362, label %..preheader4_crit_edge.us.i, !llvm.loop !374

.lr.ph208.us.i:                                   ; preds = %.lr.ph208.us.i.preheader, %.lr.ph208.us.i
  %.1462207.us.i = phi i32 [ %i.qf, %.lr.ph208.us.i ], [ %.1462207.us.i.ph, %.lr.ph208.us.i.preheader ]
  %.1464206.us.i = phi ptr [ %i.qe, %.lr.ph208.us.i ], [ %.1464206.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.1466205.us.i = phi ptr [ %i.qd, %.lr.ph208.us.i ], [ %.1466205.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.11204.us.i = phi ptr [ %i.qc, %.lr.ph208.us.i ], [ %.11204.us.i.ph, %.lr.ph208.us.i.preheader ] ; 3 uses
  %i.pv = load i32, ptr %.1466205.us.i, align 4, !tbaa !74
  %i.pw = lshr i32 %i.pv, 16
  %i.px = trunc nuw i32 %i.pw to i16
  store i16 %i.px, ptr %.11204.us.i, align 2, !tbaa !76
  %i.py = load i32, ptr %.1464206.us.i, align 4, !tbaa !74
  %i.pz = lshr i32 %i.py, 16
  %i.qa = trunc nuw i32 %i.pz to i16
  %i.qb = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 2
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !76
  %i.qc = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 4 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.1466205.us.i, i64 4
  %i.qe = getelementptr inbounds nuw i8, ptr %.1464206.us.i, i64 4
  %i.qf = add nuw nsw i32 %.1462207.us.i, 1       ; 2 uses
  %exitcond324.not.i = icmp eq i32 %i.qf, %.sroa.speculated
  br i1 %exitcond324.not.i, label %._crit_edge209.us.i, label %.lr.ph208.us.i, !llvm.loop !375

._crit_edge209.us.i:                              ; preds = %.lr.ph208.us.i, %middle.block309, %vec.epilog.middle.block330, %..preheader4_crit_edge.us.i
  %.11.lcssa.us.i = phi ptr [ %.lcssa236, %..preheader4_crit_edge.us.i ], [ %i.qq, %vec.epilog.middle.block330 ], [ %i.qj, %middle.block309 ], [ %i.qc, %.lr.ph208.us.i ] ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 2 ; 3 uses
  %i.qg = icmp slt i64 %indvars.iv.next326.i, %invariant.op383.i
  br i1 %i.qg, label %iter.check361, label %.preheader3.loopexit.i, !llvm.loop !376

..preheader4_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph362, %vec.epilog.middle.block380, %middle.block355
  %.lcssa236 = phi ptr [ %i.pf, %vec.epilog.middle.block380 ], [ %i.ou, %middle.block355 ], [ %i.pp, %vec.epilog.scalar.ph362 ] ; 6 uses
  %.lcssa235 = phi ptr [ %i.pe, %vec.epilog.middle.block380 ], [ %i.ot, %middle.block355 ], [ %i.pq, %vec.epilog.scalar.ph362 ] ; 5 uses
  %.lcssa234 = phi ptr [ %i.pd, %vec.epilog.middle.block380 ], [ %i.os, %middle.block355 ], [ %i.pr, %vec.epilog.scalar.ph362 ] ; 5 uses
  br i1 %.not63, label %._crit_edge209.us.i, label %iter.check315

iter.check315:                                    ; preds = %..preheader4_crit_edge.us.i
  br i1 %min.iters.check295, label %.lr.ph208.us.i.preheader, label %vector.main.loop.iter.check296

vector.main.loop.iter.check296:                   ; preds = %iter.check315
  br i1 %min.iters.check297, label %vec.epilog.ph319, label %vector.ph298

vector.ph298:                                     ; preds = %vector.main.loop.iter.check296
  %i.qh = getelementptr i8, ptr %.lcssa234, i64 %i.ok
  %i.qi = getelementptr i8, ptr %.lcssa235, i64 %i.ok
  %i.qj = getelementptr i8, ptr %.lcssa236, i64 %i.ok ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next308, %vector.body300 ] ; 2 uses
  %i.qk = shl i64 %index301, 2                    ; 3 uses
  %next.gep302 = getelementptr i8, ptr %.lcssa234, i64 %i.qk
  %next.gep303 = getelementptr i8, ptr %.lcssa235, i64 %i.qk
  %next.gep304 = getelementptr i8, ptr %.lcssa236, i64 %i.qk
  %wide.load305 = load <16 x i32>, ptr %next.gep303, align 4, !tbaa !74
  %wide.load306 = load <16 x i32>, ptr %next.gep302, align 4, !tbaa !74
  %i.ql = shufflevector <16 x i32> %wide.load305, <16 x i32> %wide.load306, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.qm = lshr <32 x i32> %i.ql, splat (i32 16)
  %interleaved.vec307 = trunc nuw <32 x i32> %i.qm to <32 x i16>
  store <32 x i16> %interleaved.vec307, ptr %next.gep304, align 2, !tbaa !76
  %index.next308 = add nuw i64 %index301, 16      ; 2 uses
  %i.qn = icmp eq i64 %index.next308, %n.vec299
  br i1 %i.qn, label %middle.block309, label %vector.body300, !llvm.loop !377

middle.block309:                                  ; preds = %vector.body300
  br i1 %cmp.n310, label %._crit_edge209.us.i, label %vec.epilog.iter.check317

vec.epilog.iter.check317:                         ; preds = %middle.block309
  br i1 %min.epilog.iters.check318, label %.lr.ph208.us.i.preheader, label %vec.epilog.ph319, !prof !81

vec.epilog.ph319:                                 ; preds = %vector.main.loop.iter.check296, %vec.epilog.iter.check317
  %vec.epilog.resume.val311 = phi i64 [ %n.vec299, %vec.epilog.iter.check317 ], [ 0, %vector.main.loop.iter.check296 ]
  %i.qo = getelementptr i8, ptr %.lcssa234, i64 %i.on
  %i.qp = getelementptr i8, ptr %.lcssa235, i64 %i.on
  %i.qq = getelementptr i8, ptr %.lcssa236, i64 %i.on ; 2 uses
  br label %vec.epilog.vector.body321

vec.epilog.vector.body321:                        ; preds = %vec.epilog.vector.body321, %vec.epilog.ph319
  %index322 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph319 ], [ %index.next329, %vec.epilog.vector.body321 ] ; 2 uses
  %i.qr = shl i64 %index322, 2                    ; 3 uses
  %next.gep323 = getelementptr i8, ptr %.lcssa234, i64 %i.qr
  %next.gep324 = getelementptr i8, ptr %.lcssa235, i64 %i.qr
  %next.gep325 = getelementptr i8, ptr %.lcssa236, i64 %i.qr
  %wide.load326 = load <4 x i32>, ptr %next.gep324, align 4, !tbaa !74
  %wide.load327 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !74
  %i.qs = shufflevector <4 x i32> %wide.load326, <4 x i32> %wide.load327, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qt = lshr <8 x i32> %i.qs, splat (i32 16)
  %interleaved.vec328 = trunc nuw <8 x i32> %i.qt to <8 x i16>
  store <8 x i16> %interleaved.vec328, ptr %next.gep325, align 2, !tbaa !76
  %index.next329 = add nuw i64 %index322, 4       ; 2 uses
  %i.qu = icmp eq i64 %index.next329, %n.vec320
  br i1 %i.qu, label %vec.epilog.middle.block330, label %vec.epilog.vector.body321, !llvm.loop !378

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body321
  br i1 %cmp.n331, label %._crit_edge209.us.i, label %.lr.ph208.us.i.preheader

.lr.ph208.us.i.preheader:                         ; preds = %iter.check315, %vec.epilog.iter.check317, %vec.epilog.middle.block330
  %.1462207.us.i.ph = phi i32 [ %i.ny, %iter.check315 ], [ %i.oj, %vec.epilog.iter.check317 ], [ %i.om, %vec.epilog.middle.block330 ]
  %.1464206.us.i.ph = phi ptr [ %.lcssa234, %iter.check315 ], [ %i.qh, %vec.epilog.iter.check317 ], [ %i.qo, %vec.epilog.middle.block330 ]
  %.1466205.us.i.ph = phi ptr [ %.lcssa235, %iter.check315 ], [ %i.qi, %vec.epilog.iter.check317 ], [ %i.qp, %vec.epilog.middle.block330 ]
  %.11204.us.i.ph = phi ptr [ %.lcssa236, %iter.check315 ], [ %i.qj, %vec.epilog.iter.check317 ], [ %i.qq, %vec.epilog.middle.block330 ]
  br label %.lr.ph208.us.i

.lr.ph213.split.i:                                ; preds = %.lr.ph213.i
  %i.qv = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.qv, label %iter.check403, label %.preheader4.preheader.i

.preheader4.preheader.i:                          ; preds = %.lr.ph213.split.i
  %10 = sub i32 %9, %.2.lcssa.i
  %11 = and i32 %10, -2
  %12 = add i32 %.2.lcssa.i, 2
  %i.qw = add i32 %12, %11
  br label %.preheader3.i

iter.check403:                                    ; preds = %.lr.ph213.split.i
  %i.qx = sext i32 %.2.lcssa.i to i64             ; 7 uses
  %i.qy = add nsw i64 %i.qx, 2
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op383.i, i64 %i.qy)
  %i.qz = xor i64 %i.qx, -1
  %i.ra = add i64 %smax, %i.qz                    ; 3 uses
  %i.rb = lshr i64 %i.ra, 1
  %i.rc = add nuw i64 %i.rb, 1                    ; 5 uses
  %min.iters.check386 = icmp ugt i64 %i.ra, 5
  %or.cond = select i1 %min.iters.check386, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.main.loop.iter.check387, label %._crit_edge209.us232.i.preheader

vector.main.loop.iter.check387:                   ; preds = %iter.check403
  %min.iters.check388 = icmp ult i64 %i.ra, 30
  br i1 %min.iters.check388, label %vec.epilog.ph407, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.rd = and i64 %i.rc, 12
  %n.vec390 = and i64 %i.rc, -16                  ; 5 uses
  %i.re = shl i64 %n.vec390, 1
  %i.rf = add i64 %i.re, %i.qx                    ; 2 uses
  %i.rg = shl i64 %n.vec390, 2
  %i.rh = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rg ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.qx
  %invariant.gep708 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ag
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next398, %vector.body391 ] ; 3 uses
  %i.ri = shl i64 %index392, 2
  %next.gep393 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.ri
  %.idx = shl i64 %index392, 3
  %gep709 = getelementptr i8, ptr %invariant.gep708, i64 %.idx
  %wide.vec394 = load <32 x i32>, ptr %gep709, align 4, !tbaa !74
  %i.rj = lshr <32 x i32> %wide.vec394, splat (i32 16)
  %interleaved.vec397 = trunc nuw <32 x i32> %i.rj to <32 x i16>
  store <32 x i16> %interleaved.vec397, ptr %next.gep393, align 2, !tbaa !76
  %index.next398 = add nuw i64 %index392, 16      ; 2 uses
  %i.rk = icmp eq i64 %index.next398, %n.vec390
  br i1 %i.rk, label %middle.block399, label %vector.body391, !llvm.loop !379

middle.block399:                                  ; preds = %vector.body391
  %cmp.n400 = icmp eq i64 %i.rc, %n.vec390
  br i1 %cmp.n400, label %.preheader3.loopexit258.i, label %vec.epilog.iter.check405

vec.epilog.iter.check405:                         ; preds = %middle.block399
  %min.epilog.iters.check406 = icmp eq i64 %i.rd, 0
  br i1 %min.epilog.iters.check406, label %._crit_edge209.us232.i.preheader, label %vec.epilog.ph407, !prof !81

vec.epilog.ph407:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check405
  %vec.epilog.resume.val401 = phi i64 [ %n.vec390, %vec.epilog.iter.check405 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec408 = and i64 %i.rc, -4                   ; 4 uses
  %i.rl = shl i64 %n.vec408, 1
  %i.rm = add i64 %i.rl, %i.qx                    ; 2 uses
  %i.rn = shl i64 %n.vec408, 2
  %i.ro = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rn ; 2 uses
  %invariant.gep710 = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.qx
  %invariant.gep711 = getelementptr [4 x i8], ptr %invariant.gep710, i64 %i.ag
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph407
  %index410 = phi i64 [ %vec.epilog.resume.val401, %vec.epilog.ph407 ], [ %index.next416, %vec.epilog.vector.body409 ] ; 3 uses
  %i.rp = shl i64 %index410, 2
  %next.gep411 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rp
  %.idx623 = shl i64 %index410, 3
  %gep712 = getelementptr i8, ptr %invariant.gep711, i64 %.idx623
  %wide.vec412 = load <8 x i32>, ptr %gep712, align 4, !tbaa !74
  %i.rq = lshr <8 x i32> %wide.vec412, splat (i32 16)
  %interleaved.vec415 = trunc nuw <8 x i32> %i.rq to <8 x i16>
  store <8 x i16> %interleaved.vec415, ptr %next.gep411, align 2, !tbaa !76
  %index.next416 = add nuw i64 %index410, 4       ; 2 uses
  %i.rr = icmp eq i64 %index.next416, %n.vec408
  br i1 %i.rr, label %vec.epilog.middle.block417, label %vec.epilog.vector.body409, !llvm.loop !380

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body409
  %cmp.n418 = icmp eq i64 %i.rc, %n.vec408
  br i1 %cmp.n418, label %.preheader3.loopexit258.i, label %._crit_edge209.us232.i.preheader

._crit_edge209.us232.i.preheader:                 ; preds = %iter.check403, %vec.epilog.iter.check405, %vec.epilog.middle.block417
  %indvars.iv321.i.ph = phi i64 [ %i.qx, %iter.check403 ], [ %i.rf, %vec.epilog.iter.check405 ], [ %i.rm, %vec.epilog.middle.block417 ]
  %.9211.us223.i.ph = phi ptr [ %.6.lcssa.i, %iter.check403 ], [ %i.rh, %vec.epilog.iter.check405 ], [ %i.ro, %vec.epilog.middle.block417 ]
  br label %._crit_edge209.us232.i

._crit_edge209.us232.i:                           ; preds = %._crit_edge209.us232.i.preheader, %._crit_edge209.us232.i
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %._crit_edge209.us232.i ], [ %indvars.iv321.i.ph, %._crit_edge209.us232.i.preheader ] ; 2 uses
  %.9211.us223.i = phi ptr [ %i.rs, %._crit_edge209.us232.i ], [ %.9211.us223.i.ph, %._crit_edge209.us232.i.preheader ] ; 3 uses
  %i.rs = getelementptr i8, ptr %.9211.us223.i, i64 4 ; 2 uses
  %i.rt = add nsw i64 %indvars.iv321.i, %i.ag     ; 2 uses
  %i.ru = add nsw i64 %i.rt, 1
  %i.rv = mul nsw i64 %i.ru, %i.aa
  %gep219.us225.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rv
  %.pre333.i = load i32, ptr %gep219.us225.i, align 4, !tbaa !74
  %i.rw = mul nsw i64 %i.rt, %i.aa
  %gep217.us224.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rw
  %.pre.i = load i32, ptr %gep217.us224.i, align 4, !tbaa !74
  %i.rx = lshr i32 %.pre.i, 16
  %i.ry = trunc nuw i32 %i.rx to i16
  store i16 %i.ry, ptr %.9211.us223.i, align 2, !tbaa !76
  %i.rz = lshr i32 %.pre333.i, 16
  %i.sa = trunc nuw i32 %i.rz to i16
  %i.sb = getelementptr inbounds nuw i8, ptr %.9211.us223.i, i64 2
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !76
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 2 ; 3 uses
  %i.sc = icmp slt i64 %indvars.iv.next322.i, %invariant.op383.i
  br i1 %i.sc, label %._crit_edge209.us232.i, label %.preheader3.loopexit258.i, !llvm.loop !381

bb.e:                                             ; preds = %._crit_edge179.i, %.lr.ph183.i
  %indvars.iv318.i = phi i64 [ %i.ie, %.lr.ph183.i ], [ %indvars.iv.next319.i, %._crit_edge179.i ] ; 2 uses
  %.6181.i = phi ptr [ %.3534.lcssa.i, %.lr.ph183.i ], [ %.8.lcssa.i, %._crit_edge179.i ] ; 6 uses
  %i.sd = add nsw i64 %indvars.iv318.i, %i.ag     ; 4 uses
  %i.se = mul nsw i64 %i.sd, %i.aa
  %gep187.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.se ; 6 uses
  %i.sf = add nsw i64 %i.sd, 1
  %i.sg = mul nsw i64 %i.sf, %i.aa
  %gep189.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sg ; 6 uses
  %i.sh = add nsw i64 %i.sd, 2
  %i.si = mul nsw i64 %i.sh, %i.aa
  %gep191.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.si ; 6 uses
  %i.sj = add nsw i64 %i.sd, 3
  %i.sk = mul nsw i64 %i.sj, %i.aa
  %gep193.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sk ; 6 uses
  br i1 %i.ic, label %iter.check509, label %.preheader6.i

iter.check509:                                    ; preds = %bb.e
  br i1 %min.iters.check475, label %.lr.ph165.i.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %iter.check509
  br i1 %min.iters.check477, label %vec.epilog.ph513, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.sl = getelementptr i8, ptr %gep193.i, i64 %i.ii ; 2 uses
  %i.sm = getelementptr i8, ptr %gep191.i, i64 %i.ii ; 2 uses
  %i.sn = getelementptr i8, ptr %gep189.i, i64 %i.ii ; 2 uses
  %i.so = getelementptr i8, ptr %gep187.i, i64 %i.ii ; 2 uses
  %i.sp = getelementptr i8, ptr %.6181.i, i64 %i.ij ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next500, %vector.body480 ] ; 3 uses
  %i.sq = shl i64 %index481, 3                    ; 4 uses
  %next.gep482 = getelementptr i8, ptr %gep193.i, i64 %i.sq
  %next.gep483 = getelementptr i8, ptr %gep191.i, i64 %i.sq
  %next.gep484 = getelementptr i8, ptr %gep189.i, i64 %i.sq
  %next.gep485 = getelementptr i8, ptr %gep187.i, i64 %i.sq
  %i.sr = shl i64 %index481, 4
  %next.gep486 = getelementptr i8, ptr %.6181.i, i64 %i.sr
  %wide.vec487 = load <32 x i32>, ptr %next.gep485, align 4, !tbaa !74
  %wide.vec490 = load <32 x i32>, ptr %next.gep484, align 4, !tbaa !74
  %wide.vec493 = load <32 x i32>, ptr %next.gep483, align 4, !tbaa !74
  %wide.vec496 = load <32 x i32>, ptr %next.gep482, align 4, !tbaa !74
  %i.ss = shufflevector <32 x i32> %wide.vec487, <32 x i32> %wide.vec490, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.st = lshr <64 x i32> %i.ss, splat (i32 16)
  %i.su = trunc nuw <64 x i32> %i.st to <64 x i16>
  %i.sv = shufflevector <32 x i32> %wide.vec493, <32 x i32> %wide.vec496, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.sw = lshr <64 x i32> %i.sv, splat (i32 16)
  %i.sx = trunc nuw <64 x i32> %i.sw to <64 x i16>
  %interleaved.vec499 = shufflevector <64 x i16> %i.su, <64 x i16> %i.sx, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec499, ptr %next.gep486, align 2, !tbaa !76
  %index.next500 = add nuw i64 %index481, 16      ; 2 uses
  %i.sy = icmp eq i64 %index.next500, %n.vec479
  br i1 %i.sy, label %middle.block501, label %vector.body480, !llvm.loop !382

middle.block501:                                  ; preds = %vector.body480
  br i1 %cmp.n502, label %.preheader6.i, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block501
  br i1 %min.epilog.iters.check512, label %.lr.ph165.i.preheader, label %vec.epilog.ph513, !prof !81

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check511
  %vec.epilog.resume.val503 = phi i64 [ %n.vec479, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check476 ]
  %i.sz = getelementptr i8, ptr %gep193.i, i64 %i.im ; 2 uses
  %i.ta = getelementptr i8, ptr %gep191.i, i64 %i.im ; 2 uses
  %i.tb = getelementptr i8, ptr %gep189.i, i64 %i.im ; 2 uses
  %i.tc = getelementptr i8, ptr %gep187.i, i64 %i.im ; 2 uses
  %i.td = getelementptr i8, ptr %.6181.i, i64 %i.in ; 2 uses
  br label %vec.epilog.vector.body515

vec.epilog.vector.body515:                        ; preds = %vec.epilog.vector.body515, %vec.epilog.ph513
  %index516 = phi i64 [ %vec.epilog.resume.val503, %vec.epilog.ph513 ], [ %index.next535, %vec.epilog.vector.body515 ] ; 3 uses
  %i.te = shl i64 %index516, 3                    ; 4 uses
  %next.gep517 = getelementptr i8, ptr %gep193.i, i64 %i.te
  %next.gep518 = getelementptr i8, ptr %gep191.i, i64 %i.te
  %next.gep519 = getelementptr i8, ptr %gep189.i, i64 %i.te
  %next.gep520 = getelementptr i8, ptr %gep187.i, i64 %i.te
  %i.tf = shl i64 %index516, 4
  %next.gep521 = getelementptr i8, ptr %.6181.i, i64 %i.tf
  %wide.vec522 = load <8 x i32>, ptr %next.gep520, align 4, !tbaa !74
  %wide.vec525 = load <8 x i32>, ptr %next.gep519, align 4, !tbaa !74
  %wide.vec528 = load <8 x i32>, ptr %next.gep518, align 4, !tbaa !74
  %wide.vec531 = load <8 x i32>, ptr %next.gep517, align 4, !tbaa !74
  %i.tg = shufflevector <8 x i32> %wide.vec522, <8 x i32> %wide.vec525, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.th = shufflevector <8 x i32> %wide.vec528, <8 x i32> %wide.vec531, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.ti = shufflevector <16 x i32> %i.tg, <16 x i32> %i.th, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.tj = lshr <32 x i32> %i.ti, splat (i32 16)
  %interleaved.vec534 = trunc nuw <32 x i32> %i.tj to <32 x i16>
  store <32 x i16> %interleaved.vec534, ptr %next.gep521, align 2, !tbaa !76
  %index.next535 = add nuw i64 %index516, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next535, %n.vec514
end_hunk_10
begin_hunk_11_@_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  store <2 x i64> %i.om, ptr %i.oj, align 16, !tbaa !20
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.on = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 16
  %i.oo = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i.us)
  %i.op = bitcast <16 x bfloat> %i.oo to <4 x i64> ; 2 uses
  %i.oq = shufflevector <4 x i64> %i.op, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oq, ptr %i.on, align 16, !tbaa !20
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.os = shufflevector <4 x i64> %i.op, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.os, ptr %i.or, align 16, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i32 %i.i, label %bb.p [
    i32 4, label %bb.k
    i32 1, label %bb.n
  ]

bb.k:                                             ; preds = %.split.us._crit_edge, %bb.j, %bb.g
  %.pre-phi1034 = phi <16 x bfloat> [ %.pre1033, %.split.us._crit_edge ], [ %.pre-phi, %bb.j ], [ %i.og, %bb.g ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %.0711856.us, i64 %i.m ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx743 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx744 ; 2 uses
  %i.ow = bitcast <16 x bfloat> %.pre-phi1034 to <4 x i64> ; 2 uses
  %i.ox = extractelement <4 x i64> %i.ow, i64 0
  store i64 %i.ox, ptr %.0711856.us, align 1, !tbaa !20
  %i.oy = bitcast <16 x bfloat> %.pre-phi1034 to <32 x i8>
  %i.oz = shufflevector <32 x i8> %i.oy, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pa = bitcast <16 x i8> %i.oz to <2 x i64>
  %i.pb = extractelement <2 x i64> %i.pa, i64 1
  store i64 %i.pb, ptr %i.ot, align 1, !tbaa !20
  %i.pc = extractelement <4 x i64> %i.ow, i64 2
  store i64 %i.pc, ptr %i.ou, align 1, !tbaa !20
  %i.pd = bitcast <16 x bfloat> %.pre-phi1034 to <32 x i8>
  %i.pe = shufflevector <32 x i8> %i.pd, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pf = bitcast <16 x i8> %i.pe to <2 x i64>
  %i.pg = extractelement <2 x i64> %i.pf, i64 1
  store i64 %i.pg, ptr %i.ov, align 1, !tbaa !20
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ph = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 8
  %i.pi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i.us) ; 3 uses
  %i.pj = bitcast <16 x bfloat> %i.pi to <4 x i64> ; 2 uses
  %i.pk = extractelement <4 x i64> %i.pj, i64 0
  store i64 %i.pk, ptr %i.ph, align 1, !tbaa !20
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.pm = bitcast <16 x bfloat> %i.pi to <32 x i8>
  %i.pn = shufflevector <32 x i8> %i.pm, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.po = bitcast <16 x i8> %i.pn to <2 x i64>
  %i.pp = extractelement <2 x i64> %i.po, i64 1
  store i64 %i.pp, ptr %i.pl, align 1, !tbaa !20
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.pr = extractelement <4 x i64> %i.pj, i64 2
  store i64 %i.pr, ptr %i.pq, align 1, !tbaa !20
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pt = bitcast <16 x bfloat> %i.pi to <32 x i8>
  %i.pu = shufflevector <32 x i8> %i.pt, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pv = bitcast <16 x i8> %i.pu to <2 x i64>
  %i.pw = extractelement <2 x i64> %i.pv, i64 1
  store i64 %i.pw, ptr %i.ps, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.af, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %.split.us
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.0711856.us, i64 %i.m ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx743 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx744 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx747 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx748 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx749 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx750 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx751 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx752 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx753 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx754 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx755 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx756 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx757 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 %.idx758 ; 2 uses
  %i.qm = bitcast <16 x float> %.0.i792657.us to <32 x i16> ; 16 uses
  %i.qn = extractelement <32 x i16> %i.qm, i64 1
  store i16 %i.qn, ptr %.0711856.us, align 2, !tbaa !76
  %i.qo = extractelement <32 x i16> %i.qm, i64 3
  store i16 %i.qo, ptr %i.px, align 2, !tbaa !76
  %i.qp = extractelement <32 x i16> %i.qm, i64 5
  store i16 %i.qp, ptr %i.py, align 2, !tbaa !76
  %i.qq = extractelement <32 x i16> %i.qm, i64 7
  store i16 %i.qq, ptr %i.pz, align 2, !tbaa !76
  %i.qr = extractelement <32 x i16> %i.qm, i64 9
  store i16 %i.qr, ptr %i.qa, align 2, !tbaa !76
  %i.qs = extractelement <32 x i16> %i.qm, i64 11
  store i16 %i.qs, ptr %i.qb, align 2, !tbaa !76
  %i.qt = extractelement <32 x i16> %i.qm, i64 13
  store i16 %i.qt, ptr %i.qc, align 2, !tbaa !76
  %i.qu = extractelement <32 x i16> %i.qm, i64 15
  store i16 %i.qu, ptr %i.qd, align 2, !tbaa !76
  %i.qv = extractelement <32 x i16> %i.qm, i64 17
  store i16 %i.qv, ptr %i.qe, align 2, !tbaa !76
  %i.qw = extractelement <32 x i16> %i.qm, i64 19
  store i16 %i.qw, ptr %i.qf, align 2, !tbaa !76
  %i.qx = extractelement <32 x i16> %i.qm, i64 21
  store i16 %i.qx, ptr %i.qg, align 2, !tbaa !76
  %i.qy = extractelement <32 x i16> %i.qm, i64 23
  store i16 %i.qy, ptr %i.qh, align 2, !tbaa !76
  %i.qz = extractelement <32 x i16> %i.qm, i64 25
  store i16 %i.qz, ptr %i.qi, align 2, !tbaa !76
  %i.ra = extractelement <32 x i16> %i.qm, i64 27
  store i16 %i.ra, ptr %i.qj, align 2, !tbaa !76
  %i.rb = extractelement <32 x i16> %i.qm, i64 29
  store i16 %i.rb, ptr %i.qk, align 2, !tbaa !76
  %i.rc = extractelement <32 x i16> %i.qm, i64 31
  store i16 %i.rc, ptr %i.ql, align 2, !tbaa !76
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.rd = bitcast <16 x float> %.0.i.us to <32 x i16> ; 16 uses
  %i.re = extractelement <32 x i16> %i.rd, i64 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.0711856.us, i64 2
  store i16 %i.re, ptr %i.rf, align 2, !tbaa !76
  %i.rg = extractelement <32 x i16> %i.rd, i64 3
  %i.rh = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  store i16 %i.rg, ptr %i.rh, align 2, !tbaa !76
  %i.ri = extractelement <32 x i16> %i.rd, i64 5
  %i.rj = getelementptr inbounds nuw i8, ptr %i.py, i64 2
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !76
  %i.rk = extractelement <32 x i16> %i.rd, i64 7
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !76
  %i.rm = extractelement <32 x i16> %i.rd, i64 9
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qa, i64 2
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !76
  %i.ro = extractelement <32 x i16> %i.rd, i64 11
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !76
  %i.rq = extractelement <32 x i16> %i.rd, i64 13
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qc, i64 2
  store i16 %i.rq, ptr %i.rr, align 2, !tbaa !76
  %i.rs = extractelement <32 x i16> %i.rd, i64 15
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  store i16 %i.rs, ptr %i.rt, align 2, !tbaa !76
  %i.ru = extractelement <32 x i16> %i.rd, i64 17
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !76
  %i.rw = extractelement <32 x i16> %i.rd, i64 19
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  store i16 %i.rw, ptr %i.rx, align 2, !tbaa !76
  %i.ry = extractelement <32 x i16> %i.rd, i64 21
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  store i16 %i.ry, ptr %i.rz, align 2, !tbaa !76
  %i.sa = extractelement <32 x i16> %i.rd, i64 23
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !76
  %i.sc = extractelement <32 x i16> %i.rd, i64 25
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !76
  %i.se = extractelement <32 x i16> %i.rd, i64 27
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !76
  %i.sg = extractelement <32 x i16> %i.rd, i64 29
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !76
  %i.si = extractelement <32 x i16> %i.rd, i64 31
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  store i16 %i.si, ptr %i.sj, align 2, !tbaa !76
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.j, %bb.g, %.split.us, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.us
  %i.sk = getelementptr inbounds [2 x i8], ptr %.0711856.us, i64 %i.ah
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.1712.us = phi ptr [ %.0711856.us, %bb.c ], [ %i.sk, %bb.p ]
  br i1 %i.dt, label %bb.c, label %bb.r, !llvm.loop !655

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next954 = add nuw nsw i64 %indvars.iv953, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next954, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit766.us, !llvm.loop !656

._crit_edge.us:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 16 ; 3 uses
  %i.sl = or disjoint i64 %indvars.iv.next957, 15
  %i.sm = icmp samesign ult i64 %i.sl, %i.ai
  br i1 %i.sm, label %.lr.ph862.split.us, label %.preheader850.loopexit, !llvm.loop !657

.lr.ph862.split:                                  ; preds = %.lr.ph862
  %i.sn = and i32 %3, 2147483632
  br label %.preheader850

.preheader850.loopexit:                           ; preds = %._crit_edge.us
  %i.so = trunc nuw nsw i64 %indvars.iv.next957 to i32
  br label %.preheader850

.preheader850:                                    ; preds = %.lr.ph862.split, %.preheader850.loopexit, %bb.a
  %.0700.lcssa = phi i32 [ 0, %bb.a ], [ %i.sn, %.lr.ph862.split ], [ %i.so, %.preheader850.loopexit ] ; 5 uses
  %i.sp = or disjoint i32 %.0700.lcssa, 7
  %i.sq = icmp slt i32 %i.sp, %3
  br i1 %i.sq, label %.lr.ph876, label %.preheader849

.lr.ph876:                                        ; preds = %.preheader850
  %.not733 = icmp eq ptr %.0.val, null
  %i.sr = sext i32 %2 to i64
  %i.ss = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.sr
  %i.st = icmp sgt i32 %5, 0
  %i.su = shl nsw i32 %5, 3
  %i.sv = sext i32 %i.su to i64
  %i.sw = sext i32 %factor.op.mul859 to i64
  %i.sx = mul nsw i32 %5, 24
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ta = shl nsw i32 %5, 5
  %i.tb = sext i32 %i.ta to i64                   ; 12 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx735 = shl i64 %i.m, 2
  %.idx736 = mul i64 %i.m, 6
  %.idx737 = shl i64 %i.m, 3
  %.idx738 = mul i64 %i.m, 10
  %.idx739 = mul i64 %i.m, 12
  %.idx740 = mul i64 %i.m, 14
  %i.td = mul nsw i32 %i.i, %i.e
  %i.te = sext i32 %i.td to i64
  br i1 %i.st, label %.lr.ph876.split.us.preheader, label %.lr.ph876.split

.lr.ph876.split.us.preheader:                     ; preds = %.lr.ph876
  %i.tf = sext i32 %.0700.lcssa to i64
  %i.tg = sext i32 %3 to i64
  %wide.trip.count970 = zext nneg i32 %5 to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ti = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.tj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.tl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.tm = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %invariant.op = add nsw i64 %i.tg, -7
  br label %.lr.ph876.split.us

.lr.ph876.split.us:                               ; preds = %.lr.ph876.split.us.preheader, %._crit_edge.us880
  %indvars.iv972 = phi i64 [ %i.tf, %.lr.ph876.split.us.preheader ], [ %indvars.iv.next973, %._crit_edge.us880 ] ; 4 uses
  br i1 %.not733, label %.lr.ph.us879, label %bb.s

bb.s:                                             ; preds = %.lr.ph876.split.us
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %indvars.iv972
  %i.to = load <8 x float>, ptr %i.tn, align 1, !tbaa !20
  br label %.lr.ph.us879

.lr.ph.us879:                                     ; preds = %bb.s, %.lr.ph876.split.us
  %i.tp = phi fast <8 x float> [ %i.to, %bb.s ], [ zeroinitializer, %.lr.ph876.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.tq = trunc nsw i64 %indvars.iv972 to i32
  %factor.op.mul.reass.us878 = mul i32 %factor.op.mul859, %i.tq
  %i.tr = sext i32 %factor.op.mul.reass.us878 to i64
  %i.ts = trunc i64 %indvars.iv972 to i32
  %i.tt = add i32 %2, %i.ts
  %i.tu = sdiv i32 %i.tt, %i.i
  %i.tv = sext i32 %i.tu to i64
  br label %_ZN4ncnn3MatD2Ev.exit765.us

_ZN4ncnn3MatD2Ev.exit765.us:                      ; preds = %.lr.ph.us879, %bb.ad
  %indvars.iv967 = phi i64 [ 0, %.lr.ph.us879 ], [ %indvars.iv.next968, %bb.ad ] ; 3 uses
  %i.tw = load ptr, ptr %0, align 8, !tbaa !9
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.tr
  %.idx1066 = shl nuw nsw i64 %indvars.iv967, 5
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.idx1066 ; 5 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.sv ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.sw ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.sy ; 2 uses
  %i.uc = load <8 x float>, ptr %i.ty, align 32, !tbaa !20
  %i.ud = load <8 x float>, ptr %i.tz, align 32, !tbaa !20 ; 2 uses
  %i.ue = load <8 x float>, ptr %i.ua, align 32, !tbaa !20 ; 2 uses
  %i.uf = load <8 x float>, ptr %i.ub, align 32, !tbaa !20
  %i.ug = fadd fast <8 x float> %i.ud, %i.uc
  %i.uh = fadd fast <8 x float> %i.ug, %i.ue
  %i.ui = fsub fast <8 x float> %i.ud, %i.ue
  %i.uj = fadd fast <8 x float> %i.ui, %i.uf
  store <8 x float> %i.uh, ptr %i.b, align 32, !tbaa !20
  store <8 x float> %i.uj, ptr %i.sz, align 32, !tbaa !20
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tb ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.tb ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.tb ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.tb ; 2 uses
  %i.uo = load <8 x float>, ptr %i.uk, align 32, !tbaa !20
  %i.up = load <8 x float>, ptr %i.ul, align 32, !tbaa !20 ; 2 uses
  %i.uq = load <8 x float>, ptr %i.um, align 32, !tbaa !20 ; 2 uses
  %i.ur = load <8 x float>, ptr %i.un, align 32, !tbaa !20
  %i.us = fadd fast <8 x float> %i.up, %i.uo
  %i.ut = fadd fast <8 x float> %i.us, %i.uq
  %i.uu = fsub fast <8 x float> %i.up, %i.uq
  %i.uv = fadd fast <8 x float> %i.uu, %i.ur
  store <8 x float> %i.ut, ptr %i.th, align 32, !tbaa !20
  store <8 x float> %i.uv, ptr %i.ti, align 32, !tbaa !20
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.tb ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.tb ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.tb ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.tb ; 2 uses
  %i.va = load <8 x float>, ptr %i.uw, align 32, !tbaa !20
  %i.vb = load <8 x float>, ptr %i.ux, align 32, !tbaa !20 ; 2 uses
  %i.vc = load <8 x float>, ptr %i.uy, align 32, !tbaa !20 ; 2 uses
  %i.vd = load <8 x float>, ptr %i.uz, align 32, !tbaa !20
  %i.ve = fadd fast <8 x float> %i.vb, %i.va
  %i.vf = fadd fast <8 x float> %i.ve, %i.vc
  %i.vg = fsub fast <8 x float> %i.vb, %i.vc
  %i.vh = fadd fast <8 x float> %i.vg, %i.vd
  store <8 x float> %i.vf, ptr %i.tj, align 32, !tbaa !20
  store <8 x float> %i.vh, ptr %i.tk, align 32, !tbaa !20
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.tb
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.tb
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.tb
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.tb
  %i.vm = load <8 x float>, ptr %i.vi, align 32, !tbaa !20
  %i.vn = load <8 x float>, ptr %i.vj, align 32, !tbaa !20 ; 2 uses
  %i.vo = load <8 x float>, ptr %i.vk, align 32, !tbaa !20 ; 2 uses
  %i.vp = load <8 x float>, ptr %i.vl, align 32, !tbaa !20
  %i.vq = fadd fast <8 x float> %i.vn, %i.vm
  %i.vr = fadd fast <8 x float> %i.vq, %i.vo
  %i.vs = fsub fast <8 x float> %i.vn, %i.vo
  %i.vt = fadd fast <8 x float> %i.vs, %i.vp
  store <8 x float> %i.vr, ptr %i.tl, align 32, !tbaa !20
  store <8 x float> %i.vt, ptr %i.tm, align 32, !tbaa !20
  %i.vu = trunc i64 %indvars.iv967 to i32
  %i.vv = add i32 %4, %i.vu                       ; 2 uses
  %i.vw = sdiv i32 %i.vv, %i.o
  %i.vx = srem i32 %i.vv, %i.o
  %i.vy = load i32, ptr %i.d, align 4, !tbaa !114, !noalias !658
  %i.vz = load ptr, ptr %1, align 8, !tbaa !9, !noalias !658
  %i.wa = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !658
  %i.wb = mul i64 %i.wa, %i.tv
  %i.wc = load i64, ptr %i.tc, align 8, !tbaa !19, !noalias !658 ; 2 uses
  %i.wd = mul i64 %i.wb, %i.wc
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.wd
  %i.wf = sext i32 %i.vy to i64
  %i.wg = shl nsw i32 %i.vw, 1                    ; 2 uses
  %i.wh = sext i32 %i.wg to i64
  %i.wi = mul nsw i64 %i.wf, %i.wh
  %i.wj = mul i64 %i.wi, %i.wc
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wj
  %i.wl = shl nsw i32 %i.vx, 1                    ; 2 uses
  %i.wm = mul nsw i32 %i.wl, %i.i
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [2 x i8], ptr %i.wk, i64 %i.wn
  %i.wp = or disjoint i32 %i.wl, 1
  %i.wq = icmp slt i32 %i.wp, %i.e                ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ac, %_ZN4ncnn3MatD2Ev.exit765.us
  %i.wr = phi i1 [ false, %bb.ac ], [ true, %_ZN4ncnn3MatD2Ev.exit765.us ]
  %indvars.iv964.sroa.phi = phi ptr [ %indvars.iv964.sroa.gep, %bb.ac ], [ %i.b, %_ZN4ncnn3MatD2Ev.exit765.us ] ; 4 uses
  %indvars.iv964 = phi i32 [ 1, %bb.ac ], [ 0, %_ZN4ncnn3MatD2Ev.exit765.us ]
  %.0698871.us = phi ptr [ %.1699.us, %bb.ac ], [ %i.wo, %_ZN4ncnn3MatD2Ev.exit765.us ] ; 16 uses
  %i.ws = or disjoint i32 %i.wg, %indvars.iv964
  %.not734.us = icmp slt i32 %i.ws, %i.g
  br i1 %.not734.us, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.wt = load <8 x float>, ptr %indvars.iv964.sroa.phi, align 32, !tbaa !20
  %i.wu = getelementptr inbounds nuw i8, ptr %indvars.iv964.sroa.phi, i64 32
  %i.wv = load <8 x float>, ptr %i.wu, align 32, !tbaa !20 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %indvars.iv964.sroa.phi, i64 64
  %i.wx = load <8 x float>, ptr %i.ww, align 32, !tbaa !20 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %indvars.iv964.sroa.phi, i64 96
  %i.wz = load <8 x float>, ptr %i.wy, align 32, !tbaa !20
  %i.xa = fadd fast <8 x float> %i.wt, %i.tp
  %i.xb = fadd fast <8 x float> %i.xa, %i.wv
  %i.xc = fadd fast <8 x float> %i.xb, %i.wx      ; 10 uses
  %i.xd = fadd fast <8 x float> %i.wv, %i.tp
  %i.xe = fsub fast <8 x float> %i.xd, %i.wx
  %i.xf = fadd fast <8 x float> %i.xe, %i.wz      ; 10 uses
  switch i32 %6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread.us
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread676.us
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread679.us
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread682.us
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread685.us
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread688.us
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread688.us: ; preds = %bb.u
  %i.xg = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !74
  %i.xi = insertelement <8 x float> poison, float %i.xh, i64 0
  %i.xj = shufflevector <8 x float> %i.xi, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !74
  %i.xm = insertelement <8 x float> poison, float %i.xl, i64 0
  %i.xn = shufflevector <8 x float> %i.xm, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xc, <8 x float> nofpclass(nan inf) %i.xj, <8 x float> nofpclass(nan inf) %i.xn)
  %i.xp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xo, <8 x float> zeroinitializer)
  %i.xq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xp, <8 x float> splat (float 1.000000e+00))
  %i.xr = fmul fast <8 x float> %i.xq, %i.xc
  %i.xs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xf, <8 x float> nofpclass(nan inf) %i.xj, <8 x float> nofpclass(nan inf) %i.xn)
  %i.xt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xs, <8 x float> zeroinitializer)
  %i.xu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xt, <8 x float> splat (float 1.000000e+00))
  %i.xv = fmul fast <8 x float> %i.xu, %i.xf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread685.us: ; preds = %bb.u
end_hunk_11
begin_hunk_12_@_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.aen = fsub fast <8 x float> %i.aek, %i.aem   ; 2 uses
  %i.aeo = fneg fast <8 x float> %i.aen           ; 2 uses
  %i.aep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aeo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.aei)
  %i.aeq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aeo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.aep) ; 8 uses
  %i.aer = fmul fast <8 x float> %i.aeq, %i.aeq
  %i.aes = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.aet = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aes, <8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.aeu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aet, <8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.aev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeu, <8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.aew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aev, <8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.aex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aew, <8 x float> nofpclass(nan inf) %i.aer, <8 x float> nofpclass(nan inf) %i.aeq)
  %i.aey = fadd fast <8 x float> %i.aex, splat (float 1.000000e+00)
  %i.aez = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aen)
  %i.afa = shl <8 x i32> %i.aez, splat (i32 23)
  %i.afb = add <8 x i32> %i.afa, splat (i32 1065353216)
  %i.afc = bitcast <8 x i32> %i.afb to <8 x float>
  %i.afd = fmul fast <8 x float> %i.aey, %i.afc
  %i.afe = fadd fast <8 x float> %i.afd, splat (float 1.000000e+00)
  %i.aff = fdiv fast <8 x float> splat (float 1.000000e+00), %i.afe
  %i.afg = fneg fast <8 x float> %i.xf
  %i.afh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afg, <8 x float> splat (float f0x42B0C0A5))
  %i.afi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afi, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.afk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.afj, i32 1) ; 2 uses
  %i.afl = fcmp fast ogt <8 x float> %i.afk, %i.afj
  %i.afm = select <8 x i1> %i.afl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.afn = fsub fast <8 x float> %i.afk, %i.afm   ; 2 uses
  %i.afo = fneg fast <8 x float> %i.afn           ; 2 uses
  %i.afp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.afo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.afi)
  %i.afq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.afo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.afp) ; 8 uses
  %i.afr = fmul fast <8 x float> %i.afq, %i.afq
  %i.afs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.aft = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afs, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.afu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aft, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.afv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afu, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.afw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afv, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.afx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afw, <8 x float> nofpclass(nan inf) %i.afr, <8 x float> nofpclass(nan inf) %i.afq)
  %i.afy = fadd fast <8 x float> %i.afx, splat (float 1.000000e+00)
  %i.afz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afn)
  %i.aga = shl <8 x i32> %i.afz, splat (i32 23)
  %i.agb = add <8 x i32> %i.aga, splat (i32 1065353216)
  %i.agc = bitcast <8 x i32> %i.agb to <8 x float>
  %i.agd = fmul fast <8 x float> %i.afy, %i.agc
  %i.age = fadd fast <8 x float> %i.agd, splat (float 1.000000e+00)
  %i.agf = fdiv fast <8 x float> splat (float 1.000000e+00), %i.age
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread679.us: ; preds = %bb.u
  %i.agg = load ptr, ptr %7, align 8, !tbaa !9    ; 2 uses
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !74
  %i.agi = insertelement <8 x float> poison, float %i.agh, i64 0
  %i.agj = shufflevector <8 x float> %i.agi, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !74
  %i.agm = insertelement <8 x float> poison, float %i.agl, i64 0
  %i.agn = shufflevector <8 x float> %i.agm, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ago = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xc, <8 x float> nofpclass(nan inf) %i.agj)
  %i.agp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ago, <8 x float> nofpclass(nan inf) %i.agn)
  %i.agq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xf, <8 x float> nofpclass(nan inf) %i.agj)
  %i.agr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.agq, <8 x float> nofpclass(nan inf) %i.agn)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread676.us: ; preds = %bb.u
  %i.ags = load ptr, ptr %7, align 8, !tbaa !9
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !74
  %i.agu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.xc)
  %i.agv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.xc)
  %i.agw = insertelement <8 x float> poison, float %i.agt, i64 0
  %i.agx = shufflevector <8 x float> %i.agw, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.agy = fmul fast <8 x float> %i.agx, %i.agv
  %i.agz = fadd fast <8 x float> %i.agy, %i.agu
  %i.aha = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.xf)
  %i.ahb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.xf)
  %i.ahc = fmul fast <8 x float> %i.agx, %i.ahb
  %i.ahd = fadd fast <8 x float> %i.ahc, %i.aha
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread.us: ; preds = %bb.u
  %i.ahe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xc, <8 x float> zeroinitializer)
  %i.ahf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xf, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us:   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread.us, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread676.us, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread679.us, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread682.us, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread685.us, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread688.us, %bb.u
  %.0.i795675.us = phi <8 x float> [ %i.xr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread688.us ], [ %i.ahe, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread.us ], [ %i.agz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread676.us ], [ %i.agp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread679.us ], [ %i.aff, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread682.us ], [ %i.aba, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread685.us ], [ %i.xc, %bb.u ] ; 3 uses
  %.0.i794.us = phi nsz <8 x float> [ %i.xv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread688.us ], [ %i.ahf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread.us ], [ %i.ahd, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread676.us ], [ %i.agr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread679.us ], [ %i.agf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread682.us ], [ %i.aef, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit796.thread685.us ], [ %i.xf, %bb.u ] ; 3 uses
  switch i32 %i.i, label %bb.ab [
    i32 8, label %bb.z
    i32 4, label %bb.x
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.ahg = getelementptr inbounds nuw [2 x i8], ptr %.0698871.us, i64 %i.m ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 %.idx735 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 %.idx736 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 %.idx737 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 %.idx738 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 %.idx739 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 %.idx740 ; 2 uses
  %i.ahn = bitcast <8 x float> %.0.i795675.us to <16 x i16> ; 8 uses
  %i.aho = extractelement <16 x i16> %i.ahn, i64 1
  store i16 %i.aho, ptr %.0698871.us, align 2, !tbaa !76
  %i.ahp = extractelement <16 x i16> %i.ahn, i64 3
  store i16 %i.ahp, ptr %i.ahg, align 2, !tbaa !76
  %i.ahq = extractelement <16 x i16> %i.ahn, i64 5
  store i16 %i.ahq, ptr %i.ahh, align 2, !tbaa !76
  %i.ahr = extractelement <16 x i16> %i.ahn, i64 7
  store i16 %i.ahr, ptr %i.ahi, align 2, !tbaa !76
  %i.ahs = extractelement <16 x i16> %i.ahn, i64 9
  store i16 %i.ahs, ptr %i.ahj, align 2, !tbaa !76
  %i.aht = extractelement <16 x i16> %i.ahn, i64 11
  store i16 %i.aht, ptr %i.ahk, align 2, !tbaa !76
  %i.ahu = extractelement <16 x i16> %i.ahn, i64 13
  store i16 %i.ahu, ptr %i.ahl, align 2, !tbaa !76
  %i.ahv = extractelement <16 x i16> %i.ahn, i64 15
  store i16 %i.ahv, ptr %i.ahm, align 2, !tbaa !76
  br i1 %i.wq, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ahw = bitcast <8 x float> %.0.i794.us to <16 x i16> ; 8 uses
  %i.ahx = extractelement <16 x i16> %i.ahw, i64 1
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 2
  store i16 %i.ahx, ptr %i.ahy, align 2, !tbaa !76
  %i.ahz = extractelement <16 x i16> %i.ahw, i64 3
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahg, i64 2
  store i16 %i.ahz, ptr %i.aia, align 2, !tbaa !76
  %i.aib = extractelement <16 x i16> %i.ahw, i64 5
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahh, i64 2
  store i16 %i.aib, ptr %i.aic, align 2, !tbaa !76
  %i.aid = extractelement <16 x i16> %i.ahw, i64 7
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahi, i64 2
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !76
  %i.aif = extractelement <16 x i16> %i.ahw, i64 9
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahj, i64 2
  store i16 %i.aif, ptr %i.aig, align 2, !tbaa !76
  %i.aih = extractelement <16 x i16> %i.ahw, i64 11
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahk, i64 2
  store i16 %i.aih, ptr %i.aii, align 2, !tbaa !76
  %i.aij = extractelement <16 x i16> %i.ahw, i64 13
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahl, i64 2
  store i16 %i.aij, ptr %i.aik, align 2, !tbaa !76
  %i.ail = extractelement <16 x i16> %i.ahw, i64 15
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahm, i64 2
  store i16 %i.ail, ptr %i.aim, align 2, !tbaa !76
  br label %bb.ab

bb.x:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.ain = getelementptr inbounds nuw [2 x i8], ptr %.0698871.us, i64 %i.m ; 2 uses
  %i.aio = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i795675.us) ; 2 uses
  %i.aip = bitcast <8 x bfloat> %i.aio to <2 x i64>
  %i.aiq = extractelement <2 x i64> %i.aip, i64 0
  store i64 %i.aiq, ptr %.0698871.us, align 1, !tbaa !20
  %i.air = bitcast <8 x bfloat> %i.aio to <2 x i64>
  %i.ais = extractelement <2 x i64> %i.air, i64 1
  store i64 %i.ais, ptr %i.ain, align 1, !tbaa !20
  br i1 %i.wq, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ait = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 8
  %i.aiu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i794.us) ; 2 uses
  %i.aiv = bitcast <8 x bfloat> %i.aiu to <2 x i64>
  %i.aiw = extractelement <2 x i64> %i.aiv, i64 0
  store i64 %i.aiw, ptr %i.ait, align 1, !tbaa !20
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.aiy = bitcast <8 x bfloat> %i.aiu to <2 x i64>
  %i.aiz = extractelement <2 x i64> %i.aiy, i64 1
  store i64 %i.aiz, ptr %i.aix, align 1, !tbaa !20
  br label %bb.ab

bb.z:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.aja = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i795675.us)
  store <8 x bfloat> %i.aja, ptr %.0698871.us, align 1, !tbaa !20
  br i1 %i.wq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0698871.us, i64 16
  %i.ajc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i794.us)
  store <8 x bfloat> %i.ajc, ptr %i.ajb, align 1, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.ajd = getelementptr inbounds [2 x i8], ptr %.0698871.us, i64 %i.te
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.t
  %.1699.us = phi ptr [ %.0698871.us, %bb.t ], [ %i.ajd, %bb.ab ]
  br i1 %i.wr, label %bb.t, label %bb.ad, !llvm.loop !661

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %exitcond971.not = icmp eq i64 %indvars.iv.next968, %wide.trip.count970
  br i1 %exitcond971.not, label %._crit_edge.us880, label %_ZN4ncnn3MatD2Ev.exit765.us, !llvm.loop !662

._crit_edge.us880:                                ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 8 ; 3 uses
  %i.aje = icmp slt i64 %indvars.iv.next973, %invariant.op
  br i1 %i.aje, label %.lr.ph876.split.us, label %.preheader849.loopexit, !llvm.loop !663

.lr.ph876.split:                                  ; preds = %.lr.ph876
  %i.ajf = add i32 %3, -8
  %i.ajg = sub i32 %i.ajf, %.0700.lcssa
  %i.ajh = and i32 %i.ajg, -8
  %i.aji = add i32 %.0700.lcssa, %i.ajh
  %i.ajj = add i32 %i.aji, 8
  br label %.preheader849

.preheader849.loopexit:                           ; preds = %._crit_edge.us880
  %i.ajk = trunc nsw i64 %indvars.iv.next973 to i32
  br label %.preheader849

.preheader849:                                    ; preds = %.lr.ph876.split, %.preheader849.loopexit, %.preheader850
  %.1701.lcssa = phi i32 [ %.0700.lcssa, %.preheader850 ], [ %i.ajj, %.lr.ph876.split ], [ %i.ajk, %.preheader849.loopexit ] ; 5 uses
  %i.ajl = or disjoint i32 %.1701.lcssa, 3
  %i.ajm = icmp slt i32 %i.ajl, %3
  br i1 %i.ajm, label %.lr.ph895, label %.preheader848

.lr.ph895:                                        ; preds = %.preheader849
  %.not730 = icmp eq ptr %.0.val, null
  %i.ajn = sext i32 %2 to i64
  %i.ajo = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.ajn
  %i.ajp = icmp sgt i32 %5, 0
  %i.ajq = shl nsw i32 %5, 2
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = shl nsw i32 %5, 3
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = mul nsw i32 %5, 12
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ajx = sext i32 %factor.op.mul859 to i64      ; 12 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx = shl i64 %i.m, 2
  %.idx732 = mul i64 %i.m, 6
  %i.ajz = mul nsw i32 %i.i, %i.e
  %i.aka = sext i32 %i.ajz to i64
  br i1 %i.ajp, label %.lr.ph895.split.us.preheader, label %.lr.ph895.split

.lr.ph895.split.us.preheader:                     ; preds = %.lr.ph895
  %i.akb = sext i32 %.1701.lcssa to i64
  %i.akc = sext i32 %3 to i64
  %wide.trip.count987 = zext nneg i32 %5 to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ake = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.akf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.akg = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.akh = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aki = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %invariant.op1069 = add nsw i64 %i.akc, -3
  br label %.lr.ph895.split.us

.lr.ph895.split.us:                               ; preds = %.lr.ph895.split.us.preheader, %._crit_edge.us899
  %indvars.iv989 = phi i64 [ %i.akb, %.lr.ph895.split.us.preheader ], [ %indvars.iv.next990, %._crit_edge.us899 ] ; 4 uses
  br i1 %.not730, label %.lr.ph.us898, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph895.split.us
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %indvars.iv989
  %i.akk = load <4 x float>, ptr %i.akj, align 1, !tbaa !20
  br label %.lr.ph.us898

.lr.ph.us898:                                     ; preds = %bb.ae, %.lr.ph895.split.us
  %i.akl = phi fast <4 x float> [ %i.akk, %bb.ae ], [ zeroinitializer, %.lr.ph895.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.akm = trunc nsw i64 %indvars.iv989 to i32
  %factor.op.mul.reass.us897 = mul i32 %factor.op.mul859, %i.akm
  %i.akn = sext i32 %factor.op.mul.reass.us897 to i64
  %i.ako = trunc i64 %indvars.iv989 to i32
  %i.akp = add i32 %2, %i.ako
  %i.akq = sdiv i32 %i.akp, %i.i
  %i.akr = sext i32 %i.akq to i64
  br label %_ZN4ncnn3MatD2Ev.exit764.us

_ZN4ncnn3MatD2Ev.exit764.us:                      ; preds = %.lr.ph.us898, %bb.an
  %indvars.iv984 = phi i64 [ 0, %.lr.ph.us898 ], [ %indvars.iv.next985, %bb.an ] ; 3 uses
  %i.aks = load ptr, ptr %0, align 8, !tbaa !9
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.aks, i64 %i.akn
  %.idx1067 = shl nuw nsw i64 %indvars.iv984, 4
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 %.idx1067 ; 5 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ajr ; 2 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ajt ; 2 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ajv ; 2 uses
  %i.aky = load <4 x float>, ptr %i.aku, align 16, !tbaa !20
  %i.akz = load <4 x float>, ptr %i.akv, align 16, !tbaa !20 ; 2 uses
  %i.ala = load <4 x float>, ptr %i.akw, align 16, !tbaa !20 ; 2 uses
  %i.alb = load <4 x float>, ptr %i.akx, align 16, !tbaa !20
  %i.alc = fadd fast <4 x float> %i.akz, %i.aky
  %i.ald = fadd fast <4 x float> %i.alc, %i.ala
  %i.ale = fsub fast <4 x float> %i.akz, %i.ala
  %i.alf = fadd fast <4 x float> %i.ale, %i.alb
  store <4 x float> %i.ald, ptr %i.c, align 16, !tbaa !20
  store <4 x float> %i.alf, ptr %i.ajw, align 16, !tbaa !20
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ajx ; 2 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.ajx ; 2 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.ajx ; 2 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %i.ajx ; 2 uses
  %i.alk = load <4 x float>, ptr %i.alg, align 16, !tbaa !20
  %i.all = load <4 x float>, ptr %i.alh, align 16, !tbaa !20 ; 2 uses
  %i.alm = load <4 x float>, ptr %i.ali, align 16, !tbaa !20 ; 2 uses
  %i.aln = load <4 x float>, ptr %i.alj, align 16, !tbaa !20
  %i.alo = fadd fast <4 x float> %i.all, %i.alk
  %i.alp = fadd fast <4 x float> %i.alo, %i.alm
  %i.alq = fsub fast <4 x float> %i.all, %i.alm
  %i.alr = fadd fast <4 x float> %i.alq, %i.aln
  store <4 x float> %i.alp, ptr %i.akd, align 16, !tbaa !20
  store <4 x float> %i.alr, ptr %i.ake, align 16, !tbaa !20
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %i.ajx ; 2 uses
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.ajx ; 2 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.ajx ; 2 uses
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.ajx ; 2 uses
  %i.alw = load <4 x float>, ptr %i.als, align 16, !tbaa !20
  %i.alx = load <4 x float>, ptr %i.alt, align 16, !tbaa !20 ; 2 uses
  %i.aly = load <4 x float>, ptr %i.alu, align 16, !tbaa !20 ; 2 uses
  %i.alz = load <4 x float>, ptr %i.alv, align 16, !tbaa !20
  %i.ama = fadd fast <4 x float> %i.alx, %i.alw
  %i.amb = fadd fast <4 x float> %i.ama, %i.aly
  %i.amc = fsub fast <4 x float> %i.alx, %i.aly
  %i.amd = fadd fast <4 x float> %i.amc, %i.alz
  store <4 x float> %i.amb, ptr %i.akf, align 16, !tbaa !20
  store <4 x float> %i.amd, ptr %i.akg, align 16, !tbaa !20
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %i.ajx
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %i.ajx
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %i.ajx
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %i.ajx
  %i.ami = load <4 x float>, ptr %i.ame, align 16, !tbaa !20
  %i.amj = load <4 x float>, ptr %i.amf, align 16, !tbaa !20 ; 2 uses
  %i.amk = load <4 x float>, ptr %i.amg, align 16, !tbaa !20 ; 2 uses
  %i.aml = load <4 x float>, ptr %i.amh, align 16, !tbaa !20
  %i.amm = fadd fast <4 x float> %i.amj, %i.ami
  %i.amn = fadd fast <4 x float> %i.amm, %i.amk
  %i.amo = fsub fast <4 x float> %i.amj, %i.amk
  %i.amp = fadd fast <4 x float> %i.amo, %i.aml
  store <4 x float> %i.amn, ptr %i.akh, align 16, !tbaa !20
  store <4 x float> %i.amp, ptr %i.aki, align 16, !tbaa !20
  %i.amq = trunc i64 %indvars.iv984 to i32
  %i.amr = add i32 %4, %i.amq                     ; 2 uses
  %i.ams = sdiv i32 %i.amr, %i.o
  %i.amt = srem i32 %i.amr, %i.o
  %i.amu = load i32, ptr %i.d, align 4, !tbaa !114, !noalias !664
  %i.amv = load ptr, ptr %1, align 8, !tbaa !9, !noalias !664
  %i.amw = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !664
  %i.amx = mul i64 %i.amw, %i.akr
  %i.amy = load i64, ptr %i.ajy, align 8, !tbaa !19, !noalias !664 ; 2 uses
  %i.amz = mul i64 %i.amx, %i.amy
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amz
  %i.anb = sext i32 %i.amu to i64
  %i.anc = shl nsw i32 %i.ams, 1                  ; 2 uses
  %i.and = sext i32 %i.anc to i64
  %i.ane = mul nsw i64 %i.anb, %i.and
  %i.anf = mul i64 %i.ane, %i.amy
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.anf
  %i.anh = shl nsw i32 %i.amt, 1                  ; 2 uses
  %i.ani = mul nsw i32 %i.anh, %i.i
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [2 x i8], ptr %i.ang, i64 %i.anj
  %i.anl = or disjoint i32 %i.anh, 1
  %i.anm = icmp slt i32 %i.anl, %i.e              ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit764.us
  %i.ann = phi i1 [ false, %bb.am ], [ true, %_ZN4ncnn3MatD2Ev.exit764.us ]
  %indvars.iv981.sroa.phi = phi ptr [ %indvars.iv981.sroa.gep, %bb.am ], [ %i.c, %_ZN4ncnn3MatD2Ev.exit764.us ] ; 4 uses
  %indvars.iv981 = phi i32 [ 1, %bb.am ], [ 0, %_ZN4ncnn3MatD2Ev.exit764.us ]
  %.0689890.us = phi ptr [ %.1690.us, %bb.am ], [ %i.ank, %_ZN4ncnn3MatD2Ev.exit764.us ] ; 9 uses
  %i.ano = or disjoint i32 %i.anc, %indvars.iv981
  %.not731.us = icmp slt i32 %i.ano, %i.g
  br i1 %.not731.us, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.anp = load <4 x float>, ptr %indvars.iv981.sroa.phi, align 16, !tbaa !20
  %i.anq = getelementptr inbounds nuw i8, ptr %indvars.iv981.sroa.phi, i64 16
  %i.anr = load <4 x float>, ptr %i.anq, align 16, !tbaa !20 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %indvars.iv981.sroa.phi, i64 32
  %i.ant = load <4 x float>, ptr %i.ans, align 16, !tbaa !20 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %indvars.iv981.sroa.phi, i64 48
  %i.anv = load <4 x float>, ptr %i.anu, align 16, !tbaa !20
  %i.anw = fadd fast <4 x float> %i.anp, %i.akl
  %i.anx = fadd fast <4 x float> %i.anw, %i.anr
  %i.any = fadd fast <4 x float> %i.anx, %i.ant   ; 10 uses
  %i.anz = fadd fast <4 x float> %i.anr, %i.akl
  %i.aoa = fsub fast <4 x float> %i.anz, %i.ant
  %i.aob = fadd fast <4 x float> %i.aoa, %i.anv   ; 10 uses
  switch i32 %6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us: ; preds = %bb.ag
  %i.aoc = load ptr, ptr %7, align 8, !tbaa !9    ; 2 uses
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !74
  %i.aoe = insertelement <4 x float> poison, float %i.aod, i64 0
  %i.aof = shufflevector <4 x float> %i.aoe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aoc, i64 4
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !74
  %i.aoi = insertelement <4 x float> poison, float %i.aoh, i64 0
  %i.aoj = shufflevector <4 x float> %i.aoi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aok = fmul fast <4 x float> %i.aof, %i.any
  %i.aol = fadd fast <4 x float> %i.aok, %i.aoj
  %i.aom = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aol, <4 x float> zeroinitializer)
  %i.aon = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aom, <4 x float> splat (float 1.000000e+00))
  %i.aoo = fmul fast <4 x float> %i.aon, %i.any
  %i.aop = fmul fast <4 x float> %i.aof, %i.aob
  %i.aoq = fadd fast <4 x float> %i.aop, %i.aoj
  %i.aor = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aoq, <4 x float> zeroinitializer)
  %i.aos = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aor, <4 x float> splat (float 1.000000e+00))
  %i.aot = fmul fast <4 x float> %i.aos, %i.aob
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us: ; preds = %bb.ag
  %i.aou = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.any, <4 x float> splat (float f0x42B0C0A5))
  %i.aov = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aou, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.aum = fadd fast <4 x float> %i.aul, splat (float 5.000000e-01) ; 2 uses
  %i.aun = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aum)
  %i.auo = sitofp fast <4 x i32> %i.aun to <4 x float> ; 2 uses
  %i.aup = fcmp fast olt <4 x float> %i.aum, %i.auo
  %i.auq = select <4 x i1> %i.aup, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aur = fsub fast <4 x float> %i.auo, %i.auq   ; 2 uses
  %i.aus = fneg fast <4 x float> %i.aur           ; 2 uses
  %i.aut = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aus, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.auk)
  %i.auu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aus, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aut) ; 8 uses
  %i.auv = fmul fast <4 x float> %i.auu, %i.auu
  %i.auw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.aux = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auw, <4 x float> nofpclass(nan inf) %i.auu, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.auy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aux, <4 x float> nofpclass(nan inf) %i.auu, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.auz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auy, <4 x float> nofpclass(nan inf) %i.auu, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ava = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auz, <4 x float> nofpclass(nan inf) %i.auu, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.avb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ava, <4 x float> nofpclass(nan inf) %i.auv, <4 x float> nofpclass(nan inf) %i.auu)
  %i.avc = fadd fast <4 x float> %i.avb, splat (float 1.000000e+00)
  %i.avd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aur)
  %i.ave = shl <4 x i32> %i.avd, splat (i32 23)
  %i.avf = add <4 x i32> %i.ave, splat (i32 1065353216)
  %i.avg = bitcast <4 x i32> %i.avf to <4 x float>
  %i.avh = fmul fast <4 x float> %i.avc, %i.avg
  %i.avi = fadd fast <4 x float> %i.avh, splat (float 1.000000e+00)
  %i.avj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.avi
  %i.avk = fadd fast <4 x float> %i.avj, splat (float -1.000000e+00)
  %i.avl = fmul fast <4 x float> %i.avk, %i.aob
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us: ; preds = %bb.ag
  %i.avm = fneg fast <4 x float> %i.any
  %i.avn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.avm, <4 x float> splat (float f0x42B0C0A5))
  %i.avo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.avp = fmul fast <4 x float> %i.avo, splat (float f0x3FB8AA3B)
  %i.avq = fadd fast <4 x float> %i.avp, splat (float 5.000000e-01) ; 2 uses
  %i.avr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.avq)
  %i.avs = sitofp fast <4 x i32> %i.avr to <4 x float> ; 2 uses
  %i.avt = fcmp fast olt <4 x float> %i.avq, %i.avs
  %i.avu = select <4 x i1> %i.avt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.avv = fsub fast <4 x float> %i.avs, %i.avu   ; 2 uses
  %i.avw = fneg fast <4 x float> %i.avv           ; 2 uses
  %i.avx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.avw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.avo)
  %i.avy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.avw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.avx) ; 8 uses
  %i.avz = fmul fast <4 x float> %i.avy, %i.avy
  %i.awa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.awb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.awa, <4 x float> nofpclass(nan inf) %i.avy, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.awc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.awb, <4 x float> nofpclass(nan inf) %i.avy, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.awd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.awc, <4 x float> nofpclass(nan inf) %i.avy, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.awe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.awd, <4 x float> nofpclass(nan inf) %i.avy, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.awf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.awe, <4 x float> nofpclass(nan inf) %i.avz, <4 x float> nofpclass(nan inf) %i.avy)
  %i.awg = fadd fast <4 x float> %i.awf, splat (float 1.000000e+00)
  %i.awh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.avv)
  %i.awi = shl <4 x i32> %i.awh, splat (i32 23)
  %i.awj = add <4 x i32> %i.awi, splat (i32 1065353216)
  %i.awk = bitcast <4 x i32> %i.awj to <4 x float>
  %i.awl = fmul fast <4 x float> %i.awg, %i.awk
  %i.awm = fadd fast <4 x float> %i.awl, splat (float 1.000000e+00)
  %i.awn = fdiv fast <4 x float> splat (float 1.000000e+00), %i.awm
  %i.awo = fneg fast <4 x float> %i.aob
  %i.awp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.awo, <4 x float> splat (float f0x42B0C0A5))
  %i.awq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.awp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.awr = fmul fast <4 x float> %i.awq, splat (float f0x3FB8AA3B)
  %i.aws = fadd fast <4 x float> %i.awr, splat (float 5.000000e-01) ; 2 uses
  %i.awt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aws)
  %i.awu = sitofp fast <4 x i32> %i.awt to <4 x float> ; 2 uses
  %i.awv = fcmp fast olt <4 x float> %i.aws, %i.awu
  %i.aww = select <4 x i1> %i.awv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.awx = fsub fast <4 x float> %i.awu, %i.aww   ; 2 uses
  %i.awy = fneg fast <4 x float> %i.awx           ; 2 uses
  %i.awz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.awy, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.awq)
  %i.axa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.awy, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.awz) ; 8 uses
  %i.axb = fmul fast <4 x float> %i.axa, %i.axa
  %i.axc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axa, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.axd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axc, <4 x float> nofpclass(nan inf) %i.axa, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.axe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axd, <4 x float> nofpclass(nan inf) %i.axa, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.axf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axe, <4 x float> nofpclass(nan inf) %i.axa, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.axg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axf, <4 x float> nofpclass(nan inf) %i.axa, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.axh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axg, <4 x float> nofpclass(nan inf) %i.axb, <4 x float> nofpclass(nan inf) %i.axa)
  %i.axi = fadd fast <4 x float> %i.axh, splat (float 1.000000e+00)
  %i.axj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awx)
  %i.axk = shl <4 x i32> %i.axj, splat (i32 23)
  %i.axl = add <4 x i32> %i.axk, splat (i32 1065353216)
  %i.axm = bitcast <4 x i32> %i.axl to <4 x float>
  %i.axn = fmul fast <4 x float> %i.axi, %i.axm
  %i.axo = fadd fast <4 x float> %i.axn, splat (float 1.000000e+00)
  %i.axp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.axo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us: ; preds = %bb.ag
  %i.axq = load ptr, ptr %7, align 8, !tbaa !9    ; 2 uses
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !74
  %i.axs = insertelement <4 x float> poison, float %i.axr, i64 0
  %i.axt = shufflevector <4 x float> %i.axs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axq, i64 4
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !74
  %i.axw = insertelement <4 x float> poison, float %i.axv, i64 0
  %i.axx = shufflevector <4 x float> %i.axw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.any, <4 x float> nofpclass(nan inf) %i.axt)
  %i.axz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.axy, <4 x float> nofpclass(nan inf) %i.axx)
  %i.aya = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aob, <4 x float> nofpclass(nan inf) %i.axt)
  %i.ayb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aya, <4 x float> nofpclass(nan inf) %i.axx)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us: ; preds = %bb.ag
  %i.ayc = load ptr, ptr %7, align 8, !tbaa !9
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !74
  %i.aye = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.any)
  %i.ayf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.any)
  %i.ayg = insertelement <4 x float> poison, float %i.ayd, i64 0
  %i.ayh = shufflevector <4 x float> %i.ayg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayi = fmul fast <4 x float> %i.ayh, %i.ayf
  %i.ayj = fadd fast <4 x float> %i.ayi, %i.aye
  %i.ayk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aob)
  %i.ayl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aob)
  %i.aym = fmul fast <4 x float> %i.ayh, %i.ayl
  %i.ayn = fadd fast <4 x float> %i.aym, %i.ayk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us: ; preds = %bb.ag
  %i.ayo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.any, <4 x float> zeroinitializer)
  %i.ayp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aob, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us:   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us, %bb.ag
  %.0.i798693.us = phi <4 x float> [ %i.aoo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us ], [ %i.ayo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us ], [ %i.ayj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us ], [ %i.axz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us ], [ %i.awn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us ], [ %i.asc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us ], [ %i.any, %bb.ag ] ; 2 uses
  %.0.i797.us = phi nsz <4 x float> [ %i.aot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us ], [ %i.ayp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us ], [ %i.ayn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us ], [ %i.ayb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us ], [ %i.axp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us ], [ %i.avl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us ], [ %i.aob, %bb.ag ] ; 2 uses
  switch i32 %i.i, label %bb.al [
    i32 4, label %bb.aj
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.ayq = getelementptr inbounds nuw [2 x i8], ptr %.0689890.us, i64 %i.m ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 %.idx ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 %.idx732 ; 2 uses
  %i.ayt = bitcast <4 x float> %.0.i798693.us to <8 x i16> ; 4 uses
  %i.ayu = extractelement <8 x i16> %i.ayt, i64 1
  store i16 %i.ayu, ptr %.0689890.us, align 2, !tbaa !76
  %i.ayv = extractelement <8 x i16> %i.ayt, i64 3
  store i16 %i.ayv, ptr %i.ayq, align 2, !tbaa !76
  %i.ayw = extractelement <8 x i16> %i.ayt, i64 5
  store i16 %i.ayw, ptr %i.ayr, align 2, !tbaa !76
  %i.ayx = extractelement <8 x i16> %i.ayt, i64 7
  store i16 %i.ayx, ptr %i.ays, align 2, !tbaa !76
  br i1 %i.anm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ayy = bitcast <4 x float> %.0.i797.us to <8 x i16> ; 4 uses
  %i.ayz = extractelement <8 x i16> %i.ayy, i64 1
  %i.aza = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 2
  store i16 %i.ayz, ptr %i.aza, align 2, !tbaa !76
  %i.azb = extractelement <8 x i16> %i.ayy, i64 3
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayq, i64 2
  store i16 %i.azb, ptr %i.azc, align 2, !tbaa !76
  %i.azd = extractelement <8 x i16> %i.ayy, i64 5
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayr, i64 2
  store i16 %i.azd, ptr %i.aze, align 2, !tbaa !76
  %i.azf = extractelement <8 x i16> %i.ayy, i64 7
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ays, i64 2
  store i16 %i.azf, ptr %i.azg, align 2, !tbaa !76
  br label %bb.al

bb.aj:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.azh = shufflevector <4 x float> %.0.i798693.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azi = shufflevector <8 x float> %i.azh, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.azj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.azi)
  %i.azk = bitcast <8 x bfloat> %i.azj to <2 x i64>
  %i.azl = extractelement <2 x i64> %i.azk, i64 0
  store i64 %i.azl, ptr %.0689890.us, align 1, !tbaa !20
  br i1 %i.anm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.azm = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 8
  %i.azn = shufflevector <4 x float> %.0.i797.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azo = shufflevector <8 x float> %i.azn, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.azp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.azo)
  %i.azq = bitcast <8 x bfloat> %i.azp to <2 x i64>
  %i.azr = extractelement <2 x i64> %i.azq, i64 0
  store i64 %i.azr, ptr %i.azm, align 1, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.azs = getelementptr inbounds [2 x i8], ptr %.0689890.us, i64 %i.aka
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.1690.us = phi ptr [ %.0689890.us, %bb.af ], [ %i.azs, %bb.al ]
  br i1 %i.ann, label %bb.af, label %bb.an, !llvm.loop !667

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next985 = add nuw nsw i64 %indvars.iv984, 1 ; 2 uses
  %exitcond988.not = icmp eq i64 %indvars.iv.next985, %wide.trip.count987
  br i1 %exitcond988.not, label %._crit_edge.us899, label %_ZN4ncnn3MatD2Ev.exit764.us, !llvm.loop !668

._crit_edge.us899:                                ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 4 ; 3 uses
  %i.azt = icmp slt i64 %indvars.iv.next990, %invariant.op1069
  br i1 %i.azt, label %.lr.ph895.split.us, label %.preheader848.loopexit, !llvm.loop !669

.lr.ph895.split:                                  ; preds = %.lr.ph895
  %i.azu = add i32 %3, -4
  %i.azv = sub i32 %i.azu, %.1701.lcssa
  %i.azw = and i32 %i.azv, -4
  %i.azx = add i32 %.1701.lcssa, %i.azw
  %i.azy = add i32 %i.azx, 4
  br label %.preheader848

.preheader848.loopexit:                           ; preds = %._crit_edge.us899
  %i.azz = trunc nsw i64 %indvars.iv.next990 to i32
  br label %.preheader848

.preheader848:                                    ; preds = %.lr.ph895.split, %.preheader848.loopexit, %.preheader849
  %.2.lcssa = phi i32 [ %.1701.lcssa, %.preheader849 ], [ %i.azy, %.lr.ph895.split ], [ %i.azz, %.preheader848.loopexit ] ; 3 uses
  %i.baa = or disjoint i32 %.2.lcssa, 1
  %i.bab = icmp slt i32 %i.baa, %3
  br i1 %i.bab, label %.lr.ph916, label %.preheader

.lr.ph916:                                        ; preds = %.preheader848
  %.not728 = icmp eq ptr %.0.val, null
  %i.bac = icmp sgt i32 %5, 0
  %i.bad = shl nsw i32 %5, 1
  %i.bae = sext i32 %i.bad to i64
  %i.baf = shl nsw i32 %5, 2
  %i.bag = sext i32 %i.baf to i64
  %i.bah = mul nsw i32 %5, 6
  %i.bai = sext i32 %i.bah to i64
  %i.baj = shl nsw i32 %5, 3
  %i.bak = sext i32 %i.baj to i64                 ; 12 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bam = sext i32 %i.e to i64
  %i.ban = sext i32 %.2.lcssa to i64
  %i.bao = sext i32 %3 to i64
  %i.bap = sext i32 %2 to i64                     ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0.val, i64 %i.bap
  %wide.trip.count1002 = zext nneg i32 %5 to i64
  %invariant.op1070 = add nsw i64 %i.bao, -1
  %i.baq = load ptr, ptr %0, align 8
  %i.bar = load i32, ptr %i.d, align 4
  %i.bas = load ptr, ptr %1, align 8
  %i.bat = load i64, ptr %i.j, align 8
  %i.bau = load i64, ptr %i.bal, align 8          ; 2 uses
  %factor.op.mul = mul i64 %i.bat, %i.bau
  %i.bav = sext i32 %i.bar to i64
  %factor.op.mul912 = mul i64 %i.bau, %i.bav
  br label %bb.ao

.preheader.loopexit:                              ; preds = %._crit_edge
  %i.baw = trunc nsw i64 %indvars.iv.next1005 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader848
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader848 ], [ %i.baw, %.preheader.loopexit ] ; 2 uses
  %i.bax = icmp slt i32 %.3.lcssa, %3
  br i1 %i.bax, label %.lr.ph934, label %._crit_edge935

.lr.ph934:                                        ; preds = %.preheader
  %.not = icmp eq ptr %.0.val, null
  %i.bay = icmp sgt i32 %5, 0
  %i.baz = sext i32 %5 to i64
  %i.bba = shl nsw i32 %5, 1
  %i.bbb = sext i32 %i.bba to i64
  %i.bbc = mul nsw i32 %5, 3
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = shl nsw i32 %5, 2
  %i.bbf = sext i32 %i.bbe to i64                 ; 12 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbh = sext i32 %i.e to i64
  %i.bbi = sext i32 %.3.lcssa to i64
  %i.bbj = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count1022 = sext i32 %3 to i64
  %invariant.gep1071 = getelementptr [4 x i8], ptr %.0.val, i64 %i.bbj
  %wide.trip.count1017 = zext nneg i32 %5 to i64
  %i.bbk = load ptr, ptr %0, align 8
  %i.bbl = load i32, ptr %i.d, align 4
  %i.bbm = load ptr, ptr %1, align 8
  %i.bbn = load i64, ptr %i.j, align 8
  %i.bbo = load i64, ptr %i.bbg, align 8          ; 2 uses
  %factor.op.mul1076 = mul i64 %i.bbn, %i.bbo
  %i.bbp = sext i32 %i.bbl to i64
  %factor.op.mul929 = mul i64 %i.bbo, %i.bbp
  br label %bb.bp

bb.ao:                                            ; preds = %.lr.ph916, %._crit_edge
  %indvars.iv1004 = phi i64 [ %i.ban, %.lr.ph916 ], [ %indvars.iv.next1005, %._crit_edge ] ; 4 uses
  br i1 %.not728, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1004
  %i.bbq = load <2 x float>, ptr %gep, align 4, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.ap
  %i.bbr = phi <2 x float> [ %i.bbq, %bb.ap ], [ zeroinitializer, %bb.ao ] ; 2 uses
  br i1 %i.bac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.bbs = trunc nsw i64 %indvars.iv1004 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul859, %i.bbs
  %i.bbt = sext i32 %factor.op.mul.reass to i64
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.baq, i64 %i.bbt
  %i.bbv = add nsw i64 %indvars.iv1004, %i.bap
  %.reass = mul i64 %factor.op.mul, %i.bbv
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bas, i64 %.reass
  %i.bbx = load ptr, ptr %7, align 8              ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 4
  %i.bbz = load ptr, ptr %7, align 8              ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 4
  %i.bcb = load ptr, ptr %7, align 8
  %i.bcc = load ptr, ptr %7, align 8              ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 4
  %i.bce = load ptr, ptr %7, align 8              ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 4
  %i.bcg = load ptr, ptr %7, align 8
  br label %_ZN4ncnn3MatD2Ev.exit763

_ZN4ncnn3MatD2Ev.exit763:                         ; preds = %.lr.ph, %bb.bo
  %indvars.iv999 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1000, %bb.bo ] ; 3 uses
  %.idx1068 = shl nuw nsw i64 %indvars.iv999, 3
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %.idx1068 ; 5 uses
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bae ; 2 uses
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bag ; 2 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bai ; 2 uses
  %i.bcl = load <2 x float>, ptr %i.bci, align 4, !tbaa !74 ; 2 uses
  %i.bcm = load <2 x float>, ptr %i.bcj, align 4, !tbaa !74 ; 2 uses
  %i.bcn = fsub fast <2 x float> %i.bcl, %i.bcm
  %i.bco = load <2 x float>, ptr %i.bck, align 4, !tbaa !74
  %i.bcp = fadd fast <2 x float> %i.bcn, %i.bco
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.bci, i64 %i.bak ; 2 uses
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %i.bak ; 2 uses
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %i.bak ; 2 uses
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcq, i64 %i.bak ; 2 uses
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %i.bak ; 2 uses
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %i.bcs, i64 %i.bak ; 2 uses
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %i.bak
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %i.bak
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.bak
  %i.bcz = load <2 x float>, ptr %i.bcq, align 4, !tbaa !74 ; 2 uses
  %i.bda = load <2 x float>, ptr %i.bcr, align 4, !tbaa !74 ; 2 uses
  %i.bdb = fsub fast <2 x float> %i.bcz, %i.bda
  %i.bdc = load <2 x float>, ptr %i.bcs, align 4, !tbaa !74
  %i.bdd = fadd fast <2 x float> %i.bdb, %i.bdc
  %i.bde = load <2 x float>, ptr %i.bct, align 4, !tbaa !74 ; 2 uses
  %i.bdf = load <2 x float>, ptr %i.bcu, align 4, !tbaa !74 ; 2 uses
  %i.bdg = fsub fast <2 x float> %i.bde, %i.bdf
  %i.bdh = load <2 x float>, ptr %i.bcv, align 4, !tbaa !74
  %i.bdi = fadd fast <2 x float> %i.bdg, %i.bdh   ; 2 uses
  %i.bdj = load <2 x float>, ptr %i.bcw, align 4, !tbaa !74 ; 2 uses
  %i.bdk = load <2 x float>, ptr %i.bcx, align 4, !tbaa !74 ; 2 uses
  %i.bdl = fsub fast <2 x float> %i.bdj, %i.bdk
  %i.bdm = load <2 x float>, ptr %i.bcy, align 4, !tbaa !74
  %i.bdn = fadd fast <2 x float> %i.bdl, %i.bdm
  %i.bdo = trunc i64 %indvars.iv999 to i32
  %i.bdp = add i32 %4, %i.bdo                     ; 2 uses
  %i.bdq = sdiv i32 %i.bdp, %i.o
  %i.bdr = srem i32 %i.bdp, %i.o
  %i.bds = shl nsw i32 %i.bdq, 1                  ; 3 uses
  %i.bdt = sext i32 %i.bds to i64
  %.reass913 = mul i64 %factor.op.mul912, %i.bdt
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bbw, i64 %.reass913
  %i.bdv = shl nsw i32 %i.bdr, 1                  ; 2 uses
  %i.bdw = sext i32 %i.bdv to i64
  %i.bdx = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.bdw ; 5 uses
  %i.bdy = or disjoint i32 %i.bdv, 1
  %i.bdz = icmp slt i32 %i.bdy, %i.e              ; 2 uses
  %.not729 = icmp slt i32 %i.bds, %i.g
  br i1 %.not729, label %bb.aq, label %bb.bc

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit763
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bak ; 2 uses
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.bea, i64 %i.bak ; 2 uses
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %i.bak
  %i.bed = load <2 x float>, ptr %i.bec, align 4, !tbaa !74
  %i.bee = fadd fast <2 x float> %i.bdj, %i.bed
  %i.bef = fadd fast <2 x float> %i.bee, %i.bdk
  %i.beg = load <2 x float>, ptr %i.beb, align 4, !tbaa !74
  %i.beh = fadd fast <2 x float> %i.bde, %i.beg
  %i.bei = fadd fast <2 x float> %i.beh, %i.bdf   ; 2 uses
  %i.bej = load <2 x float>, ptr %i.bea, align 4, !tbaa !74
  %i.bek = fadd fast <2 x float> %i.bcz, %i.bej
  %i.bel = fadd fast <2 x float> %i.bek, %i.bda
  %i.bem = fadd fast <2 x float> %i.bel, %i.bbr   ; 2 uses
  %i.ben = load <2 x float>, ptr %i.bch, align 4, !tbaa !74
  %i.beo = fadd fast <2 x float> %i.bcl, %i.ben
  %i.bep = fadd fast <2 x float> %i.beo, %i.bcm
  %i.beq = fadd fast <2 x float> %i.bem, %i.bep
  %i.ber = fadd fast <2 x float> %i.beq, %i.bei   ; 11 uses
  %i.bes = fsub fast <2 x float> %i.bem, %i.bei
  %i.bet = fadd fast <2 x float> %i.bes, %i.bef   ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726
    i32 6, label %bb.ar
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717: ; preds = %bb.aq
  %i.beu = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ber, <2 x float> zeroinitializer)
  %i.bev = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bet, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801
end_hunk_13
begin_hunk_14_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.apm = getelementptr inbounds nuw i8, ptr %.01017926.us, i64 48
  %i.apn = getelementptr inbounds nuw i8, ptr %.91040925.us, i64 12
  %i.apo = load <4 x float>, ptr %i.apm, align 16, !tbaa !20
  %i.app = load float, ptr %i.apn, align 4, !tbaa !74
  %i.apq = insertelement <4 x float> poison, float %i.app, i64 0
  %i.apr = shufflevector <4 x float> %i.apq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apo, <4 x float> nofpclass(nan inf) %i.apr, <4 x float> nofpclass(nan inf) %i.apl) ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.01017926.us, i64 64 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.91040925.us, i64 16 ; 2 uses
  %niter2346.next.3 = add nuw nsw i32 %niter2346, 4 ; 2 uses
  %niter2346.ncmp.3 = icmp eq i32 %niter2346.next.3, %unroll_iter2345
  br i1 %niter2346.ncmp.3, label %._crit_edge930.us.unr-lcssa, label %.lr.ph929.us, !llvm.loop !742

._crit_edge930.us.unr-lcssa:                      ; preds = %.lr.ph929.us
  br i1 %lcmp.mod2342.not, label %._crit_edge930.us, label %.lr.ph929.us.epil.preheader

.lr.ph929.us.epil.preheader:                      ; preds = %._crit_edge930.us.unr-lcssa, %.lr.ph929.us.preheader
  %.01017926.us.epil.init = phi ptr [ %i.aev, %.lr.ph929.us.preheader ], [ %i.apt, %._crit_edge930.us.unr-lcssa ]
  %.91040925.us.epil.init = phi ptr [ %.81039933.us, %.lr.ph929.us.preheader ], [ %i.apu, %._crit_edge930.us.unr-lcssa ]
  %.0430924.us.epil.init = phi <4 x float> [ %.0430924.us.ph, %.lr.ph929.us.preheader ], [ %i.aps, %._crit_edge930.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2344)
  br label %.lr.ph929.us.epil

.lr.ph929.us.epil:                                ; preds = %.lr.ph929.us.epil, %.lr.ph929.us.epil.preheader
  %.01017926.us.epil = phi ptr [ %i.aqa, %.lr.ph929.us.epil ], [ %.01017926.us.epil.init, %.lr.ph929.us.epil.preheader ] ; 2 uses
  %.91040925.us.epil = phi ptr [ %i.aqb, %.lr.ph929.us.epil ], [ %.91040925.us.epil.init, %.lr.ph929.us.epil.preheader ] ; 2 uses
  %.0430924.us.epil = phi <4 x float> [ %i.apz, %.lr.ph929.us.epil ], [ %.0430924.us.epil.init, %.lr.ph929.us.epil.preheader ]
  %epil.iter2341 = phi i32 [ %epil.iter2341.next, %.lr.ph929.us.epil ], [ 0, %.lr.ph929.us.epil.preheader ]
  %i.apv = load <4 x float>, ptr %.01017926.us.epil, align 16, !tbaa !20
  %i.apw = load float, ptr %.91040925.us.epil, align 4, !tbaa !74
  %i.apx = insertelement <4 x float> poison, float %i.apw, i64 0
  %i.apy = shufflevector <4 x float> %i.apx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apv, <4 x float> nofpclass(nan inf) %i.apy, <4 x float> nofpclass(nan inf) %.0430924.us.epil) ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %.01017926.us.epil, i64 16
  %i.aqb = getelementptr inbounds nuw i8, ptr %.91040925.us.epil, i64 4
  %epil.iter2341.next = add i32 %epil.iter2341, 1 ; 2 uses
  %epil.iter2341.cmp.not = icmp eq i32 %epil.iter2341.next, %xtraiter2340
  br i1 %epil.iter2341.cmp.not, label %._crit_edge930.us, label %.lr.ph929.us.epil, !llvm.loop !743

._crit_edge930.us:                                ; preds = %.lr.ph929.us.epil, %._crit_edge930.us.unr-lcssa
  %.lcssa2228 = phi <4 x float> [ %i.aps, %._crit_edge930.us.unr-lcssa ], [ %i.apz, %.lr.ph929.us.epil ]
  %i.aqc = getelementptr i8, ptr %.81039933.us, i64 %i.pf
  %scevgep1441 = getelementptr i8, ptr %i.aqc, i64 4
  store <4 x float> %.lcssa2228, ptr %.20935.us, align 16, !tbaa !20
  %i.aqd = getelementptr inbounds nuw i8, ptr %.20935.us, i64 16 ; 2 uses
  %i.aqe = add nuw nsw i32 %.41030934.us, 1       ; 2 uses
  %exitcond1443.not = icmp eq i32 %i.aqe, %4
  br i1 %exitcond1443.not, label %._crit_edge937, label %.lr.ph936.split.us, !llvm.loop !744

.lr.ph936.split:                                  ; preds = %.lr.ph936
  br i1 %i.ov, label %.lr.ph936.split.split.us.preheader, label %.lr.ph936.split.split.preheader

.lr.ph936.split.split.preheader:                  ; preds = %.lr.ph936.split
  %scevgep1437 = getelementptr i8, ptr %.19.lcssa, i64 16
  %i.aqf = sub i32 %i.pe, %.31029.lcssa
  %i.aqg = zext i32 %i.aqf to i64
  %i.aqh = shl nuw nsw i64 %i.aqg, 4
  %scevgep1438 = getelementptr i8, ptr %scevgep1437, i64 %i.aqh
  br label %._crit_edge937

.lr.ph936.split.split.us.preheader:               ; preds = %.lr.ph936.split
  %i.aqi = sub i32 %i.pe, %.31029.lcssa
  %i.aqj = zext i32 %i.aqi to i64
  %i.aqk = shl nuw nsw i64 %i.aqj, 4              ; 2 uses
  %i.aql = add nuw nsw i64 %i.aqk, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.19.lcssa, i8 0, i64 %i.aql, i1 false), !tbaa !20
  %scevgep1439 = getelementptr i8, ptr %.19.lcssa, i64 16
  %scevgep1440 = getelementptr i8, ptr %scevgep1439, i64 %i.aqk
  br label %._crit_edge937

.lr.ph920:                                        ; preds = %.preheader508, %._crit_edge913
  %.19919 = phi ptr [ %i.arz, %._crit_edge913 ], [ %.18.lcssa, %.preheader508 ] ; 5 uses
  %.31029918 = phi i32 [ %i.asa, %._crit_edge913 ], [ %.21028.lcssa, %.preheader508 ]
  %.61037917 = phi ptr [ %.71038.lcssa, %._crit_edge913 ], [ %.41035.lcssa, %.preheader508 ] ; 4 uses
  br i1 %i.ov, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph920
  %i.aqm = load <4 x float>, ptr %.19919, align 16, !tbaa !20
  %i.aqn = getelementptr inbounds nuw i8, ptr %.19919, i64 16
  %i.aqo = load <4 x float>, ptr %i.aqn, align 16, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph920, %bb.ag
  %.0437 = phi nsz <4 x float> [ %i.aqm, %bb.ag ], [ zeroinitializer, %.lr.ph920 ] ; 3 uses
  %storemerge1105 = phi <4 x float> [ %i.aqo, %bb.ag ], [ zeroinitializer, %.lr.ph920 ] ; 3 uses
  br i1 %i.ow, label %.lr.ph912.preheader, label %._crit_edge913

.lr.ph912.preheader:                              ; preds = %bb.ah
  br i1 %i.pk, label %.lr.ph912.epil.preheader, label %.lr.ph912

.lr.ph912:                                        ; preds = %.lr.ph912.preheader, %.lr.ph912
  %.01019909 = phi ptr [ %i.arl, %.lr.ph912 ], [ %i.aev, %.lr.ph912.preheader ] ; 3 uses
  %.71038908 = phi ptr [ %i.arm, %.lr.ph912 ], [ %.61037917, %.lr.ph912.preheader ] ; 5 uses
  %.0436907 = phi <4 x float> [ %i.ark, %.lr.ph912 ], [ %storemerge1105, %.lr.ph912.preheader ]
  %.1438906 = phi <4 x float> [ %i.arf, %.lr.ph912 ], [ %.0437, %.lr.ph912.preheader ]
  %niter2339 = phi i32 [ %niter2339.next.1, %.lr.ph912 ], [ 0, %.lr.ph912.preheader ]
  %i.aqp = load <4 x float>, ptr %.01019909, align 16, !tbaa !20 ; 2 uses
  %i.aqq = load float, ptr %.71038908, align 4, !tbaa !74
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aqp, <4 x float> nofpclass(nan inf) %i.aqs, <4 x float> nofpclass(nan inf) %.1438906)
  %i.aqu = getelementptr inbounds nuw i8, ptr %.71038908, i64 4
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !74
  %i.aqw = insertelement <4 x float> poison, float %i.aqv, i64 0
  %i.aqx = shufflevector <4 x float> %i.aqw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aqp, <4 x float> nofpclass(nan inf) %i.aqx, <4 x float> nofpclass(nan inf) %.0436907)
  %i.aqz = getelementptr inbounds nuw i8, ptr %.01019909, i64 16
  %i.ara = getelementptr inbounds nuw i8, ptr %.71038908, i64 8
  %i.arb = load <4 x float>, ptr %i.aqz, align 16, !tbaa !20 ; 2 uses
  %i.arc = load float, ptr %i.ara, align 4, !tbaa !74
  %i.ard = insertelement <4 x float> poison, float %i.arc, i64 0
  %i.are = shufflevector <4 x float> %i.ard, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arb, <4 x float> nofpclass(nan inf) %i.are, <4 x float> nofpclass(nan inf) %i.aqt) ; 3 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.71038908, i64 12
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !74
  %i.ari = insertelement <4 x float> poison, float %i.arh, i64 0
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ark = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arb, <4 x float> nofpclass(nan inf) %i.arj, <4 x float> nofpclass(nan inf) %i.aqy) ; 3 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %.01019909, i64 32 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.71038908, i64 16 ; 2 uses
  %niter2339.next.1 = add nuw nsw i32 %niter2339, 2 ; 2 uses
  %niter2339.ncmp.1 = icmp eq i32 %niter2339.next.1, %unroll_iter2338
  br i1 %niter2339.ncmp.1, label %._crit_edge913.loopexit.unr-lcssa, label %.lr.ph912, !llvm.loop !745

._crit_edge913.loopexit.unr-lcssa:                ; preds = %.lr.ph912
  br i1 %lcmp.mod2334.not, label %._crit_edge913.loopexit, label %.lr.ph912.epil.preheader

.lr.ph912.epil.preheader:                         ; preds = %._crit_edge913.loopexit.unr-lcssa, %.lr.ph912.preheader
  %.01019909.epil.init = phi ptr [ %i.aev, %.lr.ph912.preheader ], [ %i.arl, %._crit_edge913.loopexit.unr-lcssa ]
  %.71038908.epil.init = phi ptr [ %.61037917, %.lr.ph912.preheader ], [ %i.arm, %._crit_edge913.loopexit.unr-lcssa ] ; 2 uses
  %.0436907.epil.init = phi <4 x float> [ %storemerge1105, %.lr.ph912.preheader ], [ %i.ark, %._crit_edge913.loopexit.unr-lcssa ]
  %.1438906.epil.init = phi <4 x float> [ %.0437, %.lr.ph912.preheader ], [ %i.arf, %._crit_edge913.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2337)
  %i.arn = load <4 x float>, ptr %.01019909.epil.init, align 16, !tbaa !20 ; 2 uses
  %i.aro = load float, ptr %.71038908.epil.init, align 4, !tbaa !74
  %i.arp = insertelement <4 x float> poison, float %i.aro, i64 0
  %i.arq = shufflevector <4 x float> %i.arp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arn, <4 x float> nofpclass(nan inf) %i.arq, <4 x float> nofpclass(nan inf) %.1438906.epil.init)
  %i.ars = getelementptr inbounds nuw i8, ptr %.71038908.epil.init, i64 4
  %i.art = load float, ptr %i.ars, align 4, !tbaa !74
  %i.aru = insertelement <4 x float> poison, float %i.art, i64 0
  %i.arv = shufflevector <4 x float> %i.aru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arn, <4 x float> nofpclass(nan inf) %i.arv, <4 x float> nofpclass(nan inf) %.0436907.epil.init)
  br label %._crit_edge913.loopexit

._crit_edge913.loopexit:                          ; preds = %._crit_edge913.loopexit.unr-lcssa, %.lr.ph912.epil.preheader
  %.lcssa2225 = phi <4 x float> [ %i.arf, %._crit_edge913.loopexit.unr-lcssa ], [ %i.arr, %.lr.ph912.epil.preheader ]
  %.lcssa2224 = phi <4 x float> [ %i.ark, %._crit_edge913.loopexit.unr-lcssa ], [ %i.arw, %.lr.ph912.epil.preheader ]
  %i.arx = getelementptr i8, ptr %.61037917, i64 %i.pd
  %scevgep1435 = getelementptr i8, ptr %i.arx, i64 8
  br label %._crit_edge913

._crit_edge913:                                   ; preds = %._crit_edge913.loopexit, %bb.ah
  %.1438.lcssa = phi <4 x float> [ %.0437, %bb.ah ], [ %.lcssa2225, %._crit_edge913.loopexit ]
  %.0436.lcssa = phi <4 x float> [ %storemerge1105, %bb.ah ], [ %.lcssa2224, %._crit_edge913.loopexit ]
  %.71038.lcssa = phi ptr [ %.61037917, %bb.ah ], [ %scevgep1435, %._crit_edge913.loopexit ] ; 2 uses
  store <4 x float> %.1438.lcssa, ptr %.19919, align 16, !tbaa !20
  %i.ary = getelementptr inbounds nuw i8, ptr %.19919, i64 16
  store <4 x float> %.0436.lcssa, ptr %i.ary, align 16, !tbaa !20
  %i.arz = getelementptr inbounds nuw i8, ptr %.19919, i64 32 ; 2 uses
  %i.asa = add nuw nsw i32 %.31029918, 2          ; 3 uses
  %i.asb = or disjoint i32 %i.asa, 1
  %i.asc = icmp slt i32 %i.asb, %4
  br i1 %i.asc, label %.lr.ph920, label %.preheader507, !llvm.loop !746

._crit_edge937:                                   ; preds = %._crit_edge930.us, %.lr.ph936.split.split.preheader, %.lr.ph936.split.split.us.preheader, %.preheader507
  %.20.lcssa = phi ptr [ %.19.lcssa, %.preheader507 ], [ %scevgep1440, %.lr.ph936.split.split.us.preheader ], [ %scevgep1438, %.lr.ph936.split.split.preheader ], [ %i.aqd, %._crit_edge930.us ] ; 3 uses
  %indvars.iv.next1445 = add nuw nsw i64 %indvars.iv1444, 1 ; 2 uses
  %exitcond1448.not = icmp eq i64 %indvars.iv.next1445, %wide.trip.count1447
  br i1 %exitcond1448.not, label %bb.x, label %bb.y, !llvm.loop !747

.preheader505:                                    ; preds = %.preheader505.lr.ph, %bb.ai
  %indvars.iv1468 = phi i64 [ %i.adv, %.preheader505.lr.ph ], [ %indvars.iv.next1469, %bb.ai ] ; 2 uses
  %.211064 = phi ptr [ %.14.lcssa, %.preheader505.lr.ph ], [ %.27.lcssa, %bb.ai ]
  %i.asd = mul nsw i64 %indvars.iv1468, %i.adx
  br label %bb.aj

.preheader500.loopexit:                           ; preds = %bb.ai
  %i.ase = trunc nsw i64 %indvars.iv.next1469 to i32
  br label %.preheader500

.preheader500:                                    ; preds = %.preheader500.loopexit, %.preheader506
  %.3935.lcssa = phi i32 [ %.2934.lcssa, %.preheader506 ], [ %i.ase, %.preheader500.loopexit ] ; 2 uses
  %.21.lcssa = phi ptr [ %.14.lcssa, %.preheader506 ], [ %.27.lcssa, %.preheader500.loopexit ]
  %i.asf = icmp slt i32 %.3935.lcssa, %3
  br i1 %i.asf, label %.preheader499.lr.ph, label %._crit_edge1173

.preheader499.lr.ph:                              ; preds = %.preheader500
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.asj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ask = icmp sgt i32 %4, 15
  %i.asl = icmp eq i32 %5, 0                      ; 6 uses
  %i.asm = icmp sgt i32 %6, 0                     ; 5 uses
  %i.asn = add i32 %6, -1                         ; 4 uses
  %i.aso = zext i32 %i.asn to i64                 ; 5 uses
  %i.asp = shl nuw nsw i64 %i.aso, 6
  %i.asq = and i32 %4, -16
  %i.asr = shl nuw nsw i64 %i.aso, 5
  %7 = add i32 %4, -4                             ; 2 uses
  %i.ass = shl nuw nsw i64 %i.aso, 4
  %i.ast = shl nuw nsw i64 %i.aso, 3
  %i.asu = shl nuw nsw i64 %i.aso, 2
  %i.asv = sext i32 %.3935.lcssa to i64
  %i.asw = sext i32 %6 to i64
  %wide.trip.count1496 = sext i32 %3 to i64
  %wide.trip.count1491 = zext nneg i32 %2 to i64
  %i.asx = zext i32 %6 to i64                     ; 10 uses
  %xtraiter2365 = and i32 %6, 1
  %i.asy = icmp eq i32 %i.asn, 0
  %unroll_iter2373 = and i32 %6, 2147483646
  %lcmp.mod2367.not = icmp eq i32 %xtraiter2365, 0
  %lcmp.mod2372 = trunc i32 %6 to i1
  %xtraiter2375 = and i32 %6, 1
  %i.asz = icmp eq i32 %i.asn, 0
  %unroll_iter2381 = and i32 %6, 2147483646
  %lcmp.mod2377.not = icmp eq i32 %xtraiter2375, 0
  %lcmp.mod2380 = trunc i32 %6 to i1
  %xtraiter2383 = and i32 %6, 3                   ; 3 uses
  %i.ata = icmp ult i32 %i.asn, 3
  %unroll_iter2388 = and i32 %6, 2147483644
  %lcmp.mod2385.not = icmp eq i32 %xtraiter2383, 0
  %lcmp.mod2387 = icmp ne i32 %xtraiter2383, 0
  %min.iters.check2035.a = icmp ult i32 %6, 8
  %min.iters.check2037 = icmp ult i32 %6, 64
  %i.atb = and i64 %i.asx, 56
  %n.vec2039 = and i64 %i.asx, 2147483584         ; 6 uses
  %i.atc = trunc nuw nsw i64 %n.vec2039 to i32
  %i.atd = shl nuw nsw i64 %n.vec2039, 2
  %i.ate = shl nuw nsw i64 %n.vec2039, 3
  %cmp.n2079 = icmp eq i64 %n.vec2039, %i.asx
  %min.epilog.iters.check2088 = icmp eq i64 %i.atb, 0
  %n.vec2090 = and i64 %i.asx, 2147483640         ; 5 uses
  %i.atf = trunc nuw nsw i64 %n.vec2090 to i32
  %i.atg = shl nuw nsw i64 %n.vec2090, 2
  %i.ath = shl nuw nsw i64 %n.vec2090, 3
  %cmp.n2103 = icmp eq i64 %n.vec2090, %i.asx
  %min.iters.check1984.a = icmp ult i32 %6, 8
  %min.iters.check1986 = icmp ult i32 %6, 64
  %i.ati = and i64 %i.asx, 56
  %n.vec1988 = and i64 %i.asx, 2147483584         ; 5 uses
  %i.atj = trunc nuw nsw i64 %n.vec1988 to i32
  %i.atk = shl nuw nsw i64 %n.vec1988, 2          ; 2 uses
  %cmp.n2010 = icmp eq i64 %n.vec1988, %i.asx
  %min.epilog.iters.check2018 = icmp eq i64 %i.ati, 0
  %n.vec2020 = and i64 %i.asx, 2147483640         ; 4 uses
  %i.atl = trunc nuw nsw i64 %n.vec2020 to i32
  %i.atm = shl nuw nsw i64 %n.vec2020, 2          ; 2 uses
  %cmp.n2030 = icmp eq i64 %n.vec2020, %i.asx
  br label %.preheader499

bb.ai:                                            ; preds = %._crit_edge1059
  %indvars.iv.next1469 = add nuw nsw i64 %indvars.iv1468, 2 ; 3 uses
  %i.atn = icmp slt i64 %indvars.iv.next1469, %invariant.op1696
  br i1 %i.atn, label %.preheader505, label %.preheader500.loopexit, !llvm.loop !748

bb.aj:                                            ; preds = %.preheader505, %._crit_edge1059
  %indvars.iv1463 = phi i64 [ 0, %.preheader505 ], [ %indvars.iv.next1464, %._crit_edge1059 ] ; 3 uses
  %.221062 = phi ptr [ %.211064, %.preheader505 ], [ %.27.lcssa, %._crit_edge1059 ] ; 2 uses
  %i.ato = load ptr, ptr %0, align 8, !tbaa !9
  %i.atp = load i32, ptr %i.adg, align 4, !tbaa !114
  %i.atq = sext i32 %i.atp to i64
  %i.atr = mul nsw i64 %indvars.iv1463, %i.atq
  %i.ats = load i64, ptr %i.adh, align 8, !tbaa !19
  %i.att = mul i64 %i.atr, %i.ats
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ato, i64 %i.att
  %i.atv = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.asd ; 19 uses
  %i.atw = load ptr, ptr %1, align 8, !tbaa !9
  %i.atx = load i32, ptr %i.adi, align 4, !tbaa !114
  %i.aty = sext i32 %i.atx to i64
  %i.atz = mul nsw i64 %indvars.iv1463, %i.aty
  %i.aua = load i64, ptr %i.adj, align 8, !tbaa !19
  %i.aub = mul i64 %i.atz, %i.aua
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.aub ; 2 uses
  br i1 %i.adk, label %.lr.ph978, label %.preheader504

.preheader504:                                    ; preds = %._crit_edge964, %bb.aj
  %.01005.lcssa = phi ptr [ %i.auc, %bb.aj ], [ %.11006.lcssa, %._crit_edge964 ] ; 2 uses
  %.01000.lcssa = phi i32 [ 0, %bb.aj ], [ %i.adq, %._crit_edge964 ] ; 3 uses
  %.23.lcssa = phi ptr [ %.221062, %bb.aj ], [ %i.awr, %._crit_edge964 ] ; 2 uses
  %i.aud = or disjoint i32 %.01000.lcssa, 7
  %i.aue = icmp slt i32 %i.aud, %4
  br i1 %i.aue, label %.lr.ph1000, label %.preheader503

.lr.ph978:                                        ; preds = %bb.aj, %._crit_edge964
  %.23976 = phi ptr [ %i.awr, %._crit_edge964 ], [ %.221062, %bb.aj ] ; 17 uses
  %.01000975 = phi i32 [ %i.aws, %._crit_edge964 ], [ 0, %bb.aj ]
  %.01005974 = phi ptr [ %.11006.lcssa, %._crit_edge964 ], [ %i.auc, %bb.aj ] ; 3 uses
  br i1 %i.adl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph978
  %i.auf = load <4 x float>, ptr %.23976, align 1, !tbaa !20 ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %.23976, i64 16
  %i.auh = load <4 x float>, ptr %i.aug, align 1, !tbaa !20 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %.23976, i64 32
  %i.auj = load <4 x float>, ptr %i.aui, align 1, !tbaa !20 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.23976, i64 48
  %i.aul = load <4 x float>, ptr %i.auk, align 1, !tbaa !20 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %.23976, i64 64
  %i.aun = load <4 x float>, ptr %i.aum, align 1, !tbaa !20 ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %.23976, i64 80
  %i.aup = load <4 x float>, ptr %i.auo, align 1, !tbaa !20 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.23976, i64 96
  %i.aur = load <4 x float>, ptr %i.auq, align 1, !tbaa !20 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %.23976, i64 112
  %i.aut = load <4 x float>, ptr %i.aus, align 1, !tbaa !20 ; 2 uses
  %i.auu = shufflevector <4 x float> %i.auf, <4 x float> %i.auh, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.auv = shufflevector <4 x float> %i.auj, <4 x float> %i.aul, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.auw = shufflevector <4 x float> %i.aun, <4 x float> %i.aup, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aux = shufflevector <4 x float> %i.aur, <4 x float> %i.aut, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.auy = shufflevector <4 x float> %i.auf, <4 x float> %i.auh, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auz = shufflevector <4 x float> %i.auj, <4 x float> %i.aul, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ava = shufflevector <4 x float> %i.aun, <4 x float> %i.aup, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avb = shufflevector <4 x float> %i.aur, <4 x float> %i.aut, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph978, %bb.ak
  %.0425 = phi nsz <4 x float> [ %i.auu, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %.0423 = phi nsz <4 x float> [ %i.auv, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %.0421 = phi nsz <4 x float> [ %i.auw, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %.0419 = phi nsz <4 x float> [ %i.aux, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %.0417 = phi nsz <4 x float> [ %i.auy, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %.0415 = phi nsz <4 x float> [ %i.auz, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %.0413 = phi nsz <4 x float> [ %i.ava, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  %storemerge1103 = phi <4 x float> [ %i.avb, %bb.ak ], [ zeroinitializer, %.lr.ph978 ] ; 2 uses
  br i1 %i.adm, label %.lr.ph963, label %._crit_edge964

.lr.ph963:                                        ; preds = %bb.al, %.lr.ph963
  %.0984961 = phi i32 [ %i.awa, %.lr.ph963 ], [ 0, %bb.al ]
  %.0999960 = phi ptr [ %i.avy, %.lr.ph963 ], [ %i.atv, %bb.al ] ; 3 uses
  %.11006959 = phi ptr [ %i.avz, %.lr.ph963 ], [ %.01005974, %bb.al ] ; 5 uses
  %.0412958 = phi <4 x float> [ %i.avx, %.lr.ph963 ], [ %storemerge1103, %bb.al ]
  %.1414957 = phi <4 x float> [ %i.avw, %.lr.ph963 ], [ %.0413, %bb.al ]
  %.1416956 = phi <4 x float> [ %i.avv, %.lr.ph963 ], [ %.0415, %bb.al ]
  %.1418955 = phi <4 x float> [ %i.avu, %.lr.ph963 ], [ %.0417, %bb.al ]
  %.1420954 = phi <4 x float> [ %i.avt, %.lr.ph963 ], [ %.0419, %bb.al ]
  %.1422953 = phi <4 x float> [ %i.avs, %.lr.ph963 ], [ %.0421, %bb.al ]
  %.1424952 = phi <4 x float> [ %i.avr, %.lr.ph963 ], [ %.0423, %bb.al ]
  %.1426951 = phi <4 x float> [ %i.avq, %.lr.ph963 ], [ %.0425, %bb.al ]
  %i.avc = load float, ptr %.0999960, align 4, !tbaa !74
  %i.avd = insertelement <4 x float> poison, float %i.avc, i64 0
  %i.ave = shufflevector <4 x float> %i.avd, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.0999960, i64 4
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !74
  %i.avh = insertelement <4 x float> poison, float %i.avg, i64 0
  %i.avi = shufflevector <4 x float> %i.avh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.avj = load <4 x float>, ptr %.11006959, align 16, !tbaa !20 ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %.11006959, i64 16
  %i.avl = load <4 x float>, ptr %i.avk, align 16, !tbaa !20 ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.11006959, i64 32
  %i.avn = load <4 x float>, ptr %i.avm, align 16, !tbaa !20 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %.11006959, i64 48
  %i.avp = load <4 x float>, ptr %i.avo, align 16, !tbaa !20 ; 2 uses
  %i.avq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.avj, <4 x float> nofpclass(nan inf) %.1426951) ; 2 uses
  %i.avr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.avl, <4 x float> nofpclass(nan inf) %.1424952) ; 2 uses
  %i.avs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.avn, <4 x float> nofpclass(nan inf) %.1422953) ; 2 uses
  %i.avt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.avp, <4 x float> nofpclass(nan inf) %.1420954) ; 2 uses
  %i.avu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %i.avj, <4 x float> nofpclass(nan inf) %.1418955) ; 2 uses
  %i.avv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %i.avl, <4 x float> nofpclass(nan inf) %.1416956) ; 2 uses
  %i.avw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %i.avn, <4 x float> nofpclass(nan inf) %.1414957) ; 2 uses
  %i.avx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %i.avp, <4 x float> nofpclass(nan inf) %.0412958) ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %.0999960, i64 8
  %i.avz = getelementptr inbounds nuw i8, ptr %.11006959, i64 64
  %i.awa = add nuw nsw i32 %.0984961, 1           ; 2 uses
  %exitcond1453.not = icmp eq i32 %i.awa, %6
  br i1 %exitcond1453.not, label %._crit_edge964.loopexit, label %.lr.ph963, !llvm.loop !749

._crit_edge964.loopexit:                          ; preds = %.lr.ph963
  %i.awb = getelementptr i8, ptr %.01005974, i64 %i.adp
  %scevgep1452 = getelementptr i8, ptr %i.awb, i64 64
  br label %._crit_edge964

._crit_edge964:                                   ; preds = %._crit_edge964.loopexit, %bb.al
  %.1426.lcssa = phi <4 x float> [ %.0425, %bb.al ], [ %i.avq, %._crit_edge964.loopexit ] ; 2 uses
  %.1424.lcssa = phi <4 x float> [ %.0423, %bb.al ], [ %i.avr, %._crit_edge964.loopexit ] ; 2 uses
  %.1422.lcssa = phi <4 x float> [ %.0421, %bb.al ], [ %i.avs, %._crit_edge964.loopexit ] ; 2 uses
  %.1420.lcssa = phi <4 x float> [ %.0419, %bb.al ], [ %i.avt, %._crit_edge964.loopexit ] ; 2 uses
  %.1418.lcssa = phi <4 x float> [ %.0417, %bb.al ], [ %i.avu, %._crit_edge964.loopexit ] ; 2 uses
  %.1416.lcssa = phi <4 x float> [ %.0415, %bb.al ], [ %i.avv, %._crit_edge964.loopexit ] ; 2 uses
  %.1414.lcssa = phi <4 x float> [ %.0413, %bb.al ], [ %i.avw, %._crit_edge964.loopexit ] ; 2 uses
  %.0412.lcssa = phi <4 x float> [ %storemerge1103, %bb.al ], [ %i.avx, %._crit_edge964.loopexit ] ; 2 uses
  %.11006.lcssa = phi ptr [ %.01005974, %bb.al ], [ %scevgep1452, %._crit_edge964.loopexit ] ; 2 uses
  %i.awc = shufflevector <4 x float> %.1426.lcssa, <4 x float> %.1418.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.awd = shufflevector <4 x float> %.1426.lcssa, <4 x float> %.1418.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.awe = shufflevector <4 x float> %.1424.lcssa, <4 x float> %.1416.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.awf = shufflevector <4 x float> %.1424.lcssa, <4 x float> %.1416.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.awg = shufflevector <4 x float> %.1422.lcssa, <4 x float> %.1414.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.awh = shufflevector <4 x float> %.1422.lcssa, <4 x float> %.1414.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.awi = shufflevector <4 x float> %.1420.lcssa, <4 x float> %.0412.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.awj = shufflevector <4 x float> %.1420.lcssa, <4 x float> %.0412.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.awc, ptr %.23976, align 1, !tbaa !20
  %i.awk = getelementptr inbounds nuw i8, ptr %.23976, i64 16
  store <4 x float> %i.awd, ptr %i.awk, align 1, !tbaa !20
  %i.awl = getelementptr inbounds nuw i8, ptr %.23976, i64 32
  store <4 x float> %i.awe, ptr %i.awl, align 1, !tbaa !20
  %i.awm = getelementptr inbounds nuw i8, ptr %.23976, i64 48
  store <4 x float> %i.awf, ptr %i.awm, align 1, !tbaa !20
  %i.awn = getelementptr inbounds nuw i8, ptr %.23976, i64 64
  store <4 x float> %i.awg, ptr %i.awn, align 1, !tbaa !20
  %i.awo = getelementptr inbounds nuw i8, ptr %.23976, i64 80
end_hunk_14
begin_hunk_15_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.bgq = fmul fast float %i.bgp, %i.bgl
  %i.bgr = fadd fast float %i.bgq, %.19081047     ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.09111045, i64 8
  %i.bgt = getelementptr inbounds nuw i8, ptr %.910141044, i64 4
  %i.bgu = add nuw nsw i32 %.09061048, 1          ; 2 uses
  %exitcond1461.not = icmp eq i32 %i.bgu, %6
  br i1 %exitcond1461.not, label %._crit_edge1051.loopexit, label %.lr.ph1050, !llvm.loop !761

._crit_edge1051.loopexit:                         ; preds = %.lr.ph1050, %vec.epilog.middle.block, %middle.block
  %.lcssa1740 = phi float [ %i.bgj, %vec.epilog.middle.block ], [ %i.bfx, %middle.block ], [ %i.bgn, %.lr.ph1050 ]
  %.lcssa1739 = phi float [ %i.bgi, %vec.epilog.middle.block ], [ %i.bfw, %middle.block ], [ %i.bgr, %.lr.ph1050 ]
  %i.bgv = getelementptr i8, ptr %.810131055, i64 %i.adu
  %scevgep1460 = getelementptr i8, ptr %i.bgv, i64 4
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1051.loopexit, %bb.at
  %.91014.lcssa = phi ptr [ %.810131055, %bb.at ], [ %scevgep1460, %._crit_edge1051.loopexit ]
  %.1910.lcssa = phi float [ %.0909, %bb.at ], [ %.lcssa1740, %._crit_edge1051.loopexit ]
  %.1908.lcssa = phi float [ %.0907, %bb.at ], [ %.lcssa1739, %._crit_edge1051.loopexit ]
  store float %.1910.lcssa, ptr %.271057, align 4, !tbaa !74
  %i.bgw = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  store float %.1908.lcssa, ptr %i.bgw, align 4, !tbaa !74
  %i.bgx = getelementptr inbounds nuw i8, ptr %.271057, i64 8 ; 2 uses
  %i.bgy = add nuw nsw i32 %.410041056, 1         ; 2 uses
  %exitcond1462.not = icmp eq i32 %i.bgy, %4
  br i1 %exitcond1462.not, label %._crit_edge1059, label %.lr.ph1058, !llvm.loop !762

._crit_edge1059:                                  ; preds = %._crit_edge1051, %.preheader501
  %.27.lcssa = phi ptr [ %.26.lcssa, %.preheader501 ], [ %i.bgx, %._crit_edge1051 ] ; 3 uses
  %indvars.iv.next1464 = add nuw nsw i64 %indvars.iv1463, 1 ; 2 uses
  %exitcond1467.not = icmp eq i64 %indvars.iv.next1464, %wide.trip.count1466
  br i1 %exitcond1467.not, label %bb.ai, label %bb.aj, !llvm.loop !763

.preheader499:                                    ; preds = %.preheader499.lr.ph, %bb.au
  %indvars.iv1493 = phi i64 [ %i.asv, %.preheader499.lr.ph ], [ %indvars.iv.next1494, %bb.au ] ; 2 uses
  %.281172 = phi ptr [ %.21.lcssa, %.preheader499.lr.ph ], [ %.34.lcssa, %bb.au ]
  %i.bgz = mul nsw i64 %indvars.iv1493, %i.asw
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge1167
  %indvars.iv.next1494 = add nuw nsw i64 %indvars.iv1493, 1 ; 2 uses
  %exitcond1497.not = icmp eq i64 %indvars.iv.next1494, %wide.trip.count1496
  br i1 %exitcond1497.not, label %._crit_edge1173, label %.preheader499, !llvm.loop !764

bb.av:                                            ; preds = %.preheader499, %._crit_edge1167
  %indvars.iv1488 = phi i64 [ 0, %.preheader499 ], [ %indvars.iv.next1489, %._crit_edge1167 ] ; 3 uses
  %.291169 = phi ptr [ %.281172, %.preheader499 ], [ %.34.lcssa, %._crit_edge1167 ] ; 2 uses
  %i.bha = load ptr, ptr %0, align 8, !tbaa !9
  %i.bhb = load i32, ptr %i.asg, align 4, !tbaa !114
  %i.bhc = sext i32 %i.bhb to i64
  %i.bhd = mul nsw i64 %indvars.iv1488, %i.bhc
  %i.bhe = load i64, ptr %i.ash, align 8, !tbaa !19
  %i.bhf = mul i64 %i.bhd, %i.bhe
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bhf
  %i.bhh = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bgz ; 16 uses
  %i.bhi = load ptr, ptr %1, align 8, !tbaa !9
  %i.bhj = load i32, ptr %i.asi, align 4, !tbaa !114
  %i.bhk = sext i32 %i.bhj to i64
  %i.bhl = mul nsw i64 %indvars.iv1488, %i.bhk
  %i.bhm = load i64, ptr %i.asj, align 8, !tbaa !19
  %i.bhn = mul i64 %i.bhl, %i.bhm
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhi, i64 %i.bhn ; 2 uses
  br i1 %i.ask, label %.lr.ph1086, label %.preheader498

.preheader498:                                    ; preds = %._crit_edge1076, %bb.av
  %.30.lcssa = phi ptr [ %.291169, %bb.av ], [ %i.bjw, %._crit_edge1076 ] ; 2 uses
  %.0900.lcssa = phi ptr [ %i.bho, %bb.av ], [ %.1901.lcssa, %._crit_edge1076 ] ; 2 uses
  %.0898.lcssa = phi i32 [ 0, %bb.av ], [ %i.asq, %._crit_edge1076 ] ; 3 uses
  %i.bhp = or disjoint i32 %.0898.lcssa, 7
  %i.bhq = icmp slt i32 %i.bhp, %4
  br i1 %i.bhq, label %.lr.ph1104, label %.preheader497

.lr.ph1086:                                       ; preds = %bb.av, %._crit_edge1076
  %.08981084 = phi i32 [ %i.bjx, %._crit_edge1076 ], [ 0, %bb.av ]
  %.09001083 = phi ptr [ %.1901.lcssa, %._crit_edge1076 ], [ %i.bho, %bb.av ] ; 4 uses
  %.301082 = phi ptr [ %i.bjw, %._crit_edge1076 ], [ %.291169, %bb.av ] ; 9 uses
  br i1 %i.asl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph1086
  %i.bhr = load <4 x float>, ptr %.301082, align 1, !tbaa !20
  %i.bhs = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  %i.bht = load <4 x float>, ptr %i.bhs, align 1, !tbaa !20
  %i.bhu = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  %i.bhv = load <4 x float>, ptr %i.bhu, align 1, !tbaa !20
  %i.bhw = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  %i.bhx = load <4 x float>, ptr %i.bhw, align 1, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1086, %bb.aw
  %.0375 = phi nsz <4 x float> [ %i.bhr, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %.0373 = phi nsz <4 x float> [ %i.bht, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %.0371 = phi nsz <4 x float> [ %i.bhv, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %storemerge1100 = phi <4 x float> [ %i.bhx, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  br i1 %i.asm, label %.lr.ph1075.preheader, label %._crit_edge1076

.lr.ph1075.preheader:                             ; preds = %bb.ax
  br i1 %i.asy, label %.lr.ph1075.epil.preheader, label %.lr.ph1075

.lr.ph1075:                                       ; preds = %.lr.ph1075.preheader, %.lr.ph1075
  %.08971072 = phi ptr [ %i.bjc, %.lr.ph1075 ], [ %i.bhh, %.lr.ph1075.preheader ] ; 3 uses
  %.19011071 = phi ptr [ %i.bjd, %.lr.ph1075 ], [ %.09001083, %.lr.ph1075.preheader ] ; 9 uses
  %.03701070 = phi <4 x float> [ %i.bjb, %.lr.ph1075 ], [ %storemerge1100, %.lr.ph1075.preheader ]
  %.13721069 = phi <4 x float> [ %i.bja, %.lr.ph1075 ], [ %.0371, %.lr.ph1075.preheader ]
  %.13741068 = phi <4 x float> [ %i.biz, %.lr.ph1075 ], [ %.0373, %.lr.ph1075.preheader ]
  %.13761067 = phi <4 x float> [ %i.biy, %.lr.ph1075 ], [ %.0375, %.lr.ph1075.preheader ]
  %niter2374 = phi i32 [ %niter2374.next.1, %.lr.ph1075 ], [ 0, %.lr.ph1075.preheader ]
  %i.bhy = load float, ptr %.08971072, align 4, !tbaa !74
  %i.bhz = insertelement <4 x float> poison, float %i.bhy, i64 0
  %i.bia = shufflevector <4 x float> %i.bhz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bib = load <4 x float>, ptr %.19011071, align 16, !tbaa !20
  %i.bic = getelementptr inbounds nuw i8, ptr %.19011071, i64 16
  %i.bid = load <4 x float>, ptr %i.bic, align 16, !tbaa !20
  %i.bie = getelementptr inbounds nuw i8, ptr %.19011071, i64 32
  %i.bif = load <4 x float>, ptr %i.bie, align 16, !tbaa !20
  %i.big = getelementptr inbounds nuw i8, ptr %.19011071, i64 48
  %i.bih = load <4 x float>, ptr %i.big, align 16, !tbaa !20
  %i.bii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %.13761067)
  %i.bij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bid, <4 x float> nofpclass(nan inf) %.13741068)
  %i.bik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bif, <4 x float> nofpclass(nan inf) %.13721069)
  %i.bil = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bih, <4 x float> nofpclass(nan inf) %.03701070)
  %i.bim = getelementptr inbounds nuw i8, ptr %.08971072, i64 4
  %i.bin = getelementptr inbounds nuw i8, ptr %.19011071, i64 64
  %i.bio = load float, ptr %i.bim, align 4, !tbaa !74
  %i.bip = insertelement <4 x float> poison, float %i.bio, i64 0
  %i.biq = shufflevector <4 x float> %i.bip, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bir = load <4 x float>, ptr %i.bin, align 16, !tbaa !20
  %i.bis = getelementptr inbounds nuw i8, ptr %.19011071, i64 80
  %i.bit = load <4 x float>, ptr %i.bis, align 16, !tbaa !20
  %i.biu = getelementptr inbounds nuw i8, ptr %.19011071, i64 96
  %i.biv = load <4 x float>, ptr %i.biu, align 16, !tbaa !20
  %i.biw = getelementptr inbounds nuw i8, ptr %.19011071, i64 112
  %i.bix = load <4 x float>, ptr %i.biw, align 16, !tbaa !20
  %i.biy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.bii) ; 3 uses
  %i.biz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bit, <4 x float> nofpclass(nan inf) %i.bij) ; 3 uses
  %i.bja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.biv, <4 x float> nofpclass(nan inf) %i.bik) ; 3 uses
  %i.bjb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bix, <4 x float> nofpclass(nan inf) %i.bil) ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %.08971072, i64 8 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.19011071, i64 128 ; 2 uses
  %niter2374.next.1 = add nuw nsw i32 %niter2374, 2 ; 2 uses
  %niter2374.ncmp.1 = icmp eq i32 %niter2374.next.1, %unroll_iter2373
  br i1 %niter2374.ncmp.1, label %._crit_edge1076.loopexit.unr-lcssa, label %.lr.ph1075, !llvm.loop !765

._crit_edge1076.loopexit.unr-lcssa:               ; preds = %.lr.ph1075
  br i1 %lcmp.mod2367.not, label %._crit_edge1076.loopexit, label %.lr.ph1075.epil.preheader

.lr.ph1075.epil.preheader:                        ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.preheader
  %.08971072.epil.init = phi ptr [ %i.bhh, %.lr.ph1075.preheader ], [ %i.bjc, %._crit_edge1076.loopexit.unr-lcssa ]
  %.19011071.epil.init = phi ptr [ %.09001083, %.lr.ph1075.preheader ], [ %i.bjd, %._crit_edge1076.loopexit.unr-lcssa ] ; 4 uses
  %.03701070.epil.init = phi <4 x float> [ %storemerge1100, %.lr.ph1075.preheader ], [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13721069.epil.init = phi <4 x float> [ %.0371, %.lr.ph1075.preheader ], [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13741068.epil.init = phi <4 x float> [ %.0373, %.lr.ph1075.preheader ], [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13761067.epil.init = phi <4 x float> [ %.0375, %.lr.ph1075.preheader ], [ %i.biy, %._crit_edge1076.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2372)
  %i.bje = load float, ptr %.08971072.epil.init, align 4, !tbaa !74
  %i.bjf = insertelement <4 x float> poison, float %i.bje, i64 0
  %i.bjg = shufflevector <4 x float> %i.bjf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bjh = load <4 x float>, ptr %.19011071.epil.init, align 16, !tbaa !20
  %i.bji = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 16
  %i.bjj = load <4 x float>, ptr %i.bji, align 16, !tbaa !20
  %i.bjk = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 32
  %i.bjl = load <4 x float>, ptr %i.bjk, align 16, !tbaa !20
  %i.bjm = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 48
  %i.bjn = load <4 x float>, ptr %i.bjm, align 16, !tbaa !20
  %i.bjo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %.13761067.epil.init)
  %i.bjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> nofpclass(nan inf) %.13741068.epil.init)
  %i.bjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjl, <4 x float> nofpclass(nan inf) %.13721069.epil.init)
  %i.bjr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjn, <4 x float> nofpclass(nan inf) %.03701070.epil.init)
  br label %._crit_edge1076.loopexit

._crit_edge1076.loopexit:                         ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.epil.preheader
  %.lcssa2111.a = phi <4 x float> [ %i.biy, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjo, %.lr.ph1075.epil.preheader ]
  %.lcssa2110 = phi <4 x float> [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjp, %.lr.ph1075.epil.preheader ]
  %.lcssa2109 = phi <4 x float> [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjq, %.lr.ph1075.epil.preheader ]
  %.lcssa = phi <4 x float> [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjr, %.lr.ph1075.epil.preheader ]
  %i.bjs = getelementptr i8, ptr %.09001083, i64 %i.asp
  %scevgep1471 = getelementptr i8, ptr %i.bjs, i64 64
  br label %._crit_edge1076

._crit_edge1076:                                  ; preds = %._crit_edge1076.loopexit, %bb.ax
  %.1376.lcssa = phi <4 x float> [ %.0375, %bb.ax ], [ %.lcssa2111.a, %._crit_edge1076.loopexit ]
  %.1374.lcssa = phi <4 x float> [ %.0373, %bb.ax ], [ %.lcssa2110, %._crit_edge1076.loopexit ]
  %.1372.lcssa = phi <4 x float> [ %.0371, %bb.ax ], [ %.lcssa2109, %._crit_edge1076.loopexit ]
  %.0370.lcssa = phi <4 x float> [ %storemerge1100, %bb.ax ], [ %.lcssa, %._crit_edge1076.loopexit ]
  %.1901.lcssa = phi ptr [ %.09001083, %bb.ax ], [ %scevgep1471, %._crit_edge1076.loopexit ] ; 2 uses
  store <4 x float> %.1376.lcssa, ptr %.301082, align 1, !tbaa !20
  %i.bjt = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  store <4 x float> %.1374.lcssa, ptr %i.bjt, align 1, !tbaa !20
  %i.bju = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  store <4 x float> %.1372.lcssa, ptr %i.bju, align 1, !tbaa !20
  %i.bjv = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  store <4 x float> %.0370.lcssa, ptr %i.bjv, align 1, !tbaa !20
  %i.bjw = getelementptr inbounds nuw i8, ptr %.301082, i64 64 ; 2 uses
  %i.bjx = add nuw nsw i32 %.08981084, 16         ; 2 uses
  %i.bjy = or disjoint i32 %i.bjx, 15
  %i.bjz = icmp slt i32 %i.bjy, %4
  br i1 %i.bjz, label %.lr.ph1086, label %.preheader498, !llvm.loop !766

.preheader497:                                    ; preds = %._crit_edge1097, %.preheader498
  %.31.lcssa = phi ptr [ %.30.lcssa, %.preheader498 ], [ %i.bnn, %._crit_edge1097 ] ; 5 uses
  %.2902.lcssa = phi ptr [ %.0900.lcssa, %.preheader498 ], [ %.3903.lcssa, %._crit_edge1097 ] ; 4 uses
  %.1899.lcssa = phi i32 [ %.0898.lcssa, %.preheader498 ], [ %i.bno, %._crit_edge1097 ] ; 7 uses
  %i.bka = or disjoint i32 %.1899.lcssa, 3
  %i.bkb = icmp slt i32 %i.bka, %4
  br i1 %i.bkb, label %.lr.ph1120, label %.preheader496

.lr.ph1120:                                       ; preds = %.preheader497
  br i1 %i.asm, label %.lr.ph1120.split.us, label %.lr.ph1120.split

.lr.ph1120.split.us:                              ; preds = %.lr.ph1120, %._crit_edge1114.us
  %.21119.us = phi i32 [ %i.blo, %._crit_edge1114.us ], [ %.1899.lcssa, %.lr.ph1120 ]
  %.49041118.us = phi ptr [ %scevgep1481.a, %._crit_edge1114.us ], [ %.2902.lcssa, %.lr.ph1120 ] ; 3 uses
  %.321117.us = phi ptr [ %i.bln, %._crit_edge1114.us ], [ %.31.lcssa, %.lr.ph1120 ] ; 3 uses
  br i1 %i.asl, label %.lr.ph1113.us.preheader, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1120.split.us
  %i.bkc = load <4 x float>, ptr %.321117.us, align 1, !tbaa !20
  br label %.lr.ph1113.us.preheader

.lr.ph1113.us.preheader:                          ; preds = %bb.ay, %.lr.ph1120.split.us
  %.03501108.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph1120.split.us ], [ %i.bkc, %bb.ay ] ; 2 uses
  br i1 %i.ata, label %.lr.ph1113.us.epil.preheader, label %.lr.ph1113.us

.lr.ph1113.us:                                    ; preds = %.lr.ph1113.us.preheader, %.lr.ph1113.us
  %.08931110.us = phi ptr [ %i.bld, %.lr.ph1113.us ], [ %i.bhh, %.lr.ph1113.us.preheader ] ; 5 uses
  %.51109.us = phi ptr [ %i.ble, %.lr.ph1113.us ], [ %.49041118.us, %.lr.ph1113.us.preheader ] ; 5 uses
  %.03501108.us = phi <4 x float> [ %i.blc, %.lr.ph1113.us ], [ %.03501108.us.ph, %.lr.ph1113.us.preheader ]
  %niter2389 = phi i32 [ %niter2389.next.3, %.lr.ph1113.us ], [ 0, %.lr.ph1113.us.preheader ]
  %i.bkd = load float, ptr %.08931110.us, align 4, !tbaa !74
  %i.bke = insertelement <4 x float> poison, float %i.bkd, i64 0
  %i.bkf = shufflevector <4 x float> %i.bke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkg = load <4 x float>, ptr %.51109.us, align 16, !tbaa !20
  %i.bkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkf, <4 x float> nofpclass(nan inf) %i.bkg, <4 x float> nofpclass(nan inf) %.03501108.us)
  %i.bki = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 4
  %i.bkj = getelementptr inbounds nuw i8, ptr %.51109.us, i64 16
  %i.bkk = load float, ptr %i.bki, align 4, !tbaa !74
  %i.bkl = insertelement <4 x float> poison, float %i.bkk, i64 0
  %i.bkm = shufflevector <4 x float> %i.bkl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkn = load <4 x float>, ptr %i.bkj, align 16, !tbaa !20
  %i.bko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkm, <4 x float> nofpclass(nan inf) %i.bkn, <4 x float> nofpclass(nan inf) %i.bkh)
  %i.bkp = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 8
  %i.bkq = getelementptr inbounds nuw i8, ptr %.51109.us, i64 32
  %i.bkr = load float, ptr %i.bkp, align 4, !tbaa !74
  %i.bks = insertelement <4 x float> poison, float %i.bkr, i64 0
  %i.bkt = shufflevector <4 x float> %i.bks, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bku = load <4 x float>, ptr %i.bkq, align 16, !tbaa !20
  %i.bkv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkt, <4 x float> nofpclass(nan inf) %i.bku, <4 x float> nofpclass(nan inf) %i.bko)
  %i.bkw = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 12
  %i.bkx = getelementptr inbounds nuw i8, ptr %.51109.us, i64 48
  %i.bky = load float, ptr %i.bkw, align 4, !tbaa !74
  %i.bkz = insertelement <4 x float> poison, float %i.bky, i64 0
  %i.bla = shufflevector <4 x float> %i.bkz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.blb = load <4 x float>, ptr %i.bkx, align 16, !tbaa !20
  %i.blc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bla, <4 x float> nofpclass(nan inf) %i.blb, <4 x float> nofpclass(nan inf) %i.bkv) ; 3 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 16 ; 2 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %.51109.us, i64 64 ; 2 uses
  %niter2389.next.3 = add nuw nsw i32 %niter2389, 4 ; 2 uses
  %niter2389.ncmp.3 = icmp eq i32 %niter2389.next.3, %unroll_iter2388
  br i1 %niter2389.ncmp.3, label %._crit_edge1114.us.unr-lcssa, label %.lr.ph1113.us, !llvm.loop !767

._crit_edge1114.us.unr-lcssa:                     ; preds = %.lr.ph1113.us
  br i1 %lcmp.mod2385.not, label %._crit_edge1114.us, label %.lr.ph1113.us.epil.preheader

.lr.ph1113.us.epil.preheader:                     ; preds = %._crit_edge1114.us.unr-lcssa, %.lr.ph1113.us.preheader
  %.08931110.us.epil.init = phi ptr [ %i.bhh, %.lr.ph1113.us.preheader ], [ %i.bld, %._crit_edge1114.us.unr-lcssa ]
  %.51109.us.epil.init = phi ptr [ %.49041118.us, %.lr.ph1113.us.preheader ], [ %i.ble, %._crit_edge1114.us.unr-lcssa ]
  %.03501108.us.epil.init = phi <4 x float> [ %.03501108.us.ph, %.lr.ph1113.us.preheader ], [ %i.blc, %._crit_edge1114.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2387)
  br label %.lr.ph1113.us.epil

.lr.ph1113.us.epil:                               ; preds = %.lr.ph1113.us.epil, %.lr.ph1113.us.epil.preheader
  %.08931110.us.epil = phi ptr [ %i.blk, %.lr.ph1113.us.epil ], [ %.08931110.us.epil.init, %.lr.ph1113.us.epil.preheader ] ; 2 uses
  %.51109.us.epil = phi ptr [ %i.bll, %.lr.ph1113.us.epil ], [ %.51109.us.epil.init, %.lr.ph1113.us.epil.preheader ] ; 2 uses
  %.03501108.us.epil = phi <4 x float> [ %i.blj, %.lr.ph1113.us.epil ], [ %.03501108.us.epil.init, %.lr.ph1113.us.epil.preheader ]
  %epil.iter2384 = phi i32 [ %epil.iter2384.next, %.lr.ph1113.us.epil ], [ 0, %.lr.ph1113.us.epil.preheader ]
  %i.blf = load float, ptr %.08931110.us.epil, align 4, !tbaa !74
  %i.blg = insertelement <4 x float> poison, float %i.blf, i64 0
  %i.blh = shufflevector <4 x float> %i.blg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bli = load <4 x float>, ptr %.51109.us.epil, align 16, !tbaa !20
  %i.blj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.blh, <4 x float> nofpclass(nan inf) %i.bli, <4 x float> nofpclass(nan inf) %.03501108.us.epil) ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %.08931110.us.epil, i64 4
  %i.bll = getelementptr inbounds nuw i8, ptr %.51109.us.epil, i64 16
  %epil.iter2384.next = add i32 %epil.iter2384, 1 ; 2 uses
  %epil.iter2384.cmp.not = icmp eq i32 %epil.iter2384.next, %xtraiter2383
  br i1 %epil.iter2384.cmp.not, label %._crit_edge1114.us, label %.lr.ph1113.us.epil, !llvm.loop !768

._crit_edge1114.us:                               ; preds = %.lr.ph1113.us.epil, %._crit_edge1114.us.unr-lcssa
  %.lcssa2117 = phi <4 x float> [ %i.blc, %._crit_edge1114.us.unr-lcssa ], [ %i.blj, %.lr.ph1113.us.epil ]
  %i.blm = getelementptr i8, ptr %.49041118.us, i64 %i.ass
  %scevgep1481.a = getelementptr i8, ptr %i.blm, i64 16 ; 2 uses
  store <4 x float> %.lcssa2117, ptr %.321117.us, align 1, !tbaa !20
  %i.bln = getelementptr inbounds nuw i8, ptr %.321117.us, i64 16 ; 2 uses
  %i.blo = add nuw nsw i32 %.21119.us, 4          ; 3 uses
  %i.blp = or disjoint i32 %i.blo, 3
  %i.blq = icmp slt i32 %i.blp, %4
  br i1 %i.blq, label %.lr.ph1120.split.us, label %.preheader496, !llvm.loop !769

.lr.ph1120.split:                                 ; preds = %.lr.ph1120
  br i1 %i.asl, label %.lr.ph1120.split.split.us.preheader, label %.lr.ph1120.split.split.preheader

.lr.ph1120.split.split.preheader:                 ; preds = %.lr.ph1120.split
  %scevgep1475 = getelementptr i8, ptr %.31.lcssa, i64 16
  %i.blr = sub i32 %7, %.1899.lcssa               ; 2 uses
  %i.bls = lshr i32 %i.blr, 2
  %i.blt = zext nneg i32 %i.bls to i64
  %i.blu = shl nuw nsw i64 %i.blt, 4
  %scevgep1476 = getelementptr i8, ptr %scevgep1475, i64 %i.blu
  %i.blv = add i32 %.1899.lcssa, 4
  %i.blw = and i32 %i.blr, -4
  %i.blx = add i32 %i.blv, %i.blw
  br label %.preheader496

.lr.ph1120.split.split.us.preheader:              ; preds = %.lr.ph1120.split
  %i.bly = sub i32 %7, %.1899.lcssa               ; 2 uses
  %i.blz = lshr i32 %i.bly, 2
  %i.bma = zext nneg i32 %i.blz to i64
  %i.bmb = shl nuw nsw i64 %i.bma, 4              ; 2 uses
  %i.bmc = add nuw nsw i64 %i.bmb, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.31.lcssa, i8 0, i64 %i.bmc, i1 false), !tbaa !20
  %scevgep1478.a = getelementptr i8, ptr %.31.lcssa, i64 16
  %scevgep1480 = getelementptr i8, ptr %scevgep1478.a, i64 %i.bmb
  %i.bmd = add i32 %.1899.lcssa, 4
  %i.bme = and i32 %i.bly, -4
  %i.bmf = add i32 %i.bmd, %i.bme
  br label %.preheader496

.lr.ph1104:                                       ; preds = %.preheader498, %._crit_edge1097
  %.18991103 = phi i32 [ %i.bno, %._crit_edge1097 ], [ %.0898.lcssa, %.preheader498 ]
  %.29021102 = phi ptr [ %.3903.lcssa, %._crit_edge1097 ], [ %.0900.lcssa, %.preheader498 ] ; 4 uses
  %.311101 = phi ptr [ %i.bnn, %._crit_edge1097 ], [ %.30.lcssa, %.preheader498 ] ; 5 uses
  br i1 %i.asl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph1104
  %i.bmg = load <4 x float>, ptr %.311101, align 1, !tbaa !20
  %i.bmh = getelementptr inbounds nuw i8, ptr %.311101, i64 16
  %i.bmi = load <4 x float>, ptr %i.bmh, align 1, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1104, %bb.az
  %.0358 = phi nsz <4 x float> [ %i.bmg, %bb.az ], [ zeroinitializer, %.lr.ph1104 ] ; 3 uses
  %storemerge1099 = phi <4 x float> [ %i.bmi, %bb.az ], [ zeroinitializer, %.lr.ph1104 ] ; 3 uses
  br i1 %i.asm, label %.lr.ph1096.preheader, label %._crit_edge1097

.lr.ph1096.preheader:                             ; preds = %bb.ba
  br i1 %i.asz, label %.lr.ph1096.epil.preheader, label %.lr.ph1096

.lr.ph1096:                                       ; preds = %.lr.ph1096.preheader, %.lr.ph1096
  %.08951093 = phi ptr [ %i.bnb, %.lr.ph1096 ], [ %i.bhh, %.lr.ph1096.preheader ] ; 3 uses
  %.39031092 = phi ptr [ %i.bnc, %.lr.ph1096 ], [ %.29021102, %.lr.ph1096.preheader ] ; 5 uses
  %.03571091 = phi <4 x float> [ %i.bna, %.lr.ph1096 ], [ %storemerge1099, %.lr.ph1096.preheader ]
  %.13591090 = phi <4 x float> [ %i.bmz, %.lr.ph1096 ], [ %.0358, %.lr.ph1096.preheader ]
  %niter2382 = phi i32 [ %niter2382.next.1, %.lr.ph1096 ], [ 0, %.lr.ph1096.preheader ]
  %i.bmj = load float, ptr %.08951093, align 4, !tbaa !74
  %i.bmk = insertelement <4 x float> poison, float %i.bmj, i64 0
  %i.bml = shufflevector <4 x float> %i.bmk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmm = load <4 x float>, ptr %.39031092, align 16, !tbaa !20
  %i.bmn = getelementptr inbounds nuw i8, ptr %.39031092, i64 16
  %i.bmo = load <4 x float>, ptr %i.bmn, align 16, !tbaa !20
  %i.bmp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bml, <4 x float> nofpclass(nan inf) %i.bmm, <4 x float> nofpclass(nan inf) %.13591090)
  %i.bmq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bml, <4 x float> nofpclass(nan inf) %i.bmo, <4 x float> nofpclass(nan inf) %.03571091)
  %i.bmr = getelementptr inbounds nuw i8, ptr %.08951093, i64 4
  %i.bms = getelementptr inbounds nuw i8, ptr %.39031092, i64 32
  %i.bmt = load float, ptr %i.bmr, align 4, !tbaa !74
  %i.bmu = insertelement <4 x float> poison, float %i.bmt, i64 0
  %i.bmv = shufflevector <4 x float> %i.bmu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmw = load <4 x float>, ptr %i.bms, align 16, !tbaa !20
  %i.bmx = getelementptr inbounds nuw i8, ptr %.39031092, i64 48
  %i.bmy = load <4 x float>, ptr %i.bmx, align 16, !tbaa !20
  %i.bmz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmv, <4 x float> nofpclass(nan inf) %i.bmw, <4 x float> nofpclass(nan inf) %i.bmp) ; 3 uses
  %i.bna = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmv, <4 x float> nofpclass(nan inf) %i.bmy, <4 x float> nofpclass(nan inf) %i.bmq) ; 3 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %.08951093, i64 8 ; 2 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %.39031092, i64 64 ; 2 uses
  %niter2382.next.1 = add nuw nsw i32 %niter2382, 2 ; 2 uses
  %niter2382.ncmp.1 = icmp eq i32 %niter2382.next.1, %unroll_iter2381
  br i1 %niter2382.ncmp.1, label %._crit_edge1097.loopexit.unr-lcssa, label %.lr.ph1096, !llvm.loop !770

._crit_edge1097.loopexit.unr-lcssa:               ; preds = %.lr.ph1096
  br i1 %lcmp.mod2377.not, label %._crit_edge1097.loopexit, label %.lr.ph1096.epil.preheader

.lr.ph1096.epil.preheader:                        ; preds = %._crit_edge1097.loopexit.unr-lcssa, %.lr.ph1096.preheader
  %.08951093.epil.init = phi ptr [ %i.bhh, %.lr.ph1096.preheader ], [ %i.bnb, %._crit_edge1097.loopexit.unr-lcssa ]
  %.39031092.epil.init = phi ptr [ %.29021102, %.lr.ph1096.preheader ], [ %i.bnc, %._crit_edge1097.loopexit.unr-lcssa ] ; 2 uses
  %.03571091.epil.init = phi <4 x float> [ %storemerge1099, %.lr.ph1096.preheader ], [ %i.bna, %._crit_edge1097.loopexit.unr-lcssa ]
  %.13591090.epil.init = phi <4 x float> [ %.0358, %.lr.ph1096.preheader ], [ %i.bmz, %._crit_edge1097.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2380)
  %i.bnd = load float, ptr %.08951093.epil.init, align 4, !tbaa !74
  %i.bne = insertelement <4 x float> poison, float %i.bnd, i64 0
  %i.bnf = shufflevector <4 x float> %i.bne, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bng = load <4 x float>, ptr %.39031092.epil.init, align 16, !tbaa !20
  %i.bnh = getelementptr inbounds nuw i8, ptr %.39031092.epil.init, i64 16
  %i.bni = load <4 x float>, ptr %i.bnh, align 16, !tbaa !20
  %i.bnj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bnf, <4 x float> nofpclass(nan inf) %i.bng, <4 x float> nofpclass(nan inf) %.13591090.epil.init)
  %i.bnk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bnf, <4 x float> nofpclass(nan inf) %i.bni, <4 x float> nofpclass(nan inf) %.03571091.epil.init)
  br label %._crit_edge1097.loopexit

._crit_edge1097.loopexit:                         ; preds = %._crit_edge1097.loopexit.unr-lcssa, %.lr.ph1096.epil.preheader
  %.lcssa2114 = phi <4 x float> [ %i.bmz, %._crit_edge1097.loopexit.unr-lcssa ], [ %i.bnj, %.lr.ph1096.epil.preheader ]
  %.lcssa2113 = phi <4 x float> [ %i.bna, %._crit_edge1097.loopexit.unr-lcssa ], [ %i.bnk, %.lr.ph1096.epil.preheader ]
  %i.bnl = getelementptr i8, ptr %.29021102, i64 %i.asr
  %scevgep1473 = getelementptr i8, ptr %i.bnl, i64 32
  br label %._crit_edge1097

._crit_edge1097:                                  ; preds = %._crit_edge1097.loopexit, %bb.ba
  %.1359.lcssa = phi <4 x float> [ %.0358, %bb.ba ], [ %.lcssa2114, %._crit_edge1097.loopexit ]
  %.0357.lcssa = phi <4 x float> [ %storemerge1099, %bb.ba ], [ %.lcssa2113, %._crit_edge1097.loopexit ]
  %.3903.lcssa = phi ptr [ %.29021102, %bb.ba ], [ %scevgep1473, %._crit_edge1097.loopexit ] ; 2 uses
  store <4 x float> %.1359.lcssa, ptr %.311101, align 1, !tbaa !20
  %i.bnm = getelementptr inbounds nuw i8, ptr %.311101, i64 16
  store <4 x float> %.0357.lcssa, ptr %i.bnm, align 1, !tbaa !20
  %i.bnn = getelementptr inbounds nuw i8, ptr %.311101, i64 32 ; 2 uses
  %i.bno = add nuw nsw i32 %.18991103, 8          ; 3 uses
  %i.bnp = or disjoint i32 %i.bno, 7
  %i.bnq = icmp slt i32 %i.bnp, %4
  br i1 %i.bnq, label %.lr.ph1104, label %.preheader497, !llvm.loop !771

.preheader496:                                    ; preds = %._crit_edge1114.us, %.lr.ph1120.split.split.preheader, %.lr.ph1120.split.split.us.preheader, %.preheader497
  %.32.lcssa = phi ptr [ %.31.lcssa, %.preheader497 ], [ %scevgep1480, %.lr.ph1120.split.split.us.preheader ], [ %scevgep1476, %.lr.ph1120.split.split.preheader ], [ %i.bln, %._crit_edge1114.us ] ; 2 uses
  %.4904.lcssa = phi ptr [ %.2902.lcssa, %.preheader497 ], [ %.2902.lcssa, %.lr.ph1120.split.split.us.preheader ], [ %.2902.lcssa, %.lr.ph1120.split.split.preheader ], [ %scevgep1481.a, %._crit_edge1114.us ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1899.lcssa, %.preheader497 ], [ %i.bmf, %.lr.ph1120.split.split.us.preheader ], [ %i.blx, %.lr.ph1120.split.split.preheader ], [ %i.blo, %._crit_edge1114.us ] ; 3 uses
  %i.bnr = or disjoint i32 %.2.lcssa, 1
  %i.bns = icmp slt i32 %i.bnr, %4
  br i1 %i.bns, label %.lr.ph1150.preheader, label %.preheader

.lr.ph1150.preheader:                             ; preds = %.preheader496
  %i.bnt = getelementptr i8, ptr %i.bhh, i64 %i.atd
  %i.bnu = getelementptr i8, ptr %i.bhh, i64 %i.atg
  br label %.lr.ph1150

.preheader:                                       ; preds = %._crit_edge1143, %.preheader496
  %.33.lcssa = phi ptr [ %.32.lcssa, %.preheader496 ], [ %i.bqe, %._crit_edge1143 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.4904.lcssa, %.preheader496 ], [ %.7.lcssa, %._crit_edge1143 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader496 ], [ %i.bqf, %._crit_edge1143 ] ; 2 uses
  %i.bnv = icmp slt i32 %.3.lcssa, %4
  br i1 %i.bnv, label %.lr.ph1166.preheader, label %._crit_edge1167

.lr.ph1166.preheader:                             ; preds = %.preheader
  %i.bnw = getelementptr i8, ptr %i.bhh, i64 %i.atk
  %i.bnx = getelementptr i8, ptr %i.bhh, i64 %i.atm
  br label %.lr.ph1166

.lr.ph1150:                                       ; preds = %.lr.ph1150.preheader, %._crit_edge1143
  %.31149 = phi i32 [ %i.bqf, %._crit_edge1143 ], [ %.2.lcssa, %.lr.ph1150.preheader ]
  %.61148 = phi ptr [ %.7.lcssa, %._crit_edge1143 ], [ %.4904.lcssa, %.lr.ph1150.preheader ] ; 10 uses
  %.331147 = phi ptr [ %i.bqe, %._crit_edge1143 ], [ %.32.lcssa, %.lr.ph1150.preheader ] ; 5 uses
  br i1 %i.asl, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1150
  %i.bny = load float, ptr %.331147, align 4, !tbaa !74
  %i.bnz = getelementptr inbounds nuw i8, ptr %.331147, i64 4
  %i.boa = load float, ptr %i.bnz, align 4, !tbaa !74
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1150, %bb.bb
  %.0889 = phi nsz float [ %i.bny, %bb.bb ], [ 0.000000e+00, %.lr.ph1150 ] ; 4 uses
  %.0887 = phi nsz float [ %i.boa, %bb.bb ], [ 0.000000e+00, %.lr.ph1150 ] ; 4 uses
  br i1 %i.asm, label %iter.check2085, label %._crit_edge1143

iter.check2085:                                   ; preds = %bb.bc
  br i1 %min.iters.check2035.a, label %.lr.ph1142.preheader, label %vector.main.loop.iter.check2036

vector.main.loop.iter.check2036:                  ; preds = %iter.check2085
  br i1 %min.iters.check2037, label %vec.epilog.ph2089, label %vector.ph2038

vector.ph2038:                                    ; preds = %vector.main.loop.iter.check2036
  %i.bob = getelementptr i8, ptr %.61148, i64 %i.ate
  %i.boc = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0887, i64 0
  %i.bod = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0889, i64 0
  br label %vector.body2040

vector.body2040:                                  ; preds = %vector.body2040, %vector.ph2038
  %index2041 = phi i64 [ 0, %vector.ph2038 ], [ %index.next2071, %vector.body2040 ] ; 3 uses
  %vec.phi2042.a = phi <16 x float> [ %i.boc, %vector.ph2038 ], [ %i.boy, %vector.body2040 ]
  %vec.phi2043.a = phi <16 x float> [ zeroinitializer, %vector.ph2038 ], [ %i.boz, %vector.body2040 ]
  %vec.phi2044.a = phi <16 x float> [ zeroinitializer, %vector.ph2038 ], [ %i.bpa, %vector.body2040 ]
  %vec.phi2045.a = phi <16 x float> [ zeroinitializer, %vector.ph2038 ], [ %i.bpb, %vector.body2040 ]
  %vec.phi2046.a = phi <16 x float> [ %i.bod, %vector.ph2038 ], [ %i.boq, %vector.body2040 ]
  %vec.phi2047.a = phi <16 x float> [ zeroinitializer, %vector.ph2038 ], [ %i.bor, %vector.body2040 ]
  %vec.phi2048 = phi <16 x float> [ zeroinitializer, %vector.ph2038 ], [ %i.bos, %vector.body2040 ]
  %vec.phi2049 = phi <16 x float> [ zeroinitializer, %vector.ph2038 ], [ %i.bot, %vector.body2040 ]
  %i.boe = shl i64 %index2041, 2
  %next.gep2050.a = getelementptr i8, ptr %i.bhh, i64 %i.boe ; 4 uses
  %i.bof = shl i64 %index2041, 3                  ; 4 uses
  %next.gep2051.a = getelementptr i8, ptr %.61148, i64 %i.bof
  %i.bog = getelementptr i8, ptr %.61148, i64 %i.bof
  %next.gep2052.a = getelementptr i8, ptr %i.bog, i64 128
  %i.boh = getelementptr i8, ptr %.61148, i64 %i.bof
  %next.gep2053 = getelementptr i8, ptr %i.boh, i64 256
  %i.boi = getelementptr i8, ptr %.61148, i64 %i.bof
  %next.gep2054 = getelementptr i8, ptr %i.boi, i64 384
  %i.boj = getelementptr i8, ptr %next.gep2050.a, i64 64
  %i.bok = getelementptr i8, ptr %next.gep2050.a, i64 128
  %i.bol = getelementptr i8, ptr %next.gep2050.a, i64 192
  %wide.load2055.a = load <16 x float>, ptr %next.gep2050.a, align 4, !tbaa !74 ; 2 uses
  %wide.load2056.a = load <16 x float>, ptr %i.boj, align 4, !tbaa !74 ; 2 uses
  %wide.load2057 = load <16 x float>, ptr %i.bok, align 4, !tbaa !74 ; 2 uses
  %wide.load2058 = load <16 x float>, ptr %i.bol, align 4, !tbaa !74 ; 2 uses
  %wide.vec2059 = load <32 x float>, ptr %next.gep2051.a, align 4, !tbaa !74 ; 2 uses
  %strided.vec2060 = shufflevector <32 x float> %wide.vec2059, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2061.a = shufflevector <32 x float> %wide.vec2059, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2062 = load <32 x float>, ptr %next.gep2052.a, align 4, !tbaa !74 ; 2 uses
  %strided.vec2063 = shufflevector <32 x float> %wide.vec2062, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2064.a = shufflevector <32 x float> %wide.vec2062, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2065 = load <32 x float>, ptr %next.gep2053, align 4, !tbaa !74 ; 2 uses
  %strided.vec2066 = shufflevector <32 x float> %wide.vec2065, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2067.a = shufflevector <32 x float> %wide.vec2065, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2068 = load <32 x float>, ptr %next.gep2054, align 4, !tbaa !74 ; 2 uses
  %strided.vec2069 = shufflevector <32 x float> %wide.vec2068, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2070 = shufflevector <32 x float> %wide.vec2068, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bom = fmul fast <16 x float> %strided.vec2060, %wide.load2055.a
  %i.bon = fmul fast <16 x float> %strided.vec2063, %wide.load2056.a
  %i.boo = fmul fast <16 x float> %strided.vec2066, %wide.load2057
  %i.bop = fmul fast <16 x float> %strided.vec2069, %wide.load2058
  %i.boq = fadd fast <16 x float> %i.bom, %vec.phi2046.a ; 2 uses
  %i.bor = fadd fast <16 x float> %i.bon, %vec.phi2047.a ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  store i16 %i.ahf, ptr %i.ago, align 2, !tbaa !76
  %i.ahg = extractelement <32 x i16> %i.agr, i64 29
  store i16 %i.ahg, ptr %i.agp, align 2, !tbaa !76
  %i.ahh = extractelement <32 x i16> %i.agr, i64 31
  store i16 %i.ahh, ptr %i.agq, align 2, !tbaa !76
  br i1 %i.ig, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ahi = bitcast <16 x float> %.0.i123613321365.us to <32 x i16> ; 16 uses
  %i.ahj = extractelement <32 x i16> %i.ahi, i64 1
  %i.ahk = getelementptr inbounds nuw i8, ptr %.011482137.us, i64 2
  store i16 %i.ahj, ptr %i.ahk, align 2, !tbaa !76
  %i.ahl = extractelement <32 x i16> %i.ahi, i64 3
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  store i16 %i.ahl, ptr %i.ahm, align 2, !tbaa !76
  %i.ahn = extractelement <32 x i16> %i.ahi, i64 5
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agd, i64 2
  store i16 %i.ahn, ptr %i.aho, align 2, !tbaa !76
  %i.ahp = extractelement <32 x i16> %i.ahi, i64 7
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.age, i64 2
  store i16 %i.ahp, ptr %i.ahq, align 2, !tbaa !76
  %i.ahr = extractelement <32 x i16> %i.ahi, i64 9
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agf, i64 2
  store i16 %i.ahr, ptr %i.ahs, align 2, !tbaa !76
  %i.aht = extractelement <32 x i16> %i.ahi, i64 11
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agg, i64 2
  store i16 %i.aht, ptr %i.ahu, align 2, !tbaa !76
  %i.ahv = extractelement <32 x i16> %i.ahi, i64 13
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agh, i64 2
  store i16 %i.ahv, ptr %i.ahw, align 2, !tbaa !76
  %i.ahx = extractelement <32 x i16> %i.ahi, i64 15
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.agi, i64 2
  store i16 %i.ahx, ptr %i.ahy, align 2, !tbaa !76
  %i.ahz = extractelement <32 x i16> %i.ahi, i64 17
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agj, i64 2
  store i16 %i.ahz, ptr %i.aia, align 2, !tbaa !76
  %i.aib = extractelement <32 x i16> %i.ahi, i64 19
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agk, i64 2
  store i16 %i.aib, ptr %i.aic, align 2, !tbaa !76
  %i.aid = extractelement <32 x i16> %i.ahi, i64 21
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agl, i64 2
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !76
  %i.aif = extractelement <32 x i16> %i.ahi, i64 23
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agm, i64 2
  store i16 %i.aif, ptr %i.aig, align 2, !tbaa !76
  %i.aih = extractelement <32 x i16> %i.ahi, i64 25
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agn, i64 2
  store i16 %i.aih, ptr %i.aii, align 2, !tbaa !76
  %i.aij = extractelement <32 x i16> %i.ahi, i64 27
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ago, i64 2
  store i16 %i.aij, ptr %i.aik, align 2, !tbaa !76
  %i.ail = extractelement <32 x i16> %i.ahi, i64 29
  %i.aim = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  store i16 %i.ail, ptr %i.aim, align 2, !tbaa !76
  %i.ain = extractelement <32 x i16> %i.ahi, i64 31
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agq, i64 2
  store i16 %i.ain, ptr %i.aio, align 2, !tbaa !76
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.ii, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aip = bitcast <16 x float> %.0.i12341369.us to <32 x i16> ; 16 uses
  %i.aiq = extractelement <32 x i16> %i.aip, i64 1
  %i.air = getelementptr inbounds nuw i8, ptr %.011482137.us, i64 4
  store i16 %i.aiq, ptr %i.air, align 2, !tbaa !76
  %i.ais = extractelement <32 x i16> %i.aip, i64 3
  %i.ait = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !76
  %i.aiu = extractelement <32 x i16> %i.aip, i64 5
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  store i16 %i.aiu, ptr %i.aiv, align 2, !tbaa !76
  %i.aiw = extractelement <32 x i16> %i.aip, i64 7
  %i.aix = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  store i16 %i.aiw, ptr %i.aix, align 2, !tbaa !76
  %i.aiy = extractelement <32 x i16> %i.aip, i64 9
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !76
  %i.aja = extractelement <32 x i16> %i.aip, i64 11
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  store i16 %i.aja, ptr %i.ajb, align 2, !tbaa !76
  %i.ajc = extractelement <32 x i16> %i.aip, i64 13
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  store i16 %i.ajc, ptr %i.ajd, align 2, !tbaa !76
  %i.aje = extractelement <32 x i16> %i.aip, i64 15
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !76
  %i.ajg = extractelement <32 x i16> %i.aip, i64 17
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  store i16 %i.ajg, ptr %i.ajh, align 2, !tbaa !76
  %i.aji = extractelement <32 x i16> %i.aip, i64 19
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  store i16 %i.aji, ptr %i.ajj, align 2, !tbaa !76
  %i.ajk = extractelement <32 x i16> %i.aip, i64 21
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  store i16 %i.ajk, ptr %i.ajl, align 2, !tbaa !76
  %i.ajm = extractelement <32 x i16> %i.aip, i64 23
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  store i16 %i.ajm, ptr %i.ajn, align 2, !tbaa !76
  %i.ajo = extractelement <32 x i16> %i.aip, i64 25
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.agn, i64 4
  store i16 %i.ajo, ptr %i.ajp, align 2, !tbaa !76
  %i.ajq = extractelement <32 x i16> %i.aip, i64 27
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ago, i64 4
  store i16 %i.ajq, ptr %i.ajr, align 2, !tbaa !76
  %i.ajs = extractelement <32 x i16> %i.aip, i64 29
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.agp, i64 4
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !76
  %i.aju = extractelement <32 x i16> %i.aip, i64 31
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agq, i64 4
  store i16 %i.aju, ptr %i.ajv, align 2, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.ik, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ajw = bitcast <16 x float> %.0.i.us to <32 x i16> ; 16 uses
  %i.ajx = extractelement <32 x i16> %i.ajw, i64 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %.011482137.us, i64 6
  store i16 %i.ajx, ptr %i.ajy, align 2, !tbaa !76
  %i.ajz = extractelement <32 x i16> %i.ajw, i64 3
  %i.aka = getelementptr inbounds nuw i8, ptr %i.agc, i64 6
  store i16 %i.ajz, ptr %i.aka, align 2, !tbaa !76
  %i.akb = extractelement <32 x i16> %i.ajw, i64 5
  %i.akc = getelementptr inbounds nuw i8, ptr %i.agd, i64 6
  store i16 %i.akb, ptr %i.akc, align 2, !tbaa !76
  %i.akd = extractelement <32 x i16> %i.ajw, i64 7
  %i.ake = getelementptr inbounds nuw i8, ptr %i.age, i64 6
  store i16 %i.akd, ptr %i.ake, align 2, !tbaa !76
  %i.akf = extractelement <32 x i16> %i.ajw, i64 9
  %i.akg = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !76
  %i.akh = extractelement <32 x i16> %i.ajw, i64 11
  %i.aki = getelementptr inbounds nuw i8, ptr %i.agg, i64 6
  store i16 %i.akh, ptr %i.aki, align 2, !tbaa !76
  %i.akj = extractelement <32 x i16> %i.ajw, i64 13
  %i.akk = getelementptr inbounds nuw i8, ptr %i.agh, i64 6
  store i16 %i.akj, ptr %i.akk, align 2, !tbaa !76
  %i.akl = extractelement <32 x i16> %i.ajw, i64 15
  %i.akm = getelementptr inbounds nuw i8, ptr %i.agi, i64 6
  store i16 %i.akl, ptr %i.akm, align 2, !tbaa !76
  %i.akn = extractelement <32 x i16> %i.ajw, i64 17
  %i.ako = getelementptr inbounds nuw i8, ptr %i.agj, i64 6
  store i16 %i.akn, ptr %i.ako, align 2, !tbaa !76
  %i.akp = extractelement <32 x i16> %i.ajw, i64 19
  %i.akq = getelementptr inbounds nuw i8, ptr %i.agk, i64 6
  store i16 %i.akp, ptr %i.akq, align 2, !tbaa !76
  %i.akr = extractelement <32 x i16> %i.ajw, i64 21
  %i.aks = getelementptr inbounds nuw i8, ptr %i.agl, i64 6
  store i16 %i.akr, ptr %i.aks, align 2, !tbaa !76
  %i.akt = extractelement <32 x i16> %i.ajw, i64 23
  %i.aku = getelementptr inbounds nuw i8, ptr %i.agm, i64 6
  store i16 %i.akt, ptr %i.aku, align 2, !tbaa !76
  %i.akv = extractelement <32 x i16> %i.ajw, i64 25
  %i.akw = getelementptr inbounds nuw i8, ptr %i.agn, i64 6
  store i16 %i.akv, ptr %i.akw, align 2, !tbaa !76
  %i.akx = extractelement <32 x i16> %i.ajw, i64 27
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ago, i64 6
  store i16 %i.akx, ptr %i.aky, align 2, !tbaa !76
  %i.akz = extractelement <32 x i16> %i.ajw, i64 29
  %i.ala = getelementptr inbounds nuw i8, ptr %i.agp, i64 6
  store i16 %i.akz, ptr %i.ala, align 2, !tbaa !76
  %i.alb = extractelement <32 x i16> %i.ajw, i64 31
  %i.alc = getelementptr inbounds nuw i8, ptr %i.agq, i64 6
  store i16 %i.alb, ptr %i.alc, align 2, !tbaa !76
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.y, %bb.r, %bb.k, %.split.us, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.us
  %i.ald = getelementptr inbounds [2 x i8], ptr %.011482137.us, i64 %i.ap
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.c
  %.11149.us = phi ptr [ %.011482137.us, %bb.c ], [ %i.ald, %bb.af ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.ah, label %bb.c, !llvm.loop !841

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next2242 = add nuw nsw i64 %indvars.iv2241, 1 ; 2 uses
  %exitcond2244.not = icmp eq i64 %indvars.iv.next2242, %wide.trip.count
  br i1 %exitcond2244.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit1208.us, !llvm.loop !842

._crit_edge.us:                                   ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next2246 = add nuw nsw i64 %indvars.iv2245, 16 ; 3 uses
  %i.ale = or disjoint i64 %indvars.iv.next2246, 15
  %i.alf = icmp samesign ult i64 %i.ale, %i.aq
  br i1 %i.alf, label %.lr.ph2142.split.us, label %.preheader2128.loopexit, !llvm.loop !843

.lr.ph2142.split:                                 ; preds = %.lr.ph2142
  %i.alg = and i32 %3, 2147483632
  br label %.preheader2128

.preheader2128.loopexit:                          ; preds = %._crit_edge.us
  %i.alh = trunc nuw nsw i64 %indvars.iv.next2246 to i32
  br label %.preheader2128

.preheader2128:                                   ; preds = %.lr.ph2142.split, %.preheader2128.loopexit, %bb.a
  %.01116.lcssa = phi i32 [ 0, %bb.a ], [ %i.alg, %.lr.ph2142.split ], [ %i.alh, %.preheader2128.loopexit ] ; 5 uses
  %i.ali = or disjoint i32 %.01116.lcssa, 7
  %i.alj = icmp slt i32 %i.ali, %3
  br i1 %i.alj, label %.lr.ph2158, label %.preheader2127

.lr.ph2158:                                       ; preds = %.preheader2128
  %.not1175 = icmp eq ptr %.0.val, null
  %i.alk = sext i32 %2 to i64
  %i.all = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.alk
  %i.alm = icmp sgt i32 %5, 0
  %i.aln = shl nsw i32 %5, 3
  %i.alo = sext i32 %i.aln to i64
  %i.alp = shl nsw i32 %5, 4
  %i.alq = sext i32 %i.alp to i64
  %i.alr = mul nsw i32 %5, 24
  %i.als = sext i32 %i.alr to i64
  %i.alt = shl nsw i32 %5, 5
  %i.alu = sext i32 %i.alt to i64
  %i.alv = mul nsw i32 %5, 40
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aly = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.alz = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.ama = mul nsw i32 %5, 48
  %i.amb = sext i32 %i.ama to i64                 ; 30 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx1177 = shl i64 %i.n, 2
  %.idx1178 = mul i64 %i.n, 6
  %.idx1179 = shl i64 %i.n, 3
  %.idx1180 = mul i64 %i.n, 10
  %.idx1181 = mul i64 %i.n, 12
  %.idx1182 = mul i64 %i.n, 14
  %i.amd = mul nsw i32 %i.j, %i.f
  %i.ame = sext i32 %i.amd to i64
  br i1 %i.alm, label %.lr.ph2158.split.us.preheader, label %.lr.ph2158.split

.lr.ph2158.split.us.preheader:                    ; preds = %.lr.ph2158
  %i.amf = sext i32 %.01116.lcssa to i64
  %i.amg = sext i32 %3 to i64
  %wide.trip.count2260 = zext nneg i32 %5 to i64
  %i.amh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ami = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.amj = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.amk = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.aml = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.amm = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.amn = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.amo = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.amp = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.amq = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.amr = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ams = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.amt = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.amu = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.amv = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.amw = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.amx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.amy = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.amz = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.ana = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %invariant.op = add nsw i64 %i.amg, -7
  br label %.lr.ph2158.split.us

.lr.ph2158.split.us:                              ; preds = %.lr.ph2158.split.us.preheader, %._crit_edge.us2162
  %indvars.iv2262 = phi i64 [ %i.amf, %.lr.ph2158.split.us.preheader ], [ %indvars.iv.next2263, %._crit_edge.us2162 ] ; 4 uses
  br i1 %.not1175, label %.lr.ph.us2161, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph2158.split.us
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %indvars.iv2262
  %i.anc = load <8 x float>, ptr %i.anb, align 1, !tbaa !20
  br label %.lr.ph.us2161

.lr.ph.us2161:                                    ; preds = %bb.ai, %.lr.ph2158.split.us
  %i.and = phi fast <8 x float> [ %i.anc, %bb.ai ], [ zeroinitializer, %.lr.ph2158.split.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ane = trunc nsw i64 %indvars.iv2262 to i32
  %factor.op.mul.reass.us2160 = mul i32 %factor.op.mul2139, %i.ane
  %i.anf = sext i32 %factor.op.mul.reass.us2160 to i64
  %i.ang = trunc i64 %indvars.iv2262 to i32
  %i.anh = add i32 %2, %i.ang
  %i.ani = sdiv i32 %i.anh, %i.j
  %i.anj = sext i32 %i.ani to i64
  br label %_ZN4ncnn3MatD2Ev.exit1207.us

_ZN4ncnn3MatD2Ev.exit1207.us:                     ; preds = %.lr.ph.us2161, %bb.bf
  %indvars.iv2257 = phi i64 [ 0, %.lr.ph.us2161 ], [ %indvars.iv.next2258, %bb.bf ] ; 3 uses
  %i.ank = load ptr, ptr %0, align 8, !tbaa !9
  %i.anl = getelementptr inbounds [4 x i8], ptr %i.ank, i64 %i.anf
  %.idx2348 = shl nuw nsw i64 %indvars.iv2257, 5
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 %.idx2348 ; 7 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.alo ; 2 uses
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.alq ; 2 uses
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.als ; 2 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.alu ; 2 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.alw ; 2 uses
  %i.ans = load <8 x float>, ptr %i.anm, align 32, !tbaa !20
  %i.ant = load <8 x float>, ptr %i.ann, align 32, !tbaa !20 ; 2 uses
  %i.anu = load <8 x float>, ptr %i.ano, align 32, !tbaa !20 ; 2 uses
  %i.anv = load <8 x float>, ptr %i.anp, align 32, !tbaa !20 ; 2 uses
  %i.anw = load <8 x float>, ptr %i.anq, align 32, !tbaa !20 ; 2 uses
  %i.anx = load <8 x float>, ptr %i.anr, align 32, !tbaa !20
  %i.any = fadd fast <8 x float> %i.anu, %i.ant   ; 2 uses
  %i.anz = fadd fast <8 x float> %i.anw, %i.anv   ; 2 uses
  %i.aoa = fsub fast <8 x float> %i.ant, %i.anu   ; 2 uses
  %i.aob = fsub fast <8 x float> %i.anv, %i.anw   ; 2 uses
  %i.aoc = fadd fast <8 x float> %i.any, %i.ans
  %i.aod = fadd fast <8 x float> %i.aoc, %i.anz
  %i.aoe = fmul fast <8 x float> %i.aoa, splat (float f0x3F3504F3)
  %i.aof = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aob, <8 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <8 x float> nofpclass(nan inf) %i.aoe)
  %i.aog = fmul fast <8 x float> %i.any, splat (float 5.000000e-01)
  %i.aoh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.anz, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.aog)
  %i.aoi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aoa, <8 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <8 x float> nofpclass(nan inf) %i.anx)
  %i.aoj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aob, <8 x float> nofpclass(nan inf) splat (float f0x403504F3), <8 x float> nofpclass(nan inf) %i.aoi)
  store <8 x float> %i.aod, ptr %i.b, align 32, !tbaa !20
  store <8 x float> %i.aof, ptr %i.alx, align 32, !tbaa !20
  store <8 x float> %i.aoh, ptr %i.aly, align 32, !tbaa !20
  store <8 x float> %i.aoj, ptr %i.alz, align 32, !tbaa !20
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.amb ; 2 uses
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %i.amb ; 2 uses
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.amb ; 2 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %i.amb ; 2 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %i.amb ; 2 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.amb ; 2 uses
  %i.aoq = load <8 x float>, ptr %i.aok, align 32, !tbaa !20
  %i.aor = load <8 x float>, ptr %i.aol, align 32, !tbaa !20 ; 2 uses
  %i.aos = load <8 x float>, ptr %i.aom, align 32, !tbaa !20 ; 2 uses
  %i.aot = load <8 x float>, ptr %i.aon, align 32, !tbaa !20 ; 2 uses
  %i.aou = load <8 x float>, ptr %i.aoo, align 32, !tbaa !20 ; 2 uses
  %i.aov = load <8 x float>, ptr %i.aop, align 32, !tbaa !20
  %i.aow = fadd fast <8 x float> %i.aos, %i.aor   ; 2 uses
  %i.aox = fadd fast <8 x float> %i.aou, %i.aot   ; 2 uses
  %i.aoy = fsub fast <8 x float> %i.aor, %i.aos   ; 2 uses
  %i.aoz = fsub fast <8 x float> %i.aot, %i.aou   ; 2 uses
  %i.apa = fadd fast <8 x float> %i.aow, %i.aoq
  %i.apb = fadd fast <8 x float> %i.apa, %i.aox
  %i.apc = fmul fast <8 x float> %i.aoy, splat (float f0x3F3504F3)
  %i.apd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aoz, <8 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <8 x float> nofpclass(nan inf) %i.apc)
  %i.ape = fmul fast <8 x float> %i.aow, splat (float 5.000000e-01)
  %i.apf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aox, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.ape)
  %i.apg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aoy, <8 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <8 x float> nofpclass(nan inf) %i.aov)
  %i.aph = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aoz, <8 x float> nofpclass(nan inf) splat (float f0x403504F3), <8 x float> nofpclass(nan inf) %i.apg)
  store <8 x float> %i.apb, ptr %i.amh, align 32, !tbaa !20
  store <8 x float> %i.apd, ptr %i.ami, align 32, !tbaa !20
  store <8 x float> %i.apf, ptr %i.amj, align 32, !tbaa !20
  store <8 x float> %i.aph, ptr %i.amk, align 32, !tbaa !20
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aok, i64 %i.amb ; 2 uses
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.amb ; 2 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %i.amb ; 2 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %i.amb ; 2 uses
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aoo, i64 %i.amb ; 2 uses
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.amb ; 2 uses
  %i.apo = load <8 x float>, ptr %i.api, align 32, !tbaa !20
  %i.app = load <8 x float>, ptr %i.apj, align 32, !tbaa !20 ; 2 uses
  %i.apq = load <8 x float>, ptr %i.apk, align 32, !tbaa !20 ; 2 uses
  %i.apr = load <8 x float>, ptr %i.apl, align 32, !tbaa !20 ; 2 uses
  %i.aps = load <8 x float>, ptr %i.apm, align 32, !tbaa !20 ; 2 uses
  %i.apt = load <8 x float>, ptr %i.apn, align 32, !tbaa !20
  %i.apu = fadd fast <8 x float> %i.apq, %i.app   ; 2 uses
  %i.apv = fadd fast <8 x float> %i.aps, %i.apr   ; 2 uses
  %i.apw = fsub fast <8 x float> %i.app, %i.apq   ; 2 uses
  %i.apx = fsub fast <8 x float> %i.apr, %i.aps   ; 2 uses
  %i.apy = fadd fast <8 x float> %i.apu, %i.apo
  %i.apz = fadd fast <8 x float> %i.apy, %i.apv
  %i.aqa = fmul fast <8 x float> %i.apw, splat (float f0x3F3504F3)
  %i.aqb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apx, <8 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <8 x float> nofpclass(nan inf) %i.aqa)
  %i.aqc = fmul fast <8 x float> %i.apu, splat (float 5.000000e-01)
  %i.aqd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apv, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.aqc)
  %i.aqe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apw, <8 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <8 x float> nofpclass(nan inf) %i.apt)
  %i.aqf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apx, <8 x float> nofpclass(nan inf) splat (float f0x403504F3), <8 x float> nofpclass(nan inf) %i.aqe)
  store <8 x float> %i.apz, ptr %i.aml, align 32, !tbaa !20
  store <8 x float> %i.aqb, ptr %i.amm, align 32, !tbaa !20
  store <8 x float> %i.aqd, ptr %i.amn, align 32, !tbaa !20
  store <8 x float> %i.aqf, ptr %i.amo, align 32, !tbaa !20
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %i.api, i64 %i.amb ; 2 uses
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.amb ; 2 uses
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.apk, i64 %i.amb ; 2 uses
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.apl, i64 %i.amb ; 2 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %i.amb ; 2 uses
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.apn, i64 %i.amb ; 2 uses
  %i.aqm = load <8 x float>, ptr %i.aqg, align 32, !tbaa !20
  %i.aqn = load <8 x float>, ptr %i.aqh, align 32, !tbaa !20 ; 2 uses
  %i.aqo = load <8 x float>, ptr %i.aqi, align 32, !tbaa !20 ; 2 uses
  %i.aqp = load <8 x float>, ptr %i.aqj, align 32, !tbaa !20 ; 2 uses
  %i.aqq = load <8 x float>, ptr %i.aqk, align 32, !tbaa !20 ; 2 uses
  %i.aqr = load <8 x float>, ptr %i.aql, align 32, !tbaa !20
  %i.aqs = fadd fast <8 x float> %i.aqo, %i.aqn   ; 2 uses
  %i.aqt = fadd fast <8 x float> %i.aqq, %i.aqp   ; 2 uses
  %i.aqu = fsub fast <8 x float> %i.aqn, %i.aqo   ; 2 uses
  %i.aqv = fsub fast <8 x float> %i.aqp, %i.aqq   ; 2 uses
  %i.aqw = fadd fast <8 x float> %i.aqs, %i.aqm
  %i.aqx = fadd fast <8 x float> %i.aqw, %i.aqt
  %i.aqy = fmul fast <8 x float> %i.aqu, splat (float f0x3F3504F3)
  %i.aqz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqv, <8 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <8 x float> nofpclass(nan inf) %i.aqy)
  %i.ara = fmul fast <8 x float> %i.aqs, splat (float 5.000000e-01)
  %i.arb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqt, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.ara)
  %i.arc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqu, <8 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <8 x float> nofpclass(nan inf) %i.aqr)
  %i.ard = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqv, <8 x float> nofpclass(nan inf) splat (float f0x403504F3), <8 x float> nofpclass(nan inf) %i.arc)
  store <8 x float> %i.aqx, ptr %i.amp, align 32, !tbaa !20
  store <8 x float> %i.aqz, ptr %i.amq, align 32, !tbaa !20
  store <8 x float> %i.arb, ptr %i.amr, align 32, !tbaa !20
  store <8 x float> %i.ard, ptr %i.ams, align 32, !tbaa !20
end_hunk_16
begin_hunk_17_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.box = extractelement <16 x i16> %i.boq, i64 13
  store i16 %i.box, ptr %i.boo, align 2, !tbaa !76
  %i.boy = extractelement <16 x i16> %i.boq, i64 15
  store i16 %i.boy, ptr %i.bop, align 2, !tbaa !76
  br i1 %i.atw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.boz = bitcast <8 x float> %.0.i124314311463.us to <16 x i16> ; 8 uses
  %i.bpa = extractelement <16 x i16> %i.boz, i64 1
  %i.bpb = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 2
  store i16 %i.bpa, ptr %i.bpb, align 2, !tbaa !76
  %i.bpc = extractelement <16 x i16> %i.boz, i64 3
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boj, i64 2
  store i16 %i.bpc, ptr %i.bpd, align 2, !tbaa !76
  %i.bpe = extractelement <16 x i16> %i.boz, i64 5
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bok, i64 2
  store i16 %i.bpe, ptr %i.bpf, align 2, !tbaa !76
  %i.bpg = extractelement <16 x i16> %i.boz, i64 7
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bol, i64 2
  store i16 %i.bpg, ptr %i.bph, align 2, !tbaa !76
  %i.bpi = extractelement <16 x i16> %i.boz, i64 9
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bom, i64 2
  store i16 %i.bpi, ptr %i.bpj, align 2, !tbaa !76
  %i.bpk = extractelement <16 x i16> %i.boz, i64 11
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bon, i64 2
  store i16 %i.bpk, ptr %i.bpl, align 2, !tbaa !76
  %i.bpm = extractelement <16 x i16> %i.boz, i64 13
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.boo, i64 2
  store i16 %i.bpm, ptr %i.bpn, align 2, !tbaa !76
  %i.bpo = extractelement <16 x i16> %i.boz, i64 15
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bop, i64 2
  store i16 %i.bpo, ptr %i.bpp, align 2, !tbaa !76
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.aty, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bpq = bitcast <8 x float> %.0.i12411467.us to <16 x i16> ; 8 uses
  %i.bpr = extractelement <16 x i16> %i.bpq, i64 1
  %i.bps = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 4
  store i16 %i.bpr, ptr %i.bps, align 2, !tbaa !76
  %i.bpt = extractelement <16 x i16> %i.bpq, i64 3
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.boj, i64 4
  store i16 %i.bpt, ptr %i.bpu, align 2, !tbaa !76
  %i.bpv = extractelement <16 x i16> %i.bpq, i64 5
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bok, i64 4
  store i16 %i.bpv, ptr %i.bpw, align 2, !tbaa !76
  %i.bpx = extractelement <16 x i16> %i.bpq, i64 7
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bol, i64 4
  store i16 %i.bpx, ptr %i.bpy, align 2, !tbaa !76
  %i.bpz = extractelement <16 x i16> %i.bpq, i64 9
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bom, i64 4
  store i16 %i.bpz, ptr %i.bqa, align 2, !tbaa !76
  %i.bqb = extractelement <16 x i16> %i.bpq, i64 11
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bon, i64 4
  store i16 %i.bqb, ptr %i.bqc, align 2, !tbaa !76
  %i.bqd = extractelement <16 x i16> %i.bpq, i64 13
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.boo, i64 4
  store i16 %i.bqd, ptr %i.bqe, align 2, !tbaa !76
  %i.bqf = extractelement <16 x i16> %i.bpq, i64 15
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bop, i64 4
  store i16 %i.bqf, ptr %i.bqg, align 2, !tbaa !76
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.aua, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  %i.bqh = bitcast <8 x float> %.0.i1240.us to <16 x i16> ; 8 uses
  %i.bqi = extractelement <16 x i16> %i.bqh, i64 1
  %i.bqj = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 6
  store i16 %i.bqi, ptr %i.bqj, align 2, !tbaa !76
  %i.bqk = extractelement <16 x i16> %i.bqh, i64 3
  %i.bql = getelementptr inbounds nuw i8, ptr %i.boj, i64 6
  store i16 %i.bqk, ptr %i.bql, align 2, !tbaa !76
  %i.bqm = extractelement <16 x i16> %i.bqh, i64 5
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bok, i64 6
  store i16 %i.bqm, ptr %i.bqn, align 2, !tbaa !76
  %i.bqo = extractelement <16 x i16> %i.bqh, i64 7
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bol, i64 6
  store i16 %i.bqo, ptr %i.bqp, align 2, !tbaa !76
  %i.bqq = extractelement <16 x i16> %i.bqh, i64 9
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bom, i64 6
  store i16 %i.bqq, ptr %i.bqr, align 2, !tbaa !76
  %i.bqs = extractelement <16 x i16> %i.bqh, i64 11
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bon, i64 6
  store i16 %i.bqs, ptr %i.bqt, align 2, !tbaa !76
  %i.bqu = extractelement <16 x i16> %i.bqh, i64 13
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.boo, i64 6
  store i16 %i.bqu, ptr %i.bqv, align 2, !tbaa !76
  %i.bqw = extractelement <16 x i16> %i.bqh, i64 15
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bop, i64 6
  store i16 %i.bqw, ptr %i.bqx, align 2, !tbaa !76
  br label %bb.bd

bb.ar:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.bqy = getelementptr inbounds nuw [2 x i8], ptr %.011452153.us, i64 %i.n ; 4 uses
  %i.bqz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1245141014291465.us) ; 2 uses
  %i.bra = bitcast <8 x bfloat> %i.bqz to <2 x i64>
  %i.brb = extractelement <2 x i64> %i.bra, i64 0
  store i64 %i.brb, ptr %.011452153.us, align 1, !tbaa !20
  %i.brc = bitcast <8 x bfloat> %i.bqz to <2 x i64>
  %i.brd = extractelement <2 x i64> %i.brc, i64 1
  store i64 %i.brd, ptr %i.bqy, align 1, !tbaa !20
  br i1 %i.atw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bre = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 8
  %i.brf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i124314311463.us) ; 2 uses
  %i.brg = bitcast <8 x bfloat> %i.brf to <2 x i64>
  %i.brh = extractelement <2 x i64> %i.brg, i64 0
  store i64 %i.brh, ptr %i.bre, align 1, !tbaa !20
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bqy, i64 8
  %i.brj = bitcast <8 x bfloat> %i.brf to <2 x i64>
  %i.brk = extractelement <2 x i64> %i.brj, i64 1
  store i64 %i.brk, ptr %i.bri, align 1, !tbaa !20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.aty, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.brl = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 16
  %i.brm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i12411467.us) ; 2 uses
  %i.brn = bitcast <8 x bfloat> %i.brm to <2 x i64>
  %i.bro = extractelement <2 x i64> %i.brn, i64 0
  store i64 %i.bro, ptr %i.brl, align 1, !tbaa !20
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bqy, i64 16
  %i.brq = bitcast <8 x bfloat> %i.brm to <2 x i64>
  %i.brr = extractelement <2 x i64> %i.brq, i64 1
  store i64 %i.brr, ptr %i.brp, align 1, !tbaa !20
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.aua, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.brs = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 24
  %i.brt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1240.us) ; 2 uses
  %i.bru = bitcast <8 x bfloat> %i.brt to <2 x i64>
  %i.brv = extractelement <2 x i64> %i.bru, i64 0
  store i64 %i.brv, ptr %i.brs, align 1, !tbaa !20
  %i.brw = getelementptr inbounds nuw i8, ptr %i.bqy, i64 24
  %i.brx = bitcast <8 x bfloat> %i.brt to <2 x i64>
  %i.bry = extractelement <2 x i64> %i.brx, i64 1
  store i64 %i.bry, ptr %i.brw, align 1, !tbaa !20
  br label %bb.bd

bb.ax:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.brz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1245141014291465.us)
  store <8 x bfloat> %i.brz, ptr %.011452153.us, align 1, !tbaa !20
  br i1 %i.atw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.bsa = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 16
  %i.bsb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i124314311463.us)
  store <8 x bfloat> %i.bsb, ptr %i.bsa, align 1, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.aty, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.bsc = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 32
  %i.bsd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i12411467.us)
  store <8 x bfloat> %i.bsd, ptr %i.bsc, align 1, !tbaa !20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.aua, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.bse = getelementptr inbounds nuw i8, ptr %.011452153.us, i64 48
  %i.bsf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1240.us)
  store <8 x bfloat> %i.bsf, ptr %i.bse, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.aw, %bb.av, %bb.aq, %bb.ap, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.bsg = getelementptr inbounds [2 x i8], ptr %.011452153.us, i64 %i.ame
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.aj
  %.11146.us = phi ptr [ %.011452153.us, %bb.aj ], [ %i.bsg, %bb.bd ]
  %indvars.iv.next2254 = add nuw nsw i64 %indvars.iv2253, 1 ; 2 uses
  %exitcond2256.not = icmp eq i64 %indvars.iv.next2254, 4
  br i1 %exitcond2256.not, label %bb.bf, label %bb.aj, !llvm.loop !847

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.next2258 = add nuw nsw i64 %indvars.iv2257, 1 ; 2 uses
  %exitcond2261.not = icmp eq i64 %indvars.iv.next2258, %wide.trip.count2260
  br i1 %exitcond2261.not, label %._crit_edge.us2162, label %_ZN4ncnn3MatD2Ev.exit1207.us, !llvm.loop !848

._crit_edge.us2162:                               ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next2263 = add nuw nsw i64 %indvars.iv2262, 8 ; 3 uses
  %i.bsh = icmp slt i64 %indvars.iv.next2263, %invariant.op
  br i1 %i.bsh, label %.lr.ph2158.split.us, label %.preheader2127.loopexit, !llvm.loop !849

.lr.ph2158.split:                                 ; preds = %.lr.ph2158
  %i.bsi = add i32 %3, -8
  %i.bsj = sub i32 %i.bsi, %.01116.lcssa
  %i.bsk = and i32 %i.bsj, -8
  %i.bsl = add i32 %.01116.lcssa, %i.bsk
  %i.bsm = add i32 %i.bsl, 8
  br label %.preheader2127

.preheader2127.loopexit:                          ; preds = %._crit_edge.us2162
  %i.bsn = trunc nsw i64 %indvars.iv.next2263 to i32
  br label %.preheader2127

.preheader2127:                                   ; preds = %.lr.ph2158.split, %.preheader2127.loopexit, %.preheader2128
  %.11117.lcssa = phi i32 [ %.01116.lcssa, %.preheader2128 ], [ %i.bsm, %.lr.ph2158.split ], [ %i.bsn, %.preheader2127.loopexit ] ; 5 uses
  %i.bso = or disjoint i32 %.11117.lcssa, 3
  %i.bsp = icmp slt i32 %i.bso, %3
  br i1 %i.bsp, label %.lr.ph2179, label %.preheader2126

.lr.ph2179:                                       ; preds = %.preheader2127
  %.not1172 = icmp eq ptr %.0.val, null
  %i.bsq = sext i32 %2 to i64
  %i.bsr = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.bsq
  %i.bss = icmp sgt i32 %5, 0
  %i.bst = shl nsw i32 %5, 2
  %i.bsu = sext i32 %i.bst to i64
  %i.bsv = shl nsw i32 %5, 3
  %i.bsw = sext i32 %i.bsv to i64
  %i.bsx = mul nsw i32 %5, 12
  %i.bsy = sext i32 %i.bsx to i64
  %i.bsz = shl nsw i32 %5, 4
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = mul nsw i32 %5, 20
  %i.btc = sext i32 %i.btb to i64
  %i.btd = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bte = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.btf = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.btg = mul nsw i32 %5, 24
  %i.bth = sext i32 %i.btg to i64                 ; 30 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx = shl i64 %i.n, 2
  %.idx1174 = mul i64 %i.n, 6
  %i.btj = mul nsw i32 %i.j, %i.f
  %i.btk = sext i32 %i.btj to i64
  br i1 %i.bss, label %.lr.ph2179.split.us.preheader, label %.lr.ph2179.split

.lr.ph2179.split.us.preheader:                    ; preds = %.lr.ph2179
  %i.btl = sext i32 %.11117.lcssa to i64
  %i.btm = sext i32 %3 to i64
  %wide.trip.count2278 = zext nneg i32 %5 to i64
  %i.btn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bto = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.btp = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.btq = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.btr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bts = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.btt = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.btu = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.btv = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.btw = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.btx = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.bty = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.btz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bua = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.bub = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.buc = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.bud = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bue = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.buf = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.bug = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %invariant.op2351 = add nsw i64 %i.btm, -3
  br label %.lr.ph2179.split.us

.lr.ph2179.split.us:                              ; preds = %.lr.ph2179.split.us.preheader, %._crit_edge.us2183
  %indvars.iv2280 = phi i64 [ %i.btl, %.lr.ph2179.split.us.preheader ], [ %indvars.iv.next2281, %._crit_edge.us2183 ] ; 4 uses
  br i1 %.not1172, label %.lr.ph.us2182, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph2179.split.us
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %i.bsr, i64 %indvars.iv2280
  %i.bui = load <4 x float>, ptr %i.buh, align 1, !tbaa !20
  br label %.lr.ph.us2182

.lr.ph.us2182:                                    ; preds = %bb.bg, %.lr.ph2179.split.us
  %i.buj = phi fast <4 x float> [ %i.bui, %bb.bg ], [ zeroinitializer, %.lr.ph2179.split.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.buk = trunc nsw i64 %indvars.iv2280 to i32
  %factor.op.mul.reass.us2181 = mul i32 %factor.op.mul2139, %i.buk
  %i.bul = sext i32 %factor.op.mul.reass.us2181 to i64
  %i.bum = trunc i64 %indvars.iv2280 to i32
  %i.bun = add i32 %2, %i.bum
  %i.buo = sdiv i32 %i.bun, %i.j
  %i.bup = sext i32 %i.buo to i64
  br label %_ZN4ncnn3MatD2Ev.exit1206.us

_ZN4ncnn3MatD2Ev.exit1206.us:                     ; preds = %.lr.ph.us2182, %bb.bx
  %indvars.iv2275 = phi i64 [ 0, %.lr.ph.us2182 ], [ %indvars.iv.next2276, %bb.bx ] ; 3 uses
  %i.buq = load ptr, ptr %0, align 8, !tbaa !9
  %i.bur = getelementptr inbounds [4 x i8], ptr %i.buq, i64 %i.bul
  %.idx2349 = shl nuw nsw i64 %indvars.iv2275, 4
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 %.idx2349 ; 7 uses
  %i.but = getelementptr inbounds nuw [4 x i8], ptr %i.bus, i64 %i.bsu ; 2 uses
  %i.buu = getelementptr inbounds nuw [4 x i8], ptr %i.bus, i64 %i.bsw ; 2 uses
  %i.buv = getelementptr inbounds nuw [4 x i8], ptr %i.bus, i64 %i.bsy ; 2 uses
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.bus, i64 %i.bta ; 2 uses
  %i.bux = getelementptr inbounds nuw [4 x i8], ptr %i.bus, i64 %i.btc ; 2 uses
  %i.buy = load <4 x float>, ptr %i.bus, align 16, !tbaa !20
  %i.buz = load <4 x float>, ptr %i.but, align 16, !tbaa !20 ; 2 uses
  %i.bva = load <4 x float>, ptr %i.buu, align 16, !tbaa !20 ; 2 uses
  %i.bvb = load <4 x float>, ptr %i.buv, align 16, !tbaa !20 ; 2 uses
  %i.bvc = load <4 x float>, ptr %i.buw, align 16, !tbaa !20 ; 2 uses
  %i.bvd = load <4 x float>, ptr %i.bux, align 16, !tbaa !20
  %i.bve = fadd fast <4 x float> %i.bva, %i.buz   ; 2 uses
  %i.bvf = fadd fast <4 x float> %i.bvc, %i.bvb   ; 2 uses
  %i.bvg = fsub fast <4 x float> %i.buz, %i.bva   ; 2 uses
  %i.bvh = fsub fast <4 x float> %i.bvb, %i.bvc   ; 2 uses
  %i.bvi = fadd fast <4 x float> %i.bve, %i.buy
  %i.bvj = fadd fast <4 x float> %i.bvi, %i.bvf
  %i.bvk = fmul fast <4 x float> %i.bvg, splat (float f0x3F3504F3)
  %i.bvl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvh, <4 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <4 x float> nofpclass(nan inf) %i.bvk)
  %i.bvm = fmul fast <4 x float> %i.bve, splat (float 5.000000e-01)
  %i.bvn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvf, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.bvm)
  %i.bvo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvg, <4 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <4 x float> nofpclass(nan inf) %i.bvd)
  %i.bvp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvh, <4 x float> nofpclass(nan inf) splat (float f0x403504F3), <4 x float> nofpclass(nan inf) %i.bvo)
  store <4 x float> %i.bvj, ptr %i.c, align 16, !tbaa !20
  store <4 x float> %i.bvl, ptr %i.btd, align 16, !tbaa !20
  store <4 x float> %i.bvn, ptr %i.bte, align 16, !tbaa !20
  store <4 x float> %i.bvp, ptr %i.btf, align 16, !tbaa !20
  %i.bvq = getelementptr inbounds nuw [4 x i8], ptr %i.bus, i64 %i.bth ; 2 uses
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bth ; 2 uses
  %i.bvs = getelementptr inbounds nuw [4 x i8], ptr %i.buu, i64 %i.bth ; 2 uses
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.buv, i64 %i.bth ; 2 uses
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr %i.buw, i64 %i.bth ; 2 uses
  %i.bvv = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bth ; 2 uses
  %i.bvw = load <4 x float>, ptr %i.bvq, align 16, !tbaa !20
  %i.bvx = load <4 x float>, ptr %i.bvr, align 16, !tbaa !20 ; 2 uses
  %i.bvy = load <4 x float>, ptr %i.bvs, align 16, !tbaa !20 ; 2 uses
  %i.bvz = load <4 x float>, ptr %i.bvt, align 16, !tbaa !20 ; 2 uses
  %i.bwa = load <4 x float>, ptr %i.bvu, align 16, !tbaa !20 ; 2 uses
  %i.bwb = load <4 x float>, ptr %i.bvv, align 16, !tbaa !20
  %i.bwc = fadd fast <4 x float> %i.bvy, %i.bvx   ; 2 uses
  %i.bwd = fadd fast <4 x float> %i.bwa, %i.bvz   ; 2 uses
  %i.bwe = fsub fast <4 x float> %i.bvx, %i.bvy   ; 2 uses
  %i.bwf = fsub fast <4 x float> %i.bvz, %i.bwa   ; 2 uses
  %i.bwg = fadd fast <4 x float> %i.bwc, %i.bvw
  %i.bwh = fadd fast <4 x float> %i.bwg, %i.bwd
  %i.bwi = fmul fast <4 x float> %i.bwe, splat (float f0x3F3504F3)
  %i.bwj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwf, <4 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <4 x float> nofpclass(nan inf) %i.bwi)
  %i.bwk = fmul fast <4 x float> %i.bwc, splat (float 5.000000e-01)
  %i.bwl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwd, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.bwk)
  %i.bwm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwe, <4 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <4 x float> nofpclass(nan inf) %i.bwb)
  %i.bwn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwf, <4 x float> nofpclass(nan inf) splat (float f0x403504F3), <4 x float> nofpclass(nan inf) %i.bwm)
  store <4 x float> %i.bwh, ptr %i.btn, align 16, !tbaa !20
  store <4 x float> %i.bwj, ptr %i.bto, align 16, !tbaa !20
  store <4 x float> %i.bwl, ptr %i.btp, align 16, !tbaa !20
  store <4 x float> %i.bwn, ptr %i.btq, align 16, !tbaa !20
  %i.bwo = getelementptr inbounds nuw [4 x i8], ptr %i.bvq, i64 %i.bth ; 2 uses
  %i.bwp = getelementptr inbounds nuw [4 x i8], ptr %i.bvr, i64 %i.bth ; 2 uses
  %i.bwq = getelementptr inbounds nuw [4 x i8], ptr %i.bvs, i64 %i.bth ; 2 uses
  %i.bwr = getelementptr inbounds nuw [4 x i8], ptr %i.bvt, i64 %i.bth ; 2 uses
  %i.bws = getelementptr inbounds nuw [4 x i8], ptr %i.bvu, i64 %i.bth ; 2 uses
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %i.bvv, i64 %i.bth ; 2 uses
  %i.bwu = load <4 x float>, ptr %i.bwo, align 16, !tbaa !20
  %i.bwv = load <4 x float>, ptr %i.bwp, align 16, !tbaa !20 ; 2 uses
  %i.bww = load <4 x float>, ptr %i.bwq, align 16, !tbaa !20 ; 2 uses
  %i.bwx = load <4 x float>, ptr %i.bwr, align 16, !tbaa !20 ; 2 uses
  %i.bwy = load <4 x float>, ptr %i.bws, align 16, !tbaa !20 ; 2 uses
  %i.bwz = load <4 x float>, ptr %i.bwt, align 16, !tbaa !20
  %i.bxa = fadd fast <4 x float> %i.bww, %i.bwv   ; 2 uses
  %i.bxb = fadd fast <4 x float> %i.bwy, %i.bwx   ; 2 uses
  %i.bxc = fsub fast <4 x float> %i.bwv, %i.bww   ; 2 uses
  %i.bxd = fsub fast <4 x float> %i.bwx, %i.bwy   ; 2 uses
  %i.bxe = fadd fast <4 x float> %i.bxa, %i.bwu
  %i.bxf = fadd fast <4 x float> %i.bxe, %i.bxb
  %i.bxg = fmul fast <4 x float> %i.bxc, splat (float f0x3F3504F3)
  %i.bxh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxd, <4 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <4 x float> nofpclass(nan inf) %i.bxg)
  %i.bxi = fmul fast <4 x float> %i.bxa, splat (float 5.000000e-01)
  %i.bxj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxb, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.bxi)
  %i.bxk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxc, <4 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <4 x float> nofpclass(nan inf) %i.bwz)
  %i.bxl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxd, <4 x float> nofpclass(nan inf) splat (float f0x403504F3), <4 x float> nofpclass(nan inf) %i.bxk)
  store <4 x float> %i.bxf, ptr %i.btr, align 16, !tbaa !20
  store <4 x float> %i.bxh, ptr %i.bts, align 16, !tbaa !20
  store <4 x float> %i.bxj, ptr %i.btt, align 16, !tbaa !20
  store <4 x float> %i.bxl, ptr %i.btu, align 16, !tbaa !20
  %i.bxm = getelementptr inbounds nuw [4 x i8], ptr %i.bwo, i64 %i.bth ; 2 uses
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr %i.bwp, i64 %i.bth ; 2 uses
  %i.bxo = getelementptr inbounds nuw [4 x i8], ptr %i.bwq, i64 %i.bth ; 2 uses
  %i.bxp = getelementptr inbounds nuw [4 x i8], ptr %i.bwr, i64 %i.bth ; 2 uses
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr %i.bws, i64 %i.bth ; 2 uses
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %i.bwt, i64 %i.bth ; 2 uses
  %i.bxs = load <4 x float>, ptr %i.bxm, align 16, !tbaa !20
  %i.bxt = load <4 x float>, ptr %i.bxn, align 16, !tbaa !20 ; 2 uses
  %i.bxu = load <4 x float>, ptr %i.bxo, align 16, !tbaa !20 ; 2 uses
  %i.bxv = load <4 x float>, ptr %i.bxp, align 16, !tbaa !20 ; 2 uses
  %i.bxw = load <4 x float>, ptr %i.bxq, align 16, !tbaa !20 ; 2 uses
  %i.bxx = load <4 x float>, ptr %i.bxr, align 16, !tbaa !20
  %i.bxy = fadd fast <4 x float> %i.bxu, %i.bxt   ; 2 uses
  %i.bxz = fadd fast <4 x float> %i.bxw, %i.bxv   ; 2 uses
  %i.bya = fsub fast <4 x float> %i.bxt, %i.bxu   ; 2 uses
  %i.byb = fsub fast <4 x float> %i.bxv, %i.bxw   ; 2 uses
  %i.byc = fadd fast <4 x float> %i.bxy, %i.bxs
  %i.byd = fadd fast <4 x float> %i.byc, %i.bxz
  %i.bye = fmul fast <4 x float> %i.bya, splat (float f0x3F3504F3)
  %i.byf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byb, <4 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <4 x float> nofpclass(nan inf) %i.bye)
  %i.byg = fmul fast <4 x float> %i.bxy, splat (float 5.000000e-01)
  %i.byh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxz, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.byg)
  %i.byi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bya, <4 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <4 x float> nofpclass(nan inf) %i.bxx)
  %i.byj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byb, <4 x float> nofpclass(nan inf) splat (float f0x403504F3), <4 x float> nofpclass(nan inf) %i.byi)
  store <4 x float> %i.byd, ptr %i.btv, align 16, !tbaa !20
  store <4 x float> %i.byf, ptr %i.btw, align 16, !tbaa !20
  store <4 x float> %i.byh, ptr %i.btx, align 16, !tbaa !20
  store <4 x float> %i.byj, ptr %i.bty, align 16, !tbaa !20
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.bxm, i64 %i.bth ; 2 uses
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr %i.bxn, i64 %i.bth ; 2 uses
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.bxo, i64 %i.bth ; 2 uses
  %i.byn = getelementptr inbounds nuw [4 x i8], ptr %i.bxp, i64 %i.bth ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.cva = fmul fast <4 x float> %i.cuv, %i.cuz
  %i.cvb = fadd fast <4 x float> %i.cva, splat (float 1.000000e+00)
  %i.cvc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cvb
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1511.us: ; preds = %bb.bi
  %i.cvd = load ptr, ptr %7, align 8, !tbaa !9    ; 2 uses
  %i.cve = load float, ptr %i.cvd, align 4, !tbaa !74
  %i.cvf = insertelement <4 x float> poison, float %i.cve, i64 0
  %i.cvg = shufflevector <4 x float> %i.cvf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cvd, i64 4
  %i.cvi = load float, ptr %i.cvh, align 4, !tbaa !74
  %i.cvj = insertelement <4 x float> poison, float %i.cvi, i64 0
  %i.cvk = shufflevector <4 x float> %i.cvj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cvl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccb, <4 x float> nofpclass(nan inf) %i.cvg)
  %i.cvm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cvl, <4 x float> nofpclass(nan inf) %i.cvk)
  %i.cvn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccd, <4 x float> nofpclass(nan inf) %i.cvg)
  %i.cvo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cvn, <4 x float> nofpclass(nan inf) %i.cvk)
  %i.cvp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccf, <4 x float> nofpclass(nan inf) %i.cvg)
  %i.cvq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cvp, <4 x float> nofpclass(nan inf) %i.cvk)
  %i.cvr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cci, <4 x float> nofpclass(nan inf) %i.cvg)
  %i.cvs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cvr, <4 x float> nofpclass(nan inf) %i.cvk)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1508.us: ; preds = %bb.bi
  %i.cvt = load ptr, ptr %7, align 8, !tbaa !9
  %i.cvu = load float, ptr %i.cvt, align 4, !tbaa !74
  %i.cvv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ccb)
  %i.cvw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ccb)
  %i.cvx = insertelement <4 x float> poison, float %i.cvu, i64 0
  %i.cvy = shufflevector <4 x float> %i.cvx, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cvz = fmul fast <4 x float> %i.cvy, %i.cvw
  %i.cwa = fadd fast <4 x float> %i.cvz, %i.cvv
  %i.cwb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ccd)
  %i.cwc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ccd)
  %i.cwd = fmul fast <4 x float> %i.cvy, %i.cwc
  %i.cwe = fadd fast <4 x float> %i.cwd, %i.cwb
  %i.cwf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ccf)
  %i.cwg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ccf)
  %i.cwh = fmul fast <4 x float> %i.cvy, %i.cwg
  %i.cwi = fadd fast <4 x float> %i.cwh, %i.cwf
  %i.cwj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cci)
  %i.cwk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cci)
  %i.cwl = fmul fast <4 x float> %i.cvy, %i.cwk
  %i.cwm = fadd fast <4 x float> %i.cwl, %i.cwj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread.us: ; preds = %bb.bi
  %i.cwn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccb, <4 x float> zeroinitializer)
  %i.cwo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccd, <4 x float> zeroinitializer)
  %i.cwp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccf, <4 x float> zeroinitializer)
  %i.cwq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cci, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us:   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1508.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1511.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1514.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1517.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1520.us, %bb.bi
  %.0.i12481563.us = phi <4 x float> [ %i.cdf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1520.us ], [ %i.cwp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread.us ], [ %i.cwi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1508.us ], [ %i.cvq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1511.us ], [ %i.cua, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1514.us ], [ %i.cnl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1517.us ], [ %i.ccf, %bb.bi ] ; 2 uses
  %.0.i1252150715261561.us = phi <4 x float> [ %i.ccv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1520.us ], [ %i.cwn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread.us ], [ %i.cwa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1508.us ], [ %i.cvm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1511.us ], [ %i.crw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1514.us ], [ %i.cgt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1517.us ], [ %i.ccb, %bb.bi ] ; 2 uses
  %.0.i125015281559.us = phi <4 x float> [ %i.cda, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1520.us ], [ %i.cwo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread.us ], [ %i.cwe, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1508.us ], [ %i.cvo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1511.us ], [ %i.csy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1514.us ], [ %i.ckc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1517.us ], [ %i.ccd, %bb.bi ] ; 2 uses
  %.0.i1247.us = phi nsz <4 x float> [ %i.cdk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1520.us ], [ %i.cwq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread.us ], [ %i.cwm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1508.us ], [ %i.cvs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1511.us ], [ %i.cvc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1514.us ], [ %i.cqu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1253.thread1517.us ], [ %i.cci, %bb.bi ] ; 2 uses
  switch i32 %i.j, label %bb.bv [
    i32 4, label %bb.bp
    i32 1, label %bb.bj
  ]

bb.bj:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.cwr = getelementptr inbounds nuw [2 x i8], ptr %.011272174.us, i64 %i.n ; 4 uses
  %i.cws = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 %.idx ; 4 uses
  %i.cwt = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 %.idx1174 ; 4 uses
  %i.cwu = bitcast <4 x float> %.0.i1252150715261561.us to <8 x i16> ; 4 uses
  %i.cwv = extractelement <8 x i16> %i.cwu, i64 1
  store i16 %i.cwv, ptr %.011272174.us, align 2, !tbaa !76
  %i.cww = extractelement <8 x i16> %i.cwu, i64 3
  store i16 %i.cww, ptr %i.cwr, align 2, !tbaa !76
  %i.cwx = extractelement <8 x i16> %i.cwu, i64 5
  store i16 %i.cwx, ptr %i.cws, align 2, !tbaa !76
  %i.cwy = extractelement <8 x i16> %i.cwu, i64 7
  store i16 %i.cwy, ptr %i.cwt, align 2, !tbaa !76
  br i1 %i.cbc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.cwz = bitcast <4 x float> %.0.i125015281559.us to <8 x i16> ; 4 uses
  %i.cxa = extractelement <8 x i16> %i.cwz, i64 1
  %i.cxb = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 2
  store i16 %i.cxa, ptr %i.cxb, align 2, !tbaa !76
  %i.cxc = extractelement <8 x i16> %i.cwz, i64 3
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cwr, i64 2
  store i16 %i.cxc, ptr %i.cxd, align 2, !tbaa !76
  %i.cxe = extractelement <8 x i16> %i.cwz, i64 5
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cws, i64 2
  store i16 %i.cxe, ptr %i.cxf, align 2, !tbaa !76
  %i.cxg = extractelement <8 x i16> %i.cwz, i64 7
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cwt, i64 2
  store i16 %i.cxg, ptr %i.cxh, align 2, !tbaa !76
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.cbe, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.cxi = bitcast <4 x float> %.0.i12481563.us to <8 x i16> ; 4 uses
  %i.cxj = extractelement <8 x i16> %i.cxi, i64 1
  %i.cxk = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 4
  store i16 %i.cxj, ptr %i.cxk, align 2, !tbaa !76
  %i.cxl = extractelement <8 x i16> %i.cxi, i64 3
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cwr, i64 4
  store i16 %i.cxl, ptr %i.cxm, align 2, !tbaa !76
  %i.cxn = extractelement <8 x i16> %i.cxi, i64 5
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cws, i64 4
  store i16 %i.cxn, ptr %i.cxo, align 2, !tbaa !76
  %i.cxp = extractelement <8 x i16> %i.cxi, i64 7
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cwt, i64 4
  store i16 %i.cxp, ptr %i.cxq, align 2, !tbaa !76
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.cbg, label %bb.bo, label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.cxr = bitcast <4 x float> %.0.i1247.us to <8 x i16> ; 4 uses
  %i.cxs = extractelement <8 x i16> %i.cxr, i64 1
  %i.cxt = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 6
  store i16 %i.cxs, ptr %i.cxt, align 2, !tbaa !76
  %i.cxu = extractelement <8 x i16> %i.cxr, i64 3
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cwr, i64 6
  store i16 %i.cxu, ptr %i.cxv, align 2, !tbaa !76
  %i.cxw = extractelement <8 x i16> %i.cxr, i64 5
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cws, i64 6
  store i16 %i.cxw, ptr %i.cxx, align 2, !tbaa !76
  %i.cxy = extractelement <8 x i16> %i.cxr, i64 7
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cwt, i64 6
  store i16 %i.cxy, ptr %i.cxz, align 2, !tbaa !76
  br label %bb.bv

bb.bp:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.cya = shufflevector <4 x float> %.0.i1252150715261561.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyb = shufflevector <8 x float> %i.cya, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cyc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cyb)
  %i.cyd = bitcast <8 x bfloat> %i.cyc to <2 x i64>
  %i.cye = extractelement <2 x i64> %i.cyd, i64 0
  store i64 %i.cye, ptr %.011272174.us, align 1, !tbaa !20
  br i1 %i.cbc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.cyf = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 8
  %i.cyg = shufflevector <4 x float> %.0.i125015281559.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyh = shufflevector <8 x float> %i.cyg, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cyi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cyh)
  %i.cyj = bitcast <8 x bfloat> %i.cyi to <2 x i64>
  %i.cyk = extractelement <2 x i64> %i.cyj, i64 0
  store i64 %i.cyk, ptr %i.cyf, align 1, !tbaa !20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.cbe, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.cyl = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 16
  %i.cym = shufflevector <4 x float> %.0.i12481563.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyn = shufflevector <8 x float> %i.cym, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cyo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cyn)
  %i.cyp = bitcast <8 x bfloat> %i.cyo to <2 x i64>
  %i.cyq = extractelement <2 x i64> %i.cyp, i64 0
  store i64 %i.cyq, ptr %i.cyl, align 1, !tbaa !20
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.cbg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.cyr = getelementptr inbounds nuw i8, ptr %.011272174.us, i64 24
  %i.cys = shufflevector <4 x float> %.0.i1247.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyt = shufflevector <8 x float> %i.cys, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cyu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cyt)
  %i.cyv = bitcast <8 x bfloat> %i.cyu to <2 x i64>
  %i.cyw = extractelement <2 x i64> %i.cyv, i64 0
  store i64 %i.cyw, ptr %i.cyr, align 1, !tbaa !20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bo, %bb.bn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.cyx = getelementptr inbounds [2 x i8], ptr %.011272174.us, i64 %i.btk
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bh
  %.11128.us = phi ptr [ %.011272174.us, %bb.bh ], [ %i.cyx, %bb.bv ]
  %indvars.iv.next2272 = add nuw nsw i64 %indvars.iv2271, 1 ; 2 uses
  %exitcond2274.not = icmp eq i64 %indvars.iv.next2272, 4
  br i1 %exitcond2274.not, label %bb.bx, label %bb.bh, !llvm.loop !853

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next2276 = add nuw nsw i64 %indvars.iv2275, 1 ; 2 uses
  %exitcond2279.not = icmp eq i64 %indvars.iv.next2276, %wide.trip.count2278
  br i1 %exitcond2279.not, label %._crit_edge.us2183, label %_ZN4ncnn3MatD2Ev.exit1206.us, !llvm.loop !854

._crit_edge.us2183:                               ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %indvars.iv.next2281 = add nuw nsw i64 %indvars.iv2280, 4 ; 3 uses
  %i.cyy = icmp slt i64 %indvars.iv.next2281, %invariant.op2351
  br i1 %i.cyy, label %.lr.ph2179.split.us, label %.preheader2126.loopexit, !llvm.loop !855

.lr.ph2179.split:                                 ; preds = %.lr.ph2179
  %i.cyz = add i32 %3, -4
  %i.cza = sub i32 %i.cyz, %.11117.lcssa
  %i.czb = and i32 %i.cza, -4
  %i.czc = add i32 %.11117.lcssa, %i.czb
  %i.czd = add i32 %i.czc, 4
  br label %.preheader2126

.preheader2126.loopexit:                          ; preds = %._crit_edge.us2183
  %i.cze = trunc nsw i64 %indvars.iv.next2281 to i32
  br label %.preheader2126

.preheader2126:                                   ; preds = %.lr.ph2179.split, %.preheader2126.loopexit, %.preheader2127
  %.2.lcssa = phi i32 [ %.11117.lcssa, %.preheader2127 ], [ %i.czd, %.lr.ph2179.split ], [ %i.cze, %.preheader2126.loopexit ] ; 3 uses
  %i.czf = or disjoint i32 %.2.lcssa, 1
  %i.czg = icmp slt i32 %i.czf, %3
  br i1 %i.czg, label %.lr.ph2202, label %.preheader

.lr.ph2202:                                       ; preds = %.preheader2126
  %.not1170 = icmp eq ptr %.0.val, null
  %i.czh = icmp sgt i32 %5, 0
  %i.czi = shl nsw i32 %5, 1
  %i.czj = sext i32 %i.czi to i64
  %i.czk = shl nsw i32 %5, 2
  %i.czl = sext i32 %i.czk to i64
  %i.czm = mul nsw i32 %5, 6
  %i.czn = sext i32 %i.czm to i64
  %i.czo = shl nsw i32 %5, 3
  %i.czp = sext i32 %i.czo to i64
  %i.czq = mul nsw i32 %5, 10
  %i.czr = sext i32 %i.czq to i64
  %i.czs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.czt = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.czu = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.czv = mul nsw i32 %5, 12
  %i.czw = sext i32 %i.czv to i64                 ; 30 uses
  %i.czx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.czy = sext i32 %i.f to i64
  %i.czz = sext i32 %.2.lcssa to i64
  %i.daa = sext i32 %3 to i64
  %i.dab = sext i32 %2 to i64                     ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0.val, i64 %i.dab
  %wide.trip.count2294 = zext nneg i32 %5 to i64
  %invariant.op2352 = add nsw i64 %i.daa, -1
  %i.dac = load ptr, ptr %0, align 8
  %i.dad = load i32, ptr %i.e, align 4
  %i.dae = load ptr, ptr %1, align 8
  %i.daf = load i64, ptr %i.k, align 8
  %i.dag = load i64, ptr %i.czx, align 8          ; 2 uses
  %factor.op.mul = mul i64 %i.daf, %i.dag
  %i.dah = sext i32 %i.dad to i64
  %factor.op.mul2198 = mul i64 %i.dag, %i.dah
  %i.dai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.daj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.dak = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.dal = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.dam = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dan = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.dao = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.dap = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.daq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dar = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.das = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.dat = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.dau = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dav = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.daw = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.dax = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.day = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.daz = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.dba = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  br label %bb.by

.preheader.loopexit:                              ; preds = %._crit_edge
  %i.dbc = trunc nsw i64 %indvars.iv.next2297 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader2126
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader2126 ], [ %i.dbc, %.preheader.loopexit ] ; 2 uses
  %i.dbd = icmp slt i32 %.3.lcssa, %3
  br i1 %i.dbd, label %.lr.ph2222, label %._crit_edge2223

.lr.ph2222:                                       ; preds = %.preheader
  %.not = icmp eq ptr %.0.val, null
  %i.dbe = icmp sgt i32 %5, 0
  %i.dbf = sext i32 %5 to i64
  %i.dbg = shl nsw i32 %5, 1
  %i.dbh = sext i32 %i.dbg to i64
  %i.dbi = mul nsw i32 %5, 3
  %i.dbj = sext i32 %i.dbi to i64
  %i.dbk = shl nsw i32 %5, 2
  %i.dbl = sext i32 %i.dbk to i64
  %i.dbm = mul nsw i32 %5, 5
  %i.dbn = sext i32 %i.dbm to i64
  %i.dbo = mul nsw i32 %5, 6
  %i.dbp = sext i32 %i.dbo to i64                 ; 30 uses
  %i.dbq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dbr = sext i32 %i.f to i64                   ; 3 uses
  %i.dbs = sext i32 %.3.lcssa to i64
  %i.dbt = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count2315 = sext i32 %3 to i64
  %invariant.gep2353 = getelementptr [4 x i8], ptr %.0.val, i64 %i.dbt
  %wide.trip.count2310 = zext nneg i32 %5 to i64
  %i.dbu = load ptr, ptr %0, align 8
  %i.dbv = load i32, ptr %i.e, align 4
  %i.dbw = load ptr, ptr %1, align 8
  %i.dbx = load i64, ptr %i.k, align 8
  %i.dby = load i64, ptr %i.dbq, align 8          ; 2 uses
  %factor.op.mul2380 = mul i64 %i.dbx, %i.dby
  %i.dbz = sext i32 %i.dbv to i64
  %factor.op.mul2217 = mul i64 %i.dby, %i.dbz
  %.sroa.0.64..sroa_idx2376 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  %.sroa.0.4..sroa_idx2363 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.8..sroa_idx2364 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.20..sroa_idx2366 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %.sroa.0.12..sroa_idx2365 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %.sroa.0.24..sroa_idx2367 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.28..sroa_idx2368 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.32..sroa_idx2369 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.44..sroa_idx2371 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 44
  %.sroa.0.36..sroa_idx2370 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 36
  %.sroa.0.48..sroa_idx2372 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.52..sroa_idx2373 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 52
  %.sroa.0.56..sroa_idx2374 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.68..sroa_idx2377 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 68
  %.sroa.0.60..sroa_idx2375 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 60
  %.sroa.0.72..sroa_idx2378 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 72
  %.sroa.0.76..sroa_idx2379 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 76
  br label %bb.db

bb.by:                                            ; preds = %.lr.ph2202, %._crit_edge
  %indvars.iv2296 = phi i64 [ %i.czz, %.lr.ph2202 ], [ %indvars.iv.next2297, %._crit_edge ] ; 4 uses
  br i1 %.not1170, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2296
  %i.dca = load <2 x float>, ptr %gep, align 4, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %bb.by, %bb.bz
  %i.dcb = phi <2 x float> [ %i.dca, %bb.bz ], [ zeroinitializer, %bb.by ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br i1 %i.czh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.dcc = trunc nsw i64 %indvars.iv2296 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul2139, %i.dcc
  %i.dcd = sext i32 %factor.op.mul.reass to i64
  %i.dce = getelementptr inbounds [4 x i8], ptr %i.dac, i64 %i.dcd
  %i.dcf = add nsw i64 %indvars.iv2296, %i.dab
  %.reass = mul i64 %factor.op.mul, %i.dcf
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dae, i64 %.reass
  br label %_ZN4ncnn3MatD2Ev.exit1205

_ZN4ncnn3MatD2Ev.exit1205:                        ; preds = %.lr.ph, %bb.ca
  %indvars.iv2291 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next2292, %bb.ca ] ; 3 uses
  %.idx2350 = shl nuw nsw i64 %indvars.iv2291, 3
  %i.dch = getelementptr inbounds nuw i8, ptr %i.dce, i64 %.idx2350 ; 7 uses
  %i.dci = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %i.czr ; 2 uses
  %i.dcj = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %i.czp ; 2 uses
  %i.dck = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %i.czn ; 2 uses
  %i.dcl = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %i.czl ; 2 uses
  %i.dcm = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %i.czj ; 2 uses
  %i.dcn = load <2 x float>, ptr %i.dcm, align 4, !tbaa !74 ; 2 uses
  %i.dco = load <2 x float>, ptr %i.dcl, align 4, !tbaa !74 ; 2 uses
  %i.dcp = fadd fast <2 x float> %i.dco, %i.dcn   ; 2 uses
  %i.dcq = load <2 x float>, ptr %i.dck, align 4, !tbaa !74 ; 2 uses
  %i.dcr = load <2 x float>, ptr %i.dcj, align 4, !tbaa !74 ; 2 uses
  %i.dcs = fadd fast <2 x float> %i.dcr, %i.dcq   ; 2 uses
  %i.dct = load <2 x float>, ptr %i.dch, align 4, !tbaa !74
  %i.dcu = fadd fast <2 x float> %i.dcs, %i.dcp
  %i.dcv = fadd fast <2 x float> %i.dcu, %i.dct
  store <2 x float> %i.dcv, ptr %i.d, align 16, !tbaa !74
  %i.dcw = fsub fast <2 x float> %i.dcn, %i.dco   ; 2 uses
  %i.dcx = fsub fast <2 x float> %i.dcq, %i.dcr   ; 2 uses
  %i.dcy = fmul fast <2 x float> %i.dcw, splat (float f0x3F3504F3)
  %i.dcz = fmul fast <2 x float> %i.dcx, splat (float f0x3FB504F3)
  %i.dda = fadd fast <2 x float> %i.dcz, %i.dcy
  store <2 x float> %i.dda, ptr %i.czs, align 16, !tbaa !74
  %i.ddb = fmul fast <2 x float> %i.dcp, splat (float 5.000000e-01)
  %i.ddc = fmul fast <2 x float> %i.dcs, splat (float 2.000000e+00)
  %i.ddd = fadd fast <2 x float> %i.ddc, %i.ddb
  store <2 x float> %i.ddd, ptr %i.czt, align 16, !tbaa !74
  %i.dde = load <2 x float>, ptr %i.dci, align 4, !tbaa !74
  %i.ddf = fmul fast <2 x float> %i.dcw, splat (float f0x3EB504F3)
  %i.ddg = fadd fast <2 x float> %i.ddf, %i.dde
  %i.ddh = fmul fast <2 x float> %i.dcx, splat (float f0x403504F3)
  %i.ddi = fadd fast <2 x float> %i.ddg, %i.ddh
  store <2 x float> %i.ddi, ptr %i.czu, align 16, !tbaa !74
  %i.ddj = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %i.czw ; 2 uses
  %i.ddk = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %i.czw ; 2 uses
  %i.ddl = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %i.czw ; 2 uses
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.dck, i64 %i.czw ; 2 uses
  %i.ddn = getelementptr inbounds nuw [4 x i8], ptr %i.dcj, i64 %i.czw ; 2 uses
  %i.ddo = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %i.czw ; 2 uses
  %i.ddp = load <2 x float>, ptr %i.ddk, align 4, !tbaa !74 ; 2 uses
  %i.ddq = load <2 x float>, ptr %i.ddl, align 4, !tbaa !74 ; 2 uses
  %i.ddr = fadd fast <2 x float> %i.ddq, %i.ddp   ; 2 uses
  %i.dds = load <2 x float>, ptr %i.ddm, align 4, !tbaa !74 ; 2 uses
  %i.ddt = load <2 x float>, ptr %i.ddn, align 4, !tbaa !74 ; 2 uses
  %i.ddu = fadd fast <2 x float> %i.ddt, %i.dds   ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.bce = getelementptr inbounds nuw i8, ptr %i.ayz, i64 4
  store i16 %i.bcd, ptr %i.bce, align 2, !tbaa !76
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.pb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bcf = bitcast <16 x float> %.0.i171420482103.us to <32 x i16> ; 16 uses
  %i.bcg = extractelement <32 x i16> %i.bcf, i64 1
  %i.bch = getelementptr inbounds nuw i8, ptr %.016113831.us, i64 6
  store i16 %i.bcg, ptr %i.bch, align 2, !tbaa !76
  %i.bci = extractelement <32 x i16> %i.bcf, i64 3
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.ayl, i64 6
  store i16 %i.bci, ptr %i.bcj, align 2, !tbaa !76
  %i.bck = extractelement <32 x i16> %i.bcf, i64 5
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.aym, i64 6
  store i16 %i.bck, ptr %i.bcl, align 2, !tbaa !76
  %i.bcm = extractelement <32 x i16> %i.bcf, i64 7
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.ayn, i64 6
  store i16 %i.bcm, ptr %i.bcn, align 2, !tbaa !76
  %i.bco = extractelement <32 x i16> %i.bcf, i64 9
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 6
  store i16 %i.bco, ptr %i.bcp, align 2, !tbaa !76
  %i.bcq = extractelement <32 x i16> %i.bcf, i64 11
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 6
  store i16 %i.bcq, ptr %i.bcr, align 2, !tbaa !76
  %i.bcs = extractelement <32 x i16> %i.bcf, i64 13
  %i.bct = getelementptr inbounds nuw i8, ptr %i.ayq, i64 6
  store i16 %i.bcs, ptr %i.bct, align 2, !tbaa !76
  %i.bcu = extractelement <32 x i16> %i.bcf, i64 15
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.ayr, i64 6
  store i16 %i.bcu, ptr %i.bcv, align 2, !tbaa !76
  %i.bcw = extractelement <32 x i16> %i.bcf, i64 17
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.ays, i64 6
  store i16 %i.bcw, ptr %i.bcx, align 2, !tbaa !76
  %i.bcy = extractelement <32 x i16> %i.bcf, i64 19
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.ayt, i64 6
  store i16 %i.bcy, ptr %i.bcz, align 2, !tbaa !76
  %i.bda = extractelement <32 x i16> %i.bcf, i64 21
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.ayu, i64 6
  store i16 %i.bda, ptr %i.bdb, align 2, !tbaa !76
  %i.bdc = extractelement <32 x i16> %i.bcf, i64 23
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.ayv, i64 6
  store i16 %i.bdc, ptr %i.bdd, align 2, !tbaa !76
  %i.bde = extractelement <32 x i16> %i.bcf, i64 25
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.ayw, i64 6
  store i16 %i.bde, ptr %i.bdf, align 2, !tbaa !76
  %i.bdg = extractelement <32 x i16> %i.bcf, i64 27
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.ayx, i64 6
  store i16 %i.bdg, ptr %i.bdh, align 2, !tbaa !76
  %i.bdi = extractelement <32 x i16> %i.bcf, i64 29
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.ayy, i64 6
  store i16 %i.bdi, ptr %i.bdj, align 2, !tbaa !76
  %i.bdk = extractelement <32 x i16> %i.bcf, i64 31
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.ayz, i64 6
  store i16 %i.bdk, ptr %i.bdl, align 2, !tbaa !76
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.pd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bdm = bitcast <16 x float> %.0.i17122111.us to <32 x i16> ; 16 uses
  %i.bdn = extractelement <32 x i16> %i.bdm, i64 1
  %i.bdo = getelementptr inbounds nuw i8, ptr %.016113831.us, i64 8
  store i16 %i.bdn, ptr %i.bdo, align 2, !tbaa !76
  %i.bdp = extractelement <32 x i16> %i.bdm, i64 3
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8
  store i16 %i.bdp, ptr %i.bdq, align 2, !tbaa !76
  %i.bdr = extractelement <32 x i16> %i.bdm, i64 5
  %i.bds = getelementptr inbounds nuw i8, ptr %i.aym, i64 8
  store i16 %i.bdr, ptr %i.bds, align 2, !tbaa !76
  %i.bdt = extractelement <32 x i16> %i.bdm, i64 7
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  store i16 %i.bdt, ptr %i.bdu, align 2, !tbaa !76
  %i.bdv = extractelement <32 x i16> %i.bdm, i64 9
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  store i16 %i.bdv, ptr %i.bdw, align 2, !tbaa !76
  %i.bdx = extractelement <32 x i16> %i.bdm, i64 11
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  store i16 %i.bdx, ptr %i.bdy, align 2, !tbaa !76
  %i.bdz = extractelement <32 x i16> %i.bdm, i64 13
  %i.bea = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8
  store i16 %i.bdz, ptr %i.bea, align 2, !tbaa !76
  %i.beb = extractelement <32 x i16> %i.bdm, i64 15
  %i.bec = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  store i16 %i.beb, ptr %i.bec, align 2, !tbaa !76
  %i.bed = extractelement <32 x i16> %i.bdm, i64 17
  %i.bee = getelementptr inbounds nuw i8, ptr %i.ays, i64 8
  store i16 %i.bed, ptr %i.bee, align 2, !tbaa !76
  %i.bef = extractelement <32 x i16> %i.bdm, i64 19
  %i.beg = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  store i16 %i.bef, ptr %i.beg, align 2, !tbaa !76
  %i.beh = extractelement <32 x i16> %i.bdm, i64 21
  %i.bei = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  store i16 %i.beh, ptr %i.bei, align 2, !tbaa !76
  %i.bej = extractelement <32 x i16> %i.bdm, i64 23
  %i.bek = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  store i16 %i.bej, ptr %i.bek, align 2, !tbaa !76
  %i.bel = extractelement <32 x i16> %i.bdm, i64 25
  %i.bem = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8
  store i16 %i.bel, ptr %i.bem, align 2, !tbaa !76
  %i.ben = extractelement <32 x i16> %i.bdm, i64 27
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  store i16 %i.ben, ptr %i.beo, align 2, !tbaa !76
  %i.bep = extractelement <32 x i16> %i.bdm, i64 29
  %i.beq = getelementptr inbounds nuw i8, ptr %i.ayy, i64 8
  store i16 %i.bep, ptr %i.beq, align 2, !tbaa !76
  %i.ber = extractelement <32 x i16> %i.bdm, i64 31
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  store i16 %i.ber, ptr %i.bes, align 2, !tbaa !76
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.pf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bet = bitcast <16 x float> %.0.i.us to <32 x i16> ; 16 uses
  %i.beu = extractelement <32 x i16> %i.bet, i64 1
  %i.bev = getelementptr inbounds nuw i8, ptr %.016113831.us, i64 10
  store i16 %i.beu, ptr %i.bev, align 2, !tbaa !76
  %i.bew = extractelement <32 x i16> %i.bet, i64 3
  %i.bex = getelementptr inbounds nuw i8, ptr %i.ayl, i64 10
  store i16 %i.bew, ptr %i.bex, align 2, !tbaa !76
  %i.bey = extractelement <32 x i16> %i.bet, i64 5
  %i.bez = getelementptr inbounds nuw i8, ptr %i.aym, i64 10
  store i16 %i.bey, ptr %i.bez, align 2, !tbaa !76
  %i.bfa = extractelement <32 x i16> %i.bet, i64 7
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.ayn, i64 10
  store i16 %i.bfa, ptr %i.bfb, align 2, !tbaa !76
  %i.bfc = extractelement <32 x i16> %i.bet, i64 9
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.ayo, i64 10
  store i16 %i.bfc, ptr %i.bfd, align 2, !tbaa !76
  %i.bfe = extractelement <32 x i16> %i.bet, i64 11
  %i.bff = getelementptr inbounds nuw i8, ptr %i.ayp, i64 10
  store i16 %i.bfe, ptr %i.bff, align 2, !tbaa !76
  %i.bfg = extractelement <32 x i16> %i.bet, i64 13
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.ayq, i64 10
  store i16 %i.bfg, ptr %i.bfh, align 2, !tbaa !76
  %i.bfi = extractelement <32 x i16> %i.bet, i64 15
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.ayr, i64 10
  store i16 %i.bfi, ptr %i.bfj, align 2, !tbaa !76
  %i.bfk = extractelement <32 x i16> %i.bet, i64 17
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.ays, i64 10
  store i16 %i.bfk, ptr %i.bfl, align 2, !tbaa !76
  %i.bfm = extractelement <32 x i16> %i.bet, i64 19
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.ayt, i64 10
  store i16 %i.bfm, ptr %i.bfn, align 2, !tbaa !76
  %i.bfo = extractelement <32 x i16> %i.bet, i64 21
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.ayu, i64 10
  store i16 %i.bfo, ptr %i.bfp, align 2, !tbaa !76
  %i.bfq = extractelement <32 x i16> %i.bet, i64 23
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.ayv, i64 10
  store i16 %i.bfq, ptr %i.bfr, align 2, !tbaa !76
  %i.bfs = extractelement <32 x i16> %i.bet, i64 25
  %i.bft = getelementptr inbounds nuw i8, ptr %i.ayw, i64 10
  store i16 %i.bfs, ptr %i.bft, align 2, !tbaa !76
  %i.bfu = extractelement <32 x i16> %i.bet, i64 27
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.ayx, i64 10
  store i16 %i.bfu, ptr %i.bfv, align 2, !tbaa !76
  %i.bfw = extractelement <32 x i16> %i.bet, i64 29
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.ayy, i64 10
  store i16 %i.bfw, ptr %i.bfx, align 2, !tbaa !76
  %i.bfy = extractelement <32 x i16> %i.bet, i64 31
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.ayz, i64 10
  store i16 %i.bfy, ptr %i.bfz, align 2, !tbaa !76
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ak, %bb.z, %bb.o, %.split.us, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.us
  %i.bga = getelementptr inbounds [2 x i8], ptr %.016113831.us, i64 %i.av
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.c
  %.11612.us = phi ptr [ %.016113831.us, %bb.c ], [ %i.bga, %bb.av ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.ax, label %bb.c, !llvm.loop !929

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next3944 = add nuw nsw i64 %indvars.iv3943, 1 ; 2 uses
  %exitcond3946.not = icmp eq i64 %indvars.iv.next3944, %wide.trip.count
  br i1 %exitcond3946.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit1686.us, !llvm.loop !930

._crit_edge.us:                                   ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next3948 = add nuw nsw i64 %indvars.iv3947, 16 ; 3 uses
  %i.bgb = or disjoint i64 %indvars.iv.next3948, 15
  %i.bgc = icmp samesign ult i64 %i.bgb, %i.ax
  br i1 %i.bgc, label %.lr.ph3836.split.us, label %.preheader3820.loopexit, !llvm.loop !931

.lr.ph3836.split:                                 ; preds = %.lr.ph3836
  %i.bgd = and i32 %3, 2147483632
  br label %.preheader3820

.preheader3820.loopexit:                          ; preds = %._crit_edge.us
  %i.bge = trunc nuw nsw i64 %indvars.iv.next3948 to i32
  br label %.preheader3820

.preheader3820:                                   ; preds = %.lr.ph3836.split, %.preheader3820.loopexit, %bb.a
  %.01586.lcssa = phi i32 [ 0, %bb.a ], [ %i.bgd, %.lr.ph3836.split ], [ %i.bge, %.preheader3820.loopexit ] ; 5 uses
  %i.bgf = or disjoint i32 %.01586.lcssa, 7
  %i.bgg = icmp slt i32 %i.bgf, %3
  br i1 %i.bgg, label %.lr.ph3854, label %.preheader3819

.lr.ph3854:                                       ; preds = %.preheader3820
  %.not1653 = icmp eq ptr %.0.val, null
  %i.bgh = sext i32 %2 to i64
  %i.bgi = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.bgh
  %i.bgj = icmp sgt i32 %5, 0
  %i.bgk = shl nsw i32 %5, 3
  %i.bgl = sext i32 %i.bgk to i64
  %i.bgm = shl nsw i32 %5, 4
  %i.bgn = sext i32 %i.bgm to i64
  %i.bgo = mul nsw i32 %5, 24
  %i.bgp = sext i32 %i.bgo to i64
  %i.bgq = shl nsw i32 %5, 5
  %i.bgr = sext i32 %i.bgq to i64
  %i.bgs = mul nsw i32 %5, 40
  %i.bgt = sext i32 %i.bgs to i64
  %i.bgu = mul nsw i32 %5, 48
  %i.bgv = sext i32 %i.bgu to i64
  %i.bgw = mul nsw i32 %5, 56
  %i.bgx = sext i32 %i.bgw to i64
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.bha = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.b, i64 1280
  %i.bhd = sext i32 %factor.op.mul3833 to i64     ; 56 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx1655 = shl i64 %i.o, 2
  %.idx1656 = mul i64 %i.o, 6
  %.idx1657 = shl i64 %i.o, 3
  %.idx1658 = mul i64 %i.o, 10
  %.idx1659 = mul i64 %i.o, 12
  %.idx1660 = mul i64 %i.o, 14
  %i.bhf = mul nsw i32 %i.k, %i.g
  %i.bhg = sext i32 %i.bhf to i64
  br i1 %i.bgj, label %.lr.ph3854.split.us.preheader, label %.lr.ph3854.split

.lr.ph3854.split.us.preheader:                    ; preds = %.lr.ph3854
  %i.bhh = sext i32 %i.i to i64
  %i.bhi = sext i32 %.01586.lcssa to i64
  %i.bhj = sext i32 %3 to i64
  %wide.trip.count3962 = zext nneg i32 %5 to i64
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  %i.bho = getelementptr inbounds nuw i8, ptr %i.b, i64 1056
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.b, i64 1312
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.bht = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  %i.bia = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.bib = getelementptr inbounds nuw i8, ptr %i.b, i64 1376
  %i.bic = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bid = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.bie = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.bif = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.big = getelementptr inbounds nuw i8, ptr %i.b, i64 1152
  %i.bih = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  %i.bii = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bij = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.bik = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.bil = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %i.bim = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %i.bin = getelementptr inbounds nuw i8, ptr %i.b, i64 1440
  %i.bio = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bip = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.biq = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.bir = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.bis = getelementptr inbounds nuw i8, ptr %i.b, i64 1216
  %i.bit = getelementptr inbounds nuw i8, ptr %i.b, i64 1472
  %i.biu = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.biv = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.biw = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %i.bix = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  %i.biy = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.biz = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %invariant.op4062.a = add nsw i64 %i.bhj, -7
  br label %.lr.ph3854.split.us

.lr.ph3854.split.us:                              ; preds = %.lr.ph3854.split.us.preheader, %._crit_edge.us3858
  %indvars.iv3964 = phi i64 [ %i.bhi, %.lr.ph3854.split.us.preheader ], [ %indvars.iv.next3965, %._crit_edge.us3858 ] ; 4 uses
  br i1 %.not1653, label %.lr.ph.us3857, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph3854.split.us
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %indvars.iv3964
  %i.bjb = load <8 x float>, ptr %i.bja, align 1, !tbaa !20
  br label %.lr.ph.us3857

.lr.ph.us3857:                                    ; preds = %bb.ay, %.lr.ph3854.split.us
  %i.bjc = phi fast <8 x float> [ %i.bjb, %bb.ay ], [ zeroinitializer, %.lr.ph3854.split.us ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bjd = trunc nsw i64 %indvars.iv3964 to i32
  %factor.op.mul.reass.us3856 = mul i32 %factor.op.mul3833, %i.bjd
  %i.bje = sext i32 %factor.op.mul.reass.us3856 to i64
  %i.bjf = trunc i64 %indvars.iv3964 to i32
  %i.bjg = add i32 %2, %i.bjf
  %i.bjh = sdiv i32 %i.bjg, %i.k
  %i.bji = sext i32 %i.bjh to i64
  br label %_ZN4ncnn3MatD2Ev.exit1685.us

_ZN4ncnn3MatD2Ev.exit1685.us:                     ; preds = %.lr.ph.us3857, %bb.ch
  %indvars.iv3959 = phi i64 [ 0, %.lr.ph.us3857 ], [ %indvars.iv.next3960, %bb.ch ] ; 3 uses
  %i.bjj = load ptr, ptr %0, align 8, !tbaa !9
  %i.bjk = getelementptr inbounds [4 x i8], ptr %i.bjj, i64 %i.bje
  %.idx4058 = shl nuw nsw i64 %indvars.iv3959, 5
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 %.idx4058 ; 9 uses
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgl ; 2 uses
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgn ; 2 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgp ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgr ; 2 uses
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgt ; 2 uses
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgv ; 2 uses
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bgx ; 2 uses
  %i.bjt = load <8 x float>, ptr %i.bjl, align 32, !tbaa !20
  %i.bju = load <8 x float>, ptr %i.bjm, align 32, !tbaa !20 ; 2 uses
  %i.bjv = load <8 x float>, ptr %i.bjn, align 32, !tbaa !20 ; 2 uses
  %i.bjw = load <8 x float>, ptr %i.bjo, align 32, !tbaa !20 ; 2 uses
  %i.bjx = load <8 x float>, ptr %i.bjp, align 32, !tbaa !20 ; 2 uses
  %i.bjy = load <8 x float>, ptr %i.bjq, align 32, !tbaa !20 ; 2 uses
  %i.bjz = load <8 x float>, ptr %i.bjr, align 32, !tbaa !20 ; 2 uses
  %i.bka = load <8 x float>, ptr %i.bjs, align 32, !tbaa !20
  %i.bkb = fadd fast <8 x float> %i.bjv, %i.bju   ; 3 uses
  %i.bkc = fsub fast <8 x float> %i.bju, %i.bjv   ; 3 uses
  %i.bkd = fadd fast <8 x float> %i.bjx, %i.bjw   ; 3 uses
  %i.bke = fsub fast <8 x float> %i.bjw, %i.bjx   ; 3 uses
  %i.bkf = fadd fast <8 x float> %i.bjz, %i.bjy   ; 3 uses
  %i.bkg = fsub fast <8 x float> %i.bjy, %i.bjz   ; 3 uses
  %i.bkh = fadd fast <8 x float> %i.bkb, %i.bjt
  %i.bki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkf, <8 x float> nofpclass(nan inf) splat (float 3.200000e+01), <8 x float> nofpclass(nan inf) %i.bkd)
  %i.bkj = fadd fast <8 x float> %i.bkh, %i.bki
  %i.bkk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bke, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.bkc)
  %i.bkl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkg, <8 x float> nofpclass(nan inf) splat (float 1.600000e+01), <8 x float> nofpclass(nan inf) %i.bkk)
  %i.bkm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkd, <8 x float> nofpclass(nan inf) splat (float 4.000000e+00), <8 x float> nofpclass(nan inf) %i.bkb)
  %i.bkn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkf, <8 x float> nofpclass(nan inf) splat (float 8.000000e+00), <8 x float> nofpclass(nan inf) %i.bkm)
  %i.bko = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bke, <8 x float> nofpclass(nan inf) splat (float 8.000000e+00), <8 x float> nofpclass(nan inf) %i.bkc)
  %i.bkp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkg, <8 x float> nofpclass(nan inf) splat (float 4.000000e+00), <8 x float> nofpclass(nan inf) %i.bko)
  %i.bkq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkd, <8 x float> nofpclass(nan inf) splat (float 1.600000e+01), <8 x float> nofpclass(nan inf) %i.bkb)
  %i.bkr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkf, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.bkq)
  %i.bks = fadd fast <8 x float> %i.bka, %i.bkc
  %i.bkt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bke, <8 x float> nofpclass(nan inf) splat (float 3.200000e+01), <8 x float> nofpclass(nan inf) %i.bkg)
  %i.bku = fadd fast <8 x float> %i.bks, %i.bkt
  store <8 x float> %i.bkj, ptr %i.b, align 32, !tbaa !20
  store <8 x float> %i.bkl, ptr %i.bgy, align 32, !tbaa !20
  store <8 x float> %i.bkn, ptr %i.bgz, align 32, !tbaa !20
  store <8 x float> %i.bkp, ptr %i.bha, align 32, !tbaa !20
  store <8 x float> %i.bkr, ptr %i.bhb, align 32, !tbaa !20
  store <8 x float> %i.bku, ptr %i.bhc, align 32, !tbaa !20
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bhd ; 2 uses
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %i.bhd ; 2 uses
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.bhd ; 2 uses
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %i.bhd ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %i.bhd ; 2 uses
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bjq, i64 %i.bhd ; 2 uses
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.bhd ; 2 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.bhd ; 2 uses
  %i.bld = load <8 x float>, ptr %i.bkv, align 32, !tbaa !20
  %i.ble = load <8 x float>, ptr %i.bkw, align 32, !tbaa !20 ; 2 uses
  %i.blf = load <8 x float>, ptr %i.bkx, align 32, !tbaa !20 ; 2 uses
  %i.blg = load <8 x float>, ptr %i.bky, align 32, !tbaa !20 ; 2 uses
  %i.blh = load <8 x float>, ptr %i.bkz, align 32, !tbaa !20 ; 2 uses
  %i.bli = load <8 x float>, ptr %i.bla, align 32, !tbaa !20 ; 2 uses
  %i.blj = load <8 x float>, ptr %i.blb, align 32, !tbaa !20 ; 2 uses
  %i.blk = load <8 x float>, ptr %i.blc, align 32, !tbaa !20
  %i.bll = fadd fast <8 x float> %i.blf, %i.ble   ; 3 uses
  %i.blm = fsub fast <8 x float> %i.ble, %i.blf   ; 3 uses
  %i.bln = fadd fast <8 x float> %i.blh, %i.blg   ; 3 uses
  %i.blo = fsub fast <8 x float> %i.blg, %i.blh   ; 3 uses
  %i.blp = fadd fast <8 x float> %i.blj, %i.bli   ; 3 uses
  %i.blq = fsub fast <8 x float> %i.bli, %i.blj   ; 3 uses
  %i.blr = fadd fast <8 x float> %i.bll, %i.bld
  %i.bls = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blp, <8 x float> nofpclass(nan inf) splat (float 3.200000e+01), <8 x float> nofpclass(nan inf) %i.bln)
  %i.blt = fadd fast <8 x float> %i.blr, %i.bls
  %i.blu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.blm)
  %i.blv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blq, <8 x float> nofpclass(nan inf) splat (float 1.600000e+01), <8 x float> nofpclass(nan inf) %i.blu)
  %i.blw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bln, <8 x float> nofpclass(nan inf) splat (float 4.000000e+00), <8 x float> nofpclass(nan inf) %i.bll)
  %i.blx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blp, <8 x float> nofpclass(nan inf) splat (float 8.000000e+00), <8 x float> nofpclass(nan inf) %i.blw)
  %i.bly = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float 8.000000e+00), <8 x float> nofpclass(nan inf) %i.blm)
  %i.blz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blq, <8 x float> nofpclass(nan inf) splat (float 4.000000e+00), <8 x float> nofpclass(nan inf) %i.bly)
  %i.bma = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bln, <8 x float> nofpclass(nan inf) splat (float 1.600000e+01), <8 x float> nofpclass(nan inf) %i.bll)
  %i.bmb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blp, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00), <8 x float> nofpclass(nan inf) %i.bma)
  %i.bmc = fadd fast <8 x float> %i.blk, %i.blm
  %i.bmd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float 3.200000e+01), <8 x float> nofpclass(nan inf) %i.blq)
  %i.bme = fadd fast <8 x float> %i.bmc, %i.bmd
  store <8 x float> %i.blt, ptr %i.bhk, align 32, !tbaa !20
  store <8 x float> %i.blv, ptr %i.bhl, align 32, !tbaa !20
  store <8 x float> %i.blx, ptr %i.bhm, align 32, !tbaa !20
  store <8 x float> %i.blz, ptr %i.bhn, align 32, !tbaa !20
  store <8 x float> %i.bmb, ptr %i.bho, align 32, !tbaa !20
  store <8 x float> %i.bme, ptr %i.bhp, align 32, !tbaa !20
end_hunk_19
begin_hunk_20_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.dcq = extractelement <16 x i16> %i.dcj, i64 7
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.czw, i64 8
  store i16 %i.dcq, ptr %i.dcr, align 2, !tbaa !76
  %i.dcs = extractelement <16 x i16> %i.dcj, i64 9
  %i.dct = getelementptr inbounds nuw i8, ptr %i.czx, i64 8
  store i16 %i.dcs, ptr %i.dct, align 2, !tbaa !76
  %i.dcu = extractelement <16 x i16> %i.dcj, i64 11
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.czy, i64 8
  store i16 %i.dcu, ptr %i.dcv, align 2, !tbaa !76
  %i.dcw = extractelement <16 x i16> %i.dcj, i64 13
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.czz, i64 8
  store i16 %i.dcw, ptr %i.dcx, align 2, !tbaa !76
  %i.dcy = extractelement <16 x i16> %i.dcj, i64 15
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.daa, i64 8
  store i16 %i.dcy, ptr %i.dcz, align 2, !tbaa !76
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.bvr, label %bb.bk, label %bb.cf

bb.bk:                                            ; preds = %bb.bj
  %i.dda = bitcast <8 x float> %.0.i1722.us to <16 x i16> ; 8 uses
  %i.ddb = extractelement <16 x i16> %i.dda, i64 1
  %i.ddc = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 10
  store i16 %i.ddb, ptr %i.ddc, align 2, !tbaa !76
  %i.ddd = extractelement <16 x i16> %i.dda, i64 3
  %i.dde = getelementptr inbounds nuw i8, ptr %i.czu, i64 10
  store i16 %i.ddd, ptr %i.dde, align 2, !tbaa !76
  %i.ddf = extractelement <16 x i16> %i.dda, i64 5
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.czv, i64 10
  store i16 %i.ddf, ptr %i.ddg, align 2, !tbaa !76
  %i.ddh = extractelement <16 x i16> %i.dda, i64 7
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.czw, i64 10
  store i16 %i.ddh, ptr %i.ddi, align 2, !tbaa !76
  %i.ddj = extractelement <16 x i16> %i.dda, i64 9
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.czx, i64 10
  store i16 %i.ddj, ptr %i.ddk, align 2, !tbaa !76
  %i.ddl = extractelement <16 x i16> %i.dda, i64 11
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.czy, i64 10
  store i16 %i.ddl, ptr %i.ddm, align 2, !tbaa !76
  %i.ddn = extractelement <16 x i16> %i.dda, i64 13
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.czz, i64 10
  store i16 %i.ddn, ptr %i.ddo, align 2, !tbaa !76
  %i.ddp = extractelement <16 x i16> %i.dda, i64 15
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.daa, i64 10
  store i16 %i.ddp, ptr %i.ddq, align 2, !tbaa !76
  br label %bb.cf

bb.bl:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.ddr = getelementptr inbounds nuw [2 x i8], ptr %.016253849.us, i64 %i.o ; 6 uses
  %i.dds = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i173121722191222722742336.us) ; 2 uses
  %i.ddt = bitcast <8 x bfloat> %i.dds to <2 x i64>
  %i.ddu = extractelement <2 x i64> %i.ddt, i64 0
  store i64 %i.ddu, ptr %.016253849.us, align 1, !tbaa !20
  %i.ddv = bitcast <8 x bfloat> %i.dds to <2 x i64>
  %i.ddw = extractelement <2 x i64> %i.ddv, i64 1
  store i64 %i.ddw, ptr %i.ddr, align 1, !tbaa !20
  br i1 %i.bvj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ddx = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 8
  %i.ddy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i17292193222522762334.us) ; 2 uses
  %i.ddz = bitcast <8 x bfloat> %i.ddy to <2 x i64>
  %i.dea = extractelement <2 x i64> %i.ddz, i64 0
  store i64 %i.dea, ptr %i.ddx, align 1, !tbaa !20
  %i.deb = getelementptr inbounds nuw i8, ptr %i.ddr, i64 8
  %i.dec = bitcast <8 x bfloat> %i.ddy to <2 x i64>
  %i.ded = extractelement <2 x i64> %i.dec, i64 1
  store i64 %i.ded, ptr %i.deb, align 1, !tbaa !20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.bvl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.dee = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 16
  %i.def = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1727222922722338.us) ; 2 uses
  %i.deg = bitcast <8 x bfloat> %i.def to <2 x i64>
  %i.deh = extractelement <2 x i64> %i.deg, i64 0
  store i64 %i.deh, ptr %i.dee, align 1, !tbaa !20
  %i.dei = getelementptr inbounds nuw i8, ptr %i.ddr, i64 16
  %i.dej = bitcast <8 x bfloat> %i.def to <2 x i64>
  %i.dek = extractelement <2 x i64> %i.dej, i64 1
  store i64 %i.dek, ptr %i.dei, align 1, !tbaa !20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.bvn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.del = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 24
  %i.dem = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i172522782332.us) ; 2 uses
  %i.den = bitcast <8 x bfloat> %i.dem to <2 x i64>
  %i.deo = extractelement <2 x i64> %i.den, i64 0
  store i64 %i.deo, ptr %i.del, align 1, !tbaa !20
  %i.dep = getelementptr inbounds nuw i8, ptr %i.ddr, i64 24
  %i.deq = bitcast <8 x bfloat> %i.dem to <2 x i64>
  %i.der = extractelement <2 x i64> %i.deq, i64 1
  store i64 %i.der, ptr %i.dep, align 1, !tbaa !20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.bvp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.des = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 32
  %i.det = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i17232340.us) ; 2 uses
  %i.deu = bitcast <8 x bfloat> %i.det to <2 x i64>
  %i.dev = extractelement <2 x i64> %i.deu, i64 0
  store i64 %i.dev, ptr %i.des, align 1, !tbaa !20
  %i.dew = getelementptr inbounds nuw i8, ptr %i.ddr, i64 32
  %i.dex = bitcast <8 x bfloat> %i.det to <2 x i64>
  %i.dey = extractelement <2 x i64> %i.dex, i64 1
  store i64 %i.dey, ptr %i.dew, align 1, !tbaa !20
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.bvr, label %bb.bu, label %bb.cf

bb.bu:                                            ; preds = %bb.bt
  %i.dez = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 40
  %i.dfa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1722.us) ; 2 uses
  %i.dfb = bitcast <8 x bfloat> %i.dfa to <2 x i64>
  %i.dfc = extractelement <2 x i64> %i.dfb, i64 0
  store i64 %i.dfc, ptr %i.dez, align 1, !tbaa !20
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.ddr, i64 40
  %i.dfe = bitcast <8 x bfloat> %i.dfa to <2 x i64>
  %i.dff = extractelement <2 x i64> %i.dfe, i64 1
  store i64 %i.dff, ptr %i.dfd, align 1, !tbaa !20
  br label %bb.cf

bb.bv:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.dfg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i173121722191222722742336.us)
  store <8 x bfloat> %i.dfg, ptr %.016253849.us, align 1, !tbaa !20
  br i1 %i.bvj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.dfh = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 16
  %i.dfi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i17292193222522762334.us)
  store <8 x bfloat> %i.dfi, ptr %i.dfh, align 1, !tbaa !20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.bvl, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.dfj = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 32
  %i.dfk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1727222922722338.us)
  store <8 x bfloat> %i.dfk, ptr %i.dfj, align 1, !tbaa !20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.bvn, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.dfl = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 48
  %i.dfm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i172522782332.us)
  store <8 x bfloat> %i.dfm, ptr %i.dfl, align 1, !tbaa !20
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br i1 %i.bvp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.dfn = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 64
  %i.dfo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i17232340.us)
  store <8 x bfloat> %i.dfo, ptr %i.dfn, align 1, !tbaa !20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.bvr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.dfp = getelementptr inbounds nuw i8, ptr %.016253849.us, i64 80
  %i.dfq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1722.us)
  store <8 x bfloat> %i.dfq, ptr %i.dfp, align 1, !tbaa !20
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.bu, %bb.bt, %bb.bk, %bb.bj, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.us
  %i.dfr = getelementptr inbounds [2 x i8], ptr %.016253849.us, i64 %i.bhg
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.az
  %.11626.us = phi ptr [ %.016253849.us, %bb.az ], [ %i.dfr, %bb.cf ]
  %indvars.iv.next3956 = add nuw nsw i64 %indvars.iv3955, 1 ; 2 uses
  %exitcond3958.not = icmp eq i64 %indvars.iv.next3956, 6
  br i1 %exitcond3958.not, label %bb.ch, label %bb.az, !llvm.loop !935

bb.ch:                                            ; preds = %bb.cg
  %indvars.iv.next3960 = add nuw nsw i64 %indvars.iv3959, 1 ; 2 uses
  %exitcond3963.not = icmp eq i64 %indvars.iv.next3960, %wide.trip.count3962
  br i1 %exitcond3963.not, label %._crit_edge.us3858, label %_ZN4ncnn3MatD2Ev.exit1685.us, !llvm.loop !936

._crit_edge.us3858:                               ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next3965 = add nuw nsw i64 %indvars.iv3964, 8 ; 3 uses
  %i.dfs = icmp slt i64 %indvars.iv.next3965, %invariant.op4062.a
  br i1 %i.dfs, label %.lr.ph3854.split.us, label %.preheader3819.loopexit, !llvm.loop !937

.lr.ph3854.split:                                 ; preds = %.lr.ph3854
  %i.dft = add i32 %3, -8
  %i.dfu = sub i32 %i.dft, %.01586.lcssa
  %i.dfv = and i32 %i.dfu, -8
  %i.dfw = add i32 %.01586.lcssa, %i.dfv
  %i.dfx = add i32 %i.dfw, 8
  br label %.preheader3819

.preheader3819.loopexit:                          ; preds = %._crit_edge.us3858
  %i.dfy = trunc nsw i64 %indvars.iv.next3965 to i32
  br label %.preheader3819

.preheader3819:                                   ; preds = %.lr.ph3854.split, %.preheader3819.loopexit, %.preheader3820
  %.11587.lcssa = phi i32 [ %.01586.lcssa, %.preheader3820 ], [ %i.dfx, %.lr.ph3854.split ], [ %i.dfy, %.preheader3819.loopexit ] ; 5 uses
  %i.dfz = or disjoint i32 %.11587.lcssa, 3
  %i.dga = icmp slt i32 %i.dfz, %3
  br i1 %i.dga, label %.lr.ph3877, label %.preheader3818

.lr.ph3877:                                       ; preds = %.preheader3819
  %.not1650 = icmp eq ptr %.0.val, null
  %i.dgb = sext i32 %2 to i64
  %i.dgc = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.dgb
  %i.dgd = icmp sgt i32 %5, 0
  %i.dge = shl nsw i32 %5, 2
  %i.dgf = sext i32 %i.dge to i64
  %i.dgg = shl nsw i32 %5, 3
  %i.dgh = sext i32 %i.dgg to i64
  %i.dgi = mul nsw i32 %5, 12
  %i.dgj = sext i32 %i.dgi to i64
  %i.dgk = shl nsw i32 %5, 4
  %i.dgl = sext i32 %i.dgk to i64
  %i.dgm = mul nsw i32 %5, 20
  %i.dgn = sext i32 %i.dgm to i64
  %i.dgo = mul nsw i32 %5, 24
  %i.dgp = sext i32 %i.dgo to i64
  %i.dgq = mul nsw i32 %5, 28
  %i.dgr = sext i32 %i.dgq to i64
  %i.dgs = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.dgv = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.dgx = shl nsw i32 %5, 5
  %i.dgy = sext i32 %i.dgx to i64                 ; 56 uses
  %i.dgz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx = shl i64 %i.o, 2
  %.idx1652 = mul i64 %i.o, 6
  %i.dha = mul nsw i32 %i.k, %i.g
  %i.dhb = sext i32 %i.dha to i64
  br i1 %i.dgd, label %.lr.ph3877.split.us.preheader, label %.lr.ph3877.split

.lr.ph3877.split.us.preheader:                    ; preds = %.lr.ph3877
  %i.dhc = sext i32 %i.i to i64
  %i.dhd = sext i32 %.11587.lcssa to i64
  %i.dhe = sext i32 %3 to i64
  %wide.trip.count3980 = zext nneg i32 %5 to i64
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.dho = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.dht = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.dia = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.dib = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.dic = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.did = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.die = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.dif = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.dig = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.dih = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.dii = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.dij = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dik = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.dil = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.dim = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.din = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.dio = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  %i.dip = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.diq = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.dir = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.dis = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.dit = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %i.diu = getelementptr inbounds nuw i8, ptr %i.c, i64 752
  %invariant.op4064.a = add nsw i64 %i.dhe, -3
  br label %.lr.ph3877.split.us

.lr.ph3877.split.us:                              ; preds = %.lr.ph3877.split.us.preheader, %._crit_edge.us3881
  %indvars.iv3982.a = phi i64 [ %i.dhd, %.lr.ph3877.split.us.preheader ], [ %indvars.iv.next3983.a, %._crit_edge.us3881 ] ; 4 uses
  br i1 %.not1650, label %.lr.ph.us3880, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph3877.split.us
  %i.div = getelementptr inbounds nuw [4 x i8], ptr %i.dgc, i64 %indvars.iv3982.a
  %i.diw = load <4 x float>, ptr %i.div, align 1, !tbaa !20
  br label %.lr.ph.us3880

.lr.ph.us3880:                                    ; preds = %bb.ci, %.lr.ph3877.split.us
  %i.dix = phi fast <4 x float> [ %i.diw, %bb.ci ], [ zeroinitializer, %.lr.ph3877.split.us ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.diy = trunc nsw i64 %indvars.iv3982.a to i32
  %factor.op.mul.reass.us3879 = mul i32 %factor.op.mul3833, %i.diy
  %i.diz = sext i32 %factor.op.mul.reass.us3879 to i64
  %i.dja = trunc i64 %indvars.iv3982.a to i32
  %i.djb = add i32 %2, %i.dja
  %i.djc = sdiv i32 %i.djb, %i.k
  %i.djd = sext i32 %i.djc to i64
  br label %_ZN4ncnn3MatD2Ev.exit1684.us

_ZN4ncnn3MatD2Ev.exit1684.us:                     ; preds = %.lr.ph.us3880, %bb.dh
  %indvars.iv3977 = phi i64 [ 0, %.lr.ph.us3880 ], [ %indvars.iv.next3978, %bb.dh ] ; 3 uses
  %i.dje = load ptr, ptr %0, align 8, !tbaa !9
  %i.djf = getelementptr inbounds [4 x i8], ptr %i.dje, i64 %i.diz
  %.idx4059 = shl nuw nsw i64 %indvars.iv3977, 4
  %i.djg = getelementptr inbounds nuw i8, ptr %i.djf, i64 %.idx4059 ; 9 uses
  %i.djh = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgf ; 2 uses
  %i.dji = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgh ; 2 uses
  %i.djj = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgj ; 2 uses
  %i.djk = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgl ; 2 uses
  %i.djl = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgn ; 2 uses
  %i.djm = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgp ; 2 uses
  %i.djn = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgr ; 2 uses
  %i.djo = load <4 x float>, ptr %i.djg, align 16, !tbaa !20
  %i.djp = load <4 x float>, ptr %i.djh, align 16, !tbaa !20 ; 2 uses
  %i.djq = load <4 x float>, ptr %i.dji, align 16, !tbaa !20 ; 2 uses
  %i.djr = load <4 x float>, ptr %i.djj, align 16, !tbaa !20 ; 2 uses
  %i.djs = load <4 x float>, ptr %i.djk, align 16, !tbaa !20 ; 2 uses
  %i.djt = load <4 x float>, ptr %i.djl, align 16, !tbaa !20 ; 2 uses
  %i.dju = load <4 x float>, ptr %i.djm, align 16, !tbaa !20 ; 2 uses
  %i.djv = load <4 x float>, ptr %i.djn, align 16, !tbaa !20
  %i.djw = fadd fast <4 x float> %i.djq, %i.djp   ; 3 uses
  %i.djx = fsub fast <4 x float> %i.djp, %i.djq   ; 3 uses
  %i.djy = fadd fast <4 x float> %i.djs, %i.djr   ; 3 uses
  %i.djz = fsub fast <4 x float> %i.djr, %i.djs   ; 3 uses
  %i.dka = fadd fast <4 x float> %i.dju, %i.djt   ; 3 uses
  %i.dkb = fsub fast <4 x float> %i.djt, %i.dju   ; 3 uses
  %i.dkc = fadd fast <4 x float> %i.djw, %i.djo
  %i.dkd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dka, <4 x float> nofpclass(nan inf) splat (float 3.200000e+01), <4 x float> nofpclass(nan inf) %i.djy)
  %i.dke = fadd fast <4 x float> %i.dkc, %i.dkd
  %i.dkf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djz, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.djx)
  %i.dkg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkb, <4 x float> nofpclass(nan inf) splat (float 1.600000e+01), <4 x float> nofpclass(nan inf) %i.dkf)
  %i.dkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djy, <4 x float> nofpclass(nan inf) splat (float 4.000000e+00), <4 x float> nofpclass(nan inf) %i.djw)
  %i.dki = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dka, <4 x float> nofpclass(nan inf) splat (float 8.000000e+00), <4 x float> nofpclass(nan inf) %i.dkh)
  %i.dkj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djz, <4 x float> nofpclass(nan inf) splat (float 8.000000e+00), <4 x float> nofpclass(nan inf) %i.djx)
  %i.dkk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkb, <4 x float> nofpclass(nan inf) splat (float 4.000000e+00), <4 x float> nofpclass(nan inf) %i.dkj)
  %i.dkl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djy, <4 x float> nofpclass(nan inf) splat (float 1.600000e+01), <4 x float> nofpclass(nan inf) %i.djw)
  %i.dkm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dka, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.dkl)
  %i.dkn = fadd fast <4 x float> %i.djv, %i.djx
  %i.dko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djz, <4 x float> nofpclass(nan inf) splat (float 3.200000e+01), <4 x float> nofpclass(nan inf) %i.dkb)
  %i.dkp = fadd fast <4 x float> %i.dkn, %i.dko
  store <4 x float> %i.dke, ptr %i.c, align 16, !tbaa !20
  store <4 x float> %i.dkg, ptr %i.dgs, align 16, !tbaa !20
  store <4 x float> %i.dki, ptr %i.dgt, align 16, !tbaa !20
  store <4 x float> %i.dkk, ptr %i.dgu, align 16, !tbaa !20
  store <4 x float> %i.dkm, ptr %i.dgv, align 16, !tbaa !20
  store <4 x float> %i.dkp, ptr %i.dgw, align 16, !tbaa !20
  %i.dkq = getelementptr inbounds nuw [4 x i8], ptr %i.djg, i64 %i.dgy ; 2 uses
  %i.dkr = getelementptr inbounds nuw [4 x i8], ptr %i.djh, i64 %i.dgy ; 2 uses
  %i.dks = getelementptr inbounds nuw [4 x i8], ptr %i.dji, i64 %i.dgy ; 2 uses
  %i.dkt = getelementptr inbounds nuw [4 x i8], ptr %i.djj, i64 %i.dgy ; 2 uses
  %i.dku = getelementptr inbounds nuw [4 x i8], ptr %i.djk, i64 %i.dgy ; 2 uses
  %i.dkv = getelementptr inbounds nuw [4 x i8], ptr %i.djl, i64 %i.dgy ; 2 uses
  %i.dkw = getelementptr inbounds nuw [4 x i8], ptr %i.djm, i64 %i.dgy ; 2 uses
  %i.dkx = getelementptr inbounds nuw [4 x i8], ptr %i.djn, i64 %i.dgy ; 2 uses
  %i.dky = load <4 x float>, ptr %i.dkq, align 16, !tbaa !20
  %i.dkz = load <4 x float>, ptr %i.dkr, align 16, !tbaa !20 ; 2 uses
  %i.dla = load <4 x float>, ptr %i.dks, align 16, !tbaa !20 ; 2 uses
  %i.dlb = load <4 x float>, ptr %i.dkt, align 16, !tbaa !20 ; 2 uses
  %i.dlc = load <4 x float>, ptr %i.dku, align 16, !tbaa !20 ; 2 uses
  %i.dld = load <4 x float>, ptr %i.dkv, align 16, !tbaa !20 ; 2 uses
  %i.dle = load <4 x float>, ptr %i.dkw, align 16, !tbaa !20 ; 2 uses
  %i.dlf = load <4 x float>, ptr %i.dkx, align 16, !tbaa !20
  %i.dlg = fadd fast <4 x float> %i.dla, %i.dkz   ; 3 uses
  %i.dlh = fsub fast <4 x float> %i.dkz, %i.dla   ; 3 uses
  %i.dli = fadd fast <4 x float> %i.dlc, %i.dlb   ; 3 uses
  %i.dlj = fsub fast <4 x float> %i.dlb, %i.dlc   ; 3 uses
  %i.dlk = fadd fast <4 x float> %i.dle, %i.dld   ; 3 uses
  %i.dll = fsub fast <4 x float> %i.dld, %i.dle   ; 3 uses
  %i.dlm = fadd fast <4 x float> %i.dlg, %i.dky
  %i.dln = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlk, <4 x float> nofpclass(nan inf) splat (float 3.200000e+01), <4 x float> nofpclass(nan inf) %i.dli)
  %i.dlo = fadd fast <4 x float> %i.dlm, %i.dln
  %i.dlp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlj, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.dlh)
  %i.dlq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dll, <4 x float> nofpclass(nan inf) splat (float 1.600000e+01), <4 x float> nofpclass(nan inf) %i.dlp)
  %i.dlr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dli, <4 x float> nofpclass(nan inf) splat (float 4.000000e+00), <4 x float> nofpclass(nan inf) %i.dlg)
  %i.dls = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlk, <4 x float> nofpclass(nan inf) splat (float 8.000000e+00), <4 x float> nofpclass(nan inf) %i.dlr)
  %i.dlt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlj, <4 x float> nofpclass(nan inf) splat (float 8.000000e+00), <4 x float> nofpclass(nan inf) %i.dlh)
  %i.dlu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dll, <4 x float> nofpclass(nan inf) splat (float 4.000000e+00), <4 x float> nofpclass(nan inf) %i.dlt)
  %i.dlv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dli, <4 x float> nofpclass(nan inf) splat (float 1.600000e+01), <4 x float> nofpclass(nan inf) %i.dlg)
  %i.dlw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlk, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.dlv)
  %i.dlx = fadd fast <4 x float> %i.dlf, %i.dlh
  %i.dly = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlj, <4 x float> nofpclass(nan inf) splat (float 3.200000e+01), <4 x float> nofpclass(nan inf) %i.dll)
  %i.dlz = fadd fast <4 x float> %i.dlx, %i.dly
  store <4 x float> %i.dlo, ptr %i.dhf, align 16, !tbaa !20
  store <4 x float> %i.dlq, ptr %i.dhg, align 16, !tbaa !20
  store <4 x float> %i.dls, ptr %i.dhh, align 16, !tbaa !20
  store <4 x float> %i.dlu, ptr %i.dhi, align 16, !tbaa !20
  store <4 x float> %i.dlw, ptr %i.dhj, align 16, !tbaa !20
  store <4 x float> %i.dlz, ptr %i.dhk, align 16, !tbaa !20
  %i.dma = getelementptr inbounds nuw [4 x i8], ptr %i.dkq, i64 %i.dgy ; 2 uses
  %i.dmb = getelementptr inbounds nuw [4 x i8], ptr %i.dkr, i64 %i.dgy ; 2 uses
  %i.dmc = getelementptr inbounds nuw [4 x i8], ptr %i.dks, i64 %i.dgy ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
bb.cl:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.fbf = getelementptr inbounds nuw [2 x i8], ptr %.016073872.us, i64 %i.o ; 6 uses
  %i.fbg = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 %.idx ; 6 uses
  %i.fbh = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 %.idx1652 ; 6 uses
  %i.fbi = bitcast <4 x float> %.0.i174224002419245425002561.us to <8 x i16> ; 4 uses
  %i.fbj = extractelement <8 x i16> %i.fbi, i64 1
  store i16 %i.fbj, ptr %.016073872.us, align 2, !tbaa !76
  %i.fbk = extractelement <8 x i16> %i.fbi, i64 3
  store i16 %i.fbk, ptr %i.fbf, align 2, !tbaa !76
  %i.fbl = extractelement <8 x i16> %i.fbi, i64 5
  store i16 %i.fbl, ptr %i.fbg, align 2, !tbaa !76
  %i.fbm = extractelement <8 x i16> %i.fbi, i64 7
  store i16 %i.fbm, ptr %i.fbh, align 2, !tbaa !76
  br i1 %i.dve, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.fbn = bitcast <4 x float> %.0.i17402421245225022559.us to <8 x i16> ; 4 uses
  %i.fbo = extractelement <8 x i16> %i.fbn, i64 1
  %i.fbp = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 2
  store i16 %i.fbo, ptr %i.fbp, align 2, !tbaa !76
  %i.fbq = extractelement <8 x i16> %i.fbn, i64 3
  %i.fbr = getelementptr inbounds nuw i8, ptr %i.fbf, i64 2
  store i16 %i.fbq, ptr %i.fbr, align 2, !tbaa !76
  %i.fbs = extractelement <8 x i16> %i.fbn, i64 5
  %i.fbt = getelementptr inbounds nuw i8, ptr %i.fbg, i64 2
  store i16 %i.fbs, ptr %i.fbt, align 2, !tbaa !76
  %i.fbu = extractelement <8 x i16> %i.fbn, i64 7
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.fbh, i64 2
  store i16 %i.fbu, ptr %i.fbv, align 2, !tbaa !76
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  br i1 %i.dvg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.fbw = bitcast <4 x float> %.0.i1738245624982563.us to <8 x i16> ; 4 uses
  %i.fbx = extractelement <8 x i16> %i.fbw, i64 1
  %i.fby = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 4
  store i16 %i.fbx, ptr %i.fby, align 2, !tbaa !76
  %i.fbz = extractelement <8 x i16> %i.fbw, i64 3
  %i.fca = getelementptr inbounds nuw i8, ptr %i.fbf, i64 4
  store i16 %i.fbz, ptr %i.fca, align 2, !tbaa !76
  %i.fcb = extractelement <8 x i16> %i.fbw, i64 5
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.fbg, i64 4
  store i16 %i.fcb, ptr %i.fcc, align 2, !tbaa !76
  %i.fcd = extractelement <8 x i16> %i.fbw, i64 7
  %i.fce = getelementptr inbounds nuw i8, ptr %i.fbh, i64 4
  store i16 %i.fcd, ptr %i.fce, align 2, !tbaa !76
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.dvi, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.fcf = bitcast <4 x float> %.0.i173625042557.us to <8 x i16> ; 4 uses
  %i.fcg = extractelement <8 x i16> %i.fcf, i64 1
  %i.fch = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 6
  store i16 %i.fcg, ptr %i.fch, align 2, !tbaa !76
  %i.fci = extractelement <8 x i16> %i.fcf, i64 3
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fbf, i64 6
  store i16 %i.fci, ptr %i.fcj, align 2, !tbaa !76
  %i.fck = extractelement <8 x i16> %i.fcf, i64 5
  %i.fcl = getelementptr inbounds nuw i8, ptr %i.fbg, i64 6
  store i16 %i.fck, ptr %i.fcl, align 2, !tbaa !76
  %i.fcm = extractelement <8 x i16> %i.fcf, i64 7
  %i.fcn = getelementptr inbounds nuw i8, ptr %i.fbh, i64 6
  store i16 %i.fcm, ptr %i.fcn, align 2, !tbaa !76
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.dvk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.fco = bitcast <4 x float> %.0.i17342565.us to <8 x i16> ; 4 uses
  %i.fcp = extractelement <8 x i16> %i.fco, i64 1
  %i.fcq = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 8
  store i16 %i.fcp, ptr %i.fcq, align 2, !tbaa !76
  %i.fcr = extractelement <8 x i16> %i.fco, i64 3
  %i.fcs = getelementptr inbounds nuw i8, ptr %i.fbf, i64 8
  store i16 %i.fcr, ptr %i.fcs, align 2, !tbaa !76
  %i.fct = extractelement <8 x i16> %i.fco, i64 5
  %i.fcu = getelementptr inbounds nuw i8, ptr %i.fbg, i64 8
  store i16 %i.fct, ptr %i.fcu, align 2, !tbaa !76
  %i.fcv = extractelement <8 x i16> %i.fco, i64 7
  %i.fcw = getelementptr inbounds nuw i8, ptr %i.fbh, i64 8
  store i16 %i.fcv, ptr %i.fcw, align 2, !tbaa !76
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.dvm, label %bb.cu, label %bb.df

bb.cu:                                            ; preds = %bb.ct
  %i.fcx = bitcast <4 x float> %.0.i1733.us to <8 x i16> ; 4 uses
  %i.fcy = extractelement <8 x i16> %i.fcx, i64 1
  %i.fcz = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 10
  store i16 %i.fcy, ptr %i.fcz, align 2, !tbaa !76
  %i.fda = extractelement <8 x i16> %i.fcx, i64 3
  %i.fdb = getelementptr inbounds nuw i8, ptr %i.fbf, i64 10
  store i16 %i.fda, ptr %i.fdb, align 2, !tbaa !76
  %i.fdc = extractelement <8 x i16> %i.fcx, i64 5
  %i.fdd = getelementptr inbounds nuw i8, ptr %i.fbg, i64 10
  store i16 %i.fdc, ptr %i.fdd, align 2, !tbaa !76
  %i.fde = extractelement <8 x i16> %i.fcx, i64 7
  %i.fdf = getelementptr inbounds nuw i8, ptr %i.fbh, i64 10
  store i16 %i.fde, ptr %i.fdf, align 2, !tbaa !76
  br label %bb.df

bb.cv:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.fdg = shufflevector <4 x float> %.0.i174224002419245425002561.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fdh = shufflevector <8 x float> %i.fdg, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fdi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fdh)
  %i.fdj = bitcast <8 x bfloat> %i.fdi to <2 x i64>
  %i.fdk = extractelement <2 x i64> %i.fdj, i64 0
  store i64 %i.fdk, ptr %.016073872.us, align 1, !tbaa !20
  br i1 %i.dve, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.fdl = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 8
  %i.fdm = shufflevector <4 x float> %.0.i17402421245225022559.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fdn = shufflevector <8 x float> %i.fdm, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fdo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fdn)
  %i.fdp = bitcast <8 x bfloat> %i.fdo to <2 x i64>
  %i.fdq = extractelement <2 x i64> %i.fdp, i64 0
  store i64 %i.fdq, ptr %i.fdl, align 1, !tbaa !20
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %i.dvg, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.fdr = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 16
  %i.fds = shufflevector <4 x float> %.0.i1738245624982563.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fdt = shufflevector <8 x float> %i.fds, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fdu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fdt)
  %i.fdv = bitcast <8 x bfloat> %i.fdu to <2 x i64>
  %i.fdw = extractelement <2 x i64> %i.fdv, i64 0
  store i64 %i.fdw, ptr %i.fdr, align 1, !tbaa !20
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %i.dvi, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.fdx = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 24
  %i.fdy = shufflevector <4 x float> %.0.i173625042557.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fdz = shufflevector <8 x float> %i.fdy, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fea = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fdz)
  %i.feb = bitcast <8 x bfloat> %i.fea to <2 x i64>
  %i.fec = extractelement <2 x i64> %i.feb, i64 0
  store i64 %i.fec, ptr %i.fdx, align 1, !tbaa !20
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  br i1 %i.dvk, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.fed = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 32
  %i.fee = shufflevector <4 x float> %.0.i17342565.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fef = shufflevector <8 x float> %i.fee, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.feg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fef)
  %i.feh = bitcast <8 x bfloat> %i.feg to <2 x i64>
  %i.fei = extractelement <2 x i64> %i.feh, i64 0
  store i64 %i.fei, ptr %i.fed, align 1, !tbaa !20
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  br i1 %i.dvm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.fej = getelementptr inbounds nuw i8, ptr %.016073872.us, i64 40
  %i.fek = shufflevector <4 x float> %.0.i1733.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fel = shufflevector <8 x float> %i.fek, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fem = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fel)
  %i.fen = bitcast <8 x bfloat> %i.fem to <2 x i64>
  %i.feo = extractelement <2 x i64> %i.fen, i64 0
  store i64 %i.feo, ptr %i.fej, align 1, !tbaa !20
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.cu, %bb.ct, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.fep = getelementptr inbounds [2 x i8], ptr %.016073872.us, i64 %i.dhb
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.cj
  %.11608.us = phi ptr [ %.016073872.us, %bb.cj ], [ %i.fep, %bb.df ]
  %indvars.iv.next3974 = add nuw nsw i64 %indvars.iv3973, 1 ; 2 uses
  %exitcond3976.not = icmp eq i64 %indvars.iv.next3974, 6
  br i1 %exitcond3976.not, label %bb.dh, label %bb.cj, !llvm.loop !941

bb.dh:                                            ; preds = %bb.dg
  %indvars.iv.next3978 = add nuw nsw i64 %indvars.iv3977, 1 ; 2 uses
  %exitcond3981.not = icmp eq i64 %indvars.iv.next3978, %wide.trip.count3980
  br i1 %exitcond3981.not, label %._crit_edge.us3881, label %_ZN4ncnn3MatD2Ev.exit1684.us, !llvm.loop !942

._crit_edge.us3881:                               ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %indvars.iv.next3983.a = add nuw nsw i64 %indvars.iv3982.a, 4 ; 3 uses
  %i.feq = icmp slt i64 %indvars.iv.next3983.a, %invariant.op4064.a
  br i1 %i.feq, label %.lr.ph3877.split.us, label %.preheader3818.loopexit, !llvm.loop !943

.lr.ph3877.split:                                 ; preds = %.lr.ph3877
  %i.fer = add i32 %3, -4
  %i.fes = sub i32 %i.fer, %.11587.lcssa
  %i.fet = and i32 %i.fes, -4
  %i.feu = add i32 %.11587.lcssa, %i.fet
  %i.fev = add i32 %i.feu, 4
  br label %.preheader3818

.preheader3818.loopexit:                          ; preds = %._crit_edge.us3881
  %i.few = trunc nsw i64 %indvars.iv.next3983.a to i32
  br label %.preheader3818

.preheader3818:                                   ; preds = %.lr.ph3877.split, %.preheader3818.loopexit, %.preheader3819
  %.2.lcssa = phi i32 [ %.11587.lcssa, %.preheader3819 ], [ %i.fev, %.lr.ph3877.split ], [ %i.few, %.preheader3818.loopexit ] ; 3 uses
  %i.fex = or disjoint i32 %.2.lcssa, 1
  %i.fey = icmp slt i32 %i.fex, %3
  br i1 %i.fey, label %.lr.ph3902, label %.preheader

.lr.ph3902:                                       ; preds = %.preheader3818
  %.not1648 = icmp eq ptr %.0.val, null
  %i.fez = icmp sgt i32 %5, 0
  %i.ffa = shl nsw i32 %5, 1
  %i.ffb = sext i32 %i.ffa to i64
  %i.ffc = shl nsw i32 %5, 2
  %i.ffd = sext i32 %i.ffc to i64
  %i.ffe = mul nsw i32 %5, 6
  %i.fff = sext i32 %i.ffe to i64
  %i.ffg = shl nsw i32 %5, 3
  %i.ffh = sext i32 %i.ffg to i64
  %i.ffi = mul nsw i32 %5, 10
  %i.ffj = sext i32 %i.ffi to i64
  %i.ffk = mul nsw i32 %5, 12
  %i.ffl = sext i32 %i.ffk to i64
  %i.ffm = mul nsw i32 %5, 14
  %i.ffn = sext i32 %i.ffm to i64
  %i.ffo = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ffp = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ffq = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.ffr = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ffs = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.fft = shl nsw i32 %5, 4
  %i.ffu = sext i32 %i.fft to i64                 ; 8 uses
  %i.ffv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ffw = sext i32 %i.g to i64
  %i.ffx = sext i32 %i.i to i64
  %i.ffy = sext i32 %.2.lcssa to i64
  %i.ffz = sext i32 %3 to i64
  %i.fga = sext i32 %2 to i64                     ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0.val, i64 %i.fga
  %wide.trip.count3996 = zext nneg i32 %5 to i64
  %invariant.op4066 = add nsw i64 %i.ffz, -1
  %i.fgb = load ptr, ptr %0, align 8
  %i.fgc = load i32, ptr %i.f, align 4
  %i.fgd = load ptr, ptr %1, align 8
  %i.fge = load i64, ptr %i.l, align 8
  %i.fgf = load i64, ptr %i.ffv, align 8          ; 2 uses
  %factor.op.mul = mul i64 %i.fge, %i.fgf
  %i.fgg = sext i32 %i.fgc to i64
  %factor.op.mul3898 = mul i64 %i.fgf, %i.fgg
  br label %bb.di

.preheader.loopexit:                              ; preds = %._crit_edge
  %i.fgh = trunc nsw i64 %indvars.iv.next3999.a to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader3818
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader3818 ], [ %i.fgh, %.preheader.loopexit ] ; 2 uses
  %i.fgi = icmp slt i32 %.3.lcssa, %3
  br i1 %i.fgi, label %.lr.ph3924, label %._crit_edge3925

.lr.ph3924:                                       ; preds = %.preheader
  %.not = icmp eq ptr %.0.val, null
  %i.fgj = icmp sgt i32 %5, 0
  %i.fgk = sext i32 %5 to i64
  %i.fgl = shl nsw i32 %5, 1
  %i.fgm = sext i32 %i.fgl to i64
  %i.fgn = mul nsw i32 %5, 3
  %i.fgo = sext i32 %i.fgn to i64
  %i.fgp = shl nsw i32 %5, 2
  %i.fgq = sext i32 %i.fgp to i64
  %i.fgr = mul nsw i32 %5, 5
  %i.fgs = sext i32 %i.fgr to i64
  %i.fgt = mul nsw i32 %5, 6
  %i.fgu = sext i32 %i.fgt to i64
  %i.fgv = mul nsw i32 %5, 7
  %i.fgw = sext i32 %i.fgv to i64
  %i.fgx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.fgz = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.fha = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.fhb = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.fhc = shl nsw i32 %5, 3
  %i.fhd = sext i32 %i.fhc to i64                 ; 8 uses
  %i.fhe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fhf = sext i32 %i.g to i64
  %i.fhg = sext i32 %i.i to i64
  %i.fhh = sext i32 %.3.lcssa to i64
  %i.fhi = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count4017 = sext i32 %3 to i64
  %invariant.gep4068 = getelementptr [4 x i8], ptr %.0.val, i64 %i.fhi
  %wide.trip.count4012 = zext nneg i32 %5 to i64
  %i.fhj = load ptr, ptr %0, align 8
  %i.fhk = load i32, ptr %i.f, align 4
  %i.fhl = load ptr, ptr %1, align 8
  %i.fhm = load i64, ptr %i.l, align 8
  %i.fhn = load i64, ptr %i.fhe, align 8          ; 2 uses
  %factor.op.mul4070 = mul i64 %i.fhm, %i.fhn
  %i.fho = sext i32 %i.fhk to i64
  %factor.op.mul3919 = mul i64 %i.fhn, %i.fho
  br label %bb.ez

bb.di:                                            ; preds = %.lr.ph3902, %._crit_edge
  %indvars.iv3998.a = phi i64 [ %i.ffy, %.lr.ph3902 ], [ %indvars.iv.next3999.a, %._crit_edge ] ; 4 uses
  br i1 %.not1648, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv3998.a
  %i.fhp = load <2 x float>, ptr %gep, align 4, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %bb.di, %bb.dj
  %i.fhq = phi <2 x float> [ %i.fhp, %bb.dj ], [ zeroinitializer, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br i1 %i.fez, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.fhr = trunc nsw i64 %indvars.iv3998.a to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul3833, %i.fhr
  %i.fhs = sext i32 %factor.op.mul.reass to i64
  %i.fht = getelementptr inbounds [4 x i8], ptr %i.fgb, i64 %i.fhs
  %i.fhu = add nsw i64 %indvars.iv3998.a, %i.fga
  %.reass = mul i64 %factor.op.mul, %i.fhu
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fgd, i64 %.reass
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph, %bb.dm
  %indvars.iv3993 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3994, %bb.dm ] ; 3 uses
  %.idx4060 = shl nuw nsw i64 %indvars.iv3993, 3
  %i.fhw = getelementptr inbounds nuw i8, ptr %i.fht, i64 %.idx4060 ; 8 uses
  %i.fhx = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffb
  %i.fhy = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffd
  %i.fhz = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.fff
  %i.fia = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffh
  %i.fib = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffj
  %i.fic = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffl
  %i.fid = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffn
  br label %bb.dl

_ZN4ncnn3MatD2Ev.exit1683:                        ; preds = %bb.dl
  %i.fie = trunc i64 %indvars.iv3993 to i32
  %i.fif = add i32 %4, %i.fie                     ; 2 uses
  %i.fig = sdiv i32 %i.fif, %i.q
  %i.fih = srem i32 %i.fif, %i.q
  %i.fii = mul nsw i32 %i.fig, 6
  %i.fij = sext i32 %i.fii to i64                 ; 2 uses
  %.reass3899 = mul i64 %factor.op.mul3898, %i.fij
  %i.fik = getelementptr inbounds nuw i8, ptr %i.fhv, i64 %.reass3899
  %i.fil = mul nsw i32 %i.fih, 6                  ; 6 uses
  %i.fim = sext i32 %i.fil to i64
  %i.fin = getelementptr inbounds [2 x i8], ptr %i.fik, i64 %i.fim
  %i.fio = or disjoint i32 %i.fil, 1
  %i.fip = icmp slt i32 %i.fio, %i.g
  %i.fiq = add nsw i32 %i.fil, 2
  %i.fir = icmp slt i32 %i.fiq, %i.g
  %i.fis = add nsw i32 %i.fil, 3
  %i.fit = icmp slt i32 %i.fis, %i.g
  %i.fiu = add nsw i32 %i.fil, 4
  %i.fiv = icmp slt i32 %i.fiu, %i.g
  %i.fiw = add nsw i32 %i.fil, 5
  %i.fix = icmp slt i32 %i.fiw, %i.g
  %invariant.op4065 = sub nsw i64 %i.ffx, %i.fij
  %i.fiy = load ptr, ptr %7, align 8              ; 2 uses
  %i.fiz = getelementptr inbounds nuw i8, ptr %i.fiy, i64 4
  %i.fja = load ptr, ptr %7, align 8              ; 2 uses
  %i.fjb = getelementptr inbounds nuw i8, ptr %i.fja, i64 4
  %i.fjc = load ptr, ptr %7, align 8
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dk, %bb.dl
  %indvars.iv3985 = phi i64 [ 0, %bb.dk ], [ %indvars.iv.next3986, %bb.dl ] ; 7 uses
  %.015973893 = phi ptr [ %i.fid, %bb.dk ], [ %i.flc, %bb.dl ] ; 2 uses
  %.015983892 = phi ptr [ %i.fic, %bb.dk ], [ %i.flb, %bb.dl ] ; 2 uses
  %.015993891 = phi ptr [ %i.fib, %bb.dk ], [ %i.fla, %bb.dl ] ; 2 uses
  %.016003890 = phi ptr [ %i.fia, %bb.dk ], [ %i.fkz, %bb.dl ] ; 2 uses
  %.016013889 = phi ptr [ %i.fhz, %bb.dk ], [ %i.fky, %bb.dl ] ; 2 uses
  %.016023888 = phi ptr [ %i.fhy, %bb.dk ], [ %i.fkx, %bb.dl ] ; 2 uses
  %.016033887 = phi ptr [ %i.fhx, %bb.dk ], [ %i.fkw, %bb.dl ] ; 2 uses
  %.016043886 = phi ptr [ %i.fhw, %bb.dk ], [ %i.fkv, %bb.dl ] ; 2 uses
  %i.fjd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv3985
  %i.fje = load <2 x float>, ptr %.016033887, align 4, !tbaa !74 ; 2 uses
  %i.fjf = load <2 x float>, ptr %.016023888, align 4, !tbaa !74 ; 2 uses
  %i.fjg = fadd fast <2 x float> %i.fjf, %i.fje   ; 3 uses
  %i.fjh = load <2 x float>, ptr %.016013889, align 4, !tbaa !74 ; 2 uses
  %i.fji = load <2 x float>, ptr %.016003890, align 4, !tbaa !74 ; 2 uses
  %i.fjj = fadd fast <2 x float> %i.fji, %i.fjh   ; 3 uses
  %i.fjk = load <2 x float>, ptr %.015993891, align 4, !tbaa !74 ; 2 uses
  %i.fjl = load <2 x float>, ptr %.015983892, align 4, !tbaa !74 ; 2 uses
  %i.fjm = fadd fast <2 x float> %i.fjl, %i.fjk   ; 3 uses
  %i.fjn = load <2 x float>, ptr %.016043886, align 4, !tbaa !74
  %i.fjo = fmul fast <2 x float> %i.fjm, splat (float 3.200000e+01)
  %i.fjp = fadd fast <2 x float> %i.fjj, %i.fjg
  %i.fjq = fadd fast <2 x float> %i.fjp, %i.fjo
end_hunk_21
begin_hunk_22_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.4:bb.a
  %i.be = mul nsw i32 %i.bd, %.048129             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.bf = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc49 unwind label %bb.f

.noexc49:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !114, !noalias !968 ; 2 uses
  %i.bh = load i32, ptr %i.m, align 8, !tbaa !118, !noalias !968 ; 2 uses
  %i.bi = load i32, ptr %i.n, align 4, !tbaa !684, !noalias !968
  %i.bj = load ptr, ptr %4, align 8, !tbaa !9, !noalias !968
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !968
  %i.bl = sext i32 %i.bf to i64
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !968 ; 4 uses
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.q, align 8, !tbaa !115, !noalias !968
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !344, !noalias !968
  store ptr %i.bp, ptr %16, align 8, !tbaa !9
  store ptr null, ptr %i.s, align 8, !tbaa !343
  store i64 %i.bn, ptr %i.t, align 8, !tbaa !19
  store i32 %i.bq, ptr %i.u, align 8, !tbaa !115
  store ptr %i.br, ptr %i.v, align 8, !tbaa !344
  store i32 %i.bg, ptr %i.x, align 4, !tbaa !114
  store i32 %i.bh, ptr %i.y, align 8, !tbaa !118
  store i32 1, ptr %i.z, align 4, !tbaa !684
  store i32 %i.bi, ptr %i.aa, align 8, !tbaa !116
  %i.bs = sext i32 %i.bg to i64
  %i.bt = sext i32 %i.bh to i64
  %i.bu = mul nsw i64 %i.bt, %i.bs                ; 2 uses
  %i.bv = mul i64 %i.bn, %i.bu
  %i.bw = add i64 %i.bv, 15
  %i.bx = and i64 %i.bw, -16
  %i.by = udiv i64 %i.bx, %i.bn
  store i64 %i.by, ptr %i.ab, align 8, !tbaa !18
  %i.bz = load i32, ptr %i.ac, align 8, !tbaa !685, !noalias !968 ; 2 uses
  %i.ca = add nsw i32 %i.bz, -1
  store i32 %i.ca, ptr %i.w, align 8, !tbaa !685, !alias.scope !968
  %i.cb = icmp eq i32 %i.bz, 4
  br i1 %i.cb, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit50

bb.d:                                             ; preds = %.noexc49
  store i64 %i.bu, ptr %i.ab, align 8, !tbaa !18, !alias.scope !968
  br label %_ZN4ncnn3Mat7channelEi.exit50

_ZN4ncnn3Mat7channelEi.exit50:                    ; preds = %bb.d, %.noexc49
  %i.cc = load i32, ptr %5, align 4, !tbaa !113
  %i.cd = sub nsw i32 %i.cc, %i.be
  %i.ce = load i32, ptr %3, align 4, !tbaa !113
  %.sroa.speculated123 = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.cd) ; 2 uses
  %i.cf = load i32, ptr %6, align 4, !tbaa !113   ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit50
  %.pre = load i32, ptr %7, align 4, !tbaa !113
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZN4ncnn3Mat7channelEi.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.ch = add nsw i32 %.048129, 1
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !113
  %.not.not = icmp slt i32 %.048129, %i.ci
  br i1 %.not.not, label %bb.c, label %._crit_edge132

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.cj = phi i32 [ %i.cp, %._crit_edge ], [ %.pre, %.lr.ph.preheader ]
  %i.ck = phi i32 [ %i.cr, %._crit_edge ], [ %i.cf, %.lr.ph.preheader ]
  %.047127 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cl = sub nsw i32 %i.ck, %.047127
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 2 uses
  %i.cm = load i32, ptr %8, align 4, !tbaa !113   ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph
  %.pre133 = load i32, ptr %9, align 4, !tbaa !113
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %.lr.ph
  %i.co = load i32, ptr %14, align 4, !tbaa !113
  %.val81 = load ptr, ptr %13, align 8, !tbaa !9
  call fastcc void @_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val81, i32 noundef %i.be, i32 noundef %.sroa.speculated123, i32 noundef %.047127, i32 noundef %.sroa.speculated119, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(72) %15)
  %i.cp = load i32, ptr %7, align 4, !tbaa !113   ; 2 uses
  %i.cq = add nsw i32 %i.cp, %.047127             ; 2 uses
  %i.cr = load i32, ptr %6, align 4, !tbaa !113   ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !971

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ct = phi i32 [ %i.eq, %.noexc ], [ %.pre133, %.noexc.preheader ] ; 2 uses
  %i.cu = phi i32 [ %i.es, %.noexc ], [ %i.cm, %.noexc.preheader ]
  %.0126 = phi i32 [ %i.er, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.cv = sub nsw i32 %i.cu, %.0126
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.cw = load i32, ptr %3, align 4, !tbaa !113
  %i.cx = sdiv i32 %i.be, %i.cw
  %i.cy = load ptr, ptr %10, align 8, !tbaa !9, !noalias !972
  %i.cz = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !972
  %i.da = sext i32 %i.cx to i64
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !19, !noalias !972 ; 3 uses
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dd
  %i.df = load i32, ptr %i.ah, align 8, !tbaa !115, !noalias !972
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !344, !noalias !972
  %i.dh = sdiv i32 %.0126, %i.ct
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !343, !alias.scope !975
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !19, !alias.scope !975
  store i32 %i.df, ptr %i.al, align 8, !tbaa !115, !alias.scope !975
  store ptr %i.dg, ptr %i.am, align 8, !tbaa !344, !alias.scope !975
  %i.dj = load <2 x i32>, ptr %i.ad, align 4, !tbaa !113, !noalias !972
  %i.dk = load i32, ptr %i.ae, align 8, !tbaa !118, !noalias !972
  %i.dl = load i32, ptr %i.ad, align 4, !tbaa !114, !noalias !972
  %i.dm = sext i32 %i.dl to i64
  %i.dn = sext i32 %i.dk to i64
  %i.do = mul nsw i64 %i.dn, %i.dm                ; 2 uses
  %i.dp = mul i64 %i.dc, %i.do
  %i.dq = mul i64 %i.dp, %i.di
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dq
  store ptr %i.dr, ptr %17, align 8, !tbaa !9, !alias.scope !975
  %i.ds = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dt = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.ds, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.dt, ptr %i.an, align 8, !tbaa !113, !alias.scope !975
  store i32 1, ptr %i.ao, align 8, !tbaa !116, !alias.scope !975
  store i64 %i.do, ptr %i.ap, align 8, !tbaa !18, !alias.scope !975
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.du = load i32, ptr %7, align 4, !tbaa !113
  %i.dv = sdiv i32 %.047127, %i.du
  %i.dw = load ptr, ptr %11, align 8, !tbaa !9, !noalias !978
  %i.dx = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !978
  %i.dy = sext i32 %i.dv to i64
  %i.dz = mul i64 %i.dx, %i.dy
  %i.ea = load i64, ptr %i.at, align 8, !tbaa !19, !noalias !978 ; 3 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  %i.ed = load i32, ptr %i.au, align 8, !tbaa !115, !noalias !978
  %i.ee = load ptr, ptr %i.av, align 8, !tbaa !344, !noalias !978
  store ptr null, ptr %i.aw, align 8, !tbaa !343, !alias.scope !981
  store i64 %i.ea, ptr %i.ax, align 8, !tbaa !19, !alias.scope !981
  store i32 %i.ed, ptr %i.ay, align 8, !tbaa !115, !alias.scope !981
  store ptr %i.ee, ptr %i.az, align 8, !tbaa !344, !alias.scope !981
  %i.ef = load <2 x i32>, ptr %i.aq, align 4, !tbaa !113, !noalias !978
  %i.eg = load i32, ptr %i.ar, align 8, !tbaa !118, !noalias !978
  %i.eh = load i32, ptr %i.aq, align 4, !tbaa !114, !noalias !978
  %i.ei = sext i32 %i.eh to i64
  %i.ej = sext i32 %i.eg to i64
  %i.ek = mul nsw i64 %i.ej, %i.ei                ; 2 uses
  %i.el = mul i64 %i.ea, %i.ek
  %i.em = mul i64 %i.el, %i.di
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em
  store ptr %i.en, ptr %18, align 8, !tbaa !9, !alias.scope !981
  %i.eo = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ep = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ep, ptr %i.ba, align 8, !tbaa !113, !alias.scope !981
  store i32 1, ptr %i.bb, align 8, !tbaa !116, !alias.scope !981
  store i64 %i.ek, ptr %i.bc, align 8, !tbaa !18, !alias.scope !981
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %18, ptr %i.bp, i32 noundef 64, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0126, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.eq = load i32, ptr %9, align 4, !tbaa !113   ; 2 uses
  %i.er = add nsw i32 %i.eq, %.0126               ; 2 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !113   ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc, label %._crit_edge, !llvm.loop !984

._crit_edge132:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge132, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #26
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!17 = distinct !{!17, !"_ZN4ncnn3Mat7channelEi"}
!18 = !{!10, !13, i64 64}
!19 = !{!10, !13, i64 16}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!37 = distinct !{!37, !"_ZN4ncnn3Mat7channelEi"}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!52 = distinct !{!52, !"_ZN4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!67 = distinct !{!67, !"_ZN4ncnn3Mat7channelEi"}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !7, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"short", !7, i64 0}
!78 = distinct !{!78, !22, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 4, i32 12}
!82 = distinct !{!82, !22, !79, !80}
!83 = distinct !{!83, !22, !80, !79}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22, !79, !80}
!86 = distinct !{!86, !22, !79, !80}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22, !80, !79}
!89 = distinct !{!89, !22}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!92 = distinct !{!92, !"_ZN4ncnn3Mat7channelEi"}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !22, !79, !80}
end_hunk_22
