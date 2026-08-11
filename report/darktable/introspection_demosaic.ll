inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a

vec.epilog.iter.check3692:                        ; preds = %middle.block3684
  br i1 %min.epilog.iters.check3693, label %vec.epilog.scalar.ph3691.preheader, label %vec.epilog.ph3694, !prof !187

vec.epilog.ph3694:                                ; preds = %vector.main.loop.iter.check3671, %vec.epilog.iter.check3692
  %vec.epilog.resume.val3686 = phi i64 [ %n.vec3674, %vec.epilog.iter.check3692 ], [ 0, %vector.main.loop.iter.check3671 ]
  %i.jmt = add nuw nsw i64 %n.vec3695, %i.jkq
  %i.jmu = add nsw i64 %n.vec3695, %i.jkp
  %invariant.gep4934 = getelementptr [4 x i8], ptr %i.ays, i64 %i.jkq
  br label %vec.epilog.vector.body3698

vec.epilog.vector.body3698:                       ; preds = %vec.epilog.vector.body3698, %vec.epilog.ph3694
  %index3699 = phi i64 [ %vec.epilog.resume.val3686, %vec.epilog.ph3694 ], [ %index.next3701, %vec.epilog.vector.body3698 ] ; 3 uses
  %i.jmv = add i64 %index3699, %i.jkp             ; 3 uses
  %gep4935 = getelementptr [4 x i8], ptr %invariant.gep4934, i64 %index3699
  %wide.load3700 = load <4 x float>, ptr %gep4935, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %i.jmw = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load3700, <4 x float> zeroinitializer)
  %i.jmx = fmul reassoc nsz arcp contract afn <4 x float> %i.jmw, %i.axf ; 3 uses
  %i.jmy = getelementptr inbounds [4 x i8], ptr %i.jkz, i64 %i.jmv
  store <4 x float> %i.jmx, ptr %i.jmy, align 16, !tbaa !22, !noalias !277
  %i.jmz = getelementptr inbounds [4 x i8], ptr %i.jlb, i64 %i.jmv
  store <4 x float> %i.jmx, ptr %i.jmz, align 16, !tbaa !22, !noalias !277
  %i.jna = getelementptr inbounds [4 x i8], ptr %i.jgx, i64 %i.jmv
  store <4 x float> %i.jmx, ptr %i.jna, align 16, !tbaa !22, !noalias !277
  %index.next3701 = add nuw i64 %index3699, 4     ; 2 uses
  %i.jnb = icmp eq i64 %index.next3701, %n.vec3695
  br i1 %i.jnb, label %vec.epilog.middle.block3702, label %vec.epilog.vector.body3698, !llvm.loop !284

vec.epilog.middle.block3702:                      ; preds = %vec.epilog.vector.body3698
  br i1 %cmp.n3703, label %._crit_edge.i548, label %vec.epilog.scalar.ph3691.preheader

vec.epilog.scalar.ph3691.preheader:               ; preds = %vector.memcheck3654, %iter.check3690, %vec.epilog.iter.check3692, %vec.epilog.middle.block3702
  %indvars.iv953.i.ph = phi i64 [ %i.jkq, %iter.check3690 ], [ %i.jkq, %vector.memcheck3654 ], [ %i.jls, %vec.epilog.iter.check3692 ], [ %i.jmt, %vec.epilog.middle.block3702 ]
  %indvars.iv945.i.ph = phi i64 [ %i.jkp, %iter.check3690 ], [ %i.jkp, %vector.memcheck3654 ], [ %i.jlt, %vec.epilog.iter.check3692 ], [ %i.jmu, %vec.epilog.middle.block3702 ]
  %.0743838.i.ph = phi i32 [ %i.jka, %iter.check3690 ], [ %i.jka, %vector.memcheck3654 ], [ %i.jkj, %vec.epilog.iter.check3692 ], [ %i.jkl, %vec.epilog.middle.block3702 ]
  br label %vec.epilog.scalar.ph3691

._crit_edge.i548:                                 ; preds = %vec.epilog.scalar.ph3691, %vec.epilog.middle.block3702, %middle.block3684
  %i.jnc = add nuw nsw i32 %.0742839.i, 1         ; 2 uses
  %i.jnd = icmp slt i32 %i.jnc, %i.jhp
  %indvars.iv.next.i549 = add i32 %indvars.iv.i547, 112
  %indvars.iv.next952.i = add i32 %indvars.iv951.i, %i.bo
  br i1 %i.jnd, label %iter.check3690, label %._crit_edge842.split.i

vec.epilog.scalar.ph3691:                         ; preds = %vec.epilog.scalar.ph3691.preheader, %vec.epilog.scalar.ph3691
  %indvars.iv953.i = phi i64 [ %indvars.iv.next954.i, %vec.epilog.scalar.ph3691 ], [ %indvars.iv953.i.ph, %vec.epilog.scalar.ph3691.preheader ] ; 2 uses
  %indvars.iv945.i = phi i64 [ %indvars.iv.next946.i, %vec.epilog.scalar.ph3691 ], [ %indvars.iv945.i.ph, %vec.epilog.scalar.ph3691.preheader ] ; 4 uses
  %.0743838.i = phi i32 [ %i.jnl, %vec.epilog.scalar.ph3691 ], [ %.0743838.i.ph, %vec.epilog.scalar.ph3691.preheader ]
  %i.jne = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv953.i
  %i.jnf = load float, ptr %i.jne, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %i.jng = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jnf, float 0.000000e+00)
  %i.jnh = fmul reassoc nsz arcp contract afn float %i.jng, %i.axg ; 3 uses
  %i.jni = getelementptr inbounds [4 x i8], ptr %i.jkz, i64 %indvars.iv945.i
  store float %i.jnh, ptr %i.jni, align 4, !tbaa !22, !noalias !277
  %i.jnj = getelementptr inbounds [4 x i8], ptr %i.jlb, i64 %indvars.iv945.i
  store float %i.jnh, ptr %i.jnj, align 4, !tbaa !22, !noalias !277
  %i.jnk = getelementptr inbounds [4 x i8], ptr %i.jgx, i64 %indvars.iv945.i
  store float %i.jnh, ptr %i.jnk, align 4, !tbaa !22, !noalias !277
  %i.jnl = add nuw nsw i32 %.0743838.i, 1         ; 2 uses
  %indvars.iv.next946.i = add nsw i64 %indvars.iv945.i, 1
  %indvars.iv.next954.i = add nuw nsw i64 %indvars.iv953.i, 1
  %i.jnm = icmp slt i32 %i.jnl, %i.jkc
  br i1 %i.jnm, label %vec.epilog.scalar.ph3691, label %._crit_edge.i548, !llvm.loop !285

._crit_edge851.split.i:                           ; preds = %._crit_edge847.i, %.lr.ph850.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !282
  br i1 %i.jhx, label %.lr.ph872.i, label %.preheader832.i

.lr.ph872.i:                                      ; preds = %._crit_edge851.split.i
  %i.jnn = icmp sgt i32 %i.jkd, 6
  %i.jno = icmp samesign ugt i32 %i.jkd, 8
  br i1 %i.jnn, label %.lr.ph855.preheader.i.preheader, label %.lr.ph881.i

.lr.ph855.preheader.i.preheader:                  ; preds = %.lr.ph872.i
  %scevgep3546 = getelementptr i8, ptr %i.jgu, i64 %i.jje
  %scevgep3596 = getelementptr i8, ptr %scevgep3595, i64 %i.jja
  %i.jnp = add nsw i64 %i.jiq, -1
  %i.jnq = add nsw i64 %i.jin, -1
  %i.jnr = add nsw i64 %i.jjw, -3                 ; 3 uses
  %min.iters.check3620 = icmp ult i64 %i.jnr, 8
  %n.vec3622 = and i64 %i.jnr, -8                 ; 4 uses
  %i.jns = or disjoint i64 %n.vec3622, 3
  %cmp.n3633 = icmp eq i64 %i.jnr, %n.vec3622
  %i.jnt = add nsw i64 %i.jju, -4                 ; 3 uses
  %min.iters.check3602 = icmp ult i64 %i.jnt, 8
  %n.vec3604 = and i64 %i.jnt, -8                 ; 4 uses
  %i.jnu = or disjoint i64 %n.vec3604, 4
  %cmp.n3616 = icmp eq i64 %i.jnt, %n.vec3604
  %i.jnv = add nsw i64 %i.jju, -4                 ; 3 uses
  %min.iters.check3572 = icmp ult i64 %i.jnv, 8
  %n.vec3574 = and i64 %i.jnv, -8                 ; 4 uses
  %i.jnw = or disjoint i64 %n.vec3574, 4
  %cmp.n3585 = icmp eq i64 %i.jnv, %n.vec3574
  br label %.lr.ph855.preheader.i

.lr.ph846.i:                                      ; preds = %.lr.ph846.i.preheader, %._crit_edge847.i
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %._crit_edge847.i ], [ %i.jjx, %.lr.ph846.i.preheader ] ; 2 uses
  %.sroa.phi = phi ptr [ %.sroa.gep, %._crit_edge847.i ], [ %.sroa.gep4879, %.lr.ph846.i.preheader ] ; 2 uses
  %indvars.iv967.i = phi i64 [ 4, %._crit_edge847.i ], [ 3, %.lr.ph846.i.preheader ]
  %indvars.iv960.i = phi i64 [ %indvars.iv.next961.i, %._crit_edge847.i ], [ 340, %.lr.ph846.i.preheader ] ; 4 uses
  br i1 %min.iters.check3637, label %scalar.ph3636.preheader, label %vector.ph3638

vector.ph3638:                                    ; preds = %.lr.ph846.i
  %i.jnx = add i64 %indvars.iv960.i, %n.vec3639
  %i.jny = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv960.i
  br label %vector.body3640

vector.body3640:                                  ; preds = %vector.body3640, %vector.ph3638
  %index3641 = phi i64 [ 0, %vector.ph3638 ], [ %index.next3649, %vector.body3640 ] ; 3 uses
  %i.jnz = getelementptr [4 x i8], ptr %i.jny, i64 %index3641 ; 7 uses
  %i.joa = getelementptr i8, ptr %i.jnz, i64 -1344
  %wide.load3642 = load <8 x float>, ptr %i.joa, align 16, !tbaa !22, !noalias !277
  %i.job = getelementptr i8, ptr %i.jnz, i64 -448
  %wide.load3643 = load <8 x float>, ptr %i.job, align 16, !tbaa !22, !noalias !277
  %i.joc = getelementptr inbounds nuw i8, ptr %i.jnz, i64 448
  %wide.load3644 = load <8 x float>, ptr %i.joc, align 16, !tbaa !22, !noalias !277
  %i.jod = getelementptr inbounds nuw i8, ptr %i.jnz, i64 1344
  %wide.load3645 = load <8 x float>, ptr %i.jod, align 16, !tbaa !22, !noalias !277
  %i.joe = getelementptr i8, ptr %i.jnz, i64 -896
  %wide.load3646 = load <8 x float>, ptr %i.joe, align 16, !tbaa !22, !noalias !277
  %i.jof = getelementptr inbounds nuw i8, ptr %i.jnz, i64 896
  %wide.load3647 = load <8 x float>, ptr %i.jof, align 16, !tbaa !22, !noalias !277
  %i.jog = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3647, %wide.load3646
  %i.joh = fmul reassoc nsz arcp contract afn <8 x float> %i.jog, splat (float -3.000000e+00)
  %wide.load3648 = load <8 x float>, ptr %i.jnz, align 16, !tbaa !22, !noalias !277
  %i.joi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3648, splat (float 6.000000e+00)
  %i.joj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3643, %wide.load3644
  %i.jok = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3642, %i.joj
  %i.jol = fadd reassoc nsz arcp contract afn <8 x float> %i.jok, %wide.load3645
  %i.jom = fadd reassoc nsz arcp contract afn <8 x float> %i.jol, %i.joh
  %i.jon = fadd reassoc nsz arcp contract afn <8 x float> %i.jom, %i.joi ; 2 uses
  %i.joo = fmul reassoc nsz arcp contract afn <8 x float> %i.jon, %i.jon
  %i.jop = getelementptr [4 x i8], ptr %.sroa.phi, i64 %index3641
  %i.joq = getelementptr i8, ptr %i.jop, i64 -1248
  store <8 x float> %i.joo, ptr %i.joq, align 16, !tbaa !22, !noalias !282
  %index.next3649 = add nuw i64 %index3641, 8     ; 2 uses
  %i.jor = icmp eq i64 %index.next3649, %n.vec3639
  br i1 %i.jor, label %middle.block3650, label %vector.body3640, !llvm.loop !286

middle.block3650:                                 ; preds = %vector.body3640
  br i1 %cmp.n3651, label %._crit_edge847.i, label %scalar.ph3636.preheader

scalar.ph3636.preheader:                          ; preds = %.lr.ph846.i, %middle.block3650
  %indvars.iv962.i.ph = phi i64 [ %indvars.iv960.i, %.lr.ph846.i ], [ %i.jnx, %middle.block3650 ]
  %indvars.iv958.i.ph = phi i64 [ 4, %.lr.ph846.i ], [ %i.jko, %middle.block3650 ]
  br label %scalar.ph3636

._crit_edge847.i:                                 ; preds = %scalar.ph3636, %middle.block3650
  %i.jos = icmp slt i64 %indvars.iv967.i, %invariant.op.i
  %indvars.iv.next961.i = add nuw nsw i64 %indvars.iv960.i, 112
  %indvars.iv.next1155 = add i64 %indvars.iv1154, 112
  br i1 %i.jos, label %.lr.ph846.i, label %._crit_edge851.split.i

scalar.ph3636:                                    ; preds = %scalar.ph3636.preheader, %scalar.ph3636
  %indvars.iv962.i = phi i64 [ %indvars.iv.next963.i, %scalar.ph3636 ], [ %indvars.iv962.i.ph, %scalar.ph3636.preheader ] ; 2 uses
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %scalar.ph3636 ], [ %indvars.iv958.i.ph, %scalar.ph3636.preheader ] ; 2 uses
  %i.jot = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv962.i ; 7 uses
  %i.jou = getelementptr i8, ptr %i.jot, i64 -1344
  %i.jov = load float, ptr %i.jou, align 4, !tbaa !22, !noalias !277
  %i.jow = getelementptr i8, ptr %i.jot, i64 -448
  %i.jox = load float, ptr %i.jow, align 4, !tbaa !22, !noalias !277
  %i.joy = getelementptr inbounds nuw i8, ptr %i.jot, i64 448
  %i.joz = load float, ptr %i.joy, align 4, !tbaa !22, !noalias !277
  %i.jpa = getelementptr inbounds nuw i8, ptr %i.jot, i64 1344
  %i.jpb = load float, ptr %i.jpa, align 4, !tbaa !22, !noalias !277
  %i.jpc = getelementptr i8, ptr %i.jot, i64 -896
  %i.jpd = load float, ptr %i.jpc, align 4, !tbaa !22, !noalias !277
  %i.jpe = getelementptr inbounds nuw i8, ptr %i.jot, i64 896
  %i.jpf = load float, ptr %i.jpe, align 4, !tbaa !22, !noalias !277
  %i.jpg = fadd reassoc nsz arcp contract afn float %i.jpf, %i.jpd
  %.neg826.i = fmul reassoc nsz arcp contract afn float %i.jpg, -3.000000e+00
  %i.jph = load float, ptr %i.jot, align 4, !tbaa !22, !noalias !277
  %i.jpi = fmul reassoc nsz arcp contract afn float %i.jph, 6.000000e+00
  %i.jpj = fadd reassoc nsz arcp contract afn float %i.jox, %i.joz
  %.neg827.i = fsub reassoc nsz arcp contract afn float %i.jov, %i.jpj
  %i.jpk = fadd reassoc nsz arcp contract afn float %.neg827.i, %i.jpb
  %i.jpl = fadd reassoc nsz arcp contract afn float %i.jpk, %.neg826.i
  %i.jpm = fadd reassoc nsz arcp contract afn float %i.jpl, %i.jpi ; 2 uses
  %i.jpn = fmul reassoc nsz arcp contract afn float %i.jpm, %i.jpm
  %i.jpo = getelementptr [4 x i8], ptr %.sroa.phi, i64 %indvars.iv958.i
  %i.jpp = getelementptr i8, ptr %i.jpo, i64 -1264
  store float %i.jpn, ptr %i.jpp, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next959.i = add nuw nsw i64 %indvars.iv958.i, 1
  %indvars.iv.next963.i = add nuw i64 %indvars.iv962.i, 1 ; 2 uses
  %exitcond1156.not = icmp eq i64 %indvars.iv.next963.i, %indvars.iv1154
  br i1 %exitcond1156.not, label %._crit_edge847.i, label %scalar.ph3636, !llvm.loop !287

.loopexit.i545:                                   ; preds = %.lr.ph866.i.prol.loopexit, %.lr.ph866.i, %middle.block3584, %._crit_edge856.i
  %i.jpq = add nuw nsw i32 %.0752867.i, 1         ; 2 uses
  %i.jpr = icmp slt i32 %i.jpq, %i.jhw
  %indvars.iv.next973.i = add i32 %indvars.iv972.i, 112
  %indvars.iv.next982.i = add i32 %indvars.iv981.i, 112
  br i1 %i.jpr, label %.lr.ph855.preheader.i, label %.preheader832.i

.preheader832.i:                                  ; preds = %.loopexit.i545, %._crit_edge851.split.i, %._crit_edge851.split.thread.i
  br i1 %i.jhz, label %.lr.ph881.i, label %._crit_edge925.i

.lr.ph881.i:                                      ; preds = %.lr.ph872.i, %.preheader832.i
  %i.jps = add nsw i32 %i.jke, -2                 ; 2 uses
  %i.jpt = add i32 %smin3506, -5
  br label %bb.pe

.lr.ph855.preheader.i:                            ; preds = %.lr.ph855.preheader.i.preheader, %.loopexit.i545
  %indvars.iv981.i = phi i32 [ %indvars.iv.next982.i, %.loopexit.i545 ], [ 560, %.lr.ph855.preheader.i.preheader ] ; 5 uses
  %indvars.iv972.i = phi i32 [ %indvars.iv.next973.i, %.loopexit.i545 ], [ 448, %.lr.ph855.preheader.i.preheader ] ; 4 uses
  %.0749870.i = phi ptr [ %.0750869.i, %.loopexit.i545 ], [ %i.c, %.lr.ph855.preheader.i.preheader ] ; 7 uses
  %.0750869.i = phi ptr [ %.0751868.i, %.loopexit.i545 ], [ %i.apr, %.lr.ph855.preheader.i.preheader ] ; 7 uses
  %.0751868.i = phi ptr [ %.0749870.i, %.loopexit.i545 ], [ %i.aps, %.lr.ph855.preheader.i.preheader ] ; 13 uses
  %.0752867.i = phi i32 [ %i.jpq, %.loopexit.i545 ], [ 4, %.lr.ph855.preheader.i.preheader ]
  %i.jpu = zext i32 %indvars.iv972.i to i64
  %i.jpv = zext i32 %indvars.iv981.i to i64
  %i.jpw = zext i32 %indvars.iv981.i to i64
  %i.jpx = shl nuw nsw i64 %i.jpw, 2              ; 2 uses
  %scevgep3594 = getelementptr i8, ptr %scevgep3593, i64 %i.jpx
  %scevgep3597 = getelementptr i8, ptr %scevgep3596, i64 %i.jpx
  %i.jpy = zext i32 %indvars.iv972.i to i64
  %i.jpz = shl nuw nsw i64 %i.jpy, 2              ; 2 uses
  %scevgep3543 = getelementptr i8, ptr %scevgep3542, i64 %i.jpz ; 4 uses
  %scevgep3547 = getelementptr i8, ptr %scevgep3546, i64 %i.jpz ; 4 uses
  %i.jqa = zext i32 %indvars.iv972.i to i64       ; 4 uses
  %i.jqb = add nsw i64 %i.jju, %i.jqa
  %i.jqc = zext i32 %indvars.iv981.i to i64
  %i.jqd = add nsw i64 %i.jju, %i.jqc
  %i.jqe = add nsw i64 %i.jjw, %i.jqa
  %i.jqf = or disjoint i64 %i.jqa, 3              ; 4 uses
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jqf
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !22, !noalias !277 ; 2 uses
  br i1 %min.iters.check3620, label %.lr.ph855.i.preheader, label %vector.ph3621

vector.ph3621:                                    ; preds = %.lr.ph855.preheader.i
  %i.jqg = add nsw i64 %i.jqf, %n.vec3622
  %vector.recur.init = insertelement <8 x float> poison, float %.pre.i, i64 7
  br label %vector.body3623

vector.body3623:                                  ; preds = %vector.body3623, %vector.ph3621
  %index3624 = phi i64 [ 0, %vector.ph3621 ], [ %index.next3631, %vector.body3623 ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph3621 ], [ %wide.load3627, %vector.body3623 ]
  %i.jqh = add nuw i64 %i.jqf, %index3624         ; 2 uses
  %i.jqi = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jqh ; 5 uses
  %i.jqj = getelementptr i8, ptr %i.jqi, i64 -12
  %wide.load3625 = load <8 x float>, ptr %i.jqj, align 32, !tbaa !22, !noalias !277
  %i.jqk = getelementptr i8, ptr %i.jqi, i64 -4
  %wide.load3626 = load <8 x float>, ptr %i.jqk, align 8, !tbaa !22, !noalias !277
  %i.jql = getelementptr inbounds nuw [4 x i8], ptr %i.jgx, i64 %i.jqh
  %i.jqm = getelementptr inbounds nuw i8, ptr %i.jql, i64 4
  %wide.load3627 = load <8 x float>, ptr %i.jqm, align 16, !tbaa !22, !noalias !277 ; 4 uses
  %i.jqn = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load3627, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.jqo = getelementptr inbounds nuw i8, ptr %i.jqi, i64 12
  %wide.load3628 = load <8 x float>, ptr %i.jqo, align 8, !tbaa !22, !noalias !277
  %i.jqp = getelementptr i8, ptr %i.jqi, i64 -8
  %wide.load3629 = load <8 x float>, ptr %i.jqp, align 4, !tbaa !22, !noalias !277
  %i.jqq = getelementptr inbounds nuw i8, ptr %i.jqi, i64 8
  %wide.load3630 = load <8 x float>, ptr %i.jqq, align 4, !tbaa !22, !noalias !277
  %i.jqr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3630, %wide.load3629
  %i.jqs = fmul reassoc nsz arcp contract afn <8 x float> %i.jqr, splat (float -3.000000e+00)
  %i.jqt = fmul reassoc nsz arcp contract afn <8 x float> %i.jqn, splat (float 6.000000e+00)
  %i.jqu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3625, %i.jqt
  %i.jqv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3626, %wide.load3627
  %i.jqw = fsub reassoc nsz arcp contract afn <8 x float> %i.jqu, %i.jqv
  %i.jqx = fadd reassoc nsz arcp contract afn <8 x float> %i.jqw, %wide.load3628
  %i.jqy = fadd reassoc nsz arcp contract afn <8 x float> %i.jqx, %i.jqs ; 2 uses
  %i.jqz = fmul reassoc nsz arcp contract afn <8 x float> %i.jqy, %i.jqy
  %i.jra = getelementptr [4 x i8], ptr %i.d, i64 %index3624
  store <8 x float> %i.jqz, ptr %i.jra, align 16, !tbaa !22, !noalias !282
  %index.next3631 = add nuw i64 %index3624, 8     ; 2 uses
  %i.jrb = icmp eq i64 %index.next3631, %n.vec3622
  br i1 %i.jrb, label %middle.block3632, label %vector.body3623, !llvm.loop !288

middle.block3632:                                 ; preds = %vector.body3623
  %vector.recur.extract = extractelement <8 x float> %wide.load3627, i64 7
  br i1 %cmp.n3633, label %._crit_edge856.i, label %.lr.ph855.i.preheader

.lr.ph855.i.preheader:                            ; preds = %.lr.ph855.preheader.i, %middle.block3632
  %.ph = phi float [ %.pre.i, %.lr.ph855.preheader.i ], [ %vector.recur.extract, %middle.block3632 ]
  %indvars.iv974.i.ph = phi i64 [ %i.jqf, %.lr.ph855.preheader.i ], [ %i.jqg, %middle.block3632 ]
  %indvars.iv970.i.ph = phi i64 [ 3, %.lr.ph855.preheader.i ], [ %i.jns, %middle.block3632 ]
  br label %.lr.ph855.i

._crit_edge856.i:                                 ; preds = %.lr.ph855.i, %middle.block3632
  %i.jrc = or disjoint i64 %i.jqa, 4              ; 4 uses
  br i1 %i.jno, label %.lr.ph860.i.preheader, label %.loopexit.i545

.lr.ph860.i.preheader:                            ; preds = %._crit_edge856.i
  %i.jrd = or disjoint i32 %indvars.iv981.i, 4
  %i.jre = zext i32 %i.jrd to i64                 ; 4 uses
  br i1 %min.iters.check3602, label %.lr.ph860.i.preheader4687, label %vector.memcheck3588

vector.memcheck3588:                              ; preds = %.lr.ph860.i.preheader
  %scevgep3589 = getelementptr i8, ptr %.0751868.i, i64 -16
  %scevgep3592 = getelementptr i8, ptr %scevgep3589, i64 %i.jja
  %bound03598 = icmp ult ptr %.0751868.i, %scevgep3597
  %bound13599 = icmp ult ptr %scevgep3594, %scevgep3592
  %found.conflict3600 = and i1 %bound03598, %bound13599
  br i1 %found.conflict3600, label %.lr.ph860.i.preheader4687, label %vector.ph3603

vector.ph3603:                                    ; preds = %vector.memcheck3588
  %i.jrf = add nsw i64 %n.vec3604, %i.jre
  %invariant.gep4940 = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jre
  br label %vector.body3605

vector.body3605:                                  ; preds = %vector.body3605, %vector.ph3603
  %index3606 = phi i64 [ 0, %vector.ph3603 ], [ %index.next3614, %vector.body3605 ] ; 3 uses
  %gep4941 = getelementptr [4 x i8], ptr %invariant.gep4940, i64 %index3606 ; 7 uses
  %i.jrg = getelementptr i8, ptr %gep4941, i64 -1344
  %wide.load3607 = load <8 x float>, ptr %i.jrg, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrh = getelementptr i8, ptr %gep4941, i64 -448
  %wide.load3608 = load <8 x float>, ptr %i.jrh, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jri = getelementptr inbounds nuw i8, ptr %gep4941, i64 448
  %wide.load3609 = load <8 x float>, ptr %i.jri, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrj = getelementptr inbounds nuw i8, ptr %gep4941, i64 1344
  %wide.load3610 = load <8 x float>, ptr %i.jrj, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrk = getelementptr i8, ptr %gep4941, i64 -896
  %wide.load3611 = load <8 x float>, ptr %i.jrk, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrl = getelementptr inbounds nuw i8, ptr %gep4941, i64 896
  %wide.load3612 = load <8 x float>, ptr %i.jrl, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3612, %wide.load3611
  %i.jrn = fmul reassoc nsz arcp contract afn <8 x float> %i.jrm, splat (float -3.000000e+00)
  %wide.load3613 = load <8 x float>, ptr %gep4941, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jro = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3613, splat (float 6.000000e+00)
  %i.jrp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3608, %wide.load3609
  %i.jrq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3607, %i.jrp
  %i.jrr = fadd reassoc nsz arcp contract afn <8 x float> %i.jrq, %wide.load3610
  %i.jrs = fadd reassoc nsz arcp contract afn <8 x float> %i.jrr, %i.jrn
  %i.jrt = fadd reassoc nsz arcp contract afn <8 x float> %i.jrs, %i.jro ; 2 uses
  %i.jru = fmul reassoc nsz arcp contract afn <8 x float> %i.jrt, %i.jrt
  %i.jrv = getelementptr [4 x i8], ptr %.0751868.i, i64 %index3606
  store <8 x float> %i.jru, ptr %i.jrv, align 4, !tbaa !22, !alias.scope !292, !noalias !294
  %index.next3614 = add nuw i64 %index3606, 8     ; 2 uses
  %i.jrw = icmp eq i64 %index.next3614, %n.vec3604
  br i1 %i.jrw, label %middle.block3615, label %vector.body3605, !llvm.loop !295

middle.block3615:                                 ; preds = %vector.body3605
  br i1 %cmp.n3616, label %.lr.ph866.i.preheader, label %.lr.ph860.i.preheader4687

.lr.ph860.i.preheader4687:                        ; preds = %vector.memcheck3588, %.lr.ph860.i.preheader, %middle.block3615
  %indvars.iv983.i.ph = phi i64 [ %i.jre, %vector.memcheck3588 ], [ %i.jre, %.lr.ph860.i.preheader ], [ %i.jrf, %middle.block3615 ] ; 5 uses
  %indvars.iv979.i.ph = phi i64 [ 4, %vector.memcheck3588 ], [ 4, %.lr.ph860.i.preheader ], [ %i.jnu, %middle.block3615 ] ; 3 uses
  %i.jrx = sub nsw i64 %i.jiq, %indvars.iv983.i.ph
  %i.jry = add nsw i64 %i.jnp, %i.jpv
  %xtraiter4807 = and i64 %i.jrx, 1
  %lcmp.mod4808.not = icmp eq i64 %xtraiter4807, 0
  br i1 %lcmp.mod4808.not, label %.lr.ph860.i.prol.loopexit, label %.lr.ph860.i.prol

.lr.ph860.i.prol:                                 ; preds = %.lr.ph860.i.preheader4687
  %i.jrz = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv983.i.ph ; 7 uses
  %i.jsa = getelementptr i8, ptr %i.jrz, i64 -1344
  %i.jsb = load float, ptr %i.jsa, align 4, !tbaa !22, !noalias !277
  %i.jsc = getelementptr i8, ptr %i.jrz, i64 -448
  %i.jsd = load float, ptr %i.jsc, align 4, !tbaa !22, !noalias !277
  %i.jse = getelementptr inbounds nuw i8, ptr %i.jrz, i64 448
  %i.jsf = load float, ptr %i.jse, align 4, !tbaa !22, !noalias !277
  %i.jsg = getelementptr inbounds nuw i8, ptr %i.jrz, i64 1344
  %i.jsh = load float, ptr %i.jsg, align 4, !tbaa !22, !noalias !277
  %i.jsi = getelementptr i8, ptr %i.jrz, i64 -896
  %i.jsj = load float, ptr %i.jsi, align 4, !tbaa !22, !noalias !277
  %i.jsk = getelementptr inbounds nuw i8, ptr %i.jrz, i64 896
  %i.jsl = load float, ptr %i.jsk, align 4, !tbaa !22, !noalias !277
  %i.jsm = fadd reassoc nsz arcp contract afn float %i.jsl, %i.jsj
  %.neg816.i.prol = fmul reassoc nsz arcp contract afn float %i.jsm, -3.000000e+00
  %i.jsn = load float, ptr %i.jrz, align 4, !tbaa !22, !noalias !277
  %i.jso = fmul reassoc nsz arcp contract afn float %i.jsn, 6.000000e+00
  %i.jsp = fadd reassoc nsz arcp contract afn float %i.jsd, %i.jsf
  %.neg817.i.prol = fsub reassoc nsz arcp contract afn float %i.jsb, %i.jsp
  %i.jsq = fadd reassoc nsz arcp contract afn float %.neg817.i.prol, %i.jsh
  %i.jsr = fadd reassoc nsz arcp contract afn float %i.jsq, %.neg816.i.prol
  %i.jss = fadd reassoc nsz arcp contract afn float %i.jsr, %i.jso ; 2 uses
  %i.jst = fmul reassoc nsz arcp contract afn float %i.jss, %i.jss
  %i.jsu = getelementptr [4 x i8], ptr %.0751868.i, i64 %indvars.iv979.i.ph
  %i.jsv = getelementptr i8, ptr %i.jsu, i64 -16
  store float %i.jst, ptr %i.jsv, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next980.i.prol = add nuw nsw i64 %indvars.iv979.i.ph, 1
  %indvars.iv.next984.i.prol = add nuw nsw i64 %indvars.iv983.i.ph, 1
  br label %.lr.ph860.i.prol.loopexit

.lr.ph860.i.prol.loopexit:                        ; preds = %.lr.ph860.i.prol, %.lr.ph860.i.preheader4687
  %indvars.iv983.i.unr = phi i64 [ %indvars.iv983.i.ph, %.lr.ph860.i.preheader4687 ], [ %indvars.iv.next984.i.prol, %.lr.ph860.i.prol ]
  %indvars.iv979.i.unr = phi i64 [ %indvars.iv979.i.ph, %.lr.ph860.i.preheader4687 ], [ %indvars.iv.next980.i.prol, %.lr.ph860.i.prol ]
  %i.jsw = icmp eq i64 %i.jry, %indvars.iv983.i.ph
  br i1 %i.jsw, label %.lr.ph866.i.preheader, label %.lr.ph860.i

.lr.ph855.i:                                      ; preds = %.lr.ph855.i.preheader, %.lr.ph855.i
  %i.jsx = phi float [ %i.jte, %.lr.ph855.i ], [ %.ph, %.lr.ph855.i.preheader ]
  %indvars.iv974.i = phi i64 [ %indvars.iv.next975.i, %.lr.ph855.i ], [ %indvars.iv974.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %indvars.iv970.i = phi i64 [ %indvars.iv.next971.i, %.lr.ph855.i ], [ %indvars.iv970.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %i.jsy = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv974.i ; 5 uses
  %i.jsz = getelementptr i8, ptr %i.jsy, i64 -12
  %i.jta = load float, ptr %i.jsz, align 4, !tbaa !22, !noalias !277
  %i.jtb = getelementptr i8, ptr %i.jsy, i64 -4
  %i.jtc = load float, ptr %i.jtb, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next975.i = add nuw nsw i64 %indvars.iv974.i, 1 ; 3 uses
  %i.jtd = getelementptr inbounds nuw [4 x i8], ptr %i.jgx, i64 %indvars.iv.next975.i
  %i.jte = load float, ptr %i.jtd, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.jtf = getelementptr inbounds nuw i8, ptr %i.jsy, i64 12
  %i.jtg = load float, ptr %i.jtf, align 4, !tbaa !22, !noalias !277
  %i.jth = getelementptr i8, ptr %i.jsy, i64 -8
  %i.jti = load float, ptr %i.jth, align 4, !tbaa !22, !noalias !277
  %i.jtj = getelementptr inbounds nuw i8, ptr %i.jsy, i64 8
  %i.jtk = load float, ptr %i.jtj, align 4, !tbaa !22, !noalias !277
  %i.jtl = fadd reassoc nsz arcp contract afn float %i.jtk, %i.jti
  %.neg821.i = fmul reassoc nsz arcp contract afn float %i.jtl, -3.000000e+00
end_hunk_0
begin_hunk_1_@process:bb.a
  store float %i.juo, ptr %i.juq, align 4, !tbaa !22, !noalias !282
  %i.jur = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv983.i ; 7 uses
  %i.jus = getelementptr i8, ptr %i.jur, i64 4
  %i.jut = getelementptr i8, ptr %i.jur, i64 -1340
  %i.juu = load float, ptr %i.jut, align 4, !tbaa !22, !noalias !277
  %i.juv = getelementptr i8, ptr %i.jur, i64 -444
  %i.juw = load float, ptr %i.juv, align 4, !tbaa !22, !noalias !277
  %i.jux = getelementptr i8, ptr %i.jur, i64 452
  %i.juy = load float, ptr %i.jux, align 4, !tbaa !22, !noalias !277
  %i.juz = getelementptr i8, ptr %i.jur, i64 1348
  %i.jva = load float, ptr %i.juz, align 4, !tbaa !22, !noalias !277
  %i.jvb = getelementptr i8, ptr %i.jur, i64 -892
  %i.jvc = load float, ptr %i.jvb, align 4, !tbaa !22, !noalias !277
  %i.jvd = getelementptr i8, ptr %i.jur, i64 900
  %i.jve = load float, ptr %i.jvd, align 4, !tbaa !22, !noalias !277
  %i.jvf = fadd reassoc nsz arcp contract afn float %i.jve, %i.jvc
  %.neg816.i.1 = fmul reassoc nsz arcp contract afn float %i.jvf, -3.000000e+00
  %i.jvg = load float, ptr %i.jus, align 4, !tbaa !22, !noalias !277
  %i.jvh = fmul reassoc nsz arcp contract afn float %i.jvg, 6.000000e+00
  %i.jvi = fadd reassoc nsz arcp contract afn float %i.juw, %i.juy
  %.neg817.i.1 = fsub reassoc nsz arcp contract afn float %i.juu, %i.jvi
  %i.jvj = fadd reassoc nsz arcp contract afn float %.neg817.i.1, %i.jva
  %i.jvk = fadd reassoc nsz arcp contract afn float %i.jvj, %.neg816.i.1
  %i.jvl = fadd reassoc nsz arcp contract afn float %i.jvk, %i.jvh ; 2 uses
  %i.jvm = fmul reassoc nsz arcp contract afn float %i.jvl, %i.jvl
  %i.jvn = getelementptr [4 x i8], ptr %.0751868.i, i64 %indvars.iv979.i
  %i.jvo = getelementptr i8, ptr %i.jvn, i64 -12
  store float %i.jvm, ptr %i.jvo, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next980.i.1 = add nuw nsw i64 %indvars.iv979.i, 2
  %indvars.iv.next984.i.1 = add nuw nsw i64 %indvars.iv983.i, 2 ; 2 uses
  %exitcond1162.not.1 = icmp eq i64 %indvars.iv.next984.i.1, %i.jqd
  br i1 %exitcond1162.not.1, label %.lr.ph866.i.preheader, label %.lr.ph860.i, !llvm.loop !297

.lr.ph866.i.preheader:                            ; preds = %.lr.ph860.i.prol.loopexit, %.lr.ph860.i, %middle.block3615
  br i1 %min.iters.check3572, label %.lr.ph866.i.preheader4686, label %vector.memcheck3541

vector.memcheck3541:                              ; preds = %.lr.ph866.i.preheader
  %scevgep3548 = getelementptr i8, ptr %.0751868.i, i64 -16
  %scevgep3549 = getelementptr i8, ptr %scevgep3548, i64 %i.jje
  %scevgep3550 = getelementptr i8, ptr %.0750869.i, i64 -16
  %scevgep3551 = getelementptr i8, ptr %scevgep3550, i64 %i.jje
  %scevgep3552 = getelementptr i8, ptr %.0749870.i, i64 -16
  %scevgep3553 = getelementptr i8, ptr %scevgep3552, i64 %i.jje
  %bound03556 = icmp ult ptr %scevgep3543, %scevgep3549
  %bound13557 = icmp ult ptr %.0751868.i, %scevgep3547
  %found.conflict3558 = and i1 %bound03556, %bound13557
  %bound03559 = icmp ult ptr %scevgep3543, %scevgep3551
  %bound13560 = icmp ult ptr %.0750869.i, %scevgep3547
  %found.conflict3561 = and i1 %bound03559, %bound13560
  %conflict.rdx3562 = or i1 %found.conflict3558, %found.conflict3561
  %bound03563 = icmp ult ptr %scevgep3543, %scevgep3553
  %bound13564 = icmp ult ptr %.0749870.i, %scevgep3547
  %found.conflict3565 = and i1 %bound03563, %bound13564
  %conflict.rdx3566 = or i1 %conflict.rdx3562, %found.conflict3565
  %bound03567 = icmp ult ptr %scevgep3543, %scevgep3555
  %bound13568 = icmp ult ptr %i.d, %scevgep3547
  %found.conflict3569 = and i1 %bound03567, %bound13568
  %conflict.rdx3570 = or i1 %conflict.rdx3566, %found.conflict3569
  br i1 %conflict.rdx3570, label %.lr.ph866.i.preheader4686, label %vector.ph3573

vector.ph3573:                                    ; preds = %vector.memcheck3541
  %i.jvp = add nsw i64 %i.jrc, %n.vec3574
  %i.jvq = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %i.jrc
  br label %vector.body3575

vector.body3575:                                  ; preds = %vector.body3575, %vector.ph3573
  %index3576 = phi i64 [ 0, %vector.ph3573 ], [ %index.next3583, %vector.body3575 ] ; 7 uses
  %i.jvr = getelementptr inbounds [4 x i8], ptr %.0749870.i, i64 %index3576
  %wide.load3577 = load <8 x float>, ptr %i.jvr, align 4, !tbaa !22, !alias.scope !298, !noalias !282
  %i.jvs = getelementptr inbounds [4 x i8], ptr %.0750869.i, i64 %index3576
  %wide.load3578 = load <8 x float>, ptr %i.jvs, align 4, !tbaa !22, !alias.scope !301, !noalias !282
  %i.jvt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3578, %wide.load3577
  %i.jvu = getelementptr inbounds [4 x i8], ptr %.0751868.i, i64 %index3576
  %wide.load3579 = load <8 x float>, ptr %i.jvu, align 4, !tbaa !22, !alias.scope !303, !noalias !282
  %i.jvv = fadd reassoc nsz arcp contract afn <8 x float> %i.jvt, %wide.load3579
  %i.jvw = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jvv, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.jvx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %index3576
  %wide.load3580 = load <8 x float>, ptr %i.jvx, align 16, !tbaa !22, !alias.scope !305, !noalias !282
  %i.jvy = getelementptr [4 x i8], ptr %i.d, i64 %index3576 ; 2 uses
  %i.jvz = getelementptr i8, ptr %i.jvy, i64 4
  %wide.load3581 = load <8 x float>, ptr %i.jvz, align 4, !tbaa !22, !alias.scope !305, !noalias !282
  %i.jwa = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3581, %wide.load3580
  %i.jwb = getelementptr i8, ptr %i.jvy, i64 8
  %wide.load3582 = load <8 x float>, ptr %i.jwb, align 8, !tbaa !22, !alias.scope !305, !noalias !282
  %i.jwc = fadd reassoc nsz arcp contract afn <8 x float> %i.jwa, %wide.load3582
  %i.jwd = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jwc, <8 x float> splat (float 1.000000e-10))
  %i.jwe = fadd reassoc nsz arcp contract afn <8 x float> %i.jwd, %i.jvw
  %i.jwf = fdiv reassoc nsz arcp contract afn <8 x float> %i.jvw, %i.jwe
  %i.jwg = getelementptr inbounds nuw [4 x i8], ptr %i.jvq, i64 %index3576
  store <8 x float> %i.jwf, ptr %i.jwg, align 16, !tbaa !22, !alias.scope !307, !noalias !309
  %index.next3583 = add nuw i64 %index3576, 8     ; 2 uses
  %i.jwh = icmp eq i64 %index.next3583, %n.vec3574
  br i1 %i.jwh, label %middle.block3584, label %vector.body3575, !llvm.loop !310

middle.block3584:                                 ; preds = %vector.body3575
  br i1 %cmp.n3585, label %.loopexit.i545, label %.lr.ph866.i.preheader4686

.lr.ph866.i.preheader4686:                        ; preds = %vector.memcheck3541, %.lr.ph866.i.preheader, %middle.block3584
  %indvars.iv990.i.ph = phi i64 [ %i.jrc, %vector.memcheck3541 ], [ %i.jrc, %.lr.ph866.i.preheader ], [ %i.jvp, %middle.block3584 ] ; 5 uses
  %indvars.iv988.i.ph = phi i64 [ 4, %vector.memcheck3541 ], [ 4, %.lr.ph866.i.preheader ], [ %i.jnw, %middle.block3584 ] ; 4 uses
  %i.jwi = sub nsw i64 %i.jin, %indvars.iv990.i.ph
  %i.jwj = add nsw i64 %i.jnq, %i.jpu
  %xtraiter4812 = and i64 %i.jwi, 1
  %lcmp.mod4813.not = icmp eq i64 %xtraiter4812, 0
  br i1 %lcmp.mod4813.not, label %.lr.ph866.i.prol.loopexit, label %.lr.ph866.i.prol

.lr.ph866.i.prol:                                 ; preds = %.lr.ph866.i.preheader4686
  %i.jwk = add nsw i64 %indvars.iv988.i.ph, -4    ; 4 uses
  %i.jwl = getelementptr inbounds [4 x i8], ptr %.0749870.i, i64 %i.jwk
  %i.jwm = load float, ptr %i.jwl, align 4, !tbaa !22, !noalias !282
  %i.jwn = getelementptr inbounds [4 x i8], ptr %.0750869.i, i64 %i.jwk
  %i.jwo = load float, ptr %i.jwn, align 4, !tbaa !22, !noalias !282
  %i.jwp = fadd reassoc nsz arcp contract afn float %i.jwo, %i.jwm
  %i.jwq = getelementptr inbounds [4 x i8], ptr %.0751868.i, i64 %i.jwk
  %i.jwr = load float, ptr %i.jwq, align 4, !tbaa !22, !noalias !282
  %i.jws = fadd reassoc nsz arcp contract afn float %i.jwp, %i.jwr
  %i.jwt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jws, float 1.000000e-10) ; 2 uses
  %i.jwu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.jwk
  %i.jwv = load float, ptr %i.jwu, align 4, !tbaa !22, !noalias !282
  %i.jww = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i.ph ; 2 uses
  %i.jwx = getelementptr i8, ptr %i.jww, i64 -12
  %i.jwy = load float, ptr %i.jwx, align 4, !tbaa !22, !noalias !282
  %i.jwz = fadd reassoc nsz arcp contract afn float %i.jwy, %i.jwv
  %i.jxa = getelementptr i8, ptr %i.jww, i64 -8
  %i.jxb = load float, ptr %i.jxa, align 4, !tbaa !22, !noalias !282
  %i.jxc = fadd reassoc nsz arcp contract afn float %i.jwz, %i.jxb
  %i.jxd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jxc, float 1.000000e-10)
  %i.jxe = fadd reassoc nsz arcp contract afn float %i.jxd, %i.jwt
  %i.jxf = fdiv reassoc nsz arcp contract afn float %i.jwt, %i.jxe
  %i.jxg = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %indvars.iv990.i.ph
  store float %i.jxf, ptr %i.jxg, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next989.i.prol = add nuw nsw i64 %indvars.iv988.i.ph, 1
  %indvars.iv.next991.i.prol = add nuw nsw i64 %indvars.iv990.i.ph, 1
  br label %.lr.ph866.i.prol.loopexit

.lr.ph866.i.prol.loopexit:                        ; preds = %.lr.ph866.i.prol, %.lr.ph866.i.preheader4686
  %indvars.iv990.i.unr = phi i64 [ %indvars.iv990.i.ph, %.lr.ph866.i.preheader4686 ], [ %indvars.iv.next991.i.prol, %.lr.ph866.i.prol ]
  %indvars.iv988.i.unr = phi i64 [ %indvars.iv988.i.ph, %.lr.ph866.i.preheader4686 ], [ %indvars.iv.next989.i.prol, %.lr.ph866.i.prol ]
  %i.jxh = icmp eq i64 %i.jwj, %indvars.iv990.i.ph
  br i1 %i.jxh, label %.loopexit.i545, label %.lr.ph866.i

.lr.ph866.i:                                      ; preds = %.lr.ph866.i.prol.loopexit, %.lr.ph866.i
  %indvars.iv990.i = phi i64 [ %indvars.iv.next991.i.1, %.lr.ph866.i ], [ %indvars.iv990.i.unr, %.lr.ph866.i.prol.loopexit ] ; 3 uses
  %indvars.iv988.i = phi i64 [ %indvars.iv.next989.i.1, %.lr.ph866.i ], [ %indvars.iv988.i.unr, %.lr.ph866.i.prol.loopexit ] ; 5 uses
  %i.jxi = add nsw i64 %indvars.iv988.i, -4       ; 4 uses
  %i.jxj = getelementptr inbounds [4 x i8], ptr %.0749870.i, i64 %i.jxi
  %i.jxk = load float, ptr %i.jxj, align 4, !tbaa !22, !noalias !282
  %i.jxl = getelementptr inbounds [4 x i8], ptr %.0750869.i, i64 %i.jxi
  %i.jxm = load float, ptr %i.jxl, align 4, !tbaa !22, !noalias !282
  %i.jxn = fadd reassoc nsz arcp contract afn float %i.jxm, %i.jxk
  %i.jxo = getelementptr inbounds [4 x i8], ptr %.0751868.i, i64 %i.jxi
  %i.jxp = load float, ptr %i.jxo, align 4, !tbaa !22, !noalias !282
  %i.jxq = fadd reassoc nsz arcp contract afn float %i.jxn, %i.jxp
  %i.jxr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jxq, float 1.000000e-10) ; 2 uses
  %i.jxs = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.jxi
  %i.jxt = load float, ptr %i.jxs, align 4, !tbaa !22, !noalias !282
  %i.jxu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i ; 2 uses
  %i.jxv = getelementptr i8, ptr %i.jxu, i64 -12
  %i.jxw = load float, ptr %i.jxv, align 4, !tbaa !22, !noalias !282 ; 2 uses
  %i.jxx = fadd reassoc nsz arcp contract afn float %i.jxw, %i.jxt
  %i.jxy = getelementptr i8, ptr %i.jxu, i64 -8
  %i.jxz = load float, ptr %i.jxy, align 4, !tbaa !22, !noalias !282 ; 2 uses
  %i.jya = fadd reassoc nsz arcp contract afn float %i.jxx, %i.jxz
  %i.jyb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jya, float 1.000000e-10)
  %i.jyc = fadd reassoc nsz arcp contract afn float %i.jyb, %i.jxr
  %i.jyd = fdiv reassoc nsz arcp contract afn float %i.jxr, %i.jyc
  %i.jye = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %indvars.iv990.i
  store float %i.jyd, ptr %i.jye, align 4, !tbaa !22, !noalias !277
  %i.jyf = add nsw i64 %indvars.iv988.i, -3       ; 3 uses
  %i.jyg = getelementptr inbounds [4 x i8], ptr %.0749870.i, i64 %i.jyf
  %i.jyh = load float, ptr %i.jyg, align 4, !tbaa !22, !noalias !282
  %i.jyi = getelementptr inbounds [4 x i8], ptr %.0750869.i, i64 %i.jyf
  %i.jyj = load float, ptr %i.jyi, align 4, !tbaa !22, !noalias !282
  %i.jyk = fadd reassoc nsz arcp contract afn float %i.jyj, %i.jyh
  %i.jyl = getelementptr inbounds [4 x i8], ptr %.0751868.i, i64 %i.jyf
  %i.jym = load float, ptr %i.jyl, align 4, !tbaa !22, !noalias !282
  %i.jyn = fadd reassoc nsz arcp contract afn float %i.jyk, %i.jym
  %i.jyo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jyn, float 1.000000e-10) ; 2 uses
  %i.jyp = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i
  %i.jyq = fadd reassoc nsz arcp contract afn float %i.jxz, %i.jxw
  %i.jyr = getelementptr i8, ptr %i.jyp, i64 -4
  %i.jys = load float, ptr %i.jyr, align 4, !tbaa !22, !noalias !282
  %i.jyt = fadd reassoc nsz arcp contract afn float %i.jyq, %i.jys
  %i.jyu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jyt, float 1.000000e-10)
  %i.jyv = fadd reassoc nsz arcp contract afn float %i.jyu, %i.jyo
  %i.jyw = fdiv reassoc nsz arcp contract afn float %i.jyo, %i.jyv
  %i.jyx = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %indvars.iv990.i
  %i.jyy = getelementptr inbounds nuw i8, ptr %i.jyx, i64 4
  store float %i.jyw, ptr %i.jyy, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next989.i.1 = add nuw nsw i64 %indvars.iv988.i, 2
  %indvars.iv.next991.i.1 = add nuw nsw i64 %indvars.iv990.i, 2 ; 2 uses
  %exitcond1165.not.1 = icmp eq i64 %indvars.iv.next991.i.1, %i.jqb
  br i1 %exitcond1165.not.1, label %.loopexit.i545, label %.lr.ph866.i, !llvm.loop !311

.preheader831.i:                                  ; preds = %._crit_edge879.i
  br i1 %i.jhx, label %.lr.ph889.i, label %.preheader830.i

.lr.ph889.i:                                      ; preds = %.preheader831.i
  %i.jyz = add nsw i32 %i.jke, -4                 ; 2 uses
  %i.jza = add i32 %smin3415, -9
  br label %bb.pf

bb.pe:                                            ; preds = %._crit_edge879.i, %.lr.ph881.i
  %indvars.iv995.i = phi i32 [ 226, %.lr.ph881.i ], [ %indvars.iv.next996.i, %._crit_edge879.i ] ; 3 uses
  %.0760880.i = phi i32 [ 2, %.lr.ph881.i ], [ %i.kba, %._crit_edge879.i ] ; 2 uses
  %i.jzb = shl i32 %.0760880.i, 2
  %i.jzc = and i32 %i.jzb, 28
  %i.jzd = lshr i32 %.fr1059, %i.jzc
  %i.jze = and i32 %i.jzd, 1                      ; 5 uses
  %i.jzf = or disjoint i32 %i.jze, 2              ; 4 uses
  %i.jzg = icmp slt i32 %i.jzf, %i.jps
  br i1 %i.jzg, label %.lr.ph878.preheader.i, label %._crit_edge879.i

.lr.ph878.preheader.i:                            ; preds = %bb.pe
  %i.jzh = or disjoint i32 %i.jze, %indvars.iv995.i
  %i.jzi = zext i32 %i.jzh to i64                 ; 5 uses
  %i.jzj = lshr i64 %i.jzi, 1                     ; 4 uses
  %i.jzk = sub i32 %smin1164, %i.jze
  %6 = add i32 %i.jzk, -5                         ; 2 uses
  %i.jzl = lshr i32 %6, 1
  %narrow4625 = add nuw i32 %i.jzl, 1
  %i.jzm = zext i32 %narrow4625 to i64            ; 2 uses
  %min.iters.check3516 = icmp ult i32 %6, 16
  br i1 %min.iters.check3516, label %.lr.ph878.i.preheader, label %vector.memcheck3502

.lr.ph878.i.preheader:                            ; preds = %vector.body3519, %vector.memcheck3502, %.lr.ph878.preheader.i
  %indvars.iv999.i.ph = phi i64 [ %i.jzj, %vector.memcheck3502 ], [ %i.jzj, %.lr.ph878.preheader.i ], [ %i.kac, %vector.body3519 ]
  %indvars.iv997.i.ph = phi i64 [ %i.jzi, %vector.memcheck3502 ], [ %i.jzi, %.lr.ph878.preheader.i ], [ %i.kae, %vector.body3519 ]
  %.0761876.i.ph = phi i32 [ %i.jzf, %vector.memcheck3502 ], [ %i.jzf, %.lr.ph878.preheader.i ], [ %i.kah, %vector.body3519 ]
  br label %.lr.ph878.i

vector.memcheck3502:                              ; preds = %.lr.ph878.preheader.i
  %i.jzn = or disjoint i32 %indvars.iv995.i, %i.jze
  %i.jzo = zext i32 %i.jzn to i64                 ; 2 uses
  %i.jzp = shl nuw nsw i64 %i.jzo, 1
  %i.jzq = and i64 %i.jzp, 8589934588             ; 2 uses
  %scevgep3503 = getelementptr i8, ptr %i.jgv, i64 %i.jzq
  %i.jzr = sub i32 %i.jpt, %i.jze
  %i.jzs = lshr i32 %i.jzr, 1
  %i.jzt = zext nneg i32 %i.jzs to i64            ; 2 uses
  %i.jzu = shl nuw nsw i64 %i.jzt, 2
  %i.jzv = getelementptr i8, ptr %scevgep3504, i64 %i.jzu
  %scevgep3507 = getelementptr i8, ptr %i.jzv, i64 %i.jzq
  %i.jzw = shl nuw nsw i64 %i.jzo, 2              ; 2 uses
  %scevgep3509 = getelementptr i8, ptr %scevgep3508, i64 %i.jzw
  %i.jzx = shl nuw nsw i64 %i.jzt, 3
  %i.jzy = getelementptr i8, ptr %scevgep3510, i64 %i.jzx
  %scevgep3511 = getelementptr i8, ptr %i.jzy, i64 %i.jzw
  %bound03512 = icmp ult ptr %scevgep3503, %scevgep3511
  %bound13513 = icmp ult ptr %scevgep3509, %scevgep3507
  %found.conflict3514 = and i1 %bound03512, %bound13513
  br i1 %found.conflict3514, label %.lr.ph878.i.preheader, label %vector.ph3517

vector.ph3517:                                    ; preds = %vector.memcheck3502
  %i.jzz = and i64 %i.jzm, 7                      ; 2 uses
  %i.kaa = icmp eq i64 %i.jzz, 0
  %i.kab = select i1 %i.kaa, i64 8, i64 %i.jzz
  %n.vec3518 = sub nsw i64 %i.jzm, %i.kab         ; 4 uses
  %i.kac = add nsw i64 %i.jzj, %n.vec3518
  %i.kad = shl nsw i64 %n.vec3518, 1
  %i.kae = add nsw i64 %i.kad, %i.jzi
  %i.kaf = trunc i64 %n.vec3518 to i32
  %i.kag = shl i32 %i.kaf, 1
  %i.kah = add i32 %i.jzf, %i.kag
  %invariant.gep4942 = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jzi
  %i.kai = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.jzj
  br label %vector.body3519

vector.body3519:                                  ; preds = %vector.body3519, %vector.ph3517
  %index3520 = phi i64 [ 0, %vector.ph3517 ], [ %index.next3536, %vector.body3519 ] ; 3 uses
  %.idx4626 = shl i64 %index3520, 3
  %gep4943 = getelementptr i8, ptr %invariant.gep4942, i64 %.idx4626 ; 6 uses
  %wide.vec3521 = load <16 x float>, ptr %gep4943, align 4, !tbaa !22, !alias.scope !312, !noalias !277 ; 2 uses
  %strided.vec3522 = shufflevector <16 x float> %wide.vec3521, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3523 = shufflevector <16 x float> %wide.vec3521, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kaj = getelementptr i8, ptr %gep4943, i64 -448
  %wide.vec3524 = load <16 x float>, ptr %i.kaj, align 4, !tbaa !22, !alias.scope !312, !noalias !277 ; 2 uses
  %strided.vec3525 = shufflevector <16 x float> %wide.vec3524, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3526 = shufflevector <16 x float> %wide.vec3524, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kak = getelementptr inbounds nuw i8, ptr %gep4943, i64 448
  %wide.vec3527 = load <16 x float>, ptr %i.kak, align 4, !tbaa !22, !alias.scope !312, !noalias !277 ; 2 uses
  %strided.vec3528 = shufflevector <16 x float> %wide.vec3527, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3529 = shufflevector <16 x float> %wide.vec3527, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kal = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3528, %strided.vec3525
  %i.kam = getelementptr i8, ptr %gep4943, i64 -4
  %wide.vec3530 = load <16 x float>, ptr %i.kam, align 4, !tbaa !22, !alias.scope !312, !noalias !277
  %strided.vec3531 = shufflevector <16 x float> %wide.vec3530, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kan = fadd reassoc nsz arcp contract afn <8 x float> %i.kal, %strided.vec3531
  %i.kao = fadd reassoc nsz arcp contract afn <8 x float> %i.kan, %strided.vec3523
  %i.kap = fmul reassoc nsz arcp contract afn <8 x float> %i.kao, splat (float 5.000000e-01)
  %i.kaq = fadd reassoc nsz arcp contract afn <8 x float> %i.kap, %strided.vec3522
  %i.kar = getelementptr i8, ptr %gep4943, i64 -452
  %wide.vec3532 = load <16 x float>, ptr %i.kar, align 4, !tbaa !22, !alias.scope !312, !noalias !277
  %strided.vec3533 = shufflevector <16 x float> %wide.vec3532, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kas = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3526, %strided.vec3533
  %i.kat = getelementptr inbounds nuw i8, ptr %gep4943, i64 444
  %wide.vec3534 = load <16 x float>, ptr %i.kat, align 4, !tbaa !22, !alias.scope !312, !noalias !277
  %strided.vec3535 = shufflevector <16 x float> %wide.vec3534, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kau = fadd reassoc nsz arcp contract afn <8 x float> %i.kas, %strided.vec3535
  %i.kav = fadd reassoc nsz arcp contract afn <8 x float> %i.kau, %strided.vec3529
  %i.kaw = fmul reassoc nsz arcp contract afn <8 x float> %i.kav, splat (float 2.500000e-01)
  %i.kax = fadd reassoc nsz arcp contract afn <8 x float> %i.kaq, %i.kaw
  %i.kay = getelementptr inbounds nuw [4 x i8], ptr %i.kai, i64 %index3520
  store <8 x float> %i.kax, ptr %i.kay, align 4, !tbaa !22, !alias.scope !315, !noalias !317
  %index.next3536 = add nuw i64 %index3520, 8     ; 2 uses
  %i.kaz = icmp eq i64 %index.next3536, %n.vec3518
  br i1 %i.kaz, label %.lr.ph878.i.preheader, label %vector.body3519, !llvm.loop !318

._crit_edge879.i:                                 ; preds = %.lr.ph878.i, %bb.pe
  %i.kba = add nuw nsw i32 %.0760880.i, 1         ; 2 uses
  %i.kbb = icmp slt i32 %i.kba, %i.jhy
  %indvars.iv.next996.i = add i32 %indvars.iv995.i, 112
  br i1 %i.kbb, label %bb.pe, label %.preheader831.i

.lr.ph878.i:                                      ; preds = %.lr.ph878.i.preheader, %.lr.ph878.i
  %indvars.iv999.i = phi i64 [ %indvars.iv.next1000.i, %.lr.ph878.i ], [ %indvars.iv999.i.ph, %.lr.ph878.i.preheader ] ; 2 uses
  %indvars.iv997.i = phi i64 [ %indvars.iv.next998.i, %.lr.ph878.i ], [ %indvars.iv997.i.ph, %.lr.ph878.i.preheader ] ; 2 uses
  %.0761876.i = phi i32 [ %i.kcf, %.lr.ph878.i ], [ %.0761876.i.ph, %.lr.ph878.i.preheader ]
  %i.kbc = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv997.i ; 9 uses
  %i.kbd = load float, ptr %i.kbc, align 4, !tbaa !22, !noalias !277
  %i.kbe = getelementptr i8, ptr %i.kbc, i64 -448
  %i.kbf = load float, ptr %i.kbe, align 4, !tbaa !22, !noalias !277
  %i.kbg = getelementptr inbounds nuw i8, ptr %i.kbc, i64 448
  %i.kbh = load float, ptr %i.kbg, align 4, !tbaa !22, !noalias !277
  %i.kbi = fadd reassoc nsz arcp contract afn float %i.kbh, %i.kbf
  %i.kbj = getelementptr i8, ptr %i.kbc, i64 -4
  %i.kbk = load float, ptr %i.kbj, align 4, !tbaa !22, !noalias !277
  %i.kbl = fadd reassoc nsz arcp contract afn float %i.kbi, %i.kbk
  %i.kbm = getelementptr inbounds nuw i8, ptr %i.kbc, i64 4
  %i.kbn = load float, ptr %i.kbm, align 4, !tbaa !22, !noalias !277
  %i.kbo = fadd reassoc nsz arcp contract afn float %i.kbl, %i.kbn
  %i.kbp = fmul reassoc nsz arcp contract afn float %i.kbo, 5.000000e-01
  %i.kbq = fadd reassoc nsz arcp contract afn float %i.kbp, %i.kbd
  %i.kbr = getelementptr i8, ptr %i.kbc, i64 -452
  %i.kbs = load float, ptr %i.kbr, align 4, !tbaa !22, !noalias !277
  %i.kbt = getelementptr i8, ptr %i.kbc, i64 -444
  %i.kbu = load float, ptr %i.kbt, align 4, !tbaa !22, !noalias !277
  %i.kbv = fadd reassoc nsz arcp contract afn float %i.kbu, %i.kbs
  %i.kbw = getelementptr inbounds nuw i8, ptr %i.kbc, i64 444
  %i.kbx = load float, ptr %i.kbw, align 4, !tbaa !22, !noalias !277
  %i.kby = fadd reassoc nsz arcp contract afn float %i.kbv, %i.kbx
  %i.kbz = getelementptr inbounds nuw i8, ptr %i.kbc, i64 452
  %i.kca = load float, ptr %i.kbz, align 4, !tbaa !22, !noalias !277
  %i.kcb = fadd reassoc nsz arcp contract afn float %i.kby, %i.kca
  %i.kcc = fmul reassoc nsz arcp contract afn float %i.kcb, 2.500000e-01
  %i.kcd = fadd reassoc nsz arcp contract afn float %i.kbq, %i.kcc
  %i.kce = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %indvars.iv999.i
  store float %i.kcd, ptr %i.kce, align 4, !tbaa !22, !noalias !277
  %i.kcf = add nuw nsw i32 %.0761876.i, 2         ; 2 uses
  %indvars.iv.next998.i = add nuw nsw i64 %indvars.iv997.i, 2
  %indvars.iv.next1000.i = add nuw nsw i64 %indvars.iv999.i, 1
  %i.kcg = icmp slt i32 %i.kcf, %i.jps
  br i1 %i.kcg, label %.lr.ph878.i, label %._crit_edge879.i, !llvm.loop !319

.preheader830.i:                                  ; preds = %._crit_edge887.i, %.preheader831.i
  br i1 %i.jhv, label %.lr.ph897.i, label %._crit_edge925.i

.lr.ph897.i:                                      ; preds = %.preheader830.i
  %i.kch = icmp sgt i32 %i.jkd, 6
  br i1 %i.kch, label %.lr.ph894.preheader.i, label %.preheader829.i

.lr.ph894.preheader.i:                            ; preds = %.lr.ph897.i
  %i.kci = add nuw nsw i32 %i.jjz, 1
  %i.kcj = add nuw i32 %i.jjo, 1
  %i.kck = add nuw i32 %i.jjk, 1
  %i.kcl = call i32 @llvm.smax.i32(i32 %i.jjv, i32 5)
  %i.kcm = add nsw i32 %i.kcl, -4
  %i.kcn = lshr i32 %i.kcm, 1
  %invariant.op4944 = add i32 %i.kcn, 1
  br label %.lr.ph894.i

bb.pf:                                            ; preds = %._crit_edge887.i, %.lr.ph889.i
  %indvars.iv1002.i = phi i32 [ 452, %.lr.ph889.i ], [ %indvars.iv.next1003.i, %._crit_edge887.i ] ; 3 uses
  %.0764888.i = phi i32 [ 4, %.lr.ph889.i ], [ %i.kii, %._crit_edge887.i ] ; 2 uses
  %i.kco = shl i32 %.0764888.i, 2
  %i.kcp = and i32 %i.kco, 28
  %i.kcq = lshr i32 %.fr1059, %i.kcp
  %i.kcr = and i32 %i.kcq, 1                      ; 5 uses
  %i.kcs = or disjoint i32 %i.kcr, 4              ; 4 uses
  %i.kct = icmp slt i32 %i.kcs, %i.jyz
  br i1 %i.kct, label %.lr.ph886.preheader.i, label %._crit_edge887.i

.lr.ph886.preheader.i:                            ; preds = %bb.pf
  %i.kcu = or disjoint i32 %i.kcr, %indvars.iv1002.i
  %i.kcv = zext i32 %i.kcu to i64                 ; 6 uses
  %i.kcw = lshr i64 %i.kcv, 1                     ; 4 uses
  %i.kcx = sub i32 %smin1164, %i.kcr
  %7 = add i32 %i.kcx, -9                         ; 2 uses
  %i.kcy = lshr i32 %7, 1
  %narrow4627 = add nuw i32 %i.kcy, 1
  %i.kcz = zext i32 %narrow4627 to i64            ; 2 uses
  %min.iters.check3441 = icmp ult i32 %7, 16
  br i1 %min.iters.check3441, label %.lr.ph886.i.preheader, label %vector.memcheck3410

.lr.ph886.i.preheader:                            ; preds = %vector.body3447, %vector.memcheck3410, %.lr.ph886.preheader.i
  %indvars.iv1006.i.ph = phi i64 [ %i.kcw, %vector.memcheck3410 ], [ %i.kcw, %.lr.ph886.preheader.i ], [ %i.kdp, %vector.body3447 ]
  %indvars.iv1004.i.ph = phi i64 [ %i.kcv, %vector.memcheck3410 ], [ %i.kcv, %.lr.ph886.preheader.i ], [ %i.kdr, %vector.body3447 ]
  %.0765884.i.ph = phi i32 [ %i.kcs, %vector.memcheck3410 ], [ %i.kcs, %.lr.ph886.preheader.i ], [ %i.kdu, %vector.body3447 ]
  br label %.lr.ph886.i

vector.memcheck3410:                              ; preds = %.lr.ph886.preheader.i
  %i.kda = or disjoint i32 %indvars.iv1002.i, %i.kcr
  %i.kdb = zext i32 %i.kda to i64                 ; 2 uses
  %i.kdc = shl nuw nsw i64 %i.kdb, 2              ; 4 uses
  %scevgep3412 = getelementptr i8, ptr %scevgep3411, i64 %i.kdc ; 3 uses
  %i.kdd = sub i32 %i.jza, %i.kcr
  %i.kde = lshr i32 %i.kdd, 1
  %i.kdf = zext nneg i32 %i.kde to i64            ; 2 uses
  %i.kdg = shl nuw nsw i64 %i.kdf, 3
  %i.kdh = add nuw nsw i64 %i.kdg, %i.kdc         ; 3 uses
  %scevgep3416 = getelementptr i8, ptr %scevgep3413, i64 %i.kdh ; 3 uses
  %scevgep3418 = getelementptr i8, ptr %scevgep3417, i64 %i.kdc
  %scevgep3420 = getelementptr i8, ptr %scevgep3419, i64 %i.kdh
  %i.kdi = shl nuw nsw i64 %i.kdb, 1
  %i.kdj = and i64 %i.kdi, 8589934584             ; 2 uses
  %scevgep3422 = getelementptr i8, ptr %scevgep3421, i64 %i.kdj
  %i.kdk = shl nuw nsw i64 %i.kdf, 2
  %i.kdl = getelementptr i8, ptr %scevgep3423, i64 %i.kdk
  %scevgep3424 = getelementptr i8, ptr %i.kdl, i64 %i.kdj
  %scevgep3426 = getelementptr i8, ptr %scevgep3425, i64 %i.kdc
  %scevgep3428 = getelementptr i8, ptr %scevgep3427, i64 %i.kdh
  %bound03429 = icmp ult ptr %scevgep3412, %scevgep3420
  %bound13430 = icmp ult ptr %scevgep3418, %scevgep3416
  %found.conflict3431 = and i1 %bound03429, %bound13430
  %bound03432 = icmp ult ptr %scevgep3412, %scevgep3424
  %bound13433 = icmp ult ptr %scevgep3422, %scevgep3416
  %found.conflict3434 = and i1 %bound03432, %bound13433
  %conflict.rdx3435 = or i1 %found.conflict3431, %found.conflict3434
  %bound03436 = icmp ult ptr %scevgep3412, %scevgep3428
  %bound13437 = icmp ult ptr %scevgep3426, %scevgep3416
  %found.conflict3438 = and i1 %bound03436, %bound13437
  %conflict.rdx3439 = or i1 %conflict.rdx3435, %found.conflict3438
  br i1 %conflict.rdx3439, label %.lr.ph886.i.preheader, label %vector.ph3442

vector.ph3442:                                    ; preds = %vector.memcheck3410
  %i.kdm = and i64 %i.kcz, 7                      ; 2 uses
  %i.kdn = icmp eq i64 %i.kdm, 0
  %i.kdo = select i1 %i.kdn, i64 8, i64 %i.kdm
  %n.vec3443 = sub nsw i64 %i.kcz, %i.kdo         ; 4 uses
  %i.kdp = add nsw i64 %i.kcw, %n.vec3443
  %i.kdq = shl nsw i64 %n.vec3443, 1
  %i.kdr = add nsw i64 %i.kdq, %i.kcv
  %i.kds = trunc i64 %n.vec3443 to i32
  %i.kdt = shl i32 %i.kds, 1
  %i.kdu = add i32 %i.kcs, %i.kdt
  %broadcast.splatinsert3444 = insertelement <8 x i64> poison, i64 %i.kcv, i64 0
  %broadcast.splat3445 = shufflevector <8 x i64> %broadcast.splatinsert3444, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3446 = add nuw nsw <8 x i64> %broadcast.splat3445, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3447

vector.body3447:                                  ; preds = %vector.body3447, %vector.ph3442
  %index3448 = phi i64 [ 0, %vector.ph3442 ], [ %index.next3496, %vector.body3447 ] ; 3 uses
  %vec.ind3449 = phi <8 x i64> [ %induction3446, %vector.ph3442 ], [ %vec.ind.next3497, %vector.body3447 ] ; 2 uses
  %i.kdv = add nuw i64 %i.kcw, %index3448         ; 2 uses
  %i.kdw = shl nuw i64 %index3448, 1
  %i.kdx = add nuw i64 %i.kdw, %i.kcv             ; 2 uses
  %i.kdy = getelementptr [4 x i8], ptr %i.jgx, i64 %i.kdx ; 13 uses
  %wide.vec3450 = load <16 x float>, ptr %i.kdy, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3451 = shufflevector <16 x float> %wide.vec3450, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.kdz = getelementptr i8, ptr %i.kdy, i64 -448
  %wide.vec3452 = load <16 x float>, ptr %i.kdz, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3453 = shufflevector <16 x float> %wide.vec3452, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.kea = getelementptr inbounds nuw i8, ptr %i.kdy, i64 448
  %wide.vec3454 = load <16 x float>, ptr %i.kea, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3455 = shufflevector <16 x float> %wide.vec3454, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.keb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3453, %strided.vec3455
  %i.kec = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.keb)
  %i.ked = fadd reassoc nsz arcp contract afn <8 x float> %i.kec, splat (float f0x3727C5AC)
  %i.kee = getelementptr i8, ptr %i.kdy, i64 -896
  %wide.vec3456 = load <16 x float>, ptr %i.kee, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3457 = shufflevector <16 x float> %wide.vec3456, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.kef = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3451, %strided.vec3457
  %i.keg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kef)
  %i.keh = fadd reassoc nsz arcp contract afn <8 x float> %i.ked, %i.keg
  %i.kei = getelementptr i8, ptr %i.kdy, i64 -1344
  %wide.vec3458 = load <16 x float>, ptr %i.kei, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3459 = shufflevector <16 x float> %wide.vec3458, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kej = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3453, %strided.vec3459
  %i.kek = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kej)
  %i.kel = fadd reassoc nsz arcp contract afn <8 x float> %i.keh, %i.kek
  %i.kem = getelementptr i8, ptr %i.kdy, i64 -1792
  %wide.vec3460 = load <16 x float>, ptr %i.kem, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3461 = shufflevector <16 x float> %wide.vec3460, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ken = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3457, %strided.vec3461
  %i.keo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ken)
  %i.kep = fadd reassoc nsz arcp contract afn <8 x float> %i.kel, %i.keo ; 2 uses
  %i.keq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3455, %strided.vec3453
  %i.ker = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.keq)
  %i.kes = fadd reassoc nsz arcp contract afn <8 x float> %i.ker, splat (float f0x3727C5AC)
  %i.ket = getelementptr inbounds nuw i8, ptr %i.kdy, i64 896
  %wide.vec3462 = load <16 x float>, ptr %i.ket, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3463 = shufflevector <16 x float> %wide.vec3462, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.keu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3451, %strided.vec3463
  %i.kev = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.keu)
  %i.kew = fadd reassoc nsz arcp contract afn <8 x float> %i.kes, %i.kev
  %i.kex = getelementptr inbounds nuw i8, ptr %i.kdy, i64 1344
  %wide.vec3464 = load <16 x float>, ptr %i.kex, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3465 = shufflevector <16 x float> %wide.vec3464, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.key = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3455, %strided.vec3465
  %i.kez = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.key)
  %i.kfa = fadd reassoc nsz arcp contract afn <8 x float> %i.kew, %i.kez
  %i.kfb = getelementptr inbounds nuw i8, ptr %i.kdy, i64 1792
  %wide.vec3466 = load <16 x float>, ptr %i.kfb, align 4, !tbaa !22, !alias.scope !320, !noalias !277
  %strided.vec3467 = shufflevector <16 x float> %wide.vec3466, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kfc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3463, %strided.vec3467
  %i.kfd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfc)
  %i.kfe = fadd reassoc nsz arcp contract afn <8 x float> %i.kfa, %i.kfd ; 2 uses
  %i.kff = getelementptr i8, ptr %i.kdy, i64 -8
  %wide.vec3468 = load <16 x float>, ptr %i.kff, align 4, !tbaa !22, !alias.scope !320, !noalias !277 ; 2 uses
  %strided.vec3469 = shufflevector <16 x float> %wide.vec3468, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3470 = shufflevector <16 x float> %wide.vec3468, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.kfg = getelementptr inbounds nuw i8, ptr %i.kdy, i64 4
  %wide.vec3471 = load <16 x float>, ptr %i.kfg, align 4, !tbaa !22, !alias.scope !320, !noalias !277 ; 2 uses
  %strided.vec3472 = shufflevector <16 x float> %wide.vec3471, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec3473 = shufflevector <16 x float> %wide.vec3471, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.kfh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3470, %strided.vec3472
  %i.kfi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfh)
  %i.kfj = fadd reassoc nsz arcp contract afn <8 x float> %i.kfi, splat (float f0x3727C5AC)
  %i.kfk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3451, %strided.vec3469
  %i.kfl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfk)
  %i.kfm = fadd reassoc nsz arcp contract afn <8 x float> %i.kfj, %i.kfl
  %i.kfn = getelementptr i8, ptr %i.kdy, i64 -16
  %wide.vec3474 = load <16 x float>, ptr %i.kfn, align 4, !tbaa !22, !alias.scope !320, !noalias !277 ; 2 uses
  %strided.vec3475 = shufflevector <16 x float> %wide.vec3474, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3476 = shufflevector <16 x float> %wide.vec3474, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kfo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3470, %strided.vec3476
  %i.kfp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfo)
  %i.kfq = fadd reassoc nsz arcp contract afn <8 x float> %i.kfm, %i.kfp
  %i.kfr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3469, %strided.vec3475
  %i.kfs = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfr)
  %i.kft = fadd reassoc nsz arcp contract afn <8 x float> %i.kfq, %i.kfs ; 2 uses
  %i.kfu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3472, %strided.vec3470
  %i.kfv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfu)
  %i.kfw = fadd reassoc nsz arcp contract afn <8 x float> %i.kfv, splat (float f0x3727C5AC)
  %i.kfx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3451, %strided.vec3473
  %i.kfy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kfx)
  %i.kfz = fadd reassoc nsz arcp contract afn <8 x float> %i.kfw, %i.kfy
  %i.kga = getelementptr inbounds nuw i8, ptr %i.kdy, i64 12
  %wide.vec3477 = load <16 x float>, ptr %i.kga, align 4, !tbaa !22, !alias.scope !320, !noalias !277 ; 2 uses
  %strided.vec3478 = shufflevector <16 x float> %wide.vec3477, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3479 = shufflevector <16 x float> %wide.vec3477, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kgb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3472, %strided.vec3478
  %i.kgc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kgb)
  %i.kgd = fadd reassoc nsz arcp contract afn <8 x float> %i.kfz, %i.kgc
  %i.kge = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3473, %strided.vec3479
  %i.kgf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kge)
  %i.kgg = fadd reassoc nsz arcp contract afn <8 x float> %i.kgd, %i.kgf ; 2 uses
  %i.kgh = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.kdv ; 4 uses
  %wide.load3480 = load <8 x float>, ptr %i.kgh, align 8, !tbaa !22, !alias.scope !323, !noalias !277 ; 2 uses
  %i.kgi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3480, splat (float 2.000000e+00) ; 4 uses
  %i.kgj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3480, splat (float f0x3727C5AC) ; 4 uses
  %i.kgk = getelementptr i8, ptr %i.kgh, i64 -448
  %wide.load3481 = load <8 x float>, ptr %i.kgk, align 8, !tbaa !22, !alias.scope !323, !noalias !277
  %i.kgl = fadd reassoc nsz arcp contract afn <8 x float> %i.kgj, %wide.load3481
  %i.kgm = getelementptr inbounds nuw i8, ptr %i.kgh, i64 448
  %wide.load3482 = load <8 x float>, ptr %i.kgm, align 8, !tbaa !22, !alias.scope !323, !noalias !277
  %i.kgn = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3482, %i.kgj
  %i.kgo = fmul reassoc nsz arcp contract afn <8 x float> %i.kgi, %strided.vec3470
  %i.kgp = getelementptr i8, ptr %i.kgh, i64 -4
  %wide.load3483 = load <8 x float>, ptr %i.kgp, align 4, !tbaa !22, !alias.scope !323, !noalias !277
  %i.kgq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3483, %i.kgj
  %i.kgr = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.kdv
  %i.kgs = getelementptr inbounds nuw i8, ptr %i.kgr, i64 4
  %wide.load3484 = load <8 x float>, ptr %i.kgs, align 4, !tbaa !22, !alias.scope !323, !noalias !277
  %i.kgt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3484, %i.kgj
  %i.kgu = fmul reassoc nsz arcp contract afn <8 x float> %i.kfe, %strided.vec3453
  %i.kgv = fmul reassoc nsz arcp contract afn <8 x float> %i.kgu, %i.kgi
  %i.kgw = fdiv reassoc nsz arcp contract afn <8 x float> %i.kgv, %i.kgl
  %i.kgx = fmul reassoc nsz arcp contract afn <8 x float> %i.kep, %strided.vec3455
  %i.kgy = fmul reassoc nsz arcp contract afn <8 x float> %i.kgx, %i.kgi
  %i.kgz = fdiv reassoc nsz arcp contract afn <8 x float> %i.kgy, %i.kgn
  %i.kha = fadd reassoc nsz arcp contract afn <8 x float> %i.kgz, %i.kgw
  %i.khb = fadd reassoc nsz arcp contract afn <8 x float> %i.kfe, %i.kep
  %i.khc = fdiv reassoc nsz arcp contract afn <8 x float> %i.kha, %i.khb ; 2 uses
  %i.khd = fmul reassoc nsz arcp contract afn <8 x float> %i.kft, %strided.vec3472
  %i.khe = fmul reassoc nsz arcp contract afn <8 x float> %i.khd, %i.kgi
  %i.khf = fdiv reassoc nsz arcp contract afn <8 x float> %i.khe, %i.kgt
  %i.khg = fmul reassoc nsz arcp contract afn <8 x float> %i.kgo, %i.kgg
  %i.khh = fdiv reassoc nsz arcp contract afn <8 x float> %i.khg, %i.kgq
  %i.khi = fadd reassoc nsz arcp contract afn <8 x float> %i.khf, %i.khh
  %i.khj = fadd reassoc nsz arcp contract afn <8 x float> %i.kgg, %i.kft
  %i.khk = fdiv reassoc nsz arcp contract afn <8 x float> %i.khi, %i.khj
  %i.khl = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %i.kdx ; 5 uses
  %wide.vec3485 = load <16 x float>, ptr %i.khl, align 4, !tbaa !22, !alias.scope !325, !noalias !277
  %strided.vec3486 = shufflevector <16 x float> %wide.vec3485, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.khm = getelementptr i8, ptr %i.khl, i64 -452
  %wide.vec3487 = load <16 x float>, ptr %i.khm, align 4, !tbaa !22, !alias.scope !325, !noalias !277
  %strided.vec3488 = shufflevector <16 x float> %wide.vec3487, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.khn = getelementptr i8, ptr %i.khl, i64 -444
  %wide.vec3489 = load <16 x float>, ptr %i.khn, align 4, !tbaa !22, !alias.scope !325, !noalias !277
  %strided.vec3490 = shufflevector <16 x float> %wide.vec3489, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kho = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3490, %strided.vec3488
  %i.khp = getelementptr inbounds nuw i8, ptr %i.khl, i64 444
  %wide.vec3491 = load <16 x float>, ptr %i.khp, align 4, !tbaa !22, !alias.scope !325, !noalias !277
  %strided.vec3492 = shufflevector <16 x float> %wide.vec3491, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.khq = fadd reassoc nsz arcp contract afn <8 x float> %i.kho, %strided.vec3492
  %i.khr = getelementptr inbounds nuw i8, ptr %i.khl, i64 452
  %wide.vec3493 = load <16 x float>, ptr %i.khr, align 4, !tbaa !22, !alias.scope !325, !noalias !277
  %strided.vec3494 = shufflevector <16 x float> %wide.vec3493, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.khs = fadd reassoc nsz arcp contract afn <8 x float> %i.khq, %strided.vec3494
  %i.kht = fmul reassoc nsz arcp contract afn <8 x float> %i.khs, splat (float 2.500000e-01) ; 2 uses
  %i.khu = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %strided.vec3486
  %i.khv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.khu)
  %i.khw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kht
  %i.khx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.khw)
  %i.khy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.khv, %i.khx
  %i.khz = select reassoc nsz arcp contract afn <8 x i1> %i.khy, <8 x float> %i.kht, <8 x float> %strided.vec3486 ; 3 uses
  %i.kia = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.khz, zeroinitializer
  %i.kib = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.khz, splat (float 1.000000e+00)
  %i.kic = select reassoc nsz arcp contract afn <8 x i1> %i.kib, <8 x float> %i.khz, <8 x float> splat (float 1.000000e+00)
  %i.kid = select reassoc nsz arcp contract afn <8 x i1> %i.kia, <8 x float> %i.kic, <8 x float> zeroinitializer
  %i.kie = fsub reassoc nsz arcp contract afn <8 x float> %i.khk, %i.khc
  %i.kif = fmul reassoc nsz arcp contract afn <8 x float> %i.kid, %i.kie
  %i.kig = fadd reassoc nsz arcp contract afn <8 x float> %i.kif, %i.khc
  %wide.gep3495 = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, <8 x i64> %vec.ind3449
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kig, <8 x ptr> align 4 %wide.gep3495, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !327, !noalias !329
  %index.next3496 = add nuw i64 %index3448, 8     ; 2 uses
  %vec.ind.next3497 = add nuw nsw <8 x i64> %vec.ind3449, splat (i64 16)
  %i.kih = icmp eq i64 %index.next3496, %n.vec3443
  br i1 %i.kih, label %.lr.ph886.i.preheader, label %vector.body3447, !llvm.loop !330

._crit_edge887.i:                                 ; preds = %.lr.ph886.i, %bb.pf
  %i.kii = add nuw nsw i32 %.0764888.i, 1         ; 2 uses
  %i.kij = icmp slt i32 %i.kii, %i.jhw
  %indvars.iv.next1003.i = add i32 %indvars.iv1002.i, 112
  br i1 %i.kij, label %bb.pf, label %.preheader830.i

.lr.ph886.i:                                      ; preds = %.lr.ph886.i.preheader, %.lr.ph886.i
  %indvars.iv1006.i = phi i64 [ %indvars.iv.next1007.i, %.lr.ph886.i ], [ %indvars.iv1006.i.ph, %.lr.ph886.i.preheader ] ; 2 uses
  %indvars.iv1004.i = phi i64 [ %indvars.iv.next1005.i, %.lr.ph886.i ], [ %indvars.iv1004.i.ph, %.lr.ph886.i.preheader ] ; 4 uses
  %.0765884.i = phi i32 [ %i.knq, %.lr.ph886.i ], [ %.0765884.i.ph, %.lr.ph886.i.preheader ]
  %i.kik = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv1004.i ; 14 uses
  %i.kil = getelementptr inbounds nuw i8, ptr %i.kik, i64 1344
  %i.kim = getelementptr inbounds nuw i8, ptr %i.kik, i64 1792
  %i.kin = getelementptr inbounds nuw i8, ptr %i.kik, i64 896
  %i.kio = load float, ptr %i.kil, align 4, !tbaa !22, !noalias !277
  %i.kip = load float, ptr %i.kim, align 4, !tbaa !22, !noalias !277
  %i.kiq = load float, ptr %i.kin, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.kir = getelementptr inbounds nuw i8, ptr %i.kik, i64 448
  %i.kis = getelementptr i8, ptr %i.kik, i64 -448
  %i.kit = getelementptr i8, ptr %i.kik, i64 -896
  %i.kiu = getelementptr i8, ptr %i.kik, i64 -1344
  %i.kiv = getelementptr i8, ptr %i.kik, i64 -1792
  %i.kiw = load float, ptr %i.kiu, align 4, !tbaa !22, !noalias !277
  %i.kix = load float, ptr %i.kiv, align 4, !tbaa !22, !noalias !277
  %i.kiy = load float, ptr %i.kis, align 4, !tbaa !22, !noalias !277 ; 4 uses
  %i.kiz = load float, ptr %i.kit, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.kja = load float, ptr %i.kir, align 4, !tbaa !22, !noalias !277 ; 4 uses
  %i.kjb = fsub reassoc nsz arcp contract afn float %i.kiz, %i.kix
  %i.kjc = fsub reassoc nsz arcp contract afn float %i.kiy, %i.kiw
  %i.kjd = fsub reassoc nsz arcp contract afn float %i.kiy, %i.kja
  %i.kje = insertelement <4 x float> poison, float %i.kjd, i64 0
  %i.kjf = fsub reassoc nsz arcp contract afn float %i.kiq, %i.kip
  %i.kjg = fsub reassoc nsz arcp contract afn float %i.kja, %i.kio
  %i.kjh = fsub reassoc nsz arcp contract afn float %i.kja, %i.kiy
  %i.kji = insertelement <4 x float> poison, float %i.kjh, i64 0
  %i.kjj = getelementptr i8, ptr %i.kik, i64 -4
  %i.kjk = getelementptr inbounds nuw i8, ptr %i.kik, i64 4
  %i.kjl = getelementptr i8, ptr %i.kik, i64 -8
  %i.kjm = load float, ptr %i.kjl, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.kjn = getelementptr i8, ptr %i.kik, i64 -16
  %indvars.iv.next1005.i = add nuw nsw i64 %indvars.iv1004.i, 2
  %i.kjo = getelementptr inbounds nuw i8, ptr %i.kik, i64 16
  %i.kjp = load float, ptr %i.kjo, align 4, !tbaa !22, !noalias !277
  %i.kjq = load <2 x float>, ptr %i.kjj, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.kjr = load float, ptr %i.kik, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.kjs = fsub reassoc nsz arcp contract afn float %i.kjr, %i.kiz
  %i.kjt = insertelement <4 x float> %i.kje, float %i.kjs, i64 1
  %i.kju = insertelement <4 x float> %i.kjt, float %i.kjc, i64 2
  %i.kjv = insertelement <4 x float> %i.kju, float %i.kjb, i64 3
  %i.kjw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kjv)
  %i.kjx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kjw)
  %i.kjy = fsub reassoc nsz arcp contract afn float %i.kjr, %i.kiq
  %i.kjz = insertelement <4 x float> %i.kji, float %i.kjy, i64 1
  %i.kka = insertelement <4 x float> %i.kjz, float %i.kjg, i64 2
  %i.kkb = insertelement <4 x float> %i.kka, float %i.kjf, i64 3
  %i.kkc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kkb)
  %i.kkd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kkc) ; 2 uses
  %i.kke = load <3 x float>, ptr %i.kjk, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.kkf = shufflevector <3 x float> %i.kke, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.kkg = load <2 x float>, ptr %i.kjn, align 4, !tbaa !22, !noalias !277
  %i.kkh = shufflevector <2 x float> %i.kjq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.kki = insertelement <4 x float> %i.kkh, float %i.kjr, i64 1
  %i.kkj = insertelement <4 x float> %i.kki, float %i.kjm, i64 3
  %i.kkk = insertelement <4 x float> %i.kkf, float %i.kjm, i64 1
  %i.kkl = shufflevector <2 x float> %i.kkg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.kkm = shufflevector <4 x float> %i.kkk, <4 x float> %i.kkl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kkn = fsub reassoc nsz arcp contract afn <4 x float> %i.kkj, %i.kkm
  %i.kko = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kkn)
  %i.kkp = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kko)
  %i.kkq = shufflevector <2 x float> %i.kjq, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.kkr = shufflevector <3 x float> %i.kkq, <3 x float> %i.kke, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.kks = insertelement <4 x float> %i.kkr, float %i.kjp, i64 3
  %i.kkt = fsub reassoc nsz arcp contract afn <4 x float> %i.kkf, %i.kks
  %i.kku = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kkt)
  %i.kkv = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kku)
  %i.kkw = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %indvars.iv1006.i ; 4 uses
  %i.kkx = getelementptr i8, ptr %i.kkw, i64 -448
  %i.kky = load float, ptr %i.kkx, align 4, !tbaa !22, !noalias !277
  %i.kkz = getelementptr inbounds nuw i8, ptr %i.kkw, i64 448
  %i.kla = load float, ptr %i.kkz, align 4, !tbaa !22, !noalias !277
  %i.klb = getelementptr i8, ptr %i.kkw, i64 -4
  %i.klc = load float, ptr %i.klb, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next1007.i = add nuw nsw i64 %indvars.iv1006.i, 1
  %i.kld = insertelement <2 x float> poison, float %i.kkp, i64 0
  %i.kle = insertelement <2 x float> %i.kld, float %i.kjx, i64 1
  %i.klf = fadd reassoc nsz arcp contract afn <2 x float> %i.kle, splat (float f0x3727C5AC) ; 2 uses
  %i.klg = insertelement <2 x float> poison, float %i.kkv, i64 0
  %i.klh = insertelement <2 x float> %i.klg, float %i.kkd, i64 1
  %i.kli = fadd reassoc nsz arcp contract afn <2 x float> %i.klh, splat (float f0x3727C5AC) ; 2 uses
  %i.klj = load <2 x float>, ptr %i.kkw, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.klk = insertelement <2 x float> %i.klj, float %i.kkd, i64 1 ; 2 uses
  %i.kll = fmul reassoc nsz arcp contract afn <2 x float> %i.klk, <float 2.000000e+00, float f0x3727C5AC> ; 3 uses
  %i.klm = fadd reassoc nsz arcp contract afn <2 x float> %i.klk, <float poison, float f0x3727C5AC>
  %i.kln = shufflevector <2 x float> %i.kll, <2 x float> %i.klm, <2 x i32> <i32 0, i32 3>
  %i.klo = extractelement <2 x float> %i.klj, i64 0
  %i.klp = fadd reassoc nsz arcp contract afn float %i.klo, f0x3727C5AC
  %i.klq = insertelement <2 x float> poison, float %i.klc, i64 0
  %i.klr = insertelement <2 x float> %i.klq, float %i.kky, i64 1
  %i.kls = insertelement <2 x float> poison, float %i.klp, i64 0
  %i.klt = shufflevector <2 x float> %i.kls, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.klu = fadd reassoc nsz arcp contract afn <2 x float> %i.klr, %i.klt
  %i.klv = shufflevector <2 x float> %i.klj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.klw = insertelement <2 x float> %i.klv, float %i.kla, i64 1
  %i.klx = fadd reassoc nsz arcp contract afn <2 x float> %i.klw, %i.klt
  %i.kly = insertelement <2 x float> %i.kjq, float %i.kiy, i64 1
  %i.klz = fmul reassoc nsz arcp contract afn <2 x float> %i.kln, %i.kly
  %i.kma = shufflevector <3 x float> %i.kke, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.kmb = insertelement <2 x float> %i.kma, float %i.kja, i64 1
  %i.kmc = fmul reassoc nsz arcp contract afn <2 x float> %i.klf, %i.kmb
  %i.kmd = shufflevector <2 x float> %i.kll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kme = fmul reassoc nsz arcp contract afn <2 x float> %i.kmc, %i.kmd
  %i.kmf = fdiv reassoc nsz arcp contract afn <2 x float> %i.kme, %i.klx
  %i.kmg = shufflevector <2 x float> %i.kli, <2 x float> %i.kll, <2 x i32> <i32 0, i32 2>
  %i.kmh = fmul reassoc nsz arcp contract afn <2 x float> %i.klz, %i.kmg
  %i.kmi = fdiv reassoc nsz arcp contract afn <2 x float> %i.kmh, %i.klu
  %i.kmj = fadd reassoc nsz arcp contract afn <2 x float> %i.kmf, %i.kmi
  %i.kmk = fadd reassoc nsz arcp contract afn <2 x float> %i.kli, %i.klf
  %i.kml = fdiv reassoc nsz arcp contract afn <2 x float> %i.kmj, %i.kmk ; 2 uses
  %i.kmm = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %indvars.iv1004.i ; 5 uses
  %i.kmn = load float, ptr %i.kmm, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.kmo = getelementptr i8, ptr %i.kmm, i64 -452
  %i.kmp = load float, ptr %i.kmo, align 4, !tbaa !22, !noalias !277
  %i.kmq = getelementptr i8, ptr %i.kmm, i64 -444
  %i.kmr = load float, ptr %i.kmq, align 4, !tbaa !22, !noalias !277
  %i.kms = fadd reassoc nsz arcp contract afn float %i.kmr, %i.kmp
  %i.kmt = getelementptr inbounds nuw i8, ptr %i.kmm, i64 444
  %i.kmu = load float, ptr %i.kmt, align 4, !tbaa !22, !noalias !277
  %i.kmv = fadd reassoc nsz arcp contract afn float %i.kms, %i.kmu
  %i.kmw = getelementptr inbounds nuw i8, ptr %i.kmm, i64 452
  %i.kmx = load float, ptr %i.kmw, align 4, !tbaa !22, !noalias !277
  %i.kmy = fadd reassoc nsz arcp contract afn float %i.kmv, %i.kmx
  %i.kmz = fmul reassoc nsz arcp contract afn float %i.kmy, 2.500000e-01 ; 2 uses
  %i.kna = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kmn
  %i.knb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kna)
  %i.knc = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kmz
  %i.knd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.knc)
  %i.kne = fcmp reassoc nsz arcp contract afn olt float %i.knb, %i.knd
  %i.knf = select reassoc nsz arcp contract afn i1 %i.kne, float %i.kmz, float %i.kmn ; 3 uses
  %i.kng = fcmp reassoc nsz arcp contract afn oge float %i.knf, 0.000000e+00
  %i.knh = fcmp reassoc nsz arcp contract afn ole float %i.knf, 1.000000e+00
  %i.kni = select reassoc nsz arcp contract afn i1 %i.knh, float %i.knf, float 1.000000e+00
  %i.knj = select reassoc nsz arcp contract afn i1 %i.kng, float %i.kni, float 0.000000e+00
  %i.knk = extractelement <2 x float> %i.kml, i64 0
  %i.knl = extractelement <2 x float> %i.kml, i64 1 ; 2 uses
  %i.knm = fsub reassoc nsz arcp contract afn float %i.knk, %i.knl
  %i.knn = fmul reassoc nsz arcp contract afn float %i.knj, %i.knm
  %i.kno = fadd reassoc nsz arcp contract afn float %i.knn, %i.knl
  %i.knp = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %indvars.iv1004.i
  store float %i.kno, ptr %i.knp, align 4, !tbaa !22, !noalias !277
  %i.knq = add nuw nsw i32 %.0765884.i, 2         ; 2 uses
  %i.knr = icmp slt i32 %i.knq, %i.jyz
  br i1 %i.knr, label %.lr.ph886.i, label %._crit_edge887.i, !llvm.loop !331

.preheader829.i:                                  ; preds = %._crit_edge895.i, %.lr.ph897.i
  br i1 %i.jhx, label %.lr.ph906.i, label %._crit_edge925.i

.lr.ph906.i:                                      ; preds = %.preheader829.i
  %i.kns = add nsw i32 %i.jke, -4                 ; 6 uses
  br label %bb.pg

.lr.ph894.i:                                      ; preds = %._crit_edge895.i, %.lr.ph894.preheader.i
  %indvars.iv1009.i = phi i32 [ 336, %.lr.ph894.preheader.i ], [ %indvars.iv.next1010.i, %._crit_edge895.i ] ; 5 uses
  %.0771896.i = phi i32 [ 3, %.lr.ph894.preheader.i ], [ %i.krd, %._crit_edge895.i ]
  %i.knt = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.knu = lshr exact i64 %i.knt, 1
  %i.knv = or disjoint i64 %i.knu, 1              ; 3 uses
  %i.knw = shl nuw nsw i64 %i.knv, 2              ; 2 uses
  %scevgep3346 = getelementptr nuw i8, ptr %i.jgz, i64 %i.knw ; 2 uses
  %i.knx = trunc nuw nsw i64 %i.knv to i32
  %i.kny = add i32 %i.kck, %i.knx
  %i.knz = zext i32 %i.kny to i64                 ; 2 uses
  %i.koa = shl nuw nsw i64 %i.knz, 2              ; 2 uses
  %scevgep3350 = getelementptr i8, ptr %i.jgz, i64 %i.koa ; 2 uses
  %scevgep3351 = getelementptr i8, ptr %i.jhb, i64 %i.knw ; 2 uses
  %scevgep3352 = getelementptr i8, ptr %i.jhb, i64 %i.koa ; 2 uses
  %i.kob = shl nuw nsw i64 %i.knt, 2              ; 2 uses
  %scevgep3354 = getelementptr i8, ptr %scevgep3353, i64 %i.kob ; 2 uses
  %i.koc = shl nuw nsw i64 %i.knz, 3
  %i.kod = add nuw nsw i64 %i.koc, %i.kob
  %i.koe = shl nuw nsw i64 %i.knv, 3
  %i.kof = sub nsw i64 %i.kod, %i.koe
  %scevgep3356 = getelementptr i8, ptr %scevgep3355, i64 %i.kof ; 2 uses
  %i.kog = or disjoint i32 %indvars.iv1009.i, 3
  %i.koh = zext i32 %i.kog to i64                 ; 6 uses
  %i.koi = lshr i64 %i.koh, 1                     ; 6 uses
  %i.koj = trunc nuw nsw i64 %i.koi to i32
  %i.kok = add nuw i32 %i.kci, %i.koj
  %wide.trip.count.i = zext i32 %i.kok to i64
  %i.kol = lshr exact i32 %indvars.iv1009.i, 1
  %i.kom = or disjoint i32 %i.kol, 1              ; 2 uses
  %i.kon = zext nneg i32 %i.kom to i64
  %.reass4945 = add i32 %i.kom, %invariant.op4944
  %i.koo = zext i32 %.reass4945 to i64
  %i.kop = sub nsw i64 %i.koo, %i.kon             ; 3 uses
  %min.iters.check3369 = icmp ult i64 %i.kop, 17
  br i1 %min.iters.check3369, label %scalar.ph3368.preheader, label %vector.scevcheck3324

scalar.ph3368.preheader:                          ; preds = %vector.body3375, %vector.memcheck3345, %vector.scevcheck3324, %.lr.ph894.i
  %indvars.iv1013.i.ph = phi i64 [ %i.koi, %vector.memcheck3345 ], [ %i.koi, %vector.scevcheck3324 ], [ %i.koi, %.lr.ph894.i ], [ %i.kpx, %vector.body3375 ]
  %indvars.iv1011.i.ph = phi i64 [ %i.koh, %vector.memcheck3345 ], [ %i.koh, %vector.scevcheck3324 ], [ %i.koh, %.lr.ph894.i ], [ %i.kpz, %vector.body3375 ]
  br label %scalar.ph3368

vector.scevcheck3324:                             ; preds = %.lr.ph894.i
  %i.koq = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kor = shl nuw nsw i64 %i.koq, 2              ; 7 uses
  %scevgep3344 = getelementptr i8, ptr %scevgep3343, i64 %i.kor ; 2 uses
  %scevgep3342 = getelementptr i8, ptr %scevgep3341, i64 %i.kor ; 2 uses
  %scevgep3340 = getelementptr i8, ptr %scevgep3339, i64 %i.kor ; 2 uses
  %scevgep3338 = getelementptr i8, ptr %scevgep3337, i64 %i.kor ; 2 uses
  %scevgep3336 = getelementptr i8, ptr %scevgep3335, i64 %i.kor ; 2 uses
  %scevgep3334 = getelementptr i8, ptr %scevgep3333, i64 %i.kor ; 2 uses
  %scevgep3329 = getelementptr i8, ptr %scevgep3328, i64 %i.kor ; 2 uses
  %i.kos = lshr exact i64 %i.koq, 1               ; 2 uses
  %i.kot = trunc nuw nsw i64 %i.kos to i32
  %i.kou = or disjoint i32 %i.kot, 1
  %i.kov = add i32 %i.kcj, %i.kou
  %i.kow = zext i32 %i.kov to i64
  %i.kox = xor i64 %i.kos, -2
  %i.koy = add nsw i64 %i.kox, %i.kow             ; 2 uses
  %mul.result3331 = shl nsw i64 %i.koy, 3         ; 7 uses
  %mul.overflow3332 = icmp ugt i64 %i.koy, 2305843009213693951
  %i.koz = getelementptr i8, ptr %scevgep3329, i64 %mul.result3331
  %i.kpa = icmp ult ptr %i.koz, %scevgep3329
  %i.kpb = getelementptr i8, ptr %scevgep3334, i64 %mul.result3331
  %i.kpc = icmp ult ptr %i.kpb, %scevgep3334
  %i.kpd = getelementptr i8, ptr %scevgep3336, i64 %mul.result3331
  %i.kpe = icmp ult ptr %i.kpd, %scevgep3336
  %i.kpf = or i1 %i.kpe, %mul.overflow3332
  %i.kpg = getelementptr i8, ptr %scevgep3338, i64 %mul.result3331
  %i.kph = icmp ult ptr %i.kpg, %scevgep3338
  %i.kpi = getelementptr i8, ptr %scevgep3340, i64 %mul.result3331
  %i.kpj = icmp ult ptr %i.kpi, %scevgep3340
  %i.kpk = getelementptr i8, ptr %scevgep3342, i64 %mul.result3331
  %i.kpl = icmp ult ptr %i.kpk, %scevgep3342
  %i.kpm = getelementptr i8, ptr %scevgep3344, i64 %mul.result3331
  %i.kpn = icmp ult ptr %i.kpm, %scevgep3344
  %i.kpo = or i1 %i.kpc, %i.kpa
  %i.kpp = or i1 %i.kpo, %i.kpf
  %i.kpq = or i1 %i.kph, %i.kpp
  %i.kpr = or i1 %i.kpj, %i.kpq
  %i.kps = or i1 %i.kpl, %i.kpr
  %i.kpt = or i1 %i.kpn, %i.kps
  br i1 %i.kpt, label %scalar.ph3368.preheader, label %vector.memcheck3345

vector.memcheck3345:                              ; preds = %vector.scevcheck3324
  %bound03357 = icmp ult ptr %scevgep3346, %scevgep3352
  %bound13358 = icmp ult ptr %scevgep3351, %scevgep3350
  %found.conflict3359 = and i1 %bound03357, %bound13358
  %bound03360 = icmp ult ptr %scevgep3346, %scevgep3356
  %bound13361 = icmp ult ptr %scevgep3354, %scevgep3350
  %found.conflict3362 = and i1 %bound03360, %bound13361
  %conflict.rdx3363 = or i1 %found.conflict3359, %found.conflict3362
  %bound03364 = icmp ult ptr %scevgep3351, %scevgep3356
  %bound13365 = icmp ult ptr %scevgep3354, %scevgep3352
  %found.conflict3366 = and i1 %bound03364, %bound13365
  %conflict.rdx3367 = or i1 %conflict.rdx3363, %found.conflict3366
  br i1 %conflict.rdx3367, label %scalar.ph3368.preheader, label %vector.ph3370

vector.ph3370:                                    ; preds = %vector.memcheck3345
  %i.kpu = and i64 %i.kop, 7                      ; 2 uses
  %i.kpv = icmp eq i64 %i.kpu, 0
  %i.kpw = select i1 %i.kpv, i64 8, i64 %i.kpu
  %n.vec3371 = sub nsw i64 %i.kop, %i.kpw         ; 3 uses
  %i.kpx = add nsw i64 %i.koi, %n.vec3371
  %i.kpy = shl nsw i64 %n.vec3371, 1
  %i.kpz = add nsw i64 %i.kpy, %i.koh
  %broadcast.splatinsert3372 = insertelement <8 x i64> poison, i64 %i.koh, i64 0
  %broadcast.splat3373 = shufflevector <8 x i64> %broadcast.splatinsert3372, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3374 = add nuw nsw <8 x i64> %broadcast.splat3373, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3375

vector.body3375:                                  ; preds = %vector.body3375, %vector.ph3370
  %index3376 = phi i64 [ 0, %vector.ph3370 ], [ %index.next3405, %vector.body3375 ] ; 2 uses
  %vec.ind3377 = phi <8 x i64> [ %induction3374, %vector.ph3370 ], [ %vec.ind.next3406, %vector.body3375 ] ; 2 uses
  %i.kqa = add nuw i64 %i.koi, %index3376         ; 2 uses
  %wide.gep3378 = getelementptr [4 x i8], ptr %i.jgx, <8 x i64> %vec.ind3377 ; 9 uses
  %i.kqb = extractelement <8 x ptr> %wide.gep3378, i64 0 ; 6 uses
  %wide.gep3379 = getelementptr i8, <8 x ptr> %wide.gep3378, i64 -1356
  %wide.masked.gather3380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3379, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3381 = getelementptr i8, <8 x ptr> %wide.gep3378, i64 -452
  %wide.masked.gather3382 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3381, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqc = getelementptr inbounds nuw i8, ptr %i.kqb, i64 452
  %wide.vec3383 = load <16 x float>, ptr %i.kqc, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3384 = shufflevector <16 x float> %wide.vec3383, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqd = getelementptr inbounds nuw i8, ptr %i.kqb, i64 1356
  %wide.vec3385 = load <16 x float>, ptr %i.kqd, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3386 = shufflevector <16 x float> %wide.vec3385, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3387 = getelementptr i8, <8 x ptr> %wide.gep3378, i64 -904
  %wide.masked.gather3388 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3387, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqe = getelementptr inbounds nuw i8, ptr %i.kqb, i64 904
  %wide.vec3389 = load <16 x float>, ptr %i.kqe, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3390 = shufflevector <16 x float> %wide.vec3389, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3390, %wide.masked.gather3388
  %i.kqg = fmul reassoc nsz arcp contract afn <8 x float> %i.kqf, splat (float -3.000000e+00)
  %wide.masked.gather3391 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3378, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3391, splat (float 6.000000e+00)
  %i.kqi = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3382, %strided.vec3384
  %i.kqj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3380, %i.kqi
  %i.kqk = fadd reassoc nsz arcp contract afn <8 x float> %i.kqj, %strided.vec3386
  %i.kql = fadd reassoc nsz arcp contract afn <8 x float> %i.kqk, %i.kqg
  %i.kqm = fadd reassoc nsz arcp contract afn <8 x float> %i.kql, %i.kqh ; 2 uses
  %i.kqn = fmul reassoc nsz arcp contract afn <8 x float> %i.kqm, %i.kqm
  %i.kqo = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %i.kqa
  store <8 x float> %i.kqn, ptr %i.kqo, align 4, !tbaa !22, !alias.scope !335, !noalias !337
  %wide.gep3392 = getelementptr i8, <8 x ptr> %wide.gep3378, i64 -1332
  %wide.masked.gather3393 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3392, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3394 = getelementptr i8, <8 x ptr> %wide.gep3378, i64 -444
  %wide.masked.gather3395 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3394, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqp = getelementptr inbounds nuw i8, ptr %i.kqb, i64 444
  %wide.vec3396 = load <16 x float>, ptr %i.kqp, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3397 = shufflevector <16 x float> %wide.vec3396, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqq = getelementptr inbounds nuw i8, ptr %i.kqb, i64 1332
  %wide.vec3398 = load <16 x float>, ptr %i.kqq, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3399 = shufflevector <16 x float> %wide.vec3398, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3400 = getelementptr i8, <8 x ptr> %wide.gep3378, i64 -888
  %wide.masked.gather3401 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3400, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqr = getelementptr inbounds nuw i8, ptr %i.kqb, i64 888
  %wide.vec3402 = load <16 x float>, ptr %i.kqr, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3403 = shufflevector <16 x float> %wide.vec3402, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqs = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3403, %wide.masked.gather3401
  %i.kqt = fmul reassoc nsz arcp contract afn <8 x float> %i.kqs, splat (float -3.000000e+00)
  %wide.masked.gather3404 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3378, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3404, splat (float 6.000000e+00)
  %i.kqv = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3395, %strided.vec3397
  %i.kqw = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3393, %i.kqv
  %i.kqx = fadd reassoc nsz arcp contract afn <8 x float> %i.kqw, %strided.vec3399
  %i.kqy = fadd reassoc nsz arcp contract afn <8 x float> %i.kqx, %i.kqt
  %i.kqz = fadd reassoc nsz arcp contract afn <8 x float> %i.kqy, %i.kqu ; 2 uses
  %i.kra = fmul reassoc nsz arcp contract afn <8 x float> %i.kqz, %i.kqz
  %i.krb = getelementptr inbounds nuw [4 x i8], ptr %i.jhb, i64 %i.kqa
  store <8 x float> %i.kra, ptr %i.krb, align 4, !tbaa !22, !alias.scope !339, !noalias !340
  %index.next3405 = add nuw i64 %index3376, 8     ; 2 uses
  %vec.ind.next3406 = add nuw nsw <8 x i64> %vec.ind3377, splat (i64 16)
  %i.krc = icmp eq i64 %index.next3405, %n.vec3371
  br i1 %i.krc, label %scalar.ph3368.preheader, label %vector.body3375, !llvm.loop !341

._crit_edge895.i:                                 ; preds = %scalar.ph3368
  %i.krd = add nuw nsw i32 %.0771896.i, 1         ; 2 uses
  %i.kre = icmp slt i32 %i.krd, %i.jht
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.kre, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3368:                                    ; preds = %scalar.ph3368.preheader, %scalar.ph3368
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3368 ], [ %indvars.iv1013.i.ph, %scalar.ph3368.preheader ] ; 3 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3368 ], [ %indvars.iv1011.i.ph, %scalar.ph3368.preheader ] ; 2 uses
  %i.krf = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv1011.i ; 14 uses
  %i.krg = getelementptr i8, ptr %i.krf, i64 -1356
  %i.krh = load float, ptr %i.krg, align 4, !tbaa !22, !noalias !277
  %i.kri = getelementptr i8, ptr %i.krf, i64 -452
  %i.krj = load float, ptr %i.kri, align 4, !tbaa !22, !noalias !277
  %i.krk = getelementptr inbounds nuw i8, ptr %i.krf, i64 452
  %i.krl = load float, ptr %i.krk, align 4, !tbaa !22, !noalias !277
  %i.krm = getelementptr inbounds nuw i8, ptr %i.krf, i64 1356
  %i.krn = load float, ptr %i.krm, align 4, !tbaa !22, !noalias !277
  %i.kro = getelementptr i8, ptr %i.krf, i64 -904
  %i.krp = load float, ptr %i.kro, align 4, !tbaa !22, !noalias !277
  %i.krq = getelementptr inbounds nuw i8, ptr %i.krf, i64 904
  %i.krr = load float, ptr %i.krq, align 4, !tbaa !22, !noalias !277
  %i.krs = fadd reassoc nsz arcp contract afn float %i.krr, %i.krp
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.krs, -3.000000e+00
  %i.krt = load float, ptr %i.krf, align 4, !tbaa !22, !noalias !277
  %i.kru = fmul reassoc nsz arcp contract afn float %i.krt, 6.000000e+00
  %i.krv = fadd reassoc nsz arcp contract afn float %i.krj, %i.krl
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.krh, %i.krv
  %i.krw = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.krn
  %i.krx = fadd reassoc nsz arcp contract afn float %i.krw, %.neg806.i
  %i.kry = fadd reassoc nsz arcp contract afn float %i.krx, %i.kru ; 2 uses
  %i.krz = fmul reassoc nsz arcp contract afn float %i.kry, %i.kry
  %i.ksa = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %indvars.iv1013.i
  store float %i.krz, ptr %i.ksa, align 4, !tbaa !22, !noalias !277
  %i.ksb = getelementptr i8, ptr %i.krf, i64 -1332
  %i.ksc = load float, ptr %i.ksb, align 4, !tbaa !22, !noalias !277
  %i.ksd = getelementptr i8, ptr %i.krf, i64 -444
  %i.kse = load float, ptr %i.ksd, align 4, !tbaa !22, !noalias !277
  %i.ksf = getelementptr inbounds nuw i8, ptr %i.krf, i64 444
  %i.ksg = load float, ptr %i.ksf, align 4, !tbaa !22, !noalias !277
  %i.ksh = getelementptr inbounds nuw i8, ptr %i.krf, i64 1332
  %i.ksi = load float, ptr %i.ksh, align 4, !tbaa !22, !noalias !277
  %i.ksj = getelementptr i8, ptr %i.krf, i64 -888
  %i.ksk = load float, ptr %i.ksj, align 4, !tbaa !22, !noalias !277
  %i.ksl = getelementptr inbounds nuw i8, ptr %i.krf, i64 888
  %i.ksm = load float, ptr %i.ksl, align 4, !tbaa !22, !noalias !277
  %i.ksn = fadd reassoc nsz arcp contract afn float %i.ksm, %i.ksk
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.ksn, -3.000000e+00
  %i.kso = load float, ptr %i.krf, align 4, !tbaa !22, !noalias !277
  %i.ksp = fmul reassoc nsz arcp contract afn float %i.kso, 6.000000e+00
  %i.ksq = fadd reassoc nsz arcp contract afn float %i.kse, %i.ksg
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.ksc, %i.ksq
  %i.ksr = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.ksi
  %i.kss = fadd reassoc nsz arcp contract afn float %i.ksr, %.neg811.i
  %i.kst = fadd reassoc nsz arcp contract afn float %i.kss, %i.ksp ; 2 uses
  %i.ksu = fmul reassoc nsz arcp contract afn float %i.kst, %i.kst
  %i.ksv = getelementptr inbounds nuw [4 x i8], ptr %i.jhb, i64 %indvars.iv1013.i
  store float %i.ksu, ptr %i.ksv, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 2
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 1 ; 2 uses
  %exitcond.not.i543 = icmp eq i64 %indvars.iv.next1014.i, %wide.trip.count.i
  br i1 %exitcond.not.i543, label %._crit_edge895.i, label %scalar.ph3368, !llvm.loop !342

bb.pg:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3292 = phi i32 [ %indvar.next3293, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1027.i = phi i32 [ %indvars.iv.next1028.i, %._crit_edge904.i ], [ 563, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1021.i = phi i32 [ %indvars.iv.next1022.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %.0775905.i = phi i32 [ %i.kvf, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 3 uses
  %i.ksw = mul i32 %indvar3292, 112
  %i.ksx = add i32 %i.ksw, 448
  %i.ksy = zext i32 %i.ksx to i64
  %i.ksz = shl nuw nsw i64 %i.ksy, 1
  %i.kta = shl i32 %.0775905.i, 2
  %i.ktb = and i32 %i.kta, 28
  %i.ktc = lshr i32 %.fr1059, %i.ktb
  %i.ktd = and i32 %i.ktc, 1                      ; 3 uses
  %i.kte = or disjoint i32 %i.ktd, 4              ; 5 uses
  %i.ktf = icmp slt i32 %i.kte, %i.kns
  br i1 %i.ktf, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.pg
  %i.ktg = mul nuw nsw i32 %.0775905.i, 112
  %i.kth = add nsw i32 %i.ktg, -113
  %i.kti = add nsw i32 %i.kth, %i.kte
  %i.ktj = sdiv i32 %i.kti, 2
  %i.ktk = lshr exact i32 %indvars.iv1021.i, 1
  %i.ktl = zext nneg i32 %i.ktk to i64            ; 4 uses
  %i.ktm = sext i32 %i.ktj to i64                 ; 5 uses
  %i.ktn = add i32 %i.ktd, %indvars.iv1027.i
  %i.kto = lshr i32 %i.ktn, 1
  %i.ktp = zext nneg i32 %i.kto to i64            ; 5 uses
  %i.ktq = sub i32 %smin1164, %i.ktd
  %8 = add i32 %i.ktq, -9                         ; 2 uses
  %i.ktr = lshr i32 %8, 1
  %narrow4628 = add nuw i32 %i.ktr, 1
  %i.kts = zext i32 %narrow4628 to i64            ; 2 uses
  %min.iters.check3306 = icmp ult i32 %8, 14
  br i1 %min.iters.check3306, label %.lr.ph903.i.preheader, label %vector.memcheck3291

vector.memcheck3291:                              ; preds = %.lr.ph903.preheader.i
  %i.ktt = insertelement <2 x i64> poison, i64 %i.ktp, i64 0
  %i.ktu = insertelement <2 x i64> %i.ktt, i64 %i.ktm, i64 1
  %i.ktv = shl nsw <2 x i64> %i.ktu, splat (i64 2)
  %i.ktw = shufflevector <2 x i64> %i.ktv, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ktx = insertelement <4 x i64> poison, i64 %i.ksz, i64 0
  %i.kty = shufflevector <4 x i64> %i.ktx, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ktz = add <4 x i64> %i.jhj, %i.kty
  %i.kua = add <4 x i64> %i.ktw, %i.jhm
  %i.kub = sub <4 x i64> %i.kua, %i.ktz
  %i.kuc = icmp ugt <4 x i64> %i.kub, splat (i64 -32)
  %i.kud = bitcast <4 x i1> %i.kuc to i4
  %.not = icmp eq i4 %i.kud, 0
  br i1 %.not, label %vector.ph3307, label %.lr.ph903.i.preheader

vector.ph3307:                                    ; preds = %vector.memcheck3291
  %n.vec3308 = and i64 %i.kts, 4294967288         ; 6 uses
  %i.kue = add nuw nsw i64 %n.vec3308, %i.ktp
  %i.kuf = add nsw i64 %n.vec3308, %i.ktm
  %i.kug = add nuw nsw i64 %n.vec3308, %i.ktl
  %i.kuh = trunc nuw i64 %n.vec3308 to i32
  %i.kui = shl i32 %i.kuh, 1
  %i.kuj = or disjoint i32 %i.kte, %i.kui
  br label %vector.body3309

vector.body3309:                                  ; preds = %vector.body3309, %vector.ph3307
  %index3310 = phi i64 [ 0, %vector.ph3307 ], [ %index.next3317, %vector.body3309 ] ; 4 uses
  %i.kuk = add nuw i64 %index3310, %i.ktp         ; 2 uses
  %i.kul = add i64 %index3310, %i.ktm             ; 2 uses
  %i.kum = add nuw i64 %index3310, %i.ktl         ; 3 uses
  %i.kun = getelementptr inbounds [4 x i8], ptr %i.jgz, i64 %i.kul
  %wide.load3311 = load <8 x float>, ptr %i.kun, align 4, !tbaa !22, !noalias !277
  %i.kuo = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %i.kum
  %wide.load3312 = load <8 x float>, ptr %i.kuo, align 8, !tbaa !22, !noalias !277
  %i.kup = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3312, %wide.load3311
  %i.kuq = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %i.kuk
  %i.kur = getelementptr inbounds nuw i8, ptr %i.kuq, i64 4
  %wide.load3313 = load <8 x float>, ptr %i.kur, align 4, !tbaa !22, !noalias !277
  %i.kus = fadd reassoc nsz arcp contract afn <8 x float> %i.kup, %wide.load3313
  %i.kut = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kus, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.kuu = getelementptr [4 x i8], ptr %i.jhb, i64 %i.kul
  %i.kuv = getelementptr i8, ptr %i.kuu, i64 4
  %wide.load3314 = load <8 x float>, ptr %i.kuv, align 4, !tbaa !22, !noalias !277
  %i.kuw = getelementptr inbounds nuw [4 x i8], ptr %i.jhb, i64 %i.kum
  %wide.load3315 = load <8 x float>, ptr %i.kuw, align 8, !tbaa !22, !noalias !277
  %i.kux = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3315, %wide.load3314
  %i.kuy = getelementptr inbounds nuw [4 x i8], ptr %i.jhb, i64 %i.kuk
  %wide.load3316 = load <8 x float>, ptr %i.kuy, align 4, !tbaa !22, !noalias !277
  %i.kuz = fadd reassoc nsz arcp contract afn <8 x float> %i.kux, %wide.load3316
  %i.kva = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kuz, <8 x float> splat (float 1.000000e-10))
  %i.kvb = fadd reassoc nsz arcp contract afn <8 x float> %i.kva, %i.kut
  %i.kvc = fdiv reassoc nsz arcp contract afn <8 x float> %i.kut, %i.kvb
  %i.kvd = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.kum
  store <8 x float> %i.kvc, ptr %i.kvd, align 8, !tbaa !22, !noalias !277
  %index.next3317 = add nuw i64 %index3310, 8     ; 2 uses
  %i.kve = icmp eq i64 %index.next3317, %n.vec3308
  br i1 %i.kve, label %middle.block3318, label %vector.body3309, !llvm.loop !343

middle.block3318:                                 ; preds = %vector.body3309
  %cmp.n3319 = icmp eq i64 %n.vec3308, %i.kts
  br i1 %cmp.n3319, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3291, %.lr.ph903.preheader.i, %middle.block3318
  %indvars.iv1029.i.ph = phi i64 [ %i.ktp, %vector.memcheck3291 ], [ %i.ktp, %.lr.ph903.preheader.i ], [ %i.kue, %middle.block3318 ]
  %indvars.iv1025.i.ph = phi i64 [ %i.ktm, %vector.memcheck3291 ], [ %i.ktm, %.lr.ph903.preheader.i ], [ %i.kuf, %middle.block3318 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.ktl, %vector.memcheck3291 ], [ %i.ktl, %.lr.ph903.preheader.i ], [ %i.kug, %middle.block3318 ]
  %.0776901.i.ph = phi i32 [ %i.kte, %vector.memcheck3291 ], [ %i.kte, %.lr.ph903.preheader.i ], [ %i.kuj, %middle.block3318 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3318, %bb.pg
  %i.kvf = add nuw nsw i32 %.0775905.i, 1         ; 2 uses
  %i.kvg = icmp slt i32 %i.kvf, %i.jhw
  %indvars.iv.next1022.i = add i32 %indvars.iv1021.i, 112
  %indvars.iv.next1028.i = add i32 %indvars.iv1027.i, 112
  %indvar.next3293 = add i32 %indvar3292, 1
  br i1 %i.kvg, label %bb.pg, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.kvh = add i32 %smin3072, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i, %.lr.ph903.i ], [ %indvars.iv1029.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i, %.lr.ph903.i ], [ %indvars.iv1025.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %.0776901.i = phi i32 [ %i.kwd, %.lr.ph903.i ], [ %.0776901.i.ph, %.lr.ph903.i.preheader ]
  %i.kvi = getelementptr inbounds [4 x i8], ptr %i.jgz, i64 %indvars.iv1025.i
  %i.kvj = load float, ptr %i.kvi, align 4, !tbaa !22, !noalias !277
  %i.kvk = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %indvars.iv1023.i
  %i.kvl = load float, ptr %i.kvk, align 4, !tbaa !22, !noalias !277
  %i.kvm = fadd reassoc nsz arcp contract afn float %i.kvl, %i.kvj
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1 ; 2 uses
  %i.kvn = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %indvars.iv.next1030.i
  %i.kvo = load float, ptr %i.kvn, align 4, !tbaa !22, !noalias !277
  %i.kvp = fadd reassoc nsz arcp contract afn float %i.kvm, %i.kvo
  %i.kvq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvp, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1026.i = add nsw i64 %indvars.iv1025.i, 1 ; 2 uses
  %i.kvr = getelementptr inbounds [4 x i8], ptr %i.jhb, i64 %indvars.iv.next1026.i
  %i.kvs = load float, ptr %i.kvr, align 4, !tbaa !22, !noalias !277
  %i.kvt = getelementptr inbounds nuw [4 x i8], ptr %i.jhb, i64 %indvars.iv1023.i
  %i.kvu = load float, ptr %i.kvt, align 4, !tbaa !22, !noalias !277
  %i.kvv = fadd reassoc nsz arcp contract afn float %i.kvu, %i.kvs
  %i.kvw = getelementptr inbounds nuw [4 x i8], ptr %i.jhb, i64 %indvars.iv1029.i
  %i.kvx = load float, ptr %i.kvw, align 4, !tbaa !22, !noalias !277
  %i.kvy = fadd reassoc nsz arcp contract afn float %i.kvv, %i.kvx
  %i.kvz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvy, float 1.000000e-10)
  %i.kwa = fadd reassoc nsz arcp contract afn float %i.kvz, %i.kvq
  %i.kwb = fdiv reassoc nsz arcp contract afn float %i.kvq, %i.kwa
  %i.kwc = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %indvars.iv1023.i
  store float %i.kwb, ptr %i.kwc, align 4, !tbaa !22, !noalias !277
  %i.kwd = add nuw nsw i32 %.0776901.i, 2         ; 2 uses
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1
  %i.kwe = icmp slt i32 %i.kwd, %i.kns
  br i1 %i.kwe, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !344

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3081 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3082, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1036.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1037.i, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1032.i = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1033.i, %._crit_edge914.i ] ; 4 uses
  %.0781915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.lch, %._crit_edge914.i ] ; 3 uses
  %i.kwf = mul i32 %indvar3081, 112
  %i.kwg = add i32 %i.kwf, 448
  %i.kwh = zext i32 %i.kwg to i64
  %i.kwi = shl nuw nsw i64 %i.kwh, 1              ; 2 uses
  %scevgep3083 = getelementptr i8, ptr %scevgep3080, i64 %i.kwi
  %i.kwj = shl nuw i32 %.0781915.i, 1
  %i.kwk = and i32 %i.kwj, 14                     ; 2 uses
  %i.kwl = shl nuw nsw i32 %i.kwk, 1
  %i.kwm = lshr i32 %.fr1059, %i.kwl
  %i.kwn = and i32 %i.kwm, 1                      ; 7 uses
  %i.kwo = or disjoint i32 %i.kwn, 4              ; 5 uses
  %i.kwp = icmp slt i32 %i.kwo, %i.kns
  br i1 %i.kwp, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kwq = mul nuw nsw i32 %.0781915.i, 112
  %i.kwr = add nsw i32 %i.kwq, -113
  %i.kws = add nsw i32 %i.kwr, %i.kwo
  %i.kwt = sdiv i32 %i.kws, 2
  %i.kwu = or disjoint i32 %i.kwn, %i.kwk
  %i.kwv = shl nuw nsw i32 %i.kwu, 1
  %i.kww = lshr i32 %.fr1059, %i.kwv              ; 2 uses
  %i.kwx = and i32 %i.kww, 3
  %i.kwy = sub nsw i32 2, %i.kwx
  %i.kwz = sext i32 %i.kwy to i64
  %i.kxa = getelementptr inbounds [50176 x i8], ptr %i.jhd, i64 %i.kwz ; 10 uses
  %i.kxb = or disjoint i32 %i.kwn, %indvars.iv1032.i
  %i.kxc = sext i32 %i.kxb to i64                 ; 5 uses
  %i.kxd = add i32 %i.kwn, %indvars.iv1036.i
  %i.kxe = lshr i32 %i.kxd, 1
  %i.kxf = zext nneg i32 %i.kxe to i64            ; 5 uses
  %i.kxg = sext i32 %i.kwt to i64                 ; 5 uses
  %i.kxh = lshr exact i32 %indvars.iv1032.i, 1
  %i.kxi = zext nneg i32 %i.kxh to i64            ; 4 uses
  %i.kxj = sub i32 %smin1164, %i.kwn
  %9 = add i32 %i.kxj, -9                         ; 2 uses
  %i.kxk = lshr i32 %9, 1
  %narrow4629 = add nuw i32 %i.kxk, 1
  %i.kxl = zext i32 %narrow4629 to i64            ; 2 uses
  %min.iters.check3234 = icmp ult i32 %9, 16
  br i1 %min.iters.check3234, label %scalar.ph3233.preheader, label %vector.memcheck3067

scalar.ph3233.preheader:                          ; preds = %vector.body3240, %vector.memcheck3067, %.lr.ph913.i
  %indvars.iv1042.i.ph = phi i64 [ %i.kxi, %vector.memcheck3067 ], [ %i.kxi, %.lr.ph913.i ], [ %i.kyi, %vector.body3240 ]
  %indvars.iv1040.i.ph = phi i64 [ %i.kxg, %vector.memcheck3067 ], [ %i.kxg, %.lr.ph913.i ], [ %i.kyj, %vector.body3240 ]
  %indvars.iv1038.i.ph = phi i64 [ %i.kxf, %vector.memcheck3067 ], [ %i.kxf, %.lr.ph913.i ], [ %i.kyk, %vector.body3240 ]
  %indvars.iv1034.i.ph = phi i64 [ %i.kxc, %vector.memcheck3067 ], [ %i.kxc, %.lr.ph913.i ], [ %i.kym, %vector.body3240 ]
  %.0782911.i.ph = phi i32 [ %i.kwo, %vector.memcheck3067 ], [ %i.kwo, %.lr.ph913.i ], [ %i.kyp, %vector.body3240 ]
  br label %scalar.ph3233

vector.memcheck3067:                              ; preds = %.lr.ph913.i
  %i.kxm = or disjoint i32 %indvars.iv1032.i, %i.kwn
  %i.kxn = sext i32 %i.kxm to i64
  %i.kxo = shl nsw i64 %i.kxn, 2                  ; 12 uses
  %i.kxp = and i32 %i.kww, 3
  %narrow4630 = mul nuw nsw i32 %i.kxp, 50176
  %i.kxq = zext nneg i32 %narrow4630 to i64       ; 2 uses
  %i.kxr = sub nsw i64 %i.kxo, %i.kxq             ; 9 uses
  %scevgep3069 = getelementptr i8, ptr %scevgep3068, i64 %i.kxr ; 20 uses
  %i.kxs = sub i32 %i.kvh, %i.kwn
  %i.kxt = lshr i32 %i.kxs, 1
  %i.kxu = zext nneg i32 %i.kxt to i64            ; 2 uses
  %i.kxv = shl nuw nsw i64 %i.kxu, 3              ; 2 uses
  %i.kxw = add nsw i64 %i.kxv, %i.kxo
  %i.kxx = sub nsw i64 %i.kxw, %i.kxq             ; 9 uses
  %scevgep3073 = getelementptr i8, ptr %scevgep3070, i64 %i.kxx ; 20 uses
  %i.kxy = shl nuw nsw i64 %i.kxf, 2              ; 2 uses
  %scevgep3074 = getelementptr i8, ptr %i.jgv, i64 %i.kxy
  %i.kxz = shl nuw nsw i64 %i.kxu, 2              ; 3 uses
  %i.kya = getelementptr i8, ptr %scevgep3075, i64 %i.kxz
  %scevgep3076 = getelementptr i8, ptr %i.kya, i64 %i.kxy
  %i.kyb = shl nsw i64 %i.kxg, 2                  ; 2 uses
  %scevgep3077 = getelementptr i8, ptr %i.jgv, i64 %i.kyb
  %i.kyc = getelementptr i8, ptr %scevgep3078, i64 %i.kxz
  %scevgep3079 = getelementptr i8, ptr %i.kyc, i64 %i.kyb
  %i.kyd = getelementptr i8, ptr %scevgep3084, i64 %i.kxz
  %scevgep3085 = getelementptr i8, ptr %i.kyd, i64 %i.kwi
  %scevgep3087 = getelementptr i8, ptr %scevgep3086, i64 %i.kxr
  %scevgep3089 = getelementptr i8, ptr %scevgep3088, i64 %i.kxx
  %scevgep3091 = getelementptr i8, ptr %scevgep3090, i64 %i.kxr
  %scevgep3093 = getelementptr i8, ptr %scevgep3092, i64 %i.kxx
  %scevgep3095 = getelementptr i8, ptr %scevgep3094, i64 %i.kxr
  %scevgep3097 = getelementptr i8, ptr %scevgep3096, i64 %i.kxx
  %scevgep3099 = getelementptr i8, ptr %scevgep3098, i64 %i.kxo
  %i.kye = add nsw i64 %i.kxv, %i.kxo             ; 9 uses
  %scevgep3101 = getelementptr i8, ptr %scevgep3100, i64 %i.kye
  %scevgep3103 = getelementptr i8, ptr %scevgep3102, i64 %i.kxo
  %scevgep3105 = getelementptr i8, ptr %scevgep3104, i64 %i.kye
  %scevgep3107 = getelementptr i8, ptr %scevgep3106, i64 %i.kxr
  %scevgep3109 = getelementptr i8, ptr %scevgep3108, i64 %i.kxx
  %scevgep3111 = getelementptr i8, ptr %scevgep3110, i64 %i.kxr
  %scevgep3113 = getelementptr i8, ptr %scevgep3112, i64 %i.kxx
  %scevgep3115 = getelementptr i8, ptr %scevgep3114, i64 %i.kxr
  %scevgep3117 = getelementptr i8, ptr %scevgep3116, i64 %i.kxx
  %scevgep3119 = getelementptr i8, ptr %scevgep3118, i64 %i.kxo
  %scevgep3121 = getelementptr i8, ptr %scevgep3120, i64 %i.kye
  %scevgep3123 = getelementptr i8, ptr %scevgep3122, i64 %i.kxr
  %scevgep3125 = getelementptr i8, ptr %scevgep3124, i64 %i.kxx
  %scevgep3127 = getelementptr i8, ptr %scevgep3126, i64 %i.kxo
  %scevgep3129 = getelementptr i8, ptr %scevgep3128, i64 %i.kye
  %scevgep3131 = getelementptr i8, ptr %scevgep3130, i64 %i.kxr
  %scevgep3133 = getelementptr i8, ptr %scevgep3132, i64 %i.kxx
  %scevgep3135 = getelementptr i8, ptr %scevgep3134, i64 %i.kxo
  %scevgep3137 = getelementptr i8, ptr %scevgep3136, i64 %i.kye
  %scevgep3139 = getelementptr i8, ptr %scevgep3138, i64 %i.kxo
  %scevgep3141 = getelementptr i8, ptr %scevgep3140, i64 %i.kye
  %scevgep3143 = getelementptr i8, ptr %scevgep3142, i64 %i.kxo
  %scevgep3145 = getelementptr i8, ptr %scevgep3144, i64 %i.kye
  %scevgep3147 = getelementptr i8, ptr %scevgep3146, i64 %i.kxo
  %scevgep3149 = getelementptr i8, ptr %scevgep3148, i64 %i.kye
  %scevgep3151 = getelementptr i8, ptr %scevgep3150, i64 %i.kxo
  %scevgep3153 = getelementptr i8, ptr %scevgep3152, i64 %i.kye
  %bound03154 = icmp ult ptr %scevgep3069, %scevgep3076
  %bound13155 = icmp ult ptr %scevgep3074, %scevgep3073
  %found.conflict3156 = and i1 %bound03154, %bound13155
  %bound03157 = icmp ult ptr %scevgep3069, %scevgep3079
  %bound13158 = icmp ult ptr %scevgep3077, %scevgep3073
  %found.conflict3159 = and i1 %bound03157, %bound13158
  %conflict.rdx3160 = or i1 %found.conflict3156, %found.conflict3159
  %bound03161 = icmp ult ptr %scevgep3069, %scevgep3085
  %bound13162 = icmp ult ptr %scevgep3083, %scevgep3073
  %found.conflict3163 = and i1 %bound03161, %bound13162
  %conflict.rdx3164 = or i1 %conflict.rdx3160, %found.conflict3163
  %bound03165 = icmp ult ptr %scevgep3069, %scevgep3089
  %bound13166 = icmp ult ptr %scevgep3087, %scevgep3073
  %found.conflict3167 = and i1 %bound03165, %bound13166
  %conflict.rdx3168 = or i1 %conflict.rdx3164, %found.conflict3167
  %bound03169 = icmp ult ptr %scevgep3069, %scevgep3093
  %bound13170 = icmp ult ptr %scevgep3091, %scevgep3073
  %found.conflict3171 = and i1 %bound03169, %bound13170
  %conflict.rdx3172 = or i1 %conflict.rdx3168, %found.conflict3171
  %bound03173 = icmp ult ptr %scevgep3069, %scevgep3097
  %bound13174 = icmp ult ptr %scevgep3095, %scevgep3073
  %found.conflict3175 = and i1 %bound03173, %bound13174
  %conflict.rdx3176 = or i1 %conflict.rdx3172, %found.conflict3175
  %bound03177 = icmp ult ptr %scevgep3069, %scevgep3101
  %bound13178 = icmp ult ptr %scevgep3099, %scevgep3073
  %found.conflict3179 = and i1 %bound03177, %bound13178
  %conflict.rdx3180 = or i1 %conflict.rdx3176, %found.conflict3179
  %bound03181 = icmp ult ptr %scevgep3069, %scevgep3105
  %bound13182 = icmp ult ptr %scevgep3103, %scevgep3073
  %found.conflict3183 = and i1 %bound03181, %bound13182
  %conflict.rdx3184 = or i1 %conflict.rdx3180, %found.conflict3183
  %bound03185 = icmp ult ptr %scevgep3069, %scevgep3109
  %bound13186 = icmp ult ptr %scevgep3107, %scevgep3073
  %found.conflict3187 = and i1 %bound03185, %bound13186
  %conflict.rdx3188 = or i1 %conflict.rdx3184, %found.conflict3187
  %bound03189 = icmp ult ptr %scevgep3069, %scevgep3113
  %bound13190 = icmp ult ptr %scevgep3111, %scevgep3073
  %found.conflict3191 = and i1 %bound03189, %bound13190
  %conflict.rdx3192 = or i1 %conflict.rdx3188, %found.conflict3191
  %bound03193 = icmp ult ptr %scevgep3069, %scevgep3117
  %bound13194 = icmp ult ptr %scevgep3115, %scevgep3073
  %found.conflict3195 = and i1 %bound03193, %bound13194
  %conflict.rdx3196 = or i1 %conflict.rdx3192, %found.conflict3195
  %bound03197 = icmp ult ptr %scevgep3069, %scevgep3121
  %bound13198 = icmp ult ptr %scevgep3119, %scevgep3073
  %found.conflict3199 = and i1 %bound03197, %bound13198
  %conflict.rdx3200 = or i1 %conflict.rdx3196, %found.conflict3199
  %bound03201 = icmp ult ptr %scevgep3069, %scevgep3125
  %bound13202 = icmp ult ptr %scevgep3123, %scevgep3073
  %found.conflict3203 = and i1 %bound03201, %bound13202
  %conflict.rdx3204 = or i1 %conflict.rdx3200, %found.conflict3203
  %bound03205 = icmp ult ptr %scevgep3069, %scevgep3129
  %bound13206 = icmp ult ptr %scevgep3127, %scevgep3073
  %found.conflict3207 = and i1 %bound03205, %bound13206
  %conflict.rdx3208 = or i1 %conflict.rdx3204, %found.conflict3207
  %bound03209 = icmp ult ptr %scevgep3069, %scevgep3133
  %bound13210 = icmp ult ptr %scevgep3131, %scevgep3073
  %found.conflict3211 = and i1 %bound03209, %bound13210
  %conflict.rdx3212 = or i1 %conflict.rdx3208, %found.conflict3211
  %bound03213 = icmp ult ptr %scevgep3069, %scevgep3137
  %bound13214 = icmp ult ptr %scevgep3135, %scevgep3073
  %found.conflict3215 = and i1 %bound03213, %bound13214
  %conflict.rdx3216 = or i1 %conflict.rdx3212, %found.conflict3215
  %bound03217 = icmp ult ptr %scevgep3069, %scevgep3141
  %bound13218 = icmp ult ptr %scevgep3139, %scevgep3073
  %found.conflict3219 = and i1 %bound03217, %bound13218
  %conflict.rdx3220 = or i1 %conflict.rdx3216, %found.conflict3219
  %bound03221 = icmp ult ptr %scevgep3069, %scevgep3145
  %bound13222 = icmp ult ptr %scevgep3143, %scevgep3073
  %found.conflict3223 = and i1 %bound03221, %bound13222
  %conflict.rdx3224 = or i1 %conflict.rdx3220, %found.conflict3223
  %bound03225 = icmp ult ptr %scevgep3069, %scevgep3149
  %bound13226 = icmp ult ptr %scevgep3147, %scevgep3073
  %found.conflict3227 = and i1 %bound03225, %bound13226
  %conflict.rdx3228 = or i1 %conflict.rdx3224, %found.conflict3227
  %bound03229 = icmp ult ptr %scevgep3069, %scevgep3153
  %bound13230 = icmp ult ptr %scevgep3151, %scevgep3073
  %found.conflict3231 = and i1 %bound03229, %bound13230
  %conflict.rdx3232 = or i1 %conflict.rdx3228, %found.conflict3231
  br i1 %conflict.rdx3232, label %scalar.ph3233.preheader, label %vector.ph3235

vector.ph3235:                                    ; preds = %vector.memcheck3067
  %i.kyf = and i64 %i.kxl, 7                      ; 2 uses
  %i.kyg = icmp eq i64 %i.kyf, 0
  %i.kyh = select i1 %i.kyg, i64 8, i64 %i.kyf
  %n.vec3236 = sub nsw i64 %i.kxl, %i.kyh         ; 6 uses
  %i.kyi = add nsw i64 %n.vec3236, %i.kxi
  %i.kyj = add nsw i64 %n.vec3236, %i.kxg
  %i.kyk = add nsw i64 %n.vec3236, %i.kxf
  %i.kyl = shl nsw i64 %n.vec3236, 1
  %i.kym = add nsw i64 %i.kyl, %i.kxc
  %i.kyn = trunc i64 %n.vec3236 to i32
  %i.kyo = shl i32 %i.kyn, 1
  %i.kyp = add i32 %i.kwo, %i.kyo
  %broadcast.splatinsert3237 = insertelement <8 x i64> poison, i64 %i.kxc, i64 0
  %broadcast.splat3238 = shufflevector <8 x i64> %broadcast.splatinsert3237, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3239 = add nuw nsw <8 x i64> %broadcast.splat3238, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4946 = getelementptr [4 x i8], ptr %i.jgv, i64 %i.kxi
  br label %vector.body3240

vector.body3240:                                  ; preds = %vector.body3240, %vector.ph3235
  %index3241 = phi i64 [ 0, %vector.ph3235 ], [ %index.next3283, %vector.body3240 ] ; 5 uses
  %vec.ind3242 = phi <8 x i64> [ %induction3239, %vector.ph3235 ], [ %vec.ind.next3284, %vector.body3240 ] ; 2 uses
  %i.kyq = add i64 %index3241, %i.kxg             ; 2 uses
  %i.kyr = add nuw i64 %index3241, %i.kxf         ; 2 uses
  %i.kys = shl nuw i64 %index3241, 1
  %i.kyt = add nuw i64 %i.kys, %i.kxc             ; 5 uses
  %gep4947 = getelementptr [4 x i8], ptr %invariant.gep4946, i64 %index3241
  %wide.load3243 = load <8 x float>, ptr %gep4947, align 8, !tbaa !22, !alias.scope !345, !noalias !277 ; 2 uses
  %i.kyu = getelementptr inbounds [4 x i8], ptr %i.jgv, i64 %i.kyq
  %wide.load3244 = load <8 x float>, ptr %i.kyu, align 4, !tbaa !22, !alias.scope !348, !noalias !277
  %i.kyv = getelementptr [4 x i8], ptr %i.jgv, i64 %i.kyq
  %i.kyw = getelementptr i8, ptr %i.kyv, i64 4
  %wide.load3245 = load <8 x float>, ptr %i.kyw, align 4, !tbaa !22, !alias.scope !348, !noalias !277
  %i.kyx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3245, %wide.load3244
  %i.kyy = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.kyr
  %wide.load3246 = load <8 x float>, ptr %i.kyy, align 4, !tbaa !22, !alias.scope !350, !noalias !277
  %i.kyz = fadd reassoc nsz arcp contract afn <8 x float> %i.kyx, %wide.load3246
  %i.kza = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.kyr
  %i.kzb = getelementptr inbounds nuw i8, ptr %i.kza, i64 4
  %wide.load3247 = load <8 x float>, ptr %i.kzb, align 4, !tbaa !22, !alias.scope !350, !noalias !277
  %i.kzc = fadd reassoc nsz arcp contract afn <8 x float> %i.kyz, %wide.load3247
  %i.kzd = fmul reassoc nsz arcp contract afn <8 x float> %i.kzc, splat (float 2.500000e-01) ; 2 uses
  %i.kze = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3243
  %i.kzf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kze)
  %i.kzg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kzd
  %i.kzh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzg)
  %i.kzi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kzf, %i.kzh
  %i.kzj = select reassoc nsz arcp contract afn <8 x i1> %i.kzi, <8 x float> %i.kzd, <8 x float> %wide.load3243 ; 3 uses
  %i.kzk = add nsw i64 %i.kyt, -113               ; 2 uses
  %i.kzl = getelementptr inbounds [4 x i8], ptr %i.kxa, i64 %i.kzk
  %wide.vec3248 = load <16 x float>, ptr %i.kzl, align 4, !tbaa !22, !alias.scope !352, !noalias !277
  %strided.vec3249 = shufflevector <16 x float> %wide.vec3248, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kzm = add nuw nsw i64 %i.kyt, 113            ; 2 uses
  %i.kzn = getelementptr inbounds nuw [4 x i8], ptr %i.kxa, i64 %i.kzm
  %wide.vec3250 = load <16 x float>, ptr %i.kzn, align 4, !tbaa !22, !alias.scope !354, !noalias !277
  %strided.vec3251 = shufflevector <16 x float> %wide.vec3250, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kzo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3249, %strided.vec3251
  %i.kzp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzo)
  %i.kzq = fadd reassoc nsz arcp contract afn <8 x float> %i.kzp, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3252 = getelementptr [4 x i8], ptr %i.kxa, <8 x i64> %vec.ind3242 ; 2 uses
  %i.kzr = extractelement <8 x ptr> %wide.gep3252, i64 0 ; 4 uses
  %i.kzs = getelementptr i8, ptr %i.kzr, i64 -1356
  %wide.vec3253 = load <16 x float>, ptr %i.kzs, align 4, !tbaa !22, !alias.scope !356, !noalias !277
  %strided.vec3254 = shufflevector <16 x float> %wide.vec3253, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3249, %strided.vec3254
  %i.kzu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzt)
  %i.kzv = fadd reassoc nsz arcp contract afn <8 x float> %i.kzq, %i.kzu
  %i.kzw = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.kyt ; 5 uses
  %wide.vec3255 = load <16 x float>, ptr %i.kzw, align 4, !tbaa !22, !alias.scope !358, !noalias !277
  %strided.vec3256 = shufflevector <16 x float> %wide.vec3255, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kzx = getelementptr i8, ptr %i.kzw, i64 -904
  %wide.vec3257 = load <16 x float>, ptr %i.kzx, align 4, !tbaa !22, !alias.scope !360, !noalias !277
  %strided.vec3258 = shufflevector <16 x float> %wide.vec3257, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3256, %strided.vec3258
  %i.kzz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzy)
  %i.laa = fadd reassoc nsz arcp contract afn <8 x float> %i.kzv, %i.kzz ; 2 uses
  %i.lab = add nsw i64 %i.kyt, -111               ; 2 uses
  %i.lac = getelementptr inbounds [4 x i8], ptr %i.kxa, i64 %i.lab
  %wide.vec3259 = load <16 x float>, ptr %i.lac, align 4, !tbaa !22, !alias.scope !362, !noalias !277
  %strided.vec3260 = shufflevector <16 x float> %wide.vec3259, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lad = add nuw nsw i64 %i.kyt, 111            ; 2 uses
  %i.lae = getelementptr inbounds nuw [4 x i8], ptr %i.kxa, i64 %i.lad
  %wide.vec3261 = load <16 x float>, ptr %i.lae, align 4, !tbaa !22, !alias.scope !364, !noalias !277
  %strided.vec3262 = shufflevector <16 x float> %wide.vec3261, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.laf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3260, %strided.vec3262
  %i.lag = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.laf)
  %i.lah = fadd reassoc nsz arcp contract afn <8 x float> %i.lag, splat (float f0x3727C5AC) ; 2 uses
  %i.lai = getelementptr i8, ptr %i.kzr, i64 -1332
  %wide.vec3263 = load <16 x float>, ptr %i.lai, align 4, !tbaa !22, !alias.scope !366, !noalias !277
  %strided.vec3264 = shufflevector <16 x float> %wide.vec3263, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.laj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3260, %strided.vec3264
  %i.lak = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.laj)
  %i.lal = fadd reassoc nsz arcp contract afn <8 x float> %i.lah, %i.lak
  %i.lam = getelementptr i8, ptr %i.kzw, i64 -888
  %wide.vec3265 = load <16 x float>, ptr %i.lam, align 4, !tbaa !22, !alias.scope !368, !noalias !277
  %strided.vec3266 = shufflevector <16 x float> %wide.vec3265, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lan = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3256, %strided.vec3266
  %i.lao = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lan)
  %i.lap = fadd reassoc nsz arcp contract afn <8 x float> %i.lal, %i.lao ; 2 uses
  %i.laq = getelementptr inbounds nuw i8, ptr %i.kzr, i64 1332
  %wide.vec3267 = load <16 x float>, ptr %i.laq, align 4, !tbaa !22, !alias.scope !370, !noalias !277
  %strided.vec3268 = shufflevector <16 x float> %wide.vec3267, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lar = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3262, %strided.vec3268
  %i.las = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lar)
  %i.lat = fadd reassoc nsz arcp contract afn <8 x float> %i.las, %i.lah
  %i.lau = getelementptr inbounds nuw i8, ptr %i.kzw, i64 888
  %wide.vec3269 = load <16 x float>, ptr %i.lau, align 4, !tbaa !22, !alias.scope !372, !noalias !277
  %strided.vec3270 = shufflevector <16 x float> %wide.vec3269, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lav = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3256, %strided.vec3270
  %i.law = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lav)
  %i.lax = fadd reassoc nsz arcp contract afn <8 x float> %i.lat, %i.law ; 2 uses
  %i.lay = getelementptr inbounds nuw i8, ptr %i.kzr, i64 1356
  %wide.vec3271 = load <16 x float>, ptr %i.lay, align 4, !tbaa !22, !alias.scope !374, !noalias !277
  %strided.vec3272 = shufflevector <16 x float> %wide.vec3271, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.laz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3251, %strided.vec3272
  %i.lba = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.laz)
  %i.lbb = fadd reassoc nsz arcp contract afn <8 x float> %i.lba, %i.kzq
  %i.lbc = getelementptr inbounds nuw i8, ptr %i.kzw, i64 904
  %wide.vec3273 = load <16 x float>, ptr %i.lbc, align 4, !tbaa !22, !alias.scope !376, !noalias !277
  %strided.vec3274 = shufflevector <16 x float> %wide.vec3273, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3256, %strided.vec3274
  %i.lbe = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lbd)
  %i.lbf = fadd reassoc nsz arcp contract afn <8 x float> %i.lbb, %i.lbe ; 2 uses
  %i.lbg = getelementptr inbounds [4 x i8], ptr %i.jhf, i64 %i.kzk
  %wide.vec3275 = load <16 x float>, ptr %i.lbg, align 4, !tbaa !22, !alias.scope !378, !noalias !277
  %strided.vec3276 = shufflevector <16 x float> %wide.vec3275, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3249, %strided.vec3276
  %i.lbi = getelementptr inbounds [4 x i8], ptr %i.jhf, i64 %i.lab
  %wide.vec3277 = load <16 x float>, ptr %i.lbi, align 4, !tbaa !22, !alias.scope !380, !noalias !277
  %strided.vec3278 = shufflevector <16 x float> %wide.vec3277, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3260, %strided.vec3278
  %i.lbk = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.lad
  %wide.vec3279 = load <16 x float>, ptr %i.lbk, align 4, !tbaa !22, !alias.scope !382, !noalias !277
  %strided.vec3280 = shufflevector <16 x float> %wide.vec3279, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3262, %strided.vec3280
  %i.lbm = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.kzm
  %wide.vec3281 = load <16 x float>, ptr %i.lbm, align 4, !tbaa !22, !alias.scope !384, !noalias !277
  %strided.vec3282 = shufflevector <16 x float> %wide.vec3281, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3251, %strided.vec3282
  %i.lbo = fmul reassoc nsz arcp contract afn <8 x float> %i.lbn, %i.laa
  %i.lbp = fmul reassoc nsz arcp contract afn <8 x float> %i.lbf, %i.lbh
  %i.lbq = fadd reassoc nsz arcp contract afn <8 x float> %i.lbo, %i.lbp
  %i.lbr = fadd reassoc nsz arcp contract afn <8 x float> %i.lbf, %i.laa
  %i.lbs = fdiv reassoc nsz arcp contract afn <8 x float> %i.lbq, %i.lbr ; 2 uses
  %i.lbt = fmul reassoc nsz arcp contract afn <8 x float> %i.lbl, %i.lap
  %i.lbu = fmul reassoc nsz arcp contract afn <8 x float> %i.lbj, %i.lax
  %i.lbv = fadd reassoc nsz arcp contract afn <8 x float> %i.lbt, %i.lbu
  %i.lbw = fadd reassoc nsz arcp contract afn <8 x float> %i.lax, %i.lap
  %i.lbx = fdiv reassoc nsz arcp contract afn <8 x float> %i.lbv, %i.lbw
  %i.lby = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kzj, zeroinitializer
  %i.lbz = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kzj, splat (float 1.000000e+00)
  %i.lca = select reassoc nsz arcp contract afn <8 x i1> %i.lbz, <8 x float> %i.kzj, <8 x float> splat (float 1.000000e+00)
  %i.lcb = select reassoc nsz arcp contract afn <8 x i1> %i.lby, <8 x float> %i.lca, <8 x float> zeroinitializer
  %i.lcc = fsub reassoc nsz arcp contract afn <8 x float> %i.lbx, %i.lbs
  %i.lcd = fmul reassoc nsz arcp contract afn <8 x float> %i.lcc, %i.lcb
  %i.lce = fadd reassoc nsz arcp contract afn <8 x float> %i.lbs, %strided.vec3256
  %i.lcf = fadd reassoc nsz arcp contract afn <8 x float> %i.lce, %i.lcd
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.lcf, <8 x ptr> align 4 %wide.gep3252, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !386, !noalias !388
  %index.next3283 = add nuw i64 %index3241, 8     ; 2 uses
  %vec.ind.next3284 = add nuw nsw <8 x i64> %vec.ind3242, splat (i64 16)
  %i.lcg = icmp eq i64 %index.next3283, %n.vec3236
  br i1 %i.lcg, label %scalar.ph3233.preheader, label %vector.body3240, !llvm.loop !389

._crit_edge914.i:                                 ; preds = %scalar.ph3233, %.preheader828.i
  %i.lch = add nuw nsw i32 %.0781915.i, 1         ; 2 uses
  %i.lci = icmp slt i32 %i.lch, %i.jhw
  %indvars.iv.next1033.i = add i32 %indvars.iv1032.i, 112
  %indvars.iv.next1037.i = add i32 %indvars.iv1036.i, 112
  %indvar.next3082 = add i32 %indvar3081, 1
  br i1 %i.lci, label %.preheader828.i, label %.preheader.i542.preheader

.preheader.i542.preheader:                        ; preds = %._crit_edge914.i
  %i.lcj = add i32 %smin2983, -9
  br label %.preheader.i542

scalar.ph3233:                                    ; preds = %scalar.ph3233.preheader, %scalar.ph3233
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i, %scalar.ph3233 ], [ %indvars.iv1042.i.ph, %scalar.ph3233.preheader ] ; 2 uses
  %indvars.iv1040.i = phi i64 [ %indvars.iv.next1041.i, %scalar.ph3233 ], [ %indvars.iv1040.i.ph, %scalar.ph3233.preheader ] ; 2 uses
  %indvars.iv1038.i = phi i64 [ %indvars.iv.next1039.i, %scalar.ph3233 ], [ %indvars.iv1038.i.ph, %scalar.ph3233.preheader ] ; 2 uses
  %indvars.iv1034.i = phi i64 [ %indvars.iv.next1035.i, %scalar.ph3233 ], [ %indvars.iv1034.i.ph, %scalar.ph3233.preheader ] ; 7 uses
  %.0782911.i = phi i32 [ %i.lgm, %scalar.ph3233 ], [ %.0782911.i.ph, %scalar.ph3233.preheader ]
  %i.lck = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %indvars.iv1042.i
  %i.lcl = load float, ptr %i.lck, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.lcm = getelementptr inbounds [4 x i8], ptr %i.jgv, i64 %indvars.iv1040.i
  %indvars.iv.next1041.i = add nsw i64 %indvars.iv1040.i, 1
  %i.lcn = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %indvars.iv1038.i
  %indvars.iv.next1039.i = add nuw nsw i64 %indvars.iv1038.i, 1
  %i.lco = load <2 x float>, ptr %i.lcm, align 4, !tbaa !22, !noalias !277
  %i.lcp = load <2 x float>, ptr %i.lcn, align 4, !tbaa !22, !noalias !277
  %i.lcq = shufflevector <2 x float> %i.lcp, <2 x float> %i.lco, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lcr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lcq)
  %i.lcs = fmul reassoc nsz arcp contract afn float %i.lcr, 2.500000e-01 ; 2 uses
  %i.lct = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lcl
  %i.lcu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lct)
  %i.lcv = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lcs
  %i.lcw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcv)
  %i.lcx = fcmp reassoc nsz arcp contract afn olt float %i.lcu, %i.lcw
  %i.lcy = select reassoc nsz arcp contract afn i1 %i.lcx, float %i.lcs, float %i.lcl ; 3 uses
  %i.lcz = add nsw i64 %indvars.iv1034.i, -113    ; 2 uses
  %i.lda = getelementptr inbounds [4 x i8], ptr %i.kxa, i64 %i.lcz
  %i.ldb = load float, ptr %i.lda, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldc = add nuw nsw i64 %indvars.iv1034.i, 113 ; 2 uses
  %i.ldd = getelementptr inbounds nuw [4 x i8], ptr %i.kxa, i64 %i.ldc
  %i.lde = load float, ptr %i.ldd, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldf = fsub reassoc nsz arcp contract afn float %i.ldb, %i.lde
  %i.ldg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldf)
  %i.ldh = fadd reassoc nsz arcp contract afn float %i.ldg, f0x3727C5AC ; 2 uses
  %i.ldi = getelementptr [4 x i8], ptr %i.kxa, i64 %indvars.iv1034.i ; 5 uses
  %i.ldj = getelementptr i8, ptr %i.ldi, i64 -1356
  %i.ldk = load float, ptr %i.ldj, align 4, !tbaa !22, !noalias !277
  %i.ldl = fsub reassoc nsz arcp contract afn float %i.ldb, %i.ldk
  %i.ldm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldl)
  %i.ldn = fadd reassoc nsz arcp contract afn float %i.ldh, %i.ldm
  %i.ldo = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %indvars.iv1034.i ; 5 uses
  %i.ldp = load float, ptr %i.ldo, align 4, !tbaa !22, !noalias !277 ; 5 uses
  %i.ldq = getelementptr i8, ptr %i.ldo, i64 -904
  %i.ldr = load float, ptr %i.ldq, align 4, !tbaa !22, !noalias !277
  %i.lds = fsub reassoc nsz arcp contract afn float %i.ldp, %i.ldr
  %i.ldt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lds)
  %i.ldu = fadd reassoc nsz arcp contract afn float %i.ldn, %i.ldt ; 2 uses
  %i.ldv = add nsw i64 %indvars.iv1034.i, -111    ; 2 uses
  %i.ldw = getelementptr inbounds [4 x i8], ptr %i.kxa, i64 %i.ldv
  %i.ldx = load float, ptr %i.ldw, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldy = add nuw nsw i64 %indvars.iv1034.i, 111 ; 2 uses
  %i.ldz = getelementptr inbounds nuw [4 x i8], ptr %i.kxa, i64 %i.ldy
  %i.lea = load float, ptr %i.ldz, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.leb = fsub reassoc nsz arcp contract afn float %i.ldx, %i.lea
  %i.lec = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leb)
  %i.led = fadd reassoc nsz arcp contract afn float %i.lec, f0x3727C5AC ; 2 uses
  %i.lee = getelementptr i8, ptr %i.ldi, i64 -1332
  %i.lef = load float, ptr %i.lee, align 4, !tbaa !22, !noalias !277
  %i.leg = fsub reassoc nsz arcp contract afn float %i.ldx, %i.lef
  %i.leh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leg)
  %i.lei = fadd reassoc nsz arcp contract afn float %i.led, %i.leh
  %i.lej = getelementptr i8, ptr %i.ldo, i64 -888
  %i.lek = load float, ptr %i.lej, align 4, !tbaa !22, !noalias !277
  %i.lel = fsub reassoc nsz arcp contract afn float %i.ldp, %i.lek
  %i.lem = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lel)
  %i.len = fadd reassoc nsz arcp contract afn float %i.lei, %i.lem ; 2 uses
  %i.leo = getelementptr inbounds nuw i8, ptr %i.ldi, i64 1332
  %i.lep = load float, ptr %i.leo, align 4, !tbaa !22, !noalias !277
  %i.leq = fsub reassoc nsz arcp contract afn float %i.lea, %i.lep
  %i.ler = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leq)
  %i.les = fadd reassoc nsz arcp contract afn float %i.ler, %i.led
  %i.let = getelementptr inbounds nuw i8, ptr %i.ldo, i64 888
  %i.leu = load float, ptr %i.let, align 4, !tbaa !22, !noalias !277
  %i.lev = fsub reassoc nsz arcp contract afn float %i.ldp, %i.leu
  %i.lew = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lev)
  %i.lex = fadd reassoc nsz arcp contract afn float %i.les, %i.lew ; 2 uses
  %i.ley = getelementptr inbounds nuw i8, ptr %i.ldi, i64 1356
  %i.lez = load float, ptr %i.ley, align 4, !tbaa !22, !noalias !277
  %i.lfa = fsub reassoc nsz arcp contract afn float %i.lde, %i.lez
  %i.lfb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lfa)
  %i.lfc = fadd reassoc nsz arcp contract afn float %i.lfb, %i.ldh
  %i.lfd = getelementptr inbounds nuw i8, ptr %i.ldo, i64 904
  %i.lfe = load float, ptr %i.lfd, align 4, !tbaa !22, !noalias !277
  %i.lff = fsub reassoc nsz arcp contract afn float %i.ldp, %i.lfe
  %i.lfg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lff)
  %i.lfh = fadd reassoc nsz arcp contract afn float %i.lfc, %i.lfg ; 2 uses
  %i.lfi = getelementptr inbounds [4 x i8], ptr %i.jhf, i64 %i.lcz
  %i.lfj = load float, ptr %i.lfi, align 4, !tbaa !22, !noalias !277
  %i.lfk = fsub reassoc nsz arcp contract afn float %i.ldb, %i.lfj
  %i.lfl = getelementptr inbounds [4 x i8], ptr %i.jhf, i64 %i.ldv
  %i.lfm = load float, ptr %i.lfl, align 4, !tbaa !22, !noalias !277
  %i.lfn = fsub reassoc nsz arcp contract afn float %i.ldx, %i.lfm
  %i.lfo = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.ldy
  %i.lfp = load float, ptr %i.lfo, align 4, !tbaa !22, !noalias !277
  %i.lfq = fsub reassoc nsz arcp contract afn float %i.lea, %i.lfp
  %i.lfr = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.ldc
  %i.lfs = load float, ptr %i.lfr, align 4, !tbaa !22, !noalias !277
  %i.lft = fsub reassoc nsz arcp contract afn float %i.lde, %i.lfs
  %i.lfu = fmul reassoc nsz arcp contract afn float %i.lft, %i.ldu
  %i.lfv = fmul reassoc nsz arcp contract afn float %i.lfh, %i.lfk
  %i.lfw = fadd reassoc nsz arcp contract afn float %i.lfu, %i.lfv
  %i.lfx = fadd reassoc nsz arcp contract afn float %i.lfh, %i.ldu
  %i.lfy = fdiv reassoc nsz arcp contract afn float %i.lfw, %i.lfx ; 2 uses
  %i.lfz = fmul reassoc nsz arcp contract afn float %i.lfq, %i.len
  %i.lga = fmul reassoc nsz arcp contract afn float %i.lfn, %i.lex
  %i.lgb = fadd reassoc nsz arcp contract afn float %i.lfz, %i.lga
  %i.lgc = fadd reassoc nsz arcp contract afn float %i.lex, %i.len
  %i.lgd = fdiv reassoc nsz arcp contract afn float %i.lgb, %i.lgc
  %i.lge = fcmp reassoc nsz arcp contract afn oge float %i.lcy, 0.000000e+00
  %i.lgf = fcmp reassoc nsz arcp contract afn ole float %i.lcy, 1.000000e+00
  %i.lgg = select reassoc nsz arcp contract afn i1 %i.lgf, float %i.lcy, float 1.000000e+00
  %i.lgh = select reassoc nsz arcp contract afn i1 %i.lge, float %i.lgg, float 0.000000e+00
  %i.lgi = fsub reassoc nsz arcp contract afn float %i.lgd, %i.lfy
  %i.lgj = fmul reassoc nsz arcp contract afn float %i.lgi, %i.lgh
  %i.lgk = fadd reassoc nsz arcp contract afn float %i.lfy, %i.ldp
  %i.lgl = fadd reassoc nsz arcp contract afn float %i.lgk, %i.lgj
  store float %i.lgl, ptr %i.ldi, align 4, !tbaa !22, !noalias !277
  %i.lgm = add nuw nsw i32 %.0782911.i, 2         ; 2 uses
  %indvars.iv.next1035.i = add nuw nsw i64 %indvars.iv1034.i, 2
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 1
  %i.lgn = icmp slt i32 %i.lgm, %i.kns
  br i1 %i.lgn, label %scalar.ph3233, label %._crit_edge914.i, !llvm.loop !390

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lgo = icmp eq i32 %.0741937.i, 0
  %i.lgp = select i1 %i.lgo, i32 9, i32 10        ; 4 uses
  %i.lgq = add nuw nsw i32 %i.lgp, %i.jka         ; 3 uses
  %i.lgr = icmp eq i32 %.0741937.i, %i.apq        ; 2 uses
  %.neg793.i = select i1 %i.lgr, i32 -9, i32 -10  ; 2 uses
  %i.lgs = add nsw i32 %i.jkc, %.neg793.i         ; 2 uses
  %i.lgt = icmp slt i32 %i.lgq, %i.lgs
  %or.cond944.i = select i1 %i.jif, i1 %i.lgt, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.lgu = add i32 %i.lgp, %indvars.iv1057.i
  %i.lgv = shl i32 %i.lgu, 2
  %i.lgw = or disjoint i32 %i.lgp, %i.jij
  %i.lgx = add i32 %.neg793.i, %smin2959
  %i.lgy = add i32 %i.lgx, %i.jjr
  %i.lgz = sub i32 %i.lgy, %i.lgp                 ; 2 uses
  %i.lha = zext i32 %i.lgz to i64
  %i.lhb = add nuw nsw i64 %i.lha, 1              ; 2 uses
  %min.iters.check2961 = icmp ult i32 %i.lgz, 7
  %n.vec2963 = and i64 %i.lhb, 8589934584         ; 5 uses
  %i.lhc = shl nuw nsw i64 %n.vec2963, 2
  %i.lhd = trunc i64 %n.vec2963 to i32
  %i.lhe = add i32 %i.lgq, %i.lhd
  %cmp.n2974 = icmp eq i64 %i.lhb, %n.vec2963
  br label %.lr.ph930.i

.preheader.i542:                                  ; preds = %.preheader.i542.preheader, %._crit_edge922.i
  %indvars.iv1050.i = phi i32 [ %indvars.iv.next1051.i, %._crit_edge922.i ], [ 452, %.preheader.i542.preheader ] ; 3 uses
  %.0770923.i = phi i32 [ %i.lnr, %._crit_edge922.i ], [ 4, %.preheader.i542.preheader ] ; 2 uses
  %i.lhf = shl i32 %.0770923.i, 2
  %i.lhg = and i32 %i.lhf, 28
  %i.lhh = or disjoint i32 %i.lhg, 2
  %i.lhi = lshr i32 %.fr1059, %i.lhh
  %i.lhj = and i32 %i.lhi, 1                      ; 5 uses
  %i.lhk = or disjoint i32 %i.lhj, 4              ; 4 uses
  %i.lhl = icmp slt i32 %i.lhk, %i.kns
  br i1 %i.lhl, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i542
  %i.lhm = or disjoint i32 %i.lhj, %indvars.iv1050.i
  %i.lhn = sext i32 %i.lhm to i64                 ; 5 uses
  %i.lho = sub i32 %smin1164, %i.lhj
  %10 = add i32 %i.lho, -9                        ; 2 uses
  %i.lhp = lshr i32 %10, 1
  %narrow4631 = add nuw i32 %i.lhp, 1
  %i.lhq = zext i32 %narrow4631 to i64            ; 2 uses
  %min.iters.check2993 = icmp ult i32 %10, 16
  br i1 %min.iters.check2993, label %.lr.ph921.i.preheader, label %vector.memcheck2978

.lr.ph921.i.preheader:                            ; preds = %vector.body2999, %vector.memcheck2978, %.lr.ph921.preheader.i
  %indvars.iv1052.i.ph = phi i64 [ %i.lhn, %vector.memcheck2978 ], [ %i.lhn, %.lr.ph921.preheader.i ], [ %i.lid, %vector.body2999 ]
  %.0769918.i.ph = phi i32 [ %i.lhk, %vector.memcheck2978 ], [ %i.lhk, %.lr.ph921.preheader.i ], [ %i.lig, %vector.body2999 ]
  br label %.lr.ph921.i

vector.memcheck2978:                              ; preds = %.lr.ph921.preheader.i
  %i.lhr = or disjoint i32 %indvars.iv1050.i, %i.lhj
  %i.lhs = sext i32 %i.lhr to i64
  %i.lht = shl nsw i64 %i.lhs, 2                  ; 3 uses
  %scevgep2980 = getelementptr i8, ptr %scevgep2979, i64 %i.lht
  %i.lhu = sub i32 %i.lcj, %i.lhj
  %i.lhv = lshr i32 %i.lhu, 1
  %i.lhw = zext nneg i32 %i.lhv to i64
  %i.lhx = shl nuw nsw i64 %i.lhw, 3
  %i.lhy = add nsw i64 %i.lhx, %i.lht             ; 2 uses
  %scevgep2984 = getelementptr i8, ptr %scevgep2981, i64 %i.lhy
  %scevgep2986 = getelementptr i8, ptr %scevgep2985, i64 %i.lht
  %scevgep2988 = getelementptr i8, ptr %scevgep2987, i64 %i.lhy
  %bound02989 = icmp ult ptr %scevgep2980, %scevgep2988
  %bound12990 = icmp ult ptr %scevgep2986, %scevgep2984
  %found.conflict2991 = and i1 %bound02989, %bound12990
  br i1 %found.conflict2991, label %.lr.ph921.i.preheader, label %vector.ph2994

vector.ph2994:                                    ; preds = %vector.memcheck2978
  %i.lhz = and i64 %i.lhq, 7                      ; 2 uses
  %i.lia = icmp eq i64 %i.lhz, 0
  %i.lib = select i1 %i.lia, i64 8, i64 %i.lhz
  %n.vec2995 = sub nsw i64 %i.lhq, %i.lib         ; 3 uses
  %i.lic = shl nsw i64 %n.vec2995, 1
  %i.lid = add nsw i64 %i.lic, %i.lhn
  %i.lie = trunc i64 %n.vec2995 to i32
  %i.lif = shl i32 %i.lie, 1
  %i.lig = add i32 %i.lhk, %i.lif
  %broadcast.splatinsert2996 = insertelement <8 x i64> poison, i64 %i.lhn, i64 0
  %broadcast.splat2997 = shufflevector <8 x i64> %broadcast.splatinsert2996, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2998 = add nuw nsw <8 x i64> %broadcast.splat2997, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body2999

vector.body2999:                                  ; preds = %vector.body2999, %vector.ph2994
  %index3000 = phi i64 [ 0, %vector.ph2994 ], [ %index.next3062, %vector.body2999 ] ; 2 uses
  %vec.ind3001 = phi <8 x i64> [ %induction2998, %vector.ph2994 ], [ %vec.ind.next3063, %vector.body2999 ] ; 3 uses
  %i.lih = shl nuw i64 %index3000, 1
  %i.lii = add nuw i64 %i.lih, %i.lhn             ; 7 uses
  %i.lij = getelementptr inbounds nuw [4 x i8], ptr %i.jgu, i64 %i.lii ; 5 uses
  %wide.vec3002 = load <16 x float>, ptr %i.lij, align 4, !tbaa !22, !alias.scope !391, !noalias !277
  %strided.vec3003 = shufflevector <16 x float> %wide.vec3002, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lik = add nsw i64 %i.lii, -112               ; 3 uses
  %i.lil = getelementptr i8, ptr %i.lij, i64 -452
  %wide.vec3004 = load <16 x float>, ptr %i.lil, align 4, !tbaa !22, !alias.scope !391, !noalias !277
  %strided.vec3005 = shufflevector <16 x float> %wide.vec3004, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lim = getelementptr i8, ptr %i.lij, i64 -444
  %wide.vec3006 = load <16 x float>, ptr %i.lim, align 4, !tbaa !22, !alias.scope !391, !noalias !277
  %strided.vec3007 = shufflevector <16 x float> %wide.vec3006, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lin = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3007, %strided.vec3005
  %i.lio = add nuw nsw i64 %i.lii, 112            ; 3 uses
  %i.lip = getelementptr inbounds nuw i8, ptr %i.lij, i64 444
  %wide.vec3008 = load <16 x float>, ptr %i.lip, align 4, !tbaa !22, !alias.scope !391, !noalias !277
  %strided.vec3009 = shufflevector <16 x float> %wide.vec3008, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.liq = fadd reassoc nsz arcp contract afn <8 x float> %i.lin, %strided.vec3009
  %i.lir = getelementptr inbounds nuw i8, ptr %i.lij, i64 452
  %wide.vec3010 = load <16 x float>, ptr %i.lir, align 4, !tbaa !22, !alias.scope !391, !noalias !277
  %strided.vec3011 = shufflevector <16 x float> %wide.vec3010, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lis = fadd reassoc nsz arcp contract afn <8 x float> %i.liq, %strided.vec3011
  %i.lit = fmul reassoc nsz arcp contract afn <8 x float> %i.lis, splat (float 2.500000e-01) ; 2 uses
  %i.liu = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %strided.vec3003
  %i.liv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.liu)
  %i.liw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.lit
  %i.lix = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.liw)
  %i.liy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.liv, %i.lix
  %i.liz = select reassoc nsz arcp contract afn <8 x i1> %i.liy, <8 x float> %i.lit, <8 x float> %strided.vec3003 ; 3 uses
  %i.lja = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.lii ; 4 uses
  %wide.vec3012 = load <16 x float>, ptr %i.lja, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3013 = shufflevector <16 x float> %wide.vec3012, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 6 uses
  %i.ljb = getelementptr i8, ptr %i.lja, i64 -896
  %wide.vec3014 = load <16 x float>, ptr %i.ljb, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3015 = shufflevector <16 x float> %wide.vec3014, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ljc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3013, %strided.vec3015
  %i.ljd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljc)
  %i.lje = fadd reassoc nsz arcp contract afn <8 x float> %i.ljd, splat (float f0x3727C5AC) ; 2 uses
  %i.ljf = getelementptr inbounds nuw i8, ptr %i.lja, i64 896
  %wide.vec3016 = load <16 x float>, ptr %i.ljf, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3017 = shufflevector <16 x float> %wide.vec3016, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ljg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3013, %strided.vec3017
  %i.ljh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljg)
  %i.lji = fadd reassoc nsz arcp contract afn <8 x float> %i.ljh, splat (float f0x3727C5AC) ; 2 uses
  %i.ljj = getelementptr i8, ptr %i.lja, i64 -8
  %wide.vec3018 = load <16 x float>, ptr %i.ljj, align 4, !tbaa !22, !alias.scope !394, !noalias !277 ; 2 uses
  %strided.vec3019 = shufflevector <16 x float> %wide.vec3018, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3020 = shufflevector <16 x float> %wide.vec3018, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ljk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3013, %strided.vec3019
  %i.ljl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljk)
  %i.ljm = fadd reassoc nsz arcp contract afn <8 x float> %i.ljl, splat (float f0x3727C5AC) ; 2 uses
  %i.ljn = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.lii
  %i.ljo = getelementptr inbounds nuw i8, ptr %i.ljn, i64 4
  %wide.vec3021 = load <16 x float>, ptr %i.ljo, align 4, !tbaa !22, !alias.scope !394, !noalias !277 ; 2 uses
  %strided.vec3022 = shufflevector <16 x float> %wide.vec3021, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3023 = shufflevector <16 x float> %wide.vec3021, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ljp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3013, %strided.vec3023
  %i.ljq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljp)
  %i.ljr = fadd reassoc nsz arcp contract afn <8 x float> %i.ljq, splat (float f0x3727C5AC) ; 2 uses
  %i.ljs = getelementptr inbounds [4 x i8], ptr %i.jhf, i64 %i.lik
  %wide.vec3024 = load <16 x float>, ptr %i.ljs, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3025 = shufflevector <16 x float> %wide.vec3024, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ljt = getelementptr inbounds nuw [4 x i8], ptr %i.jhf, i64 %i.lio
  %wide.vec3026 = load <16 x float>, ptr %i.ljt, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3027 = shufflevector <16 x float> %wide.vec3026, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lju = add nsw i64 %i.lii, -1                 ; 2 uses
  %i.ljv = add nuw nsw i64 %i.lii, 1              ; 2 uses
  %i.ljw = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.liz, zeroinitializer
  %i.ljx = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.liz, splat (float 1.000000e+00)
  %i.ljy = select reassoc nsz arcp contract afn <8 x i1> %i.ljx, <8 x float> %i.liz, <8 x float> splat (float 1.000000e+00)
  %i.ljz = select reassoc nsz arcp contract afn <8 x i1> %i.ljw, <8 x float> %i.ljy, <8 x float> zeroinitializer ; 2 uses
  %i.lka = getelementptr inbounds [4 x i8], ptr %i.jhd, i64 %i.lik
  %wide.vec3028 = load <16 x float>, ptr %i.lka, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3029 = shufflevector <16 x float> %wide.vec3028, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lkb = getelementptr inbounds nuw [4 x i8], ptr %i.jhd, i64 %i.lio
  %wide.vec3030 = load <16 x float>, ptr %i.lkb, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3031 = shufflevector <16 x float> %wide.vec3030, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lkc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3029, %strided.vec3031
  %i.lkd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lkc) ; 2 uses
  %i.lke = getelementptr inbounds [4 x i8], ptr %i.jhd, i64 %i.lju
  %wide.vec3032 = load <16 x float>, ptr %i.lke, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3033 = shufflevector <16 x float> %wide.vec3032, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lkf = getelementptr inbounds nuw [4 x i8], ptr %i.jhd, i64 %i.ljv
  %wide.vec3034 = load <16 x float>, ptr %i.lkf, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3035 = shufflevector <16 x float> %wide.vec3034, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lkg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3033, %strided.vec3035
  %i.lkh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lkg) ; 2 uses
  %i.lki = fadd reassoc nsz arcp contract afn <8 x float> %i.lkd, %i.lje
  %wide.gep3036 = getelementptr [4 x i8], ptr %i.jhd, <8 x i64> %vec.ind3001 ; 2 uses
  %i.lkj = extractelement <8 x ptr> %wide.gep3036, i64 0 ; 4 uses
  %i.lkk = getelementptr i8, ptr %i.lkj, i64 -1344
  %wide.vec3037 = load <16 x float>, ptr %i.lkk, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3038 = shufflevector <16 x float> %wide.vec3037, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lkl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3029, %strided.vec3038
  %i.lkm = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lkl)
  %i.lkn = fadd reassoc nsz arcp contract afn <8 x float> %i.lki, %i.lkm ; 2 uses
  %i.lko = fadd reassoc nsz arcp contract afn <8 x float> %i.lkd, %i.lji
  %i.lkp = getelementptr inbounds nuw i8, ptr %i.lkj, i64 1344
  %wide.vec3039 = load <16 x float>, ptr %i.lkp, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3040 = shufflevector <16 x float> %wide.vec3039, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lkq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3031, %strided.vec3040
  %i.lkr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lkq)
  %i.lks = fadd reassoc nsz arcp contract afn <8 x float> %i.lko, %i.lkr ; 2 uses
  %i.lkt = fadd reassoc nsz arcp contract afn <8 x float> %i.lkh, %i.ljm
  %i.lku = getelementptr i8, ptr %i.lkj, i64 -12
  %wide.vec3041 = load <16 x float>, ptr %i.lku, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3042 = shufflevector <16 x float> %wide.vec3041, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lkv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3033, %strided.vec3042
  %i.lkw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lkv)
  %i.lkx = fadd reassoc nsz arcp contract afn <8 x float> %i.lkt, %i.lkw ; 2 uses
  %i.lky = fadd reassoc nsz arcp contract afn <8 x float> %i.lkh, %i.ljr
  %i.lkz = getelementptr inbounds nuw i8, ptr %i.lkj, i64 12
  %wide.vec3043 = load <16 x float>, ptr %i.lkz, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3044 = shufflevector <16 x float> %wide.vec3043, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lla = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3035, %strided.vec3044
  %i.llb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lla)
  %i.llc = fadd reassoc nsz arcp contract afn <8 x float> %i.lky, %i.llb ; 2 uses
  %i.lld = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3029, %strided.vec3025
  %i.lle = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3031, %strided.vec3027
  %i.llf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3033, %strided.vec3020
  %i.llg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3035, %strided.vec3022
  %i.llh = fmul reassoc nsz arcp contract afn <8 x float> %i.lkn, %i.lle
  %i.lli = fmul reassoc nsz arcp contract afn <8 x float> %i.lks, %i.lld
  %i.llj = fadd reassoc nsz arcp contract afn <8 x float> %i.lli, %i.llh
  %i.llk = fadd reassoc nsz arcp contract afn <8 x float> %i.lks, %i.lkn
  %i.lll = fdiv reassoc nsz arcp contract afn <8 x float> %i.llj, %i.llk ; 2 uses
  %i.llm = fmul reassoc nsz arcp contract afn <8 x float> %i.llc, %i.llf
  %i.lln = fmul reassoc nsz arcp contract afn <8 x float> %i.lkx, %i.llg
  %i.llo = fadd reassoc nsz arcp contract afn <8 x float> %i.llm, %i.lln
  %i.llp = fadd reassoc nsz arcp contract afn <8 x float> %i.llc, %i.lkx
  %i.llq = fdiv reassoc nsz arcp contract afn <8 x float> %i.llo, %i.llp
  %i.llr = fsub reassoc nsz arcp contract afn <8 x float> %i.llq, %i.lll
  %i.lls = fmul reassoc nsz arcp contract afn <8 x float> %i.llr, %i.ljz
  %i.llt = fadd reassoc nsz arcp contract afn <8 x float> %i.lll, %strided.vec3013
  %i.llu = fadd reassoc nsz arcp contract afn <8 x float> %i.llt, %i.lls
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.llu, <8 x ptr> align 4 %wide.gep3036, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !394, !noalias !396
  %i.llv = getelementptr inbounds [4 x i8], ptr %i.jhg, i64 %i.lik
  %wide.vec3045 = load <16 x float>, ptr %i.llv, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3046 = shufflevector <16 x float> %wide.vec3045, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.llw = getelementptr inbounds nuw [4 x i8], ptr %i.jhg, i64 %i.lio
  %wide.vec3047 = load <16 x float>, ptr %i.llw, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3048 = shufflevector <16 x float> %wide.vec3047, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.llx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3046, %strided.vec3048
  %i.lly = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.llx) ; 2 uses
  %i.llz = getelementptr inbounds [4 x i8], ptr %i.jhg, i64 %i.lju
  %wide.vec3049 = load <16 x float>, ptr %i.llz, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3050 = shufflevector <16 x float> %wide.vec3049, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lma = getelementptr inbounds nuw [4 x i8], ptr %i.jhg, i64 %i.ljv
  %wide.vec3051 = load <16 x float>, ptr %i.lma, align 4, !tbaa !22, !alias.scope !394, !noalias !277
  %strided.vec3052 = shufflevector <16 x float> %wide.vec3051, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lmb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3050, %strided.vec3052
  %i.lmc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lmb) ; 2 uses
  %i.lmd = fadd reassoc nsz arcp contract afn <8 x float> %i.lly, %i.lje
  %wide.gep3053 = getelementptr [4 x i8], ptr %i.jhg, <8 x i64> %vec.ind3001 ; 2 uses
  %i.lme = extractelement <8 x ptr> %wide.gep3053, i64 0 ; 4 uses
  %i.lmf = getelementptr i8, ptr %i.lme, i64 -1344
  %wide.vec3054 = load <16 x float>, ptr %i.lmf, align 4, !tbaa !22, !alias.scope !394, !noalias !277
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.mec = getelementptr i8, ptr %i.mca, i64 496
  store <8 x float> %i.mdw, ptr %next.gep4485.3, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdx, ptr %i.mea, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdy, ptr %i.meb, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdz, ptr %i.mec, align 16, !tbaa !22, !noalias !402
  br label %middle.block4491

middle.block4491:                                 ; preds = %vector.body4483.3, %vector.body4483.2, %vector.body4483.1, %vector.ph4479
  br i1 %cmp.n4492, label %._crit_edge.i568, label %vec.epilog.iter.check4499

vec.epilog.iter.check4499:                        ; preds = %middle.block4491
  br i1 %min.epilog.iters.check4500, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph4501, !prof !409

vec.epilog.ph4501:                                ; preds = %vector.main.loop.iter.check4477, %vec.epilog.iter.check4499
  %vec.epilog.resume.val4493 = phi i64 [ %n.vec4480, %vec.epilog.iter.check4499 ], [ 0, %vector.main.loop.iter.check4477 ]
  %i.med = add nuw nsw i64 %n.vec4502, %i.mbz
  %i.mee = getelementptr i8, ptr %i.mcb, i64 %i.mbu
  %invariant.gep4918 = getelementptr [4 x i8], ptr %i.ays, i64 %i.mbz
  br label %vec.epilog.vector.body4505

vec.epilog.vector.body4505:                       ; preds = %vec.epilog.vector.body4505, %vec.epilog.ph4501
  %index4506 = phi i64 [ %vec.epilog.resume.val4493, %vec.epilog.ph4501 ], [ %index.next4509, %vec.epilog.vector.body4505 ] ; 3 uses
  %i.mef = shl i64 %index4506, 2
  %next.gep4507 = getelementptr i8, ptr %i.mcb, i64 %i.mef
  %gep4919 = getelementptr [4 x i8], ptr %invariant.gep4918, i64 %index4506
  %wide.load4508 = load <8 x float>, ptr %gep4919, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.meg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4508, %broadcast.splat4504
  store <8 x float> %i.meg, ptr %next.gep4507, align 16, !tbaa !22, !noalias !402
  %index.next4509 = add nuw i64 %index4506, 8     ; 2 uses
  %i.meh = icmp eq i64 %index.next4509, %n.vec4502
  br i1 %i.meh, label %vec.epilog.middle.block4510, label %vec.epilog.vector.body4505, !llvm.loop !410

vec.epilog.middle.block4510:                      ; preds = %vec.epilog.vector.body4505
  br i1 %cmp.n4511, label %._crit_edge.i568, label %_calc_gamma.exit.us.i.preheader

_calc_gamma.exit.us.i.preheader:                  ; preds = %iter.check4497, %vec.epilog.iter.check4499, %vec.epilog.middle.block4510
  %indvars.iv1214.i.ph = phi i64 [ %i.mbz, %iter.check4497 ], [ %i.mcj, %vec.epilog.iter.check4499 ], [ %i.med, %vec.epilog.middle.block4510 ]
  %.08841027.us.i.ph = phi ptr [ %i.mcb, %iter.check4497 ], [ %i.mck, %vec.epilog.iter.check4499 ], [ %i.mee, %vec.epilog.middle.block4510 ]
  %.08861025.us.i.ph = phi i32 [ 4, %iter.check4497 ], [ %i.mbq, %vec.epilog.iter.check4499 ], [ %i.mbw, %vec.epilog.middle.block4510 ]
  br label %_calc_gamma.exit.us.i

_calc_gamma.exit.us.i:                            ; preds = %_calc_gamma.exit.us.i.preheader, %_calc_gamma.exit.us.i
  %indvars.iv1214.i = phi i64 [ %indvars.iv.next1215.i, %_calc_gamma.exit.us.i ], [ %indvars.iv1214.i.ph, %_calc_gamma.exit.us.i.preheader ] ; 2 uses
  %.08841027.us.i = phi ptr [ %i.mem, %_calc_gamma.exit.us.i ], [ %.08841027.us.i.ph, %_calc_gamma.exit.us.i.preheader ] ; 2 uses
  %.08861025.us.i = phi i32 [ %i.mel, %_calc_gamma.exit.us.i ], [ %.08861025.us.i.ph, %_calc_gamma.exit.us.i.preheader ]
  %i.mei = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv1214.i
  %i.mej = load float, ptr %i.mei, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mek = fmul reassoc nsz arcp contract afn float %i.mej, %i.aow
  store float %i.mek, ptr %.08841027.us.i, align 4, !tbaa !22, !noalias !402
  %i.mel = add nuw nsw i32 %.08861025.us.i, 1     ; 2 uses
  %i.mem = getelementptr inbounds nuw i8, ptr %.08841027.us.i, i64 4
  %indvars.iv.next1215.i = add nuw nsw i64 %indvars.iv1214.i, 1
  %i.men = icmp slt i32 %i.mel, %i.mbi
  br i1 %i.men, label %_calc_gamma.exit.us.i, label %._crit_edge.i568, !llvm.loop !411

._crit_edge.i568.loopexit4693.unr-lcssa:          ; preds = %_calc_gamma.exit.i.1
  br i1 %lcmp.mod4776.not, label %._crit_edge.i568, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.i568.loopexit4693.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv1211.i.epil.init = phi i64 [ %i.mbz, %.lr.ph.split.i.preheader ], [ %indvars.iv.next1212.i.1, %._crit_edge.i568.loopexit4693.unr-lcssa ]
  %.08841027.i.epil.init = phi ptr [ %i.mcb, %.lr.ph.split.i.preheader ], [ %i.mgj, %._crit_edge.i568.loopexit4693.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4777)
  %i.meo = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv1211.i.epil.init
  %i.mep = load float, ptr %i.meo, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %.reass.i566.epil = fmul reassoc nsz arcp contract afn float %invariant.op.i552, %i.mep ; 4 uses
  %i.meq = fcmp reassoc nsz arcp contract afn olt float %.reass.i566.epil, 0.000000e+00
  br i1 %i.meq, label %_calc_gamma.exit.i.epil, label %bb.ps

bb.ps:                                            ; preds = %.lr.ph.split.i.epil.preheader
  %i.mer = fcmp reassoc nsz arcp contract afn ogt float %.reass.i566.epil, f0x477FFEFD
  br i1 %i.mer, label %_calc_gamma.exit.i.epil, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.mes = fptosi float %.reass.i566.epil to i32  ; 2 uses
  %i.met = sitofp reassoc nsz arcp contract afn i32 %i.mes to float
  %i.meu = fsub reassoc nsz arcp contract afn float %.reass.i566.epil, %i.met
  %i.mev = sext i32 %i.mes to i64
  %i.mew = getelementptr inbounds [4 x i8], ptr %i.mbk, i64 %i.mev ; 2 uses
  %i.mex = load float, ptr %i.mew, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.mey = getelementptr i8, ptr %i.mew, i64 4
  %i.mez = load float, ptr %i.mey, align 4, !tbaa !22, !noalias !402
  %i.mfa = fsub reassoc nsz arcp contract afn float %i.mez, %i.mex
  %i.mfb = fmul reassoc nsz arcp contract afn float %i.mfa, %i.meu
  %i.mfc = fadd reassoc nsz arcp contract afn float %i.mfb, %i.mex
  br label %_calc_gamma.exit.i.epil

_calc_gamma.exit.i.epil:                          ; preds = %bb.pt, %bb.ps, %.lr.ph.split.i.epil.preheader
  %.1.i.i567.epil = phi nsz float [ 1.000000e+00, %bb.ps ], [ %i.mfc, %bb.pt ], [ 0.000000e+00, %.lr.ph.split.i.epil.preheader ]
  store float %.1.i.i567.epil, ptr %.08841027.i.epil.init, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge.i568

._crit_edge.i568:                                 ; preds = %_calc_gamma.exit.i.epil, %._crit_edge.i568.loopexit4693.unr-lcssa, %_calc_gamma.exit.us.i, %middle.block4491, %vec.epilog.middle.block4510
  %indvars.iv.next1218.i = add nuw nsw i64 %indvars.iv1217.i, 1 ; 2 uses
  %indvars.iv.next1210.i = add i32 %indvars.iv1209.i, %i.bo
  %exitcond.not = icmp eq i64 %indvars.iv.next1218.i, %smax1142
  %indvar.next4471 = add i64 %indvar4470, 1
  br i1 %exitcond.not, label %.preheader1019.i, label %.lr.ph.i564

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_calc_gamma.exit.i.1
  %indvars.iv1211.i = phi i64 [ %indvars.iv.next1212.i.1, %_calc_gamma.exit.i.1 ], [ %i.mbz, %.lr.ph.split.i.preheader ] ; 3 uses
  %.08841027.i = phi ptr [ %i.mgj, %_calc_gamma.exit.i.1 ], [ %i.mcb, %.lr.ph.split.i.preheader ] ; 3 uses
  %niter4779 = phi i32 [ %niter4779.next.1, %_calc_gamma.exit.i.1 ], [ 0, %.lr.ph.split.i.preheader ]
  %i.mfd = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv1211.i
  %i.mfe = load float, ptr %i.mfd, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %.reass.i566 = fmul reassoc nsz arcp contract afn float %invariant.op.i552, %i.mfe ; 4 uses
  %i.mff = fcmp reassoc nsz arcp contract afn olt float %.reass.i566, 0.000000e+00
  br i1 %i.mff, label %_calc_gamma.exit.i, label %bb.pu

bb.pu:                                            ; preds = %.lr.ph.split.i
  %i.mfg = fcmp reassoc nsz arcp contract afn ogt float %.reass.i566, f0x477FFEFD
  br i1 %i.mfg, label %_calc_gamma.exit.i, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.mfh = fptosi float %.reass.i566 to i32       ; 2 uses
  %i.mfi = sitofp reassoc nsz arcp contract afn i32 %i.mfh to float
  %i.mfj = fsub reassoc nsz arcp contract afn float %.reass.i566, %i.mfi
  %i.mfk = sext i32 %i.mfh to i64
  %i.mfl = getelementptr inbounds [4 x i8], ptr %i.mbk, i64 %i.mfk ; 2 uses
  %i.mfm = load float, ptr %i.mfl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.mfn = getelementptr i8, ptr %i.mfl, i64 4
  %i.mfo = load float, ptr %i.mfn, align 4, !tbaa !22, !noalias !402
  %i.mfp = fsub reassoc nsz arcp contract afn float %i.mfo, %i.mfm
  %i.mfq = fmul reassoc nsz arcp contract afn float %i.mfp, %i.mfj
  %i.mfr = fadd reassoc nsz arcp contract afn float %i.mfq, %i.mfm
  br label %_calc_gamma.exit.i

_calc_gamma.exit.i:                               ; preds = %bb.pv, %bb.pu, %.lr.ph.split.i
  %.1.i.i567 = phi nsz float [ 1.000000e+00, %bb.pu ], [ %i.mfr, %bb.pv ], [ 0.000000e+00, %.lr.ph.split.i ]
  store float %.1.i.i567, ptr %.08841027.i, align 4, !tbaa !22, !noalias !402
  %i.mfs = getelementptr inbounds nuw i8, ptr %.08841027.i, i64 4
  %i.mft = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv1211.i
  %i.mfu = getelementptr inbounds nuw i8, ptr %i.mft, i64 4
  %i.mfv = load float, ptr %i.mfu, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %.reass.i566.1 = fmul reassoc nsz arcp contract afn float %invariant.op.i552, %i.mfv ; 4 uses
  %i.mfw = fcmp reassoc nsz arcp contract afn olt float %.reass.i566.1, 0.000000e+00
  br i1 %i.mfw, label %_calc_gamma.exit.i.1, label %bb.pw

bb.pw:                                            ; preds = %_calc_gamma.exit.i
  %i.mfx = fcmp reassoc nsz arcp contract afn ogt float %.reass.i566.1, f0x477FFEFD
  br i1 %i.mfx, label %_calc_gamma.exit.i.1, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.mfy = fptosi float %.reass.i566.1 to i32     ; 2 uses
  %i.mfz = sitofp reassoc nsz arcp contract afn i32 %i.mfy to float
  %i.mga = fsub reassoc nsz arcp contract afn float %.reass.i566.1, %i.mfz
  %i.mgb = sext i32 %i.mfy to i64
  %i.mgc = getelementptr inbounds [4 x i8], ptr %i.mbk, i64 %i.mgb ; 2 uses
  %i.mgd = load float, ptr %i.mgc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.mge = getelementptr i8, ptr %i.mgc, i64 4
  %i.mgf = load float, ptr %i.mge, align 4, !tbaa !22, !noalias !402
  %i.mgg = fsub reassoc nsz arcp contract afn float %i.mgf, %i.mgd
  %i.mgh = fmul reassoc nsz arcp contract afn float %i.mgg, %i.mga
  %i.mgi = fadd reassoc nsz arcp contract afn float %i.mgh, %i.mgd
  br label %_calc_gamma.exit.i.1

_calc_gamma.exit.i.1:                             ; preds = %bb.px, %bb.pw, %_calc_gamma.exit.i
  %.1.i.i567.1 = phi nsz float [ 1.000000e+00, %bb.pw ], [ %i.mgi, %bb.px ], [ 0.000000e+00, %_calc_gamma.exit.i ]
  store float %.1.i.i567.1, ptr %i.mfs, align 4, !tbaa !22, !noalias !402
  %i.mgj = getelementptr inbounds nuw i8, ptr %.08841027.i, i64 8 ; 2 uses
  %indvars.iv.next1212.i.1 = add nuw nsw i64 %indvars.iv1211.i, 2 ; 2 uses
  %niter4779.next.1 = add i32 %niter4779, 2       ; 2 uses
  %niter4779.ncmp.1.not = icmp eq i32 %niter4779.next.1, %unroll_iter4778
  br i1 %niter4779.ncmp.1.not, label %._crit_edge.i568.loopexit4693.unr-lcssa, label %.lr.ph.split.i

.preheader1018.i:                                 ; preds = %._crit_edge1040.i
  br i1 %i.lxz, label %.preheader1012.lr.ph.i, label %._crit_edge1053.i

.preheader1012.lr.ph.i:                           ; preds = %.preheader1018.i
  %i.mgk = icmp sgt i32 %i.mbf, 0
  br i1 %i.mgk, label %.preheader1012.i.preheader, label %.lr.ph1052.i

.preheader1012.i.preheader:                       ; preds = %.preheader1012.lr.ph.i
  %i.mgl = add nsw i64 %i.mbb, -3                 ; 3 uses
  %min.iters.check4362 = icmp ult i64 %i.mgl, 8
  %n.vec4364 = and i64 %i.mgl, -8                 ; 3 uses
  %i.mgm = or disjoint i64 %n.vec4364, 4
  %cmp.n4387 = icmp eq i64 %i.mgl, %n.vec4364
  br label %.preheader1012.i

bb.py:                                            ; preds = %._crit_edge1040.i, %.lr.ph1042.i
  %indvars.iv1226.i = phi i64 [ 2, %.lr.ph1042.i ], [ %indvars.iv.next1227.i, %._crit_edge1040.i ] ; 5 uses
  %indvars.iv1226.tr.i = trunc nuw i64 %indvars.iv1226.i to i32
  %i.mgn = shl i32 %indvars.iv1226.tr.i, 2
  %i.mgo = and i32 %i.mgn, 28                     ; 2 uses
  %i.mgp = lshr i32 %.fr1059, %i.mgo              ; 2 uses
  %i.mgq = and i32 %i.mgp, 1                      ; 2 uses
  %i.mgr = icmp slt i32 %i.mgq, %.pre-phi1257
  br i1 %i.mgr, label %.lr.ph1034.i, label %._crit_edge1035.i

.lr.ph1034.i:                                     ; preds = %bb.py
  %i.mgs = mul nuw nsw i64 %indvars.iv1226.i, 136 ; 3 uses
  %i.mgt = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.mgs ; 2 uses
  %i.mgu = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.mgs ; 2 uses
  %i.mgv = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.mgs ; 2 uses
  %i.mgw = or disjoint i32 %i.mgq, 2
  %i.mgx = zext nneg i32 %i.mgw to i64            ; 4 uses
  %i.mgy = and i32 %i.mgp, 1
  %i.mgz = zext nneg i32 %i.mgy to i64            ; 2 uses
  %i.mha = or disjoint i64 %i.mgz, 4
  %i.mhb = call i64 @llvm.smax.i64(i64 %i.mby, i64 %i.mha)
  %11 = sub nsw i64 %i.mhb, %i.mgz
  %12 = add i64 %11, -3                           ; 2 uses
  %min.iters.check4426 = icmp ult i64 %12, 16
  br i1 %min.iters.check4426, label %scalar.ph4425.preheader, label %vector.ph4427

scalar.ph4425.preheader:                          ; preds = %vector.body4432, %.lr.ph1034.i
  %indvars.iv1220.i.ph = phi i64 [ %i.mgx, %.lr.ph1034.i ], [ %i.mhi, %vector.body4432 ]
  br label %scalar.ph4425

vector.ph4427:                                    ; preds = %.lr.ph1034.i
  %i.mhc = lshr i64 %12, 1
  %i.mhd = add nuw nsw i64 %i.mhc, 1              ; 2 uses
  %i.mhe = and i64 %i.mhd, 7                      ; 2 uses
  %i.mhf = icmp eq i64 %i.mhe, 0
  %i.mhg = select i1 %i.mhf, i64 8, i64 %i.mhe
  %n.vec4428 = sub nsw i64 %i.mhd, %i.mhg         ; 2 uses
  %i.mhh = shl i64 %n.vec4428, 1
  %i.mhi = add i64 %i.mhh, %i.mgx
  %broadcast.splatinsert4429 = insertelement <8 x i64> poison, i64 %i.mgx, i64 0
  %broadcast.splat4430 = shufflevector <8 x i64> %broadcast.splatinsert4429, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4431 = add nuw nsw <8 x i64> %broadcast.splat4430, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4920 = getelementptr [4 x i8], ptr %i.mgt, i64 %i.mgx
  br label %vector.body4432

vector.body4432:                                  ; preds = %vector.body4432, %vector.ph4427
  %index4433 = phi i64 [ 0, %vector.ph4427 ], [ %index.next4465, %vector.body4432 ] ; 2 uses
  %vec.ind4434 = phi <8 x i64> [ %induction4431, %vector.ph4427 ], [ %vec.ind.next4466, %vector.body4432 ] ; 3 uses
  %.idx = shl nuw i64 %index4433, 3
  %gep4921 = getelementptr i8, ptr %invariant.gep4920, i64 %.idx ; 9 uses
  %i.mhj = getelementptr inbounds i8, ptr %gep4921, i64 -548
  %wide.vec4435 = load <16 x float>, ptr %i.mhj, align 4, !tbaa !22, !noalias !402
  %strided.vec4436 = shufflevector <16 x float> %wide.vec4435, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mhk = getelementptr inbounds i8, ptr %gep4921, i64 -544
  %wide.vec4437 = load <16 x float>, ptr %i.mhk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4438 = shufflevector <16 x float> %wide.vec4437, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4439 = shufflevector <16 x float> %wide.vec4437, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mhl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4439, %strided.vec4436
  %i.mhm = getelementptr inbounds nuw i8, ptr %gep4921, i64 540
  %wide.vec4440 = load <16 x float>, ptr %i.mhm, align 4, !tbaa !22, !noalias !402
  %strided.vec4441 = shufflevector <16 x float> %wide.vec4440, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mhn = fadd reassoc nsz arcp contract afn <8 x float> %i.mhl, %strided.vec4441
  %i.mho = getelementptr inbounds nuw i8, ptr %gep4921, i64 544
  %wide.vec4442 = load <16 x float>, ptr %i.mho, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4443 = shufflevector <16 x float> %wide.vec4442, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4444 = shufflevector <16 x float> %wide.vec4442, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mhp = fadd reassoc nsz arcp contract afn <8 x float> %i.mhn, %strided.vec4444
  %i.mhq = fmul reassoc nsz arcp contract afn <8 x float> %i.mhp, splat (float 6.250000e-02)
  %wide.vec4445 = load <16 x float>, ptr %gep4921, align 4, !tbaa !22, !noalias !402
  %strided.vec4446 = shufflevector <16 x float> %wide.vec4445, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 7 uses
  %i.mhr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4446, splat (float 2.500000e-01)
  %i.mhs = fadd reassoc nsz arcp contract afn <8 x float> %i.mhq, %i.mhr ; 2 uses
  %wide.gep4447 = getelementptr inbounds nuw [4 x i8], ptr %i.mgu, <8 x i64> %vec.ind4434
  %i.mht = getelementptr inbounds i8, ptr %gep4921, i64 -8
  %wide.vec4448 = load <16 x float>, ptr %i.mht, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4449 = shufflevector <16 x float> %wide.vec4448, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4450 = shufflevector <16 x float> %wide.vec4448, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mhu = getelementptr inbounds nuw i8, ptr %gep4921, i64 4
  %wide.vec4451 = load <16 x float>, ptr %i.mhu, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4452 = shufflevector <16 x float> %wide.vec4451, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4453 = shufflevector <16 x float> %wide.vec4451, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mhv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4453, %strided.vec4449
  %i.mhw = fmul reassoc nsz arcp contract afn <8 x float> %i.mhv, splat (float 2.500000e-01)
  %i.mhx = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4450, %strided.vec4446
  %i.mhy = fadd reassoc nsz arcp contract afn <8 x float> %i.mhx, %strided.vec4452
  %i.mhz = fmul reassoc nsz arcp contract afn <8 x float> %i.mhy, splat (float 5.000000e-01)
  %i.mia = fsub reassoc nsz arcp contract afn <8 x float> %i.mhz, %i.mhw ; 6 uses
  %i.mib = fmul reassoc nsz arcp contract afn <8 x float> %i.mia, splat (float 5.000000e-01)
  %i.mic = fadd reassoc nsz arcp contract afn <8 x float> %i.mib, %i.mhs
  %i.mid = fmul reassoc nsz arcp contract afn <8 x float> %i.mic, splat (float 1.750000e+00)
  %i.mie = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4446, %i.mid ; 3 uses
  %i.mif = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mia, zeroinitializer ; 2 uses
  %i.mig = xor <8 x i1> %i.mif, splat (i1 true)
  %i.mih = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.mia, splat (float 1.000000e+00)
  %i.mii = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mia, <8 x float> %strided.vec4450)
  %i.mij = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mia, <8 x float> %strided.vec4450)
  %i.mik = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4452, <8 x float> %i.mij)
  %i.mil = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mii, <8 x float> %i.mik)
  %i.mim = select <8 x i1> %i.mie, <8 x i1> %i.mif, <8 x i1> zeroinitializer
  %i.min = and <8 x i1> %i.mih, %i.mig
  %i.mio = select <8 x i1> %i.mie, <8 x i1> %i.min, <8 x i1> zeroinitializer
  %predphi4454 = select reassoc nsz arcp contract afn <8 x i1> %i.mio, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mia
  %predphi4455 = select reassoc nsz arcp contract afn <8 x i1> %i.mim, <8 x float> zeroinitializer, <8 x float> %predphi4454
  %predphi4456 = select reassoc nsz arcp contract afn <8 x i1> %i.mie, <8 x float> %predphi4455, <8 x float> %i.mil
  %i.mip = fsub reassoc nsz arcp contract afn <8 x float> %predphi4456, %strided.vec4446
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mip, <8 x ptr> align 4 %wide.gep4447, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %wide.gep4457 = getelementptr inbounds nuw [4 x i8], ptr %i.mgv, <8 x i64> %vec.ind4434
  %i.miq = getelementptr inbounds i8, ptr %gep4921, i64 -1088
  %wide.vec4458 = load <16 x float>, ptr %i.miq, align 4, !tbaa !22, !noalias !402
  %strided.vec4459 = shufflevector <16 x float> %wide.vec4458, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mir = getelementptr inbounds nuw i8, ptr %gep4921, i64 1088
  %wide.vec4460 = load <16 x float>, ptr %i.mir, align 4, !tbaa !22, !noalias !402
  %strided.vec4461 = shufflevector <16 x float> %wide.vec4460, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mis = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4461, %strided.vec4459
  %i.mit = fmul reassoc nsz arcp contract afn <8 x float> %i.mis, splat (float 2.500000e-01)
  %i.miu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4438, %strided.vec4446
  %i.miv = fadd reassoc nsz arcp contract afn <8 x float> %i.miu, %strided.vec4443
  %i.miw = fmul reassoc nsz arcp contract afn <8 x float> %i.miv, splat (float 5.000000e-01)
  %i.mix = fsub reassoc nsz arcp contract afn <8 x float> %i.miw, %i.mit ; 6 uses
  %i.miy = fmul reassoc nsz arcp contract afn <8 x float> %i.mix, splat (float 5.000000e-01)
  %i.miz = fadd reassoc nsz arcp contract afn <8 x float> %i.miy, %i.mhs
  %i.mja = fmul reassoc nsz arcp contract afn <8 x float> %i.miz, splat (float 1.750000e+00)
  %i.mjb = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4446, %i.mja ; 3 uses
  %i.mjc = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mix, zeroinitializer ; 2 uses
  %i.mjd = xor <8 x i1> %i.mjc, splat (i1 true)
  %i.mje = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.mix, splat (float 1.000000e+00)
  %i.mjf = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mix, <8 x float> %strided.vec4438)
  %i.mjg = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mix, <8 x float> %strided.vec4438)
  %i.mjh = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4443, <8 x float> %i.mjg)
  %i.mji = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mjf, <8 x float> %i.mjh)
  %i.mjj = select <8 x i1> %i.mjb, <8 x i1> %i.mjc, <8 x i1> zeroinitializer
  %i.mjk = and <8 x i1> %i.mje, %i.mjd
  %i.mjl = select <8 x i1> %i.mjb, <8 x i1> %i.mjk, <8 x i1> zeroinitializer
  %predphi4462 = select reassoc nsz arcp contract afn <8 x i1> %i.mjl, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mix
  %predphi4463 = select reassoc nsz arcp contract afn <8 x i1> %i.mjj, <8 x float> zeroinitializer, <8 x float> %predphi4462
  %predphi4464 = select reassoc nsz arcp contract afn <8 x i1> %i.mjb, <8 x float> %predphi4463, <8 x float> %i.mji
  %i.mjm = fsub reassoc nsz arcp contract afn <8 x float> %predphi4464, %strided.vec4446
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mjm, <8 x ptr> align 4 %wide.gep4457, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %index.next4465 = add nuw i64 %index4433, 8     ; 2 uses
  %vec.ind.next4466 = add nuw nsw <8 x i64> %vec.ind4434, splat (i64 16)
  %i.mjn = icmp eq i64 %index.next4465, %n.vec4428
  br i1 %i.mjn, label %scalar.ph4425.preheader, label %vector.body4432, !llvm.loop !412

._crit_edge1035.i:                                ; preds = %bb.qi, %bb.py
  %i.mjo = or disjoint i32 %i.mgo, 2
  %i.mjp = lshr i32 %.fr1059, %i.mjo              ; 2 uses
  %i.mjq = and i32 %i.mjp, 1                      ; 2 uses
  %i.mjr = icmp slt i32 %i.mjq, %.pre-phi1257
  br i1 %i.mjr, label %.lr.ph1039.i, label %._crit_edge1040.i

.lr.ph1039.i:                                     ; preds = %._crit_edge1035.i
  %i.mjs = mul nuw nsw i64 %indvars.iv1226.i, 136 ; 3 uses
  %i.mjt = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.mjs ; 2 uses
  %i.mju = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.mjs ; 2 uses
  %i.mjv = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.mjs ; 2 uses
  %i.mjw = or disjoint i32 %i.mjq, 2
  %i.mjx = zext nneg i32 %i.mjw to i64            ; 4 uses
  %i.mjy = and i32 %i.mjp, 1
  %i.mjz = zext nneg i32 %i.mjy to i64            ; 2 uses
  %i.mka = or disjoint i64 %i.mjz, 4
  %i.mkb = call i64 @llvm.smax.i64(i64 %i.mby, i64 %i.mka)
  %13 = sub nsw i64 %i.mkb, %i.mjz
  %14 = add i64 %13, -3                           ; 2 uses
  %min.iters.check4390 = icmp ult i64 %14, 16
  br i1 %min.iters.check4390, label %scalar.ph4389.preheader, label %vector.ph4391

scalar.ph4389.preheader:                          ; preds = %vector.body4396, %.lr.ph1039.i
  %indvars.iv1223.i.ph = phi i64 [ %i.mjx, %.lr.ph1039.i ], [ %i.mki, %vector.body4396 ]
  br label %scalar.ph4389

vector.ph4391:                                    ; preds = %.lr.ph1039.i
  %i.mkc = lshr i64 %14, 1
  %i.mkd = add nuw nsw i64 %i.mkc, 1              ; 2 uses
  %i.mke = and i64 %i.mkd, 7                      ; 2 uses
  %i.mkf = icmp eq i64 %i.mke, 0
  %i.mkg = select i1 %i.mkf, i64 8, i64 %i.mke
  %n.vec4392 = sub nsw i64 %i.mkd, %i.mkg         ; 2 uses
  %i.mkh = shl i64 %n.vec4392, 1
  %i.mki = add i64 %i.mkh, %i.mjx
  %broadcast.splatinsert4393 = insertelement <8 x i64> poison, i64 %i.mjx, i64 0
  %broadcast.splat4394 = shufflevector <8 x i64> %broadcast.splatinsert4393, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4395 = add nuw nsw <8 x i64> %broadcast.splat4394, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4922 = getelementptr [4 x i8], ptr %i.mjt, i64 %i.mjx
  br label %vector.body4396

vector.body4396:                                  ; preds = %vector.body4396, %vector.ph4391
  %index4397 = phi i64 [ 0, %vector.ph4391 ], [ %index.next4421, %vector.body4396 ] ; 2 uses
  %vec.ind4398 = phi <8 x i64> [ %induction4395, %vector.ph4391 ], [ %vec.ind.next4422, %vector.body4396 ] ; 3 uses
  %.idx4615 = shl nuw i64 %index4397, 3
  %gep4923 = getelementptr i8, ptr %invariant.gep4922, i64 %.idx4615 ; 7 uses
  %wide.gep4399 = getelementptr inbounds nuw [4 x i8], ptr %i.mju, <8 x i64> %vec.ind4398
  %wide.gep4400 = getelementptr inbounds nuw [4 x i8], ptr %i.mjv, <8 x i64> %vec.ind4398
  %i.mkj = getelementptr inbounds i8, ptr %gep4923, i64 -8
  %wide.vec4401 = load <16 x float>, ptr %i.mkj, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4402 = shufflevector <16 x float> %wide.vec4401, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4403 = shufflevector <16 x float> %wide.vec4401, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mkk = getelementptr inbounds nuw i8, ptr %gep4923, i64 8
  %wide.vec4404 = load <16 x float>, ptr %i.mkk, align 4, !tbaa !22, !noalias !402
  %strided.vec4405 = shufflevector <16 x float> %wide.vec4404, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mkl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4405, %strided.vec4402
  %i.mkm = fmul reassoc nsz arcp contract afn <8 x float> %i.mkl, splat (float 2.500000e-01)
  %wide.vec4406 = load <16 x float>, ptr %gep4923, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4407 = shufflevector <16 x float> %wide.vec4406, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec4408 = shufflevector <16 x float> %wide.vec4406, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mkn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4407, %strided.vec4403
  %i.mko = fadd reassoc nsz arcp contract afn <8 x float> %i.mkn, %strided.vec4408
  %i.mkp = fmul reassoc nsz arcp contract afn <8 x float> %i.mko, splat (float 5.000000e-01)
  %i.mkq = fsub reassoc nsz arcp contract afn <8 x float> %i.mkm, %i.mkp ; 3 uses
  %i.mkr = getelementptr inbounds i8, ptr %gep4923, i64 -1088
  %wide.vec4409 = load <16 x float>, ptr %i.mkr, align 4, !tbaa !22, !noalias !402
  %strided.vec4410 = shufflevector <16 x float> %wide.vec4409, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mks = getelementptr inbounds nuw i8, ptr %gep4923, i64 1088
  %wide.vec4411 = load <16 x float>, ptr %i.mks, align 4, !tbaa !22, !noalias !402
  %strided.vec4412 = shufflevector <16 x float> %wide.vec4411, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mkt = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4412, %strided.vec4410
  %i.mku = fmul reassoc nsz arcp contract afn <8 x float> %i.mkt, splat (float 2.500000e-01)
  %i.mkv = getelementptr inbounds i8, ptr %gep4923, i64 -544
  %wide.vec4413 = load <16 x float>, ptr %i.mkv, align 4, !tbaa !22, !noalias !402
  %strided.vec4414 = shufflevector <16 x float> %wide.vec4413, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mkw = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4414, %strided.vec4407
  %i.mkx = getelementptr inbounds nuw i8, ptr %gep4923, i64 544
  %wide.vec4415 = load <16 x float>, ptr %i.mkx, align 4, !tbaa !22, !noalias !402
  %strided.vec4416 = shufflevector <16 x float> %wide.vec4415, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mky = fadd reassoc nsz arcp contract afn <8 x float> %i.mkw, %strided.vec4416
  %i.mkz = fmul reassoc nsz arcp contract afn <8 x float> %i.mky, splat (float 5.000000e-01)
  %i.mla = fsub reassoc nsz arcp contract afn <8 x float> %i.mku, %i.mkz ; 3 uses
  %i.mlb = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.mkq, splat (float -1.000000e+00) ; 2 uses
  %i.mlc = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.mkq, zeroinitializer
  %i.mld = and <8 x i1> %i.mlb, %i.mlc
  %predphi4417 = select reassoc nsz arcp contract afn <8 x i1> %i.mld, <8 x float> zeroinitializer, <8 x float> %i.mkq
  %predphi4418 = select reassoc nsz arcp contract afn <8 x i1> %i.mlb, <8 x float> %predphi4417, <8 x float> splat (float -1.000000e+00)
  %i.mle = fadd reassoc nsz arcp contract afn <8 x float> %predphi4418, %strided.vec4407
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mle, <8 x ptr> align 4 %wide.gep4399, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %i.mlf = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.mla, splat (float -1.000000e+00) ; 2 uses
  %i.mlg = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.mla, zeroinitializer
  %i.mlh = and <8 x i1> %i.mlf, %i.mlg
  %predphi4419 = select reassoc nsz arcp contract afn <8 x i1> %i.mlh, <8 x float> zeroinitializer, <8 x float> %i.mla
  %predphi4420 = select reassoc nsz arcp contract afn <8 x i1> %i.mlf, <8 x float> %predphi4419, <8 x float> splat (float -1.000000e+00)
  %i.mli = fadd reassoc nsz arcp contract afn <8 x float> %predphi4420, %strided.vec4407
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mli, <8 x ptr> align 4 %wide.gep4400, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %index.next4421 = add nuw i64 %index4397, 8     ; 2 uses
  %vec.ind.next4422 = add nuw nsw <8 x i64> %vec.ind4398, splat (i64 16)
  %i.mlj = icmp eq i64 %index.next4421, %n.vec4392
  br i1 %i.mlj, label %scalar.ph4389.preheader, label %vector.body4396, !llvm.loop !413

scalar.ph4425:                                    ; preds = %scalar.ph4425.preheader, %bb.qi
  %indvars.iv1220.i = phi i64 [ %indvars.iv.next1221.i, %bb.qi ], [ %indvars.iv1220.i.ph, %scalar.ph4425.preheader ] ; 4 uses
  %i.mlk = getelementptr inbounds nuw [4 x i8], ptr %i.mgt, i64 %indvars.iv1220.i ; 13 uses
  %i.mll = getelementptr inbounds i8, ptr %i.mlk, i64 -548
  %i.mlm = load float, ptr %i.mll, align 4, !tbaa !22, !noalias !402
  %i.mln = getelementptr inbounds i8, ptr %i.mlk, i64 -540
  %i.mlo = load float, ptr %i.mln, align 4, !tbaa !22, !noalias !402
  %i.mlp = fadd reassoc nsz arcp contract afn float %i.mlo, %i.mlm
  %i.mlq = getelementptr inbounds nuw i8, ptr %i.mlk, i64 540
  %i.mlr = load float, ptr %i.mlq, align 4, !tbaa !22, !noalias !402
  %i.mls = fadd reassoc nsz arcp contract afn float %i.mlp, %i.mlr
  %i.mlt = getelementptr inbounds nuw i8, ptr %i.mlk, i64 548
  %i.mlu = load float, ptr %i.mlt, align 4, !tbaa !22, !noalias !402
  %i.mlv = fadd reassoc nsz arcp contract afn float %i.mls, %i.mlu
  %i.mlw = fmul reassoc nsz arcp contract afn float %i.mlv, 6.250000e-02
  %i.mlx = load float, ptr %i.mlk, align 4, !tbaa !22, !noalias !402 ; 7 uses
  %i.mly = fmul reassoc nsz arcp contract afn float %i.mlx, 2.500000e-01
  %i.mlz = fadd reassoc nsz arcp contract afn float %i.mlw, %i.mly ; 2 uses
  %i.mma = getelementptr inbounds nuw [4 x i8], ptr %i.mgu, i64 %indvars.iv1220.i
  %i.mmb = getelementptr inbounds i8, ptr %i.mlk, i64 -8
  %i.mmc = load float, ptr %i.mmb, align 4, !tbaa !22, !noalias !402
  %i.mmd = getelementptr inbounds nuw i8, ptr %i.mlk, i64 8
  %i.mme = load float, ptr %i.mmd, align 4, !tbaa !22, !noalias !402
  %i.mmf = fadd reassoc nsz arcp contract afn float %i.mme, %i.mmc
  %i.mmg = fmul reassoc nsz arcp contract afn float %i.mmf, 2.500000e-01
  %i.mmh = getelementptr inbounds i8, ptr %i.mlk, i64 -4
  %i.mmi = load float, ptr %i.mmh, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.mmj = fadd reassoc nsz arcp contract afn float %i.mmi, %i.mlx
  %i.mmk = getelementptr inbounds nuw i8, ptr %i.mlk, i64 4
  %i.mml = load float, ptr %i.mmk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.mmm = fadd reassoc nsz arcp contract afn float %i.mmj, %i.mml
  %i.mmn = fmul reassoc nsz arcp contract afn float %i.mmm, 5.000000e-01
  %i.mmo = fsub reassoc nsz arcp contract afn float %i.mmn, %i.mmg ; 6 uses
  %i.mmp = fmul reassoc nsz arcp contract afn float %i.mmo, 5.000000e-01
  %i.mmq = fadd reassoc nsz arcp contract afn float %i.mmp, %i.mlz
  %i.mmr = fmul reassoc nsz arcp contract afn float %i.mmq, 1.750000e+00
  %i.mms = fcmp reassoc nsz arcp contract afn ogt float %i.mlx, %i.mmr
  br i1 %i.mms, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %scalar.ph4425
  %i.mmt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mmo, float %i.mmi)
  %i.mmu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mmo, float %i.mmi)
  %i.mmv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mml, float %i.mmu)
  %i.mmw = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mmt, float %i.mmv)
  br label %bb.qd

bb.qa:                                            ; preds = %scalar.ph4425
  %i.mmx = fcmp reassoc nsz arcp contract afn ult float %i.mmo, 0.000000e+00
  br i1 %i.mmx, label %bb.qd, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.mmy = fcmp reassoc nsz arcp contract afn ugt float %i.mmo, 1.000000e+00
  br i1 %i.mmy, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.qb, %bb.qa, %bb.pz
  %i.mmz = phi reassoc nsz arcp contract afn float [ %i.mmw, %bb.pz ], [ 1.000000e+00, %bb.qb ], [ %i.mmo, %bb.qc ], [ 0.000000e+00, %bb.qa ]
  %i.mna = fsub reassoc nsz arcp contract afn float %i.mmz, %i.mlx
  store float %i.mna, ptr %i.mma, align 4, !tbaa !22, !noalias !402
  %i.mnb = getelementptr inbounds nuw [4 x i8], ptr %i.mgv, i64 %indvars.iv1220.i
  %i.mnc = getelementptr inbounds i8, ptr %i.mlk, i64 -1088
  %i.mnd = load float, ptr %i.mnc, align 4, !tbaa !22, !noalias !402
  %i.mne = getelementptr inbounds nuw i8, ptr %i.mlk, i64 1088
  %i.mnf = load float, ptr %i.mne, align 4, !tbaa !22, !noalias !402
  %i.mng = fadd reassoc nsz arcp contract afn float %i.mnf, %i.mnd
  %i.mnh = fmul reassoc nsz arcp contract afn float %i.mng, 2.500000e-01
  %i.mni = getelementptr inbounds i8, ptr %i.mlk, i64 -544
  %i.mnj = load float, ptr %i.mni, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.mnk = fadd reassoc nsz arcp contract afn float %i.mnj, %i.mlx
  %i.mnl = getelementptr inbounds nuw i8, ptr %i.mlk, i64 544
  %i.mnm = load float, ptr %i.mnl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.mnn = fadd reassoc nsz arcp contract afn float %i.mnk, %i.mnm
  %i.mno = fmul reassoc nsz arcp contract afn float %i.mnn, 5.000000e-01
  %i.mnp = fsub reassoc nsz arcp contract afn float %i.mno, %i.mnh ; 6 uses
  %i.mnq = fmul reassoc nsz arcp contract afn float %i.mnp, 5.000000e-01
  %i.mnr = fadd reassoc nsz arcp contract afn float %i.mnq, %i.mlz
  %i.mns = fmul reassoc nsz arcp contract afn float %i.mnr, 1.750000e+00
  %i.mnt = fcmp reassoc nsz arcp contract afn ogt float %i.mlx, %i.mns
  br i1 %i.mnt, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.mnu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mnp, float %i.mnj)
  %i.mnv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mnp, float %i.mnj)
  %i.mnw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mnm, float %i.mnv)
  %i.mnx = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mnu, float %i.mnw)
  br label %bb.qi

bb.qf:                                            ; preds = %bb.qd
  %i.mny = fcmp reassoc nsz arcp contract afn ult float %i.mnp, 0.000000e+00
  br i1 %i.mny, label %bb.qi, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.mnz = fcmp reassoc nsz arcp contract afn ugt float %i.mnp, 1.000000e+00
  br i1 %i.mnz, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg, %bb.qf, %bb.qe
  %i.moa = phi reassoc nsz arcp contract afn float [ %i.mnx, %bb.qe ], [ 1.000000e+00, %bb.qg ], [ %i.mnp, %bb.qh ], [ 0.000000e+00, %bb.qf ]
  %i.mob = fsub reassoc nsz arcp contract afn float %i.moa, %i.mlx
  store float %i.mob, ptr %i.mnb, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1221.i = add nuw nsw i64 %indvars.iv1220.i, 2 ; 2 uses
  %i.moc = icmp slt i64 %indvars.iv.next1221.i, %i.mby
  br i1 %i.moc, label %scalar.ph4425, label %._crit_edge1035.i, !llvm.loop !414

._crit_edge1040.i:                                ; preds = %bb.qo, %._crit_edge1035.i
  %indvars.iv.next1227.i = add nuw nsw i64 %indvars.iv1226.i, 1
  %exitcond1106.not = icmp eq i64 %indvars.iv1226.i, %umax
  br i1 %exitcond1106.not, label %.preheader1018.i, label %bb.py

scalar.ph4389:                                    ; preds = %scalar.ph4389.preheader, %bb.qo
  %indvars.iv1223.i = phi i64 [ %indvars.iv.next1224.i, %bb.qo ], [ %indvars.iv1223.i.ph, %scalar.ph4389.preheader ] ; 4 uses
  %i.mod = getelementptr inbounds nuw [4 x i8], ptr %i.mjt, i64 %indvars.iv1223.i ; 9 uses
  %i.moe = getelementptr inbounds nuw [4 x i8], ptr %i.mju, i64 %indvars.iv1223.i
  %i.mof = getelementptr inbounds nuw [4 x i8], ptr %i.mjv, i64 %indvars.iv1223.i
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.mqd = getelementptr inbounds nuw [4 x i8], ptr %i.mpy, i64 %i.mpz
  %wide.load4367 = load <8 x float>, ptr %i.mqa, align 16, !tbaa !22, !noalias !402
  %i.mqe = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4367, splat (float f0x3E51104A)
  %i.mqf = getelementptr inbounds i8, ptr %i.mqa, i64 -4
  %wide.load4368 = load <8 x float>, ptr %i.mqf, align 4, !tbaa !22, !noalias !402
  %i.mqg = getelementptr inbounds nuw i8, ptr %i.mqa, i64 4
  %wide.load4369 = load <8 x float>, ptr %i.mqg, align 4, !tbaa !22, !noalias !402
  %i.mqh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4369, %wide.load4368
  %i.mqi = fmul reassoc nsz arcp contract afn <8 x float> %i.mqh, splat (float f0x3E387F7D)
  %i.mqj = fadd reassoc nsz arcp contract afn <8 x float> %i.mqi, %i.mqe
  %i.mqk = getelementptr inbounds i8, ptr %i.mqa, i64 -8
  %wide.load4370 = load <8 x float>, ptr %i.mqk, align 8, !tbaa !22, !noalias !402
  %i.mql = getelementptr inbounds nuw i8, ptr %i.mqa, i64 8
  %wide.load4371 = load <8 x float>, ptr %i.mql, align 8, !tbaa !22, !noalias !402
  %i.mqm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4371, %wide.load4370
  %i.mqn = fmul reassoc nsz arcp contract afn <8 x float> %i.mqm, splat (float f0x3DFD9B65)
  %i.mqo = fadd reassoc nsz arcp contract afn <8 x float> %i.mqj, %i.mqn
  %i.mqp = getelementptr inbounds i8, ptr %i.mqa, i64 -12
  %wide.load4372 = load <8 x float>, ptr %i.mqp, align 4, !tbaa !22, !noalias !402
  %i.mqq = getelementptr inbounds nuw i8, ptr %i.mqa, i64 12
  %wide.load4373 = load <8 x float>, ptr %i.mqq, align 4, !tbaa !22, !noalias !402
  %i.mqr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4373, %wide.load4372
  %i.mqs = fmul reassoc nsz arcp contract afn <8 x float> %i.mqr, splat (float f0x3D87BEFD)
  %i.mqt = fadd reassoc nsz arcp contract afn <8 x float> %i.mqo, %i.mqs
  %i.mqu = getelementptr inbounds i8, ptr %i.mqa, i64 -16
  %wide.load4374 = load <8 x float>, ptr %i.mqu, align 32, !tbaa !22, !noalias !402
  %i.mqv = getelementptr inbounds nuw i8, ptr %i.mqa, i64 16
  %wide.load4375 = load <8 x float>, ptr %i.mqv, align 32, !tbaa !22, !noalias !402
  %i.mqw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4375, %wide.load4374
  %i.mqx = fmul reassoc nsz arcp contract afn <8 x float> %i.mqw, splat (float f0x3CE25978)
  %i.mqy = fadd reassoc nsz arcp contract afn <8 x float> %i.mqt, %i.mqx
  store <8 x float> %i.mqy, ptr %i.mqc, align 16, !tbaa !22, !noalias !402
  %wide.load4376 = load <8 x float>, ptr %i.mqb, align 16, !tbaa !22, !noalias !402
  %i.mqz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4376, splat (float f0x3E51104A)
  %i.mra = getelementptr inbounds i8, ptr %i.mqb, i64 -544
  %wide.load4377 = load <8 x float>, ptr %i.mra, align 16, !tbaa !22, !noalias !402
  %i.mrb = getelementptr inbounds nuw i8, ptr %i.mqb, i64 544
  %wide.load4378 = load <8 x float>, ptr %i.mrb, align 16, !tbaa !22, !noalias !402
  %i.mrc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4378, %wide.load4377
  %i.mrd = fmul reassoc nsz arcp contract afn <8 x float> %i.mrc, splat (float f0x3E387F7D)
  %i.mre = fadd reassoc nsz arcp contract afn <8 x float> %i.mrd, %i.mqz
  %i.mrf = getelementptr inbounds i8, ptr %i.mqb, i64 -1088
  %wide.load4379 = load <8 x float>, ptr %i.mrf, align 16, !tbaa !22, !noalias !402
  %i.mrg = getelementptr inbounds nuw i8, ptr %i.mqb, i64 1088
  %wide.load4380 = load <8 x float>, ptr %i.mrg, align 16, !tbaa !22, !noalias !402
  %i.mrh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4380, %wide.load4379
  %i.mri = fmul reassoc nsz arcp contract afn <8 x float> %i.mrh, splat (float f0x3DFD9B65)
  %i.mrj = fadd reassoc nsz arcp contract afn <8 x float> %i.mre, %i.mri
  %i.mrk = getelementptr inbounds i8, ptr %i.mqb, i64 -1632
  %wide.load4381 = load <8 x float>, ptr %i.mrk, align 16, !tbaa !22, !noalias !402
  %i.mrl = getelementptr inbounds nuw i8, ptr %i.mqb, i64 1632
  %wide.load4382 = load <8 x float>, ptr %i.mrl, align 16, !tbaa !22, !noalias !402
  %i.mrm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4382, %wide.load4381
  %i.mrn = fmul reassoc nsz arcp contract afn <8 x float> %i.mrm, splat (float f0x3D87BEFD)
  %i.mro = fadd reassoc nsz arcp contract afn <8 x float> %i.mrj, %i.mrn
  %i.mrp = getelementptr inbounds i8, ptr %i.mqb, i64 -2176
  %wide.load4383 = load <8 x float>, ptr %i.mrp, align 16, !tbaa !22, !noalias !402
  %i.mrq = getelementptr inbounds nuw i8, ptr %i.mqb, i64 2176
  %wide.load4384 = load <8 x float>, ptr %i.mrq, align 16, !tbaa !22, !noalias !402
  %i.mrr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4384, %wide.load4383
  %i.mrs = fmul reassoc nsz arcp contract afn <8 x float> %i.mrr, splat (float f0x3CE25978)
  %i.mrt = fadd reassoc nsz arcp contract afn <8 x float> %i.mro, %i.mrs
  store <8 x float> %i.mrt, ptr %i.mqd, align 16, !tbaa !22, !noalias !402
  %index.next4385 = add nuw i64 %index4366, 8     ; 2 uses
  %i.mru = icmp eq i64 %index.next4385, %n.vec4364
  br i1 %i.mru, label %middle.block4386, label %vector.body4365, !llvm.loop !416

middle.block4386:                                 ; preds = %vector.body4365
  br i1 %cmp.n4387, label %._crit_edge1045.i, label %scalar.ph4361.preheader

scalar.ph4361.preheader:                          ; preds = %.preheader1012.i, %middle.block4386
  %indvars.iv1229.i.ph = phi i64 [ 4, %.preheader1012.i ], [ %i.mgm, %middle.block4386 ]
  br label %scalar.ph4361

._crit_edge1045.i:                                ; preds = %scalar.ph4361, %middle.block4386
  %indvars.iv.next1233.i = add nuw nsw i64 %indvars.iv1232.i, 1 ; 2 uses
  %exitcond1116.not = icmp eq i64 %indvars.iv.next1233.i, %smax1142
  br i1 %exitcond1116.not, label %.lr.ph1052.i, label %.preheader1012.i

scalar.ph4361:                                    ; preds = %scalar.ph4361.preheader, %scalar.ph4361
  %indvars.iv1229.i = phi i64 [ %indvars.iv.next1230.i, %scalar.ph4361 ], [ %indvars.iv1229.i.ph, %scalar.ph4361.preheader ] ; 6 uses
  %i.mrv = getelementptr inbounds nuw [4 x i8], ptr %i.mpv, i64 %indvars.iv1229.i ; 9 uses
  %i.mrw = getelementptr inbounds nuw [4 x i8], ptr %i.mpw, i64 %indvars.iv1229.i ; 9 uses
  %i.mrx = getelementptr inbounds nuw [4 x i8], ptr %i.mpx, i64 %indvars.iv1229.i
  %i.mry = getelementptr inbounds nuw [4 x i8], ptr %i.mpy, i64 %indvars.iv1229.i
  %i.mrz = load float, ptr %i.mrv, align 4, !tbaa !22, !noalias !402
  %i.msa = fmul reassoc nsz arcp contract afn float %i.mrz, f0x3E51104A
  %i.msb = getelementptr inbounds i8, ptr %i.mrv, i64 -4
  %i.msc = load float, ptr %i.msb, align 4, !tbaa !22, !noalias !402
  %i.msd = getelementptr inbounds nuw i8, ptr %i.mrv, i64 4
  %i.mse = load float, ptr %i.msd, align 4, !tbaa !22, !noalias !402
  %i.msf = fadd reassoc nsz arcp contract afn float %i.mse, %i.msc
  %i.msg = fmul reassoc nsz arcp contract afn float %i.msf, f0x3E387F7D
  %i.msh = fadd reassoc nsz arcp contract afn float %i.msg, %i.msa
  %i.msi = getelementptr inbounds i8, ptr %i.mrv, i64 -8
  %i.msj = load float, ptr %i.msi, align 4, !tbaa !22, !noalias !402
  %i.msk = getelementptr inbounds nuw i8, ptr %i.mrv, i64 8
  %i.msl = load float, ptr %i.msk, align 4, !tbaa !22, !noalias !402
  %i.msm = fadd reassoc nsz arcp contract afn float %i.msl, %i.msj
  %i.msn = fmul reassoc nsz arcp contract afn float %i.msm, f0x3DFD9B65
  %i.mso = fadd reassoc nsz arcp contract afn float %i.msh, %i.msn
  %i.msp = getelementptr inbounds i8, ptr %i.mrv, i64 -12
  %i.msq = load float, ptr %i.msp, align 4, !tbaa !22, !noalias !402
  %i.msr = getelementptr inbounds nuw i8, ptr %i.mrv, i64 12
  %i.mss = load float, ptr %i.msr, align 4, !tbaa !22, !noalias !402
  %i.mst = fadd reassoc nsz arcp contract afn float %i.mss, %i.msq
  %i.msu = fmul reassoc nsz arcp contract afn float %i.mst, f0x3D87BEFD
  %i.msv = fadd reassoc nsz arcp contract afn float %i.mso, %i.msu
  %i.msw = getelementptr inbounds i8, ptr %i.mrv, i64 -16
  %i.msx = load float, ptr %i.msw, align 4, !tbaa !22, !noalias !402
  %i.msy = getelementptr inbounds nuw i8, ptr %i.mrv, i64 16
  %i.msz = load float, ptr %i.msy, align 4, !tbaa !22, !noalias !402
  %i.mta = fadd reassoc nsz arcp contract afn float %i.msz, %i.msx
  %i.mtb = fmul reassoc nsz arcp contract afn float %i.mta, f0x3CE25978
  %i.mtc = fadd reassoc nsz arcp contract afn float %i.msv, %i.mtb
  store float %i.mtc, ptr %i.mrx, align 4, !tbaa !22, !noalias !402
  %i.mtd = load float, ptr %i.mrw, align 4, !tbaa !22, !noalias !402
  %i.mte = fmul reassoc nsz arcp contract afn float %i.mtd, f0x3E51104A
  %i.mtf = getelementptr inbounds i8, ptr %i.mrw, i64 -544
  %i.mtg = load float, ptr %i.mtf, align 4, !tbaa !22, !noalias !402
  %i.mth = getelementptr inbounds nuw i8, ptr %i.mrw, i64 544
  %i.mti = load float, ptr %i.mth, align 4, !tbaa !22, !noalias !402
  %i.mtj = fadd reassoc nsz arcp contract afn float %i.mti, %i.mtg
  %i.mtk = fmul reassoc nsz arcp contract afn float %i.mtj, f0x3E387F7D
  %i.mtl = fadd reassoc nsz arcp contract afn float %i.mtk, %i.mte
  %i.mtm = getelementptr inbounds i8, ptr %i.mrw, i64 -1088
  %i.mtn = load float, ptr %i.mtm, align 4, !tbaa !22, !noalias !402
  %i.mto = getelementptr inbounds nuw i8, ptr %i.mrw, i64 1088
  %i.mtp = load float, ptr %i.mto, align 4, !tbaa !22, !noalias !402
  %i.mtq = fadd reassoc nsz arcp contract afn float %i.mtp, %i.mtn
  %i.mtr = fmul reassoc nsz arcp contract afn float %i.mtq, f0x3DFD9B65
  %i.mts = fadd reassoc nsz arcp contract afn float %i.mtl, %i.mtr
  %i.mtt = getelementptr inbounds i8, ptr %i.mrw, i64 -1632
  %i.mtu = load float, ptr %i.mtt, align 4, !tbaa !22, !noalias !402
  %i.mtv = getelementptr inbounds nuw i8, ptr %i.mrw, i64 1632
  %i.mtw = load float, ptr %i.mtv, align 4, !tbaa !22, !noalias !402
  %i.mtx = fadd reassoc nsz arcp contract afn float %i.mtw, %i.mtu
  %i.mty = fmul reassoc nsz arcp contract afn float %i.mtx, f0x3D87BEFD
  %i.mtz = fadd reassoc nsz arcp contract afn float %i.mts, %i.mty
  %i.mua = getelementptr inbounds i8, ptr %i.mrw, i64 -2176
  %i.mub = load float, ptr %i.mua, align 4, !tbaa !22, !noalias !402
  %i.muc = getelementptr inbounds nuw i8, ptr %i.mrw, i64 2176
  %i.mud = load float, ptr %i.muc, align 4, !tbaa !22, !noalias !402
  %i.mue = fadd reassoc nsz arcp contract afn float %i.mud, %i.mub
  %i.muf = fmul reassoc nsz arcp contract afn float %i.mue, f0x3CE25978
  %i.mug = fadd reassoc nsz arcp contract afn float %i.mtz, %i.muf
  store float %i.mug, ptr %i.mry, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1230.i = add nuw nsw i64 %indvars.iv1229.i, 1
  %exitcond1113.not = icmp eq i64 %indvars.iv1229.i, %i.mbb
  br i1 %exitcond1113.not, label %._crit_edge1045.i, label %scalar.ph4361, !llvm.loop !417

._crit_edge1053.i:                                ; preds = %._crit_edge1050.i, %.preheader1018.i, %.preheader1019.i
  br i1 %i.lyc, label %.lr.ph1064.i, label %._crit_edge1078.i

.lr.ph1064.i:                                     ; preds = %._crit_edge1053.i
  %i.muh = add nsw i32 %i.mbc, -4
  %i.mui = icmp sgt i32 %i.mbf, -8
  br i1 %i.mui, label %.lr.ph1059.preheader.i, label %.preheader1016.i

.lr.ph1059.preheader.i:                           ; preds = %.lr.ph1064.i
  %i.muj = sext i32 %i.mbh to i64
  %i.muk = icmp eq i32 %i.mac, -7
  %i.mul = and i32 %i.mad, -2
  %i.mum = sext i32 %i.mul to i64
  %i.mun = add nsw i64 %i.mum, 6
  %i.muo = and i32 %i.mad, 1
  %lcmp.mod4784.not = icmp eq i32 %i.muo, 0
  %lcmp.mod4785 = trunc i32 %i.mad to i1
  %i.mup = icmp eq i32 %i.maa, -7
  %i.muq = and i32 %i.mab, -2
  %i.mur = sext i32 %i.muq to i64
  %i.mus = add nsw i64 %i.mur, 6
  %i.mut = and i32 %i.mab, 1
  %lcmp.mod4792.not = icmp eq i32 %i.mut, 0
  %lcmp.mod4793 = trunc i32 %i.mab to i1
  br label %.lr.ph1059.i

bb.qp:                                            ; preds = %._crit_edge1050.i, %.lr.ph1052.i
  %indvars.iv1238.i = phi i64 [ 4, %.lr.ph1052.i ], [ %indvars.iv.next1239.i, %._crit_edge1050.i ] ; 3 uses
  %i.muu = trunc nuw nsw i64 %indvars.iv1238.i to i32
  %i.muv = shl i32 %i.muu, 2
  %i.muw = and i32 %i.muv, 28
  %i.mux = lshr i32 %.fr1059, %i.muw              ; 2 uses
  %i.muy = and i32 %i.mux, 1                      ; 2 uses
  %i.muz = icmp sgt i32 %i.mbf, %i.muy
  br i1 %i.muz, label %.lr.ph1049.i, label %._crit_edge1050.i

.lr.ph1049.i:                                     ; preds = %bb.qp
  %i.mva = mul nuw nsw i64 %indvars.iv1238.i, 136 ; 5 uses
  %i.mvb = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.mva ; 2 uses
  %i.mvc = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.mva ; 2 uses
  %i.mvd = getelementptr inbounds nuw [4 x i8], ptr %i.lwx, i64 %i.mva ; 2 uses
  %i.mve = getelementptr inbounds nuw [4 x i8], ptr %i.lwy, i64 %i.mva ; 2 uses
  %i.mvf = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.mva ; 2 uses
  %i.mvg = or disjoint i32 %i.muy, 4
  %i.mvh = zext nneg i32 %i.mvg to i64            ; 4 uses
  %i.mvi = and i32 %i.mux, 1
  %i.mvj = zext nneg i32 %i.mvi to i64            ; 2 uses
  %i.mvk = or disjoint i64 %i.mvj, 4
  %i.mvl = call i64 @llvm.smax.i64(i64 %i.mvk, i64 %i.mpt)
  %15 = sub nsw i64 %i.mvl, %i.mvj
  %16 = add i64 %15, -3                           ; 2 uses
  %min.iters.check4283 = icmp ult i64 %16, 16
  br i1 %min.iters.check4283, label %scalar.ph4282.preheader, label %vector.ph4284

scalar.ph4282.preheader:                          ; preds = %vector.body4289, %.lr.ph1049.i
  %indvars.iv1235.i.ph = phi i64 [ %i.mvh, %.lr.ph1049.i ], [ %i.mvs, %vector.body4289 ]
  br label %scalar.ph4282

vector.ph4284:                                    ; preds = %.lr.ph1049.i
  %i.mvm = lshr i64 %16, 1
  %i.mvn = add nuw nsw i64 %i.mvm, 1              ; 2 uses
  %i.mvo = and i64 %i.mvn, 7                      ; 2 uses
  %i.mvp = icmp eq i64 %i.mvo, 0
  %i.mvq = select i1 %i.mvp, i64 8, i64 %i.mvo
  %n.vec4285 = sub nsw i64 %i.mvn, %i.mvq         ; 2 uses
  %i.mvr = shl i64 %n.vec4285, 1
  %i.mvs = add i64 %i.mvr, %i.mvh
  %broadcast.splatinsert4286 = insertelement <8 x i64> poison, i64 %i.mvh, i64 0
  %broadcast.splat4287 = shufflevector <8 x i64> %broadcast.splatinsert4286, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4288 = add nuw nsw <8 x i64> %broadcast.splat4287, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4289

vector.body4289:                                  ; preds = %vector.body4289, %vector.ph4284
  %index4290 = phi i64 [ 0, %vector.ph4284 ], [ %index.next4357, %vector.body4289 ] ; 2 uses
  %vec.ind4291 = phi <8 x i64> [ %induction4288, %vector.ph4284 ], [ %vec.ind.next4358, %vector.body4289 ] ; 2 uses
  %i.mvt = shl nuw i64 %index4290, 1
  %i.mvu = or disjoint i64 %i.mvt, %i.mvh         ; 4 uses
  %i.mvv = getelementptr inbounds nuw [4 x i8], ptr %i.mvb, i64 %i.mvu ; 5 uses
  %i.mvw = getelementptr inbounds nuw [4 x i8], ptr %i.mvc, i64 %i.mvu ; 9 uses
  %i.mvx = getelementptr inbounds nuw [4 x i8], ptr %i.mvd, i64 %i.mvu ; 5 uses
  %i.mvy = getelementptr inbounds nuw [4 x i8], ptr %i.mve, i64 %i.mvu ; 9 uses
  %wide.gep4292 = getelementptr inbounds nuw [4 x i8], ptr %i.mvf, <8 x i64> %vec.ind4291
  %i.mvz = getelementptr inbounds i8, ptr %i.mvx, i64 -16
  %wide.vec4293 = load <16 x float>, ptr %i.mvz, align 4, !tbaa !22, !noalias !402
  %strided.vec4294 = shufflevector <16 x float> %wide.vec4293, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwa = getelementptr inbounds i8, ptr %i.mvx, i64 -12
  %wide.vec4295 = load <16 x float>, ptr %i.mwa, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4296 = shufflevector <16 x float> %wide.vec4295, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4297 = shufflevector <16 x float> %wide.vec4295, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mwb = getelementptr inbounds i8, ptr %i.mvx, i64 -4
  %wide.vec4298 = load <16 x float>, ptr %i.mwb, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4299 = shufflevector <16 x float> %wide.vec4298, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4300 = shufflevector <16 x float> %wide.vec4298, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.mwc = getelementptr inbounds nuw i8, ptr %i.mvx, i64 4
  %wide.vec4301 = load <16 x float>, ptr %i.mwc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4302 = shufflevector <16 x float> %wide.vec4301, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4303 = shufflevector <16 x float> %wide.vec4301, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mwd = getelementptr inbounds nuw i8, ptr %i.mvx, i64 12
  %wide.vec4304 = load <16 x float>, ptr %i.mwd, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4305 = shufflevector <16 x float> %wide.vec4304, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4306 = shufflevector <16 x float> %wide.vec4304, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mwe = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4296, %strided.vec4294
  %i.mwf = fadd reassoc nsz arcp contract afn <8 x float> %i.mwe, %strided.vec4297
  %i.mwg = fadd reassoc nsz arcp contract afn <8 x float> %i.mwf, %strided.vec4299
  %i.mwh = fadd reassoc nsz arcp contract afn <8 x float> %i.mwg, %strided.vec4300
  %i.mwi = fadd reassoc nsz arcp contract afn <8 x float> %i.mwh, %strided.vec4302
  %i.mwj = fadd reassoc nsz arcp contract afn <8 x float> %i.mwi, %strided.vec4303
  %i.mwk = fadd reassoc nsz arcp contract afn <8 x float> %i.mwj, %strided.vec4305
  %i.mwl = fadd reassoc nsz arcp contract afn <8 x float> %i.mwk, %strided.vec4306
  %i.mwm = fmul reassoc nsz arcp contract afn <8 x float> %i.mwl, splat (float f0x3DE38E39) ; 9 uses
  %i.mwn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4294, %i.mwm ; 2 uses
  %i.mwo = fmul reassoc nsz arcp contract afn <8 x float> %i.mwn, %i.mwn
  %i.mwp = fadd reassoc nsz arcp contract afn <8 x float> %i.mwo, splat (float 1.000000e-07)
  %i.mwq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4296, %i.mwm ; 2 uses
  %i.mwr = fmul reassoc nsz arcp contract afn <8 x float> %i.mwq, %i.mwq
  %i.mws = fadd reassoc nsz arcp contract afn <8 x float> %i.mwp, %i.mwr
  %i.mwt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4297, %i.mwm ; 2 uses
  %i.mwu = fmul reassoc nsz arcp contract afn <8 x float> %i.mwt, %i.mwt
  %i.mwv = fadd reassoc nsz arcp contract afn <8 x float> %i.mws, %i.mwu
  %i.mww = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4299, %i.mwm ; 2 uses
  %i.mwx = fmul reassoc nsz arcp contract afn <8 x float> %i.mww, %i.mww
  %i.mwy = fadd reassoc nsz arcp contract afn <8 x float> %i.mwv, %i.mwx
  %i.mwz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4300, %i.mwm ; 2 uses
  %i.mxa = fmul reassoc nsz arcp contract afn <8 x float> %i.mwz, %i.mwz
  %i.mxb = fadd reassoc nsz arcp contract afn <8 x float> %i.mwy, %i.mxa
  %i.mxc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4302, %i.mwm ; 2 uses
  %i.mxd = fmul reassoc nsz arcp contract afn <8 x float> %i.mxc, %i.mxc
  %i.mxe = fadd reassoc nsz arcp contract afn <8 x float> %i.mxb, %i.mxd
  %i.mxf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4303, %i.mwm ; 2 uses
  %i.mxg = fmul reassoc nsz arcp contract afn <8 x float> %i.mxf, %i.mxf
  %i.mxh = fadd reassoc nsz arcp contract afn <8 x float> %i.mxe, %i.mxg
  %i.mxi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4305, %i.mwm ; 2 uses
  %i.mxj = fmul reassoc nsz arcp contract afn <8 x float> %i.mxi, %i.mxi
  %i.mxk = fadd reassoc nsz arcp contract afn <8 x float> %i.mxh, %i.mxj
  %i.mxl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4306, %i.mwm ; 2 uses
  %i.mxm = fmul reassoc nsz arcp contract afn <8 x float> %i.mxl, %i.mxl
  %i.mxn = fadd reassoc nsz arcp contract afn <8 x float> %i.mxk, %i.mxm ; 3 uses
  %i.mxo = getelementptr inbounds i8, ptr %i.mvv, i64 -16
  %wide.vec4307 = load <16 x float>, ptr %i.mxo, align 4, !tbaa !22, !noalias !402
  %strided.vec4308 = shufflevector <16 x float> %wide.vec4307, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mxp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4294, %strided.vec4308 ; 2 uses
  %i.mxq = getelementptr inbounds i8, ptr %i.mvv, i64 -12
  %wide.vec4309 = load <16 x float>, ptr %i.mxq, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4310 = shufflevector <16 x float> %wide.vec4309, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4311 = shufflevector <16 x float> %wide.vec4309, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mxr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4296, %strided.vec4310 ; 2 uses
  %i.mxs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4297, %strided.vec4311 ; 2 uses
  %i.mxt = getelementptr inbounds i8, ptr %i.mvv, i64 -4
  %wide.vec4312 = load <16 x float>, ptr %i.mxt, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4313 = shufflevector <16 x float> %wide.vec4312, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4314 = shufflevector <16 x float> %wide.vec4312, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.mxu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4299, %strided.vec4313 ; 2 uses
  %i.mxv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4300, %strided.vec4314 ; 2 uses
  %i.mxw = getelementptr inbounds nuw i8, ptr %i.mvv, i64 4
  %wide.vec4315 = load <16 x float>, ptr %i.mxw, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4316 = shufflevector <16 x float> %wide.vec4315, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4317 = shufflevector <16 x float> %wide.vec4315, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mxx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4302, %strided.vec4316 ; 2 uses
  %i.mxy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4303, %strided.vec4317 ; 2 uses
  %i.mxz = getelementptr inbounds nuw i8, ptr %i.mvv, i64 12
  %wide.vec4318 = load <16 x float>, ptr %i.mxz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %strided.vec4319 = shufflevector <16 x float> %wide.vec4318, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4320 = shufflevector <16 x float> %wide.vec4318, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mya = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4305, %strided.vec4319 ; 2 uses
  %i.myb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4306, %strided.vec4320 ; 2 uses
  %i.myc = fmul reassoc nsz arcp contract afn <8 x float> %i.mxp, %i.mxp
  %i.myd = fadd reassoc nsz arcp contract afn <8 x float> %i.myc, splat (float 1.000000e-07)
  %i.mye = fmul reassoc nsz arcp contract afn <8 x float> %i.mxr, %i.mxr
  %i.myf = fadd reassoc nsz arcp contract afn <8 x float> %i.myd, %i.mye
  %i.myg = fmul reassoc nsz arcp contract afn <8 x float> %i.mxs, %i.mxs
  %i.myh = fadd reassoc nsz arcp contract afn <8 x float> %i.myf, %i.myg
  %i.myi = fmul reassoc nsz arcp contract afn <8 x float> %i.mxu, %i.mxu
  %i.myj = fadd reassoc nsz arcp contract afn <8 x float> %i.myh, %i.myi
  %i.myk = fmul reassoc nsz arcp contract afn <8 x float> %i.mxv, %i.mxv
  %i.myl = fadd reassoc nsz arcp contract afn <8 x float> %i.myj, %i.myk
  %i.mym = fmul reassoc nsz arcp contract afn <8 x float> %i.mxx, %i.mxx
  %i.myn = fadd reassoc nsz arcp contract afn <8 x float> %i.myl, %i.mym
  %i.myo = fmul reassoc nsz arcp contract afn <8 x float> %i.mxy, %i.mxy
  %i.myp = fadd reassoc nsz arcp contract afn <8 x float> %i.myn, %i.myo
  %i.myq = fmul reassoc nsz arcp contract afn <8 x float> %i.mya, %i.mya
  %i.myr = fadd reassoc nsz arcp contract afn <8 x float> %i.myp, %i.myq
  %i.mys = fmul reassoc nsz arcp contract afn <8 x float> %i.myb, %i.myb
  %i.myt = fadd reassoc nsz arcp contract afn <8 x float> %i.myr, %i.mys ; 3 uses
  %i.myu = fmul reassoc nsz arcp contract afn <8 x float> %i.mxn, %strided.vec4314
  %i.myv = fmul reassoc nsz arcp contract afn <8 x float> %i.myt, %strided.vec4300
  %i.myw = fadd reassoc nsz arcp contract afn <8 x float> %i.myu, %i.myv
  %i.myx = fadd reassoc nsz arcp contract afn <8 x float> %i.mxn, %i.myt ; 2 uses
  %i.myy = fmul reassoc nsz arcp contract afn <8 x float> %i.mxn, %i.myt
  %i.myz = fdiv reassoc nsz arcp contract afn <8 x float> %i.myy, %i.myx ; 2 uses
  %i.mza = getelementptr inbounds i8, ptr %i.mvy, i64 -2176
  %wide.vec4321 = load <16 x float>, ptr %i.mza, align 4, !tbaa !22, !noalias !402
  %strided.vec4322 = shufflevector <16 x float> %wide.vec4321, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzb = getelementptr inbounds i8, ptr %i.mvy, i64 -1632
  %wide.vec4323 = load <16 x float>, ptr %i.mzb, align 4, !tbaa !22, !noalias !402
  %strided.vec4324 = shufflevector <16 x float> %wide.vec4323, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzc = getelementptr inbounds i8, ptr %i.mvy, i64 -1088
  %wide.vec4325 = load <16 x float>, ptr %i.mzc, align 4, !tbaa !22, !noalias !402
  %strided.vec4326 = shufflevector <16 x float> %wide.vec4325, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzd = getelementptr inbounds i8, ptr %i.mvy, i64 -544
  %wide.vec4327 = load <16 x float>, ptr %i.mzd, align 4, !tbaa !22, !noalias !402
  %strided.vec4328 = shufflevector <16 x float> %wide.vec4327, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %wide.vec4329 = load <16 x float>, ptr %i.mvy, align 4, !tbaa !22, !noalias !402
  %strided.vec4330 = shufflevector <16 x float> %wide.vec4329, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.mze = getelementptr inbounds nuw i8, ptr %i.mvy, i64 544
  %wide.vec4331 = load <16 x float>, ptr %i.mze, align 4, !tbaa !22, !noalias !402
  %strided.vec4332 = shufflevector <16 x float> %wide.vec4331, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzf = getelementptr inbounds nuw i8, ptr %i.mvy, i64 1088
  %wide.vec4333 = load <16 x float>, ptr %i.mzf, align 4, !tbaa !22, !noalias !402
  %strided.vec4334 = shufflevector <16 x float> %wide.vec4333, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzg = getelementptr inbounds nuw i8, ptr %i.mvy, i64 1632
  %wide.vec4335 = load <16 x float>, ptr %i.mzg, align 4, !tbaa !22, !noalias !402
  %strided.vec4336 = shufflevector <16 x float> %wide.vec4335, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzh = getelementptr inbounds nuw i8, ptr %i.mvy, i64 2176
  %wide.vec4337 = load <16 x float>, ptr %i.mzh, align 4, !tbaa !22, !noalias !402
  %strided.vec4338 = shufflevector <16 x float> %wide.vec4337, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mzi = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4324, %strided.vec4322
  %i.mzj = fadd reassoc nsz arcp contract afn <8 x float> %i.mzi, %strided.vec4326
  %i.mzk = fadd reassoc nsz arcp contract afn <8 x float> %i.mzj, %strided.vec4328
  %i.mzl = fadd reassoc nsz arcp contract afn <8 x float> %i.mzk, %strided.vec4330
  %i.mzm = fadd reassoc nsz arcp contract afn <8 x float> %i.mzl, %strided.vec4332
  %i.mzn = fadd reassoc nsz arcp contract afn <8 x float> %i.mzm, %strided.vec4334
  %i.mzo = fadd reassoc nsz arcp contract afn <8 x float> %i.mzn, %strided.vec4336
  %i.mzp = fadd reassoc nsz arcp contract afn <8 x float> %i.mzo, %strided.vec4338
  %i.mzq = fmul reassoc nsz arcp contract afn <8 x float> %i.mzp, splat (float f0x3DE38E39) ; 9 uses
  %i.mzr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4322, %i.mzq ; 2 uses
  %i.mzs = fmul reassoc nsz arcp contract afn <8 x float> %i.mzr, %i.mzr
  %i.mzt = fadd reassoc nsz arcp contract afn <8 x float> %i.mzs, splat (float 1.000000e-07)
  %i.mzu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4324, %i.mzq ; 2 uses
  %i.mzv = fmul reassoc nsz arcp contract afn <8 x float> %i.mzu, %i.mzu
  %i.mzw = fadd reassoc nsz arcp contract afn <8 x float> %i.mzt, %i.mzv
  %i.mzx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4326, %i.mzq ; 2 uses
  %i.mzy = fmul reassoc nsz arcp contract afn <8 x float> %i.mzx, %i.mzx
  %i.mzz = fadd reassoc nsz arcp contract afn <8 x float> %i.mzw, %i.mzy
  %i.naa = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4328, %i.mzq ; 2 uses
  %i.nab = fmul reassoc nsz arcp contract afn <8 x float> %i.naa, %i.naa
  %i.nac = fadd reassoc nsz arcp contract afn <8 x float> %i.mzz, %i.nab
  %i.nad = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4330, %i.mzq ; 2 uses
  %i.nae = fmul reassoc nsz arcp contract afn <8 x float> %i.nad, %i.nad
  %i.naf = fadd reassoc nsz arcp contract afn <8 x float> %i.nac, %i.nae
  %i.nag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4332, %i.mzq ; 2 uses
  %i.nah = fmul reassoc nsz arcp contract afn <8 x float> %i.nag, %i.nag
  %i.nai = fadd reassoc nsz arcp contract afn <8 x float> %i.naf, %i.nah
  %i.naj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4334, %i.mzq ; 2 uses
  %i.nak = fmul reassoc nsz arcp contract afn <8 x float> %i.naj, %i.naj
  %i.nal = fadd reassoc nsz arcp contract afn <8 x float> %i.nai, %i.nak
  %i.nam = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4336, %i.mzq ; 2 uses
  %i.nan = fmul reassoc nsz arcp contract afn <8 x float> %i.nam, %i.nam
  %i.nao = fadd reassoc nsz arcp contract afn <8 x float> %i.nal, %i.nan
  %i.nap = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4338, %i.mzq ; 2 uses
  %i.naq = fmul reassoc nsz arcp contract afn <8 x float> %i.nap, %i.nap
  %i.nar = fadd reassoc nsz arcp contract afn <8 x float> %i.nao, %i.naq ; 3 uses
end_hunk_3
begin_hunk_4_@process:bb.a

bb.qq:                                            ; preds = %.lr.ph1059.split.us.split.us.i
  %i.nju = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.nju, align 8, !tbaa !22, !noalias !402
  br label %.lr.ph1059.split.us.split.us.i.1

.lr.ph1059.split.us.split.us.i.1:                 ; preds = %bb.qq, %.lr.ph1059.split.us.split.us.i
  %indvars.iv.next1245.i = or disjoint i64 %indvars.iv1244.i, 1 ; 2 uses
  %i.njv = getelementptr inbounds nuw [4 x i8], ptr %i.njs, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.njv, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i.1, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %.lr.ph1059.split.us.split.us.i.1
  %i.njw = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.njw, align 4, !tbaa !22, !noalias !402
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %.lr.ph1059.split.us.split.us.i.1
  %indvars.iv.next1245.i.1 = add nuw nsw i64 %indvars.iv1244.i, 2 ; 2 uses
  %niter4795.next.1 = add i64 %niter4795, 2
  %niter4795.ncmp.1.not = icmp eq i64 %niter4795, %i.mus
  br i1 %niter4795.ncmp.1.not, label %._crit_edge1060.i.loopexit4691.unr-lcssa, label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.i:                      ; preds = %bb.qv, %.lr.ph1059.split.us.split.preheader.i
  %indvars.iv1247.i = phi i64 [ 0, %.lr.ph1059.split.us.split.preheader.i ], [ %indvars.iv.next1248.i, %bb.qv ] ; 6 uses
  %.09031054.us.i = phi i32 [ %i.muh, %.lr.ph1059.split.us.split.preheader.i ], [ %i.nko, %bb.qv ] ; 2 uses
  %i.njx = trunc nuw nsw i64 %indvars.iv1247.i to i32
  %i.njy = and i32 %i.njx, 1
  %.tr.i958.us.i = or disjoint i32 %i.njy, %i.nil
  %i.njz = shl nuw nsw i32 %.tr.i958.us.i, 1
  %i.nka = lshr i32 %.fr1059, %i.njz
  %i.nkb = and i32 %i.nka, 3                      ; 3 uses
  %i.nkc = icmp ult i32 %.09031054.us.i, %i.bo
  %i.nkd = zext nneg i32 %i.nkb to i64
  %i.nke = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nkd
  %i.nkf = load ptr, ptr %i.nke, align 8, !tbaa !407, !noalias !408
  %i.nkg = getelementptr inbounds nuw [4 x i8], ptr %i.nkf, i64 %i.nin
  %i.nkh = getelementptr inbounds nuw [4 x i8], ptr %i.nkg, i64 %indvars.iv1247.i ; 2 uses
  br i1 %i.nkc, label %bb.qt, label %.thread.i563

bb.qt:                                            ; preds = %.lr.ph1059.split.us.split.i
  %gep1372.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1371.i, i64 %indvars.iv1247.i
  %i.nki = load float, ptr %gep1372.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  store float %i.nki, ptr %i.nkh, align 4, !tbaa !22, !noalias !402
  %.not955.us.i = icmp eq i32 %i.nkb, 1
  br i1 %.not955.us.i, label %bb.qv, label %bb.qu

.thread.i563:                                     ; preds = %.lr.ph1059.split.us.split.i
  store float 0.000000e+00, ptr %i.nkh, align 4, !tbaa !22, !noalias !402
  %.not955.us1351.i = icmp eq i32 %i.nkb, 1
  br i1 %.not955.us1351.i, label %bb.qv, label %.thread1352.i

bb.qu:                                            ; preds = %bb.qt
  %i.nkj = getelementptr inbounds nuw [4 x i8], ptr %i.nip, i64 %indvars.iv1247.i
  %i.nkk = load float, ptr %i.nkj, align 4, !tbaa !22, !noalias !402
  %i.nkl = fadd reassoc nsz arcp contract afn float %i.nkk, %i.nki
  br label %.thread1352.i

.thread1352.i:                                    ; preds = %bb.qu, %.thread.i563
  %i.nkm = phi reassoc nsz arcp contract afn float [ %i.nkl, %bb.qu ], [ 0.000000e+00, %.thread.i563 ]
  %i.nkn = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv1247.i
  store float %i.nkm, ptr %i.nkn, align 4, !tbaa !22, !noalias !402
  br label %bb.qv

bb.qv:                                            ; preds = %.thread1352.i, %.thread.i563, %bb.qt
  %indvars.iv.next1248.i = add nuw nsw i64 %indvars.iv1247.i, 1 ; 2 uses
  %i.nko = add nsw i32 %.09031054.us.i, 1
  %i.nkp = icmp slt i64 %indvars.iv.next1248.i, %i.muj
  br i1 %i.nkp, label %.lr.ph1059.split.us.split.i, label %._crit_edge1060.i

._crit_edge1060.i.loopexit4691.unr-lcssa:         ; preds = %bb.qs
  br i1 %lcmp.mod4792.not, label %._crit_edge1060.i, label %.lr.ph1059.split.us.split.us.i.epil.preheader

.lr.ph1059.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1060.i.loopexit4691.unr-lcssa, %.lr.ph1059.split.us.split.us.i.preheader
  %indvars.iv1244.i.epil.init = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader ], [ %indvars.iv.next1245.i.1, %._crit_edge1060.i.loopexit4691.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4793)
  %i.nkq = trunc nuw nsw i64 %indvars.iv1244.i.epil.init to i32
  %i.nkr = and i32 %i.nkq, 1
  %.tr.i958.us.us.i.epil = or disjoint i32 %i.nkr, %i.nil
  %i.nks = shl nuw nsw i32 %.tr.i958.us.us.i.epil, 1
  %i.nkt = lshr i32 %.fr1059, %i.nks
  %i.nku = and i32 %i.nkt, 3                      ; 2 uses
  %i.nkv = zext nneg i32 %i.nku to i64
  %i.nkw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nkv
  %i.nkx = load ptr, ptr %i.nkw, align 8, !tbaa !407, !noalias !408
  %i.nky = getelementptr inbounds nuw [4 x i8], ptr %i.nkx, i64 %i.nin
  %i.nkz = getelementptr inbounds nuw [4 x i8], ptr %i.nky, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nkz, align 4, !tbaa !22, !noalias !402
  %.not955.us.us.i.epil = icmp eq i32 %i.nku, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1060.i, label %bb.qw

bb.qw:                                            ; preds = %.lr.ph1059.split.us.split.us.i.epil.preheader
  %i.nla = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nla, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i.loopexit4692.unr-lcssa:         ; preds = %bb.qx
  br i1 %lcmp.mod4784.not, label %._crit_edge1060.i, label %.thread978.i.epil.preheader

.thread978.i.epil.preheader:                      ; preds = %._crit_edge1060.i.loopexit4692.unr-lcssa, %.thread978.i.preheader
  %indvars.iv1241.i.epil.init = phi i64 [ 0, %.thread978.i.preheader ], [ %indvars.iv.next1242.i.1, %._crit_edge1060.i.loopexit4692.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4785)
  %i.nlb = trunc nuw nsw i64 %indvars.iv1241.i.epil.init to i32
  %i.nlc = and i32 %i.nlb, 1
  %.tr.i958.i.epil = or disjoint i32 %i.nlc, %i.nil
  %i.nld = shl nuw nsw i32 %.tr.i958.i.epil, 1
  %i.nle = lshr i32 %.fr1059, %i.nld
  %i.nlf = and i32 %i.nle, 3                      ; 2 uses
  %i.nlg = zext nneg i32 %i.nlf to i64
  %i.nlh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nlg
  %i.nli = load ptr, ptr %i.nlh, align 8, !tbaa !407, !noalias !408
  %i.nlj = getelementptr inbounds nuw [4 x i8], ptr %i.nli, i64 %i.nin
  %i.nlk = getelementptr inbounds nuw [4 x i8], ptr %i.nlj, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nlk, align 4, !tbaa !22, !noalias !402
  %.not955979.i.epil = icmp eq i32 %i.nlf, 1
  br i1 %.not955979.i.epil, label %._crit_edge1060.i, label %.thread980.i.epil

.thread980.i.epil:                                ; preds = %.thread978.i.epil.preheader
  %i.nll = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nll, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i:                                ; preds = %._crit_edge1060.i.loopexit4692.unr-lcssa, %.thread980.i.epil, %.thread978.i.epil.preheader, %._crit_edge1060.i.loopexit4691.unr-lcssa, %bb.qw, %.lr.ph1059.split.us.split.us.i.epil.preheader, %bb.qv
  %indvars.iv.next1251.i = add nuw nsw i64 %indvars.iv1250.i, 1 ; 2 uses
  %i.nlm = add i32 %.09011061.i, 1
  %exitcond1124.not = icmp eq i64 %indvars.iv.next1251.i, %smax1123
  br i1 %exitcond1124.not, label %.preheader1016.i, label %.lr.ph1059.i

.thread978.i:                                     ; preds = %bb.qx, %.thread978.i.preheader.new
  %indvars.iv1241.i = phi i64 [ 0, %.thread978.i.preheader.new ], [ %indvars.iv.next1242.i.1, %bb.qx ] ; 4 uses
  %niter4787 = phi i64 [ 0, %.thread978.i.preheader.new ], [ %niter4787.next.1, %bb.qx ] ; 2 uses
  %i.nln = getelementptr inbounds nuw [4 x i8], ptr %i.niw, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nln, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i, label %.thread978.i.1, label %.thread980.i

.thread980.i:                                     ; preds = %.thread978.i
  %i.nlo = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nlo, align 8, !tbaa !22, !noalias !402
  br label %.thread978.i.1

.thread978.i.1:                                   ; preds = %.thread980.i, %.thread978.i
  %indvars.iv.next1242.i = or disjoint i64 %indvars.iv1241.i, 1 ; 2 uses
  %i.nlp = getelementptr inbounds nuw [4 x i8], ptr %i.njd, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nlp, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i.1, label %bb.qx, label %.thread980.i.1

.thread980.i.1:                                   ; preds = %.thread978.i.1
  %i.nlq = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nlq, align 4, !tbaa !22, !noalias !402
  br label %bb.qx

bb.qx:                                            ; preds = %.thread980.i.1, %.thread978.i.1
  %indvars.iv.next1242.i.1 = add nuw nsw i64 %indvars.iv1241.i, 2 ; 2 uses
  %niter4787.next.1 = add i64 %niter4787, 2
  %niter4787.ncmp.1.not = icmp eq i64 %niter4787, %i.mun
  br i1 %niter4787.ncmp.1.not, label %._crit_edge1060.i.loopexit4692.unr-lcssa, label %.thread978.i

.preheader1015.i:                                 ; preds = %._crit_edge1068.i
  %i.nlr = zext i32 %i.nih to i64                 ; 2 uses
  br label %bb.qz

bb.qy:                                            ; preds = %._crit_edge1068.i, %.lr.ph1070.i
  %indvar4224 = phi i64 [ %indvar.next4225, %._crit_edge1068.i ], [ 0, %.lr.ph1070.i ] ; 2 uses
  %indvars.iv1256.i = phi i64 [ %indvars.iv.next1257.i, %._crit_edge1068.i ], [ 1, %.lr.ph1070.i ] ; 3 uses
  %i.nls = mul nuw nsw i64 %indvar4224, 544       ; 6 uses
  %i.nlt = getelementptr i8, ptr %i.lwu, i64 %i.nls
  %scevgep4233 = getelementptr i8, ptr %i.nlt, i64 73988
  %i.nlu = getelementptr i8, ptr %i.lwu, i64 %i.nls
  %scevgep4235 = getelementptr i8, ptr %i.nlu, i64 75080
  %indvars.iv1256.tr.i = trunc i64 %indvars.iv1256.i to i32
  %i.nlv = shl i32 %indvars.iv1256.tr.i, 1
  %i.nlw = and i32 %i.nlv, 14                     ; 2 uses
  %i.nlx = shl nuw nsw i32 %i.nlw, 1
  %i.nly = lshr i32 %.fr1059, %i.nlx              ; 3 uses
  %i.nlz = and i32 %i.nly, 1                      ; 3 uses
  %i.nma = icmp slt i32 %i.nlz, %i.nij
  br i1 %i.nma, label %.lr.ph1067.i, label %._crit_edge1068.i

.lr.ph1067.i:                                     ; preds = %bb.qy
  %i.nmb = or disjoint i32 %i.nlz, %i.nlw
  %i.nmc = shl nuw nsw i32 %i.nmb, 1
  %i.nmd = lshr i32 %.fr1059, %i.nmc
  %i.nme = and i32 %i.nmd, 3                      ; 2 uses
  %i.nmf = zext nneg i32 %i.nme to i64
  %i.nmg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nmf
  %i.nmh = load ptr, ptr %i.nmg, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nmi = mul nuw nsw i64 %indvars.iv1256.i, 136 ; 3 uses
  %i.nmj = getelementptr inbounds nuw [4 x i8], ptr %i.nmh, i64 %i.nmi ; 2 uses
  %i.nmk = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.nmi ; 2 uses
  %i.nml = sub nsw i32 2, %i.nme
  %i.nmm = sext i32 %i.nml to i64
  %i.nmn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nmm
  %i.nmo = load ptr, ptr %i.nmn, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nmp = getelementptr inbounds nuw [4 x i8], ptr %i.nmo, i64 %i.nmi ; 2 uses
  %narrow1347.i = add nuw nsw i32 %i.nlz, 1
  %i.nmq = zext nneg i32 %narrow1347.i to i64     ; 5 uses
  %i.nmr = and i32 %i.nly, 1
  %i.nms = zext nneg i32 %i.nmr to i64            ; 2 uses
  %i.nmt = add nuw nsw i64 %i.nms, 3
  %i.nmu = call i64 @llvm.smax.i64(i64 %i.nii, i64 %i.nmt)
  %17 = sub nsw i64 %i.nmu, %i.nms
  %18 = add i64 %17, -2                           ; 2 uses
  %i.nmv = lshr i64 %18, 1
  %i.nmw = add nuw nsw i64 %i.nmv, 1              ; 2 uses
  %min.iters.check4249 = icmp ult i64 %18, 16
  br i1 %min.iters.check4249, label %scalar.ph4248.preheader, label %vector.memcheck4223

scalar.ph4248.preheader:                          ; preds = %vector.body4255, %vector.memcheck4223, %.lr.ph1067.i
  %indvars.iv1253.i.ph = phi i64 [ %i.nmq, %vector.memcheck4223 ], [ %i.nmq, %.lr.ph1067.i ], [ %i.nnu, %vector.body4255 ]
  br label %scalar.ph4248

vector.memcheck4223:                              ; preds = %.lr.ph1067.i
  %i.nmx = and i32 %i.nly, 1
  %i.nmy = zext nneg i32 %i.nmx to i64            ; 3 uses
  %i.nmz = shl nuw nsw i64 %i.nmy, 2              ; 6 uses
  %i.nna = getelementptr i8, ptr %i.nmh, i64 %i.nls
  %i.nnb = getelementptr i8, ptr %i.nna, i64 544
  %scevgep4226 = getelementptr i8, ptr %i.nnb, i64 %i.nmz ; 2 uses
  %i.nnc = add nuw nsw i64 %i.nmy, 3
  %smax4229 = call i64 @llvm.smax.i64(i64 %i.mao, i64 %i.nnc)
  %i.nnd = add nsw i64 %smax4229, -2
  %i.nne = sub i64 %i.nnd, %i.nmy
  %i.nnf = shl nuw nsw i64 %i.nne, 2
  %i.nng = and i64 %i.nnf, 9223372036854775800    ; 3 uses
  %i.nnh = getelementptr i8, ptr %i.nmh, i64 %i.nls
  %i.nni = getelementptr i8, ptr %i.nnh, i64 556
  %i.nnj = getelementptr i8, ptr %i.nni, i64 %i.nng
  %scevgep4230 = getelementptr i8, ptr %i.nnj, i64 %i.nmz ; 2 uses
  %i.nnk = getelementptr i8, ptr %i.nmo, i64 %i.nls
  %i.nnl = getelementptr i8, ptr %i.nnk, i64 4
  %scevgep4231 = getelementptr i8, ptr %i.nnl, i64 %i.nmz ; 2 uses
  %i.nnm = getelementptr i8, ptr %i.nmo, i64 %i.nls
  %i.nnn = getelementptr i8, ptr %i.nnm, i64 1096
  %i.nno = getelementptr i8, ptr %i.nnn, i64 %i.nng
  %scevgep4232 = getelementptr i8, ptr %i.nno, i64 %i.nmz ; 2 uses
  %scevgep4234 = getelementptr i8, ptr %scevgep4233, i64 %i.nmz ; 2 uses
  %i.nnp = getelementptr i8, ptr %scevgep4235, i64 %i.nng
  %scevgep4236 = getelementptr i8, ptr %i.nnp, i64 %i.nmz ; 2 uses
  %bound04237 = icmp ult ptr %scevgep4226, %scevgep4232
  %bound14238 = icmp ult ptr %scevgep4231, %scevgep4230
  %found.conflict4239 = and i1 %bound04237, %bound14238
  %bound04240 = icmp ult ptr %scevgep4226, %scevgep4236
  %bound14241 = icmp ult ptr %scevgep4234, %scevgep4230
  %found.conflict4242 = and i1 %bound04240, %bound14241
  %conflict.rdx4243 = or i1 %found.conflict4239, %found.conflict4242
  %bound04244 = icmp ult ptr %scevgep4231, %scevgep4236
  %bound14245 = icmp ult ptr %scevgep4234, %scevgep4232
  %found.conflict4246 = and i1 %bound04244, %bound14245
  %conflict.rdx4247 = or i1 %conflict.rdx4243, %found.conflict4246
  br i1 %conflict.rdx4247, label %scalar.ph4248.preheader, label %vector.ph4250

vector.ph4250:                                    ; preds = %vector.memcheck4223
  %i.nnq = and i64 %i.nmw, 7                      ; 2 uses
  %i.nnr = icmp eq i64 %i.nnq, 0
  %i.nns = select i1 %i.nnr, i64 8, i64 %i.nnq
  %n.vec4251 = sub nsw i64 %i.nmw, %i.nns         ; 2 uses
  %i.nnt = shl i64 %n.vec4251, 1
  %i.nnu = add i64 %i.nnt, %i.nmq
  %broadcast.splatinsert4252 = insertelement <8 x i64> poison, i64 %i.nmq, i64 0
  %broadcast.splat4253 = shufflevector <8 x i64> %broadcast.splatinsert4252, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4254 = add nuw nsw <8 x i64> %broadcast.splat4253, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4924 = getelementptr [4 x i8], ptr %i.nmk, i64 %i.nmq
  br label %vector.body4255

vector.body4255:                                  ; preds = %vector.body4255, %vector.ph4250
  %index4256 = phi i64 [ 0, %vector.ph4250 ], [ %index.next4278, %vector.body4255 ] ; 2 uses
  %vec.ind4257 = phi <8 x i64> [ %induction4254, %vector.ph4250 ], [ %vec.ind.next4279, %vector.body4255 ] ; 3 uses
  %wide.gep4258 = getelementptr inbounds nuw [4 x i8], ptr %i.nmj, <8 x i64> %vec.ind4257 ; 2 uses
  %i.nnv = extractelement <8 x ptr> %wide.gep4258, i64 0 ; 2 uses
  %.idx4616 = shl nuw i64 %index4256, 3
  %gep4925 = getelementptr i8, ptr %invariant.gep4924, i64 %.idx4616 ; 4 uses
  %i.nnw = getelementptr inbounds i8, ptr %gep4925, i64 -4
  %wide.vec4259 = load <16 x float>, ptr %i.nnw, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4260 = shufflevector <16 x float> %wide.vec4259, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4261 = shufflevector <16 x float> %wide.vec4259, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnx = getelementptr inbounds i8, ptr %i.nnv, i64 -4
  %wide.vec4262 = load <16 x float>, ptr %i.nnx, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4263 = shufflevector <16 x float> %wide.vec4262, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nny = getelementptr inbounds nuw i8, ptr %i.nnv, i64 4
  %wide.vec4264 = load <16 x float>, ptr %i.nny, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4265 = shufflevector <16 x float> %wide.vec4264, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4266 = load <16 x float>, ptr %gep4925, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4267 = shufflevector <16 x float> %wide.vec4266, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4268 = shufflevector <16 x float> %wide.vec4266, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4263, %strided.vec4265
  %i.noa = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4260, %strided.vec4268
  %i.nob = fsub reassoc nsz arcp contract afn <8 x float> %i.nnz, %i.noa
  %i.noc = fmul reassoc nsz arcp contract afn <8 x float> %i.nob, splat (float 5.000000e-01)
  %i.nod = fadd reassoc nsz arcp contract afn <8 x float> %i.noc, %strided.vec4261
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nod, <8 x ptr> align 4 %wide.gep4258, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !423, !noalias !425
  %wide.gep4269 = getelementptr inbounds nuw [4 x i8], ptr %i.nmp, <8 x i64> %vec.ind4257 ; 2 uses
  %i.noe = extractelement <8 x ptr> %wide.gep4269, i64 0 ; 2 uses
  %i.nof = getelementptr inbounds i8, ptr %i.noe, i64 -544
  %wide.vec4270 = load <16 x float>, ptr %i.nof, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4271 = shufflevector <16 x float> %wide.vec4270, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nog = getelementptr inbounds i8, ptr %gep4925, i64 -544
  %wide.vec4272 = load <16 x float>, ptr %i.nog, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4273 = shufflevector <16 x float> %wide.vec4272, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noh = getelementptr inbounds nuw i8, ptr %i.noe, i64 544
  %wide.vec4274 = load <16 x float>, ptr %i.noh, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4275 = shufflevector <16 x float> %wide.vec4274, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noi = getelementptr inbounds nuw i8, ptr %gep4925, i64 544
  %wide.vec4276 = load <16 x float>, ptr %i.noi, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4277 = shufflevector <16 x float> %wide.vec4276, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4271, %strided.vec4275
  %i.nok = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4273, %strided.vec4277
  %i.nol = fsub reassoc nsz arcp contract afn <8 x float> %i.noj, %i.nok
  %i.nom = fmul reassoc nsz arcp contract afn <8 x float> %i.nol, splat (float 5.000000e-01)
  %i.non = fadd reassoc nsz arcp contract afn <8 x float> %i.nom, %strided.vec4267
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.non, <8 x ptr> align 4 %wide.gep4269, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !427, !noalias !428
  %index.next4278 = add nuw i64 %index4256, 8     ; 2 uses
  %vec.ind.next4279 = add nuw nsw <8 x i64> %vec.ind4257, splat (i64 16)
  %i.noo = icmp eq i64 %index.next4278, %n.vec4251
  br i1 %i.noo, label %scalar.ph4248.preheader, label %vector.body4255, !llvm.loop !429

._crit_edge1068.i:                                ; preds = %scalar.ph4248, %bb.qy
  %indvars.iv.next1257.i = add nuw nsw i64 %indvars.iv1256.i, 1 ; 2 uses
  %exitcond1129.not = icmp eq i64 %indvars.iv.next1257.i, %smax1134
  %indvar.next4225 = add i64 %indvar4224, 1
  br i1 %exitcond1129.not, label %.preheader1015.i, label %bb.qy

scalar.ph4248:                                    ; preds = %scalar.ph4248.preheader, %scalar.ph4248
  %indvars.iv1253.i = phi i64 [ %indvars.iv.next1254.i, %scalar.ph4248 ], [ %indvars.iv1253.i.ph, %scalar.ph4248.preheader ] ; 4 uses
  %i.nop = getelementptr inbounds nuw [4 x i8], ptr %i.nmj, i64 %indvars.iv1253.i ; 3 uses
  %i.noq = getelementptr inbounds nuw [4 x i8], ptr %i.nmk, i64 %indvars.iv1253.i ; 6 uses
  %i.nor = load float, ptr %i.noq, align 4, !tbaa !22, !noalias !402
  %i.nos = getelementptr inbounds i8, ptr %i.nop, i64 -4
  %i.not = load float, ptr %i.nos, align 4, !tbaa !22, !noalias !402
  %i.nou = getelementptr inbounds i8, ptr %i.noq, i64 -4
  %i.nov = load float, ptr %i.nou, align 4, !tbaa !22, !noalias !402
  %i.now = getelementptr inbounds nuw i8, ptr %i.nop, i64 4
  %i.nox = load float, ptr %i.now, align 4, !tbaa !22, !noalias !402
  %i.noy = getelementptr inbounds nuw i8, ptr %i.noq, i64 4
  %i.noz = load float, ptr %i.noy, align 4, !tbaa !22, !noalias !402
  %i.npa = fadd reassoc nsz arcp contract afn float %i.not, %i.nox
  %i.npb = fadd reassoc nsz arcp contract afn float %i.nov, %i.noz
  %i.npc = fsub reassoc nsz arcp contract afn float %i.npa, %i.npb
  %i.npd = fmul reassoc nsz arcp contract afn float %i.npc, 5.000000e-01
  %i.npe = fadd reassoc nsz arcp contract afn float %i.npd, %i.nor
  store float %i.npe, ptr %i.nop, align 4, !tbaa !22, !noalias !402
  %i.npf = getelementptr inbounds nuw [4 x i8], ptr %i.nmp, i64 %indvars.iv1253.i ; 3 uses
  %i.npg = load float, ptr %i.noq, align 4, !tbaa !22, !noalias !402
  %i.nph = getelementptr inbounds i8, ptr %i.npf, i64 -544
  %i.npi = load float, ptr %i.nph, align 4, !tbaa !22, !noalias !402
  %i.npj = getelementptr inbounds i8, ptr %i.noq, i64 -544
  %i.npk = load float, ptr %i.npj, align 4, !tbaa !22, !noalias !402
  %i.npl = getelementptr inbounds nuw i8, ptr %i.npf, i64 544
  %i.npm = load float, ptr %i.npl, align 4, !tbaa !22, !noalias !402
  %i.npn = getelementptr inbounds nuw i8, ptr %i.noq, i64 544
  %i.npo = load float, ptr %i.npn, align 4, !tbaa !22, !noalias !402
  %i.npp = fadd reassoc nsz arcp contract afn float %i.npi, %i.npm
  %i.npq = fadd reassoc nsz arcp contract afn float %i.npk, %i.npo
  %i.npr = fsub reassoc nsz arcp contract afn float %i.npp, %i.npq
  %i.nps = fmul reassoc nsz arcp contract afn float %i.npr, 5.000000e-01
  %i.npt = fadd reassoc nsz arcp contract afn float %i.nps, %i.npg
  store float %i.npt, ptr %i.npf, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1254.i = add nuw nsw i64 %indvars.iv1253.i, 2 ; 2 uses
  %i.npu = icmp slt i64 %indvars.iv.next1254.i, %i.nii
  br i1 %i.npu, label %scalar.ph4248, label %._crit_edge1068.i, !llvm.loop !430

._crit_edge1078.i:                                ; preds = %._crit_edge1075.i, %.preheader1016.i, %._crit_edge1053.i
  %i.npv = icmp eq i32 %.08811178.i, 0            ; 2 uses
  %i.npw = select i1 %i.npv, i32 6, i32 0         ; 21 uses
  %i.npx = icmp eq i32 %.08811178.i, %i.apm       ; 2 uses
  %.neg.i555 = select i1 %i.npx, i32 -6, i32 0    ; 10 uses
  %i.npy = add nsw i32 %i.mbh, %.neg.i555         ; 4 uses
  br i1 %.not1186.i, label %.preheader1014.i, label %.preheader1011.lr.ph.i

.preheader1011.lr.ph.i:                           ; preds = %._crit_edge1078.i
  %i.npz = icmp slt i32 %i.mbf, -5
  %i.nqa = zext nneg i32 %i.npw to i64            ; 11 uses
  %invariant.gep.i556 = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.nqa
  %invariant.gep1124.i = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.nqa
  %invariant.gep1126.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwx, i64 %i.nqa
  %invariant.gep1128.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwy, i64 %i.nqa
  %invariant.gep1130.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.nqa
  %i.nqb = add nsw i32 %i.npy, -1                 ; 3 uses
  %i.nqc = icmp slt i32 %i.npw, %i.nqb            ; 2 uses
  %brmerge.i557 = select i1 %i.lyi, i1 true, i1 %i.npz
  %i.nqd = add nsw i32 %i.mbg, 6                  ; 3 uses
  %i.nqe = sext i32 %i.nqd to i64                 ; 6 uses
  %i.nqf = shl nuw nsw i64 %i.nqa, 2              ; 4 uses
  %scevgep3982 = getelementptr i8, ptr %scevgep3981, i64 %i.nqf ; 2 uses
  %i.nqg = add nsw i32 %.neg.i555, 6
  %i.nqh = add i32 %i.nqg, %smin3986
  %i.nqi = sub i32 %i.nqh, %i.npw
  %i.nqj = lshr i32 %i.nqi, 1
  %i.nqk = zext nneg i32 %i.nqj to i64
  %i.nql = shl nuw nsw i64 %i.nqk, 3              ; 2 uses
  %i.nqm = getelementptr i8, ptr %scevgep3984, i64 %i.nql
  %scevgep3987 = getelementptr i8, ptr %i.nqm, i64 %i.nqf ; 2 uses
  %.reass = or disjoint i64 %i.nqf, %invariant.op
  %i.nqn = add nuw nsw i64 %i.lzh, %i.nql
  %i.nqo = add nuw nsw i64 %i.nqn, %i.nqf
  %i.nqp = add nsw i32 %.neg.i555, 6
  %i.nqq = add i32 %i.nqp, %smin4052
  %i.nqr = sub i32 %i.nqq, %i.npw
  %i.nqs = lshr i32 %i.nqr, 1
  %i.nqt = zext nneg i32 %i.nqs to i64
  %i.nqu = shl nuw nsw i64 %i.nqt, 3              ; 2 uses
  %i.nqv = add nuw nsw i64 %i.lzi, %i.nqu
  %i.nqw = shl nuw nsw i64 %i.nqa, 2              ; 3 uses
  %i.nqx = add nuw nsw i64 %i.nqv, %i.nqw
  %scevgep4055 = getelementptr i8, ptr %scevgep4054, i64 %i.nqw ; 2 uses
  %i.nqy = getelementptr i8, ptr %scevgep4057, i64 %i.nqu
  %scevgep4058 = getelementptr i8, ptr %i.nqy, i64 %i.nqw ; 2 uses
  %min.iters.check4149 = icmp ult i32 %i.nqd, 8
  %n.vec4151 = and i64 %i.nqe, -8                 ; 3 uses
  %i.nqz = or disjoint i64 %n.vec4151, 1
  %cmp.n4174 = icmp eq i64 %n.vec4151, %i.nqe
  %min.iters.check4121 = icmp ult i32 %i.nqd, 8
  %n.vec4123 = and i64 %i.nqe, -8                 ; 3 uses
  %i.nra = or disjoint i64 %n.vec4123, 1
  %cmp.n4146 = icmp eq i64 %n.vec4123, %i.nqe
  %i.nrb = add i32 %.neg.i555, %i.mbg
  %19 = sub i32 %i.nrb, %i.npw
  %20 = add i32 %19, 6                            ; 2 uses
  %i.nrc = lshr i32 %20, 1
  %narrow4618 = add nuw i32 %i.nrc, 1
  %i.nrd = zext i32 %narrow4618 to i64            ; 2 uses
  %min.iters.check4072 = icmp ult i32 %20, 16
  %i.nre = and i64 %i.nrd, 7                      ; 2 uses
  %i.nrf = icmp eq i64 %i.nre, 0
  %i.nrg = select i1 %i.nrf, i64 8, i64 %i.nre
  %n.vec4074 = sub nsw i64 %i.nrd, %i.nrg         ; 3 uses
  %i.nrh = trunc i64 %n.vec4074 to i32
  %i.nri = shl i32 %i.nrh, 1
  %i.nrj = add i32 %i.npw, %i.nri
  %i.nrk = shl nsw i64 %n.vec4074, 3              ; 7 uses
  %i.nrl = add i32 %.neg.i555, %i.mbg
  %21 = sub i32 %i.nrl, %i.npw
  %22 = add i32 %21, 6                            ; 2 uses
  %i.nrm = lshr i32 %22, 1
  %narrow4619 = add nuw i32 %i.nrm, 1
  %i.nrn = zext i32 %narrow4619 to i64            ; 2 uses
  %min.iters.check4006 = icmp ult i32 %22, 16
  %i.nro = and i64 %i.nrn, 7                      ; 2 uses
  %i.nrp = icmp eq i64 %i.nro, 0
  %i.nrq = select i1 %i.nrp, i64 8, i64 %i.nro
  %n.vec4008 = sub nsw i64 %i.nrn, %i.nrq         ; 3 uses
  %i.nrr = shl nsw i64 %n.vec4008, 3              ; 7 uses
  %i.nrs = trunc i64 %n.vec4008 to i32
  %i.nrt = shl i32 %i.nrs, 1
  %i.nru = add i32 %i.npw, %i.nrt
  br label %.preheader1011.i

bb.qz:                                            ; preds = %._crit_edge1075.i, %.preheader1015.i
  %indvar4177 = phi i64 [ %indvar.next4178, %._crit_edge1075.i ], [ 0, %.preheader1015.i ] ; 2 uses
  %indvars.iv1262.i = phi i64 [ %indvars.iv.next1263.i, %._crit_edge1075.i ], [ 1, %.preheader1015.i ] ; 3 uses
  %i.nrv = mul nuw nsw i64 %indvar4177, 544       ; 4 uses
  %i.nrw = getelementptr i8, ptr %i.lwu, i64 %i.nrv
  %scevgep4184 = getelementptr i8, ptr %i.nrw, i64 73988
  %i.nrx = getelementptr i8, ptr %i.lwu, i64 %i.nrv
  %scevgep4186 = getelementptr i8, ptr %i.nrx, i64 75080
  %indvars.iv1262.tr.i = trunc i64 %indvars.iv1262.i to i32
  %i.nry = shl i32 %indvars.iv1262.tr.i, 1
  %i.nrz = and i32 %i.nry, 14                     ; 2 uses
  %.tr.i961.i = shl nuw nsw i32 %i.nrz, 1
  %i.nsa = or disjoint i32 %.tr.i961.i, 2
  %i.nsb = lshr i32 %.fr1059, %i.nsa              ; 3 uses
  %i.nsc = and i32 %i.nsb, 1
  %i.nsd = add nuw nsw i32 %i.nsc, 1              ; 3 uses
  %i.nse = icmp slt i32 %i.nsd, %i.nih
  br i1 %i.nse, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.qz
  %i.nsf = and i32 %i.nsd, 1
  %i.nsg = or disjoint i32 %i.nsf, %i.nrz
  %i.nsh = shl nuw nsw i32 %i.nsg, 1
  %i.nsi = lshr i32 %.fr1059, %i.nsh
  %i.nsj = and i32 %i.nsi, 3
  %i.nsk = sub nsw i32 2, %i.nsj
  %i.nsl = sext i32 %i.nsk to i64
  %i.nsm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nsl
  %i.nsn = load ptr, ptr %i.nsm, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nso = mul nuw nsw i64 %indvars.iv1262.i, 136 ; 2 uses
  %i.nsp = getelementptr inbounds nuw [4 x i8], ptr %i.nsn, i64 %i.nso ; 2 uses
  %i.nsq = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.nso ; 2 uses
  %i.nsr = zext nneg i32 %i.nsd to i64            ; 5 uses
  %i.nss = and i32 %i.nsb, 1
  %i.nst = zext nneg i32 %i.nss to i64            ; 2 uses
  %i.nsu = add nuw nsw i64 %i.nst, 3
  %i.nsv = call i64 @llvm.umax.i64(i64 %i.nsu, i64 %i.nlr)
  %23 = sub nsw i64 %i.nsv, %i.nst
  %24 = add nsw i64 %23, -2                       ; 2 uses
  %i.nsw = lshr i64 %24, 1
  %i.nsx = add nuw nsw i64 %i.nsw, 1              ; 2 uses
  %min.iters.check4192 = icmp ult i64 %24, 8
  br i1 %min.iters.check4192, label %scalar.ph4191.preheader, label %vector.memcheck4176

scalar.ph4191.preheader:                          ; preds = %vector.body4198, %vector.memcheck4176, %.lr.ph1074.i
  %indvars.iv1259.i.ph = phi i64 [ %i.nsr, %vector.memcheck4176 ], [ %i.nsr, %.lr.ph1074.i ], [ %i.ntq, %vector.body4198 ]
  br label %scalar.ph4191

vector.memcheck4176:                              ; preds = %.lr.ph1074.i
  %i.nsy = and i32 %i.nsb, 1
  %i.nsz = zext nneg i32 %i.nsy to i64            ; 3 uses
  %i.nta = shl nuw nsw i64 %i.nsz, 2              ; 4 uses
  %i.ntb = getelementptr i8, ptr %i.nsn, i64 %i.nrv
  %i.ntc = getelementptr i8, ptr %i.ntb, i64 4
  %scevgep4179 = getelementptr i8, ptr %i.ntc, i64 %i.nta
  %i.ntd = add nuw nsw i64 %i.nsz, 3
  %umax4182 = call i64 @llvm.umax.i64(i64 %i.ntd, i64 %i.mar)
  %i.nte = add nsw i64 %umax4182, -2
  %i.ntf = sub nsw i64 %i.nte, %i.nsz
  %i.ntg = shl nuw nsw i64 %i.ntf, 2
  %i.nth = and i64 %i.ntg, 9223372036854775800    ; 2 uses
  %i.nti = getelementptr i8, ptr %i.nsn, i64 %i.nrv
  %i.ntj = getelementptr i8, ptr %i.nti, i64 1096
  %i.ntk = getelementptr i8, ptr %i.ntj, i64 %i.nth
  %scevgep4183 = getelementptr i8, ptr %i.ntk, i64 %i.nta
  %scevgep4185 = getelementptr i8, ptr %scevgep4184, i64 %i.nta
  %i.ntl = getelementptr i8, ptr %scevgep4186, i64 %i.nth
  %scevgep4187 = getelementptr i8, ptr %i.ntl, i64 %i.nta
  %bound04188 = icmp ult ptr %scevgep4179, %scevgep4187
  %bound14189 = icmp ult ptr %scevgep4185, %scevgep4183
  %found.conflict4190 = and i1 %bound04188, %bound14189
  br i1 %found.conflict4190, label %scalar.ph4191.preheader, label %vector.ph4193

vector.ph4193:                                    ; preds = %vector.memcheck4176
  %i.ntm = and i64 %i.nsx, 3                      ; 2 uses
  %i.ntn = icmp eq i64 %i.ntm, 0
  %i.nto = select i1 %i.ntn, i64 4, i64 %i.ntm
  %n.vec4194 = sub nsw i64 %i.nsx, %i.nto         ; 2 uses
  %i.ntp = shl i64 %n.vec4194, 1
  %i.ntq = add i64 %i.ntp, %i.nsr
  %broadcast.splatinsert4195 = insertelement <4 x i64> poison, i64 %i.nsr, i64 0
  %broadcast.splat4196 = shufflevector <4 x i64> %broadcast.splatinsert4195, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4197 = add nuw nsw <4 x i64> %broadcast.splat4196, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4926 = getelementptr [4 x i8], ptr %i.nsq, i64 %i.nsr
  br label %vector.body4198

vector.body4198:                                  ; preds = %vector.body4198, %vector.ph4193
  %index4199 = phi i64 [ 0, %vector.ph4193 ], [ %index.next4219, %vector.body4198 ] ; 2 uses
  %vec.ind4200 = phi <4 x i64> [ %induction4197, %vector.ph4193 ], [ %vec.ind.next4220, %vector.body4198 ] ; 2 uses
  %wide.gep4201 = getelementptr inbounds nuw [4 x i8], ptr %i.nsp, <4 x i64> %vec.ind4200 ; 2 uses
  %i.ntr = extractelement <4 x ptr> %wide.gep4201, i64 0 ; 4 uses
  %.idx4617 = shl nuw i64 %index4199, 3
  %gep4927 = getelementptr i8, ptr %invariant.gep4926, i64 %.idx4617 ; 4 uses
  %wide.vec4202 = load <8 x float>, ptr %gep4927, align 4, !tbaa !22, !alias.scope !431, !noalias !402 ; 2 uses
  %strided.vec4203 = shufflevector <8 x float> %wide.vec4202, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4204 = shufflevector <8 x float> %wide.vec4202, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nts = getelementptr inbounds i8, ptr %i.ntr, i64 -544
  %wide.vec4205 = load <8 x float>, ptr %i.nts, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4206 = shufflevector <8 x float> %wide.vec4205, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntt = getelementptr inbounds i8, ptr %gep4927, i64 -544
  %wide.vec4207 = load <8 x float>, ptr %i.ntt, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4208 = shufflevector <8 x float> %wide.vec4207, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntu = getelementptr inbounds i8, ptr %i.ntr, i64 -4
  %wide.vec4209 = load <8 x float>, ptr %i.ntu, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4210 = shufflevector <8 x float> %wide.vec4209, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntv = getelementptr inbounds i8, ptr %gep4927, i64 -4
  %wide.vec4211 = load <8 x float>, ptr %i.ntv, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4212 = shufflevector <8 x float> %wide.vec4211, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntw = getelementptr inbounds nuw i8, ptr %i.ntr, i64 4
  %wide.vec4213 = load <8 x float>, ptr %i.ntw, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4214 = shufflevector <8 x float> %wide.vec4213, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntx = getelementptr inbounds nuw i8, ptr %i.ntr, i64 544
  %wide.vec4215 = load <8 x float>, ptr %i.ntx, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4216 = shufflevector <8 x float> %wide.vec4215, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nty = getelementptr inbounds nuw i8, ptr %gep4927, i64 544
  %wide.vec4217 = load <8 x float>, ptr %i.nty, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4218 = shufflevector <8 x float> %wide.vec4217, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntz = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4206, %strided.vec4210
  %i.nua = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4208, %strided.vec4212
  %i.nub = fadd reassoc nsz arcp contract afn <4 x float> %i.ntz, %strided.vec4214
  %i.nuc = fadd reassoc nsz arcp contract afn <4 x float> %i.nua, %strided.vec4204
  %i.nud = fadd reassoc nsz arcp contract afn <4 x float> %i.nub, %strided.vec4216
  %i.nue = fadd reassoc nsz arcp contract afn <4 x float> %i.nuc, %strided.vec4218
  %i.nuf = fsub reassoc nsz arcp contract afn <4 x float> %i.nud, %i.nue
  %i.nug = fmul reassoc nsz arcp contract afn <4 x float> %i.nuf, splat (float 2.500000e-01)
  %i.nuh = fadd reassoc nsz arcp contract afn <4 x float> %i.nug, %strided.vec4203
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.nuh, <4 x ptr> align 4 %wide.gep4201, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !434, !noalias !436
  %index.next4219 = add nuw i64 %index4199, 4     ; 2 uses
  %vec.ind.next4220 = add nuw nsw <4 x i64> %vec.ind4200, splat (i64 8)
  %i.nui = icmp eq i64 %index.next4219, %n.vec4194
  br i1 %i.nui, label %scalar.ph4191.preheader, label %vector.body4198, !llvm.loop !437

._crit_edge1075.i:                                ; preds = %scalar.ph4191, %bb.qz
  %indvars.iv.next1263.i = add nuw nsw i64 %indvars.iv1262.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1263.i, %smax1134
  %indvar.next4178 = add i64 %indvar4177, 1
  br i1 %exitcond1132.not, label %._crit_edge1078.i, label %bb.qz

scalar.ph4191:                                    ; preds = %scalar.ph4191.preheader, %scalar.ph4191
  %indvars.iv1259.i = phi i64 [ %indvars.iv.next1260.i, %scalar.ph4191 ], [ %indvars.iv1259.i.ph, %scalar.ph4191.preheader ] ; 3 uses
  %i.nuj = getelementptr inbounds nuw [4 x i8], ptr %i.nsp, i64 %indvars.iv1259.i ; 5 uses
  %i.nuk = getelementptr inbounds nuw [4 x i8], ptr %i.nsq, i64 %indvars.iv1259.i ; 5 uses
  %i.nul = load float, ptr %i.nuk, align 4, !tbaa !22, !noalias !402
  %i.num = getelementptr inbounds i8, ptr %i.nuj, i64 -544
  %i.nun = load float, ptr %i.num, align 4, !tbaa !22, !noalias !402
  %i.nuo = getelementptr inbounds i8, ptr %i.nuk, i64 -544
  %i.nup = load float, ptr %i.nuo, align 4, !tbaa !22, !noalias !402
  %i.nuq = getelementptr inbounds i8, ptr %i.nuj, i64 -4
  %i.nur = load float, ptr %i.nuq, align 4, !tbaa !22, !noalias !402
  %i.nus = getelementptr inbounds i8, ptr %i.nuk, i64 -4
  %i.nut = load float, ptr %i.nus, align 4, !tbaa !22, !noalias !402
  %i.nuu = getelementptr inbounds nuw i8, ptr %i.nuj, i64 4
  %i.nuv = load float, ptr %i.nuu, align 4, !tbaa !22, !noalias !402
  %i.nuw = getelementptr inbounds nuw i8, ptr %i.nuk, i64 4
  %i.nux = load float, ptr %i.nuw, align 4, !tbaa !22, !noalias !402
  %i.nuy = getelementptr inbounds nuw i8, ptr %i.nuj, i64 544
  %i.nuz = load float, ptr %i.nuy, align 4, !tbaa !22, !noalias !402
  %i.nva = getelementptr inbounds nuw i8, ptr %i.nuk, i64 544
  %i.nvb = load float, ptr %i.nva, align 4, !tbaa !22, !noalias !402
  %i.nvc = fadd reassoc nsz arcp contract afn float %i.nun, %i.nur
  %i.nvd = fadd reassoc nsz arcp contract afn float %i.nup, %i.nut
  %i.nve = fadd reassoc nsz arcp contract afn float %i.nvc, %i.nuv
  %i.nvf = fadd reassoc nsz arcp contract afn float %i.nvd, %i.nux
  %i.nvg = fadd reassoc nsz arcp contract afn float %i.nve, %i.nuz
  %i.nvh = fadd reassoc nsz arcp contract afn float %i.nvf, %i.nvb
  %i.nvi = fsub reassoc nsz arcp contract afn float %i.nvg, %i.nvh
  %i.nvj = fmul reassoc nsz arcp contract afn float %i.nvi, 2.500000e-01
  %i.nvk = fadd reassoc nsz arcp contract afn float %i.nvj, %i.nul
  store float %i.nvk, ptr %i.nuj, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1260.i = add nuw nsw i64 %indvars.iv1259.i, 2 ; 2 uses
  %i.nvl = icmp samesign ult i64 %indvars.iv.next1260.i, %i.nlr
  br i1 %i.nvl, label %scalar.ph4191, label %._crit_edge1075.i, !llvm.loop !438

.preheader1014.i:                                 ; preds = %._crit_edge1123.i, %._crit_edge1078.i
  %i.nvm = icmp sgt i32 %i.mbf, 0
  %or.cond1373.i = select i1 %i.lxz, i1 %i.nvm, i1 false
  br i1 %or.cond1373.i, label %.preheader1009.i.preheader, label %.preheader1013.i

.preheader1009.i.preheader:                       ; preds = %.preheader1014.i
  %xtraiter4799 = and i64 %i.lzz, 3               ; 3 uses
  %i.nvn = add i32 %smin4798, -1
  %i.nvo = icmp ult i32 %i.nvn, 3
  %unroll_iter4803 = and i64 %i.lzz, -4
  %lcmp.mod4801.not = icmp eq i64 %xtraiter4799, 0
  %lcmp.mod4802 = icmp ne i64 %xtraiter4799, 0
  br label %.preheader1009.i

.preheader1011.i:                                 ; preds = %._crit_edge1123.i, %.preheader1011.lr.ph.i
  %.09201132.i = phi i32 [ 0, %.preheader1011.lr.ph.i ], [ %i.okv, %._crit_edge1123.i ]
  br i1 %brmerge.i557, label %.preheader1010.i, label %.preheader1006.i

.preheader1010.i:                                 ; preds = %._crit_edge1082.1.i, %.preheader1011.i
  br i1 %i.lyk, label %.lr.ph1122.i, label %._crit_edge1123.i

.preheader1006.i:                                 ; preds = %.preheader1011.i, %._crit_edge1082.1.i
  %indvars.iv1272.i = phi i64 [ %indvars.iv.next1273.i, %._crit_edge1082.1.i ], [ 1, %.preheader1011.i ] ; 2 uses
  %i.nvp = mul nuw nsw i64 %indvars.iv1272.i, 136 ; 5 uses
  %i.nvq = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.nvp ; 4 uses
  %i.nvr = getelementptr inbounds nuw [4 x i8], ptr %i.lwy, i64 %i.nvp ; 2 uses
  %i.nvs = getelementptr inbounds nuw [4 x i8], ptr %i.lwu, i64 %i.nvp ; 2 uses
  br i1 %min.iters.check4149, label %scalar.ph4148.preheader, label %vector.body4152

vector.body4152:                                  ; preds = %.preheader1006.i, %vector.body4152
  %index4153 = phi i64 [ %index.next4172, %vector.body4152 ], [ 0, %.preheader1006.i ] ; 2 uses
  %i.nvt = or disjoint i64 %index4153, 1          ; 3 uses
  %i.nvu = getelementptr inbounds nuw [4 x i8], ptr %i.nvr, i64 %i.nvt
  %i.nvv = getelementptr inbounds nuw [4 x i8], ptr %i.nvs, i64 %i.nvt ; 9 uses
  %i.nvw = getelementptr inbounds nuw [4 x i8], ptr %i.nvq, i64 %i.nvt ; 9 uses
  %i.nvx = getelementptr inbounds i8, ptr %i.nvv, i64 -548
  %wide.load4154 = load <8 x float>, ptr %i.nvx, align 32, !tbaa !22, !noalias !402
  %i.nvy = getelementptr inbounds i8, ptr %i.nvw, i64 -548
  %wide.load4155 = load <8 x float>, ptr %i.nvy, align 32, !tbaa !22, !noalias !402
  %i.nvz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4154, %wide.load4155 ; 4 uses
  %i.nwa = getelementptr inbounds i8, ptr %i.nvv, i64 -544
  %wide.load4156 = load <8 x float>, ptr %i.nwa, align 4, !tbaa !22, !noalias !402
  %i.nwb = getelementptr inbounds i8, ptr %i.nvw, i64 -544
  %wide.load4157 = load <8 x float>, ptr %i.nwb, align 4, !tbaa !22, !noalias !402
  %i.nwc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4156, %wide.load4157 ; 4 uses
  %i.nwd = getelementptr inbounds i8, ptr %i.nvv, i64 -540
  %wide.load4158 = load <8 x float>, ptr %i.nwd, align 8, !tbaa !22, !noalias !402
  %i.nwe = getelementptr inbounds i8, ptr %i.nvw, i64 -540
  %wide.load4159 = load <8 x float>, ptr %i.nwe, align 8, !tbaa !22, !noalias !402
  %i.nwf = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4158, %wide.load4159 ; 4 uses
  %i.nwg = getelementptr inbounds i8, ptr %i.nvv, i64 -4
  %wide.load4160 = load <8 x float>, ptr %i.nwg, align 32, !tbaa !22, !noalias !402
  %i.nwh = getelementptr inbounds i8, ptr %i.nvw, i64 -4
  %wide.load4161 = load <8 x float>, ptr %i.nwh, align 32, !tbaa !22, !noalias !402
  %i.nwi = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4160, %wide.load4161 ; 4 uses
  %wide.load4162 = load <8 x float>, ptr %i.nvv, align 4, !tbaa !22, !noalias !402
  %wide.load4163 = load <8 x float>, ptr %i.nvw, align 4, !tbaa !22, !noalias !402
  %i.nwj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4162, %wide.load4163 ; 4 uses
  %i.nwk = getelementptr inbounds nuw i8, ptr %i.nvv, i64 4
  %wide.load4164 = load <8 x float>, ptr %i.nwk, align 8, !tbaa !22, !noalias !402
  %i.nwl = getelementptr inbounds nuw i8, ptr %i.nvw, i64 4
  %wide.load4165 = load <8 x float>, ptr %i.nwl, align 8, !tbaa !22, !noalias !402
  %i.nwm = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4164, %wide.load4165 ; 4 uses
  %i.nwn = getelementptr inbounds nuw i8, ptr %i.nvv, i64 540
  %wide.load4166 = load <8 x float>, ptr %i.nwn, align 32, !tbaa !22, !noalias !402
  %i.nwo = getelementptr inbounds nuw i8, ptr %i.nvw, i64 540
end_hunk_4
begin_hunk_5_@process:bb.a
  %i.orp = add nuw nsw i64 %i.oro, 4
  %i.orq = add nsw i32 %.neg.i555, 6
  %i.orr = add i32 %i.orq, %smin3933
  %i.ors = sext i32 %i.orr to i64
  %i.ort = zext nneg i32 %i.npw to i64            ; 2 uses
  %i.oru = add i32 %.neg.i555, %i.mbg
  %i.orv = add i32 %i.oru, 6
  %i.orw = sext i32 %i.orv to i64
  %i.orx = zext nneg i32 %i.npw to i64            ; 2 uses
  %i.ory = add i32 %.neg.i555, %i.mbg
  %i.orz = add i32 %i.ory, 6
  %i.osa = sext i32 %i.orz to i64
  %i.osb = zext nneg i32 %i.npw to i64            ; 2 uses
  %i.osc = add i32 %.neg.i555, %i.mbg
  %i.osd = add i32 %i.osc, 6
  %i.ose = sext i32 %i.osd to i64
  br label %.lr.ph1143.i.preheader

.preheader1009.i:                                 ; preds = %.preheader1009.i.preheader, %._crit_edge1135.i
  %indvars.iv1281.i = phi i64 [ %indvars.iv.next1282.i, %._crit_edge1135.i ], [ 4, %.preheader1009.i.preheader ] ; 3 uses
  %i.osf = mul nuw nsw i64 %indvars.iv1281.i, 136 ; 5 uses
  %indvars.iv1281.tr.i = trunc i64 %indvars.iv1281.i to i32
  %i.osg = shl i32 %indvars.iv1281.tr.i, 1
  %i.osh = and i32 %i.osg, 14                     ; 5 uses
  br i1 %i.nvo, label %.epil.preheader4796, label %.preheader1009.i.new

.preheader1009.i.new:                             ; preds = %.preheader1009.i
  %i.osi = shl nuw nsw i32 %i.osh, 1
  %i.osj = lshr i32 %.fr1059, %i.osi
  %i.osk = and i32 %i.osj, 3
  %i.osl = zext nneg i32 %i.osk to i64
  %i.osm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osl
  %i.osn = load ptr, ptr %i.osm, align 8, !tbaa !407, !noalias !408
  %i.oso = shl nuw nsw i32 %i.osh, 1
  %i.osp = or disjoint i32 %i.oso, 2
  %i.osq = lshr i32 %.fr1059, %i.osp
  %i.osr = and i32 %i.osq, 3
  %i.oss = zext nneg i32 %i.osr to i64
  %i.ost = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oss
  %i.osu = load ptr, ptr %i.ost, align 8, !tbaa !407, !noalias !408
  %i.osv = shl nuw nsw i32 %i.osh, 1
  %i.osw = lshr i32 %.fr1059, %i.osv
  %i.osx = and i32 %i.osw, 3
  %i.osy = zext nneg i32 %i.osx to i64
  %i.osz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osy
  %i.ota = load ptr, ptr %i.osz, align 8, !tbaa !407, !noalias !408
  %i.otb = shl nuw nsw i32 %i.osh, 1
  %i.otc = or disjoint i32 %i.otb, 2
  %i.otd = lshr i32 %.fr1059, %i.otc
  %i.ote = and i32 %i.otd, 3
  %i.otf = zext nneg i32 %i.ote to i64
  %i.otg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otf
  %i.oth = load ptr, ptr %i.otg, align 8, !tbaa !407, !noalias !408
  br label %bb.rg

._crit_edge1135.i.unr-lcssa:                      ; preds = %bb.rg
  br i1 %lcmp.mod4801.not, label %._crit_edge1135.i, label %.epil.preheader4796

.epil.preheader4796:                              ; preds = %._crit_edge1135.i.unr-lcssa, %.preheader1009.i
  %indvars.iv1278.i.epil.init = phi i64 [ 4, %.preheader1009.i ], [ %indvars.iv.next1279.i.3, %._crit_edge1135.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4802)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rf, %.epil.preheader4796
  %indvars.iv1278.i.epil = phi i64 [ %indvars.iv1278.i.epil.init, %.epil.preheader4796 ], [ %indvars.iv.next1279.i.epil, %bb.rf ] ; 3 uses
  %epil.iter4800 = phi i64 [ 0, %.epil.preheader4796 ], [ %epil.iter4800.next, %bb.rf ]
  %i.oti = add nuw nsw i64 %indvars.iv1278.i.epil, %i.osf ; 2 uses
  %i.otj = trunc nuw nsw i64 %indvars.iv1278.i.epil to i32
  %i.otk = and i32 %i.otj, 1
  %i.otl = or disjoint i32 %i.otk, %i.osh
  %i.otm = shl nuw nsw i32 %i.otl, 1
  %i.otn = lshr i32 %.fr1059, %i.otm
  %i.oto = and i32 %i.otn, 3
  %i.otp = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.oti
  %i.otq = load float, ptr %i.otp, align 4, !tbaa !22, !noalias !402
  %i.otr = zext nneg i32 %i.oto to i64
  %i.ots = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otr
  %i.ott = load ptr, ptr %i.ots, align 8, !tbaa !407, !noalias !408
  %i.otu = getelementptr inbounds nuw [4 x i8], ptr %i.ott, i64 %i.oti
  store float %i.otq, ptr %i.otu, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.epil = add nuw nsw i64 %indvars.iv1278.i.epil, 1
  %epil.iter4800.next = add i64 %epil.iter4800, 1 ; 2 uses
  %epil.iter4800.cmp.not = icmp eq i64 %epil.iter4800.next, %xtraiter4799
  br i1 %epil.iter4800.cmp.not, label %._crit_edge1135.i, label %bb.rf, !llvm.loop !465

._crit_edge1135.i:                                ; preds = %bb.rf, %._crit_edge1135.i.unr-lcssa
  %indvars.iv.next1282.i = add nuw nsw i64 %indvars.iv1281.i, 1 ; 2 uses
  %exitcond1143.not = icmp eq i64 %indvars.iv.next1282.i, %smax1142
  br i1 %exitcond1143.not, label %.preheader1013.i, label %.preheader1009.i

bb.rg:                                            ; preds = %bb.rg, %.preheader1009.i.new
  %indvars.iv1278.i = phi i64 [ 4, %.preheader1009.i.new ], [ %indvars.iv.next1279.i.3, %bb.rg ] ; 5 uses
  %niter4804 = phi i64 [ 0, %.preheader1009.i.new ], [ %niter4804.next.3, %bb.rg ]
  %i.otv = add nuw nsw i64 %indvars.iv1278.i, %i.osf ; 2 uses
  %i.otw = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.otv
  %i.otx = load float, ptr %i.otw, align 16, !tbaa !22, !noalias !402
  %i.oty = getelementptr inbounds nuw [4 x i8], ptr %i.osn, i64 %i.otv
  store float %i.otx, ptr %i.oty, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i = or disjoint i64 %indvars.iv1278.i, 1
  %i.otz = add nuw nsw i64 %indvars.iv.next1279.i, %i.osf ; 2 uses
  %i.oua = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.otz
  %i.oub = load float, ptr %i.oua, align 4, !tbaa !22, !noalias !402
  %i.ouc = getelementptr inbounds nuw [4 x i8], ptr %i.osu, i64 %i.otz
  store float %i.oub, ptr %i.ouc, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.1 = or disjoint i64 %indvars.iv1278.i, 2
  %i.oud = add nuw nsw i64 %indvars.iv.next1279.i.1, %i.osf ; 2 uses
  %i.oue = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.oud
  %i.ouf = load float, ptr %i.oue, align 8, !tbaa !22, !noalias !402
  %i.oug = getelementptr inbounds nuw [4 x i8], ptr %i.ota, i64 %i.oud
  store float %i.ouf, ptr %i.oug, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.2 = or disjoint i64 %indvars.iv1278.i, 3
  %i.ouh = add nuw nsw i64 %indvars.iv.next1279.i.2, %i.osf ; 2 uses
  %i.oui = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.ouh
  %i.ouj = load float, ptr %i.oui, align 4, !tbaa !22, !noalias !402
  %i.ouk = getelementptr inbounds nuw [4 x i8], ptr %i.oth, i64 %i.ouh
  store float %i.ouj, ptr %i.ouk, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.3 = add nuw nsw i64 %indvars.iv1278.i, 4 ; 2 uses
  %niter4804.next.3 = add i64 %niter4804, 4       ; 2 uses
  %niter4804.ncmp.3 = icmp eq i64 %niter4804.next.3, %unroll_iter4803
  br i1 %niter4804.ncmp.3, label %._crit_edge1135.i.unr-lcssa, label %bb.rg

._crit_edge1161.i:                                ; preds = %._crit_edge1158.i.loopexit, %.lr.ph1160.i, %.preheader1013.i
  %i.oul = select i1 %i.npv, i32 4, i32 8         ; 3 uses
  %i.oum = or disjoint i32 %i.oul, %i.mbc         ; 7 uses
  %.neg951.i = select i1 %i.npx, i32 -4, i32 -8   ; 3 uses
  %i.oun = add nsw i32 %i.mbe, %.neg951.i         ; 3 uses
  br i1 %i.lyr, label %.lr.ph1175.i, label %._crit_edge1176.split.i

.lr.ph1175.i:                                     ; preds = %._crit_edge1161.i
  %i.ouo = icmp slt i32 %i.oum, %i.oun
  %i.oup = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.ouq = icmp eq ptr %i.oup, null
  br i1 %i.ouo, label %.lr.ph1168.i.preheader, label %._crit_edge1176.split.i

.lr.ph1168.i.preheader:                           ; preds = %.lr.ph1175.i
  %reass.sub = sub nsw i32 %i.oum, %i.mbc
  %.reass1171.i = add nsw i32 %reass.sub, 4
  %i.our = add i32 %.neg951.i, %smin3707
  %i.ous = add i32 %i.our, %i.may
  %i.out = sub i32 %i.ous, %i.oul                 ; 2 uses
  %i.ouu = zext i32 %i.out to i64
  %i.ouv = add nuw nsw i64 %i.ouu, 1              ; 2 uses
  %i.ouw = add i32 %.neg951.i, %smin3731
  %i.oux = add i32 %i.ouw, %i.max
  %i.ouy = sub i32 %i.oux, %i.oul                 ; 2 uses
  %i.ouz = zext i32 %i.ouy to i64
  %i.ova = add nuw nsw i64 %i.ouz, 1              ; 2 uses
  %min.iters.check3733 = icmp ult i32 %i.ouy, 7
  %n.vec3735 = and i64 %i.ova, 8589934584         ; 5 uses
  %i.ovb = trunc i64 %n.vec3735 to i32
  %i.ovc = add i32 %i.oum, %i.ovb
  %i.ovd = shl nuw nsw i64 %n.vec3735, 2          ; 3 uses
  %i.ove = shl nuw nsw i64 %n.vec3735, 4
  %cmp.n3768 = icmp eq i64 %i.ova, %n.vec3735
  %min.iters.check3709 = icmp ult i32 %i.out, 7
  %n.vec3711 = and i64 %i.ouv, 8589934584         ; 5 uses
  %i.ovf = trunc i64 %n.vec3711 to i32
  %i.ovg = add i32 %i.oum, %i.ovf
  %i.ovh = shl nuw nsw i64 %n.vec3711, 2          ; 3 uses
  %i.ovi = shl nuw nsw i64 %n.vec3711, 4
  %cmp.n3725 = icmp eq i64 %i.ouv, %n.vec3711
  br label %.lr.ph1168.i

.lr.ph1143.i.preheader:                           ; preds = %.lr.ph1143.i.preheader.preheader, %._crit_edge1158.i.loopexit
  %.09081159.i = phi i32 [ %i.ple, %._crit_edge1158.i.loopexit ], [ 0, %.lr.ph1143.i.preheader.preheader ]
  br label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %._crit_edge1140.i
  %indvar3927 = phi i64 [ 0, %.lr.ph1143.i.preheader ], [ %indvar.next3928, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1287.i = phi i64 [ %i.lyt, %.lr.ph1143.i.preheader ], [ %indvars.iv.next1288.i, %._crit_edge1140.i ] ; 3 uses
  %i.ovj = mul i64 %indvar3927, 544               ; 4 uses
  %scevgep3929 = getelementptr i8, ptr %i.lzk, i64 %i.ovj
  %scevgep3931 = getelementptr i8, ptr %i.lzm, i64 %i.ovj
  %indvars.iv1287.tr.i = trunc i64 %indvars.iv1287.i to i32
  %i.ovk = shl i32 %indvars.iv1287.tr.i, 1
  %i.ovl = and i32 %i.ovk, 14                     ; 2 uses
  %i.ovm = shl nuw nsw i32 %i.ovl, 1
  %i.ovn = lshr i32 %.fr1059, %i.ovm              ; 3 uses
  %i.ovo = and i32 %i.ovn, 1                      ; 2 uses
  %i.ovp = or disjoint i32 %i.ovo, %i.orc         ; 2 uses
  %i.ovq = icmp slt i32 %i.ovp, %i.ord
  br i1 %i.ovq, label %.lr.ph1139.i, label %._crit_edge1140.i

.lr.ph1139.i:                                     ; preds = %.lr.ph1143.i
  %i.ovr = or disjoint i32 %i.ovo, %i.ovl
  %i.ovs = shl nuw nsw i32 %i.ovr, 1
  %i.ovt = lshr i32 %.fr1059, %i.ovs
  %i.ovu = and i32 %i.ovt, 3
  %i.ovv = mul nuw nsw i64 %indvars.iv1287.i, 136 ; 2 uses
  %i.ovw = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.ovv ; 2 uses
  %i.ovx = zext nneg i32 %i.ovu to i64
  %i.ovy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ovx
  %i.ovz = load ptr, ptr %i.ovy, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.owa = getelementptr inbounds nuw [4 x i8], ptr %i.ovz, i64 %i.ovv ; 2 uses
  %i.owb = zext nneg i32 %i.ovp to i64            ; 5 uses
  %i.owc = and i32 %i.ovn, 1
  %i.owd = zext nneg i32 %i.owc to i64            ; 2 uses
  %i.owe = or disjoint i64 %i.ort, %i.owd
  %i.owf = add nuw nsw i64 %i.owe, 4
  %i.owg = call i64 @llvm.smax.i64(i64 %i.owf, i64 %i.orw)
  %25 = or disjoint i64 %i.ort, %i.owd
  %26 = sub nsw i64 %i.owg, %25
  %27 = add i64 %26, -3                           ; 2 uses
  %i.owh = lshr i64 %27, 1
  %i.owi = add nuw i64 %i.owh, 1                  ; 2 uses
  %min.iters.check3942 = icmp ult i64 %27, 8
  br i1 %min.iters.check3942, label %scalar.ph3941.preheader, label %vector.memcheck3926

scalar.ph3941.preheader:                          ; preds = %vector.body3948, %vector.memcheck3926, %.lr.ph1139.i
  %indvars.iv1284.i.ph = phi i64 [ %i.owb, %vector.memcheck3926 ], [ %i.owb, %.lr.ph1139.i ], [ %i.oxf, %vector.body3948 ]
  br label %scalar.ph3941

vector.memcheck3926:                              ; preds = %.lr.ph1139.i
  %i.owj = and i32 %i.ovn, 1
  %i.owk = zext nneg i32 %i.owj to i64            ; 3 uses
  %i.owl = or disjoint i64 %i.oro, %i.owk
  %i.owm = shl nuw nsw i64 %i.owl, 2              ; 4 uses
  %scevgep3930 = getelementptr i8, ptr %scevgep3929, i64 %i.owm
  %i.own = or disjoint i64 %i.orp, %i.owk
  %smax3934 = call i64 @llvm.smax.i64(i64 %i.own, i64 %i.ors)
  %i.owo = add nuw i64 %smax3934, 4611686018427387901
  %i.owp = or disjoint i64 %i.oro, %i.owk
  %i.owq = sub nuw i64 %i.owo, %i.owp
  %i.owr = shl i64 %i.owq, 2
  %i.ows = and i64 %i.owr, -8                     ; 2 uses
  %i.owt = getelementptr i8, ptr %scevgep3931, i64 %i.ows
  %scevgep3935 = getelementptr i8, ptr %i.owt, i64 %i.owm
  %i.owu = getelementptr i8, ptr %i.ovz, i64 %i.lzc
  %i.owv = getelementptr i8, ptr %i.owu, i64 8
  %i.oww = getelementptr i8, ptr %i.owv, i64 %i.ovj
  %scevgep3936 = getelementptr i8, ptr %i.oww, i64 %i.owm
  %i.owx = getelementptr i8, ptr %i.ovz, i64 %i.lzc
  %i.owy = getelementptr i8, ptr %i.owx, i64 2188
  %i.owz = getelementptr i8, ptr %i.owy, i64 %i.ovj
  %i.oxa = getelementptr i8, ptr %i.owz, i64 %i.ows
  %scevgep3937 = getelementptr i8, ptr %i.oxa, i64 %i.owm
  %bound03938 = icmp ult ptr %scevgep3930, %scevgep3937
  %bound13939 = icmp ult ptr %scevgep3936, %scevgep3935
  %found.conflict3940 = and i1 %bound03938, %bound13939
  br i1 %found.conflict3940, label %scalar.ph3941.preheader, label %vector.ph3943

vector.ph3943:                                    ; preds = %vector.memcheck3926
  %i.oxb = and i64 %i.owi, 3                      ; 2 uses
  %i.oxc = icmp eq i64 %i.oxb, 0
  %i.oxd = select i1 %i.oxc, i64 4, i64 %i.oxb
  %n.vec3944 = sub i64 %i.owi, %i.oxd             ; 2 uses
  %i.oxe = shl i64 %n.vec3944, 1
  %i.oxf = add i64 %i.oxe, %i.owb
  %broadcast.splatinsert3945 = insertelement <4 x i64> poison, i64 %i.owb, i64 0
  %broadcast.splat3946 = shufflevector <4 x i64> %broadcast.splatinsert3945, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3947 = add nuw nsw <4 x i64> %broadcast.splat3946, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4928 = getelementptr [4 x i8], ptr %i.owa, i64 %i.owb
  br label %vector.body3948

vector.body3948:                                  ; preds = %vector.body3948, %vector.ph3943
  %index3949 = phi i64 [ 0, %vector.ph3943 ], [ %index.next3976, %vector.body3948 ] ; 2 uses
  %vec.ind3950 = phi <4 x i64> [ %induction3947, %vector.ph3943 ], [ %vec.ind.next3977, %vector.body3948 ] ; 2 uses
  %wide.gep3951 = getelementptr inbounds nuw [4 x i8], ptr %i.ovw, <4 x i64> %vec.ind3950 ; 2 uses
  %i.oxg = extractelement <4 x ptr> %wide.gep3951, i64 0 ; 4 uses
  %.idx4621 = shl nuw i64 %index3949, 3
  %gep4929 = getelementptr i8, ptr %invariant.gep4928, i64 %.idx4621 ; 7 uses
  %i.oxh = getelementptr inbounds i8, ptr %gep4929, i64 -8
  %wide.vec3952 = load <8 x float>, ptr %i.oxh, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3953 = shufflevector <8 x float> %wide.vec3952, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxi = getelementptr inbounds i8, ptr %gep4929, i64 -4
  %wide.vec3954 = load <8 x float>, ptr %i.oxi, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3955 = shufflevector <8 x float> %wide.vec3954, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3956 = shufflevector <8 x float> %wide.vec3954, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.oxj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3953, %strided.vec3956
  %i.oxk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxj)
  %i.oxl = getelementptr inbounds nuw i8, ptr %i.oxg, i64 4
  %wide.vec3957 = load <8 x float>, ptr %i.oxl, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3958 = shufflevector <8 x float> %wide.vec3957, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxm = getelementptr inbounds i8, ptr %i.oxg, i64 -4
  %wide.vec3959 = load <8 x float>, ptr %i.oxm, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3960 = shufflevector <8 x float> %wide.vec3959, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3958, %strided.vec3960
  %i.oxo = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxn)
  %i.oxp = fadd reassoc nsz arcp contract afn <4 x float> %i.oxo, splat (float 1.000000e+00) ; 2 uses
  %i.oxq = fadd reassoc nsz arcp contract afn <4 x float> %i.oxp, %i.oxk
  %i.oxr = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxq ; 2 uses
  %i.oxs = getelementptr inbounds nuw i8, ptr %gep4929, i64 4
  %wide.vec3961 = load <8 x float>, ptr %i.oxs, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3962 = shufflevector <8 x float> %wide.vec3961, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3963 = shufflevector <8 x float> %wide.vec3961, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oxt = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3963, %strided.vec3956
  %i.oxu = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxt)
  %i.oxv = fadd reassoc nsz arcp contract afn <4 x float> %i.oxp, %i.oxu
  %i.oxw = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxv ; 2 uses
  %i.oxx = getelementptr inbounds i8, ptr %gep4929, i64 -1088
  %wide.vec3964 = load <8 x float>, ptr %i.oxx, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3965 = shufflevector <8 x float> %wide.vec3964, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3965, %strided.vec3956
  %i.oxz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxy)
  %i.oya = getelementptr inbounds nuw i8, ptr %i.oxg, i64 544
  %wide.vec3966 = load <8 x float>, ptr %i.oya, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3967 = shufflevector <8 x float> %wide.vec3966, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyb = getelementptr inbounds i8, ptr %i.oxg, i64 -544
  %wide.vec3968 = load <8 x float>, ptr %i.oyb, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3969 = shufflevector <8 x float> %wide.vec3968, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3967, %strided.vec3969
  %i.oyd = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyc)
  %i.oye = fadd reassoc nsz arcp contract afn <4 x float> %i.oyd, splat (float 1.000000e+00) ; 2 uses
  %i.oyf = fadd reassoc nsz arcp contract afn <4 x float> %i.oye, %i.oxz
  %i.oyg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyf ; 2 uses
  %i.oyh = getelementptr inbounds nuw i8, ptr %gep4929, i64 1088
  %wide.vec3970 = load <8 x float>, ptr %i.oyh, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3971 = shufflevector <8 x float> %wide.vec3970, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3971, %strided.vec3956
  %i.oyj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyi)
  %i.oyk = fadd reassoc nsz arcp contract afn <4 x float> %i.oye, %i.oyj
  %i.oyl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyk ; 2 uses
  %i.oym = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3960, %strided.vec3955
  %i.oyn = fmul reassoc nsz arcp contract afn <4 x float> %i.oym, %i.oxr
  %i.oyo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3958, %strided.vec3962
  %i.oyp = fmul reassoc nsz arcp contract afn <4 x float> %i.oyo, %i.oxw
  %i.oyq = fadd reassoc nsz arcp contract afn <4 x float> %i.oyp, %i.oyn
  %i.oyr = getelementptr inbounds i8, ptr %gep4929, i64 -544
  %wide.vec3972 = load <8 x float>, ptr %i.oyr, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3973 = shufflevector <8 x float> %wide.vec3972, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oys = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3969, %strided.vec3973
  %i.oyt = fmul reassoc nsz arcp contract afn <4 x float> %i.oys, %i.oyg
  %i.oyu = fadd reassoc nsz arcp contract afn <4 x float> %i.oyq, %i.oyt
  %i.oyv = getelementptr inbounds nuw i8, ptr %gep4929, i64 544
  %wide.vec3974 = load <8 x float>, ptr %i.oyv, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3975 = shufflevector <8 x float> %wide.vec3974, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3967, %strided.vec3975
  %i.oyx = fmul reassoc nsz arcp contract afn <4 x float> %i.oyw, %i.oyl
  %i.oyy = fadd reassoc nsz arcp contract afn <4 x float> %i.oyu, %i.oyx
  %i.oyz = fadd reassoc nsz arcp contract afn <4 x float> %i.oxw, %i.oxr
  %i.oza = fadd reassoc nsz arcp contract afn <4 x float> %i.oyz, %i.oyg
  %i.ozb = fadd reassoc nsz arcp contract afn <4 x float> %i.oza, %i.oyl
  %i.ozc = fdiv reassoc nsz arcp contract afn <4 x float> %i.oyy, %i.ozb
  %i.ozd = fadd reassoc nsz arcp contract afn <4 x float> %i.ozc, %strided.vec3956
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ozd, <4 x ptr> align 4 %wide.gep3951, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3976 = add nuw i64 %index3949, 4     ; 2 uses
  %vec.ind.next3977 = add nuw nsw <4 x i64> %vec.ind3950, splat (i64 8)
  %i.oze = icmp eq i64 %index.next3976, %n.vec3944
  br i1 %i.oze, label %scalar.ph3941.preheader, label %vector.body3948, !llvm.loop !472

._crit_edge1140.i:                                ; preds = %scalar.ph3941, %.lr.ph1143.i
  %indvars.iv.next1288.i = add nuw nsw i64 %indvars.iv1287.i, 1 ; 2 uses
  %exitcond1147.not = icmp eq i64 %indvars.iv.next1288.i, %i.lza
  %indvar.next3928 = add i64 %indvar3927, 1
  br i1 %exitcond1147.not, label %.lr.ph1151.i, label %.lr.ph1143.i

scalar.ph3941:                                    ; preds = %scalar.ph3941.preheader, %scalar.ph3941
  %indvars.iv1284.i = phi i64 [ %indvars.iv.next1285.i, %scalar.ph3941 ], [ %indvars.iv1284.i.ph, %scalar.ph3941.preheader ] ; 3 uses
  %i.ozf = getelementptr inbounds nuw [4 x i8], ptr %i.ovw, i64 %indvars.iv1284.i ; 5 uses
  %i.ozg = getelementptr inbounds nuw [4 x i8], ptr %i.owa, i64 %indvars.iv1284.i ; 9 uses
  %i.ozh = getelementptr inbounds i8, ptr %i.ozg, i64 -4
  %i.ozi = getelementptr inbounds nuw i8, ptr %i.ozg, i64 4
  %i.ozj = getelementptr inbounds nuw i8, ptr %i.ozf, i64 544
  %i.ozk = getelementptr inbounds i8, ptr %i.ozf, i64 -544
  %i.ozl = getelementptr inbounds i8, ptr %i.ozf, i64 -4
  %i.ozm = getelementptr inbounds nuw i8, ptr %i.ozf, i64 4
  %i.ozn = load float, ptr %i.ozj, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozo = load float, ptr %i.ozk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozp = load float, ptr %i.ozl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozq = load float, ptr %i.ozm, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozr = fsub reassoc nsz arcp contract afn float %i.ozn, %i.ozo
  %i.ozs = fsub reassoc nsz arcp contract afn float %i.ozq, %i.ozp
  %i.ozt = insertelement <2 x float> poison, float %i.ozs, i64 0
  %i.ozu = insertelement <2 x float> %i.ozt, float %i.ozr, i64 1
  %i.ozv = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ozu)
  %i.ozw = fadd reassoc nsz arcp contract afn <2 x float> %i.ozv, splat (float 1.000000e+00)
  %i.ozx = shufflevector <2 x float> %i.ozw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ozy = getelementptr inbounds nuw i8, ptr %i.ozg, i64 544
  %i.ozz = getelementptr inbounds i8, ptr %i.ozg, i64 -544
  %i.paa = load float, ptr %i.ozi, align 4, !tbaa !22, !noalias !402
  %i.pab = load float, ptr %i.ozg, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pac = load float, ptr %i.ozh, align 4, !tbaa !22, !noalias !402
  %i.pad = load float, ptr %i.ozy, align 4, !tbaa !22, !noalias !402
  %i.pae = load float, ptr %i.ozz, align 4, !tbaa !22, !noalias !402
  %i.paf = getelementptr inbounds nuw i8, ptr %i.ozg, i64 1088
  %i.pag = getelementptr inbounds i8, ptr %i.ozg, i64 -1088
  %i.pah = getelementptr inbounds i8, ptr %i.ozg, i64 -8
  %i.pai = getelementptr inbounds nuw i8, ptr %i.ozg, i64 8
  %i.paj = load float, ptr %i.paf, align 4, !tbaa !22, !noalias !402
  %i.pak = load float, ptr %i.pag, align 4, !tbaa !22, !noalias !402
  %i.pal = load float, ptr %i.pah, align 4, !tbaa !22, !noalias !402
  %i.pam = load float, ptr %i.pai, align 4, !tbaa !22, !noalias !402
  %i.pan = insertelement <4 x float> poison, float %i.pam, i64 0
  %i.pao = insertelement <4 x float> %i.pan, float %i.pal, i64 1
  %i.pap = insertelement <4 x float> %i.pao, float %i.pak, i64 2
  %i.paq = insertelement <4 x float> %i.pap, float %i.paj, i64 3
  %i.par = insertelement <4 x float> poison, float %i.pab, i64 0
  %i.pas = shufflevector <4 x float> %i.par, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pat = fsub reassoc nsz arcp contract afn <4 x float> %i.paq, %i.pas
  %i.pau = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pat)
  %i.pav = fadd reassoc nsz arcp contract afn <4 x float> %i.ozx, %i.pau
  %i.paw = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pav ; 2 uses
  %i.pax = fsub reassoc nsz arcp contract afn float %i.ozn, %i.pad
  %i.pay = fsub reassoc nsz arcp contract afn float %i.ozo, %i.pae
  %i.paz = fsub reassoc nsz arcp contract afn float %i.ozp, %i.pac
  %i.pba = fsub reassoc nsz arcp contract afn float %i.ozq, %i.paa
  %i.pbb = insertelement <4 x float> poison, float %i.pba, i64 0
  %i.pbc = insertelement <4 x float> %i.pbb, float %i.paz, i64 1
  %i.pbd = insertelement <4 x float> %i.pbc, float %i.pay, i64 2
  %i.pbe = insertelement <4 x float> %i.pbd, float %i.pax, i64 3
  %i.pbf = fmul reassoc nsz arcp contract afn <4 x float> %i.pbe, %i.paw
  %i.pbg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pbf)
  %i.pbh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.paw)
  %i.pbi = fdiv reassoc nsz arcp contract afn float %i.pbg, %i.pbh
  %i.pbj = fadd reassoc nsz arcp contract afn float %i.pbi, %i.pab
  store float %i.pbj, ptr %i.ozf, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1285.i = add nuw nsw i64 %indvars.iv1284.i, 2 ; 2 uses
  %i.pbk = icmp slt i64 %indvars.iv.next1285.i, %i.ore
  br i1 %i.pbk, label %scalar.ph3941, label %._crit_edge1140.i, !llvm.loop !473

.lr.ph1151.i:                                     ; preds = %._crit_edge1140.i, %._crit_edge1149.i
  %indvar3838 = phi i64 [ %indvar.next3839, %._crit_edge1149.i ], [ 0, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1293.i = phi i64 [ %indvars.iv.next1294.i, %._crit_edge1149.i ], [ %i.lyt, %._crit_edge1140.i ] ; 3 uses
  %i.pbl = mul i64 %indvar3838, 544               ; 4 uses
  %i.pbm = add i64 %i.lzd, %i.pbl
  %i.pbn = add i64 %i.lze, %i.pbl
  %scevgep3847 = getelementptr i8, ptr %i.lzo, i64 %i.pbl
  %scevgep3849 = getelementptr i8, ptr %i.lzq, i64 %i.pbl
  %indvars.iv1293.tr.i = trunc i64 %indvars.iv1293.i to i32
  %i.pbo = shl i32 %indvars.iv1293.tr.i, 1
  %i.pbp = and i32 %i.pbo, 14                     ; 2 uses
  %.tr.i968.i = shl nuw nsw i32 %i.pbp, 1
  %i.pbq = or disjoint i32 %.tr.i968.i, 2
  %i.pbr = lshr i32 %.fr1059, %i.pbq              ; 3 uses
  %i.pbs = and i32 %i.pbr, 1                      ; 2 uses
  %i.pbt = or disjoint i32 %i.pbs, %i.orc         ; 2 uses
  %i.pbu = icmp slt i32 %i.pbt, %i.ord
  br i1 %i.pbu, label %.preheader.lr.ph.i560, label %._crit_edge1149.i

.preheader.lr.ph.i560:                            ; preds = %.lr.ph1151.i
  %i.pbv = or disjoint i32 %i.pbs, %i.pbp
  %i.pbw = shl nuw nsw i32 %i.pbv, 1
  %i.pbx = xor i32 %i.pbw, 2
  %i.pby = lshr i32 %.fr1059, %i.pbx
  %i.pbz = and i32 %i.pby, 3                      ; 2 uses
  %i.pca = mul nuw nsw i64 %indvars.iv1293.i, 136 ; 3 uses
  %i.pcb = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.pca ; 2 uses
  %i.pcc = zext nneg i32 %i.pbz to i64
  %i.pcd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pcc
  %i.pce = zext nneg i32 %i.pbt to i64            ; 5 uses
  %i.pcf = load ptr, ptr %i.pcd, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pcg = getelementptr inbounds nuw [4 x i8], ptr %i.pcf, i64 %i.pca ; 2 uses
  %i.pch = sub nsw i32 2, %i.pbz
  %i.pci = sext i32 %i.pch to i64
  %i.pcj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pci
  %i.pck = load ptr, ptr %i.pcj, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pcl = getelementptr inbounds nuw [4 x i8], ptr %i.pck, i64 %i.pca ; 2 uses
  %i.pcm = and i32 %i.pbr, 1
  %i.pcn = zext nneg i32 %i.pcm to i64            ; 2 uses
  %i.pco = or disjoint i64 %i.orx, %i.pcn
  %i.pcp = add nuw nsw i64 %i.pco, 4
  %i.pcq = call i64 @llvm.smax.i64(i64 %i.pcp, i64 %i.osa)
  %28 = or disjoint i64 %i.orx, %i.pcn
  %29 = sub nsw i64 %i.pcq, %28
  %30 = add i64 %29, -3                           ; 2 uses
  %i.pcr = lshr i64 %30, 1
  %i.pcs = add nuw i64 %i.pcr, 1                  ; 2 uses
  %min.iters.check3863 = icmp ult i64 %30, 8
  br i1 %min.iters.check3863, label %.preheader.i561.preheader, label %vector.memcheck3837

vector.memcheck3837:                              ; preds = %.preheader.lr.ph.i560
  %i.pct = and i32 %i.pbr, 1
  %i.pcu = zext nneg i32 %i.pct to i64            ; 3 uses
  %i.pcv = or disjoint i64 %i.ork, %i.pcu
  %i.pcw = shl nuw nsw i64 %i.pcv, 2              ; 4 uses
  %i.pcx = add i64 %i.pbm, %i.pcw                 ; 2 uses
  %scevgep3840 = getelementptr i8, ptr %i.pcf, i64 %i.pcx ; 2 uses
  %i.pcy = or disjoint i64 %i.orl, %i.pcu
  %smax3843 = call i64 @llvm.smax.i64(i64 %i.pcy, i64 %i.orn)
  %i.pcz = add nuw i64 %smax3843, 4611686018427387901
  %i.pda = or disjoint i64 %i.ork, %i.pcu
  %i.pdb = sub nuw i64 %i.pcz, %i.pda
  %i.pdc = shl i64 %i.pdb, 2
  %i.pdd = and i64 %i.pdc, -8                     ; 2 uses
  %i.pde = add i64 %i.pbn, %i.pdd
  %i.pdf = add i64 %i.pde, %i.pcw                 ; 2 uses
  %scevgep3844 = getelementptr i8, ptr %i.pcf, i64 %i.pdf ; 2 uses
  %scevgep3845 = getelementptr i8, ptr %i.pck, i64 %i.pcx ; 2 uses
  %scevgep3846 = getelementptr i8, ptr %i.pck, i64 %i.pdf ; 2 uses
  %scevgep3848 = getelementptr i8, ptr %scevgep3847, i64 %i.pcw ; 2 uses
  %i.pdg = getelementptr i8, ptr %scevgep3849, i64 %i.pdd
  %scevgep3850 = getelementptr i8, ptr %i.pdg, i64 %i.pcw ; 2 uses
  %bound03851 = icmp ult ptr %scevgep3840, %scevgep3846
  %bound13852 = icmp ult ptr %scevgep3845, %scevgep3844
  %found.conflict3853 = and i1 %bound03851, %bound13852
  %bound03854 = icmp ult ptr %scevgep3840, %scevgep3850
  %bound13855 = icmp ult ptr %scevgep3848, %scevgep3844
  %found.conflict3856 = and i1 %bound03854, %bound13855
  %conflict.rdx3857 = or i1 %found.conflict3853, %found.conflict3856
  %bound03858 = icmp ult ptr %scevgep3845, %scevgep3850
  %bound13859 = icmp ult ptr %scevgep3848, %scevgep3846
  %found.conflict3860 = and i1 %bound03858, %bound13859
  %conflict.rdx3861 = or i1 %conflict.rdx3857, %found.conflict3860
  br i1 %conflict.rdx3861, label %.preheader.i561.preheader, label %vector.ph3864

vector.ph3864:                                    ; preds = %vector.memcheck3837
  %i.pdh = and i64 %i.pcs, 3                      ; 2 uses
  %i.pdi = icmp eq i64 %i.pdh, 0
  %i.pdj = select i1 %i.pdi, i64 4, i64 %i.pdh
  %n.vec3865 = sub i64 %i.pcs, %i.pdj             ; 2 uses
  %i.pdk = shl i64 %n.vec3865, 1
  %i.pdl = add i64 %i.pdk, %i.pce
  %broadcast.splatinsert3866 = insertelement <4 x i64> poison, i64 %i.pce, i64 0
  %broadcast.splat3867 = shufflevector <4 x i64> %broadcast.splatinsert3866, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3868 = add nuw nsw <4 x i64> %broadcast.splat3867, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4930 = getelementptr [4 x i8], ptr %i.pcb, i64 %i.pce
  br label %vector.body3869

vector.body3869:                                  ; preds = %vector.body3869, %vector.ph3864
  %index3870 = phi i64 [ 0, %vector.ph3864 ], [ %index.next3922, %vector.body3869 ] ; 2 uses
  %vec.ind3871 = phi <4 x i64> [ %induction3868, %vector.ph3864 ], [ %vec.ind.next3923, %vector.body3869 ] ; 3 uses
  %.idx4623 = shl nuw i64 %index3870, 3
  %gep4931 = getelementptr i8, ptr %invariant.gep4930, i64 %.idx4623 ; 8 uses
  %i.pdm = getelementptr inbounds i8, ptr %gep4931, i64 -8 ; 2 uses
  %i.pdn = getelementptr inbounds i8, ptr %gep4931, i64 -1088 ; 2 uses
  %i.pdo = getelementptr inbounds nuw i8, ptr %gep4931, i64 1088 ; 2 uses
  %i.pdp = getelementptr inbounds i8, ptr %gep4931, i64 -4
  %i.pdq = getelementptr inbounds nuw i8, ptr %gep4931, i64 4 ; 2 uses
  %i.pdr = getelementptr inbounds i8, ptr %gep4931, i64 -544 ; 2 uses
  %i.pds = getelementptr inbounds nuw i8, ptr %gep4931, i64 544 ; 2 uses
  %wide.gep3872 = getelementptr inbounds nuw [4 x i8], ptr %i.pcg, <4 x i64> %vec.ind3871 ; 2 uses
  %i.pdt = extractelement <4 x ptr> %wide.gep3872, i64 0 ; 4 uses
  %wide.vec3873 = load <8 x float>, ptr %i.pdm, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3874 = shufflevector <8 x float> %wide.vec3873, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3875 = load <8 x float>, ptr %gep4931, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3876 = shufflevector <8 x float> %wide.vec3875, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %i.pdu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3874, %strided.vec3876
  %i.pdv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdu)
  %i.pdw = getelementptr inbounds nuw i8, ptr %i.pdt, i64 4
  %wide.vec3877 = load <8 x float>, ptr %i.pdw, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3878 = shufflevector <8 x float> %wide.vec3877, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdx = getelementptr inbounds i8, ptr %i.pdt, i64 -4
  %wide.vec3879 = load <8 x float>, ptr %i.pdx, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3880 = shufflevector <8 x float> %wide.vec3879, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3878, %strided.vec3880
  %i.pdz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdy)
  %i.pea = fadd reassoc nsz arcp contract afn <4 x float> %i.pdz, splat (float 1.000000e+00) ; 2 uses
  %i.peb = fadd reassoc nsz arcp contract afn <4 x float> %i.pea, %i.pdv
  %i.pec = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.peb ; 2 uses
  %wide.vec3881 = load <8 x float>, ptr %i.pdq, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3882 = shufflevector <8 x float> %wide.vec3881, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3883 = shufflevector <8 x float> %wide.vec3881, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ped = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3883, %strided.vec3876
  %i.pee = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ped)
  %i.pef = fadd reassoc nsz arcp contract afn <4 x float> %i.pea, %i.pee
  %i.peg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pef ; 2 uses
  %wide.vec3884 = load <8 x float>, ptr %i.pdn, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3885 = shufflevector <8 x float> %wide.vec3884, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.peh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3885, %strided.vec3876
  %i.pei = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.peh)
  %i.pej = getelementptr inbounds nuw i8, ptr %i.pdt, i64 544
  %wide.vec3886 = load <8 x float>, ptr %i.pej, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3887 = shufflevector <8 x float> %wide.vec3886, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pek = getelementptr inbounds i8, ptr %i.pdt, i64 -544
  %wide.vec3888 = load <8 x float>, ptr %i.pek, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3889 = shufflevector <8 x float> %wide.vec3888, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pel = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3887, %strided.vec3889
  %i.pem = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pel)
  %i.pen = fadd reassoc nsz arcp contract afn <4 x float> %i.pem, splat (float 1.000000e+00) ; 2 uses
  %i.peo = fadd reassoc nsz arcp contract afn <4 x float> %i.pen, %i.pei
  %i.pep = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.peo ; 2 uses
  %wide.vec3890 = load <8 x float>, ptr %i.pdo, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3891 = shufflevector <8 x float> %wide.vec3890, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.peq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3891, %strided.vec3876
  %i.per = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.peq)
  %i.pes = fadd reassoc nsz arcp contract afn <4 x float> %i.pen, %i.per
  %i.pet = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pes ; 2 uses
  %wide.vec3892 = load <8 x float>, ptr %i.pdm, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3893 = shufflevector <8 x float> %wide.vec3892, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3894 = shufflevector <8 x float> %wide.vec3892, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.peu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3894, %strided.vec3880
  %i.pev = fmul reassoc nsz arcp contract afn <4 x float> %i.peu, %i.pec
  %i.pew = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3882, %strided.vec3878
  %i.pex = fmul reassoc nsz arcp contract afn <4 x float> %i.pew, %i.peg
  %i.pey = fadd reassoc nsz arcp contract afn <4 x float> %i.pex, %i.pev
  %wide.vec3895 = load <8 x float>, ptr %i.pdr, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3896 = shufflevector <8 x float> %wide.vec3895, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pez = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3896, %strided.vec3889
  %i.pfa = fmul reassoc nsz arcp contract afn <4 x float> %i.pez, %i.pep
  %i.pfb = fadd reassoc nsz arcp contract afn <4 x float> %i.pey, %i.pfa
  %wide.vec3897 = load <8 x float>, ptr %i.pds, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3898 = shufflevector <8 x float> %wide.vec3897, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3898, %strided.vec3887
  %i.pfd = fmul reassoc nsz arcp contract afn <4 x float> %i.pfc, %i.pet
  %i.pfe = fadd reassoc nsz arcp contract afn <4 x float> %i.pfb, %i.pfd
  %i.pff = fadd reassoc nsz arcp contract afn <4 x float> %i.peg, %i.pec
  %i.pfg = fadd reassoc nsz arcp contract afn <4 x float> %i.pff, %i.pep
  %i.pfh = fadd reassoc nsz arcp contract afn <4 x float> %i.pfg, %i.pet
  %i.pfi = fdiv reassoc nsz arcp contract afn <4 x float> %i.pfe, %i.pfh
  %i.pfj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3876, %i.pfi
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pfj, <4 x ptr> align 4 %wide.gep3872, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !477, !noalias !479
  %wide.gep3899 = getelementptr inbounds nuw [4 x i8], ptr %i.pcl, <4 x i64> %vec.ind3871 ; 2 uses
  %i.pfk = extractelement <4 x ptr> %wide.gep3899, i64 0 ; 4 uses
  %wide.vec3900 = load <8 x float>, ptr %i.pdp, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3901 = shufflevector <8 x float> %wide.vec3900, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3902 = shufflevector <8 x float> %wide.vec3900, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.pfl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3893, %strided.vec3902
  %i.pfm = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfl)
  %i.pfn = getelementptr inbounds nuw i8, ptr %i.pfk, i64 4
  %wide.vec3903 = load <8 x float>, ptr %i.pfn, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3904 = shufflevector <8 x float> %wide.vec3903, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pfo = getelementptr inbounds i8, ptr %i.pfk, i64 -4
  %wide.vec3905 = load <8 x float>, ptr %i.pfo, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3906 = shufflevector <8 x float> %wide.vec3905, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pfp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3904, %strided.vec3906
  %i.pfq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfp)
  %i.pfr = fadd reassoc nsz arcp contract afn <4 x float> %i.pfq, splat (float 1.000000e+00) ; 2 uses
  %i.pfs = fadd reassoc nsz arcp contract afn <4 x float> %i.pfr, %i.pfm
  %i.pft = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfs ; 2 uses
  %wide.vec3907 = load <8 x float>, ptr %i.pdq, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3908 = shufflevector <8 x float> %wide.vec3907, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3909 = shufflevector <8 x float> %wide.vec3907, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pfu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3909, %strided.vec3902
  %i.pfv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfu)
  %i.pfw = fadd reassoc nsz arcp contract afn <4 x float> %i.pfr, %i.pfv
  %i.pfx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfw ; 2 uses
  %wide.vec3910 = load <8 x float>, ptr %i.pdn, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3911 = shufflevector <8 x float> %wide.vec3910, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3911, %strided.vec3902
  %i.pfz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfy)
  %i.pga = getelementptr inbounds nuw i8, ptr %i.pfk, i64 544
  %wide.vec3912 = load <8 x float>, ptr %i.pga, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3913 = shufflevector <8 x float> %wide.vec3912, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pgb = getelementptr inbounds i8, ptr %i.pfk, i64 -544
  %wide.vec3914 = load <8 x float>, ptr %i.pgb, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3915 = shufflevector <8 x float> %wide.vec3914, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pgc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3913, %strided.vec3915
  %i.pgd = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pgc)
  %i.pge = fadd reassoc nsz arcp contract afn <4 x float> %i.pgd, splat (float 1.000000e+00) ; 2 uses
  %i.pgf = fadd reassoc nsz arcp contract afn <4 x float> %i.pge, %i.pfz
  %i.pgg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pgf ; 2 uses
  %wide.vec3916 = load <8 x float>, ptr %i.pdo, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3916, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3917, %strided.vec3902
  %i.pgi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pgh)
  %i.pgj = fadd reassoc nsz arcp contract afn <4 x float> %i.pge, %i.pgi
  %i.pgk = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pgj ; 2 uses
  %i.pgl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3901, %strided.vec3906
  %i.pgm = fmul reassoc nsz arcp contract afn <4 x float> %i.pgl, %i.pft
  %i.pgn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3908, %strided.vec3904
  %i.pgo = fmul reassoc nsz arcp contract afn <4 x float> %i.pgn, %i.pfx
  %i.pgp = fadd reassoc nsz arcp contract afn <4 x float> %i.pgo, %i.pgm
  %wide.vec3918 = load <8 x float>, ptr %i.pdr, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3919, %strided.vec3915
  %i.pgr = fmul reassoc nsz arcp contract afn <4 x float> %i.pgq, %i.pgg
  %i.pgs = fadd reassoc nsz arcp contract afn <4 x float> %i.pgp, %i.pgr
  %wide.vec3920 = load <8 x float>, ptr %i.pds, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3921 = shufflevector <8 x float> %wide.vec3920, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgt = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3921, %strided.vec3913
  %i.pgu = fmul reassoc nsz arcp contract afn <4 x float> %i.pgt, %i.pgk
  %i.pgv = fadd reassoc nsz arcp contract afn <4 x float> %i.pgs, %i.pgu
  %i.pgw = fadd reassoc nsz arcp contract afn <4 x float> %i.pfx, %i.pft
  %i.pgx = fadd reassoc nsz arcp contract afn <4 x float> %i.pgw, %i.pgg
  %i.pgy = fadd reassoc nsz arcp contract afn <4 x float> %i.pgx, %i.pgk
  %i.pgz = fdiv reassoc nsz arcp contract afn <4 x float> %i.pgv, %i.pgy
  %i.pha = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3902, %i.pgz
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pha, <4 x ptr> align 4 %wide.gep3899, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !481, !noalias !482
  %index.next3922 = add nuw i64 %index3870, 4     ; 2 uses
  %vec.ind.next3923 = add nuw nsw <4 x i64> %vec.ind3871, splat (i64 8)
  %i.phb = icmp eq i64 %index.next3922, %n.vec3865
  br i1 %i.phb, label %.preheader.i561.preheader, label %vector.body3869, !llvm.loop !483

.preheader.i561.preheader:                        ; preds = %vector.body3869, %vector.memcheck3837, %.preheader.lr.ph.i560
  %indvars.iv1290.i.ph = phi i64 [ %i.pce, %vector.memcheck3837 ], [ %i.pce, %.preheader.lr.ph.i560 ], [ %i.pdl, %vector.body3869 ]
  br label %.preheader.i561

.preheader.i561:                                  ; preds = %.preheader.i561.preheader, %.preheader.i561
  %indvars.iv1290.i = phi i64 [ %indvars.iv.next1291.i, %.preheader.i561 ], [ %indvars.iv1290.i.ph, %.preheader.i561.preheader ] ; 4 uses
  %i.phc = getelementptr inbounds nuw [4 x i8], ptr %i.pcb, i64 %indvars.iv1290.i ; 10 uses
  %i.phd = getelementptr inbounds i8, ptr %i.phc, i64 -4 ; 2 uses
  %i.phe = getelementptr inbounds nuw i8, ptr %i.phc, i64 4 ; 2 uses
  %i.phf = getelementptr inbounds nuw [4 x i8], ptr %i.pcg, i64 %indvars.iv1290.i ; 5 uses
  %i.phg = getelementptr inbounds nuw i8, ptr %i.phf, i64 544
  %i.phh = getelementptr inbounds i8, ptr %i.phf, i64 -544
  %i.phi = getelementptr inbounds i8, ptr %i.phf, i64 -4
  %i.phj = getelementptr inbounds nuw i8, ptr %i.phf, i64 4
  %i.phk = load float, ptr %i.phg, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phl = load float, ptr %i.phh, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phm = load float, ptr %i.phi, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phn = load float, ptr %i.phj, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pho = fsub reassoc nsz arcp contract afn float %i.phk, %i.phl
  %i.php = fsub reassoc nsz arcp contract afn float %i.phn, %i.phm
  %i.phq = insertelement <2 x float> poison, float %i.php, i64 0
  %i.phr = insertelement <2 x float> %i.phq, float %i.pho, i64 1
  %i.phs = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.phr)
  %i.pht = fadd reassoc nsz arcp contract afn <2 x float> %i.phs, splat (float 1.000000e+00)
  %i.phu = shufflevector <2 x float> %i.pht, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.phv = load float, ptr %i.phe, align 4, !tbaa !22, !noalias !402
  %i.phw = load float, ptr %i.phc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phx = load float, ptr %i.phd, align 4, !tbaa !22, !noalias !402
  %i.phy = insertelement <4 x float> poison, float %i.phw, i64 0
  %i.phz = shufflevector <4 x float> %i.phy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pia = fsub reassoc nsz arcp contract afn float %i.phx, %i.phm
  %i.pib = fsub reassoc nsz arcp contract afn float %i.phv, %i.phn
  %i.pic = insertelement <4 x float> poison, float %i.pib, i64 0
  %i.pid = insertelement <4 x float> %i.pic, float %i.pia, i64 1
  %i.pie = getelementptr inbounds nuw [4 x i8], ptr %i.pcl, i64 %indvars.iv1290.i ; 5 uses
  %i.pif = getelementptr inbounds nuw i8, ptr %i.phc, i64 544 ; 2 uses
  %i.pig = getelementptr inbounds i8, ptr %i.phc, i64 -544 ; 2 uses
  %i.pih = load float, ptr %i.pif, align 4, !tbaa !22, !noalias !402
  %i.pii = load float, ptr %i.pig, align 4, !tbaa !22, !noalias !402
  %i.pij = fsub reassoc nsz arcp contract afn float %i.pih, %i.phk
  %i.pik = fsub reassoc nsz arcp contract afn float %i.pii, %i.phl
  %i.pil = insertelement <4 x float> %i.pid, float %i.pik, i64 2
  %i.pim = insertelement <4 x float> %i.pil, float %i.pij, i64 3
  %i.pin = getelementptr inbounds nuw i8, ptr %i.pie, i64 544
  %i.pio = getelementptr inbounds i8, ptr %i.pie, i64 -544
  %i.pip = getelementptr inbounds i8, ptr %i.pie, i64 -4
  %i.piq = getelementptr inbounds nuw i8, ptr %i.pie, i64 4
  %i.pir = getelementptr inbounds nuw i8, ptr %i.phc, i64 1088 ; 2 uses
  %i.pis = getelementptr inbounds i8, ptr %i.phc, i64 -1088 ; 2 uses
  %i.pit = getelementptr inbounds i8, ptr %i.phc, i64 -8 ; 2 uses
  %i.piu = getelementptr inbounds nuw i8, ptr %i.phc, i64 8 ; 2 uses
  %i.piv = load float, ptr %i.pir, align 4, !tbaa !22, !noalias !402
  %i.piw = load float, ptr %i.pit, align 4, !tbaa !22, !noalias !402
  %i.pix = load float, ptr %i.pis, align 4, !tbaa !22, !noalias !402
  %i.piy = load float, ptr %i.piu, align 4, !tbaa !22, !noalias !402
  %i.piz = insertelement <4 x float> poison, float %i.piy, i64 0
  %i.pja = insertelement <4 x float> %i.piz, float %i.piw, i64 1
  %i.pjb = insertelement <4 x float> %i.pja, float %i.pix, i64 2
  %i.pjc = insertelement <4 x float> %i.pjb, float %i.piv, i64 3
  %i.pjd = fsub reassoc nsz arcp contract afn <4 x float> %i.pjc, %i.phz
  %i.pje = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pjd)
  %i.pjf = fadd reassoc nsz arcp contract afn <4 x float> %i.phu, %i.pje
  %i.pjg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pjf ; 2 uses
  %i.pjh = fmul reassoc nsz arcp contract afn <4 x float> %i.pim, %i.pjg
  %i.pji = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pjh)
  %i.pjj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pjg)
  %i.pjk = fdiv reassoc nsz arcp contract afn float %i.pji, %i.pjj
  %i.pjl = fsub reassoc nsz arcp contract afn float %i.phw, %i.pjk
  store float %i.pjl, ptr %i.phf, align 4, !tbaa !22, !noalias !402
  %i.pjm = load float, ptr %i.pin, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjn = load float, ptr %i.pio, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjo = load float, ptr %i.pip, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjp = load float, ptr %i.piq, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjq = fsub reassoc nsz arcp contract afn float %i.pjm, %i.pjn
  %i.pjr = fsub reassoc nsz arcp contract afn float %i.pjp, %i.pjo
  %i.pjs = insertelement <2 x float> poison, float %i.pjr, i64 0
  %i.pjt = insertelement <2 x float> %i.pjs, float %i.pjq, i64 1
  %i.pju = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pjt)
  %i.pjv = fadd reassoc nsz arcp contract afn <2 x float> %i.pju, splat (float 1.000000e+00)
  %i.pjw = shufflevector <2 x float> %i.pjv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pjx = load float, ptr %i.phe, align 4, !tbaa !22, !noalias !402
  %i.pjy = load float, ptr %i.phc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjz = load float, ptr %i.phd, align 4, !tbaa !22, !noalias !402
  %i.pka = load float, ptr %i.pif, align 4, !tbaa !22, !noalias !402
  %i.pkb = load float, ptr %i.pig, align 4, !tbaa !22, !noalias !402
  %i.pkc = load float, ptr %i.pir, align 4, !tbaa !22, !noalias !402
  %i.pkd = load float, ptr %i.pis, align 4, !tbaa !22, !noalias !402
  %i.pke = load float, ptr %i.pit, align 4, !tbaa !22, !noalias !402
  %i.pkf = load float, ptr %i.piu, align 4, !tbaa !22, !noalias !402
  %i.pkg = insertelement <4 x float> poison, float %i.pkf, i64 0
  %i.pkh = insertelement <4 x float> %i.pkg, float %i.pke, i64 1
  %i.pki = insertelement <4 x float> %i.pkh, float %i.pkd, i64 2
  %i.pkj = insertelement <4 x float> %i.pki, float %i.pkc, i64 3
  %i.pkk = insertelement <4 x float> poison, float %i.pjy, i64 0
  %i.pkl = shufflevector <4 x float> %i.pkk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pkm = fsub reassoc nsz arcp contract afn <4 x float> %i.pkj, %i.pkl
  %i.pkn = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkm)
  %i.pko = fadd reassoc nsz arcp contract afn <4 x float> %i.pjw, %i.pkn
  %i.pkp = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pko ; 2 uses
  %i.pkq = fsub reassoc nsz arcp contract afn float %i.pka, %i.pjm
  %i.pkr = fsub reassoc nsz arcp contract afn float %i.pkb, %i.pjn
  %i.pks = fsub reassoc nsz arcp contract afn float %i.pjz, %i.pjo
  %i.pkt = fsub reassoc nsz arcp contract afn float %i.pjx, %i.pjp
  %i.pku = insertelement <4 x float> poison, float %i.pkt, i64 0
  %i.pkv = insertelement <4 x float> %i.pku, float %i.pks, i64 1
  %i.pkw = insertelement <4 x float> %i.pkv, float %i.pkr, i64 2
  %i.pkx = insertelement <4 x float> %i.pkw, float %i.pkq, i64 3
  %i.pky = fmul reassoc nsz arcp contract afn <4 x float> %i.pkx, %i.pkp
  %i.pkz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pky)
  %i.pla = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pkp)
  %i.plb = fdiv reassoc nsz arcp contract afn float %i.pkz, %i.pla
  %i.plc = fsub reassoc nsz arcp contract afn float %i.pjy, %i.plb
  store float %i.plc, ptr %i.pie, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1291.i = add nuw nsw i64 %indvars.iv1290.i, 2 ; 2 uses
  %i.pld = icmp slt i64 %indvars.iv.next1291.i, %i.ore
  br i1 %i.pld, label %.preheader.i561, label %._crit_edge1149.i, !llvm.loop !484

._crit_edge1149.i:                                ; preds = %.preheader.i561, %.lr.ph1151.i
  %indvars.iv.next1294.i = add nuw nsw i64 %indvars.iv1293.i, 1 ; 2 uses
  %exitcond1149.not = icmp eq i64 %indvars.iv.next1294.i, %i.lza
  %indvar.next3839 = add i64 %indvar3838, 1
  br i1 %exitcond1149.not, label %.lr.ph1157.i, label %.lr.ph1151.i

._crit_edge1158.i.loopexit:                       ; preds = %._crit_edge1155.i
  %i.ple = add nuw nsw i32 %.09081159.i, 1        ; 2 uses
  %i.plf = icmp slt i32 %i.ple, %i.lxd
  br i1 %i.plf, label %.lr.ph1143.i.preheader, label %._crit_edge1161.i

.lr.ph1157.i:                                     ; preds = %._crit_edge1149.i, %._crit_edge1155.i
  %indvar3775 = phi i64 [ %indvar.next3776, %._crit_edge1155.i ], [ 0, %._crit_edge1149.i ] ; 2 uses
  %indvars.iv1299.i = phi i64 [ %indvars.iv.next1300.i, %._crit_edge1155.i ], [ %i.lyt, %._crit_edge1149.i ] ; 3 uses
  %i.plg = mul i64 %indvar3775, 544               ; 6 uses
  %scevgep3784 = getelementptr i8, ptr %i.lzs, i64 %i.plg
  %scevgep3786 = getelementptr i8, ptr %i.lzu, i64 %i.plg
  %indvars.iv1299.tr.i = trunc i64 %indvars.iv1299.i to i32
  %i.plh = shl i32 %indvars.iv1299.tr.i, 1
  %i.pli = and i32 %i.plh, 14                     ; 2 uses
  %i.plj = shl nuw nsw i32 %i.pli, 1
  %i.plk = lshr i32 %.fr1059, %i.plj              ; 3 uses
  %i.pll = and i32 %i.plk, 1                      ; 2 uses
  %i.plm = or disjoint i32 %i.pll, %i.orc         ; 2 uses
  %i.pln = icmp slt i32 %i.plm, %i.ord
  br i1 %i.pln, label %.lr.ph1154.i, label %._crit_edge1155.i

.lr.ph1154.i:                                     ; preds = %.lr.ph1157.i
  %i.plo = or disjoint i32 %i.pll, %i.pli
  %i.plp = shl nuw nsw i32 %i.plo, 1
  %i.plq = lshr i32 %.fr1059, %i.plp
  %i.plr = and i32 %i.plq, 3                      ; 2 uses
  %i.pls = sub nsw i32 2, %i.plr
  %i.plt = mul nuw nsw i64 %indvars.iv1299.i, 136 ; 3 uses
  %i.plu = getelementptr inbounds nuw [4 x i8], ptr %i.lww, i64 %i.plt ; 2 uses
  %i.plv = sext i32 %i.pls to i64
  %i.plw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.plv
  %i.plx = load ptr, ptr %i.plw, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ply = getelementptr inbounds nuw [4 x i8], ptr %i.plx, i64 %i.plt ; 2 uses
  %i.plz = zext nneg i32 %i.plr to i64
  %i.pma = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.plz
  %i.pmb = load ptr, ptr %i.pma, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pmc = getelementptr inbounds nuw [4 x i8], ptr %i.pmb, i64 %i.plt ; 2 uses
  %i.pmd = zext nneg i32 %i.plm to i64            ; 5 uses
  %i.pme = and i32 %i.plk, 1
  %i.pmf = zext nneg i32 %i.pme to i64            ; 2 uses
  %i.pmg = or disjoint i64 %i.osb, %i.pmf
  %i.pmh = add nuw nsw i64 %i.pmg, 4
  %i.pmi = call i64 @llvm.smax.i64(i64 %i.pmh, i64 %i.ose)
  %31 = or disjoint i64 %i.osb, %i.pmf
  %32 = sub nsw i64 %i.pmi, %31
  %33 = add i64 %32, -3                           ; 2 uses
  %i.pmj = lshr i64 %33, 1
  %i.pmk = add nuw i64 %i.pmj, 1                  ; 2 uses
  %min.iters.check3796 = icmp ult i64 %33, 8
  br i1 %min.iters.check3796, label %scalar.ph3795.preheader, label %vector.memcheck3774

scalar.ph3795.preheader:                          ; preds = %vector.body3802, %vector.memcheck3774, %.lr.ph1154.i
  %indvars.iv1296.i.ph = phi i64 [ %i.pmd, %vector.memcheck3774 ], [ %i.pmd, %.lr.ph1154.i ], [ %i.pno, %vector.body3802 ]
  br label %scalar.ph3795

vector.memcheck3774:                              ; preds = %.lr.ph1154.i
  %i.pml = and i32 %i.plk, 1
  %i.pmm = zext nneg i32 %i.pml to i64            ; 3 uses
  %i.pmn = or disjoint i64 %i.orf, %i.pmm
  %i.pmo = shl nuw nsw i64 %i.pmn, 2              ; 6 uses
  %i.pmp = getelementptr i8, ptr %i.plx, i64 %i.lzb
  %i.pmq = getelementptr i8, ptr %i.pmp, i64 552
  %i.pmr = getelementptr i8, ptr %i.pmq, i64 %i.plg
  %scevgep3777 = getelementptr i8, ptr %i.pmr, i64 %i.pmo ; 2 uses
  %i.pms = or disjoint i64 %i.org, %i.pmm
  %smax3780 = call i64 @llvm.smax.i64(i64 %i.pms, i64 %i.orj)
  %i.pmt = add nuw i64 %smax3780, 4611686018427387901
  %i.pmu = or disjoint i64 %i.orf, %i.pmm
  %i.pmv = sub nuw i64 %i.pmt, %i.pmu
  %i.pmw = shl i64 %i.pmv, 2
  %i.pmx = and i64 %i.pmw, -8                     ; 3 uses
  %i.pmy = getelementptr i8, ptr %i.plx, i64 %i.lzb
  %i.pmz = getelementptr i8, ptr %i.pmy, i64 1644
  %i.pna = getelementptr i8, ptr %i.pmz, i64 %i.plg
  %i.pnb = getelementptr i8, ptr %i.pna, i64 %i.pmx
  %scevgep3781 = getelementptr i8, ptr %i.pnb, i64 %i.pmo ; 2 uses
  %i.pnc = getelementptr i8, ptr %i.pmb, i64 %i.lzb
  %i.pnd = getelementptr i8, ptr %i.pnc, i64 8
  %i.pne = getelementptr i8, ptr %i.pnd, i64 %i.plg
  %scevgep3782 = getelementptr i8, ptr %i.pne, i64 %i.pmo
  %i.pnf = getelementptr i8, ptr %i.pmb, i64 %i.lzb
  %i.png = getelementptr i8, ptr %i.pnf, i64 2188
  %i.pnh = getelementptr i8, ptr %i.png, i64 %i.plg
  %i.pni = getelementptr i8, ptr %i.pnh, i64 %i.pmx
  %scevgep3783 = getelementptr i8, ptr %i.pni, i64 %i.pmo
  %scevgep3785 = getelementptr i8, ptr %scevgep3784, i64 %i.pmo
  %i.pnj = getelementptr i8, ptr %scevgep3786, i64 %i.pmx
  %scevgep3787 = getelementptr i8, ptr %i.pnj, i64 %i.pmo
  %bound03788 = icmp ult ptr %scevgep3777, %scevgep3783
  %bound13789 = icmp ult ptr %scevgep3782, %scevgep3781
  %found.conflict3790 = and i1 %bound03788, %bound13789
  %bound03791 = icmp ult ptr %scevgep3777, %scevgep3787
  %bound13792 = icmp ult ptr %scevgep3785, %scevgep3781
  %found.conflict3793 = and i1 %bound03791, %bound13792
  %conflict.rdx3794 = or i1 %found.conflict3790, %found.conflict3793
  br i1 %conflict.rdx3794, label %scalar.ph3795.preheader, label %vector.ph3797

vector.ph3797:                                    ; preds = %vector.memcheck3774
  %i.pnk = and i64 %i.pmk, 3                      ; 2 uses
  %i.pnl = icmp eq i64 %i.pnk, 0
  %i.pnm = select i1 %i.pnl, i64 4, i64 %i.pnk
  %n.vec3798 = sub i64 %i.pmk, %i.pnm             ; 2 uses
  %i.pnn = shl i64 %n.vec3798, 1
  %i.pno = add i64 %i.pnn, %i.pmd
  %broadcast.splatinsert3799 = insertelement <4 x i64> poison, i64 %i.pmd, i64 0
  %broadcast.splat3800 = shufflevector <4 x i64> %broadcast.splatinsert3799, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3801 = add nuw nsw <4 x i64> %broadcast.splat3800, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3802

vector.body3802:                                  ; preds = %vector.body3802, %vector.ph3797
  %index3803 = phi i64 [ 0, %vector.ph3797 ], [ %index.next3833, %vector.body3802 ] ; 2 uses
  %vec.ind3804 = phi <4 x i64> [ %induction3801, %vector.ph3797 ], [ %vec.ind.next3834, %vector.body3802 ] ; 2 uses
  %i.pnp = shl nuw i64 %index3803, 1
  %i.pnq = add nuw i64 %i.pnp, %i.pmd             ; 2 uses
  %i.pnr = getelementptr inbounds nuw [4 x i8], ptr %i.plu, i64 %i.pnq ; 4 uses
  %wide.gep3805 = getelementptr inbounds nuw [4 x i8], ptr %i.ply, <4 x i64> %vec.ind3804 ; 2 uses
  %i.pns = extractelement <4 x ptr> %wide.gep3805, i64 0 ; 4 uses
  %i.pnt = getelementptr inbounds nuw [4 x i8], ptr %i.pmc, i64 %i.pnq ; 5 uses
  %i.pnu = getelementptr inbounds i8, ptr %i.pnt, i64 -8
  %wide.vec3806 = load <8 x float>, ptr %i.pnu, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3807 = shufflevector <8 x float> %wide.vec3806, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3808 = load <8 x float>, ptr %i.pnt, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3809 = shufflevector <8 x float> %wide.vec3808, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pnv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3807, %strided.vec3809
  %i.pnw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnv)
  %i.pnx = getelementptr inbounds nuw i8, ptr %i.pnr, i64 4
  %wide.vec3810 = load <8 x float>, ptr %i.pnx, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3811 = shufflevector <8 x float> %wide.vec3810, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pny = getelementptr inbounds i8, ptr %i.pnr, i64 -4
  %wide.vec3812 = load <8 x float>, ptr %i.pny, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3813 = shufflevector <8 x float> %wide.vec3812, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3814 = shufflevector <8 x float> %wide.vec3812, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pnz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3811, %strided.vec3813
  %i.poa = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnz)
  %i.pob = fadd reassoc nsz arcp contract afn <4 x float> %i.poa, splat (float 1.000000e+00) ; 2 uses
  %i.poc = fadd reassoc nsz arcp contract afn <4 x float> %i.pob, %i.pnw
  %i.pod = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poc ; 2 uses
  %i.poe = getelementptr inbounds nuw i8, ptr %i.pnt, i64 8
  %wide.vec3815 = load <8 x float>, ptr %i.poe, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3816 = shufflevector <8 x float> %wide.vec3815, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pof = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3816, %strided.vec3809
  %i.pog = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pof)
  %i.poh = fadd reassoc nsz arcp contract afn <4 x float> %i.pob, %i.pog
  %i.poi = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poh ; 2 uses
  %i.poj = getelementptr inbounds i8, ptr %i.pnt, i64 -1088
  %wide.vec3817 = load <8 x float>, ptr %i.poj, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3818 = shufflevector <8 x float> %wide.vec3817, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pok = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3818, %strided.vec3809
  %i.pol = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pok)
  %i.pom = getelementptr inbounds nuw i8, ptr %i.pnr, i64 544
  %wide.vec3819 = load <8 x float>, ptr %i.pom, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3820 = shufflevector <8 x float> %wide.vec3819, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pon = getelementptr inbounds i8, ptr %i.pnr, i64 -544
  %wide.vec3821 = load <8 x float>, ptr %i.pon, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3822 = shufflevector <8 x float> %wide.vec3821, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.poo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3820, %strided.vec3822
  %i.pop = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poo)
  %i.poq = fadd reassoc nsz arcp contract afn <4 x float> %i.pop, splat (float 1.000000e+00) ; 2 uses
  %i.por = fadd reassoc nsz arcp contract afn <4 x float> %i.poq, %i.pol
  %i.pos = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.por ; 2 uses
  %i.pot = getelementptr inbounds nuw i8, ptr %i.pnt, i64 1088
  %wide.vec3823 = load <8 x float>, ptr %i.pot, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3824 = shufflevector <8 x float> %wide.vec3823, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pou = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3824, %strided.vec3809
  %i.pov = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pou)
  %i.pow = fadd reassoc nsz arcp contract afn <4 x float> %i.poq, %i.pov
  %i.pox = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pow ; 2 uses
  %i.poy = getelementptr inbounds i8, ptr %i.pns, i64 -4
  %wide.vec3825 = load <8 x float>, ptr %i.poy, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3826 = shufflevector <8 x float> %wide.vec3825, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3813, %strided.vec3826
  %i.ppa = fmul reassoc nsz arcp contract afn <4 x float> %i.poz, %i.pod
  %i.ppb = getelementptr inbounds nuw i8, ptr %i.pns, i64 4
  %wide.vec3827 = load <8 x float>, ptr %i.ppb, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3828 = shufflevector <8 x float> %wide.vec3827, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3811, %strided.vec3828
  %i.ppd = fmul reassoc nsz arcp contract afn <4 x float> %i.ppc, %i.poi
  %i.ppe = fadd reassoc nsz arcp contract afn <4 x float> %i.ppd, %i.ppa
  %i.ppf = getelementptr inbounds i8, ptr %i.pns, i64 -544
  %wide.vec3829 = load <8 x float>, ptr %i.ppf, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3830 = shufflevector <8 x float> %wide.vec3829, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppg = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3822, %strided.vec3830
  %i.pph = fmul reassoc nsz arcp contract afn <4 x float> %i.ppg, %i.pos
  %i.ppi = fadd reassoc nsz arcp contract afn <4 x float> %i.ppe, %i.pph
  %i.ppj = getelementptr inbounds nuw i8, ptr %i.pns, i64 544
  %wide.vec3831 = load <8 x float>, ptr %i.ppj, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3832 = shufflevector <8 x float> %wide.vec3831, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3820, %strided.vec3832
  %i.ppl = fmul reassoc nsz arcp contract afn <4 x float> %i.ppk, %i.pox
  %i.ppm = fadd reassoc nsz arcp contract afn <4 x float> %i.ppi, %i.ppl
  %i.ppn = fadd reassoc nsz arcp contract afn <4 x float> %i.poi, %i.pod
  %i.ppo = fadd reassoc nsz arcp contract afn <4 x float> %i.ppn, %i.pos
  %i.ppp = fadd reassoc nsz arcp contract afn <4 x float> %i.ppo, %i.pox
  %i.ppq = fdiv reassoc nsz arcp contract afn <4 x float> %i.ppm, %i.ppp
  %i.ppr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3814, %i.ppq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ppr, <4 x ptr> align 4 %wide.gep3805, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3833 = add nuw i64 %index3803, 4     ; 2 uses
  %vec.ind.next3834 = add nuw nsw <4 x i64> %vec.ind3804, splat (i64 8)
  %i.pps = icmp eq i64 %index.next3833, %n.vec3798
  br i1 %i.pps, label %scalar.ph3795.preheader, label %vector.body3802, !llvm.loop !493

._crit_edge1155.i:                                ; preds = %scalar.ph3795, %.lr.ph1157.i
  %indvars.iv.next1300.i = add nuw nsw i64 %indvars.iv1299.i, 1 ; 2 uses
  %exitcond1151.not = icmp eq i64 %indvars.iv.next1300.i, %i.lza
  %indvar.next3776 = add i64 %indvar3775, 1
  br i1 %exitcond1151.not, label %._crit_edge1158.i.loopexit, label %.lr.ph1157.i

scalar.ph3795:                                    ; preds = %scalar.ph3795.preheader, %scalar.ph3795
  %indvars.iv1296.i = phi i64 [ %indvars.iv.next1297.i, %scalar.ph3795 ], [ %indvars.iv1296.i.ph, %scalar.ph3795.preheader ] ; 4 uses
  %i.ppt = getelementptr inbounds nuw [4 x i8], ptr %i.plu, i64 %indvars.iv1296.i ; 5 uses
  %i.ppu = getelementptr inbounds nuw [4 x i8], ptr %i.ply, i64 %indvars.iv1296.i ; 5 uses
  %i.ppv = getelementptr inbounds nuw [4 x i8], ptr %i.pmc, i64 %indvars.iv1296.i ; 5 uses
  %i.ppw = load float, ptr %i.ppt, align 4, !tbaa !22, !noalias !402
  %i.ppx = getelementptr inbounds nuw i8, ptr %i.ppt, i64 544
  %i.ppy = getelementptr inbounds i8, ptr %i.ppt, i64 -544
  %i.ppz = getelementptr inbounds i8, ptr %i.ppt, i64 -4
  %i.pqa = getelementptr inbounds nuw i8, ptr %i.ppt, i64 4
  %i.pqb = load float, ptr %i.ppx, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqc = load float, ptr %i.ppy, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqd = load float, ptr %i.ppz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqe = load float, ptr %i.pqa, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqf = fsub reassoc nsz arcp contract afn float %i.pqb, %i.pqc
  %i.pqg = fsub reassoc nsz arcp contract afn float %i.pqe, %i.pqd
  %i.pqh = insertelement <2 x float> poison, float %i.pqg, i64 0
  %i.pqi = insertelement <2 x float> %i.pqh, float %i.pqf, i64 1
  %i.pqj = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pqi)
  %i.pqk = fadd reassoc nsz arcp contract afn <2 x float> %i.pqj, splat (float 1.000000e+00)
  %i.pql = shufflevector <2 x float> %i.pqk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pqm = load float, ptr %i.ppv, align 4, !tbaa !22, !noalias !402
  %i.pqn = getelementptr inbounds nuw i8, ptr %i.ppv, i64 1088
  %i.pqo = getelementptr inbounds i8, ptr %i.ppv, i64 -1088
  %i.pqp = getelementptr inbounds i8, ptr %i.ppv, i64 -8
  %i.pqq = getelementptr inbounds nuw i8, ptr %i.ppv, i64 8
  %i.pqr = load float, ptr %i.pqn, align 4, !tbaa !22, !noalias !402
  %i.pqs = load float, ptr %i.pqo, align 4, !tbaa !22, !noalias !402
  %i.pqt = load float, ptr %i.pqp, align 4, !tbaa !22, !noalias !402
  %i.pqu = load float, ptr %i.pqq, align 4, !tbaa !22, !noalias !402
  %i.pqv = insertelement <4 x float> poison, float %i.pqu, i64 0
  %i.pqw = insertelement <4 x float> %i.pqv, float %i.pqt, i64 1
  %i.pqx = insertelement <4 x float> %i.pqw, float %i.pqs, i64 2
  %i.pqy = insertelement <4 x float> %i.pqx, float %i.pqr, i64 3
  %i.pqz = insertelement <4 x float> poison, float %i.pqm, i64 0
  %i.pra = shufflevector <4 x float> %i.pqz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.prb = fsub reassoc nsz arcp contract afn <4 x float> %i.pqy, %i.pra
  %i.prc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.prb)
  %i.prd = fadd reassoc nsz arcp contract afn <4 x float> %i.pql, %i.prc
end_hunk_5
