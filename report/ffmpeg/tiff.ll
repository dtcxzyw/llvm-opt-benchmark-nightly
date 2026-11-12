Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a

vector.memcheck3128:                              ; preds = %iter.check3141
  %i.dfb = mul nsw i64 %indvar, %i.deq
  %.reass4034 = add i64 %i.dfb, %invariant.op4033
  %diff.check3129 = icmp ult i64 %.reass4034, 31
  br i1 %diff.check3129, label %.lr.ph1637.preheader, label %vector.main.loop.iter.check3130

vector.main.loop.iter.check3130:                  ; preds = %vector.memcheck3128
  br i1 %min.iters.check3131, label %vec.epilog.ph3145, label %vector.body3134

vector.body3134:                                  ; preds = %vector.main.loop.iter.check3130, %vector.body3134
  %index3135 = phi i64 [ %index.next3138, %vector.body3134 ], [ 0, %vector.main.loop.iter.check3130 ] ; 3 uses
  %i.dfc = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3135 ; 2 uses
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.dfc, i64 16
  %wide.load3136 = load <16 x i8>, ptr %i.dfc, align 1, !tbaa !67
  %wide.load3137 = load <16 x i8>, ptr %i.dfd, align 1, !tbaa !67
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dec, i64 %index3135 ; 2 uses
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfe, i64 16
  store <16 x i8> %wide.load3136, ptr %i.dfe, align 1, !tbaa !67
  store <16 x i8> %wide.load3137, ptr %i.dff, align 1, !tbaa !67
  %index.next3138 = add nuw i64 %index3135, 32    ; 2 uses
  %i.dfg = icmp eq i64 %index.next3138, %n.vec3133
  br i1 %i.dfg, label %middle.block3139, label %vector.body3134, !llvm.loop !164

middle.block3139:                                 ; preds = %vector.body3134
  br i1 %cmp.n3140, label %.preheader933, label %vec.epilog.iter.check3142

vec.epilog.iter.check3142:                        ; preds = %middle.block3139
  br i1 %min.epilog.iters.check3144, label %.lr.ph1637.preheader, label %vec.epilog.ph3145, !prof !273

vec.epilog.ph3145:                                ; preds = %vector.main.loop.iter.check3130, %vec.epilog.iter.check3142
  %vec.epilog.resume.val3146 = phi i64 [ %n.vec3133, %vec.epilog.iter.check3142 ], [ 0, %vector.main.loop.iter.check3130 ]
  br label %vec.epilog.vector.body3148

vec.epilog.vector.body3148:                       ; preds = %vec.epilog.vector.body3148, %vec.epilog.ph3145
  %index3149 = phi i64 [ %vec.epilog.resume.val3146, %vec.epilog.ph3145 ], [ %index.next3151, %vec.epilog.vector.body3148 ] ; 3 uses
  %i.dfh = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3149
  %wide.load3150 = load <4 x i8>, ptr %i.dfh, align 1, !tbaa !67
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dec, i64 %index3149
  store <4 x i8> %wide.load3150, ptr %i.dfi, align 1, !tbaa !67
  %index.next3151 = add nuw i64 %index3149, 4     ; 2 uses
  %i.dfj = icmp eq i64 %index.next3151, %n.vec3147
  br i1 %i.dfj, label %vec.epilog.middle.block3152, label %vec.epilog.vector.body3148, !llvm.loop !165

vec.epilog.middle.block3152:                      ; preds = %vec.epilog.vector.body3148
  br i1 %cmp.n3153, label %.preheader933, label %.lr.ph1637.preheader

.lr.ph1637.preheader:                             ; preds = %iter.check3141, %vector.memcheck3128, %vec.epilog.iter.check3142, %vec.epilog.middle.block3152
  %indvars.iv1995.ph = phi i64 [ 0, %iter.check3141 ], [ 0, %vector.memcheck3128 ], [ %n.vec3133, %vec.epilog.iter.check3142 ], [ %n.vec3147, %vec.epilog.middle.block3152 ] ; 3 uses
  br i1 %lcmp.mod3814.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol

.lr.ph1637.prol:                                  ; preds = %.lr.ph1637.preheader, %.lr.ph1637.prol
  %indvars.iv1995.prol = phi i64 [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ], [ %indvars.iv1995.ph, %.lr.ph1637.preheader ] ; 3 uses
  %prol.iter3815 = phi i64 [ %prol.iter3815.next, %.lr.ph1637.prol ], [ 0, %.lr.ph1637.preheader ]
  %i.dfk = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995.prol
  %i.dfl = load i8, ptr %i.dfk, align 1, !tbaa !67
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dec, i64 %indvars.iv1995.prol
  store i8 %i.dfl, ptr %i.dfm, align 1, !tbaa !67
  %indvars.iv.next1996.prol = add nuw nsw i64 %indvars.iv1995.prol, 1 ; 2 uses
  %prol.iter3815.next = add i64 %prol.iter3815, 1 ; 2 uses
  %prol.iter3815.cmp.not = icmp eq i64 %prol.iter3815.next, %xtraiter3813
  br i1 %prol.iter3815.cmp.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol, !llvm.loop !166

.lr.ph1637.prol.loopexit:                         ; preds = %.lr.ph1637.prol, %.lr.ph1637.preheader
  %indvars.iv1995.unr = phi i64 [ %indvars.iv1995.ph, %.lr.ph1637.preheader ], [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ]
  %i.dfn = sub nsw i64 %indvars.iv1995.ph, %wide.trip.count1998
  %i.dfo = icmp ugt i64 %i.dfn, -4
  br i1 %i.dfo, label %.preheader933, label %.lr.ph1637

.preheader933:                                    ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637, %middle.block3139, %vec.epilog.middle.block3152, %.preheader934
  br i1 %i.dek, label %iter.check3109, label %.preheader932

iter.check3109:                                   ; preds = %.preheader933
  br i1 %min.iters.check3094, label %.lr.ph1639.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check3109
  %i.dfp = mul i64 %indvar, %i.deq
  %.reass4036 = add i64 %i.dfp, %invariant.op4035
  %diff.check = icmp ult i64 %.reass4036, 31
  %conflict.rdx = or i1 %diff.check, %diff.check3095
  br i1 %conflict.rdx, label %.lr.ph1639.preheader, label %vector.main.loop.iter.check3096

vector.main.loop.iter.check3096:                  ; preds = %vector.memcheck
  br i1 %min.iters.check3097, label %vec.epilog.ph3113, label %vector.body3100

vector.body3100:                                  ; preds = %vector.main.loop.iter.check3096, %vector.body3100
  %index3101 = phi i64 [ %index.next3106, %vector.body3100 ], [ 0, %vector.main.loop.iter.check3096 ] ; 3 uses
  %i.dfq = add nuw i64 %index3101, %i.den         ; 2 uses
  %i.dfr = getelementptr inbounds i8, ptr %.67061645, i64 %i.dfq ; 2 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfr, i64 16
  %wide.load3102 = load <16 x i8>, ptr %i.dfr, align 1, !tbaa !67
  %wide.load3103 = load <16 x i8>, ptr %i.dfs, align 1, !tbaa !67
  %i.dft = getelementptr inbounds i8, ptr %i.dec, i64 %index3101 ; 2 uses
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dft, i64 16
  %wide.load3104 = load <16 x i8>, ptr %i.dft, align 1, !tbaa !67
  %wide.load3105 = load <16 x i8>, ptr %i.dfu, align 1, !tbaa !67
  %i.dfv = add <16 x i8> %wide.load3104, %wide.load3102
  %i.dfw = add <16 x i8> %wide.load3105, %wide.load3103
  %i.dfx = getelementptr inbounds i8, ptr %i.dec, i64 %i.dfq ; 2 uses
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dfx, i64 16
  store <16 x i8> %i.dfv, ptr %i.dfx, align 1, !tbaa !67
  store <16 x i8> %i.dfw, ptr %i.dfy, align 1, !tbaa !67
  %index.next3106 = add nuw i64 %index3101, 32    ; 2 uses
  %i.dfz = icmp eq i64 %index.next3106, %n.vec3099
  br i1 %i.dfz, label %middle.block3107, label %vector.body3100, !llvm.loop !167

middle.block3107:                                 ; preds = %vector.body3100
  br i1 %cmp.n3108, label %.preheader932, label %vec.epilog.iter.check3110

vec.epilog.iter.check3110:                        ; preds = %middle.block3107
  br i1 %min.epilog.iters.check3112, label %.lr.ph1639.preheader, label %vec.epilog.ph3113, !prof !272

vec.epilog.ph3113:                                ; preds = %vector.main.loop.iter.check3096, %vec.epilog.iter.check3110
  %vec.epilog.resume.val3114 = phi i64 [ %n.vec3099, %vec.epilog.iter.check3110 ], [ 0, %vector.main.loop.iter.check3096 ]
  br label %vec.epilog.vector.body3116

vec.epilog.vector.body3116:                       ; preds = %vec.epilog.vector.body3116, %vec.epilog.ph3113
  %index3117 = phi i64 [ %vec.epilog.resume.val3114, %vec.epilog.ph3113 ], [ %index.next3120, %vec.epilog.vector.body3116 ] ; 3 uses
  %i.dga = add nuw i64 %index3117, %i.den         ; 2 uses
  %i.dgb = getelementptr inbounds i8, ptr %.67061645, i64 %i.dga
  %wide.load3118 = load <8 x i8>, ptr %i.dgb, align 1, !tbaa !67
  %i.dgc = getelementptr inbounds i8, ptr %i.dec, i64 %index3117
  %wide.load3119 = load <8 x i8>, ptr %i.dgc, align 1, !tbaa !67
  %i.dgd = add <8 x i8> %wide.load3119, %wide.load3118
  %i.dge = getelementptr inbounds i8, ptr %i.dec, i64 %i.dga
  store <8 x i8> %i.dgd, ptr %i.dge, align 1, !tbaa !67
  %index.next3120 = add nuw i64 %index3117, 8     ; 2 uses
  %i.dgf = icmp eq i64 %index.next3120, %n.vec3115
  br i1 %i.dgf, label %vec.epilog.middle.block3121, label %vec.epilog.vector.body3116, !llvm.loop !168

vec.epilog.middle.block3121:                      ; preds = %vec.epilog.vector.body3116
  br i1 %cmp.n3122, label %.preheader932, label %.lr.ph1639.preheader

.lr.ph1639.preheader:                             ; preds = %iter.check3109, %vector.memcheck, %vec.epilog.iter.check3110, %vec.epilog.middle.block3121
  %indvars.iv2000.ph = phi i64 [ %i.den, %iter.check3109 ], [ %i.den, %vector.memcheck ], [ %i.dez, %vec.epilog.iter.check3110 ], [ %i.dfa, %vec.epilog.middle.block3121 ]
  br label %.lr.ph1639

.lr.ph1637:                                       ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996.3, %.lr.ph1637 ], [ %indvars.iv1995.unr, %.lr.ph1637.prol.loopexit ] ; 6 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995
  %i.dgh = load i8, ptr %i.dgg, align 1, !tbaa !67
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dec, i64 %indvars.iv1995
  store i8 %i.dgh, ptr %i.dgi, align 1, !tbaa !67
  %indvars.iv.next1996 = add nuw nsw i64 %indvars.iv1995, 1 ; 2 uses
  %i.dgj = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996
  %i.dgk = load i8, ptr %i.dgj, align 1, !tbaa !67
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dec, i64 %indvars.iv.next1996
  store i8 %i.dgk, ptr %i.dgl, align 1, !tbaa !67
  %indvars.iv.next1996.1 = add nuw nsw i64 %indvars.iv1995, 2 ; 2 uses
  %i.dgm = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.1
  %i.dgn = load i8, ptr %i.dgm, align 1, !tbaa !67
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.dec, i64 %indvars.iv.next1996.1
  store i8 %i.dgn, ptr %i.dgo, align 1, !tbaa !67
  %indvars.iv.next1996.2 = add nuw nsw i64 %indvars.iv1995, 3 ; 2 uses
  %i.dgp = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.2
  %i.dgq = load i8, ptr %i.dgp, align 1, !tbaa !67
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dec, i64 %indvars.iv.next1996.2
  store i8 %i.dgq, ptr %i.dgr, align 1, !tbaa !67
  %indvars.iv.next1996.3 = add nuw nsw i64 %indvars.iv1995, 4 ; 2 uses
  %exitcond1999.not.3 = icmp eq i64 %indvars.iv.next1996.3, %wide.trip.count1998
  br i1 %exitcond1999.not.3, label %.preheader933, label %.lr.ph1637, !llvm.loop !169

.preheader932:                                    ; preds = %.lr.ph1639, %middle.block3107, %vec.epilog.middle.block3121, %.preheader933
  br i1 %i.del, label %._crit_edge1644.split, label %.preheader913.preheader

.preheader913.preheader:                          ; preds = %.preheader932
  %i.dgs = udiv i32 %.2724, %i.ddo
  %i.dgt = icmp ult i32 %i.dgs, 2
  br label %.preheader913

.lr.ph1639:                                       ; preds = %.lr.ph1639.preheader, %.lr.ph1639
  %indvars.iv2000 = phi i64 [ %indvars.iv.next2001, %.lr.ph1639 ], [ %indvars.iv2000.ph, %.lr.ph1639.preheader ] ; 4 uses
  %i.dgu = getelementptr inbounds i8, ptr %.67061645, i64 %indvars.iv2000
  %i.dgv = load i8, ptr %i.dgu, align 1, !tbaa !67
  %i.dgw = sub nuw nsw i64 %indvars.iv2000, %i.den
  %i.dgx = getelementptr inbounds i8, ptr %i.dec, i64 %i.dgw
  %i.dgy = load i8, ptr %i.dgx, align 1, !tbaa !67
  %i.dgz = add i8 %i.dgy, %i.dgv
  %i.dha = getelementptr inbounds i8, ptr %i.dec, i64 %indvars.iv2000
  store i8 %i.dgz, ptr %i.dha, align 1, !tbaa !67
  %indvars.iv.next2001 = add nuw nsw i64 %indvars.iv2000, 1 ; 2 uses
  %i.dhb = trunc nsw i64 %indvars.iv.next2001 to i32
  %i.dhc = icmp ugt i32 %i.ddy, %i.dhb
  br i1 %i.dhc, label %.lr.ph1639, label %.preheader932, !llvm.loop !170

.preheader913:                                    ; preds = %.preheader913.preheader, %._crit_edge1642
  %indvars.iv2006 = phi i64 [ %indvars.iv.next2007, %._crit_edge1642 ], [ 0, %.preheader913.preheader ] ; 3 uses
  %i.dhd = mul nuw nsw i64 %indvars.iv2006, %i.deo
  %invariant.gep2827 = getelementptr i8, ptr %i.dec, i64 %indvars.iv2006 ; 3 uses
  %invariant.gep2829 = getelementptr inbounds nuw i8, ptr %.67061645, i64 %i.dhd ; 3 uses
  br i1 %i.dgt, label %.epil.preheader3816, label %.preheader913.new

._crit_edge1642.unr-lcssa:                        ; preds = %.preheader913.new
  br i1 %lcmp.mod3819.not, label %._crit_edge1642, label %.epil.preheader3816

.epil.preheader3816:                              ; preds = %._crit_edge1642.unr-lcssa, %.preheader913
  %indvars.iv2003.epil.init = phi i64 [ 0, %.preheader913 ], [ %indvars.iv.next2004.1, %._crit_edge1642.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3820)
  %i.dhe = xor i64 %indvars.iv2003.epil.init, -1
  %i.dhf = add nsw i64 %i.deo, %i.dhe
  %i.dhg = mul nsw i64 %i.dhf, %i.dep
  %gep2828.epil = getelementptr i8, ptr %invariant.gep2827, i64 %i.dhg
  %i.dhh = load i8, ptr %gep2828.epil, align 1, !tbaa !67
  %gep2830.epil = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003.epil.init
  store i8 %i.dhh, ptr %gep2830.epil, align 1, !tbaa !67
  br label %._crit_edge1642

._crit_edge1642:                                  ; preds = %._crit_edge1642.unr-lcssa, %.epil.preheader3816
  %indvars.iv.next2007 = add nuw nsw i64 %indvars.iv2006, 1 ; 2 uses
  %exitcond2010.not = icmp eq i64 %indvars.iv.next2007, %wide.trip.count2009
  br i1 %exitcond2010.not, label %._crit_edge1644.split, label %.preheader913, !llvm.loop !171

.preheader913.new:                                ; preds = %.preheader913, %.preheader913.new
  %indvars.iv2003 = phi i64 [ %indvars.iv.next2004.1, %.preheader913.new ], [ 0, %.preheader913 ] ; 5 uses
  %niter3822 = phi i64 [ %niter3822.next.1, %.preheader913.new ], [ 0, %.preheader913 ]
  %i.dhi = xor i64 %indvars.iv2003, -1
  %i.dhj = add nsw i64 %i.deo, %i.dhi
  %i.dhk = mul nsw i64 %i.dhj, %i.dep
  %gep2828 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dhk
  %i.dhl = load i8, ptr %gep2828, align 1, !tbaa !67
  %gep2830 = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  store i8 %i.dhl, ptr %gep2830, align 1, !tbaa !67
  %i.dhm = xor i64 %indvars.iv2003, -2
  %i.dhn = add nsw i64 %i.dhm, %i.deo
  %i.dho = mul nsw i64 %i.dhn, %i.dep
  %gep2828.1 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dho
  %i.dhp = load i8, ptr %gep2828.1, align 1, !tbaa !67
  %i.dhq = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  %gep2830.1 = getelementptr inbounds nuw i8, ptr %i.dhq, i64 1
  store i8 %i.dhp, ptr %gep2830.1, align 1, !tbaa !67
  %indvars.iv.next2004.1 = add nuw nsw i64 %indvars.iv2003, 2 ; 2 uses
  %niter3822.next.1 = add i64 %niter3822, 2       ; 2 uses
  %niter3822.ncmp.1.not = icmp eq i64 %niter3822.next.1, %unroll_iter3821
  br i1 %niter3822.ncmp.1.not, label %._crit_edge1642.unr-lcssa, label %.preheader913.new, !llvm.loop !172

._crit_edge1644.split:                            ; preds = %._crit_edge1642, %.preheader932
  %i.dhr = getelementptr inbounds i8, ptr %.67061645, i64 %i.dem
  %i.dhs = add nuw nsw i32 %.161646, 1            ; 2 uses
  %exitcond2011.not = icmp eq i32 %i.dhs, %..12
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2011.not, label %.loopexit943, label %.preheader934, !llvm.loop !173

bb.rh:                                            ; preds = %bb.rf, %bb.rf
  %i.dht = icmp sgt i32 %..12, 0
  br i1 %i.dht, label %.preheader937.lr.ph, label %.loopexit943

.preheader937.lr.ph:                              ; preds = %bb.rh
  %i.dhu = icmp sgt i32 %.0699, 0
  %i.dhv = icmp ult i32 %.0699, %i.ddy
  %i.dhw = icmp slt i32 %i.dea, 1
  %i.dhx = sext i32 %.1726 to i64                 ; 2 uses
  %i.dhy = sext i32 %.0699 to i64                 ; 8 uses
  %i.dhz = zext i32 %i.dea to i64                 ; 6 uses
  %i.dia = zext i32 %spec.select832 to i64        ; 3 uses
  %wide.trip.count1981 = zext i32 %.0699 to i64   ; 8 uses
  %i.dib = sub nsw i64 0, %i.dhx                  ; 2 uses
  %i.dic = sub i64 %i.ded, %i.dds                 ; 2 uses
  %i.did = xor i32 %.0699, -1
  %i.die = add i32 %i.ddy, %i.did                 ; 3 uses
  %i.dif = zext i32 %i.die to i64
  %i.dig = add nuw nsw i64 %i.dif, 1              ; 5 uses
  %min.iters.check3200 = icmp ult i32 %.0699, 4
  %invariant.op4029 = add i64 %i.dic, -1
  %min.iters.check3204 = icmp ult i32 %.0699, 32
  %i.dih = and i64 %wide.trip.count1981, 28
  %n.vec3206 = and i64 %wide.trip.count1981, 2147483616 ; 4 uses
  %cmp.n3213 = icmp eq i64 %n.vec3206, %wide.trip.count1981
  %min.epilog.iters.check3217 = icmp eq i64 %i.dih, 0
  %n.vec3220 = and i64 %wide.trip.count1981, 2147483644 ; 3 uses
  %cmp.n3226 = icmp eq i64 %n.vec3220, %wide.trip.count1981
  %xtraiter3802 = and i64 %wide.trip.count1981, 3 ; 2 uses
  %lcmp.mod3803.not = icmp eq i64 %xtraiter3802, 0
  %min.iters.check3164 = icmp ult i32 %i.die, 7
  %invariant.op4031 = add i64 %i.dic, -1
  %i.dii = add nsw i64 %i.dhy, -1
  %diff.check3167 = icmp ult i64 %i.dii, 31
  %min.iters.check3170 = icmp ult i32 %i.die, 31
  %i.dij = and i64 %i.dig, 24
  %n.vec3172 = and i64 %i.dig, 8589934560         ; 4 uses
  %i.dik = add nsw i64 %n.vec3172, %i.dhy
  %cmp.n3181 = icmp eq i64 %i.dig, %n.vec3172
  %min.epilog.iters.check3185 = icmp eq i64 %i.dij, 0
  %n.vec3188 = and i64 %i.dig, 8589934584         ; 3 uses
  %i.dil = add nsw i64 %n.vec3188, %i.dhy
  %cmp.n3195 = icmp eq i64 %i.dig, %n.vec3188
  %xtraiter3805 = and i64 %i.dia, 3               ; 3 uses
  %unroll_iter3809 = and i64 %i.dia, 4294967292
  %lcmp.mod3807.not = icmp eq i64 %xtraiter3805, 0
  %lcmp.mod3808 = icmp ne i64 %xtraiter3805, 0
  br label %.preheader937

.preheader937:                                    ; preds = %.preheader937.lr.ph, %._crit_edge1633.split
  %indvar3161 = phi i64 [ 0, %.preheader937.lr.ph ], [ %indvar.next3162, %._crit_edge1633.split ] ; 3 uses
  %.171635 = phi i32 [ 0, %.preheader937.lr.ph ], [ %i.dla, %._crit_edge1633.split ]
  %.77071634 = phi ptr [ %i.ddr, %.preheader937.lr.ph ], [ %i.dkz, %._crit_edge1633.split ] ; 12 uses
  br i1 %i.dhu, label %iter.check3214, label %.preheader936

iter.check3214:                                   ; preds = %.preheader937
  br i1 %min.iters.check3200, label %.lr.ph1626.preheader, label %vector.memcheck3201

vector.memcheck3201:                              ; preds = %iter.check3214
  %i.dim = mul nsw i64 %indvar3161, %i.dib
  %.reass4030 = add i64 %i.dim, %invariant.op4029
  %diff.check3202 = icmp ult i64 %.reass4030, 31
  br i1 %diff.check3202, label %.lr.ph1626.preheader, label %vector.main.loop.iter.check3203

vector.main.loop.iter.check3203:                  ; preds = %vector.memcheck3201
  br i1 %min.iters.check3204, label %vec.epilog.ph3218, label %vector.body3207

vector.body3207:                                  ; preds = %vector.main.loop.iter.check3203, %vector.body3207
  %index3208 = phi i64 [ %index.next3211, %vector.body3207 ], [ 0, %vector.main.loop.iter.check3203 ] ; 3 uses
  %i.din = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3208 ; 2 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %i.din, i64 16
  %wide.load3209 = load <16 x i8>, ptr %i.din, align 1, !tbaa !67
  %wide.load3210 = load <16 x i8>, ptr %i.dio, align 1, !tbaa !67
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dec, i64 %index3208 ; 2 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 16
  store <16 x i8> %wide.load3209, ptr %i.dip, align 1, !tbaa !67
  store <16 x i8> %wide.load3210, ptr %i.diq, align 1, !tbaa !67
  %index.next3211 = add nuw i64 %index3208, 32    ; 2 uses
  %i.dir = icmp eq i64 %index.next3211, %n.vec3206
  br i1 %i.dir, label %middle.block3212, label %vector.body3207, !llvm.loop !174

middle.block3212:                                 ; preds = %vector.body3207
  br i1 %cmp.n3213, label %.preheader936, label %vec.epilog.iter.check3215

vec.epilog.iter.check3215:                        ; preds = %middle.block3212
  br i1 %min.epilog.iters.check3217, label %.lr.ph1626.preheader, label %vec.epilog.ph3218, !prof !273

vec.epilog.ph3218:                                ; preds = %vector.main.loop.iter.check3203, %vec.epilog.iter.check3215
  %vec.epilog.resume.val3219 = phi i64 [ %n.vec3206, %vec.epilog.iter.check3215 ], [ 0, %vector.main.loop.iter.check3203 ]
  br label %vec.epilog.vector.body3221

vec.epilog.vector.body3221:                       ; preds = %vec.epilog.vector.body3221, %vec.epilog.ph3218
  %index3222 = phi i64 [ %vec.epilog.resume.val3219, %vec.epilog.ph3218 ], [ %index.next3224, %vec.epilog.vector.body3221 ] ; 3 uses
  %i.dis = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3222
  %wide.load3223 = load <4 x i8>, ptr %i.dis, align 1, !tbaa !67
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dec, i64 %index3222
  store <4 x i8> %wide.load3223, ptr %i.dit, align 1, !tbaa !67
  %index.next3224 = add nuw i64 %index3222, 4     ; 2 uses
  %i.diu = icmp eq i64 %index.next3224, %n.vec3220
  br i1 %i.diu, label %vec.epilog.middle.block3225, label %vec.epilog.vector.body3221, !llvm.loop !175

vec.epilog.middle.block3225:                      ; preds = %vec.epilog.vector.body3221
  br i1 %cmp.n3226, label %.preheader936, label %.lr.ph1626.preheader

.lr.ph1626.preheader:                             ; preds = %iter.check3214, %vector.memcheck3201, %vec.epilog.iter.check3215, %vec.epilog.middle.block3225
  %indvars.iv1978.ph = phi i64 [ 0, %iter.check3214 ], [ 0, %vector.memcheck3201 ], [ %n.vec3206, %vec.epilog.iter.check3215 ], [ %n.vec3220, %vec.epilog.middle.block3225 ] ; 3 uses
  br i1 %lcmp.mod3803.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol

.lr.ph1626.prol:                                  ; preds = %.lr.ph1626.preheader, %.lr.ph1626.prol
  %indvars.iv1978.prol = phi i64 [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ], [ %indvars.iv1978.ph, %.lr.ph1626.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1626.prol ], [ 0, %.lr.ph1626.preheader ]
  %i.div = getelementptr inbounds nuw i8, ptr %.77071634, i64 %indvars.iv1978.prol
  %i.diw = load i8, ptr %i.div, align 1, !tbaa !67
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dec, i64 %indvars.iv1978.prol
  store i8 %i.diw, ptr %i.dix, align 1, !tbaa !67
  %indvars.iv.next1979.prol = add nuw nsw i64 %indvars.iv1978.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3802
  br i1 %prol.iter.cmp.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol, !llvm.loop !176

.lr.ph1626.prol.loopexit:                         ; preds = %.lr.ph1626.prol, %.lr.ph1626.preheader
  %indvars.iv1978.unr = phi i64 [ %indvars.iv1978.ph, %.lr.ph1626.preheader ], [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ]
  %i.diy = sub nsw i64 %indvars.iv1978.ph, %wide.trip.count1981
  %i.diz = icmp ugt i64 %i.diy, -4
  br i1 %i.diz, label %.preheader936, label %.lr.ph1626

.preheader936:                                    ; preds = %.lr.ph1626.prol.loopexit, %.lr.ph1626, %middle.block3212, %vec.epilog.middle.block3225, %.preheader937
  br i1 %i.dhv, label %iter.check3182, label %.preheader935

iter.check3182:                                   ; preds = %.preheader936
  br i1 %min.iters.check3164, label %.lr.ph1628.preheader, label %vector.memcheck3165

vector.memcheck3165:                              ; preds = %iter.check3182
  %i.dja = mul i64 %indvar3161, %i.dib
  %.reass4032 = add i64 %i.dja, %invariant.op4031
  %diff.check3166 = icmp ult i64 %.reass4032, 31
  %conflict.rdx3168 = or i1 %diff.check3166, %diff.check3167
  br i1 %conflict.rdx3168, label %.lr.ph1628.preheader, label %vector.main.loop.iter.check3169

vector.main.loop.iter.check3169:                  ; preds = %vector.memcheck3165
  br i1 %min.iters.check3170, label %vec.epilog.ph3186, label %vector.body3173

vector.body3173:                                  ; preds = %vector.main.loop.iter.check3169, %vector.body3173
  %index3174 = phi i64 [ %index.next3179, %vector.body3173 ], [ 0, %vector.main.loop.iter.check3169 ] ; 3 uses
  %i.djb = add nuw i64 %index3174, %i.dhy         ; 2 uses
  %i.djc = getelementptr inbounds i8, ptr %.77071634, i64 %i.djb ; 2 uses
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 16
  %wide.load3175 = load <16 x i8>, ptr %i.djc, align 1, !tbaa !67
  %wide.load3176 = load <16 x i8>, ptr %i.djd, align 1, !tbaa !67
  %i.dje = getelementptr inbounds i8, ptr %i.dec, i64 %index3174 ; 2 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dje, i64 16
  %wide.load3177 = load <16 x i8>, ptr %i.dje, align 1, !tbaa !67
  %wide.load3178 = load <16 x i8>, ptr %i.djf, align 1, !tbaa !67
  %i.djg = add <16 x i8> %wide.load3177, %wide.load3175
  %i.djh = add <16 x i8> %wide.load3178, %wide.load3176
  %i.dji = getelementptr inbounds i8, ptr %i.dec, i64 %i.djb ; 2 uses
  %i.djj = getelementptr inbounds nuw i8, ptr %i.dji, i64 16
  store <16 x i8> %i.djg, ptr %i.dji, align 1, !tbaa !67
  store <16 x i8> %i.djh, ptr %i.djj, align 1, !tbaa !67
  %index.next3179 = add nuw i64 %index3174, 32    ; 2 uses
  %i.djk = icmp eq i64 %index.next3179, %n.vec3172
  br i1 %i.djk, label %middle.block3180, label %vector.body3173, !llvm.loop !177

middle.block3180:                                 ; preds = %vector.body3173
  br i1 %cmp.n3181, label %.preheader935, label %vec.epilog.iter.check3183

vec.epilog.iter.check3183:                        ; preds = %middle.block3180
  br i1 %min.epilog.iters.check3185, label %.lr.ph1628.preheader, label %vec.epilog.ph3186, !prof !272

vec.epilog.ph3186:                                ; preds = %vector.main.loop.iter.check3169, %vec.epilog.iter.check3183
  %vec.epilog.resume.val3187 = phi i64 [ %n.vec3172, %vec.epilog.iter.check3183 ], [ 0, %vector.main.loop.iter.check3169 ]
  br label %vec.epilog.vector.body3189

vec.epilog.vector.body3189:                       ; preds = %vec.epilog.vector.body3189, %vec.epilog.ph3186
  %index3190 = phi i64 [ %vec.epilog.resume.val3187, %vec.epilog.ph3186 ], [ %index.next3193, %vec.epilog.vector.body3189 ] ; 3 uses
  %i.djl = add nuw i64 %index3190, %i.dhy         ; 2 uses
  %i.djm = getelementptr inbounds i8, ptr %.77071634, i64 %i.djl
  %wide.load3191 = load <8 x i8>, ptr %i.djm, align 1, !tbaa !67
  %i.djn = getelementptr inbounds i8, ptr %i.dec, i64 %index3190
  %wide.load3192 = load <8 x i8>, ptr %i.djn, align 1, !tbaa !67
  %i.djo = add <8 x i8> %wide.load3192, %wide.load3191
  %i.djp = getelementptr inbounds i8, ptr %i.dec, i64 %i.djl
  store <8 x i8> %i.djo, ptr %i.djp, align 1, !tbaa !67
end_hunk_0
