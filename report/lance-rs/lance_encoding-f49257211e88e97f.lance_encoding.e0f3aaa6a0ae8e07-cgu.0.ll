Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive12PageLoadTaskENCNvXsD_B23_NtB23_37StructuralPrimitiveFieldSchedulingJobNtNtB29_7decoder23StructuralSchedulingJob13schedule_next0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB29_:bb.a
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %bb.w
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = shl nuw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, 2
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = sub i64 %i.fe, %i.fk
  %diff.check128 = icmp ugt i64 %i.fl, -32
  br i1 %diff.check128, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck127
  %n.vec132 = and i64 %i.fg, 4611686018427387896  ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, %n.vec132
  %i.fn = getelementptr [4 x i8], ptr %i.fh, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %index134 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load135 = load <4 x i32>, ptr %i.fo, align 4, !alias.scope !60643, !noalias !60644
  %wide.load136 = load <4 x i32>, ptr %i.fp, align 4, !alias.scope !60643, !noalias !60644
  %i.fq = getelementptr [4 x i8], ptr %i.fn, i64 %index134 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <4 x i32> %wide.load135, ptr %i.fq, align 4, !noalias !60645
  store <4 x i32> %wide.load136, ptr %i.fr, align 4, !noalias !60645
  %index.next137 = add nuw i64 %index134, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.fs, label %middle.block138, label %vector.body133, !llvm.loop !60567

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %i.fg, %n.vec132
  br i1 %cmp.n139, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck127, %bb.w, %middle.block138
  %.ph = phi i64 [ %.sroa.9.0.i.i.i.i.i.i.i.i.i, %vector.memcheck127 ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.fm, %middle.block138 ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %bb.w ], [ %n.vec132, %middle.block138 ] ; 3 uses
  %xtraiter161 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %i.ft = phi i64 [ %i.fw, %scalar.ph129.prol ], [ %.ph, %scalar.ph129.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fx, %scalar.ph129.prol ], [ %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph129.preheader ] ; 2 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.prol
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.fu, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.fv = getelementptr [4 x i8], ptr %i.fh, i64 %i.ft
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.fv, align 4, !noalias !60645
  %i.fw = add i64 %i.ft, 1                        ; 2 uses
  %i.fx = add nuw i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !60568

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %.unr164 = phi i64 [ %.ph, %scalar.ph129.preheader ], [ %i.fw, %scalar.ph129.prol ]
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph129.preheader ], [ %i.fx, %scalar.ph129.prol ]
  %i.fy = sub nsw i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph, %i.fg
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %i.ga = phi i64 [ %i.gp, %scalar.ph129 ], [ %.unr164, %scalar.ph129.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %scalar.ph129 ], [ %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph129.prol.loopexit ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %.val10.i3.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.gb, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gc = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i, ptr %i.gc, align 4, !noalias !60645
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ge, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gf = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.1, ptr %i.gg, align 4, !noalias !60645
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.gi, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gj = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.2, ptr %i.gk, align 4, !noalias !60645
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.gm, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gn = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  %i.go = getelementptr i8, ptr %i.gn, i64 12
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.3, ptr %i.go, align 4, !noalias !60645
  %i.gp = add i64 %i.ga, 4
  %i.gq = add nuw i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, %i.fg
  br i1 %i.gr, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph129, !llvm.loop !60569

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block138
  %i.gs = add i64 %i.fg, %.sroa.8.5.i.i.i.i.i.i.i.i
  br label %.loopexit.i.i.i.i.i

bb.x:                                             ; preds = %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i
  %i.gt = icmp samesign eq i64 %.idx8.i.i.i.i.i.i, %.idx.i.i.i.i.i.i
  br i1 %i.gt, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gu = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60646, !nonnull !75, !noundef !75 ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.aj, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.y
  %i.gw = ptrtoaddr ptr %i.gu to i64
  %i.gx = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %i.gy = add i64 %i.gx, %i.gw
  %i.gz = add i64 %.idx8.i.i.i.i.i.i, %i.ae
  %i.ha = sub i64 %i.gz, %i.gy
  %diff.check = icmp ugt i64 %i.ha, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load = load <4 x i32>, ptr %i.hb, align 4, !alias.scope !60647, !noalias !60648
  %wide.load66 = load <4 x i32>, ptr %i.hc, align 4, !alias.scope !60647, !noalias !60648
  %i.hd = getelementptr [4 x i8], ptr %i.gv, i64 %index ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  store <4 x i32> %wide.load, ptr %i.hd, align 4, !noalias !60649
  store <4 x i32> %wide.load66, ptr %i.he, align 4, !noalias !60649
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !60588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.y, %middle.block
  %.sroa.8.8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.y ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hg = sub i64 %.sroa.5.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.hg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.8.8.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hj, %scalar.ph.prol ], [ %.sroa.8.8.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.hh, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hi = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.prol, ptr %i.hi, align 4, !noalias !60649
  %i.hj = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !60589

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.8.8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.8.8.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.hj, %scalar.ph.prol ]
  %i.hk = sub i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i
  %i.hl = add i64 %i.hk, %.sroa.8.8.i.i.i.i.i.i.i.i.ph
  %i.hm = icmp ugt i64 %i.hl, -4
  br i1 %i.hm, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.8.8.i.i.i.i.i.i.i.i = phi i64 [ %i.hy, %scalar.ph ], [ %.sroa.8.8.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.8.8.i.i.i.i.i.i.i.i
  %.val10.i.i.i38.i.i.i.i.i.i.i.i = load i32, ptr %i.hn, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.ho = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.8.8.i.i.i.i.i.i.i.i
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i, ptr %i.ho, align 4, !noalias !60649
  %i.hp = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hp
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.hq, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hr = getelementptr [4 x i8], ptr %i.gv, i64 %i.hp
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.1, ptr %i.hr, align 4, !noalias !60649
  %i.hs = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hs
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.ht, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hu = getelementptr [4 x i8], ptr %i.gv, i64 %i.hs
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.2, ptr %i.hu, align 4, !noalias !60649
  %i.hv = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hv
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.hw, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hx = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.3, ptr %i.hx, align 4, !noalias !60649
  %i.hy = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, %i.aj
  br i1 %i.hz, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !60590

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.x
  %i.ia = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, 0
  br i1 %i.ia, label %.loopexit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i
  %i.ib = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60650, !nonnull !75, !noundef !75 ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 6 uses
  %min.iters.check70 = icmp ult i64 %.sroa.11.0.i.i.i.i.i.i.i, 16
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %bb.z
  %i.id = ptrtoaddr ptr %i.ib to i64
  %2 = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %3 = add i64 %.idx.i.i.i.i.i.i, %i.id
  %i.ie = add i64 %3, %2
  %i.if = add i64 %.idx8.i.i.i.i.i.i, %i.ae
  %i.ig = sub i64 %i.if, %i.ie
  %diff.check68 = icmp ugt i64 %i.ig, -32
  br i1 %diff.check68, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck67
  %n.vec72 = and i64 %.sroa.11.0.i.i.i.i.i.i.i, -8 ; 4 uses
  %i.ih = add i64 %i.aj, %n.vec72
  %i.ii = getelementptr [4 x i8], ptr %i.ic, i64 %i.aj
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body73 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index74 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load75 = load <4 x i32>, ptr %i.ij, align 4, !alias.scope !60651, !noalias !60652
  %wide.load76 = load <4 x i32>, ptr %i.ik, align 4, !alias.scope !60651, !noalias !60652
  %i.il = getelementptr [4 x i8], ptr %i.ii, i64 %index74 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  store <4 x i32> %wide.load75, ptr %i.il, align 4, !noalias !60653
  store <4 x i32> %wide.load76, ptr %i.im, align 4, !noalias !60653
  %index.next77 = add nuw i64 %index74, 8         ; 2 uses
  %i.in = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.in, label %middle.block78, label %vector.body73, !llvm.loop !60603

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, %n.vec72
  br i1 %cmp.n79, label %.loopexit.i.i.i.i.i, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %vector.memcheck67, %bb.z, %middle.block78
  %.ph152 = phi i64 [ %i.aj, %vector.memcheck67 ], [ %i.aj, %bb.z ], [ %i.ih, %middle.block78 ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck67 ], [ 0, %bb.z ], [ %n.vec72, %middle.block78 ] ; 3 uses
  %xtraiter154 = and i64 %.sroa.11.0.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol

scalar.ph69.prol:                                 ; preds = %scalar.ph69.preheader, %scalar.ph69.prol
  %i.io = phi i64 [ %i.ir, %scalar.ph69.prol ], [ %.ph152, %scalar.ph69.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.is, %scalar.ph69.prol ], [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %scalar.ph69.preheader ] ; 2 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %scalar.ph69.prol ], [ 0, %scalar.ph69.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.ip, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.iq = getelementptr [4 x i8], ptr %i.ic, i64 %i.io
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.prol, ptr %i.iq, align 4, !noalias !60653
  %i.ir = add i64 %i.io, 1                        ; 2 uses
  %i.is = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol, !llvm.loop !60604

scalar.ph69.prol.loopexit:                        ; preds = %scalar.ph69.prol, %scalar.ph69.preheader
  %.unr = phi i64 [ %.ph152, %scalar.ph69.preheader ], [ %i.ir, %scalar.ph69.prol ]
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %scalar.ph69.preheader ], [ %i.is, %scalar.ph69.prol ]
  %i.it = sub nsw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %.sroa.11.0.i.i.i.i.i.i.i
  %i.iu = icmp ugt i64 %i.it, -4
  br i1 %i.iu, label %.loopexit.i.i.i.i.i, label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69
  %i.iv = phi i64 [ %i.jk, %scalar.ph69 ], [ %.unr, %scalar.ph69.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i = phi i64 [ %i.jl, %scalar.ph69 ], [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.unr, %scalar.ph69.prol.loopexit ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i = load i32, ptr %i.iw, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ix = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i, ptr %i.ix, align 4, !noalias !60653
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.iz, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ja = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  %i.jb = getelementptr i8, ptr %i.ja, i64 4
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.1, ptr %i.jb, align 4, !noalias !60653
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.jd, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.je = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.2, ptr %i.jf, align 4, !noalias !60653
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.jh, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ji = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  %i.jj = getelementptr i8, ptr %i.ji, i64 12
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.3, ptr %i.jj, align 4, !noalias !60653
  %i.jk = add i64 %i.iv, 4
  %i.jl = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, %.sroa.11.0.i.i.i.i.i.i.i
  br i1 %i.jm, label %.loopexit.i.i.i.i.i, label %scalar.ph69, !llvm.loop !60605

bb.aa:                                            ; preds = %bb.e
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.thread4.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block78, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.8.5.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i ], [ %i.al, %middle.block78 ], [ %.sroa.8.2.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.al, %scalar.ph69 ], [ %i.al, %scalar.ph69.prol.loopexit ]
  %i.jo = add i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %i.bc
  store i64 %i.jo, ptr %i.r, align 8, !alias.scope !60630, !noalias !60631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !60620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60617
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i) ]
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %i.jp, align 8, !noalias !60620
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.59.0.copyload.i.i.i, ptr %i.jq, align 8, !noalias !60620
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.jr, align 8, !noalias !60620
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60654
  %i.js = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !60654 ; 4 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.ab, label %bb.ae, !prof !77

bb.ab:                                            ; preds = %.loopexit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #66
          to label %.noexc14.i.i.i.i.i unwind label %bb.ac, !noalias !60620

.noexc14.i.i.i.i.i:                               ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtBL_37StructuralPrimitiveFieldSchedulingJobNtNtBR_7decoder23StructuralSchedulingJob13schedule_next00EBR_(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #67
          to label %.thread.i.i.i.i.i unwind label %bb.ad, !noalias !60620

bb.ad:                                            ; preds = %bb.ac
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !60620
  unreachable

bb.ae:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.js, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !60620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60620
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60620
  %i.jw = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !60620 ; 5 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.af, label %bb.al, !prof !77

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #66
          to label %.noexc15.i.i.i.i.i unwind label %bb.ag, !noalias !60620

.noexc15.i.i.i.i.i:                               ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder15LoadedPageShardNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2t_(ptr nonnull %i.js, ptr nonnull @1183) #67
          to label %.thread.i.i.i.i.i unwind label %bb.ah, !noalias !60620

bb.ah:                                            ; preds = %bb.ag
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.ak, %bb.ah
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !60620
  unreachable

.thread.i.i.i.i.i:                                ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.aj, %bb.ag, %bb.ac
  %.pn3.i.i.i.i.i = phi { ptr, i32 } [ %i.ju, %bb.ac ], [ %i.jy, %bb.ag ], [ %eh.lpad-body13.i.i.i.i.i, %bb.aj ], [ %eh.lpad-body13.i.i.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn3.i.i.i.i.i

.thread4.i.i.i.i.i:                               ; preds = %bb.aa, %bb.j, %bb.i
  %eh.lpad-body13.i.i.i.i.i = phi { ptr, i32 } [ %i.jn, %bb.aa ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i) ], !noalias !60655
  %i.ka = load ptr, ptr %.sroa.59.0.copyload.i.i.i, align 8, !invariant.load !75, !noalias !60620 ; 2 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i3.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread4.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ], !noalias !60655
  invoke void %i.ka(ptr noundef nonnull %.sroa.08.0.copyload.i.i.i)
          to label %bb.aj unwind label %bb.ak, !noalias !60620

bb.aj:                                            ; preds = %bb.ai, %.thread4.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !range !76, !invariant.load !75, !noalias !60620 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %.thread.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !range !93, !invariant.load !75, !noalias !60620
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ], !noalias !60655
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload.i.i.i, i64 noundef %i.kc, i64 noundef range(i64 1, -9223372036854775807) %i.kf) #63, !noalias !60620
  br label %.thread.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !range !76, !invariant.load !75, !noalias !60620 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %.body.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.ak
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 16
end_hunk_0
