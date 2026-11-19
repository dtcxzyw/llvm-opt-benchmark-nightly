Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/prosumer?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@decode_frame:bb.a
  %i.fq = xor i32 %i.fp, 2
  %i.fr = sub i64 %i.fh, %i.fn
  %i.fs = trunc i64 %i.fr to i32                  ; 2 uses
  %i.ft = icmp slt i32 %i.fp, 0
  %..i145.i = tail call i32 @llvm.smin.i32(i32 %i.fq, i32 %i.fs)
  %.0.i146.i = select i1 %i.ft, i32 0, i32 %..i145.i
  %i.fu = sext i32 %.0.i146.i to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fm, i64 %i.fu ; 3 uses
  store ptr %i.fv, ptr %i.b, align 8, !tbaa !64
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fh, %i.fw
  %i.fy = icmp slt i64 %i.fx, 2
  br i1 %i.fy, label %bytestream2_peek_le16.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fz = load i16, ptr %i.fv, align 1, !tbaa !72
  br label %bytestream2_peek_le16.exit.i

bytestream2_peek_le16.exit.i:                     ; preds = %bb.am, %bb.al
  %.0.i138.i = phi i16 [ %i.fz, %bb.am ], [ 0, %bb.al ]
  %i.ga = add nsw i32 %i.fp, 2
  %i.gb = icmp slt i32 %i.fp, -2
  %..i147.i = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 %i.fs)
  %.0.i148.i = select i1 %i.gb, i32 0, i32 %..i147.i
  %i.gc = sext i32 %.0.i148.i to i64
  %i.gd = getelementptr inbounds i8, ptr %i.fm, i64 %i.gc
  store ptr %i.gd, ptr %i.b, align 8, !tbaa !64
  br label %.backedge.i

.backedge153.i:                                   ; preds = %.backedge.1.i, %._crit_edge..backedge153_crit_edge.i
  %i.ge = phi ptr [ %i.co, %._crit_edge..backedge153_crit_edge.i ], [ %i.ai, %.backedge.1.i ] ; 3 uses
  %i.gf = phi ptr [ %.pre192.i, %._crit_edge..backedge153_crit_edge.i ], [ %i.aj, %.backedge.1.i ] ; 3 uses
  %.0116.be.i = phi i32 [ %i.dv, %._crit_edge..backedge153_crit_edge.i ], [ 0, %.backedge.1.i ]
  %.0114.be.i = phi i32 [ %.1115.lcssa.i, %._crit_edge..backedge153_crit_edge.i ], [ %.3.be.1.i, %.backedge.1.i ]
  %.sroa.14.0.be.i = phi i16 [ %.sroa.14.1.lcssa.i, %._crit_edge..backedge153_crit_edge.i ], [ %.sroa.14.0.extract.trunc63.1.i, %.backedge.1.i ]
  %.sroa.0.0.be.i = phi i16 [ %.sroa.0.1.lcssa.i, %._crit_edge..backedge153_crit_edge.i ], [ %.sroa.0.4.be.1.i, %.backedge.1.i ]
  %.0113.be.i = phi i32 [ %i.dz, %._crit_edge..backedge153_crit_edge.i ], [ %i.fe, %.backedge.1.i ]
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = icmp slt i32 %i.gj, 1
  br i1 %i.gk, label %.loopexit106, label %bb.g

.loopexit106.loopexit:                            ; preds = %bb.aa
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !69
  br label %.loopexit106

.loopexit106:                                     ; preds = %bb.g, %.backedge153.i, %bb.ai, %bb.ak, %.loopexit106.loopexit, %bytestream2_get_le32.exit.i
  %i.gl = phi ptr [ %i.n, %bytestream2_get_le32.exit.i ], [ %i.co, %.loopexit106.loopexit ], [ %i.ai, %bb.g ], [ %i.ge, %.backedge153.i ], [ %i.ai, %bb.ai ], [ %i.ai, %bb.ak ]
  %i.gm = phi ptr [ %i.u, %bytestream2_get_le32.exit.i ], [ %.pre, %.loopexit106.loopexit ], [ %i.aj, %bb.g ], [ %i.gf, %.backedge153.i ], [ %i.aj, %bb.ai ], [ %i.aj, %bb.ak ]
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %sext = shl i64 %i.gp, 32
  %i.gq = ashr exact i64 %sext, 32                ; 2 uses
  %i.gr = load i32, ptr %i.o, align 4, !tbaa !35  ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !73
  %i.gv = sext i32 %i.gu to i64
  %i.gw = mul nsw i64 %i.gv, %i.gs
  %i.gx = sdiv i64 %i.gw, 100
  %i.gy = icmp slt i64 %i.gx, %i.gq
  br i1 %i.gy, label %decompress.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit106
  %i.gz = trunc i64 %i.gp to i32
  %.not = icmp ult i32 %i.gr, %i.gz
  br i1 %.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 163) #6
  tail call void @abort() #7
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ha = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.hb = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = sub i64 %i.go, %i.hc
  %i.he = shl i64 %i.hd, 32
  %i.hf = ashr exact i64 %i.he, 32
  %i.hg = getelementptr inbounds i8, ptr %i.ha, i64 %i.hf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hg, i8 0, i64 %i.gq, i1 false)
  %i.hh = load ptr, ptr %i.m, align 8, !tbaa !37  ; 11 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !33
  %i.hk = ashr i32 %i.hj, 2                       ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.preheader.preheader.i90, label %vertical_predict.exit

.preheader.preheader.i90:                         ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 32832
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !36 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.hk to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.hk, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader.i90
  %i.ho = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hh, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hn, i64 %i.ho
  %bound0 = icmp ult ptr %i.hh, %i.hq
  %bound1 = icmp ult ptr %i.hn, %i.hp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load = load <4 x i32>, ptr %i.hr, align 4, !tbaa !38, !alias.scope !74
  %wide.load155 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !38, !alias.scope !74
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %wide.load156 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  %wide.load157 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  %i.hv = shl <4 x i32> %wide.load156, splat (i32 3)
  %i.hw = shl <4 x i32> %wide.load157, splat (i32 3)
  %i.hx = and <4 x i32> %i.hv, splat (i32 -101058056)
  %i.hy = and <4 x i32> %i.hw, splat (i32 -101058056)
  %i.hz = add <4 x i32> %i.hx, %wide.load
  %i.ia = add <4 x i32> %i.hy, %wide.load155
  %i.ib = and <4 x i32> %i.hz, splat (i32 -50529032)
  %i.ic = and <4 x i32> %i.ia, splat (i32 -50529032)
  store <4 x i32> %i.ib, ptr %i.ht, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  store <4 x i32> %i.ic, ptr %i.hu, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %vertical_predict.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.preheader.i90, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader.i90 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i.ph
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !38
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i.ph ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !38
  %i.ii = shl i32 %i.ih, 3
  %i.ij = and i32 %i.ii, -101058056
  %i.ik = add i32 %i.ij, %i.if
  %i.il = and i32 %i.ik, -50529032
  store i32 %i.il, ptr %i.ig, align 4, !tbaa !38
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.im = add nsw i64 %wide.trip.count.i, -1
  %i.in = icmp eq i64 %indvars.iv.i.ph, %i.im
  br i1 %i.in, label %vertical_predict.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !38
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !38
  %i.is = shl i32 %i.ir, 3
  %i.it = and i32 %i.is, -101058056
  %i.iu = add i32 %i.it, %i.ip
  %i.iv = and i32 %i.iu, -50529032
  store i32 %i.iv, ptr %i.iq, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !38
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !38
  %i.ja = shl i32 %i.iz, 3
  %i.jb = and i32 %i.ja, -101058056
  %i.jc = add i32 %i.jb, %i.ix
  %i.jd = and i32 %i.jc, -50529032
  store i32 %i.jd, ptr %i.iy, align 4, !tbaa !38
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i91.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i91.1, label %vertical_predict.exit, label %scalar.ph, !llvm.loop !52

vertical_predict.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ap
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !34 ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, 1
  br i1 %i.jg, label %.preheader.lr.ph.i, label %vertical_predict.exit104

.preheader.lr.ph.i:                               ; preds = %vertical_predict.exit
  %i.jh = load i32, ptr %i.hi, align 8, !tbaa !33
  %i.ji = ashr i32 %i.jh, 2                       ; 4 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  %i.jk = sext i32 %i.ji to i64                   ; 4 uses
  br i1 %i.jj, label %.preheader.preheader.i93, label %vertical_predict.exit104

.preheader.preheader.i93:                         ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i94 = zext nneg i32 %i.ji to i64 ; 7 uses
  %i.jl = add nsw i32 %i.jf, -2                   ; 2 uses
  %4 = zext i32 %i.jl to i64                      ; 2 uses
  %5 = mul nuw nsw i64 %i.jk, %4
  %6 = shl nuw nsw i64 %wide.trip.count.i94, 2
  %7 = add nuw nsw i64 %5, %wide.trip.count.i94
  %i.jm = shl i64 %7, 2
  %scevgep = getelementptr i8, ptr %i.hh, i64 %i.jm
  %i.jn = shl nuw nsw i64 %4, 2
  %8 = add nuw nsw i64 %i.jn, 4
  %9 = mul nuw i64 %8, %i.jk
  %i.jo = getelementptr i8, ptr %i.hh, i64 %9
  %scevgep164 = getelementptr i8, ptr %i.jo, i64 %6
  %10 = shl nuw nsw i64 %i.jk, 2
  %scevgep165 = getelementptr i8, ptr %i.hh, i64 %10
  %min.iters.check167 = icmp ult i32 %i.ji, 8
  %bound0169 = icmp ult ptr %scevgep165, %scevgep
  %bound1170 = icmp ult ptr %i.hh, %scevgep164
  %found.conflict171 = and i1 %bound0169, %bound1170
  %n.vec173 = and i64 %wide.trip.count.i94, 2147483640 ; 3 uses
  %cmp.n182 = icmp eq i64 %n.vec173, %wide.trip.count.i94
  %xtraiter191 = and i64 %wide.trip.count.i94, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.jp = add nsw i64 %wide.trip.count.i94, -1
  br label %.preheader.i95

.preheader.i95:                                   ; preds = %._crit_edge.i102, %.preheader.preheader.i93
  %.01724.i96 = phi i32 [ %i.km, %._crit_edge.i102 ], [ 0, %.preheader.preheader.i93 ] ; 2 uses
  %.01823.i97.pn = phi ptr [ %.01823.i97, %._crit_edge.i102 ], [ %i.hh, %.preheader.preheader.i93 ] ; 5 uses
  %.01823.i97 = getelementptr [4 x i8], ptr %.01823.i97.pn, i64 %i.jk ; 5 uses
  %brmerge = select i1 %min.iters.check167, i1 true, i1 %found.conflict171
  br i1 %brmerge, label %scalar.ph166.preheader, label %vector.body174

vector.body174:                                   ; preds = %.preheader.i95, %vector.body174
  %index175 = phi i64 [ %index.next180, %vector.body174 ], [ 0, %.preheader.i95 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %index175 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load176 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !38, !alias.scope !78
  %wide.load177 = load <4 x i32>, ptr %i.jr, align 4, !tbaa !38, !alias.scope !78
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %index175 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %i.js, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  %wide.load179 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  %i.ju = shl <4 x i32> %wide.load178, splat (i32 3)
  %i.jv = shl <4 x i32> %wide.load179, splat (i32 3)
  %i.jw = and <4 x i32> %i.ju, splat (i32 -101058056)
  %i.jx = and <4 x i32> %i.jv, splat (i32 -101058056)
  %i.jy = add <4 x i32> %i.jw, %wide.load176
  %i.jz = add <4 x i32> %i.jx, %wide.load177
  %i.ka = and <4 x i32> %i.jy, splat (i32 -50529032)
  %i.kb = and <4 x i32> %i.jz, splat (i32 -50529032)
  store <4 x i32> %i.ka, ptr %i.js, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  store <4 x i32> %i.kb, ptr %i.jt, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.kc = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.kc, label %middle.block181, label %vector.body174, !llvm.loop !56

middle.block181:                                  ; preds = %vector.body174
  br i1 %cmp.n182, label %._crit_edge.i102, label %scalar.ph166.preheader

scalar.ph166.preheader:                           ; preds = %.preheader.i95, %middle.block181
  %indvars.iv.i99.ph = phi i64 [ %n.vec173, %middle.block181 ], [ 0, %.preheader.i95 ] ; 5 uses
  br i1 %lcmp.mod192.not, label %scalar.ph166.prol.loopexit, label %scalar.ph166.prol

scalar.ph166.prol:                                ; preds = %scalar.ph166.preheader
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %indvars.iv.i99.ph
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !38
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %indvars.iv.i99.ph ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !38
  %i.kh = shl i32 %i.kg, 3
  %i.ki = and i32 %i.kh, -101058056
  %i.kj = add i32 %i.ki, %i.ke
  %i.kk = and i32 %i.kj, -50529032
  store i32 %i.kk, ptr %i.kf, align 4, !tbaa !38
  %indvars.iv.next.i100.prol = or disjoint i64 %indvars.iv.i99.ph, 1
  br label %scalar.ph166.prol.loopexit

scalar.ph166.prol.loopexit:                       ; preds = %scalar.ph166.prol, %scalar.ph166.preheader
  %indvars.iv.i99.unr = phi i64 [ %indvars.iv.i99.ph, %scalar.ph166.preheader ], [ %indvars.iv.next.i100.prol, %scalar.ph166.prol ]
  %i.kl = icmp eq i64 %indvars.iv.i99.ph, %i.jp
  br i1 %i.kl, label %._crit_edge.i102, label %scalar.ph166

._crit_edge.i102:                                 ; preds = %scalar.ph166.prol.loopexit, %scalar.ph166, %middle.block181
  %i.km = add nuw nsw i32 %.01724.i96, 1
  %exitcond27.not.i103 = icmp eq i32 %.01724.i96, %i.jl
  br i1 %exitcond27.not.i103, label %vertical_predict.exit104, label %.preheader.i95, !llvm.loop !57

scalar.ph166:                                     ; preds = %scalar.ph166.prol.loopexit, %scalar.ph166
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100.1, %scalar.ph166 ], [ %indvars.iv.i99.unr, %scalar.ph166.prol.loopexit ] ; 4 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %indvars.iv.i99
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !38
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %indvars.iv.i99 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !38
  %i.kr = shl i32 %i.kq, 3
  %i.ks = and i32 %i.kr, -101058056
  %i.kt = add i32 %i.ks, %i.ko
  %i.ku = and i32 %i.kt, -50529032
  store i32 %i.ku, ptr %i.kp, align 4, !tbaa !38
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %indvars.iv.next.i100
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !38
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %indvars.iv.next.i100 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !38
  %i.kz = shl i32 %i.ky, 3
  %i.la = and i32 %i.kz, -101058056
  %i.lb = add i32 %i.la, %i.kw
  %i.lc = and i32 %i.lb, -50529032
  store i32 %i.lc, ptr %i.kx, align 4, !tbaa !38
  %indvars.iv.next.i100.1 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %exitcond.not.i101.1 = icmp eq i64 %indvars.iv.next.i100.1, %wide.trip.count.i94
  br i1 %exitcond.not.i101.1, label %._crit_edge.i102, label %scalar.ph166, !llvm.loop !58

vertical_predict.exit104:                         ; preds = %._crit_edge.i102, %vertical_predict.exit, %.preheader.lr.ph.i
  %i.ld = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.le = icmp slt i32 %i.ld, 0
  br i1 %i.le, label %decompress.exit, label %bb.aq

bb.aq:                                            ; preds = %vertical_predict.exit104
  %i.lf = load i32, ptr %i.je, align 4, !tbaa !34 ; 2 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph118, label %._crit_edge

.lr.ph118:                                        ; preds = %bb.aq
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !29 ; 2 uses
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %.lr.ph118.split, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph118.split
  %i.lp = phi i32 [ %i.ls, %.lr.ph118.split ], [ %i.ob, %.lr.ph ]
  %i.lq = icmp samesign ugt i32 %.083.in116, 1
  br i1 %i.lq, label %.lr.ph118.split, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph118, %bb.aq
  store i32 1, ptr %2, align 4, !tbaa !38
  %i.lr = load i32, ptr %i.c, align 8, !tbaa !62
  br label %decompress.exit

.lr.ph118.split:                                  ; preds = %.lr.ph118, %.loopexit
  %i.ls = phi i32 [ %i.lp, %.loopexit ], [ %i.ln, %.lr.ph118 ] ; 2 uses
  %.083.in116 = phi i32 [ %.083117, %.loopexit ], [ %i.lf, %.lr.ph118 ] ; 3 uses
  %.083117 = add nsw i32 %.083.in116, -1          ; 4 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph118.split
  %i.lu = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.lv = load i32, ptr %i.je, align 4, !tbaa !34
  %i.lw = sub i32 %i.lv, %.083.in116
  %i.lx = load i32, ptr %i.hi, align 8, !tbaa !33
  %i.ly = mul i32 %i.lw, %i.lx
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lz
  %i.mb = load ptr, ptr %i.lk, align 8, !tbaa !71
  %i.mc = load i32, ptr %i.ll, align 8, !tbaa !38
  %i.md = mul nsw i32 %i.mc, %.083117
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds i8, ptr %i.mb, i64 %i.me
  %i.mg = load ptr, ptr %i.li, align 8, !tbaa !71
  %i.mh = load i32, ptr %i.lj, align 4, !tbaa !38
  %i.mi = mul nsw i32 %i.mh, %.083117
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.mj
  %i.ml = load ptr, ptr %1, align 8, !tbaa !71
  %i.mm = load i32, ptr %i.lh, align 8, !tbaa !38
  %i.mn = mul nsw i32 %i.mm, %.083117
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %i.ml, i64 %i.mo
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0114 = phi i32 [ %i.oa, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.079113 = phi ptr [ %i.nx, %.lr.ph ], [ %i.ma, %.lr.ph.preheader ] ; 13 uses
  %.080112 = phi ptr [ %i.nk, %.lr.ph ], [ %i.mf, %.lr.ph.preheader ] ; 3 uses
  %.081111 = phi ptr [ %i.ne, %.lr.ph ], [ %i.mk, %.lr.ph.preheader ] ; 3 uses
  %.082110 = phi ptr [ %i.nz, %.lr.ph ], [ %i.mp, %.lr.ph.preheader ] ; 9 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.079113, i64 1
  %i.mr = load i8, ptr %.079113, align 1, !tbaa !72
  %i.ms = getelementptr inbounds nuw i8, ptr %.081111, i64 1
  store i8 %i.mr, ptr %.081111, align 1, !tbaa !72
  %i.mt = getelementptr inbounds nuw i8, ptr %.079113, i64 2
  %i.mu = load i8, ptr %i.mq, align 1, !tbaa !72
  %i.mv = getelementptr inbounds nuw i8, ptr %.082110, i64 1
  store i8 %i.mu, ptr %.082110, align 1, !tbaa !72
  %i.mw = getelementptr inbounds nuw i8, ptr %.079113, i64 3
  %i.mx = load i8, ptr %i.mt, align 1, !tbaa !72
  %i.my = getelementptr inbounds nuw i8, ptr %.080112, i64 1
  store i8 %i.mx, ptr %.080112, align 1, !tbaa !72
  %i.mz = getelementptr inbounds nuw i8, ptr %.079113, i64 4
  %i.na = load i8, ptr %i.mw, align 1, !tbaa !72
  %i.nb = getelementptr inbounds nuw i8, ptr %.082110, i64 2
  store i8 %i.na, ptr %i.mv, align 1, !tbaa !72
  %i.nc = getelementptr inbounds nuw i8, ptr %.079113, i64 5
  %i.nd = load i8, ptr %i.mz, align 1, !tbaa !72
  %i.ne = getelementptr inbounds nuw i8, ptr %.081111, i64 2
  store i8 %i.nd, ptr %i.ms, align 1, !tbaa !72
  %i.nf = getelementptr inbounds nuw i8, ptr %.079113, i64 6
  %i.ng = load i8, ptr %i.nc, align 1, !tbaa !72
  %i.nh = getelementptr inbounds nuw i8, ptr %.082110, i64 3
  store i8 %i.ng, ptr %i.nb, align 1, !tbaa !72
  %i.ni = getelementptr inbounds nuw i8, ptr %.079113, i64 7
  %i.nj = load i8, ptr %i.nf, align 1, !tbaa !72
  %i.nk = getelementptr inbounds nuw i8, ptr %.080112, i64 2
  store i8 %i.nj, ptr %i.my, align 1, !tbaa !72
  %i.nl = getelementptr inbounds nuw i8, ptr %.079113, i64 8
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !72
  %i.nn = getelementptr inbounds nuw i8, ptr %.082110, i64 4
  store i8 %i.nm, ptr %i.nh, align 1, !tbaa !72
  %i.no = getelementptr inbounds nuw i8, ptr %.079113, i64 9
  %i.np = load i8, ptr %i.nl, align 1, !tbaa !72
end_hunk_0
