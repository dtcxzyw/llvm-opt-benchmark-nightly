Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/nest_test?download=true
inline.NumInlined: 1589
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost9container4nestIivvE26priv_compact_with_trackingEPPiRm:bb.a
  %i.av = or i64 %i.au, %i.ap
  %i.aw = shl nuw i64 1, %i.aq
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.av, %i.ax                    ; 4 uses
  %i.az = xor i64 %i.ay, -1
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true) ; 2 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = xor i32 %i.bd, 63                       ; 2 uses
  %i.bf = icmp samesign ult i32 %i.be, %i.bb
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !34
  br label %_ZN5boost9container4nestIivvE19priv_compact_singleEPNS0_11nest_detail5blockIPiLb0EEE.exit

_ZN5boost9container4nestIivvE19priv_compact_singleEPNS0_11nest_detail5blockIPiLb0EEE.exit: ; preds = %.critedge, %._crit_edge.i
  %i.bg = load i64, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %2, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bg
  store ptr %.pre, ptr %i.bi, align 8, !tbaa !106
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bj = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.bk = insertelement <2 x i64> %i.bj, i64 %i.ad, i64 1
  %i.bl = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bk) ; 2 uses
  %i.bm = extractelement <2 x i64> %i.bl, i64 1   ; 3 uses
  %i.bn = extractelement <2 x i64> %i.bl, i64 0   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.2, i64 32 ; 3 uses
  %i.bp = icmp samesign ult i64 %i.bn, %i.bm
  br i1 %i.bp, label %_ZN5boost9container11nest_detail12swap_payloadIPiEEvRNS1_5blockIT_Lb0EEES7_.exit.i, label %bb.g

_ZN5boost9container11nest_detail12swap_payloadIPiEEvRNS1_5blockIT_Lb0EEES7_.exit.i: ; preds = %bb.f
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !37
  store i64 %i.af, ptr %i.bo, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %.2, i64 40 ; 2 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !106
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !106
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !106
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container11nest_detail12swap_payloadIPiEEvRNS1_5blockIT_Lb0EEES7_.exit.i, %bb.f
  %.pr = phi i64 [ %i.af, %_ZN5boost9container11nest_detail12swap_payloadIPiEEvRNS1_5blockIT_Lb0EEES7_.exit.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.025.i = phi i64 [ %i.bn, %_ZN5boost9container11nest_detail12swap_payloadIPiEEvRNS1_5blockIT_Lb0EEES7_.exit.i ], [ %i.bm, %bb.f ]
  %.024.i = phi i64 [ %i.bm, %_ZN5boost9container11nest_detail12swap_payloadIPiEEvRNS1_5blockIT_Lb0EEES7_.exit.i ], [ %i.bn, %bb.f ]
  %i.bt = sub nuw nsw i64 64, %.024.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.025.i, i64 %i.bt) ; 2 uses
  %.not26.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not26.i, label %_ZN5boost9container4nestIivvE17priv_compact_pairEPNS0_11nest_detail5blockIPiLb0EEES7_.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.g
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !42, !nonnull !73, !noundef !73
  %i.bv = getelementptr inbounds nuw i8, ptr %.2, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i38
  %i.bx = phi i64 [ %.pr, %.lr.ph.i38 ], [ %i.cm, %bb.h ]
  %.027.i = phi i64 [ %.sroa.speculated.i, %.lr.ph.i38 ], [ %i.by, %bb.h ]
  %i.by = add nsw i64 %.027.i, -1                 ; 2 uses
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !34  ; 3 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ca, i1 true)
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true) ; 2 uses
  %i.cd = xor i64 %i.cc, 63
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cb
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !38
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !38
  %i.ch = add i64 %i.bz, 1
  %i.ci = or i64 %i.ch, %i.bz
  store i64 %i.ci, ptr %i.e, align 8, !tbaa !34
  %i.cj = lshr exact i64 -9223372036854775808, %i.cc
  %i.ck = xor i64 %i.cj, -1
  %i.cl = load i64, ptr %i.bo, align 8, !tbaa !34
  %i.cm = and i64 %i.cl, %i.ck                    ; 3 uses
  store i64 %i.cm, ptr %i.bo, align 8, !tbaa !34
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_ZN5boost9container4nestIivvE17priv_compact_pairEPNS0_11nest_detail5blockIPiLb0EEES7_.exit, label %bb.h, !llvm.loop !13

_ZN5boost9container4nestIivvE17priv_compact_pairEPNS0_11nest_detail5blockIPiLb0EEES7_.exit: ; preds = %bb.h, %bb.g
  %i.cn = phi i64 [ %.pr, %bb.g ], [ %i.cm, %bb.h ]
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost9container4nestIivvE17priv_compact_pairEPNS0_11nest_detail5blockIPiLb0EEES7_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !32
  %i.cv = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31 ; 2 uses
  %i.cx = load ptr, ptr %.2, align 8, !tbaa !30   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !31
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !30
  store ptr %0, ptr %i.cv, align 8, !tbaa !31
  %i.cz = load ptr, ptr %0, align 8, !tbaa !30
  store ptr %i.cz, ptr %.2, align 8, !tbaa !30
  store ptr %.2, ptr %0, align 8, !tbaa !30
  %i.da = load ptr, ptr %.2, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %.2, ptr %i.db, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container4nestIivvE17priv_compact_pairEPNS0_11nest_detail5blockIPiLb0EEES7_.exit
  %.3 = phi ptr [ %i.cq, %bb.i ], [ %.2, %_ZN5boost9container4nestIivvE17priv_compact_pairEPNS0_11nest_detail5blockIPiLb0EEES7_.exit ] ; 2 uses
  %i.dc = load i64, ptr %i.e, align 8, !tbaa !34
  %.not37 = icmp eq i64 %i.dc, -1
  br i1 %.not37, label %bb.k, label %bb.b, !llvm.loop !626

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %.03446, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31 ; 2 uses
  %i.df = load ptr, ptr %.03446, align 8, !tbaa !30 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !31
  store ptr %i.df, ptr %i.de, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.4 = phi ptr [ %.3, %bb.k ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03446, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.dj = load i64, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %2, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dj
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !106
  %.not = icmp eq ptr %.4, %0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !627

.loopexit:                                        ; preds = %bb.l, %bb.a, %_ZN5boost9container4nestIivvE19priv_compact_singleEPNS0_11nest_detail5blockIPiLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN5boost9container11nest_detail13sort_iteratorIiLm64EEElN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_T1_(ptr %0, i64 %1, ptr %2, i64 %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = icmp sgt i64 %i.a, 16
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph42

.lr.ph:                                           ; preds = %.lr.ph42
  %i.d = icmp eq i64 %i.e, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph42, !llvm.loop !628

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge31.lcssa = phi i64 [ %3, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.0.030.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %i.g, %.lr.ph ] ; 2 uses
  tail call void @_ZSt14__partial_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_(ptr %0, i64 %1, ptr %.sroa.0.030.lcssa, i64 %storemerge31.lcssa, ptr %.sroa.0.030.lcssa, i64 %storemerge31.lcssa)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.03041 = phi ptr [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %storemerge3140 = phi i64 [ %i.h, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.03239 = phi i64 [ %i.e, %.lr.ph ], [ %4, %.lr.ph.preheader ]
  %i.e = add nsw i64 %.03239, -1                  ; 3 uses
  %i.f = tail call { ptr, i64 } @_ZSt27__unguarded_partition_pivotIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEET_SB_SB_T0_(ptr %0, i64 %1, ptr %.sroa.0.03041, i64 %storemerge3140) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 4 uses
  tail call void @_ZSt16__introsort_loopIN5boost9container11nest_detail13sort_iteratorIiLm64EEElN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_T1_(ptr %i.g, i64 %i.h, ptr %.sroa.0.03041, i64 %storemerge3140, i64 noundef %i.e)
  %i.i = sub nsw i64 %i.h, %1
  %i.j = icmp sgt i64 %i.i, 16
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !628

.loopexit:                                        ; preds = %.lr.ph42, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = icmp sgt i64 %i.a, 16
  br i1 %i.b, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = add nsw i64 %1, 16                       ; 2 uses
  %.sroa.8.030.i = add nsw i64 %1, 1
  %i.d = lshr i64 %1, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.g = and i64 %1, 63
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.8.033.i.a = phi i64 [ %.sroa.8.0.i, %bb.d ], [ %.sroa.8.030.i, %.lr.ph.i ] ; 8 uses
  %.sroa.8.0.in32.i = phi i64 [ %.sroa.8.033.i.a, %bb.d ], [ %1, %.lr.ph.i ] ; 5 uses
  %i.i = lshr i64 %.sroa.8.033.i.a, 6
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106  ; 2 uses
  %i.l = and i64 %.sroa.8.033.i.a, 63             ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38   ; 5 uses
  %i.o = load i32, ptr %i.h, align 4, !tbaa !38
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.q = add nsw i64 %.sroa.8.0.in32.i, 2
  %i.r = sub i64 %.sroa.8.033.i.a, %1             ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %i.s = add nsw i64 %.sroa.8.033.i.a, -1         ; 3 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.w = and i64 %i.s, 63
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %4 = add nsw i64 %.sroa.8.0.in32.i, 1           ; 3 uses
  %i.z = lshr i64 %4, 6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106
  %i.ac = and i64 %4, 63
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 %i.y, ptr %i.ad, align 4, !tbaa !38
  %i.ae = add nsw i64 %i.r, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.2.09.i.i.i.i.i.i.unr = phi i64 [ %.sroa.8.033.i.a, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.3.08.i.i.i.i.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ], [ %4, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp eq i64 %indvar, 0
  br i1 %i.af, label %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.2.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.3.08.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.3.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ag = add nsw i64 %.sroa.2.09.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.ak = and i64 %i.ag, 63
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !38
  %i.an = add nsw i64 %.sroa.3.08.i.i.i.i.i.i, -1 ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !106
  %i.ar = and i64 %i.an, 63
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  store i32 %i.am, ptr %i.as, align 4, !tbaa !38
  %i.at = add nsw i64 %.sroa.2.09.i.i.i.i.i.i, -2 ; 3 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106
  %i.ax = and i64 %i.at, 63
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38
  %i.ba = add nsw i64 %.sroa.3.08.i.i.i.i.i.i, -2 ; 3 uses
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106
  %i.be = and i64 %i.ba, 63
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  store i32 %i.az, ptr %i.bf, align 4, !tbaa !38
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i, -2
  %i.bh = icmp sgt i64 %.010.i.i.i.i.i.i, 2
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i, !llvm.loop !14

_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.n, ptr %i.h, align 4, !tbaa !38
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bi = lshr i64 %.sroa.8.0.in32.i, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = and i64 %.sroa.8.0.in32.i, 63
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !38 ; 2 uses
  %i.bo = icmp slt i32 %i.n, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.bp = phi i32 [ %i.ca, %.lr.ph.i.i ], [ %i.bn, %bb.c ]
  %.sroa.6.018.i.i = phi i64 [ %.sroa.6.0.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.in32.i, %bb.c ] ; 4 uses
  %.sroa.612.017.i.i = phi i64 [ %.sroa.6.018.i.i, %.lr.ph.i.i ], [ %.sroa.8.033.i.a, %bb.c ] ; 2 uses
  %i.bq = lshr i64 %.sroa.612.017.i.i, 6
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !106
  %i.bt = and i64 %.sroa.612.017.i.i, 63
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !38
  %.sroa.6.0.i.i = add nsw i64 %.sroa.6.018.i.i, -1 ; 3 uses
  %i.bv = lshr i64 %.sroa.6.0.i.i, 6
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !106
  %i.by = and i64 %.sroa.6.0.i.i, 63
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !38 ; 2 uses
  %i.cb = icmp slt i32 %i.n, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !629

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = lshr i64 %.sroa.6.018.i.i, 6
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !106
  %.pre20.i.i = and i64 %.sroa.6.018.i.i, 63
  br label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i

_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi21.i.i = phi i64 [ %.pre20.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.cc = phi ptr [ %.pre19.i.i, %._crit_edge.loopexit.i.i ], [ %i.k, %bb.c ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.pre-phi21.i.i
  store i32 %i.n, ptr %i.cd, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i
  %.sroa.8.0.i = add nsw i64 %.sroa.8.033.i.a, 1  ; 2 uses
  %.not.i = icmp eq i64 %.sroa.8.0.i, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %.lr.ph.i19, label %bb.b, !llvm.loop !630

.lr.ph.i19:                                       ; preds = %bb.d, %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i20
  %.sroa.4.09.i = phi i64 [ %i.dg, %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i20 ], [ %i.c, %bb.d ] ; 5 uses
  %i.ce = lshr i64 %.sroa.4.09.i, 6
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106 ; 2 uses
  %i.ch = and i64 %.sroa.4.09.i, 63               ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !38 ; 3 uses
  %.sroa.6.016.i.i = add nsw i64 %.sroa.4.09.i, -1 ; 3 uses
  %i.ck = lshr i64 %.sroa.6.016.i.i, 6
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !106
  %i.cn = and i64 %.sroa.6.016.i.i, 63
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !38 ; 2 uses
  %i.cq = icmp slt i32 %i.cj, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i23, label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i20

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i19, %.lr.ph.i.i23
  %i.cr = phi i32 [ %i.dc, %.lr.ph.i.i23 ], [ %i.cp, %.lr.ph.i19 ]
  %.sroa.6.018.i.i24 = phi i64 [ %.sroa.6.0.i.i26, %.lr.ph.i.i23 ], [ %.sroa.6.016.i.i, %.lr.ph.i19 ] ; 4 uses
  %.sroa.612.017.i.i25 = phi i64 [ %.sroa.6.018.i.i24, %.lr.ph.i.i23 ], [ %.sroa.4.09.i, %.lr.ph.i19 ] ; 2 uses
  %i.cs = lshr i64 %.sroa.612.017.i.i25, 6
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !106
  %i.cv = and i64 %.sroa.612.017.i.i25, 63
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !38
  %.sroa.6.0.i.i26 = add nsw i64 %.sroa.6.018.i.i24, -1 ; 3 uses
  %i.cx = lshr i64 %.sroa.6.0.i.i26, 6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !106
  %i.da = and i64 %.sroa.6.0.i.i26, 63
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !38 ; 2 uses
  %i.dd = icmp slt i32 %i.cj, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i23, label %._crit_edge.loopexit.i.i27, !llvm.loop !629

._crit_edge.loopexit.i.i27:                       ; preds = %.lr.ph.i.i23
  %.pre.i.i28 = lshr i64 %.sroa.6.018.i.i24, 6
  %.phi.trans.insert.i.i29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i28
  %.pre19.i.i30 = load ptr, ptr %.phi.trans.insert.i.i29, align 8, !tbaa !106
  %.pre20.i.i31 = and i64 %.sroa.6.018.i.i24, 63
  br label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i20

_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i20: ; preds = %._crit_edge.loopexit.i.i27, %.lr.ph.i19
  %.pre-phi21.i.i21 = phi i64 [ %.pre20.i.i31, %._crit_edge.loopexit.i.i27 ], [ %i.ch, %.lr.ph.i19 ]
  %i.de = phi ptr [ %.pre19.i.i30, %._crit_edge.loopexit.i.i27 ], [ %i.cg, %.lr.ph.i19 ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.pre-phi21.i.i21
  store i32 %i.cj, ptr %i.df, align 4, !tbaa !38
  %i.dg = add nsw i64 %.sroa.4.09.i, 1            ; 2 uses
  %.not.i22 = icmp eq i64 %i.dg, %3
  br i1 %.not.i22, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_.exit, label %.lr.ph.i19, !llvm.loop !631

bb.e:                                             ; preds = %bb.a
  %i.dh = icmp eq i64 %1, %3
  br i1 %i.dh, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_.exit, label %.preheader.i32

.preheader.i32:                                   ; preds = %bb.e
  %.sroa.8.030.i33 = add nsw i64 %1, 1            ; 2 uses
  %.not31.i34 = icmp eq i64 %.sroa.8.030.i33, %3
  br i1 %.not31.i34, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader.i32
  %i.di = lshr i64 %1, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !106
  %i.dl = and i64 %1, 63
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i35
  %.sroa.8.033.i36 = phi i64 [ %.sroa.8.030.i33, %.lr.ph.i35 ], [ %.sroa.8.0.i40, %bb.h ] ; 7 uses
  %.sroa.8.0.in32.i37 = phi i64 [ %1, %.lr.ph.i35 ], [ %.sroa.8.033.i36, %bb.h ] ; 4 uses
  %i.dn = lshr i64 %.sroa.8.033.i36, 6
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !106 ; 2 uses
  %i.dq = and i64 %.sroa.8.033.i36, 63            ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !38 ; 5 uses
  %i.dt = load i32, ptr %i.dm, align 4, !tbaa !38
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.preheader.i51, label %bb.g

.lr.ph.i.i.i.i.i.preheader.i51:                   ; preds = %bb.f
  %i.dv = add nsw i64 %.sroa.8.0.in32.i37, 2
  %i.dw = sub nsw i64 %.sroa.8.033.i36, %1
  br label %.lr.ph.i.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i52:                             ; preds = %.lr.ph.i.i.i.i.i.i52, %.lr.ph.i.i.i.i.i.preheader.i51
  %.010.i.i.i.i.i.i53 = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i52 ], [ %i.dw, %.lr.ph.i.i.i.i.i.preheader.i51 ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i54 = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i52 ], [ %.sroa.8.033.i36, %.lr.ph.i.i.i.i.i.preheader.i51 ]
  %.sroa.3.08.i.i.i.i.i.i55 = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i52 ], [ %i.dv, %.lr.ph.i.i.i.i.i.preheader.i51 ]
  %i.dx = add nsw i64 %.sroa.2.09.i.i.i.i.i.i54, -1 ; 3 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !106
  %i.eb = and i64 %i.dx, 63
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !38
  %i.ee = add nsw i64 %.sroa.3.08.i.i.i.i.i.i55, -1 ; 3 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !106
  %i.ei = and i64 %i.ee, 63
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !38
  %i.ek = add nsw i64 %.010.i.i.i.i.i.i53, -1
  %i.el = icmp samesign ugt i64 %.010.i.i.i.i.i.i53, 1
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i52, label %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i56, !llvm.loop !14

_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i56: ; preds = %.lr.ph.i.i.i.i.i.i52
  store i32 %i.ds, ptr %i.dm, align 4, !tbaa !38
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.em = lshr i64 %.sroa.8.0.in32.i37, 6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !106
  %i.ep = and i64 %.sroa.8.0.in32.i37, 63
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !38 ; 2 uses
  %i.es = icmp slt i32 %i.ds, %i.er
  br i1 %i.es, label %.lr.ph.i.i42, label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i38

.lr.ph.i.i42:                                     ; preds = %bb.g, %.lr.ph.i.i42
  %i.et = phi i32 [ %i.fe, %.lr.ph.i.i42 ], [ %i.er, %bb.g ]
  %.sroa.6.018.i.i43 = phi i64 [ %.sroa.6.0.i.i45, %.lr.ph.i.i42 ], [ %.sroa.8.0.in32.i37, %bb.g ] ; 4 uses
  %.sroa.612.017.i.i44 = phi i64 [ %.sroa.6.018.i.i43, %.lr.ph.i.i42 ], [ %.sroa.8.033.i36, %bb.g ] ; 2 uses
  %i.eu = lshr i64 %.sroa.612.017.i.i44, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !106
  %i.ex = and i64 %.sroa.612.017.i.i44, 63
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex
  store i32 %i.et, ptr %i.ey, align 4, !tbaa !38
  %.sroa.6.0.i.i45 = add nsw i64 %.sroa.6.018.i.i43, -1 ; 3 uses
  %i.ez = lshr i64 %.sroa.6.0.i.i45, 6
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !106
  %i.fc = and i64 %.sroa.6.0.i.i45, 63
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !38 ; 2 uses
  %i.ff = icmp slt i32 %i.ds, %i.fe
  br i1 %i.ff, label %.lr.ph.i.i42, label %._crit_edge.loopexit.i.i46, !llvm.loop !629

._crit_edge.loopexit.i.i46:                       ; preds = %.lr.ph.i.i42
  %.pre.i.i47 = lshr i64 %.sroa.6.018.i.i43, 6
  %.phi.trans.insert.i.i48 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i47
  %.pre19.i.i49 = load ptr, ptr %.phi.trans.insert.i.i48, align 8, !tbaa !106
  %.pre20.i.i50 = and i64 %.sroa.6.018.i.i43, 63
  br label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i38

_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i38: ; preds = %._crit_edge.loopexit.i.i46, %bb.g
  %.pre-phi21.i.i39 = phi i64 [ %.pre20.i.i50, %._crit_edge.loopexit.i.i46 ], [ %i.dq, %bb.g ]
  %i.fg = phi ptr [ %.pre19.i.i49, %._crit_edge.loopexit.i.i46 ], [ %i.dp, %bb.g ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.pre-phi21.i.i39
  store i32 %i.ds, ptr %i.fh, align 4, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i38, %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i56
  %.sroa.8.0.i40 = add nsw i64 %.sroa.8.033.i36, 1 ; 2 uses
  %.not.i41 = icmp eq i64 %.sroa.8.0.i40, %3
  br i1 %.not.i41, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_.exit, label %bb.f, !llvm.loop !630

_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_T0_.exit: ; preds = %bb.h, %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIiEEEEvT_T0_.exit.i20, %.preheader.i32, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt14__partial_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i64 %3, %1                       ; 5 uses
  %i.b = icmp slt i64 %i.a, 2
  br i1 %i.b, label %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -2
  %i.d = lshr i64 %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.09.i.i = phi i64 [ %i.d, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.e = add nsw i64 %.09.i.i, %1                 ; 2 uses
  %i.f = lshr i64 %i.e, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = and i64 %i.e, 63
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  tail call void @_ZSt13__adjust_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEliN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_T0_SC_T1_T2_(ptr %0, i64 %1, i64 noundef %.09.i.i, i64 noundef %i.a, i32 noundef %i.k)
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.l = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit.i, label %bb.c, !llvm.loop !632

_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = icmp slt i64 %3, %5
  br i1 %i.m, label %.lr.ph.i, label %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_.exit

.lr.ph.i:                                         ; preds = %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit.i
  %i.n = lshr i64 %1, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = and i64 %1, 63
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.5.023.i = phi i64 [ %3, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.q = lshr i64 %.sroa.5.023.i, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = and i64 %.sroa.5.023.i, 63
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.p
  %i.x = load i32, ptr %i.u, align 4, !tbaa !38   ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !38   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %i.u, align 4, !tbaa !38
  tail call void @_ZSt13__adjust_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEliN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 %1, i64 noundef 0, i64 noundef %i.a, i32 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = add i64 %.sroa.5.023.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %5
  br i1 %exitcond.not.i, label %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_.exit, label %bb.d, !llvm.loop !633

_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_.exit: ; preds = %bb.f, %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit.i
  %i.ab = icmp sgt i64 %i.a, 1
  br i1 %i.ab, label %.lr.ph.i17, label %_ZSt11__sort_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit

.lr.ph.i17:                                       ; preds = %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_.exit
  %i.ac = lshr i64 %1, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = and i64 %1, 63
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i17
  %.sroa.2.010.i = phi i64 [ %3, %.lr.ph.i17 ], [ %i.af, %bb.g ]
  %i.af = add nsw i64 %.sroa.2.010.i, -1          ; 4 uses
  %i.ag = lshr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106
  %i.aj = and i64 %i.af, 63
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !38
  %i.ap = sub nsw i64 %i.af, %1                   ; 2 uses
  tail call void @_ZSt13__adjust_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEliN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_T0_SC_T1_T2_(ptr %0, i64 %1, i64 noundef 0, i64 noundef %i.ap, i32 noundef %i.al)
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.g, label %_ZSt11__sort_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit, !llvm.loop !634

_ZSt11__sort_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_RT0_.exit: ; preds = %bb.g, %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZSt27__unguarded_partition_pivotIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEET_SB_SB_T0_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = sdiv i64 %i.a, 2
  %i.c = add nsw i64 %i.b, %1                     ; 2 uses
  %i.d = add nsw i64 %1, 1                        ; 3 uses
  %i.e = add nsw i64 %3, -1                       ; 2 uses
  %i.f = lshr i64 %i.d, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = and i64 %i.d, 63
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.c, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.n = and i64 %i.c, 63
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !38   ; 5 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !38   ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = lshr i64 %i.e, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106
  %i.v = and i64 %i.e, 63
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.y = icmp slt i32 %i.q, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i64 %1, 6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  %i.ac = and i64 %1, 63                          ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  store i32 %i.q, ptr %i.ad, align 4, !tbaa !38
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit

bb.d:                                             ; preds = %bb.b
  %i.af = icmp slt i32 %i.p, %i.x
  %i.ag = lshr i64 %1, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106 ; 3 uses
  %i.aj = and i64 %1, 63                          ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.x, ptr %i.ak, align 4, !tbaa !38
  store i32 %i.al, ptr %i.w, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit

bb.f:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.ak, align 4, !tbaa !38
  store i32 %i.al, ptr %i.j, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit

bb.g:                                             ; preds = %bb.a
  %i.am = icmp slt i32 %i.p, %i.x
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = lshr i64 %1, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %i.aq = and i64 %1, 63                          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  store i32 %i.p, ptr %i.ar, align 4, !tbaa !38
  store i32 %i.as, ptr %i.j, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit

bb.i:                                             ; preds = %bb.g
  %i.at = icmp slt i32 %i.q, %i.x
  %i.au = lshr i64 %1, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106 ; 3 uses
  %i.ax = and i64 %1, 63                          ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38 ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.x, ptr %i.ay, align 4, !tbaa !38
  store i32 %i.az, ptr %i.w, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %bb.i
  store i32 %i.q, ptr %i.ay, align 4, !tbaa !38
  store i32 %i.az, ptr %i.o, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIiEEEEvT_SB_SB_SB_T0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.ba = phi ptr [ %i.ab, %bb.c ], [ %i.ai, %bb.e ], [ %i.ai, %bb.f ], [ %i.ap, %bb.h ], [ %i.aw, %bb.j ], [ %i.aw, %bb.k ]
  %.pre-phi53 = phi i64 [ %i.ac, %bb.c ], [ %i.aj, %bb.e ], [ %i.aj, %bb.f ], [ %i.aq, %bb.h ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ]
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_RT0_:bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38   ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4, !tbaa !38
  %i.y = load i32, ptr %i.w, align 4, !tbaa !38
  %i.z = icmp sgt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !38
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !38
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !15

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !38
  %i.ak = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us, !llvm.loop !16

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4, !tbaa !38
  %.not.us = icmp eq i64 %.014.us, 0
  %i.am = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !686

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit
  %.014 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38 ; 2 uses
  %i.ap = icmp slt i64 %.014, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4, !tbaa !38
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !38
  %i.ax = icmp sgt i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !38
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !38
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4, !tbaa !38
  store i32 %i.be, ptr %i.o, align 4, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.014
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !38 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !38
  %i.bk = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit, !llvm.loop !16

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4, !tbaa !38
  %.not = icmp eq i64 %.014, 0
  %i.bm = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !686

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_S8_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN5boost9container11nest_detail13sort_iteratorIiLm64EEElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_T1_(ptr %0, i64 %1, ptr %2, i64 %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = icmp sgt i64 %i.a, 16
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph42

.lr.ph:                                           ; preds = %.lr.ph42
  %i.d = icmp eq i64 %i.e, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph42, !llvm.loop !687

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge31.lcssa = phi i64 [ %3, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.0.030.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %i.g, %.lr.ph ] ; 2 uses
  tail call void @_ZSt14__partial_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_(ptr %0, i64 %1, ptr %.sroa.0.030.lcssa, i64 %storemerge31.lcssa, ptr %.sroa.0.030.lcssa, i64 %storemerge31.lcssa)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.03041 = phi ptr [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %storemerge3140 = phi i64 [ %i.h, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.03239 = phi i64 [ %i.e, %.lr.ph ], [ %4, %.lr.ph.preheader ]
  %i.e = add nsw i64 %.03239, -1                  ; 3 uses
  %i.f = tail call { ptr, i64 } @_ZSt27__unguarded_partition_pivotIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SB_SB_T0_(ptr %0, i64 %1, ptr %.sroa.0.03041, i64 %storemerge3140) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 4 uses
  tail call void @_ZSt16__introsort_loopIN5boost9container11nest_detail13sort_iteratorIiLm64EEElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_T1_(ptr %i.g, i64 %i.h, ptr %.sroa.0.03041, i64 %storemerge3140, i64 noundef %i.e)
  %i.i = sub nsw i64 %i.h, %1
  %i.j = icmp sgt i64 %i.i, 16
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !687

.loopexit:                                        ; preds = %.lr.ph42, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = icmp sgt i64 %i.a, 16
  br i1 %i.b, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = add nsw i64 %1, 16                       ; 2 uses
  %.sroa.8.030.i = add nsw i64 %1, 1
  %i.d = lshr i64 %1, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.g = and i64 %1, 63
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.8.033.i.a = phi i64 [ %.sroa.8.0.i, %bb.d ], [ %.sroa.8.030.i, %.lr.ph.i ] ; 8 uses
  %.sroa.8.0.in32.i = phi i64 [ %.sroa.8.033.i.a, %bb.d ], [ %1, %.lr.ph.i ] ; 5 uses
  %i.i = lshr i64 %.sroa.8.033.i.a, 6
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106  ; 2 uses
  %i.l = and i64 %.sroa.8.033.i.a, 63             ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38   ; 5 uses
  %i.o = load i32, ptr %i.h, align 4, !tbaa !38
  %i.p = icmp sgt i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.q = add nsw i64 %.sroa.8.0.in32.i, 2
  %i.r = sub i64 %.sroa.8.033.i.a, %1             ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %i.s = add nsw i64 %.sroa.8.033.i.a, -1         ; 3 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.w = and i64 %i.s, 63
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %4 = add nsw i64 %.sroa.8.0.in32.i, 1           ; 3 uses
  %i.z = lshr i64 %4, 6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106
  %i.ac = and i64 %4, 63
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 %i.y, ptr %i.ad, align 4, !tbaa !38
  %i.ae = add nsw i64 %i.r, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.2.09.i.i.i.i.i.i.unr = phi i64 [ %.sroa.8.033.i.a, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.3.08.i.i.i.i.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ], [ %4, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp eq i64 %indvar, 0
  br i1 %i.af, label %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.2.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.3.08.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.3.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ag = add nsw i64 %.sroa.2.09.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.ak = and i64 %i.ag, 63
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !38
  %i.an = add nsw i64 %.sroa.3.08.i.i.i.i.i.i, -1 ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !106
  %i.ar = and i64 %i.an, 63
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  store i32 %i.am, ptr %i.as, align 4, !tbaa !38
  %i.at = add nsw i64 %.sroa.2.09.i.i.i.i.i.i, -2 ; 3 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106
  %i.ax = and i64 %i.at, 63
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38
  %i.ba = add nsw i64 %.sroa.3.08.i.i.i.i.i.i, -2 ; 3 uses
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106
  %i.be = and i64 %i.ba, 63
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  store i32 %i.az, ptr %i.bf, align 4, !tbaa !38
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i, -2
  %i.bh = icmp sgt i64 %.010.i.i.i.i.i.i, 2
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i, !llvm.loop !14

_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.n, ptr %i.h, align 4, !tbaa !38
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bi = lshr i64 %.sroa.8.0.in32.i, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = and i64 %.sroa.8.0.in32.i, 63
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !38 ; 2 uses
  %i.bo = icmp sgt i32 %i.n, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.bp = phi i32 [ %i.ca, %.lr.ph.i.i ], [ %i.bn, %bb.c ]
  %.sroa.6.018.i.i = phi i64 [ %.sroa.6.0.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.in32.i, %bb.c ] ; 4 uses
  %.sroa.612.017.i.i = phi i64 [ %.sroa.6.018.i.i, %.lr.ph.i.i ], [ %.sroa.8.033.i.a, %bb.c ] ; 2 uses
  %i.bq = lshr i64 %.sroa.612.017.i.i, 6
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !106
  %i.bt = and i64 %.sroa.612.017.i.i, 63
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !38
  %.sroa.6.0.i.i = add nsw i64 %.sroa.6.018.i.i, -1 ; 3 uses
  %i.bv = lshr i64 %.sroa.6.0.i.i, 6
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !106
  %i.by = and i64 %.sroa.6.0.i.i, 63
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !38 ; 2 uses
  %i.cb = icmp sgt i32 %i.n, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !688

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = lshr i64 %.sroa.6.018.i.i, 6
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !106
  %.pre20.i.i = and i64 %.sroa.6.018.i.i, 63
  br label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i

_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi21.i.i = phi i64 [ %.pre20.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.cc = phi ptr [ %.pre19.i.i, %._crit_edge.loopexit.i.i ], [ %i.k, %bb.c ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.pre-phi21.i.i
  store i32 %i.n, ptr %i.cd, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i
  %.sroa.8.0.i = add nsw i64 %.sroa.8.033.i.a, 1  ; 2 uses
  %.not.i = icmp eq i64 %.sroa.8.0.i, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %.lr.ph.i19, label %bb.b, !llvm.loop !689

.lr.ph.i19:                                       ; preds = %bb.d, %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i20
  %.sroa.4.09.i = phi i64 [ %i.dg, %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i20 ], [ %i.c, %bb.d ] ; 5 uses
  %i.ce = lshr i64 %.sroa.4.09.i, 6
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106 ; 2 uses
  %i.ch = and i64 %.sroa.4.09.i, 63               ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !38 ; 3 uses
  %.sroa.6.016.i.i = add nsw i64 %.sroa.4.09.i, -1 ; 3 uses
  %i.ck = lshr i64 %.sroa.6.016.i.i, 6
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !106
  %i.cn = and i64 %.sroa.6.016.i.i, 63
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !38 ; 2 uses
  %i.cq = icmp sgt i32 %i.cj, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i23, label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i20

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i19, %.lr.ph.i.i23
  %i.cr = phi i32 [ %i.dc, %.lr.ph.i.i23 ], [ %i.cp, %.lr.ph.i19 ]
  %.sroa.6.018.i.i24 = phi i64 [ %.sroa.6.0.i.i26, %.lr.ph.i.i23 ], [ %.sroa.6.016.i.i, %.lr.ph.i19 ] ; 4 uses
  %.sroa.612.017.i.i25 = phi i64 [ %.sroa.6.018.i.i24, %.lr.ph.i.i23 ], [ %.sroa.4.09.i, %.lr.ph.i19 ] ; 2 uses
  %i.cs = lshr i64 %.sroa.612.017.i.i25, 6
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !106
  %i.cv = and i64 %.sroa.612.017.i.i25, 63
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !38
  %.sroa.6.0.i.i26 = add nsw i64 %.sroa.6.018.i.i24, -1 ; 3 uses
  %i.cx = lshr i64 %.sroa.6.0.i.i26, 6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !106
  %i.da = and i64 %.sroa.6.0.i.i26, 63
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !38 ; 2 uses
  %i.dd = icmp sgt i32 %i.cj, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i23, label %._crit_edge.loopexit.i.i27, !llvm.loop !688

._crit_edge.loopexit.i.i27:                       ; preds = %.lr.ph.i.i23
  %.pre.i.i28 = lshr i64 %.sroa.6.018.i.i24, 6
  %.phi.trans.insert.i.i29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i28
  %.pre19.i.i30 = load ptr, ptr %.phi.trans.insert.i.i29, align 8, !tbaa !106
  %.pre20.i.i31 = and i64 %.sroa.6.018.i.i24, 63
  br label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i20

_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i20: ; preds = %._crit_edge.loopexit.i.i27, %.lr.ph.i19
  %.pre-phi21.i.i21 = phi i64 [ %.pre20.i.i31, %._crit_edge.loopexit.i.i27 ], [ %i.ch, %.lr.ph.i19 ]
  %i.de = phi ptr [ %.pre19.i.i30, %._crit_edge.loopexit.i.i27 ], [ %i.cg, %.lr.ph.i19 ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.pre-phi21.i.i21
  store i32 %i.cj, ptr %i.df, align 4, !tbaa !38
  %i.dg = add nsw i64 %.sroa.4.09.i, 1            ; 2 uses
  %.not.i22 = icmp eq i64 %i.dg, %3
  br i1 %.not.i22, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_.exit, label %.lr.ph.i19, !llvm.loop !690

bb.e:                                             ; preds = %bb.a
  %i.dh = icmp eq i64 %1, %3
  br i1 %i.dh, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_.exit, label %.preheader.i32

.preheader.i32:                                   ; preds = %bb.e
  %.sroa.8.030.i33 = add nsw i64 %1, 1            ; 2 uses
  %.not31.i34 = icmp eq i64 %.sroa.8.030.i33, %3
  br i1 %.not31.i34, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader.i32
  %i.di = lshr i64 %1, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !106
  %i.dl = and i64 %1, 63
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i35
  %.sroa.8.033.i36 = phi i64 [ %.sroa.8.030.i33, %.lr.ph.i35 ], [ %.sroa.8.0.i40, %bb.h ] ; 7 uses
  %.sroa.8.0.in32.i37 = phi i64 [ %1, %.lr.ph.i35 ], [ %.sroa.8.033.i36, %bb.h ] ; 4 uses
  %i.dn = lshr i64 %.sroa.8.033.i36, 6
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !106 ; 2 uses
  %i.dq = and i64 %.sroa.8.033.i36, 63            ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !38 ; 5 uses
  %i.dt = load i32, ptr %i.dm, align 4, !tbaa !38
  %i.du = icmp sgt i32 %i.ds, %i.dt
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.preheader.i51, label %bb.g

.lr.ph.i.i.i.i.i.preheader.i51:                   ; preds = %bb.f
  %i.dv = add nsw i64 %.sroa.8.0.in32.i37, 2
  %i.dw = sub nsw i64 %.sroa.8.033.i36, %1
  br label %.lr.ph.i.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i52:                             ; preds = %.lr.ph.i.i.i.i.i.i52, %.lr.ph.i.i.i.i.i.preheader.i51
  %.010.i.i.i.i.i.i53 = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i52 ], [ %i.dw, %.lr.ph.i.i.i.i.i.preheader.i51 ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i54 = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i52 ], [ %.sroa.8.033.i36, %.lr.ph.i.i.i.i.i.preheader.i51 ]
  %.sroa.3.08.i.i.i.i.i.i55 = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i52 ], [ %i.dv, %.lr.ph.i.i.i.i.i.preheader.i51 ]
  %i.dx = add nsw i64 %.sroa.2.09.i.i.i.i.i.i54, -1 ; 3 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !106
  %i.eb = and i64 %i.dx, 63
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !38
  %i.ee = add nsw i64 %.sroa.3.08.i.i.i.i.i.i55, -1 ; 3 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !106
  %i.ei = and i64 %i.ee, 63
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !38
  %i.ek = add nsw i64 %.010.i.i.i.i.i.i53, -1
  %i.el = icmp samesign ugt i64 %.010.i.i.i.i.i.i53, 1
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i52, label %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i56, !llvm.loop !14

_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i56: ; preds = %.lr.ph.i.i.i.i.i.i52
  store i32 %i.ds, ptr %i.dm, align 4, !tbaa !38
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.em = lshr i64 %.sroa.8.0.in32.i37, 6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !106
  %i.ep = and i64 %.sroa.8.0.in32.i37, 63
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !38 ; 2 uses
  %i.es = icmp sgt i32 %i.ds, %i.er
  br i1 %i.es, label %.lr.ph.i.i42, label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i38

.lr.ph.i.i42:                                     ; preds = %bb.g, %.lr.ph.i.i42
  %i.et = phi i32 [ %i.fe, %.lr.ph.i.i42 ], [ %i.er, %bb.g ]
  %.sroa.6.018.i.i43 = phi i64 [ %.sroa.6.0.i.i45, %.lr.ph.i.i42 ], [ %.sroa.8.0.in32.i37, %bb.g ] ; 4 uses
  %.sroa.612.017.i.i44 = phi i64 [ %.sroa.6.018.i.i43, %.lr.ph.i.i42 ], [ %.sroa.8.033.i36, %bb.g ] ; 2 uses
  %i.eu = lshr i64 %.sroa.612.017.i.i44, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !106
  %i.ex = and i64 %.sroa.612.017.i.i44, 63
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex
  store i32 %i.et, ptr %i.ey, align 4, !tbaa !38
  %.sroa.6.0.i.i45 = add nsw i64 %.sroa.6.018.i.i43, -1 ; 3 uses
  %i.ez = lshr i64 %.sroa.6.0.i.i45, 6
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !106
  %i.fc = and i64 %.sroa.6.0.i.i45, 63
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !38 ; 2 uses
  %i.ff = icmp sgt i32 %i.ds, %i.fe
  br i1 %i.ff, label %.lr.ph.i.i42, label %._crit_edge.loopexit.i.i46, !llvm.loop !688

._crit_edge.loopexit.i.i46:                       ; preds = %.lr.ph.i.i42
  %.pre.i.i47 = lshr i64 %.sroa.6.018.i.i43, 6
  %.phi.trans.insert.i.i48 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i47
  %.pre19.i.i49 = load ptr, ptr %.phi.trans.insert.i.i48, align 8, !tbaa !106
  %.pre20.i.i50 = and i64 %.sroa.6.018.i.i43, 63
  br label %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i38

_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i38: ; preds = %._crit_edge.loopexit.i.i46, %bb.g
  %.pre-phi21.i.i39 = phi i64 [ %.pre20.i.i50, %._crit_edge.loopexit.i.i46 ], [ %i.dq, %bb.g ]
  %i.fg = phi ptr [ %.pre19.i.i49, %._crit_edge.loopexit.i.i46 ], [ %i.dp, %bb.g ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.pre-phi21.i.i39
  store i32 %i.ds, ptr %i.fh, align 4, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i38, %_ZSt13move_backwardIN5boost9container11nest_detail13sort_iteratorIiLm64EEES4_ET0_T_S6_S5_.exit.loopexit.i56
  %.sroa.8.0.i40 = add nsw i64 %.sroa.8.033.i36, 1 ; 2 uses
  %.not.i41 = icmp eq i64 %.sroa.8.0.i40, %3
  br i1 %.not.i41, label %_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_.exit, label %bb.f, !llvm.loop !689

_ZSt26__unguarded_insertion_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_T0_.exit: ; preds = %bb.h, %_ZSt25__unguarded_linear_insertIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i20, %.preheader.i32, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt14__partial_sortIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i64 %3, %1                       ; 5 uses
  %i.b = icmp slt i64 %i.a, 2
  br i1 %i.b, label %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -2
  %i.d = lshr i64 %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.09.i.i = phi i64 [ %i.d, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.e = add nsw i64 %.09.i.i, %1                 ; 2 uses
  %i.f = lshr i64 %i.e, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = and i64 %i.e, 63
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  tail call void @_ZSt13__adjust_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SC_T1_T2_(ptr %0, i64 %1, i64 noundef %.09.i.i, i64 noundef %i.a, i32 noundef %i.k)
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.l = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit.i, label %bb.c, !llvm.loop !691

_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = icmp slt i64 %3, %5
  br i1 %i.m, label %.lr.ph.i, label %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_.exit

.lr.ph.i:                                         ; preds = %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit.i
  %i.n = lshr i64 %1, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = and i64 %1, 63
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.5.023.i = phi i64 [ %3, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.q = lshr i64 %.sroa.5.023.i, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = and i64 %.sroa.5.023.i, 63
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.p
  %i.x = load i32, ptr %i.u, align 4, !tbaa !38   ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !38   ; 2 uses
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %i.u, align 4, !tbaa !38
  tail call void @_ZSt13__adjust_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 %1, i64 noundef 0, i64 noundef %i.a, i32 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = add i64 %.sroa.5.023.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %5
  br i1 %exitcond.not.i, label %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_.exit, label %bb.d, !llvm.loop !692

_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_.exit: ; preds = %bb.f, %_ZSt11__make_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit.i
  %i.ab = icmp sgt i64 %i.a, 1
  br i1 %i.ab, label %.lr.ph.i17, label %_ZSt11__sort_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit

.lr.ph.i17:                                       ; preds = %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_.exit
  %i.ac = lshr i64 %1, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = and i64 %1, 63
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i17
  %.sroa.2.010.i = phi i64 [ %3, %.lr.ph.i17 ], [ %i.af, %bb.g ]
  %i.af = add nsw i64 %.sroa.2.010.i, -1          ; 4 uses
  %i.ag = lshr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106
  %i.aj = and i64 %i.af, 63
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !38
  %i.ap = sub nsw i64 %i.af, %1                   ; 2 uses
  tail call void @_ZSt13__adjust_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEliN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SC_T1_T2_(ptr %0, i64 %1, i64 noundef 0, i64 noundef %i.ap, i32 noundef %i.al)
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.g, label %_ZSt11__sort_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit, !llvm.loop !693

_ZSt11__sort_heapIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_RT0_.exit: ; preds = %bb.g, %_ZSt13__heap_selectIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZSt27__unguarded_partition_pivotIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SB_SB_T0_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = sdiv i64 %i.a, 2
  %i.c = add nsw i64 %i.b, %1                     ; 2 uses
  %i.d = add nsw i64 %1, 1                        ; 3 uses
  %i.e = add nsw i64 %3, -1                       ; 2 uses
  %i.f = lshr i64 %i.d, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = and i64 %i.d, 63
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.c, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.n = and i64 %i.c, 63
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !38   ; 5 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !38   ; 5 uses
  %i.r = icmp sgt i32 %i.p, %i.q
  %i.s = lshr i64 %i.e, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106
  %i.v = and i64 %i.e, 63
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.y = icmp sgt i32 %i.q, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i64 %1, 6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  %i.ac = and i64 %1, 63                          ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  store i32 %i.q, ptr %i.ad, align 4, !tbaa !38
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit

bb.d:                                             ; preds = %bb.b
  %i.af = icmp sgt i32 %i.p, %i.x
  %i.ag = lshr i64 %1, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106 ; 3 uses
  %i.aj = and i64 %1, 63                          ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.x, ptr %i.ak, align 4, !tbaa !38
  store i32 %i.al, ptr %i.w, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit

bb.f:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.ak, align 4, !tbaa !38
  store i32 %i.al, ptr %i.j, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit

bb.g:                                             ; preds = %bb.a
  %i.am = icmp sgt i32 %i.p, %i.x
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = lshr i64 %1, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %i.aq = and i64 %1, 63                          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  store i32 %i.p, ptr %i.ar, align 4, !tbaa !38
  store i32 %i.as, ptr %i.j, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit

bb.i:                                             ; preds = %bb.g
  %i.at = icmp sgt i32 %i.q, %i.x
  %i.au = lshr i64 %1, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106 ; 3 uses
  %i.ax = and i64 %1, 63                          ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38 ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.x, ptr %i.ay, align 4, !tbaa !38
  store i32 %i.az, ptr %i.w, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %bb.i
  store i32 %i.q, ptr %i.ay, align 4, !tbaa !38
  store i32 %i.az, ptr %i.o, align 4, !tbaa !38
  br label %_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN5boost9container11nest_detail13sort_iteratorIiLm64EEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SB_SB_SB_T0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.ba = phi ptr [ %i.ab, %bb.c ], [ %i.ai, %bb.e ], [ %i.ai, %bb.f ], [ %i.ap, %bb.h ], [ %i.aw, %bb.j ], [ %i.aw, %bb.k ]
  %.pre-phi53 = phi i64 [ %i.ac, %bb.c ], [ %i.aj, %bb.e ], [ %i.aj, %bb.f ], [ %i.aq, %bb.h ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ]
end_hunk_1
