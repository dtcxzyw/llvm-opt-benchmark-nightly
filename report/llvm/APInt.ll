Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNK4llvm5APInt21multiplicativeInverseEv:bb.a
  %i.v = and i32 %i.u, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 -1, %i.w
  %i.y = sub nsw i32 0, %i.c
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 -1, %i.aa
  %i.ac = icmp eq i32 %i.c, 0
  %spec.select.i.i = select i1 %i.ac, i64 0, i64 %i.ab, !prof !27
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %_ZN4llvm5APIntaSEOS0_.exit.backedge, %_ZN4llvm5APIntC2ERKS0_.exit
  %i.ad = phi i64 [ %i.n, %_ZN4llvm5APIntC2ERKS0_.exit ], [ %.sroa.028.032, %_ZN4llvm5APIntaSEOS0_.exit.backedge ]
  %i.ae = phi ptr [ %.sink, %_ZN4llvm5APIntC2ERKS0_.exit ], [ %i.gp, %_ZN4llvm5APIntaSEOS0_.exit.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.af = load i64, ptr %2, align 8               ; 5 uses
  %i.ag = load i32, ptr %i.m, align 8, !tbaa !23  ; 9 uses
  %i.ah = icmp ult i32 %i.ag, 65                  ; 2 uses
  br i1 %i.ah, label %.split, label %.lr.ph.i.i

.split:                                           ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  %i.ai = icmp eq i64 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.ai, label %_ZN4llvm5APIntD2Ev.exit5, label %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  %i.aj = zext i32 %i.ag to i64
  %i.ak = add nuw nsw i64 %i.aj, 63
  %i.al = lshr i64 %i.ak, 6                       ; 8 uses
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = inttoptr i64 %i.af to ptr               ; 11 uses
  %i.ao = shl i32 %i.am, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.av, %bb.e ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %.019.i.i, %i.at
  br label %_ZN4llvm5APIntD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.av = add i32 %.019.i.i, 64
  %i.aw = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aw, label %bb.d, label %_ZN4llvm5APIntD2Ev.exit, !llvm.loop !1

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %.thread.i.i
  %.2.i.i = phi i32 [ %i.au, %.thread.i.i ], [ %i.ao, %bb.e ]
  %i.ax = and i32 %i.ag, 63
  %.not.i.i = icmp eq i32 %i.ax, 0
  %.neg.i.i = or i32 %i.ag, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.ay = add i32 %.2.i.i, %.neg15.i.i
  %i.az = add i32 %i.ag, -1
  %i.ba = icmp eq i32 %i.ay, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.ba, label %bb.n, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4llvm5APIntD2Ev.exit
  %min.iters.check = icmp ult i32 %i.ag, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.al, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bb, align 8, !tbaa !26, !noalias !239
  %wide.load79 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !26, !noalias !239
  %i.bd = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.be = xor <2 x i64> %wide.load79, splat (i64 -1)
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !26, !noalias !239
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !26, !noalias !239
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.preheader82:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26, !noalias !239
  %i.bi = xor i64 %i.bh, -1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26, !noalias !239
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.al
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !235

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.bj = sub i32 0, %i.ag
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 -1, %i.bl                      ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.an, i64 %i.al
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 6 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.bq = and i64 %i.bp, %i.bm
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.br = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !239
  %i.bs = add i64 %i.br, 1                        ; 2 uses
  store i64 %i.bs, ptr %i.an, align 8, !tbaa !26, !noalias !239
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26, !noalias !239
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26, !noalias !239
  %.not.i.i.i.i.i = icmp ne i64 %i.bv, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.al
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.bx = and i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.by = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !239 ; 2 uses
  %i.bz = add i64 %i.by, 2
  store i64 %i.bz, ptr %i.an, align 8, !tbaa !26, !noalias !239
  %.not.peel.i.i.i = icmp ugt i64 %i.by, -3
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i, label %.thread.i.i2

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26, !noalias !239
  %i.cc = add i64 %i.cb, 1                        ; 2 uses
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !26, !noalias !239
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i, label %.thread.i.i2, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i:   ; preds = %.split
  %i.cd = xor i64 %i.af, -1
  %i.ce = sub nsw i32 0, %i.ag
  %i.cf = and i32 %i.ce, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 -1, %i.cg
  %i.ci = icmp eq i32 %i.ag, 0
  %spec.select.i.i.i = select i1 %i.ci, i64 0, i64 %i.ch, !prof !27 ; 3 uses
  %i.cj = and i64 %spec.select.i.i.i, %i.cd
  %i.ck = add i64 %i.cj, 1
  %i.cl = and i64 %i.ck, %spec.select.i.i.i
  %i.cm = add i64 %i.cl, 2
  %i.cn = and i64 %i.cm, %spec.select.i.i.i
  br label %_ZN4llvmmiEmNS_5APIntE.exit

.thread.i.i2:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.co = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.cp = and i64 %i.co, %i.bm
  store i64 %i.cp, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  br label %_ZN4llvmmiEmNS_5APIntE.exit

_ZN4llvmmiEmNS_5APIntE.exit:                      ; preds = %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i, %.thread.i.i2
  %.sroa.0.0 = phi i64 [ %i.cn, %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i ], [ %i.af, %.thread.i.i2 ] ; 4 uses
  br i1 %i.d, label %_ZNK4llvm5APIntmlERKS0_.exit.thread, label %bb.f

_ZNK4llvm5APIntmlERKS0_.exit.thread:              ; preds = %_ZN4llvmmiEmNS_5APIntE.exit
  %i.cq = mul i64 %i.ad, %.sroa.0.0
  %i.cr = and i64 %i.cq, %spec.select.i.i
  br label %_ZN4llvm5APIntmLERKS0_.exit

bb.f:                                             ; preds = %_ZN4llvmmiEmNS_5APIntE.exit
  %i.cs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21, !noalias !240 ; 4 uses
  %i.ct = inttoptr i64 %.sroa.0.0 to ptr
  br label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.f, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit ], [ 0, %bb.f ] ; 8 uses
  %i.cu = sub nsw i64 %i.s, %indvars.iv.i.i
  %i.cv = and i64 %i.cu, 4294967295
  %umin89 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.cv)
  %i.cw = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.cx = getelementptr i8, ptr %i.cs, i64 %i.cw
  %scevgep = getelementptr i8, ptr %i.cx, i64 8
  %i.cy = sub nsw i64 %i.s, %indvars.iv.i.i
  %3 = and i64 %i.cy, 4294967295
  %umin = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %3)
  %i.cz = shl nuw nsw i64 %umin, 3
  %i.da = add nsw i64 %i.cz, -8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i ; 7 uses
  %.not = icmp eq i64 %indvars.iv.i.i, 0          ; 2 uses
  %i.dc = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.dd = sub i32 %i.t, %i.dc
  %i.de = icmp ugt i32 %i.dc, %i.t
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.dd) ; 4 uses
  %.not102.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not102.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i7
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26, !noalias !240 ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 0
  %i.di = and i64 %i.dg, 4294967295               ; 4 uses
  %i.dj = lshr i64 %i.dg, 32                      ; 4 uses
  %wide.trip.count121.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  br i1 %i.dh, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not, label %.lr.ph.split.us.split.preheader.i, label %.lr.ph.split.us.split.us.i.preheader

.lr.ph.split.us.split.us.i.preheader:             ; preds = %.lr.ph.split.us.i
  %xtraiter = and i64 %wide.trip.count121.i, 1
  %i.dk = icmp eq i64 %umin89, 1
  br i1 %i.dk, label %.lr.ph.split.us.split.us.i.epil.preheader, label %.lr.ph.split.us.split.us.i.preheader.new

.lr.ph.split.us.split.us.i.preheader.new:         ; preds = %.lr.ph.split.us.split.us.i.preheader
  %unroll_iter = and i64 %wide.trip.count121.i, 2147483646
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  store i64 0, ptr %i.db, align 8, !tbaa !26, !noalias !240
  %exitcond116.peel.not.i = icmp eq i32 %.sroa.speculated.i, 1
  br i1 %exitcond116.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.split.i.preheader

.lr.ph.split.us.split.i.preheader:                ; preds = %.lr.ph.split.us.split.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.da, i1 false), !tbaa !26, !noalias !240
  br label %._crit_edge.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.split.us.i, %.lr.ph.split.us.split.us.i.preheader.new
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %indvars.iv.next119.i.1, %.lr.ph.split.us.split.us.i ] ; 3 uses
  %.06985.us.us.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %i.dw, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.us.split.us.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv118.i ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.dn = xor i64 %.06985.us.us.i, -1
  %i.do = icmp ugt i64 %i.dm, %i.dn
  %i.dp = zext i1 %i.do to i64                    ; 2 uses
  %i.dq = add i64 %i.dm, %.06985.us.us.i
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !26, !noalias !240
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv118.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.du = xor i64 %i.dp, -1
  %i.dv = icmp ugt i64 %i.dt, %i.du
  %i.dw = zext i1 %i.dv to i64                    ; 3 uses
  %i.dx = add i64 %i.dt, %i.dp
  store i64 %i.dx, ptr %i.ds, align 8, !tbaa !26, !noalias !240
  %indvars.iv.next119.i.1 = add nuw nsw i64 %indvars.iv118.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not, label %.lr.ph.split.split.i, label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %bb.h
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %bb.h ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.06985.us88.i = phi i64 [ %spec.select77.us91.i, %bb.h ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv107.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26, !noalias !240 ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.us.i
  %i.eb = and i64 %i.dz, 4294967295               ; 2 uses
  %i.ec = mul nuw i64 %i.eb, %i.di                ; 2 uses
  %i.ed = lshr i64 %i.dz, 32                      ; 2 uses
  %i.ee = mul nuw i64 %i.ed, %i.dj
  %i.ef = mul nuw i64 %i.eb, %i.dj                ; 2 uses
  %i.eg = lshr i64 %i.ef, 32
  %i.eh = add nuw i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ef, 32
  %i.ej = add i64 %i.ei, %i.ec                    ; 3 uses
  %i.ek = icmp ult i64 %i.ej, %i.ec
  %i.el = zext i1 %i.ek to i64
  %i.em = mul nuw i64 %i.ed, %i.di                ; 2 uses
  %i.en = lshr i64 %i.em, 32
  %i.eo = shl i64 %i.em, 32
  %i.ep = add i64 %i.ej, %i.eo                    ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.ej
  %i.er = zext i1 %i.eq to i64
  %i.es = add i64 %i.ep, %.06985.us88.i           ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.ep
  %i.eu = zext i1 %i.et to i64
  %spec.select.us.i = add nuw i64 %i.eh, %i.en
  %i.ev = add nuw i64 %spec.select.us.i, %i.el
  %.1.us.i = add nuw i64 %i.ev, %i.er
  %.2.us.i = add i64 %.1.us.i, %i.eu
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.split.us.i
  %.065.us89.i = phi i64 [ %i.es, %bb.g ], [ %.06985.us88.i, %.lr.ph.split.split.us.i ] ; 2 uses
  %.3.us90.i = phi i64 [ %.2.us.i, %bb.g ], [ 0, %.lr.ph.split.split.us.i ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv107.i ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.ey = xor i64 %.065.us89.i, -1
  %i.ez = icmp ugt i64 %i.ex, %i.ey
  %i.fa = zext i1 %i.ez to i64
  %spec.select77.us91.i = add i64 %.3.us90.i, %i.fa ; 2 uses
  %i.fb = add i64 %i.ex, %.065.us89.i
  store i64 %i.fb, ptr %i.ew, align 8, !tbaa !26, !noalias !240
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count121.i
  br i1 %exitcond111.not.i, label %._crit_edge.i, label %.lr.ph.split.split.us.i, !llvm.loop !7

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.split.us.split.us.i.epil.preheader

.lr.ph.split.us.split.us.i.epil.preheader:        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.i.preheader
  %indvars.iv118.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader ], [ %indvars.iv.next119.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.06985.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader ], [ %i.dw, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i32 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv118.i.epil.init ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.fe = xor i64 %.06985.us.us.i.epil.init, -1
  %i.ff = icmp ugt i64 %i.fd, %i.fe
  %i.fg = zext i1 %i.ff to i64
  %i.fh = add i64 %i.fd, %.06985.us.us.i.epil.init
  store i64 %i.fh, ptr %i.fc, align 8, !tbaa !26, !noalias !240
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.j, %.lr.ph.split.us.split.us.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.i.preheader, %.lr.ph.split.us.split.preheader.i, %.lr.ph.i.i7
  %.069.lcssa.i = phi i64 [ 0, %.lr.ph.i.i7 ], [ %.3.i, %bb.j ], [ 0, %.lr.ph.split.us.split.preheader.i ], [ %i.fg, %.lr.ph.split.us.split.us.i.epil.preheader ], [ 0, %.lr.ph.split.us.split.i.preheader ], [ %i.dw, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select77.us91.i, %bb.h ]
  br i1 %i.de, label %bb.k, label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.j
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10, %bb.j ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.06985.i = phi i64 [ %.3.i, %bb.j ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i9
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !26, !noalias !240 ; 3 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split.i
  %i.fl = and i64 %i.fj, 4294967295               ; 2 uses
  %i.fm = mul nuw i64 %i.fl, %i.di                ; 2 uses
  %i.fn = lshr i64 %i.fj, 32                      ; 2 uses
  %i.fo = mul nuw i64 %i.fn, %i.dj
  %i.fp = mul nuw i64 %i.fl, %i.dj                ; 2 uses
  %i.fq = lshr i64 %i.fp, 32
  %i.fr = add nuw i64 %i.fq, %i.fo
  %i.fs = shl i64 %i.fp, 32
  %i.ft = add i64 %i.fs, %i.fm                    ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fm
  %i.fv = zext i1 %i.fu to i64
  %i.fw = mul nuw i64 %i.fn, %i.di                ; 2 uses
  %i.fx = lshr i64 %i.fw, 32
  %i.fy = shl i64 %i.fw, 32
  %i.fz = add i64 %i.ft, %i.fy                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.ft
  %i.gb = zext i1 %i.ga to i64
  %i.gc = add i64 %i.fz, %.06985.i                ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.fz
  %i.ge = zext i1 %i.gd to i64
  %spec.select.i = add nuw i64 %i.fr, %i.fx
  %i.gf = add nuw i64 %spec.select.i, %i.fv
  %.1.i = add nuw i64 %i.gf, %i.gb
  %.2.i = add i64 %.1.i, %i.ge
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.split.i
  %.065.i = phi i64 [ %i.gc, %bb.i ], [ %.06985.i, %.lr.ph.split.split.i ]
  %.3.i = phi i64 [ %.2.i, %bb.i ], [ 0, %.lr.ph.split.split.i ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i9
  store i64 %.065.i, ptr %i.gg, align 8, !tbaa !26, !noalias !240
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i10, %wide.trip.count121.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !7

bb.k:                                             ; preds = %._crit_edge.i
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.s
  store i64 %.069.lcssa.i, ptr %i.gh, align 8, !tbaa !26, !noalias !240
  br label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit

_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit:   ; preds = %._crit_edge.i, %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %exitcond.not.i.i, label %_ZNK4llvm5APIntmlERKS0_.exit, label %.lr.ph.i.i7, !llvm.loop !6

_ZNK4llvm5APIntmlERKS0_.exit:                     ; preds = %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit
  %i.gi = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.gj = getelementptr [8 x i8], ptr %i.cs, i64 %i.s
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8     ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !26, !noalias !240
  %i.gm = and i64 %i.gl, %i.x
end_hunk_0
begin_hunk_1_@_ZN4llvm8APIntOps12muluExtendedERKNS_5APIntES3_:bb.a
  %i.af = lshr i64 %i.aa, 6                       ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #21, !noalias !769 ; 3 uses
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !23, !noalias !769 ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = load ptr, ptr %2, align 8, !noalias !769
  %spec.select.i.i4 = select i1 %i.aj, ptr %2, ptr %i.ak
  %i.al = zext i32 %i.ai to i64
  %i.am = add nuw nsw i64 %i.al, 63
  %i.an = lshr i64 %i.am, 6                       ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %spec.select.i.i4, i64 %i.ao, i1 false), !noalias !769
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.aq = sub nsw i64 %i.af, %i.an
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = and i64 %i.ar, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.as, i1 false), !noalias !769
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i5, %bb.e
  %.sroa.0.0.ph.in = phi ptr [ %i.ad, %_ZN4llvm5APIntC2ERKS0_.exit.i5 ], [ %i.ah, %bb.e ] ; 2 uses
  %i.at = add nuw nsw i64 %i.z, 63                ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741816
  %i.aw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #21, !noalias !770 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.ax, align 8, !tbaa !23, !alias.scope !770
  store ptr %i.aw, ptr %0, align 8, !tbaa !24, !alias.scope !770
  %i.ay = lshr i64 %i.at, 6                       ; 3 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32          ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.f ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.in, i64 %indvars.iv.i.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !noalias !770
  %i.bd = icmp ne i64 %indvars.iv.i.i, 0
  %i.be = trunc i64 %indvars.iv.i.i to i32
  %i.bf = sub i32 %i.az, %i.be
  %i.bg = tail call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.ba, ptr noundef nonnull readonly %.sroa.012.0.ph.in, i64 noundef %i.bc, i64 noundef 0, i32 noundef %i.az, i32 noundef %i.bf, i1 noundef zeroext %i.bd), !noalias !770 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ay
  br i1 %exitcond.not.i.i, label %.split, label %.lr.ph.i.i, !llvm.loop !6

_ZN4llvm5APIntD2Ev.exit.thread:                   ; preds = %bb.a
  %i.bh = load i64, ptr %1, align 8, !tbaa !24, !noalias !768
  %i.bi = load i64, ptr %2, align 8, !tbaa !24, !noalias !769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.bj = mul i64 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.bk, align 8, !tbaa !23, !alias.scope !770
  %i.bl = sub nsw i32 0, %i.c
  %i.bm = and i32 %i.bl, 62
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn
  %i.bp = icmp eq i32 %i.c, 0
  %spec.select.i.i9 = select i1 %i.bp, i64 0, i64 %i.bo, !prof !27
  %i.bq = and i64 %i.bj, %spec.select.i.i9
  store i64 %i.bq, ptr %0, align 8, !tbaa !24, !alias.scope !770
  br label %_ZN4llvm5APIntD2Ev.exit10

.split:                                           ; preds = %.lr.ph.i.i
  %i.br = sub i32 0, %i.c
  %i.bs = and i32 %i.br, 62
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = lshr i64 -1, %i.bt
  %i.bv = getelementptr [8 x i8], ptr %i.aw, i64 %i.ay
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8     ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26, !noalias !770
  %i.by = and i64 %i.bx, %i.bu
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !26, !noalias !770
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0.ph.in) #22
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.012.0.ph.in) #22
  br label %_ZN4llvm5APIntD2Ev.exit10

_ZN4llvm5APIntD2Ev.exit10:                        ; preds = %_ZN4llvm5APIntD2Ev.exit.thread, %.split
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8APIntOps3powERKNS_5APIntEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !23
  %i.d = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.d, label %_ZN4llvm5APIntC2Ejmbb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 1073741816                 ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  store i64 1, ptr %i.i, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.i, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 3 uses
  store ptr %.sink, ptr %0, align 8, !tbaa !24
  %i.j = icmp eq i64 %2, 0
  %i.k = ptrtoint ptr %.sink to i64
  br i1 %i.j, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.l = load i32, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.m = icmp ult i32 %i.l, 65                    ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %1, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = add nuw nsw i64 %i.o, 63
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.u, i64 %i.r, i1 false)
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.d, %bb.e
  %.sroa.0.2 = phi i64 [ %i.n, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.v = icmp sgt i64 %2, 0
  br i1 %i.v, label %.preheader.lr.ph, label %._crit_edge111

.preheader.lr.ph:                                 ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.w = zext i32 %i.l to i64
  %i.x = add nuw nsw i64 %i.w, 63                 ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741816
  %i.aa = lshr i64 %i.x, 6                        ; 8 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32          ; 3 uses
  %i.ac = sub i32 0, %i.l
  %i.ad = and i32 %i.ac, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 -1, %i.ae                      ; 2 uses
  %i.ag = icmp eq i32 %i.l, 0
  %spec.select.i.i = select i1 %i.ag, i64 0, i64 %i.af, !prof !27
  %i.ah = zext i32 %i.b to i64
  %i.ai = add nuw nsw i64 %i.ah, 63               ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741816
  %i.al = lshr i64 %i.ai, 6                       ; 8 uses
  %i.am = trunc nuw nsw i64 %i.al to i32          ; 3 uses
  %i.an = sub i32 0, %i.b
  %i.ao = and i32 %i.an, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 -1, %i.ap
  %i.ar = sub nsw i32 0, %i.b
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 -1, %i.at
  %i.av = icmp eq i32 %i.b, 0
  %spec.select.i.i20 = select i1 %i.av, i64 0, i64 %i.au, !prof !27
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN4llvm5APIntmLERKS0_.exit10
  %i.aw = phi i64 [ %i.k, %.preheader.lr.ph ], [ %.sroa.085.092, %_ZN4llvm5APIntmLERKS0_.exit10 ]
  %i.ax = phi ptr [ %.sink, %.preheader.lr.ph ], [ %i.je, %_ZN4llvm5APIntmLERKS0_.exit10 ] ; 4 uses
  %.0110 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.fe, %_ZN4llvm5APIntmLERKS0_.exit10 ] ; 4 uses
  %.sroa.0.0109 = phi i64 [ %.sroa.0.2, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_ZN4llvm5APIntmLERKS0_.exit10 ] ; 3 uses
  %i.ay = and i64 %.0110, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.m, label %_ZNK4llvm5APIntmlERKS0_.exit.thread.us, label %.lr.ph.split

_ZNK4llvm5APIntmlERKS0_.exit.thread.us:           ; preds = %.lr.ph, %_ZNK4llvm5APIntmlERKS0_.exit.thread.us
  %.1105.us = phi i64 [ %i.bc, %_ZNK4llvm5APIntmlERKS0_.exit.thread.us ], [ %.0110, %.lr.ph ] ; 2 uses
  %.sroa.0.1104.us = phi i64 [ %i.bb, %_ZNK4llvm5APIntmlERKS0_.exit.thread.us ], [ %.sroa.0.0109, %.lr.ph ] ; 2 uses
  %i.ba = mul i64 %.sroa.0.1104.us, %.sroa.0.1104.us
  %i.bb = and i64 %i.ba, %spec.select.i.i         ; 2 uses
  %i.bc = lshr exact i64 %.1105.us, 1             ; 2 uses
  %i.bd = and i64 %.1105.us, 2
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNK4llvm5APIntmlERKS0_.exit.thread.us, label %._crit_edge, !llvm.loop !771

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm5APIntmLERKS0_.exit
  %.1105 = phi i64 [ %i.fb, %_ZN4llvm5APIntmLERKS0_.exit ], [ %.0110, %.lr.ph ] ; 2 uses
  %.sroa.0.1104 = phi i64 [ %i.ev, %_ZN4llvm5APIntmLERKS0_.exit ], [ %.sroa.0.0109, %.lr.ph ] ; 2 uses
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #21, !noalias !777 ; 4 uses
  %i.bg = inttoptr i64 %.sroa.0.1104 to ptr       ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit ], [ 0, %.lr.ph.split ] ; 8 uses
  %i.bh = sub nsw i64 %i.aa, %indvars.iv.i.i
  %i.bi = and i64 %i.bh, 4294967295
  %umin171 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.bi)
  %i.bj = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.bk = getelementptr i8, ptr %i.bf, i64 %i.bj
  %scevgep = getelementptr i8, ptr %i.bk, i64 8
  %i.bl = sub nsw i64 %i.aa, %indvars.iv.i.i
  %3 = and i64 %i.bl, 4294967295
  %umin = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %3)
  %i.bm = shl nuw nsw i64 %umin, 3
  %i.bn = add nsw i64 %i.bm, -8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i ; 7 uses
  %.not95 = icmp eq i64 %indvars.iv.i.i, 0        ; 2 uses
  %i.bp = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.bq = sub i32 %i.ab, %i.bp
  %i.br = icmp ugt i32 %i.bp, %i.ab
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.bq) ; 4 uses
  %.not102.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not102.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26, !noalias !777 ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = and i64 %i.bt, 4294967295               ; 4 uses
  %i.bw = lshr i64 %i.bt, 32                      ; 4 uses
  %wide.trip.count121.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  br i1 %i.bu, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not95, label %.lr.ph.split.us.split.preheader.i, label %.lr.ph.split.us.split.us.i.preheader

.lr.ph.split.us.split.us.i.preheader:             ; preds = %.lr.ph.split.us.i
  %xtraiter = and i64 %wide.trip.count121.i, 1
  %i.bx = icmp eq i64 %umin171, 1
  br i1 %i.bx, label %.lr.ph.split.us.split.us.i.epil.preheader, label %.lr.ph.split.us.split.us.i.preheader.new

.lr.ph.split.us.split.us.i.preheader.new:         ; preds = %.lr.ph.split.us.split.us.i.preheader
  %unroll_iter = and i64 %wide.trip.count121.i, 2147483646
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  store i64 0, ptr %i.bo, align 8, !tbaa !26, !noalias !777
  %exitcond116.peel.not.i = icmp eq i32 %.sroa.speculated.i, 1
  br i1 %exitcond116.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.split.i.preheader

.lr.ph.split.us.split.i.preheader:                ; preds = %.lr.ph.split.us.split.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bn, i1 false), !tbaa !26, !noalias !777
  br label %._crit_edge.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.split.us.i, %.lr.ph.split.us.split.us.i.preheader.new
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %indvars.iv.next119.i.1, %.lr.ph.split.us.split.us.i ] ; 3 uses
  %.06985.us.us.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %i.cj, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.us.split.us.i ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv118.i ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26, !noalias !777 ; 2 uses
  %i.ca = xor i64 %.06985.us.us.i, -1
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  %i.cc = zext i1 %i.cb to i64                    ; 2 uses
  %i.cd = add i64 %i.bz, %.06985.us.us.i
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !26, !noalias !777
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv118.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !777 ; 2 uses
  %i.ch = xor i64 %i.cc, -1
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  %i.cj = zext i1 %i.ci to i64                    ; 3 uses
  %i.ck = add i64 %i.cg, %i.cc
  store i64 %i.ck, ptr %i.cf, align 8, !tbaa !26, !noalias !777
  %indvars.iv.next119.i.1 = add nuw nsw i64 %indvars.iv118.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not95, label %.lr.ph.split.split.i, label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %bb.g
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %bb.g ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.06985.us88.i = phi i64 [ %spec.select77.us91.i, %bb.g ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv107.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26, !noalias !777 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us.i
  %i.co = and i64 %i.cm, 4294967295               ; 2 uses
  %i.cp = mul nuw i64 %i.co, %i.bv                ; 2 uses
  %i.cq = lshr i64 %i.cm, 32                      ; 2 uses
  %i.cr = mul nuw i64 %i.cq, %i.bw
  %i.cs = mul nuw i64 %i.co, %i.bw                ; 2 uses
  %i.ct = lshr i64 %i.cs, 32
  %i.cu = add nuw i64 %i.ct, %i.cr
  %i.cv = shl i64 %i.cs, 32
  %i.cw = add i64 %i.cv, %i.cp                    ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %i.cp
  %i.cy = zext i1 %i.cx to i64
  %i.cz = mul nuw i64 %i.cq, %i.bv                ; 2 uses
  %i.da = lshr i64 %i.cz, 32
  %i.db = shl i64 %i.cz, 32
  %i.dc = add i64 %i.cw, %i.db                    ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %i.cw
  %i.de = zext i1 %i.dd to i64
  %i.df = add i64 %i.dc, %.06985.us88.i           ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dc
  %i.dh = zext i1 %i.dg to i64
  %spec.select.us.i = add nuw i64 %i.cu, %i.da
  %i.di = add nuw i64 %spec.select.us.i, %i.cy
  %.1.us.i = add nuw i64 %i.di, %i.de
  %.2.us.i = add i64 %.1.us.i, %i.dh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us.i
  %.065.us89.i = phi i64 [ %i.df, %bb.f ], [ %.06985.us88.i, %.lr.ph.split.split.us.i ] ; 2 uses
  %.3.us90.i = phi i64 [ %.2.us.i, %bb.f ], [ 0, %.lr.ph.split.split.us.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv107.i ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !26, !noalias !777 ; 2 uses
  %i.dl = xor i64 %.065.us89.i, -1
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  %i.dn = zext i1 %i.dm to i64
  %spec.select77.us91.i = add i64 %.3.us90.i, %i.dn ; 2 uses
  %i.do = add i64 %i.dk, %.065.us89.i
  store i64 %i.do, ptr %i.dj, align 8, !tbaa !26, !noalias !777
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count121.i
  br i1 %exitcond111.not.i, label %._crit_edge.i, label %.lr.ph.split.split.us.i, !llvm.loop !7

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.split.us.split.us.i.epil.preheader

.lr.ph.split.us.split.us.i.epil.preheader:        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.i.preheader
  %indvars.iv118.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader ], [ %indvars.iv.next119.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.06985.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader ], [ %i.cj, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod173 = trunc i32 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv118.i.epil.init ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !26, !noalias !777 ; 2 uses
  %i.dr = xor i64 %.06985.us.us.i.epil.init, -1
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  %i.dt = zext i1 %i.ds to i64
  %i.du = add i64 %i.dq, %.06985.us.us.i.epil.init
  store i64 %i.du, ptr %i.dp, align 8, !tbaa !26, !noalias !777
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.i, %.lr.ph.split.us.split.us.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.i.preheader, %.lr.ph.split.us.split.preheader.i, %.lr.ph.i.i
  %.069.lcssa.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.3.i, %bb.i ], [ 0, %.lr.ph.split.us.split.preheader.i ], [ %i.dt, %.lr.ph.split.us.split.us.i.epil.preheader ], [ 0, %.lr.ph.split.us.split.i.preheader ], [ %i.cj, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select77.us91.i, %bb.g ]
  br i1 %i.br, label %bb.j, label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.06985.i = phi i64 [ %.3.i, %bb.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26, !noalias !777 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.i
  %i.dy = and i64 %i.dw, 4294967295               ; 2 uses
  %i.dz = mul nuw i64 %i.dy, %i.bv                ; 2 uses
  %i.ea = lshr i64 %i.dw, 32                      ; 2 uses
  %i.eb = mul nuw i64 %i.ea, %i.bw
  %i.ec = mul nuw i64 %i.dy, %i.bw                ; 2 uses
  %i.ed = lshr i64 %i.ec, 32
  %i.ee = add nuw i64 %i.ed, %i.eb
  %i.ef = shl i64 %i.ec, 32
  %i.eg = add i64 %i.ef, %i.dz                    ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.dz
  %i.ei = zext i1 %i.eh to i64
  %i.ej = mul nuw i64 %i.ea, %i.bv                ; 2 uses
  %i.ek = lshr i64 %i.ej, 32
  %i.el = shl i64 %i.ej, 32
  %i.em = add i64 %i.eg, %i.el                    ; 3 uses
  %i.en = icmp ult i64 %i.em, %i.eg
  %i.eo = zext i1 %i.en to i64
  %i.ep = add i64 %i.em, %.06985.i                ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.em
  %i.er = zext i1 %i.eq to i64
  %spec.select.i = add nuw i64 %i.ee, %i.ek
  %i.es = add nuw i64 %spec.select.i, %i.ei
  %.1.i = add nuw i64 %i.es, %i.eo
  %.2.i = add i64 %.1.i, %i.er
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.split.i
  %.065.i = phi i64 [ %i.ep, %bb.h ], [ %.06985.i, %.lr.ph.split.split.i ]
  %.3.i = phi i64 [ %.2.i, %bb.h ], [ 0, %.lr.ph.split.split.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i
  store i64 %.065.i, ptr %i.et, align 8, !tbaa !26, !noalias !777
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count121.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !7

bb.j:                                             ; preds = %._crit_edge.i
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.aa
  store i64 %.069.lcssa.i, ptr %i.eu, align 8, !tbaa !26, !noalias !777
  br label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit

_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit:   ; preds = %._crit_edge.i, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.aa
  br i1 %exitcond.not.i.i, label %_ZNK4llvm5APIntmlERKS0_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZNK4llvm5APIntmlERKS0_.exit:                     ; preds = %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit
  %i.ev = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.bf, i64 %i.aa
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8     ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !26, !noalias !777
  %i.ez = and i64 %i.ey, %i.af
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !26, !noalias !777
  %i.fa = icmp eq i64 %.sroa.0.1104, 0
  br i1 %i.fa, label %_ZN4llvm5APIntmLERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm5APIntmlERKS0_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #22
  br label %_ZN4llvm5APIntmLERKS0_.exit

_ZN4llvm5APIntmLERKS0_.exit:                      ; preds = %_ZNK4llvm5APIntmlERKS0_.exit, %bb.k
  %i.fb = lshr exact i64 %.1105, 1                ; 2 uses
  %i.fc = and i64 %.1105, 2
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !771

._crit_edge:                                      ; preds = %_ZN4llvm5APIntmLERKS0_.exit, %_ZNK4llvm5APIntmlERKS0_.exit.thread.us, %.preheader
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0109, %.preheader ], [ %i.bb, %_ZNK4llvm5APIntmlERKS0_.exit.thread.us ], [ %i.ev, %_ZN4llvm5APIntmLERKS0_.exit ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0110, %.preheader ], [ %i.bc, %_ZNK4llvm5APIntmlERKS0_.exit.thread.us ], [ %i.fb, %_ZN4llvm5APIntmLERKS0_.exit ] ; 2 uses
  %i.fe = add nsw i64 %.1.lcssa, -1
  br i1 %i.d, label %_ZNK4llvm5APIntmlERKS0_.exit21.thread, label %bb.l

_ZNK4llvm5APIntmlERKS0_.exit21.thread:            ; preds = %._crit_edge
  %i.ff = mul i64 %i.aw, %.sroa.0.1.lcssa
  %i.fg = and i64 %i.ff, %spec.select.i.i20
  br label %_ZN4llvm5APIntmLERKS0_.exit10

bb.l:                                             ; preds = %._crit_edge
  %i.fh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #21, !noalias !778 ; 4 uses
  %i.fi = inttoptr i64 %.sroa.0.1.lcssa to ptr
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %bb.l, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit73
  %indvars.iv.i.i13 = phi i64 [ %indvars.iv.next.i.i14, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit73 ], [ 0, %bb.l ] ; 8 uses
  %i.fj = sub nsw i64 %i.al, %indvars.iv.i.i13
  %i.fk = and i64 %i.fj, 4294967295
  %umin174 = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.fk)
  %i.fl = shl nuw nsw i64 %indvars.iv.i.i13, 3
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %scevgep126 = getelementptr i8, ptr %i.fm, i64 8
  %i.fn = sub nsw i64 %i.al, %indvars.iv.i.i13
  %4 = and i64 %i.fn, 4294967295
  %umin127 = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %4)
  %i.fo = shl nuw nsw i64 %umin127, 3
  %i.fp = add nsw i64 %i.fo, -8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i.i13 ; 7 uses
  %.not = icmp eq i64 %indvars.iv.i.i13, 0        ; 2 uses
  %i.fr = trunc i64 %indvars.iv.i.i13 to i32      ; 2 uses
  %i.fs = sub i32 %i.am, %i.fr
  %i.ft = icmp ugt i32 %i.fr, %i.am
  %.sroa.speculated.i22 = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.fs) ; 4 uses
  %.not102.i23 = icmp eq i32 %.sroa.speculated.i22, 0
  br i1 %.not102.i23, label %._crit_edge.i37, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i.i12
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i.i13
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !26, !noalias !778 ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = and i64 %i.fv, 4294967295               ; 4 uses
  %i.fy = lshr i64 %i.fv, 32                      ; 4 uses
  %wide.trip.count121.i25 = zext nneg i32 %.sroa.speculated.i22 to i64 ; 4 uses
  br i1 %i.fw, label %.lr.ph.split.us.i61, label %.lr.ph.split.i26

.lr.ph.split.us.i61:                              ; preds = %.lr.ph.i24
  br i1 %.not, label %.lr.ph.split.us.split.preheader.i62, label %.lr.ph.split.us.split.us.i68.preheader

.lr.ph.split.us.split.us.i68.preheader:           ; preds = %.lr.ph.split.us.i61
  %xtraiter175 = and i64 %wide.trip.count121.i25, 1
  %i.fz = icmp eq i64 %umin174, 1
  br i1 %i.fz, label %.lr.ph.split.us.split.us.i68.epil.preheader, label %.lr.ph.split.us.split.us.i68.preheader.new

.lr.ph.split.us.split.us.i68.preheader.new:       ; preds = %.lr.ph.split.us.split.us.i68.preheader
  %unroll_iter179 = and i64 %wide.trip.count121.i25, 2147483646
  br label %.lr.ph.split.us.split.us.i68

.lr.ph.split.us.split.preheader.i62:              ; preds = %.lr.ph.split.us.i61
  store i64 0, ptr %i.fq, align 8, !tbaa !26, !noalias !778
  %exitcond116.peel.not.i63 = icmp eq i32 %.sroa.speculated.i22, 1
  br i1 %exitcond116.peel.not.i63, label %._crit_edge.i37, label %.lr.ph.split.us.split.i64.preheader

.lr.ph.split.us.split.i64.preheader:              ; preds = %.lr.ph.split.us.split.preheader.i62
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep126, i8 0, i64 %i.fp, i1 false), !tbaa !26, !noalias !778
  br label %._crit_edge.i37

.lr.ph.split.us.split.us.i68:                     ; preds = %.lr.ph.split.us.split.us.i68, %.lr.ph.split.us.split.us.i68.preheader.new
  %indvars.iv118.i69 = phi i64 [ 0, %.lr.ph.split.us.split.us.i68.preheader.new ], [ %indvars.iv.next119.i71.1, %.lr.ph.split.us.split.us.i68 ] ; 3 uses
  %.06985.us.us.i70 = phi i64 [ 0, %.lr.ph.split.us.split.us.i68.preheader.new ], [ %i.gl, %.lr.ph.split.us.split.us.i68 ] ; 2 uses
  %niter180 = phi i64 [ 0, %.lr.ph.split.us.split.us.i68.preheader.new ], [ %niter180.next.1, %.lr.ph.split.us.split.us.i68 ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv118.i69 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !26, !noalias !778 ; 2 uses
  %i.gc = xor i64 %.06985.us.us.i70, -1
  %i.gd = icmp ugt i64 %i.gb, %i.gc
  %i.ge = zext i1 %i.gd to i64                    ; 2 uses
  %i.gf = add i64 %i.gb, %.06985.us.us.i70
  store i64 %i.gf, ptr %i.ga, align 8, !tbaa !26, !noalias !778
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv118.i69
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !26, !noalias !778 ; 2 uses
  %i.gj = xor i64 %i.ge, -1
  %i.gk = icmp ugt i64 %i.gi, %i.gj
  %i.gl = zext i1 %i.gk to i64                    ; 3 uses
  %i.gm = add i64 %i.gi, %i.ge
  store i64 %i.gm, ptr %i.gh, align 8, !tbaa !26, !noalias !778
  %indvars.iv.next119.i71.1 = add nuw nsw i64 %indvars.iv118.i69, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge.i37.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.i68, !llvm.loop !7

.lr.ph.split.i26:                                 ; preds = %.lr.ph.i24
  br i1 %.not, label %.lr.ph.split.split.i27, label %.lr.ph.split.split.us.i50

.lr.ph.split.split.us.i50:                        ; preds = %.lr.ph.split.i26, %bb.n
  %indvars.iv107.i51 = phi i64 [ %indvars.iv.next108.i59, %bb.n ], [ 0, %.lr.ph.split.i26 ] ; 3 uses
  %.06985.us88.i52 = phi i64 [ %spec.select77.us91.i58, %bb.n ], [ 0, %.lr.ph.split.i26 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv107.i51
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !26, !noalias !778 ; 3 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us.i50
  %i.gq = and i64 %i.go, 4294967295               ; 2 uses
  %i.gr = mul nuw i64 %i.gq, %i.fx                ; 2 uses
  %i.gs = lshr i64 %i.go, 32                      ; 2 uses
  %i.gt = mul nuw i64 %i.gs, %i.fy
  %i.gu = mul nuw i64 %i.gq, %i.fy                ; 2 uses
  %i.gv = lshr i64 %i.gu, 32
  %i.gw = add nuw i64 %i.gv, %i.gt
  %i.gx = shl i64 %i.gu, 32
  %i.gy = add i64 %i.gx, %i.gr                    ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.gr
  %i.ha = zext i1 %i.gz to i64
  %i.hb = mul nuw i64 %i.gs, %i.fx                ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = shl i64 %i.hb, 32
  %i.he = add i64 %i.gy, %i.hd                    ; 3 uses
  %i.hf = icmp ult i64 %i.he, %i.gy
  %i.hg = zext i1 %i.hf to i64
  %i.hh = add i64 %i.he, %.06985.us88.i52         ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.he
  %i.hj = zext i1 %i.hi to i64
  %spec.select.us.i53 = add nuw i64 %i.gw, %i.hc
  %i.hk = add nuw i64 %spec.select.us.i53, %i.ha
  %.1.us.i54 = add nuw i64 %i.hk, %i.hg
  %.2.us.i55 = add i64 %.1.us.i54, %i.hj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.split.us.i50
  %.065.us89.i56 = phi i64 [ %i.hh, %bb.m ], [ %.06985.us88.i52, %.lr.ph.split.split.us.i50 ] ; 2 uses
  %.3.us90.i57 = phi i64 [ %.2.us.i55, %bb.m ], [ 0, %.lr.ph.split.split.us.i50 ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv107.i51 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !26, !noalias !778 ; 2 uses
  %i.hn = xor i64 %.065.us89.i56, -1
  %i.ho = icmp ugt i64 %i.hm, %i.hn
  %i.hp = zext i1 %i.ho to i64
  %spec.select77.us91.i58 = add i64 %.3.us90.i57, %i.hp ; 2 uses
  %i.hq = add i64 %i.hm, %.065.us89.i56
  store i64 %i.hq, ptr %i.hl, align 8, !tbaa !26, !noalias !778
  %indvars.iv.next108.i59 = add nuw nsw i64 %indvars.iv107.i51, 1 ; 2 uses
  %exitcond111.not.i60 = icmp eq i64 %indvars.iv.next108.i59, %wide.trip.count121.i25
  br i1 %exitcond111.not.i60, label %._crit_edge.i37, label %.lr.ph.split.split.us.i50, !llvm.loop !7

._crit_edge.i37.loopexit.unr-lcssa:               ; preds = %.lr.ph.split.us.split.us.i68
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %._crit_edge.i37, label %.lr.ph.split.us.split.us.i68.epil.preheader

.lr.ph.split.us.split.us.i68.epil.preheader:      ; preds = %._crit_edge.i37.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.i68.preheader
  %indvars.iv118.i69.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i68.preheader ], [ %indvars.iv.next119.i71.1, %._crit_edge.i37.loopexit.unr-lcssa ]
  %.06985.us.us.i70.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i68.preheader ], [ %i.gl, %._crit_edge.i37.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %.sroa.speculated.i22 to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv118.i69.epil.init ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !26, !noalias !778 ; 2 uses
  %i.ht = xor i64 %.06985.us.us.i70.epil.init, -1
  %i.hu = icmp ugt i64 %i.hs, %i.ht
  %i.hv = zext i1 %i.hu to i64
  %i.hw = add i64 %i.hs, %.06985.us.us.i70.epil.init
  store i64 %i.hw, ptr %i.hr, align 8, !tbaa !26, !noalias !778
  br label %._crit_edge.i37

._crit_edge.i37:                                  ; preds = %bb.n, %bb.p, %.lr.ph.split.us.split.us.i68.epil.preheader, %._crit_edge.i37.loopexit.unr-lcssa, %.lr.ph.split.us.split.i64.preheader, %.lr.ph.split.us.split.preheader.i62, %.lr.ph.i.i12
  %.069.lcssa.i38 = phi i64 [ 0, %.lr.ph.i.i12 ], [ %.3.i34, %bb.p ], [ 0, %.lr.ph.split.us.split.preheader.i62 ], [ %i.hv, %.lr.ph.split.us.split.us.i68.epil.preheader ], [ 0, %.lr.ph.split.us.split.i64.preheader ], [ %i.gl, %._crit_edge.i37.loopexit.unr-lcssa ], [ %spec.select77.us91.i58, %bb.n ]
  br i1 %i.ft, label %bb.q, label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit73

.lr.ph.split.split.i27:                           ; preds = %.lr.ph.split.i26, %bb.p
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i35, %bb.p ], [ 0, %.lr.ph.split.i26 ] ; 3 uses
  %.06985.i29 = phi i64 [ %.3.i34, %bb.p ], [ 0, %.lr.ph.split.i26 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i28
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !26, !noalias !778 ; 3 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.split.i27
  %i.ia = and i64 %i.hy, 4294967295               ; 2 uses
  %i.ib = mul nuw i64 %i.ia, %i.fx                ; 2 uses
  %i.ic = lshr i64 %i.hy, 32                      ; 2 uses
  %i.id = mul nuw i64 %i.ic, %i.fy
  %i.ie = mul nuw i64 %i.ia, %i.fy                ; 2 uses
  %i.if = lshr i64 %i.ie, 32
  %i.ig = add nuw i64 %i.if, %i.id
  %i.ih = shl i64 %i.ie, 32
  %i.ii = add i64 %i.ih, %i.ib                    ; 3 uses
  %i.ij = icmp ult i64 %i.ii, %i.ib
  %i.ik = zext i1 %i.ij to i64
  %i.il = mul nuw i64 %i.ic, %i.fx                ; 2 uses
  %i.im = lshr i64 %i.il, 32
  %i.in = shl i64 %i.il, 32
  %i.io = add i64 %i.ii, %i.in                    ; 3 uses
  %i.ip = icmp ult i64 %i.io, %i.ii
  %i.iq = zext i1 %i.ip to i64
  %i.ir = add i64 %i.io, %.06985.i29              ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.io
  %i.it = zext i1 %i.is to i64
  %spec.select.i30 = add nuw i64 %i.ig, %i.im
  %i.iu = add nuw i64 %spec.select.i30, %i.ik
  %.1.i31 = add nuw i64 %i.iu, %i.iq
  %.2.i32 = add i64 %.1.i31, %i.it
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.split.i27
  %.065.i33 = phi i64 [ %i.ir, %bb.o ], [ %.06985.i29, %.lr.ph.split.split.i27 ]
  %.3.i34 = phi i64 [ %.2.i32, %bb.o ], [ 0, %.lr.ph.split.split.i27 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i28
  store i64 %.065.i33, ptr %i.iv, align 8, !tbaa !26, !noalias !778
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, %wide.trip.count121.i25
  br i1 %exitcond.not.i36, label %._crit_edge.i37, label %.lr.ph.split.split.i27, !llvm.loop !7

bb.q:                                             ; preds = %._crit_edge.i37
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.al
  store i64 %.069.lcssa.i38, ptr %i.iw, align 8, !tbaa !26, !noalias !778
  br label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit73

_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit73: ; preds = %._crit_edge.i37, %bb.q
  %indvars.iv.next.i.i14 = add nuw nsw i64 %indvars.iv.i.i13, 1 ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %indvars.iv.next.i.i14, %i.al
  br i1 %exitcond.not.i.i15, label %_ZNK4llvm5APIntmlERKS0_.exit21, label %.lr.ph.i.i12, !llvm.loop !6

_ZNK4llvm5APIntmlERKS0_.exit21:                   ; preds = %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit73
  %i.ix = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.iy = getelementptr [8 x i8], ptr %i.fh, i64 %i.al
  %i.iz = getelementptr i8, ptr %i.iy, i64 -8     ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !26, !noalias !778
  %i.jb = and i64 %i.ja, %i.aq
end_hunk_1
