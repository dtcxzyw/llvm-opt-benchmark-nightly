Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN5rstar9algorithm5rstar5split17hc54316ab57d98fb9E:bb.a
  %i.bl = fcmp olt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.i, %.sroa.08.0.2.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2.i = select i1 %i.bl, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.i, double %.sroa.08.0.2.i
  %i.bm = select <2 x i1> %i.bk, <2 x double> %i.ba, <2 x double> %i.bj
  %i.bn = fcmp ogt <2 x double> %i.bd, %i.bi
  %i.bo = fcmp ogt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.1.i, %.sroa.7.0.2.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.2.i = select i1 %i.bo, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.1.i, double %.sroa.7.0.2.i
  %i.bp = select <2 x i1> %i.bn, <2 x double> %i.bd, <2 x double> %i.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !43116)
  %i.bq = load i64, ptr %i.m, align 8, !range !52, !alias.scope !43117, !noalias !43116, !noundef !16
  %.not.i40.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not.i40.i, label %bb.j, label %bb.i

.preheader.i:                                     ; preds = %bb.l, %bb.k
  %.sroa.728.0.1.i = phi double [ %.sroa.020.0.copyload21.1.i, %bb.l ], [ %.sroa.728.24.copyload.1.i, %bb.k ] ; 2 uses
  %.sroa.020.0.1.i = phi double [ %.sroa.020.0.copyload21.1.i, %bb.l ], [ %.sroa.020.0.copyload.1.i, %bb.k ] ; 2 uses
  %i.br = phi <2 x double> [ %i.cn, %bb.l ], [ %i.cl, %bb.k ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.cn, %bb.l ], [ %i.cm, %bb.k ] ; 2 uses
  %i.bt = fcmp olt <2 x double> %i.cg, %i.bs
  %i.bu = fcmp olt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i, %.sroa.020.0.1.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i = select i1 %i.bu, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i, double %.sroa.020.0.1.i ; 2 uses
  %i.bv = select <2 x i1> %i.bt, <2 x double> %i.cg, <2 x double> %i.bs ; 2 uses
  %i.bw = fcmp ogt <2 x double> %i.cj, %i.br
  %i.bx = fcmp ogt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i, %.sroa.728.0.1.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i = select i1 %i.bx, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i, double %.sroa.728.0.1.i ; 2 uses
  %i.by = select <2 x i1> %i.bw, <2 x double> %i.cj, <2 x double> %i.br ; 2 uses
  br i1 %i.n, label %.lr.ph169.i, label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph.preheader.i
  %.sroa.728.24.copyload.i = load double, ptr %i.z, align 8, !alias.scope !43118
  %.sroa.020.0.copyload.i = load double, ptr %i.y, align 8, !alias.scope !43118
  %i.bz = load <2 x double>, ptr %.sroa.1030.24..sroa_idx.i, align 8, !alias.scope !43118
  %i.ca = load <2 x double>, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !43118
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i"

bb.j:                                             ; preds = %.lr.ph.preheader.i
  %.sroa.020.0.copyload21.i = load double, ptr %i.aa, align 8, !alias.scope !43119 ; 2 uses
  %i.cb = load <2 x double>, ptr %.sroa.522.0..sroa_idx23.i, align 8, !alias.scope !43119 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i": ; preds = %bb.j, %bb.i
  %.sroa.728.0.i = phi double [ %.sroa.020.0.copyload21.i, %bb.j ], [ %.sroa.728.24.copyload.i, %bb.i ] ; 2 uses
  %.sroa.020.0.i = phi double [ %.sroa.020.0.copyload21.i, %bb.j ], [ %.sroa.020.0.copyload.i, %bb.i ] ; 2 uses
  %i.cc = phi <2 x double> [ %i.cb, %bb.j ], [ %i.bz, %bb.i ] ; 2 uses
  %i.cd = phi <2 x double> [ %i.cb, %bb.j ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ce = fcmp ogt <2 x double> %i.cd, splat (double f0x7FEFFFFFFFFFFFFF)
  %i.cf = fcmp ogt double %.sroa.020.0.i, f0x7FEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i = select i1 %i.cf, double f0x7FEFFFFFFFFFFFFF, double %.sroa.020.0.i ; 2 uses
  %i.cg = select <2 x i1> %i.ce, <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), <2 x double> %i.cd ; 2 uses
  %i.ch = fcmp olt <2 x double> %i.cc, splat (double f0xFFEFFFFFFFFFFFFF)
  %i.ci = fcmp olt double %.sroa.728.0.i, f0xFFEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i = select i1 %i.ci, double f0xFFEFFFFFFFFFFFFF, double %.sroa.728.0.i ; 2 uses
  %i.cj = select <2 x i1> %i.ch, <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), <2 x double> %i.cc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43120)
  %i.ck = load i64, ptr %.sroa.021.1114.i, align 8, !range !52, !alias.scope !43117, !noalias !43120, !noundef !16
  %.not.i40.1.i = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not.i40.1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i"
  %.sroa.728.24.copyload.1.i = load double, ptr %i.ac, align 8, !alias.scope !43121
  %.sroa.020.0.copyload.1.i = load double, ptr %i.ab, align 8, !alias.scope !43121
  %i.cl = load <2 x double>, ptr %.sroa.1030.24..sroa_idx.1.i, align 8, !alias.scope !43121
  %i.cm = load <2 x double>, ptr %.sroa.522.0..sroa_idx.1.i, align 8, !alias.scope !43121
  br label %.preheader.i

bb.l:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i"
  %.sroa.020.0.copyload21.1.i = load double, ptr %i.ad, align 8, !alias.scope !43122 ; 2 uses
  %i.cn = load <2 x double>, ptr %.sroa.522.0..sroa_idx23.1.i, align 8, !alias.scope !43122 ; 2 uses
  br label %.preheader.i

.lr.ph169.i:                                      ; preds = %.preheader.i, %._crit_edge157.i
  %.sroa.022.1168.i = phi i64 [ %.sroa.022.1.i, %._crit_edge157.i ], [ 4, %.preheader.i ] ; 3 uses
  %.sroa.0.1167.i = phi i64 [ %.sroa.0.2.i, %._crit_edge157.i ], [ %.sroa.0.0174.i, %.preheader.i ]
  %.sroa.022.0166.i = phi i64 [ %.sroa.022.1168.i, %._crit_edge157.i ], [ 3, %.preheader.i ] ; 2 uses
  %.sroa.0.193165.i = phi double [ %.sroa.0.294.i, %._crit_edge157.i ], [ %.sroa.0.092172.i, %.preheader.i ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %.sroa.022.0166.i, 72
  %i.co = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx.i ; 3 uses
  br label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i", %.lr.ph169.i
  %.sroa.024.1137.i = phi ptr [ %.sroa.024.1.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %.sroa.020.0.ptr.i, %.lr.ph169.i ] ; 3 uses
  %.sroa.024.0136.i = phi ptr [ %.sroa.024.1137.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %.val26, %.lr.ph169.i ] ; 7 uses
  %.sroa.036.0135.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2.i, %.lr.ph169.i ] ; 2 uses
  %.sroa.14.0132.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.2.i, %.lr.ph169.i ] ; 2 uses
  %i.cp = phi <2 x double> [ %i.df, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %i.bp, %.lr.ph169.i ] ; 2 uses
  %i.cq = phi <2 x double> [ %i.dc, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %i.bm, %.lr.ph169.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43123)
  %i.cr = load i64, ptr %.sroa.024.0136.i, align 8, !range !52, !alias.scope !43124, !noalias !43123, !noundef !16
  %.not.i48.i = icmp eq i64 %i.cr, -9223372036854775808
  br i1 %.not.i48.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph138.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 48
  %.sroa.765.24.copyload.i = load double, ptr %i.ct, align 8, !alias.scope !43125
  %.sroa.1067.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 56
  %.sroa.057.0.copyload.i = load double, ptr %i.cs, align 8, !alias.scope !43125
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 32
  %i.cu = load <2 x double>, ptr %.sroa.1067.24..sroa_idx.i, align 8, !alias.scope !43125
  %i.cv = load <2 x double>, ptr %.sroa.559.0..sroa_idx.i, align 8, !alias.scope !43125
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i"

bb.n:                                             ; preds = %.lr.ph138.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 8
  %.sroa.057.0.copyload58.i = load double, ptr %i.cw, align 8, !alias.scope !43126 ; 2 uses
  %.sroa.559.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 16
  %i.cx = load <2 x double>, ptr %.sroa.559.0..sroa_idx60.i, align 8, !alias.scope !43126 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i": ; preds = %bb.n, %bb.m
  %.sroa.765.0.i = phi double [ %.sroa.057.0.copyload58.i, %bb.n ], [ %.sroa.765.24.copyload.i, %bb.m ] ; 2 uses
  %.sroa.057.0.i = phi double [ %.sroa.057.0.copyload58.i, %bb.n ], [ %.sroa.057.0.copyload.i, %bb.m ] ; 2 uses
  %i.cy = phi <2 x double> [ %i.cx, %bb.n ], [ %i.cu, %bb.m ] ; 2 uses
  %i.cz = phi <2 x double> [ %i.cx, %bb.n ], [ %i.cv, %bb.m ] ; 2 uses
  %i.da = fcmp olt <2 x double> %i.cq, %i.cz
  %i.db = fcmp olt double %.sroa.036.0135.i, %.sroa.057.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i = select i1 %i.db, double %.sroa.036.0135.i, double %.sroa.057.0.i ; 2 uses
  %i.dc = select <2 x i1> %i.da, <2 x double> %i.cq, <2 x double> %i.cz ; 2 uses
  %i.dd = fcmp ogt <2 x double> %i.cp, %i.cy
  %i.de = fcmp ogt double %.sroa.14.0132.i, %.sroa.765.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i = select i1 %i.de, double %.sroa.14.0132.i, double %.sroa.765.0.i ; 2 uses
  %i.df = select <2 x i1> %i.dd, <2 x double> %i.cp, <2 x double> %i.cy ; 2 uses
  %i.dg = icmp eq ptr %.sroa.024.1137.i, %i.co    ; 2 uses
  %.sroa.024.1.idx.i = select i1 %i.dg, i64 0, i64 72
  %.sroa.024.1.i = getelementptr inbounds nuw i8, ptr %.sroa.024.1137.i, i64 %.sroa.024.1.idx.i
  br i1 %i.dg, label %._crit_edge.i, label %.lr.ph138.i

._crit_edge.i:                                    ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i"
  %i.dh = icmp eq i64 %.sroa.022.0166.i, %.val27
  br i1 %i.dh, label %._crit_edge157.i, label %.lr.ph156.preheader.i

.lr.ph156.preheader.i:                            ; preds = %._crit_edge.i
  %.sroa.025.1146.i = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i", %.lr.ph156.preheader.i
  %.sroa.025.1154.i = phi ptr [ %.sroa.025.1.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %.sroa.025.1146.i, %.lr.ph156.preheader.i ] ; 3 uses
  %.sroa.025.0153.i = phi ptr [ %.sroa.025.1154.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %i.co, %.lr.ph156.preheader.i ] ; 7 uses
  %.sroa.045.0152.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i, %.lr.ph156.preheader.i ] ; 2 uses
  %.sroa.1451.0149.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i, %.lr.ph156.preheader.i ] ; 2 uses
  %i.di = phi <2 x double> [ %i.dy, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %i.by, %.lr.ph156.preheader.i ] ; 2 uses
  %i.dj = phi <2 x double> [ %i.dv, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %i.bv, %.lr.ph156.preheader.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43127)
  %i.dk = load i64, ptr %.sroa.025.0153.i, align 8, !range !52, !alias.scope !43128, !noalias !43127, !noundef !16
  %.not.i56.i = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %.not.i56.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph156.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 48
  %.sroa.781.24.copyload.i = load double, ptr %i.dm, align 8, !alias.scope !43129
  %.sroa.1083.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 56
  %.sroa.073.0.copyload.i = load double, ptr %i.dl, align 8, !alias.scope !43129
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 32
  %i.dn = load <2 x double>, ptr %.sroa.1083.24..sroa_idx.i, align 8, !alias.scope !43129
  %i.do = load <2 x double>, ptr %.sroa.575.0..sroa_idx.i, align 8, !alias.scope !43129
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i"

bb.p:                                             ; preds = %.lr.ph156.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 8
  %.sroa.073.0.copyload74.i = load double, ptr %i.dp, align 8, !alias.scope !43130 ; 2 uses
  %.sroa.575.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 16
  %i.dq = load <2 x double>, ptr %.sroa.575.0..sroa_idx76.i, align 8, !alias.scope !43130 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i": ; preds = %bb.p, %bb.o
  %.sroa.781.0.i = phi double [ %.sroa.073.0.copyload74.i, %bb.p ], [ %.sroa.781.24.copyload.i, %bb.o ] ; 2 uses
  %.sroa.073.0.i = phi double [ %.sroa.073.0.copyload74.i, %bb.p ], [ %.sroa.073.0.copyload.i, %bb.o ] ; 2 uses
  %i.dr = phi <2 x double> [ %i.dq, %bb.p ], [ %i.dn, %bb.o ] ; 2 uses
  %i.ds = phi <2 x double> [ %i.dq, %bb.p ], [ %i.do, %bb.o ] ; 2 uses
  %i.dt = fcmp olt <2 x double> %i.dj, %i.ds
  %i.du = fcmp olt double %.sroa.045.0152.i, %.sroa.073.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i = select i1 %i.du, double %.sroa.045.0152.i, double %.sroa.073.0.i ; 2 uses
  %i.dv = select <2 x i1> %i.dt, <2 x double> %i.dj, <2 x double> %i.ds ; 2 uses
  %i.dw = fcmp ogt <2 x double> %i.di, %i.dr
  %i.dx = fcmp ogt double %.sroa.1451.0149.i, %.sroa.781.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i = select i1 %i.dx, double %.sroa.1451.0149.i, double %.sroa.781.0.i ; 2 uses
  %i.dy = select <2 x i1> %i.dw, <2 x double> %i.di, <2 x double> %i.dr ; 2 uses
  %i.dz = icmp eq ptr %.sroa.025.1154.i, %i.o     ; 2 uses
  %.sroa.025.1.idx.i = select i1 %i.dz, i64 0, i64 72
  %.sroa.025.1.i = getelementptr inbounds nuw i8, ptr %.sroa.025.1154.i, i64 %.sroa.025.1.idx.i
  br i1 %i.dz, label %._crit_edge157.i, label %.lr.ph156.i

._crit_edge157.i:                                 ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i", %._crit_edge.i
  %.sroa.1451.0.lcssa.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i, %._crit_edge.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %.sroa.045.0.lcssa.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i, %._crit_edge.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %i.ea = phi <2 x double> [ %i.by, %._crit_edge.i ], [ %i.dy, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %i.eb = phi <2 x double> [ %i.bv, %._crit_edge.i ], [ %i.dv, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %i.ec = fsub <2 x double> %i.df, %i.dc          ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %.sroa.1451.0.lcssa.i, i64 1
  %i.ef = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %.sroa.045.0.lcssa.i, i64 1
  %i.eh = fsub <2 x double> %i.ee, %i.eg
  %i.ei = fsub <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ej = fadd <2 x double> %i.eh, zeroinitializer
  %i.ek = shufflevector <2 x double> %i.ec, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.el = fadd <2 x double> %i.ek, %i.ej
  %i.em = shufflevector <2 x double> %i.ec, <2 x double> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.en = fadd <2 x double> %i.em, %i.el          ; 2 uses
  %i.eo = fcmp ogt <2 x double> %i.en, zeroinitializer
  %i.ep = select <2 x i1> %i.eo, <2 x double> %i.en, <2 x double> zeroinitializer ; 2 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ep, %shift
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.eq = fcmp ogt double %.sroa.0.193165.i, %2   ; 2 uses
  %.sroa.0.294.i = select i1 %i.eq, double %2, double %.sroa.0.193165.i ; 2 uses
  %.sroa.0.2.i = select i1 %i.eq, i64 %.sroa.018.0173.i, i64 %.sroa.0.1167.i ; 2 uses
  %i.er = icmp ult i64 %.sroa.022.1168.i, %i.j    ; 2 uses
  %i.es = zext i1 %i.er to i64
  %.sroa.022.1.i = add nuw i64 %.sroa.022.1168.i, %i.es
  br i1 %i.er, label %.lr.ph169.i, label %.loopexit.i

bb.q:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.1.lcssa.i, ptr %i.c, align 8, !noalias !43131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43131
  store ptr %i.c, ptr %i.b, align 8, !noalias !43132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43132
  store ptr %i.b, ptr %i.a, align 8, !noalias !43132
  %i.et = add nsw i64 %.val27, -3                 ; 3 uses
  br i1 %i.l, label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit", label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread", !prof !19

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread": ; preds = %bb.q
  call void @_ZN4core5slice4sort8unstable7ipnsort17h8364740d76b9fb81E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.lr.ph240.preheader

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit": ; preds = %bb.q
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd6ef2da2fe844777E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i28235 = icmp ult i64 %i.et, 3
  br i1 %.not.i28235, label %._crit_edge241, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread", %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit"
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge228
  %.sroa.0.0239 = phi i64 [ %.sroa.0.1, %._crit_edge228 ], [ 3, %.lr.ph240.preheader ]
  %.sroa.0.0180238 = phi double [ %.sroa.0.1181, %._crit_edge228 ], [ 0.000000e+00, %.lr.ph240.preheader ] ; 3 uses
  %.sroa.5.0237 = phi double [ %.sroa.5.1, %._crit_edge228 ], [ 0.000000e+00, %.lr.ph240.preheader ] ; 2 uses
  %.sroa.075.0236 = phi i64 [ %spec.select189, %._crit_edge228 ], [ 3, %.lr.ph240.preheader ] ; 9 uses
  %i.eu = icmp uge i64 %.sroa.075.0236, %i.et     ; 2 uses
  %not. = xor i1 %i.eu, true
  %i.ev = zext i1 %not. to i64
  %spec.select189 = add nuw i64 %.sroa.075.0236, %i.ev ; 2 uses
  %i.ew = add i64 %.sroa.075.0236, -1             ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %.val27
  br i1 %i.ex, label %bb.y, label %bb.ab

._crit_edge241:                                   ; preds = %._crit_edge228, %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit"
  %.sroa.0.0.lcssa = phi i64 [ 3, %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit" ], [ %.sroa.0.1, %._crit_edge228 ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43133)
  %i.ey = icmp ugt i64 %.sroa.0.0.lcssa, %.val27
  br i1 %i.ey, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !18

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %._crit_edge241
  %i.ez = sub nuw nsw i64 %.val27, %.sroa.0.0.lcssa ; 3 uses
  %i.fa = mul nuw nsw i64 %i.ez, 72               ; 4 uses
  %i.fb = icmp eq i64 %.val27, %.sroa.0.0.lcssa   ; 2 uses
  br i1 %i.fb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43134
  %i.fc = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fa, i64 noundef range(i64 1, 9) 8) #65, !noalias !43134 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit"

bb.s:                                             ; preds = %bb.r
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @900) #66, !noalias !43135
  unreachable

bb.t:                                             ; preds = %._crit_edge241
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off13assert_failed17h76342509ab517cd0E"(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @900) #66, !noalias !43135
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.r
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.fc, %bb.r ] ; 4 uses
  store i64 %.sroa.0.0.lcssa, ptr %i.h, align 8, !alias.scope !43133, !noalias !43136
  %i.fe = getelementptr inbounds nuw [72 x i8], ptr %.val26, i64 %.sroa.0.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i, ptr nonnull align 8 %i.fe, i64 %i.fa, i1 false), !noalias !43137
  %.idx.i29 = mul nuw nsw i64 %.sroa.0.0.lcssa, 72
  %i.ff = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx.i29
  %i.fg = icmp eq i64 %.sroa.0.0.lcssa, 0
  br i1 %i.fg, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit", %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38"
  %.sroa.02.023.i = phi ptr [ %i.fj, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ %.val26, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 9 uses
  %.sroa.9.020.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %.sroa.18.017.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %i.fh = phi <2 x double> [ %i.fv, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %i.fi = phi <2 x double> [ %i.fy, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43138)
  %i.fk = load i64, ptr %.sroa.02.023.i, align 8, !range !52, !alias.scope !43139, !noalias !43140, !noundef !16
  %.not.i.i30 = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %.not.i.i30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 48
  %i.fn = load <2 x double>, ptr %i.fm, align 8, !alias.scope !43141, !noalias !43142
  %.sroa.11.24..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 64
  %.sroa.11.24.copyload.i35 = load double, ptr %.sroa.11.24..sroa_idx.i34, align 8, !alias.scope !43141, !noalias !43142
  %i.fo = load <2 x double>, ptr %i.fl, align 8, !alias.scope !43141, !noalias !43142
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 40
  %.sroa.69.0.copyload.i = load double, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !43141, !noalias !43142
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38"

bb.v:                                             ; preds = %.lr.ph.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 16
  %.sroa.5.0.copyload8.i = load double, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !43143, !noalias !43142
  %i.fq = load <2 x double>, ptr %i.fp, align 8, !alias.scope !43143, !noalias !43142 ; 2 uses
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %.sroa.69.0.copyload11.i = load double, ptr %.sroa.69.0..sroa_idx10.i, align 8, !alias.scope !43143, !noalias !43142 ; 2 uses
  %i.fr = insertelement <2 x double> %i.fq, double %.sroa.5.0.copyload8.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38": ; preds = %bb.v, %bb.u
  %.sroa.11.0.i39 = phi double [ %.sroa.69.0.copyload11.i, %bb.v ], [ %.sroa.11.24.copyload.i35, %bb.u ] ; 2 uses
  %.sroa.69.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.v ], [ %.sroa.69.0.copyload.i, %bb.u ] ; 2 uses
  %i.fs = phi <2 x double> [ %i.fq, %bb.v ], [ %i.fo, %bb.u ] ; 2 uses
  %i.ft = phi <2 x double> [ %i.fr, %bb.v ], [ %i.fn, %bb.u ] ; 2 uses
  %i.fu = fcmp olt <2 x double> %i.fh, %i.fs
  %i.fv = select <2 x i1> %i.fu, <2 x double> %i.fh, <2 x double> %i.fs ; 2 uses
  %i.fw = fcmp olt double %.sroa.9.020.i, %.sroa.69.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45 = select i1 %i.fw, double %.sroa.9.020.i, double %.sroa.69.0.i ; 2 uses
  %i.fx = fcmp ogt <2 x double> %i.fi, %i.ft
  %i.fy = select <2 x i1> %i.fx, <2 x double> %i.fi, <2 x double> %i.ft ; 2 uses
  %i.fz = fcmp ogt double %.sroa.18.017.i, %.sroa.11.0.i39
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48 = select i1 %i.fz, double %.sroa.18.017.i, double %.sroa.11.0.i39 ; 2 uses
  %i.ga = icmp eq ptr %i.fj, %i.ff
  br i1 %i.ga, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit"
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %i.gb = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %i.fv, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %i.gc = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %i.fy, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> %i.gb, ptr %i.gd, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.sroa.9.0.lcssa.i, ptr %.sroa.5161.0..sroa_idx, align 8
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> %i.gc, ptr %.sroa.6162.0..sroa_idx, align 8
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %.sroa.18.0.lcssa.i, ptr %.sroa.8164.0..sroa_idx, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 %i.fa
  br i1 %i.fb, label %"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h9548047a08813715E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"
  %.sroa.02.023.i.i = phi ptr [ %i.gh, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ %.sroa.10.0.i.i, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 9 uses
  %.sroa.9.020.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ f0x7FEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %.sroa.18.017.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ f0xFFEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %i.gf = phi <2 x double> [ %i.gt, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %i.gg = phi <2 x double> [ %i.gw, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43144)
  %i.gi = load i64, ptr %.sroa.02.023.i.i, align 8, !range !52, !alias.scope !43145, !noalias !43146, !noundef !16
  %.not.i.i.i = icmp eq i64 %i.gi, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 48
  %i.gl = load <2 x double>, ptr %i.gk, align 8, !alias.scope !43147, !noalias !43148
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 64
  %.sroa.11.24.copyload.i.i = load double, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !alias.scope !43147, !noalias !43148
  %i.gm = load <2 x double>, ptr %i.gj, align 8, !alias.scope !43147, !noalias !43148
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 40
  %.sroa.69.0.copyload.i.i = load double, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !alias.scope !43147, !noalias !43148
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 16
  %.sroa.5.0.copyload8.i.i = load double, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !alias.scope !43149, !noalias !43148
  %i.go = load <2 x double>, ptr %i.gn, align 8, !alias.scope !43149, !noalias !43148 ; 2 uses
  %.sroa.69.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %.sroa.69.0.copyload11.i.i = load double, ptr %.sroa.69.0..sroa_idx10.i.i, align 8, !alias.scope !43149, !noalias !43148 ; 2 uses
  %i.gp = insertelement <2 x double> %i.go, double %.sroa.5.0.copyload8.i.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i": ; preds = %bb.x, %bb.w
  %.sroa.11.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.x ], [ %.sroa.11.24.copyload.i.i, %bb.w ] ; 2 uses
  %.sroa.69.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.x ], [ %.sroa.69.0.copyload.i.i, %bb.w ] ; 2 uses
  %i.gq = phi <2 x double> [ %i.go, %bb.x ], [ %i.gm, %bb.w ] ; 2 uses
  %i.gr = phi <2 x double> [ %i.gp, %bb.x ], [ %i.gl, %bb.w ] ; 2 uses
  %i.gs = fcmp olt <2 x double> %i.gf, %i.gq
  %i.gt = select <2 x i1> %i.gs, <2 x double> %i.gf, <2 x double> %i.gq ; 2 uses
  %i.gu = fcmp olt double %.sroa.9.020.i.i, %.sroa.69.0.i.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i = select i1 %i.gu, double %.sroa.9.020.i.i, double %.sroa.69.0.i.i ; 2 uses
  %i.gv = fcmp ogt <2 x double> %i.gg, %i.gr
  %i.gw = select <2 x i1> %i.gv, <2 x double> %i.gg, <2 x double> %i.gr ; 2 uses
  %i.gx = fcmp ogt double %.sroa.18.017.i.i, %.sroa.11.0.i.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i = select i1 %i.gx, double %.sroa.18.017.i.i, double %.sroa.11.0.i.i ; 2 uses
  %i.gy = icmp eq ptr %i.gh, %i.ge
  br i1 %i.gy, label %"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h9548047a08813715E.exit", label %.lr.ph.i.i

"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h9548047a08813715E.exit": ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i", %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit
end_hunk_0
begin_hunk_1_@_ZN5rstar9algorithm5rstar5split17hc54316ab57d98fb9E:bb.a

bb.aa:                                            ; preds = %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hi = load <2 x double>, ptr %i.hh, align 8, !alias.scope !43153 ; 2 uses
  %.sroa.12.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %.sroa.12.0.copyload86 = load double, ptr %.sroa.12.0..sroa_idx85, align 8, !alias.scope !43153 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit": ; preds = %bb.z, %bb.aa
  %.sroa.26.1 = phi double [ %.sroa.12.0.copyload86, %bb.aa ], [ %.sroa.26.24.copyload, %bb.z ]
  %.sroa.12.1 = phi double [ %.sroa.12.0.copyload86, %bb.aa ], [ %.sroa.12.0.copyload, %bb.z ]
  %i.hj = phi <2 x double> [ %i.hi, %bb.aa ], [ %i.hf, %bb.z ]
  %i.hk = phi <2 x double> [ %i.hi, %bb.aa ], [ %i.hg, %bb.z ]
  %i.hl = icmp samesign ult i64 %.sroa.075.0236, %.val27
  br i1 %i.hl, label %bb.ac, label %bb.af

bb.ab:                                            ; preds = %.lr.ph240
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ew, i64 noundef %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @901) #66
  unreachable

bb.ac:                                            ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"
  %.idx = mul nuw nsw i64 %.sroa.075.0236, 72
  %i.hm = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43154)
  %i.hn = load i64, ptr %i.hm, align 8, !range !52, !alias.scope !43155, !noalias !43154, !noundef !16
  %.not.i56 = icmp eq i64 %i.hn, -9223372036854775808
  br i1 %.not.i56, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %.sroa.26123.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %.sroa.26123.24.copyload = load double, ptr %.sroa.26123.24..sroa_idx, align 8, !alias.scope !43156
  %i.hq = load <2 x double>, ptr %i.hp, align 8, !alias.scope !43156
  %i.hr = load <2 x double>, ptr %i.ho, align 8, !alias.scope !43156
  %.sroa.12109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %.sroa.12109.0.copyload = load double, ptr %.sroa.12109.0..sroa_idx, align 8, !alias.scope !43156
  br label %.lr.ph.preheader

bb.ae:                                            ; preds = %bb.ac
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ht = load <2 x double>, ptr %i.hs, align 8, !alias.scope !43157 ; 2 uses
  %.sroa.12109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %.sroa.12109.0.copyload111 = load double, ptr %.sroa.12109.0..sroa_idx110, align 8, !alias.scope !43157 ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae, %bb.ad
  %.sroa.26123.1 = phi double [ %.sroa.12109.0.copyload111, %bb.ae ], [ %.sroa.26123.24.copyload, %bb.ad ] ; 2 uses
  %.sroa.12109.1 = phi double [ %.sroa.12109.0.copyload111, %bb.ae ], [ %.sroa.12109.0.copyload, %bb.ad ] ; 2 uses
  %i.hu = phi <2 x double> [ %i.ht, %bb.ae ], [ %i.hq, %bb.ad ] ; 2 uses
  %i.hv = phi <2 x double> [ %i.ht, %bb.ae ], [ %i.hr, %bb.ad ] ; 2 uses
  br label %.lr.ph

bb.af:                                            ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.075.0236, i64 noundef %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @902) #66
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"
  %.sroa.014.1210 = phi ptr [ %.sroa.014.1, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.sroa.020.0.ptr.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.014.0209 = phi ptr [ %.sroa.014.1210, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.val26, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.0206 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.sroa.12.1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.26.0203 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.sroa.26.1, %.lr.ph.preheader ] ; 2 uses
  %i.hw = phi <2 x double> [ %i.il, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %i.hj, %.lr.ph.preheader ] ; 2 uses
  %i.hx = phi <2 x double> [ %i.ii, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %i.hk, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43158)
  %i.hy = load i64, ptr %.sroa.014.0209, align 8, !range !52, !alias.scope !43159, !noalias !43158, !noundef !16
  %.not.i58 = icmp eq i64 %i.hy, -9223372036854775808
  br i1 %.not.i58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 48
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 64
  %.sroa.11.24.copyload = load double, ptr %.sroa.11.24..sroa_idx, align 8, !alias.scope !43160
  %i.ib = load <2 x double>, ptr %i.ia, align 8, !alias.scope !43160
  %i.ic = load <2 x double>, ptr %i.hz, align 8, !alias.scope !43160
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 40
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !43160
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"

bb.ah:                                            ; preds = %.lr.ph
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 8
  %i.ie = load <2 x double>, ptr %i.id, align 8, !alias.scope !43161 ; 2 uses
  %.sroa.6.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 24
  %.sroa.6.0.copyload134 = load double, ptr %.sroa.6.0..sroa_idx133, align 8, !alias.scope !43161 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59": ; preds = %bb.ag, %bb.ah
  %.sroa.11.0 = phi double [ %.sroa.6.0.copyload134, %bb.ah ], [ %.sroa.11.24.copyload, %bb.ag ] ; 2 uses
  %.sroa.6.0 = phi double [ %.sroa.6.0.copyload134, %bb.ah ], [ %.sroa.6.0.copyload, %bb.ag ] ; 2 uses
  %i.if = phi <2 x double> [ %i.ie, %bb.ah ], [ %i.ib, %bb.ag ] ; 2 uses
  %i.ig = phi <2 x double> [ %i.ie, %bb.ah ], [ %i.ic, %bb.ag ] ; 2 uses
  %i.ih = fcmp olt <2 x double> %i.hx, %i.ig
  %i.ii = select <2 x i1> %i.ih, <2 x double> %i.hx, <2 x double> %i.ig ; 4 uses
  %i.ij = fcmp olt double %.sroa.12.0206, %.sroa.6.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i = select i1 %i.ij, double %.sroa.12.0206, double %.sroa.6.0 ; 4 uses
  %i.ik = fcmp ogt <2 x double> %i.hw, %i.if
  %i.il = select <2 x i1> %i.ik, <2 x double> %i.hw, <2 x double> %i.if ; 4 uses
  %i.im = fcmp ogt double %.sroa.26.0203, %.sroa.11.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i = select i1 %i.im, double %.sroa.26.0203, double %.sroa.11.0 ; 4 uses
  %i.in = icmp eq ptr %.sroa.014.1210, %i.hm      ; 2 uses
  %.sroa.014.1.idx = select i1 %i.in, i64 0, i64 72
  %.sroa.014.1 = getelementptr inbounds nuw i8, ptr %.sroa.014.1210, i64 %.sroa.014.1.idx
  br i1 %i.in, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"
  %i.io = icmp eq i64 %.sroa.075.0236, %.val27
  br i1 %i.io, label %._crit_edge228, label %.lr.ph227.preheader

.lr.ph227.preheader:                              ; preds = %._crit_edge
  %.sroa.015.1217 = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61"
  %.sroa.015.1225 = phi ptr [ %.sroa.015.1, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %.sroa.015.1217, %.lr.ph227.preheader ] ; 3 uses
  %.sroa.015.0224 = phi ptr [ %.sroa.015.1225, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %i.hm, %.lr.ph227.preheader ] ; 7 uses
  %.sroa.12109.0221 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i64, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %.sroa.12109.1, %.lr.ph227.preheader ] ; 2 uses
  %.sroa.26123.0218 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i67, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %.sroa.26123.1, %.lr.ph227.preheader ] ; 2 uses
  %i.ip = phi <2 x double> [ %i.je, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %i.hu, %.lr.ph227.preheader ] ; 2 uses
  %i.iq = phi <2 x double> [ %i.jb, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %i.hv, %.lr.ph227.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43162)
  %i.ir = load i64, ptr %.sroa.015.0224, align 8, !range !52, !alias.scope !43163, !noalias !43162, !noundef !16
  %.not.i60 = icmp eq i64 %i.ir, -9223372036854775808
  br i1 %.not.i60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph227
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 48
  %.sroa.11155.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 64
  %.sroa.11155.24.copyload = load double, ptr %.sroa.11155.24..sroa_idx, align 8, !alias.scope !43164
  %i.iu = load <2 x double>, ptr %i.it, align 8, !alias.scope !43164
  %i.iv = load <2 x double>, ptr %i.is, align 8, !alias.scope !43164
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 40
  %.sroa.6147.0.copyload = load double, ptr %.sroa.6147.0..sroa_idx, align 8, !alias.scope !43164
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61"

bb.aj:                                            ; preds = %.lr.ph227
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 8
  %i.ix = load <2 x double>, ptr %i.iw, align 8, !alias.scope !43165 ; 2 uses
  %.sroa.6147.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 24
  %.sroa.6147.0.copyload149 = load double, ptr %.sroa.6147.0..sroa_idx148, align 8, !alias.scope !43165 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61": ; preds = %bb.ai, %bb.aj
  %.sroa.11155.0 = phi double [ %.sroa.6147.0.copyload149, %bb.aj ], [ %.sroa.11155.24.copyload, %bb.ai ] ; 2 uses
  %.sroa.6147.0 = phi double [ %.sroa.6147.0.copyload149, %bb.aj ], [ %.sroa.6147.0.copyload, %bb.ai ] ; 2 uses
  %i.iy = phi <2 x double> [ %i.ix, %bb.aj ], [ %i.iu, %bb.ai ] ; 2 uses
  %i.iz = phi <2 x double> [ %i.ix, %bb.aj ], [ %i.iv, %bb.ai ] ; 2 uses
  %i.ja = fcmp olt <2 x double> %i.iq, %i.iz
  %i.jb = select <2 x i1> %i.ja, <2 x double> %i.iq, <2 x double> %i.iz ; 2 uses
  %i.jc = fcmp olt double %.sroa.12109.0221, %.sroa.6147.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i64 = select i1 %i.jc, double %.sroa.12109.0221, double %.sroa.6147.0 ; 2 uses
  %i.jd = fcmp ogt <2 x double> %i.ip, %i.iy
  %i.je = select <2 x i1> %i.jd, <2 x double> %i.ip, <2 x double> %i.iy ; 2 uses
  %i.jf = fcmp ogt double %.sroa.26123.0218, %.sroa.11155.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i67 = select i1 %i.jf, double %.sroa.26123.0218, double %.sroa.11155.0 ; 2 uses
  %i.jg = icmp eq ptr %.sroa.015.1225, %i.o       ; 2 uses
  %.sroa.015.1.idx = select i1 %i.jg, i64 0, i64 72
  %.sroa.015.1 = getelementptr inbounds nuw i8, ptr %.sroa.015.1225, i64 %.sroa.015.1.idx
  br i1 %i.jg, label %._crit_edge228, label %.lr.ph227

._crit_edge228:                                   ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61", %._crit_edge
  %.sroa.26123.0.lcssa = phi double [ %.sroa.26123.1, %._crit_edge ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i67, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %.sroa.12109.0.lcssa = phi double [ %.sroa.12109.1, %._crit_edge ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i64, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %i.jh = phi <2 x double> [ %i.hu, %._crit_edge ], [ %i.je, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %i.ji = phi <2 x double> [ %i.hv, %._crit_edge ], [ %i.jb, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %i.jj = fcmp ogt double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, %.sroa.12109.0.lcssa
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i70 = select i1 %i.jj, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, double %.sroa.12109.0.lcssa
  %i.jk = fcmp olt double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, %.sroa.26123.0.lcssa
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i4.i = select i1 %i.jk, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, double %.sroa.26123.0.lcssa
  %i.jl = fsub double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i4.i, %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i70 ; 2 uses
  %i.jm = fcmp ogt <2 x double> %i.ii, %i.ji
  %i.jn = select <2 x i1> %i.jm, <2 x double> %i.ii, <2 x double> %i.ji
  %i.jo = fcmp olt <2 x double> %i.il, %i.jh
  %i.jp = select <2 x i1> %i.jo, <2 x double> %i.il, <2 x double> %i.jh
  %i.jq = fsub <2 x double> %i.jp, %i.jn          ; 2 uses
  %i.jr = fcmp ogt <2 x double> %i.jq, zeroinitializer
  %i.js = select <2 x i1> %i.jr, <2 x double> %i.jq, <2 x double> zeroinitializer ; 2 uses
  %shift265 = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fmul <2 x double> %shift265, %i.js
  %i.jt = extractelement <2 x double> %foldExtExtBinop266, i64 0
  %i.ju = fcmp ogt double %i.jl, 0.000000e+00
  %..i.i.2.i.i.i.i = select i1 %i.ju, double %i.jl, double 0.000000e+00
  %i.jv = fmul double %..i.i.2.i.i.i.i, %i.jt     ; 3 uses
  %i.jw = fsub <2 x double> %i.il, %i.ii          ; 2 uses
  %i.jx = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %.sroa.26123.0.lcssa, i64 1
  %i.jz = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %.sroa.12109.0.lcssa, i64 1
  %i.kb = fsub <2 x double> %i.jy, %i.ka          ; 2 uses
  %i.kc = fcmp ogt <2 x double> %i.jw, zeroinitializer
  %i.kd = select <2 x i1> %i.kc, <2 x double> %i.jw, <2 x double> zeroinitializer ; 2 uses
  %i.ke = fsub <2 x double> %i.jh, %i.ji          ; 2 uses
  %i.kf = fcmp ogt <2 x double> %i.ke, zeroinitializer
  %i.kg = select <2 x i1> %i.kf, <2 x double> %i.ke, <2 x double> zeroinitializer ; 2 uses
  %i.kh = shufflevector <2 x double> %i.kd, <2 x double> %i.kg, <2 x i32> <i32 1, i32 3>
  %i.ki = shufflevector <2 x double> %i.kd, <2 x double> %i.kg, <2 x i32> <i32 0, i32 2>
  %i.kj = fmul <2 x double> %i.kh, %i.ki
  %i.kk = fcmp ogt <2 x double> %i.kb, zeroinitializer
  %i.kl = select <2 x i1> %i.kk, <2 x double> %i.kb, <2 x double> zeroinitializer
  %i.km = fmul <2 x double> %i.kl, %i.kj          ; 2 uses
  %shift268 = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %i.km, %shift268
  %3 = extractelement <2 x double> %foldExtExtBinop269, i64 0 ; 2 uses
  %i.kn = fcmp oeq double %i.jv, %.sroa.0.0180238
  %i.ko = fcmp olt double %i.jv, %.sroa.0.0180238
  %i.kp = fcmp olt double %3, %.sroa.5.0237
  %.sroa.08.0 = select i1 %i.kn, i1 %i.kp, i1 %i.ko
  %i.kq = icmp eq i64 %.sroa.075.0236, 3
  %or.cond = or i1 %i.kq, %.sroa.08.0             ; 3 uses
  %.sroa.5.1 = select i1 %or.cond, double %3, double %.sroa.5.0237
  %.sroa.0.1181 = select i1 %or.cond, double %i.jv, double %.sroa.0.0180238
  %.sroa.0.1 = select i1 %or.cond, i64 %.sroa.075.0236, i64 %.sroa.0.0239 ; 2 uses
  %.not.i28 = icmp ugt i64 %spec.select189, %i.et
  %or.cond192 = select i1 %i.eu, i1 true, i1 %.not.i28
  br i1 %or.cond192, label %._crit_edge241, label %.lr.ph240
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5rstar9algorithm7removal35DrainIterator$LT$T$C$R$C$Params$GT$8pop_node17h7a3286da7bf1c546E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @905) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1                     ; 4 uses
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %1, align 8, !range !17, !noundef !16
  %i.h = icmp samesign ult i64 %i.f, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.k = icmp ult i64 %i.d, 104811045873349727
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.f ; 7 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.not = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, %bb.c
  %.not16 = icmp eq i64 %i.f, 0
  br i1 %.not16, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !16 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.p, 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"
  %.sroa.02.023.i = phi ptr [ %i.u, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ %i.n, %bb.e ] ; 9 uses
  %.sroa.9.020.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ f0x7FEFFFFFFFFFFFFF, %bb.e ] ; 2 uses
  %.sroa.18.017.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ f0xFFEFFFFFFFFFFFFF, %bb.e ] ; 2 uses
  %i.s = phi <2 x double> [ %i.ag, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.e ] ; 2 uses
  %i.t = phi <2 x double> [ %i.aj, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43190)
  %i.v = load i64, ptr %.sroa.02.023.i, align 8, !range !52, !alias.scope !43191, !noalias !43192, !noundef !16
  %.not.i.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 48
  %i.y = load <2 x double>, ptr %i.x, align 8, !alias.scope !43193, !noalias !43194
  %.sroa.11.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 64
  %.sroa.11.24.copyload.i = load double, ptr %.sroa.11.24..sroa_idx.i, align 8, !alias.scope !43193, !noalias !43194
  %i.z = load <2 x double>, ptr %i.w, align 8, !alias.scope !43193, !noalias !43194
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 40
  %.sroa.69.0.copyload.i = load double, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !43193, !noalias !43194
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"

bb.g:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 16
  %.sroa.5.0.copyload8.i = load double, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !43195, !noalias !43194
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !alias.scope !43195, !noalias !43194 ; 2 uses
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %.sroa.69.0.copyload11.i = load double, ptr %.sroa.69.0..sroa_idx10.i, align 8, !alias.scope !43195, !noalias !43194 ; 2 uses
  %i.ac = insertelement <2 x double> %i.ab, double %.sroa.5.0.copyload8.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i": ; preds = %bb.g, %bb.f
  %.sroa.11.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.g ], [ %.sroa.11.24.copyload.i, %bb.f ] ; 2 uses
  %.sroa.69.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.g ], [ %.sroa.69.0.copyload.i, %bb.f ] ; 2 uses
  %i.ad = phi <2 x double> [ %i.ab, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %i.ae = phi <2 x double> [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.af = fcmp olt <2 x double> %i.s, %i.ad
  %i.ag = select <2 x i1> %i.af, <2 x double> %i.s, <2 x double> %i.ad ; 2 uses
  %i.ah = fcmp olt double %.sroa.9.020.i, %.sroa.69.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i = select i1 %i.ah, double %.sroa.9.020.i, double %.sroa.69.0.i ; 2 uses
  %i.ai = fcmp ogt <2 x double> %i.t, %i.ae
  %i.aj = select <2 x i1> %i.ai, <2 x double> %i.t, <2 x double> %i.ae ; 2 uses
  %i.ak = fcmp ogt double %.sroa.18.017.i, %.sroa.11.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i = select i1 %i.ak, double %.sroa.18.017.i, double %.sroa.11.0.i ; 2 uses
  %i.al = icmp eq ptr %i.u, %i.q
  br i1 %i.al, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i", %bb.e
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.e ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.e ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.am = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.e ], [ %i.ag, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.an = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.e ], [ %i.aj, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x double> %i.am, ptr %i.ao, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %.sroa.9.0.lcssa.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <2 x double> %i.an, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %.sroa.18.0.lcssa.i, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.49.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  br label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit"

bb.i:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.l, i64 -16     ; 3 uses
  %i.aq = getelementptr i8, ptr %i.l, i64 -8      ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !16
  %i.as = add i64 %i.ar, %.sroa.49.0.copyload
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !16 ; 2 uses
  %i.av = icmp ult i64 %i.au, 128102389400760776
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.k, !inline_history !99

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !range !17, !noundef !16 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i, 0
  br i1 %i.ay, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.az, align 8, !nonnull !16, !noundef !16
  %i.ba = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43196, !inline_history !99
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i = load i64, ptr %i.b, align 8, !range !17, !noundef !16 ; 2 uses
  %i.bb = icmp eq i64 %.val.i, 0
  br i1 %i.bb, label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.bc, align 8, !nonnull !16, !noundef !16
  %i.bd = mul nuw i64 %.val.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43196, !inline_history !99
  br label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit"

common.resume:                                    ; preds = %bb.q, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ %i.bj, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %i.l, i64 -88     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.l, i64 -72     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !43197, !noalias !43198, !noundef !16 ; 3 uses
  %i.bh = load i64, ptr %i.be, align 8, !range !17, !alias.scope !43197, !noalias !43198, !noundef !16
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a19f77da45ba799E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @906)
          to label %bb.s unwind label %bb.q, !noalias !43199

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.b) #67
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !43199
  unreachable
end_hunk_1
begin_hunk_2_@"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h90f15cc8560a1477E"

; Function Attrs: nonlazybind uwtable
declare void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4obkv6varint15varint_decode3217h75f985768505db00E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN10serde_json5value4from85_$LT$impl$u20$core..convert..From$LT$f32$GT$$u20$for$u20$serde_json..value..Value$GT$4from17h6295a4c4db1700e4E"(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), float noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h190ab4ac9c2ac827E"(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17he39bb96de29f0249E"(ptr noalias noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN65_$LT$rustls..msgs..enums..HpkeKdf$u20$as$u20$core..fmt..Debug$GT$3fmt17h00ba56db68fc4090E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter9debug_set17h7050737cdc375410E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders8DebugSet6finish17hf1e1ce2970196d3eE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN12aho_corasick11ahocorasick11AhoCorasick12patterns_len17h7d65da9dd74c7a70E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN8fastrand10global_rng11random_seed17h4b5a2dc88f0ebb58E() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std4path4Path11is_absolute17hf19889a9c7aed189E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env11current_dir17hc9190a9b245afa63E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN8tempfile4util7tmpname17h409a726b957fead4E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN8tempfile3dir6create17h97cdd8455c4d3f4fE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$core..convert..Infallible$GT$$GT$4from17h702bda60553db096E"(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i16 @"_ZN7fuzzers1_69_$LT$impl$u20$arbitrary..Arbitrary$u20$for$u20$fuzzers..Operation$GT$9arbitrary17h5453f5a8008a0bb9E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17h264c5df42b061371E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN4heed6cursor8RwCursor11del_current17hf8f6939c3d3ee09eE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder11FrozenItems3get17h8232a006ae0a176bE(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$22explode_level_zero_geo17hcf0ca64506284c6eE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i32 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(152), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder18get_children_cells17h56839557153c4de8E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i64 noundef range(i64 1, 0)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops86_$LT$impl$u20$core..ops..bit..BitOr$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$5bitor17h843290a2aaa5c578E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap8inherent79_$LT$impl$u20$core..clone..Clone$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$5clone17h4debcbbb2170dfb6E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder14get_cell_shape17h4b4d0174ccd9b0d8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i48 @"_ZN139_$LT$zerometry..Zerometry$u20$as$u20$zerometry..relation..RelationBetweenShapes$LT$geo_types..geometry..multi_polygon..MultiPolygon$GT$$GT$8relation17h59cb8aadfa6cb0b1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i56) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$cellulite..metadata..Version$u20$as$u20$core..default..Default$GT$7default17hcacaaff74eccc834E"(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite9Cellulite11set_version17h1d01d6968d680604E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_ZN3h3o5index4cell9CellIndex13new_unchecked17h23669f4b7fb1e7a1E(i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN7roaring6bitmap3cmp48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$11is_disjoint17ha348ac29f04de799E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$23does_cell_have_children17h84537149144d1b60E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops87_$LT$impl$u20$core..ops..bit..BitAnd$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$6bitand17h4de24adb76117199E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends27linux_android_with_fallback17use_file_fallback17hd4fde6409425fab5E(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends8use_file5utils9get_errno9get_errno17h698397144bad8d62E() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_ZN9getrandom5error5Error10from_errno17hf4b4f1ca7ac401b4E(i32 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #54

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #54

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3174008c6fba5935E"(ptr noalias noundef align 8 dereferenceable(40), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #43

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6548e87464b6da1dE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #43

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #43

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hed6d773e1d62b7f4E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #43

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9f4a91183dce6d2fE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #43

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #62 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZN13fuzz_indexing4main17he4885dfa76dd41d8E, ptr %i.a, align 8
  %i.c = call noundef i64 @_ZN3std2rt19lang_start_internal17h6ba36b077a531782E(ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @359, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #49

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #49

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #54

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #49

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #46 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #51 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #55 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #60 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #61 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #62 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #64 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #65 = { nounwind }
attributes #66 = { noreturn }
attributes #67 = { cold }
attributes #68 = { cold noreturn nounwind }
attributes #69 = { noreturn nounwind }
attributes #70 = { "function-inline-cost-multiplier"="2" }
attributes #71 = { "function-inline-cost-multiplier"="4" }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{ptr @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45916aa2df431b27E", null}
!4 = distinct !{null}
!5 = distinct !{ptr @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE", null}
!6 = distinct !{ptr @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE", null, ptr @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc8e0d5fe43dc22c1E"}
!7 = distinct !{null, ptr @"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E"}
!8 = distinct !{null}
!9 = distinct !{ptr @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE", null, ptr @"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E"}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 2, !"RtLibUseGOT", i32 1}
!15 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!16 = !{}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!21 = !{i64 8}
!22 = !{i64 1}
!23 = !{i8 0, i8 3}
!24 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!25 = !{i64 0, i64 3}
!26 = !{i64 0, i64 99}
!27 = !{i64 0, i64 2}
!28 = !{i8 0, i8 6}
!29 = !{i8 0, i8 5}
!30 = !{i8 0, i8 4}
!31 = !{i16 0, i16 3}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = !{i8 0, i8 2}
!34 = !{!"branch_weights", i32 2002, i32 2000}
!35 = !{i64 1, i64 0}
!36 = !{i64 1, i64 -9223372036854775807}
!37 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!38 = !{i64 0, i64 15}
!39 = !{i64 0, i64 12}
!40 = !{i64 0, i64 98}
!41 = !{!"branch_weights", i32 1, i32 4001}
!42 = !{i64 0, i64 4}
!43 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!44 = !{!"branch_weights", i32 4000000, i32 4001}
!45 = !{!"branch_weights", i32 -2147483648, i32 0}
!46 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2001, i32 2000}
!47 = !{!"branch_weights", i32 4001, i32 4000000}
!48 = !{!"branch_weights", i32 1073205, i32 2146410443}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{i64 0, i64 -9223372036854775803}
!51 = !{i64 0, i64 -9223372036854775805}
!52 = !{i64 0, i64 -9223372036854775807}
!53 = !{i64 0, i64 -9223372036854775802}
!54 = !{i64 0, i64 8}
!55 = !{!"branch_weights", i32 1, i32 1999}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{i32 0, i32 4}
!58 = !{i8 0, i8 17}
!59 = !{i64 0, i64 -9223372036854775806}
!60 = !{i32 0, i32 6}
!61 = !{i64 0, i64 100}
!62 = !{!"branch_weights", i32 2146410443, i32 1073205}
!63 = !{i64 0, i64 25}
!64 = !{i64 0, i64 101}
!65 = !{i32 0, i32 2}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{i16 0, i16 2}
!69 = !{i64 0, i64 -9223372036854775796}
!70 = !{i64 0, i64 97}
!71 = !{i32 0, i32 -1}
!72 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!73 = !{i8 0, i8 42}
!74 = !{ptr @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE"}
!75 = !{i64 4}
!76 = !{!"branch_weights", i32 2142801693, i32 4681955}
!77 = !{!"branch_weights", !"expected", i32 2344333, i32 2145139315}
!78 = !{i64 12284830535099610}
!79 = !{i64 0, i64 95}
!80 = !{i64 2}
!81 = !{i64 0, i64 -9223372036854775786}
!82 = !{i64 0, i64 14}
!83 = !{i8 0, i8 22}
!84 = !{i64 0, i64 -9223372036854775797}
!85 = !{i64 0, i64 -9223372036854775783}
!86 = !{i64 0, i64 -9223372036854775799}
!87 = !{i8 0, i8 7}
!88 = !{i64 0, i64 7}
!89 = !{i64 0, i64 11}
!90 = !{i64 0, i64 6}
!91 = !{i64 0, i64 -9223372036854775800}
!92 = !{i64 0, i64 -9223372036854775795}
!93 = !{i32 0, i32 5}
!94 = !{i64 0, i64 -9223372036854775764}
!95 = !{i64 0, i64 -9223372036854775798}
!96 = !{i32 0, i32 3}
!97 = !{i64 0, i64 -9223372036854775801}
!98 = !{i16 0, i16 23}
!99 = !{ptr @"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E"}
!100 = !{i64 0, i64 -9223372036854775804}
!101 = !{i8 0, i8 45}
!102 = !{i8 0, i8 11}
!103 = !{i64 0, i64 10}
!104 = !{i64 0, i64 29}
!105 = !{i64 0, i64 5}
!106 = !{i64 0, i64 38}
!107 = !{i64 0, i64 -9223372036854775765}
!108 = !{i16 0, i16 22}
!109 = !{i8 0, i8 35}
!110 = !{!"branch_weights", i32 4001, i32 1}
!111 = !{!"branch_weights", i32 1477132837, i32 670350811}
!112 = !{i64 0, i64 -9223372036854775785}
!113 = !{!"branch_weights", !"expected", i32 2145302617, i32 2181031}
!114 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!115 = !{ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h595a3d1826d69d3dE"}
!116 = !{ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h123622515fb9e5e7E"}
!117 = !{ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3c9363a872826E"}
!118 = !{ptr @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45916aa2df431b27E"}
!119 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!120 = distinct !{!120, !"_ZN10serde_json3ser18format_escaped_str17h34582a6e24a6c228E"}
!121 = distinct !{!121, !120, !"_ZN10serde_json3ser18format_escaped_str17h34582a6e24a6c228E: argument 0"}
!122 = distinct !{!122, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h7f05dbe1df911a1fE"}
!123 = distinct !{!123, !122, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h7f05dbe1df911a1fE: argument 0"}
end_hunk_2
