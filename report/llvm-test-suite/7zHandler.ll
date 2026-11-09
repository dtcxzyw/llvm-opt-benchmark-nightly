Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zHandler?download=true
inline.NumInlined: 296
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN8NArchive3N7z8CHandler11GetPropertyEjjP14tagPROPVARIANT:bb.a

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.px) #27
  br label %_ZN11CStringBaseIwED2Ev.exit199

_ZN11CStringBaseIwED2Ev.exit199:                  ; preds = %bb.bj, %bb.bi, %bb.bh
  %.pn116 = phi { ptr, i32 } [ %i.pv, %bb.bh ], [ %i.pw, %bb.bi ], [ %i.pw, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZN11CStringBaseIwED2Ev.exit239

bb.bk:                                            ; preds = %bb.aw
  %i.pz = load i32, ptr %i.ib, align 8, !tbaa !115 ; 3 uses
  %i.qa = load i32, ptr %i.gr, align 4, !tbaa !114 ; 6 uses
  %i.qb = load i32, ptr %i.gq, align 8, !tbaa !115 ; 3 uses
  %i.qc = xor i32 %i.qb, -1
  %i.qd = add i32 %i.qa, %i.qc                    ; 3 uses
  %.not.i.i200 = icmp sgt i32 %i.pz, %i.qd
  br i1 %.not.i.i200, label %bb.bl, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i201

bb.bl:                                            ; preds = %bb.bk
  %i.qe = icmp sgt i32 %i.qa, 64
  %i.qf = lshr i32 %i.qa, 1
  %i.qg = icmp sgt i32 %i.qa, 8
  %..i.i205 = select i1 %i.qg, i32 16, i32 4
  %.0.i.i206 = select i1 %i.qe, i32 %i.qf, i32 %..i.i205 ; 2 uses
  %i.qh = add nsw i32 %.0.i.i206, %i.qd
  %i.qi = icmp slt i32 %i.qh, %i.pz
  %i.qj = sub nsw i32 %i.pz, %i.qd
  %.1.i.i207 = select i1 %i.qi, i32 %i.qj, i32 %.0.i.i206
  %i.qk = add nsw i32 %.1.i.i207, %i.qa           ; 2 uses
  %i.ql = add nsw i32 %i.qk, 1                    ; 3 uses
  %i.qm = icmp eq i32 %i.ql, %i.qa
  br i1 %i.qm, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i201, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qn = zext nneg i32 %i.ql to i64
  %i.qo = icmp slt i32 %i.qk, -1
  %i.qp = shl nuw nsw i64 %i.qn, 2
  %i.qq = select i1 %i.qo, i64 -1, i64 %i.qp
  %i.qr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qq) #26
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc219:                                        ; preds = %bb.bm
  %i.qs = ptrtoaddr ptr %i.qr to i64
  %i.qt = load i32, ptr %i.gr, align 4, !tbaa !114
  %i.qu = icmp sgt i32 %i.qt, 0
  %.pre12.i.i208 = load i32, ptr %i.gq, align 8, !tbaa !115 ; 5 uses
  br i1 %i.qu, label %.preheader.i.i.i209, label %bb.bn

.preheader.i.i.i209:                              ; preds = %.noexc219
  %i.qv = icmp sgt i32 %.pre12.i.i208, 0
  %.pre.i.i.i210 = load ptr, ptr %9, align 8, !tbaa !116 ; 9 uses
  br i1 %i.qv, label %.lr.ph.i.i.i214, label %._crit_edge.i.i.i211

.lr.ph.i.i.i214:                                  ; preds = %.preheader.i.i.i209
  %.pre.i.i.i210781 = ptrtoaddr ptr %.pre.i.i.i210 to i64
  %wide.trip.count.i.i.i215 = zext nneg i32 %.pre12.i.i208 to i64 ; 5 uses
  %min.iters.check783 = icmp ult i32 %.pre12.i.i208, 8
  %i.qw = sub i64 %.pre.i.i.i210781, %i.qs
  %diff.check785 = icmp ugt i64 %i.qw, -32
  %or.cond886 = select i1 %min.iters.check783, i1 true, i1 %diff.check785
  br i1 %or.cond886, label %scalar.ph782.preheader, label %vector.ph786

vector.ph786:                                     ; preds = %.lr.ph.i.i.i214
  %n.vec787 = and i64 %wide.trip.count.i.i.i215, 2147483640 ; 3 uses
  br label %vector.body788

vector.body788:                                   ; preds = %vector.body788, %vector.ph786
  %index789 = phi i64 [ 0, %vector.ph786 ], [ %index.next792, %vector.body788 ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i210, i64 %index789 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %wide.load790 = load <4 x i32>, ptr %i.qx, align 4, !tbaa !107
  %wide.load791 = load <4 x i32>, ptr %i.qy, align 4, !tbaa !107
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %index789 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <4 x i32> %wide.load790, ptr %i.qz, align 4, !tbaa !107
  store <4 x i32> %wide.load791, ptr %i.ra, align 4, !tbaa !107
  %index.next792 = add nuw i64 %index789, 8       ; 2 uses
  %i.rb = icmp eq i64 %index.next792, %n.vec787
  br i1 %i.rb, label %middle.block793, label %vector.body788, !llvm.loop !190

middle.block793:                                  ; preds = %vector.body788
  %cmp.n794 = icmp eq i64 %n.vec787, %wide.trip.count.i.i.i215
  br i1 %cmp.n794, label %._crit_edge.thread.i.i.i212, label %scalar.ph782.preheader

scalar.ph782.preheader:                           ; preds = %.lr.ph.i.i.i214, %middle.block793
  %indvars.iv.i.i.i216.ph = phi i64 [ 0, %.lr.ph.i.i.i214 ], [ %n.vec787, %middle.block793 ] ; 3 uses
  %xtraiter917 = and i64 %wide.trip.count.i.i.i215, 3 ; 2 uses
  %lcmp.mod918.not = icmp eq i64 %xtraiter917, 0
  br i1 %lcmp.mod918.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol

scalar.ph782.prol:                                ; preds = %scalar.ph782.preheader, %scalar.ph782.prol
  %indvars.iv.i.i.i216.prol = phi i64 [ %indvars.iv.next.i.i.i217.prol, %scalar.ph782.prol ], [ %indvars.iv.i.i.i216.ph, %scalar.ph782.preheader ] ; 3 uses
  %prol.iter919 = phi i64 [ %prol.iter919.next, %scalar.ph782.prol ], [ 0, %scalar.ph782.preheader ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i210, i64 %indvars.iv.i.i.i216.prol
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !107
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.i.i.i216.prol
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !107
  %indvars.iv.next.i.i.i217.prol = add nuw nsw i64 %indvars.iv.i.i.i216.prol, 1 ; 2 uses
  %prol.iter919.next = add i64 %prol.iter919, 1   ; 2 uses
  %prol.iter919.cmp.not = icmp eq i64 %prol.iter919.next, %xtraiter917
  br i1 %prol.iter919.cmp.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol, !llvm.loop !191

scalar.ph782.prol.loopexit:                       ; preds = %scalar.ph782.prol, %scalar.ph782.preheader
  %indvars.iv.i.i.i216.unr = phi i64 [ %indvars.iv.i.i.i216.ph, %scalar.ph782.preheader ], [ %indvars.iv.next.i.i.i217.prol, %scalar.ph782.prol ]
  %i.rf = sub nsw i64 %indvars.iv.i.i.i216.ph, %wide.trip.count.i.i.i215
  %i.rg = icmp ugt i64 %i.rf, -4
  br i1 %i.rg, label %._crit_edge.thread.i.i.i212, label %scalar.ph782

._crit_edge.i.i.i211:                             ; preds = %.preheader.i.i.i209
  %i.rh = icmp eq ptr %.pre.i.i.i210, null
  br i1 %i.rh, label %bb.bn, label %._crit_edge.thread.i.i.i212

scalar.ph782:                                     ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782
  %indvars.iv.i.i.i216 = phi i64 [ %indvars.iv.next.i.i.i217.3, %scalar.ph782 ], [ %indvars.iv.i.i.i216.unr, %scalar.ph782.prol.loopexit ] ; 6 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i210, i64 %indvars.iv.i.i.i216
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !107
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.i.i.i216
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !107
  %indvars.iv.next.i.i.i217 = add nuw nsw i64 %indvars.iv.i.i.i216, 1 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i210, i64 %indvars.iv.next.i.i.i217
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !107
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.next.i.i.i217
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !107
  %indvars.iv.next.i.i.i217.1 = add nuw nsw i64 %indvars.iv.i.i.i216, 2 ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i210, i64 %indvars.iv.next.i.i.i217.1
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !107
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.next.i.i.i217.1
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !107
  %indvars.iv.next.i.i.i217.2 = add nuw nsw i64 %indvars.iv.i.i.i216, 3 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i210, i64 %indvars.iv.next.i.i.i217.2
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !107
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.next.i.i.i217.2
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !107
  %indvars.iv.next.i.i.i217.3 = add nuw nsw i64 %indvars.iv.i.i.i216, 4 ; 2 uses
  %exitcond.not.i.i.i218.3 = icmp eq i64 %indvars.iv.next.i.i.i217.3, %wide.trip.count.i.i.i215
  br i1 %exitcond.not.i.i.i218.3, label %._crit_edge.thread.i.i.i212, label %scalar.ph782, !llvm.loop !192

._crit_edge.thread.i.i.i212:                      ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782, %middle.block793, %._crit_edge.i.i.i211
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i210) #27
  %.pre.i.i213 = load i32, ptr %i.gq, align 8, !tbaa !115
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.thread.i.i.i212, %._crit_edge.i.i.i211, %.noexc219
  %i.ru = phi i32 [ %.pre.i.i213, %._crit_edge.thread.i.i.i212 ], [ %.pre12.i.i208, %._crit_edge.i.i.i211 ], [ %.pre12.i.i208, %.noexc219 ] ; 2 uses
  store ptr %i.qr, ptr %9, align 8, !tbaa !116
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rv
  store i32 0, ptr %i.rw, align 4, !tbaa !107
  store i32 %i.ql, ptr %i.gr, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i201

_ZN11CStringBaseIwE10GrowLengthEi.exit.i201:      ; preds = %bb.bn, %bb.bl, %bb.bk
  %i.rx = phi i32 [ %i.qb, %bb.bk ], [ %i.qb, %bb.bl ], [ %i.ru, %bb.bn ] ; 2 uses
  %i.ry = load ptr, ptr %9, align 8, !tbaa !116
  %i.rz = sext i32 %i.rx to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.rz
  %i.sb = load ptr, ptr %10, align 8, !tbaa !116
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i201
  %.04.i.i202 = phi ptr [ %i.sa, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i201 ], [ %i.se, %bb.bo ] ; 2 uses
  %.0.i4.i203 = phi ptr [ %i.sb, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i201 ], [ %i.sc, %bb.bo ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.i4.i203, i64 4
  %i.sd = load i32, ptr %.0.i4.i203, align 4, !tbaa !107 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.04.i.i202, i64 4
  store i32 %i.sd, ptr %.04.i.i202, align 4, !tbaa !107
  %.not.i5.i204 = icmp eq i32 %i.sd, 0
  br i1 %.not.i5.i204, label %bb.bp, label %bb.bo, !llvm.loop !0

bb.bp:                                            ; preds = %bb.bo
  %i.sf = load i32, ptr %i.ib, align 8, !tbaa !115
  %i.sg = add nsw i32 %i.sf, %i.rx
  store i32 %i.sg, ptr %i.gq, align 8, !tbaa !115
  %i.sh = load i64, ptr %i.ip, align 8, !tbaa !124
  switch i64 %i.sh, label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split [
    i64 3, label %bb.bq
    i64 196865, label %bb.ca
    i64 33, label %bb.cl
    i64 197633, label %bb.cw
    i64 116459265, label %bb.dw
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.si = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !245
  %i.sk = icmp eq i64 %i.sj, 1
  br i1 %i.sk, label %bb.br, label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

bb.br:                                            ; preds = %bb.bq
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !125
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !126
  %i.so = zext i8 %i.sn to i64
  %i.sp = add nuw nsw i64 %i.so, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !246
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.sp, ptr noundef nonnull %i.c)
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %bb.br
  %wcslen.i.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c), !noalias !246
  %i.sq = trunc i64 %wcslen.i.i.i to i32          ; 5 uses
  %i.sr = add nsw i32 %i.sq, 1                    ; 5 uses
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %._crit_edge.i.i.i221

._crit_edge.i.i.i221:                             ; preds = %.noexc222
  %i.st = zext nneg i32 %i.sr to i64
  %i.su = icmp slt i32 %i.sq, -1
  %i.sv = shl nuw nsw i64 %i.st, 2
  %i.sw = select i1 %i.su, i64 -1, i64 %i.sv
  %i.sx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sw) #26
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc223:                                        ; preds = %._crit_edge.i.i.i221
  store i32 0, ptr %i.sx, align 4, !tbaa !107, !noalias !246
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc223, %.noexc222
  %.sroa.0469.0 = phi ptr [ null, %.noexc222 ], [ %i.sx, %.noexc223 ] ; 6 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %.sroa.0469.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ta, %bb.bs ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.sy, %bb.bs ] ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.sz = load i32, ptr %.0.i.i.i, align 4, !tbaa !107, !noalias !246 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.sz, ptr %.04.i.i.i, align 4, !tbaa !107, !noalias !246
  %.not.i.i.i = icmp eq i32 %i.sz, 0
  br i1 %.not.i.i.i, label %bb.bt, label %bb.bs, !llvm.loop !0

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !246
  store i32 0, ptr %i.id, align 8, !tbaa !115
  %i.tb = load ptr, ptr %11, align 8, !tbaa !116  ; 2 uses
  store i32 0, ptr %i.tb, align 4, !tbaa !107
  %i.tc = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.td = icmp eq i32 %i.sr, %i.tc
  br i1 %i.td, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.te = zext nneg i32 %i.sr to i64
  %i.tf = icmp slt i32 %i.sq, -1
  %i.tg = shl nuw nsw i64 %i.te, 2
  %i.th = select i1 %i.tf, i64 -1, i64 %i.tg
  %i.ti = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.th) #26
          to label %.noexc237 unwind label %bb.by ; 10 uses

.noexc237:                                        ; preds = %bb.bu
  %i.tj = ptrtoaddr ptr %i.ti to i64
  %i.tk = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.tl = icmp sgt i32 %i.tk, 0
  %.pre7.i = load i32, ptr %i.id, align 8, !tbaa !115 ; 5 uses
  br i1 %i.tl, label %.preheader.i.i227, label %bb.bv

.preheader.i.i227:                                ; preds = %.noexc237
  %i.tm = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i228 = load ptr, ptr %11, align 8, !tbaa !116 ; 9 uses
  br i1 %i.tm, label %.lr.ph.i.i232, label %._crit_edge.i.i229

.lr.ph.i.i232:                                    ; preds = %.preheader.i.i227
  %.pre.i.i228655 = ptrtoaddr ptr %.pre.i.i228 to i64
  %wide.trip.count.i.i233 = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check657 = icmp ult i32 %.pre7.i, 8
  %i.tn = sub i64 %.pre.i.i228655, %i.tj
  %diff.check659 = icmp ugt i64 %i.tn, -32
  %or.cond887 = select i1 %min.iters.check657, i1 true, i1 %diff.check659
  br i1 %or.cond887, label %scalar.ph656.preheader, label %vector.ph660

vector.ph660:                                     ; preds = %.lr.ph.i.i232
  %n.vec661 = and i64 %wide.trip.count.i.i233, 2147483640 ; 3 uses
  br label %vector.body662

vector.body662:                                   ; preds = %vector.body662, %vector.ph660
  %index663 = phi i64 [ 0, %vector.ph660 ], [ %index.next666, %vector.body662 ] ; 3 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i228, i64 %index663 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %wide.load664 = load <4 x i32>, ptr %i.to, align 4, !tbaa !107
  %wide.load665 = load <4 x i32>, ptr %i.tp, align 4, !tbaa !107
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %index663 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store <4 x i32> %wide.load664, ptr %i.tq, align 4, !tbaa !107
  store <4 x i32> %wide.load665, ptr %i.tr, align 4, !tbaa !107
  %index.next666 = add nuw i64 %index663, 8       ; 2 uses
  %i.ts = icmp eq i64 %index.next666, %n.vec661
  br i1 %i.ts, label %middle.block667, label %vector.body662, !llvm.loop !195

middle.block667:                                  ; preds = %vector.body662
  %cmp.n668 = icmp eq i64 %n.vec661, %wide.trip.count.i.i233
  br i1 %cmp.n668, label %._crit_edge.thread.i.i230, label %scalar.ph656.preheader

scalar.ph656.preheader:                           ; preds = %.lr.ph.i.i232, %middle.block667
  %indvars.iv.i.i234.ph = phi i64 [ 0, %.lr.ph.i.i232 ], [ %n.vec661, %middle.block667 ] ; 3 uses
  %xtraiter938 = and i64 %wide.trip.count.i.i233, 3 ; 2 uses
  %lcmp.mod939.not = icmp eq i64 %xtraiter938, 0
  br i1 %lcmp.mod939.not, label %scalar.ph656.prol.loopexit, label %scalar.ph656.prol

scalar.ph656.prol:                                ; preds = %scalar.ph656.preheader, %scalar.ph656.prol
  %indvars.iv.i.i234.prol = phi i64 [ %indvars.iv.next.i.i235.prol, %scalar.ph656.prol ], [ %indvars.iv.i.i234.ph, %scalar.ph656.preheader ] ; 3 uses
  %prol.iter940 = phi i64 [ %prol.iter940.next, %scalar.ph656.prol ], [ 0, %scalar.ph656.preheader ]
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i228, i64 %indvars.iv.i.i234.prol
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !107
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.i.i234.prol
  store i32 %i.tu, ptr %i.tv, align 4, !tbaa !107
  %indvars.iv.next.i.i235.prol = add nuw nsw i64 %indvars.iv.i.i234.prol, 1 ; 2 uses
  %prol.iter940.next = add i64 %prol.iter940, 1   ; 2 uses
  %prol.iter940.cmp.not = icmp eq i64 %prol.iter940.next, %xtraiter938
  br i1 %prol.iter940.cmp.not, label %scalar.ph656.prol.loopexit, label %scalar.ph656.prol, !llvm.loop !196

scalar.ph656.prol.loopexit:                       ; preds = %scalar.ph656.prol, %scalar.ph656.preheader
  %indvars.iv.i.i234.unr = phi i64 [ %indvars.iv.i.i234.ph, %scalar.ph656.preheader ], [ %indvars.iv.next.i.i235.prol, %scalar.ph656.prol ]
  %i.tw = sub nsw i64 %indvars.iv.i.i234.ph, %wide.trip.count.i.i233
  %i.tx = icmp ugt i64 %i.tw, -4
  br i1 %i.tx, label %._crit_edge.thread.i.i230, label %scalar.ph656

._crit_edge.i.i229:                               ; preds = %.preheader.i.i227
  %i.ty = icmp eq ptr %.pre.i.i228, null
  br i1 %i.ty, label %bb.bv, label %._crit_edge.thread.i.i230

scalar.ph656:                                     ; preds = %scalar.ph656.prol.loopexit, %scalar.ph656
  %indvars.iv.i.i234 = phi i64 [ %indvars.iv.next.i.i235.3, %scalar.ph656 ], [ %indvars.iv.i.i234.unr, %scalar.ph656.prol.loopexit ] ; 6 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i228, i64 %indvars.iv.i.i234
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !107
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.i.i234
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !107
  %indvars.iv.next.i.i235 = add nuw nsw i64 %indvars.iv.i.i234, 1 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i228, i64 %indvars.iv.next.i.i235
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !107
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.next.i.i235
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !107
  %indvars.iv.next.i.i235.1 = add nuw nsw i64 %indvars.iv.i.i234, 2 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i228, i64 %indvars.iv.next.i.i235.1
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !107
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.next.i.i235.1
  store i32 %i.ug, ptr %i.uh, align 4, !tbaa !107
  %indvars.iv.next.i.i235.2 = add nuw nsw i64 %indvars.iv.i.i234, 3 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i228, i64 %indvars.iv.next.i.i235.2
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !107
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.next.i.i235.2
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !107
  %indvars.iv.next.i.i235.3 = add nuw nsw i64 %indvars.iv.i.i234, 4 ; 2 uses
  %exitcond.not.i.i236.3 = icmp eq i64 %indvars.iv.next.i.i235.3, %wide.trip.count.i.i233
  br i1 %exitcond.not.i.i236.3, label %._crit_edge.thread.i.i230, label %scalar.ph656, !llvm.loop !197

._crit_edge.thread.i.i230:                        ; preds = %scalar.ph656.prol.loopexit, %scalar.ph656, %middle.block667, %._crit_edge.i.i229
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i228) #27
  %.pre.i231 = load i32, ptr %i.id, align 8, !tbaa !115
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.thread.i.i230, %._crit_edge.i.i229, %.noexc237
  %i.ul = phi i32 [ %.pre.i231, %._crit_edge.thread.i.i230 ], [ %.pre7.i, %._crit_edge.i.i229 ], [ %.pre7.i, %.noexc237 ]
  store ptr %i.ti, ptr %11, align 8, !tbaa !116
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.um
  store i32 0, ptr %i.un, align 4, !tbaa !107
  store i32 %i.sr, ptr %i.ie, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader: ; preds = %bb.bv, %bb.bt
  %.04.i.i224.ph = phi ptr [ %i.ti, %bb.bv ], [ %i.tb, %bb.bt ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i224 = phi ptr [ %i.uq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.04.i.i224.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i225 = phi ptr [ %i.uo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.sroa.0469.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.0.i.i225, i64 4
  %i.up = load i32, ptr %.0.i.i225, align 4, !tbaa !107 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.04.i.i224, i64 4
  store i32 %i.up, ptr %.04.i.i224, align 4, !tbaa !107
  %.not.i.i226 = icmp eq i32 %i.up, 0
  br i1 %.not.i.i226, label %bb.bw, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

bb.bw:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.sq, ptr %i.id, align 8, !tbaa !115
  %i.ur = icmp eq ptr %.sroa.0469.0, null
  br i1 %i.ur, label %_ZN11CStringBaseIwED2Ev.exit238, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0469.0) #27
  br label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

bb.by:                                            ; preds = %bb.bu
  %i.us = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.ut = icmp eq ptr %.sroa.0469.0, null
  br i1 %i.ut, label %_ZN11CStringBaseIwED2Ev.exit239, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0469.0) #27
  br label %_ZN11CStringBaseIwED2Ev.exit239

bb.ca:                                            ; preds = %bb.bp
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !245
  %i.uw = icmp eq i64 %i.uv, 5
  br i1 %i.uw, label %bb.cb, label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

bb.cb:                                            ; preds = %bb.ca
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z8CHandler11GetPropertyEjjP14tagPROPVARIANT:bb.a
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %i.za
  store i32 0, ptr %i.zb, align 4, !tbaa !107
  store i32 %i.xp, ptr %i.ie, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i260

_ZN11CStringBaseIwE11SetCapacityEi.exit.i260:     ; preds = %bb.cp, %bb.cn
  %i.zc = phi ptr [ %i.xn, %bb.cn ], [ %i.xw, %bb.cp ]
  %i.zd = load ptr, ptr %14, align 8, !tbaa !116  ; 3 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i260
  %.04.i.i261 = phi ptr [ %i.zc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i260 ], [ %i.zg, %bb.cq ] ; 2 uses
  %.0.i.i262 = phi ptr [ %i.zd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i260 ], [ %i.ze, %bb.cq ] ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i262, i64 4
  %i.zf = load i32, ptr %.0.i.i262, align 4, !tbaa !107 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.04.i.i261, i64 4
  store i32 %i.zf, ptr %.04.i.i261, align 4, !tbaa !107
  %.not.i.i263 = icmp eq i32 %i.zf, 0
  br i1 %.not.i.i263, label %bb.cr, label %bb.cq, !llvm.loop !0

bb.cr:                                            ; preds = %bb.cq
  %i.zh = load i32, ptr %i.ih, align 8, !tbaa !115
  store i32 %i.zh, ptr %i.id, align 8, !tbaa !115
  %i.zi = icmp eq ptr %i.zd, null
  br i1 %i.zi, label %_ZN11CStringBaseIwED2Ev.exit276, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZdaPv(ptr noundef nonnull %i.zd) #27
  br label %_ZN11CStringBaseIwED2Ev.exit276

_ZN11CStringBaseIwED2Ev.exit276:                  ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

bb.ct:                                            ; preds = %bb.cm
  %i.zj = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit277

bb.cu:                                            ; preds = %bb.co
  %i.zk = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.zl = load ptr, ptr %14, align 8, !tbaa !116  ; 2 uses
  %i.zm = icmp eq ptr %i.zl, null
  br i1 %i.zm, label %_ZN11CStringBaseIwED2Ev.exit277, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZdaPv(ptr noundef nonnull %i.zl) #27
  br label %_ZN11CStringBaseIwED2Ev.exit277

_ZN11CStringBaseIwED2Ev.exit277:                  ; preds = %bb.cv, %bb.cu, %bb.ct
  %.pn126 = phi { ptr, i32 } [ %i.zj, %bb.ct ], [ %i.zk, %bb.cu ], [ %i.zk, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN11CStringBaseIwED2Ev.exit239

bb.cw:                                            ; preds = %bb.bp
  %i.zn = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !245
  %i.zp = icmp eq i64 %i.zo, 5
  br i1 %i.zp, label %bb.cx, label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

bb.cx:                                            ; preds = %bb.cw
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !125
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !126
  store i32 0, ptr %i.id, align 8, !tbaa !115
  %i.zt = load ptr, ptr %11, align 8, !tbaa !116  ; 2 uses
  store i32 0, ptr %i.zt, align 4, !tbaa !107
  %i.zu = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.zv = icmp eq i32 %i.zu, 2
  br i1 %i.zv, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #26
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc290:                                        ; preds = %bb.cy
  %i.zx = ptrtoaddr ptr %i.zw to i64
  %i.zy = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.zz = icmp sgt i32 %i.zy, 0
  %.pre1.i278 = load i32, ptr %i.id, align 8, !tbaa !115 ; 5 uses
  br i1 %i.zz, label %.preheader.i.i280, label %bb.cz

.preheader.i.i280:                                ; preds = %.noexc290
  %i.aaa = icmp sgt i32 %.pre1.i278, 0
  %.pre.i.i281 = load ptr, ptr %11, align 8, !tbaa !116 ; 9 uses
  br i1 %i.aaa, label %.lr.ph.i.i285, label %._crit_edge.i.i282

.lr.ph.i.i285:                                    ; preds = %.preheader.i.i280
  %.pre.i.i281745 = ptrtoaddr ptr %.pre.i.i281 to i64
  %wide.trip.count.i.i286 = zext nneg i32 %.pre1.i278 to i64 ; 5 uses
  %min.iters.check747 = icmp ult i32 %.pre1.i278, 8
  %i.aab = sub i64 %.pre.i.i281745, %i.zx
  %diff.check749 = icmp ugt i64 %i.aab, -32
  %or.cond890 = select i1 %min.iters.check747, i1 true, i1 %diff.check749
  br i1 %or.cond890, label %scalar.ph746.preheader, label %vector.ph750

vector.ph750:                                     ; preds = %.lr.ph.i.i285
  %n.vec751 = and i64 %wide.trip.count.i.i286, 2147483640 ; 3 uses
  br label %vector.body752

vector.body752:                                   ; preds = %vector.body752, %vector.ph750
  %index753 = phi i64 [ 0, %vector.ph750 ], [ %index.next756, %vector.body752 ] ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i281, i64 %index753 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %wide.load754 = load <4 x i32>, ptr %i.aac, align 4, !tbaa !107
  %wide.load755 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !107
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %index753 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store <4 x i32> %wide.load754, ptr %i.aae, align 4, !tbaa !107
  store <4 x i32> %wide.load755, ptr %i.aaf, align 4, !tbaa !107
  %index.next756 = add nuw i64 %index753, 8       ; 2 uses
  %i.aag = icmp eq i64 %index.next756, %n.vec751
  br i1 %i.aag, label %middle.block757, label %vector.body752, !llvm.loop !204

middle.block757:                                  ; preds = %vector.body752
  %cmp.n758 = icmp eq i64 %n.vec751, %wide.trip.count.i.i286
  br i1 %cmp.n758, label %._crit_edge.thread.i.i283, label %scalar.ph746.preheader

scalar.ph746.preheader:                           ; preds = %.lr.ph.i.i285, %middle.block757
  %indvars.iv.i.i287.ph = phi i64 [ 0, %.lr.ph.i.i285 ], [ %n.vec751, %middle.block757 ] ; 3 uses
  %xtraiter923 = and i64 %wide.trip.count.i.i286, 3 ; 2 uses
  %lcmp.mod924.not = icmp eq i64 %xtraiter923, 0
  br i1 %lcmp.mod924.not, label %scalar.ph746.prol.loopexit, label %scalar.ph746.prol

scalar.ph746.prol:                                ; preds = %scalar.ph746.preheader, %scalar.ph746.prol
  %indvars.iv.i.i287.prol = phi i64 [ %indvars.iv.next.i.i288.prol, %scalar.ph746.prol ], [ %indvars.iv.i.i287.ph, %scalar.ph746.preheader ] ; 3 uses
  %prol.iter925 = phi i64 [ %prol.iter925.next, %scalar.ph746.prol ], [ 0, %scalar.ph746.preheader ]
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i281, i64 %indvars.iv.i.i287.prol
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !107
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.i.i287.prol
  store i32 %i.aai, ptr %i.aaj, align 4, !tbaa !107
  %indvars.iv.next.i.i288.prol = add nuw nsw i64 %indvars.iv.i.i287.prol, 1 ; 2 uses
  %prol.iter925.next = add i64 %prol.iter925, 1   ; 2 uses
  %prol.iter925.cmp.not = icmp eq i64 %prol.iter925.next, %xtraiter923
  br i1 %prol.iter925.cmp.not, label %scalar.ph746.prol.loopexit, label %scalar.ph746.prol, !llvm.loop !205

scalar.ph746.prol.loopexit:                       ; preds = %scalar.ph746.prol, %scalar.ph746.preheader
  %indvars.iv.i.i287.unr = phi i64 [ %indvars.iv.i.i287.ph, %scalar.ph746.preheader ], [ %indvars.iv.next.i.i288.prol, %scalar.ph746.prol ]
  %i.aak = sub nsw i64 %indvars.iv.i.i287.ph, %wide.trip.count.i.i286
  %i.aal = icmp ugt i64 %i.aak, -4
  br i1 %i.aal, label %._crit_edge.thread.i.i283, label %scalar.ph746

._crit_edge.i.i282:                               ; preds = %.preheader.i.i280
  %i.aam = icmp eq ptr %.pre.i.i281, null
  br i1 %i.aam, label %bb.cz, label %._crit_edge.thread.i.i283

scalar.ph746:                                     ; preds = %scalar.ph746.prol.loopexit, %scalar.ph746
  %indvars.iv.i.i287 = phi i64 [ %indvars.iv.next.i.i288.3, %scalar.ph746 ], [ %indvars.iv.i.i287.unr, %scalar.ph746.prol.loopexit ] ; 6 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i281, i64 %indvars.iv.i.i287
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !107
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.i.i287
  store i32 %i.aao, ptr %i.aap, align 4, !tbaa !107
  %indvars.iv.next.i.i288 = add nuw nsw i64 %indvars.iv.i.i287, 1 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i281, i64 %indvars.iv.next.i.i288
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !107
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.next.i.i288
  store i32 %i.aar, ptr %i.aas, align 4, !tbaa !107
  %indvars.iv.next.i.i288.1 = add nuw nsw i64 %indvars.iv.i.i287, 2 ; 2 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i281, i64 %indvars.iv.next.i.i288.1
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !107
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.next.i.i288.1
  store i32 %i.aau, ptr %i.aav, align 4, !tbaa !107
  %indvars.iv.next.i.i288.2 = add nuw nsw i64 %indvars.iv.i.i287, 3 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i281, i64 %indvars.iv.next.i.i288.2
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !107
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.next.i.i288.2
  store i32 %i.aax, ptr %i.aay, align 4, !tbaa !107
  %indvars.iv.next.i.i288.3 = add nuw nsw i64 %indvars.iv.i.i287, 4 ; 2 uses
  %exitcond.not.i.i289.3 = icmp eq i64 %indvars.iv.next.i.i288.3, %wide.trip.count.i.i286
  br i1 %exitcond.not.i.i289.3, label %._crit_edge.thread.i.i283, label %scalar.ph746, !llvm.loop !206

._crit_edge.thread.i.i283:                        ; preds = %scalar.ph746.prol.loopexit, %scalar.ph746, %middle.block757, %._crit_edge.i.i282
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i281) #27
  %.pre.i284 = load i32, ptr %i.id, align 8, !tbaa !115
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.thread.i.i283, %._crit_edge.i.i282, %.noexc290
  %i.aaz = phi i32 [ %.pre.i284, %._crit_edge.thread.i.i283 ], [ %.pre1.i278, %._crit_edge.i.i282 ], [ %.pre1.i278, %.noexc290 ]
  store ptr %i.zw, ptr %11, align 8, !tbaa !116
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %i.aba
  store i32 0, ptr %i.abb, align 4, !tbaa !107
  store i32 2, ptr %i.ie, align 4, !tbaa !114
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %i.abc = phi ptr [ %i.zt, %bb.cx ], [ %i.zw, %bb.cz ] ; 2 uses
  store i32 111, ptr %i.abc, align 4, !tbaa !107
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  store i32 0, ptr %i.abd, align 4, !tbaa !107
  store i32 1, ptr %i.id, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !247
  %i.abe = zext i8 %i.zs to i64
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.abe, ptr noundef nonnull %i.b)
          to label %.noexc297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc297:                                        ; preds = %bb.da
  %wcslen.i.i.i291 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b), !noalias !247
  %i.abf = trunc i64 %wcslen.i.i.i291 to i32      ; 6 uses
  %i.abg = add nsw i32 %i.abf, 1                  ; 2 uses
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i293, label %._crit_edge.i.i.i292

._crit_edge.i.i.i292:                             ; preds = %.noexc297
  %i.abi = zext nneg i32 %i.abg to i64
  %i.abj = icmp slt i32 %i.abf, -1
  %i.abk = shl nuw nsw i64 %i.abi, 2
  %i.abl = select i1 %i.abj, i64 -1, i64 %i.abk
  %i.abm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abl) #26
          to label %.noexc298 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc298:                                        ; preds = %._crit_edge.i.i.i292
  store i32 0, ptr %i.abm, align 4, !tbaa !107, !noalias !247
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i293

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i293:   ; preds = %.noexc298, %.noexc297
  %.sroa.0462.0 = phi ptr [ null, %.noexc297 ], [ %i.abm, %.noexc298 ] ; 6 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i293
  %.04.i.i.i294 = phi ptr [ %.sroa.0462.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i293 ], [ %i.abp, %bb.db ] ; 2 uses
  %.0.i.i.i295 = phi ptr [ %i.b, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i293 ], [ %i.abn, %bb.db ] ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.0.i.i.i295, i64 4
  %i.abo = load i32, ptr %.0.i.i.i295, align 4, !tbaa !107, !noalias !247 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.04.i.i.i294, i64 4
  store i32 %i.abo, ptr %.04.i.i.i294, align 4, !tbaa !107, !noalias !247
  %.not.i.i.i296 = icmp eq i32 %i.abo, 0
  br i1 %.not.i.i.i296, label %bb.dc, label %bb.db, !llvm.loop !0

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !247
  %i.abq = load i32, ptr %i.ie, align 4, !tbaa !114 ; 6 uses
  %i.abr = load i32, ptr %i.id, align 8, !tbaa !115 ; 3 uses
  %i.abs = xor i32 %i.abr, -1
  %i.abt = add i32 %i.abq, %i.abs                 ; 3 uses
  %.not.i.i300 = icmp slt i32 %i.abt, %i.abf
  br i1 %.not.i.i300, label %bb.dd, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i301

bb.dd:                                            ; preds = %bb.dc
  %i.abu = icmp sgt i32 %i.abq, 64
  %i.abv = lshr i32 %i.abq, 1
  %i.abw = icmp sgt i32 %i.abq, 8
  %..i.i305 = select i1 %i.abw, i32 16, i32 4
  %.0.i.i306 = select i1 %i.abu, i32 %i.abv, i32 %..i.i305 ; 2 uses
  %i.abx = add nsw i32 %.0.i.i306, %i.abt
  %i.aby = icmp slt i32 %i.abx, %i.abf
  %i.abz = sub nsw i32 %i.abf, %i.abt
  %.1.i.i307 = select i1 %i.aby, i32 %i.abz, i32 %.0.i.i306
  %i.aca = add nsw i32 %.1.i.i307, %i.abq         ; 2 uses
  %i.acb = add nsw i32 %i.aca, 1                  ; 3 uses
  %i.acc = icmp eq i32 %i.acb, %i.abq
  br i1 %i.acc, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i301, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.acd = zext nneg i32 %i.acb to i64
  %i.ace = icmp slt i32 %i.aca, -1
  %i.acf = shl nuw nsw i64 %i.acd, 2
  %i.acg = select i1 %i.ace, i64 -1, i64 %i.acf
  %i.ach = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.acg) #26
          to label %.noexc319 unwind label %bb.dr ; 9 uses

.noexc319:                                        ; preds = %bb.de
  %i.aci = ptrtoaddr ptr %i.ach to i64
  %i.acj = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.ack = icmp sgt i32 %i.acj, 0
  %.pre12.i.i308 = load i32, ptr %i.id, align 8, !tbaa !115 ; 5 uses
  br i1 %i.ack, label %.preheader.i.i.i309, label %bb.df

.preheader.i.i.i309:                              ; preds = %.noexc319
  %i.acl = icmp sgt i32 %.pre12.i.i308, 0
  %.pre.i.i.i310 = load ptr, ptr %11, align 8, !tbaa !116 ; 9 uses
  br i1 %i.acl, label %.lr.ph.i.i.i314, label %._crit_edge.i.i.i311

.lr.ph.i.i.i314:                                  ; preds = %.preheader.i.i.i309
  %.pre.i.i.i310727 = ptrtoaddr ptr %.pre.i.i.i310 to i64
  %wide.trip.count.i.i.i315 = zext nneg i32 %.pre12.i.i308 to i64 ; 5 uses
  %min.iters.check729 = icmp ult i32 %.pre12.i.i308, 8
  %i.acm = sub i64 %.pre.i.i.i310727, %i.aci
  %diff.check731 = icmp ugt i64 %i.acm, -32
  %or.cond891 = select i1 %min.iters.check729, i1 true, i1 %diff.check731
  br i1 %or.cond891, label %scalar.ph728.preheader, label %vector.ph732

vector.ph732:                                     ; preds = %.lr.ph.i.i.i314
  %n.vec733 = and i64 %wide.trip.count.i.i.i315, 2147483640 ; 3 uses
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph732
  %index735 = phi i64 [ 0, %vector.ph732 ], [ %index.next738, %vector.body734 ] ; 3 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i310, i64 %index735 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %wide.load736 = load <4 x i32>, ptr %i.acn, align 4, !tbaa !107
  %wide.load737 = load <4 x i32>, ptr %i.aco, align 4, !tbaa !107
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %index735 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store <4 x i32> %wide.load736, ptr %i.acp, align 4, !tbaa !107
  store <4 x i32> %wide.load737, ptr %i.acq, align 4, !tbaa !107
  %index.next738 = add nuw i64 %index735, 8       ; 2 uses
  %i.acr = icmp eq i64 %index.next738, %n.vec733
  br i1 %i.acr, label %middle.block739, label %vector.body734, !llvm.loop !209

middle.block739:                                  ; preds = %vector.body734
  %cmp.n740 = icmp eq i64 %n.vec733, %wide.trip.count.i.i.i315
  br i1 %cmp.n740, label %._crit_edge.thread.i.i.i312, label %scalar.ph728.preheader

scalar.ph728.preheader:                           ; preds = %.lr.ph.i.i.i314, %middle.block739
  %indvars.iv.i.i.i316.ph = phi i64 [ 0, %.lr.ph.i.i.i314 ], [ %n.vec733, %middle.block739 ] ; 3 uses
  %xtraiter926 = and i64 %wide.trip.count.i.i.i315, 3 ; 2 uses
  %lcmp.mod927.not = icmp eq i64 %xtraiter926, 0
  br i1 %lcmp.mod927.not, label %scalar.ph728.prol.loopexit, label %scalar.ph728.prol

scalar.ph728.prol:                                ; preds = %scalar.ph728.preheader, %scalar.ph728.prol
  %indvars.iv.i.i.i316.prol = phi i64 [ %indvars.iv.next.i.i.i317.prol, %scalar.ph728.prol ], [ %indvars.iv.i.i.i316.ph, %scalar.ph728.preheader ] ; 3 uses
  %prol.iter928 = phi i64 [ %prol.iter928.next, %scalar.ph728.prol ], [ 0, %scalar.ph728.preheader ]
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i310, i64 %indvars.iv.i.i.i316.prol
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !107
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.i.i.i316.prol
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !107
  %indvars.iv.next.i.i.i317.prol = add nuw nsw i64 %indvars.iv.i.i.i316.prol, 1 ; 2 uses
  %prol.iter928.next = add i64 %prol.iter928, 1   ; 2 uses
  %prol.iter928.cmp.not = icmp eq i64 %prol.iter928.next, %xtraiter926
  br i1 %prol.iter928.cmp.not, label %scalar.ph728.prol.loopexit, label %scalar.ph728.prol, !llvm.loop !210

scalar.ph728.prol.loopexit:                       ; preds = %scalar.ph728.prol, %scalar.ph728.preheader
  %indvars.iv.i.i.i316.unr = phi i64 [ %indvars.iv.i.i.i316.ph, %scalar.ph728.preheader ], [ %indvars.iv.next.i.i.i317.prol, %scalar.ph728.prol ]
  %i.acv = sub nsw i64 %indvars.iv.i.i.i316.ph, %wide.trip.count.i.i.i315
  %i.acw = icmp ugt i64 %i.acv, -4
  br i1 %i.acw, label %._crit_edge.thread.i.i.i312, label %scalar.ph728

._crit_edge.i.i.i311:                             ; preds = %.preheader.i.i.i309
  %i.acx = icmp eq ptr %.pre.i.i.i310, null
  br i1 %i.acx, label %bb.df, label %._crit_edge.thread.i.i.i312

scalar.ph728:                                     ; preds = %scalar.ph728.prol.loopexit, %scalar.ph728
  %indvars.iv.i.i.i316 = phi i64 [ %indvars.iv.next.i.i.i317.3, %scalar.ph728 ], [ %indvars.iv.i.i.i316.unr, %scalar.ph728.prol.loopexit ] ; 6 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i310, i64 %indvars.iv.i.i.i316
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !107
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.i.i.i316
  store i32 %i.acz, ptr %i.ada, align 4, !tbaa !107
  %indvars.iv.next.i.i.i317 = add nuw nsw i64 %indvars.iv.i.i.i316, 1 ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i310, i64 %indvars.iv.next.i.i.i317
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !107
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.next.i.i.i317
  store i32 %i.adc, ptr %i.add, align 4, !tbaa !107
  %indvars.iv.next.i.i.i317.1 = add nuw nsw i64 %indvars.iv.i.i.i316, 2 ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i310, i64 %indvars.iv.next.i.i.i317.1
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !107
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.next.i.i.i317.1
  store i32 %i.adf, ptr %i.adg, align 4, !tbaa !107
  %indvars.iv.next.i.i.i317.2 = add nuw nsw i64 %indvars.iv.i.i.i316, 3 ; 2 uses
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i310, i64 %indvars.iv.next.i.i.i317.2
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !107
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.next.i.i.i317.2
  store i32 %i.adi, ptr %i.adj, align 4, !tbaa !107
  %indvars.iv.next.i.i.i317.3 = add nuw nsw i64 %indvars.iv.i.i.i316, 4 ; 2 uses
  %exitcond.not.i.i.i318.3 = icmp eq i64 %indvars.iv.next.i.i.i317.3, %wide.trip.count.i.i.i315
  br i1 %exitcond.not.i.i.i318.3, label %._crit_edge.thread.i.i.i312, label %scalar.ph728, !llvm.loop !211

._crit_edge.thread.i.i.i312:                      ; preds = %scalar.ph728.prol.loopexit, %scalar.ph728, %middle.block739, %._crit_edge.i.i.i311
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i310) #27
  %.pre.i.i313 = load i32, ptr %i.id, align 8, !tbaa !115
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.thread.i.i.i312, %._crit_edge.i.i.i311, %.noexc319
  %i.adk = phi i32 [ %.pre.i.i313, %._crit_edge.thread.i.i.i312 ], [ %.pre12.i.i308, %._crit_edge.i.i.i311 ], [ %.pre12.i.i308, %.noexc319 ] ; 2 uses
  store ptr %i.ach, ptr %11, align 8, !tbaa !116
  %i.adl = sext i32 %i.adk to i64
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.adl
  store i32 0, ptr %i.adm, align 4, !tbaa !107
  store i32 %i.acb, ptr %i.ie, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i301

_ZN11CStringBaseIwE10GrowLengthEi.exit.i301:      ; preds = %bb.df, %bb.dd, %bb.dc
  %i.adn = phi i32 [ %i.abr, %bb.dc ], [ %i.abr, %bb.dd ], [ %i.adk, %bb.df ] ; 2 uses
  %i.ado = load ptr, ptr %11, align 8, !tbaa !116
  %i.adp = sext i32 %i.adn to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.adp
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i301
  %.04.i.i302 = phi ptr [ %i.adq, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i301 ], [ %i.adt, %bb.dg ] ; 2 uses
  %.0.i4.i303 = phi ptr [ %.sroa.0462.0, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i301 ], [ %i.adr, %bb.dg ] ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0.i4.i303, i64 4
  %i.ads = load i32, ptr %.0.i4.i303, align 4, !tbaa !107 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.04.i.i302, i64 4
  store i32 %i.ads, ptr %.04.i.i302, align 4, !tbaa !107
  %.not.i5.i304 = icmp eq i32 %i.ads, 0
  br i1 %.not.i5.i304, label %bb.dh, label %bb.dg, !llvm.loop !0

bb.dh:                                            ; preds = %bb.dg
  %i.adu = add nsw i32 %i.adn, %i.abf
  store i32 %i.adu, ptr %i.id, align 8, !tbaa !115
  %i.adv = icmp eq ptr %.sroa.0462.0, null
  br i1 %i.adv, label %_ZN11CStringBaseIwED2Ev.exit321, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0462.0) #27
  br label %_ZN11CStringBaseIwED2Ev.exit321

end_hunk_1
begin_hunk_2_@_ZN8NArchive3N7z8CHandler11GetPropertyEjjP14tagPROPVARIANT:bb.a
  %i.aep = icmp slt i32 %i.ael, -1
  %i.aeq = shl nuw nsw i64 %i.aeo, 2
  %i.aer = select i1 %i.aep, i64 -1, i64 %i.aeq
  %i.aes = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aer) #26
          to label %.noexc341 unwind label %bb.du ; 9 uses

.noexc341:                                        ; preds = %bb.dm
  %i.aet = ptrtoaddr ptr %i.aes to i64
  %i.aeu = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.aev = icmp sgt i32 %i.aeu, 0
  %.pre12.i.i330 = load i32, ptr %i.id, align 8, !tbaa !115 ; 5 uses
  br i1 %i.aev, label %.preheader.i.i.i331, label %bb.dn

.preheader.i.i.i331:                              ; preds = %.noexc341
  %i.aew = icmp sgt i32 %.pre12.i.i330, 0
  %.pre.i.i.i332 = load ptr, ptr %11, align 8, !tbaa !116 ; 9 uses
  br i1 %i.aew, label %.lr.ph.i.i.i336, label %._crit_edge.i.i.i333

.lr.ph.i.i.i336:                                  ; preds = %.preheader.i.i.i331
  %.pre.i.i.i332709 = ptrtoaddr ptr %.pre.i.i.i332 to i64
  %wide.trip.count.i.i.i337 = zext nneg i32 %.pre12.i.i330 to i64 ; 5 uses
  %min.iters.check711 = icmp ult i32 %.pre12.i.i330, 8
  %i.aex = sub i64 %.pre.i.i.i332709, %i.aet
  %diff.check713 = icmp ugt i64 %i.aex, -32
  %or.cond892 = select i1 %min.iters.check711, i1 true, i1 %diff.check713
  br i1 %or.cond892, label %scalar.ph710.preheader, label %vector.ph714

vector.ph714:                                     ; preds = %.lr.ph.i.i.i336
  %n.vec715 = and i64 %wide.trip.count.i.i.i337, 2147483640 ; 3 uses
  br label %vector.body716

vector.body716:                                   ; preds = %vector.body716, %vector.ph714
  %index717 = phi i64 [ 0, %vector.ph714 ], [ %index.next720, %vector.body716 ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i332, i64 %index717 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %wide.load718 = load <4 x i32>, ptr %i.aey, align 4, !tbaa !107
  %wide.load719 = load <4 x i32>, ptr %i.aez, align 4, !tbaa !107
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %index717 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  store <4 x i32> %wide.load718, ptr %i.afa, align 4, !tbaa !107
  store <4 x i32> %wide.load719, ptr %i.afb, align 4, !tbaa !107
  %index.next720 = add nuw i64 %index717, 8       ; 2 uses
  %i.afc = icmp eq i64 %index.next720, %n.vec715
  br i1 %i.afc, label %middle.block721, label %vector.body716, !llvm.loop !212

middle.block721:                                  ; preds = %vector.body716
  %cmp.n722 = icmp eq i64 %n.vec715, %wide.trip.count.i.i.i337
  br i1 %cmp.n722, label %._crit_edge.thread.i.i.i334, label %scalar.ph710.preheader

scalar.ph710.preheader:                           ; preds = %.lr.ph.i.i.i336, %middle.block721
  %indvars.iv.i.i.i338.ph = phi i64 [ 0, %.lr.ph.i.i.i336 ], [ %n.vec715, %middle.block721 ] ; 3 uses
  %xtraiter929 = and i64 %wide.trip.count.i.i.i337, 3 ; 2 uses
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod930.not, label %scalar.ph710.prol.loopexit, label %scalar.ph710.prol

scalar.ph710.prol:                                ; preds = %scalar.ph710.preheader, %scalar.ph710.prol
  %indvars.iv.i.i.i338.prol = phi i64 [ %indvars.iv.next.i.i.i339.prol, %scalar.ph710.prol ], [ %indvars.iv.i.i.i338.ph, %scalar.ph710.preheader ] ; 3 uses
  %prol.iter931 = phi i64 [ %prol.iter931.next, %scalar.ph710.prol ], [ 0, %scalar.ph710.preheader ]
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i332, i64 %indvars.iv.i.i.i338.prol
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !107
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv.i.i.i338.prol
  store i32 %i.afe, ptr %i.aff, align 4, !tbaa !107
  %indvars.iv.next.i.i.i339.prol = add nuw nsw i64 %indvars.iv.i.i.i338.prol, 1 ; 2 uses
  %prol.iter931.next = add i64 %prol.iter931, 1   ; 2 uses
  %prol.iter931.cmp.not = icmp eq i64 %prol.iter931.next, %xtraiter929
  br i1 %prol.iter931.cmp.not, label %scalar.ph710.prol.loopexit, label %scalar.ph710.prol, !llvm.loop !213

scalar.ph710.prol.loopexit:                       ; preds = %scalar.ph710.prol, %scalar.ph710.preheader
  %indvars.iv.i.i.i338.unr = phi i64 [ %indvars.iv.i.i.i338.ph, %scalar.ph710.preheader ], [ %indvars.iv.next.i.i.i339.prol, %scalar.ph710.prol ]
  %i.afg = sub nsw i64 %indvars.iv.i.i.i338.ph, %wide.trip.count.i.i.i337
  %i.afh = icmp ugt i64 %i.afg, -4
  br i1 %i.afh, label %._crit_edge.thread.i.i.i334, label %scalar.ph710

._crit_edge.i.i.i333:                             ; preds = %.preheader.i.i.i331
  %i.afi = icmp eq ptr %.pre.i.i.i332, null
  br i1 %i.afi, label %bb.dn, label %._crit_edge.thread.i.i.i334

scalar.ph710:                                     ; preds = %scalar.ph710.prol.loopexit, %scalar.ph710
  %indvars.iv.i.i.i338 = phi i64 [ %indvars.iv.next.i.i.i339.3, %scalar.ph710 ], [ %indvars.iv.i.i.i338.unr, %scalar.ph710.prol.loopexit ] ; 6 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i332, i64 %indvars.iv.i.i.i338
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !107
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv.i.i.i338
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !107
  %indvars.iv.next.i.i.i339 = add nuw nsw i64 %indvars.iv.i.i.i338, 1 ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i332, i64 %indvars.iv.next.i.i.i339
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !107
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv.next.i.i.i339
  store i32 %i.afn, ptr %i.afo, align 4, !tbaa !107
  %indvars.iv.next.i.i.i339.1 = add nuw nsw i64 %indvars.iv.i.i.i338, 2 ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i332, i64 %indvars.iv.next.i.i.i339.1
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !107
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv.next.i.i.i339.1
  store i32 %i.afq, ptr %i.afr, align 4, !tbaa !107
  %indvars.iv.next.i.i.i339.2 = add nuw nsw i64 %indvars.iv.i.i.i338, 3 ; 2 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i332, i64 %indvars.iv.next.i.i.i339.2
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !107
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv.next.i.i.i339.2
  store i32 %i.aft, ptr %i.afu, align 4, !tbaa !107
  %indvars.iv.next.i.i.i339.3 = add nuw nsw i64 %indvars.iv.i.i.i338, 4 ; 2 uses
  %exitcond.not.i.i.i340.3 = icmp eq i64 %indvars.iv.next.i.i.i339.3, %wide.trip.count.i.i.i337
  br i1 %exitcond.not.i.i.i340.3, label %._crit_edge.thread.i.i.i334, label %scalar.ph710, !llvm.loop !214

._crit_edge.thread.i.i.i334:                      ; preds = %scalar.ph710.prol.loopexit, %scalar.ph710, %middle.block721, %._crit_edge.i.i.i333
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i332) #27
  %.pre.i.i335 = load i32, ptr %i.id, align 8, !tbaa !115
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge.thread.i.i.i334, %._crit_edge.i.i.i333, %.noexc341
  %i.afv = phi i32 [ %.pre.i.i335, %._crit_edge.thread.i.i.i334 ], [ %.pre12.i.i330, %._crit_edge.i.i.i333 ], [ %.pre12.i.i330, %.noexc341 ] ; 2 uses
  store ptr %i.aes, ptr %11, align 8, !tbaa !116
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.afw
  store i32 0, ptr %i.afx, align 4, !tbaa !107
  store i32 %i.aem, ptr %i.ie, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i323

_ZN11CStringBaseIwE10GrowLengthEi.exit.i323:      ; preds = %bb.dn, %bb.dl, %bb.dk
  %i.afy = phi i32 [ %i.aec, %bb.dk ], [ %i.aec, %bb.dl ], [ %i.afv, %bb.dn ] ; 2 uses
  %i.afz = load ptr, ptr %11, align 8, !tbaa !116
  %i.aga = sext i32 %i.afy to i64
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.aga
  %i.agc = load ptr, ptr %15, align 8, !tbaa !116 ; 3 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i323
  %.04.i.i324 = phi ptr [ %i.agb, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i323 ], [ %i.agf, %bb.do ] ; 2 uses
  %.0.i4.i325 = phi ptr [ %i.agc, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i323 ], [ %i.agd, %bb.do ] ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.0.i4.i325, i64 4
  %i.age = load i32, ptr %.0.i4.i325, align 4, !tbaa !107 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.04.i.i324, i64 4
  store i32 %i.age, ptr %.04.i.i324, align 4, !tbaa !107
  %.not.i5.i326 = icmp eq i32 %i.age, 0
  br i1 %.not.i5.i326, label %bb.dp, label %bb.do, !llvm.loop !0

bb.dp:                                            ; preds = %bb.do
  %i.agg = load i32, ptr %i.ig, align 8, !tbaa !115
  %i.agh = add nsw i32 %i.agg, %i.afy
  store i32 %i.agh, ptr %i.id, align 8, !tbaa !115
  %i.agi = icmp eq ptr %i.agc, null
  br i1 %i.agi, label %_ZN11CStringBaseIwED2Ev.exit343, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_ZdaPv(ptr noundef nonnull %i.agc) #27
  br label %_ZN11CStringBaseIwED2Ev.exit343

_ZN11CStringBaseIwED2Ev.exit343:                  ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

bb.dr:                                            ; preds = %bb.de
  %i.agj = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.agk = icmp eq ptr %.sroa.0462.0, null
  br i1 %i.agk, label %_ZN11CStringBaseIwED2Ev.exit239, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0462.0) #27
  br label %_ZN11CStringBaseIwED2Ev.exit239

bb.dt:                                            ; preds = %bb.dj
  %i.agl = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit345

bb.du:                                            ; preds = %bb.dm
  %i.agm = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.agn = load ptr, ptr %15, align 8, !tbaa !116 ; 2 uses
  %i.ago = icmp eq ptr %i.agn, null
  br i1 %i.ago, label %_ZN11CStringBaseIwED2Ev.exit345, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @_ZdaPv(ptr noundef nonnull %i.agn) #27
  br label %_ZN11CStringBaseIwED2Ev.exit345

_ZN11CStringBaseIwED2Ev.exit345:                  ; preds = %bb.dv, %bb.du, %bb.dt
  %.pn123 = phi { ptr, i32 } [ %i.agl, %bb.dt ], [ %i.agm, %bb.du ], [ %i.agm, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %_ZN11CStringBaseIwED2Ev.exit239

bb.dw:                                            ; preds = %bb.bp
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !245
  %.not118 = icmp eq i64 %i.agq, 0
  br i1 %.not118, label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !125
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !126
  %i.agu = and i8 %i.agt, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !248
  %i.agv = zext nneg i8 %i.agu to i64
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.agv, ptr noundef nonnull %i.a)
          to label %.noexc352 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc352:                                        ; preds = %bb.dx
  %wcslen.i.i.i346 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a), !noalias !248
  %i.agw = trunc i64 %wcslen.i.i.i346 to i32      ; 5 uses
  %i.agx = add nsw i32 %i.agw, 1                  ; 5 uses
  %i.agy = icmp eq i32 %i.agx, 0
  br i1 %i.agy, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i348, label %._crit_edge.i.i.i347

._crit_edge.i.i.i347:                             ; preds = %.noexc352
  %i.agz = zext nneg i32 %i.agx to i64
  %i.aha = icmp slt i32 %i.agw, -1
  %i.ahb = shl nuw nsw i64 %i.agz, 2
  %i.ahc = select i1 %i.aha, i64 -1, i64 %i.ahb
  %i.ahd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahc) #26
          to label %.noexc353 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc353:                                        ; preds = %._crit_edge.i.i.i347
  store i32 0, ptr %i.ahd, align 4, !tbaa !107, !noalias !248
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i348

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i348:   ; preds = %.noexc353, %.noexc352
  %.sroa.0.0 = phi ptr [ null, %.noexc352 ], [ %i.ahd, %.noexc353 ] ; 6 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i348
  %.04.i.i.i349 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i348 ], [ %i.ahg, %bb.dy ] ; 2 uses
  %.0.i.i.i350 = phi ptr [ %i.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i348 ], [ %i.ahe, %bb.dy ] ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0.i.i.i350, i64 4
  %i.ahf = load i32, ptr %.0.i.i.i350, align 4, !tbaa !107, !noalias !248 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.04.i.i.i349, i64 4
  store i32 %i.ahf, ptr %.04.i.i.i349, align 4, !tbaa !107, !noalias !248
  %.not.i.i.i351 = icmp eq i32 %i.ahf, 0
  br i1 %.not.i.i.i351, label %bb.dz, label %bb.dy, !llvm.loop !0

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !248
  store i32 0, ptr %i.id, align 8, !tbaa !115
  %i.ahh = load ptr, ptr %11, align 8, !tbaa !116 ; 2 uses
  store i32 0, ptr %i.ahh, align 4, !tbaa !107
  %i.ahi = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.ahj = icmp eq i32 %i.agx, %i.ahi
  br i1 %i.ahj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356.preheader, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahk = zext nneg i32 %i.agx to i64
  %i.ahl = icmp slt i32 %i.agw, -1
  %i.ahm = shl nuw nsw i64 %i.ahk, 2
  %i.ahn = select i1 %i.ahl, i64 -1, i64 %i.ahm
  %i.aho = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahn) #26
          to label %.noexc370 unwind label %bb.ee ; 10 uses

.noexc370:                                        ; preds = %bb.ea
  %i.ahp = ptrtoaddr ptr %i.aho to i64
  %i.ahq = load i32, ptr %i.ie, align 4, !tbaa !114
  %i.ahr = icmp sgt i32 %i.ahq, 0
  %.pre7.i355 = load i32, ptr %i.id, align 8, !tbaa !115 ; 5 uses
  br i1 %i.ahr, label %.preheader.i.i360, label %bb.eb

.preheader.i.i360:                                ; preds = %.noexc370
  %i.ahs = icmp sgt i32 %.pre7.i355, 0
  %.pre.i.i361 = load ptr, ptr %11, align 8, !tbaa !116 ; 9 uses
  br i1 %i.ahs, label %.lr.ph.i.i365, label %._crit_edge.i.i362

.lr.ph.i.i365:                                    ; preds = %.preheader.i.i360
  %.pre.i.i361763 = ptrtoaddr ptr %.pre.i.i361 to i64
  %wide.trip.count.i.i366 = zext nneg i32 %.pre7.i355 to i64 ; 5 uses
  %min.iters.check765 = icmp ult i32 %.pre7.i355, 8
  %i.aht = sub i64 %.pre.i.i361763, %i.ahp
  %diff.check767 = icmp ugt i64 %i.aht, -32
  %or.cond893 = select i1 %min.iters.check765, i1 true, i1 %diff.check767
  br i1 %or.cond893, label %scalar.ph764.preheader, label %vector.ph768

vector.ph768:                                     ; preds = %.lr.ph.i.i365
  %n.vec769 = and i64 %wide.trip.count.i.i366, 2147483640 ; 3 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next774, %vector.body770 ] ; 3 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i361, i64 %index771 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16
  %wide.load772 = load <4 x i32>, ptr %i.ahu, align 4, !tbaa !107
  %wide.load773 = load <4 x i32>, ptr %i.ahv, align 4, !tbaa !107
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index771 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16
  store <4 x i32> %wide.load772, ptr %i.ahw, align 4, !tbaa !107
  store <4 x i32> %wide.load773, ptr %i.ahx, align 4, !tbaa !107
  %index.next774 = add nuw i64 %index771, 8       ; 2 uses
  %i.ahy = icmp eq i64 %index.next774, %n.vec769
  br i1 %i.ahy, label %middle.block775, label %vector.body770, !llvm.loop !217

middle.block775:                                  ; preds = %vector.body770
  %cmp.n776 = icmp eq i64 %n.vec769, %wide.trip.count.i.i366
  br i1 %cmp.n776, label %._crit_edge.thread.i.i363, label %scalar.ph764.preheader

scalar.ph764.preheader:                           ; preds = %.lr.ph.i.i365, %middle.block775
  %indvars.iv.i.i367.ph = phi i64 [ 0, %.lr.ph.i.i365 ], [ %n.vec769, %middle.block775 ] ; 3 uses
  %xtraiter920 = and i64 %wide.trip.count.i.i366, 3 ; 2 uses
  %lcmp.mod921.not = icmp eq i64 %xtraiter920, 0
  br i1 %lcmp.mod921.not, label %scalar.ph764.prol.loopexit, label %scalar.ph764.prol

scalar.ph764.prol:                                ; preds = %scalar.ph764.preheader, %scalar.ph764.prol
  %indvars.iv.i.i367.prol = phi i64 [ %indvars.iv.next.i.i368.prol, %scalar.ph764.prol ], [ %indvars.iv.i.i367.ph, %scalar.ph764.preheader ] ; 3 uses
  %prol.iter922 = phi i64 [ %prol.iter922.next, %scalar.ph764.prol ], [ 0, %scalar.ph764.preheader ]
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i361, i64 %indvars.iv.i.i367.prol
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !107
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i.i367.prol
  store i32 %i.aia, ptr %i.aib, align 4, !tbaa !107
  %indvars.iv.next.i.i368.prol = add nuw nsw i64 %indvars.iv.i.i367.prol, 1 ; 2 uses
  %prol.iter922.next = add i64 %prol.iter922, 1   ; 2 uses
  %prol.iter922.cmp.not = icmp eq i64 %prol.iter922.next, %xtraiter920
  br i1 %prol.iter922.cmp.not, label %scalar.ph764.prol.loopexit, label %scalar.ph764.prol, !llvm.loop !218

scalar.ph764.prol.loopexit:                       ; preds = %scalar.ph764.prol, %scalar.ph764.preheader
  %indvars.iv.i.i367.unr = phi i64 [ %indvars.iv.i.i367.ph, %scalar.ph764.preheader ], [ %indvars.iv.next.i.i368.prol, %scalar.ph764.prol ]
  %i.aic = sub nsw i64 %indvars.iv.i.i367.ph, %wide.trip.count.i.i366
  %i.aid = icmp ugt i64 %i.aic, -4
  br i1 %i.aid, label %._crit_edge.thread.i.i363, label %scalar.ph764

._crit_edge.i.i362:                               ; preds = %.preheader.i.i360
  %i.aie = icmp eq ptr %.pre.i.i361, null
  br i1 %i.aie, label %bb.eb, label %._crit_edge.thread.i.i363

scalar.ph764:                                     ; preds = %scalar.ph764.prol.loopexit, %scalar.ph764
  %indvars.iv.i.i367 = phi i64 [ %indvars.iv.next.i.i368.3, %scalar.ph764 ], [ %indvars.iv.i.i367.unr, %scalar.ph764.prol.loopexit ] ; 6 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i361, i64 %indvars.iv.i.i367
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !107
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i.i367
  store i32 %i.aig, ptr %i.aih, align 4, !tbaa !107
  %indvars.iv.next.i.i368 = add nuw nsw i64 %indvars.iv.i.i367, 1 ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i361, i64 %indvars.iv.next.i.i368
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !107
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.next.i.i368
  store i32 %i.aij, ptr %i.aik, align 4, !tbaa !107
  %indvars.iv.next.i.i368.1 = add nuw nsw i64 %indvars.iv.i.i367, 2 ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i361, i64 %indvars.iv.next.i.i368.1
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !107
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.next.i.i368.1
  store i32 %i.aim, ptr %i.ain, align 4, !tbaa !107
  %indvars.iv.next.i.i368.2 = add nuw nsw i64 %indvars.iv.i.i367, 3 ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i361, i64 %indvars.iv.next.i.i368.2
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !107
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.next.i.i368.2
  store i32 %i.aip, ptr %i.aiq, align 4, !tbaa !107
  %indvars.iv.next.i.i368.3 = add nuw nsw i64 %indvars.iv.i.i367, 4 ; 2 uses
  %exitcond.not.i.i369.3 = icmp eq i64 %indvars.iv.next.i.i368.3, %wide.trip.count.i.i366
  br i1 %exitcond.not.i.i369.3, label %._crit_edge.thread.i.i363, label %scalar.ph764, !llvm.loop !219

._crit_edge.thread.i.i363:                        ; preds = %scalar.ph764.prol.loopexit, %scalar.ph764, %middle.block775, %._crit_edge.i.i362
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i361) #27
  %.pre.i364 = load i32, ptr %i.id, align 8, !tbaa !115
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.thread.i.i363, %._crit_edge.i.i362, %.noexc370
  %i.air = phi i32 [ %.pre.i364, %._crit_edge.thread.i.i363 ], [ %.pre7.i355, %._crit_edge.i.i362 ], [ %.pre7.i355, %.noexc370 ]
  store ptr %i.aho, ptr %11, align 8, !tbaa !116
  %i.ais = sext i32 %i.air to i64
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.ais
  store i32 0, ptr %i.ait, align 4, !tbaa !107
  store i32 %i.agx, ptr %i.ie, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i356.preheader: ; preds = %bb.eb, %bb.dz
  %.04.i.i357.ph = phi ptr [ %i.aho, %bb.eb ], [ %i.ahh, %bb.dz ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356

_ZN11CStringBaseIwE11SetCapacityEi.exit.i356:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356
  %.04.i.i357 = phi ptr [ %i.aiw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356 ], [ %.04.i.i357.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356.preheader ] ; 2 uses
  %.0.i.i358 = phi ptr [ %i.aiu, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356 ], [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356.preheader ] ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0.i.i358, i64 4
  %i.aiv = load i32, ptr %.0.i.i358, align 4, !tbaa !107 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.04.i.i357, i64 4
  store i32 %i.aiv, ptr %.04.i.i357, align 4, !tbaa !107
  %.not.i.i359 = icmp eq i32 %i.aiv, 0
  br i1 %.not.i.i359, label %bb.ec, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356, !llvm.loop !0

bb.ec:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i356
  store i32 %i.agw, ptr %i.id, align 8, !tbaa !115
  %i.aix = icmp eq ptr %.sroa.0.0, null
  br i1 %i.aix, label %_ZN11CStringBaseIwED2Ev.exit238, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #27
  br label %_ZN11CStringBaseIwED2Ev.exit238thread-pre-split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc413, %bb.ev, %bb.da, %._crit_edge.i.i.i292, %_ZN11CStringBaseIwED2Ev.exit321, %bb.av, %bb.eq, %bb.es, %bb.bm, %bb.cy, %bb.ei, %bb.em, %bb.ey, %bb.br, %._crit_edge.i.i.i221, %._crit_edge.i.i.i347, %bb.dx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit239

bb.ee:                                            ; preds = %bb.ea
  %i.aiy = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.aiz = icmp eq ptr %.sroa.0.0, null
  br i1 %i.aiz, label %_ZN11CStringBaseIwED2Ev.exit239, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #27
  br label %_ZN11CStringBaseIwED2Ev.exit239

_ZN11CStringBaseIwED2Ev.exit238thread-pre-split:  ; preds = %bb.bp, %bb.bq, %bb.ca, %bb.cl, %bb.cw, %_ZN11CStringBaseIwED2Ev.exit198, %_ZN11CStringBaseIwED2Ev.exit257, %_ZN11CStringBaseIwED2Ev.exit343, %bb.dw, %_ZN11CStringBaseIwED2Ev.exit276, %bb.bx, %bb.ed
  %.pr = load i32, ptr %i.id, align 8, !tbaa !115
end_hunk_2
begin_hunk_3_@_ZN8NArchive3N7z8CHandler11GetPropertyEjjP14tagPROPVARIANT:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.asz = icmp sgt i64 %indvars.iv, 1
  br i1 %i.asz, label %bb.ao, label %._crit_edge.loopexit, !llvm.loop !233

_ZN11CStringBaseIwED2Ev.exit239:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ee, %bb.ef, %bb.dr, %bb.ds, %bb.by, %bb.bz, %_ZN11CStringBaseIwED2Ev.exit345, %_ZN11CStringBaseIwED2Ev.exit277, %_ZN11CStringBaseIwED2Ev.exit258, %_ZN11CStringBaseIwED2Ev.exit199
  %.pn133 = phi { ptr, i32 } [ %.pn116, %_ZN11CStringBaseIwED2Ev.exit199 ], [ %i.us, %bb.bz ], [ %i.aiy, %bb.ee ], [ %.pn128, %_ZN11CStringBaseIwED2Ev.exit258 ], [ %.pn126, %_ZN11CStringBaseIwED2Ev.exit277 ], [ %i.agj, %bb.ds ], [ %.pn123, %_ZN11CStringBaseIwED2Ev.exit345 ], [ %i.aiy, %bb.ef ], [ %i.us, %bb.by ], [ %i.agj, %bb.dr ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ata = load ptr, ptr %11, align 8, !tbaa !116 ; 2 uses
  %i.atb = icmp eq ptr %i.ata, null
  br i1 %i.atb, label %_ZN11CStringBaseIwED2Ev.exit435, label %bb.fd

bb.fd:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit239
  call void @_ZdaPv(ptr noundef nonnull %i.ata) #27
  br label %_ZN11CStringBaseIwED2Ev.exit435

_ZN11CStringBaseIwED2Ev.exit435:                  ; preds = %bb.fd, %_ZN11CStringBaseIwED2Ev.exit239, %bb.bg
  %.pn133.pn = phi { ptr, i32 } [ %i.pu, %bb.bg ], [ %.pn133, %_ZN11CStringBaseIwED2Ev.exit239 ], [ %.pn133, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.atc = load ptr, ptr %10, align 8, !tbaa !116 ; 2 uses
  %i.atd = icmp eq ptr %i.atc, null
  br i1 %i.atd, label %_ZN11CStringBaseIwED2Ev.exit436, label %bb.fe

bb.fe:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit435
  call void @_ZdaPv(ptr noundef nonnull %i.atc) #27
  br label %_ZN11CStringBaseIwED2Ev.exit436

_ZN11CStringBaseIwED2Ev.exit436:                  ; preds = %bb.fe, %_ZN11CStringBaseIwED2Ev.exit435, %bb.bf
  %.pn133.pn.pn = phi { ptr, i32 } [ %i.pt, %bb.bf ], [ %.pn133.pn, %_ZN11CStringBaseIwED2Ev.exit435 ], [ %.pn133.pn, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.loopexit.split-lp486

bb.ff:                                            ; preds = %._crit_edge
  %i.ate = load ptr, ptr %9, align 8, !tbaa !116  ; 2 uses
  %i.atf = icmp eq ptr %i.ate, null
  br i1 %i.atf, label %_ZN11CStringBaseIwED2Ev.exit437, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZdaPv(ptr noundef nonnull %i.ate) #27
  br label %_ZN11CStringBaseIwED2Ev.exit437

_ZN11CStringBaseIwED2Ev.exit437:                  ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN8NArchive3N7zL20SetPropFromUInt64DefERNS0_16CUInt64DefVectorEiRN8NWindows4NCOM12CPropVariantE.exit

.loopexit.split-lp486:                            ; preds = %.loopexit.split-lp486.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN11CStringBaseIwED2Ev.exit436
  %.pn133.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn, %_ZN11CStringBaseIwED2Ev.exit436 ], [ %lpad.loopexit.split-lp901, %.loopexit.split-lp486.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.atg = load ptr, ptr %9, align 8, !tbaa !116  ; 2 uses
  %i.ath = icmp eq ptr %i.atg, null
  br i1 %i.ath, label %_ZN11CStringBaseIwED2Ev.exit438, label %bb.fh

bb.fh:                                            ; preds = %.loopexit.split-lp486
  call void @_ZdaPv(ptr noundef nonnull %i.atg) #27
  br label %_ZN11CStringBaseIwED2Ev.exit438

_ZN11CStringBaseIwED2Ev.exit438:                  ; preds = %bb.fh, %.loopexit.split-lp486, %bb.an
  %.pn133.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.im, %bb.an ], [ %.pn133.pn.pn.pn.pn, %.loopexit.split-lp486 ], [ %.pn133.pn.pn.pn.pn, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.fq

bb.fi:                                            ; preds = %bb.a
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !108
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.g
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !9 ; 2 uses
  %.not114 = icmp eq i32 %i.atl, -1
  br i1 %.not114, label %_ZN8NArchive3N7zL20SetPropFromUInt64DefERNS0_16CUInt64DefVectorEiRN8NWindows4NCOM12CPropVariantE.exit, label %.invoke565

bb.fj:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !108
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.g
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !9 ; 2 uses
  %.not = icmp eq i32 %i.atp, -1
  br i1 %.not, label %.invoke, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.atq = sext i32 %i.atp to i64                 ; 3 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !108
  %i.att = getelementptr inbounds [4 x i8], ptr %i.ats, i64 %i.atq
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !9
  %i.atv = icmp eq i32 %i.atu, %1
  br i1 %i.atv, label %bb.fl, label %.invoke

bb.fl:                                            ; preds = %bb.fk
  %i.atw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !108
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.atx, i64 %i.atq
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !109
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 76
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !101
  %i.auc = add nsw i32 %2, -65536                 ; 2 uses
  %i.aud = icmp sgt i32 %i.aub, %i.auc
  br i1 %i.aud, label %bb.fm, label %.invoke

bb.fm:                                            ; preds = %bb.fl
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !108
  %i.aug = getelementptr inbounds [4 x i8], ptr %i.auf, i64 %i.atq
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !9
  %i.aui = add i32 %i.auh, %i.auc
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !108
  %i.aul = sext i32 %i.aui to i64
  %i.aum = getelementptr inbounds [8 x i8], ptr %i.auk, i64 %i.aul
  %i.aun = load i64, ptr %i.aum, align 8, !tbaa !111
  br label %.invoke

bb.fn:                                            ; preds = %.invoke565, %.invoke564, %.invoke, %bb.z, %bb.w, %bb.t, %_ZN8NArchive3N7zL20SetPropFromUInt64DefERNS0_16CUInt64DefVectorEiRN8NWindows4NCOM12CPropVariantE.exit
  %i.auo = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.fq

_ZN8NArchive3N7zL20SetPropFromUInt64DefERNS0_16CUInt64DefVectorEiRN8NWindows4NCOM12CPropVariantE.exit: ; preds = %.invoke565, %.invoke564, %.invoke, %bb.o, %bb.p, %.noexc149, %bb.y, %bb.x, %.noexc147, %bb.v, %bb.u, %.noexc, %bb.s, %bb.r, %bb.fi, %bb.ak, %_ZN11CStringBaseIwED2Ev.exit437, %bb.m, %bb.ac, %bb.aa, %bb.b, %_ZN11CStringBaseIwED2Ev.exit, %bb.a
  %i.aup = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %3)
          to label %bb.fo unwind label %bb.fn     ; 0 uses

bb.fo:                                            ; preds = %_ZN8NArchive3N7zL20SetPropFromUInt64DefERNS0_16CUInt64DefVectorEiRN8NWindows4NCOM12CPropVariantE.exit
  %i.auq = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.fp ; 0 uses

bb.fp:                                            ; preds = %bb.fo
  %i.aur = landingpad { ptr, i32 }
          catch ptr null
  %i.aus = extractvalue { ptr, i32 } %i.aur, 0
  call void @__clang_call_terminate(ptr %i.aus) #25
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.fv

bb.fq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit438, %bb.fn, %_ZN11CStringBaseIwED2Ev.exit146
  %.pn144 = phi { ptr, i32 } [ %i.auo, %bb.fn ], [ %.pn142, %_ZN11CStringBaseIwED2Ev.exit146 ], [ %.pn133.pn.pn.pn.pn.pn, %_ZN11CStringBaseIwED2Ev.exit438 ] ; 2 uses
  %i.aut = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit439 unwind label %bb.fr ; 0 uses

bb.fr:                                            ; preds = %bb.fq
  %i.auu = landingpad { ptr, i32 }
          catch ptr null
  %i.auv = extractvalue { ptr, i32 } %i.auu, 0
  call void @__clang_call_terminate(ptr %i.auv) #25
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit439:      ; preds = %bb.fq
  %.17106 = extractvalue { ptr, i32 } %.pn144, 0
  %.17 = extractvalue { ptr, i32 } %.pn144, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.auw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #24
  %i.aux = icmp eq i32 %.17, %i.auw
  %i.auy = call ptr @__cxa_begin_catch(ptr %.17106) #24
  br i1 %i.aux, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit439
  %i.auz = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr %i.auy, ptr %i.auz, align 16, !tbaa !121
  invoke void @__cxa_throw(ptr nonnull %i.auz, ptr nonnull @_ZTIPKc, ptr null) #28
          to label %bb.fw unwind label %bb.fu

bb.ft:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit439
  call void @__cxa_end_catch()
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.ava = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #24
  resume { ptr, i32 } %i.ava

bb.fv:                                            ; preds = %bb.ft, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  %.0107 = phi i32 [ 0, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ], [ -2147024882, %bb.ft ]
  ret i32 %.0107

bb.fw:                                            ; preds = %bb.fs
  unreachable
}

declare void @_ZN8NArchive9NItemName9GetOSNameERK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8NArchive3N7zL21GetStringForSizeValueEj(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !260 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %i.c = alloca [32 x i32], align 16              ; 5 uses
  %i.d = alloca [32 x i32], align 16              ; 5 uses
  %2 = alloca %class.CStringBase, align 8         ; 10 uses
  %3 = alloca %class.CStringBase, align 8         ; 10 uses
  %4 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.g = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  %switch.idx.cast = zext nneg i32 %i.g to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !261
  call void @_Z21ConvertUInt64ToStringyPw(i64 noundef %switch.idx.cast, ptr noundef nonnull %i.d), !noalias !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !261
  %wcslen.i.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.d), !noalias !261
  %i.h = trunc i64 %wcslen.i.i.i to i32           ; 3 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = icmp ne i32 %i.i, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = zext nneg i32 %i.i to i64
  %i.m = icmp slt i32 %i.h, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #26, !noalias !261 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !116, !alias.scope !261
  store i32 0, ptr %i.p, align 4, !tbaa !107, !noalias !261
  store i32 %i.i, ptr %i.k, align 4, !tbaa !114, !alias.scope !261
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.split, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.p, %.split ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.d, %.split ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.r = load i32, ptr %.0.i.i.i, align 4, !tbaa !107, !noalias !261 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.r, ptr %.04.i.i.i, align 4, !tbaa !107, !noalias !261
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, !llvm.loop !0

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #26 ; 9 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.u, align 4, !tbaa !114
  %i.y = icmp sgt i32 %i.x, 0
  %.pre1.i = load i32, ptr %i.t, align 8, !tbaa !115 ; 5 uses
  br i1 %i.y, label %.preheader.i.i, label %_ZN11CStringBaseIwEC2Ev.exit

bb.c:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.z, align 8, !tbaa !115, !alias.scope !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !261
  br label %bb.ac

.preheader.i.i:                                   ; preds = %bb.b
  %i.aa = icmp sgt i32 %.pre1.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !116 ; 9 uses
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i104 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre1.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre1.i, 8
  %i.ab = sub i64 %.pre.i.i104, %i.w
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !107
  %wide.load105 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !107
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 4, !tbaa !107
  store <4 x i32> %wide.load105, ptr %i.af, align 4, !tbaa !107
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !107
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !107
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !252

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.am = icmp eq ptr %.pre.i.i, null
  br i1 %i.am, label %_ZN11CStringBaseIwEC2Ev.exit, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !107
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !107
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !107
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !107
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !107
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.1
  store i32 %i.au, ptr %i.av, align 4, !tbaa !107
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.2
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !107
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !253

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #27
  %.pre.i = load i32, ptr %i.t, align 8, !tbaa !115
  br label %_ZN11CStringBaseIwEC2Ev.exit

_ZN11CStringBaseIwEC2Ev.exit:                     ; preds = %bb.b, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.az = phi i32 [ %.pre1.i, %bb.b ], [ %.pre1.i, %._crit_edge.i.i ], [ %.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.v, ptr %0, align 8, !tbaa !116
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ba
  store i32 0, ptr %i.bb, align 4, !tbaa !107
  store i32 4, ptr %i.u, align 4, !tbaa !114
  %i.bc = and i32 %1, 1048575
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.d, label %bb.l

bb.d:                                             ; preds = %_ZN11CStringBaseIwEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.be = lshr exact i32 %1, 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !262
  %i.bf = zext nneg i32 %i.be to i64
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.bf, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !262
  %wcslen.i.i.i26 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c), !noalias !262
  %i.bg = trunc i64 %wcslen.i.i.i26 to i32        ; 3 uses
  %i.bh = add nsw i32 %i.bg, 1                    ; 3 uses
  %i.bi = icmp ne i32 %i.bh, 0
  call void @llvm.assume(i1 %i.bi)
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = icmp slt i32 %i.bg, -1
  %i.bl = shl nuw nsw i64 %i.bj, 2
  %i.bm = select i1 %i.bk, i64 -1, i64 %i.bl
  %i.bn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #26
          to label %.noexc32 unwind label %bb.h   ; 3 uses

.noexc32:                                         ; preds = %.noexc
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  store ptr %i.bn, ptr %2, align 8, !tbaa !116, !alias.scope !262
  store i32 0, ptr %i.bn, align 4, !tbaa !107, !noalias !262
  store i32 %i.bh, ptr %i.bo, align 4, !tbaa !114, !alias.scope !262
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28:    ; preds = %.noexc32, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28
  %.04.i.i.i29 = phi ptr [ %i.br, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28 ], [ %i.bn, %.noexc32 ] ; 2 uses
  %.0.i.i.i30 = phi ptr [ %i.bp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28 ], [ %i.c, %.noexc32 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 4
  %i.bq = load i32, ptr %.0.i.i.i30, align 4, !tbaa !107, !noalias !262 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.04.i.i.i29, i64 4
  store i32 %i.bq, ptr %.04.i.i.i29, align 4, !tbaa !107, !noalias !262
  %.not.i.i.i31 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i31, label %bb.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28, !llvm.loop !0

bb.e:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i28
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bg, ptr %i.bs, align 8, !tbaa !115, !alias.scope !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !262
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.bu = load ptr, ptr %2, align 8, !tbaa !116   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #27
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN11CStringBaseIwED2Ev.exit55.invoke

bb.h:                                             ; preds = %.noexc, %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit34

bb.i:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !116   ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN11CStringBaseIwED2Ev.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.by) #27
  br label %_ZN11CStringBaseIwED2Ev.exit34

_ZN11CStringBaseIwED2Ev.exit34:                   ; preds = %bb.j, %bb.i, %bb.h
  %.pn22 = phi { ptr, i32 } [ %i.bw, %bb.h ], [ %i.bx, %bb.i ], [ %i.bx, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.aa

bb.k:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit55.invoke
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %_ZN11CStringBaseIwEC2Ev.exit
  %i.cb = and i32 %1, 1023
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cd = lshr exact i32 %1, 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !263
  %i.ce = zext nneg i32 %i.cd to i64
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.ce, ptr noundef nonnull %i.b)
          to label %.noexc41 unwind label %bb.q

.noexc41:                                         ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !263
  %wcslen.i.i.i35 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b), !noalias !263
  %i.cf = trunc i64 %wcslen.i.i.i35 to i32        ; 3 uses
  %i.cg = add nsw i32 %i.cf, 1                    ; 3 uses
  %i.ch = icmp ne i32 %i.cg, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = icmp slt i32 %i.cf, -1
  %i.ck = shl nuw nsw i64 %i.ci, 2
  %i.cl = select i1 %i.cj, i64 -1, i64 %i.ck
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #26
          to label %.noexc42 unwind label %bb.q   ; 3 uses

.noexc42:                                         ; preds = %.noexc41
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.cm, ptr %3, align 8, !tbaa !116, !alias.scope !263
  store i32 0, ptr %i.cm, align 4, !tbaa !107, !noalias !263
  store i32 %i.cg, ptr %i.cn, align 4, !tbaa !114, !alias.scope !263
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37:    ; preds = %.noexc42, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37
  %.04.i.i.i38 = phi ptr [ %i.cq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37 ], [ %i.cm, %.noexc42 ] ; 2 uses
  %.0.i.i.i39 = phi ptr [ %i.co, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37 ], [ %i.b, %.noexc42 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i39, i64 4
  %i.cp = load i32, ptr %.0.i.i.i39, align 4, !tbaa !107, !noalias !263 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i.i38, i64 4
  store i32 %i.cp, ptr %.04.i.i.i38, align 4, !tbaa !107, !noalias !263
  %.not.i.i.i40 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i40, label %bb.n, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37, !llvm.loop !0

bb.n:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cf, ptr %i.cr, align 8, !tbaa !115, !alias.scope !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !263
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.r       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr %3, align 8, !tbaa !116   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN11CStringBaseIwED2Ev.exit44, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ct) #27
  br label %_ZN11CStringBaseIwED2Ev.exit44

_ZN11CStringBaseIwED2Ev.exit44:                   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN11CStringBaseIwED2Ev.exit55.invoke

bb.q:                                             ; preds = %.noexc41, %bb.m
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit45

bb.r:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !116   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN11CStringBaseIwED2Ev.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #27
  br label %_ZN11CStringBaseIwED2Ev.exit45

_ZN11CStringBaseIwED2Ev.exit45:                   ; preds = %bb.s, %bb.r, %bb.q
  %.pn20 = phi { ptr, i32 } [ %i.cv, %bb.q ], [ %i.cw, %bb.r ], [ %i.cw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.aa

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !264
  %i.cz = zext i32 %1 to i64
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.cz, ptr noundef nonnull %i.a)
          to label %.noexc52 unwind label %bb.x

.noexc52:                                         ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !264
  %wcslen.i.i.i46 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a), !noalias !264
  %i.da = trunc i64 %wcslen.i.i.i46 to i32        ; 3 uses
  %i.db = add nsw i32 %i.da, 1                    ; 3 uses
  %i.dc = icmp ne i32 %i.db, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = icmp slt i32 %i.da, -1
  %i.df = shl nuw nsw i64 %i.dd, 2
  %i.dg = select i1 %i.de, i64 -1, i64 %i.df
  %i.dh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dg) #26
          to label %.noexc53 unwind label %bb.x   ; 3 uses

.noexc53:                                         ; preds = %.noexc52
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 12
  store ptr %i.dh, ptr %4, align 8, !tbaa !116, !alias.scope !264
  store i32 0, ptr %i.dh, align 4, !tbaa !107, !noalias !264
  store i32 %i.db, ptr %i.di, align 4, !tbaa !114, !alias.scope !264
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48:    ; preds = %.noexc53, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48
  %.04.i.i.i49 = phi ptr [ %i.dl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48 ], [ %i.dh, %.noexc53 ] ; 2 uses
  %.0.i.i.i50 = phi ptr [ %i.dj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48 ], [ %i.a, %.noexc53 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i50, i64 4
  %i.dk = load i32, ptr %.0.i.i.i50, align 4, !tbaa !107, !noalias !264 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.04.i.i.i49, i64 4
  store i32 %i.dk, ptr %.04.i.i.i49, align 4, !tbaa !107, !noalias !264
  %.not.i.i.i51 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i51, label %bb.u, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48, !llvm.loop !0

bb.u:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i48
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.da, ptr %i.dm, align 8, !tbaa !115, !alias.scope !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !264
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.do = load ptr, ptr %4, align 8, !tbaa !116   ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZN11CStringBaseIwED2Ev.exit55, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.do) #27
  br label %_ZN11CStringBaseIwED2Ev.exit55

_ZN11CStringBaseIwED2Ev.exit55:                   ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN11CStringBaseIwED2Ev.exit55.invoke

_ZN11CStringBaseIwED2Ev.exit55.invoke:            ; preds = %_ZN11CStringBaseIwED2Ev.exit, %_ZN11CStringBaseIwED2Ev.exit44, %_ZN11CStringBaseIwED2Ev.exit55
  %i.dq = phi ptr [ @.str.5, %_ZN11CStringBaseIwED2Ev.exit55 ], [ @.str.4, %_ZN11CStringBaseIwED2Ev.exit44 ], [ @.str.3, %_ZN11CStringBaseIwED2Ev.exit ]
  %i.dr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.dq)
          to label %bb.ac unwind label %bb.k      ; 0 uses

bb.x:                                             ; preds = %.noexc52, %bb.t
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit56

bb.y:                                             ; preds = %bb.u
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !116   ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZN11CStringBaseIwED2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.du) #27
  br label %_ZN11CStringBaseIwED2Ev.exit56

_ZN11CStringBaseIwED2Ev.exit56:                   ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.x ], [ %i.dt, %bb.y ], [ %i.dt, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit56, %_ZN11CStringBaseIwED2Ev.exit45, %bb.k, %_ZN11CStringBaseIwED2Ev.exit34
  %.pn24 = phi { ptr, i32 } [ %i.ca, %bb.k ], [ %.pn22, %_ZN11CStringBaseIwED2Ev.exit34 ], [ %.pn20, %_ZN11CStringBaseIwED2Ev.exit45 ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit56 ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN11CStringBaseIwED2Ev.exit57, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.dw) #27
  br label %_ZN11CStringBaseIwED2Ev.exit57

_ZN11CStringBaseIwED2Ev.exit57:                   ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn24

bb.ac:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit55.invoke, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !267 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1)
  %i.a = trunc i64 %wcslen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !114  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !115  ; 3 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add nsw i32 %.1.i, %i.c                  ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %i.o to i64
  %i.r = icmp slt i32 %i.n, -1
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #26 ; 4 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !114
  %i.w = icmp sgt i32 %i.v, 0
  %.pre12.i = load i32, ptr %i.d, align 8, !tbaa !115 ; 5 uses
  br i1 %i.w, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.x = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !116 ; 4 uses
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !107
  %wide.load8 = load <4 x i32>, ptr %i.z, align 4, !tbaa !107
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !107
  store <4 x i32> %wide.load8, ptr %i.ab, align 4, !tbaa !107
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !107
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !107
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !266

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #27
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.ah = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre12.i, %._crit_edge.i.i ], [ %.pre12.i, %bb.c ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !116
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ai
  store i32 0, ptr %i.aj, align 4, !tbaa !107
  store i32 %i.o, ptr %i.b, align 4, !tbaa !114
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ak = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.ah, %bb.d ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !116
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %i.an, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.aq, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %1, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  %i.ap = load i32, ptr %.0.i4, align 4, !tbaa !107 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.ap, ptr %.04.i, align 4, !tbaa !107
  %.not.i5 = icmp eq i32 %i.ap, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ar = add nsw i32 %i.ak, %i.a
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !115
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !271 {
bb.a:
  %4 = alloca %class.CMyComPtr.9, align 8         ; 10 uses
  %5 = alloca %"class.NArchive::N7z::CInArchive", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(912) %0)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 880
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %3, null                  ; 3 uses
  br i1 %.not.i, label %_ZN9CMyComPtrI20IArchiveOpenCallbackEC2EPS0_.exit.thread, label %bb.d

_ZN9CMyComPtrI20IArchiveOpenCallbackEC2EPS0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !274
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %3, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.g, !inline_history !268 ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !274
  %i.j = load ptr, ptr %3, align 8, !tbaa !72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(16) @IID_ICryptoGetTextPassword, ptr noundef nonnull %4)
          to label %bb.i unwind label %bb.h, !inline_history !269 ; 0 uses

bb.f:                                             ; preds = %bb.ag, %bb.ab, %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit50

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.i:                                             ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackEC2EPS0_.exit.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.r, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z8CInByte2EE, i64 16), ptr %i.p, align 8, !tbaa !72
  %i.s = invoke noundef i32 @_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %1, ptr noundef %2)
          to label %bb.j unwind label %_ZN11CStringBaseIwED2Ev.exit ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.s, 0
  br i1 %.not32, label %bb.k, label %_ZN11CStringBaseIwED2Ev.exit44

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !274
end_hunk_3
