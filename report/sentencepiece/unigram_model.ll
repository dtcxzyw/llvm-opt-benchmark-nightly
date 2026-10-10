Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1860
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.prol ], [ %i.q, %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i ]
  store i32 -1, ptr %.08.i.i.i.i.i.prol, align 4, !tbaa !456
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !457
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i32 -1, ptr %i.s, align 4, !tbaa !458
  %i.t = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !445

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i
  %.08.i.i.i.i.i.unr = phi ptr [ %i.q, %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.n, %_ZNSt12_Vector_baseIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.v = icmp ult i64 %2, 3
  br i1 %i.v, label %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i.i, align 4, !tbaa !456
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !457
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i32 -1, ptr %i.x, align 4, !tbaa !458
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 12
  store i32 -1, ptr %i.y, align 4, !tbaa !456
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !457
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 20
  store i32 -1, ptr %i.aa, align 4, !tbaa !458
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 -1, ptr %i.ab, align 4, !tbaa !456
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !457
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store i32 -1, ptr %i.ad, align 4, !tbaa !458
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 36
  store i32 -1, ptr %i.ae, align 4, !tbaa !456
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !457
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 44
  store i32 -1, ptr %i.ag, align 4, !tbaa !458
  %i.ah = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !446

_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %i.n
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit

_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit: ; preds = %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.loopexit, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %.sroa.15.0 = phi i64 [ 0, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.ak, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.loopexit ] ; 2 uses
  %.sroa.0170.0 = phi ptr [ null, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.q, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit.loopexit ] ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit, %bb.v
  %.089230 = phi i64 [ 0, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit ], [ %.pre-phi264, %bb.v ] ; 13 uses
  %.0181229 = phi i64 [ 0, %_ZNSt6vectorIZNK13sentencepiece7unigram5Model15EncodeOptimizedESt17basic_string_viewIcSt11char_traitsIcEEE12BestPathNodeSaIS7_EEC2EmRKS8_.exit ], [ %.4185, %bb.v ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0170.0, i64 %.089230
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !457 ; 3 uses
  %i.ar = call float @llvm.fabs.f32(float %i.aq)
  %or.cond = fcmp ogt float %i.ar, 1.000000e+05
  br i1 %or.cond, label %.preheader, label %.loopexit205

.preheader:                                       ; preds = %bb.f
  %.not222 = icmp ugt i64 %.089230, %.0181229
  br i1 %.not222, label %.loopexit205, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.087223 = phi i64 [ %i.ba, %bb.i ], [ %.089230, %.preheader ] ; 4 uses
  %i.as = icmp eq i64 %.087223, %.089230
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0170.0, i64 %.087223
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !458
  %.not101 = icmp eq i32 %i.av, -1
  br i1 %.not101, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0170.0, i64 %.087223
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !457
  %i.az = fsub float %i.ay, %i.aq
  store float %i.az, ptr %i.ax, align 4, !tbaa !457
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ba = add i64 %.087223, 1                     ; 2 uses
  %.not = icmp ugt i64 %i.ba, %.0181229
  br i1 %.not, label %.loopexit205, label %.lr.ph, !llvm.loop !447

.loopexit205:                                     ; preds = %bb.i, %.preheader, %bb.f
  %.088 = phi float [ %i.aq, %bb.f ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %.089230
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !80
  %i.bd = lshr i8 %i.bc, 4
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @.str.22, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !80
  %i.bh = sext i8 %i.bg to i32
  %i.bi = sub nuw i64 %2, %.089230
  %i.bj = trunc i64 %i.bi to i32
  %.sroa.speculated140 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bh) ; 3 uses
  %i.bk = icmp ult i64 %.089230, %2
  br i1 %i.bk, label %.preheader39.i.lr.ph, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread

.preheader39.i.lr.ph:                             ; preds = %.loopexit205
  %i.bl = trunc i64 %.089230 to i32
  %i.bm = sext i32 %.sroa.speculated140 to i64
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.i.lr.ph, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit
  %.082227 = phi i8 [ 0, %.preheader39.i.lr.ph ], [ %.385, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit ] ; 6 uses
  %.0226 = phi i64 [ %.089230, %.preheader39.i.lr.ph ], [ %i.cg, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit ] ; 2 uses
  %.0176225 = phi i64 [ 0, %.preheader39.i.lr.ph ], [ %i.cc, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit ] ; 2 uses
  %.1182224 = phi i64 [ %.0181229, %.preheader39.i.lr.ph ], [ %.2183, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit ] ; 5 uses
  %i.bn = load ptr, ptr %i.al, align 8, !tbaa !174
  %i.bo = trunc nuw nsw i64 %.0176225 to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !177 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.0176225
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !128 ; 2 uses
  %i.bt = lshr i32 %i.bs, 10
  %i.bu = lshr i32 %i.bs, 6
  %i.bv = and i32 %i.bu, 8
  %i.bw = shl nuw nsw i32 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %.0226
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !80
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = xor i32 %i.bw, %i.bo
  %i.cb = xor i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !128 ; 4 uses
  %i.cf = and i32 %i.ce, -2147483393
  %.not30.i = icmp eq i32 %i.cf, %i.bz
  br i1 %.not30.i, label %.loopexit.i, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196

.loopexit.i:                                      ; preds = %.preheader39.i
  %i.cg = add nuw i64 %.0226, 1                   ; 5 uses
  %i.ch = and i32 %i.ce, 256
  %.not37.i = icmp eq i32 %i.ch, 0
  br i1 %.not37.i, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit, label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit

bb.k:                                             ; preds = %.loopexit.i
  %i.cj = lshr i32 %i.ce, 10
  %i.ck = lshr i32 %i.ce, 6
  %i.cl = and i32 %i.ck, 8
  %i.cm = shl nuw nsw i32 %i.cj, %i.cl
  %i.cn = xor i32 %i.cm, %i.cb
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !128
  %i.cr = and i32 %i.cq, 2147483647               ; 3 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.cw = icmp slt i32 %i.cr, %i.cv
  br i1 %i.cw, label %bb.m, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !187
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = zext nneg i32 %i.cr to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !188 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 60
  %i.df = load i32, ptr %i.de, align 4, !tbaa !200 ; 2 uses
  %i.dg = icmp eq i32 %i.df, 5
  br i1 %i.dg, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit, label %bb.n, !llvm.loop !448

bb.n:                                             ; preds = %bb.m
  %.sroa.speculated153 = call i64 @llvm.umax.i64(i64 %.1182224, i64 %i.cg)
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0170.0, i64 %i.cg ; 4 uses
  %i.di = sub i64 %i.cg, %.089230                 ; 2 uses
  %i.dj = icmp eq i32 %i.df, 4
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dk = trunc i64 %i.di to i32
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = sitofp i32 %i.dl to double
  %i.dn = fmul nnan double %i.dm, 1.000000e-01
  %i.do = fptrunc double %i.dn to float
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !201
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dr = phi float [ %i.do, %bb.o ], [ %i.dq, %bb.p ]
  %i.ds = fadd float %.088, %i.dr                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !458
  %i.dv = icmp eq i32 %i.du, -1
  br i1 %i.dv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !457
  %i.dy = fcmp ogt float %i.ds, %i.dx
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store float %i.ds, ptr %i.dz, align 4, !tbaa !457
  store i32 %i.bl, ptr %i.dt, align 4, !tbaa !458
  store i32 %i.cr, ptr %i.dh, align 4, !tbaa !456
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ea = trunc nuw i8 %.082227 to i1
  %i.eb = icmp ne i64 %i.di, %i.bm
  %or.cond104.not = select i1 %i.ea, i1 true, i1 %i.eb
  %.183 = select i1 %or.cond104.not, i8 %.082227, i8 1
  br label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit

_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit: ; preds = %.loopexit.i, %bb.l, %bb.t, %bb.m
  %.2183 = phi i64 [ %.1182224, %.loopexit.i ], [ %.1182224, %bb.m ], [ %.sroa.speculated153, %bb.t ], [ %.1182224, %bb.l ] ; 2 uses
  %.385 = phi i8 [ %.082227, %.loopexit.i ], [ %.082227, %bb.m ], [ %.183, %bb.t ], [ %.082227, %bb.l ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %2
  br i1 %exitcond.not, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196, label %.preheader39.i

_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196: ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit, %.preheader39.i
  %.1182221.ph = phi i64 [ %.2183, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit ], [ %.1182224, %.preheader39.i ] ; 2 uses
  %.082218.ph = phi i8 [ %.385, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit ], [ %.082227, %.preheader39.i ]
  %i.ec = trunc nuw i8 %.082218.ph to i1
  br i1 %i.ec, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196._crit_edge, label %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread

_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196._crit_edge: ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196
  %.pre262 = sext i32 %.sroa.speculated140 to i64
  %.pre263 = add i64 %.089230, %.pre262
  br label %bb.v

_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread: ; preds = %.loopexit205, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196
  %.1182221284 = phi i64 [ %.1182221.ph, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196 ], [ %.0181229, %.loopexit205 ]
  %i.ed = sext i32 %.sroa.speculated140 to i64
  %i.ee = add i64 %.089230, %i.ed                 ; 4 uses
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.1182221284, i64 %i.ee) ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0170.0, i64 %i.ee ; 3 uses
  %i.eg = fadd float %i.m, %.088                  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !458
  %i.ej = icmp eq i32 %i.ei, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4
  %i.em = fcmp ogt float %i.eg, %i.el
  %or.cond107 = select i1 %i.ej, i1 true, i1 %i.em
  br i1 %or.cond107, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread
  store float %i.eg, ptr %i.ek, align 4, !tbaa !457
  %i.en = trunc i64 %.089230 to i32
  store i32 %i.en, ptr %i.eh, align 4, !tbaa !458
  %i.eo = load i32, ptr %i.an, align 8, !tbaa !202
  store i32 %i.eo, ptr %i.ef, align 4, !tbaa !456
  br label %bb.v

bb.v:                                             ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196._crit_edge, %bb.u, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread
  %.pre-phi264 = phi i64 [ %.pre263, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196._crit_edge ], [ %i.ee, %bb.u ], [ %i.ee, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread ] ; 2 uses
  %.4185 = phi i64 [ %.1182221.ph, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196._crit_edge ], [ %.sroa.speculated, %bb.u ], [ %.sroa.speculated, %_ZNK5Darts15DoubleArrayImplIvvivE8traverseEPKcRmS4_m.exit.thread196.thread ]
  %i.ep = icmp ult i64 %.pre-phi264, %2
  br i1 %i.ep, label %bb.f, label %bb.w, !llvm.loop !449

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.eq = lshr i64 %2, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %i.es = icmp ugt i64 %2, 1537228672809129299
  br i1 %i.es, label %bb.x, label %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc122 unwind label %.thread

.noexc122:                                        ; preds = %bb.x
  unreachable

_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.eu = mul nuw nsw i64 %i.er, 24
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #32
          to label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit unwind label %.thread ; 6 uses

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %0, align 8, !tbaa !208
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !207
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.er ; 3 uses
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !234
  %i.ey = trunc i64 %2 to i32                     ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph242, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

.lr.ph242:                                        ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph242, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJS4_RKiEEERS5_DpOT_.exit
  %i.fb = phi ptr [ %i.ev, %.lr.ph242 ], [ %i.gk, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJS4_RKiEEERS5_DpOT_.exit ] ; 9 uses
  %.080241 = phi i32 [ %i.ey, %.lr.ph242 ], [ %i.gj, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJS4_RKiEEERS5_DpOT_.exit ] ; 2 uses
  %i.fc = phi ptr [ %i.ex, %.lr.ph242 ], [ %i.gm, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJS4_RKiEEERS5_DpOT_.exit ] ; 6 uses
  %i.fd = phi ptr [ %i.ev, %.lr.ph242 ], [ %i.gl, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJS4_RKiEEERS5_DpOT_.exit ] ; 11 uses
  %i.fe = zext nneg i32 %.080241 to i64
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0170.0, i64 %i.fe ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !458 ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 4 uses
  %i.fj = icmp ult i64 %2, %i.fi
  br i1 %i.fj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr %i.fc, ptr %i.et, align 8
  store ptr %i.fd, ptr %0, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %i.fi, i64 noundef %2) #33
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.fk = sub nsw i32 %.080241, %i.fh
  %i.fl = sext i32 %i.fk to i64
  %i.fm = sub nuw nsw i64 %2, %i.fi
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.fm, i64 %i.fl) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 %i.fi ; 2 uses
  %.not.i125 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i125, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %.sroa.speculated.i, ptr %i.fb, align 8, !tbaa !79
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fn, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !71
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !128
  store i32 %i.fp, ptr %i.fo, align 8, !tbaa !210
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  store ptr %i.fq, ptr %i.fa, align 8, !tbaa !207
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJS4_RKiEEERS5_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fr = ptrtoint ptr %i.fb to i64
  %i.fs = ptrtoint ptr %i.fd to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 4 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.ad, label %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.fc, ptr %i.et, align 8
  store ptr %i.fd, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc129 unwind label %.loopexit.split-lp

.noexc129:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.fv = sdiv exact i64 %i.ft, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 384307168202282325)
  %i.fz = select i1 %i.fx, i64 384307168202282325, i64 %i.fy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ga = mul nuw nsw i64 %i.fz, 24
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #32
          to label %.noexc130 unwind label %.loopexit ; 5 uses

.noexc130:                                        ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft ; 3 uses
  store i64 %.sroa.speculated.i, ptr %i.gc, align 8, !tbaa !79
  %.sroa.6.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
end_hunk_0
