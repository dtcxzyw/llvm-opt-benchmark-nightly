Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@amaze_demosaic:bb.a
  %i.gde = load float, ptr %i.gdd, align 4, !tbaa !322
  %i.gdf = fadd reassoc nsz arcp contract afn float %i.gde, %i.gdc
  %i.gdg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next4276
  %i.gdh = load float, ptr %i.gdg, align 4, !tbaa !322
  %i.gdi = fadd reassoc nsz arcp contract afn float %i.gdf, %i.gdh
  %i.gdj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.gbi
  %i.gdk = load float, ptr %i.gdj, align 4, !tbaa !322
  %i.gdl = fadd reassoc nsz arcp contract afn float %i.gdi, %i.gdk
  %i.gdm = getelementptr i8, ptr %i.gcd, i64 -1284
  %i.gdn = load float, ptr %i.gdm, align 4, !tbaa !322
  %i.gdo = getelementptr i8, ptr %i.gcd, i64 -1276
  %i.gdp = load float, ptr %i.gdo, align 4, !tbaa !322
  %i.gdq = fadd reassoc nsz arcp contract afn float %i.gdp, %i.gdn
  %i.gdr = getelementptr i8, ptr %i.gcd, i64 -648
  %i.gds = load float, ptr %i.gdr, align 4, !tbaa !322
  %i.gdt = fadd reassoc nsz arcp contract afn float %i.gdq, %i.gds
  %i.gdu = getelementptr i8, ptr %i.gcd, i64 -632
  %i.gdv = load float, ptr %i.gdu, align 4, !tbaa !322
  %i.gdw = fadd reassoc nsz arcp contract afn float %i.gdt, %i.gdv
  %i.gdx = getelementptr inbounds nuw i8, ptr %i.gcd, i64 632
  %i.gdy = load float, ptr %i.gdx, align 4, !tbaa !322
  %i.gdz = fadd reassoc nsz arcp contract afn float %i.gdw, %i.gdy
  %i.gea = getelementptr inbounds nuw i8, ptr %i.gcd, i64 648
  %i.geb = load float, ptr %i.gea, align 4, !tbaa !322
  %i.gec = fadd reassoc nsz arcp contract afn float %i.gdz, %i.geb
  %i.ged = getelementptr inbounds nuw i8, ptr %i.gcd, i64 1276
  %i.gee = load float, ptr %i.ged, align 4, !tbaa !322
  %i.gef = fadd reassoc nsz arcp contract afn float %i.gec, %i.gee
  %i.geg = getelementptr inbounds nuw i8, ptr %i.gcd, i64 1284
  %i.geh = load float, ptr %i.geg, align 4, !tbaa !322
  %i.gei = fadd reassoc nsz arcp contract afn float %i.gef, %i.geh
  %i.gej = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.gbn
  %i.gek = load float, ptr %i.gej, align 4, !tbaa !322
  %i.gel = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.gbq
  %i.gem = load float, ptr %i.gel, align 4, !tbaa !322
  %i.gen = fadd reassoc nsz arcp contract afn float %i.gem, %i.gek
  %i.geo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.gbu
  %i.gep = load float, ptr %i.geo, align 4, !tbaa !322
  %i.geq = fadd reassoc nsz arcp contract afn float %i.gen, %i.gep
  %i.ger = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.gby
  %i.ges = load float, ptr %i.ger, align 4, !tbaa !322
  %i.get = fadd reassoc nsz arcp contract afn float %i.geq, %i.ges
  %.neg3875 = fmul reassoc nsz arcp contract afn float %i.gce, f0xBD173B96
  %.neg3876 = fmul reassoc nsz arcp contract afn float %i.gcp, f0xBCFE427B
  %.neg3878 = fmul reassoc nsz arcp contract afn float %i.gda, f0xBCD5BC9B
  %.neg3880 = fmul reassoc nsz arcp contract afn float %i.gdl, f0xBC970965
  %.neg3882 = fmul reassoc nsz arcp contract afn float %i.gei, f0xBC7DEE19
  %.neg3884 = fmul reassoc nsz arcp contract afn float %i.get, f0xBC16D744
  %.neg3877 = fadd reassoc nsz arcp contract afn float %i.gax, %i.gah
  %.neg3879 = fadd reassoc nsz arcp contract afn float %.neg3877, %i.gbm
  %.neg3881 = fadd reassoc nsz arcp contract afn float %.neg3879, %i.gcc
  %.neg3883 = fadd reassoc nsz arcp contract afn float %.neg3881, %.neg3875
  %.neg3885 = fadd reassoc nsz arcp contract afn float %.neg3883, %.neg3876
  %i.geu = fadd reassoc nsz arcp contract afn float %.neg3885, %.neg3878
  %i.gev = fadd reassoc nsz arcp contract afn float %i.geu, %.neg3880
  %i.gew = fadd reassoc nsz arcp contract afn float %i.gev, %.neg3882
  %i.gex = fadd reassoc nsz arcp contract afn float %i.gew, %.neg3884
  %i.gey = lshr i64 %indvars.iv4275, 1
  %i.gez = and i64 %i.gey, 2147483647
  %i.gfa = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.gez
  store float %i.gex, ptr %i.gfa, align 4, !tbaa !322
  %i.gfb = add nuw nsw i32 %.032134008, 2         ; 2 uses
  %i.gfc = icmp slt i32 %i.gfb, %i.ftb
  br i1 %i.gfc, label %.lr.ph4011, label %._crit_edge4012, !llvm.loop !260

._crit_edge4012:                                  ; preds = %.lr.ph4011, %bb.ar
  %i.gfd = add nuw nsw i32 %.032144013, 1         ; 2 uses
  %i.gfe = icmp slt i32 %i.gfd, %i.cu
  %indvars.iv.next4274 = add i32 %indvars.iv4273, 160
  br i1 %i.gfe, label %bb.ar, label %.lr.ph4033, !llvm.loop !261

._crit_edge4034:                                  ; preds = %._crit_edge4023
  %i.gff = icmp ne i32 %.13773.lcssa, %.13776.lcssa
  %i.gfg = icmp ne i32 %.13780.lcssa, %.13784.lcssa
  %i.gfh = select i1 %i.gff, i1 %i.gfg, i1 false  ; 2 uses
  br i1 %i.gfh, label %bb.av, label %.loopexit3922

bb.as:                                            ; preds = %.lr.ph4033, %._crit_edge4023
  %indvars.iv4278 = phi i32 [ 966, %.lr.ph4033 ], [ %indvars.iv.next4279, %._crit_edge4023 ] ; 2 uses
  %.032114032 = phi i32 [ 6, %.lr.ph4033 ], [ %i.ghu, %._crit_edge4023 ] ; 8 uses
  %.037724031 = phi i32 [ 0, %.lr.ph4033 ], [ %.13773.lcssa, %._crit_edge4023 ] ; 8 uses
  %.037754030 = phi i32 [ 0, %.lr.ph4033 ], [ %.13776.lcssa, %._crit_edge4023 ]
  %.037794029 = phi i32 [ 161, %.lr.ph4033 ], [ %.13780.lcssa, %._crit_edge4023 ] ; 4 uses
  %.037834028 = phi i32 [ 0, %.lr.ph4033 ], [ %.13784.lcssa, %._crit_edge4023 ] ; 4 uses
  %fr = freeze i32 %.037754030                    ; 6 uses
  %i.gfi = shl i32 %.032114032, 2
  %i.gfj = and i32 %i.gfi, 28
  %i.gfk = lshr i32 %4, %i.gfj
  %i.gfl = and i32 %i.gfk, 1                      ; 3 uses
  %i.gfm = or disjoint i32 %i.gfl, 6              ; 6 uses
  %i.gfn = icmp slt i32 %i.gfm, %i.fzv
  br i1 %i.gfn, label %iter.check, label %._crit_edge4023

iter.check:                                       ; preds = %bb.as
  %i.gfo = or disjoint i32 %indvars.iv4278, %i.gfl
  %i.gfp = zext i32 %i.gfo to i64                 ; 5 uses
  %i.gfq = sub i32 %i.fzw, %i.gfl                 ; 3 uses
  %i.gfr = lshr i32 %i.gfq, 1
  %narrow = add nuw i32 %i.gfr, 1
  %i.gfs = zext i32 %narrow to i64                ; 5 uses
  %min.iters.check5131 = icmp ult i32 %i.gfq, 14
  br i1 %min.iters.check5131, label %.lr.ph4022.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5132 = icmp ult i32 %i.gfq, 30
  br i1 %min.iters.check5132, label %vec.epilog.ph, label %vector.ph5133

vector.ph5133:                                    ; preds = %vector.main.loop.iter.check
  %i.gft = and i64 %i.gfs, 8
  %n.vec5134 = and i64 %i.gfs, 4294967280         ; 5 uses
  %i.gfu = shl nuw nsw i64 %n.vec5134, 1
  %i.gfv = add nuw nsw i64 %i.gfu, %i.gfp
  %i.gfw = trunc nuw i64 %n.vec5134 to i32
  %i.gfx = shl i32 %i.gfw, 1
  %i.gfy = or disjoint i32 %i.gfm, %i.gfx         ; 2 uses
  %i.gfz = icmp eq i32 %.037724031, 0
  %broadcast.splatinsert5162 = insertelement <8 x i1> poison, i1 %i.gfz, i64 0
  %broadcast.splat5163 = shufflevector <8 x i1> %broadcast.splatinsert5162, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5135 = insertelement <8 x i32> poison, i32 %.032114032, i64 0
  %broadcast.splat5136 = shufflevector <8 x i32> %broadcast.splatinsert5135, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5137 = insertelement <8 x i32> poison, i32 %.037794029, i64 0
  %broadcast.splat5138 = shufflevector <8 x i32> %broadcast.splatinsert5137, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5139 = insertelement <8 x i32> poison, i32 %.037834028, i64 0
  %broadcast.splat5140 = shufflevector <8 x i32> %broadcast.splatinsert5139, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5141 = insertelement <8 x i32> poison, i32 %i.gfm, i64 0
  %broadcast.splat5142 = shufflevector <8 x i32> %broadcast.splatinsert5141, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction5143 = add nuw nsw <8 x i32> %broadcast.splat5142, <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gga = lshr i64 %i.gfp, 1
  br label %vector.body5144

vector.body5144:                                  ; preds = %vector.ph5133, %vector.body5144
  %index5145 = phi i64 [ 0, %vector.ph5133 ], [ %index.next5164, %vector.body5144 ] ; 2 uses
  %vec.ind5146 = phi <8 x i32> [ %induction5143, %vector.ph5133 ], [ %vec.ind.next5165, %vector.body5144 ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph5133 ], [ %i.ggn, %vector.body5144 ]
  %vec.phi5147 = phi <8 x i1> [ zeroinitializer, %vector.ph5133 ], [ %i.ggp, %vector.body5144 ]
  %vec.phi5148 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph5133 ], [ %predphi5160, %vector.body5144 ]
  %vec.phi5149 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph5133 ], [ %predphi5161, %vector.body5144 ]
  %vec.phi5150 = phi <8 x i32> [ %broadcast.splat5138, %vector.ph5133 ], [ %predphi5158, %vector.body5144 ] ; 2 uses
  %vec.phi5151 = phi <8 x i32> [ %broadcast.splat5138, %vector.ph5133 ], [ %predphi5159, %vector.body5144 ] ; 2 uses
  %vec.phi5152 = phi <8 x i32> [ %broadcast.splat5140, %vector.ph5133 ], [ %predphi5156, %vector.body5144 ] ; 2 uses
  %vec.phi5153 = phi <8 x i32> [ %broadcast.splat5140, %vector.ph5133 ], [ %predphi5157, %vector.body5144 ] ; 2 uses
  %step.add = add nuw nsw <8 x i32> %vec.ind5146, splat (i32 16) ; 2 uses
  %i.ggb = add nuw i64 %i.gga, %index5145         ; 2 uses
  %i.ggc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ggb ; 2 uses
  %i.ggd = getelementptr inbounds nuw i8, ptr %i.ggc, i64 32
  %wide.load5154 = load <8 x float>, ptr %i.ggc, align 4, !tbaa !322
  %wide.load5155 = load <8 x float>, ptr %i.ggd, align 4, !tbaa !322
  %i.gge = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load5154, zeroinitializer ; 5 uses
  %i.ggf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load5155, zeroinitializer ; 5 uses
  %i.ggg = getelementptr i8, ptr %i.aa, i64 %i.ggb ; 2 uses
  %i.ggh = getelementptr i8, ptr %i.ggg, i64 8
  tail call void @llvm.masked.store.v8i8.p0(<8 x i8> splat (i8 1), ptr align 1 %i.ggg, <8 x i1> %i.gge), !tbaa !393
  tail call void @llvm.masked.store.v8i8.p0(<8 x i8> splat (i8 1), ptr align 1 %i.ggh, <8 x i1> %i.ggf), !tbaa !393
  %i.ggi = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi5150, <8 x i32> %vec.ind5146)
  %i.ggj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi5151, <8 x i32> %step.add)
  %i.ggk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi5152, <8 x i32> %vec.ind5146)
  %i.ggl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi5153, <8 x i32> %step.add)
  %predphi5156 = select <8 x i1> %i.gge, <8 x i32> %i.ggk, <8 x i32> %vec.phi5152 ; 2 uses
  %predphi5157 = select <8 x i1> %i.ggf, <8 x i32> %i.ggl, <8 x i32> %vec.phi5153 ; 2 uses
  %predphi5158 = select <8 x i1> %i.gge, <8 x i32> %i.ggi, <8 x i32> %vec.phi5150 ; 2 uses
  %predphi5159 = select <8 x i1> %i.ggf, <8 x i32> %i.ggj, <8 x i32> %vec.phi5151 ; 2 uses
  %predphi5160 = select <8 x i1> %i.gge, <8 x i32> %broadcast.splat5136, <8 x i32> %vec.phi5148 ; 2 uses
  %predphi5161 = select <8 x i1> %i.ggf, <8 x i32> %broadcast.splat5136, <8 x i32> %vec.phi5149 ; 2 uses
  %i.ggm = select <8 x i1> %i.gge, <8 x i1> %broadcast.splat5163, <8 x i1> zeroinitializer
  %i.ggn = or <8 x i1> %vec.phi, %i.ggm           ; 2 uses
  %i.ggo = select <8 x i1> %i.ggf, <8 x i1> %broadcast.splat5163, <8 x i1> zeroinitializer
  %i.ggp = or <8 x i1> %vec.phi5147, %i.ggo       ; 2 uses
  %index.next5164 = add nuw i64 %index5145, 16    ; 2 uses
  %vec.ind.next5165 = add nuw nsw <8 x i32> %vec.ind5146, splat (i32 32)
  %i.ggq = icmp eq i64 %index.next5164, %n.vec5134
  br i1 %i.ggq, label %middle.block5166, label %vector.body5144, !llvm.loop !262

middle.block5166:                                 ; preds = %vector.body5144
  %bin.rdx = or <8 x i1> %i.ggp, %i.ggn
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.ggr = bitcast <8 x i1> %bin.rdx.fr to i8
  %.not7440 = icmp eq i8 %i.ggr, 0
  %rdx.select = select i1 %.not7440, i32 %.037724031, i32 %.032114032 ; 3 uses
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %predphi5160, <8 x i32> %predphi5161)
  %i.ggs = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax) ; 2 uses
  %.not7441 = icmp eq i32 %i.ggs, -2147483648
  %i.ggt = select i1 %.not7441, i32 %fr, i32 %i.ggs ; 3 uses
  %rdx.minmax5167 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %predphi5158, <8 x i32> %predphi5159)
  %i.ggu = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax5167) ; 3 uses
  %rdx.minmax5168 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %predphi5156, <8 x i32> %predphi5157)
  %i.ggv = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax5168) ; 3 uses
  %cmp.n5169 = icmp eq i64 %n.vec5134, %i.gfs
  br i1 %cmp.n5169, label %._crit_edge4023, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block5166
  %min.epilog.iters.check.not.not = icmp eq i64 %i.gft, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph4022.preheader, label %vec.epilog.ph, !prof !394

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec5134, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val5171 = phi i32 [ %i.gfy, %vec.epilog.iter.check ], [ %i.gfm, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %rdx.select, %vec.epilog.iter.check ], [ %.037724031, %vector.main.loop.iter.check ]
  %bc.merge.rdx5172 = phi i32 [ %i.ggt, %vec.epilog.iter.check ], [ %fr, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx5173 = phi i32 [ %i.ggu, %vec.epilog.iter.check ], [ %.037794029, %vector.main.loop.iter.check ]
  %bc.merge.rdx5174 = phi i32 [ %i.ggv, %vec.epilog.iter.check ], [ %.037834028, %vector.main.loop.iter.check ]
  %i.ggw = icmp ne i32 %bc.merge.rdx, %.037724031
  %i.ggx = icmp eq i32 %bc.merge.rdx5172, %fr
  %i.ggy = select i1 %i.ggx, i32 -2147483648, i32 %bc.merge.rdx5172
  %n.vec5175 = and i64 %i.gfs, 4294967288         ; 4 uses
  %i.ggz = shl nuw nsw i64 %n.vec5175, 1
  %i.gha = add nuw nsw i64 %i.ggz, %i.gfp
  %i.ghb = trunc nuw i64 %n.vec5175 to i32
  %i.ghc = shl i32 %i.ghb, 1
  %i.ghd = or disjoint i32 %i.gfm, %i.ghc
  %i.ghe = icmp eq i32 %.037724031, 0
  %broadcast.splatinsert5199 = insertelement <8 x i1> poison, i1 %i.ghe, i64 0
  %broadcast.splat5200 = shufflevector <8 x i1> %broadcast.splatinsert5199, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5176.a = insertelement <8 x i32> poison, i32 %.032114032, i64 0
  %broadcast.splat5177 = shufflevector <8 x i32> %broadcast.splatinsert5176.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5178 = insertelement <8 x i1> poison, i1 %i.ggw, i64 0
  %broadcast.splat5179 = shufflevector <8 x i1> %broadcast.splatinsert5178, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5180 = insertelement <8 x i32> poison, i32 %i.ggy, i64 0
  %broadcast.splat5181 = shufflevector <8 x i32> %broadcast.splatinsert5180, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5182 = insertelement <8 x i32> poison, i32 %bc.merge.rdx5173, i64 0
  %broadcast.splat5183 = shufflevector <8 x i32> %broadcast.splatinsert5182, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5184 = insertelement <8 x i32> poison, i32 %bc.merge.rdx5174, i64 0
  %broadcast.splat5185 = shufflevector <8 x i32> %broadcast.splatinsert5184, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5186 = insertelement <8 x i32> poison, i32 %bc.resume.val5171, i64 0
  %broadcast.splat5187 = shufflevector <8 x i32> %broadcast.splatinsert5186, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction5188 = add nuw nsw <8 x i32> %broadcast.splat5187, <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ghf = lshr i64 %i.gfp, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5201, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind5190 = phi <8 x i32> [ %induction5188, %vec.epilog.ph ], [ %vec.ind.next5202, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi5191 = phi <8 x i1> [ %broadcast.splat5179, %vec.epilog.ph ], [ %.fr7443, %vec.epilog.vector.body ]
  %vec.phi5192 = phi <8 x i32> [ %broadcast.splat5181, %vec.epilog.ph ], [ %predphi5198, %vec.epilog.vector.body ]
  %vec.phi5193 = phi <8 x i32> [ %broadcast.splat5183, %vec.epilog.ph ], [ %predphi5197, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi5194 = phi <8 x i32> [ %broadcast.splat5185, %vec.epilog.ph ], [ %predphi5196, %vec.epilog.vector.body ] ; 2 uses
  %i.ghg = add nuw i64 %i.ghf, %index5189         ; 2 uses
  %i.ghh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ghg
  %wide.load5195 = load <8 x float>, ptr %i.ghh, align 4, !tbaa !322
  %i.ghi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load5195, zeroinitializer ; 5 uses
  %i.ghj = getelementptr i8, ptr %i.aa, i64 %i.ghg
  tail call void @llvm.masked.store.v8i8.p0(<8 x i8> splat (i8 1), ptr align 1 %i.ghj, <8 x i1> %i.ghi), !tbaa !393
  %i.ghk = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi5193, <8 x i32> %vec.ind5190)
  %i.ghl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi5194, <8 x i32> %vec.ind5190)
  %predphi5196 = select <8 x i1> %i.ghi, <8 x i32> %i.ghl, <8 x i32> %vec.phi5194 ; 2 uses
  %predphi5197 = select <8 x i1> %i.ghi, <8 x i32> %i.ghk, <8 x i32> %vec.phi5193 ; 2 uses
  %predphi5198 = select <8 x i1> %i.ghi, <8 x i32> %broadcast.splat5177, <8 x i32> %vec.phi5192 ; 2 uses
  %i.ghm = select <8 x i1> %i.ghi, <8 x i1> %broadcast.splat5200, <8 x i1> zeroinitializer
  %i.ghn = or <8 x i1> %vec.phi5191, %i.ghm
  %.fr7443 = freeze <8 x i1> %i.ghn               ; 2 uses
  %index.next5201 = add nuw i64 %index5189, 8     ; 2 uses
  %vec.ind.next5202 = add nuw nsw <8 x i32> %vec.ind5190, splat (i32 16)
  %i.gho = icmp eq i64 %index.next5201, %n.vec5175
  br i1 %i.gho, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !263

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ghp = bitcast <8 x i1> %.fr7443 to i8
  %.not7444 = icmp eq i8 %i.ghp, 0
  %rdx.select5203 = select i1 %.not7444, i32 %.037724031, i32 %.032114032 ; 2 uses
  %i.ghq = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %predphi5198) ; 2 uses
  %.not7445 = icmp eq i32 %i.ghq, -2147483648
  %i.ghr = select i1 %.not7445, i32 %fr, i32 %i.ghq ; 2 uses
  %i.ghs = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %predphi5197) ; 2 uses
  %i.ght = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %predphi5196) ; 2 uses
  %cmp.n5204 = icmp eq i64 %n.vec5175, %i.gfs
  br i1 %cmp.n5204, label %._crit_edge4023, label %.lr.ph4022.preheader

.lr.ph4022.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv4280.ph = phi i64 [ %i.gfp, %iter.check ], [ %i.gfv, %vec.epilog.iter.check ], [ %i.gha, %vec.epilog.middle.block ]
  %.032104019.ph = phi i32 [ %i.gfm, %iter.check ], [ %i.gfy, %vec.epilog.iter.check ], [ %i.ghd, %vec.epilog.middle.block ]
  %.137734018.ph = phi i32 [ %.037724031, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select5203, %vec.epilog.middle.block ]
  %.137764017.ph = phi i32 [ %fr, %iter.check ], [ %i.ggt, %vec.epilog.iter.check ], [ %i.ghr, %vec.epilog.middle.block ]
  %.137804016.ph = phi i32 [ %.037794029, %iter.check ], [ %i.ggu, %vec.epilog.iter.check ], [ %i.ghs, %vec.epilog.middle.block ]
  %.137844015.ph = phi i32 [ %.037834028, %iter.check ], [ %i.ggv, %vec.epilog.iter.check ], [ %i.ght, %vec.epilog.middle.block ]
  br label %.lr.ph4022

._crit_edge4023:                                  ; preds = %bb.au, %middle.block5166, %vec.epilog.middle.block, %bb.as
  %.13784.lcssa = phi i32 [ %.037834028, %bb.as ], [ %i.ght, %vec.epilog.middle.block ], [ %i.ggv, %middle.block5166 ], [ %.23785, %bb.au ] ; 4 uses
  %.13780.lcssa = phi i32 [ %.037794029, %bb.as ], [ %i.ghs, %vec.epilog.middle.block ], [ %i.ggu, %middle.block5166 ], [ %.23781, %bb.au ] ; 4 uses
  %.13776.lcssa = phi i32 [ %fr, %bb.as ], [ %i.ghr, %vec.epilog.middle.block ], [ %i.ggt, %middle.block5166 ], [ %.23777, %bb.au ] ; 4 uses
  %.13773.lcssa = phi i32 [ %.037724031, %bb.as ], [ %rdx.select5203, %vec.epilog.middle.block ], [ %rdx.select, %middle.block5166 ], [ %.23774, %bb.au ] ; 4 uses
  %i.ghu = add nuw nsw i32 %.032114032, 1         ; 2 uses
  %i.ghv = icmp slt i32 %i.ghu, %i.cu
  %indvars.iv.next4279 = add i32 %indvars.iv4278, 160
  br i1 %i.ghv, label %bb.as, label %._crit_edge4034, !llvm.loop !264

.lr.ph4022:                                       ; preds = %.lr.ph4022.preheader, %bb.au
  %indvars.iv4280 = phi i64 [ %indvars.iv.next4281, %bb.au ], [ %indvars.iv4280.ph, %.lr.ph4022.preheader ] ; 2 uses
  %.032104019 = phi i32 [ %i.gie, %bb.au ], [ %.032104019.ph, %.lr.ph4022.preheader ] ; 3 uses
  %.137734018 = phi i32 [ %.23774, %bb.au ], [ %.137734018.ph, %.lr.ph4022.preheader ] ; 3 uses
  %.137764017 = phi i32 [ %.23777, %bb.au ], [ %.137764017.ph, %.lr.ph4022.preheader ]
  %.137804016 = phi i32 [ %.23781, %bb.au ], [ %.137804016.ph, %.lr.ph4022.preheader ] ; 2 uses
  %.137844015 = phi i32 [ %.23785, %bb.au ], [ %.137844015.ph, %.lr.ph4022.preheader ] ; 2 uses
  %i.ghw = lshr i64 %indvars.iv4280, 1            ; 2 uses
  %i.ghx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ghw
  %i.ghy = load float, ptr %i.ghx, align 4, !tbaa !322
  %i.ghz = fcmp reassoc nsz arcp contract afn ogt float %i.ghy, 0.000000e+00
  br i1 %i.ghz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph4022
  %i.gia = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ghw
  store i8 1, ptr %i.gia, align 1, !tbaa !393
  %.not3503 = icmp eq i32 %.137734018, 0
  %i.gib = select i1 %.not3503, i32 %.032114032, i32 %.137734018
  %i.gic = tail call i32 @llvm.smin.i32(i32 %.137804016, i32 %.032104019)
  %i.gid = tail call i32 @llvm.smax.i32(i32 %.137844015, i32 %.032104019)
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph4022, %bb.at
  %.23785 = phi i32 [ %i.gid, %bb.at ], [ %.137844015, %.lr.ph4022 ] ; 2 uses
  %.23781 = phi i32 [ %i.gic, %bb.at ], [ %.137804016, %.lr.ph4022 ] ; 2 uses
  %.23777 = phi i32 [ %.032114032, %bb.at ], [ %.137764017, %.lr.ph4022 ] ; 2 uses
  %.23774 = phi i32 [ %i.gib, %bb.at ], [ %.137734018, %.lr.ph4022 ] ; 2 uses
  %i.gie = add nuw nsw i32 %.032104019, 2         ; 2 uses
  %indvars.iv.next4281 = add nuw nsw i64 %indvars.iv4280, 2
  %i.gif = icmp slt i32 %i.gie, %i.fzv
  br i1 %i.gif, label %.lr.ph4022, label %._crit_edge4023, !llvm.loop !265

bb.av:                                            ; preds = %._crit_edge4034
  %i.gig = add nsw i32 %.13776.lcssa, 1           ; 3 uses
  %i.gih = add nsw i32 %.13784.lcssa, 1
  %i.gii = and i32 %.13780.lcssa, -2
  %.sroa.speculated3740 = tail call i32 @llvm.smax.i32(i32 %.13773.lcssa, i32 8) ; 7 uses
  %.sroa.speculated3736 = tail call i32 @llvm.smin.i32(i32 %i.gig, i32 %i.cw) ; 3 uses
  %.sroa.speculated3732 = tail call i32 @llvm.smax.i32(i32 %i.gii, i32 8) ; 7 uses
  %i.gij = add nsw i32 %i.ie, -8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.gih, i32 %i.gij) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(12160) %i.aj, i8 0, i64 12160, i1 false)
  %i.gik = icmp slt i32 %.sroa.speculated3740, %.sroa.speculated3736
  br i1 %i.gik, label %.lr.ph4045.preheader, label %.loopexit3922

.lr.ph4045.preheader:                             ; preds = %bb.av
  %i.gil = mul i32 %.sroa.speculated3740, 160
  %i.gim = add i32 %.sroa.speculated3732, %i.gil
  %i.gin = zext i32 %i.gim to i64
  %smin4292 = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.gig)
  br label %.lr.ph4045

.lr.ph4066.preheader:                             ; preds = %._crit_edge4042
  %i.gio = add nsw i32 %.sroa.speculated3732, -966
  %i.gip = mul i32 %.sroa.speculated3740, 160     ; 2 uses
  %i.giq = add i32 %i.gio, %i.gip
  %i.gir = add i32 %.sroa.speculated3732, %i.gip
  %i.gis = zext i32 %i.gir to i64
  %smin4309 = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.gig)
  br label %.lr.ph4066

.lr.ph4045:                                       ; preds = %.lr.ph4045.preheader, %._crit_edge4042
  %indvars.iv4283 = phi i64 [ %i.gin, %.lr.ph4045.preheader ], [ %indvars.iv.next4284, %._crit_edge4042 ] ; 2 uses
  %.032084043 = phi i32 [ %.sroa.speculated3740, %.lr.ph4045.preheader ], [ %i.gjf, %._crit_edge4042 ] ; 3 uses
  %i.git = mul nuw nsw i32 %.032084043, 160       ; 2 uses
  %i.giu = add nuw nsw i32 %i.git, %.sroa.speculated3732
  %i.giv = shl i32 %.032084043, 2
  %i.giw = and i32 %i.giv, 28
  %i.gix = lshr i32 %4, %i.giw                    ; 2 uses
  %i.giy = and i32 %i.gix, 1
  %i.giz = or disjoint i32 %i.giy, %i.giu
  %i.gja = add nsw i32 %i.git, %.sroa.speculated  ; 2 uses
  %i.gjb = icmp slt i32 %i.giz, %i.gja
  br i1 %i.gjb, label %.lr.ph4041.preheader, label %._crit_edge4042

.lr.ph4041.preheader:                             ; preds = %.lr.ph4045
  %i.gjc = and i32 %i.gix, 1
  %i.gjd = zext nneg i32 %i.gjc to i64
  %i.gje = or disjoint i64 %indvars.iv4283, %i.gjd
  br label %.lr.ph4041

._crit_edge4042:                                  ; preds = %bb.ay, %.lr.ph4045
  %i.gjf = add nuw nsw i32 %.032084043, 1         ; 2 uses
  %indvars.iv.next4284 = add nuw nsw i64 %indvars.iv4283, 160
  %exitcond4293.not = icmp eq i32 %i.gjf, %smin4292
  br i1 %exitcond4293.not, label %.lr.ph4066.preheader, label %.lr.ph4045, !llvm.loop !266

.lr.ph4041:                                       ; preds = %.lr.ph4041.preheader, %bb.ay
  %indvars.iv4285 = phi i64 [ %i.gje, %.lr.ph4041.preheader ], [ %indvars.iv.next4286, %bb.ay ] ; 7 uses
  %i.gjg = trunc nuw i64 %indvars.iv4285 to i32   ; 4 uses
  %i.gjh = add nsw i32 %i.gjg, -320
  %i.gji = ashr i32 %i.gjh, 1
  %i.gjj = sext i32 %i.gji to i64
  %i.gjk = getelementptr inbounds i8, ptr %i.aa, i64 %i.gjj
  %i.gjl = load i8, ptr %i.gjk, align 1, !tbaa !393
  %i.gjm = zext i8 %i.gjl to i32
  %i.gjn = add nsw i32 %i.gjg, -161
  %i.gjo = ashr i32 %i.gjn, 1
  %i.gjp = sext i32 %i.gjo to i64
  %i.gjq = getelementptr inbounds i8, ptr %i.aa, i64 %i.gjp
  %i.gjr = load i8, ptr %i.gjq, align 1, !tbaa !393
  %i.gjs = zext i8 %i.gjr to i32
  %i.gjt = add nuw nsw i32 %i.gjs, %i.gjm
  %i.gju = add nsw i32 %i.gjg, -159
  %i.gjv = ashr i32 %i.gju, 1
  %i.gjw = sext i32 %i.gjv to i64
  %i.gjx = getelementptr inbounds i8, ptr %i.aa, i64 %i.gjw
  %i.gjy = load i8, ptr %i.gjx, align 1, !tbaa !393
  %i.gjz = zext i8 %i.gjy to i32
  %i.gka = add nuw nsw i32 %i.gjt, %i.gjz
  %i.gkb = add nsw i32 %i.gjg, -2
  %i.gkc = ashr i32 %i.gkb, 1
  %i.gkd = sext i32 %i.gkc to i64
  %i.gke = getelementptr inbounds i8, ptr %i.aa, i64 %i.gkd
  %i.gkf = load i8, ptr %i.gke, align 1, !tbaa !393
  %i.gkg = zext i8 %i.gkf to i32
  %i.gkh = add nuw nsw i32 %i.gka, %i.gkg
  %indvars.iv.next4286 = add nuw nsw i64 %indvars.iv4285, 2 ; 3 uses
  %i.gki = trunc nuw i64 %indvars.iv.next4286 to i32
  %i.gkj = lshr i64 %indvars.iv.next4286, 1
  %i.gkk = and i64 %i.gkj, 2147483647
  %i.gkl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gkk
  %i.gkm = load i8, ptr %i.gkl, align 1, !tbaa !393
  %i.gkn = zext i8 %i.gkm to i32
  %i.gko = add nuw nsw i32 %i.gkh, %i.gkn
  %i.gkp = add nuw i64 %indvars.iv4285, 159
  %i.gkq = lshr i64 %i.gkp, 1
  %i.gkr = and i64 %i.gkq, 2147483647
  %i.gks = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gkr
  %i.gkt = load i8, ptr %i.gks, align 1, !tbaa !393
  %i.gku = zext i8 %i.gkt to i32
  %i.gkv = add nuw nsw i32 %i.gko, %i.gku
  %i.gkw = add nuw i64 %indvars.iv4285, 161
  %i.gkx = lshr i64 %i.gkw, 1
  %i.gky = and i64 %i.gkx, 2147483647
  %i.gkz = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gky
  %i.gla = load i8, ptr %i.gkz, align 1, !tbaa !393
  %i.glb = zext i8 %i.gla to i32
  %i.glc = add nuw nsw i32 %i.gkv, %i.glb
  %i.gld = add nuw i64 %indvars.iv4285, 320
  %i.gle = lshr i64 %i.gld, 1
  %i.glf = and i64 %i.gle, 2147483647
  %i.glg = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.glf
  %i.glh = load i8, ptr %i.glg, align 1, !tbaa !393
  %i.gli = zext i8 %i.glh to i32
  %i.glj = add nuw nsw i32 %i.glc, %i.gli         ; 2 uses
  %i.glk = icmp samesign ugt i32 %i.glj, 4
  br i1 %i.glk, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph4041
  %.not3502 = icmp eq i32 %i.glj, 4
  br i1 %.not3502, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gll = lshr i64 %indvars.iv4285, 1
  %i.glm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gll
  %i.gln = load i8, ptr %i.glm, align 1, !tbaa !393
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph4041
  %i.glo = phi i8 [ 1, %.lr.ph4041 ], [ %i.gln, %bb.ax ], [ 0, %bb.aw ]
end_hunk_0
