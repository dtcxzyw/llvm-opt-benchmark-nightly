Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a

iter.check3140:                                   ; preds = %.preheader934
  %i.ddu = mul i64 %indvar, %i.ddf
  %i.ddv = sub i64 %i.ddu, %i.ddj
  %diff.check3125 = icmp ugt i64 %i.ddv, -32
  %or.cond = select i1 %min.iters.check3127, i1 true, i1 %diff.check3125
  br i1 %or.cond, label %.lr.ph1637.preheader, label %vector.main.loop.iter.check3128

vector.main.loop.iter.check3128:                  ; preds = %iter.check3140
  br i1 %min.iters.check3129, label %vec.epilog.ph3144, label %vector.body3132

vector.body3132:                                  ; preds = %vector.main.loop.iter.check3128, %vector.body3132
  %index3133 = phi i64 [ %index.next3136, %vector.body3132 ], [ 0, %vector.main.loop.iter.check3128 ] ; 3 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3133 ; 2 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddw, i64 16
  %wide.load3134 = load <16 x i8>, ptr %i.ddw, align 1, !tbaa !67
  %wide.load3135 = load <16 x i8>, ptr %i.ddx, align 1, !tbaa !67
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %index3133 ; 2 uses
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddy, i64 16
  store <16 x i8> %wide.load3134, ptr %i.ddy, align 1, !tbaa !67
  store <16 x i8> %wide.load3135, ptr %i.ddz, align 1, !tbaa !67
  %index.next3136 = add nuw i64 %index3133, 32    ; 2 uses
  %i.dea = icmp eq i64 %index.next3136, %n.vec3131
  br i1 %i.dea, label %middle.block3137, label %vector.body3132, !llvm.loop !164

middle.block3137:                                 ; preds = %vector.body3132
  br i1 %cmp.n3138, label %.preheader933, label %vec.epilog.iter.check3142

vec.epilog.iter.check3142:                        ; preds = %middle.block3137
  br i1 %min.epilog.iters.check3143, label %.lr.ph1637.preheader, label %vec.epilog.ph3144, !prof !273

vec.epilog.ph3144:                                ; preds = %vector.main.loop.iter.check3128, %vec.epilog.iter.check3142
  %vec.epilog.resume.val3139 = phi i64 [ %n.vec3131, %vec.epilog.iter.check3142 ], [ 0, %vector.main.loop.iter.check3128 ]
  br label %vec.epilog.vector.body3146

vec.epilog.vector.body3146:                       ; preds = %vec.epilog.vector.body3146, %vec.epilog.ph3144
  %index3147 = phi i64 [ %vec.epilog.resume.val3139, %vec.epilog.ph3144 ], [ %index.next3149, %vec.epilog.vector.body3146 ] ; 3 uses
  %i.deb = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3147
  %wide.load3148 = load <4 x i8>, ptr %i.deb, align 1, !tbaa !67
  %i.dec = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %index3147
  store <4 x i8> %wide.load3148, ptr %i.dec, align 1, !tbaa !67
  %index.next3149 = add nuw i64 %index3147, 4     ; 2 uses
  %i.ded = icmp eq i64 %index.next3149, %n.vec3145
  br i1 %i.ded, label %vec.epilog.middle.block3150, label %vec.epilog.vector.body3146, !llvm.loop !165

vec.epilog.middle.block3150:                      ; preds = %vec.epilog.vector.body3146
  br i1 %cmp.n3151, label %.preheader933, label %.lr.ph1637.preheader

.lr.ph1637.preheader:                             ; preds = %iter.check3140, %vec.epilog.iter.check3142, %vec.epilog.middle.block3150
  %indvars.iv1995.ph = phi i64 [ 0, %iter.check3140 ], [ %n.vec3131, %vec.epilog.iter.check3142 ], [ %n.vec3145, %vec.epilog.middle.block3150 ] ; 3 uses
  br i1 %lcmp.mod3762.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol

.lr.ph1637.prol:                                  ; preds = %.lr.ph1637.preheader, %.lr.ph1637.prol
  %indvars.iv1995.prol = phi i64 [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ], [ %indvars.iv1995.ph, %.lr.ph1637.preheader ] ; 3 uses
  %prol.iter3763 = phi i64 [ %prol.iter3763.next, %.lr.ph1637.prol ], [ 0, %.lr.ph1637.preheader ]
  %i.dee = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995.prol
  %i.def = load i8, ptr %i.dee, align 1, !tbaa !67
  %i.deg = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %indvars.iv1995.prol
  store i8 %i.def, ptr %i.deg, align 1, !tbaa !67
  %indvars.iv.next1996.prol = add nuw nsw i64 %indvars.iv1995.prol, 1 ; 2 uses
  %prol.iter3763.next = add i64 %prol.iter3763, 1 ; 2 uses
  %prol.iter3763.cmp.not = icmp eq i64 %prol.iter3763.next, %xtraiter3761
  br i1 %prol.iter3763.cmp.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol, !llvm.loop !166

.lr.ph1637.prol.loopexit:                         ; preds = %.lr.ph1637.prol, %.lr.ph1637.preheader
  %indvars.iv1995.unr = phi i64 [ %indvars.iv1995.ph, %.lr.ph1637.preheader ], [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ]
  %i.deh = sub nsw i64 %indvars.iv1995.ph, %wide.trip.count1998
  %i.dei = icmp ugt i64 %i.deh, -4
  br i1 %i.dei, label %.preheader933, label %.lr.ph1637

.preheader933:                                    ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637, %middle.block3137, %vec.epilog.middle.block3150, %.preheader934
  br i1 %i.ddd, label %iter.check3110, label %.preheader932

iter.check3110:                                   ; preds = %.preheader933
  br i1 %min.iters.check3094, label %.lr.ph1639.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check3110
  %i.dej = sub i64 %i.ddt, %i.ddj
  %diff.check = icmp ugt i64 %i.dej, -32
  %conflict.rdx = or i1 %diff.check, %diff.check3092
  br i1 %conflict.rdx, label %.lr.ph1639.preheader, label %vector.main.loop.iter.check3095

vector.main.loop.iter.check3095:                  ; preds = %vector.memcheck
  br i1 %min.iters.check3096, label %vec.epilog.ph3114, label %vector.body3099

vector.body3099:                                  ; preds = %vector.main.loop.iter.check3095, %vector.body3099
  %index3100 = phi i64 [ %index.next3105, %vector.body3099 ], [ 0, %vector.main.loop.iter.check3095 ] ; 3 uses
  %i.dek = add nuw i64 %index3100, %i.ddg         ; 2 uses
  %i.del = getelementptr inbounds i8, ptr %.67061645, i64 %i.dek ; 2 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %i.del, i64 16
  %wide.load3101 = load <16 x i8>, ptr %i.del, align 1, !tbaa !67
  %wide.load3102 = load <16 x i8>, ptr %i.dem, align 1, !tbaa !67
  %i.den = getelementptr inbounds i8, ptr %i.dcv, i64 %index3100 ; 2 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 16
  %wide.load3103 = load <16 x i8>, ptr %i.den, align 1, !tbaa !67
  %wide.load3104 = load <16 x i8>, ptr %i.deo, align 1, !tbaa !67
  %i.dep = add <16 x i8> %wide.load3103, %wide.load3101
  %i.deq = add <16 x i8> %wide.load3104, %wide.load3102
  %i.der = getelementptr inbounds i8, ptr %i.dcv, i64 %i.dek ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.der, i64 16
  store <16 x i8> %i.dep, ptr %i.der, align 1, !tbaa !67
  store <16 x i8> %i.deq, ptr %i.des, align 1, !tbaa !67
  %index.next3105 = add nuw i64 %index3100, 32    ; 2 uses
  %i.det = icmp eq i64 %index.next3105, %n.vec3098
  br i1 %i.det, label %middle.block3106, label %vector.body3099, !llvm.loop !167

middle.block3106:                                 ; preds = %vector.body3099
  br i1 %cmp.n3107, label %.preheader932, label %vec.epilog.iter.check3112

vec.epilog.iter.check3112:                        ; preds = %middle.block3106
  br i1 %min.epilog.iters.check3113, label %.lr.ph1639.preheader, label %vec.epilog.ph3114, !prof !272

vec.epilog.ph3114:                                ; preds = %vector.main.loop.iter.check3095, %vec.epilog.iter.check3112
  %vec.epilog.resume.val3108 = phi i64 [ %n.vec3098, %vec.epilog.iter.check3112 ], [ 0, %vector.main.loop.iter.check3095 ]
  br label %vec.epilog.vector.body3116

vec.epilog.vector.body3116:                       ; preds = %vec.epilog.vector.body3116, %vec.epilog.ph3114
  %index3117 = phi i64 [ %vec.epilog.resume.val3108, %vec.epilog.ph3114 ], [ %index.next3120, %vec.epilog.vector.body3116 ] ; 3 uses
  %i.deu = add nuw i64 %index3117, %i.ddg         ; 2 uses
  %i.dev = getelementptr inbounds i8, ptr %.67061645, i64 %i.deu
  %wide.load3118 = load <8 x i8>, ptr %i.dev, align 1, !tbaa !67
  %i.dew = getelementptr inbounds i8, ptr %i.dcv, i64 %index3117
  %wide.load3119 = load <8 x i8>, ptr %i.dew, align 1, !tbaa !67
  %i.dex = add <8 x i8> %wide.load3119, %wide.load3118
  %i.dey = getelementptr inbounds i8, ptr %i.dcv, i64 %i.deu
  store <8 x i8> %i.dex, ptr %i.dey, align 1, !tbaa !67
  %index.next3120 = add nuw i64 %index3117, 8     ; 2 uses
  %i.dez = icmp eq i64 %index.next3120, %n.vec3115
  br i1 %i.dez, label %vec.epilog.middle.block3121, label %vec.epilog.vector.body3116, !llvm.loop !168

vec.epilog.middle.block3121:                      ; preds = %vec.epilog.vector.body3116
  br i1 %cmp.n3122, label %.preheader932, label %.lr.ph1639.preheader

.lr.ph1639.preheader:                             ; preds = %vector.memcheck, %iter.check3110, %vec.epilog.iter.check3112, %vec.epilog.middle.block3121
  %indvars.iv2000.ph = phi i64 [ %i.ddg, %iter.check3110 ], [ %i.ddg, %vector.memcheck ], [ %i.ddr, %vec.epilog.iter.check3112 ], [ %i.dds, %vec.epilog.middle.block3121 ]
  br label %.lr.ph1639

.lr.ph1637:                                       ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996.3, %.lr.ph1637 ], [ %indvars.iv1995.unr, %.lr.ph1637.prol.loopexit ] ; 6 uses
  %i.dfa = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995
  %i.dfb = load i8, ptr %i.dfa, align 1, !tbaa !67
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %indvars.iv1995
  store i8 %i.dfb, ptr %i.dfc, align 1, !tbaa !67
  %indvars.iv.next1996 = add nuw nsw i64 %indvars.iv1995, 1 ; 2 uses
  %i.dfd = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996
  %i.dfe = load i8, ptr %i.dfd, align 1, !tbaa !67
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %indvars.iv.next1996
  store i8 %i.dfe, ptr %i.dff, align 1, !tbaa !67
  %indvars.iv.next1996.1 = add nuw nsw i64 %indvars.iv1995, 2 ; 2 uses
  %i.dfg = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.1
  %i.dfh = load i8, ptr %i.dfg, align 1, !tbaa !67
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %indvars.iv.next1996.1
  store i8 %i.dfh, ptr %i.dfi, align 1, !tbaa !67
  %indvars.iv.next1996.2 = add nuw nsw i64 %indvars.iv1995, 3 ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.2
  %i.dfk = load i8, ptr %i.dfj, align 1, !tbaa !67
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %indvars.iv.next1996.2
  store i8 %i.dfk, ptr %i.dfl, align 1, !tbaa !67
  %indvars.iv.next1996.3 = add nuw nsw i64 %indvars.iv1995, 4 ; 2 uses
  %exitcond1999.not.3 = icmp eq i64 %indvars.iv.next1996.3, %wide.trip.count1998
  br i1 %exitcond1999.not.3, label %.preheader933, label %.lr.ph1637, !llvm.loop !169

.preheader932:                                    ; preds = %.lr.ph1639, %middle.block3106, %vec.epilog.middle.block3121, %.preheader933
  br i1 %i.dde, label %._crit_edge1644.split, label %.preheader913.preheader

.preheader913.preheader:                          ; preds = %.preheader932
  %i.dfm = udiv i32 %.2724, %i.dch
  %i.dfn = icmp ult i32 %i.dfm, 2
  br label %.preheader913

.lr.ph1639:                                       ; preds = %.lr.ph1639.preheader, %.lr.ph1639
  %indvars.iv2000 = phi i64 [ %indvars.iv.next2001, %.lr.ph1639 ], [ %indvars.iv2000.ph, %.lr.ph1639.preheader ] ; 4 uses
  %i.dfo = getelementptr inbounds i8, ptr %.67061645, i64 %indvars.iv2000
  %i.dfp = load i8, ptr %i.dfo, align 1, !tbaa !67
  %i.dfq = sub nuw nsw i64 %indvars.iv2000, %i.ddg
  %i.dfr = getelementptr inbounds i8, ptr %i.dcv, i64 %i.dfq
  %i.dfs = load i8, ptr %i.dfr, align 1, !tbaa !67
  %i.dft = add i8 %i.dfs, %i.dfp
  %i.dfu = getelementptr inbounds i8, ptr %i.dcv, i64 %indvars.iv2000
  store i8 %i.dft, ptr %i.dfu, align 1, !tbaa !67
  %indvars.iv.next2001 = add nuw nsw i64 %indvars.iv2000, 1 ; 2 uses
  %i.dfv = trunc nsw i64 %indvars.iv.next2001 to i32
  %i.dfw = icmp ugt i32 %i.dcr, %i.dfv
  br i1 %i.dfw, label %.lr.ph1639, label %.preheader932, !llvm.loop !170

.preheader913:                                    ; preds = %.preheader913.preheader, %._crit_edge1642
  %indvars.iv2006 = phi i64 [ %indvars.iv.next2007, %._crit_edge1642 ], [ 0, %.preheader913.preheader ] ; 3 uses
  %i.dfx = mul nuw nsw i64 %indvars.iv2006, %i.ddh
  %invariant.gep2827 = getelementptr i8, ptr %i.dcv, i64 %indvars.iv2006 ; 3 uses
  %invariant.gep2829 = getelementptr inbounds nuw i8, ptr %.67061645, i64 %i.dfx ; 3 uses
  br i1 %i.dfn, label %.epil.preheader3764, label %.preheader913.new

._crit_edge1642.unr-lcssa:                        ; preds = %.preheader913.new
  br i1 %lcmp.mod3767.not, label %._crit_edge1642, label %.epil.preheader3764

.epil.preheader3764:                              ; preds = %._crit_edge1642.unr-lcssa, %.preheader913
  %indvars.iv2003.epil.init = phi i64 [ 0, %.preheader913 ], [ %indvars.iv.next2004.1, %._crit_edge1642.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3768)
  %i.dfy = xor i64 %indvars.iv2003.epil.init, -1
  %i.dfz = add nsw i64 %i.ddh, %i.dfy
  %i.dga = mul nsw i64 %i.dfz, %i.ddi
  %gep2828.epil = getelementptr i8, ptr %invariant.gep2827, i64 %i.dga
  %i.dgb = load i8, ptr %gep2828.epil, align 1, !tbaa !67
  %gep2830.epil = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003.epil.init
  store i8 %i.dgb, ptr %gep2830.epil, align 1, !tbaa !67
  br label %._crit_edge1642

._crit_edge1642:                                  ; preds = %._crit_edge1642.unr-lcssa, %.epil.preheader3764
  %indvars.iv.next2007 = add nuw nsw i64 %indvars.iv2006, 1 ; 2 uses
  %exitcond2010.not = icmp eq i64 %indvars.iv.next2007, %wide.trip.count2009
  br i1 %exitcond2010.not, label %._crit_edge1644.split, label %.preheader913, !llvm.loop !171

.preheader913.new:                                ; preds = %.preheader913, %.preheader913.new
  %indvars.iv2003 = phi i64 [ %indvars.iv.next2004.1, %.preheader913.new ], [ 0, %.preheader913 ] ; 5 uses
  %niter3770 = phi i64 [ %niter3770.next.1, %.preheader913.new ], [ 0, %.preheader913 ]
  %i.dgc = xor i64 %indvars.iv2003, -1
  %i.dgd = add nsw i64 %i.ddh, %i.dgc
  %i.dge = mul nsw i64 %i.dgd, %i.ddi
  %gep2828 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dge
  %i.dgf = load i8, ptr %gep2828, align 1, !tbaa !67
  %gep2830 = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  store i8 %i.dgf, ptr %gep2830, align 1, !tbaa !67
  %i.dgg = xor i64 %indvars.iv2003, -2
  %i.dgh = add nsw i64 %i.dgg, %i.ddh
  %i.dgi = mul nsw i64 %i.dgh, %i.ddi
  %gep2828.1 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dgi
  %i.dgj = load i8, ptr %gep2828.1, align 1, !tbaa !67
  %i.dgk = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  %gep2830.1 = getelementptr inbounds nuw i8, ptr %i.dgk, i64 1
  store i8 %i.dgj, ptr %gep2830.1, align 1, !tbaa !67
  %indvars.iv.next2004.1 = add nuw nsw i64 %indvars.iv2003, 2 ; 2 uses
  %niter3770.next.1 = add i64 %niter3770, 2       ; 2 uses
  %niter3770.ncmp.1.not = icmp eq i64 %niter3770.next.1, %unroll_iter3769
  br i1 %niter3770.ncmp.1.not, label %._crit_edge1642.unr-lcssa, label %.preheader913.new, !llvm.loop !172

._crit_edge1644.split:                            ; preds = %._crit_edge1642, %.preheader932
  %i.dgl = getelementptr inbounds i8, ptr %.67061645, i64 %i.ddf
  %i.dgm = add nuw nsw i32 %.161646, 1            ; 2 uses
  %exitcond2011.not = icmp eq i32 %i.dgm, %..12
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2011.not, label %.loopexit943, label %.preheader934, !llvm.loop !173

bb.rf:                                            ; preds = %bb.rd, %bb.rd
  %i.dgn = icmp sgt i32 %..12, 0
  br i1 %i.dgn, label %.preheader937.lr.ph, label %.loopexit943

.preheader937.lr.ph:                              ; preds = %bb.rf
  %i.dgo = icmp sgt i32 %.0699, 0
  %i.dgp = icmp ult i32 %.0699, %i.dcr
  %i.dgq = icmp slt i32 %i.dct, 1
  %i.dgr = sext i32 %.1726 to i64                 ; 3 uses
  %i.dgs = sext i32 %.0699 to i64                 ; 8 uses
  %i.dgt = zext i32 %i.dct to i64                 ; 6 uses
  %i.dgu = zext i32 %spec.select832 to i64        ; 3 uses
  %wide.trip.count1981 = zext i32 %.0699 to i64   ; 8 uses
  %i.dgv = sub i64 %i.dcw, %i.dcl                 ; 2 uses
  %i.dgw = xor i32 %.0699, -1
  %i.dgx = add i32 %i.dcr, %i.dgw                 ; 3 uses
  %i.dgy = zext i32 %i.dgx to i64
  %i.dgz = add nuw nsw i64 %i.dgy, 1              ; 5 uses
  %min.iters.check3193 = icmp ult i32 %.0699, 4
  %min.iters.check3195 = icmp ult i32 %.0699, 32
  %i.dha = and i64 %wide.trip.count1981, 28
  %n.vec3197 = and i64 %wide.trip.count1981, 2147483616 ; 4 uses
  %cmp.n3204 = icmp eq i64 %n.vec3197, %wide.trip.count1981
  %min.epilog.iters.check3209 = icmp eq i64 %i.dha, 0
  %n.vec3211 = and i64 %wide.trip.count1981, 2147483644 ; 3 uses
  %cmp.n3217 = icmp eq i64 %n.vec3211, %wide.trip.count1981
  %xtraiter3750 = and i64 %wide.trip.count1981, 3 ; 2 uses
  %lcmp.mod3751.not = icmp eq i64 %xtraiter3750, 0
  %min.iters.check3160 = icmp ult i32 %i.dgx, 7
  %i.dhb = add nsw i64 %i.dgs, -1
  %diff.check3157 = icmp ult i64 %i.dhb, 31
  %min.iters.check3162 = icmp ult i32 %i.dgx, 31
  %i.dhc = and i64 %i.dgz, 24
  %n.vec3164 = and i64 %i.dgz, 8589934560         ; 4 uses
  %i.dhd = add nsw i64 %n.vec3164, %i.dgs
  %cmp.n3173 = icmp eq i64 %i.dgz, %n.vec3164
  %min.epilog.iters.check3179 = icmp eq i64 %i.dhc, 0
  %n.vec3181 = and i64 %i.dgz, 8589934584         ; 3 uses
  %i.dhe = add nsw i64 %n.vec3181, %i.dgs
  %cmp.n3188 = icmp eq i64 %i.dgz, %n.vec3181
  %xtraiter3753 = and i64 %i.dgu, 3               ; 3 uses
  %unroll_iter3757 = and i64 %i.dgu, 4294967292
  %lcmp.mod3755.not = icmp eq i64 %xtraiter3753, 0
  %lcmp.mod3756 = icmp ne i64 %xtraiter3753, 0
  br label %.preheader937

.preheader937:                                    ; preds = %.preheader937.lr.ph, %._crit_edge1633.split
  %indvar3154 = phi i64 [ 0, %.preheader937.lr.ph ], [ %indvar.next3155, %._crit_edge1633.split ] ; 3 uses
  %.171635 = phi i32 [ 0, %.preheader937.lr.ph ], [ %i.djv, %._crit_edge1633.split ]
  %.77071634 = phi ptr [ %i.dck, %.preheader937.lr.ph ], [ %i.dju, %._crit_edge1633.split ] ; 12 uses
  %i.dhf = mul i64 %indvar3154, %i.dgr
  br i1 %i.dgo, label %iter.check3206, label %.preheader936

iter.check3206:                                   ; preds = %.preheader937
  %i.dhg = mul i64 %indvar3154, %i.dgr
  %i.dhh = sub i64 %i.dhg, %i.dgv
  %diff.check3191 = icmp ugt i64 %i.dhh, -32
  %or.cond3469 = select i1 %min.iters.check3193, i1 true, i1 %diff.check3191
  br i1 %or.cond3469, label %.lr.ph1626.preheader, label %vector.main.loop.iter.check3194

vector.main.loop.iter.check3194:                  ; preds = %iter.check3206
  br i1 %min.iters.check3195, label %vec.epilog.ph3210, label %vector.body3198

vector.body3198:                                  ; preds = %vector.main.loop.iter.check3194, %vector.body3198
  %index3199 = phi i64 [ %index.next3202, %vector.body3198 ], [ 0, %vector.main.loop.iter.check3194 ] ; 3 uses
  %i.dhi = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3199 ; 2 uses
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dhi, i64 16
  %wide.load3200 = load <16 x i8>, ptr %i.dhi, align 1, !tbaa !67
  %wide.load3201 = load <16 x i8>, ptr %i.dhj, align 1, !tbaa !67
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %index3199 ; 2 uses
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.dhk, i64 16
  store <16 x i8> %wide.load3200, ptr %i.dhk, align 1, !tbaa !67
  store <16 x i8> %wide.load3201, ptr %i.dhl, align 1, !tbaa !67
  %index.next3202 = add nuw i64 %index3199, 32    ; 2 uses
  %i.dhm = icmp eq i64 %index.next3202, %n.vec3197
  br i1 %i.dhm, label %middle.block3203, label %vector.body3198, !llvm.loop !174

middle.block3203:                                 ; preds = %vector.body3198
  br i1 %cmp.n3204, label %.preheader936, label %vec.epilog.iter.check3208

vec.epilog.iter.check3208:                        ; preds = %middle.block3203
  br i1 %min.epilog.iters.check3209, label %.lr.ph1626.preheader, label %vec.epilog.ph3210, !prof !273

vec.epilog.ph3210:                                ; preds = %vector.main.loop.iter.check3194, %vec.epilog.iter.check3208
  %vec.epilog.resume.val3205 = phi i64 [ %n.vec3197, %vec.epilog.iter.check3208 ], [ 0, %vector.main.loop.iter.check3194 ]
  br label %vec.epilog.vector.body3212

vec.epilog.vector.body3212:                       ; preds = %vec.epilog.vector.body3212, %vec.epilog.ph3210
  %index3213 = phi i64 [ %vec.epilog.resume.val3205, %vec.epilog.ph3210 ], [ %index.next3215, %vec.epilog.vector.body3212 ] ; 3 uses
  %i.dhn = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3213
  %wide.load3214 = load <4 x i8>, ptr %i.dhn, align 1, !tbaa !67
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %index3213
  store <4 x i8> %wide.load3214, ptr %i.dho, align 1, !tbaa !67
  %index.next3215 = add nuw i64 %index3213, 4     ; 2 uses
  %i.dhp = icmp eq i64 %index.next3215, %n.vec3211
  br i1 %i.dhp, label %vec.epilog.middle.block3216, label %vec.epilog.vector.body3212, !llvm.loop !175

vec.epilog.middle.block3216:                      ; preds = %vec.epilog.vector.body3212
  br i1 %cmp.n3217, label %.preheader936, label %.lr.ph1626.preheader

.lr.ph1626.preheader:                             ; preds = %iter.check3206, %vec.epilog.iter.check3208, %vec.epilog.middle.block3216
  %indvars.iv1978.ph = phi i64 [ 0, %iter.check3206 ], [ %n.vec3197, %vec.epilog.iter.check3208 ], [ %n.vec3211, %vec.epilog.middle.block3216 ] ; 3 uses
  br i1 %lcmp.mod3751.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol

.lr.ph1626.prol:                                  ; preds = %.lr.ph1626.preheader, %.lr.ph1626.prol
  %indvars.iv1978.prol = phi i64 [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ], [ %indvars.iv1978.ph, %.lr.ph1626.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1626.prol ], [ 0, %.lr.ph1626.preheader ]
  %i.dhq = getelementptr inbounds nuw i8, ptr %.77071634, i64 %indvars.iv1978.prol
  %i.dhr = load i8, ptr %i.dhq, align 1, !tbaa !67
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dcv, i64 %indvars.iv1978.prol
  store i8 %i.dhr, ptr %i.dhs, align 1, !tbaa !67
  %indvars.iv.next1979.prol = add nuw nsw i64 %indvars.iv1978.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3750
  br i1 %prol.iter.cmp.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol, !llvm.loop !176

.lr.ph1626.prol.loopexit:                         ; preds = %.lr.ph1626.prol, %.lr.ph1626.preheader
  %indvars.iv1978.unr = phi i64 [ %indvars.iv1978.ph, %.lr.ph1626.preheader ], [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ]
  %i.dht = sub nsw i64 %indvars.iv1978.ph, %wide.trip.count1981
  %i.dhu = icmp ugt i64 %i.dht, -4
  br i1 %i.dhu, label %.preheader936, label %.lr.ph1626

.preheader936:                                    ; preds = %.lr.ph1626.prol.loopexit, %.lr.ph1626, %middle.block3203, %vec.epilog.middle.block3216, %.preheader937
  br i1 %i.dgp, label %iter.check3176, label %.preheader935

iter.check3176:                                   ; preds = %.preheader936
  br i1 %min.iters.check3160, label %.lr.ph1628.preheader, label %vector.memcheck3153

vector.memcheck3153:                              ; preds = %iter.check3176
  %i.dhv = sub i64 %i.dhf, %i.dgv
  %diff.check3156 = icmp ugt i64 %i.dhv, -32
  %conflict.rdx3158 = or i1 %diff.check3156, %diff.check3157
  br i1 %conflict.rdx3158, label %.lr.ph1628.preheader, label %vector.main.loop.iter.check3161

vector.main.loop.iter.check3161:                  ; preds = %vector.memcheck3153
  br i1 %min.iters.check3162, label %vec.epilog.ph3180, label %vector.body3165

vector.body3165:                                  ; preds = %vector.main.loop.iter.check3161, %vector.body3165
  %index3166 = phi i64 [ %index.next3171, %vector.body3165 ], [ 0, %vector.main.loop.iter.check3161 ] ; 3 uses
  %i.dhw = add nuw i64 %index3166, %i.dgs         ; 2 uses
  %i.dhx = getelementptr inbounds i8, ptr %.77071634, i64 %i.dhw ; 2 uses
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 16
  %wide.load3167 = load <16 x i8>, ptr %i.dhx, align 1, !tbaa !67
  %wide.load3168 = load <16 x i8>, ptr %i.dhy, align 1, !tbaa !67
  %i.dhz = getelementptr inbounds i8, ptr %i.dcv, i64 %index3166 ; 2 uses
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dhz, i64 16
  %wide.load3169 = load <16 x i8>, ptr %i.dhz, align 1, !tbaa !67
  %wide.load3170 = load <16 x i8>, ptr %i.dia, align 1, !tbaa !67
  %i.dib = add <16 x i8> %wide.load3169, %wide.load3167
  %i.dic = add <16 x i8> %wide.load3170, %wide.load3168
  %i.did = getelementptr inbounds i8, ptr %i.dcv, i64 %i.dhw ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 16
  store <16 x i8> %i.dib, ptr %i.did, align 1, !tbaa !67
  store <16 x i8> %i.dic, ptr %i.die, align 1, !tbaa !67
  %index.next3171 = add nuw i64 %index3166, 32    ; 2 uses
  %i.dif = icmp eq i64 %index.next3171, %n.vec3164
  br i1 %i.dif, label %middle.block3172, label %vector.body3165, !llvm.loop !177

middle.block3172:                                 ; preds = %vector.body3165
  br i1 %cmp.n3173, label %.preheader935, label %vec.epilog.iter.check3178

vec.epilog.iter.check3178:                        ; preds = %middle.block3172
  br i1 %min.epilog.iters.check3179, label %.lr.ph1628.preheader, label %vec.epilog.ph3180, !prof !272

vec.epilog.ph3180:                                ; preds = %vector.main.loop.iter.check3161, %vec.epilog.iter.check3178
  %vec.epilog.resume.val3174 = phi i64 [ %n.vec3164, %vec.epilog.iter.check3178 ], [ 0, %vector.main.loop.iter.check3161 ]
  br label %vec.epilog.vector.body3182

vec.epilog.vector.body3182:                       ; preds = %vec.epilog.vector.body3182, %vec.epilog.ph3180
  %index3183 = phi i64 [ %vec.epilog.resume.val3174, %vec.epilog.ph3180 ], [ %index.next3186, %vec.epilog.vector.body3182 ] ; 3 uses
  %i.dig = add nuw i64 %index3183, %i.dgs         ; 2 uses
  %i.dih = getelementptr inbounds i8, ptr %.77071634, i64 %i.dig
  %wide.load3184 = load <8 x i8>, ptr %i.dih, align 1, !tbaa !67
  %i.dii = getelementptr inbounds i8, ptr %i.dcv, i64 %index3183
  %wide.load3185 = load <8 x i8>, ptr %i.dii, align 1, !tbaa !67
  %i.dij = add <8 x i8> %wide.load3185, %wide.load3184
  %i.dik = getelementptr inbounds i8, ptr %i.dcv, i64 %i.dig
  store <8 x i8> %i.dij, ptr %i.dik, align 1, !tbaa !67
  %index.next3186 = add nuw i64 %index3183, 8     ; 2 uses
  %i.dil = icmp eq i64 %index.next3186, %n.vec3181
  br i1 %i.dil, label %vec.epilog.middle.block3187, label %vec.epilog.vector.body3182, !llvm.loop !178

vec.epilog.middle.block3187:                      ; preds = %vec.epilog.vector.body3182
end_hunk_0
