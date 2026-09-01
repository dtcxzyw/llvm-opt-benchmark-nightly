Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/xmlparse?download=true
inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@storeAtts:bb.a
  br i1 %.not563, label %.thread611, label %.critedge565

.thread611:                                       ; preds = %bb.ak, %bb.al, %bb.am
  %.2428618 = phi i32 [ %.0426757, %bb.am ], [ %i.fn, %bb.ak ], [ %.0426757, %bb.al ] ; 2 uses
  %.3454617 = phi i32 [ %.0451755, %bb.am ], [ %i.fm, %bb.ak ], [ %i.fq, %bb.al ] ; 2 uses
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %exitcond854.not = icmp eq i64 %indvars.iv.next851, %wide.trip.count853
  br i1 %exitcond854.not, label %._crit_edge, label %bb.t, !llvm.loop !364

._crit_edge:                                      ; preds = %.thread611, %bb.s
  %.0451.lcssa = phi i32 [ 0, %bb.s ], [ %.3454617, %.thread611 ] ; 5 uses
  %.0426.lcssa = phi i32 [ 0, %bb.s ], [ %.2428618, %.thread611 ] ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 772
  store i32 %.0451.lcssa, ptr %i.fv, align 4, !tbaa !133
  %i.fw = getelementptr i8, ptr %.1459, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !166 ; 2 uses
  %.not515 = icmp eq ptr %i.fx, null
  br i1 %.not515, label %.loopexit697.sink.split, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !155 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %.not516 = icmp eq i8 %i.ga, 0
  br i1 %.not516, label %.loopexit697.sink.split, label %.preheader696

.preheader696:                                    ; preds = %bb.an
  %i.gb = icmp sgt i32 %.0451.lcssa, 0
  br i1 %i.gb, label %.lr.ph761, label %.loopexit697

.lr.ph761:                                        ; preds = %.preheader696, %bb.ao
  %.1437760 = phi i32 [ %i.gg, %bb.ao ], [ 0, %.preheader696 ] ; 3 uses
  %i.gc = sext i32 %.1437760 to i64
  %i.gd = getelementptr [8 x i8], ptr %i.cl, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49
  %i.gf = icmp eq ptr %i.ge, %i.fy
  br i1 %i.gf, label %.loopexit697.sink.split, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph761
  %i.gg = add i32 %.1437760, 2                    ; 2 uses
  %i.gh = icmp slt i32 %i.gg, %.0451.lcssa
  br i1 %i.gh, label %.lr.ph761, label %.loopexit697, !llvm.loop !365

.loopexit697.sink.split:                          ; preds = %.lr.ph761, %._crit_edge, %bb.an
  %.1437760.lcssa.sink = phi i32 [ -1, %._crit_edge ], [ -1, %bb.an ], [ %.1437760, %.lr.ph761 ]
  %i.gi = getelementptr i8, ptr %0, i64 776
  store i32 %.1437760.lcssa.sink, ptr %i.gi, align 8, !tbaa !189
  br label %.loopexit697

.loopexit697:                                     ; preds = %bb.ao, %.loopexit697.sink.split, %.preheader696
  %i.gj = icmp sgt i32 %i.bm, 0
  br i1 %i.gj, label %.lr.ph766, label %._crit_edge767

.lr.ph766:                                        ; preds = %.loopexit697
  %i.gk = getelementptr i8, ptr %.1459, i64 32
  %wide.trip.count858 = zext nneg i32 %i.bm to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph766, %.thread620
  %indvars.iv855 = phi i64 [ 0, %.lr.ph766 ], [ %indvars.iv.next856, %.thread620 ] ; 2 uses
  %.3429764 = phi i32 [ %.0426.lcssa, %.lr.ph766 ], [ %.5431627, %.thread620 ] ; 5 uses
  %.4455762 = phi i32 [ %.0451.lcssa, %.lr.ph766 ], [ %.6457626, %.thread620 ] ; 6 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !108
  %i.gm = getelementptr [24 x i8], ptr %i.gl, i64 %indvars.iv855 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !168 ; 4 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !155
  %i.gp = getelementptr i8, ptr %i.go, i64 -1     ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !10
  %.not551 = icmp eq i8 %i.gq, 0
  br i1 %.not551, label %bb.aq, label %.thread620

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr i8, ptr %i.gm, i64 16     ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !171 ; 2 uses
  %.not552 = icmp eq ptr %i.gs, null
  br i1 %.not552, label %.thread620, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gt = getelementptr i8, ptr %i.gn, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !158 ; 2 uses
  %.not553 = icmp eq ptr %i.gu, null
  br i1 %.not553, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gv = getelementptr i8, ptr %i.gn, i64 17
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !159
  %.not554 = icmp eq i8 %i.gw, 0
  br i1 %.not554, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store i8 2, ptr %i.gp, align 1, !tbaa !10
  %i.gx = add i32 %.3429764, 1
  br label %.thread620.sink.split

bb.au:                                            ; preds = %bb.ar
  store i8 1, ptr %i.gp, align 1, !tbaa !10
  br label %.thread620.sink.split

bb.av:                                            ; preds = %bb.as
  %i.gy = call fastcc i32 @addBinding(ptr noundef %0, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.gs, ptr noundef %4) ; 2 uses
  %.not555 = icmp eq i32 %i.gy, 0
  br i1 %.not555, label %.thread620, label %.critedge565

.thread620.sink.split:                            ; preds = %bb.au, %bb.at
  %.5431627.ph = phi i32 [ %i.gx, %bb.at ], [ %.3429764, %bb.au ]
  %i.gz = load ptr, ptr %i.gm, align 8, !tbaa !168
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !155
  %i.hb = add i32 %.4455762, 1
  %i.hc = sext i32 %.4455762 to i64
  %i.hd = getelementptr [8 x i8], ptr %i.cl, i64 %i.hc
  store ptr %i.ha, ptr %i.hd, align 8, !tbaa !49
  %i.he = load ptr, ptr %i.gr, align 8, !tbaa !171
  %i.hf = add i32 %.4455762, 2
  %i.hg = sext i32 %i.hb to i64
  %i.hh = getelementptr [8 x i8], ptr %i.cl, i64 %i.hg
  store ptr %i.he, ptr %i.hh, align 8, !tbaa !49
  br label %.thread620

.thread620:                                       ; preds = %.thread620.sink.split, %bb.ap, %bb.aq, %bb.av
  %.5431627 = phi i32 [ %.3429764, %bb.av ], [ %.3429764, %bb.aq ], [ %.3429764, %bb.ap ], [ %.5431627.ph, %.thread620.sink.split ] ; 2 uses
  %.6457626 = phi i32 [ %.4455762, %bb.av ], [ %.4455762, %bb.aq ], [ %.4455762, %bb.ap ], [ %i.hf, %.thread620.sink.split ] ; 2 uses
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond859.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count858
  br i1 %exitcond859.not, label %._crit_edge767, label %bb.ap, !llvm.loop !366

._crit_edge767:                                   ; preds = %.thread620, %.loopexit697
  %.4455.lcssa = phi i32 [ %.0451.lcssa, %.loopexit697 ], [ %.6457626, %.thread620 ] ; 5 uses
  %.3429.lcssa = phi i32 [ %.0426.lcssa, %.loopexit697 ], [ %.5431627, %.thread620 ] ; 4 uses
  %i.hi = sext i32 %.4455.lcssa to i64
  %i.hj = getelementptr [8 x i8], ptr %i.cl, i64 %i.hi
  store ptr null, ptr %i.hj, align 8, !tbaa !49
  %.not517 = icmp eq i32 %.3429.lcssa, 0
  br i1 %.not517, label %.thread674, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge767
  %i.hk = getelementptr i8, ptr %0, i64 800       ; 2 uses
  %i.hl = getelementptr i8, ptr %0, i64 808       ; 6 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !367 ; 5 uses
  %i.hn = icmp ugt i8 %i.hm, 31
  br i1 %i.hn, label %.critedge565, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = zext nneg i8 %i.hm to i32               ; 2 uses
  %i.hp = shl i32 %.3429.lcssa, 1
  %i.hq = ashr i32 %i.hp, %i.ho
  %.not518 = icmp eq i32 %i.hq, 0
  br i1 %.not518, label %bb.bd, label %.preheader695

.preheader695:                                    ; preds = %bb.ax, %.preheader695
  %i.hr = phi i8 [ %i.hs, %.preheader695 ], [ %i.hm, %bb.ax ] ; 2 uses
  %i.hs = add i8 %i.hr, 1                         ; 5 uses
  %i.ht = zext nneg i8 %i.hr to i32
  %i.hu = ashr i32 %.3429.lcssa, %i.ht
  %.not519 = icmp eq i32 %i.hu, 0
  br i1 %.not519, label %bb.ay, label %.preheader695, !llvm.loop !368

bb.ay:                                            ; preds = %.preheader695
  store i8 %i.hs, ptr %i.hl, align 8, !tbaa !367
  %i.hv = icmp ult i8 %i.hs, 3
  br i1 %i.hv, label %.thread628, label %bb.az

.thread628:                                       ; preds = %bb.ay
  store i8 3, ptr %i.hl, align 8, !tbaa !367
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.hw = icmp ugt i8 %i.hs, 31
  br i1 %i.hw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i8 %i.hm, ptr %i.hl, align 8, !tbaa !367
  br label %.critedge565

bb.bb:                                            ; preds = %.thread628, %bb.az
  %i.hx = phi i8 [ 3, %.thread628 ], [ %i.hs, %bb.az ] ; 2 uses
  %i.hy = getelementptr i8, ptr %0, i64 792       ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !183
  %i.ia = zext nneg i8 %i.hx to i64
  %i.ib = shl nuw nsw i64 24, %i.ia
  %i.ic = call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef %i.hz, i64 noundef %i.ib, i32 noundef 4089) ; 2 uses
  %.not520 = icmp eq ptr %i.ic, null
  br i1 %.not520, label %bb.bc, label %.thread921

bb.bc:                                            ; preds = %bb.bb
  store i8 %i.hm, ptr %i.hl, align 8, !tbaa !367
  br label %.critedge565

.thread921:                                       ; preds = %bb.bb
  %i.id = zext nneg i8 %i.hx to i32
  store ptr %i.ic, ptr %i.hy, align 8, !tbaa !183
  %.1408924 = shl nuw i32 1, %i.id
  br label %.preheader693

bb.bd:                                            ; preds = %bb.ax
  %i.ie = load i64, ptr %i.hk, align 8, !tbaa !369 ; 2 uses
  %.1408 = shl nuw i32 1, %i.ho                   ; 2 uses
  %.not521 = icmp eq i64 %i.ie, 0
  br i1 %.not521, label %.preheader693, label %.loopexit694

.preheader693:                                    ; preds = %.thread921, %bb.bd
  %.1408927 = phi i32 [ %.1408924, %.thread921 ], [ %.1408, %bb.bd ] ; 4 uses
  %i.if = getelementptr i8, ptr %0, i64 792
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !183 ; 5 uses
  %7 = zext i32 %.1408927 to i64                  ; 3 uses
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader693, %.prol.preheader
  %indvars.iv860.prol = phi i64 [ %8, %.prol.preheader ], [ %7, %.preheader693 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader693 ]
  %8 = add nsw i64 %indvars.iv860.prol, -1        ; 3 uses
  %i.ih = getelementptr [24 x i8], ptr %i.ig, i64 %8
  store i64 4294967295, ptr %i.ih, align 8, !tbaa !370
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !372

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader693
  %indvars.iv860.unr = phi i64 [ %7, %.preheader693 ], [ %8, %.prol.preheader ]
  %i.ii = icmp ult i32 %.1408927, 4
  br i1 %i.ii, label %.loopexit694, label %.preheader693.new

.preheader693.new:                                ; preds = %.prol.loopexit, %.preheader693.new
  %indvars.iv860 = phi i64 [ %12, %.preheader693.new ], [ %indvars.iv860.unr, %.prol.loopexit ] ; 4 uses
  %i.ij = getelementptr [24 x i8], ptr %i.ig, i64 %indvars.iv860
  %9 = getelementptr i8, ptr %i.ij, i64 -24
  store i64 4294967295, ptr %9, align 8, !tbaa !370
  %i.ik = getelementptr [24 x i8], ptr %i.ig, i64 %indvars.iv860
  %10 = getelementptr i8, ptr %i.ik, i64 -48
  store i64 4294967295, ptr %10, align 8, !tbaa !370
  %i.il = getelementptr [24 x i8], ptr %i.ig, i64 %indvars.iv860
  %11 = getelementptr i8, ptr %i.il, i64 -72
  store i64 4294967295, ptr %11, align 8, !tbaa !370
  %12 = add nsw i64 %indvars.iv860, -4            ; 3 uses
  %i.im = getelementptr [24 x i8], ptr %i.ig, i64 %12
  store i64 4294967295, ptr %i.im, align 8, !tbaa !370
  %.not522.3 = icmp eq i64 %12, 0
  br i1 %.not522.3, label %.loopexit694, label %.preheader693.new, !llvm.loop !374

.loopexit694:                                     ; preds = %.prol.loopexit, %.preheader693.new, %bb.bd
  %.1408926 = phi i32 [ %.1408, %bb.bd ], [ %.1408927, %.preheader693.new ], [ %.1408927, %.prol.loopexit ] ; 2 uses
  %.2411 = phi i64 [ %i.ie, %bb.bd ], [ 4294967295, %.preheader693.new ], [ 4294967295, %.prol.loopexit ]
  %i.in = add i64 %.2411, -1                      ; 4 uses
  store i64 %i.in, ptr %i.hk, align 8, !tbaa !369
  %i.io = icmp sgt i32 %.4455.lcssa, 0
  br i1 %i.io, label %.lr.ph792, label %.thread674

.lr.ph792:                                        ; preds = %.loopexit694
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.iv = getelementptr i8, ptr %i.c, i64 96      ; 2 uses
  %i.iw = getelementptr i8, ptr %i.c, i64 80
  %i.ix = getelementptr i8, ptr %i.c, i64 88
  %i.iy = getelementptr i8, ptr %0, i64 856       ; 11 uses
  %i.iz = getelementptr i8, ptr %0, i64 848       ; 3 uses
  %i.ja = getelementptr i8, ptr %0, i64 832       ; 3 uses
  %i.jb = add i32 %.1408926, -1                   ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = getelementptr i8, ptr %0, i64 792       ; 2 uses
  %i.je = getelementptr i8, ptr %0, i64 864       ; 3 uses
  %i.jf = xor i64 %i.jc, -1
  %i.jg = lshr i64 %i.jc, 2
  %i.jh = getelementptr i8, ptr %0, i64 473
  %i.ji = getelementptr i8, ptr %0, i64 940
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph792, %bb.ch
  %.6432790 = phi i32 [ %.3429.lcssa, %.lr.ph792 ], [ %.9435.ph, %bb.ch ] ; 2 uses
  %.3439789 = phi i32 [ 0, %.lr.ph792 ], [ %i.ow, %bb.ch ] ; 3 uses
  %i.jj = sext i32 %.3439789 to i64
  %i.jk = getelementptr [8 x i8], ptr %i.cl, i64 %i.jj ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !49 ; 5 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 -1     ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !10
  %i.jo = icmp eq i8 %i.jn, 2
  br i1 %i.jo, label %bb.bf, label %bb.cg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.07.i.i.i = phi ptr [ %0, %bb.bf ], [ %i.jq, %bb.bg ] ; 2 uses
  %i.jp = getelementptr i8, ptr %.07.i.i.i, i64 944
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i, label %copy_salt_to_sipkey.exit, label %bb.bg, !llvm.loop !37

copy_salt_to_sipkey.exit:                         ; preds = %bb.bg
  %i.jr = getelementptr i8, ptr %.07.i.i.i, i64 968
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !147 ; 2 uses
  store i64 8317987319222330741, ptr %6, align 8, !tbaa !327
  %i.jt = xor i64 %i.js, 7237128888997146477
  store i64 %i.jt, ptr %i.ip, align 8, !tbaa !329
  store i64 7816392313619706465, ptr %i.iq, align 8, !tbaa !330
  %i.ju = xor i64 %i.js, 8387220255154660723
  store i64 %i.ju, ptr %i.ir, align 8, !tbaa !331
  store ptr %i.is, ptr %i.it, align 8, !tbaa !332
  store i64 0, ptr %i.iu, align 8, !tbaa !333
  store i8 0, ptr %i.jm, align 1, !tbaa !10
  %i.jv = load i64, ptr %i.iv, align 8, !tbaa !105
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %.thread664, label %bb.bh

bb.bh:                                            ; preds = %copy_salt_to_sipkey.exit
  %i.jx = call fastcc i64 @hash(ptr noundef readonly %0, ptr noundef nonnull %i.jl) ; 2 uses
  %i.jy = load i64, ptr %i.iv, align 8, !tbaa !105 ; 3 uses
  %i.jz = add i64 %i.jy, -1                       ; 2 uses
  %i.ka = and i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = load ptr, ptr %i.iw, align 8, !tbaa !62 ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !46 ; 2 uses
  %.not184.i580 = icmp eq ptr %i.kd, null
  br i1 %.not184.i580, label %.thread664, label %.lr.ph.i581

.lr.ph.i581:                                      ; preds = %bb.bh
  %i.ke = load i8, ptr %i.jl, align 1, !tbaa !10  ; 2 uses
  %i.kf = sub i64 0, %i.jy
  %i.kg = and i64 %i.jx, %i.kf
  %i.kh = lshr i64 %i.jz, 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bl, %.lr.ph.i581
  %i.ki = phi ptr [ %i.kd, %.lr.ph.i581 ], [ %i.le, %bb.bl ] ; 2 uses
  %.0125186.i582 = phi i8 [ 0, %.lr.ph.i581 ], [ %.1126.i586, %bb.bl ] ; 2 uses
  %.1133185.i583 = phi i64 [ %i.ka, %.lr.ph.i581 ], [ %.2134.i589, %bb.bl ] ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !160 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !10
  %i.kl = icmp eq i8 %i.ke, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i594, label %.loopexit.i584

.lr.ph.i.i594:                                    ; preds = %bb.bi, %bb.bj
  %i.km = phi i8 [ %i.kq, %bb.bj ], [ %i.ke, %bb.bi ]
  %.09.i.i595 = phi ptr [ %i.kp, %bb.bj ], [ %i.kj, %bb.bi ]
  %.058.i.i596 = phi ptr [ %i.ko, %bb.bj ], [ %i.jl, %bb.bi ]
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %lookup.exit597, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i594
  %i.ko = getelementptr i8, ptr %.058.i.i596, i64 1 ; 2 uses
  %i.kp = getelementptr i8, ptr %.09.i.i595, i64 1 ; 2 uses
  %i.kq = load i8, ptr %i.ko, align 1, !tbaa !10  ; 2 uses
  %i.kr = load i8, ptr %i.kp, align 1, !tbaa !10
  %i.ks = icmp eq i8 %i.kq, %i.kr
  br i1 %i.ks, label %.lr.ph.i.i594, label %.loopexit.i584, !llvm.loop !162

.loopexit.i584:                                   ; preds = %bb.bj, %bb.bi
  %.not166.i585 = icmp eq i8 %.0125186.i582, 0
  br i1 %.not166.i585, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.loopexit.i584
  %i.kt = load i8, ptr %i.ix, align 8, !tbaa !60
  %i.ku = zext i8 %i.kt to i64
  %i.kv = add nuw nsw i64 %i.ku, 4294967295
  %i.kw = and i64 %i.kv, 4294967295
  %i.kx = lshr i64 %i.kg, %i.kw
  %i.ky = and i64 %i.kx, %i.kh
  %i.kz = trunc i64 %i.ky to i8
  %i.la = or i8 %i.kz, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit.i584
  %.1126.i586 = phi i8 [ %.0125186.i582, %.loopexit.i584 ], [ %i.la, %bb.bk ] ; 2 uses
  %i.lb = zext i8 %.1126.i586 to i64              ; 2 uses
  %i.lc = icmp ult i64 %.1133185.i583, %i.lb
  %.2134.p.v.i587 = select i1 %i.lc, i64 %i.jy, i64 0
  %.2134.p.i588 = sub i64 %.1133185.i583, %i.lb
  %.2134.i589 = add i64 %.2134.p.v.i587, %.2134.p.i588 ; 2 uses
  %i.ld = getelementptr [8 x i8], ptr %i.kb, i64 %.2134.i589
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !46 ; 2 uses
  %.not.i590 = icmp eq ptr %i.le, null
  br i1 %.not.i590, label %.thread664, label %bb.bi, !llvm.loop !163

lookup.exit597:                                   ; preds = %.lr.ph.i.i594
  %i.lf = getelementptr i8, ptr %i.ki, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !158 ; 2 uses
  %.not524 = icmp eq ptr %i.lg, null
  br i1 %.not524, label %.thread664, label %bb.bm

bb.bm:                                            ; preds = %lookup.exit597
  %i.lh = getelementptr i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !340 ; 5 uses
  %.not525 = icmp eq ptr %i.li, null
  br i1 %.not525, label %.thread664, label %.preheader689

.preheader689:                                    ; preds = %bb.bm
  %i.lj = getelementptr i8, ptr %i.li, i64 40     ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !352
  %.not = icmp eq i32 %i.lk, 0
  br i1 %.not, label %._crit_edge774, label %.lr.ph773

.lr.ph773:                                        ; preds = %.preheader689
  %i.ll = getelementptr i8, ptr %i.li, i64 32
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph773, %bb.bp
  %indvars.iv860.a = phi i64 [ 0, %.lr.ph773 ], [ %indvars.iv.next861, %bb.bp ] ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !186
  %i.ln = getelementptr i8, ptr %i.lm, i64 %indvars.iv860.a
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !10
  %i.lp = load ptr, ptr %i.iy, align 8, !tbaa !175 ; 2 uses
  %i.lq = load ptr, ptr %i.iz, align 8, !tbaa !176
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ls = call fastcc zeroext i8 @poolGrow(ptr noundef %i.ja)
  %.not537 = icmp eq i8 %i.ls, 0
  br i1 %.not537, label %.thread664, label %._crit_edge863

._crit_edge863:                                   ; preds = %bb.bo
  %.pre = load ptr, ptr %i.iy, align 8, !tbaa !175
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge863, %bb.bn
  %i.lt = phi ptr [ %.pre, %._crit_edge863 ], [ %i.lp, %bb.bn ] ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 1
  store ptr %i.lu, ptr %i.iy, align 8, !tbaa !175
  store i8 %i.lo, ptr %i.lt, align 1, !tbaa !10
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860.a, 1 ; 2 uses
  %i.lv = load i32, ptr %i.lj, align 8, !tbaa !352 ; 2 uses
  %i.lw = zext i32 %i.lv to i64
  %i.lx = icmp samesign ult i64 %indvars.iv.next861, %i.lw
  br i1 %i.lx, label %bb.bn, label %._crit_edge774.loopexit, !llvm.loop !375

._crit_edge774.loopexit:                          ; preds = %bb.bp
  %i.ly = sext i32 %i.lv to i64
  br label %._crit_edge774

._crit_edge774:                                   ; preds = %._crit_edge774.loopexit, %.preheader689
  %.lcssa708 = phi i64 [ 0, %.preheader689 ], [ %i.ly, %._crit_edge774.loopexit ]
  %i.lz = getelementptr i8, ptr %i.li, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !186
end_hunk_0
