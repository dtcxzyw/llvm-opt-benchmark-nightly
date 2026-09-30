Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/prosumer?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@decode_frame:bb.a
  %i.fx = icmp slt i64 %i.fw, 2
  br i1 %i.fx, label %bytestream2_peek_le16.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = load i16, ptr %i.fu, align 1, !tbaa !72
  br label %bytestream2_peek_le16.exit.i

bytestream2_peek_le16.exit.i:                     ; preds = %bb.am, %bb.al
  %.0.i138.i = phi i16 [ %i.fy, %bb.am ], [ 0, %bb.al ]
  %i.fz = add nsw i32 %i.fo, 2
  %i.ga = icmp slt i32 %i.fo, -2
  %..i147.i = tail call i32 @llvm.smin.i32(i32 %i.fz, i32 %i.fr)
  %.0.i148.i = select i1 %i.ga, i32 0, i32 %..i147.i
  %i.gb = sext i32 %.0.i148.i to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fl, i64 %i.gb
  store ptr %i.gc, ptr %i.b, align 8, !tbaa !64
  br label %.backedge.i

.backedge153.i:                                   ; preds = %.backedge.1.i, %._crit_edge..backedge153_crit_edge.i
  %i.gd = phi ptr [ %i.cn, %._crit_edge..backedge153_crit_edge.i ], [ %i.ai, %.backedge.1.i ] ; 3 uses
  %i.ge = phi ptr [ %.pre.i, %._crit_edge..backedge153_crit_edge.i ], [ %i.aj, %.backedge.1.i ] ; 3 uses
  %.0116.be.i = phi i32 [ %i.du, %._crit_edge..backedge153_crit_edge.i ], [ 0, %.backedge.1.i ]
  %.0114.be.i = phi i32 [ %.1115.lcssa.i, %._crit_edge..backedge153_crit_edge.i ], [ %.3.be.1.i, %.backedge.1.i ]
  %.sroa.14.0.be.i = phi i16 [ %.sroa.14.1.lcssa.i, %._crit_edge..backedge153_crit_edge.i ], [ %.sroa.14.0.extract.trunc63.1.i, %.backedge.1.i ]
  %.sroa.0.0.be.i = phi i16 [ %.sroa.0.1.lcssa.i, %._crit_edge..backedge153_crit_edge.i ], [ %.sroa.0.4.be.1.i, %.backedge.1.i ]
  %.0113.be.i = phi i32 [ %i.dy, %._crit_edge..backedge153_crit_edge.i ], [ %i.fd, %.backedge.1.i ]
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = icmp slt i32 %i.gi, 1
  br i1 %i.gj, label %.loopexit107, label %bb.g

.loopexit107.loopexit:                            ; preds = %bb.aa
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !69
  br label %.loopexit107

.loopexit107:                                     ; preds = %bb.g, %.backedge153.i, %bb.ai, %bb.ak, %.loopexit107.loopexit, %bytestream2_get_le32.exit.i
  %i.gk = phi ptr [ %i.n, %bytestream2_get_le32.exit.i ], [ %i.cn, %.loopexit107.loopexit ], [ %i.ai, %bb.g ], [ %i.gd, %.backedge153.i ], [ %i.ai, %bb.ai ], [ %i.ai, %bb.ak ]
  %i.gl = phi ptr [ %i.u, %bytestream2_get_le32.exit.i ], [ %.pre, %.loopexit107.loopexit ], [ %i.aj, %bb.g ], [ %i.ge, %.backedge153.i ], [ %i.aj, %bb.ai ], [ %i.aj, %bb.ak ]
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %sext = shl i64 %i.go, 32
  %i.gp = ashr exact i64 %sext, 32                ; 2 uses
  %i.gq = load i32, ptr %i.o, align 4, !tbaa !35  ; 2 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !73
  %i.gu = sext i32 %i.gt to i64
  %i.gv = mul nsw i64 %i.gu, %i.gr
  %i.gw = sdiv i64 %i.gv, 100
  %i.gx = icmp slt i64 %i.gw, %i.gp
  br i1 %i.gx, label %decompress.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit107
  %i.gy = trunc i64 %i.go to i32
  %.not = icmp ult i32 %i.gq, %i.gy
  br i1 %.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 163) #6
  tail call void @abort() #7
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ha = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.gn, %i.hb
  %sext106 = shl i64 %i.hc, 32
  %i.hd = ashr exact i64 %sext106, 32
  %i.he = getelementptr inbounds i8, ptr %i.gz, i64 %i.hd
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.he, i8 0, i64 %i.gp, i1 false)
  %i.hf = load ptr, ptr %i.m, align 8, !tbaa !37  ; 11 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !33
  %i.hi = ashr i32 %i.hh, 2                       ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.preheader.preheader.i90, label %vertical_predict.exit

.preheader.preheader.i90:                         ; preds = %bb.ap
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 32832
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !36 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.hi to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.hi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader.i90
  %i.hm = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hf, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hl, i64 %i.hm
  %bound0 = icmp ult ptr %i.hf, %i.ho
  %bound1 = icmp ult ptr %i.hl, %i.hn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load = load <4 x i32>, ptr %i.hp, align 4, !tbaa !38, !alias.scope !74
  %wide.load156 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !38, !alias.scope !74
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  %wide.load158 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  %i.ht = shl <4 x i32> %wide.load157, splat (i32 3)
  %i.hu = shl <4 x i32> %wide.load158, splat (i32 3)
  %i.hv = and <4 x i32> %i.ht, splat (i32 -101058056)
  %i.hw = and <4 x i32> %i.hu, splat (i32 -101058056)
  %i.hx = add <4 x i32> %i.hv, %wide.load
  %i.hy = add <4 x i32> %i.hw, %wide.load156
  %i.hz = and <4 x i32> %i.hx, splat (i32 -50529032)
  %i.ia = and <4 x i32> %i.hy, splat (i32 -50529032)
  store <4 x i32> %i.hz, ptr %i.hr, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  store <4 x i32> %i.ia, ptr %i.hs, align 4, !tbaa !38, !alias.scope !75, !noalias !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %vertical_predict.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.preheader.i90, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader.i90 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.i.ph
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !38
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i.ph ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !38
  %i.ig = shl i32 %i.if, 3
  %i.ih = and i32 %i.ig, -101058056
  %i.ii = add i32 %i.ih, %i.id
  %i.ij = and i32 %i.ii, -50529032
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !38
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ik = add nsw i64 %wide.trip.count.i, -1
  %i.il = icmp eq i64 %indvars.iv.i.ph, %i.ik
  br i1 %i.il, label %vertical_predict.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !38
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !38
  %i.iq = shl i32 %i.ip, 3
  %i.ir = and i32 %i.iq, -101058056
  %i.is = add i32 %i.ir, %i.in
  %i.it = and i32 %i.is, -50529032
  store i32 %i.it, ptr %i.io, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !38
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !38
  %i.iy = shl i32 %i.ix, 3
  %i.iz = and i32 %i.iy, -101058056
  %i.ja = add i32 %i.iz, %i.iv
  %i.jb = and i32 %i.ja, -50529032
  store i32 %i.jb, ptr %i.iw, align 4, !tbaa !38
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i91.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i91.1, label %vertical_predict.exit, label %scalar.ph, !llvm.loop !52

vertical_predict.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ap
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !34 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %.preheader.lr.ph.i, label %vertical_predict.exit104

.preheader.lr.ph.i:                               ; preds = %vertical_predict.exit
  %i.jf = load i32, ptr %i.hg, align 8, !tbaa !33
  %i.jg = ashr i32 %i.jf, 2                       ; 4 uses
  %i.jh = icmp sgt i32 %i.jg, 0
  %i.ji = sext i32 %i.jg to i64                   ; 4 uses
  br i1 %i.jh, label %.preheader.preheader.i93, label %vertical_predict.exit104

.preheader.preheader.i93:                         ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i94 = zext nneg i32 %i.jg to i64 ; 7 uses
  %i.jj = add nsw i32 %i.jd, -2                   ; 2 uses
  %i.jk = shl nuw nsw i64 %i.ji, 2
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.jk
  %i.jl = zext i32 %i.jj to i64                   ; 2 uses
  %i.jm = shl nuw nsw i64 %i.jl, 2
  %i.jn = add nuw nsw i64 %i.jm, 4
  %i.jo = mul i64 %i.jn, %i.ji
  %i.jp = shl nuw nsw i64 %wide.trip.count.i94, 2
  %i.jq = getelementptr i8, ptr %i.hf, i64 %i.jo
  %scevgep160 = getelementptr i8, ptr %i.jq, i64 %i.jp
  %i.jr = mul nuw nsw i64 %i.ji, %i.jl
  %i.js = add nuw nsw i64 %i.jr, %wide.trip.count.i94
  %i.jt = shl i64 %i.js, 2
  %scevgep161 = getelementptr i8, ptr %i.hf, i64 %i.jt
  %min.iters.check166 = icmp ult i32 %i.jg, 8
  %bound0162 = icmp ult ptr %scevgep, %scevgep161
  %bound1163 = icmp ult ptr %i.hf, %scevgep160
  %found.conflict164 = and i1 %bound0162, %bound1163
  %n.vec168 = and i64 %wide.trip.count.i94, 2147483640 ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %wide.trip.count.i94
  %xtraiter186 = and i64 %wide.trip.count.i94, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.ju = add nsw i64 %wide.trip.count.i94, -1
  br label %.preheader.i95

.preheader.i95:                                   ; preds = %._crit_edge.i102, %.preheader.preheader.i93
  %.01724.i96 = phi i32 [ %i.kr, %._crit_edge.i102 ], [ 0, %.preheader.preheader.i93 ] ; 2 uses
  %.01823.i97.pn = phi ptr [ %.01823.i97, %._crit_edge.i102 ], [ %i.hf, %.preheader.preheader.i93 ] ; 5 uses
  %.01823.i97 = getelementptr [4 x i8], ptr %.01823.i97.pn, i64 %i.ji ; 5 uses
  %brmerge = select i1 %min.iters.check166, i1 true, i1 %found.conflict164
  br i1 %brmerge, label %scalar.ph165.preheader, label %vector.body169

vector.body169:                                   ; preds = %.preheader.i95, %vector.body169
  %index170 = phi i64 [ %index.next175, %vector.body169 ], [ 0, %.preheader.i95 ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %index170 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load171 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !38, !alias.scope !78
  %wide.load172 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !38, !alias.scope !78
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %index170 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load173 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  %wide.load174 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  %i.jz = shl <4 x i32> %wide.load173, splat (i32 3)
  %i.ka = shl <4 x i32> %wide.load174, splat (i32 3)
  %i.kb = and <4 x i32> %i.jz, splat (i32 -101058056)
  %i.kc = and <4 x i32> %i.ka, splat (i32 -101058056)
  %i.kd = add <4 x i32> %i.kb, %wide.load171
  %i.ke = add <4 x i32> %i.kc, %wide.load172
  %i.kf = and <4 x i32> %i.kd, splat (i32 -50529032)
  %i.kg = and <4 x i32> %i.ke, splat (i32 -50529032)
  store <4 x i32> %i.kf, ptr %i.jx, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  store <4 x i32> %i.kg, ptr %i.jy, align 4, !tbaa !38, !alias.scope !79, !noalias !78
  %index.next175 = add nuw i64 %index170, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.kh, label %middle.block176, label %vector.body169, !llvm.loop !56

middle.block176:                                  ; preds = %vector.body169
  br i1 %cmp.n177, label %._crit_edge.i102, label %scalar.ph165.preheader

scalar.ph165.preheader:                           ; preds = %.preheader.i95, %middle.block176
  %indvars.iv.i99.ph = phi i64 [ %n.vec168, %middle.block176 ], [ 0, %.preheader.i95 ] ; 5 uses
  br i1 %lcmp.mod187.not, label %scalar.ph165.prol.loopexit, label %scalar.ph165.prol

scalar.ph165.prol:                                ; preds = %scalar.ph165.preheader
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %indvars.iv.i99.ph
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !38
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %indvars.iv.i99.ph ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !38
  %i.km = shl i32 %i.kl, 3
  %i.kn = and i32 %i.km, -101058056
  %i.ko = add i32 %i.kn, %i.kj
  %i.kp = and i32 %i.ko, -50529032
  store i32 %i.kp, ptr %i.kk, align 4, !tbaa !38
  %indvars.iv.next.i100.prol = or disjoint i64 %indvars.iv.i99.ph, 1
  br label %scalar.ph165.prol.loopexit

scalar.ph165.prol.loopexit:                       ; preds = %scalar.ph165.prol, %scalar.ph165.preheader
  %indvars.iv.i99.unr = phi i64 [ %indvars.iv.i99.ph, %scalar.ph165.preheader ], [ %indvars.iv.next.i100.prol, %scalar.ph165.prol ]
  %i.kq = icmp eq i64 %indvars.iv.i99.ph, %i.ju
  br i1 %i.kq, label %._crit_edge.i102, label %scalar.ph165

._crit_edge.i102:                                 ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %i.kr = add nuw nsw i32 %.01724.i96, 1
  %exitcond27.not.i103 = icmp eq i32 %.01724.i96, %i.jj
  br i1 %exitcond27.not.i103, label %vertical_predict.exit104, label %.preheader.i95, !llvm.loop !57

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100.1, %scalar.ph165 ], [ %indvars.iv.i99.unr, %scalar.ph165.prol.loopexit ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %indvars.iv.i99
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !38
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %indvars.iv.i99 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !38
  %i.kw = shl i32 %i.kv, 3
  %i.kx = and i32 %i.kw, -101058056
  %i.ky = add i32 %i.kx, %i.kt
  %i.kz = and i32 %i.ky, -50529032
  store i32 %i.kz, ptr %i.ku, align 4, !tbaa !38
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97.pn, i64 %indvars.iv.next.i100
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !38
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.01823.i97, i64 %indvars.iv.next.i100 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !38
  %i.le = shl i32 %i.ld, 3
  %i.lf = and i32 %i.le, -101058056
  %i.lg = add i32 %i.lf, %i.lb
  %i.lh = and i32 %i.lg, -50529032
  store i32 %i.lh, ptr %i.lc, align 4, !tbaa !38
  %indvars.iv.next.i100.1 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %exitcond.not.i101.1 = icmp eq i64 %indvars.iv.next.i100.1, %wide.trip.count.i94
  br i1 %exitcond.not.i101.1, label %._crit_edge.i102, label %scalar.ph165, !llvm.loop !58

vertical_predict.exit104:                         ; preds = %._crit_edge.i102, %vertical_predict.exit, %.preheader.lr.ph.i
  %i.li = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.lj = icmp slt i32 %i.li, 0
  br i1 %i.lj, label %decompress.exit, label %bb.aq

bb.aq:                                            ; preds = %vertical_predict.exit104
  %i.lk = load i32, ptr %i.jc, align 4, !tbaa !34 ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %bb.aq
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !29 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %.lr.ph119.split, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph119.split
  %i.lu = phi i32 [ %i.lx, %.lr.ph119.split ], [ %i.og, %.lr.ph ]
  %i.lv = icmp samesign ugt i32 %.083.in117, 1
  br i1 %i.lv, label %.lr.ph119.split, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph119, %bb.aq
  store i32 1, ptr %2, align 4, !tbaa !38
  %i.lw = load i32, ptr %i.c, align 8, !tbaa !62
  br label %decompress.exit

.lr.ph119.split:                                  ; preds = %.lr.ph119, %.loopexit
  %i.lx = phi i32 [ %i.lu, %.loopexit ], [ %i.ls, %.lr.ph119 ] ; 2 uses
  %.083.in117 = phi i32 [ %.083118, %.loopexit ], [ %i.lk, %.lr.ph119 ] ; 3 uses
  %.083118 = add nsw i32 %.083.in117, -1          ; 4 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph119.split
  %i.lz = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ma = load i32, ptr %i.jc, align 4, !tbaa !34
  %i.mb = sub i32 %i.ma, %.083.in117
  %i.mc = load i32, ptr %i.hg, align 8, !tbaa !33
  %i.md = mul i32 %i.mb, %i.mc
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.me
  %i.mg = load ptr, ptr %i.lp, align 8, !tbaa !71
  %i.mh = load i32, ptr %i.lq, align 8, !tbaa !38
  %i.mi = mul nsw i32 %i.mh, %.083118
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.mj
  %i.ml = load ptr, ptr %i.ln, align 8, !tbaa !71
  %i.mm = load i32, ptr %i.lo, align 4, !tbaa !38
  %i.mn = mul nsw i32 %i.mm, %.083118
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %i.ml, i64 %i.mo
  %i.mq = load ptr, ptr %1, align 8, !tbaa !71
  %i.mr = load i32, ptr %i.lm, align 8, !tbaa !38
  %i.ms = mul nsw i32 %i.mr, %.083118
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0115 = phi i32 [ %i.of, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.079114 = phi ptr [ %i.oc, %.lr.ph ], [ %i.mf, %.lr.ph.preheader ] ; 13 uses
  %.080113 = phi ptr [ %i.np, %.lr.ph ], [ %i.mk, %.lr.ph.preheader ] ; 3 uses
  %.081112 = phi ptr [ %i.nj, %.lr.ph ], [ %i.mp, %.lr.ph.preheader ] ; 3 uses
  %.082111 = phi ptr [ %i.oe, %.lr.ph ], [ %i.mu, %.lr.ph.preheader ] ; 9 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.079114, i64 1
  %i.mw = load i8, ptr %.079114, align 1, !tbaa !72
  %i.mx = getelementptr inbounds nuw i8, ptr %.081112, i64 1
  store i8 %i.mw, ptr %.081112, align 1, !tbaa !72
  %i.my = getelementptr inbounds nuw i8, ptr %.079114, i64 2
  %i.mz = load i8, ptr %i.mv, align 1, !tbaa !72
  %i.na = getelementptr inbounds nuw i8, ptr %.082111, i64 1
  store i8 %i.mz, ptr %.082111, align 1, !tbaa !72
  %i.nb = getelementptr inbounds nuw i8, ptr %.079114, i64 3
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !72
  %i.nd = getelementptr inbounds nuw i8, ptr %.080113, i64 1
  store i8 %i.nc, ptr %.080113, align 1, !tbaa !72
  %i.ne = getelementptr inbounds nuw i8, ptr %.079114, i64 4
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !72
  %i.ng = getelementptr inbounds nuw i8, ptr %.082111, i64 2
  store i8 %i.nf, ptr %i.na, align 1, !tbaa !72
  %i.nh = getelementptr inbounds nuw i8, ptr %.079114, i64 5
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !72
  %i.nj = getelementptr inbounds nuw i8, ptr %.081112, i64 2
  store i8 %i.ni, ptr %i.mx, align 1, !tbaa !72
  %i.nk = getelementptr inbounds nuw i8, ptr %.079114, i64 6
  %i.nl = load i8, ptr %i.nh, align 1, !tbaa !72
  %i.nm = getelementptr inbounds nuw i8, ptr %.082111, i64 3
  store i8 %i.nl, ptr %i.ng, align 1, !tbaa !72
  %i.nn = getelementptr inbounds nuw i8, ptr %.079114, i64 7
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !72
  %i.np = getelementptr inbounds nuw i8, ptr %.080113, i64 2
end_hunk_0
