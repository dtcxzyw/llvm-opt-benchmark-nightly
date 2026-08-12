inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.orr = fadd reassoc nsz arcp contract afn float %i.orn, %i.orp
  %i.ors = fadd reassoc nsz arcp contract afn float %i.oro, %i.orq
  %i.ort = fsub reassoc nsz arcp contract afn float %i.orr, %i.ors
  %i.oru = fmul reassoc nsz arcp contract afn float %i.ort, 5.000000e-01
  store float %i.oru, ptr %.1928.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %._crit_edge1095.i, %bb.rb, %._crit_edge1114.i
  %indvars.iv.next1276.i = add nuw nsw i64 %indvars.iv1275.i, 1 ; 2 uses
  %exitcond1137.not = icmp eq i64 %indvars.iv.next1276.i, %i.lzd
  %indvar.next3989 = add i64 %indvar3988, 1
  br i1 %exitcond1137.not, label %._crit_edge1123.i, label %.lr.ph1122.i

.preheader1013.i:                                 ; preds = %._crit_edge1135.i, %.preheader1014.i
  br i1 %i.lxl, label %.lr.ph1160.i, label %._crit_edge1161.i

.lr.ph1160.i:                                     ; preds = %.preheader1013.i
  %i.orv = add nuw nsw i32 %i.nqj, 2              ; 3 uses
  %i.orw = add nsw i32 %i.nql, -2                 ; 4 uses
  %i.orx = sext i32 %i.orw to i64                 ; 3 uses
  br i1 %i.lys, label %.lr.ph1143.i.preheader.preheader, label %._crit_edge1161.i

.lr.ph1143.i.preheader.preheader:                 ; preds = %.lr.ph1160.i
  %i.ory = zext nneg i32 %i.nqj to i64            ; 3 uses
  %i.orz = add nuw nsw i64 %i.ory, 4
  %i.osa = add nsw i32 %.neg.i555, 6              ; 2 uses
  %i.osb = add i32 %i.osa, %smin3779
  %i.osc = sext i32 %i.osb to i64
  %i.osd = zext nneg i32 %i.nqj to i64            ; 3 uses
  %i.ose = add nuw nsw i64 %i.osd, 4
  %i.osf = add i32 %i.osa, %smin3842
  %i.osg = sext i32 %i.osf to i64
  %i.osh = zext nneg i32 %i.nqj to i64            ; 3 uses
  %i.osi = add nuw nsw i64 %i.osh, 4
  %i.osj = add nsw i32 %.neg.i555, 6
  %i.osk = add i32 %i.osj, %smin3933
  %i.osl = sext i32 %i.osk to i64
  %i.osm = zext nneg i32 %i.nqj to i64            ; 2 uses
  %i.osn = add i32 %.neg.i555, %i.mbl
  %i.oso = add i32 %i.osn, 6
  %i.osp = sext i32 %i.oso to i64
  %i.osq = zext nneg i32 %i.nqj to i64            ; 2 uses
  %i.osr = add i32 %.neg.i555, %i.mbl
  %i.oss = add i32 %i.osr, 6
  %i.ost = sext i32 %i.oss to i64
  %i.osu = zext nneg i32 %i.nqj to i64            ; 2 uses
  %i.osv = add i32 %.neg.i555, %i.mbl
  %i.osw = add i32 %i.osv, 6
  %i.osx = sext i32 %i.osw to i64
  br label %.lr.ph1143.i.preheader

.preheader1009.i:                                 ; preds = %.preheader1009.i.preheader, %._crit_edge1135.i
  %indvars.iv1281.i = phi i64 [ %indvars.iv.next1282.i, %._crit_edge1135.i ], [ 4, %.preheader1009.i.preheader ] ; 3 uses
  %i.osy = mul nuw nsw i64 %indvars.iv1281.i, 136 ; 5 uses
  %indvars.iv1281.tr.i = trunc i64 %indvars.iv1281.i to i32
  %i.osz = shl i32 %indvars.iv1281.tr.i, 1
  %i.ota = and i32 %i.osz, 14                     ; 5 uses
  br i1 %i.nwh, label %.epil.preheader4796, label %.preheader1009.i.new

.preheader1009.i.new:                             ; preds = %.preheader1009.i
  %i.otb = shl nuw nsw i32 %i.ota, 1
  %i.otc = lshr i32 %.fr1059, %i.otb
  %i.otd = and i32 %i.otc, 3
  %i.ote = zext nneg i32 %i.otd to i64
  %i.otf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ote
  %i.otg = load ptr, ptr %i.otf, align 8, !tbaa !407, !noalias !408
  %i.oth = shl nuw nsw i32 %i.ota, 1
  %i.oti = or disjoint i32 %i.oth, 2
  %i.otj = lshr i32 %.fr1059, %i.oti
  %i.otk = and i32 %i.otj, 3
  %i.otl = zext nneg i32 %i.otk to i64
  %i.otm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otl
  %i.otn = load ptr, ptr %i.otm, align 8, !tbaa !407, !noalias !408
  %i.oto = shl nuw nsw i32 %i.ota, 1
  %i.otp = lshr i32 %.fr1059, %i.oto
  %i.otq = and i32 %i.otp, 3
  %i.otr = zext nneg i32 %i.otq to i64
  %i.ots = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otr
  %i.ott = load ptr, ptr %i.ots, align 8, !tbaa !407, !noalias !408
  %i.otu = shl nuw nsw i32 %i.ota, 1
  %i.otv = or disjoint i32 %i.otu, 2
  %i.otw = lshr i32 %.fr1059, %i.otv
  %i.otx = and i32 %i.otw, 3
  %i.oty = zext nneg i32 %i.otx to i64
  %i.otz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oty
  %i.oua = load ptr, ptr %i.otz, align 8, !tbaa !407, !noalias !408
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
  %i.oub = add nuw nsw i64 %indvars.iv1278.i.epil, %i.osy ; 2 uses
  %i.ouc = trunc nuw nsw i64 %indvars.iv1278.i.epil to i32
  %i.oud = and i32 %i.ouc, 1
  %i.oue = or disjoint i32 %i.oud, %i.ota
  %i.ouf = shl nuw nsw i32 %i.oue, 1
  %i.oug = lshr i32 %.fr1059, %i.ouf
  %i.ouh = and i32 %i.oug, 3
  %i.oui = getelementptr inbounds nuw [4 x i8], ptr %i.lxf, i64 %i.oub
  %i.ouj = load float, ptr %i.oui, align 4, !tbaa !22, !noalias !402
  %i.ouk = zext nneg i32 %i.ouh to i64
  %i.oul = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ouk
  %i.oum = load ptr, ptr %i.oul, align 8, !tbaa !407, !noalias !408
  %i.oun = getelementptr inbounds nuw [4 x i8], ptr %i.oum, i64 %i.oub
  store float %i.ouj, ptr %i.oun, align 4, !tbaa !22, !noalias !402
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
  %i.ouo = add nuw nsw i64 %indvars.iv1278.i, %i.osy ; 2 uses
  %i.oup = getelementptr inbounds nuw [4 x i8], ptr %i.lxf, i64 %i.ouo
  %i.ouq = load float, ptr %i.oup, align 16, !tbaa !22, !noalias !402
  %i.our = getelementptr inbounds nuw [4 x i8], ptr %i.otg, i64 %i.ouo
  store float %i.ouq, ptr %i.our, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i = or disjoint i64 %indvars.iv1278.i, 1
  %i.ous = add nuw nsw i64 %indvars.iv.next1279.i, %i.osy ; 2 uses
  %i.out = getelementptr inbounds nuw [4 x i8], ptr %i.lxf, i64 %i.ous
  %i.ouu = load float, ptr %i.out, align 4, !tbaa !22, !noalias !402
  %i.ouv = getelementptr inbounds nuw [4 x i8], ptr %i.otn, i64 %i.ous
  store float %i.ouu, ptr %i.ouv, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.1 = or disjoint i64 %indvars.iv1278.i, 2
  %i.ouw = add nuw nsw i64 %indvars.iv.next1279.i.1, %i.osy ; 2 uses
  %i.oux = getelementptr inbounds nuw [4 x i8], ptr %i.lxf, i64 %i.ouw
  %i.ouy = load float, ptr %i.oux, align 8, !tbaa !22, !noalias !402
  %i.ouz = getelementptr inbounds nuw [4 x i8], ptr %i.ott, i64 %i.ouw
  store float %i.ouy, ptr %i.ouz, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.2 = or disjoint i64 %indvars.iv1278.i, 3
  %i.ova = add nuw nsw i64 %indvars.iv.next1279.i.2, %i.osy ; 2 uses
  %i.ovb = getelementptr inbounds nuw [4 x i8], ptr %i.lxf, i64 %i.ova
  %i.ovc = load float, ptr %i.ovb, align 4, !tbaa !22, !noalias !402
  %i.ovd = getelementptr inbounds nuw [4 x i8], ptr %i.oua, i64 %i.ova
  store float %i.ovc, ptr %i.ovd, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.3 = add nuw nsw i64 %indvars.iv1278.i, 4 ; 2 uses
  %niter4804.next.3 = add i64 %niter4804, 4       ; 2 uses
  %niter4804.ncmp.3 = icmp eq i64 %niter4804.next.3, %unroll_iter4803
  br i1 %niter4804.ncmp.3, label %._crit_edge1135.i.unr-lcssa, label %bb.rg

._crit_edge1161.i:                                ; preds = %._crit_edge1158.i.loopexit, %.lr.ph1160.i, %.preheader1013.i
  %i.ove = select i1 %i.nqi, i32 4, i32 8         ; 3 uses
  %i.ovf = or disjoint i32 %i.ove, %i.mbh         ; 7 uses
  %.neg951.i = select i1 %i.nqk, i32 -4, i32 -8   ; 3 uses
  %i.ovg = add nsw i32 %i.mbj, %.neg951.i         ; 3 uses
  br i1 %i.lyw, label %.lr.ph1175.i, label %._crit_edge1176.split.i

.lr.ph1175.i:                                     ; preds = %._crit_edge1161.i
  %i.ovh = icmp slt i32 %i.ovf, %i.ovg
  %i.ovi = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.ovj = icmp eq ptr %i.ovi, null
  br i1 %i.ovh, label %.lr.ph1168.i.preheader, label %._crit_edge1176.split.i

.lr.ph1168.i.preheader:                           ; preds = %.lr.ph1175.i
  %reass.sub = sub nsw i32 %i.ovf, %i.mbh
  %.reass1171.i = add nsw i32 %reass.sub, 4
  %i.ovk = add i32 %.neg951.i, %smin3707
  %i.ovl = add i32 %i.ovk, %i.mbd
  %i.ovm = sub i32 %i.ovl, %i.ove                 ; 2 uses
  %i.ovn = zext i32 %i.ovm to i64
  %i.ovo = add nuw nsw i64 %i.ovn, 1              ; 2 uses
  %i.ovp = add i32 %.neg951.i, %smin3731
  %i.ovq = add i32 %i.ovp, %i.mbc
  %i.ovr = sub i32 %i.ovq, %i.ove                 ; 2 uses
  %i.ovs = zext i32 %i.ovr to i64
  %i.ovt = add nuw nsw i64 %i.ovs, 1              ; 2 uses
  %min.iters.check3733 = icmp ult i32 %i.ovr, 7
  %n.vec3735 = and i64 %i.ovt, 8589934584         ; 5 uses
  %i.ovu = trunc i64 %n.vec3735 to i32
  %i.ovv = add i32 %i.ovf, %i.ovu
  %i.ovw = shl nuw nsw i64 %n.vec3735, 2          ; 3 uses
  %i.ovx = shl nuw nsw i64 %n.vec3735, 4
  %cmp.n3768 = icmp eq i64 %i.ovt, %n.vec3735
  %min.iters.check3709 = icmp ult i32 %i.ovm, 7
  %n.vec3711 = and i64 %i.ovo, 8589934584         ; 5 uses
  %i.ovy = trunc i64 %n.vec3711 to i32
  %i.ovz = add i32 %i.ovf, %i.ovy
  %i.owa = shl nuw nsw i64 %n.vec3711, 2          ; 3 uses
  %i.owb = shl nuw nsw i64 %n.vec3711, 4
  %cmp.n3725 = icmp eq i64 %i.ovo, %n.vec3711
  br label %.lr.ph1168.i

.lr.ph1143.i.preheader:                           ; preds = %.lr.ph1143.i.preheader.preheader, %._crit_edge1158.i.loopexit
  %.09081159.i = phi i32 [ %i.pmd, %._crit_edge1158.i.loopexit ], [ 0, %.lr.ph1143.i.preheader.preheader ]
  br label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %._crit_edge1140.i
  %indvar3927 = phi i64 [ 0, %.lr.ph1143.i.preheader ], [ %indvar.next3928, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1287.i = phi i64 [ %i.lyy, %.lr.ph1143.i.preheader ], [ %indvars.iv.next1288.i, %._crit_edge1140.i ] ; 3 uses
  %i.owc = mul i64 %indvar3927, 544               ; 4 uses
  %scevgep3929 = getelementptr i8, ptr %i.lzp, i64 %i.owc
  %scevgep3931 = getelementptr i8, ptr %i.lzr, i64 %i.owc
  %indvars.iv1287.tr.i = trunc i64 %indvars.iv1287.i to i32
  %i.owd = shl i32 %indvars.iv1287.tr.i, 1
  %i.owe = and i32 %i.owd, 14                     ; 2 uses
  %i.owf = shl nuw nsw i32 %i.owe, 1
  %i.owg = lshr i32 %.fr1059, %i.owf              ; 3 uses
  %i.owh = and i32 %i.owg, 1                      ; 2 uses
  %i.owi = or disjoint i32 %i.owh, %i.orv         ; 2 uses
  %i.owj = icmp slt i32 %i.owi, %i.orw
  br i1 %i.owj, label %.lr.ph1139.i, label %._crit_edge1140.i

.lr.ph1139.i:                                     ; preds = %.lr.ph1143.i
  %i.owk = or disjoint i32 %i.owh, %i.owe
  %i.owl = shl nuw nsw i32 %i.owk, 1
  %i.owm = lshr i32 %.fr1059, %i.owl
  %i.own = and i32 %i.owm, 3
  %i.owo = mul nuw nsw i64 %indvars.iv1287.i, 136 ; 2 uses
  %i.owp = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.owo ; 2 uses
  %i.owq = zext nneg i32 %i.own to i64
  %i.owr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.owq
  %i.ows = load ptr, ptr %i.owr, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.owt = getelementptr inbounds nuw [4 x i8], ptr %i.ows, i64 %i.owo ; 2 uses
  %i.owu = zext nneg i32 %i.owi to i64            ; 5 uses
  %i.owv = and i32 %i.owg, 1
  %i.oww = zext nneg i32 %i.owv to i64            ; 2 uses
  %i.owx = or disjoint i64 %i.osm, %i.oww
  %i.owy = add nuw nsw i64 %i.owx, 4
  %i.owz = call i64 @llvm.smax.i64(i64 %i.owy, i64 %i.osp)
  %i.oxa = add nsw i64 %i.owz, -3
  %i.oxb = or disjoint i64 %i.osm, %i.oww
  %i.oxc = sub i64 %i.oxa, %i.oxb                 ; 2 uses
  %i.oxd = lshr i64 %i.oxc, 1
  %i.oxe = add nuw i64 %i.oxd, 1                  ; 2 uses
  %min.iters.check3942 = icmp ult i64 %i.oxc, 8
  br i1 %min.iters.check3942, label %scalar.ph3941.preheader, label %vector.memcheck3926

scalar.ph3941.preheader:                          ; preds = %vector.body3948, %vector.memcheck3926, %.lr.ph1139.i
  %indvars.iv1284.i.ph = phi i64 [ %i.owu, %vector.memcheck3926 ], [ %i.owu, %.lr.ph1139.i ], [ %i.oyb, %vector.body3948 ]
  br label %scalar.ph3941

vector.memcheck3926:                              ; preds = %.lr.ph1139.i
  %i.oxf = and i32 %i.owg, 1
  %i.oxg = zext nneg i32 %i.oxf to i64            ; 3 uses
  %i.oxh = or disjoint i64 %i.osh, %i.oxg
  %i.oxi = shl nuw nsw i64 %i.oxh, 2              ; 4 uses
  %scevgep3930 = getelementptr i8, ptr %scevgep3929, i64 %i.oxi
  %i.oxj = or disjoint i64 %i.osi, %i.oxg
  %smax3934 = call i64 @llvm.smax.i64(i64 %i.oxj, i64 %i.osl)
  %i.oxk = add nuw i64 %smax3934, 4611686018427387901
  %i.oxl = or disjoint i64 %i.osh, %i.oxg
  %i.oxm = sub nuw i64 %i.oxk, %i.oxl
  %i.oxn = shl i64 %i.oxm, 2
  %i.oxo = and i64 %i.oxn, -8                     ; 2 uses
  %i.oxp = getelementptr i8, ptr %scevgep3931, i64 %i.oxo
  %scevgep3935 = getelementptr i8, ptr %i.oxp, i64 %i.oxi
  %i.oxq = getelementptr i8, ptr %i.ows, i64 %i.lzh
  %i.oxr = getelementptr i8, ptr %i.oxq, i64 8
  %i.oxs = getelementptr i8, ptr %i.oxr, i64 %i.owc
  %scevgep3936 = getelementptr i8, ptr %i.oxs, i64 %i.oxi
  %i.oxt = getelementptr i8, ptr %i.ows, i64 %i.lzh
  %i.oxu = getelementptr i8, ptr %i.oxt, i64 2188
  %i.oxv = getelementptr i8, ptr %i.oxu, i64 %i.owc
  %i.oxw = getelementptr i8, ptr %i.oxv, i64 %i.oxo
  %scevgep3937 = getelementptr i8, ptr %i.oxw, i64 %i.oxi
  %bound03938 = icmp ult ptr %scevgep3930, %scevgep3937
  %bound13939 = icmp ult ptr %scevgep3936, %scevgep3935
  %found.conflict3940 = and i1 %bound03938, %bound13939
  br i1 %found.conflict3940, label %scalar.ph3941.preheader, label %vector.ph3943

vector.ph3943:                                    ; preds = %vector.memcheck3926
  %i.oxx = and i64 %i.oxe, 3                      ; 2 uses
  %i.oxy = icmp eq i64 %i.oxx, 0
  %i.oxz = select i1 %i.oxy, i64 4, i64 %i.oxx
  %n.vec3944 = sub i64 %i.oxe, %i.oxz             ; 2 uses
  %i.oya = shl i64 %n.vec3944, 1
  %i.oyb = add i64 %i.oya, %i.owu
  %broadcast.splatinsert3945 = insertelement <4 x i64> poison, i64 %i.owu, i64 0
  %broadcast.splat3946 = shufflevector <4 x i64> %broadcast.splatinsert3945, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3947 = add nuw nsw <4 x i64> %broadcast.splat3946, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4928 = getelementptr [4 x i8], ptr %i.owt, i64 %i.owu
  br label %vector.body3948

vector.body3948:                                  ; preds = %vector.body3948, %vector.ph3943
  %index3949 = phi i64 [ 0, %vector.ph3943 ], [ %index.next3976, %vector.body3948 ] ; 2 uses
  %vec.ind3950 = phi <4 x i64> [ %induction3947, %vector.ph3943 ], [ %vec.ind.next3977, %vector.body3948 ] ; 2 uses
  %wide.gep3951 = getelementptr inbounds nuw [4 x i8], ptr %i.owp, <4 x i64> %vec.ind3950 ; 2 uses
  %i.oyc = extractelement <4 x ptr> %wide.gep3951, i64 0 ; 4 uses
  %.idx4621 = shl nuw i64 %index3949, 3
  %gep4929 = getelementptr i8, ptr %invariant.gep4928, i64 %.idx4621 ; 7 uses
  %i.oyd = getelementptr inbounds i8, ptr %gep4929, i64 -8
  %wide.vec3952 = load <8 x float>, ptr %i.oyd, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3953.a = shufflevector <8 x float> %wide.vec3952, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oye = getelementptr inbounds i8, ptr %gep4929, i64 -4
  %wide.vec3954.a = load <8 x float>, ptr %i.oye, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3955.a = shufflevector <8 x float> %wide.vec3954.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3956 = shufflevector <8 x float> %wide.vec3954.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.oyf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3953.a, %strided.vec3956
  %i.oyg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyf)
  %i.oyh = getelementptr inbounds nuw i8, ptr %i.oyc, i64 4
  %wide.vec3957 = load <8 x float>, ptr %i.oyh, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3958 = shufflevector <8 x float> %wide.vec3957, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyi = getelementptr inbounds i8, ptr %i.oyc, i64 -4
  %wide.vec3959 = load <8 x float>, ptr %i.oyi, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3960.a = shufflevector <8 x float> %wide.vec3959, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3958, %strided.vec3960.a
  %i.oyk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyj)
  %i.oyl = fadd reassoc nsz arcp contract afn <4 x float> %i.oyk, splat (float 1.000000e+00) ; 2 uses
  %i.oym = fadd reassoc nsz arcp contract afn <4 x float> %i.oyl, %i.oyg
  %i.oyn = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oym ; 2 uses
  %i.oyo = getelementptr inbounds nuw i8, ptr %gep4929, i64 4
  %wide.vec3961.a = load <8 x float>, ptr %i.oyo, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3962.a = shufflevector <8 x float> %wide.vec3961.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3963 = shufflevector <8 x float> %wide.vec3961.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oyp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3963, %strided.vec3956
  %i.oyq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyp)
  %i.oyr = fadd reassoc nsz arcp contract afn <4 x float> %i.oyl, %i.oyq
  %i.oys = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyr ; 2 uses
  %i.oyt = getelementptr inbounds i8, ptr %gep4929, i64 -1088
  %wide.vec3964 = load <8 x float>, ptr %i.oyt, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3965 = shufflevector <8 x float> %wide.vec3964, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3965, %strided.vec3956
  %i.oyv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyu)
  %i.oyw = getelementptr inbounds nuw i8, ptr %i.oyc, i64 544
  %wide.vec3966 = load <8 x float>, ptr %i.oyw, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3967 = shufflevector <8 x float> %wide.vec3966, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyx = getelementptr inbounds i8, ptr %i.oyc, i64 -544
  %wide.vec3968 = load <8 x float>, ptr %i.oyx, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3969 = shufflevector <8 x float> %wide.vec3968, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3967, %strided.vec3969
  %i.oyz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyy)
  %i.oza = fadd reassoc nsz arcp contract afn <4 x float> %i.oyz, splat (float 1.000000e+00) ; 2 uses
  %i.ozb = fadd reassoc nsz arcp contract afn <4 x float> %i.oza, %i.oyv
  %i.ozc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ozb ; 2 uses
  %i.ozd = getelementptr inbounds nuw i8, ptr %gep4929, i64 1088
  %wide.vec3970 = load <8 x float>, ptr %i.ozd, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3971 = shufflevector <8 x float> %wide.vec3970, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oze = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3971, %strided.vec3956
  %i.ozf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oze)
  %i.ozg = fadd reassoc nsz arcp contract afn <4 x float> %i.oza, %i.ozf
  %i.ozh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ozg ; 2 uses
  %i.ozi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3960.a, %strided.vec3955.a
  %i.ozj = fmul reassoc nsz arcp contract afn <4 x float> %i.ozi, %i.oyn
  %i.ozk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3958, %strided.vec3962.a
  %i.ozl = fmul reassoc nsz arcp contract afn <4 x float> %i.ozk, %i.oys
  %i.ozm = fadd reassoc nsz arcp contract afn <4 x float> %i.ozl, %i.ozj
  %i.ozn = getelementptr inbounds i8, ptr %gep4929, i64 -544
  %wide.vec3972 = load <8 x float>, ptr %i.ozn, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3973 = shufflevector <8 x float> %wide.vec3972, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ozo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3969, %strided.vec3973
  %i.ozp = fmul reassoc nsz arcp contract afn <4 x float> %i.ozo, %i.ozc
  %i.ozq = fadd reassoc nsz arcp contract afn <4 x float> %i.ozm, %i.ozp
  %i.ozr = getelementptr inbounds nuw i8, ptr %gep4929, i64 544
  %wide.vec3974 = load <8 x float>, ptr %i.ozr, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3975 = shufflevector <8 x float> %wide.vec3974, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ozs = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3967, %strided.vec3975
  %i.ozt = fmul reassoc nsz arcp contract afn <4 x float> %i.ozs, %i.ozh
  %i.ozu = fadd reassoc nsz arcp contract afn <4 x float> %i.ozq, %i.ozt
  %i.ozv = fadd reassoc nsz arcp contract afn <4 x float> %i.oys, %i.oyn
  %i.ozw = fadd reassoc nsz arcp contract afn <4 x float> %i.ozv, %i.ozc
  %i.ozx = fadd reassoc nsz arcp contract afn <4 x float> %i.ozw, %i.ozh
  %i.ozy = fdiv reassoc nsz arcp contract afn <4 x float> %i.ozu, %i.ozx
  %i.ozz = fadd reassoc nsz arcp contract afn <4 x float> %i.ozy, %strided.vec3956
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ozz, <4 x ptr> align 4 %wide.gep3951, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3976 = add nuw i64 %index3949, 4     ; 2 uses
  %vec.ind.next3977 = add nuw nsw <4 x i64> %vec.ind3950, splat (i64 8)
  %i.paa = icmp eq i64 %index.next3976, %n.vec3944
  br i1 %i.paa, label %scalar.ph3941.preheader, label %vector.body3948, !llvm.loop !472

._crit_edge1140.i:                                ; preds = %scalar.ph3941, %.lr.ph1143.i
  %indvars.iv.next1288.i = add nuw nsw i64 %indvars.iv1287.i, 1 ; 2 uses
  %exitcond1147.not = icmp eq i64 %indvars.iv.next1288.i, %i.lzf
  %indvar.next3928 = add i64 %indvar3927, 1
  br i1 %exitcond1147.not, label %.lr.ph1151.i, label %.lr.ph1143.i

scalar.ph3941:                                    ; preds = %scalar.ph3941.preheader, %scalar.ph3941
  %indvars.iv1284.i = phi i64 [ %indvars.iv.next1285.i, %scalar.ph3941 ], [ %indvars.iv1284.i.ph, %scalar.ph3941.preheader ] ; 3 uses
  %i.pab = getelementptr inbounds nuw [4 x i8], ptr %i.owp, i64 %indvars.iv1284.i ; 5 uses
  %i.pac = getelementptr inbounds nuw [4 x i8], ptr %i.owt, i64 %indvars.iv1284.i ; 9 uses
  %i.pad = getelementptr inbounds i8, ptr %i.pac, i64 -4
  %i.pae = getelementptr inbounds nuw i8, ptr %i.pac, i64 4
  %i.paf = getelementptr inbounds nuw i8, ptr %i.pab, i64 544
  %i.pag = getelementptr inbounds i8, ptr %i.pab, i64 -544
  %i.pah = getelementptr inbounds i8, ptr %i.pab, i64 -4
  %i.pai = getelementptr inbounds nuw i8, ptr %i.pab, i64 4
  %i.paj = load float, ptr %i.paf, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pak = load float, ptr %i.pag, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pal = load float, ptr %i.pah, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pam = load float, ptr %i.pai, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pan = fsub reassoc nsz arcp contract afn float %i.paj, %i.pak
  %i.pao = fsub reassoc nsz arcp contract afn float %i.pam, %i.pal
  %i.pap = insertelement <2 x float> poison, float %i.pao, i64 0
  %i.paq = insertelement <2 x float> %i.pap, float %i.pan, i64 1
  %i.par = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.paq)
  %i.pas = fadd reassoc nsz arcp contract afn <2 x float> %i.par, splat (float 1.000000e+00)
  %i.pat = shufflevector <2 x float> %i.pas, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pau = getelementptr inbounds nuw i8, ptr %i.pac, i64 544
  %i.pav = getelementptr inbounds i8, ptr %i.pac, i64 -544
  %i.paw = load float, ptr %i.pae, align 4, !tbaa !22, !noalias !402
end_hunk_0
begin_hunk_1_@process:bb.a

bb.so:                                            ; preds = %bb.sn
  br label %.lr.ph.i585.1

.lr.ph.i585.1:                                    ; preds = %bb.so, %bb.sn, %.lr.ph.i585
  %i.qsq = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.sn ], [ %i.qsn, %bb.so ], [ 0.000000e+00, %.lr.ph.i585 ]
  store float %i.qsq, ptr %i.qsf, align 4, !tbaa !22
  %i.qsr = add nuw i64 %.017125.i, 1              ; 2 uses
  %i.qss = getelementptr inbounds nuw [4 x i8], ptr %i.qae, i64 %i.qsr
  %i.qst = load float, ptr %i.qss, align 4, !tbaa !22
  %i.qsu = getelementptr inbounds nuw [4 x i8], ptr %i.qag, i64 %i.qsr ; 2 uses
  %i.qsv = load float, ptr %i.qsu, align 4, !tbaa !22 ; 2 uses
  %i.qsw = fsub reassoc nsz arcp contract afn float %i.qst, %i.qsv ; 2 uses
  %i.qsx = fmul reassoc nsz arcp contract afn float %i.qsw, 1.000000e+01
  %i.qsy = fsub reassoc nsz arcp contract afn float 5.000000e+00, %i.qsx
  %i.qsz = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.qsy)
  %i.qta = fadd reassoc nsz arcp contract afn float %i.qsz, 1.000000e+00
  %i.qtb = fdiv reassoc nsz arcp contract afn float %i.qsw, %i.qta
  %i.qtc = fadd reassoc nsz arcp contract afn float %i.qtb, %i.qsv ; 3 uses
  %i.qtd = fcmp reassoc nsz arcp contract afn ult float %i.qtc, 0.000000e+00
  br i1 %i.qtd, label %bb.sr, label %bb.sp

bb.sp:                                            ; preds = %.lr.ph.i585.1
  %i.qte = fcmp reassoc nsz arcp contract afn ugt float %i.qtc, 1.000000e+00
  br i1 %i.qte, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sq, %bb.sp, %.lr.ph.i585.1
  %i.qtf = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.sp ], [ %i.qtc, %bb.sq ], [ 0.000000e+00, %.lr.ph.i585.1 ]
  store float %i.qtf, ptr %i.qsu, align 4, !tbaa !22
  %i.qtg = add nuw i64 %.017125.i, 2              ; 2 uses
  %exitcond.not.i586.1 = icmp eq i64 %i.qtg, %i.pze
  br i1 %exitcond.not.i586.1, label %._crit_edge.i587, label %.lr.ph.i585, !llvm.loop !541

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.preheader, %.lr.ph27.i
  %.016926.i = phi i64 [ %i.qtl, %.lr.ph27.i ], [ %.016926.i.ph, %.lr.ph27.i.preheader ] ; 3 uses
  %i.qth = getelementptr inbounds nuw i8, ptr %i.qag, i64 %.016926.i
  %i.qti = load float, ptr %i.qth, align 4, !tbaa !22
  %i.qtj = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %.016926.i
  %i.qtk = getelementptr inbounds nuw i8, ptr %i.qtj, i64 12
  store float %i.qti, ptr %i.qtk, align 4, !tbaa !22
  %i.qtl = add nuw i64 %.016926.i, 4              ; 2 uses
  %i.qtm = icmp ult i64 %i.qtl, %i.qrj
  br i1 %i.qtm, label %.lr.ph27.i, label %.thread12.i, !llvm.loop !542

bb.ss:                                            ; preds = %._crit_edge.i587
  %i.qtn = getelementptr inbounds nuw i8, ptr %.val453, i64 124
  %i.qto = load float, ptr %i.qtn, align 4, !tbaa !165
  %i.qtp = getelementptr inbounds nuw i8, ptr %.val453, i64 132
  %i.qtq = load float, ptr %i.qtp, align 4, !tbaa !543
  %i.qtr = getelementptr inbounds nuw i8, ptr %.val453, i64 140
  %i.qts = load float, ptr %i.qtr, align 4, !tbaa !544 ; 3 uses
  %.val187.i = load ptr, ptr %i.o, align 8, !tbaa !33 ; 2 uses
  %i.qtt = getelementptr i8, ptr %.val187.i, i64 1508
  %.val187.val.i = load i32, ptr %i.qtt, align 4, !tbaa !545
  %i.qtu = getelementptr i8, ptr %.val187.i, i64 1512
  %.val187.val188.i = load i32, ptr %i.qtu, align 8, !tbaa !546
  %i.qtv = tail call ptr @dt_alloc_aligned(i64 noundef %i.pze) #27 ; 16 uses
  %.not.i192.i = icmp ne ptr %i.qtv, null
  %or.cond.i193.i = and i1 %i.qqe, %.not.i192.i
  br i1 %or.cond.i193.i, label %.lr.ph6.i.i, label %_cs_precalc_gauss_idx.exit.i

.lr.ph6.i.i:                                      ; preds = %bb.ss
  %i.qtw = sdiv i32 %.val187.val188.i, 2          ; 2 uses
  %i.qtx = sdiv i32 %.val187.val.i, 2             ; 2 uses
  %i.qty = sub i32 %i.pzc, %i.qtw
  %i.qtz = sub i32 %i.pza, %i.qtx
  %i.qua = fsub reassoc nsz arcp contract afn float -5.000000e-01, %i.qts
  br i1 %i.aoz, label %.lr.ph.preheader.i194.i, label %_cs_precalc_gauss_idx.exit.thread.i

.lr.ph.preheader.i194.i:                          ; preds = %.lr.ph6.i.i
  %i.qub = fmul reassoc nsz arcp contract afn float %i.qts, %i.qts
  %i.quc = fmul reassoc nsz arcp contract afn float %i.qub, 8.000000e+00
  %i.qud = fadd reassoc nsz arcp contract afn float %i.quc, 1.000000e+00
  %i.que = tail call i32 @llvm.smin.i32(i32 %i.qtx, i32 %i.qtw)
  %i.quf = sitofp reassoc nsz arcp contract afn i32 %i.que to float
  %wide.trip.count11.i.i = zext nneg i32 %i.ayi to i64
  %i.qug = fmul reassoc nsz arcp contract afn float %i.qud, %i.qtq
  %i.quh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.quf
  br label %.lr.ph.i195.i

.lr.ph.i195.i:                                    ; preds = %._crit_edge.i201.i, %.lr.ph.preheader.i194.i
  %indvars.iv8.i.i = phi i64 [ 0, %.lr.ph.preheader.i194.i ], [ %indvars.iv.next9.i.i, %._crit_edge.i201.i ] ; 3 uses
  %i.qui = trunc nuw nsw i64 %indvars.iv8.i.i to i32 ; 3 uses
  %i.quj = add i32 %i.qty, %i.qui
  %i.quk = sitofp reassoc nsz arcp contract afn i32 %i.quj to float
  %i.qul = xor i32 %i.qui, -1
  %i.qum = add nsw i32 %i.ayi, %i.qul
  %i.qun = mul nuw nsw i64 %indvars.iv8.i.i, %i.apb
  %invariant.gep.i196.i = getelementptr inbounds nuw i8, ptr %i.qtv, i64 %i.qun
  br label %bb.st

._crit_edge.i201.i:                               ; preds = %bb.st
  %indvars.iv.next9.i.i = add nuw nsw i64 %indvars.iv8.i.i, 1 ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %indvars.iv.next9.i.i, %wide.trip.count11.i.i
  br i1 %exitcond12.not.i.i, label %_cs_precalc_gauss_idx.exit.thread.i, label %.lr.ph.i195.i

bb.st:                                            ; preds = %bb.st, %.lr.ph.i195.i
  %indvars.iv.i197.i = phi i64 [ 0, %.lr.ph.i195.i ], [ %indvars.iv.next.i199.i, %bb.st ] ; 3 uses
  %i.quo = trunc nuw nsw i64 %indvars.iv.i197.i to i32 ; 3 uses
  %i.qup = add i32 %i.qtz, %i.quo
  %i.quq = sitofp reassoc nsz arcp contract afn i32 %i.qup to float
  %i.qur = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.quk, float noundef %i.quq) #29
  %i.qus = fmul reassoc nsz arcp contract afn float %i.qur, %i.quh
  %i.qut = fadd reassoc nsz arcp contract afn float %i.qus, %i.qua ; 2 uses
  %i.quu = fcmp reassoc nsz arcp contract afn olt float %i.qut, 0.000000e+00
  %i.quv = select reassoc nsz arcp contract afn i1 %i.quu, float 0.000000e+00, float %i.qut ; 2 uses
  %i.quw = fmul reassoc nsz arcp contract afn float %i.quv, %i.quv
  %i.qux = fmul reassoc nsz arcp contract afn float %i.quw, %i.qug
  %i.quy = fadd reassoc nsz arcp contract afn float %i.qux, %i.qto
  %i.quz = xor i32 %i.quo, -1
  %i.qva = add nsw i32 %i.bo, %i.quz
  %i.qvb = tail call i32 @llvm.umin.i32(i32 %i.quo, i32 %i.qui)
  %..i.i600 = tail call i32 @llvm.smin.i32(i32 %i.qva, i32 %i.qvb)
  %i.qvc = tail call i32 @llvm.smin.i32(i32 %i.qum, i32 %..i.i600)
  %i.qvd = tail call i32 @llvm.smin.i32(i32 %i.qvc, i32 8)
  %i.qve = sitofp reassoc nsz arcp contract afn i32 %i.qvd to float
  %i.qvf = fmul reassoc nnan nsz arcp contract afn float %i.qve, 1.250000e+01
  %i.qvg = fmul reassoc nsz arcp contract afn float %i.qvf, %i.quy
  %i.qvh = fptosi float %i.qvg to i32
  %i.qvi = tail call i32 @llvm.smax.i32(i32 %i.qvh, i32 0)
  %i.qvj = tail call i32 @llvm.umin.i32(i32 %i.qvi, i32 255)
  %i.qvk = trunc nuw i32 %i.qvj to i8
  %gep.i198.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i196.i, i64 %indvars.iv.i197.i
  store i8 %i.qvk, ptr %gep.i198.i, align 1, !tbaa !169
  %indvars.iv.next.i199.i = add nuw nsw i64 %indvars.iv.i197.i, 1 ; 2 uses
  %exitcond.not.i200.i = icmp eq i64 %indvars.iv.next.i199.i, %i.apb
  br i1 %exitcond.not.i200.i, label %._crit_edge.i201.i, label %bb.st

_cs_precalc_gauss_idx.exit.i:                     ; preds = %bb.ss
  %.not185.i = icmp eq ptr %i.qtv, null
  br i1 %.not185.i, label %bb.ts, label %_cs_precalc_gauss_idx.exit.thread.i

_cs_precalc_gauss_idx.exit.thread.i:              ; preds = %._crit_edge.i201.i, %_cs_precalc_gauss_idx.exit.i, %.lr.ph6.i.i
  br i1 %.not183.i, label %.preheader18.i, label %.preheader19.i

.preheader19.i:                                   ; preds = %_cs_precalc_gauss_idx.exit.thread.i
  %i.qvl = shl i64 %i.pze, 2                      ; 4 uses
  %.not37.i588 = icmp eq i64 %i.qvl, 0
  br i1 %.not37.i588, label %.thread12.i, label %.lr.ph29.i.preheader

.lr.ph29.i.preheader:                             ; preds = %.preheader19.i
  %i.qvm = add i64 %i.qvl, -4                     ; 2 uses
  %i.qvn = lshr exact i64 %i.qvm, 2
  %i.qvo = add nuw nsw i64 %i.qvn, 1              ; 2 uses
  %min.iters.check1824 = icmp ult i64 %i.qvm, 28
  br i1 %min.iters.check1824, label %.lr.ph29.i.preheader4700, label %vector.memcheck1815

vector.memcheck1815:                              ; preds = %.lr.ph29.i.preheader
  %i.qvp = add i64 %i.qvl, -4                     ; 2 uses
  %i.qvq = lshr exact i64 %i.qvp, 2
  %i.qvr = shl i64 %i.qvp, 2
  %scevgep1817 = getelementptr i8, ptr %scevgep1816.a, i64 %i.qvr
  %scevgep1818 = getelementptr i8, ptr %i.qtv, i64 1
  %scevgep1819 = getelementptr i8, ptr %scevgep1818, i64 %i.qvq
  %bound01820 = icmp ult ptr %scevgep1776.a, %scevgep1819
  %bound11821 = icmp ult ptr %i.qtv, %scevgep1817
  %found.conflict1822 = and i1 %bound01820, %bound11821
  br i1 %found.conflict1822, label %.lr.ph29.i.preheader4700, label %vector.ph1825

vector.ph1825:                                    ; preds = %vector.memcheck1815
  %n.vec1826 = and i64 %i.qvo, 9223372036854775800 ; 3 uses
  %i.qvs = shl i64 %n.vec1826, 2
  br label %vector.body1827

vector.body1827:                                  ; preds = %vector.body1827, %vector.ph1825
  %index1828 = phi i64 [ 0, %vector.ph1825 ], [ %index.next1833, %vector.body1827 ] ; 2 uses
  %vec.ind1829 = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph1825 ], [ %vec.ind.next1834, %vector.body1827 ] ; 2 uses
  %i.qvt = getelementptr inbounds nuw i8, ptr %i.qtv, i64 %index1828
  %wide.load1830 = load <8 x i8>, ptr %i.qvt, align 1, !tbaa !169, !alias.scope !547
  %i.qvu = uitofp <8 x i8> %wide.load1830 to <8 x float>
  %i.qvv = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.qvu, splat (float f0x3B808081)
  %wide.gep1831 = getelementptr inbounds nuw [4 x i8], ptr %i.aou, <8 x i64> %vec.ind1829
  %wide.gep1832 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1831, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qvv, <8 x ptr> align 4 %wide.gep1832, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !550, !noalias !547
  %index.next1833 = add nuw i64 %index1828, 8     ; 2 uses
  %vec.ind.next1834 = add nuw <8 x i64> %vec.ind1829, splat (i64 32)
  %i.qvw = icmp eq i64 %index.next1833, %n.vec1826
  br i1 %i.qvw, label %middle.block1835, label %vector.body1827, !llvm.loop !552

middle.block1835:                                 ; preds = %vector.body1827
  %cmp.n1836 = icmp eq i64 %i.qvo, %n.vec1826
  br i1 %cmp.n1836, label %.thread12.i, label %.lr.ph29.i.preheader4700

.lr.ph29.i.preheader4700:                         ; preds = %vector.memcheck1815, %.lr.ph29.i.preheader, %middle.block1835
  %.016828.i.ph = phi i64 [ 0, %vector.memcheck1815 ], [ 0, %.lr.ph29.i.preheader ], [ %i.qvs, %middle.block1835 ]
  br label %.lr.ph29.i

.preheader18.i:                                   ; preds = %_cs_precalc_gauss_idx.exit.thread.i
  %i.qvx = getelementptr inbounds nuw i8, ptr %.val453, i64 136
  %i.qvy = load i32, ptr %i.qvx, align 8, !tbaa !553 ; 2 uses
  %i.qvz = icmp sgt i32 %i.qvy, 0
  br i1 %i.qvz, label %.lr.ph31.i, label %.preheader.i589

.lr.ph31.i:                                       ; preds = %.preheader18.i
  %i.qwa = getelementptr inbounds nuw i8, ptr %i.pzf, i64 216
  %i.qwb = load ptr, ptr %i.qwa, align 8, !tbaa !554 ; 2 uses
  %wide.trip.count290.i.i = zext nneg i32 %i.ayi to i64 ; 2 uses
  %brmerge.not = select i1 %i.qqe, i1 %i.aoz, i1 false
  br i1 %brmerge.not, label %.preheader275.lr.ph.i.i, label %.preheader.i589

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.preheader4700, %.lr.ph29.i
  %.016828.i = phi i64 [ %i.qwj, %.lr.ph29.i ], [ %.016828.i.ph, %.lr.ph29.i.preheader4700 ] ; 3 uses
  %i.qwc = lshr exact i64 %.016828.i, 2
  %i.qwd = getelementptr inbounds nuw i8, ptr %i.qtv, i64 %i.qwc
  %i.qwe = load i8, ptr %i.qwd, align 1, !tbaa !169
  %i.qwf = uitofp reassoc nsz arcp contract afn i8 %i.qwe to float
  %i.qwg = fmul reassoc nnan nsz arcp contract afn float %i.qwf, f0x3B808081
  %i.qwh = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %.016828.i
  %i.qwi = getelementptr inbounds nuw i8, ptr %i.qwh, i64 12
  store float %i.qwg, ptr %i.qwi, align 4, !tbaa !22
  %i.qwj = add nuw i64 %.016828.i, 4              ; 2 uses
  %i.qwk = icmp ult i64 %i.qwj, %i.qvl
  br i1 %i.qwk, label %.lr.ph29.i, label %.thread12.i, !llvm.loop !556

.preheader.i589:                                  ; preds = %_blur_mul.exit.i.loopexit, %.lr.ph31.i, %.preheader18.i
  br i1 %.not35.i584, label %.thread12.i, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %.preheader.i589
  %min.iters.check1794 = icmp ult i64 %i.pze, 16
  br i1 %min.iters.check1794, label %.lr.ph34.i.preheader4699, label %vector.scevcheck1773

vector.scevcheck1773:                             ; preds = %.lr.ph34.i.preheader
  %i.qwl = add nsw i64 %i.pze, -1                 ; 2 uses
  %mul.result = shl i64 %i.qwl, 4                 ; 4 uses
  %mul.overflow = icmp ugt i64 %i.qwl, 1152921504606846975
  %i.qwm = getelementptr i8, ptr %i.aou, i64 %mul.result
  %i.qwn = icmp ult ptr %i.qwm, %i.aou
  %i.qwo = getelementptr i8, ptr %scevgep1774, i64 %mul.result
  %i.qwp = icmp ult ptr %i.qwo, %scevgep1774
  %i.qwq = getelementptr i8, ptr %scevgep1775.a, i64 %mul.result
  %i.qwr = icmp ult ptr %i.qwq, %scevgep1775.a
  %i.qws = or i1 %i.qwr, %mul.overflow
  %i.qwt = getelementptr i8, ptr %scevgep1776.a, i64 %mul.result
  %i.qwu = icmp ult ptr %i.qwt, %scevgep1776.a
  %i.qwv = or i1 %i.qwp, %i.qwn
  %i.qww = or i1 %i.qwv, %i.qws
  %i.qwx = or i1 %i.qwu, %i.qww
  br i1 %i.qwx, label %.lr.ph34.i.preheader4699, label %vector.memcheck1777

vector.memcheck1777:                              ; preds = %vector.scevcheck1773
  %i.qwy = mul i64 %i.auu, %i.pzd                 ; 3 uses
  %scevgep1778.a = getelementptr i8, ptr %i.qag, i64 %i.qwy
  %i.qwz = mul i64 %i.auv, %i.pzd
  %scevgep1779 = getelementptr i8, ptr %i.aou, i64 %i.qwz ; 3 uses
  %scevgep1780 = getelementptr i8, ptr %i.qaf, i64 %i.qwy
  %scevgep1781 = getelementptr i8, ptr %i.qad, i64 %i.qwy
  %bound01782.a = icmp ult ptr %i.qag, %scevgep1779
  %bound11783.a = icmp ult ptr %i.aou, %scevgep1778.a
  %found.conflict1784.a = and i1 %bound01782.a, %bound11783.a
  %bound01785 = icmp ult ptr %i.qaf, %scevgep1779
  %bound11786 = icmp ult ptr %i.aou, %scevgep1780
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %conflict.rdx1788 = or i1 %found.conflict1784.a, %found.conflict1787
  %bound01789 = icmp ult ptr %i.qad, %scevgep1779
  %bound11790 = icmp ult ptr %i.aou, %scevgep1781
  %found.conflict1791 = and i1 %bound01789, %bound11790
  %conflict.rdx1792 = or i1 %conflict.rdx1788, %found.conflict1791
  br i1 %conflict.rdx1792, label %.lr.ph34.i.preheader4699, label %vector.ph1795

vector.ph1795:                                    ; preds = %vector.memcheck1777
  %n.vec1796 = and i64 %i.pze, 2305843009213693944 ; 3 uses
  br label %vector.body1797

vector.body1797:                                  ; preds = %vector.body1797, %vector.ph1795
  %index1798 = phi i64 [ 0, %vector.ph1795 ], [ %index.next1810, %vector.body1797 ] ; 4 uses
  %vec.ind1799 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1795 ], [ %vec.ind.next1811, %vector.body1797 ] ; 2 uses
  %i.qxa = getelementptr inbounds nuw [4 x i8], ptr %i.qag, i64 %index1798
  %wide.load1800 = load <8 x float>, ptr %i.qxa, align 32, !tbaa !22, !alias.scope !557, !noalias !560 ; 3 uses
  %i.qxb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1800, zeroinitializer ; 10 uses
  %i.qxc = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load1800, splat (float 1.000000e+00)
  %i.qxd = select reassoc nsz arcp contract afn <8 x i1> %i.qxc, <8 x float> %wide.load1800, <8 x float> splat (float 1.000000e+00)
  %i.qxe = getelementptr [4 x i8], ptr %i.qaf, i64 %index1798
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.qxe, <8 x i1> %i.qxb, <8 x float> poison), !tbaa !22, !alias.scope !562, !noalias !560
  %i.qxf = getelementptr [4 x i8], ptr %i.qad, i64 %index1798
  %wide.masked.load1801 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.qxf, <8 x i1> %i.qxb, <8 x float> poison), !tbaa !22, !alias.scope !564, !noalias !560 ; 4 uses
  %i.qxg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %wide.masked.load1801
  %i.qxh = fmul reassoc nsz arcp contract afn <8 x float> %i.qxg, %i.qxd
  %i.qxi = fadd reassoc nsz arcp contract afn <8 x float> %i.qxh, %wide.masked.load1801 ; 4 uses
  %i.qxj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load1801, splat (float 1.000000e-03)
  %i.qxk = select reassoc nsz arcp contract afn <8 x i1> %i.qxj, <8 x float> %wide.masked.load1801, <8 x float> splat (float 1.000000e-03) ; 4 uses
  %i.qxl = shl <8 x i64> %vec.ind1799, splat (i64 4)
  %wide.gep1802 = getelementptr inbounds nuw i8, ptr %i.aou, <8 x i64> %i.qxl ; 5 uses
  %wide.masked.gather1803 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1802, <8 x i1> %i.qxb, <8 x float> poison), !tbaa !22, !alias.scope !560
  %i.qxm = fmul reassoc nsz arcp contract afn <8 x float> %i.qxi, %wide.masked.gather1803
  %i.qxn = fdiv reassoc nsz arcp contract afn <8 x float> %i.qxm, %i.qxk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qxn, <8 x ptr> align 4 %wide.gep1802, <8 x i1> %i.qxb), !tbaa !22, !alias.scope !560
  %wide.gep1804 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1802, i64 4 ; 2 uses
  %wide.masked.gather1805 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1804, <8 x i1> %i.qxb, <8 x float> poison), !tbaa !22, !alias.scope !560
  %i.qxo = fmul reassoc nsz arcp contract afn <8 x float> %i.qxi, %wide.masked.gather1805
  %i.qxp = fdiv reassoc nsz arcp contract afn <8 x float> %i.qxo, %i.qxk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qxp, <8 x ptr> align 4 %wide.gep1804, <8 x i1> %i.qxb), !tbaa !22, !alias.scope !560
  %wide.gep1806 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1802, i64 8 ; 2 uses
  %wide.masked.gather1807 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1806, <8 x i1> %i.qxb, <8 x float> poison), !tbaa !22, !alias.scope !560
  %i.qxq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1807, %i.qxi
  %i.qxr = fdiv reassoc nsz arcp contract afn <8 x float> %i.qxq, %i.qxk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qxr, <8 x ptr> align 4 %wide.gep1806, <8 x i1> %i.qxb), !tbaa !22, !alias.scope !560
  %wide.gep1808 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1802, i64 12 ; 2 uses
  %wide.masked.gather1809 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1808, <8 x i1> %i.qxb, <8 x float> poison), !tbaa !22, !alias.scope !560
  %i.qxs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1809, %i.qxi
  %i.qxt = fdiv reassoc nsz arcp contract afn <8 x float> %i.qxs, %i.qxk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qxt, <8 x ptr> align 4 %wide.gep1808, <8 x i1> %i.qxb), !tbaa !22, !alias.scope !560
  %index.next1810 = add nuw i64 %index1798, 8     ; 2 uses
  %vec.ind.next1811 = add nuw <8 x i64> %vec.ind1799, splat (i64 8)
  %i.qxu = icmp eq i64 %index.next1810, %n.vec1796
  br i1 %i.qxu, label %middle.block1812, label %vector.body1797, !llvm.loop !566

middle.block1812:                                 ; preds = %vector.body1797
  %cmp.n1813 = icmp eq i64 %i.pze, %n.vec1796
  br i1 %cmp.n1813, label %.thread12.i, label %.lr.ph34.i.preheader4699

.lr.ph34.i.preheader4699:                         ; preds = %vector.memcheck1777, %vector.scevcheck1773, %.lr.ph34.i.preheader, %middle.block1812
  %.016633.i.ph = phi i64 [ 0, %vector.memcheck1777 ], [ 0, %vector.scevcheck1773 ], [ 0, %.lr.ph34.i.preheader ], [ %n.vec1796, %middle.block1812 ] ; 7 uses
  %.neg4885 = or disjoint i64 %.016633.i.ph, 1
  %xtraiter4873.a = and i64 %i.pze, 1
  %lcmp.mod4874.not.a = icmp eq i64 %xtraiter4873.a, 0
  br i1 %lcmp.mod4874.not.a, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol

.lr.ph34.i.prol:                                  ; preds = %.lr.ph34.i.preheader4699
  %i.qxv = getelementptr inbounds nuw [4 x i8], ptr %i.qag, i64 %.016633.i.ph
  %i.qxw = load float, ptr %i.qxv, align 32, !tbaa !22 ; 3 uses
  %i.qxx = fcmp reassoc nsz arcp contract afn ogt float %i.qxw, 0.000000e+00
  br i1 %i.qxx, label %.loopexit.loopexit.i591.prol, label %.loopexit.i590.prol

.loopexit.loopexit.i591.prol:                     ; preds = %.lr.ph34.i.prol
  %.inv.i.prol = fcmp reassoc nsz arcp contract afn ole float %i.qxw, 1.000000e+00
  %i.qxy = select reassoc nsz arcp contract afn i1 %.inv.i.prol, float %i.qxw, float 1.000000e+00
  %i.qxz = getelementptr inbounds nuw [4 x i8], ptr %i.qaf, i64 %.016633.i.ph
  %i.qya = load float, ptr %i.qxz, align 32, !tbaa !22
  %i.qyb = getelementptr inbounds nuw [4 x i8], ptr %i.qad, i64 %.016633.i.ph
  %i.qyc = load float, ptr %i.qyb, align 32, !tbaa !22 ; 4 uses
  %i.qyd = fsub reassoc nsz arcp contract afn float %i.qya, %i.qyc
  %i.qye = fmul reassoc nsz arcp contract afn float %i.qyd, %i.qxy
  %i.qyf = fadd reassoc nsz arcp contract afn float %i.qye, %i.qyc
  %i.qyg = fcmp reassoc nsz arcp contract afn ogt float %i.qyc, 1.000000e-03
  %i.qyh = select reassoc nsz arcp contract afn i1 %i.qyg, float %i.qyc, float 1.000000e-03
  %.idx.i592.prol = shl i64 %.016633.i.ph, 4
  %i.qyi = getelementptr inbounds nuw i8, ptr %i.aou, i64 %.idx.i592.prol ; 2 uses
  %i.qyj = load <4 x float>, ptr %i.qyi, align 4, !tbaa !22
  %i.qyk = insertelement <4 x float> poison, float %i.qyf, i64 0
  %i.qyl = shufflevector <4 x float> %i.qyk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qym = fmul reassoc nsz arcp contract afn <4 x float> %i.qyl, %i.qyj
  %i.qyn = insertelement <4 x float> poison, float %i.qyh, i64 0
  %i.qyo = shufflevector <4 x float> %i.qyn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qyp = fdiv reassoc nsz arcp contract afn <4 x float> %i.qym, %i.qyo
  store <4 x float> %i.qyp, ptr %i.qyi, align 4, !tbaa !22
  br label %.loopexit.i590.prol

.loopexit.i590.prol:                              ; preds = %.loopexit.loopexit.i591.prol, %.lr.ph34.i.prol
  %i.qyq = or disjoint i64 %.016633.i.ph, 1
  br label %.lr.ph34.i.prol.loopexit

.lr.ph34.i.prol.loopexit:                         ; preds = %.loopexit.i590.prol, %.lr.ph34.i.preheader4699
  %.016633.i.unr = phi i64 [ %.016633.i.ph, %.lr.ph34.i.preheader4699 ], [ %i.qyq, %.loopexit.i590.prol ]
  %i.qyr = icmp eq i64 %i.pze, %.neg4885
  br i1 %i.qyr, label %.thread12.i, label %.lr.ph34.i

.preheader275.lr.ph.i.i:                          ; preds = %.lr.ph31.i, %_blur_mul.exit.i.loopexit
  %.016730.i = phi i32 [ %i.ryj, %_blur_mul.exit.i.loopexit ], [ 0, %.lr.ph31.i ]
  br label %.preheader275.i.i

.preheader275.i.i:                                ; preds = %.preheader275.lr.ph.i.i, %._crit_edge.i205.i
  %indvars.iv287.i.i = phi i64 [ %indvars.iv.next288.i.i, %._crit_edge.i205.i ], [ 0, %.preheader275.lr.ph.i.i ] ; 5 uses
  %i.qys = mul nuw nsw i64 %indvars.iv287.i.i, %i.apa
  %i.qyt = trunc nuw nsw i64 %indvars.iv287.i.i to i32
  br label %bb.su

._crit_edge.i205.i:                               ; preds = %bb.tf
  %indvars.iv.next288.i.i = add nuw nsw i64 %indvars.iv287.i.i, 1 ; 2 uses
  %exitcond291.not.i.i = icmp eq i64 %indvars.iv.next288.i.i, %wide.trip.count290.i.i
  br i1 %exitcond291.not.i.i, label %.preheader272.i.i, label %.preheader275.i.i

bb.su:                                            ; preds = %bb.tf, %.preheader275.i.i
  %indvars.iv.i203.i = phi i64 [ 0, %.preheader275.i.i ], [ %indvars.iv.next.i204.i, %bb.tf ] ; 5 uses
  %i.qyu = add nuw nsw i64 %indvars.iv.i203.i, %i.qys ; 5 uses
  %i.qyv = getelementptr inbounds nuw [4 x i8], ptr %i.qag, i64 %i.qyu
  %i.qyw = load float, ptr %i.qyv, align 4, !tbaa !22
  %i.qyx = fcmp reassoc nsz arcp contract afn ogt float %i.qyw, 0.000000e+00
  br i1 %i.qyx, label %bb.sv, label %bb.tf

bb.sv:                                            ; preds = %bb.su
  %i.qyy = getelementptr inbounds nuw i8, ptr %i.qtv, i64 %i.qyu
  %i.qyz = load i8, ptr %i.qyy, align 1, !tbaa !169 ; 2 uses
  %i.qza = zext i8 %i.qyz to i64
  %.idx.i.i597 = shl nuw nsw i64 %i.qza, 7
  %i.qzb = getelementptr inbounds nuw i8, ptr %i.qwb, i64 %.idx.i.i597 ; 13 uses
  %i.qzc = icmp ult i8 %i.qyz, 66                 ; 4 uses
  %.neg.i206.i.neg = select i1 %i.qzc, i32 2, i32 4
  %.neg.i206.i = select i1 %i.qzc, i32 -2, i32 -4 ; 3 uses
  %i.qzd = select i1 %i.qzc, i32 2, i32 4         ; 5 uses
  %i.qze = zext nneg i32 %i.qzd to i64            ; 2 uses
  %.not.i207.i = icmp samesign uge i64 %indvars.iv.i203.i, %i.qze
  %.not263.i.i = icmp samesign uge i64 %indvars.iv287.i.i, %i.qze
  %or.cond.not272.i.i = select i1 %.not.i207.i, i1 %.not263.i.i, i1 false
  %i.qzf = sub nsw i32 %i.bo, %i.qzd
  %i.qzg = sext i32 %i.qzf to i64
  %i.qzh = icmp slt i64 %indvars.iv.i203.i, %i.qzg
  %or.cond267.i.i = select i1 %or.cond.not272.i.i, i1 %i.qzh, i1 false
  %i.qzi = sub nsw i32 %i.ayi, %i.qzd
  %i.qzj = sext i32 %i.qzi to i64
  %i.qzk = icmp slt i64 %indvars.iv287.i.i, %i.qzj
  %or.cond269.i.i = select i1 %or.cond267.i.i, i1 %i.qzk, i1 false
  br i1 %or.cond269.i.i, label %bb.sw, label %.preheader273.preheader.i.i

.preheader273.preheader.i.i:                      ; preds = %bb.sv
  %i.qzl = trunc nuw nsw i64 %indvars.iv.i203.i to i32 ; 3 uses
  %i.qzm = add nsw i32 %.neg.i206.i, %i.qzl       ; 2 uses
  %or.cond271.i.i.prol = icmp ult i32 %i.qzm, %i.bo
  %i.qzn = zext nneg i32 %i.qzm to i64
  %i.qzo = or disjoint i32 %.neg.i206.i, 1
  br label %.preheader273.i.i

bb.sw:                                            ; preds = %bb.sv
  %i.qzp = getelementptr inbounds nuw [4 x i8], ptr %i.qaf, i64 %i.qyu ; 53 uses
  br i1 %i.qzc, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  %i.qzq = getelementptr inbounds nuw i8, ptr %i.qzb, i64 28
  %i.qzr = load float, ptr %i.qzq, align 4, !tbaa !22
  %i.qzs = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.atq
  %i.qzt = load float, ptr %i.qzs, align 4, !tbaa !22
  %i.qzu = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.ats
  %i.qzv = load float, ptr %i.qzu, align 4, !tbaa !22
  %i.qzw = fadd reassoc nsz arcp contract afn float %i.qzv, %i.qzt
  %i.qzx = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.atu
  %i.qzy = load float, ptr %i.qzx, align 4, !tbaa !22
  %i.qzz = fadd reassoc nsz arcp contract afn float %i.qzw, %i.qzy
  %i.raa = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.aue
  %i.rab = load float, ptr %i.raa, align 4, !tbaa !22
  %i.rac = fadd reassoc nsz arcp contract afn float %i.qzz, %i.rab
  %i.rad = getelementptr [4 x i8], ptr %i.qzp, i64 %i.apa ; 5 uses
  %i.rae = getelementptr i8, ptr %i.rad, i64 -8
  %i.raf = load float, ptr %i.rae, align 4, !tbaa !22
  %i.rag = fadd reassoc nsz arcp contract afn float %i.rac, %i.raf
  %i.rah = getelementptr i8, ptr %i.rad, i64 8
  %i.rai = load float, ptr %i.rah, align 4, !tbaa !22
  %i.raj = fadd reassoc nsz arcp contract afn float %i.rag, %i.rai
  %i.rak = getelementptr [4 x i8], ptr %i.qzp, i64 %i.art ; 3 uses
  %i.ral = getelementptr i8, ptr %i.rak, i64 -4
  %i.ram = load float, ptr %i.ral, align 4, !tbaa !22
  %i.ran = fadd reassoc nsz arcp contract afn float %i.raj, %i.ram
  %i.rao = getelementptr i8, ptr %i.rak, i64 4
  %i.rap = load float, ptr %i.rao, align 4, !tbaa !22
  %i.raq = fadd reassoc nsz arcp contract afn float %i.ran, %i.rap
  %i.rar = fmul reassoc nsz arcp contract afn float %i.raq, %i.qzr
  %i.ras = getelementptr inbounds nuw i8, ptr %i.qzb, i64 8
  %i.rat = load float, ptr %i.ras, align 4, !tbaa !22
  %i.rau = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.auf
  %i.rav = load float, ptr %i.rau, align 4, !tbaa !22
  %i.raw = getelementptr inbounds i8, ptr %i.qzp, i64 -8
  %i.rax = load float, ptr %i.raw, align 4, !tbaa !22
  %i.ray = fadd reassoc nsz arcp contract afn float %i.rax, %i.rav
  %i.raz = getelementptr inbounds nuw i8, ptr %i.qzp, i64 8
  %i.rba = load float, ptr %i.raz, align 4, !tbaa !22
  %i.rbb = fadd reassoc nsz arcp contract afn float %i.ray, %i.rba
  %i.rbc = load float, ptr %i.rak, align 4, !tbaa !22
  %i.rbd = fadd reassoc nsz arcp contract afn float %i.rbb, %i.rbc
  %i.rbe = fmul reassoc nsz arcp contract afn float %i.rbd, %i.rat
  %i.rbf = fadd reassoc nsz arcp contract afn float %i.rbe, %i.rar
  %i.rbg = getelementptr inbounds nuw i8, ptr %i.qzb, i64 24
  %i.rbh = load float, ptr %i.rbg, align 4, !tbaa !22
  %i.rbi = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.auh
  %i.rbj = load float, ptr %i.rbi, align 4, !tbaa !22
  %i.rbk = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.auj
  %i.rbl = load float, ptr %i.rbk, align 4, !tbaa !22
  %i.rbm = fadd reassoc nsz arcp contract afn float %i.rbl, %i.rbj
  %i.rbn = getelementptr i8, ptr %i.rad, i64 -4
  %i.rbo = load float, ptr %i.rbn, align 4, !tbaa !22
  %i.rbp = fadd reassoc nsz arcp contract afn float %i.rbm, %i.rbo
  %i.rbq = getelementptr i8, ptr %i.rad, i64 4
  %i.rbr = load float, ptr %i.rbq, align 4, !tbaa !22
  %i.rbs = fadd reassoc nsz arcp contract afn float %i.rbp, %i.rbr
  %i.rbt = fmul reassoc nsz arcp contract afn float %i.rbs, %i.rbh
  %i.rbu = fadd reassoc nsz arcp contract afn float %i.rbf, %i.rbt
  %i.rbv = getelementptr inbounds nuw i8, ptr %i.qzb, i64 4
  %i.rbw = load float, ptr %i.rbv, align 4, !tbaa !22
  %i.rbx = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.auk
  %i.rby = load float, ptr %i.rbx, align 4, !tbaa !22
  %i.rbz = getelementptr inbounds i8, ptr %i.qzp, i64 -4
  %i.rca = load float, ptr %i.rbz, align 4, !tbaa !22
  %i.rcb = fadd reassoc nsz arcp contract afn float %i.rca, %i.rby
  %i.rcc = getelementptr inbounds nuw i8, ptr %i.qzp, i64 4
  %i.rcd = load float, ptr %i.rcc, align 4, !tbaa !22
  %i.rce = fadd reassoc nsz arcp contract afn float %i.rcb, %i.rcd
  %i.rcf = load float, ptr %i.rad, align 4, !tbaa !22
  %i.rcg = fadd reassoc nsz arcp contract afn float %i.rce, %i.rcf
  %i.rch = fmul reassoc nsz arcp contract afn float %i.rcg, %i.rbw
  %i.rci = fadd reassoc nsz arcp contract afn float %i.rbu, %i.rch
  br label %.loopexit274.sink.split.i.i

bb.sy:                                            ; preds = %bb.sw
  %i.rcj = getelementptr inbounds nuw i8, ptr %i.qzb, i64 56
  %i.rck = load float, ptr %i.rcj, align 4, !tbaa !22
  %i.rcl = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.ate
  %i.rcm = load float, ptr %i.rcl, align 4, !tbaa !22
  %i.rcn = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.ary
  %i.rco = load float, ptr %i.rcn, align 4, !tbaa !22
  %i.rcp = fadd reassoc nsz arcp contract afn float %i.rco, %i.rcm
  %i.rcq = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asb
  %i.rcr = load float, ptr %i.rcq, align 4, !tbaa !22
  %i.rcs = fadd reassoc nsz arcp contract afn float %i.rcp, %i.rcr
  %i.rct = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asd
  %i.rcu = load float, ptr %i.rct, align 4, !tbaa !22
  %i.rcv = fadd reassoc nsz arcp contract afn float %i.rcs, %i.rcu
  %i.rcw = getelementptr [4 x i8], ptr %i.qzp, i64 %i.art ; 5 uses
  %i.rcx = getelementptr i8, ptr %i.rcw, i64 -16
  %i.rcy = load float, ptr %i.rcx, align 4, !tbaa !22
  %i.rcz = fadd reassoc nsz arcp contract afn float %i.rcv, %i.rcy
  %i.rda = getelementptr i8, ptr %i.rcw, i64 16
  %i.rdb = load float, ptr %i.rda, align 4, !tbaa !22
  %i.rdc = fadd reassoc nsz arcp contract afn float %i.rcz, %i.rdb
  %i.rdd = getelementptr [4 x i8], ptr %i.qzp, i64 %i.ase ; 5 uses
  %i.rde = getelementptr i8, ptr %i.rdd, i64 -8
  %i.rdf = load float, ptr %i.rde, align 4, !tbaa !22
  %i.rdg = fadd reassoc nsz arcp contract afn float %i.rdc, %i.rdf
  %i.rdh = getelementptr i8, ptr %i.rdd, i64 8
  %i.rdi = load float, ptr %i.rdh, align 4, !tbaa !22
  %i.rdj = fadd reassoc nsz arcp contract afn float %i.rdg, %i.rdi
  %i.rdk = fmul reassoc nsz arcp contract afn float %i.rdj, %i.rck
  %i.rdl = getelementptr inbounds nuw i8, ptr %i.qzb, i64 36
  %i.rdm = load float, ptr %i.rdl, align 4, !tbaa !22
  %i.rdn = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asg
  %i.rdo = load float, ptr %i.rdn, align 4, !tbaa !22
  %i.rdp = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asi
  %i.rdq = load float, ptr %i.rdp, align 4, !tbaa !22
  %i.rdr = fadd reassoc nsz arcp contract afn float %i.rdq, %i.rdo
  %i.rds = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asl
  %i.rdt = load float, ptr %i.rds, align 4, !tbaa !22
  %i.rdu = fadd reassoc nsz arcp contract afn float %i.rdr, %i.rdt
  %i.rdv = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asn
  %i.rdw = load float, ptr %i.rdv, align 4, !tbaa !22
  %i.rdx = fadd reassoc nsz arcp contract afn float %i.rdu, %i.rdw
  %i.rdy = getelementptr [4 x i8], ptr %i.qzp, i64 %i.apa ; 7 uses
  %i.rdz = getelementptr i8, ptr %i.rdy, i64 -16
  %i.rea = load float, ptr %i.rdz, align 4, !tbaa !22
  %i.reb = fadd reassoc nsz arcp contract afn float %i.rdx, %i.rea
  %i.rec = getelementptr i8, ptr %i.rdy, i64 16
  %i.red = load float, ptr %i.rec, align 4, !tbaa !22
  %i.ree = fadd reassoc nsz arcp contract afn float %i.reb, %i.red
  %i.ref = getelementptr i8, ptr %i.rdd, i64 -4
  %i.reg = load float, ptr %i.ref, align 4, !tbaa !22
  %i.reh = fadd reassoc nsz arcp contract afn float %i.ree, %i.reg
  %i.rei = getelementptr i8, ptr %i.rdd, i64 4
  %i.rej = load float, ptr %i.rei, align 4, !tbaa !22
  %i.rek = fadd reassoc nsz arcp contract afn float %i.reh, %i.rej
  %i.rel = fmul reassoc nsz arcp contract afn float %i.rek, %i.rdm
  %i.rem = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.axw
  %i.ren = load float, ptr %i.rem, align 4, !tbaa !22
  %i.reo = getelementptr inbounds i8, ptr %i.qzp, i64 -16
  %i.rep = load float, ptr %i.rdd, align 4, !tbaa !22
  %i.req = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.axx
  %i.rer = load float, ptr %i.req, align 4, !tbaa !22
  %i.res = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asp
  %i.ret = load float, ptr %i.res, align 4, !tbaa !22
  %i.reu = getelementptr [4 x i8], ptr %i.qzp, i64 %i.asq ; 3 uses
  %i.rev = getelementptr i8, ptr %i.reu, i64 -12
  %i.rew = getelementptr i8, ptr %i.reu, i64 12
  %i.rex = load float, ptr %i.rew, align 4, !tbaa !22
  %i.rey = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.ass
  %i.rez = load float, ptr %i.rey, align 4, !tbaa !22
  %i.rfa = getelementptr inbounds [4 x i8], ptr %i.qzp, i64 %i.asu
  %i.rfb = load float, ptr %i.rfa, align 4, !tbaa !22
end_hunk_1
