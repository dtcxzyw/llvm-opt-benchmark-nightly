Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/libc?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_vsnprintf:bb.a

bb.ct:                                            ; preds = %bb.cg, %bb.co, %bb.cs, %bb.ck, %bb.cc
  %.0209 = phi i64 [ %i.gx, %bb.cc ], [ %i.hf, %bb.cg ], [ %i.hn, %bb.ck ], [ %i.hv, %bb.co ], [ %i.ie, %bb.cs ] ; 4 uses
  %i.if = icmp slt i64 %.0209, 0
  br i1 %i.if, label %.thread353, label %bb.cu

.thread353:                                       ; preds = %bb.ct
  %i.ig = sub i64 0, %.0209
  br label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.ih = icmp eq i64 %.0209, 0
  br i1 %i.ih, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %.not35.i310.not = icmp eq i8 %.0214, 0
  br i1 %.not35.i310.not, label %mi_outc.exit.i314, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i8 %.0214, ptr %.0342378, align 1, !tbaa !10
  %i.ii = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outc.exit.i314

mi_outc.exit.i314:                                ; preds = %bb.cw, %bb.cv
  %.24 = phi ptr [ %i.ii, %bb.cw ], [ %.0342378, %bb.cv ] ; 4 uses
  %.not.i36.i315 = icmp ult ptr %.24, %i.g
  br i1 %.not.i36.i315, label %bb.cx, label %mi_outs.exit

bb.cx:                                            ; preds = %mi_outc.exit.i314
  store i8 48, ptr %.24, align 1, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cy:                                            ; preds = %.thread353, %bb.cu
  %.0357 = phi i8 [ 45, %.thread353 ], [ %.0214, %bb.cu ] ; 2 uses
  %.1356 = phi i64 [ %i.ig, %.thread353 ], [ %.0209, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %bb.cy
  %indvars.iv47.i294 = phi i64 [ 1, %bb.cy ], [ %indvars.iv.next48.i298, %bb.cz ] ; 5 uses
  %indvars.iv.i295 = phi i64 [ 0, %bb.cy ], [ %indvars.iv.next.i297, %bb.cz ] ; 4 uses
  %.03042.i296 = phi i64 [ %.1356, %bb.cy ], [ %i.io, %bb.cz ] ; 3 uses
  %i.ik = urem i64 %.03042.i296, 10
  %i.il = trunc nuw nsw i64 %i.ik to i8
  %i.im = or disjoint i8 %i.il, 48
  %indvars.iv.next.i297 = add nuw nsw i64 %indvars.iv.i295, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i295
  store i8 %i.im, ptr %i.in, align 1, !tbaa !10
  %i.io = udiv i64 %.03042.i296, 10
  %i.ip = icmp ugt i64 %.03042.i296, 9
  %i.iq = icmp samesign ult i64 %indvars.iv.i295, 159
  %i.ir = select i1 %i.ip, i1 %i.iq, i1 false
  %indvars.iv.next48.i298 = add nuw nsw i64 %indvars.iv47.i294, 1
  br i1 %i.ir, label %bb.cz, label %bb.da, !llvm.loop !26

bb.da:                                            ; preds = %bb.cz
  %i.is = icmp samesign ugt i64 %indvars.iv.i295, 158
  br i1 %i.is, label %.loopexit.i304, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.not.i299.not = icmp eq i8 %.0357, 0
  br i1 %.not.i299.not, label %mi_outc.exit39.i303, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i8 %.0357, ptr %.0342378, align 1, !tbaa !10
  %i.it = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outc.exit39.i303

mi_outc.exit39.i303:                              ; preds = %bb.dc, %bb.db
  %.20 = phi ptr [ %i.it, %bb.dc ], [ %.0342378, %bb.db ] ; 6 uses
  %i.iu = icmp ult ptr %.20, %i.g
  br i1 %i.iu, label %mi_outc.exit39.split.i305.preheader, label %.loopexit.i304

mi_outc.exit39.split.i305.preheader:              ; preds = %mi_outc.exit39.i303
  %xtraiter = and i64 %indvars.iv47.i294, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mi_outc.exit39.split.i305.prol.loopexit, label %mi_outc.exit39.split.i305.prol

mi_outc.exit39.split.i305.prol:                   ; preds = %mi_outc.exit39.split.i305.preheader, %mi_outc.exit41.i309.prol
  %.22.prol = phi ptr [ %.23.prol, %mi_outc.exit41.i309.prol ], [ %.20, %mi_outc.exit39.split.i305.preheader ]
  %i.iv = phi ptr [ %i.iz, %mi_outc.exit41.i309.prol ], [ %.20, %mi_outc.exit39.split.i305.preheader ] ; 4 uses
  %indvars.iv49.i306.prol = phi i64 [ %indvars.iv.next50.i307.prol, %mi_outc.exit41.i309.prol ], [ %indvars.iv47.i294, %mi_outc.exit39.split.i305.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %mi_outc.exit41.i309.prol ], [ 0, %mi_outc.exit39.split.i305.preheader ]
  %indvars.iv.next50.i307.prol = add nsw i64 %indvars.iv49.i306.prol, -1 ; 3 uses
  %.not.i40.i308.prol = icmp ult ptr %i.iv, %i.g
  br i1 %.not.i40.i308.prol, label %bb.dd, label %mi_outc.exit41.i309.prol

bb.dd:                                            ; preds = %mi_outc.exit39.split.i305.prol
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next50.i307.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !10
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !10
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.prol

mi_outc.exit41.i309.prol:                         ; preds = %bb.dd, %mi_outc.exit39.split.i305.prol
  %.23.prol = phi ptr [ %i.iy, %bb.dd ], [ %.22.prol, %mi_outc.exit39.split.i305.prol ] ; 3 uses
  %i.iz = phi ptr [ %i.iy, %bb.dd ], [ %i.iv, %mi_outc.exit39.split.i305.prol ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %mi_outc.exit39.split.i305.prol.loopexit, label %mi_outc.exit39.split.i305.prol, !llvm.loop !29

mi_outc.exit39.split.i305.prol.loopexit:          ; preds = %mi_outc.exit41.i309.prol, %mi_outc.exit39.split.i305.preheader
  %.22.unr = phi ptr [ %.20, %mi_outc.exit39.split.i305.preheader ], [ %.23.prol, %mi_outc.exit41.i309.prol ]
  %.unr = phi ptr [ %.20, %mi_outc.exit39.split.i305.preheader ], [ %i.iz, %mi_outc.exit41.i309.prol ]
  %indvars.iv49.i306.unr = phi i64 [ %indvars.iv47.i294, %mi_outc.exit39.split.i305.preheader ], [ %indvars.iv.next50.i307.prol, %mi_outc.exit41.i309.prol ]
  %.23.lcssa.unr = phi ptr [ poison, %mi_outc.exit39.split.i305.preheader ], [ %.23.prol, %mi_outc.exit41.i309.prol ]
  %i.ja = icmp samesign ult i64 %indvars.iv47.i294, 4
  br i1 %i.ja, label %.loopexit.i304, label %mi_outc.exit39.split.i305

mi_outc.exit39.split.i305:                        ; preds = %mi_outc.exit39.split.i305.prol.loopexit, %mi_outc.exit41.i309.3
  %.22 = phi ptr [ %.23.3, %mi_outc.exit41.i309.3 ], [ %.22.unr, %mi_outc.exit39.split.i305.prol.loopexit ]
  %i.jb = phi ptr [ %i.ju, %mi_outc.exit41.i309.3 ], [ %.unr, %mi_outc.exit39.split.i305.prol.loopexit ] ; 4 uses
  %indvars.iv49.i306 = phi i64 [ %indvars.iv.next50.i307.3, %mi_outc.exit41.i309.3 ], [ %indvars.iv49.i306.unr, %mi_outc.exit39.split.i305.prol.loopexit ] ; 5 uses
  %.not.i40.i308 = icmp ult ptr %i.jb, %i.g
  br i1 %.not.i40.i308, label %bb.de, label %mi_outc.exit41.i309

bb.de:                                            ; preds = %mi_outc.exit39.split.i305
  %i.jc = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.jd = getelementptr i8, ptr %i.jc, i64 -1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !10
  store i8 %i.je, ptr %i.jb, align 1, !tbaa !10
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309

mi_outc.exit41.i309:                              ; preds = %bb.de, %mi_outc.exit39.split.i305
  %.23 = phi ptr [ %i.jf, %bb.de ], [ %.22, %mi_outc.exit39.split.i305 ]
  %i.jg = phi ptr [ %i.jf, %bb.de ], [ %i.jb, %mi_outc.exit39.split.i305 ] ; 4 uses
  %.not.i40.i308.1 = icmp ult ptr %i.jg, %i.g
  br i1 %.not.i40.i308.1, label %bb.df, label %mi_outc.exit41.i309.1

bb.df:                                            ; preds = %mi_outc.exit41.i309
  %i.jh = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.ji = getelementptr i8, ptr %i.jh, i64 -2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !10
  store i8 %i.jj, ptr %i.jg, align 1, !tbaa !10
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.1

mi_outc.exit41.i309.1:                            ; preds = %bb.df, %mi_outc.exit41.i309
  %.23.1 = phi ptr [ %i.jk, %bb.df ], [ %.23, %mi_outc.exit41.i309 ]
  %i.jl = phi ptr [ %i.jk, %bb.df ], [ %i.jg, %mi_outc.exit41.i309 ] ; 4 uses
  %.not.i40.i308.2 = icmp ult ptr %i.jl, %i.g
  br i1 %.not.i40.i308.2, label %bb.dg, label %mi_outc.exit41.i309.2

bb.dg:                                            ; preds = %mi_outc.exit41.i309.1
  %i.jm = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.jn = getelementptr i8, ptr %i.jm, i64 -3
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !10
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.2

mi_outc.exit41.i309.2:                            ; preds = %bb.dg, %mi_outc.exit41.i309.1
  %.23.2 = phi ptr [ %i.jp, %bb.dg ], [ %.23.1, %mi_outc.exit41.i309.1 ]
  %i.jq = phi ptr [ %i.jp, %bb.dg ], [ %i.jl, %mi_outc.exit41.i309.1 ] ; 4 uses
  %indvars.iv.next50.i307.3 = add nsw i64 %indvars.iv49.i306, -4 ; 2 uses
  %.not.i40.i308.3 = icmp ult ptr %i.jq, %i.g
  br i1 %.not.i40.i308.3, label %bb.dh, label %mi_outc.exit41.i309.3

bb.dh:                                            ; preds = %mi_outc.exit41.i309.2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next50.i307.3
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !10
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.3

mi_outc.exit41.i309.3:                            ; preds = %bb.dh, %mi_outc.exit41.i309.2
  %.23.3 = phi ptr [ %i.jt, %bb.dh ], [ %.23.2, %mi_outc.exit41.i309.2 ] ; 2 uses
  %i.ju = phi ptr [ %i.jt, %bb.dh ], [ %i.jq, %mi_outc.exit41.i309.2 ]
  %i.jv = icmp sgt i64 %indvars.iv49.i306, 4
  br i1 %i.jv, label %mi_outc.exit39.split.i305, label %.loopexit.i304, !llvm.loop !28

.loopexit.i304:                                   ; preds = %mi_outc.exit39.split.i305.prol.loopexit, %mi_outc.exit41.i309.3, %mi_outc.exit39.i303, %bb.da
  %.21 = phi ptr [ %.0342378, %bb.da ], [ %.20, %mi_outc.exit39.i303 ], [ %.23.lcssa.unr, %mi_outc.exit39.split.i305.prol.loopexit ], [ %.23.3, %mi_outc.exit41.i309.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %mi_outs.exit

bb.di:                                            ; preds = %bb.ai
  %i.jw = add i8 %.6229, -32
  %or.cond48 = icmp ult i8 %i.jw, 95
  br i1 %or.cond48, label %mi_outc.exit318, label %mi_outs.exit

mi_outc.exit318:                                  ; preds = %bb.di
  store i8 37, ptr %.0342378, align 1, !tbaa !10
  %i.jx = getelementptr inbounds nuw i8, ptr %.0342378, i64 1 ; 3 uses
  %.not.i319 = icmp ult ptr %i.jx, %i.g
  br i1 %.not.i319, label %bb.dj, label %mi_outs.exit

bb.dj:                                            ; preds = %mi_outc.exit318
  store i8 %.6229, ptr %i.jx, align 1, !tbaa !10
  %i.jy = getelementptr inbounds nuw i8, ptr %.0342378, i64 2
  br label %mi_outs.exit

mi_outs.exit:                                     ; preds = %.lr.ph.i, %bb.dj, %mi_outc.exit318, %.loopexit.i304, %bb.cx, %mi_outc.exit.i314, %.loopexit.i, %bb.bn, %mi_outc.exit.i, %bb.ag, %bb.ah, %bb.di, %mi_outc.exit286
  %.2344 = phi ptr [ %.21, %.loopexit.i304 ], [ %.0342378, %bb.di ], [ %i.jx, %mi_outc.exit318 ], [ %.15, %.loopexit.i ], [ %i.bj, %mi_outc.exit286 ], [ %.0342378, %bb.ag ], [ %.0342378, %bb.ah ], [ %i.ew, %bb.bn ], [ %.18, %mi_outc.exit.i ], [ %i.ij, %bb.cx ], [ %.24, %mi_outc.exit.i314 ], [ %i.jy, %bb.dj ], [ %i.by, %.lr.ph.i ]
  %.2220 = phi i8 [ %.0218, %.loopexit.i304 ], [ %.0218, %bb.di ], [ %.0218, %mi_outc.exit318 ], [ %.1219, %.loopexit.i ], [ %.0218, %mi_outc.exit286 ], [ %.0218, %bb.ag ], [ %.0218, %bb.ah ], [ %.1219, %bb.bn ], [ %.1219, %mi_outc.exit.i ], [ %.0218, %bb.cx ], [ %.0218, %mi_outc.exit.i314 ], [ %.0218, %bb.dj ], [ %.0218, %.lr.ph.i ] ; 2 uses
  %.7 = phi i64 [ %.3, %.loopexit.i304 ], [ %.3, %bb.di ], [ %.3, %mi_outc.exit318 ], [ %.6, %.loopexit.i ], [ %.3, %mi_outc.exit286 ], [ %.3, %bb.ag ], [ %.3, %bb.ah ], [ %.6, %bb.bn ], [ %.6, %mi_outc.exit.i ], [ %.3, %bb.cx ], [ %.3, %mi_outc.exit.i314 ], [ %.3, %bb.dj ], [ %.3, %.lr.ph.i ] ; 7 uses
  %.1212 = phi ptr [ %.0342378, %.loopexit.i304 ], [ %.0342378, %bb.di ], [ %.0342378, %mi_outc.exit318 ], [ %.1343, %.loopexit.i ], [ %.0342378, %mi_outc.exit286 ], [ %.0342378, %bb.ag ], [ %.0342378, %bb.ah ], [ %.1343, %bb.bn ], [ %.1343, %mi_outc.exit.i ], [ %.0342378, %bb.cx ], [ %.0342378, %mi_outc.exit.i314 ], [ %.0342378, %bb.dj ], [ %.0342378, %.lr.ph.i ] ; 10 uses
  %.fr.i = freeze ptr %.2344                      ; 7 uses
  %i.jz = ptrtoint ptr %.fr.i to i64              ; 2 uses
  %i.ka = ptrtoint ptr %.1212 to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 14 uses
  %i.kc = icmp ult i64 %i.kb, %.7
  br i1 %i.kc, label %bb.dk, label %mi_out_alignright.exit

bb.dk:                                            ; preds = %mi_outs.exit
  %i.kd = sub nuw i64 %.7, %i.kb                  ; 2 uses
  %i.ke = icmp ult ptr %.fr.i, %i.g
  br i1 %i.ke, label %.lr.ph.preheader.i, label %mi_out_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.dk
  %i.kf = xor i64 %i.jz, -1
  %i.kg = add i64 %i.kf, %i.j
  %i.kh = add i64 %i.kd, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 %i.kh)
  %i.ki = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2220, i64 %i.ki, i1 false), !tbaa !10
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.ki
  br label %mi_out_fill.exit

mi_out_fill.exit:                                 ; preds = %bb.dk, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.dk ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not270 = icmp ugt ptr %.09.lcssa.i, %i.g
  %or.cond272 = select i1 %.not269, i1 true, i1 %.not270
  br i1 %or.cond272, label %mi_out_alignright.exit, label %bb.dl

bb.dl:                                            ; preds = %mi_out_fill.exit
  %i.kj = icmp ne ptr %.fr.i, %.1212
  %i.kk = getelementptr inbounds nuw i8, ptr %.1212, i64 %.7
  %.not.i322 = icmp ult ptr %i.kk, %i.g
  %or.cond27.i = select i1 %i.kj, i1 %.not.i322, i1 false
  br i1 %or.cond27.i, label %vector.memcheck, label %mi_out_alignright.exit

vector.memcheck:                                  ; preds = %bb.dl
  %min.iters.check = icmp ult i64 %i.kb, 8
  %i.kl = sub i64 %.7, %i.kb
  %diff.check = icmp ugt i64 %i.kl, -32
  %or.cond461 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond461, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check453 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check453, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.km = and i64 %i.kb, 24
  %n.vec = and i64 %i.kb, -32                     ; 4 uses
  %i.kn = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ko = or disjoint i64 %index, 1               ; 2 uses
  %i.kp = sub nuw i64 %i.kb, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -15
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kr, align 1, !tbaa !10
  %wide.load454 = load <16 x i8>, ptr %i.ks, align 1, !tbaa !10
  %i.kt = sub i64 %.7, %i.ko
  %i.ku = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -15
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 -31
  store <16 x i8> %wide.load, ptr %i.kv, align 1, !tbaa !10
  store <16 x i8> %wide.load454, ptr %i.kw, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kx = icmp eq i64 %index.next, %n.vec
  br i1 %i.kx, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.km, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec455 = and i64 %i.kb, -8                   ; 3 uses
  %i.ky = or disjoint i64 %n.vec455, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index456 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next458, %vec.epilog.vector.body ] ; 2 uses
  %i.kz = or disjoint i64 %index456, 1            ; 2 uses
  %i.la = sub nuw i64 %i.kb, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.la
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -7
  %wide.load457 = load <8 x i8>, ptr %i.lc, align 1, !tbaa !10
  %i.ld = sub i64 %.7, %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.ld
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -7
  store <8 x i8> %wide.load457, ptr %i.lf, align 1, !tbaa !10
  %index.next458 = add nuw i64 %index456, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next458, %n.vec455
  br i1 %i.lg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n459 = icmp eq i64 %i.kb, %n.vec455
  br i1 %cmp.n459, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %vector.memcheck ], [ %i.kn, %vec.epilog.iter.check ], [ %i.ky, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.lm, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.lh = sub nuw i64 %i.kb, %.02232.i
  %i.li = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !10
  %i.lk = sub i64 %.7, %.02232.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.lk
  store i8 %i.lj, ptr %i.ll, align 1, !tbaa !10
  %i.lm = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.kb
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !32

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1212, i8 range(i8 32, 49) %.2220, i64 %i.kd, i1 false), !tbaa !10
  br label %mi_out_alignright.exit

mi_out_alignright.exit:                           ; preds = %mi_out_fill.exit, %mi_outs.exit, %bb.dl, %.preheader.preheader.i, %mi_outc.exit284, %mi_outc.exit, %mi_outc.exit276, %mi_outc.exit278, %mi_outc.exit280, %mi_outc.exit282, %bb.f, %switch.early.test
  %.4346 = phi ptr [ %.09.lcssa.i, %mi_out_fill.exit ], [ %i.w, %mi_outc.exit284 ], [ %.0342378, %switch.early.test ], [ %.09.lcssa.i, %.preheader.preheader.i ], [ %i.u, %mi_outc.exit282 ], [ %.fr.i, %mi_outs.exit ], [ %.0342378, %bb.f ], [ %i.q, %mi_outc.exit ], [ %i.r, %mi_outc.exit276 ], [ %i.s, %mi_outc.exit278 ], [ %i.t, %mi_outc.exit280 ], [ %.09.lcssa.i, %bb.dl ] ; 3 uses
  %.9 = phi ptr [ %.6236, %mi_out_fill.exit ], [ %i.m, %mi_outc.exit284 ], [ %i.m, %switch.early.test ], [ %.6236, %.preheader.preheader.i ], [ %i.p, %mi_outc.exit282 ], [ %.6236, %mi_outs.exit ], [ %i.p, %bb.f ], [ %i.p, %mi_outc.exit ], [ %i.p, %mi_outc.exit276 ], [ %i.p, %mi_outc.exit278 ], [ %i.p, %mi_outc.exit280 ], [ %.6236, %bb.dl ]
  %.not = icmp ult ptr %.4346, %i.g
  br i1 %.not, label %bb.c, label %mi_out_alignright.exit.thread365

mi_out_alignright.exit.thread365:                 ; preds = %mi_out_alignright.exit, %bb.c, %bb.h, %bb.e, %bb.y, %bb.j, %bb.m, %bb.p, %bb.s, %bb.aa, %bb.w, %bb.v, %bb.b
  %.0342376 = phi ptr [ %.0342378, %bb.v ], [ %0, %bb.b ], [ %.4346, %mi_out_alignright.exit ], [ %.0342378, %bb.c ], [ %.0342378, %bb.h ], [ %.0342378, %bb.e ], [ %.0342378, %bb.y ], [ %.0342378, %bb.j ], [ %.0342378, %bb.m ], [ %.0342378, %bb.p ], [ %.0342378, %bb.s ], [ %.0342378, %bb.aa ], [ %.0342378, %bb.w ] ; 2 uses
  store i8 0, ptr %.0342376, align 1, !tbaa !10
  %i.ln = ptrtoint ptr %.0342376 to i64
  %i.lo = ptrtoint ptr %0 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = trunc i64 %i.lp to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.a, %mi_out_alignright.exit.thread365
  %.0238 = phi i32 [ %i.lq, %mi_out_alignright.exit.thread365 ], [ 0, %bb.a ]
  ret i32 %.0238
}

; Function Attrs: nofree nooutline norecurse nosync nounwind uwtable
define hidden noundef i32 @_mi_snprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #10 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: mustprogress nofree noinline nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i64 %0, 2
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ %0, %bb.a ], [ 64, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

attributes #0 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nooutline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nooutline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nooutline norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree noinline nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind "no-builtin-malloc" }
attributes #16 = { "no-builtin-malloc" }
attributes #17 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!7, !7, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{i64 5974}
!22 = !{!"_Bool", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !39}
!28 = distinct !{!28, !11, !40}
!29 = distinct !{!29, !39}
!30 = distinct !{!30, !11, !41, !42}
!31 = distinct !{!31, !11, !41, !42}
!32 = distinct !{!32, !11, !41}
!33 = !{!"any pointer", !6, i64 0}
!34 = !{!"p1 omnipotent char", !33, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"long long", !6, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!33, !33, i64 0}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
