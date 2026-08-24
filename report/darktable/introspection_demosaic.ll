Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.oql = getelementptr inbounds nuw i8, ptr %.19041087.i, i64 8 ; 2 uses
  %i.oqm = getelementptr inbounds nuw i8, ptr %.19021088.i, i64 8 ; 2 uses
  %i.oqn = getelementptr inbounds nuw i8, ptr %.19001089.i, i64 8 ; 2 uses
  %i.oqo = getelementptr inbounds nuw i8, ptr %.08951090.i, i64 8 ; 2 uses
  %i.oqp = getelementptr inbounds nuw i8, ptr %.08941091.i, i64 8 ; 2 uses
  %i.oqq = add nuw nsw i32 %.08931092.i, 2        ; 3 uses
  %i.oqr = icmp slt i32 %i.oqq, %i.npx
  br i1 %i.oqr, label %.lr.ph1094.i, label %._crit_edge1095.i, !llvm.loop !464

._crit_edge1095.i:                                ; preds = %.lr.ph1094.i, %bb.rc
  %.1908.lcssa.i = phi ptr [ %gep.i561, %bb.rc ], [ %i.oqj, %.lr.ph1094.i ]
  %.1906.lcssa.i = phi ptr [ %gep1125.i, %bb.rc ], [ %i.oqk, %.lr.ph1094.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1127.i, %bb.rc ], [ %i.oql, %.lr.ph1094.i ]
  %.1902.lcssa.i = phi ptr [ %gep1129.i, %bb.rc ], [ %i.oqm, %.lr.ph1094.i ]
  %.1900.lcssa.i = phi ptr [ %gep1131.i, %bb.rc ], [ %i.oqn, %.lr.ph1094.i ]
  %.0895.lcssa.i = phi ptr [ %i.oon, %bb.rc ], [ %i.oqo, %.lr.ph1094.i ]
  %.0894.lcssa.i = phi ptr [ %i.oot, %bb.rc ], [ %i.oqp, %.lr.ph1094.i ]
  %.0893.lcssa.i = phi i32 [ %i.nps, %bb.rc ], [ %i.oqq, %.lr.ph1094.i ]
  %i.oqs = icmp slt i32 %.0893.lcssa.i, %i.npu
  br i1 %i.oqs, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %._crit_edge1095.i
  %i.oqt = load float, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqu = load float, ptr %.0894.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqv = fadd reassoc nsz arcp contract afn float %i.oqu, %i.oqt
  store float %i.oqv, ptr %.0895.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqw = load float, ptr %.1908.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqx = load float, ptr %.1902.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqy = load float, ptr %.1904.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqz = load float, ptr %.1900.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ora = fadd reassoc nsz arcp contract afn float %i.oqw, %i.oqy
  %i.orb = fadd reassoc nsz arcp contract afn float %i.oqx, %i.oqz
  %i.orc = fsub reassoc nsz arcp contract afn float %i.ora, %i.orb
  %i.ord = fmul reassoc nsz arcp contract afn float %i.orc, 5.000000e-01
  store float %i.ord, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %._crit_edge1095.i, %bb.rb, %._crit_edge1114.i
  %indvars.iv.next1276.i = add nuw nsw i64 %indvars.iv1275.i, 1 ; 2 uses
  %exitcond1120.not = icmp eq i64 %indvars.iv.next1276.i, %i.lzf
  %indvar.next3951 = add i64 %indvar3950, 1
  br i1 %exitcond1120.not, label %._crit_edge1123.i, label %.lr.ph1122.i

.preheader1013.i:                                 ; preds = %._crit_edge1135.i, %.preheader1014.i
  br i1 %i.lxn, label %.lr.ph1160.i, label %._crit_edge1161.i

.lr.ph1160.i:                                     ; preds = %.preheader1013.i
  %i.ore = add nuw nsw i32 %i.nps, 2              ; 3 uses
  %i.orf = add nsw i32 %i.npu, -2                 ; 4 uses
  %i.org = sext i32 %i.orf to i64                 ; 3 uses
  br i1 %i.lyu, label %.lr.ph1143.i.preheader.preheader, label %._crit_edge1161.i

.lr.ph1143.i.preheader.preheader:                 ; preds = %.lr.ph1160.i
  %i.orh = zext nneg i32 %i.nps to i64            ; 3 uses
  %i.ori = add nuw nsw i64 %i.orh, 4
  %i.orj = add nsw i32 %.neg.i554, 6
  %i.ork = add i32 %i.orj, %i.mba                 ; 2 uses
  %i.orl = sext i32 %i.ork to i64
  %i.orm = zext nneg i32 %i.nps to i64            ; 3 uses
  %i.orn = add nuw nsw i64 %i.orm, 4
  %i.oro = sext i32 %i.ork to i64
  %i.orp = zext nneg i32 %i.nps to i64            ; 3 uses
  %i.orq = add nuw nsw i64 %i.orp, 4
  %i.orr = add nsw i32 %.neg.i554, 6
  %i.ors = add i32 %i.orr, %i.mba
  %i.ort = sext i32 %i.ors to i64
  %i.oru = zext nneg i32 %i.nps to i64            ; 2 uses
  %i.orv = add i32 %.neg.i554, %i.mba
  %i.orw = add i32 %i.orv, 6
  %i.orx = sext i32 %i.orw to i64
  %i.ory = zext nneg i32 %i.nps to i64            ; 2 uses
  %i.orz = add i32 %.neg.i554, %i.mba
  %i.osa = add i32 %i.orz, 6
  %i.osb = sext i32 %i.osa to i64
  %i.osc = zext nneg i32 %i.nps to i64            ; 2 uses
  %i.osd = add i32 %.neg.i554, %i.mba
  %i.ose = add i32 %i.osd, 6
  %i.osf = sext i32 %i.ose to i64
  br label %.lr.ph1143.i.preheader

.preheader1009.i:                                 ; preds = %.preheader1009.i.preheader, %._crit_edge1135.i
  %indvars.iv1281.i = phi i64 [ %indvars.iv.next1282.i, %._crit_edge1135.i ], [ 4, %.preheader1009.i.preheader ] ; 3 uses
  %i.osg = mul nuw nsw i64 %indvars.iv1281.i, 136 ; 5 uses
  %indvars.iv1281.tr.i = trunc i64 %indvars.iv1281.i to i32
  %i.osh = shl i32 %indvars.iv1281.tr.i, 1
  %i.osi = and i32 %i.osh, 14                     ; 5 uses
  br i1 %i.nvq, label %.epil.preheader4755, label %.preheader1009.i.new

.preheader1009.i.new:                             ; preds = %.preheader1009.i
  %i.osj = shl nuw nsw i32 %i.osi, 1
  %i.osk = lshr i32 %.fr1043, %i.osj
  %i.osl = and i32 %i.osk, 3
  %i.osm = zext nneg i32 %i.osl to i64
  %i.osn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osm
  %i.oso = load ptr, ptr %i.osn, align 8, !tbaa !407, !noalias !408
  %i.osp = shl nuw nsw i32 %i.osi, 1
  %i.osq = or disjoint i32 %i.osp, 2
  %i.osr = lshr i32 %.fr1043, %i.osq
  %i.oss = and i32 %i.osr, 3
  %i.ost = zext nneg i32 %i.oss to i64
  %i.osu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ost
  %i.osv = load ptr, ptr %i.osu, align 8, !tbaa !407, !noalias !408
  %i.osw = shl nuw nsw i32 %i.osi, 1
  %i.osx = lshr i32 %.fr1043, %i.osw
  %i.osy = and i32 %i.osx, 3
  %i.osz = zext nneg i32 %i.osy to i64
  %i.ota = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osz
  %i.otb = load ptr, ptr %i.ota, align 8, !tbaa !407, !noalias !408
  %i.otc = shl nuw nsw i32 %i.osi, 1
  %i.otd = or disjoint i32 %i.otc, 2
  %i.ote = lshr i32 %.fr1043, %i.otd
  %i.otf = and i32 %i.ote, 3
  %i.otg = zext nneg i32 %i.otf to i64
  %i.oth = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otg
  %i.oti = load ptr, ptr %i.oth, align 8, !tbaa !407, !noalias !408
  br label %bb.rg

._crit_edge1135.i.unr-lcssa:                      ; preds = %bb.rg
  br i1 %lcmp.mod4760.not, label %._crit_edge1135.i, label %.epil.preheader4755

.epil.preheader4755:                              ; preds = %._crit_edge1135.i.unr-lcssa, %.preheader1009.i
  %indvars.iv1278.i.epil.init = phi i64 [ 4, %.preheader1009.i ], [ %indvars.iv.next1279.i.3, %._crit_edge1135.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4761)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rf, %.epil.preheader4755
  %indvars.iv1278.i.epil = phi i64 [ %indvars.iv1278.i.epil.init, %.epil.preheader4755 ], [ %indvars.iv.next1279.i.epil, %bb.rf ] ; 3 uses
  %epil.iter4759 = phi i64 [ 0, %.epil.preheader4755 ], [ %epil.iter4759.next, %bb.rf ]
  %i.otj = add nuw nsw i64 %indvars.iv1278.i.epil, %i.osg ; 2 uses
  %i.otk = trunc nuw nsw i64 %indvars.iv1278.i.epil to i32
  %i.otl = and i32 %i.otk, 1
  %i.otm = or disjoint i32 %i.otl, %i.osi
  %i.otn = shl nuw nsw i32 %i.otm, 1
  %i.oto = lshr i32 %.fr1043, %i.otn
  %i.otp = and i32 %i.oto, 3
  %i.otq = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.otj
  %i.otr = load float, ptr %i.otq, align 4, !tbaa !22, !noalias !402
  %i.ots = zext nneg i32 %i.otp to i64
  %i.ott = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ots
  %i.otu = load ptr, ptr %i.ott, align 8, !tbaa !407, !noalias !408
  %i.otv = getelementptr inbounds nuw [4 x i8], ptr %i.otu, i64 %i.otj
  store float %i.otr, ptr %i.otv, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.epil = add nuw nsw i64 %indvars.iv1278.i.epil, 1
  %epil.iter4759.next = add i64 %epil.iter4759, 1 ; 2 uses
  %epil.iter4759.cmp.not = icmp eq i64 %epil.iter4759.next, %xtraiter4758
  br i1 %epil.iter4759.cmp.not, label %._crit_edge1135.i, label %bb.rf, !llvm.loop !465

._crit_edge1135.i:                                ; preds = %bb.rf, %._crit_edge1135.i.unr-lcssa
  %indvars.iv.next1282.i = add nuw nsw i64 %indvars.iv1281.i, 1 ; 2 uses
  %exitcond1126.not = icmp eq i64 %indvars.iv.next1282.i, %smax1125
  br i1 %exitcond1126.not, label %.preheader1013.i, label %.preheader1009.i

bb.rg:                                            ; preds = %bb.rg, %.preheader1009.i.new
  %indvars.iv1278.i = phi i64 [ 4, %.preheader1009.i.new ], [ %indvars.iv.next1279.i.3, %bb.rg ] ; 5 uses
  %niter4763 = phi i64 [ 0, %.preheader1009.i.new ], [ %niter4763.next.3, %bb.rg ]
  %i.otw = add nuw nsw i64 %indvars.iv1278.i, %i.osg ; 2 uses
  %i.otx = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.otw
  %i.oty = load float, ptr %i.otx, align 16, !tbaa !22, !noalias !402
  %i.otz = getelementptr inbounds nuw [4 x i8], ptr %i.oso, i64 %i.otw
  store float %i.oty, ptr %i.otz, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i = or disjoint i64 %indvars.iv1278.i, 1
  %i.oua = add nuw nsw i64 %indvars.iv.next1279.i, %i.osg ; 2 uses
  %i.oub = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oua
  %i.ouc = load float, ptr %i.oub, align 4, !tbaa !22, !noalias !402
  %i.oud = getelementptr inbounds nuw [4 x i8], ptr %i.osv, i64 %i.oua
  store float %i.ouc, ptr %i.oud, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.1 = or disjoint i64 %indvars.iv1278.i, 2
  %i.oue = add nuw nsw i64 %indvars.iv.next1279.i.1, %i.osg ; 2 uses
  %i.ouf = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oue
  %i.oug = load float, ptr %i.ouf, align 8, !tbaa !22, !noalias !402
  %i.ouh = getelementptr inbounds nuw [4 x i8], ptr %i.otb, i64 %i.oue
  store float %i.oug, ptr %i.ouh, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.2 = or disjoint i64 %indvars.iv1278.i, 3
  %i.oui = add nuw nsw i64 %indvars.iv.next1279.i.2, %i.osg ; 2 uses
  %i.ouj = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oui
  %i.ouk = load float, ptr %i.ouj, align 4, !tbaa !22, !noalias !402
  %i.oul = getelementptr inbounds nuw [4 x i8], ptr %i.oti, i64 %i.oui
  store float %i.ouk, ptr %i.oul, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.3 = add nuw nsw i64 %indvars.iv1278.i, 4 ; 2 uses
  %niter4763.next.3 = add i64 %niter4763, 4       ; 2 uses
  %niter4763.ncmp.3 = icmp eq i64 %niter4763.next.3, %unroll_iter4762
  br i1 %niter4763.ncmp.3, label %._crit_edge1135.i.unr-lcssa, label %bb.rg

._crit_edge1161.i:                                ; preds = %._crit_edge1158.i.loopexit, %.lr.ph1160.i, %.preheader1013.i
  %i.oum = select i1 %i.npr, i32 4, i32 8         ; 3 uses
  %i.oun = or disjoint i32 %i.oum, %i.maw         ; 7 uses
  %.neg951.i = select i1 %i.npt, i32 -4, i32 -8   ; 2 uses
  %i.ouo = add nsw i32 %i.may, %.neg951.i         ; 3 uses
  br i1 %i.lyy, label %.lr.ph1175.i, label %._crit_edge1176.split.i

.lr.ph1175.i:                                     ; preds = %._crit_edge1161.i
  %i.oup = icmp slt i32 %i.oun, %i.ouo
  %i.ouq = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.our = icmp eq ptr %i.ouq, null
  br i1 %i.oup, label %.lr.ph1168.i.preheader, label %._crit_edge1176.split.i

.lr.ph1168.i.preheader:                           ; preds = %.lr.ph1175.i
  %reass.sub = sub nsw i32 %i.oun, %i.maw
  %.reass1171.i = add nsw i32 %reass.sub, 4
  %i.ous = add i32 %.neg951.i, %i.may             ; 2 uses
  %i.out = add i32 %i.ous, %i.mar
  %i.ouu = sub i32 %i.out, %i.oum                 ; 2 uses
  %i.ouv = zext i32 %i.ouu to i64
  %i.ouw = add nuw nsw i64 %i.ouv, 1              ; 2 uses
  %min.iters.check3703 = icmp ult i32 %i.ouu, 7
  %n.vec3705 = and i64 %i.ouw, 8589934584         ; 5 uses
  %6 = trunc i64 %n.vec3705 to i32
  %7 = add i32 %i.oun, %6
  %8 = shl nuw nsw i64 %n.vec3705, 2              ; 3 uses
  %9 = shl nuw nsw i64 %n.vec3705, 4
  %cmp.n3738 = icmp eq i64 %i.ouw, %n.vec3705
  %i.oux = add i32 %i.ous, %i.mas
  %10 = sub i32 %i.oux, %i.oum                    ; 2 uses
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check3680 = icmp ult i32 %10, 7
  %n.vec3682 = and i64 %12, 8589934584            ; 5 uses
  %i.ouy = trunc i64 %n.vec3682 to i32
  %i.ouz = add i32 %i.oun, %i.ouy
  %i.ova = shl nuw nsw i64 %n.vec3682, 2          ; 3 uses
  %i.ovb = shl nuw nsw i64 %n.vec3682, 4
  %cmp.n3696 = icmp eq i64 %12, %n.vec3682
  br label %.lr.ph1168.i

.lr.ph1143.i.preheader:                           ; preds = %.lr.ph1143.i.preheader.preheader, %._crit_edge1158.i.loopexit
  %.08901159.i = phi i32 [ %i.pld, %._crit_edge1158.i.loopexit ], [ 0, %.lr.ph1143.i.preheader.preheader ]
  br label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %._crit_edge1140.i
  %indvar3893 = phi i64 [ 0, %.lr.ph1143.i.preheader ], [ %indvar.next3894, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1287.i = phi i64 [ %i.lza, %.lr.ph1143.i.preheader ], [ %indvars.iv.next1288.i, %._crit_edge1140.i ] ; 3 uses
  %i.ovc = mul i64 %indvar3893, 544               ; 4 uses
  %scevgep3895 = getelementptr i8, ptr %i.lzr, i64 %i.ovc
  %scevgep3897 = getelementptr i8, ptr %i.lzt, i64 %i.ovc
  %indvars.iv1287.tr.i = trunc i64 %indvars.iv1287.i to i32
  %i.ovd = shl i32 %indvars.iv1287.tr.i, 1
  %i.ove = and i32 %i.ovd, 14                     ; 2 uses
  %i.ovf = shl nuw nsw i32 %i.ove, 1
  %i.ovg = lshr i32 %.fr1043, %i.ovf              ; 3 uses
  %i.ovh = and i32 %i.ovg, 1                      ; 2 uses
  %i.ovi = or disjoint i32 %i.ovh, %i.ore         ; 2 uses
  %i.ovj = icmp slt i32 %i.ovi, %i.orf
  br i1 %i.ovj, label %.lr.ph1139.i, label %._crit_edge1140.i

.lr.ph1139.i:                                     ; preds = %.lr.ph1143.i
  %i.ovk = or disjoint i32 %i.ovh, %i.ove
  %i.ovl = shl nuw nsw i32 %i.ovk, 1
  %i.ovm = lshr i32 %.fr1043, %i.ovl
  %i.ovn = and i32 %i.ovm, 3
  %i.ovo = mul nuw nsw i64 %indvars.iv1287.i, 136 ; 2 uses
  %i.ovp = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.ovo ; 2 uses
  %i.ovq = zext nneg i32 %i.ovn to i64
  %i.ovr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ovq
  %i.ovs = load ptr, ptr %i.ovr, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ovt = getelementptr inbounds nuw [4 x i8], ptr %i.ovs, i64 %i.ovo ; 2 uses
  %i.ovu = zext nneg i32 %i.ovi to i64            ; 5 uses
  %i.ovv = and i32 %i.ovg, 1
  %i.ovw = zext nneg i32 %i.ovv to i64            ; 2 uses
  %i.ovx = or disjoint i64 %i.oru, %i.ovw
  %i.ovy = add nuw nsw i64 %i.ovx, 4
  %i.ovz = call i64 @llvm.smax.i64(i64 %i.ovy, i64 %i.orx)
  %i.owa = add nsw i64 %i.ovz, -3
  %i.owb = or disjoint i64 %i.oru, %i.ovw
  %i.owc = sub i64 %i.owa, %i.owb                 ; 2 uses
  %i.owd = lshr i64 %i.owc, 1
  %i.owe = add nuw i64 %i.owd, 1                  ; 2 uses
  %min.iters.check3906 = icmp ult i64 %i.owc, 8
  br i1 %min.iters.check3906, label %scalar.ph3905.preheader, label %vector.memcheck3892

scalar.ph3905.preheader:                          ; preds = %vector.body3912, %vector.memcheck3892, %.lr.ph1139.i
  %indvars.iv1284.i.ph = phi i64 [ %i.ovu, %vector.memcheck3892 ], [ %i.ovu, %.lr.ph1139.i ], [ %i.oxb, %vector.body3912 ]
  br label %scalar.ph3905

vector.memcheck3892:                              ; preds = %.lr.ph1139.i
  %i.owf = and i32 %i.ovg, 1
  %i.owg = zext nneg i32 %i.owf to i64            ; 3 uses
  %i.owh = or disjoint i64 %i.orp, %i.owg
  %i.owi = shl nuw nsw i64 %i.owh, 2              ; 4 uses
  %scevgep3896 = getelementptr i8, ptr %scevgep3895, i64 %i.owi
  %i.owj = or disjoint i64 %i.orq, %i.owg
  %smax3898 = call i64 @llvm.smax.i64(i64 %i.owj, i64 %i.ort)
  %i.owk = add nuw i64 %smax3898, 4611686018427387901
  %i.owl = or disjoint i64 %i.orp, %i.owg
  %i.owm = sub nuw i64 %i.owk, %i.owl
  %i.own = shl i64 %i.owm, 2
  %i.owo = and i64 %i.own, -8                     ; 2 uses
  %i.owp = getelementptr i8, ptr %scevgep3897, i64 %i.owo
  %scevgep3899 = getelementptr i8, ptr %i.owp, i64 %i.owi
  %i.owq = getelementptr i8, ptr %i.ovs, i64 %i.lzj
  %i.owr = getelementptr i8, ptr %i.owq, i64 8
  %i.ows = getelementptr i8, ptr %i.owr, i64 %i.ovc
  %scevgep3900 = getelementptr i8, ptr %i.ows, i64 %i.owi
  %i.owt = getelementptr i8, ptr %i.ovs, i64 %i.lzj
  %i.owu = getelementptr i8, ptr %i.owt, i64 2188
  %i.owv = getelementptr i8, ptr %i.owu, i64 %i.ovc
  %i.oww = getelementptr i8, ptr %i.owv, i64 %i.owo
  %scevgep3901 = getelementptr i8, ptr %i.oww, i64 %i.owi
  %bound03902 = icmp ult ptr %scevgep3896, %scevgep3901
  %bound13903 = icmp ult ptr %scevgep3900, %scevgep3899
  %found.conflict3904 = and i1 %bound03902, %bound13903
  br i1 %found.conflict3904, label %scalar.ph3905.preheader, label %vector.ph3907

vector.ph3907:                                    ; preds = %vector.memcheck3892
  %i.owx = and i64 %i.owe, 3                      ; 2 uses
  %i.owy = icmp eq i64 %i.owx, 0
  %i.owz = select i1 %i.owy, i64 4, i64 %i.owx
  %n.vec3908 = sub i64 %i.owe, %i.owz             ; 2 uses
  %i.oxa = shl i64 %n.vec3908, 1
  %i.oxb = add i64 %i.oxa, %i.ovu
  %broadcast.splatinsert3909 = insertelement <4 x i64> poison, i64 %i.ovu, i64 0
  %broadcast.splat3910 = shufflevector <4 x i64> %broadcast.splatinsert3909, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3911 = add nuw nsw <4 x i64> %broadcast.splat3910, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4887 = getelementptr [4 x i8], ptr %i.ovt, i64 %i.ovu
  br label %vector.body3912

vector.body3912:                                  ; preds = %vector.body3912, %vector.ph3907
  %index3913 = phi i64 [ 0, %vector.ph3907 ], [ %index.next3940, %vector.body3912 ] ; 2 uses
  %vec.ind3914 = phi <4 x i64> [ %induction3911, %vector.ph3907 ], [ %vec.ind.next3941, %vector.body3912 ] ; 2 uses
  %wide.gep3915 = getelementptr inbounds nuw [4 x i8], ptr %i.ovp, <4 x i64> %vec.ind3914 ; 2 uses
  %i.oxc = extractelement <4 x ptr> %wide.gep3915, i64 0 ; 4 uses
  %.idx4576 = shl nuw i64 %index3913, 3
  %gep4888 = getelementptr i8, ptr %invariant.gep4887, i64 %.idx4576 ; 7 uses
  %i.oxd = getelementptr inbounds i8, ptr %gep4888, i64 -8
  %wide.vec3916 = load <8 x float>, ptr %i.oxd, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3916, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxe = getelementptr inbounds i8, ptr %gep4888, i64 -4
  %wide.vec3918 = load <8 x float>, ptr %i.oxe, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3920 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.oxf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3917, %strided.vec3920
  %i.oxg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxf)
  %i.oxh = getelementptr inbounds nuw i8, ptr %i.oxc, i64 4
  %wide.vec3921 = load <8 x float>, ptr %i.oxh, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3922 = shufflevector <8 x float> %wide.vec3921, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxi = getelementptr inbounds i8, ptr %i.oxc, i64 -4
  %wide.vec3923 = load <8 x float>, ptr %i.oxi, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3924 = shufflevector <8 x float> %wide.vec3923, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3924
  %i.oxk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxj)
  %i.oxl = fadd reassoc nsz arcp contract afn <4 x float> %i.oxk, splat (float 1.000000e+00) ; 2 uses
  %i.oxm = fadd reassoc nsz arcp contract afn <4 x float> %i.oxl, %i.oxg
  %i.oxn = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxm ; 2 uses
  %i.oxo = getelementptr inbounds nuw i8, ptr %gep4888, i64 4
  %wide.vec3925 = load <8 x float>, ptr %i.oxo, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3926 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3927 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oxp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3927, %strided.vec3920
  %i.oxq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxp)
  %i.oxr = fadd reassoc nsz arcp contract afn <4 x float> %i.oxl, %i.oxq
  %i.oxs = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxr ; 2 uses
  %i.oxt = getelementptr inbounds i8, ptr %gep4888, i64 -1088
  %wide.vec3928 = load <8 x float>, ptr %i.oxt, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3929 = shufflevector <8 x float> %wide.vec3928, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3929, %strided.vec3920
  %i.oxv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxu)
  %i.oxw = getelementptr inbounds nuw i8, ptr %i.oxc, i64 544
  %wide.vec3930 = load <8 x float>, ptr %i.oxw, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3931 = shufflevector <8 x float> %wide.vec3930, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxx = getelementptr inbounds i8, ptr %i.oxc, i64 -544
  %wide.vec3932 = load <8 x float>, ptr %i.oxx, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3933 = shufflevector <8 x float> %wide.vec3932, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3933
  %i.oxz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxy)
  %i.oya = fadd reassoc nsz arcp contract afn <4 x float> %i.oxz, splat (float 1.000000e+00) ; 2 uses
  %i.oyb = fadd reassoc nsz arcp contract afn <4 x float> %i.oya, %i.oxv
  %i.oyc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyb ; 2 uses
  %i.oyd = getelementptr inbounds nuw i8, ptr %gep4888, i64 1088
  %wide.vec3934 = load <8 x float>, ptr %i.oyd, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3935 = shufflevector <8 x float> %wide.vec3934, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oye = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3935, %strided.vec3920
  %i.oyf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oye)
  %i.oyg = fadd reassoc nsz arcp contract afn <4 x float> %i.oya, %i.oyf
  %i.oyh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyg ; 2 uses
  %i.oyi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3924, %strided.vec3919
  %i.oyj = fmul reassoc nsz arcp contract afn <4 x float> %i.oyi, %i.oxn
  %i.oyk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3926
  %i.oyl = fmul reassoc nsz arcp contract afn <4 x float> %i.oyk, %i.oxs
  %i.oym = fadd reassoc nsz arcp contract afn <4 x float> %i.oyj, %i.oyl
  %i.oyn = getelementptr inbounds i8, ptr %gep4888, i64 -544
  %wide.vec3936 = load <8 x float>, ptr %i.oyn, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3937 = shufflevector <8 x float> %wide.vec3936, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3933, %strided.vec3937
  %i.oyp = fmul reassoc nsz arcp contract afn <4 x float> %i.oyo, %i.oyc
  %i.oyq = fadd reassoc nsz arcp contract afn <4 x float> %i.oym, %i.oyp
  %i.oyr = getelementptr inbounds nuw i8, ptr %gep4888, i64 544
  %wide.vec3938 = load <8 x float>, ptr %i.oyr, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3939 = shufflevector <8 x float> %wide.vec3938, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oys = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3939
  %i.oyt = fmul reassoc nsz arcp contract afn <4 x float> %i.oys, %i.oyh
  %i.oyu = fadd reassoc nsz arcp contract afn <4 x float> %i.oyq, %i.oyt
  %i.oyv = fadd reassoc nsz arcp contract afn <4 x float> %i.oxs, %i.oxn
  %i.oyw = fadd reassoc nsz arcp contract afn <4 x float> %i.oyv, %i.oyc
  %i.oyx = fadd reassoc nsz arcp contract afn <4 x float> %i.oyw, %i.oyh
  %i.oyy = fdiv reassoc nsz arcp contract afn <4 x float> %i.oyu, %i.oyx
  %i.oyz = fadd reassoc nsz arcp contract afn <4 x float> %i.oyy, %strided.vec3920
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.oyz, <4 x ptr> align 4 %wide.gep3915, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3940 = add nuw i64 %index3913, 4     ; 2 uses
  %vec.ind.next3941 = add nuw nsw <4 x i64> %vec.ind3914, splat (i64 8)
  %i.oza = icmp eq i64 %index.next3940, %n.vec3908
  br i1 %i.oza, label %scalar.ph3905.preheader, label %vector.body3912, !llvm.loop !472

._crit_edge1140.i:                                ; preds = %scalar.ph3905, %.lr.ph1143.i
  %indvars.iv.next1288.i = add nuw nsw i64 %indvars.iv1287.i, 1 ; 2 uses
  %exitcond1130.not = icmp eq i64 %indvars.iv.next1288.i, %i.lzh
  %indvar.next3894 = add i64 %indvar3893, 1
  br i1 %exitcond1130.not, label %.lr.ph1151.i, label %.lr.ph1143.i

scalar.ph3905:                                    ; preds = %scalar.ph3905.preheader, %scalar.ph3905
  %indvars.iv1284.i = phi i64 [ %indvars.iv.next1285.i, %scalar.ph3905 ], [ %indvars.iv1284.i.ph, %scalar.ph3905.preheader ] ; 3 uses
  %i.ozb = getelementptr inbounds nuw [4 x i8], ptr %i.ovp, i64 %indvars.iv1284.i ; 5 uses
  %i.ozc = getelementptr inbounds nuw [4 x i8], ptr %i.ovt, i64 %indvars.iv1284.i ; 9 uses
  %i.ozd = getelementptr inbounds i8, ptr %i.ozc, i64 -4
  %i.oze = getelementptr inbounds nuw i8, ptr %i.ozc, i64 4
  %i.ozf = getelementptr inbounds nuw i8, ptr %i.ozb, i64 544
  %i.ozg = getelementptr inbounds i8, ptr %i.ozb, i64 -544
  %i.ozh = getelementptr inbounds nuw i8, ptr %i.ozb, i64 4
  %i.ozi = getelementptr inbounds i8, ptr %i.ozb, i64 -4
  %i.ozj = load float, ptr %i.ozf, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozk = load float, ptr %i.ozg, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozl = load float, ptr %i.ozh, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozm = load float, ptr %i.ozi, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozn = fsub reassoc nsz arcp contract afn float %i.ozj, %i.ozk
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.pnp = shl i64 %n.vec3766, 1
  %i.pnq = add i64 %i.pnp, %i.pmc
  %broadcast.splatinsert3767 = insertelement <4 x i64> poison, i64 %i.pmc, i64 0
  %broadcast.splat3768 = shufflevector <4 x i64> %broadcast.splatinsert3767, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3769 = add nuw nsw <4 x i64> %broadcast.splat3768, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3770

vector.body3770:                                  ; preds = %vector.body3770, %vector.ph3765
  %index3771 = phi i64 [ 0, %vector.ph3765 ], [ %index.next3801, %vector.body3770 ] ; 2 uses
  %vec.ind3772 = phi <4 x i64> [ %induction3769, %vector.ph3765 ], [ %vec.ind.next3802, %vector.body3770 ] ; 2 uses
  %i.pnr = shl nuw i64 %index3771, 1
  %i.pns = add nuw i64 %i.pnr, %i.pmc             ; 2 uses
  %i.pnt = getelementptr inbounds nuw [4 x i8], ptr %i.plt, i64 %i.pns ; 4 uses
  %wide.gep3773 = getelementptr inbounds nuw [4 x i8], ptr %i.plx, <4 x i64> %vec.ind3772 ; 2 uses
  %i.pnu = extractelement <4 x ptr> %wide.gep3773, i64 0 ; 4 uses
  %i.pnv = getelementptr inbounds nuw [4 x i8], ptr %i.pmb, i64 %i.pns ; 5 uses
  %i.pnw = getelementptr inbounds i8, ptr %i.pnv, i64 -8
  %wide.vec3774 = load <8 x float>, ptr %i.pnw, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3775 = shufflevector <8 x float> %wide.vec3774, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3776 = load <8 x float>, ptr %i.pnv, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3777 = shufflevector <8 x float> %wide.vec3776, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pnx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3775, %strided.vec3777
  %i.pny = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnx)
  %i.pnz = getelementptr inbounds nuw i8, ptr %i.pnt, i64 4
  %wide.vec3778 = load <8 x float>, ptr %i.pnz, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3779 = shufflevector <8 x float> %wide.vec3778, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.poa = getelementptr inbounds i8, ptr %i.pnt, i64 -4
  %wide.vec3780 = load <8 x float>, ptr %i.poa, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3781 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3782 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pob = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3781
  %i.poc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pob)
  %i.pod = fadd reassoc nsz arcp contract afn <4 x float> %i.poc, splat (float 1.000000e+00) ; 2 uses
  %i.poe = fadd reassoc nsz arcp contract afn <4 x float> %i.pod, %i.pny
  %i.pof = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poe ; 2 uses
  %i.pog = getelementptr inbounds nuw i8, ptr %i.pnv, i64 8
  %wide.vec3783 = load <8 x float>, ptr %i.pog, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3784 = shufflevector <8 x float> %wide.vec3783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784, %strided.vec3777
  %i.poi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poh)
  %i.poj = fadd reassoc nsz arcp contract afn <4 x float> %i.pod, %i.poi
  %i.pok = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poj ; 2 uses
  %i.pol = getelementptr inbounds i8, ptr %i.pnv, i64 -1088
  %wide.vec3785 = load <8 x float>, ptr %i.pol, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3786 = shufflevector <8 x float> %wide.vec3785, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pom = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3786, %strided.vec3777
  %i.pon = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pom)
  %i.poo = getelementptr inbounds nuw i8, ptr %i.pnt, i64 544
  %wide.vec3787 = load <8 x float>, ptr %i.poo, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3788 = shufflevector <8 x float> %wide.vec3787, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pop = getelementptr inbounds i8, ptr %i.pnt, i64 -544
  %wide.vec3789 = load <8 x float>, ptr %i.pop, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3790 = shufflevector <8 x float> %wide.vec3789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.poq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3790
  %i.por = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poq)
  %i.pos = fadd reassoc nsz arcp contract afn <4 x float> %i.por, splat (float 1.000000e+00) ; 2 uses
  %i.pot = fadd reassoc nsz arcp contract afn <4 x float> %i.pos, %i.pon
  %i.pou = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pot ; 2 uses
  %i.pov = getelementptr inbounds nuw i8, ptr %i.pnv, i64 1088
  %wide.vec3791 = load <8 x float>, ptr %i.pov, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3792 = shufflevector <8 x float> %wide.vec3791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pow = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3792, %strided.vec3777
  %i.pox = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pow)
  %i.poy = fadd reassoc nsz arcp contract afn <4 x float> %i.pos, %i.pox
  %i.poz = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poy ; 2 uses
  %i.ppa = getelementptr inbounds i8, ptr %i.pnu, i64 -4
  %wide.vec3793 = load <8 x float>, ptr %i.ppa, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3794 = shufflevector <8 x float> %wide.vec3793, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781, %strided.vec3794
  %i.ppc = fmul reassoc nsz arcp contract afn <4 x float> %i.ppb, %i.pof
  %i.ppd = getelementptr inbounds nuw i8, ptr %i.pnu, i64 4
  %wide.vec3795 = load <8 x float>, ptr %i.ppd, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3796 = shufflevector <8 x float> %wide.vec3795, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3796
  %i.ppf = fmul reassoc nsz arcp contract afn <4 x float> %i.ppe, %i.pok
  %i.ppg = fadd reassoc nsz arcp contract afn <4 x float> %i.ppc, %i.ppf
  %i.pph = getelementptr inbounds i8, ptr %i.pnu, i64 -544
  %wide.vec3797 = load <8 x float>, ptr %i.pph, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3798 = shufflevector <8 x float> %wide.vec3797, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3790, %strided.vec3798
  %i.ppj = fmul reassoc nsz arcp contract afn <4 x float> %i.ppi, %i.pou
  %i.ppk = fadd reassoc nsz arcp contract afn <4 x float> %i.ppg, %i.ppj
  %i.ppl = getelementptr inbounds nuw i8, ptr %i.pnu, i64 544
  %wide.vec3799 = load <8 x float>, ptr %i.ppl, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3800 = shufflevector <8 x float> %wide.vec3799, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3800
  %i.ppn = fmul reassoc nsz arcp contract afn <4 x float> %i.ppm, %i.poz
  %i.ppo = fadd reassoc nsz arcp contract afn <4 x float> %i.ppk, %i.ppn
  %i.ppp = fadd reassoc nsz arcp contract afn <4 x float> %i.pok, %i.pof
  %i.ppq = fadd reassoc nsz arcp contract afn <4 x float> %i.ppp, %i.pou
  %i.ppr = fadd reassoc nsz arcp contract afn <4 x float> %i.ppq, %i.poz
  %i.pps = fdiv reassoc nsz arcp contract afn <4 x float> %i.ppo, %i.ppr
  %i.ppt = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %i.pps
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ppt, <4 x ptr> align 4 %wide.gep3773, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3801 = add nuw i64 %index3771, 4     ; 2 uses
  %vec.ind.next3802 = add nuw nsw <4 x i64> %vec.ind3772, splat (i64 8)
  %i.ppu = icmp eq i64 %index.next3801, %n.vec3766
  br i1 %i.ppu, label %scalar.ph3763.preheader, label %vector.body3770, !llvm.loop !493

._crit_edge1155.i:                                ; preds = %scalar.ph3763, %.lr.ph1157.i
  %indvars.iv.next1300.i = add nuw nsw i64 %indvars.iv1299.i, 1 ; 2 uses
  %exitcond1134.not = icmp eq i64 %indvars.iv.next1300.i, %i.lzh
  %indvar.next3746 = add i64 %indvar3745, 1
  br i1 %exitcond1134.not, label %._crit_edge1158.i.loopexit, label %.lr.ph1157.i

scalar.ph3763:                                    ; preds = %scalar.ph3763.preheader, %scalar.ph3763
  %indvars.iv1296.i = phi i64 [ %indvars.iv.next1297.i, %scalar.ph3763 ], [ %indvars.iv1296.i.ph, %scalar.ph3763.preheader ] ; 4 uses
  %i.ppv = getelementptr inbounds nuw [4 x i8], ptr %i.plt, i64 %indvars.iv1296.i ; 5 uses
  %i.ppw = getelementptr inbounds nuw [4 x i8], ptr %i.plx, i64 %indvars.iv1296.i ; 5 uses
  %i.ppx = getelementptr inbounds nuw [4 x i8], ptr %i.pmb, i64 %indvars.iv1296.i ; 5 uses
  %i.ppy = load float, ptr %i.ppv, align 4, !tbaa !22, !noalias !402
  %i.ppz = getelementptr inbounds nuw i8, ptr %i.ppv, i64 544
  %i.pqa = getelementptr inbounds i8, ptr %i.ppv, i64 -544
  %i.pqb = getelementptr inbounds nuw i8, ptr %i.ppv, i64 4
  %i.pqc = getelementptr inbounds i8, ptr %i.ppv, i64 -4
  %i.pqd = load float, ptr %i.ppz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqe = load float, ptr %i.pqa, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqf = load float, ptr %i.pqb, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqg = load float, ptr %i.pqc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqh = fsub reassoc nsz arcp contract afn float %i.pqd, %i.pqe
  %i.pqi = fsub reassoc nsz arcp contract afn float %i.pqf, %i.pqg
  %i.pqj = insertelement <2 x float> poison, float %i.pqi, i64 0
  %i.pqk = insertelement <2 x float> %i.pqj, float %i.pqh, i64 1
  %i.pql = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pqk)
  %i.pqm = fadd reassoc nsz arcp contract afn <2 x float> %i.pql, splat (float 1.000000e+00)
  %i.pqn = shufflevector <2 x float> %i.pqm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pqo = load float, ptr %i.ppx, align 4, !tbaa !22, !noalias !402
  %i.pqp = getelementptr inbounds nuw i8, ptr %i.ppx, i64 1088
  %i.pqq = getelementptr inbounds i8, ptr %i.ppx, i64 -1088
  %i.pqr = getelementptr inbounds nuw i8, ptr %i.ppx, i64 8
  %i.pqs = getelementptr inbounds i8, ptr %i.ppx, i64 -8
  %i.pqt = load float, ptr %i.pqp, align 4, !tbaa !22, !noalias !402
  %i.pqu = load float, ptr %i.pqq, align 4, !tbaa !22, !noalias !402
  %i.pqv = load float, ptr %i.pqr, align 4, !tbaa !22, !noalias !402
  %i.pqw = load float, ptr %i.pqs, align 4, !tbaa !22, !noalias !402
  %i.pqx = insertelement <4 x float> poison, float %i.pqw, i64 0
  %i.pqy = insertelement <4 x float> %i.pqx, float %i.pqv, i64 1
  %i.pqz = insertelement <4 x float> %i.pqy, float %i.pqu, i64 2
  %i.pra = insertelement <4 x float> %i.pqz, float %i.pqt, i64 3
  %i.prb = insertelement <4 x float> poison, float %i.pqo, i64 0
  %i.prc = shufflevector <4 x float> %i.prb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.prd = fsub reassoc nsz arcp contract afn <4 x float> %i.pra, %i.prc
  %i.pre = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.prd)
  %i.prf = fadd reassoc nsz arcp contract afn <4 x float> %i.pqn, %i.pre
  %i.prg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.prf ; 2 uses
  %i.prh = getelementptr inbounds nuw i8, ptr %i.ppw, i64 544
  %i.pri = getelementptr inbounds i8, ptr %i.ppw, i64 -544
  %i.prj = getelementptr inbounds nuw i8, ptr %i.ppw, i64 4
  %i.prk = getelementptr inbounds i8, ptr %i.ppw, i64 -4
  %i.prl = load float, ptr %i.prh, align 4, !tbaa !22, !noalias !402
  %i.prm = load float, ptr %i.pri, align 4, !tbaa !22, !noalias !402
  %i.prn = load float, ptr %i.prj, align 4, !tbaa !22, !noalias !402
  %i.pro = load float, ptr %i.prk, align 4, !tbaa !22, !noalias !402
  %i.prp = fsub reassoc nsz arcp contract afn float %i.pqd, %i.prl
  %i.prq = fsub reassoc nsz arcp contract afn float %i.pqe, %i.prm
  %i.prr = fsub reassoc nsz arcp contract afn float %i.pqf, %i.prn
  %i.prs = fsub reassoc nsz arcp contract afn float %i.pqg, %i.pro
  %i.prt = insertelement <4 x float> poison, float %i.prs, i64 0
  %i.pru = insertelement <4 x float> %i.prt, float %i.prr, i64 1
  %i.prv = insertelement <4 x float> %i.pru, float %i.prq, i64 2
  %i.prw = insertelement <4 x float> %i.prv, float %i.prp, i64 3
  %i.prx = fmul reassoc nsz arcp contract afn <4 x float> %i.prw, %i.prg
  %i.pry = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.prx)
  %i.prz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.prg)
  %i.psa = fdiv reassoc nsz arcp contract afn float %i.pry, %i.prz
  %i.psb = fsub reassoc nsz arcp contract afn float %i.ppy, %i.psa
  store float %i.psb, ptr %i.ppw, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1297.i = add nuw nsw i64 %indvars.iv1296.i, 2 ; 2 uses
  %i.psc = icmp slt i64 %indvars.iv.next1297.i, %i.org
  br i1 %i.psc, label %scalar.ph3763, label %._crit_edge1155.i, !llvm.loop !494

._crit_edge1176.split.i:                          ; preds = %._crit_edge1169.i, %.lr.ph1175.i, %._crit_edge1161.i
  %i.psd = add nuw nsw i32 %.08871178.i, 1
  %indvars.iv.next1208.i = add i32 %indvars.iv1207.i, 112
  %exitcond1311.not.i = icmp eq i32 %.08871178.i, %smax.i552
  %indvars.iv.next1091 = add nuw i32 %indvars.iv1090, 112
  %indvars.iv.next1094 = add i32 %indvars.iv1093, -112
  br i1 %exitcond1311.not.i, label %._crit_edge1180.i, label %bb.pr

.lr.ph1168.i:                                     ; preds = %.lr.ph1168.i.preheader, %._crit_edge1169.i
  %indvars.iv1306.i = phi i64 [ %indvars.iv.next1307.i, %._crit_edge1169.i ], [ %i.lzc, %.lr.ph1168.i.preheader ] ; 2 uses
  %indvars.iv1302.i = phi i32 [ %indvars.iv.next1303.i, %._crit_edge1169.i ], [ %narrow.i, %.lr.ph1168.i.preheader ] ; 2 uses
  %i.pse = trunc i64 %indvars.iv1306.i to i32
  %i.psf = mul i32 %i.bo, %i.pse
  %i.psg = add i32 %i.psf, %i.oun
  %i.psh = shl nsw i32 %i.psg, 2
  %i.psi = zext nneg i32 %i.psh to i64
  %i.psj = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.psi ; 6 uses
  %i.psk = mul i32 %indvars.iv1302.i, 136
  %i.psl = add i32 %.reass1171.i, %i.psk
  %i.psm = sext i32 %i.psl to i64                 ; 3 uses
  %i.psn = getelementptr inbounds [4 x i8], ptr %i.lxb, i64 %i.psm ; 6 uses
  %i.pso = getelementptr inbounds [4 x i8], ptr %i.lxd, i64 %i.psm ; 6 uses
  %i.psp = getelementptr inbounds [4 x i8], ptr %i.lxe, i64 %i.psm ; 6 uses
  br i1 %i.our, label %_calc_gamma.exit975.us.i.preheader, label %.lr.ph1168.split.i.preheader

.lr.ph1168.split.i.preheader:                     ; preds = %.lr.ph1168.i
  br i1 %min.iters.check3703, label %.lr.ph1168.split.i.preheader4646, label %vector.ph3704

vector.ph3704:                                    ; preds = %.lr.ph1168.split.i.preheader
  %i.psq = getelementptr i8, ptr %i.psp, i64 %8
  %i.psr = getelementptr i8, ptr %i.pso, i64 %8
  %i.pss = getelementptr i8, ptr %i.psn, i64 %8
  %i.pst = getelementptr i8, ptr %i.psj, i64 %9
  br label %vector.body3708

vector.body3708:                                  ; preds = %vector.body3708, %vector.ph3704
  %index3709 = phi i64 [ 0, %vector.ph3704 ], [ %index.next3736, %vector.body3708 ] ; 3 uses
  %i.psu = shl i64 %index3709, 2                  ; 3 uses
  %next.gep3710 = getelementptr i8, ptr %i.psp, i64 %i.psu
  %next.gep3711 = getelementptr i8, ptr %i.pso, i64 %i.psu
  %next.gep3712 = getelementptr i8, ptr %i.psn, i64 %i.psu
  %i.psv = shl i64 %index3709, 4
  %next.gep3713 = getelementptr i8, ptr %i.psj, i64 %i.psv
  %wide.load3714 = load <8 x float>, ptr %next.gep3712, align 4, !tbaa !22, !noalias !402
  %i.psw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3714, splat (float 6.553500e+04) ; 4 uses
  %i.psx = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.psw, zeroinitializer ; 2 uses
  %i.psy = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.psw, splat (float f0x477FFEFD)
  %i.psz = and <8 x i1> %i.psx, %i.psy            ; 3 uses
  %i.pta = fptosi <8 x float> %i.psw to <8 x i32> ; 2 uses
  %i.ptb = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pta to <8 x float>
  %i.ptc = fsub reassoc nsz arcp contract afn <8 x float> %i.psw, %i.ptb
  %i.ptd = sext <8 x i32> %i.pta to <8 x i64>
  %wide.gep3715 = getelementptr inbounds [4 x i8], ptr %i.ouq, <8 x i64> %i.ptd ; 2 uses
  %wide.masked.gather3716 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3715, <8 x i1> %i.psz, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3717 = getelementptr i8, <8 x ptr> %wide.gep3715, i64 4
  %wide.masked.gather3718 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3717, <8 x i1> %i.psz, <8 x float> poison), !tbaa !22, !noalias !402
  %i.pte = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3718, %wide.masked.gather3716
  %i.ptf = fmul reassoc nsz arcp contract afn <8 x float> %i.pte, %i.ptc
  %i.ptg = fadd reassoc nsz arcp contract afn <8 x float> %i.ptf, %wide.masked.gather3716
  %predphi3719 = select <8 x i1> %i.psz, <8 x float> %i.ptg, <8 x float> splat (float 1.000000e+00)
  %predphi3720 = select <8 x i1> %i.psx, <8 x float> %predphi3719, <8 x float> zeroinitializer
  %i.pth = fmul reassoc nsz arcp contract afn <8 x float> %predphi3720, %broadcast.splat3707
  %wide.load3721 = load <8 x float>, ptr %next.gep3711, align 4, !tbaa !22, !noalias !402
  %i.pti = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3721, splat (float 6.553500e+04) ; 4 uses
  %i.ptj = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pti, zeroinitializer ; 2 uses
  %i.ptk = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pti, splat (float f0x477FFEFD)
  %i.ptl = and <8 x i1> %i.ptj, %i.ptk            ; 3 uses
  %i.ptm = fptosi <8 x float> %i.pti to <8 x i32> ; 2 uses
  %i.ptn = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ptm to <8 x float>
  %i.pto = fsub reassoc nsz arcp contract afn <8 x float> %i.pti, %i.ptn
  %i.ptp = sext <8 x i32> %i.ptm to <8 x i64>
  %wide.gep3722 = getelementptr inbounds [4 x i8], ptr %i.ouq, <8 x i64> %i.ptp ; 2 uses
  %wide.masked.gather3723 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3722, <8 x i1> %i.ptl, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3724 = getelementptr i8, <8 x ptr> %wide.gep3722, i64 4
  %wide.masked.gather3725 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3724, <8 x i1> %i.ptl, <8 x float> poison), !tbaa !22, !noalias !402
  %i.ptq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3725, %wide.masked.gather3723
  %i.ptr = fmul reassoc nsz arcp contract afn <8 x float> %i.ptq, %i.pto
  %i.pts = fadd reassoc nsz arcp contract afn <8 x float> %i.ptr, %wide.masked.gather3723
  %predphi3726 = select <8 x i1> %i.ptl, <8 x float> %i.pts, <8 x float> splat (float 1.000000e+00)
  %predphi3727 = select <8 x i1> %i.ptj, <8 x float> %predphi3726, <8 x float> zeroinitializer
  %i.ptt = fmul reassoc nsz arcp contract afn <8 x float> %predphi3727, %broadcast.splat3707
  %wide.load3728 = load <8 x float>, ptr %next.gep3710, align 4, !tbaa !22, !noalias !402
  %i.ptu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3728, splat (float 6.553500e+04) ; 4 uses
  %i.ptv = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ptu, zeroinitializer ; 2 uses
  %i.ptw = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ptu, splat (float f0x477FFEFD)
  %i.ptx = and <8 x i1> %i.ptv, %i.ptw            ; 3 uses
  %i.pty = fptosi <8 x float> %i.ptu to <8 x i32> ; 2 uses
  %i.ptz = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pty to <8 x float>
  %i.pua = fsub reassoc nsz arcp contract afn <8 x float> %i.ptu, %i.ptz
  %i.pub = sext <8 x i32> %i.pty to <8 x i64>
  %wide.gep3729 = getelementptr inbounds [4 x i8], ptr %i.ouq, <8 x i64> %i.pub ; 2 uses
  %wide.masked.gather3730 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3729, <8 x i1> %i.ptx, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3731 = getelementptr i8, <8 x ptr> %wide.gep3729, i64 4
  %wide.masked.gather3732 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3731, <8 x i1> %i.ptx, <8 x float> poison), !tbaa !22, !noalias !402
  %i.puc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3732, %wide.masked.gather3730
  %i.pud = fmul reassoc nsz arcp contract afn <8 x float> %i.puc, %i.pua
  %i.pue = fadd reassoc nsz arcp contract afn <8 x float> %i.pud, %wide.masked.gather3730
  %predphi3733 = select nsz <8 x i1> %i.ptx, <8 x float> %i.pue, <8 x float> splat (float 1.000000e+00)
  %predphi3734 = select nsz <8 x i1> %i.ptv, <8 x float> %predphi3733, <8 x float> zeroinitializer
  %i.puf = fmul reassoc nsz arcp contract afn <8 x float> %predphi3734, %broadcast.splat3707
  %i.pug = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.puf, <8 x float> zeroinitializer)
  %i.puh = shufflevector <8 x float> %i.pth, <8 x float> %i.ptt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pui = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.puh, <16 x float> zeroinitializer)
  %i.puj = shufflevector <8 x float> %i.pug, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3735 = shufflevector <16 x float> %i.pui, <16 x float> %i.puj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3735, ptr %next.gep3713, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %index.next3736 = add nuw i64 %index3709, 8     ; 2 uses
  %i.puk = icmp eq i64 %index.next3736, %n.vec3705
  br i1 %i.puk, label %middle.block3737, label %vector.body3708, !llvm.loop !495

middle.block3737:                                 ; preds = %vector.body3708
  br i1 %cmp.n3738, label %._crit_edge1169.i, label %.lr.ph1168.split.i.preheader4646

.lr.ph1168.split.i.preheader4646:                 ; preds = %.lr.ph1168.split.i.preheader, %middle.block3737
  %.01166.i.ph = phi i32 [ %i.oun, %.lr.ph1168.split.i.preheader ], [ %7, %middle.block3737 ]
  %.08731165.i.ph = phi ptr [ %i.psp, %.lr.ph1168.split.i.preheader ], [ %i.psq, %middle.block3737 ]
  %.08741164.i.ph = phi ptr [ %i.pso, %.lr.ph1168.split.i.preheader ], [ %i.psr, %middle.block3737 ]
  %.08751163.i.ph = phi ptr [ %i.psn, %.lr.ph1168.split.i.preheader ], [ %i.pss, %middle.block3737 ]
  %.08761162.i.ph = phi ptr [ %i.psj, %.lr.ph1168.split.i.preheader ], [ %i.pst, %middle.block3737 ]
  br label %.lr.ph1168.split.i

_calc_gamma.exit975.us.i.preheader:               ; preds = %.lr.ph1168.i
  br i1 %min.iters.check3680, label %_calc_gamma.exit975.us.i.preheader4645, label %vector.ph3681

vector.ph3681:                                    ; preds = %_calc_gamma.exit975.us.i.preheader
  %i.pul = getelementptr i8, ptr %i.psp, i64 %i.ova
  %i.pum = getelementptr i8, ptr %i.pso, i64 %i.ova
  %i.pun = getelementptr i8, ptr %i.psn, i64 %i.ova
  %i.puo = getelementptr i8, ptr %i.psj, i64 %i.ovb
  br label %vector.body3685

vector.body3685:                                  ; preds = %vector.body3685, %vector.ph3681
  %index3686 = phi i64 [ 0, %vector.ph3681 ], [ %index.next3694, %vector.body3685 ] ; 3 uses
  %i.pup = shl i64 %index3686, 2                  ; 3 uses
  %next.gep = getelementptr i8, ptr %i.psp, i64 %i.pup
  %next.gep3687 = getelementptr i8, ptr %i.pso, i64 %i.pup
  %next.gep3688 = getelementptr i8, ptr %i.psn, i64 %i.pup
  %i.puq = shl i64 %index3686, 4
  %next.gep3689 = getelementptr i8, ptr %i.psj, i64 %i.puq
  %wide.load3690 = load <8 x float>, ptr %next.gep3688, align 4, !tbaa !22, !noalias !402
  %wide.load3691 = load <8 x float>, ptr %next.gep3687, align 4, !tbaa !22, !noalias !402
  %wide.load3692 = load <8 x float>, ptr %next.gep, align 4, !tbaa !22, !noalias !402
  %i.pur = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3692, %broadcast.splat3684
  %i.pus = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pur, <8 x float> zeroinitializer)
  %i.put = shufflevector <8 x float> %wide.load3690, <8 x float> %wide.load3691, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.puu = fmul reassoc nsz arcp contract afn <16 x float> %i.put, %i.awt
  %i.puv = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.puu, <16 x float> zeroinitializer)
  %i.puw = shufflevector <8 x float> %i.pus, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3693 = shufflevector <16 x float> %i.puv, <16 x float> %i.puw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3693, ptr %next.gep3689, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %index.next3694 = add nuw i64 %index3686, 8     ; 2 uses
  %i.pux = icmp eq i64 %index.next3694, %n.vec3682
  br i1 %i.pux, label %middle.block3695, label %vector.body3685, !llvm.loop !496

middle.block3695:                                 ; preds = %vector.body3685
  br i1 %cmp.n3696, label %._crit_edge1169.i, label %_calc_gamma.exit975.us.i.preheader4645

_calc_gamma.exit975.us.i.preheader4645:           ; preds = %_calc_gamma.exit975.us.i.preheader, %middle.block3695
  %.01166.us.i.ph = phi i32 [ %i.oun, %_calc_gamma.exit975.us.i.preheader ], [ %i.ouz, %middle.block3695 ]
  %.08731165.us.i.ph = phi ptr [ %i.psp, %_calc_gamma.exit975.us.i.preheader ], [ %i.pul, %middle.block3695 ]
  %.08741164.us.i.ph = phi ptr [ %i.pso, %_calc_gamma.exit975.us.i.preheader ], [ %i.pum, %middle.block3695 ]
  %.08751163.us.i.ph = phi ptr [ %i.psn, %_calc_gamma.exit975.us.i.preheader ], [ %i.pun, %middle.block3695 ]
  %.08761162.us.i.ph = phi ptr [ %i.psj, %_calc_gamma.exit975.us.i.preheader ], [ %i.puo, %middle.block3695 ]
  br label %_calc_gamma.exit975.us.i

_calc_gamma.exit975.us.i:                         ; preds = %_calc_gamma.exit975.us.i.preheader4645, %_calc_gamma.exit975.us.i
  %.01166.us.i = phi i32 [ %i.pvj, %_calc_gamma.exit975.us.i ], [ %.01166.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ]
  %.08731165.us.i = phi ptr [ %i.pvn, %_calc_gamma.exit975.us.i ], [ %.08731165.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08741164.us.i = phi ptr [ %i.pvm, %_calc_gamma.exit975.us.i ], [ %.08741164.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08751163.us.i = phi ptr [ %i.pvl, %_calc_gamma.exit975.us.i ], [ %.08751163.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08761162.us.i = phi ptr [ %i.pvk, %_calc_gamma.exit975.us.i ], [ %.08761162.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 4 uses
  %i.puy = load float, ptr %.08751163.us.i, align 4, !tbaa !22, !noalias !402
  %i.puz = load float, ptr %.08741164.us.i, align 4, !tbaa !22, !noalias !402
  %i.pva = insertelement <2 x float> poison, float %i.puy, i64 0
  %i.pvb = insertelement <2 x float> %i.pva, float %i.puz, i64 1
  %i.pvc = fmul reassoc nsz arcp contract afn <2 x float> %i.pvb, %i.awv
  %i.pvd = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pvc, <2 x float> zeroinitializer)
  store <2 x float> %i.pvd, ptr %.08761162.us.i, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pve = load float, ptr %.08731165.us.i, align 4, !tbaa !22, !noalias !402
  %i.pvf = fmul reassoc nsz arcp contract afn float %i.pve, %i.eh
  %i.pvg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pvf, float 0.000000e+00)
  %i.pvh = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 8
  store float %i.pvg, ptr %i.pvh, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvi = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 12
  store float 0.000000e+00, ptr %i.pvi, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvj = add nuw nsw i32 %.01166.us.i, 1        ; 2 uses
  %i.pvk = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 16
  %i.pvl = getelementptr inbounds nuw i8, ptr %.08751163.us.i, i64 4
  %i.pvm = getelementptr inbounds nuw i8, ptr %.08741164.us.i, i64 4
  %i.pvn = getelementptr inbounds nuw i8, ptr %.08731165.us.i, i64 4
  %i.pvo = icmp slt i32 %i.pvj, %i.ouo
  br i1 %i.pvo, label %_calc_gamma.exit975.us.i, label %._crit_edge1169.i, !llvm.loop !497

._crit_edge1169.i:                                ; preds = %_calc_gamma.exit977.i, %_calc_gamma.exit975.us.i, %middle.block3737, %middle.block3695
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %indvars.iv.next1303.i = add i32 %indvars.iv1302.i, 1
  %i.pvp = trunc nuw i64 %indvars.iv.next1307.i to i32
  %i.pvq = icmp sgt i32 %i.lyx, %i.pvp
  br i1 %i.pvq, label %.lr.ph1168.i, label %._crit_edge1176.split.i

.lr.ph1168.split.i:                               ; preds = %.lr.ph1168.split.i.preheader4646, %_calc_gamma.exit977.i
  %.01166.i = phi i32 [ %i.pxt, %_calc_gamma.exit977.i ], [ %.01166.i.ph, %.lr.ph1168.split.i.preheader4646 ]
  %.08731165.i = phi ptr [ %i.pxx, %_calc_gamma.exit977.i ], [ %.08731165.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08741164.i = phi ptr [ %i.pxw, %_calc_gamma.exit977.i ], [ %.08741164.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08751163.i = phi ptr [ %i.pxv, %_calc_gamma.exit977.i ], [ %.08751163.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08761162.i = phi ptr [ %i.pxu, %_calc_gamma.exit977.i ], [ %.08761162.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 5 uses
  %i.pvr = load float, ptr %.08751163.i, align 4, !tbaa !22, !noalias !402
  %i.pvs = fmul reassoc nsz arcp contract afn float %i.pvr, 6.553500e+04 ; 4 uses
  %i.pvt = fcmp reassoc nsz arcp contract afn olt float %i.pvs, 0.000000e+00
  br i1 %i.pvt, label %bb.rj, label %bb.rh

bb.rh:                                            ; preds = %.lr.ph1168.split.i
  %i.pvu = fcmp reassoc nsz arcp contract afn ogt float %i.pvs, f0x477FFEFD
  br i1 %i.pvu, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.pvv = fptosi float %i.pvs to i32             ; 2 uses
  %i.pvw = sitofp reassoc nsz arcp contract afn i32 %i.pvv to float
  %i.pvx = fsub reassoc nsz arcp contract afn float %i.pvs, %i.pvw
  %i.pvy = sext i32 %i.pvv to i64
  %i.pvz = getelementptr inbounds [4 x i8], ptr %i.ouq, i64 %i.pvy ; 2 uses
  %i.pwa = load float, ptr %i.pvz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pwb = getelementptr i8, ptr %i.pvz, i64 4
  %i.pwc = load float, ptr %i.pwb, align 4, !tbaa !22, !noalias !402
  %i.pwd = fsub reassoc nsz arcp contract afn float %i.pwc, %i.pwa
  %i.pwe = fmul reassoc nsz arcp contract afn float %i.pwd, %i.pvx
  %i.pwf = fadd reassoc nsz arcp contract afn float %i.pwe, %i.pwa
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rh, %.lr.ph1168.split.i
  %.1.i972.ph.i = phi float [ 1.000000e+00, %bb.rh ], [ 0.000000e+00, %.lr.ph1168.split.i ], [ %i.pwf, %bb.ri ]
  %i.pwg = fmul reassoc nsz arcp contract afn float %.1.i972.ph.i, %i.eh
  %i.pwh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pwg, float 0.000000e+00)
  store float %i.pwh, ptr %.08761162.i, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pwi = load float, ptr %.08741164.i, align 4, !tbaa !22, !noalias !402
  %i.pwj = fmul reassoc nsz arcp contract afn float %i.pwi, 6.553500e+04 ; 4 uses
  %i.pwk = fcmp reassoc nsz arcp contract afn olt float %i.pwj, 0.000000e+00
  br i1 %i.pwk, label %bb.rm, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.pwl = fcmp reassoc nsz arcp contract afn ogt float %i.pwj, f0x477FFEFD
  br i1 %i.pwl, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.pwm = fptosi float %i.pwj to i32             ; 2 uses
  %i.pwn = sitofp reassoc nsz arcp contract afn i32 %i.pwm to float
  %i.pwo = fsub reassoc nsz arcp contract afn float %i.pwj, %i.pwn
  %i.pwp = sext i32 %i.pwm to i64
  %i.pwq = getelementptr inbounds [4 x i8], ptr %i.ouq, i64 %i.pwp ; 2 uses
  %i.pwr = load float, ptr %i.pwq, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pws = getelementptr i8, ptr %i.pwq, i64 4
  %i.pwt = load float, ptr %i.pws, align 4, !tbaa !22, !noalias !402
  %i.pwu = fsub reassoc nsz arcp contract afn float %i.pwt, %i.pwr
  %i.pwv = fmul reassoc nsz arcp contract afn float %i.pwu, %i.pwo
  %i.pww = fadd reassoc nsz arcp contract afn float %i.pwv, %i.pwr
  br label %bb.rm

bb.rm:                                            ; preds = %bb.rl, %bb.rk, %bb.rj
  %.1.i974.ph.i = phi float [ 1.000000e+00, %bb.rk ], [ 0.000000e+00, %bb.rj ], [ %i.pww, %bb.rl ]
  %i.pwx = fmul reassoc nsz arcp contract afn float %.1.i974.ph.i, %i.eh
  %i.pwy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pwx, float 0.000000e+00)
  %i.pwz = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 4
  store float %i.pwy, ptr %i.pwz, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pxa = load float, ptr %.08731165.i, align 4, !tbaa !22, !noalias !402
  %i.pxb = fmul reassoc nsz arcp contract afn float %i.pxa, 6.553500e+04 ; 4 uses
  %i.pxc = fcmp reassoc nsz arcp contract afn olt float %i.pxb, 0.000000e+00
  br i1 %i.pxc, label %_calc_gamma.exit977.i, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.pxd = fcmp reassoc nsz arcp contract afn ogt float %i.pxb, f0x477FFEFD
  br i1 %i.pxd, label %_calc_gamma.exit977.i, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.pxe = fptosi float %i.pxb to i32             ; 2 uses
  %i.pxf = sitofp reassoc nsz arcp contract afn i32 %i.pxe to float
  %i.pxg = fsub reassoc nsz arcp contract afn float %i.pxb, %i.pxf
  %i.pxh = sext i32 %i.pxe to i64
  %i.pxi = getelementptr inbounds [4 x i8], ptr %i.ouq, i64 %i.pxh ; 2 uses
  %i.pxj = load float, ptr %i.pxi, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pxk = getelementptr i8, ptr %i.pxi, i64 4
  %i.pxl = load float, ptr %i.pxk, align 4, !tbaa !22, !noalias !402
  %i.pxm = fsub reassoc nsz arcp contract afn float %i.pxl, %i.pxj
  %i.pxn = fmul reassoc nsz arcp contract afn float %i.pxm, %i.pxg
  %i.pxo = fadd reassoc nsz arcp contract afn float %i.pxn, %i.pxj
  br label %_calc_gamma.exit977.i

_calc_gamma.exit977.i:                            ; preds = %bb.ro, %bb.rn, %bb.rm
  %.1.i976.i = phi nsz float [ 1.000000e+00, %bb.rn ], [ %i.pxo, %bb.ro ], [ 0.000000e+00, %bb.rm ]
  %i.pxp = fmul reassoc nsz arcp contract afn float %.1.i976.i, %i.eh
  %i.pxq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pxp, float 0.000000e+00)
  %i.pxr = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 8
  store float %i.pxq, ptr %i.pxr, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pxs = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 12
  store float 0.000000e+00, ptr %i.pxs, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pxt = add nuw nsw i32 %.01166.i, 1           ; 2 uses
  %i.pxu = getelementptr inbounds nuw i8, ptr %.08761162.i, i64 16
  %i.pxv = getelementptr inbounds nuw i8, ptr %.08751163.i, i64 4
  %i.pxw = getelementptr inbounds nuw i8, ptr %.08741164.i, i64 4
  %i.pxx = getelementptr inbounds nuw i8, ptr %.08731165.i, i64 4
  %i.pxy = icmp slt i32 %i.pxt, %i.ouo
  br i1 %i.pxy, label %.lr.ph1168.split.i, label %._crit_edge1169.i, !llvm.loop !498

bb.rp:                                            ; preds = %bb.ox
  %i.pxz = load float, ptr %i.apq, align 8, !tbaa !499
  tail call fastcc void @demosaic_ppg(ptr noundef %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef %.fr1043, float noundef %i.pxz, i32 noundef 100000)
  br label %demosaic_box3.exit

bb.rq:                                            ; preds = %bb.ox
  tail call void @amaze_demosaic(ptr noundef %i.ayn, ptr noundef nonnull %i.aop, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef %.fr1043, float noundef %i.ek) #27
  br label %demosaic_box3.exit

demosaic_box3.exit:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.i475, %._crit_edge.i, %bb.iu, %bb.it, %bb.id, %._crit_edge1183.split.i, %bb.ph, %._crit_edge942.split.i, %bb.oy, %xtrans_fdc_interpolate.exit, %bb.ot, %xtrans_markesteijn_interpolate.exit, %bb.is, %bb.ow, %bb.ov, %bb.rq, %bb.rp
  br i1 %i.dv, label %bb.rr, label %_capture_sharpen.exit

bb.rr:                                            ; preds = %demosaic_box3.exit
end_hunk_1
