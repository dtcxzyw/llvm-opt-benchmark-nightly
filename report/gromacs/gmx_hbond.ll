Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hbond?download=true
inline.NumInlined: 2166
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z9gmx_hbondiPPc:bb.a
  %indvars.iv518.i = phi i64 [ %indvars.iv.next519.i, %.loopexit.i725 ], [ 0, %.preheader422.i ] ; 2 uses
  %.1187456.i = phi i32 [ %.3.i, %.loopexit.i725 ], [ %.0186463.i, %.preheader422.i ] ; 5 uses
  %.1193455.i = phi double [ %.4.i, %.loopexit.i725 ], [ %.0192462.i, %.preheader422.i ] ; 5 uses
  %i.ddx = load ptr, ptr %i.dcw, align 8, !tbaa !57
  %i.ddy = getelementptr inbounds nuw [8 x i8], ptr %i.ddx, i64 %indvars.iv521.i
  %i.ddz = load ptr, ptr %i.ddy, align 8, !tbaa !158
  %i.dea = getelementptr inbounds nuw [8 x i8], ptr %i.ddz, i64 %indvars.iv518.i
  %i.deb = load ptr, ptr %i.dea, align 8, !tbaa !160 ; 10 uses
  %.not249.i = icmp eq ptr %i.deb, null
  br i1 %.not249.i, label %.loopexit.i725, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph457.i
  br i1 %.not1054, label %.preheader420.i, label %bb.op

.preheader420.i:                                  ; preds = %bb.oo
  %i.dec = load i32, ptr %i.cvs, align 8, !tbaa !53 ; 4 uses
  %i.ded = icmp sgt i32 %i.dec, 0
  br i1 %i.ded, label %.lr.ph.i726, label %.loopexit.i725

.lr.ph.i726:                                      ; preds = %.preheader420.i
  %i.dee = getelementptr inbounds nuw i8, ptr %i.deb, i64 40 ; 3 uses
  %i.def = getelementptr inbounds nuw i8, ptr %i.deb, i64 32 ; 3 uses
  %wide.trip.count.i727 = zext nneg i32 %i.dec to i64 ; 2 uses
  %xtraiter2516 = and i64 %wide.trip.count.i727, 1
  %i.deg = icmp eq i32 %i.dec, 1
  br i1 %i.deg, label %.epil.preheader, label %.lr.ph.i726.new

.lr.ph.i726.new:                                  ; preds = %.lr.ph.i726
  %unroll_iter = and i64 %wide.trip.count.i727, 2147483646
  br label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.deh = load i32, ptr %i.deb, align 8, !tbaa !56
  %i.dei = and i32 %i.deh, 2
  %.not251.i = icmp eq i32 %i.dei, 0
  br i1 %.not251.i, label %.loopexit.i725, label %.loopexit421.thread603.i

.loopexit421.thread603.i:                         ; preds = %bb.op
  %i.dej = getelementptr inbounds nuw i8, ptr %i.deb, i64 32
  %i.dek = load ptr, ptr %i.dej, align 8, !tbaa !311
  %i.del = load ptr, ptr %i.dek, align 8, !tbaa !134
  store ptr %i.del, ptr %i.cvv, align 8, !tbaa !134
  %i.dem = getelementptr inbounds nuw i8, ptr %i.deb, i64 40
  %i.den = load ptr, ptr %i.dem, align 8, !tbaa !316
  %i.deo = load ptr, ptr %i.den, align 8, !tbaa !134
  store ptr %i.deo, ptr %i.cvy, align 8, !tbaa !134
  br label %.lr.ph451.preheader.i

bb.oq:                                            ; preds = %bb.ou, %.lr.ph.i726.new
  %indvars.iv.i728 = phi i64 [ 0, %.lr.ph.i726.new ], [ %indvars.iv.next.i730.1, %bb.ou ] ; 5 uses
  %.0436.i = phi i32 [ 0, %.lr.ph.i726.new ], [ %.1.i729.1, %bb.ou ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i726.new ], [ %niter.next.1, %bb.ou ]
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.deb, i64 %indvars.iv.i728
  %i.deq = load i32, ptr %i.dep, align 4, !tbaa !56
  %i.der = and i32 %i.deq, 2
  %.not250.i = icmp eq i32 %i.der, 0
  br i1 %.not250.i, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.des = load ptr, ptr %i.dee, align 8, !tbaa !316
  %i.det = getelementptr inbounds nuw [8 x i8], ptr %i.des, i64 %indvars.iv.i728
  %i.deu = load ptr, ptr %i.det, align 8, !tbaa !134
  %i.dev = sext i32 %.0436.i to i64               ; 2 uses
  %i.dew = getelementptr inbounds [8 x i8], ptr %i.cvy, i64 %i.dev
  store ptr %i.deu, ptr %i.dew, align 8, !tbaa !134
  %i.dex = load ptr, ptr %i.def, align 8, !tbaa !311
  %i.dey = getelementptr inbounds nuw [8 x i8], ptr %i.dex, i64 %indvars.iv.i728
  %i.dez = load ptr, ptr %i.dey, align 8, !tbaa !134
  %i.dfa = getelementptr inbounds [8 x i8], ptr %i.cvv, i64 %i.dev
  store ptr %i.dez, ptr %i.dfa, align 8, !tbaa !134
  %i.dfb = add nsw i32 %.0436.i, 1
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %.1.i729 = phi i32 [ %i.dfb, %bb.or ], [ %.0436.i, %bb.oq ] ; 3 uses
  %indvars.iv.next.i730 = or disjoint i64 %indvars.iv.i728, 1 ; 3 uses
  %i.dfc = getelementptr inbounds nuw [4 x i8], ptr %i.deb, i64 %indvars.iv.next.i730
  %i.dfd = load i32, ptr %i.dfc, align 4, !tbaa !56
  %i.dfe = and i32 %i.dfd, 2
  %.not250.i.1 = icmp eq i32 %i.dfe, 0
  br i1 %.not250.i.1, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.dff = load ptr, ptr %i.dee, align 8, !tbaa !316
  %i.dfg = getelementptr inbounds nuw [8 x i8], ptr %i.dff, i64 %indvars.iv.next.i730
  %i.dfh = load ptr, ptr %i.dfg, align 8, !tbaa !134
  %i.dfi = sext i32 %.1.i729 to i64               ; 2 uses
  %i.dfj = getelementptr inbounds [8 x i8], ptr %i.cvy, i64 %i.dfi
  store ptr %i.dfh, ptr %i.dfj, align 8, !tbaa !134
  %i.dfk = load ptr, ptr %i.def, align 8, !tbaa !311
  %i.dfl = getelementptr inbounds nuw [8 x i8], ptr %i.dfk, i64 %indvars.iv.next.i730
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !134
  %i.dfn = getelementptr inbounds [8 x i8], ptr %i.cvv, i64 %i.dfi
  store ptr %i.dfm, ptr %i.dfn, align 8, !tbaa !134
  %i.dfo = add nsw i32 %.1.i729, 1
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %.1.i729.1 = phi i32 [ %i.dfo, %bb.ot ], [ %.1.i729, %bb.os ] ; 3 uses
  %indvars.iv.next.i730.1 = add nuw nsw i64 %indvars.iv.i728, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit421.i.unr-lcssa, label %bb.oq, !llvm.loop !361

.loopexit421.i.unr-lcssa:                         ; preds = %bb.ou
  %lcmp.mod2517.not = icmp eq i64 %xtraiter2516, 0
  br i1 %lcmp.mod2517.not, label %.loopexit421.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit421.i.unr-lcssa, %.lr.ph.i726
  %indvars.iv.i728.epil.init = phi i64 [ 0, %.lr.ph.i726 ], [ %indvars.iv.next.i730.1, %.loopexit421.i.unr-lcssa ] ; 3 uses
  %.0436.i.epil.init = phi i32 [ 0, %.lr.ph.i726 ], [ %.1.i729.1, %.loopexit421.i.unr-lcssa ] ; 3 uses
  %lcmp.mod2519 = trunc i32 %i.dec to i1
  call void @llvm.assume(i1 %lcmp.mod2519)
  %i.dfp = getelementptr inbounds nuw [4 x i8], ptr %i.deb, i64 %indvars.iv.i728.epil.init
  %i.dfq = load i32, ptr %i.dfp, align 4, !tbaa !56
  %i.dfr = and i32 %i.dfq, 2
  %.not250.i.epil = icmp eq i32 %i.dfr, 0
  br i1 %.not250.i.epil, label %.loopexit421.i, label %bb.ov

bb.ov:                                            ; preds = %.epil.preheader
  %i.dfs = load ptr, ptr %i.dee, align 8, !tbaa !316
  %i.dft = getelementptr inbounds nuw [8 x i8], ptr %i.dfs, i64 %indvars.iv.i728.epil.init
  %i.dfu = load ptr, ptr %i.dft, align 8, !tbaa !134
  %i.dfv = sext i32 %.0436.i.epil.init to i64     ; 2 uses
  %i.dfw = getelementptr inbounds [8 x i8], ptr %i.cvy, i64 %i.dfv
  store ptr %i.dfu, ptr %i.dfw, align 8, !tbaa !134
  %i.dfx = load ptr, ptr %i.def, align 8, !tbaa !311
  %i.dfy = getelementptr inbounds nuw [8 x i8], ptr %i.dfx, i64 %indvars.iv.i728.epil.init
  %i.dfz = load ptr, ptr %i.dfy, align 8, !tbaa !134
  %i.dga = getelementptr inbounds [8 x i8], ptr %i.cvv, i64 %i.dfv
  store ptr %i.dfz, ptr %i.dga, align 8, !tbaa !134
  %i.dgb = add nsw i32 %.0436.i.epil.init, 1
  br label %.loopexit421.i

.loopexit421.i:                                   ; preds = %.epil.preheader, %bb.ov, %.loopexit421.i.unr-lcssa
  %.1.i729.lcssa = phi i32 [ %.1.i729.1, %.loopexit421.i.unr-lcssa ], [ %i.dgb, %bb.ov ], [ %.0436.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.dgc = icmp sgt i32 %.1.i729.lcssa, 0
  br i1 %i.dgc, label %.lr.ph451.preheader.i, label %.loopexit.i725

.lr.ph451.preheader.i:                            ; preds = %.loopexit421.i, %.loopexit421.thread603.i
  %.2605.i = phi i32 [ 1, %.loopexit421.thread603.i ], [ %.1.i729.lcssa, %.loopexit421.i ]
  %i.dgd = getelementptr inbounds nuw i8, ptr %i.deb, i64 20
  %i.dge = load i32, ptr %i.dgd, align 4, !tbaa !310
  %i.dgf = sext i32 %i.dge to i64
  %wide.trip.count516.i = zext nneg i32 %.2605.i to i64
  br label %.lr.ph451.i

.lr.ph451.i:                                      ; preds = %._crit_edge446.i, %.lr.ph451.preheader.i
  %indvars.iv513.i = phi i64 [ 0, %.lr.ph451.preheader.i ], [ %indvars.iv.next514.i, %._crit_edge446.i ] ; 3 uses
  %.2188449.i = phi i32 [ %.1187456.i, %.lr.ph451.preheader.i ], [ %i.dgh, %._crit_edge446.i ]
  %.2194447.i = phi double [ %.1193455.i, %.lr.ph451.preheader.i ], [ %.3195.lcssa.i, %._crit_edge446.i ] ; 2 uses
  %i.dgg = load i32, ptr %.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !56 ; 2 uses
  %i.dgh = add nsw i32 %.2188449.i, 1             ; 5 uses
  %i.dgi = srem i32 %i.dgh, 10
  %i.dgj = icmp eq i32 %i.dgi, 0
  %i.dgk = icmp eq i32 %i.dgh, %i.dgg
  %or.cond.i732 = select i1 %i.dgj, i1 true, i1 %i.dgk
  br i1 %or.cond.i732, label %bb.ow, label %bb.oy

bb.ow:                                            ; preds = %.lr.ph451.i
  %i.dgl = load ptr, ptr @stderr, align 8, !tbaa !111
  %i.dgm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dgl, ptr noundef nonnull @.str.316, i32 noundef %i.dgh, i32 noundef %i.dgg) #35 ; 0 uses
  %i.dgn = load ptr, ptr @stderr, align 8, !tbaa !111
  %i.dgo = call i32 @fflush(ptr noundef %i.dgn)   ; 0 uses
  br label %bb.oy

bb.ox:                                            ; preds = %._crit_edge443.i, %._crit_edge.i733
  %i.dgp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.oy:                                            ; preds = %bb.ow, %.lr.ph451.i
  br i1 %i.dcx, label %.lr.ph439.i, label %._crit_edge.i733

.lr.ph439.i:                                      ; preds = %bb.oy
  %i.dgq = getelementptr inbounds nuw [8 x i8], ptr %i.cvv, i64 %indvars.iv513.i
  %i.dgr = getelementptr inbounds nuw [8 x i8], ptr %i.cvy, i64 %indvars.iv513.i
  %i.dgs = load ptr, ptr %i.g, align 8, !tbaa !299
  br label %bb.oz

bb.oz:                                            ; preds = %bb.pb, %.lr.ph439.i
  %indvars.iv497.i = phi i64 [ 0, %.lr.ph439.i ], [ %indvars.iv.next498.i, %bb.pb ] ; 7 uses
  %.3195438.i = phi double [ %.2194447.i, %.lr.ph439.i ], [ %i.dho, %bb.pb ]
  %.not255.i = icmp sgt i64 %indvars.iv497.i, %i.dgf
  br i1 %.not255.i, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.dgt = load ptr, ptr %i.dgq, align 8, !tbaa !134
  %i.dgu = trunc nuw nsw i64 %indvars.iv497.i to i32
  %i.dgv = lshr i64 %indvars.iv497.i, 5
  %i.dgw = and i64 %i.dgv, 134217727              ; 2 uses
  %i.dgx = getelementptr inbounds nuw [4 x i8], ptr %i.dgt, i64 %i.dgw
  %i.dgy = load i32, ptr %i.dgx, align 4, !tbaa !56
  %i.dgz = and i32 %i.dgu, 31                     ; 2 uses
  %i.dha = lshr i32 %i.dgy, %i.dgz
  %i.dhb = and i32 %i.dha, 1
  %i.dhc = load ptr, ptr %i.dgr, align 8, !tbaa !134
  %i.dhd = getelementptr inbounds nuw [4 x i8], ptr %i.dhc, i64 %i.dgw
  %i.dhe = load i32, ptr %i.dhd, align 4, !tbaa !56
  %i.dhf = lshr i32 %i.dhe, %i.dgz
  %87 = and i32 %i.dhf, 1
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %.0217.i = phi i32 [ %i.dhb, %bb.pa ], [ 0, %bb.oz ] ; 3 uses
  %.0216.i = phi i32 [ %87, %bb.pa ], [ 0, %bb.oz ]
  %i.dhg = uitofp nneg i32 %.0217.i to float
  %i.dhh = getelementptr inbounds nuw [4 x i8], ptr %i.dgs, i64 %indvars.iv497.i ; 2 uses
  store float %i.dhg, ptr %i.dhh, align 4, !tbaa !63
  %i.dhi = xor i32 %.0217.i, 1
  %i.dhj = select i1 %or.cond3.i722, i32 1, i32 %.0216.i
  %.sink.in.i = mul nuw nsw i32 %i.dhj, %i.dhi
  %.sink.i = uitofp nneg i32 %.sink.in.i to float
  %i.dhk = getelementptr inbounds nuw [4 x i8], ptr %i.dcj, i64 %indvars.iv497.i
  store float %.sink.i, ptr %i.dhk, align 4, !tbaa !63
  %i.dhl = load float, ptr %i.dhh, align 4, !tbaa !63
  %i.dhm = getelementptr inbounds nuw [4 x i8], ptr %i.dck, i64 %indvars.iv497.i
  store float %i.dhl, ptr %i.dhm, align 4, !tbaa !63
  %i.dhn = uitofp nneg i32 %.0217.i to double
  %i.dho = fadd double %.3195438.i, %i.dhn        ; 2 uses
  %indvars.iv.next498.i = add nuw nsw i64 %indvars.iv497.i, 1 ; 2 uses
  %exitcond501.not.i = icmp eq i64 %indvars.iv.next498.i, %wide.trip.count500.i
  br i1 %exitcond501.not.i, label %._crit_edge.i733, label %bb.oz, !llvm.loop !362

._crit_edge.i733:                                 ; preds = %bb.pb, %bb.oy
  %.3195.lcssa.i = phi double [ %.2194447.i, %bb.oy ], [ %i.dho, %bb.pb ] ; 2 uses
  %i.dhp = load ptr, ptr %i.cus, align 8, !tbaa !59 ; 2 uses
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dhp, i64 4
  %i.dhr = load float, ptr %i.dhq, align 4, !tbaa !63
  %i.dhs = load float, ptr %i.dhp, align 4, !tbaa !63
  %i.dht = fsub float %i.dhr, %i.dhs
  invoke void @_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi(ptr noundef null, ptr noundef %i.ctt, ptr noundef null, i32 noundef %i.cva, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %i.g, float noundef %i.dht, i64 noundef 1, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef -1.000000e+00, i32 noundef 0)
          to label %.preheader419.i unwind label %bb.ox

.preheader419.i:                                  ; preds = %._crit_edge.i733
  br i1 %i.dcy, label %.lr.ph442.preheader.i, label %._crit_edge443.i

.lr.ph442.preheader.i:                            ; preds = %.preheader419.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ddf, i1 false), !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep503.i, i8 0, i64 %i.ddf, i1 false), !tbaa !63
  br label %._crit_edge443.i

._crit_edge443.i:                                 ; preds = %.lr.ph442.preheader.i, %.preheader419.i
  invoke void @_Z10cross_corriPfS_S_(i32 noundef %.0215.i, ptr noundef %i.dck, ptr noundef %i.dcj, ptr noundef %i.dcm)
          to label %.preheader418.i unwind label %bb.ox

.preheader418.i:                                  ; preds = %._crit_edge443.i
  br i1 %i.dcz, label %iter.check2179, label %._crit_edge446.i

iter.check2179:                                   ; preds = %.preheader418.i
  %i.dhu = load ptr, ptr %i.g, align 8, !tbaa !299 ; 9 uses
  br i1 %min.iters.check2160, label %vec.epilog.scalar.ph2180.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check2179
  %scevgep2143 = getelementptr i8, ptr %i.dhu, i64 %i.ddg
  %i.dhv = insertelement <4 x ptr> %i.ddn, ptr %i.dhu, i64 0 ; 2 uses
  %i.dhw = shufflevector <4 x ptr> %i.dhv, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dhx = icmp ult <4 x ptr> %i.dhw, %i.ddk
  %i.dhy = shufflevector <4 x ptr> %i.dhv, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dhz = insertelement <4 x ptr> %i.dhy, ptr %i.dcm, i64 1
  %i.dia = shufflevector <4 x ptr> %i.dhz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dib = insertelement <4 x ptr> %i.ddl, ptr %scevgep2143, i64 0
  %i.dic = shufflevector <4 x ptr> %i.dib, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.did = icmp ult <4 x ptr> %i.dia, %i.dic
  %i.die = and <4 x i1> %i.dhx, %i.did
  %i.dif = bitcast <4 x i1> %i.die to i4
  %i.dig = icmp ne i4 %i.dif, 0
  %op.rdx = or i1 %i.dig, %found.conflict
  br i1 %op.rdx, label %vec.epilog.scalar.ph2180.preheader, label %vector.main.loop.iter.check2161

vector.main.loop.iter.check2161:                  ; preds = %vector.memcheck
  br i1 %min.iters.check2162, label %vec.epilog.ph2183, label %vector.body2165

vector.body2165:                                  ; preds = %vector.main.loop.iter.check2161, %vector.body2165
  %index2166 = phi i64 [ %index.next2175, %vector.body2165 ], [ 0, %vector.main.loop.iter.check2161 ] ; 5 uses
  %i.dih = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %index2166 ; 2 uses
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dih, i64 32
  %wide.load2167 = load <8 x float>, ptr %i.dih, align 4, !tbaa !63, !alias.scope !363
  %wide.load2168 = load <8 x float>, ptr %i.dii, align 4, !tbaa !63, !alias.scope !363
  %i.dij = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %index2166 ; 3 uses
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dij, i64 32 ; 2 uses
  %wide.load2169 = load <8 x float>, ptr %i.dij, align 4, !tbaa !63, !alias.scope !366, !noalias !368
  %wide.load2170 = load <8 x float>, ptr %i.dik, align 4, !tbaa !63, !alias.scope !366, !noalias !368
  %i.dil = fadd <8 x float> %wide.load2167, %wide.load2169
  %i.dim = fadd <8 x float> %wide.load2168, %wide.load2170
  store <8 x float> %i.dil, ptr %i.dij, align 4, !tbaa !63, !alias.scope !366, !noalias !368
  store <8 x float> %i.dim, ptr %i.dik, align 4, !tbaa !63, !alias.scope !366, !noalias !368
  %i.din = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %index2166 ; 2 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %i.din, i64 32
  %wide.load2171 = load <8 x float>, ptr %i.din, align 4, !tbaa !63, !alias.scope !371
  %wide.load2172 = load <8 x float>, ptr %i.dio, align 4, !tbaa !63, !alias.scope !371
  %i.dip = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %index2166 ; 3 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 32 ; 2 uses
  %wide.load2173 = load <8 x float>, ptr %i.dip, align 4, !tbaa !63, !alias.scope !372, !noalias !373
  %wide.load2174 = load <8 x float>, ptr %i.diq, align 4, !tbaa !63, !alias.scope !372, !noalias !373
  %i.dir = fadd <8 x float> %wide.load2171, %wide.load2173
  %i.dis = fadd <8 x float> %wide.load2172, %wide.load2174
  store <8 x float> %i.dir, ptr %i.dip, align 4, !tbaa !63, !alias.scope !372, !noalias !373
  store <8 x float> %i.dis, ptr %i.diq, align 4, !tbaa !63, !alias.scope !372, !noalias !373
  %index.next2175 = add nuw i64 %index2166, 16    ; 2 uses
  %i.dit = icmp eq i64 %index.next2175, %n.vec2164
  br i1 %i.dit, label %middle.block2176, label %vector.body2165, !llvm.loop !374

middle.block2176:                                 ; preds = %vector.body2165
  br i1 %cmp.n2177, label %._crit_edge446.i, label %vec.epilog.iter.check2181

vec.epilog.iter.check2181:                        ; preds = %middle.block2176
  br i1 %min.epilog.iters.check2182, label %vec.epilog.scalar.ph2180.preheader, label %vec.epilog.ph2183, !prof !96

vec.epilog.ph2183:                                ; preds = %vector.main.loop.iter.check2161, %vec.epilog.iter.check2181
  %vec.epilog.resume.val2178 = phi i64 [ %n.vec2164, %vec.epilog.iter.check2181 ], [ 0, %vector.main.loop.iter.check2161 ]
  br label %vec.epilog.vector.body2185

vec.epilog.vector.body2185:                       ; preds = %vec.epilog.vector.body2185, %vec.epilog.ph2183
  %index2186 = phi i64 [ %vec.epilog.resume.val2178, %vec.epilog.ph2183 ], [ %index.next2191, %vec.epilog.vector.body2185 ] ; 5 uses
  %i.diu = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %index2186
  %wide.load2187 = load <4 x float>, ptr %i.diu, align 4, !tbaa !63, !alias.scope !363
  %i.div = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %index2186 ; 2 uses
  %wide.load2188 = load <4 x float>, ptr %i.div, align 4, !tbaa !63, !alias.scope !366, !noalias !368
  %i.diw = fadd <4 x float> %wide.load2187, %wide.load2188
  store <4 x float> %i.diw, ptr %i.div, align 4, !tbaa !63, !alias.scope !366, !noalias !368
  %i.dix = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %index2186
  %wide.load2189 = load <4 x float>, ptr %i.dix, align 4, !tbaa !63, !alias.scope !371
  %i.diy = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %index2186 ; 2 uses
  %wide.load2190 = load <4 x float>, ptr %i.diy, align 4, !tbaa !63, !alias.scope !372, !noalias !373
  %i.diz = fadd <4 x float> %wide.load2189, %wide.load2190
  store <4 x float> %i.diz, ptr %i.diy, align 4, !tbaa !63, !alias.scope !372, !noalias !373
  %index.next2191 = add nuw i64 %index2186, 4     ; 2 uses
  %i.dja = icmp eq i64 %index.next2191, %n.vec2184
  br i1 %i.dja, label %vec.epilog.middle.block2192, label %vec.epilog.vector.body2185, !llvm.loop !375

vec.epilog.middle.block2192:                      ; preds = %vec.epilog.vector.body2185
  br i1 %cmp.n2193, label %._crit_edge446.i, label %vec.epilog.scalar.ph2180.preheader

vec.epilog.scalar.ph2180.preheader:               ; preds = %vector.memcheck, %iter.check2179, %vec.epilog.iter.check2181, %vec.epilog.middle.block2192
  %indvars.iv508.i.ph = phi i64 [ 0, %iter.check2179 ], [ 0, %vector.memcheck ], [ %n.vec2164, %vec.epilog.iter.check2181 ], [ %n.vec2184, %vec.epilog.middle.block2192 ] ; 3 uses
  br i1 %lcmp.mod2521.not, label %vec.epilog.scalar.ph2180.prol.loopexit, label %vec.epilog.scalar.ph2180.prol

vec.epilog.scalar.ph2180.prol:                    ; preds = %vec.epilog.scalar.ph2180.preheader, %vec.epilog.scalar.ph2180.prol
  %indvars.iv508.i.prol = phi i64 [ %indvars.iv.next509.i.prol, %vec.epilog.scalar.ph2180.prol ], [ %indvars.iv508.i.ph, %vec.epilog.scalar.ph2180.preheader ] ; 5 uses
  %prol.iter2522 = phi i64 [ %prol.iter2522.next, %vec.epilog.scalar.ph2180.prol ], [ 0, %vec.epilog.scalar.ph2180.preheader ]
  %i.djb = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv508.i.prol
  %i.djc = load float, ptr %i.djb, align 4, !tbaa !63
  %i.djd = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %indvars.iv508.i.prol ; 2 uses
  %i.dje = load float, ptr %i.djd, align 4, !tbaa !63
  %i.djf = fadd float %i.djc, %i.dje
  store float %i.djf, ptr %i.djd, align 4, !tbaa !63
  %i.djg = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv508.i.prol
  %i.djh = load float, ptr %i.djg, align 4, !tbaa !63
  %i.dji = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %indvars.iv508.i.prol ; 2 uses
  %i.djj = load float, ptr %i.dji, align 4, !tbaa !63
  %i.djk = fadd float %i.djh, %i.djj
  store float %i.djk, ptr %i.dji, align 4, !tbaa !63
  %indvars.iv.next509.i.prol = add nuw nsw i64 %indvars.iv508.i.prol, 1 ; 2 uses
  %prol.iter2522.next = add i64 %prol.iter2522, 1 ; 2 uses
  %prol.iter2522.cmp.not = icmp eq i64 %prol.iter2522.next, %xtraiter2520
  br i1 %prol.iter2522.cmp.not, label %vec.epilog.scalar.ph2180.prol.loopexit, label %vec.epilog.scalar.ph2180.prol, !llvm.loop !376

vec.epilog.scalar.ph2180.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2180.prol, %vec.epilog.scalar.ph2180.preheader
  %indvars.iv508.i.unr = phi i64 [ %indvars.iv508.i.ph, %vec.epilog.scalar.ph2180.preheader ], [ %indvars.iv.next509.i.prol, %vec.epilog.scalar.ph2180.prol ]
  %i.djl = sub nsw i64 %indvars.iv508.i.ph, %wide.trip.count511.i
  %i.djm = icmp ugt i64 %i.djl, -4
  br i1 %i.djm, label %._crit_edge446.i, label %vec.epilog.scalar.ph2180

vec.epilog.scalar.ph2180:                         ; preds = %vec.epilog.scalar.ph2180.prol.loopexit, %vec.epilog.scalar.ph2180
  %indvars.iv508.i = phi i64 [ %indvars.iv.next509.i.3, %vec.epilog.scalar.ph2180 ], [ %indvars.iv508.i.unr, %vec.epilog.scalar.ph2180.prol.loopexit ] ; 8 uses
  %i.djn = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv508.i
  %i.djo = load float, ptr %i.djn, align 4, !tbaa !63
  %i.djp = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %indvars.iv508.i ; 2 uses
  %i.djq = load float, ptr %i.djp, align 4, !tbaa !63
  %i.djr = fadd float %i.djo, %i.djq
  store float %i.djr, ptr %i.djp, align 4, !tbaa !63
  %i.djs = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv508.i
  %i.djt = load float, ptr %i.djs, align 4, !tbaa !63
  %i.dju = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %indvars.iv508.i ; 2 uses
  %i.djv = load float, ptr %i.dju, align 4, !tbaa !63
  %i.djw = fadd float %i.djt, %i.djv
  store float %i.djw, ptr %i.dju, align 4, !tbaa !63
  %indvars.iv.next509.i = add nuw nsw i64 %indvars.iv508.i, 1 ; 4 uses
  %i.djx = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv.next509.i
  %i.djy = load float, ptr %i.djx, align 4, !tbaa !63
  %i.djz = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %indvars.iv.next509.i ; 2 uses
  %i.dka = load float, ptr %i.djz, align 4, !tbaa !63
  %i.dkb = fadd float %i.djy, %i.dka
  store float %i.dkb, ptr %i.djz, align 4, !tbaa !63
  %i.dkc = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv.next509.i
  %i.dkd = load float, ptr %i.dkc, align 4, !tbaa !63
  %i.dke = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %indvars.iv.next509.i ; 2 uses
  %i.dkf = load float, ptr %i.dke, align 4, !tbaa !63
  %i.dkg = fadd float %i.dkd, %i.dkf
  store float %i.dkg, ptr %i.dke, align 4, !tbaa !63
  %indvars.iv.next509.i.1 = add nuw nsw i64 %indvars.iv508.i, 2 ; 4 uses
  %i.dkh = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv.next509.i.1
  %i.dki = load float, ptr %i.dkh, align 4, !tbaa !63
  %i.dkj = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %indvars.iv.next509.i.1 ; 2 uses
  %i.dkk = load float, ptr %i.dkj, align 4, !tbaa !63
  %i.dkl = fadd float %i.dki, %i.dkk
  store float %i.dkl, ptr %i.dkj, align 4, !tbaa !63
  %i.dkm = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv.next509.i.1
  %i.dkn = load float, ptr %i.dkm, align 4, !tbaa !63
  %i.dko = getelementptr inbounds nuw [4 x i8], ptr %i.dcl, i64 %indvars.iv.next509.i.1 ; 2 uses
  %i.dkp = load float, ptr %i.dko, align 4, !tbaa !63
  %i.dkq = fadd float %i.dkn, %i.dkp
  store float %i.dkq, ptr %i.dko, align 4, !tbaa !63
  %indvars.iv.next509.i.2 = add nuw nsw i64 %indvars.iv508.i, 3 ; 4 uses
  %i.dkr = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv.next509.i.2
  %i.dks = load float, ptr %i.dkr, align 4, !tbaa !63
  %i.dkt = getelementptr inbounds nuw [4 x i8], ptr %i.dci, i64 %indvars.iv.next509.i.2 ; 2 uses
  %i.dku = load float, ptr %i.dkt, align 4, !tbaa !63
  %i.dkv = fadd float %i.dks, %i.dku
  store float %i.dkv, ptr %i.dkt, align 4, !tbaa !63
  %i.dkw = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv.next509.i.2
end_hunk_0
