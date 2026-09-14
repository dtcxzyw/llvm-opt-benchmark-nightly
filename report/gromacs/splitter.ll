Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splitter?download=true
inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !27, !noalias !82 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !82
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.ml, i32 noundef -1, i32 noundef range(i32 1, 0) %.046.lcssa.i, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 265)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.mm = load ptr, ptr %i.lr, align 8, !tbaa !19, !noalias !82 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i71, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull %i.mm) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72: ; preds = %bb.cg, %bb.cf
  %i.mn = load ptr, ptr %5, align 8, !tbaa !24, !noalias !82 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ls
  br i1 %i.mo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72
  %i.mp = load i64, ptr %i.ls, align 8, !tbaa !25, !noalias !82
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  %i.mr = icmp sgt i32 %i.ml, -1
  br i1 %i.mr, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74
  %i.ms = zext nneg i32 %i.ml to i64
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ms ; 3 uses
  %i.mu = load i32, ptr %i.mj, align 4, !tbaa !17, !noalias !82
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !17
  %i.mw = call i32 @llvm.smin.i32(i32 %i.mu, i32 %i.mv)
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !34
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !17
  %i.mz = load i32, ptr %i.mj, align 4, !tbaa !17, !noalias !82
  %i.na = call i32 @llvm.smax.i32(i32 %i.my, i32 %i.mz)
  store i32 %i.na, ptr %i.mx, align 4, !tbaa !35
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cd
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn80.i = phi { ptr, i32 } [ %i.nc, %bb.cj ], [ %i.nb, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  br label %.body.i55

bb.cl:                                            ; preds = %bb.ch, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond284.not.i, label %._crit_edge.i57, label %bb.cd, !llvm.loop !49

._crit_edge.i57:                                  ; preds = %bb.cl, %.preheader186.i
  %i.nd = ptrtoint ptr %.sroa.31.2.i to i64
  %i.ne = ptrtoint ptr %.sroa.0118.4.i to i64     ; 2 uses
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = sdiv exact i64 %i.nf, 12
  invoke void @qsort(ptr noundef %.sroa.0118.4.i, i64 noundef %i.ng, i64 noundef 12, ptr noundef nonnull @_ZL7ms_compPKvS0_)
          to label %.preheader184.i.preheader unwind label %bb.bx

.preheader184.i.preheader:                        ; preds = %._crit_edge.i57
  %i.nh = add i32 %.046.lcssa.i, -2
  br label %.preheader184.i

.preheader184.i:                                  ; preds = %.preheader184.i.preheader, %._crit_edge232.i
  %.058235.i = phi i32 [ %spec.select.i58, %._crit_edge232.i ], [ 0, %.preheader184.i.preheader ] ; 8 uses
  %storemerge79228.i = add nsw i32 %.058235.i, 1  ; 2 uses
  %i.ni = icmp slt i32 %storemerge79228.i, %.046.lcssa.i
  br i1 %i.ni, label %.lr.ph231.preheader.i, label %._crit_edge232.i

.lr.ph231.preheader.i:                            ; preds = %.preheader184.i
  %i.nj = sext i32 %.058235.i to i64              ; 2 uses
  %i.nk = add nsw i64 %i.nj, 1                    ; 3 uses
  %i.nl = sub i32 %.058235.i, %.046.lcssa.i
  %i.nm = and i32 %i.nl, 1
  %lcmp.mod793.not.not = icmp eq i32 %i.nm, 0
  br i1 %lcmp.mod793.not.not, label %.lr.ph231.i.prol, label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol:                                 ; preds = %.lr.ph231.preheader.i
  %i.nn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.nk ; 3 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34 ; 2 uses
  %i.np = sext i32 %.058235.i to i64
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.np ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !35 ; 2 uses
  %.not77.i.prol = icmp sgt i32 %i.no, %i.ns
  %i.nt = trunc nsw i64 %i.nk to i32
  br i1 %.not77.i.prol, label %.lr.ph231.i.prol.loopexit.unr-lcssa, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph231.i.prol
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !17
  %i.nw = call i32 @llvm.smax.i32(i32 %i.ns, i32 %i.nv)
  store i32 %i.nw, ptr %i.nr, align 4, !tbaa !35
  %i.nx = load i32, ptr %i.nq, align 4, !tbaa !17
  %i.ny = call i32 @llvm.smin.i32(i32 %i.no, i32 %i.nx)
  store i32 %i.ny, ptr %i.nq, align 4, !tbaa !34
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i32 -1, ptr %i.nz, align 4, !tbaa !83
  br label %.lr.ph231.i.prol.loopexit.unr-lcssa

.lr.ph231.i.prol.loopexit.unr-lcssa:              ; preds = %bb.cm, %.lr.ph231.i.prol
  %.2.i69.prol = phi i32 [ %.058235.i, %bb.cm ], [ %i.nt, %.lr.ph231.i.prol ] ; 2 uses
  %indvars.iv.next286.i.prol = add nsw i64 %i.nj, 2
  br label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol.loopexit:                        ; preds = %.lr.ph231.i.prol.loopexit.unr-lcssa, %.lr.ph231.preheader.i
  %.2.i69.lcssa.unr = phi i32 [ poison, %.lr.ph231.preheader.i ], [ %.2.i69.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %indvars.iv285.i.unr = phi i64 [ %i.nk, %.lr.ph231.preheader.i ], [ %indvars.iv.next286.i.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %.1229.i.unr = phi i32 [ %.058235.i, %.lr.ph231.preheader.i ], [ %.2.i69.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %i.oa = icmp eq i32 %i.nh, %.058235.i
  br i1 %i.oa, label %._crit_edge232.i, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp
  %indvars.iv285.i = phi i64 [ %indvars.iv.next286.i.1, %bb.cp ], [ %indvars.iv285.i.unr, %.lr.ph231.i.prol.loopexit ] ; 4 uses
  %.1229.i = phi i32 [ %.2.i69.1, %bb.cp ], [ %.1229.i.unr, %.lr.ph231.i.prol.loopexit ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv285.i ; 3 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34 ; 2 uses
  %i.od = sext i32 %.1229.i to i64
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.od ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !35 ; 2 uses
  %.not77.i = icmp sgt i32 %i.oc, %i.og
  %i.oh = trunc nsw i64 %indvars.iv285.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph231.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !17
  %i.ok = call i32 @llvm.smax.i32(i32 %i.og, i32 %i.oj)
  store i32 %i.ok, ptr %i.of, align 4, !tbaa !35
  %i.ol = load i32, ptr %i.oe, align 4, !tbaa !17
  %i.om = call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.ol)
  store i32 %i.om, ptr %i.oe, align 4, !tbaa !34
  %i.on = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i32 -1, ptr %i.on, align 4, !tbaa !83
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cn, %.lr.ph231.i
  %.2.i69 = phi i32 [ %.1229.i, %bb.cn ], [ %i.oh, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next286.i ; 3 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !34 ; 2 uses
  %i.oq = sext i32 %.2.i69 to i64
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.oq ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.op, %i.ot
  %i.ou = trunc nsw i64 %indvars.iv.next286.i to i32
  br i1 %.not77.i.1, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph231.i.1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !17
  %i.ox = call i32 @llvm.smax.i32(i32 %i.ot, i32 %i.ow)
  store i32 %i.ox, ptr %i.os, align 4, !tbaa !35
  %i.oy = load i32, ptr %i.or, align 4, !tbaa !17
  %i.oz = call i32 @llvm.smin.i32(i32 %i.op, i32 %i.oy)
  store i32 %i.oz, ptr %i.or, align 4, !tbaa !34
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 -1, ptr %i.pa, align 4, !tbaa !83
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph231.i.1
  %.2.i69.1 = phi i32 [ %.2.i69, %bb.co ], [ %i.ou, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next286.i.1 = add nsw i64 %indvars.iv285.i, 2 ; 2 uses
  %lftr.wideiv.i70.1 = trunc i64 %indvars.iv.next286.i.1 to i32
  %exitcond288.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i70.1
  br i1 %exitcond288.not.i.1, label %._crit_edge232.i, label %.lr.ph231.i, !llvm.loop !50

._crit_edge232.i:                                 ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp, %.preheader184.i
  %.1.lcssa.i = phi i32 [ %.058235.i, %.preheader184.i ], [ %.2.i69.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i69.1, %bb.cp ]
  %storemerge79.lcssa.i = phi i32 [ %storemerge79228.i, %.preheader184.i ], [ %.046.lcssa.i, %bb.cp ], [ %.046.lcssa.i, %.lr.ph231.i.prol.loopexit ]
  %i.pb = icmp eq i32 %storemerge79.lcssa.i, %.046.lcssa.i
  %i.pc = zext i1 %i.pb to i32
  %spec.select.i58 = add nsw i32 %.1.lcssa.i, %i.pc ; 2 uses
  %i.pd = icmp slt i32 %spec.select.i58, %.046.lcssa.i
  br i1 %i.pd, label %.preheader184.i, label %.preheader182.i, !llvm.loop !51

.preheader182.i:                                  ; preds = %._crit_edge232.i, %.critedge.i
  %indvars.iv306.i = phi i32 [ %indvars.iv.next307.i, %.critedge.i ], [ -1, %._crit_edge232.i ] ; 2 uses
  %indvars.iv292.i = phi i32 [ %indvars.iv.next293.i, %.critedge.i ], [ 1, %._crit_edge232.i ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge232.i ] ; 6 uses
  %.067245.i = phi i32 [ %.168.lcssa.i, %.critedge.i ], [ %.046.lcssa.i, %._crit_edge232.i ] ; 5 uses
  %i.pe = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.0118.4.i, i64 %i.pe ; 2 uses
  %scevgep289.i = getelementptr i8, ptr %scevgep.i, i64 12
  %i.pf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvar.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = add nsw i32 %.067245.i, -1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = icmp slt i64 %indvar.i, %i.pi
  br i1 %i.pj, label %.lr.ph241.i, label %.preheader182..critedge_crit_edge.i

.preheader182..critedge_crit_edge.i:              ; preds = %.preheader182.i
  %.pre.i59 = add nuw nsw i64 %indvar.i, 1
  br label %.critedge.i

.lr.ph241.i:                                      ; preds = %.preheader182.i
  %i.pk = trunc i64 %indvar.i to i32
  %12 = add nuw nsw i64 %indvar.i, 1              ; 3 uses
  %i.pl = add i32 %.067245.i, %indvars.iv306.i
  %wide.trip.count308.i = zext i32 %i.pl to i64
  %.neg150 = add i32 %.067245.i, -2
  %13 = sext i32 %.067245.i to i64
  br label %bb.cq

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not146, label %._crit_edge250.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count317.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check677 = icmp ult i32 %2, 32
  br i1 %min.iters.check677, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pm = and i64 %wide.trip.count317.i, 28
  %n.vec = and i64 %wide.trip.count317.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 128
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 192
  %interleaved.vec = shufflevector <8 x i32> %vec.ind, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.pn, align 4, !tbaa !17, !noalias !82
  %interleaved.vec678.a = shufflevector <8 x i32> %step.add, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec678.a, ptr %i.pp, align 4, !tbaa !17, !noalias !82
  %interleaved.vec679 = shufflevector <8 x i32> %step.add.2, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec679, ptr %i.pr, align 4, !tbaa !17, !noalias !82
  %interleaved.vec680 = shufflevector <8 x i32> %step.add.3, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec680, ptr %i.pt, align 4, !tbaa !17, !noalias !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count317.i
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec681 = and i64 %wide.trip.count317.i, 2147483644 ; 3 uses
  %i.pv = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.pv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index682 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next685, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind683 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next686, %vec.epilog.vector.body ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index682
  %interleaved.vec684 = shufflevector <4 x i32> %vec.ind683, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec684, ptr %i.pw, align 4, !tbaa !17, !noalias !82
  %index.next685 = add nuw i64 %index682, 4       ; 2 uses
  %vec.ind.next686 = add <4 x i32> %vec.ind683, splat (i32 4)
  %i.px = icmp eq i64 %index.next685, %n.vec681
  br i1 %i.px, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n687 = icmp eq i64 %n.vec681, %wide.trip.count317.i
  br i1 %cmp.n687, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv314.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec681, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.loopexit181.i:                                   ; preds = %.lr.ph239.preheader.i, %.preheader180.i
  %indvars.iv.next302.i.a = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond309.not.i = icmp eq i64 %indvars.iv.next302.i.a, %wide.trip.count308.i
  %indvars.iv.next405 = add nsw i64 %indvars.iv404, -1
  br i1 %exitcond309.not.i, label %.critedge.i, label %bb.cq, !llvm.loop !54

bb.cq:                                            ; preds = %.loopexit181.i, %.lr.ph241.i
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %.loopexit181.i ], [ %13, %.lr.ph241.i ] ; 3 uses
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i.a, %.loopexit181.i ], [ 0, %.lr.ph241.i ] ; 2 uses
  %i.py = trunc i64 %indvars.iv301.i to i32
  %i.pz = add i32 %i.pk, %i.py
  %i.qa = sub i32 %.neg150, %i.pz
  %i.qb = zext i32 %i.qa to i64
  %i.qc = mul nuw nsw i64 %i.qb, 12
  %i.qd = add nuw nsw i64 %i.qc, 12
  %i.qe = load i32, ptr %i.pg, align 4, !tbaa !83
  %i.qf = icmp eq i32 %i.qe, -1
  br i1 %i.qf, label %.preheader180.i, label %.critedge.i.loopexit.split.loop.exit571

.preheader180.i:                                  ; preds = %bb.cq
  %i.qg = icmp slt i64 %12, %indvars.iv404
  br i1 %i.qg, label %.lr.ph239.preheader.i, label %.loopexit181.i

.lr.ph239.preheader.i:                            ; preds = %.preheader180.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep289.i, i64 %i.qd, i1 false)
  br label %.loopexit181.i

.critedge.i.loopexit.split.loop.exit571:          ; preds = %bb.cq
  %i.qh = trunc nsw i64 %indvars.iv404 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit181.i, %.critedge.i.loopexit.split.loop.exit571, %.preheader182..critedge_crit_edge.i
  %indvar.next.pre-phi.i = phi i64 [ %.pre.i59, %.preheader182..critedge_crit_edge.i ], [ %12, %.critedge.i.loopexit.split.loop.exit571 ], [ %12, %.loopexit181.i ] ; 2 uses
  %.168.lcssa.i = phi i32 [ %.067245.i, %.preheader182..critedge_crit_edge.i ], [ %i.qh, %.critedge.i.loopexit.split.loop.exit571 ], [ %indvars.iv292.i, %.loopexit181.i ] ; 4 uses
  %i.qi = sext i32 %.168.lcssa.i to i64
  %i.qj = icmp slt i64 %indvar.next.pre-phi.i, %i.qi
  %indvars.iv.next293.i = add nuw i32 %indvars.iv292.i, 1
  %indvars.iv.next307.i = add nsw i32 %indvars.iv306.i, -1
  br i1 %i.qj, label %.preheader182.i, label %.preheader.i, !llvm.loop !55

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %bb.ct unwind label %bb.cr     ; 3 uses

bb.cr:                                            ; preds = %._crit_edge250.i
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qm = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !82 ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i.i4.i.i.i, label %.body.i55, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !31, !alias.scope !82
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #21
  br label %.body.i55

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph249.i ], [ %indvars.iv314.i.ph, %.lr.ph249.i.preheader ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %indvars.iv314.i ; 2 uses
  %i.qt = trunc nuw nsw i64 %indvars.iv314.i to i32
  store i32 %i.qt, ptr %i.qs, align 4, !tbaa !81, !noalias !82
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 -1, ptr %i.qu, align 4, !tbaa !27, !noalias !82
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %wide.trip.count317.i
  br i1 %exitcond318.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !56

bb.ct:                                            ; preds = %._crit_edge250.i
  store ptr %i.qk, ptr %0, align 8, !tbaa !16, !alias.scope !82
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !31, !alias.scope !82
  store i32 0, ptr %i.qk, align 4, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qv, ptr %i.qx, align 8, !tbaa !15, !alias.scope !82
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qz = icmp sgt i32 %.168.lcssa.i, 0
  br i1 %i.qz, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %bb.dg

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %bb.ct
  %wide.trip.count325.i = zext nneg i32 %.168.lcssa.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

._crit_edge265.i:                                 ; preds = %bb.dd
  %.not.i.i.i90.i = icmp eq ptr %.sroa.0102.1.lcssa.i, null
  br i1 %.not.i.i.i90.i, label %bb.dg, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge265.i
  %i.ra = ptrtoint ptr %.sroa.16.1.lcssa.i to i64
  %i.rb = sub i64 %i.ra, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.1.lcssa.i, i64 noundef %i.rb) #21
  br label %bb.dg

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.dd, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i
  %indvars.iv322.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %indvars.iv.next323.i, %bb.dd ] ; 3 uses
  %.sroa.16.0263.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.16.1.lcssa.i, %bb.dd ] ; 2 uses
  %.sroa.10.0262.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.10.1.lcssa.i, %bb.dd ] ; 2 uses
  %.sroa.0102.0261.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.0102.1.lcssa.i, %bb.dd ] ; 4 uses
  %.not.i.i92.i = icmp eq ptr %.sroa.10.0262.i, %.sroa.0102.0261.i
  %spec.select171.i = select i1 %.not.i.i92.i, ptr %.sroa.10.0262.i, ptr %.sroa.0102.0261.i ; 2 uses
  %i.rc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv322.i ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !34 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 4 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !35
  %.not251.i = icmp sgt i32 %i.rd, %i.rf
  br i1 %.not251.i, label %._crit_edge257.i, label %.lr.ph256.preheader.i

.lr.ph256.preheader.i:                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.rg = sext i32 %i.rd to i64
  %i.rh = trunc nuw nsw i64 %indvars.iv322.i to i32
  br label %.lr.ph256.i

.lr.ph256.i:                                      ; preds = %bb.db, %.lr.ph256.preheader.i
  %indvars.iv319.i = phi i64 [ %i.rg, %.lr.ph256.preheader.i ], [ %indvars.iv.next320.i, %bb.db ] ; 5 uses
  %.sroa.16.1254.i = phi ptr [ %.sroa.16.0263.i, %.lr.ph256.preheader.i ], [ %.sroa.16.3.i, %bb.db ] ; 5 uses
  %.sroa.10.1253.i = phi ptr [ %spec.select171.i, %.lr.ph256.preheader.i ], [ %.sroa.10.3.i, %bb.db ] ; 3 uses
  %.sroa.0102.1252.i = phi ptr [ %.sroa.0102.0261.i, %.lr.ph256.preheader.i ], [ %.sroa.0102.3.i, %bb.db ] ; 7 uses
  %.not.i.i60 = icmp eq ptr %.sroa.10.1253.i, %.sroa.16.1254.i
  br i1 %.not.i.i60, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph256.i
  %i.ri = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.ri, ptr %.sroa.10.1253.i, align 4, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.cw:                                            ; preds = %.lr.ph256.i
  %i.rj = ptrtoint ptr %.sroa.16.1254.i to i64
  %i.rk = ptrtoint ptr %.sroa.0102.1252.i to i64
  %i.rl = sub i64 %i.rj, %i.rk                    ; 6 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775804
  br i1 %i.rm, label %bb.cx, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc94.i68 unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc94.i68:                                     ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cw
  %i.rn = ashr exact i64 %i.rl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 2305843009213693951)
  %i.rr = select i1 %i.rp, i64 2305843009213693951, i64 %i.rq ; 3 uses
  %.not.i.i.i93.i64 = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i93.i64)
  %i.rs = shl nuw nsw i64 %i.rr, 2
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #20
          to label %.noexc95.i unwind label %.loopexit.i65 ; 4 uses

.noexc95.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rl ; 2 uses
  %i.rv = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.rv, ptr %i.ru, align 4, !tbaa !17
  %i.rw = icmp sgt i64 %i.rl, 0
  br i1 %i.rw, label %bb.cy, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cy:                                            ; preds = %.noexc95.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rt, ptr align 4 %.sroa.0102.1252.i, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cy, %.noexc95.i
  %.not.i17.i.i.i67 = icmp eq ptr %.sroa.0102.1252.i, null
  br i1 %.not.i17.i.i.i67, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.1252.i, i64 noundef %i.rl) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cz, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rr
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.cv
  %.sroa.0102.3.i = phi ptr [ %i.rt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0102.1252.i, %bb.cv ] ; 3 uses
  %.pn172.i = phi ptr [ %i.ru, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.1253.i, %bb.cv ]
  %.sroa.16.3.i = phi ptr [ %i.rx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.16.1254.i, %bb.cv ] ; 3 uses
  %i.ry = getelementptr inbounds [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %indvars.iv319.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !27, !noalias !82
  %i.sb = icmp eq i32 %i.sa, -1
  br i1 %i.sb, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL9merge_sidiiiN3gmx8ArrayRefI5t_sidEEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 322) #19
          to label %.noexc96.i unwind label %bb.dc

.noexc96.i:                                       ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.sroa.10.3.i = getelementptr inbounds nuw i8, ptr %.pn172.i, i64 4 ; 2 uses
  store i32 %i.rh, ptr %i.rz, align 4, !tbaa !27, !noalias !82
  %indvars.iv.next320.i = add nsw i64 %indvars.iv319.i, 1
  %i.sc = load i32, ptr %i.re, align 4, !tbaa !35
  %i.sd = sext i32 %i.sc to i64
  %.not.not.i = icmp slt i64 %indvars.iv319.i, %i.sd
  br i1 %.not.not.i, label %.lr.ph256.i, label %._crit_edge257.i, !llvm.loop !57

.loopexit.i65:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

.loopexit.split-lp.loopexit.i:                    ; preds = %._crit_edge257.i
  %lpad.loopexit177.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.cx
  %lpad.loopexit.split-lp178.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

bb.dc:                                            ; preds = %bb.da
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

._crit_edge257.i:                                 ; preds = %bb.db, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %.sroa.0102.1.lcssa.i = phi ptr [ %.sroa.0102.0261.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.0102.3.i, %bb.db ] ; 7 uses
  %.sroa.10.1.lcssa.i = phi ptr [ %spec.select171.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.10.3.i, %bb.db ] ; 2 uses
  %.sroa.16.1.lcssa.i = phi ptr [ %.sroa.16.0263.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.16.3.i, %bb.db ] ; 3 uses
  %i.sf = ptrtoint ptr %.sroa.10.1.lcssa.i to i64
  %i.sg = ptrtoint ptr %.sroa.0102.1.lcssa.i to i64 ; 2 uses
  %i.sh = sub i64 %i.sf, %i.sg
end_hunk_0
