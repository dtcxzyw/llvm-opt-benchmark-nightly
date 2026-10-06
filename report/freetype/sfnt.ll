Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sfnt_get_ps_name:bb.a
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %.4301.i, i64 2
  store i8 48, ptr %i.hd, align 1, !tbaa !29
  br label %fixed2float.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hj = icmp slt i32 %i.hg, 0
  br i1 %i.hj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %.4301.i, i64 2
  store i8 45, ptr %i.hd, align 1, !tbaa !29
  %i.hl = sub i32 0, %i.hg
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.050.i.i = phi i32 [ %i.hl, %bb.av ], [ %i.hg, %bb.au ] ; 2 uses
  %.047.i.i = phi ptr [ %i.hk, %bb.av ], [ %i.hd, %bb.au ] ; 9 uses
  %i.hm = lshr i32 %.050.i.i, 16                  ; 2 uses
  %i.hn = and i32 %.050.i.i, 65535                ; 2 uses
  %.not75.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not75.i.i, label %._crit_edge.i240.i, label %.lr.ph.i238.i

.lr.ph.i238.i:                                    ; preds = %bb.aw, %.lr.ph.i238.i
  %.04477.i.i = phi i32 [ %i.hs, %.lr.ph.i238.i ], [ %i.hm, %bb.aw ] ; 3 uses
  %.04576.i.i = phi ptr [ %i.hr, %.lr.ph.i238.i ], [ %i.a, %bb.aw ] ; 2 uses
  %i.ho = urem i32 %.04477.i.i, 10
  %i.hp = trunc nuw nsw i32 %i.ho to i8
  %i.hq = or disjoint i8 %i.hp, 48
  %i.hr = getelementptr i8, ptr %.04576.i.i, i64 1 ; 10 uses
  store i8 %i.hq, ptr %.04576.i.i, align 1, !tbaa !29
  %i.hs = udiv i32 %.04477.i.i, 10
  %.not.i239.i = icmp samesign ult i32 %.04477.i.i, 10
  br i1 %.not.i239.i, label %iter.check, label %.lr.ph.i238.i, !llvm.loop !784

iter.check:                                       ; preds = %.lr.ph.i238.i
  %i.ht = ptrtoaddr ptr %i.hr to i64
  %i.hu = sub i64 %i.ht, %i.b                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.hu, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hv = ptrtoaddr ptr %i.hr to i64
  %i.hw = sub i64 %i.hv, %i.b
  %scevgep = getelementptr i8, ptr %.047.i.i, i64 %i.hw
  %bound0 = icmp ult ptr %.047.i.i, %i.hr
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph80.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check100 = icmp ult i64 %i.hu, 32
  br i1 %min.iters.check100, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hx = and i64 %i.hu, 24
  %n.vec = and i64 %i.hu, -32                     ; 5 uses
  %i.hy = sub i64 0, %n.vec
  %i.hz = getelementptr i8, ptr %i.hr, i64 %i.hy
  %i.ia = getelementptr i8, ptr %.047.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.hr, i64 %i.ib ; 2 uses
  %next.gep101 = getelementptr i8, ptr %.047.i.i, i64 %index ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.id = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ic, align 1, !tbaa !29, !alias.scope !811
  %wide.load102 = load <16 x i8>, ptr %i.id, align 1, !tbaa !29, !alias.scope !811
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse103 = shufflevector <16 x i8> %wide.load102, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ie = getelementptr i8, ptr %next.gep101, i64 16
  store <16 x i8> %reverse, ptr %next.gep101, align 1, !tbaa !29, !alias.scope !812, !noalias !811
  store <16 x i8> %reverse103, ptr %i.ie, align 1, !tbaa !29, !alias.scope !812, !noalias !811
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !788

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i240.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.i.i.preheader, label %vec.epilog.ph, !prof !813

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec105 = and i64 %i.hu, -8                   ; 4 uses
  %i.ig = sub i64 0, %n.vec105
  %i.ih = getelementptr i8, ptr %i.hr, i64 %i.ig
  %i.ii = getelementptr i8, ptr %.047.i.i, i64 %n.vec105 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next111, %vec.epilog.vector.body ] ; 3 uses
  %i.ij = sub i64 0, %index106
  %next.gep107 = getelementptr i8, ptr %i.hr, i64 %i.ij
  %next.gep108 = getelementptr i8, ptr %.047.i.i, i64 %index106
  %i.ik = getelementptr inbounds i8, ptr %next.gep107, i64 -8
  %wide.load109 = load <8 x i8>, ptr %i.ik, align 1, !tbaa !29, !alias.scope !811
  %reverse110 = shufflevector <8 x i8> %wide.load109, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse110, ptr %next.gep108, align 1, !tbaa !29, !alias.scope !812, !noalias !811
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next111, %n.vec105
  br i1 %i.il, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !789

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n112 = icmp eq i64 %i.hu, %n.vec105
  br i1 %cmp.n112, label %._crit_edge.i240.i, label %.lr.ph80.i.i.preheader

.lr.ph80.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14679.i.i.ph = phi ptr [ %i.hr, %iter.check ], [ %i.hr, %vector.memcheck ], [ %i.hz, %vec.epilog.iter.check ], [ %i.ih, %vec.epilog.middle.block ]
  %.14878.i.i.ph = phi ptr [ %.047.i.i, %iter.check ], [ %.047.i.i, %vector.memcheck ], [ %i.ia, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  br label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %.lr.ph80.i.i.preheader, %.lr.ph80.i.i
  %.14679.i.i = phi ptr [ %i.im, %.lr.ph80.i.i ], [ %.14679.i.i.ph, %.lr.ph80.i.i.preheader ]
  %.14878.i.i = phi ptr [ %i.io, %.lr.ph80.i.i ], [ %.14878.i.i.ph, %.lr.ph80.i.i.preheader ] ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %.14679.i.i, i64 -1 ; 3 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %.14878.i.i, i64 1 ; 2 uses
  store i8 %i.in, ptr %.14878.i.i, align 1, !tbaa !29
  %i.ip = icmp ugt ptr %i.im, %i.a
  br i1 %i.ip, label %.lr.ph80.i.i, label %._crit_edge.i240.i, !llvm.loop !790

._crit_edge.i240.i:                               ; preds = %.lr.ph80.i.i, %middle.block, %vec.epilog.middle.block, %bb.aw
  %.148.lcssa.i.i = phi ptr [ %.047.i.i, %bb.aw ], [ %i.ii, %vec.epilog.middle.block ], [ %i.ia, %middle.block ], [ %i.io, %.lr.ph80.i.i ] ; 8 uses
  %.not56.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not56.i.i, label %fixed2float.exit.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i240.i
  store i8 46, ptr %.148.lcssa.i.i, align 1, !tbaa !29
  %i.iq = mul nuw nsw i32 %i.hn, 10
  %i.ir = add nuw nsw i32 %i.iq, 5                ; 2 uses
  %.285.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 1
  %i.is = lshr i32 %i.ir, 16
  %i.it = trunc nuw nsw i32 %i.is to i8
  %i.iu = add nuw nsw i8 %i.it, 48
  store i8 %i.iu, ptr %.285.i.i, align 1, !tbaa !29
  %i.iv = and i32 %i.ir, 65535
  %i.iw = mul nuw nsw i32 %i.iv, 10               ; 2 uses
  %.285.1.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 2
  %i.ix = lshr i32 %i.iw, 16
  %i.iy = trunc nuw nsw i32 %i.ix to i8
  %i.iz = or disjoint i8 %i.iy, 48
  store i8 %i.iz, ptr %.285.1.i.i, align 1, !tbaa !29
  %i.ja = and i32 %i.iw, 65534
  %i.jb = mul nuw nsw i32 %i.ja, 10               ; 2 uses
  %.285.2.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 3 ; 2 uses
  %i.jc = lshr i32 %i.jb, 16
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  %i.je = or disjoint i8 %i.jd, 48                ; 2 uses
  store i8 %i.je, ptr %.285.2.i.i, align 1, !tbaa !29
  %i.jf = and i32 %i.jb, 65532                    ; 2 uses
  %.not57.2.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not57.2.i.i, label %.thread.i241.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jg = mul nuw nsw i32 %i.jf, 10               ; 2 uses
  %.285.3.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 4 ; 2 uses
  %i.jh = lshr i32 %i.jg, 16
  %i.ji = trunc nuw nsw i32 %i.jh to i8
  %i.jj = or disjoint i8 %i.ji, 48                ; 2 uses
  store i8 %i.jj, ptr %.285.3.i.i, align 1, !tbaa !29
  %i.jk = and i32 %i.jg, 65528                    ; 2 uses
  %.not57.3.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not57.3.i.i, label %.thread.i241.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jl = mul nuw nsw i32 %i.jk, 10               ; 2 uses
  %.285.4.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 5 ; 9 uses
  %i.jm = lshr i32 %i.jl, 16                      ; 2 uses
  %i.jn = trunc nuw nsw i32 %i.jm to i8           ; 3 uses
  %i.jo = or disjoint i8 %i.jn, 48                ; 6 uses
  store i8 %i.jo, ptr %.285.4.i.i, align 1, !tbaa !29
  %i.jp = and i32 %i.jl, 65520                    ; 4 uses
  %.not57.4.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not57.4.i.i, label %.thread.i241.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jq = icmp samesign ult i32 %i.jp, 34480
  br i1 %i.jq, label %.thread63.i.i, label %.thread70.i.i

.thread.i241.i:                                   ; preds = %bb.az, %bb.ay, %bb.ax
  %.pre.i.i = phi i8 [ %i.jo, %bb.az ], [ %i.jj, %bb.ay ], [ %i.je, %bb.ax ] ; 3 uses
  %.285.lcssa.i.i = phi ptr [ %.285.4.i.i, %bb.az ], [ %.285.3.i.i, %bb.ay ], [ %.285.2.i.i, %bb.ax ] ; 4 uses
  %i.jr = ptrtoint ptr %.285.lcssa.i.i to i64
  %i.js = ptrtoint ptr %.148.lcssa.i.i to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = icmp eq i64 %i.jt, 5
  br i1 %i.ju, label %.thread63.thread.i.i, label %.thread70.i.i

.thread63.i.i:                                    ; preds = %bb.ba
  %i.jv = icmp eq i32 %i.jm, 1
  br i1 %i.jv, label %1, label %bb.bb

.thread63.thread.i.i:                             ; preds = %.thread.i241.i
  %i.jw = icmp eq i8 %.pre.i.i, 49
  br i1 %i.jw, label %1, label %.thread118.i.i

1:                                                ; preds = %.thread63.thread.i.i, %.thread63.i.i
  %.28594111.i.i = phi ptr [ %.285.lcssa.i.i, %.thread63.thread.i.i ], [ %.285.4.i.i, %.thread63.i.i ] ; 2 uses
  store i8 48, ptr %.28594111.i.i, align 1, !tbaa !29
  br label %.lr.ph87.i.i.preheader

bb.bb:                                            ; preds = %.thread63.i.i
  %i.jx = icmp eq i32 %i.jp, 17232
  br i1 %i.jx, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.jy = and i8 %i.jn, 1
  %.not58.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not58.i.i, label %.thread70.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %narrow.i.i = add nuw nsw i8 %i.jn, 47          ; 2 uses
  store i8 %narrow.i.i, ptr %.285.4.i.i, align 1, !tbaa !29
  br label %.thread70.i.i

bb.be:                                            ; preds = %bb.bb
  %i.jz = icmp samesign ult i32 %i.jp, 17232
  br i1 %i.jz, label %.thread118.i.i, label %.thread70.i.i

.thread118.i.i:                                   ; preds = %bb.be, %.thread63.thread.i.i
  %.28594110117121.i.i = phi ptr [ %.285.4.i.i, %bb.be ], [ %.285.lcssa.i.i, %.thread63.thread.i.i ] ; 3 uses
  %i.ka = phi i8 [ %i.jo, %bb.be ], [ %.pre.i.i, %.thread63.thread.i.i ] ; 2 uses
  %.not59.i.i = icmp eq i8 %i.ka, 48
  br i1 %.not59.i.i, label %.lr.ph87.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %.thread118.i.i
  %i.kb = add nsw i8 %i.ka, -1                    ; 2 uses
  store i8 %i.kb, ptr %.28594110117121.i.i, align 1, !tbaa !29
  br label %.thread70.i.i

.thread70.i.i:                                    ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %.thread.i241.i, %bb.ba
  %i.kc = phi i8 [ %i.jo, %bb.bc ], [ %i.kb, %bb.bf ], [ %narrow.i.i, %bb.bd ], [ %i.jo, %bb.be ], [ %i.jo, %bb.ba ], [ %.pre.i.i, %.thread.i241.i ]
  %.28593.i.i = phi ptr [ %.285.4.i.i, %bb.bc ], [ %.28594110117121.i.i, %bb.bf ], [ %.285.4.i.i, %bb.bd ], [ %.285.4.i.i, %bb.be ], [ %.285.4.i.i, %bb.ba ], [ %.285.lcssa.i.i, %.thread.i241.i ] ; 2 uses
  %i.kd = icmp eq i8 %i.kc, 48
  br i1 %i.kd, label %.lr.ph87.i.i.preheader, label %._crit_edge88.i.i

.lr.ph87.i.i.preheader:                           ; preds = %.thread70.i.i, %.thread118.i.i, %1
  %.486.i.i.ph = phi ptr [ %.28594111.i.i, %1 ], [ %.28594110117121.i.i, %.thread118.i.i ], [ %.28593.i.i, %.thread70.i.i ]
  br label %.lr.ph87.i.i

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i
  %.486.i.i = phi ptr [ %i.ke, %.lr.ph87.i.i ], [ %.486.i.i.ph, %.lr.ph87.i.i.preheader ] ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.486.i.i, i64 -1 ; 3 uses
  store i8 0, ptr %.486.i.i, align 1, !tbaa !29
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !29
  %i.kg = icmp eq i8 %i.kf, 48
  br i1 %i.kg, label %.lr.ph87.i.i, label %._crit_edge88.i.i, !llvm.loop !791

._crit_edge88.i.i:                                ; preds = %.lr.ph87.i.i, %.thread70.i.i
  %.4.lcssa.i.i = phi ptr [ %.28593.i.i, %.thread70.i.i ], [ %i.ke, %.lr.ph87.i.i ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.4.lcssa.i.i, i64 1
  br label %fixed2float.exit.i

fixed2float.exit.i:                               ; preds = %._crit_edge88.i.i, %._crit_edge.i240.i, %bb.at
  %.049.i.i = phi ptr [ %i.hi, %bb.at ], [ %i.kh, %._crit_edge88.i.i ], [ %.148.lcssa.i.i, %._crit_edge.i240.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ki = getelementptr inbounds nuw i8, ptr %.0134302.i, i64 32 ; 4 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !814 ; 3 uses
  %i.kk = lshr i64 %i.kj, 24
  %i.kl = trunc i64 %i.kk to i8                   ; 3 uses
  %.not184.i = icmp eq i8 %i.kl, 32
  br i1 %.not184.i, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %fixed2float.exit.i
  %i.km = sext i8 %i.kl to i32                    ; 3 uses
  %i.kn = add nsw i32 %i.km, -48
  %i.ko = icmp ult i32 %i.kn, 10
  %i.kp = add nsw i32 %i.km, -65
  %i.kq = icmp ult i32 %i.kp, 26
  %or.cond197.i = select i1 %i.ko, i1 true, i1 %i.kq
  %i.kr = add nsw i32 %i.km, -97
  %i.ks = icmp ult i32 %i.kr, 26
  %or.cond199.i = select i1 %or.cond197.i, i1 true, i1 %i.ks
  br i1 %or.cond199.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kt = getelementptr inbounds nuw i8, ptr %.049.i.i, i64 1
  store i8 %i.kl, ptr %.049.i.i, align 1, !tbaa !29
  %.pre326.i = load i64, ptr %i.ki, align 8, !tbaa !814
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %fixed2float.exit.i
  %i.ku = phi i64 [ %.pre326.i, %bb.bh ], [ %i.kj, %bb.bg ], [ %i.kj, %fixed2float.exit.i ] ; 3 uses
  %.5.i = phi ptr [ %i.kt, %bb.bh ], [ %.049.i.i, %bb.bg ], [ %.049.i.i, %fixed2float.exit.i ] ; 4 uses
  %i.kv = lshr i64 %i.ku, 16
  %i.kw = trunc i64 %i.kv to i8                   ; 3 uses
  %.not185.i = icmp eq i8 %i.kw, 32
  br i1 %.not185.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kx = sext i8 %i.kw to i32                    ; 3 uses
  %i.ky = add nsw i32 %i.kx, -48
  %i.kz = icmp ult i32 %i.ky, 10
  %i.la = add nsw i32 %i.kx, -65
  %i.lb = icmp ult i32 %i.la, 26
  %or.cond201.i = select i1 %i.kz, i1 true, i1 %i.lb
  %i.lc = add nsw i32 %i.kx, -97
  %i.ld = icmp ult i32 %i.lc, 26
  %or.cond203.i = select i1 %or.cond201.i, i1 true, i1 %i.ld
  br i1 %or.cond203.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.le = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  store i8 %i.kw, ptr %.5.i, align 1, !tbaa !29
  %.pre327.i = load i64, ptr %i.ki, align 8, !tbaa !814
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.lf = phi i64 [ %.pre327.i, %bb.bk ], [ %i.ku, %bb.bj ], [ %i.ku, %bb.bi ] ; 3 uses
  %.6.i = phi ptr [ %i.le, %bb.bk ], [ %.5.i, %bb.bj ], [ %.5.i, %bb.bi ] ; 4 uses
  %i.lg = lshr i64 %i.lf, 8
  %i.lh = trunc i64 %i.lg to i8                   ; 3 uses
  %.not186.i = icmp eq i8 %i.lh, 32
  br i1 %.not186.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.li = sext i8 %i.lh to i32                    ; 3 uses
  %i.lj = add nsw i32 %i.li, -48
  %i.lk = icmp ult i32 %i.lj, 10
  %i.ll = add nsw i32 %i.li, -65
  %i.lm = icmp ult i32 %i.ll, 26
  %or.cond205.i = select i1 %i.lk, i1 true, i1 %i.lm
  %i.ln = add nsw i32 %i.li, -97
  %i.lo = icmp ult i32 %i.ln, 26
  %or.cond207.i = select i1 %or.cond205.i, i1 true, i1 %i.lo
  br i1 %or.cond207.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lp = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 %i.lh, ptr %.6.i, align 1, !tbaa !29
  %.pre328.i = load i64, ptr %i.ki, align 8, !tbaa !814
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.lq = phi i64 [ %.pre328.i, %bb.bn ], [ %i.lf, %bb.bm ], [ %i.lf, %bb.bl ]
  %.7.i = phi ptr [ %i.lp, %bb.bn ], [ %.6.i, %bb.bm ], [ %.6.i, %bb.bl ] ; 4 uses
  %i.lr = trunc i64 %i.lq to i8                   ; 3 uses
  %.not187.i = icmp eq i8 %i.lr, 32
  br i1 %.not187.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ls = sext i8 %i.lr to i32                    ; 3 uses
  %i.lt = add nsw i32 %i.ls, -48
  %i.lu = icmp ult i32 %i.lt, 10
  %i.lv = add nsw i32 %i.ls, -65
  %i.lw = icmp ult i32 %i.lv, 26
  %or.cond209.i = select i1 %i.lu, i1 true, i1 %i.lw
  %i.lx = add nsw i32 %i.ls, -97
  %i.ly = icmp ult i32 %i.lx, 26
  %or.cond211.i = select i1 %or.cond209.i, i1 true, i1 %i.ly
  br i1 %or.cond211.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lz = getelementptr inbounds nuw i8, ptr %.7.i, i64 1
  store i8 %i.lr, ptr %.7.i, align 1, !tbaa !29
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %.lr.ph303.i
  %.9.i = phi ptr [ %.4301.i, %.lr.ph303.i ], [ %i.lz, %bb.bq ], [ %.7.i, %bb.bp ], [ %.7.i, %bb.bo ] ; 2 uses
  %i.ma = add nuw i32 %.0149300.i, 1              ; 2 uses
  %i.mb = load ptr, ptr %i.e, align 8, !tbaa !808
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  store ptr %i.mc, ptr %i.e, align 8, !tbaa !808
  %i.md = getelementptr inbounds nuw i8, ptr %.0134302.i, i64 48
  %i.me = load i32, ptr %i.d, align 4, !tbaa !30
  %i.mf = icmp ult i32 %i.ma, %i.me
  br i1 %i.mf, label %.lr.ph303.i, label %._crit_edge.i, !llvm.loop !792

._crit_edge.i:                                    ; preds = %bb.br, %bb.ar
  %.4.lcssa.i = phi ptr [ %i.gw, %bb.ar ], [ %.9.i, %bb.br ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.4.lcssa.i, i64 1
  store i8 0, ptr %.4.lcssa.i, align 1, !tbaa !29
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i, %.thread281.i, %.thread273.i
  %.6147.i = phi ptr [ %i.gq, %._crit_edge.i ], [ %i.fj, %.thread281.i ], [ %.pr.i, %.thread273.i ] ; 5 uses
  %.10.i = phi ptr [ %i.mg, %._crit_edge.i ], [ %i.ge, %.thread281.i ], [ %i.eq, %.thread273.i ]
  %i.mh = ptrtoint ptr %.10.i to i64
  %i.mi = ptrtoint ptr %.6147.i to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 2 uses
  %i.mk = icmp sgt i64 %i.mj, 127
  br i1 %i.mk, label %bb.bt, label %sfnt_get_var_ps_name.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ml = trunc i64 %i.mj to i32                  ; 7 uses
  %i.mm = sdiv i32 %i.ml, 16                      ; 2 uses
  %i.mn = shl nsw i32 %i.mm, 4
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %.6147.i, i64 %i.mo ; 16 uses
  %.off.i.i = add i32 %i.ml, 15
  %.not193.i.i = icmp ult i32 %.off.i.i, 31
  br i1 %.not193.i.i, label %._crit_edge.i245.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bt
  %i.mq = sub nsw i32 0, %i.mm
  %i.mr = sext i32 %i.mq to i64
  br label %.lr.ph.i242.i

.lr.ph.i242.i:                                    ; preds = %.lr.ph.i242.i, %.lr.ph.preheader.i.i
  %indvars.iv.i243.i = phi i64 [ %i.mr, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i244.i, %.lr.ph.i242.i ] ; 2 uses
  %.0171198.i.i = phi i32 [ 123456789, %.lr.ph.preheader.i.i ], [ %i.nj, %.lr.ph.i242.i ]
  %.0173197.i.i = phi i32 [ 123456789, %.lr.ph.preheader.i.i ], [ %i.nt, %.lr.ph.i242.i ] ; 2 uses
  %.0177195.i.i = phi i32 [ 123456789, %.lr.ph.preheader.i.i ], [ %i.on, %.lr.ph.i242.i ] ; 2 uses
  %.0183194.i.i = phi i32 [ 123456789, %.lr.ph.preheader.i.i ], [ %i.od, %.lr.ph.i242.i ] ; 2 uses
  %.idx.i.i = shl nsw i64 %indvars.iv.i243.i, 4
  %i.ms = getelementptr inbounds i8, ptr %i.mp, i64 %.idx.i.i ; 4 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !30 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.ms, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !30 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.ms, i64 8
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !30 ; 2 uses
  %i.my = getelementptr i8, ptr %i.ms, i64 12
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !30 ; 2 uses
  %i.na = mul i32 %i.mt, 597399067
  %i.nb = mul i32 %i.mt, -888307712
  %i.nc = lshr i32 %i.na, 17
  %i.nd = or disjoint i32 %i.nc, %i.nb
  %i.ne = mul i32 %i.nd, -1425107063
  %i.nf = xor i32 %i.ne, %.0171198.i.i            ; 2 uses
  %i.ng = call i32 @llvm.fshl.i32(i32 %i.nf, i32 %i.nf, i32 19)
  %i.nh = add i32 %i.ng, %.0173197.i.i
  %i.ni = mul i32 %i.nh, 5
  %i.nj = add i32 %i.ni, 1444728091               ; 3 uses
  %i.nk = mul i32 %i.mv, -1425107063
  %i.nl = mul i32 %i.mv, -1752629248
  %i.nm = lshr i32 %i.nk, 16
  %i.nn = or disjoint i32 %i.nm, %i.nl
  %i.no = mul i32 %i.nn, 951274213
  %i.np = xor i32 %i.no, %.0173197.i.i            ; 2 uses
  %i.nq = call i32 @llvm.fshl.i32(i32 %i.np, i32 %i.np, i32 17)
  %i.nr = add i32 %i.nq, %.0183194.i.i
  %i.ns = mul i32 %i.nr, 5
  %i.nt = add i32 %i.ns, 197830471                ; 2 uses
  %i.nu = mul i32 %i.mx, 951274213
  %i.nv = mul i32 %i.mx, -1781923840
  %i.nw = lshr i32 %i.nu, 15
  %i.nx = or disjoint i32 %i.nw, %i.nv
  %i.ny = mul i32 %i.nx, -1578923117
end_hunk_0
