Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvXNtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB2_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx:bb.a
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck116

vector.memcheck116:                               ; preds = %bb.v
  %i.fb = ptrtoaddr ptr %i.fa to i64
  %i.fc = shl nuw i64 %.sroa.9.0.i.i.i, 2
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = sub i64 %i.ex, %i.fd
  %diff.check117 = icmp ugt i64 %i.fe, -32
  br i1 %diff.check117, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck116
  %n.vec121 = and i64 %i.ez, 4611686018427387896  ; 4 uses
  %i.ff = add nuw nsw i64 %.sroa.9.0.i.i.i, %n.vec121
  %i.fg = getelementptr [4 x i8], ptr %i.fa, i64 %.sroa.9.0.i.i.i
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %index123 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !155567, !noalias !155568
  %wide.load125 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !155567, !noalias !155568
  %i.fj = getelementptr [4 x i8], ptr %i.fg, i64 %index123 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  store <4 x i32> %wide.load124, ptr %i.fj, align 4, !noalias !155569
  store <4 x i32> %wide.load125, ptr %i.fk, align 4, !noalias !155569
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.fl, label %middle.block127, label %vector.body122, !llvm.loop !155504

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %i.ez, %n.vec121
  br i1 %cmp.n128, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck116, %bb.v, %middle.block127
  %.ph = phi i64 [ %.sroa.9.0.i.i.i, %vector.memcheck116 ], [ %.sroa.9.0.i.i.i, %bb.v ], [ %i.ff, %middle.block127 ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck116 ], [ 0, %bb.v ], [ %n.vec121, %middle.block127 ] ; 3 uses
  %xtraiter149 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol

scalar.ph118.prol:                                ; preds = %scalar.ph118.preheader, %scalar.ph118.prol
  %i.fm = phi i64 [ %i.fp, %scalar.ph118.prol ], [ %.ph, %scalar.ph118.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.prol = phi i64 [ %i.fq, %scalar.ph118.prol ], [ %.sroa.01.0.i2.i.i.i.i.ph, %scalar.ph118.preheader ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %scalar.ph118.prol ], [ 0, %scalar.ph118.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i.prol
  %.val8.i3.i.i.i.i.prol = load i32, ptr %i.fn, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fo = getelementptr [4 x i8], ptr %i.fa, i64 %i.fm
  store i32 %.val8.i3.i.i.i.i.prol, ptr %i.fo, align 4, !noalias !155569
  %i.fp = add i64 %i.fm, 1                        ; 2 uses
  %i.fq = add nuw i64 %.sroa.01.0.i2.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol, !llvm.loop !155505

scalar.ph118.prol.loopexit:                       ; preds = %scalar.ph118.prol, %scalar.ph118.preheader
  %.unr152 = phi i64 [ %.ph, %scalar.ph118.preheader ], [ %i.fp, %scalar.ph118.prol ]
  %.sroa.01.0.i2.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i.i.i.ph, %scalar.ph118.preheader ], [ %i.fq, %scalar.ph118.prol ]
  %i.fr = sub nsw i64 %.sroa.01.0.i2.i.i.i.i.ph, %i.ez
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118

scalar.ph118:                                     ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118
  %i.ft = phi i64 [ %i.gi, %scalar.ph118 ], [ %.unr152, %scalar.ph118.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i.i.i = phi i64 [ %i.gj, %scalar.ph118 ], [ %.sroa.01.0.i2.i.i.i.i.unr, %scalar.ph118.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %.val8.i3.i.i.i.i = load i32, ptr %i.fu, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fv = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  store i32 %.val8.i3.i.i.i.i, ptr %i.fv, align 4, !noalias !155569
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.val8.i3.i.i.i.i.1 = load i32, ptr %i.fx, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fy = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  store i32 %.val8.i3.i.i.i.i.1, ptr %i.fz, align 4, !noalias !155569
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val8.i3.i.i.i.i.2 = load i32, ptr %i.gb, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.gc = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store i32 %.val8.i3.i.i.i.i.2, ptr %i.gd, align 4, !noalias !155569
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %.val8.i3.i.i.i.i.3 = load i32, ptr %i.gf, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.gg = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  store i32 %.val8.i3.i.i.i.i.3, ptr %i.gh, align 4, !noalias !155569
  %i.gi = add i64 %i.ft, 4
  %i.gj = add nuw i64 %.sroa.01.0.i2.i.i.i.i, 4   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.ez
  br i1 %i.gk, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118, !llvm.loop !155506

_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i: ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118, %middle.block127
  %i.gl = add i64 %.sroa.8.5.i.i, %i.ez
  br label %.loopexit

bb.w:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gm = icmp samesign eq i64 %.idx8, %.idx
  br i1 %i.gm, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gn = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155570, !nonnull !67, !noundef !67 ; 2 uses
  %i.go = getelementptr [4 x i8], ptr %i.gn, i64 %.sroa.02.0.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.ad, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.x
  %i.gp = ptrtoaddr ptr %i.gn to i64
  %i.gq = shl i64 %.sroa.02.0.i, 2
  %i.gr = add i64 %i.gq, %i.gp
  %i.gs = add i64 %.idx8, %i.y
  %i.gt = sub i64 %i.gs, %i.gr
  %diff.check = icmp ugt i64 %i.gt, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <4 x i32>, ptr %i.gu, align 4, !alias.scope !155571, !noalias !155572
  %wide.load55 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !155571, !noalias !155572
  %i.gw = getelementptr [4 x i8], ptr %i.go, i64 %index ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  store <4 x i32> %wide.load, ptr %i.gw, align 4, !noalias !155573
  store <4 x i32> %wide.load55, ptr %i.gx, align 4, !noalias !155573
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !155525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.x, %middle.block
  %.sroa.8.8.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.x ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.sroa.5.0.i, %.sroa.0.0.i
  %xtraiter = and i64 %i.gz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.8.8.i.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.8.8.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.8.8.i.i.prol
  %.val8.i.i.i38.i.i.prol = load i32, ptr %i.ha, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hb = getelementptr [4 x i8], ptr %i.go, i64 %.sroa.8.8.i.i.prol
  store i32 %.val8.i.i.i38.i.i.prol, ptr %i.hb, align 4, !noalias !155573
  %i.hc = add nuw i64 %.sroa.8.8.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155526

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.8.8.i.i.unr = phi i64 [ %.sroa.8.8.i.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hd = sub i64 %.sroa.0.0.i, %.sroa.5.0.i
  %i.he = add i64 %i.hd, %.sroa.8.8.i.i.ph
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.8.8.i.i = phi i64 [ %i.hr, %scalar.ph ], [ %.sroa.8.8.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.8.8.i.i
  %.val8.i.i.i38.i.i = load i32, ptr %i.hg, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hh = getelementptr [4 x i8], ptr %i.go, i64 %.sroa.8.8.i.i
  store i32 %.val8.i.i.i38.i.i, ptr %i.hh, align 4, !noalias !155573
  %i.hi = add nuw i64 %.sroa.8.8.i.i, 1           ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hi
  %.val8.i.i.i38.i.i.1 = load i32, ptr %i.hj, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hk = getelementptr [4 x i8], ptr %i.go, i64 %i.hi
  store i32 %.val8.i.i.i38.i.i.1, ptr %i.hk, align 4, !noalias !155573
  %i.hl = add nuw i64 %.sroa.8.8.i.i, 2           ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hl
  %.val8.i.i.i38.i.i.2 = load i32, ptr %i.hm, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hn = getelementptr [4 x i8], ptr %i.go, i64 %i.hl
  store i32 %.val8.i.i.i38.i.i.2, ptr %i.hn, align 4, !noalias !155573
  %i.ho = add nuw i64 %.sroa.8.8.i.i, 3           ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ho
  %.val8.i.i.i38.i.i.3 = load i32, ptr %i.hp, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hq = getelementptr [4 x i8], ptr %i.go, i64 %i.ho
  store i32 %.val8.i.i.i38.i.i.3, ptr %i.hq, align 4, !noalias !155573
  %i.hr = add nuw i64 %.sroa.8.8.i.i, 4           ; 2 uses
  %i.hs = icmp eq i64 %i.hr, %i.ad
  br i1 %i.hs, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph, !llvm.loop !155527

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w
  %i.ht = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.ht, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i
  %i.hu = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155574, !nonnull !67, !noundef !67 ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hu, i64 %.sroa.02.0.i ; 6 uses
  %min.iters.check59 = icmp ult i64 %.sroa.11.0.i, 16
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %bb.y
  %i.hw = ptrtoaddr ptr %i.hu to i64
  %2 = add i64 %.idx, %i.hw
  %3 = shl i64 %.sroa.02.0.i, 2
  %i.hx = add i64 %2, %3
  %i.hy = add i64 %.idx8, %i.y
  %i.hz = sub i64 %i.hy, %i.hx
  %diff.check57 = icmp ugt i64 %i.hz, -32
  br i1 %diff.check57, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %.sroa.11.0.i, -8            ; 4 uses
  %i.ia = add i64 %i.ad, %n.vec61
  %i.ib = getelementptr [4 x i8], ptr %i.hv, i64 %i.ad
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index63 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load64 = load <4 x i32>, ptr %i.ic, align 4, !alias.scope !155575, !noalias !155576
  %wide.load65 = load <4 x i32>, ptr %i.id, align 4, !alias.scope !155575, !noalias !155576
  %i.ie = getelementptr [4 x i8], ptr %i.ib, i64 %index63 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 16
  store <4 x i32> %wide.load64, ptr %i.ie, align 4, !noalias !155577
  store <4 x i32> %wide.load65, ptr %i.if, align 4, !noalias !155577
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.ig = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.ig, label %middle.block67, label %vector.body62, !llvm.loop !155540

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i64 %.sroa.11.0.i, %n.vec61
  br i1 %cmp.n68, label %.loopexit, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck56, %bb.y, %middle.block67
  %.ph140 = phi i64 [ %i.ad, %vector.memcheck56 ], [ %i.ad, %bb.y ], [ %i.ia, %middle.block67 ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %bb.y ], [ %n.vec61, %middle.block67 ] ; 3 uses
  %xtraiter142 = and i64 %.sroa.11.0.i, 3         ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader, %scalar.ph58.prol
  %i.ih = phi i64 [ %i.ik, %scalar.ph58.prol ], [ %.ph140, %scalar.ph58.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.prol = phi i64 [ %i.il, %scalar.ph58.prol ], [ %.sroa.01.0.i2.i.i41.i.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %scalar.ph58.prol ], [ 0, %scalar.ph58.preheader ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i.prol
  %.val8.i3.i.i42.i.i.prol = load i32, ptr %i.ii, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.ij = getelementptr [4 x i8], ptr %i.hv, i64 %i.ih
  store i32 %.val8.i3.i.i42.i.i.prol, ptr %i.ij, align 4, !noalias !155577
  %i.ik = add i64 %i.ih, 1                        ; 2 uses
  %i.il = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol, !llvm.loop !155541

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.unr = phi i64 [ %.ph140, %scalar.ph58.preheader ], [ %i.ik, %scalar.ph58.prol ]
  %.sroa.01.0.i2.i.i41.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i41.i.i.ph, %scalar.ph58.preheader ], [ %i.il, %scalar.ph58.prol ]
  %i.im = sub nsw i64 %.sroa.01.0.i2.i.i41.i.i.ph, %.sroa.11.0.i
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.loopexit, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %i.io = phi i64 [ %i.jd, %scalar.ph58 ], [ %.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i41.i.i = phi i64 [ %i.je, %scalar.ph58 ], [ %.sroa.01.0.i2.i.i41.i.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %.val8.i3.i.i42.i.i = load i32, ptr %i.ip, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.iq = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  store i32 %.val8.i3.i.i42.i.i, ptr %i.iq, align 4, !noalias !155577
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.val8.i3.i.i42.i.i.1 = load i32, ptr %i.is, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.it = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.iu = getelementptr i8, ptr %i.it, i64 4
  store i32 %.val8.i3.i.i42.i.i.1, ptr %i.iu, align 4, !noalias !155577
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.val8.i3.i.i42.i.i.2 = load i32, ptr %i.iw, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.ix = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store i32 %.val8.i3.i.i42.i.i.2, ptr %i.iy, align 4, !noalias !155577
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %.val8.i3.i.i42.i.i.3 = load i32, ptr %i.ja, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.jb = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.jc = getelementptr i8, ptr %i.jb, i64 12
  store i32 %.val8.i3.i.i42.i.i.3, ptr %i.jc, align 4, !noalias !155577
  %i.jd = add i64 %i.io, 4
  %i.je = add nuw i64 %.sroa.01.0.i2.i.i41.i.i, 4 ; 2 uses
  %i.jf = icmp eq i64 %i.je, %.sroa.11.0.i
  br i1 %i.jf, label %.loopexit, label %scalar.ph58, !llvm.loop !155542

.loopexit:                                        ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %middle.block67, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.gl, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i ], [ %.sroa.8.5.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ad, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i ], [ %i.af, %middle.block67 ], [ %.sroa.8.2.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.af, %scalar.ph58 ], [ %i.af, %scalar.ph58.prol.loopexit ]
  %i.jg = add i64 %.sroa.8.0.i.i, %i.aw
  store i64 %i.jg, ptr %i.ag, align 8, !alias.scope !155554, !noalias !155555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155616)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !155617, !noalias !155613, !noundef !67 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !155618, !noalias !155613, !nonnull !67, !noundef !67 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noalias !155619, !noundef !67 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !155620, !noalias !155621, !noundef !67 ; 3 uses
  %.not7.i.i23.i = icmp eq ptr %i.j, null
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 2 uses
  br i1 %.not7.i.i23.i, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i, label %.thread._crit_edge.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !155622, !noalias !155623, !noundef !67 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !155622, !noalias !155613, !nonnull !67 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !noalias !155619, !noundef !67
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 2
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val14.i.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !155624, !noalias !155625
  %i.z = ptrtoint ptr %.val14.i.i.pre.i to i64
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, %i.n
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.thread._crit_edge.i, %bb.d, %.thread.i
  %i.ae = phi ptr [ %i.j, %.thread._crit_edge.i ], [ %i.t, %bb.d ], [ null, %.thread.i ]
  %i.af = phi i32 [ %i.h, %.thread._crit_edge.i ], [ %i.u, %bb.d ], [ %i.h, %.thread.i ]
  %i.ag = phi ptr [ %i.f, %.thread._crit_edge.i ], [ null, %bb.d ], [ %i.f, %.thread.i ]
  %.sink24.i.i.i = phi i64 [ %i.ad, %.thread._crit_edge.i ], [ %i.y, %bb.d ], [ %i.n, %.thread.i ] ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sink24.i.i.i, i64 3) ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = shl i64 %i.ai, 2                        ; 4 uses
  %i.ak = icmp samesign ugt i64 %.sink24.i.i.i, 4611686018427387902
  %.not.i.i = icmp ugt i64 %i.aj, 9223372036854775804
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %.not.i.i, !prof !73
  br i1 %or.cond.i.i, label %bb.i, label %bb.e, !prof !73

bb.e:                                             ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !155626
  %i.am = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !155626 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = ptrtoint ptr %i.am to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.h:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !155613, !noalias !155614
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8, !alias.scope !155613, !noalias !155614
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8, !alias.scope !155613, !noalias !155614
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2o_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterB11_EINtNtNtB2s_5slice4iter4IterB11_EEEE9from_iterCskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.f, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.ph.i = phi i64 [ %i.aj, %bb.f ], [ undef, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.416.0.ph.i = phi i64 [ 4, %bb.f ], [ 0, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i, i64 %.sroa.10.0.ph.i) #61, !noalias !155615
  unreachable

end_hunk_0
