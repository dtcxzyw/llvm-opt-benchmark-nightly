inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11duckdb_zstd6divbwtEPKhPhPiiS2_S3_i:bb.a
  %.4138164.i = phi ptr [ %.3137.i, %.lr.ph168.i ], [ %.6.i, %bb.bh ] ; 4 uses
  %.0141163.i = phi ptr [ %.071, %.lr.ph168.i ], [ %i.ix, %bb.bh ] ; 6 uses
  %i.ha = load i32, ptr %.0141163.i, align 4, !tbaa !3 ; 8 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %bb.av, label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.hc = and i32 %i.ha, %i.du
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = ptrtoint ptr %.0141163.i to i64
  %i.hf = sub i64 %i.he, %i.gz
  %i.hg = lshr exact i64 %i.hf, 2
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = udiv i32 %i.ha, %i.dw
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr [4 x i8], ptr %5, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 -4
  store i32 %i.hh, ptr %i.hl, align 4, !tbaa !3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = add nsw i32 %i.ha, -1                   ; 4 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !7   ; 3 uses
  %i.hq = zext i8 %i.hp to i32                    ; 3 uses
  store i32 %i.hq, ptr %.0141163.i, align 4, !tbaa !3
  %.not151.i = icmp eq i32 %.3166.i, %i.hq
  br i1 %.not151.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hr = ptrtoint ptr %.4138164.i to i64
  %i.hs = sub i64 %i.hr, %i.gz
  %i.ht = lshr exact i64 %i.hs, 2
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = zext nneg i32 %.3166.i to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hv
  store i32 %i.hu, ptr %i.hw, align 4, !tbaa !3
  %i.hx = zext i8 %i.hp to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %.071, i64 %i.ia
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.5139.i = phi ptr [ %i.ib, %bb.ay ], [ %.4138164.i, %bb.ax ] ; 5 uses
  %.4.i82 = phi i32 [ %i.hq, %bb.ay ], [ %.3166.i, %bb.ax ] ; 2 uses
  %.not152.i = icmp eq i32 %i.ha, 1
  br i1 %.not152.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ic = zext nneg i32 %i.ha to i64
  %i.id = getelementptr i8, ptr %0, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -2     ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !7   ; 2 uses
  %i.ig = icmp ult i8 %i.if, %i.hp
  br i1 %i.ig, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ih = and i32 %i.hm, %i.du
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ij = ptrtoint ptr %.5139.i to i64
  %i.ik = sub i64 %i.ij, %i.gz
  %i.il = lshr exact i64 %i.ik, 2
  %i.im = trunc i64 %i.il to i32
  %i.in = udiv i32 %i.hm, %i.dw
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr [4 x i8], ptr %5, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 -4
  store i32 %i.im, ptr %i.iq, align 4, !tbaa !3
  %.pre173.i = load i8, ptr %i.ie, align 1, !tbaa !7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ir = phi i8 [ %.pre173.i, %bb.bc ], [ %i.if, %bb.bb ]
  %i.is = zext i8 %i.ir to i32
  %i.it = xor i32 %i.is, -1
  %i.iu = getelementptr inbounds nuw i8, ptr %.5139.i, i64 4
  store i32 %i.it, ptr %.5139.i, align 4, !tbaa !3
  br label %bb.bh

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %.5139.i, i64 4
  store i32 %i.hm, ptr %.5139.i, align 4, !tbaa !3
  br label %bb.bh

bb.bf:                                            ; preds = %bb.au
  %.not.i80 = icmp eq i32 %i.ha, 0
  br i1 %.not.i80, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iw = xor i32 %i.ha, -1
  store i32 %i.iw, ptr %.0141163.i, align 4, !tbaa !3
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.6.i = phi ptr [ %i.iu, %bb.bd ], [ %i.iv, %bb.be ], [ %.4138164.i, %bb.bg ], [ %.4138164.i, %bb.bf ]
  %.1133.i = phi ptr [ %.0132165.i, %bb.bd ], [ %.0132165.i, %bb.be ], [ %.0132165.i, %bb.bg ], [ %.0141163.i, %bb.bf ] ; 2 uses
  %.5.i81 = phi i32 [ %.4.i82, %bb.bd ], [ %.4.i82, %bb.be ], [ %.3166.i, %bb.bg ], [ %.3166.i, %bb.bf ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0141163.i, i64 4 ; 2 uses
  %i.iy = icmp ult ptr %i.ix, %i.gy
  br i1 %i.iy, label %bb.au, label %_ZN11duckdb_zstdL13construct_BWTEPKhPiS2_S2_ii.exit, !llvm.loop !119

_ZN11duckdb_zstdL13construct_BWTEPKhPiS2_S2_ii.exit: ; preds = %bb.bh, %bb.ac
  %.1133.i.lcssa.sink = phi ptr [ %.189.i, %bb.ac ], [ %.1133.i, %bb.bh ]
  %.sink126 = phi i64 [ %i.u, %bb.ac ], [ %i.gz, %bb.bh ]
  %.pre-phi = phi i64 [ %i.bv, %bb.ac ], [ %i.gl, %bb.bh ]
  %i.iz = ptrtoint ptr %.1133.i.lcssa.sink to i64
  %i.ja = sub i64 %i.iz, %.sink126
  %.068.in = lshr exact i64 %i.ja, 2              ; 4 uses
  %.068 = trunc i64 %.068.in to i32               ; 5 uses
  %i.jb = getelementptr i8, ptr %0, i64 %.pre-phi
  %i.jc = getelementptr i8, ptr %i.jb, i64 -1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !7
  store i8 %i.jd, ptr %1, align 1, !tbaa !7
  %i.je = icmp sgt i32 %.068, 0
  br i1 %i.je, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN11duckdb_zstdL13construct_BWTEPKhPiS2_S2_ii.exit
  %wide.trip.count = and i64 %.068.in, 2147483647 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check, label %.lr.ph.preheader153, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %i.jf = getelementptr i8, ptr %1, i64 %wide.trip.count
  %scevgep128 = getelementptr i8, ptr %i.jf, i64 1
  %i.jg = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep129 = getelementptr i8, ptr %.071, i64 %i.jg
  %bound0 = icmp ult ptr %scevgep, %scevgep129
  %bound1 = icmp ult ptr %.071, %scevgep128
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader153, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.068.in, 2147483640           ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %index ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load = load <4 x i32>, ptr %i.jh, align 4, !tbaa !3, !alias.scope !120
  %wide.load130 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !3, !alias.scope !120
  %i.jj = trunc <4 x i32> %wide.load to <4 x i8>
  %i.jk = trunc <4 x i32> %wide.load130 to <4 x i8>
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 5
  store <4 x i8> %i.jj, ptr %i.jm, align 1, !tbaa !7, !alias.scope !123, !noalias !120
  store <4 x i8> %i.jk, ptr %i.jn, align 1, !tbaa !7, !alias.scope !123, !noalias !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader153

.lr.ph.preheader153:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.068.in, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader153, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader153 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader153 ]
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %indvars.iv.prol
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = trunc i32 %i.jq to i8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.prol
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !7
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !126

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader153
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader153 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.jt = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN11duckdb_zstdL13construct_BWTEPKhPiS2_S2_ii.exit
  %.0.lcssa = phi i32 [ 0, %_ZN11duckdb_zstdL13construct_BWTEPKhPiS2_S2_ii.exit ], [ %.068, %middle.block ], [ %.068, %.lr.ph ], [ %.068, %.lr.ph.prol.loopexit ] ; 5 uses
  %.195 = add nuw nsw i32 %.0.lcssa, 1
  %i.jv = icmp slt i32 %.195, %3
  br i1 %i.jv, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.preheader
  %narrow = add nuw i32 %.0.lcssa, 1
  %i.jw = zext i32 %narrow to i64                 ; 5 uses
  %7 = sub nsw i32 %3, %.0.lcssa
  %8 = add i32 %7, -2                             ; 2 uses
  %i.jx = zext i32 %8 to i64
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check140 = icmp ult i32 %8, 31
  br i1 %min.iters.check140, label %.lr.ph97.preheader152, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph97.preheader
  %scevgep132 = getelementptr i8, ptr %1, i64 %i.jw
  %i.jz = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.ka = add nsw i32 %3, -2
  %i.kb = sub i32 %i.ka, %.0.lcssa
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr i8, ptr %1, i64 %i.jz
  %i.ke = getelementptr i8, ptr %i.kd, i64 %i.kc
  %scevgep133 = getelementptr i8, ptr %i.ke, i64 2
  %i.kf = shl nuw nsw i64 %i.jz, 2
  %i.kg = getelementptr i8, ptr %.071, i64 %i.kf
  %scevgep134 = getelementptr i8, ptr %i.kg, i64 4
  %i.kh = add nuw nsw i64 %i.jz, %i.kc
  %i.ki = shl nuw nsw i64 %i.kh, 2
  %i.kj = getelementptr i8, ptr %.071, i64 %i.ki
  %scevgep135 = getelementptr i8, ptr %i.kj, i64 8
  %bound0136 = icmp ult ptr %scevgep132, %scevgep135
  %bound1137 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph97.preheader152, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck131
  %n.vec143 = and i64 %i.jy, 8589934584           ; 3 uses
  %i.kk = add nuw nsw i64 %n.vec143, %i.jw
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph141
  %index145 = phi i64 [ 0, %vector.ph141 ], [ %index.next148, %vector.body144 ] ; 2 uses
  %i.kl = add i64 %index145, %i.jw                ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %wide.load146 = load <4 x i32>, ptr %i.km, align 4, !tbaa !3, !alias.scope !128
  %wide.load147 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !3, !alias.scope !128
  %i.ko = trunc <4 x i32> %wide.load146 to <4 x i8>
  %i.kp = trunc <4 x i32> %wide.load147 to <4 x i8>
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store <4 x i8> %i.ko, ptr %i.kq, align 1, !tbaa !7, !alias.scope !131, !noalias !128
  store <4 x i8> %i.kp, ptr %i.kr, align 1, !tbaa !7, !alias.scope !131, !noalias !128
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.ks, label %middle.block149, label %vector.body144, !llvm.loop !133

middle.block149:                                  ; preds = %vector.body144
  %cmp.n150 = icmp eq i64 %i.jy, %n.vec143
  br i1 %cmp.n150, label %._crit_edge, label %.lr.ph97.preheader152

.lr.ph97.preheader152:                            ; preds = %vector.memcheck131, %.lr.ph97.preheader, %middle.block149
  %indvars.iv99.ph = phi i64 [ %i.jw, %vector.memcheck131 ], [ %i.jw, %.lr.ph97.preheader ], [ %i.kk, %middle.block149 ]
  br label %.lr.ph97

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %indvars.iv
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = trunc i32 %i.ku to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !7
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %indvars.iv.next
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %i.kz = trunc i32 %i.ky to i8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !7
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %indvars.iv.next.1
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3
  %i.ld = trunc i32 %i.lc to i8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !7
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %indvars.iv.next.2
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = trunc i32 %i.lg to i8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.3
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !7
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !134

.lr.ph97:                                         ; preds = %.lr.ph97.preheader152, %.lr.ph97
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph97 ], [ %indvars.iv99.ph, %.lr.ph97.preheader152 ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %indvars.iv99
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !3
  %i.ll = trunc i32 %i.lk to i8
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv99
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !7
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ln = trunc nuw i64 %indvars.iv.next100 to i32
  %i.lo = icmp sgt i32 %3, %i.ln
  br i1 %i.lo, label %.lr.ph97, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph97, %middle.block149, %.preheader
  %i.lp = add nsw i32 %.068, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.g, %._crit_edge
  %.169 = phi i32 [ %i.lp, %._crit_edge ], [ -2, %bb.g ] ; 2 uses
  tail call void @free(ptr noundef %i.m) #8
  tail call void @free(ptr noundef %i.l) #8
  br i1 %i.g, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef %.071) #8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.c, %bb.d, %bb.a
  %.070 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ 1, %bb.d ], [ %.169, %bb.bj ], [ %.169, %bb.bi ]
  ret i32 %.070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL13ss_mintrosortEPKhPKiPiS4_i(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #3 {
bb.a:
  %4 = alloca [16 x %struct.anon], align 16       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = and i64 %i.c, 261120
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 10
  %i.f = and i64 %i.e, 255
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader

bb.c:                                             ; preds = %bb.a
  %i.j = lshr exact i64 %i.c, 2
  %i.k = and i64 %i.j, 255
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader

_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader:        ; preds = %bb.b, %bb.c
  %.0388.ph = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit

_ZN11duckdb_zstdL6ss_ilgEi.exit:                  ; preds = %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge, %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader
  %.0436 = phi ptr [ %3, %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader ], [ %.0436.be, %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge ] ; 25 uses
  %.0433 = phi i32 [ 2, %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader ], [ %.0433.be, %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge ] ; 31 uses
  %.0426 = phi ptr [ %2, %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader ], [ %.0426.be, %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge ] ; 68 uses
  %.0392 = phi i32 [ 0, %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader ], [ %.0392.be, %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge ] ; 20 uses
  %.0388 = phi i32 [ %.0388.ph, %_ZN11duckdb_zstdL6ss_ilgEi.exit.preheader ], [ %.0388.be, %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge ] ; 4 uses
  %i.n = ptrtoint ptr %.0436 to i64               ; 4 uses
  %i.o = ptrtoint ptr %.0426 to i64               ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp slt i64 %i.q, 9
  br i1 %i.r, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZN11duckdb_zstdL6ss_ilgEi.exit
  %i.s = icmp sgt i64 %i.q, 1
  br i1 %i.s, label %bb.e, label %_ZN11duckdb_zstdL16ss_insertionsortEPKhPKiPiS4_i.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.0436, i64 -8 ; 2 uses
  %.not43.i = icmp ugt ptr %.0426, %i.t
  br i1 %.not43.i, label %_ZN11duckdb_zstdL16ss_insertionsortEPKhPKiPiS4_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = sext i32 %.0433 to i64                   ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread.thread.i, %.lr.ph.i
  %.044.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.br, %.critedge.thread.thread.i ] ; 3 uses
  %i.w = load i32, ptr %.044.i, align 4, !tbaa !3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.044.i, i64 4 ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !3
  br label %.critedge.i

.critedge.loopexit.i:                             ; preds = %bb.i
  br label %.critedge.i, !llvm.loop !136

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.f
  %i.ab = phi i32 [ %.pre.i, %bb.f ], [ %i.bl, %.critedge.loopexit.i ] ; 3 uses
  %.023.i = phi ptr [ %i.x, %bb.f ], [ %i.bj, %.critedge.loopexit.i ] ; 4 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %.val.i = load i32, ptr %i.z, align 4, !tbaa !3
  %.val28.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %.val29.i = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val30.i = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.af = sext i32 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ah = sext i32 %.val29.i to i64               ; 2 uses
end_hunk_0
