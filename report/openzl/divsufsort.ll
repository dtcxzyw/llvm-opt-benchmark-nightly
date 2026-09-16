Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sort_typeBstar:.preheader340.preheader
  %i.is = shl i32 %.0101157.i, 1
  %i.it = lshr i32 %.0103156.i, 1
  %i.iu = and i32 %.0103156.i, 2
  %.not121.i = icmp eq i32 %i.iu, 0
  br i1 %.not121.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ab
  %i.iv = add nuw nsw i32 %.0159.i, 1             ; 2 uses
  %i.iw = sub i64 %i.ie, %i.ij
  %i.ix = icmp sgt i64 %i.iw, 4096
  br i1 %i.ix, label %bb.ab, label %.lr.ph169.preheader.i, !llvm.loop !29

.lr.ph169.preheader.i:                            ; preds = %._crit_edge.i
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, ptr noundef %i.ii, ptr noundef %.0105.i)
  br label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %bb.ad, %.lr.ph169.preheader.i
  %.1167.i = phi i32 [ %i.jd, %bb.ad ], [ %i.iv, %.lr.ph169.preheader.i ] ; 2 uses
  %.1102166.i = phi i32 [ %i.jc, %bb.ad ], [ 1024, %.lr.ph169.preheader.i ] ; 2 uses
  %.1108165.i = phi ptr [ %.2.i, %bb.ad ], [ %i.ii, %.lr.ph169.preheader.i ] ; 3 uses
  %i.iy = and i32 %.1167.i, 1
  %.not119.i = icmp eq i32 %i.iy, 0
  br i1 %.not119.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph169.i
  %i.iz = sext i32 %.1102166.i to i64
  %i.ja = sub nsw i64 0, %i.iz
  %i.jb = getelementptr inbounds [4 x i8], ptr %.1108165.i, i64 %i.ja ; 2 uses
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, ptr noundef %i.jb, ptr noundef %.1108165.i, ptr noundef %.0105.i, ptr noundef %.0110.i, i32 noundef %.0111.i)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph169.i
  %.2.i = phi ptr [ %i.jb, %bb.ac ], [ %.1108165.i, %.lr.ph169.i ]
  %i.jc = shl i32 %.1102166.i, 1
  %i.jd = lshr i32 %.1167.i, 1                    ; 2 uses
  %.not117.i = icmp eq i32 %i.jd, 0
  br i1 %.not117.i, label %._crit_edge170.i, label %.lr.ph169.i, !llvm.loop !30

._crit_edge170.i:                                 ; preds = %bb.ad, %._crit_edge162.thread.i
  br i1 %.099.i, label %ss_inplacemerge.exit.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge170.i
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, ptr noundef %.0105.i, ptr noundef nonnull %i.fi)
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i, %bb.ae
  %.053.i.i = phi ptr [ %i.fi, %bb.ae ], [ %.3.i.i, %.loopexit.i.i ] ; 6 uses
  %.051.i.i = phi ptr [ %.0105.i, %bb.ae ], [ %.152.i.i, %.loopexit.i.i ] ; 13 uses
  %i.je = getelementptr inbounds i8, ptr %.053.i.i, i64 -4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !12 ; 3 uses
  %i.jg = icmp slt i32 %i.jf, 0
  %i.jh = ptrtoint ptr %.051.i.i to i64           ; 3 uses
  %i.ji = sub i64 %i.jh, %.pre-phi.i
  %i.jj = lshr exact i64 %i.ji, 2
  %i.jk = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %.lobit.i.i = ashr i32 %i.jf, 31
  %.pn.in.i.i = xor i32 %.lobit.i.i, %i.jf
  %.pn.i.i = zext i32 %.pn.in.i.i to i64
  %.050.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.pn.i.i ; 2 uses
  %.050.val.i.i = load i32, ptr %.050.i.i, align 4, !tbaa !12 ; 2 uses
  %i.jm = getelementptr i8, ptr %.050.i.i, i64 4
  %.050.val61.i.i = load i32, ptr %i.jm, align 4, !tbaa !12 ; 2 uses
  %i.jn = sext i32 %.050.val.i.i to i64
  %i.jo = getelementptr inbounds i8, ptr %i.ew, i64 %i.jn ; 2 uses
  %i.jp = sext i32 %.050.val61.i.i to i64
  %i.jq = getelementptr i8, ptr %0, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 2
  %i.js = icmp slt i32 %.050.val.i.i, %.050.val61.i.i ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %ss_compare.exit.i.i, %.lr.ph.i.i
  %.04481.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i127.i, %ss_compare.exit.i.i ]
  %.04780.i.i = phi i32 [ %i.jk, %.lr.ph.i.i ], [ %.146.i.i, %ss_compare.exit.i.i ] ; 2 uses
  %.04879.i.i = phi ptr [ %spec.select.i, %.lr.ph.i.i ], [ %.149.i.i, %ss_compare.exit.i.i ] ; 2 uses
  %.04582.i.i = lshr i32 %.04780.i.i, 1           ; 2 uses
  %i.jt = zext nneg i32 %.04582.i.i to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.04879.i.i, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !12 ; 2 uses
  %.lobit63.i.i = ashr i32 %i.jv, 31
  %i.jw = xor i32 %.lobit63.i.i, %i.jv
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.jx ; 2 uses
  %.val.i.i = load i32, ptr %i.jy, align 4, !tbaa !12 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 4
  %.val60.i.i = load i32, ptr %i.jz, align 4, !tbaa !12 ; 2 uses
  %i.ka = sext i32 %.val.i.i to i64
  %i.kb = getelementptr inbounds i8, ptr %i.ew, i64 %i.ka ; 2 uses
  %i.kc = sext i32 %.val60.i.i to i64
  %i.kd = getelementptr i8, ptr %0, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 2
  %i.kf = icmp slt i32 %.val.i.i, %.val60.i.i     ; 2 uses
  %or.cond6.i.i.i = select i1 %i.kf, i1 %i.js, i1 false
  br i1 %or.cond6.i.i.i, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %bb.ah
  %.08.i.i.i = phi ptr [ %i.kk, %bb.ah ], [ %i.jo, %bb.ag ] ; 2 uses
  %.0257.i.i.i = phi ptr [ %i.kj, %bb.ah ], [ %i.kb, %bb.ag ] ; 2 uses
  %i.kg = load i8, ptr %.0257.i.i.i, align 1, !tbaa !13 ; 2 uses
  %i.kh = load i8, ptr %.08.i.i.i, align 1, !tbaa !13 ; 2 uses
  %i.ki = icmp eq i8 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ah, label %.thread.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 1 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1 ; 3 uses
  %i.kl = icmp ult ptr %i.kj, %i.ke               ; 2 uses
  %i.km = icmp ult ptr %i.kk, %i.jr               ; 2 uses
  %or.cond.i.i.i = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !0

.critedge.i.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.025.lcssa.i.i.i = phi ptr [ %i.kb, %bb.ag ], [ %i.kj, %bb.ah ]
  %.0.lcssa.i.i.i = phi ptr [ %i.jo, %bb.ag ], [ %i.kk, %bb.ah ]
  %.lcssa5.i.i.i = phi i1 [ %i.kf, %bb.ag ], [ %i.kl, %bb.ah ]
  %.lcssa.i.i.i = phi i1 [ %i.js, %bb.ag ], [ %i.km, %bb.ah ] ; 2 uses
  br i1 %.lcssa5.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge.i.i.i
  br i1 %.lcssa.i.i.i, label %..thread.i_crit_edge.i.i, label %ss_compare.exit.i.i

..thread.i_crit_edge.i.i:                         ; preds = %bb.ai
  %.pre.i.i = load i8, ptr %.025.lcssa.i.i.i, align 1, !tbaa !13
  %.pre.i = load i8, ptr %.0.lcssa.i.i.i, align 1, !tbaa !13
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %..thread.i_crit_edge.i.i
  %i.kn = phi i8 [ %.pre.i, %..thread.i_crit_edge.i.i ], [ %i.kh, %.lr.ph.i.i.i ]
  %i.ko = phi i8 [ %.pre.i.i, %..thread.i_crit_edge.i.i ], [ %i.kg, %.lr.ph.i.i.i ]
  %i.kp = zext i8 %i.ko to i32
  %i.kq = zext i8 %i.kn to i32
  %i.kr = sub nsw i32 %i.kp, %i.kq
  br label %ss_compare.exit.i.i

bb.aj:                                            ; preds = %.critedge.i.i.i
  %i.ks = sext i1 %.lcssa.i.i.i to i32
  br label %ss_compare.exit.i.i

ss_compare.exit.i.i:                              ; preds = %bb.aj, %.thread.i.i.i, %bb.ai
  %i.kt = phi i32 [ %i.ks, %bb.aj ], [ %i.kr, %.thread.i.i.i ], [ 1, %bb.ai ] ; 2 uses
  %i.ku = icmp slt i32 %i.kt, 0                   ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.kw = and i32 %.04780.i.i, 1
  %i.kx = xor i32 %i.kw, 1
  %.149.i.i = select i1 %i.ku, ptr %i.kv, ptr %.04879.i.i ; 6 uses
  %i.ky = select i1 %i.ku, i32 %i.kx, i32 0
  %.146.i.i = sub nsw i32 %.04582.i.i, %i.ky      ; 2 uses
  %.1.i127.i = select i1 %i.ku, i32 %.04481.i.i, i32 %i.kt ; 2 uses
  %i.kz = icmp sgt i32 %.146.i.i, 0
  br i1 %i.kz, label %bb.ag, label %._crit_edge.i.i, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %ss_compare.exit.i.i
  %i.la = icmp ult ptr %.149.i.i, %.051.i.i
  br i1 %i.la, label %bb.ak, label %bb.av

._crit_edge.thread.i.i:                           ; preds = %bb.af
  %i.lb = icmp ult ptr %spec.select.i, %.051.i.i
  br i1 %i.lb, label %.thread.i.i, label %bb.av

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.lc = icmp eq i32 %.1.i127.i, 0
  br i1 %i.lc, label %bb.al, label %.thread.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ld = load i32, ptr %.149.i.i, align 4, !tbaa !12
  %i.le = xor i32 %i.ld, -1
  store i32 %i.le, ptr %.149.i.i, align 4, !tbaa !12
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.al, %bb.ak, %._crit_edge.thread.i.i
  %.048.lcssa113117.i.i = phi ptr [ %.149.i.i, %bb.ak ], [ %.149.i.i, %bb.al ], [ %spec.select.i, %._crit_edge.thread.i.i ] ; 4 uses
  %i.lf = ptrtoint ptr %.048.lcssa113117.i.i to i64
  %i.lg = sub i64 %i.jh, %i.lf                    ; 2 uses
  %i.lh = lshr exact i64 %i.lg, 2
  %i.li = trunc i64 %i.lh to i32                  ; 2 uses
  %i.lj = ptrtoint ptr %.053.i.i to i64
  %i.lk = sub i64 %i.lj, %i.jh
  %i.ll = lshr exact i64 %i.lk, 2
  %i.lm = trunc i64 %i.ll to i32                  ; 2 uses
  %i.ln = icmp sgt i32 %i.li, 0
  %i.lo = icmp sgt i32 %i.lm, 0
  %i.lp = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %i.lp, label %.lr.ph.i62.i.i, label %ss_rotate.exit.i.i

.lr.ph.i62.i.i:                                   ; preds = %.thread.i.i
  %i.lq = getelementptr inbounds i8, ptr %.051.i.i, i64 -4
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.i.i.i, %.lr.ph.i62.i.i
  %.087.i.i.i = phi i32 [ %i.lm, %.lr.ph.i62.i.i ], [ %.3.i.i.i, %.loopexit.i.i.i ] ; 13 uses
  %.04886.i.i.i = phi i32 [ %i.li, %.lr.ph.i62.i.i ], [ %.351.i.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.06485.i.i.i = phi ptr [ %.053.i.i, %.lr.ph.i62.i.i ], [ %.165.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.06684.i.i.i = phi ptr [ %.048.lcssa113117.i.i, %.lr.ph.i62.i.i ], [ %.167.i.i.i, %.loopexit.i.i.i ] ; 9 uses
  %i.lr = icmp eq i32 %.04886.i.i.i, %.087.i.i.i
  br i1 %i.lr, label %.lr.ph.i.i.i.i.preheader, label %bb.an

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.am
  %6 = tail call i32 @llvm.smin.i32(i32 %.087.i.i.i, i32 1)
  %7 = sub i32 %.087.i.i.i, %6                    ; 2 uses
  %i.ls = zext i32 %7 to i64
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %7, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.06684.i.i.i, i64 4
  %smin = tail call i32 @llvm.smin.i32(i32 %.087.i.i.i, i32 1)
  %8 = sub i32 %.087.i.i.i, %smin
  %i.lu = zext i32 %8 to i64
  %i.lv = shl nuw nsw i64 %i.lu, 2                ; 2 uses
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.lv
  %scevgep117 = getelementptr i8, ptr %.051.i.i, i64 4
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.lv
  %bound0 = icmp ult ptr %.06684.i.i.i, %scevgep118
  %bound1 = icmp ult ptr %.051.i.i, %scevgep116
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader306, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lt, 8589934584              ; 4 uses
  %i.lw = trunc i64 %n.vec to i32
  %i.lx = sub i32 %.087.i.i.i, %i.lw
  %i.ly = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.lz = getelementptr i8, ptr %.051.i.i, i64 %i.ly
  %i.ma = getelementptr i8, ptr %.06684.i.i.i, i64 %i.ly
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.051.i.i, i64 %i.mb ; 3 uses
  %next.gep119 = getelementptr i8, ptr %.06684.i.i.i, i64 %i.mb ; 3 uses
  %i.mc = getelementptr i8, ptr %next.gep119, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !12, !alias.scope !99, !noalias !100
  %wide.load120 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !12, !alias.scope !99, !noalias !100
  %i.md = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load121 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !100
  %wide.load122 = load <4 x i32>, ptr %i.md, align 4, !tbaa !12, !alias.scope !100
  store <4 x i32> %wide.load121, ptr %next.gep119, align 4, !tbaa !12, !alias.scope !99, !noalias !100
  store <4 x i32> %wide.load122, ptr %i.mc, align 4, !tbaa !12, !alias.scope !99, !noalias !100
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !12, !alias.scope !100
  store <4 x i32> %wide.load120, ptr %i.md, align 4, !tbaa !12, !alias.scope !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lt, %n.vec
  br i1 %cmp.n, label %ss_rotate.exit.i.i, label %.lr.ph.i.i.i.i.preheader306

.lr.ph.i.i.i.i.preheader306:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi i32 [ %.087.i.i.i, %vector.memcheck ], [ %.087.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.lx, %middle.block ]
  %.0811.i.i.i.i.ph = phi ptr [ %.051.i.i, %vector.memcheck ], [ %.051.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.lz, %middle.block ]
  %.0910.i.i.i.i.ph = phi ptr [ %.06684.i.i.i, %vector.memcheck ], [ %.06684.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ma, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader306, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi i32 [ %i.mh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader306 ] ; 2 uses
  %.0811.i.i.i.i = phi ptr [ %i.mj, %.lr.ph.i.i.i.i ], [ %.0811.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader306 ] ; 3 uses
  %.0910.i.i.i.i = phi ptr [ %i.mi, %.lr.ph.i.i.i.i ], [ %.0910.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader306 ] ; 3 uses
  %i.mf = load i32, ptr %.0910.i.i.i.i, align 4, !tbaa !12
  %i.mg = load i32, ptr %.0811.i.i.i.i, align 4, !tbaa !12
  store i32 %i.mg, ptr %.0910.i.i.i.i, align 4, !tbaa !12
  store i32 %i.mf, ptr %.0811.i.i.i.i, align 4, !tbaa !12
  %i.mh = add nsw i32 %.012.i.i.i.i, -1
  %i.mi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 4
  %i.mk = icmp samesign ugt i32 %.012.i.i.i.i, 1
  br i1 %i.mk, label %.lr.ph.i.i.i.i, label %ss_rotate.exit.i.i, !llvm.loop !36

bb.an:                                            ; preds = %bb.am
  %i.ml = icmp samesign ult i32 %.04886.i.i.i, %.087.i.i.i
  br i1 %i.ml, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.mm = getelementptr inbounds i8, ptr %.06485.i.i.i, i64 -4
  %.neg75.i.i.i = xor i32 %.04886.i.i.i, -1
  br label %.outer

.outer:                                           ; preds = %bb.ar, %bb.ao
  %.060.i.i.i.ph = phi ptr [ %i.mt, %bb.ar ], [ %i.mm, %bb.ao ] ; 2 uses
  %.1.i.i.i.ph = phi i32 [ %i.ms, %bb.ar ], [ %.087.i.i.i, %bb.ao ]
  %.052.i.i.i.ph = load i32, ptr %.060.i.i.i.ph, align 4, !tbaa !12
  br label %bb.ap

bb.ap:                                            ; preds = %.outer, %bb.ap
  %.060.i.i.i = phi ptr [ %i.mo, %bb.ap ], [ %.060.i.i.i.ph, %.outer ] ; 3 uses
  %.056.i.i.i = phi ptr [ %i.mq, %bb.ap ], [ %i.lq, %.outer ] ; 3 uses
  %i.mn = load i32, ptr %.056.i.i.i, align 4, !tbaa !12
  %i.mo = getelementptr inbounds i8, ptr %.060.i.i.i, i64 -4 ; 4 uses
  store i32 %i.mn, ptr %.060.i.i.i, align 4, !tbaa !12
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !12
  %i.mq = getelementptr inbounds i8, ptr %.056.i.i.i, i64 -4 ; 2 uses
  store i32 %i.mp, ptr %.056.i.i.i, align 4, !tbaa !12
  %i.mr = icmp ult ptr %i.mq, %.06684.i.i.i
  br i1 %i.mr, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %bb.ap
  store i32 %.052.i.i.i.ph, ptr %i.mo, align 4, !tbaa !12
  %i.ms = add nsw i32 %.1.i.i.i.ph, %.neg75.i.i.i ; 3 uses
  %.not76.i.i.i = icmp sgt i32 %i.ms, %.04886.i.i.i
  br i1 %.not76.i.i.i, label %bb.ar, label %.loopexit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.mt = getelementptr inbounds i8, ptr %.060.i.i.i, i64 -8
  br label %.outer

bb.as:                                            ; preds = %bb.an
  %.neg.i.i.i = xor i32 %.087.i.i.i, -1
  br label %.outer305

.outer305:                                        ; preds = %bb.au, %bb.as
  %.262.i.i.i.ph = phi ptr [ %.06684.i.i.i, %bb.as ], [ %i.my, %bb.au ] ; 2 uses
  %.149.i.i.i.ph = phi i32 [ %.04886.i.i.i, %bb.as ], [ %i.mz, %bb.au ]
  %.254.i.i.i.ph = load i32, ptr %.262.i.i.i.ph, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %.outer305, %bb.at
  %.262.i.i.i = phi ptr [ %i.mv, %bb.at ], [ %.262.i.i.i.ph, %.outer305 ] ; 3 uses
  %.258.i.i.i = phi ptr [ %i.mx, %bb.at ], [ %.051.i.i, %.outer305 ] ; 3 uses
  %i.mu = load i32, ptr %.258.i.i.i, align 4, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %.262.i.i.i, i64 4 ; 3 uses
  store i32 %i.mu, ptr %.262.i.i.i, align 4, !tbaa !12
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !12
  %i.mx = getelementptr inbounds nuw i8, ptr %.258.i.i.i, i64 4 ; 2 uses
  store i32 %i.mw, ptr %.258.i.i.i, align 4, !tbaa !12
  %.not.i.i.i = icmp ugt ptr %.06485.i.i.i, %i.mx
  br i1 %.not.i.i.i, label %bb.at, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %.254.i.i.i.ph, ptr %i.mv, align 4, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.262.i.i.i, i64 8 ; 2 uses
  %i.mz = add nsw i32 %.149.i.i.i.ph, %.neg.i.i.i ; 3 uses
  %.not74.i.i.i = icmp sgt i32 %i.mz, %.087.i.i.i
  br i1 %.not74.i.i.i, label %.outer305, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.au, %bb.aq
  %.167.i.i.i = phi ptr [ %.06684.i.i.i, %bb.aq ], [ %i.my, %bb.au ]
  %.165.i.i.i = phi ptr [ %i.mo, %bb.aq ], [ %.06485.i.i.i, %bb.au ]
  %.351.i.i.i = phi i32 [ %.04886.i.i.i, %bb.aq ], [ %i.mz, %bb.au ] ; 2 uses
  %.3.i.i.i = phi i32 [ %i.ms, %bb.aq ], [ %.087.i.i.i, %bb.au ] ; 2 uses
  %i.na = icmp sgt i32 %.351.i.i.i, 0
  %i.nb = icmp sgt i32 %.3.i.i.i, 0
  %i.nc = and i1 %i.na, %i.nb
  br i1 %i.nc, label %bb.am, label %ss_rotate.exit.i.i, !llvm.loop !37

ss_rotate.exit.i.i:                               ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %.thread.i.i
  %i.nd = ashr exact i64 %i.lg, 2
  %i.ne = sub nsw i64 0, %i.nd
  %i.nf = getelementptr inbounds [4 x i8], ptr %.053.i.i, i64 %i.ne
  %i.ng = icmp eq ptr %spec.select.i, %.048.lcssa113117.i.i
  br i1 %i.ng, label %ss_inplacemerge.exit.i, label %bb.av

bb.av:                                            ; preds = %ss_rotate.exit.i.i, %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.154.i.i = phi ptr [ %i.nf, %ss_rotate.exit.i.i ], [ %.053.i.i, %._crit_edge.i.i ], [ %.053.i.i, %._crit_edge.thread.i.i ]
  %.152.i.i = phi ptr [ %.048.lcssa113117.i.i, %ss_rotate.exit.i.i ], [ %.051.i.i, %._crit_edge.i.i ], [ %.051.i.i, %._crit_edge.thread.i.i ] ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %.154.i.i, i64 -4 ; 2 uses
  br i1 %i.jg, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.av, %.preheader.i.i
  %.2.i.i = phi ptr [ %i.ni, %.preheader.i.i ], [ %i.nh, %bb.av ]
  %i.ni = getelementptr inbounds i8, ptr %.2.i.i, i64 -4 ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !12
  %i.nk = icmp slt i32 %i.nj, 0
  br i1 %i.nk, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !38

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.av
  %.3.i.i = phi ptr [ %i.nh, %bb.av ], [ %i.ni, %.preheader.i.i ] ; 2 uses
  %i.nl = icmp eq ptr %.152.i.i, %.3.i.i
  br i1 %i.nl, label %ss_inplacemerge.exit.i, label %bb.af

ss_inplacemerge.exit.i:                           ; preds = %.loopexit.i.i, %ss_rotate.exit.i.i, %._crit_edge170.i
  br i1 %.not318, label %.lr.ph173.i, label %sssort.exit

.lr.ph173.i:                                      ; preds = %ss_inplacemerge.exit.i
  %i.nm = load i32, ptr %i.fg, align 4, !tbaa !12 ; 2 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !12
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.ew, i64 %i.nq
  %i.ns = icmp sgt i64 %invariant.op, %i.nq
  %.fr.i = freeze i1 %i.ns
  br i1 %.fr.i, label %.lr.ph173.split.i, label %.lr.ph173.split.us.i

.lr.ph173.split.us.i:                             ; preds = %.lr.ph173.i, %.critedge2.us.i
  %.3171.us.i = phi ptr [ %i.nw, %.critedge2.us.i ], [ %i.fk, %.lr.ph173.i ] ; 4 uses
  %i.nt = load i32, ptr %.3171.us.i, align 4, !tbaa !12 ; 2 uses
  %i.nu = icmp slt i32 %i.nt, 0
  br i1 %i.nu, label %.critedge2.us.i, label %.critedge.i

.critedge2.us.i:                                  ; preds = %.lr.ph173.split.us.i
  %i.nv = getelementptr inbounds i8, ptr %.3171.us.i, i64 -4
  store i32 %i.nt, ptr %i.nv, align 4, !tbaa !12
  %i.nw = getelementptr inbounds nuw i8, ptr %.3171.us.i, i64 4 ; 3 uses
  %i.nx = icmp ult ptr %i.nw, %i.fi
  br i1 %i.nx, label %.lr.ph173.split.us.i, label %.critedge.i, !llvm.loop !39

.lr.ph173.split.i:                                ; preds = %.lr.ph173.i, %.critedge2.i
  %.3171.i = phi ptr [ %i.ou, %.critedge2.i ], [ %i.fk, %.lr.ph173.i ] ; 5 uses
  %i.ny = load i32, ptr %.3171.i, align 4, !tbaa !12 ; 3 uses
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %.critedge2.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph173.split.i
  %i.oa = zext nneg i32 %i.ny to i64
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.oa ; 2 uses
  %.val125.i = load i32, ptr %i.ob, align 4, !tbaa !12 ; 2 uses
  %i.oc = getelementptr i8, ptr %i.ob, i64 4
end_hunk_0
