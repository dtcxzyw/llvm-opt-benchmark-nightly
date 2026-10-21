Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/int_util?download=true
inline.NumInlined: 2119
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 286
loop-unroll.NumUnrolled: 304
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.oz = trunc i8 %i.oy to i1
  %i.pa = lshr i8 %i.nt, %i.mc
  %i.pb = trunc i8 %i.pa to i1
  %i.pc = lshr i8 %i.ny, %i.me
  %i.pd = trunc i8 %i.pc to i1
  %i.pe = lshr i8 %i.od, %i.mg
  %i.pf = trunc i8 %i.pe to i1
  %i.pg = lshr i8 %i.oi, %i.mi
  %i.ph = trunc i8 %i.pg to i1
  %i.pi = lshr i8 %i.on, %i.mk
  %i.pj = trunc i8 %i.pi to i1
  %i.pk = lshr i8 %i.os, %i.mm
  %i.pl = trunc i8 %i.pk to i1
  %i.pm = load <8 x i32>, ptr %i.nk, align 4, !tbaa !143, !noalias !714 ; 2 uses
  %i.pn = lshr i8 %i.ox, %i.mo
  %i.po = trunc i8 %i.pn to i1
  %i.pp = icmp slt <8 x i32> %i.pm, %i.p
  %i.pq = icmp sgt <8 x i32> %i.pm, %i.r
  %i.pr = or <8 x i1> %i.pp, %i.pq
  %i.ps = insertelement <8 x i1> poison, i1 %i.oz, i64 0
  %i.pt = insertelement <8 x i1> %i.ps, i1 %i.pb, i64 1
  %i.pu = insertelement <8 x i1> %i.pt, i1 %i.pd, i64 2
  %i.pv = insertelement <8 x i1> %i.pu, i1 %i.pf, i64 3
  %i.pw = insertelement <8 x i1> %i.pv, i1 %i.ph, i64 4
  %i.px = insertelement <8 x i1> %i.pw, i1 %i.pj, i64 5
  %i.py = insertelement <8 x i1> %i.px, i1 %i.pl, i64 6
  %i.pz = insertelement <8 x i1> %i.py, i1 %i.po, i64 7
  %i.qa = select <8 x i1> %i.pz, <8 x i1> %i.pr, <8 x i1> zeroinitializer
  %i.qb = bitcast <8 x i1> %i.qa to i8
  %i.qc = icmp ne i8 %i.qb, 0
  %op.rdx64 = or i1 %i.qc, %.3146.i               ; 2 uses
  %i.qd = add nuw nsw i64 %.076147.i, 8
  %i.qe = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.qe, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !707

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i
  %.2151.i = phi i64 [ %i.ri, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ]
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.092169.i, i64 %.2151.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !143, !noalias !714 ; 2 uses
  %i.qh = add nsw i64 %.2151.i, %.088173.i        ; 2 uses
  %i.qi = lshr i64 %i.qh, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !142, !noalias !714
  %i.ql = trunc i64 %i.qh to i8
  %i.qm = and i8 %i.ql, 7
  %i.qn = lshr i8 %i.qk, %i.qm
  %i.qo = trunc i8 %i.qn to i1
  %i.qp = icmp slt i32 %i.qg, %.44.val
  %i.qq = icmp sgt i32 %i.qg, %.44.val1
  %spec.select130.i = or i1 %i.qp, %i.qq
  %i.qr = select i1 %i.qo, i1 %spec.select130.i, i1 false
  %i.qs = or i1 %.5150.i, %i.qr
  %i.qt = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.092169.i, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !143, !noalias !714 ; 2 uses
  %i.qw = add nsw i64 %i.qt, %.088173.i           ; 2 uses
  %i.qx = lshr i64 %i.qw, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !142, !noalias !714
  %i.ra = trunc i64 %i.qw to i8
  %i.rb = and i8 %i.ra, 7
  %i.rc = lshr i8 %i.qz, %i.rb
  %i.rd = trunc i8 %i.rc to i1
  %i.re = icmp slt i32 %i.qv, %.44.val
  %i.rf = icmp sgt i32 %i.qv, %.44.val1
  %spec.select130.i.1 = or i1 %i.re, %i.rf
  %i.rg = select i1 %i.rd, i1 %spec.select130.i.1, i1 false
  %i.rh = or i1 %i.qs, %i.rg                      ; 2 uses
  %i.ri = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.ri, %i.mq
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i, !llvm.loop !708

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.le, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ], [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !229

bb.e:                                             ; preds = %.loopexit.i
  %i.rj = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !714
  %i.rk = icmp sgt i64 %i.rj, 0
  %i.rl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.rk, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ry, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.rm = add nsw i64 %.073167.i, %.088173.i      ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !142, !noalias !714
  %i.rq = trunc i64 %i.rm to i8
  %i.rr = and i8 %i.rq, 7
  %i.rs = lshr i8 %i.rp, %i.rr
  %i.rt = trunc i8 %i.rs to i1
  br i1 %i.rt, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.092169.i, i64 %.073167.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !143, !noalias !714 ; 3 uses
  %i.rw = icmp slt i32 %i.rv, %.44.val
  %i.rx = icmp sgt i32 %i.rv, %.44.val1
  %or.cond131.i = or i1 %i.rw, %i.rx
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.rv)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ry = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ry, %i.rl
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !709

bb.g:                                             ; preds = %.lr.ph.i
  %i.rz = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.rz, %i.rl
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !710

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.rz, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.092169.i, i64 %.0165.i
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !143, !noalias !714 ; 3 uses
  %i.sc = icmp slt i32 %i.sb, %.44.val
  %i.sd = icmp sgt i32 %i.sb, %.44.val1
  %or.cond132.i = or i1 %i.sc, %i.sd
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.sb)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.se = sext i32 %i.y to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.092169.i, i64 %i.se
  %i.sg = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.sh = add nsw i64 %.090172.i, %i.sg           ; 2 uses
  %i.si = add nsw i64 %.088173.i, %i.sg
  %i.sj = load i64, ptr %i.i, align 8, !tbaa !193, !noalias !714
  %i.sk = icmp slt i64 %i.sh, %i.sj
  br i1 %i.sk, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !711

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !199, !alias.scope !716
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !714
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.48.val, i64 %.48.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.48.val, ptr %i.a, align 8, !tbaa !149, !noalias !731
  store i64 %.48.val1, ptr %i.b, align 8, !tbaa !149, !noalias !731
  %.not.i = icmp ne i64 %.48.val, -9223372036854775808
  %.not97.i = icmp ne i64 %.48.val1, 9223372036854775807
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !199, !alias.scope !732
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !189, !noalias !731 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192, !noalias !731
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !192, !noalias !731 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !731
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !193, !noalias !731
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !731
  %i.k = load i64, ptr %i.i, align 8, !tbaa !193, !noalias !731
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !189, !noalias !731
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi i64 [ %i.jb, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %.090172.i = phi i64 [ %i.ja, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi ptr [ %i.iy, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 20 uses
  %i.o = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !731 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.o to i16 ; 7 uses
  %i.p = ashr i32 %i.o, 16                        ; 4 uses
  %sext.i = shl i32 %i.o, 16
  %i.q = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.s = icmp sgt i32 %i.p, 7
  br i1 %i.s, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.t = lshr i32 %i.p, 3
  %smax189.i = zext nneg i32 %i.t to i64          ; 2 uses
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i
  %i.u = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %op.rdx, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.u, %.preheader137.loopexit.i ] ; 4 uses
  %i.v = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.w = icmp slt i64 %.082.lcssa.i, %i.v
  br i1 %i.w, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader: ; preds = %.preheader137.i
  %xtraiter48 = and i64 %i.v, 3
  %i.x = and i16 %.sroa.0.0.extract.trunc.i, 3
  %lcmp.mod49.not = icmp eq i16 %i.x, 0
  br i1 %lcmp.mod49.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol
  %.284162.i.prol = phi i64 [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ], [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ] ; 2 uses
  %.287161.i.prol = phi i1 [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ], [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ], [ 0, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.aa = icmp slt i64 %i.z, %.48.val
  %i.ab = icmp sgt i64 %i.z, %.48.val1
  %spec.select128.i.prol = or i1 %i.aa, %i.ab
  %i.ac = or i1 %.287161.i.prol, %spec.select128.i.prol ; 3 uses
  %i.ad = add nuw nsw i64 %.284162.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter48
  br i1 %prol.iter.cmp.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol, !llvm.loop !721

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader
  %.lcssa44.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ]
  %.284162.i.unr = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ]
  %.287161.i.unr = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ]
  %i.ae = sub nsw i64 %.082.lcssa.i, %i.v
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.081158.i = phi i64 [ %i.aj, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %.082157.i = phi i64 [ %i.ai, %.preheader.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ false, %.preheader.preheader.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.082157.i ; 8 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %10 = load i64, ptr %i.ag, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %11 = icmp slt i64 %10, %.48.val
  %12 = icmp sgt i64 %10, %.48.val1
  %13 = load i64, ptr %3, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %14 = icmp slt i64 %13, %.48.val
  %15 = icmp sgt i64 %13, %.48.val1
  %16 = load i64, ptr %4, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %17 = icmp slt i64 %16, %.48.val
  %18 = icmp sgt i64 %16, %.48.val1
  %19 = load i64, ptr %5, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %20 = icmp slt i64 %19, %.48.val
  %21 = icmp sgt i64 %19, %.48.val1
  %22 = load i64, ptr %6, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %23 = icmp slt i64 %22, %.48.val
  %24 = icmp sgt i64 %22, %.48.val1
  %25 = load i64, ptr %7, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %26 = icmp slt i64 %25, %.48.val
  %27 = icmp sgt i64 %25, %.48.val1
  %28 = load i64, ptr %8, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %29 = icmp slt i64 %28, %.48.val
  %30 = icmp sgt i64 %28, %.48.val1
  %31 = load i64, ptr %9, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %32 = icmp slt i64 %31, %.48.val
  %33 = icmp sgt i64 %31, %.48.val1
  %34 = insertelement <8 x i1> poison, i1 %12, i64 0
  %35 = insertelement <8 x i1> %34, i1 %15, i64 1
  %36 = insertelement <8 x i1> %35, i1 %18, i64 2
  %37 = insertelement <8 x i1> %36, i1 %21, i64 3
  %38 = insertelement <8 x i1> %37, i1 %24, i64 4
  %39 = insertelement <8 x i1> %38, i1 %27, i64 5
  %40 = insertelement <8 x i1> %39, i1 %30, i64 6
  %41 = insertelement <8 x i1> %40, i1 %33, i64 7
  %42 = insertelement <8 x i1> poison, i1 %11, i64 0
  %43 = insertelement <8 x i1> %42, i1 %14, i64 1
  %44 = insertelement <8 x i1> %43, i1 %17, i64 2
  %45 = insertelement <8 x i1> %44, i1 %20, i64 3
  %46 = insertelement <8 x i1> %45, i1 %23, i64 4
  %47 = insertelement <8 x i1> %46, i1 %26, i64 5
  %48 = insertelement <8 x i1> %47, i1 %29, i64 6
  %49 = insertelement <8 x i1> %48, i1 %32, i64 7
  %50 = shufflevector <8 x i1> %41, <8 x i1> %49, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %51 = bitcast <16 x i1> %50 to i16
  %i.ah = icmp ne i16 %51, 0
  %op.rdx = or i1 %i.ah, %.085156.i               ; 2 uses
  %i.ai = add nuw nsw i64 %.082157.i, 8
  %i.aj = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.aj, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !722

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i
  %.284162.i = phi i64 [ %i.bh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.284162.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit ] ; 5 uses
  %.287161.i = phi i1 [ %i.bg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.287161.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.am = icmp slt i64 %i.al, %.48.val
  %i.an = icmp sgt i64 %i.al, %.48.val1
  %spec.select128.i = or i1 %i.am, %i.an
  %i.ao = or i1 %.287161.i, %spec.select128.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.as = icmp slt i64 %i.ar, %.48.val
  %i.at = icmp sgt i64 %i.ar, %.48.val1
  %spec.select128.i.1 = or i1 %i.as, %i.at
  %i.au = or i1 %i.ao, %spec.select128.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %.48.val
  %i.az = icmp sgt i64 %i.ax, %.48.val1
  %spec.select128.i.2 = or i1 %i.ay, %i.az
  %i.ba = or i1 %i.au, %spec.select128.i.2
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.be = icmp slt i64 %i.bd, %.48.val
  %i.bf = icmp sgt i64 %i.bd, %.48.val1
  %spec.select128.i.3 = or i1 %i.be, %i.bf
  %i.bg = or i1 %i.ba, %spec.select128.i.3        ; 2 uses
  %i.bh = add nuw nsw i64 %.284162.i, 4           ; 2 uses
  %exitcond191.not.i.3 = icmp eq i64 %i.bh, %i.v
  br i1 %exitcond191.not.i.3, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i, !llvm.loop !723

bb.d:                                             ; preds = %.lr.ph176.i
  %i.bi = icmp sgt i32 %i.p, 0
  br i1 %i.bi, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.bj = icmp sgt i32 %i.q, 7
  br i1 %i.bj, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.bk = lshr i32 %i.q, 3
  %i.bl = trunc i64 %.088173.i to i3              ; 7 uses
  %i.bm = trunc i64 %.088173.i to i8
  %i.bn = and i8 %i.bm, 7
  %i.bo = add i3 %i.bl, 1
  %i.bp = zext i3 %i.bo to i8
  %i.bq = add i3 %i.bl, 2
  %i.br = zext i3 %i.bq to i8
  %i.bs = add i3 %i.bl, 3
  %i.bt = zext i3 %i.bs to i8
  %i.bu = xor i3 %i.bl, -4
  %i.bv = zext i3 %i.bu to i8
  %i.bw = add i3 %i.bl, -3
  %i.bx = zext i3 %i.bw to i8
  %i.by = add i3 %i.bl, -2
  %i.bz = zext i3 %i.by to i8
  %i.ca = add i3 %i.bl, -1
  %i.cb = zext i3 %i.ca to i8
  %smax.i = zext nneg i32 %i.bk to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.cc = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %i.gv, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.cc, %.preheader139.loopexit.i ] ; 6 uses
  %i.cd = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.ce = icmp slt i64 %.076.lcssa.i, %i.cd
  br i1 %i.ce, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.cf = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.cf, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.076.lcssa.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.ci = add nsw i64 %.076.lcssa.i, %.088173.i
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !142, !noalias !731
  %i.cm = trunc i64 %.088173.i to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = icmp slt i64 %i.ch, %.48.val
  %i.cr = icmp sgt i64 %i.ch, %.48.val1
  %spec.select130.i.prol = or i1 %i.cq, %i.cr
  %i.cs = select i1 %i.cp, i1 %spec.select130.i.prol, i1 false
  %i.ct = or i1 %.3.lcssa.i, %i.cs                ; 2 uses
  %i.cu = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader
  %.lcssa43.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.ct, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.cu, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.ct, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %i.cv = add nsw i64 %i.cd, -1
  %i.cw = icmp eq i64 %.076.lcssa.i, %i.cv
  br i1 %i.cw, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.gx, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.gw, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %i.gv, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.076147.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.cz = add nsw i64 %.076147.i, %.088173.i
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !142, !noalias !731
  %i.dd = lshr i8 %i.dc, %i.bn
  %i.de = trunc i8 %i.dd to i1
  %i.df = icmp slt i64 %i.cy, %.48.val
  %i.dg = icmp sgt i64 %i.cy, %.48.val1
  %spec.select129.i = or i1 %i.df, %i.dg
  %i.dh = select i1 %i.de, i1 %spec.select129.i, i1 false
  %i.di = or i1 %.3146.i, %i.dh
  %i.dj = or disjoint i64 %.076147.i, 1           ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.dm = add nsw i64 %i.dj, %.088173.i
  %i.dn = lshr i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !142, !noalias !731
  %i.dq = lshr i8 %i.dp, %i.bp
  %i.dr = trunc i8 %i.dq to i1
  %i.ds = icmp slt i64 %i.dl, %.48.val
  %i.dt = icmp sgt i64 %i.dl, %.48.val1
  %spec.select129.1.i = or i1 %i.ds, %i.dt
  %i.du = select i1 %i.dr, i1 %spec.select129.1.i, i1 false
  %i.dv = or i1 %i.di, %i.du
  %i.dw = or disjoint i64 %.076147.i, 2           ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.dz = add nsw i64 %i.dw, %.088173.i
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !142, !noalias !731
  %i.ed = lshr i8 %i.ec, %i.br
  %i.ee = trunc i8 %i.ed to i1
  %i.ef = icmp slt i64 %i.dy, %.48.val
  %i.eg = icmp sgt i64 %i.dy, %.48.val1
  %spec.select129.2.i = or i1 %i.ef, %i.eg
  %i.eh = select i1 %i.ee, i1 %spec.select129.2.i, i1 false
  %i.ei = or i1 %i.dv, %i.eh
  %i.ej = or disjoint i64 %.076147.i, 3           ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.em = add nsw i64 %i.ej, %.088173.i
  %i.en = lshr i64 %i.em, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !142, !noalias !731
  %i.eq = lshr i8 %i.ep, %i.bt
  %i.er = trunc i8 %i.eq to i1
  %i.es = icmp slt i64 %i.el, %.48.val
  %i.et = icmp sgt i64 %i.el, %.48.val1
  %spec.select129.3.i = or i1 %i.es, %i.et
  %i.eu = select i1 %i.er, i1 %spec.select129.3.i, i1 false
  %i.ev = or i1 %i.ei, %i.eu
  %i.ew = or disjoint i64 %.076147.i, 4           ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.088173.i
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !142, !noalias !731
  %i.fd = lshr i8 %i.fc, %i.bv
  %i.fe = trunc i8 %i.fd to i1
  %i.ff = icmp slt i64 %i.ey, %.48.val
  %i.fg = icmp sgt i64 %i.ey, %.48.val1
  %spec.select129.4.i = or i1 %i.ff, %i.fg
  %i.fh = select i1 %i.fe, i1 %spec.select129.4.i, i1 false
  %i.fi = or i1 %i.ev, %i.fh
  %i.fj = or disjoint i64 %.076147.i, 5           ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !149, !noalias !731 ; 2 uses
  %i.fm = add nsw i64 %i.fj, %.088173.i
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !142, !noalias !731
  %i.fq = lshr i8 %i.fp, %i.bx
  %i.fr = trunc i8 %i.fq to i1
  %i.fs = icmp slt i64 %i.fl, %.48.val
  %i.ft = icmp sgt i64 %i.fl, %.48.val1
  %spec.select129.5.i = or i1 %i.fs, %i.ft
  %i.fu = select i1 %i.fr, i1 %spec.select129.5.i, i1 false
  %i.fv = or i1 %i.fi, %i.fu
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.rg = select i1 %i.rd, i1 %spec.select130.i.1, i1 false
  %i.rh = or i1 %i.qs, %i.rg                      ; 2 uses
  %i.ri = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.ri, %i.mq
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i, !llvm.loop !784

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.le, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ], [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !229

bb.e:                                             ; preds = %.loopexit.i
  %i.rj = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !790
  %i.rk = icmp sgt i64 %i.rj, 0
  %i.rl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.rk, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ry, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.rm = add nsw i64 %.073167.i, %.088173.i      ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !142, !noalias !790
  %i.rq = trunc i64 %i.rm to i8
  %i.rr = and i8 %i.rq, 7
  %i.rs = lshr i8 %i.rp, %i.rr
  %i.rt = trunc i8 %i.rs to i1
  br i1 %i.rt, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.092169.i, i64 %.073167.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !143, !noalias !790 ; 3 uses
  %i.rw = icmp ult i32 %i.rv, %.44.val
  %i.rx = icmp ugt i32 %i.rv, %.44.val1
  %or.cond131.i = or i1 %i.rw, %i.rx
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE0_clEj(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.rv)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ry = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ry, %i.rl
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !785

bb.g:                                             ; preds = %.lr.ph.i
  %i.rz = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.rz, %i.rl
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !786

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.rz, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.092169.i, i64 %.0165.i
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !143, !noalias !790 ; 3 uses
  %i.sc = icmp ult i32 %i.sb, %.44.val
  %i.sd = icmp ugt i32 %i.sb, %.44.val1
  %or.cond132.i = or i1 %i.sc, %i.sd
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE0_clEj(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.sb)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.se = sext i32 %i.y to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.092169.i, i64 %i.se
  %i.sg = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.sh = add nsw i64 %.090172.i, %i.sg           ; 2 uses
  %i.si = add nsw i64 %.088173.i, %i.sg
  %i.sj = load i64, ptr %i.i, align 8, !tbaa !193, !noalias !790
  %i.sk = icmp slt i64 %i.sh, %i.sj
  br i1 %i.sk, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !787

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !199, !alias.scope !792
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !790
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.48.val, i64 %.48.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.48.val, ptr %i.a, align 8, !tbaa !149, !noalias !807
  store i64 %.48.val1, ptr %i.b, align 8, !tbaa !149, !noalias !807
  %.not.i = icmp ne i64 %.48.val, 0
  %.not97.i = icmp ne i64 %.48.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !199, !alias.scope !808
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !189, !noalias !807 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192, !noalias !807
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !192, !noalias !807 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !807
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !193, !noalias !807
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !807
  %i.k = load i64, ptr %i.i, align 8, !tbaa !193, !noalias !807
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !189, !noalias !807
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi i64 [ %i.jn, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %.090172.i = phi i64 [ %i.jm, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi ptr [ %i.jk, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 20 uses
  %i.o = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !807 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.o to i16 ; 7 uses
  %i.p = ashr i32 %i.o, 16                        ; 4 uses
  %sext.i = shl i32 %i.o, 16
  %i.q = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.s = icmp sgt i32 %i.p, 7
  br i1 %i.s, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.t = lshr i32 %i.p, 3
  %smax189.i = zext nneg i32 %i.t to i64          ; 2 uses
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i
  %i.u = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %op.rdx, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.u, %.preheader137.loopexit.i ] ; 4 uses
  %i.v = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.w = icmp slt i64 %.082.lcssa.i, %i.v
  br i1 %i.w, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader: ; preds = %.preheader137.i
  %xtraiter48 = and i64 %i.v, 3
  %i.x = and i16 %.sroa.0.0.extract.trunc.i, 3
  %lcmp.mod49.not = icmp eq i16 %i.x, 0
  br i1 %lcmp.mod49.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol
  %.284162.i.prol = phi i64 [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ], [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ] ; 2 uses
  %.287161.i.prol = phi i1 [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ], [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ], [ 0, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.48.val
  %i.ab = icmp ugt i64 %i.z, %.48.val1
  %spec.select128.i.prol = or i1 %i.aa, %i.ab
  %i.ac = or i1 %.287161.i.prol, %spec.select128.i.prol ; 3 uses
  %i.ad = add nuw nsw i64 %.284162.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter48
  br i1 %prol.iter.cmp.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol, !llvm.loop !797

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader
  %.lcssa44.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ]
  %.284162.i.unr = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ]
  %.287161.i.unr = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ]
  %i.ae = sub nsw i64 %.082.lcssa.i, %i.v
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.081158.i = phi i64 [ %i.av, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %.082157.i = phi i64 [ %i.au, %.preheader.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ false, %.preheader.preheader.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.082157.i ; 8 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %9 = load i64, ptr %i.ag, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %10 = icmp ult i64 %9, %.48.val
  %11 = icmp ugt i64 %9, %.48.val1
  %i.ai = load i64, ptr %3, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %.48.val
  %i.ak = icmp ugt i64 %i.ai, %.48.val1
  %12 = load i64, ptr %4, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %13 = icmp ult i64 %12, %.48.val
  %14 = icmp ugt i64 %12, %.48.val1
  %i.al = load i64, ptr %5, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.am = icmp ult i64 %i.al, %.48.val
  %i.an = icmp ugt i64 %i.al, %.48.val1
  %15 = load i64, ptr %6, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %16 = icmp ult i64 %15, %.48.val
  %17 = icmp ugt i64 %15, %.48.val1
  %i.ao = load i64, ptr %7, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %.48.val
  %i.aq = icmp ugt i64 %i.ao, %.48.val1
  %18 = load i64, ptr %8, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %19 = icmp ult i64 %18, %.48.val
  %20 = icmp ugt i64 %18, %.48.val1
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.as = icmp ult i64 %i.ar, %.48.val
  %i.at = icmp ugt i64 %i.ar, %.48.val1
  %21 = insertelement <8 x i1> poison, i1 %11, i64 0
  %22 = insertelement <8 x i1> %21, i1 %i.ak, i64 1
  %23 = insertelement <8 x i1> %22, i1 %14, i64 2
  %24 = insertelement <8 x i1> %23, i1 %i.an, i64 3
  %25 = insertelement <8 x i1> %24, i1 %17, i64 4
  %26 = insertelement <8 x i1> %25, i1 %i.aq, i64 5
  %27 = insertelement <8 x i1> %26, i1 %20, i64 6
  %28 = insertelement <8 x i1> %27, i1 %i.at, i64 7
  %29 = insertelement <8 x i1> poison, i1 %10, i64 0
  %30 = insertelement <8 x i1> %29, i1 %i.aj, i64 1
  %31 = insertelement <8 x i1> %30, i1 %13, i64 2
  %32 = insertelement <8 x i1> %31, i1 %i.am, i64 3
  %33 = insertelement <8 x i1> %32, i1 %16, i64 4
  %34 = insertelement <8 x i1> %33, i1 %i.ap, i64 5
  %35 = insertelement <8 x i1> %34, i1 %19, i64 6
  %36 = insertelement <8 x i1> %35, i1 %i.as, i64 7
  %37 = shufflevector <8 x i1> %28, <8 x i1> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %38 = bitcast <16 x i1> %37 to i16
  %39 = icmp ne i16 %38, 0
  %op.rdx = or i1 %39, %.085156.i                 ; 2 uses
  %i.au = add nuw nsw i64 %.082157.i, 8
  %i.av = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.av, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !798

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i
  %.284162.i = phi i64 [ %i.bt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.284162.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit ] ; 5 uses
  %.287161.i = phi i1 [ %i.bs, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.287161.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %.48.val
  %i.az = icmp ugt i64 %i.ax, %.48.val1
  %spec.select128.i = or i1 %i.ay, %i.az
  %i.ba = or i1 %.287161.i, %spec.select128.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.48.val
  %i.bf = icmp ugt i64 %i.bd, %.48.val1
  %spec.select128.i.1 = or i1 %i.be, %i.bf
  %i.bg = or i1 %i.ba, %spec.select128.i.1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.48.val
  %i.bl = icmp ugt i64 %i.bj, %.48.val1
  %spec.select128.i.2 = or i1 %i.bk, %i.bl
  %i.bm = or i1 %i.bg, %spec.select128.i.2
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.284162.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.48.val
  %i.br = icmp ugt i64 %i.bp, %.48.val1
  %spec.select128.i.3 = or i1 %i.bq, %i.br
  %i.bs = or i1 %i.bm, %spec.select128.i.3        ; 2 uses
  %i.bt = add nuw nsw i64 %.284162.i, 4           ; 2 uses
  %exitcond191.not.i.3 = icmp eq i64 %i.bt, %i.v
  br i1 %exitcond191.not.i.3, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i, !llvm.loop !799

bb.d:                                             ; preds = %.lr.ph176.i
  %i.bu = icmp sgt i32 %i.p, 0
  br i1 %i.bu, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.bv = icmp sgt i32 %i.q, 7
  br i1 %i.bv, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.bw = lshr i32 %i.q, 3
  %i.bx = trunc i64 %.088173.i to i3              ; 7 uses
  %i.by = trunc i64 %.088173.i to i8
  %i.bz = and i8 %i.by, 7
  %i.ca = add i3 %i.bx, 1
  %i.cb = zext i3 %i.ca to i8
  %i.cc = add i3 %i.bx, 2
  %i.cd = zext i3 %i.cc to i8
  %i.ce = add i3 %i.bx, 3
  %i.cf = zext i3 %i.ce to i8
  %i.cg = xor i3 %i.bx, -4
  %i.ch = zext i3 %i.cg to i8
  %i.ci = add i3 %i.bx, -3
  %i.cj = zext i3 %i.ci to i8
  %i.ck = add i3 %i.bx, -2
  %i.cl = zext i3 %i.ck to i8
  %i.cm = add i3 %i.bx, -1
  %i.cn = zext i3 %i.cm to i8
  %smax.i = zext nneg i32 %i.bw to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.co = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %i.hh, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.co, %.preheader139.loopexit.i ] ; 6 uses
  %i.cp = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.cq = icmp slt i64 %.076.lcssa.i, %i.cp
  br i1 %i.cq, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.cr = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.cr, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.076.lcssa.i
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.cu = add nsw i64 %.076.lcssa.i, %.088173.i
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !142, !noalias !807
  %i.cy = trunc i64 %.088173.i to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  %i.dc = icmp ult i64 %i.ct, %.48.val
  %i.dd = icmp ugt i64 %i.ct, %.48.val1
  %spec.select130.i.prol = or i1 %i.dc, %i.dd
  %i.de = select i1 %i.db, i1 %spec.select130.i.prol, i1 false
  %i.df = or i1 %.3.lcssa.i, %i.de                ; 2 uses
  %i.dg = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader
  %.lcssa43.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.df, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.dg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.df, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %i.dh = add nsw i64 %i.cp, -1
  %i.di = icmp eq i64 %.076.lcssa.i, %i.dh
  br i1 %i.di, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.hj, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.hi, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %i.hh, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %.076147.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.dl = add nsw i64 %.076147.i, %.088173.i
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !142, !noalias !807
  %i.dp = lshr i8 %i.do, %i.bz
  %i.dq = trunc i8 %i.dp to i1
  %i.dr = icmp ult i64 %i.dk, %.48.val
  %i.ds = icmp ugt i64 %i.dk, %.48.val1
  %spec.select129.i = or i1 %i.dr, %i.ds
  %i.dt = select i1 %i.dq, i1 %spec.select129.i, i1 false
  %i.du = or i1 %.3146.i, %i.dt
  %i.dv = or disjoint i64 %.076147.i, 1           ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.dy = add nsw i64 %i.dv, %.088173.i
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !142, !noalias !807
  %i.ec = lshr i8 %i.eb, %i.cb
  %i.ed = trunc i8 %i.ec to i1
  %i.ee = icmp ult i64 %i.dx, %.48.val
  %i.ef = icmp ugt i64 %i.dx, %.48.val1
  %spec.select129.1.i = or i1 %i.ee, %i.ef
  %i.eg = select i1 %i.ed, i1 %spec.select129.1.i, i1 false
  %i.eh = or i1 %i.du, %i.eg
  %i.ei = or disjoint i64 %.076147.i, 2           ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.el = add nsw i64 %i.ei, %.088173.i
  %i.em = lshr i64 %i.el, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !142, !noalias !807
  %i.ep = lshr i8 %i.eo, %i.cd
  %i.eq = trunc i8 %i.ep to i1
  %i.er = icmp ult i64 %i.ek, %.48.val
  %i.es = icmp ugt i64 %i.ek, %.48.val1
  %spec.select129.2.i = or i1 %i.er, %i.es
  %i.et = select i1 %i.eq, i1 %spec.select129.2.i, i1 false
  %i.eu = or i1 %i.eh, %i.et
  %i.ev = or disjoint i64 %.076147.i, 3           ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.ey = add nsw i64 %i.ev, %.088173.i
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !142, !noalias !807
  %i.fc = lshr i8 %i.fb, %i.cf
  %i.fd = trunc i8 %i.fc to i1
  %i.fe = icmp ult i64 %i.ex, %.48.val
  %i.ff = icmp ugt i64 %i.ex, %.48.val1
  %spec.select129.3.i = or i1 %i.fe, %i.ff
  %i.fg = select i1 %i.fd, i1 %spec.select129.3.i, i1 false
  %i.fh = or i1 %i.eu, %i.fg
  %i.fi = or disjoint i64 %.076147.i, 4           ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.fl = add nsw i64 %i.fi, %.088173.i
  %i.fm = lshr i64 %i.fl, 3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !142, !noalias !807
  %i.fp = lshr i8 %i.fo, %i.ch
  %i.fq = trunc i8 %i.fp to i1
  %i.fr = icmp ult i64 %i.fk, %.48.val
  %i.fs = icmp ugt i64 %i.fk, %.48.val1
  %spec.select129.4.i = or i1 %i.fr, %i.fs
  %i.ft = select i1 %i.fq, i1 %spec.select129.4.i, i1 false
  %i.fu = or i1 %i.fh, %i.ft
  %i.fv = or disjoint i64 %.076147.i, 5           ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.092169.i, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !149, !noalias !807 ; 2 uses
  %i.fy = add nsw i64 %i.fv, %.088173.i
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !142, !noalias !807
  %i.gc = lshr i8 %i.gb, %i.cj
  %i.gd = trunc i8 %i.gc to i1
  %i.ge = icmp ult i64 %i.fx, %.48.val
  %i.gf = icmp ugt i64 %i.fx, %.48.val1
  %spec.select129.5.i = or i1 %i.ge, %i.gf
  %i.gg = select i1 %i.gd, i1 %spec.select129.5.i, i1 false
  %i.gh = or i1 %i.fu, %i.gg
  %i.gi = or disjoint i64 %.076147.i, 6           ; 2 uses
end_hunk_1
