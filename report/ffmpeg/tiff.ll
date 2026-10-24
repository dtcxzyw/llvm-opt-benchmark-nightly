Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a

iter.check3138:                                   ; preds = %.preheader934
  %i.der = mul i64 %indvar, %i.dec
  %i.des = sub i64 %i.der, %i.deg
  %diff.check3124 = icmp ugt i64 %i.des, -32
  %or.cond = select i1 %min.iters.check3126, i1 true, i1 %diff.check3124
  br i1 %or.cond, label %.lr.ph1637.preheader, label %vector.main.loop.iter.check3127

vector.main.loop.iter.check3127:                  ; preds = %iter.check3138
  br i1 %min.iters.check3128, label %vec.epilog.ph3142, label %vector.body3131

vector.body3131:                                  ; preds = %vector.main.loop.iter.check3127, %vector.body3131
  %index3132 = phi i64 [ %index.next3135, %vector.body3131 ], [ 0, %vector.main.loop.iter.check3127 ] ; 3 uses
  %i.det = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3132 ; 2 uses
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 16
  %wide.load3133 = load <16 x i8>, ptr %i.det, align 1, !tbaa !67
  %wide.load3134 = load <16 x i8>, ptr %i.deu, align 1, !tbaa !67
  %i.dev = getelementptr inbounds nuw i8, ptr %i.dds, i64 %index3132 ; 2 uses
  %i.dew = getelementptr inbounds nuw i8, ptr %i.dev, i64 16
  store <16 x i8> %wide.load3133, ptr %i.dev, align 1, !tbaa !67
  store <16 x i8> %wide.load3134, ptr %i.dew, align 1, !tbaa !67
  %index.next3135 = add nuw i64 %index3132, 32    ; 2 uses
  %i.dex = icmp eq i64 %index.next3135, %n.vec3130
  br i1 %i.dex, label %middle.block3136, label %vector.body3131, !llvm.loop !164

middle.block3136:                                 ; preds = %vector.body3131
  br i1 %cmp.n3137, label %.preheader933, label %vec.epilog.iter.check3139

vec.epilog.iter.check3139:                        ; preds = %middle.block3136
  br i1 %min.epilog.iters.check3141, label %.lr.ph1637.preheader, label %vec.epilog.ph3142, !prof !273

vec.epilog.ph3142:                                ; preds = %vector.main.loop.iter.check3127, %vec.epilog.iter.check3139
  %vec.epilog.resume.val3143 = phi i64 [ %n.vec3130, %vec.epilog.iter.check3139 ], [ 0, %vector.main.loop.iter.check3127 ]
  br label %vec.epilog.vector.body3145

vec.epilog.vector.body3145:                       ; preds = %vec.epilog.vector.body3145, %vec.epilog.ph3142
  %index3146 = phi i64 [ %vec.epilog.resume.val3143, %vec.epilog.ph3142 ], [ %index.next3148, %vec.epilog.vector.body3145 ] ; 3 uses
  %i.dey = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3146
  %wide.load3147 = load <4 x i8>, ptr %i.dey, align 1, !tbaa !67
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dds, i64 %index3146
  store <4 x i8> %wide.load3147, ptr %i.dez, align 1, !tbaa !67
  %index.next3148 = add nuw i64 %index3146, 4     ; 2 uses
  %i.dfa = icmp eq i64 %index.next3148, %n.vec3144
  br i1 %i.dfa, label %vec.epilog.middle.block3149, label %vec.epilog.vector.body3145, !llvm.loop !165

vec.epilog.middle.block3149:                      ; preds = %vec.epilog.vector.body3145
  br i1 %cmp.n3150, label %.preheader933, label %.lr.ph1637.preheader

.lr.ph1637.preheader:                             ; preds = %iter.check3138, %vec.epilog.iter.check3139, %vec.epilog.middle.block3149
  %indvars.iv1995.ph = phi i64 [ 0, %iter.check3138 ], [ %n.vec3130, %vec.epilog.iter.check3139 ], [ %n.vec3144, %vec.epilog.middle.block3149 ] ; 3 uses
  br i1 %lcmp.mod3759.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol

.lr.ph1637.prol:                                  ; preds = %.lr.ph1637.preheader, %.lr.ph1637.prol
  %indvars.iv1995.prol = phi i64 [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ], [ %indvars.iv1995.ph, %.lr.ph1637.preheader ] ; 3 uses
  %prol.iter3760 = phi i64 [ %prol.iter3760.next, %.lr.ph1637.prol ], [ 0, %.lr.ph1637.preheader ]
  %i.dfb = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995.prol
  %i.dfc = load i8, ptr %i.dfb, align 1, !tbaa !67
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.dds, i64 %indvars.iv1995.prol
  store i8 %i.dfc, ptr %i.dfd, align 1, !tbaa !67
  %indvars.iv.next1996.prol = add nuw nsw i64 %indvars.iv1995.prol, 1 ; 2 uses
  %prol.iter3760.next = add i64 %prol.iter3760, 1 ; 2 uses
  %prol.iter3760.cmp.not = icmp eq i64 %prol.iter3760.next, %xtraiter3758
  br i1 %prol.iter3760.cmp.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol, !llvm.loop !166

.lr.ph1637.prol.loopexit:                         ; preds = %.lr.ph1637.prol, %.lr.ph1637.preheader
  %indvars.iv1995.unr = phi i64 [ %indvars.iv1995.ph, %.lr.ph1637.preheader ], [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ]
  %i.dfe = sub nsw i64 %indvars.iv1995.ph, %wide.trip.count1998
  %i.dff = icmp ugt i64 %i.dfe, -4
  br i1 %i.dff, label %.preheader933, label %.lr.ph1637

.preheader933:                                    ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637, %middle.block3136, %vec.epilog.middle.block3149, %.preheader934
  br i1 %i.dea, label %iter.check3108, label %.preheader932

iter.check3108:                                   ; preds = %.preheader933
  br i1 %min.iters.check3094, label %.lr.ph1639.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check3108
  %i.dfg = sub i64 %i.deq, %i.deg
  %diff.check = icmp ugt i64 %i.dfg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check3092
  br i1 %conflict.rdx, label %.lr.ph1639.preheader, label %vector.main.loop.iter.check3095

vector.main.loop.iter.check3095:                  ; preds = %vector.memcheck
  br i1 %min.iters.check3096, label %vec.epilog.ph3112, label %vector.body3099

vector.body3099:                                  ; preds = %vector.main.loop.iter.check3095, %vector.body3099
  %index3100 = phi i64 [ %index.next3105, %vector.body3099 ], [ 0, %vector.main.loop.iter.check3095 ] ; 3 uses
  %i.dfh = add nuw i64 %index3100, %i.ded         ; 2 uses
  %i.dfi = getelementptr inbounds i8, ptr %.67061645, i64 %i.dfh ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 16
  %wide.load3101 = load <16 x i8>, ptr %i.dfi, align 1, !tbaa !67
  %wide.load3102 = load <16 x i8>, ptr %i.dfj, align 1, !tbaa !67
  %i.dfk = getelementptr inbounds i8, ptr %i.dds, i64 %index3100 ; 2 uses
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfk, i64 16
  %wide.load3103 = load <16 x i8>, ptr %i.dfk, align 1, !tbaa !67
  %wide.load3104 = load <16 x i8>, ptr %i.dfl, align 1, !tbaa !67
  %i.dfm = add <16 x i8> %wide.load3103, %wide.load3101
  %i.dfn = add <16 x i8> %wide.load3104, %wide.load3102
  %i.dfo = getelementptr inbounds i8, ptr %i.dds, i64 %i.dfh ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 16
  store <16 x i8> %i.dfm, ptr %i.dfo, align 1, !tbaa !67
  store <16 x i8> %i.dfn, ptr %i.dfp, align 1, !tbaa !67
  %index.next3105 = add nuw i64 %index3100, 32    ; 2 uses
  %i.dfq = icmp eq i64 %index.next3105, %n.vec3098
  br i1 %i.dfq, label %middle.block3106, label %vector.body3099, !llvm.loop !167

middle.block3106:                                 ; preds = %vector.body3099
  br i1 %cmp.n3107, label %.preheader932, label %vec.epilog.iter.check3109

vec.epilog.iter.check3109:                        ; preds = %middle.block3106
  br i1 %min.epilog.iters.check3111, label %.lr.ph1639.preheader, label %vec.epilog.ph3112, !prof !272

vec.epilog.ph3112:                                ; preds = %vector.main.loop.iter.check3095, %vec.epilog.iter.check3109
  %vec.epilog.resume.val3113 = phi i64 [ %n.vec3098, %vec.epilog.iter.check3109 ], [ 0, %vector.main.loop.iter.check3095 ]
  br label %vec.epilog.vector.body3115

vec.epilog.vector.body3115:                       ; preds = %vec.epilog.vector.body3115, %vec.epilog.ph3112
  %index3116 = phi i64 [ %vec.epilog.resume.val3113, %vec.epilog.ph3112 ], [ %index.next3119, %vec.epilog.vector.body3115 ] ; 3 uses
  %i.dfr = add nuw i64 %index3116, %i.ded         ; 2 uses
  %i.dfs = getelementptr inbounds i8, ptr %.67061645, i64 %i.dfr
  %wide.load3117 = load <8 x i8>, ptr %i.dfs, align 1, !tbaa !67
  %i.dft = getelementptr inbounds i8, ptr %i.dds, i64 %index3116
  %wide.load3118 = load <8 x i8>, ptr %i.dft, align 1, !tbaa !67
  %i.dfu = add <8 x i8> %wide.load3118, %wide.load3117
  %i.dfv = getelementptr inbounds i8, ptr %i.dds, i64 %i.dfr
  store <8 x i8> %i.dfu, ptr %i.dfv, align 1, !tbaa !67
  %index.next3119 = add nuw i64 %index3116, 8     ; 2 uses
  %i.dfw = icmp eq i64 %index.next3119, %n.vec3114
  br i1 %i.dfw, label %vec.epilog.middle.block3120, label %vec.epilog.vector.body3115, !llvm.loop !168

vec.epilog.middle.block3120:                      ; preds = %vec.epilog.vector.body3115
  br i1 %cmp.n3121, label %.preheader932, label %.lr.ph1639.preheader

.lr.ph1639.preheader:                             ; preds = %iter.check3108, %vector.memcheck, %vec.epilog.iter.check3109, %vec.epilog.middle.block3120
  %indvars.iv2000.ph = phi i64 [ %i.ded, %iter.check3108 ], [ %i.ded, %vector.memcheck ], [ %i.deo, %vec.epilog.iter.check3109 ], [ %i.dep, %vec.epilog.middle.block3120 ]
  br label %.lr.ph1639

.lr.ph1637:                                       ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996.3, %.lr.ph1637 ], [ %indvars.iv1995.unr, %.lr.ph1637.prol.loopexit ] ; 6 uses
  %i.dfx = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995
  %i.dfy = load i8, ptr %i.dfx, align 1, !tbaa !67
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dds, i64 %indvars.iv1995
  store i8 %i.dfy, ptr %i.dfz, align 1, !tbaa !67
  %indvars.iv.next1996 = add nuw nsw i64 %indvars.iv1995, 1 ; 2 uses
  %i.dga = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996
  %i.dgb = load i8, ptr %i.dga, align 1, !tbaa !67
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dds, i64 %indvars.iv.next1996
  store i8 %i.dgb, ptr %i.dgc, align 1, !tbaa !67
  %indvars.iv.next1996.1 = add nuw nsw i64 %indvars.iv1995, 2 ; 2 uses
  %i.dgd = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.1
  %i.dge = load i8, ptr %i.dgd, align 1, !tbaa !67
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dds, i64 %indvars.iv.next1996.1
  store i8 %i.dge, ptr %i.dgf, align 1, !tbaa !67
  %indvars.iv.next1996.2 = add nuw nsw i64 %indvars.iv1995, 3 ; 2 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.2
  %i.dgh = load i8, ptr %i.dgg, align 1, !tbaa !67
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dds, i64 %indvars.iv.next1996.2
  store i8 %i.dgh, ptr %i.dgi, align 1, !tbaa !67
  %indvars.iv.next1996.3 = add nuw nsw i64 %indvars.iv1995, 4 ; 2 uses
  %exitcond1999.not.3 = icmp eq i64 %indvars.iv.next1996.3, %wide.trip.count1998
  br i1 %exitcond1999.not.3, label %.preheader933, label %.lr.ph1637, !llvm.loop !169

.preheader932:                                    ; preds = %.lr.ph1639, %middle.block3106, %vec.epilog.middle.block3120, %.preheader933
  br i1 %i.deb, label %._crit_edge1644.split, label %.preheader913.preheader

.preheader913.preheader:                          ; preds = %.preheader932
  %i.dgj = udiv i32 %.2724, %i.dde
  %i.dgk = icmp ult i32 %i.dgj, 2
  br label %.preheader913

.lr.ph1639:                                       ; preds = %.lr.ph1639.preheader, %.lr.ph1639
  %indvars.iv2000 = phi i64 [ %indvars.iv.next2001, %.lr.ph1639 ], [ %indvars.iv2000.ph, %.lr.ph1639.preheader ] ; 4 uses
  %i.dgl = getelementptr inbounds i8, ptr %.67061645, i64 %indvars.iv2000
  %i.dgm = load i8, ptr %i.dgl, align 1, !tbaa !67
  %i.dgn = sub nuw nsw i64 %indvars.iv2000, %i.ded
  %i.dgo = getelementptr inbounds i8, ptr %i.dds, i64 %i.dgn
  %i.dgp = load i8, ptr %i.dgo, align 1, !tbaa !67
  %i.dgq = add i8 %i.dgp, %i.dgm
  %i.dgr = getelementptr inbounds i8, ptr %i.dds, i64 %indvars.iv2000
  store i8 %i.dgq, ptr %i.dgr, align 1, !tbaa !67
  %indvars.iv.next2001 = add nuw nsw i64 %indvars.iv2000, 1 ; 2 uses
  %i.dgs = trunc nsw i64 %indvars.iv.next2001 to i32
  %i.dgt = icmp ugt i32 %i.ddo, %i.dgs
  br i1 %i.dgt, label %.lr.ph1639, label %.preheader932, !llvm.loop !170

.preheader913:                                    ; preds = %.preheader913.preheader, %._crit_edge1642
  %indvars.iv2006 = phi i64 [ %indvars.iv.next2007, %._crit_edge1642 ], [ 0, %.preheader913.preheader ] ; 3 uses
  %i.dgu = mul nuw nsw i64 %indvars.iv2006, %i.dee
  %invariant.gep2827 = getelementptr i8, ptr %i.dds, i64 %indvars.iv2006 ; 3 uses
  %invariant.gep2829 = getelementptr inbounds nuw i8, ptr %.67061645, i64 %i.dgu ; 3 uses
  br i1 %i.dgk, label %.epil.preheader3761, label %.preheader913.new

._crit_edge1642.unr-lcssa:                        ; preds = %.preheader913.new
  br i1 %lcmp.mod3764.not, label %._crit_edge1642, label %.epil.preheader3761

.epil.preheader3761:                              ; preds = %._crit_edge1642.unr-lcssa, %.preheader913
  %indvars.iv2003.epil.init = phi i64 [ 0, %.preheader913 ], [ %indvars.iv.next2004.1, %._crit_edge1642.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3765)
  %i.dgv = xor i64 %indvars.iv2003.epil.init, -1
  %i.dgw = add nsw i64 %i.dee, %i.dgv
  %i.dgx = mul nsw i64 %i.dgw, %i.def
  %gep2828.epil = getelementptr i8, ptr %invariant.gep2827, i64 %i.dgx
  %i.dgy = load i8, ptr %gep2828.epil, align 1, !tbaa !67
  %gep2830.epil = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003.epil.init
  store i8 %i.dgy, ptr %gep2830.epil, align 1, !tbaa !67
  br label %._crit_edge1642

._crit_edge1642:                                  ; preds = %._crit_edge1642.unr-lcssa, %.epil.preheader3761
  %indvars.iv.next2007 = add nuw nsw i64 %indvars.iv2006, 1 ; 2 uses
  %exitcond2010.not = icmp eq i64 %indvars.iv.next2007, %wide.trip.count2009
  br i1 %exitcond2010.not, label %._crit_edge1644.split, label %.preheader913, !llvm.loop !171

.preheader913.new:                                ; preds = %.preheader913, %.preheader913.new
  %indvars.iv2003 = phi i64 [ %indvars.iv.next2004.1, %.preheader913.new ], [ 0, %.preheader913 ] ; 5 uses
  %niter3767 = phi i64 [ %niter3767.next.1, %.preheader913.new ], [ 0, %.preheader913 ]
  %i.dgz = xor i64 %indvars.iv2003, -1
  %i.dha = add nsw i64 %i.dee, %i.dgz
  %i.dhb = mul nsw i64 %i.dha, %i.def
  %gep2828 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dhb
  %i.dhc = load i8, ptr %gep2828, align 1, !tbaa !67
  %gep2830 = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  store i8 %i.dhc, ptr %gep2830, align 1, !tbaa !67
  %i.dhd = xor i64 %indvars.iv2003, -2
  %i.dhe = add nsw i64 %i.dhd, %i.dee
  %i.dhf = mul nsw i64 %i.dhe, %i.def
  %gep2828.1 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dhf
  %i.dhg = load i8, ptr %gep2828.1, align 1, !tbaa !67
  %i.dhh = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  %gep2830.1 = getelementptr inbounds nuw i8, ptr %i.dhh, i64 1
  store i8 %i.dhg, ptr %gep2830.1, align 1, !tbaa !67
  %indvars.iv.next2004.1 = add nuw nsw i64 %indvars.iv2003, 2 ; 2 uses
  %niter3767.next.1 = add i64 %niter3767, 2       ; 2 uses
  %niter3767.ncmp.1.not = icmp eq i64 %niter3767.next.1, %unroll_iter3766
  br i1 %niter3767.ncmp.1.not, label %._crit_edge1642.unr-lcssa, label %.preheader913.new, !llvm.loop !172

._crit_edge1644.split:                            ; preds = %._crit_edge1642, %.preheader932
  %i.dhi = getelementptr inbounds i8, ptr %.67061645, i64 %i.dec
  %i.dhj = add nuw nsw i32 %.161646, 1            ; 2 uses
  %exitcond2011.not = icmp eq i32 %i.dhj, %..12
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2011.not, label %.loopexit943, label %.preheader934, !llvm.loop !173

bb.rf:                                            ; preds = %bb.rd, %bb.rd
  %i.dhk = icmp sgt i32 %..12, 0
  br i1 %i.dhk, label %.preheader937.lr.ph, label %.loopexit943

.preheader937.lr.ph:                              ; preds = %bb.rf
  %i.dhl = icmp sgt i32 %.0699, 0
  %i.dhm = icmp ult i32 %.0699, %i.ddo
  %i.dhn = icmp slt i32 %i.ddq, 1
  %i.dho = sext i32 %.1726 to i64                 ; 3 uses
  %i.dhp = sext i32 %.0699 to i64                 ; 8 uses
  %i.dhq = zext i32 %i.ddq to i64                 ; 6 uses
  %i.dhr = zext i32 %spec.select832 to i64        ; 3 uses
  %wide.trip.count1981 = zext i32 %.0699 to i64   ; 8 uses
  %i.dhs = sub i64 %i.ddt, %i.ddi                 ; 2 uses
  %i.dht = xor i32 %.0699, -1
  %i.dhu = add i32 %i.ddo, %i.dht                 ; 3 uses
  %i.dhv = zext i32 %i.dhu to i64
  %i.dhw = add nuw nsw i64 %i.dhv, 1              ; 5 uses
  %min.iters.check3191 = icmp ult i32 %.0699, 4
  %min.iters.check3193 = icmp ult i32 %.0699, 32
  %i.dhx = and i64 %wide.trip.count1981, 28
  %n.vec3195 = and i64 %wide.trip.count1981, 2147483616 ; 4 uses
  %cmp.n3202 = icmp eq i64 %n.vec3195, %wide.trip.count1981
  %min.epilog.iters.check3206 = icmp eq i64 %i.dhx, 0
  %n.vec3209 = and i64 %wide.trip.count1981, 2147483644 ; 3 uses
  %cmp.n3215 = icmp eq i64 %n.vec3209, %wide.trip.count1981
  %xtraiter3747 = and i64 %wide.trip.count1981, 3 ; 2 uses
  %lcmp.mod3748.not = icmp eq i64 %xtraiter3747, 0
  %min.iters.check3159 = icmp ult i32 %i.dhu, 7
  %i.dhy = add nsw i64 %i.dhp, -1
  %diff.check3156 = icmp ult i64 %i.dhy, 31
  %min.iters.check3161 = icmp ult i32 %i.dhu, 31
  %i.dhz = and i64 %i.dhw, 24
  %n.vec3163 = and i64 %i.dhw, 8589934560         ; 4 uses
  %i.dia = add nsw i64 %n.vec3163, %i.dhp
  %cmp.n3172 = icmp eq i64 %i.dhw, %n.vec3163
  %min.epilog.iters.check3176 = icmp eq i64 %i.dhz, 0
  %n.vec3179 = and i64 %i.dhw, 8589934584         ; 3 uses
  %i.dib = add nsw i64 %n.vec3179, %i.dhp
  %cmp.n3186 = icmp eq i64 %i.dhw, %n.vec3179
  %xtraiter3750 = and i64 %i.dhr, 3               ; 3 uses
  %unroll_iter3754 = and i64 %i.dhr, 4294967292
  %lcmp.mod3752.not = icmp eq i64 %xtraiter3750, 0
  %lcmp.mod3753 = icmp ne i64 %xtraiter3750, 0
  br label %.preheader937

.preheader937:                                    ; preds = %.preheader937.lr.ph, %._crit_edge1633.split
  %indvar3153 = phi i64 [ 0, %.preheader937.lr.ph ], [ %indvar.next3154, %._crit_edge1633.split ] ; 3 uses
  %.171635 = phi i32 [ 0, %.preheader937.lr.ph ], [ %i.dks, %._crit_edge1633.split ]
  %.77071634 = phi ptr [ %i.ddh, %.preheader937.lr.ph ], [ %i.dkr, %._crit_edge1633.split ] ; 12 uses
  %i.dic = mul i64 %indvar3153, %i.dho
  br i1 %i.dhl, label %iter.check3203, label %.preheader936

iter.check3203:                                   ; preds = %.preheader937
  %i.did = mul i64 %indvar3153, %i.dho
  %i.die = sub i64 %i.did, %i.dhs
  %diff.check3189 = icmp ugt i64 %i.die, -32
  %or.cond3460 = select i1 %min.iters.check3191, i1 true, i1 %diff.check3189
  br i1 %or.cond3460, label %.lr.ph1626.preheader, label %vector.main.loop.iter.check3192

vector.main.loop.iter.check3192:                  ; preds = %iter.check3203
  br i1 %min.iters.check3193, label %vec.epilog.ph3207, label %vector.body3196

vector.body3196:                                  ; preds = %vector.main.loop.iter.check3192, %vector.body3196
  %index3197 = phi i64 [ %index.next3200, %vector.body3196 ], [ 0, %vector.main.loop.iter.check3192 ] ; 3 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3197 ; 2 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %i.dif, i64 16
  %wide.load3198 = load <16 x i8>, ptr %i.dif, align 1, !tbaa !67
  %wide.load3199 = load <16 x i8>, ptr %i.dig, align 1, !tbaa !67
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dds, i64 %index3197 ; 2 uses
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dih, i64 16
  store <16 x i8> %wide.load3198, ptr %i.dih, align 1, !tbaa !67
  store <16 x i8> %wide.load3199, ptr %i.dii, align 1, !tbaa !67
  %index.next3200 = add nuw i64 %index3197, 32    ; 2 uses
  %i.dij = icmp eq i64 %index.next3200, %n.vec3195
  br i1 %i.dij, label %middle.block3201, label %vector.body3196, !llvm.loop !174

middle.block3201:                                 ; preds = %vector.body3196
  br i1 %cmp.n3202, label %.preheader936, label %vec.epilog.iter.check3204

vec.epilog.iter.check3204:                        ; preds = %middle.block3201
  br i1 %min.epilog.iters.check3206, label %.lr.ph1626.preheader, label %vec.epilog.ph3207, !prof !273

vec.epilog.ph3207:                                ; preds = %vector.main.loop.iter.check3192, %vec.epilog.iter.check3204
  %vec.epilog.resume.val3208 = phi i64 [ %n.vec3195, %vec.epilog.iter.check3204 ], [ 0, %vector.main.loop.iter.check3192 ]
  br label %vec.epilog.vector.body3210

vec.epilog.vector.body3210:                       ; preds = %vec.epilog.vector.body3210, %vec.epilog.ph3207
  %index3211 = phi i64 [ %vec.epilog.resume.val3208, %vec.epilog.ph3207 ], [ %index.next3213, %vec.epilog.vector.body3210 ] ; 3 uses
  %i.dik = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3211
  %wide.load3212 = load <4 x i8>, ptr %i.dik, align 1, !tbaa !67
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dds, i64 %index3211
  store <4 x i8> %wide.load3212, ptr %i.dil, align 1, !tbaa !67
  %index.next3213 = add nuw i64 %index3211, 4     ; 2 uses
  %i.dim = icmp eq i64 %index.next3213, %n.vec3209
  br i1 %i.dim, label %vec.epilog.middle.block3214, label %vec.epilog.vector.body3210, !llvm.loop !175

vec.epilog.middle.block3214:                      ; preds = %vec.epilog.vector.body3210
  br i1 %cmp.n3215, label %.preheader936, label %.lr.ph1626.preheader

.lr.ph1626.preheader:                             ; preds = %iter.check3203, %vec.epilog.iter.check3204, %vec.epilog.middle.block3214
  %indvars.iv1978.ph = phi i64 [ 0, %iter.check3203 ], [ %n.vec3195, %vec.epilog.iter.check3204 ], [ %n.vec3209, %vec.epilog.middle.block3214 ] ; 3 uses
  br i1 %lcmp.mod3748.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol

.lr.ph1626.prol:                                  ; preds = %.lr.ph1626.preheader, %.lr.ph1626.prol
  %indvars.iv1978.prol = phi i64 [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ], [ %indvars.iv1978.ph, %.lr.ph1626.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1626.prol ], [ 0, %.lr.ph1626.preheader ]
  %i.din = getelementptr inbounds nuw i8, ptr %.77071634, i64 %indvars.iv1978.prol
  %i.dio = load i8, ptr %i.din, align 1, !tbaa !67
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dds, i64 %indvars.iv1978.prol
  store i8 %i.dio, ptr %i.dip, align 1, !tbaa !67
  %indvars.iv.next1979.prol = add nuw nsw i64 %indvars.iv1978.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3747
  br i1 %prol.iter.cmp.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol, !llvm.loop !176

.lr.ph1626.prol.loopexit:                         ; preds = %.lr.ph1626.prol, %.lr.ph1626.preheader
  %indvars.iv1978.unr = phi i64 [ %indvars.iv1978.ph, %.lr.ph1626.preheader ], [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ]
  %i.diq = sub nsw i64 %indvars.iv1978.ph, %wide.trip.count1981
  %i.dir = icmp ugt i64 %i.diq, -4
  br i1 %i.dir, label %.preheader936, label %.lr.ph1626

.preheader936:                                    ; preds = %.lr.ph1626.prol.loopexit, %.lr.ph1626, %middle.block3201, %vec.epilog.middle.block3214, %.preheader937
  br i1 %i.dhm, label %iter.check3173, label %.preheader935

iter.check3173:                                   ; preds = %.preheader936
  br i1 %min.iters.check3159, label %.lr.ph1628.preheader, label %vector.memcheck3152

vector.memcheck3152:                              ; preds = %iter.check3173
  %i.dis = sub i64 %i.dic, %i.dhs
  %diff.check3155 = icmp ugt i64 %i.dis, -32
  %conflict.rdx3157 = or i1 %diff.check3155, %diff.check3156
  br i1 %conflict.rdx3157, label %.lr.ph1628.preheader, label %vector.main.loop.iter.check3160

vector.main.loop.iter.check3160:                  ; preds = %vector.memcheck3152
  br i1 %min.iters.check3161, label %vec.epilog.ph3177, label %vector.body3164

vector.body3164:                                  ; preds = %vector.main.loop.iter.check3160, %vector.body3164
  %index3165 = phi i64 [ %index.next3170, %vector.body3164 ], [ 0, %vector.main.loop.iter.check3160 ] ; 3 uses
  %i.dit = add nuw i64 %index3165, %i.dhp         ; 2 uses
  %i.diu = getelementptr inbounds i8, ptr %.77071634, i64 %i.dit ; 2 uses
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 16
  %wide.load3166 = load <16 x i8>, ptr %i.diu, align 1, !tbaa !67
  %wide.load3167 = load <16 x i8>, ptr %i.div, align 1, !tbaa !67
  %i.diw = getelementptr inbounds i8, ptr %i.dds, i64 %index3165 ; 2 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diw, i64 16
  %wide.load3168 = load <16 x i8>, ptr %i.diw, align 1, !tbaa !67
  %wide.load3169 = load <16 x i8>, ptr %i.dix, align 1, !tbaa !67
  %i.diy = add <16 x i8> %wide.load3168, %wide.load3166
  %i.diz = add <16 x i8> %wide.load3169, %wide.load3167
  %i.dja = getelementptr inbounds i8, ptr %i.dds, i64 %i.dit ; 2 uses
  %i.djb = getelementptr inbounds nuw i8, ptr %i.dja, i64 16
  store <16 x i8> %i.diy, ptr %i.dja, align 1, !tbaa !67
  store <16 x i8> %i.diz, ptr %i.djb, align 1, !tbaa !67
  %index.next3170 = add nuw i64 %index3165, 32    ; 2 uses
  %i.djc = icmp eq i64 %index.next3170, %n.vec3163
  br i1 %i.djc, label %middle.block3171, label %vector.body3164, !llvm.loop !177

middle.block3171:                                 ; preds = %vector.body3164
  br i1 %cmp.n3172, label %.preheader935, label %vec.epilog.iter.check3174

vec.epilog.iter.check3174:                        ; preds = %middle.block3171
  br i1 %min.epilog.iters.check3176, label %.lr.ph1628.preheader, label %vec.epilog.ph3177, !prof !272

vec.epilog.ph3177:                                ; preds = %vector.main.loop.iter.check3160, %vec.epilog.iter.check3174
  %vec.epilog.resume.val3178 = phi i64 [ %n.vec3163, %vec.epilog.iter.check3174 ], [ 0, %vector.main.loop.iter.check3160 ]
  br label %vec.epilog.vector.body3180

vec.epilog.vector.body3180:                       ; preds = %vec.epilog.vector.body3180, %vec.epilog.ph3177
  %index3181 = phi i64 [ %vec.epilog.resume.val3178, %vec.epilog.ph3177 ], [ %index.next3184, %vec.epilog.vector.body3180 ] ; 3 uses
  %i.djd = add nuw i64 %index3181, %i.dhp         ; 2 uses
  %i.dje = getelementptr inbounds i8, ptr %.77071634, i64 %i.djd
  %wide.load3182 = load <8 x i8>, ptr %i.dje, align 1, !tbaa !67
  %i.djf = getelementptr inbounds i8, ptr %i.dds, i64 %index3181
  %wide.load3183 = load <8 x i8>, ptr %i.djf, align 1, !tbaa !67
  %i.djg = add <8 x i8> %wide.load3183, %wide.load3182
  %i.djh = getelementptr inbounds i8, ptr %i.dds, i64 %i.djd
  store <8 x i8> %i.djg, ptr %i.djh, align 1, !tbaa !67
  %index.next3184 = add nuw i64 %index3181, 8     ; 2 uses
  %i.dji = icmp eq i64 %index.next3184, %n.vec3179
  br i1 %i.dji, label %vec.epilog.middle.block3185, label %vec.epilog.vector.body3180, !llvm.loop !178

vec.epilog.middle.block3185:                      ; preds = %vec.epilog.vector.body3180
end_hunk_0
