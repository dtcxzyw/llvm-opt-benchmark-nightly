Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@divbwt:bb.a
  %i.gy = getelementptr inbounds nuw i8, ptr %.070, i64 %.idx171.i
  %.3137.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gz = ptrtoint ptr %.070 to i64               ; 4 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.bh, %.lr.ph168.i
  %.3166.i = phi i32 [ %i.gf, %.lr.ph168.i ], [ %.5.i81, %bb.bh ] ; 5 uses
  %.0132165.i = phi ptr [ %.070, %.lr.ph168.i ], [ %.1133.i, %bb.bh ] ; 3 uses
  %.4138164.i = phi ptr [ %.3137.i, %.lr.ph168.i ], [ %.6.i, %bb.bh ] ; 4 uses
  %.0141163.i = phi ptr [ %.070, %.lr.ph168.i ], [ %i.ix, %bb.bh ] ; 6 uses
  %i.ha = load i32, ptr %.0141163.i, align 4, !tbaa !9 ; 8 uses
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
  store i32 %i.hh, ptr %i.hl, align 4, !tbaa !9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = add nsw i32 %i.ha, -1                   ; 4 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !10  ; 3 uses
  %i.hq = zext i8 %i.hp to i32                    ; 3 uses
  store i32 %i.hq, ptr %.0141163.i, align 4, !tbaa !9
  %.not151.i = icmp eq i32 %.3166.i, %i.hq
  br i1 %.not151.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hr = ptrtoint ptr %.4138164.i to i64
  %i.hs = sub i64 %i.hr, %i.gz
  %i.ht = lshr exact i64 %i.hs, 2
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = zext nneg i32 %.3166.i to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hv
  store i32 %i.hu, ptr %i.hw, align 4, !tbaa !9
  %i.hx = zext i8 %i.hp to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !9
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.ia
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
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !10  ; 2 uses
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
  store i32 %i.im, ptr %i.iq, align 4, !tbaa !9
  %.pre173.i = load i8, ptr %i.ie, align 1, !tbaa !10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ir = phi i8 [ %.pre173.i, %bb.bc ], [ %i.if, %bb.bb ]
  %i.is = zext i8 %i.ir to i32
  %i.it = xor i32 %i.is, -1
  %i.iu = getelementptr inbounds nuw i8, ptr %.5139.i, i64 4
  store i32 %i.it, ptr %.5139.i, align 4, !tbaa !9
  br label %bb.bh

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %.5139.i, i64 4
  store i32 %i.hm, ptr %.5139.i, align 4, !tbaa !9
  br label %bb.bh

bb.bf:                                            ; preds = %bb.au
  %.not.i80 = icmp eq i32 %i.ha, 0
  br i1 %.not.i80, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iw = xor i32 %i.ha, -1
  store i32 %i.iw, ptr %.0141163.i, align 4, !tbaa !9
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.6.i = phi ptr [ %i.iu, %bb.bd ], [ %i.iv, %bb.be ], [ %.4138164.i, %bb.bg ], [ %.4138164.i, %bb.bf ]
  %.1133.i = phi ptr [ %.0132165.i, %bb.bd ], [ %.0132165.i, %bb.be ], [ %.0132165.i, %bb.bg ], [ %.0141163.i, %bb.bf ] ; 2 uses
  %.5.i81 = phi i32 [ %.4.i82, %bb.bd ], [ %.4.i82, %bb.be ], [ %.3166.i, %bb.bg ], [ %.3166.i, %bb.bf ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0141163.i, i64 4 ; 2 uses
  %i.iy = icmp ult ptr %i.ix, %i.gy
  br i1 %i.iy, label %bb.au, label %construct_BWT.exit, !llvm.loop !117

construct_BWT.exit:                               ; preds = %bb.bh, %bb.ac
  %.1133.i.lcssa.sink = phi ptr [ %.189.i, %bb.ac ], [ %.1133.i, %bb.bh ]
  %.sink126 = phi i64 [ %i.u, %bb.ac ], [ %i.gz, %bb.bh ]
  %.pre-phi = phi i64 [ %i.bv, %bb.ac ], [ %i.gl, %bb.bh ]
  %i.iz = ptrtoint ptr %.1133.i.lcssa.sink to i64
  %i.ja = sub i64 %i.iz, %.sink126
  %.068.in = lshr exact i64 %i.ja, 2              ; 4 uses
  %.068 = trunc i64 %.068.in to i32               ; 5 uses
  %i.jb = getelementptr i8, ptr %0, i64 %.pre-phi
  %i.jc = getelementptr i8, ptr %i.jb, i64 -1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !10
  store i8 %i.jd, ptr %1, align 1, !tbaa !10
  %i.je = icmp sgt i32 %.068, 0
  br i1 %i.je, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %construct_BWT.exit
  %wide.trip.count = and i64 %.068.in, 2147483647 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check, label %.lr.ph.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %i.jf = getelementptr i8, ptr %1, i64 %wide.trip.count
  %scevgep128 = getelementptr i8, ptr %i.jf, i64 1
  %i.jg = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep129 = getelementptr i8, ptr %.070, i64 %i.jg
  %bound0 = icmp ult ptr %scevgep, %scevgep129
  %bound1 = icmp ult ptr %.070, %scevgep128
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader152, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.068.in, 2147483640           ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %index ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load = load <4 x i32>, ptr %i.jh, align 4, !tbaa !9, !alias.scope !129
  %wide.load130 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !9, !alias.scope !129
  %i.jj = trunc <4 x i32> %wide.load to <4 x i8>
  %i.jk = trunc <4 x i32> %wide.load130 to <4 x i8>
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 5
  store <4 x i8> %i.jj, ptr %i.jm, align 1, !tbaa !10, !alias.scope !130, !noalias !129
  store <4 x i8> %i.jk, ptr %i.jn, align 1, !tbaa !10, !alias.scope !130, !noalias !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader152

.lr.ph.preheader152:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.068.in, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader152, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader152 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader152 ]
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.prol
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !9
  %i.jr = trunc i32 %i.jq to i8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.prol
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !10
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !122

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader152
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader152 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.jt = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %construct_BWT.exit
  %.0.lcssa = phi i32 [ 0, %construct_BWT.exit ], [ %.068, %middle.block ], [ %.068, %.lr.ph ], [ %.068, %.lr.ph.prol.loopexit ] ; 4 uses
  %.195 = add nuw nsw i32 %.0.lcssa, 1
  %i.jv = icmp slt i32 %.195, %3
  br i1 %i.jv, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.preheader
  %narrow = add nuw i32 %.0.lcssa, 1
  %i.jw = zext i32 %narrow to i64                 ; 5 uses
  %i.jx = add nsw i32 %3, -2
  %i.jy = sub i32 %i.jx, %.0.lcssa                ; 2 uses
  %i.jz = zext i32 %i.jy to i64                   ; 3 uses
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %min.iters.check140 = icmp ult i32 %i.jy, 31
  br i1 %min.iters.check140, label %.lr.ph97.preheader151, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph97.preheader
  %scevgep132 = getelementptr i8, ptr %1, i64 %i.jw
  %i.kb = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.kc = getelementptr i8, ptr %1, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.kc, i64 %i.jz
  %scevgep133 = getelementptr i8, ptr %i.kd, i64 2
  %i.ke = shl nuw nsw i64 %i.kb, 2
  %i.kf = getelementptr i8, ptr %.070, i64 %i.ke
  %scevgep134 = getelementptr i8, ptr %i.kf, i64 4
  %i.kg = add nuw nsw i64 %i.kb, %i.jz
  %i.kh = shl nuw nsw i64 %i.kg, 2
  %i.ki = getelementptr i8, ptr %.070, i64 %i.kh
  %scevgep135 = getelementptr i8, ptr %i.ki, i64 8
  %bound0136 = icmp ult ptr %scevgep132, %scevgep135
  %bound1137 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph97.preheader151, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck131
  %n.vec142 = and i64 %i.ka, 8589934584           ; 3 uses
  %i.kj = add nuw nsw i64 %n.vec142, %i.jw
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.kk = add nuw i64 %index144, %i.jw            ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %wide.load145 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !9, !alias.scope !132
  %wide.load146 = load <4 x i32>, ptr %i.km, align 4, !tbaa !9, !alias.scope !132
  %i.kn = trunc <4 x i32> %wide.load145 to <4 x i8>
  %i.ko = trunc <4 x i32> %wide.load146 to <4 x i8>
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 %i.kk ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store <4 x i8> %i.kn, ptr %i.kp, align 1, !tbaa !10, !alias.scope !133, !noalias !132
  store <4 x i8> %i.ko, ptr %i.kq, align 1, !tbaa !10, !alias.scope !133, !noalias !132
  %index.next147 = add nuw i64 %index144, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.kr, label %middle.block148, label %vector.body143, !llvm.loop !126

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.ka, %n.vec142
  br i1 %cmp.n149, label %._crit_edge, label %.lr.ph97.preheader151

.lr.ph97.preheader151:                            ; preds = %vector.memcheck131, %.lr.ph97.preheader, %middle.block148
  %indvars.iv99.ph = phi i64 [ %i.jw, %vector.memcheck131 ], [ %i.jw, %.lr.ph97.preheader ], [ %i.kj, %middle.block148 ]
  br label %.lr.ph97

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !9
  %i.ku = trunc i32 %i.kt to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !10
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.next
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !9
  %i.ky = trunc i32 %i.kx to i8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !10
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.next.1
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !9
  %i.lc = trunc i32 %i.lb to i8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !10
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.next.2
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !9
  %i.lg = trunc i32 %i.lf to i8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.3
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !10
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !127

.lr.ph97:                                         ; preds = %.lr.ph97.preheader151, %.lr.ph97
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph97 ], [ %indvars.iv99.ph, %.lr.ph97.preheader151 ] ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv99
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !9
  %i.lk = trunc i32 %i.lj to i8
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv99
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !10
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next100 to i32
  %i.ln = icmp sgt i32 %3, %i.lm
  br i1 %i.ln, label %.lr.ph97, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %.lr.ph97, %middle.block148, %.preheader
  %i.lo = add nsw i32 %.068, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.g, %._crit_edge
  %.169 = phi i32 [ %i.lo, %._crit_edge ], [ -2, %bb.g ] ; 2 uses
  tail call void @free(ptr noundef %i.m) #8
  tail call void @free(ptr noundef %i.l) #8
  br i1 %i.g, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef %.070) #8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.c, %bb.d, %bb.a
  %.071 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ 1, %bb.d ], [ %.169, %bb.bj ], [ %.169, %bb.bi ]
  ret i32 %.071
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ss_mintrosort(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #3 {
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
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = add nsw i32 %i.h, 8
  br label %ss_ilg.exit.preheader

bb.c:                                             ; preds = %bb.a
  %i.j = lshr exact i64 %i.c, 2
  %i.k = and i64 %i.j, 255
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  br label %ss_ilg.exit.preheader

ss_ilg.exit.preheader:                            ; preds = %bb.b, %bb.c
  %.0388.ph = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  br label %ss_ilg.exit

ss_ilg.exit:                                      ; preds = %ss_ilg.exit.backedge, %ss_ilg.exit.preheader
  %.0432 = phi ptr [ %2, %ss_ilg.exit.preheader ], [ %.0432.be, %ss_ilg.exit.backedge ] ; 68 uses
  %.0429 = phi ptr [ %3, %ss_ilg.exit.preheader ], [ %.0429.be, %ss_ilg.exit.backedge ] ; 25 uses
  %.0426 = phi i32 [ 2, %ss_ilg.exit.preheader ], [ %.0426.be, %ss_ilg.exit.backedge ] ; 31 uses
  %.0392 = phi i32 [ 0, %ss_ilg.exit.preheader ], [ %.0392.be, %ss_ilg.exit.backedge ] ; 20 uses
  %.0388 = phi i32 [ %.0388.ph, %ss_ilg.exit.preheader ], [ %.0388.be, %ss_ilg.exit.backedge ] ; 4 uses
  %i.n = ptrtoint ptr %.0429 to i64               ; 4 uses
  %i.o = ptrtoint ptr %.0432 to i64               ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp slt i64 %i.q, 9
  br i1 %i.r, label %bb.d, label %bb.m

bb.d:                                             ; preds = %ss_ilg.exit
  %i.s = icmp sgt i64 %i.q, 1
  br i1 %i.s, label %bb.e, label %ss_insertionsort.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.0429, i64 -8 ; 2 uses
  %.not43.i = icmp ugt ptr %.0432, %i.t
  br i1 %.not43.i, label %ss_insertionsort.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = sext i32 %.0426 to i64                   ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread.thread.i, %.lr.ph.i
  %.02344.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.br, %.critedge.thread.thread.i ] ; 3 uses
  %i.w = load i32, ptr %.02344.i, align 4, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02344.i, i64 4 ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !9
  br label %.critedge.i

.critedge.loopexit.i:                             ; preds = %bb.i
  br label %.critedge.i, !llvm.loop !134

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.f
  %i.ab = phi i32 [ %.pre.i, %bb.f ], [ %i.bl, %.critedge.loopexit.i ] ; 3 uses
  %.0.i = phi ptr [ %i.x, %bb.f ], [ %i.bj, %.critedge.loopexit.i ] ; 4 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %.val.i = load i32, ptr %i.z, align 4, !tbaa !9
  %.val28.i = load i32, ptr %i.aa, align 4, !tbaa !9
  %.val29.i = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val30.i = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.af = sext i32 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ah = sext i32 %.val29.i to i64               ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 %i.ah ; 2 uses
  %i.aj = sext i32 %.val28.i to i64
  %i.ak = add nsw i64 %i.aj, 2                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = sext i32 %.val30.i to i64
  %i.an = add nsw i64 %i.am, 2                    ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = add nsw i64 %i.af, %i.u
  %i.aq = icmp slt i64 %i.ap, %i.ak               ; 2 uses
  %i.ar = add nsw i64 %i.ah, %i.u
  %i.as = icmp slt i64 %i.ar, %i.an               ; 2 uses
  %or.cond6.i.i = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond6.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.g
  %.08.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.ai, %.critedge.i ] ; 2 uses
  %.0257.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.ag, %.critedge.i ] ; 2 uses
  %i.at = load i8, ptr %.0257.i.i, align 1, !tbaa !10 ; 2 uses
end_hunk_0
