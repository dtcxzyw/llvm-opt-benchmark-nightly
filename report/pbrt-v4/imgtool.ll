Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@"_ZNSt17_Function_handlerIFvllEZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E9_M_invokeERKSt9_Any_dataOlSF_":bb.a
  %i.au = ashr exact i64 %i.ap, 30
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !122
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.au, i64 noundef 4), !inline_history !2855 ; 14 uses
  %.pre.pre.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !192 ; 4 uses
  %.pr.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !193 ; 11 uses
  %.not15.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %iter.check120

iter.check120:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i
  %i.az = ptrtoaddr ptr %i.ay to i64
  %.not.i12.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i.i, null
  %i.ba = select i1 %.not.i12.i.i.i.i.i.i, ptr %i.i, ptr %.pre.pre.i.i.i.i.i.i ; 12 uses
  %min.iters.check105 = icmp ult i64 %.pr.i.i.i.i.i, 4
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.az
  %diff.check = icmp ugt i64 %i.bc, -128
  %or.cond = select i1 %min.iters.check105, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph121.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check120
  %min.iters.check107 = icmp ult i64 %.pr.i.i.i.i.i, 32
  br i1 %min.iters.check107, label %vec.epilog.ph124, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.bd = and i64 %.pr.i.i.i.i.i, 28
  %n.vec109 = and i64 %.pr.i.i.i.i.i, -32         ; 4 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.ph108, %vector.body110
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index111 ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index111 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %wide.load112.a = load <8 x float>, ptr %i.bf, align 4, !tbaa !66
  %wide.load113 = load <8 x float>, ptr %i.bg, align 4, !tbaa !66
  %wide.load114 = load <8 x float>, ptr %i.bh, align 4, !tbaa !66
  %wide.load115 = load <8 x float>, ptr %i.bi, align 4, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  store <8 x float> %wide.load112.a, ptr %i.be, align 4, !tbaa !66
  store <8 x float> %wide.load113, ptr %i.bj, align 4, !tbaa !66
  store <8 x float> %wide.load114, ptr %i.bk, align 4, !tbaa !66
  store <8 x float> %wide.load115, ptr %i.bl, align 4, !tbaa !66
  %index.next116 = add nuw i64 %index111, 32      ; 2 uses
  %i.bm = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.bm, label %middle.block117, label %vector.body110, !llvm.loop !2856

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %.pr.i.i.i.i.i, %n.vec109
  br i1 %cmp.n118, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.iter.check122

vec.epilog.iter.check122:                         ; preds = %middle.block117
  %min.epilog.iters.check123 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check123, label %vec.epilog.scalar.ph121.preheader, label %vec.epilog.ph124, !prof !199

vec.epilog.ph124:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check122
  %vec.epilog.resume.val119 = phi i64 [ %n.vec109, %vec.epilog.iter.check122 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec125 = and i64 %.pr.i.i.i.i.i, -4          ; 3 uses
  br label %vec.epilog.vector.body126

vec.epilog.vector.body126:                        ; preds = %vec.epilog.vector.body126, %vec.epilog.ph124
  %index127 = phi i64 [ %vec.epilog.resume.val119, %vec.epilog.ph124 ], [ %index.next129, %vec.epilog.vector.body126 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index127
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index127
  %wide.load128 = load <4 x float>, ptr %i.bo, align 4, !tbaa !66
  store <4 x float> %wide.load128, ptr %i.bn, align 4, !tbaa !66
  %index.next129 = add nuw i64 %index127, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next129, %n.vec125
  br i1 %i.bp, label %vec.epilog.middle.block130, label %vec.epilog.vector.body126, !llvm.loop !2857

vec.epilog.middle.block130:                       ; preds = %vec.epilog.vector.body126
  %cmp.n131 = icmp eq i64 %.pr.i.i.i.i.i, %n.vec125
  br i1 %cmp.n131, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph121.preheader

vec.epilog.scalar.ph121.preheader:                ; preds = %iter.check120, %vec.epilog.iter.check122, %vec.epilog.middle.block130
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check120 ], [ %n.vec109, %vec.epilog.iter.check122 ], [ %n.vec125, %vec.epilog.middle.block130 ] ; 4 uses
  %i.bq = sub i64 %.pr.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.bq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph121.prol.loopexit, label %vec.epilog.scalar.ph121.prol

vec.epilog.scalar.ph121.prol:                     ; preds = %vec.epilog.scalar.ph121.preheader, %vec.epilog.scalar.ph121.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph121.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph121.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph121.prol ], [ 0, %vec.epilog.scalar.ph121.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !66
  store float %i.bt, ptr %i.br, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph121.prol.loopexit, label %vec.epilog.scalar.ph121.prol, !llvm.loop !2858

vec.epilog.scalar.ph121.prol.loopexit:            ; preds = %vec.epilog.scalar.ph121.prol, %vec.epilog.scalar.ph121.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph121.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph121.prol ]
  %i.bu = sub i64 %indvars.iv.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i
  %i.bv = icmp ugt i64 %i.bu, -8
  br i1 %i.bv, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph121

._crit_edge.i.i.i.i.i.i:                          ; preds = %vec.epilog.scalar.ph121.prol.loopexit, %vec.epilog.scalar.ph121, %middle.block117, %vec.epilog.middle.block130, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.g, align 8, !tbaa !194
  %i.bx = shl i64 %i.bw, 2
  %i.by = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !122
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %.pre.pre.i.i.i.i.i.i, i64 noundef %i.bx, i64 noundef 4), !inline_history !2859
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %bb.d, %._crit_edge.i.i.i.i.i.i, %bb.c
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ %i.ay, %._crit_edge.i.i.i.i.i.i ], [ %i.ay, %bb.d ], [ null, %bb.c ] ; 2 uses
  store i64 %i.aq, ptr %i.g, align 8, !tbaa !194
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.f, align 8, !tbaa !192
  br label %.lr.ph.i.i.i.i.i

vec.epilog.scalar.ph121:                          ; preds = %vec.epilog.scalar.ph121.prol.loopexit, %vec.epilog.scalar.ph121
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.7, %vec.epilog.scalar.ph121 ], [ %indvars.iv.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph121.prol.loopexit ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i.i.i.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !66
  store float %i.ce, ptr %i.cc, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !66
  store float %i.ch, ptr %i.cf, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !66
  store float %i.ck, ptr %i.ci, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !66
  store float %i.cn, ptr %i.cl, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.3
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i.3
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !66
  store float %i.cq, ptr %i.co, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 5 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i.4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !66
  store float %i.ct, ptr %i.cr, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 6 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i.5
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !66
  store float %i.cw, ptr %i.cu, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 7 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.6
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.i.i.i.6
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !66
  store float %i.cz, ptr %i.cx, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.7, %.pr.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph121, !llvm.loop !2860

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.at, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %i.da = phi ptr [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.da, null
  %i.db = select i1 %.not.i9.i.i.i.i.i, ptr %i.i, ptr %i.da
  %i.dc = ashr exact i64 %i.ap, 30
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.db, i8 0, i64 %i.dc, i1 false), !tbaa !66
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i

_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !193
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !2878, !nonnull !162, !align !343
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !67 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader100.preheader.i.i.i, label %.preheader101.i.i.i

.preheader100.preheader.i.i.i:                    ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.dh = uitofp nneg i32 %i.dg to float
  %i.di = fadd float %i.dh, 5.000000e-01
  %i.dj = insertelement <2 x float> %i.ak, float %i.di, i64 1
  br label %.preheader100.i.i.i

.preheader101.loopexit.i.i.i:                     ; preds = %._crit_edge140.i.i.i
  %.pre175.i.i.i = load i64, ptr %i.h, align 8, !tbaa !193
  br label %.preheader101.i.i.i

.preheader101.i.i.i:                              ; preds = %.preheader101.loopexit.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.dk = phi i64 [ %i.aq, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %.pre175.i.i.i, %.preheader101.loopexit.i.i.i ] ; 9 uses
  %.sroa.095.2.lcssa.i.i.i = phi i64 [ %.sroa.095.1151.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %.sroa.095.3.lcssa.i.i.i, %.preheader101.loopexit.i.i.i ] ; 2 uses
  %.057.lcssa.i.i.i = phi float [ 0.000000e+00, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %.1.lcssa.i.i.i, %.preheader101.loopexit.i.i.i ] ; 3 uses
  %.not159.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not159.i.i.i, label %._crit_edge150.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader101.i.i.i
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !192 ; 2 uses
  %.not.i.i81.i.i.i = icmp eq ptr %i.dl, null
  %i.dm = select i1 %.not.i.i81.i.i.i, ptr %i.i, ptr %i.dl ; 3 uses
  %min.iters.check = icmp ult i64 %i.dk, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %i.dk, 32
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.dk, 28
  %n.vec = and i64 %i.dk, -32                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.057.lcssa.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 64 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.do, align 4, !tbaa !66
  %wide.load56 = load <8 x float>, ptr %i.dp, align 4, !tbaa !66
  %wide.load57 = load <8 x float>, ptr %i.dq, align 4, !tbaa !66
  %wide.load58 = load <8 x float>, ptr %i.dr, align 4, !tbaa !66
  %i.ds = fdiv <8 x float> %wide.load, %broadcast.splat ; 2 uses
  %i.dt = fdiv <8 x float> %wide.load56, %broadcast.splat ; 2 uses
  %i.du = fdiv <8 x float> %wide.load57, %broadcast.splat ; 2 uses
  %i.dv = fdiv <8 x float> %wide.load58, %broadcast.splat ; 2 uses
  %i.dw = fcmp ogt <8 x float> %i.ds, zeroinitializer
  %i.dx = fcmp ogt <8 x float> %i.dt, zeroinitializer
  %i.dy = fcmp ogt <8 x float> %i.du, zeroinitializer
  %i.dz = fcmp ogt <8 x float> %i.dv, zeroinitializer
  %i.ea = select <8 x i1> %i.dw, <8 x float> %i.ds, <8 x float> zeroinitializer
  %i.eb = select <8 x i1> %i.dx, <8 x float> %i.dt, <8 x float> zeroinitializer
  %i.ec = select <8 x i1> %i.dy, <8 x float> %i.du, <8 x float> zeroinitializer
  %i.ed = select <8 x i1> %i.dz, <8 x float> %i.dv, <8 x float> zeroinitializer
  store <8 x float> %i.ea, ptr %i.do, align 4, !tbaa !66
  store <8 x float> %i.eb, ptr %i.dp, align 4, !tbaa !66
  store <8 x float> %i.ec, ptr %i.dq, align 4, !tbaa !66
  store <8 x float> %i.ed, ptr %i.dr, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !2861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %._crit_edge150.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !199

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.dk, -4                    ; 3 uses
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %.057.lcssa.i.i.i, i64 0
  %broadcast.splat61 = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index62 ; 2 uses
  %wide.load63 = load <4 x float>, ptr %i.ef, align 4, !tbaa !66
  %i.eg = fdiv <4 x float> %wide.load63, %broadcast.splat61 ; 2 uses
  %i.eh = fcmp ogt <4 x float> %i.eg, zeroinitializer
  %i.ei = select <4 x i1> %i.eh, <4 x float> %i.eg, <4 x float> zeroinitializer
  store <4 x float> %i.ei, ptr %i.ef, align 4, !tbaa !66
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ej = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2862

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.dk, %n.vec59
  br i1 %cmp.n65, label %._crit_edge150.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0148.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader100.i.i.i:                              ; preds = %._crit_edge140.i.i.i, %.preheader100.preheader.i.i.i
  %i.ek = phi i32 [ %8, %._crit_edge140.i.i.i ], [ %i.de, %.preheader100.preheader.i.i.i ] ; 3 uses
  %.057144.i.i.i = phi float [ %.1.lcssa.i.i.i, %._crit_edge140.i.i.i ], [ 0.000000e+00, %.preheader100.preheader.i.i.i ] ; 2 uses
  %.058143.i.i.i = phi i32 [ %i.el, %._crit_edge140.i.i.i ], [ 0, %.preheader100.preheader.i.i.i ] ; 2 uses
  %.sroa.095.2142.i.i.i = phi i64 [ %.sroa.095.3.lcssa.i.i.i, %._crit_edge140.i.i.i ], [ %.sroa.095.1151.i.i.i, %.preheader100.preheader.i.i.i ] ; 2 uses
  %5 = icmp sgt i32 %i.ek, 0
  br i1 %5, label %.lr.ph139.i.i.i, label %._crit_edge140.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %.preheader100.i.i.i
  %6 = uitofp nneg i32 %.058143.i.i.i to float
  %7 = insertelement <2 x float> poison, float %6, i64 0
  br label %bb.e

._crit_edge140.i.i.i:                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.preheader100.i.i.i
  %8 = phi i32 [ %i.ek, %.preheader100.i.i.i ], [ %i.mx, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %.sroa.095.3.lcssa.i.i.i = phi i64 [ %.sroa.095.2142.i.i.i, %.preheader100.i.i.i ], [ %i.er, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi float [ %.057144.i.i.i, %.preheader100.i.i.i ], [ %i.mm, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %i.el = add nuw nsw i32 %.058143.i.i.i, 1       ; 2 uses
  %i.em = icmp slt i32 %i.el, %8
  br i1 %i.em, label %.preheader100.i.i.i, label %.preheader101.loopexit.i.i.i, !llvm.loop !2863

bb.e:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.lr.ph139.i.i.i
  %i.en = phi i32 [ %i.ek, %.lr.ph139.i.i.i ], [ %i.mx, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %.1138.i.i.i = phi float [ %.057144.i.i.i, %.lr.ph139.i.i.i ], [ %i.mm, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %.059137.i.i.i = phi i32 [ 0, %.lr.ph139.i.i.i ], [ %i.mv, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %.sroa.095.3136.i.i.i = phi i64 [ %.sroa.095.2142.i.i.i, %.lr.ph139.i.i.i ], [ %i.er, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %i.eo = mul i64 %.sroa.095.3136.i.i.i, 6364136223846793005
  %i.ep = add i64 %i.eo, %i.b                     ; 2 uses
  %i.eq = mul i64 %i.ep, 6364136223846793005
  %i.er = add i64 %i.eq, %i.b                     ; 2 uses
  %i.es = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %i.et = insertelement <2 x i64> %i.es, i64 %.sroa.095.3136.i.i.i, i64 1 ; 3 uses
  %i.eu = lshr <2 x i64> %i.et, splat (i64 45)
  %i.ev = lshr <2 x i64> %i.et, splat (i64 27)
  %i.ew = xor <2 x i64> %i.eu, %i.ev
  %i.ex = trunc <2 x i64> %i.ew to <2 x i32>      ; 2 uses
  %i.ey = lshr <2 x i64> %i.et, splat (i64 59)
  %i.ez = trunc nuw nsw <2 x i64> %i.ey to <2 x i32>
  %i.fa = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ex, <2 x i32> %i.ex, <2 x i32> %i.ez)
  %i.fb = uitofp <2 x i32> %i.fa to <2 x float>
  %i.fc = fmul nnan <2 x float> %i.fb, splat (float f0x2F800000) ; 2 uses
  %i.fd = fcmp olt <2 x float> %i.fc, splat (float f0x3F7FFFFF)
  %i.fe = uitofp nneg i32 %.059137.i.i.i to float
  %i.ff = sitofp i32 %i.en to float
  %i.fg = select <2 x i1> %i.fd, <2 x float> %i.fc, <2 x float> splat (float f0x3F7FFFFF)
  %i.fh = insertelement <2 x float> %7, float %i.fe, i64 1
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fdiv <2 x float> %i.fi, %i.fk           ; 3 uses
  %i.fm = load ptr, ptr %i.k, align 8, !tbaa !2879, !nonnull !162, !align !324 ; 11 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 176
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !117
  %i.fp = shl i64 %i.fo, 32
  %i.fq = ashr exact i64 %i.fp, 32                ; 2 uses
  %i.fr = add nsw i64 %i.fq, -2                   ; 2 uses
  %i.fs = icmp sgt i64 %i.fq, 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 160
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !118 ; 2 uses
  br i1 %i.fs, label %.lr.ph.i.i.i87.i.i.i.preheader, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i

.lr.ph.i.i.i87.i.i.i.preheader:                   ; preds = %bb.e
  %i.fv = extractelement <2 x float> %i.fl, i64 0
  br label %.lr.ph.i.i.i87.i.i.i

.lr.ph.i.i.i87.i.i.i:                             ; preds = %.lr.ph.i.i.i87.i.i.i.preheader, %.lr.ph.i.i.i87.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %.fr.i.i.i.i.i.i, %.lr.ph.i.i.i87.i.i.i ], [ 1, %.lr.ph.i.i.i87.i.i.i.preheader ] ; 2 uses
  %.01516.i.i.i.i.i.i = phi i64 [ %i.gg, %.lr.ph.i.i.i87.i.i.i ], [ %i.fr, %.lr.ph.i.i.i87.i.i.i.preheader ] ; 2 uses
  %i.fw = lshr i64 %.01516.i.i.i.i.i.i, 1         ; 3 uses
  %i.fx = add i64 %i.fw, %.017.i.i.i.i.i.i        ; 2 uses
  %i.fy = shl i64 %i.fx, 32
  %i.fz = ashr exact i64 %i.fy, 30
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !66
  %i.gc = fcmp ole float %i.gb, %i.fv             ; 2 uses
  %i.gd = add i64 %i.fx, 1
  %i.ge = select i1 %i.gc, i64 %i.gd, i64 %.017.i.i.i.i.i.i
  %.fr.i.i.i.i.i.i = freeze i64 %i.ge             ; 3 uses
  %.neg.i.i.i.i.i.i = xor i64 %i.fw, -1
  %i.gf = add nsw i64 %.01516.i.i.i.i.i.i, %.neg.i.i.i.i.i.i
  %i.gg = select i1 %i.gc, i64 %i.gf, i64 %i.fw   ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 0
  br i1 %i.gh, label %.lr.ph.i.i.i87.i.i.i, label %._crit_edge.i.i.i88.i.i.i, !llvm.loop !2864

._crit_edge.i.i.i88.i.i.i:                        ; preds = %.lr.ph.i.i.i87.i.i.i
  %i.gi = add nsw i64 %.fr.i.i.i.i.i.i, -1
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.fr)
  %.inv.i.i.i.i.i.i = icmp sgt i64 %.fr.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i88.i.i.i, %bb.e
  %i.gj = phi i64 [ %spec.select.i.i.i.i.i.i, %._crit_edge.i.i.i88.i.i.i ], [ 0, %bb.e ] ; 5 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gj
  %i.gl = load <2 x float>, ptr %i.gk, align 4, !tbaa !66 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 192
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !2880 ; 2 uses
  %i.go = fcmp ogt float %i.gn, 0.000000e+00
  br i1 %i.go, label %bb.f, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !118
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gj
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !66
  %i.gt = fdiv float %i.gs, %i.gn
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i.i.i.i

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i.i.i.i: ; preds = %bb.f, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i
  %i.gu = phi float [ %i.gt, %bb.f ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !117
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 184
  %i.gy = load <2 x float>, ptr %i.gx, align 8, !tbaa !66 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !342
  %i.hb = getelementptr inbounds nuw [80 x i8], ptr %i.ha, i64 %i.gj ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !117
  %i.he = shl i64 %i.hd, 32
  %i.hf = ashr exact i64 %i.he, 32                ; 2 uses
  %i.hg = add nsw i64 %i.hf, -2                   ; 2 uses
  %i.hh = icmp sgt i64 %i.hf, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !118 ; 2 uses
  br i1 %i.hh, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i.i.i.i
  %i.hk = extractelement <2 x float> %i.fl, i64 1
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i
  %.017.i.i12.i.i.i.i = phi i64 [ %.fr.i.i14.i.i.i.i, %.lr.ph.i.i11.i.i.i.i ], [ 1, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 2 uses
  %.01516.i.i13.i.i.i.i = phi i64 [ %i.hv, %.lr.ph.i.i11.i.i.i.i ], [ %i.hg, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 2 uses
  %i.hl = lshr i64 %.01516.i.i13.i.i.i.i, 1       ; 3 uses
  %i.hm = add i64 %i.hl, %.017.i.i12.i.i.i.i      ; 2 uses
  %i.hn = shl i64 %i.hm, 32
  %i.ho = ashr exact i64 %i.hn, 30
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !66
  %i.hr = fcmp ole float %i.hq, %i.hk             ; 2 uses
  %i.hs = add i64 %i.hm, 1
  %i.ht = select i1 %i.hr, i64 %i.hs, i64 %.017.i.i12.i.i.i.i
  %.fr.i.i14.i.i.i.i = freeze i64 %i.ht           ; 3 uses
  %.neg.i.i15.i.i.i.i = xor i64 %i.hl, -1
  %i.hu = add nsw i64 %.01516.i.i13.i.i.i.i, %.neg.i.i15.i.i.i.i
  %i.hv = select i1 %i.hr, i64 %i.hu, i64 %i.hl   ; 2 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i.i11.i.i.i.i, label %._crit_edge.i.i16.i.i.i.i, !llvm.loop !2864

._crit_edge.i.i16.i.i.i.i:                        ; preds = %.lr.ph.i.i11.i.i.i.i
  %i.hx = add nsw i64 %.fr.i.i14.i.i.i.i, -1
  %..i.i.i17.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.hg)
  %.inv.i.i18.i.i.i.i = icmp sgt i64 %.fr.i.i14.i.i.i.i, 0
  %spec.select.i.i19.i.i.i.i = select i1 %.inv.i.i18.i.i.i.i, i64 %..i.i.i17.i.i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i.i.i.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i.i.i.i: ; preds = %._crit_edge.i.i16.i.i.i.i, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i.i.i.i
  %i.hy = phi i64 [ %spec.select.i.i19.i.i.i.i, %._crit_edge.i.i16.i.i.i.i ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i.i.i.i ] ; 5 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hy
  %i.ia = load <2 x float>, ptr %i.hz, align 4, !tbaa !66 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !2880 ; 2 uses
  %i.id = fcmp ogt float %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !118
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.hy
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !66
  %i.ii = fdiv float %i.ih, %i.ic
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i.i.i.i
  %i.ij = phi float [ %i.ii, %bb.g ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !117
  %i.im = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.in = fmul float %i.gu, %i.ij
  %i.io = shufflevector <2 x float> %i.gl, <2 x float> %i.ia, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ip = shufflevector <2 x float> %i.gl, <2 x float> %i.ia, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.iq = fcmp ogt <2 x float> %i.io, %i.ip
  %i.ir = fsub <2 x float> %i.fl, %i.ip           ; 2 uses
  %i.is = fsub <2 x float> %i.io, %i.ip
  %i.it = trunc i64 %i.gj to i32
  %i.iu = insertelement <2 x i32> poison, i32 %i.it, i64 0
  %i.iv = trunc i64 %i.hy to i32
  %i.iw = insertelement <2 x i32> %i.iu, i32 %i.iv, i64 1
  %i.ix = trunc nuw nsw i64 %i.hy to i32
  %i.iy = fdiv <2 x float> %i.ir, %i.is
  %i.iz = select <2 x i1> %i.iq, <2 x float> %i.iy, <2 x float> %i.ir
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.jb = lshr i64 %i.hy, 32
  %.sroa.4.0.extract.shift.i.i.i.i.i.i = or i64 %i.jb, %i.gj
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i.i.i to i32
  %i.jc = load i32, ptr %i.ja, align 8, !tbaa !151 ; 2 uses
  %i.jd = sub i32 %i.ix, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !152
  %i.jg = sub nsw i32 %.sroa.4.0.extract.trunc.i.i.i.i.i.i, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !341
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !151
  %i.jl = sub nsw i32 %i.jk, %i.jc
  %i.jm = mul nsw i32 %i.jl, %i.jg
  %i.jn = add nsw i32 %i.jd, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !66
  %i.jr = fdiv float %i.jq, %i.in                 ; 8 uses
  %i.js = load ptr, ptr %.val, align 8, !tbaa !2876, !nonnull !162, !align !343
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !67
  %i.ju = sitofp i32 %i.jt to float
  %i.jv = load <2 x float>, ptr %i.im, align 8, !tbaa !66 ; 2 uses
  %i.jw = uitofp <2 x i32> %i.iw to <2 x float>
  %i.jx = fadd <2 x float> %i.iz, %i.jw
  %i.jy = insertelement <2 x i64> poison, i64 %i.gw, i64 0
  %i.jz = insertelement <2 x i64> %i.jy, i64 %i.il, i64 1
  %i.ka = uitofp <2 x i64> %i.jz to <2 x float>
  %i.kb = fdiv <2 x float> %i.jx, %i.ka           ; 2 uses
  %i.kc = shufflevector <2 x float> %i.gy, <2 x float> %i.jv, <2 x i32> <i32 1, i32 3>
  %i.kd = fmul <2 x float> %i.kb, %i.kc
  %i.ke = fsub <2 x float> splat (float 1.000000e+00), %i.kb
  %i.kf = shufflevector <2 x float> %i.gy, <2 x float> %i.jv, <2 x i32> <i32 0, i32 2>
  %i.kg = fmul <2 x float> %i.kf, %i.ke
  %i.kh = fadd <2 x float> %i.kd, %i.kg
  %i.ki = fadd <2 x float> %i.dj, %i.kh
  %i.kj = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kk = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = fdiv <2 x float> %i.kk, %i.kl
  %i.kn = invoke <2 x float> @_ZN4pbrt19WrapEqualAreaSquareENS_6Point2IfEE(<2 x float> %i.km)
          to label %bb.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ko = invoke { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float> %i.kn)
          to label %bb.j unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %i.ko, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %i.ko, 1 ; 3 uses
  %i.kp = fcmp olt float %.fca.1.extract.i.i.i, -1.000000e+00
  %i.kq = fcmp ogt float %.fca.1.extract.i.i.i, 1.000000e+00
  %..i.i.i.i.i.i = select i1 %i.kq, float 1.000000e+00, float %.fca.1.extract.i.i.i
  %.0.i.i.i.i.i.i = select i1 %i.kp, float -1.000000e+00, float %..i.i.i.i.i.i
  %i.kr = call noundef float @acosf(float noundef %.0.i.i.i.i.i.i) #37
  %.sroa.03.4.vec.extract.i.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 1
  %.sroa.03.0.vec.extract.i.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 0
  %i.ks = call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i.i.i.i, float noundef %.sroa.03.0.vec.extract.i.i.i.i) #37 ; 3 uses
  %i.kt = fcmp olt float %i.ks, 0.000000e+00
  %i.ku = fadd float %i.ks, f0x40C90FDB
  %i.kv = select i1 %i.kt, float %i.ku, float %i.ks
  %i.kw = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.kr, i64 1
  %i.ky = fdiv <2 x float> %i.kx, <float f0x40C90FDB, float f0x40490FDB>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.kz = load ptr, ptr %i.e, align 8, !tbaa !2877, !nonnull !162, !align !324
  %i.la = load ptr, ptr %i.l, align 8, !tbaa !2881, !nonnull !162, !align !343
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.la, align 4, !tbaa !46
  invoke void @_ZNK4pbrt5Image6BilerpENS_6Point2IfEENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.kz, <2 x float> %i.ky, i64 %.sroa.0.0.copyload.i.i.i)
          to label %.preheader.i.i.i unwind label %bb.m

.preheader.i.i.i:                                 ; preds = %bb.j
  %i.lb = load i64, ptr %i.m, align 8, !tbaa !193 ; 12 uses
  %.not.i.i.i = icmp eq i64 %i.lb, 0
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !192 ; 4 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %iter.check88

iter.check88:                                     ; preds = %.preheader.i.i.i
  %.not.i.i79.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %i.lc = select i1 %.not.i.i79.i.i.i, ptr %i.o, ptr %.pre.i.i.i ; 9 uses
  %i.ld = load ptr, ptr %i.f, align 8, !tbaa !192 ; 2 uses
  %.not.i.i80.i.i.i = icmp eq ptr %i.ld, null
  %i.le = select i1 %.not.i.i80.i.i.i, ptr %i.i, ptr %i.ld ; 9 uses
  %min.iters.check67 = icmp ult i64 %i.lb, 4
  br i1 %min.iters.check67, label %vec.epilog.scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check88
  %i.lf = shl i64 %i.lb, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.le, i64 %i.lf
  %scevgep66 = getelementptr i8, ptr %i.lc, i64 %i.lf
  %bound0 = icmp ult ptr %i.le, %scevgep66
  %bound1 = icmp ult ptr %i.lc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph89.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.lb, 32
  br i1 %min.iters.check69, label %vec.epilog.ph92, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %i.lg = and i64 %i.lb, 28
  %n.vec71 = and i64 %i.lb, -32                   ; 4 uses
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %i.jr, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.ph70, %vector.body74
  %index75 = phi i64 [ 0, %vector.ph70 ], [ %index.next84, %vector.body74 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index75 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  %wide.load76.a = load <8 x float>, ptr %i.lh, align 4, !tbaa !66, !alias.scope !2882
  %wide.load77.a = load <8 x float>, ptr %i.li, align 4, !tbaa !66, !alias.scope !2882
  %wide.load78.a = load <8 x float>, ptr %i.lj, align 4, !tbaa !66, !alias.scope !2882
  %wide.load79.a = load <8 x float>, ptr %i.lk, align 4, !tbaa !66, !alias.scope !2882
  %i.ll = fmul <8 x float> %broadcast.splat73, %wide.load76.a
  %i.lm = fmul <8 x float> %broadcast.splat73, %wide.load77.a
  %i.ln = fmul <8 x float> %broadcast.splat73, %wide.load78.a
  %i.lo = fmul <8 x float> %broadcast.splat73, %wide.load79.a
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index75 ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 64 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 96 ; 2 uses
  %wide.load80.a = load <8 x float>, ptr %i.lp, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %wide.load81 = load <8 x float>, ptr %i.lq, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %wide.load82 = load <8 x float>, ptr %i.lr, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %wide.load83 = load <8 x float>, ptr %i.ls, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %i.lt = fadd <8 x float> %i.ll, %wide.load80.a
  %i.lu = fadd <8 x float> %i.lm, %wide.load81
  %i.lv = fadd <8 x float> %i.ln, %wide.load82
  %i.lw = fadd <8 x float> %i.lo, %wide.load83
  store <8 x float> %i.lt, ptr %i.lp, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  store <8 x float> %i.lu, ptr %i.lq, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  store <8 x float> %i.lv, ptr %i.lr, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  store <8 x float> %i.lw, ptr %i.ls, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %index.next84 = add nuw i64 %index75, 32        ; 2 uses
  %i.lx = icmp eq i64 %index.next84, %n.vec71
  br i1 %i.lx, label %middle.block85, label %vector.body74, !llvm.loop !2868

middle.block85:                                   ; preds = %vector.body74
  %cmp.n86 = icmp eq i64 %i.lb, %n.vec71
  br i1 %cmp.n86, label %._crit_edge.i.i.i, label %vec.epilog.iter.check90

vec.epilog.iter.check90:                          ; preds = %middle.block85
  %min.epilog.iters.check91 = icmp eq i64 %i.lg, 0
  br i1 %min.epilog.iters.check91, label %vec.epilog.scalar.ph89.preheader, label %vec.epilog.ph92, !prof !199

vec.epilog.ph92:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check90
  %vec.epilog.resume.val87 = phi i64 [ %n.vec71, %vec.epilog.iter.check90 ], [ 0, %vector.main.loop.iter.check68 ]
  %n.vec93 = and i64 %i.lb, -4                    ; 3 uses
  %broadcast.splatinsert94 = insertelement <4 x float> poison, float %i.jr, i64 0
  %broadcast.splat95 = shufflevector <4 x float> %broadcast.splatinsert94, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph92
  %index97 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph92 ], [ %index.next100, %vec.epilog.vector.body96 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index97
  %wide.load98 = load <4 x float>, ptr %i.ly, align 4, !tbaa !66, !alias.scope !2882
  %i.lz = fmul <4 x float> %broadcast.splat95, %wide.load98
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index97 ; 2 uses
  %wide.load99 = load <4 x float>, ptr %i.ma, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %i.mb = fadd <4 x float> %i.lz, %wide.load99
  store <4 x float> %i.mb, ptr %i.ma, align 4, !tbaa !66, !alias.scope !2883, !noalias !2882
  %index.next100 = add nuw i64 %index97, 4        ; 2 uses
  %i.mc = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.mc, label %vec.epilog.middle.block101, label %vec.epilog.vector.body96, !llvm.loop !2869

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body96
  %cmp.n102 = icmp eq i64 %i.lb, %n.vec93
  br i1 %cmp.n102, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph89.preheader

vec.epilog.scalar.ph89.preheader:                 ; preds = %iter.check88, %vector.memcheck, %vec.epilog.iter.check90, %vec.epilog.middle.block101
  %.054135.i.i.i.ph = phi i64 [ 0, %iter.check88 ], [ 0, %vector.memcheck ], [ %n.vec71, %vec.epilog.iter.check90 ], [ %n.vec93, %vec.epilog.middle.block101 ] ; 3 uses
  %xtraiter143 = and i64 %i.lb, 3                 ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %vec.epilog.scalar.ph89.prol.loopexit, label %vec.epilog.scalar.ph89.prol

vec.epilog.scalar.ph89.prol:                      ; preds = %vec.epilog.scalar.ph89.preheader, %vec.epilog.scalar.ph89.prol
  %.054135.i.i.i.prol = phi i64 [ %i.mj, %vec.epilog.scalar.ph89.prol ], [ %.054135.i.i.i.ph, %vec.epilog.scalar.ph89.preheader ] ; 3 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %vec.epilog.scalar.ph89.prol ], [ 0, %vec.epilog.scalar.ph89.preheader ]
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.054135.i.i.i.prol
  %i.me = load float, ptr %i.md, align 4, !tbaa !66
  %i.mf = fmul float %i.jr, %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.054135.i.i.i.prol ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !66
  %i.mi = fadd float %i.mf, %i.mh
  store float %i.mi, ptr %i.mg, align 4, !tbaa !66
  %i.mj = add nuw i64 %.054135.i.i.i.prol, 1      ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %vec.epilog.scalar.ph89.prol.loopexit, label %vec.epilog.scalar.ph89.prol, !llvm.loop !2870

vec.epilog.scalar.ph89.prol.loopexit:             ; preds = %vec.epilog.scalar.ph89.prol, %vec.epilog.scalar.ph89.preheader
  %.054135.i.i.i.unr = phi i64 [ %.054135.i.i.i.ph, %vec.epilog.scalar.ph89.preheader ], [ %i.mj, %vec.epilog.scalar.ph89.prol ]
  %i.mk = sub i64 %.054135.i.i.i.ph, %i.lb
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph89

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph89.prol.loopexit, %vec.epilog.scalar.ph89, %middle.block85, %vec.epilog.middle.block101, %.preheader.i.i.i
  %i.mm = fadd float %.1138.i.i.i, %i.jr          ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !193
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.mn = load i64, ptr %i.p, align 8, !tbaa !194
  %i.mo = shl i64 %i.mn, 2
  %i.mp = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !122
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8
  invoke void %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.mo, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.l, !inline_history !3

bb.l:                                             ; preds = %bb.k
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.k, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.mv = add nuw nsw i32 %.059137.i.i.i, 1       ; 2 uses
  %i.mw = load ptr, ptr %i.j, align 8, !tbaa !2878, !nonnull !162, !align !343
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !67 ; 3 uses
  %i.my = icmp slt i32 %i.mv, %i.mx
  br i1 %i.my, label %bb.e, label %._crit_edge140.i.i.i, !llvm.loop !2871

bb.m:                                             ; preds = %bb.j
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.loopexit.split-lp.i.loopexit.split-lp.i.i

vec.epilog.scalar.ph89:                           ; preds = %vec.epilog.scalar.ph89.prol.loopexit, %vec.epilog.scalar.ph89
  %.054135.i.i.i = phi i64 [ %i.ob, %vec.epilog.scalar.ph89 ], [ %.054135.i.i.i.unr, %vec.epilog.scalar.ph89.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.054135.i.i.i
  %i.nb = load float, ptr %i.na, align 4, !tbaa !66
  %i.nc = fmul float %i.jr, %i.nb
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.054135.i.i.i ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !66
  %i.nf = fadd float %i.nc, %i.ne
  store float %i.nf, ptr %i.nd, align 4, !tbaa !66
  %i.ng = add nuw i64 %.054135.i.i.i, 1           ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.ng
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !66
  %i.nj = fmul float %i.jr, %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.ng ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !66
  %i.nm = fadd float %i.nj, %i.nl
  store float %i.nm, ptr %i.nk, align 4, !tbaa !66
  %i.nn = add nuw i64 %.054135.i.i.i, 2           ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.nn
  %i.np = load float, ptr %i.no, align 4, !tbaa !66
  %i.nq = fmul float %i.jr, %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.nn ; 2 uses
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !66
  %i.nt = fadd float %i.nq, %i.ns
  store float %i.nt, ptr %i.nr, align 4, !tbaa !66
  %i.nu = add nuw i64 %.054135.i.i.i, 3           ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.nu
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !66
  %i.nx = fmul float %i.jr, %i.nw
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.nu ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !66
  %i.oa = fadd float %i.nx, %i.nz
  store float %i.oa, ptr %i.ny, align 4, !tbaa !66
  %i.ob = add nuw i64 %.054135.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ob, %i.lb
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph89, !llvm.loop !2872

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0148.i.i.i = phi i64 [ %i.og, %vec.epilog.scalar.ph ], [ %.0148.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.0148.i.i.i ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !66
  %i.oe = fdiv float %i.od, %.057.lcssa.i.i.i     ; 2 uses
  %i.of = fcmp ogt float %i.oe, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.of, float %i.oe, float 0.000000e+00
  store float %.sroa.speculated.i.i.i, ptr %i.oc, align 4, !tbaa !66
  %i.og = add nuw i64 %.0148.i.i.i, 1             ; 2 uses
  %exitcond170.not.i.i.i = icmp eq i64 %i.og, %i.dk
  br i1 %exitcond170.not.i.i.i, label %._crit_edge150.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2873

._crit_edge150.i.i.i:                             ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader101.i.i.i
  %i.oh = load ptr, ptr %i.q, align 8, !tbaa !2884, !nonnull !162, !align !324
  %.sroa.0.0.insert.insert.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, %.sroa.2.0.insert.ext.i.i.i
  invoke void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE(ptr noundef nonnull align 8 dereferenceable(152) %i.oh, i64 %.sroa.0.0.insert.insert.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.n unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge150.i.i.i
  store i64 0, ptr %i.h, align 8, !tbaa !193
  %i.oi = load ptr, ptr %i.f, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i83.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i.i83.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.oj = load i64, ptr %i.g, align 8, !tbaa !194
  %i.ok = shl i64 %i.oj, 2
  %i.ol = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !122
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = load ptr, ptr %i.on, align 8
  invoke void %i.oo(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull %i.oi, i64 noundef %i.ok, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.or = load ptr, ptr %.val, align 8, !tbaa !2876, !nonnull !162, !align !343
  %i.os = load i32, ptr %i.or, align 4, !tbaa !67 ; 2 uses
  %i.ot = sext i32 %i.os to i64
  %i.ou = icmp slt i64 %indvars.iv.next.i.i.i, %i.ot
  br i1 %i.ou, label %bb.b, label %._crit_edge154.i.i.i, !llvm.loop !2874

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.h, %._crit_edge150.i.i.i
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.i:       ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.mz, %bb.m ], [ %lpad.loopexit.split-lp134, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i64 0, ptr %i.h, align 8, !tbaa !193
  %i.ov = load ptr, ptr %i.f, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i85.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i.i85.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit86.i.i.i, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.i
  %i.ow = load i64, ptr %i.g, align 8, !tbaa !194
  %i.ox = shl i64 %i.ow, 2
  %i.oy = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !122
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8
  invoke void %i.pb(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, ptr noundef nonnull %i.ov, i64 noundef %i.ox, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit86.i.i.i unwind label %bb.r, !inline_history !3

bb.r:                                             ; preds = %bb.q
  %i.pc = landingpad { ptr, i32 }
          catch ptr null
  %i.pd = extractvalue { ptr, i32 } %i.pc, 0
  call void @__clang_call_terminate(ptr %i.pd) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit86.i.i.i: ; preds = %bb.q, %.loopexit.split-lp.i.loopexit.split-lp.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %._crit_edge154.i.i.i, %bb.a, %.preheader102.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE3$_1", ptr %0, align 8, !tbaa !335
  br label %"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %.val, ptr %0, align 8, !tbaa !98
  br label %"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !2885
  store ptr %i.a, ptr %0, align 8, !tbaa !98
  br label %"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !98 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #38
  br label %"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare <2 x float> @_ZN4pbrt19WrapEqualAreaSquareENS_6Point2IfEE(<2 x float>) local_unnamed_addr #9

declare void @_ZNK4pbrt5Image6BilerpENS_6Point2IfEENS_10WrapMode2DE(ptr dead_on_unwind writable sret(%"struct.pbrt::ImageChannelValues") align 8, ptr noundef nonnull align 8 dereferenceable(152), <2 x float>, i64) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 10 uses
end_hunk_0
