Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/imd?download=true
inline.NumInlined: 597
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3gmx10ImdSession4Impl26prepareMoleculesInImdGroupERK10gmx_mtop_t:bb.a
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !169
  %i.ch = add nsw i32 %i.cg, %spec.select.lcssa
  %i.ci = getelementptr i8, ptr %i.cf, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !169
  %i.cj = add nsw i32 %.sroa.028.039, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.i, %._crit_edge
  %.sroa.028.1 = phi i32 [ %i.cj, %bb.i ], [ %.sroa.028.039, %._crit_edge ], [ %.sroa.028.039, %.preheader ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge42, label %bb.f, !llvm.loop !273

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit:        ; preds = %._crit_edge42
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %.sroa.028.0.lcssa, ptr %i.ck, align 8, !tbaa !169
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.af, ptr %.sroa.1032.0..sroa_idx, align 8, !tbaa !172
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.ad, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !169
  %i.cl = load ptr, ptr %3, align 8, !tbaa !275   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx17RangePartitioningD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !276
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #23
  br label %_ZN3gmx17RangePartitioningD2Ev.exit

_ZN3gmx17RangePartitioningD2Ev.exit:              ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.k:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !276
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.by to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cv) #23
  br label %_ZN3gmx17RangePartitioningD2Ev.exit27

_ZN3gmx17RangePartitioningD2Ev.exit27:            ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.l:                                             ; preds = %_ZN3gmx17RangePartitioningD2Ev.exit27, %bb.e
  %.pn24 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.bx, %_ZN3gmx17RangePartitioningD2Ev.exit27 ]
  resume { ptr, i32 } %.pn24
}

declare void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind writable sret(%"class.gmx::RangePartitioning") align 8, ptr noundef nonnull align 8 dereferenceable(768)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK3gmx10ImdSession4Impl21removeMolecularShiftsEPA3_Kf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !292  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %.pre = load i32, ptr %i.g, align 4, !tbaa !169
  %scevgep95 = getelementptr i8, ptr %1, i64 36   ; 2 uses
  br label %bb.b

._crit_edge84:                                    ; preds = %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph83, %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit
  %i.o = phi i32 [ %.pre, %.lr.ph83 ], [ %i.x, %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit ] ; 4 uses
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next88, %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit ]
  %i.p = sext i32 %i.o to i64                     ; 5 uses
  %i.q = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !169  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !169  ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !169  ; 7 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next88
  %i.x = load i32, ptr %i.w, align 4, !tbaa !169  ; 5 uses
  %.03066 = add nsw i32 %i.o, 1
  %i.y = icmp slt i32 %.03066, %i.x
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.z = add nsw i64 %i.p, 1                      ; 5 uses
  %i.aa = add i32 %i.x, -2
  %i.ab = sub i32 %i.aa, %i.o                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check147 = icmp ult i32 %i.ab, 3
  br i1 %min.iters.check147, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check148 = icmp ult i32 %i.ab, 15
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph149

vector.ph149:                                     ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 12
  %n.vec150 = and i64 %i.ad, 8589934576           ; 4 uses
  %i.af = add nsw i64 %i.z, %n.vec150
  %broadcast.splatinsert151 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat152 = shufflevector <8 x i32> %broadcast.splatinsert151, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert153 = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert155 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat156 = shufflevector <8 x i32> %broadcast.splatinsert155, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.ph149, %vector.body157
  %index158 = phi i64 [ 0, %vector.ph149 ], [ %index.next178, %vector.body157 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat152, %vector.ph149 ], [ %i.am, %vector.body157 ]
  %vec.phi159 = phi <8 x i32> [ %broadcast.splat152, %vector.ph149 ], [ %i.an, %vector.body157 ]
  %vec.phi160 = phi <8 x i32> [ %broadcast.splat154, %vector.ph149 ], [ %i.aq, %vector.body157 ]
  %vec.phi161 = phi <8 x i32> [ %broadcast.splat154, %vector.ph149 ], [ %i.ar, %vector.body157 ]
  %vec.phi162 = phi <8 x i32> [ %broadcast.splat156, %vector.ph149 ], [ %i.au, %vector.body157 ]
  %vec.phi163 = phi <8 x i32> [ %broadcast.splat156, %vector.ph149 ], [ %i.av, %vector.body157 ]
  %vec.phi164 = phi <8 x i32> [ %broadcast.splat152, %vector.ph149 ], [ %i.ak, %vector.body157 ]
  %vec.phi165 = phi <8 x i32> [ %broadcast.splat152, %vector.ph149 ], [ %i.al, %vector.body157 ]
  %vec.phi166 = phi <8 x i32> [ %broadcast.splat154, %vector.ph149 ], [ %i.ao, %vector.body157 ]
  %vec.phi167 = phi <8 x i32> [ %broadcast.splat154, %vector.ph149 ], [ %i.ap, %vector.body157 ]
  %vec.phi168 = phi <8 x i32> [ %broadcast.splat156, %vector.ph149 ], [ %i.as, %vector.body157 ]
  %vec.phi169 = phi <8 x i32> [ %broadcast.splat156, %vector.ph149 ], [ %i.at, %vector.body157 ]
  %i.ag = add i64 %i.z, %index158                 ; 2 uses
  %i.ah = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.ag
  %i.ai = getelementptr [12 x i8], ptr %i.e, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 96
  %wide.vec170 = load <24 x i32>, ptr %i.ah, align 4, !tbaa !169 ; 3 uses
  %strided.vec171 = shufflevector <24 x i32> %wide.vec170, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec172 = shufflevector <24 x i32> %wide.vec170, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec173 = shufflevector <24 x i32> %wide.vec170, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec174 = load <24 x i32>, ptr %i.aj, align 4, !tbaa !169 ; 3 uses
  %strided.vec175 = shufflevector <24 x i32> %wide.vec174, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec176 = shufflevector <24 x i32> %wide.vec174, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec177 = shufflevector <24 x i32> %wide.vec174, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.ak = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec171, <8 x i32> %vec.phi164) ; 2 uses
  %i.al = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec175, <8 x i32> %vec.phi165) ; 2 uses
  %i.am = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec171, <8 x i32> %vec.phi) ; 2 uses
  %i.an = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec175, <8 x i32> %vec.phi159) ; 2 uses
  %i.ao = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec172, <8 x i32> %vec.phi166) ; 2 uses
  %i.ap = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec176, <8 x i32> %vec.phi167) ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec172, <8 x i32> %vec.phi160) ; 2 uses
  %i.ar = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec176, <8 x i32> %vec.phi161) ; 2 uses
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec173, <8 x i32> %vec.phi168) ; 2 uses
  %i.at = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec177, <8 x i32> %vec.phi169) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec173, <8 x i32> %vec.phi162) ; 2 uses
  %i.av = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec177, <8 x i32> %vec.phi163) ; 2 uses
  %index.next178 = add nuw i64 %index158, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next178, %n.vec150
  br i1 %i.aw, label %middle.block179, label %vector.body157, !llvm.loop !277

middle.block179:                                  ; preds = %vector.body157
  %rdx.minmax = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.am, <8 x i32> %i.an)
  %i.ax = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax) ; 3 uses
  %rdx.minmax180 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aq, <8 x i32> %i.ar)
  %i.ay = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax180) ; 3 uses
  %rdx.minmax181 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.au, <8 x i32> %i.av)
  %i.az = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax181) ; 3 uses
  %rdx.minmax182 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ak, <8 x i32> %i.al)
  %i.ba = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax182) ; 3 uses
  %rdx.minmax183 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ao, <8 x i32> %i.ap)
  %i.bb = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax183) ; 3 uses
  %rdx.minmax184 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.as, <8 x i32> %i.at)
  %i.bc = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax184) ; 3 uses
  %cmp.n185 = icmp eq i64 %i.ad, %n.vec150
  br i1 %cmp.n185, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block179
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !293

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec150, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ax, %vec.epilog.iter.check ], [ %i.r, %vector.main.loop.iter.check ]
  %bc.merge.rdx187.a = phi i32 [ %i.ay, %vec.epilog.iter.check ], [ %i.t, %vector.main.loop.iter.check ]
  %bc.merge.rdx188.a = phi i32 [ %i.az, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %bc.merge.rdx189.a = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ %i.r, %vector.main.loop.iter.check ]
  %bc.merge.rdx190.a = phi i32 [ %i.bb, %vec.epilog.iter.check ], [ %i.t, %vector.main.loop.iter.check ]
  %bc.merge.rdx191 = phi i32 [ %i.bc, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %n.vec192 = and i64 %i.ad, 8589934588           ; 3 uses
  %2 = add nsw i64 %i.z, %n.vec192
  %broadcast.splatinsert193.a = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat194.a = shufflevector <4 x i32> %broadcast.splatinsert193.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %bc.merge.rdx187.a, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %bc.merge.rdx188.a, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %bc.merge.rdx189.a, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %bc.merge.rdx190.a, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %bc.merge.rdx191, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bd = getelementptr [12 x i8], ptr %i.e, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index205 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next216, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi206 = phi <4 x i32> [ %broadcast.splat194.a, %vec.epilog.ph ], [ %i.bg, %vec.epilog.vector.body ]
  %vec.phi207.a = phi <4 x i32> [ %broadcast.splat196, %vec.epilog.ph ], [ %i.bi, %vec.epilog.vector.body ]
  %vec.phi208 = phi <4 x i32> [ %broadcast.splat198, %vec.epilog.ph ], [ %i.bk, %vec.epilog.vector.body ]
  %vec.phi209 = phi <4 x i32> [ %broadcast.splat200, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %vec.phi210.a = phi <4 x i32> [ %broadcast.splat202, %vec.epilog.ph ], [ %i.bh, %vec.epilog.vector.body ]
  %vec.phi211 = phi <4 x i32> [ %broadcast.splat204, %vec.epilog.ph ], [ %i.bj, %vec.epilog.vector.body ]
  %i.be = getelementptr [12 x i8], ptr %i.bd, i64 %index205
  %wide.vec212 = load <12 x i32>, ptr %i.be, align 4, !tbaa !169 ; 3 uses
  %strided.vec213.a = shufflevector <12 x i32> %wide.vec212, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9> ; 2 uses
  %strided.vec214.a = shufflevector <12 x i32> %wide.vec212, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10> ; 2 uses
  %strided.vec215 = shufflevector <12 x i32> %wide.vec212, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11> ; 2 uses
  %i.bf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec213.a, <4 x i32> %vec.phi209) ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec213.a, <4 x i32> %vec.phi206) ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec214.a, <4 x i32> %vec.phi210.a) ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec214.a, <4 x i32> %vec.phi207.a) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec215, <4 x i32> %vec.phi211) ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec215, <4 x i32> %vec.phi208) ; 2 uses
  %index.next216 = add nuw i64 %index205, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next216, %n.vec192
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !278

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bm = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bg) ; 2 uses
  %i.bn = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bi) ; 2 uses
  %i.bo = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bk) ; 2 uses
  %i.bp = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bf) ; 2 uses
  %i.bq = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bh) ; 2 uses
  %i.br = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bj) ; 2 uses
  %cmp.n217 = icmp eq i64 %i.ad, %n.vec192
  br i1 %cmp.n217, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.z, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  %.sroa.049.072.ph = phi i32 [ %i.r, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.sroa.7.071.ph = phi i32 [ %i.t, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.sroa.12.070.ph = phi i32 [ %i.v, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  %.sroa.053.069.ph = phi i32 [ %i.r, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.sroa.755.068.ph = phi i32 [ %i.t, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.sroa.1257.067.ph = phi i32 [ %i.v, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block179, %vec.epilog.middle.block, %bb.b
  %.sroa.1257.0.lcssa = phi i32 [ %i.v, %bb.b ], [ %i.br, %vec.epilog.middle.block ], [ %i.bc, %middle.block179 ], [ %.sroa.1257.1, %.lr.ph ] ; 2 uses
  %.sroa.755.0.lcssa = phi i32 [ %i.t, %bb.b ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bb, %middle.block179 ], [ %.sroa.755.1, %.lr.ph ] ; 2 uses
  %.sroa.053.0.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.bp, %vec.epilog.middle.block ], [ %i.ba, %middle.block179 ], [ %spec.select63, %.lr.ph ] ; 2 uses
  %.sroa.12.0.lcssa = phi i32 [ %i.v, %bb.b ], [ %i.bo, %vec.epilog.middle.block ], [ %i.az, %middle.block179 ], [ %.sroa.12.1, %.lr.ph ] ; 2 uses
  %.sroa.7.0.lcssa = phi i32 [ %i.t, %bb.b ], [ %i.bn, %vec.epilog.middle.block ], [ %i.ay, %middle.block179 ], [ %.sroa.7.1, %.lr.ph ]
  %.sroa.049.0.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.bm, %vec.epilog.middle.block ], [ %i.ax, %middle.block179 ], [ %.sroa.049.1, %.lr.ph ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.049.0.lcssa, i32 0)
  %.sroa.8.0 = tail call i32 @llvm.smax.i32(i32 %.sroa.7.0.lcssa, i32 0)
  %i.bs = icmp slt i32 %.sroa.053.0.lcssa, 0
  %.sroa.0.1 = select i1 %i.bs, i32 %.sroa.053.0.lcssa, i32 %spec.select ; 3 uses
  %i.bt = icmp slt i32 %.sroa.755.0.lcssa, 0
  %.sroa.8.1 = select i1 %i.bt, i32 %.sroa.755.0.lcssa, i32 %.sroa.8.0 ; 3 uses
  %i.bu = icmp slt i32 %.sroa.1257.0.lcssa, 0
  br i1 %i.bu, label %.thread, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.049.072 = phi i32 [ %.sroa.049.1, %.lr.ph ], [ %.sroa.049.072.ph, %.lr.ph.preheader ]
  %.sroa.7.071 = phi i32 [ %.sroa.7.1, %.lr.ph ], [ %.sroa.7.071.ph, %.lr.ph.preheader ]
  %.sroa.12.070 = phi i32 [ %.sroa.12.1, %.lr.ph ], [ %.sroa.12.070.ph, %.lr.ph.preheader ]
  %.sroa.053.069 = phi i32 [ %spec.select63, %.lr.ph ], [ %.sroa.053.069.ph, %.lr.ph.preheader ]
  %.sroa.755.068 = phi i32 [ %.sroa.755.1, %.lr.ph ], [ %.sroa.755.068.ph, %.lr.ph.preheader ]
  %.sroa.1257.067 = phi i32 [ %.sroa.1257.1, %.lr.ph ], [ %.sroa.1257.067.ph, %.lr.ph.preheader ]
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !169 ; 2 uses
  %spec.select63 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 %.sroa.053.069) ; 2 uses
  %.sroa.049.1 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %.sroa.049.072) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !169 ; 2 uses
  %.sroa.755.1 = tail call i32 @llvm.smax.i32(i32 %i.by, i32 %.sroa.755.068) ; 2 uses
  %.sroa.7.1 = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %.sroa.7.071) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !169 ; 2 uses
  %.sroa.1257.1 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.sroa.1257.067) ; 2 uses
  %.sroa.12.1 = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %.sroa.12.070) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !279

bb.c:                                             ; preds = %._crit_edge
  %.sroa.14.0 = tail call i32 @llvm.smax.i32(i32 %.sroa.12.0.lcssa, i32 0)
  %i.cb = icmp ne i32 %.sroa.0.1, 0
  %i.cc = icmp ne i32 %.sroa.8.1, 0
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cc
  %i.cd = icmp sgt i32 %.sroa.12.0.lcssa, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.cd
  br i1 %or.cond5, label %.thread, label %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit

.thread:                                          ; preds = %._crit_edge, %bb.c
  %.sroa.14.162 = phi i32 [ %.sroa.14.0, %bb.c ], [ %.sroa.1257.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ce = sub i32 %i.x, %i.o                      ; 6 uses
  %i.cf = getelementptr [12 x i8], ptr %i.i, i64 %i.p ; 10 uses
  %i.cg = load float, ptr %i.j, align 4, !tbaa !179
  %i.ch = fcmp une float %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.ci = load float, ptr %i.k, align 4, !tbaa !179
  %i.cj = fcmp une float %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ck = load float, ptr %i.l, align 4, !tbaa !179
  %i.cl = fcmp une float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.cm = icmp sgt i32 %i.ce, 0
  br i1 %i.cm, label %.lr.ph.i, label %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cn = sitofp i32 %.sroa.0.1 to float
  %i.co = fneg float %i.cn                        ; 4 uses
  %i.cp = sitofp i32 %.sroa.8.1 to float
  %i.cq = fneg float %i.cp                        ; 4 uses
  %i.cr = sitofp i32 %.sroa.14.162 to float
  %i.cs = fneg float %i.cr                        ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.ce to i64 ; 6 uses
  %min.iters.check120 = icmp ult i32 %i.ce, 8
  br i1 %min.iters.check120, label %scalar.ph119.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i
  %i.ct = add nsw i64 %i.p, %wide.trip.count.i
  %i.cu = mul nsw i64 %i.ct, 12
  %scevgep115 = getelementptr i8, ptr %i.i, i64 %i.cu
  %bound0116 = icmp ult ptr %i.cf, %scevgep95
  %bound1117 = icmp ult ptr %1, %scevgep115
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %scalar.ph119.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck114
  %n.vec122 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.cv = load float, ptr %1, align 4, !tbaa !179, !alias.scope !294
  %broadcast.splatinsert135 = insertelement <8 x float> poison, float %i.cv, i64 0
  %broadcast.splat136 = shufflevector <8 x float> %broadcast.splatinsert135, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cw = load float, ptr %i.m, align 4, !tbaa !179, !alias.scope !294
  %broadcast.splatinsert137 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat138 = shufflevector <8 x float> %broadcast.splatinsert137, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cx = load float, ptr %i.n, align 4, !tbaa !179, !alias.scope !294
  %broadcast.splatinsert139 = insertelement <8 x float> poison, float %i.cx, i64 0
  %broadcast.splat140 = shufflevector <8 x float> %broadcast.splatinsert139, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat124 = shufflevector <8 x float> %broadcast.splatinsert123, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat126 = shufflevector <8 x float> %broadcast.splatinsert125, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <8 x float> poison, float %i.cs, i64 0
  %broadcast.splat128 = shufflevector <8 x float> %broadcast.splatinsert127, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph121
  %index130 = phi i64 [ 0, %vector.ph121 ], [ %index.next142, %vector.body129 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %index130 ; 2 uses
  %wide.vec131 = load <24 x float>, ptr %i.cy, align 4, !tbaa !179, !alias.scope !295, !noalias !294 ; 3 uses
  %strided.vec132 = shufflevector <24 x float> %wide.vec131, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec133 = shufflevector <24 x float> %wide.vec131, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec134 = shufflevector <24 x float> %wide.vec131, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.cz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat124, <8 x float> %broadcast.splat136, <8 x float> %strided.vec132)
  %i.da = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat126, <8 x float> %broadcast.splat138, <8 x float> %strided.vec133)
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat128, <8 x float> %broadcast.splat140, <8 x float> %strided.vec134)
  %i.dc = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = shufflevector <8 x float> %i.db, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec141 = shufflevector <16 x float> %i.dc, <16 x float> %i.dd, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec141, ptr %i.cy, align 4, !tbaa !179, !alias.scope !295, !noalias !294
  %index.next142 = add nuw i64 %index130, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next142, %n.vec122
  br i1 %i.de, label %middle.block143, label %vector.body129, !llvm.loop !283

middle.block143:                                  ; preds = %vector.body129
  %cmp.n144 = icmp eq i64 %n.vec122, %wide.trip.count.i
  br i1 %cmp.n144, label %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %vector.memcheck114, %.lr.ph.i, %middle.block143
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %.lr.ph.i ], [ %n.vec122, %middle.block143 ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol

scalar.ph119.prol:                                ; preds = %scalar.ph119.preheader
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %indvars.iv.i.ph ; 4 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !179
  %i.dh = load float, ptr %1, align 4, !tbaa !179
  %i.di = tail call float @llvm.fmuladd.f32(float %i.co, float %i.dh, float %i.dg)
  store float %i.di, ptr %i.df, align 4, !tbaa !179
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !179
  %i.dl = load float, ptr %i.m, align 4, !tbaa !179
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dl, float %i.dk)
  store float %i.dm, ptr %i.dj, align 4, !tbaa !179
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !179
  %i.dp = load float, ptr %i.n, align 4, !tbaa !179
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.dp, float %i.do)
  store float %i.dq, ptr %i.dn, align 4, !tbaa !179
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph119.prol.loopexit

scalar.ph119.prol.loopexit:                       ; preds = %scalar.ph119.prol, %scalar.ph119.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph119.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph119.prol ]
  %i.dr = add nsw i64 %wide.trip.count.i, -1
  %i.ds = icmp eq i64 %indvars.iv.i.ph, %i.dr
  br i1 %i.ds, label %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit, label %scalar.ph119

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread
  %i.dt = icmp sgt i32 %i.ce, 0
  br i1 %i.dt, label %.lr.ph59.i, label %_ZN3gmxL15shift_positionsEPA3_KfPA3_fPKii.exit

.lr.ph59.i:                                       ; preds = %bb.f
  %i.du = sitofp i32 %.sroa.0.1 to float
  %i.dv = fneg float %i.du                        ; 4 uses
  %i.dw = sitofp i32 %.sroa.8.1 to float
  %i.dx = fneg float %i.dw                        ; 7 uses
  %i.dy = sitofp i32 %.sroa.14.162 to float
  %i.dz = fneg float %i.dy                        ; 10 uses
  %wide.trip.count65.i = zext nneg i32 %i.ce to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ce, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph59.i
  %i.ea = add nsw i64 %i.p, %wide.trip.count65.i
  %i.eb = mul nsw i64 %i.ea, 12
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.eb
  %bound0 = icmp ult ptr %i.cf, %scevgep95
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

end_hunk_0
