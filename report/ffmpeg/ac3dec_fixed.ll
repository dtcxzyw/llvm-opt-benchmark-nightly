Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3dec_fixed?download=true
inline.NumInlined: 135
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ac3_decode_frame:bb.a
  %indvars.iv98.i.epil.init = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next99.i.3, %.lr.ph88.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph82.i ], [ %i.aks, %.lr.ph88.i.unr-lcssa ]
  %lcmp.mod1356 = icmp ne i64 %xtraiter1352, 0
  call void @llvm.assume(i1 %lcmp.mod1356)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.epil.preheader1351
  %indvars.iv98.i.epil = phi i64 [ %indvars.iv98.i.epil.init, %.epil.preheader1351 ], [ %indvars.iv.next99.i.epil, %bb.cy ] ; 3 uses
  %i.akt = phi <2 x float> [ %.epil.init, %.epil.preheader1351 ], [ %i.ala, %bb.cy ]
  %epil.iter = phi i64 [ 0, %.epil.preheader1351 ], [ %epil.iter.next, %bb.cy ]
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv98.i.epil
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !29
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv98.i.epil
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !29
  %i.aky = insertelement <2 x float> poison, float %i.akv, i64 0
  %i.akz = insertelement <2 x float> %i.aky, float %i.akx, i64 1
  %i.ala = fadd nsz <2 x float> %i.akt, %i.akz    ; 2 uses
  %indvars.iv.next99.i.epil = add nuw nsw i64 %indvars.iv98.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1352
  br i1 %epil.iter.cmp.not, label %.lr.ph88.i, label %bb.cy, !llvm.loop !80

.lr.ph88.i:                                       ; preds = %bb.cy, %.lr.ph88.i.unr-lcssa
  %.lcssa1299 = phi <2 x float> [ %i.aks, %.lr.ph88.i.unr-lcssa ], [ %i.ala, %bb.cy ]
  %i.alb = fdiv nsz <2 x float> splat (float 1.000000e+00), %.lcssa1299 ; 3 uses
  %xtraiter1360 = and i64 %wide.trip.count101.i, 1
  %i.alc = icmp eq i32 %i.ahl, 1
  br i1 %i.alc, label %.epil.preheader1359, label %.lr.ph88.i.new

.lr.ph88.i.new:                                   ; preds = %.lr.ph88.i
  %unroll_iter1364 = and i64 %wide.trip.count101.i, 2147483646
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.lr.ph88.i.new
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph88.i.new ], [ %indvars.iv.next104.i.1, %bb.cz ] ; 4 uses
  %niter1365 = phi i64 [ 0, %.lr.ph88.i.new ], [ %niter1365.next.1, %bb.cz ]
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv103.i ; 2 uses
  %i.ale = load float, ptr %i.ald, align 8, !tbaa !29
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv103.i ; 2 uses
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !29
  %i.alh = insertelement <2 x float> poison, float %i.ale, i64 0
  %i.ali = insertelement <2 x float> %i.alh, float %i.alg, i64 1
  %i.alj = fmul nsz <2 x float> %i.alb, %i.ali    ; 2 uses
  %i.alk = extractelement <2 x float> %i.alj, i64 0
  store float %i.alk, ptr %i.ald, align 8, !tbaa !29
  %i.all = extractelement <2 x float> %i.alj, i64 1
  store float %i.all, ptr %i.alf, align 4, !tbaa !29
  %indvars.iv.next104.i = or disjoint i64 %indvars.iv103.i, 1 ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next104.i ; 2 uses
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !29
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next104.i ; 2 uses
  %i.alp = load float, ptr %i.alo, align 8, !tbaa !29
  %i.alq = insertelement <2 x float> poison, float %i.aln, i64 0
  %i.alr = insertelement <2 x float> %i.alq, float %i.alp, i64 1
  %i.als = fmul nsz <2 x float> %i.alb, %i.alr    ; 2 uses
  %i.alt = extractelement <2 x float> %i.als, i64 0
  store float %i.alt, ptr %i.alm, align 4, !tbaa !29
  %i.alu = extractelement <2 x float> %i.als, i64 1
  store float %i.alu, ptr %i.alo, align 8, !tbaa !29
  %indvars.iv.next104.i.1 = add nuw nsw i64 %indvars.iv103.i, 2 ; 2 uses
  %niter1365.next.1 = add i64 %niter1365, 2       ; 2 uses
  %niter1365.ncmp.1 = icmp eq i64 %niter1365.next.1, %unroll_iter1364
  br i1 %niter1365.ncmp.1, label %._crit_edge89.i.unr-lcssa, label %bb.cz, !llvm.loop !81

._crit_edge89.i.unr-lcssa:                        ; preds = %bb.cz
  %lcmp.mod1362.not = icmp eq i64 %xtraiter1360, 0
  br i1 %lcmp.mod1362.not, label %._crit_edge89.i, label %.epil.preheader1359

.epil.preheader1359:                              ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i
  %indvars.iv103.i.epil.init = phi i64 [ 0, %.lr.ph88.i ], [ %indvars.iv.next104.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1363 = trunc i32 %i.ahl to i1
  call void @llvm.assume(i1 %lcmp.mod1363)
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv103.i.epil.init ; 2 uses
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !29
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv103.i.epil.init ; 2 uses
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !29
  %i.alz = insertelement <2 x float> poison, float %i.alw, i64 0
  %i.ama = insertelement <2 x float> %i.alz, float %i.aly, i64 1
  %i.amb = fmul nsz <2 x float> %i.alb, %i.ama    ; 2 uses
  %i.amc = extractelement <2 x float> %i.amb, i64 0
  store float %i.amc, ptr %i.alv, align 4, !tbaa !29
  %i.amd = extractelement <2 x float> %i.amb, i64 1
  store float %i.amd, ptr %i.alx, align 4, !tbaa !29
  br label %._crit_edge89.i

._crit_edge89.i:                                  ; preds = %._crit_edge89.i.unr-lcssa, %.epil.preheader1359
  %i.ame = load i32, ptr %i.es, align 4, !tbaa !240
  %i.amf = icmp eq i32 %i.ame, 1
  br i1 %i.amf, label %.lr.ph91.i.preheader, label %.lr.ph94.i

.lr.ph91.i.preheader:                             ; preds = %._crit_edge89.i
  %min.iters.check1239 = icmp ult i32 %i.ahl, 8
  br i1 %min.iters.check1239, label %.lr.ph91.i.preheader1290, label %vector.ph1240

vector.ph1240:                                    ; preds = %.lr.ph91.i.preheader
  %n.vec1241 = and i64 %wide.trip.count101.i, 2147483640 ; 3 uses
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1248, %vector.body1242 ] ; 3 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index1243 ; 3 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 16 ; 2 uses
  %wide.load1244 = load <4 x float>, ptr %i.amg, align 16, !tbaa !29
  %wide.load1245 = load <4 x float>, ptr %i.amh, align 16, !tbaa !29
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %index1243 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  %wide.load1246 = load <4 x float>, ptr %i.ami, align 4, !tbaa !29
  %wide.load1247 = load <4 x float>, ptr %i.amj, align 4, !tbaa !29
  %i.amk = fadd nsz <4 x float> %wide.load1244, %wide.load1246
  %i.aml = fadd nsz <4 x float> %wide.load1245, %wide.load1247
  %i.amm = fpext nsz <4 x float> %i.amk to <4 x double>
  %i.amn = fpext nsz <4 x float> %i.aml to <4 x double>
  %i.amo = fmul nsz <4 x double> %i.amm, splat (double f0x3FE6A09E667F3BCD)
  %i.amp = fmul nsz <4 x double> %i.amn, splat (double f0x3FE6A09E667F3BCD)
  %i.amq = fptrunc nsz <4 x double> %i.amo to <4 x float>
  %i.amr = fptrunc nsz <4 x double> %i.amp to <4 x float>
  store <4 x float> %i.amq, ptr %i.amg, align 16, !tbaa !29
  store <4 x float> %i.amr, ptr %i.amh, align 16, !tbaa !29
  %index.next1248 = add nuw i64 %index1243, 8     ; 2 uses
  %i.ams = icmp eq i64 %index.next1248, %n.vec1241
  br i1 %i.ams, label %middle.block1249, label %vector.body1242, !llvm.loop !82

middle.block1249:                                 ; preds = %vector.body1242
  %cmp.n1250 = icmp eq i64 %n.vec1241, %wide.trip.count101.i
  br i1 %cmp.n1250, label %.lr.ph94.i, label %.lr.ph91.i.preheader1290

.lr.ph91.i.preheader1290:                         ; preds = %.lr.ph91.i.preheader, %middle.block1249
  %indvars.iv108.i.ph = phi i64 [ 0, %.lr.ph91.i.preheader ], [ %n.vec1241, %middle.block1249 ]
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.preheader1290, %.lr.ph91.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %.lr.ph91.i ], [ %indvars.iv108.i.ph, %.lr.ph91.i.preheader1290 ] ; 3 uses
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv108.i ; 2 uses
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !29
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv108.i
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !29
  %i.amx = fadd nsz float %i.amu, %i.amw
  %i.amy = fpext nsz float %i.amx to double
  %i.amz = fmul nsz double %i.amy, f0x3FE6A09E667F3BCD
  %i.ana = fptrunc nsz double %i.amz to float
  store float %i.ana, ptr %i.amt, align 4, !tbaa !29
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count101.i
  br i1 %exitcond112.not.i, label %.lr.ph94.i, label %.lr.ph91.i, !llvm.loop !83

.lr.ph94.i:                                       ; preds = %.lr.ph91.i, %middle.block1249, %._crit_edge89.i
  %i.anb = load ptr, ptr %i.fg, align 8, !tbaa !52 ; 3 uses
  %min.iters.check1225 = icmp ult i32 %i.ahl, 4
  %i.anc = ptrtoaddr ptr %i.anb to i64
  %i.and = sub i64 %i.ahk, %i.anc
  %diff.check1227 = icmp ugt i64 %i.and, -8
  %or.cond1275 = select i1 %min.iters.check1225, i1 true, i1 %diff.check1227
  br i1 %or.cond1275, label %scalar.ph1224.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %.lr.ph94.i
  %n.vec1229 = and i64 %wide.trip.count101.i, 2147483644 ; 3 uses
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1234, %vector.body1230 ] ; 5 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index1231
  %wide.load1232 = load <4 x float>, ptr %i.ane, align 16, !tbaa !29
  %i.anf = fmul nsz <4 x float> %wide.load1232, splat (float 4.096000e+03)
  %i.ang = fpext nsz <4 x float> %i.anf to <4 x double>
  %i.anh = fadd nsz <4 x double> %i.ang, splat (double 5.000000e-01)
  %i.ani = fptosi <4 x double> %i.anh to <4 x i32>
  %i.anj = trunc <4 x i32> %i.ani to <4 x i16>
  %i.ank = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %index1231
  store <4 x i16> %i.anj, ptr %i.ank, align 2, !tbaa !53
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %index1231
  %wide.load1233 = load <4 x float>, ptr %i.anl, align 4, !tbaa !29
  %i.anm = fmul nsz <4 x float> %wide.load1233, splat (float 4.096000e+03)
  %i.ann = fpext nsz <4 x float> %i.anm to <4 x double>
  %i.ano = fadd nsz <4 x double> %i.ann, splat (double 5.000000e-01)
  %i.anp = fptosi <4 x double> %i.ano to <4 x i32>
  %i.anq = trunc <4 x i32> %i.anp to <4 x i16>
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %i.anb, i64 %index1231
  store <4 x i16> %i.anq, ptr %i.anr, align 2, !tbaa !53
  %index.next1234 = add nuw i64 %index1231, 4     ; 2 uses
  %i.ans = icmp eq i64 %index.next1234, %n.vec1229
  br i1 %i.ans, label %middle.block1235, label %vector.body1230, !llvm.loop !84

middle.block1235:                                 ; preds = %vector.body1230
  %cmp.n1236 = icmp eq i64 %n.vec1229, %wide.trip.count101.i
  br i1 %cmp.n1236, label %set_downmix_coeffs.exit.thread, label %scalar.ph1224.preheader

scalar.ph1224.preheader:                          ; preds = %.lr.ph94.i, %middle.block1235
  %indvars.iv113.i.ph = phi i64 [ 0, %.lr.ph94.i ], [ %n.vec1229, %middle.block1235 ]
  br label %scalar.ph1224

scalar.ph1224:                                    ; preds = %scalar.ph1224.preheader, %scalar.ph1224
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i, %scalar.ph1224 ], [ %indvars.iv113.i.ph, %scalar.ph1224.preheader ] ; 5 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv113.i
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !29
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %indvars.iv113.i
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv113.i
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !29
  %i.any = insertelement <2 x float> poison, float %i.anu, i64 0
  %i.anz = insertelement <2 x float> %i.any, float %i.anx, i64 1
  %i.aoa = fmul nsz <2 x float> %i.anz, splat (float 4.096000e+03)
  %i.aob = fpext <2 x float> %i.aoa to <2 x double>
  %i.aoc = fadd nsz <2 x double> %i.aob, splat (double 5.000000e-01)
  %i.aod = fptosi <2 x double> %i.aoc to <2 x i32>
  %i.aoe = trunc <2 x i32> %i.aod to <2 x i16>    ; 2 uses
  %i.aof = extractelement <2 x i16> %i.aoe, i64 0
  store i16 %i.aof, ptr %i.anv, align 2, !tbaa !53
  %i.aog = getelementptr inbounds nuw [2 x i8], ptr %i.anb, i64 %indvars.iv113.i
  %i.aoh = extractelement <2 x i16> %i.aoe, i64 1
  store i16 %i.aoh, ptr %i.aog, align 2, !tbaa !53
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next114.i, %wide.trip.count101.i
  br i1 %exitcond117.not.i, label %set_downmix_coeffs.exit.thread, label %scalar.ph1224, !llvm.loop !85

set_downmix_coeffs.exit.thread:                   ; preds = %scalar.ph1224, %middle.block1235, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %.preheader584

bb.da:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.23) #11
  br label %.thread554

bb.db:                                            ; preds = %bb.cd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.24) #11
  br label %.thread554

.preheader584:                                    ; preds = %bb.ce, %set_downmix_coeffs.exit.thread, %bb.cl, %bb.cn
  %i.aoi = load i32, ptr %i.es, align 4, !tbaa !240 ; 2 uses
  %i.aoj = and i32 %i.aoi, -9
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds [2 x i8], ptr @ff_ac3_channel_layout_tab, i64 %i.aok
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !53
  %i.aon = and i32 %i.aoi, 8
  %i.aoo = zext i16 %i.aom to i32
  %spec.select568 = or i32 %i.aon, %i.aoo
  %spec.select = zext nneg i32 %spec.select568 to i64
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.fk) #11
  %i.aop = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.fk, i64 noundef %spec.select) #11 ; 0 uses
  %i.aoq = load i32, ptr %i.ax, align 16, !tbaa !222 ; 3 uses
  store i32 %i.aoq, ptr %i.fl, align 4, !tbaa !250
  %i.aor = icmp eq i32 %i.aoq, 7
  %.pre830 = load i32, ptr %i.bh, align 16, !tbaa !183 ; 5 uses
  %i.aos = icmp sgt i32 %.pre830, 1
  %or.cond1048 = select i1 %i.aor, i1 %i.aos, i1 false
  %spec.store.select = select i1 %or.cond1048, i32 8, i32 %i.aoq
  store i32 %spec.store.select, ptr %i.fl, align 4, !tbaa !250
  %i.aot = load i32, ptr %i.es, align 4, !tbaa !240
  %i.aou = load i32, ptr %i.az, align 8, !tbaa !237
  %i.aov = load i32, ptr %i.bx, align 16, !tbaa !199
  %i.aow = icmp eq i32 %i.aov, 1
  %i.aox = select i1 %i.aow, i32 7, i32 0         ; 2 uses
  %i.aoy = zext nneg i32 %i.aox to i64            ; 11 uses
  %i.aoz = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy ; 2 uses
  store ptr %i.aoz, ptr %i.h, align 16, !tbaa !52
  store ptr %i.aoz, ptr %i.fn, align 16, !tbaa !52
  %i.apa = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 512 ; 2 uses
  store ptr %i.apb, ptr %i.il, align 8, !tbaa !52
  store ptr %i.apb, ptr %i.im, align 8, !tbaa !52
  %i.apc = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 1024 ; 2 uses
  store ptr %i.apd, ptr %i.in, align 16, !tbaa !52
  store ptr %i.apd, ptr %i.io, align 16, !tbaa !52
  %i.ape = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 1536 ; 2 uses
  store ptr %i.apf, ptr %i.ip, align 8, !tbaa !52
  store ptr %i.apf, ptr %i.iq, align 8, !tbaa !52
  %i.apg = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 2048 ; 2 uses
  store ptr %i.aph, ptr %i.ir, align 16, !tbaa !52
  store ptr %i.aph, ptr %i.is, align 16, !tbaa !52
  %i.api = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 2560 ; 2 uses
  store ptr %i.apj, ptr %i.it, align 8, !tbaa !52
  store ptr %i.apj, ptr %i.iu, align 8, !tbaa !52
  %i.apk = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 3072 ; 2 uses
  store ptr %i.apl, ptr %i.iv, align 16, !tbaa !52
  store ptr %i.apl, ptr %i.iw, align 16, !tbaa !52
  %i.apm = and i32 %i.aot, -9
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [12 x i8], ptr @ff_ac3_dec_channel_map, i64 %i.apn
  %i.app = sext i32 %i.aou to i64
  %i.apq = getelementptr inbounds [6 x i8], ptr %i.apo, i64 %i.app ; 14 uses
  %i.apr = icmp sgt i32 %.pre830, 0
  br i1 %i.apr, label %.lr.ph, label %.preheader583

.lr.ph:                                           ; preds = %.preheader584
  %i.aps = load i32, ptr %i.er, align 4, !tbaa !239
  %i.apt = sext i32 %i.aps to i64                 ; 3 uses
  %wide.trip.count = zext nneg i32 %.pre830 to i64 ; 2 uses
  %invariant.gep1040 = getelementptr inbounds nuw [3072 x i8], ptr %i.fo, i64 %i.aoy ; 3 uses
  %xtraiter1367 = and i64 %wide.trip.count, 1
  %i.apu = icmp eq i32 %.pre830, 1
  br i1 %i.apu, label %.epil.preheader1366, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter1371 = and i64 %wide.trip.count, 2147483646
  br label %bb.dd

.preheader583.loopexit.unr-lcssa:                 ; preds = %bb.dh
  %lcmp.mod1369.not = icmp eq i64 %xtraiter1367, 0
  br i1 %lcmp.mod1369.not, label %.preheader583, label %.epil.preheader1366

.epil.preheader1366:                              ; preds = %.preheader583.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader583.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1370 = trunc i32 %.pre830 to i1
  call void @llvm.assume(i1 %lcmp.mod1370)
  %i.apv = icmp slt i64 %indvars.iv.epil.init, %i.apt
  br i1 %i.apv, label %bb.dc, label %.preheader583

bb.dc:                                            ; preds = %.epil.preheader1366
  %gep1041.epil = getelementptr inbounds nuw [3072 x i8], ptr %invariant.gep1040, i64 %indvars.iv.epil.init
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apq, i64 %indvars.iv.epil.init
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !44
  %i.apy = zext i8 %i.apx to i64
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.apy
  store ptr %gep1041.epil, ptr %i.apz, align 8, !tbaa !52
  br label %.preheader583

.preheader583:                                    ; preds = %.preheader583.loopexit.unr-lcssa, %bb.dc, %.epil.preheader1366, %.preheader584
  %i.aqa = load i32, ptr %i.bv, align 8, !tbaa !197
  %i.aqb = icmp sgt i32 %i.aqa, 0
  br i1 %i.aqb, label %.lr.ph692, label %.preheader583..preheader582_crit_edge

.preheader583..preheader582_crit_edge:            ; preds = %.preheader583
  %.pre844 = load i32, ptr %i.er, align 4, !tbaa !239
  br label %.preheader582

.lr.ph692:                                        ; preds = %.preheader583
  %invariant.gep.i.i481 = getelementptr [1024 x i8], ptr %i.hw, i64 %i.aoy ; 4 uses
  %invariant.gep1044 = getelementptr inbounds nuw [3072 x i8], ptr %i.fo, i64 %i.aoy
  br label %bb.di

bb.dd:                                            ; preds = %bb.dh, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.dh ] ; 5 uses
  %niter1372 = phi i64 [ 0, %.lr.ph.new ], [ %niter1372.next.1, %bb.dh ]
  %i.aqc = icmp slt i64 %indvars.iv, %i.apt
  br i1 %i.aqc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %gep1041 = getelementptr inbounds nuw [3072 x i8], ptr %invariant.gep1040, i64 %indvars.iv
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apq, i64 %indvars.iv
  %i.aqe = load i8, ptr %i.aqd, align 2, !tbaa !44
  %i.aqf = zext i8 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.aqf
  store ptr %gep1041, ptr %i.aqg, align 8, !tbaa !52
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.aqh = icmp slt i64 %indvars.iv.next, %i.apt
  br i1 %i.aqh, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %gep1041.1 = getelementptr inbounds nuw [3072 x i8], ptr %invariant.gep1040, i64 %indvars.iv.next
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apq, i64 %indvars.iv.next
  %i.aqj = load i8, ptr %i.aqi, align 1, !tbaa !44
  %i.aqk = zext i8 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.aqk
  store ptr %gep1041.1, ptr %i.aql, align 8, !tbaa !52
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1372.next.1 = add i64 %niter1372, 2       ; 2 uses
  %niter1372.ncmp.1 = icmp eq i64 %niter1372.next.1, %unroll_iter1371
  br i1 %niter1372.ncmp.1, label %.preheader583.loopexit.unr-lcssa, label %bb.dd, !llvm.loop !86

.preheader582:                                    ; preds = %._crit_edge, %.preheader583..preheader582_crit_edge
  %i.aqm = phi i32 [ %.pre844, %.preheader583..preheader582_crit_edge ], [ %i.eif, %._crit_edge ] ; 4 uses
  %.1378.lcssa = phi i32 [ %.0377, %.preheader583..preheader582_crit_edge ], [ %.2379515961972, %._crit_edge ]
  %i.aqn = icmp sgt i32 %i.aqm, 0
  br i1 %i.aqn, label %.lr.ph694.preheader, label %._crit_edge695

.lr.ph694.preheader:                              ; preds = %.preheader582
  %invariant.gep = getelementptr inbounds nuw [512 x i8], ptr %i.fm, i64 %i.aoy ; 3 uses
  %i.aqo = zext nneg i32 %i.aqm to i64            ; 2 uses
  %xtraiter1455 = and i64 %i.aqo, 1
  %i.aqp = icmp eq i32 %i.aqm, 1
  br i1 %i.aqp, label %.lr.ph694.epil.preheader, label %.lr.ph694.preheader.new

.lr.ph694.preheader.new:                          ; preds = %.lr.ph694.preheader
  %unroll_iter1459 = and i64 %i.aqo, 2147483646
  br label %.lr.ph694

bb.di:                                            ; preds = %.lr.ph692, %._crit_edge
  %indvars.iv800 = phi i64 [ 0, %.lr.ph692 ], [ %indvars.iv.next801, %._crit_edge ] ; 17 uses
  %.1378691 = phi i32 [ %.0377, %.lr.ph692 ], [ %.2379515961972, %._crit_edge ] ; 2 uses
  %.not454 = icmp eq i32 %.1378691, 0
  br i1 %.not454, label %bb.dj, label %bb.mz

bb.dj:                                            ; preds = %bb.di
  %i.aqq = load i32, ptr %i.bi, align 4, !tbaa !184 ; 12 uses
  %i.aqr = load i32, ptr %i.ay, align 4, !tbaa !212 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, i8 0, i64 7, i1 false)
  %i.aqs = load i32, ptr %i.de, align 8, !tbaa !226
  %.not.i468 = icmp eq i32 %i.aqs, 0
  %.not520793.i = icmp slt i32 %i.aqq, 1          ; 4 uses
  %or.cond860.i = select i1 %.not.i468, i1 true, i1 %.not520793.i
end_hunk_0
begin_hunk_1_@ac3_decode_frame:bb.a
.lr.ph190.i.i:                                    ; preds = %._crit_edge155.i.i
  %i.dob = add i8 %.0131.lcssa.i.i, 1             ; 2 uses
  %wide.trip.count201.i.i = zext i8 %i.dob to i64 ; 2 uses
  %xtraiter1413 = and i64 %wide.trip.count201.i.i, 1
  %i.doc = icmp eq i8 %.0131.lcssa.i.i, 0
  %unroll_iter1417 = and i64 %wide.trip.count201.i.i, 254
  %lcmp.mod1415.not = icmp eq i64 %xtraiter1413, 0
  %lcmp.mod1416 = trunc i8 %i.dob to i1
  br label %bb.lk

bb.lk:                                            ; preds = %.loopexit.i679.i, %.lr.ph190.i.i
  %indvars.iv221.i.i = phi i64 [ 1, %.lr.ph190.i.i ], [ %indvars.iv.next222.i.i, %.loopexit.i679.i ] ; 7 uses
  %i.dod = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv221.i.i
  %i.doe = load i8, ptr %i.dod, align 1, !tbaa !44
  %.not143.i.i = icmp eq i8 %i.doe, 0
  br i1 %.not143.i.i, label %.loopexit.i679.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.dof = load i32, ptr %i.fw, align 4, !tbaa !254 ; 2 uses
  %i.dog = getelementptr inbounds nuw [1024 x i8], ptr %i.hl, i64 %indvars.iv221.i.i ; 13 uses
  br i1 %i.doc, label %.epil.preheader1412, label %.new

.new:                                             ; preds = %bb.ll, %.new
  %indvars.iv198.i.i = phi i64 [ %indvars.iv.next199.i.i.1, %.new ], [ 0, %bb.ll ] ; 3 uses
  %.4159.i.i = phi i32 [ %i.dpd, %.new ], [ %i.dof, %bb.ll ] ; 2 uses
  %niter1418 = phi i64 [ %niter1418.next.1, %.new ], [ 0, %bb.ll ]
  %i.doh = sext i32 %.4159.i.i to i64
  %i.doi = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.doh
  %i.doj = load i32, ptr %i.fv, align 4, !tbaa !253
  %i.dok = sext i32 %i.doj to i64
  %i.dol = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.dok
  %i.dom = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv198.i.i
  %i.don = load i8, ptr %i.dom, align 2, !tbaa !44 ; 2 uses
  %i.doo = zext i8 %i.don to i64
  %i.dop = shl nuw nsw i64 %i.doo, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.doi, ptr nonnull align 4 %i.dol, i64 %i.dop, i1 false)
  %i.doq = zext i8 %i.don to i32
  %i.dor = add nsw i32 %.4159.i.i, %i.doq         ; 2 uses
  %i.dos = sext i32 %i.dor to i64
  %i.dot = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.dos
  %i.dou = load i32, ptr %i.fv, align 4, !tbaa !253
  %i.dov = sext i32 %i.dou to i64
  %i.dow = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.dov
  %i.dox = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv198.i.i
  %i.doy = getelementptr inbounds nuw i8, ptr %i.dox, i64 1
  %i.doz = load i8, ptr %i.doy, align 1, !tbaa !44 ; 2 uses
  %i.dpa = zext i8 %i.doz to i64
  %i.dpb = shl nuw nsw i64 %i.dpa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dot, ptr nonnull align 4 %i.dow, i64 %i.dpb, i1 false)
  %i.dpc = zext i8 %i.doz to i32
  %i.dpd = add nsw i32 %i.dor, %i.dpc             ; 2 uses
  %indvars.iv.next199.i.i.1 = add nuw nsw i64 %indvars.iv198.i.i, 2 ; 2 uses
  %niter1418.next.1 = add i64 %niter1418, 2       ; 2 uses
  %niter1418.ncmp.1 = icmp eq i64 %niter1418.next.1, %unroll_iter1417
  br i1 %niter1418.ncmp.1, label %.unr-lcssa, label %.new, !llvm.loop !138

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod1415.not, label %bb.lm, label %.epil.preheader1412

.epil.preheader1412:                              ; preds = %.unr-lcssa, %bb.ll
  %indvars.iv198.i.i.epil.init = phi i64 [ 0, %bb.ll ], [ %indvars.iv.next199.i.i.1, %.unr-lcssa ]
  %.4159.i.i.epil.init = phi i32 [ %i.dof, %bb.ll ], [ %i.dpd, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1416)
  %i.dpe = sext i32 %.4159.i.i.epil.init to i64
  %i.dpf = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.dpe
  %i.dpg = load i32, ptr %i.fv, align 4, !tbaa !253
  %i.dph = sext i32 %i.dpg to i64
  %i.dpi = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.dph
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv198.i.i.epil.init
  %i.dpk = load i8, ptr %i.dpj, align 1, !tbaa !44
  %i.dpl = zext i8 %i.dpk to i64
  %i.dpm = shl nuw nsw i64 %i.dpl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dpf, ptr nonnull align 4 %i.dpi, i64 %i.dpm, i1 false)
  br label %bb.lm

bb.lm:                                            ; preds = %.unr-lcssa, %.epil.preheader1412
  %i.dpn = load i32, ptr %i.fw, align 4, !tbaa !254 ; 2 uses
  %i.dpo = load i32, ptr %i.fx, align 8, !tbaa !256 ; 4 uses
  %i.dpp = icmp sgt i32 %i.dpo, 0
  br i1 %i.dpp, label %.lr.ph171.i.i, label %.loopexit.i679.i

.lr.ph171.i.i:                                    ; preds = %bb.lm
  %wide.trip.count210.i.i = zext nneg i32 %i.dpo to i64
  br label %bb.ln

bb.ln:                                            ; preds = %._crit_edge165.i.i, %.lr.ph171.i.i
  %indvars.iv207.i.i = phi i64 [ 0, %.lr.ph171.i.i ], [ %indvars.iv.next208.i.i, %._crit_edge165.i.i ] ; 3 uses
  %.5169.i.i = phi i32 [ %i.dpn, %.lr.ph171.i.i ], [ %.6.lcssa.i.i, %._crit_edge165.i.i ] ; 3 uses
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv207.i.i
  %i.dpr = load i8, ptr %i.dpq, align 1, !tbaa !44 ; 4 uses
  %i.dps = zext i8 %i.dpr to i32                  ; 3 uses
  %.not193.i.i = icmp eq i8 %i.dpr, 0
  br i1 %.not193.i.i, label %._crit_edge165.i.i, label %.lr.ph164.preheader.i.i

.lr.ph164.preheader.i.i:                          ; preds = %bb.ln
  %i.dpt = sext i32 %.5169.i.i to i64             ; 2 uses
  %xtraiter1419 = and i32 %i.dps, 3               ; 3 uses
  %i.dpu = icmp ult i8 %i.dpr, 4
  br i1 %i.dpu, label %.lr.ph164.i.i.epil.preheader, label %.lr.ph164.preheader.i.i.new

.lr.ph164.preheader.i.i.new:                      ; preds = %.lr.ph164.preheader.i.i
  %unroll_iter1424 = and i32 %i.dps, 252
  br label %.lr.ph164.i.i

.lr.ph164.i.i:                                    ; preds = %.lr.ph164.i.i, %.lr.ph164.preheader.i.i.new
  %indvars.iv203.i.i = phi i64 [ %i.dpt, %.lr.ph164.preheader.i.i.new ], [ %indvars.iv.next204.i.i.3, %.lr.ph164.i.i ] ; 5 uses
  %.0130161.i.i = phi float [ 0.000000e+00, %.lr.ph164.preheader.i.i.new ], [ %i.dqn, %.lr.ph164.i.i ]
  %niter1425 = phi i32 [ 0, %.lr.ph164.preheader.i.i.new ], [ %niter1425.next.3, %.lr.ph164.i.i ]
  %i.dpv = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %indvars.iv203.i.i
  %i.dpw = load i32, ptr %i.dpv, align 4, !tbaa !43
  %i.dpx = sitofp nsz i32 %i.dpw to float         ; 2 uses
  %i.dpy = call nsz float @llvm.fmuladd.f32(float %i.dpx, float %i.dpx, float %.0130161.i.i)
  %i.dpz = getelementptr [4 x i8], ptr %i.dog, i64 %indvars.iv203.i.i
  %i.dqa = getelementptr i8, ptr %i.dpz, i64 4
  %i.dqb = load i32, ptr %i.dqa, align 4, !tbaa !43
  %i.dqc = sitofp nsz i32 %i.dqb to float         ; 2 uses
  %i.dqd = call nsz float @llvm.fmuladd.f32(float %i.dqc, float %i.dqc, float %i.dpy)
  %i.dqe = getelementptr [4 x i8], ptr %i.dog, i64 %indvars.iv203.i.i
  %i.dqf = getelementptr i8, ptr %i.dqe, i64 8
  %i.dqg = load i32, ptr %i.dqf, align 4, !tbaa !43
  %i.dqh = sitofp nsz i32 %i.dqg to float         ; 2 uses
  %i.dqi = call nsz float @llvm.fmuladd.f32(float %i.dqh, float %i.dqh, float %i.dqd)
  %indvars.iv.next204.i.i.3 = add nsw i64 %indvars.iv203.i.i, 4 ; 2 uses
  %i.dqj = getelementptr [4 x i8], ptr %i.dog, i64 %indvars.iv203.i.i
  %i.dqk = getelementptr i8, ptr %i.dqj, i64 12
  %i.dql = load i32, ptr %i.dqk, align 4, !tbaa !43
  %i.dqm = sitofp nsz i32 %i.dql to float         ; 2 uses
  %i.dqn = call nsz float @llvm.fmuladd.f32(float %i.dqm, float %i.dqm, float %i.dqi) ; 3 uses
  %niter1425.next.3 = add i32 %niter1425, 4       ; 2 uses
  %niter1425.ncmp.3 = icmp eq i32 %niter1425.next.3, %unroll_iter1424
  br i1 %niter1425.ncmp.3, label %._crit_edge165.loopexit.i.i.unr-lcssa, label %.lr.ph164.i.i, !llvm.loop !139

._crit_edge165.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph164.i.i
  %lcmp.mod1421.not = icmp eq i32 %xtraiter1419, 0
  br i1 %lcmp.mod1421.not, label %._crit_edge165.loopexit.i.i, label %.lr.ph164.i.i.epil.preheader

.lr.ph164.i.i.epil.preheader:                     ; preds = %._crit_edge165.loopexit.i.i.unr-lcssa, %.lr.ph164.preheader.i.i
  %indvars.iv203.i.i.epil.init = phi i64 [ %i.dpt, %.lr.ph164.preheader.i.i ], [ %indvars.iv.next204.i.i.3, %._crit_edge165.loopexit.i.i.unr-lcssa ]
  %.0130161.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph164.preheader.i.i ], [ %i.dqn, %._crit_edge165.loopexit.i.i.unr-lcssa ]
  %lcmp.mod1423 = icmp ne i32 %xtraiter1419, 0
  call void @llvm.assume(i1 %lcmp.mod1423)
  br label %.lr.ph164.i.i.epil

.lr.ph164.i.i.epil:                               ; preds = %.lr.ph164.i.i.epil, %.lr.ph164.i.i.epil.preheader
  %indvars.iv203.i.i.epil = phi i64 [ %indvars.iv203.i.i.epil.init, %.lr.ph164.i.i.epil.preheader ], [ %indvars.iv.next204.i.i.epil, %.lr.ph164.i.i.epil ] ; 2 uses
  %.0130161.i.i.epil = phi float [ %.0130161.i.i.epil.init, %.lr.ph164.i.i.epil.preheader ], [ %i.dqr, %.lr.ph164.i.i.epil ]
  %epil.iter1420 = phi i32 [ 0, %.lr.ph164.i.i.epil.preheader ], [ %epil.iter1420.next, %.lr.ph164.i.i.epil ]
  %indvars.iv.next204.i.i.epil = add nsw i64 %indvars.iv203.i.i.epil, 1
  %i.dqo = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %indvars.iv203.i.i.epil
  %i.dqp = load i32, ptr %i.dqo, align 4, !tbaa !43
  %i.dqq = sitofp nsz i32 %i.dqp to float         ; 2 uses
  %i.dqr = call nsz float @llvm.fmuladd.f32(float %i.dqq, float %i.dqq, float %.0130161.i.i.epil) ; 2 uses
  %epil.iter1420.next = add i32 %epil.iter1420, 1 ; 2 uses
  %epil.iter1420.cmp.not = icmp eq i32 %epil.iter1420.next, %xtraiter1419
  br i1 %epil.iter1420.cmp.not, label %._crit_edge165.loopexit.i.i, label %.lr.ph164.i.i.epil, !llvm.loop !140

._crit_edge165.loopexit.i.i:                      ; preds = %.lr.ph164.i.i.epil, %._crit_edge165.loopexit.i.i.unr-lcssa
  %.lcssa1313 = phi float [ %i.dqn, %._crit_edge165.loopexit.i.i.unr-lcssa ], [ %i.dqr, %.lr.ph164.i.i.epil ]
  %i.dqs = add i32 %.5169.i.i, %i.dps
  br label %._crit_edge165.i.i

._crit_edge165.i.i:                               ; preds = %._crit_edge165.loopexit.i.i, %bb.ln
  %.0130.lcssa.i.i = phi float [ 0.000000e+00, %bb.ln ], [ %.lcssa1313, %._crit_edge165.loopexit.i.i ]
  %.6.lcssa.i.i = phi i32 [ %.5169.i.i, %bb.ln ], [ %i.dqs, %._crit_edge165.loopexit.i.i ]
  %i.dqt = uitofp i8 %i.dpr to float
  %i.dqu = fdiv nsz float %.0130.lcssa.i.i, %i.dqt
  %i.dqv = call nsz float @llvm.sqrt.f32(float %i.dqu)
  %i.dqw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv207.i.i
  store float %i.dqv, ptr %i.dqw, align 4, !tbaa !29
  %indvars.iv.next208.i.i = add nuw nsw i64 %indvars.iv207.i.i, 1 ; 2 uses
  %exitcond211.not.i.i = icmp eq i64 %indvars.iv.next208.i.i, %wide.trip.count210.i.i
  br i1 %exitcond211.not.i.i, label %._crit_edge172.i.i, label %bb.ln, !llvm.loop !141

._crit_edge172.i.i:                               ; preds = %._crit_edge165.i.i
  %i.dqx = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv221.i.i
  %i.dqy = load i8, ptr %i.dqx, align 1, !tbaa !44 ; 2 uses
  %i.dqz = icmp sgt i8 %i.dqy, -1
  br i1 %i.dqz, label %bb.lo, label %.loopexit145.i.i

bb.lo:                                            ; preds = %._crit_edge172.i.i
  %i.dra = zext nneg i8 %i.dqy to i64
  %i.drb = getelementptr inbounds nuw [12 x i8], ptr @ff_eac3_spx_atten_tab, i64 %i.dra
  %i.drc = add nsw i32 %i.dpn, -2
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lr, %bb.lo
  %i.drd = phi i32 [ %i.dpo, %bb.lo ], [ %i.dru, %bb.lr ]
  %indvars.iv212.i.i = phi i64 [ 0, %bb.lo ], [ %indvars.iv.next213.i.i, %bb.lr ] ; 3 uses
  %.7174.i.i = phi i32 [ %i.drc, %bb.lo ], [ %i.dry, %bb.lr ] ; 2 uses
  %i.dre = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv212.i.i
  %i.drf = load i8, ptr %i.dre, align 1, !tbaa !44
  %.not144.i.i = icmp eq i8 %i.drf, 0
  br i1 %.not144.i.i, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.drg = sext i32 %.7174.i.i to i64
  %i.drh = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %i.drg ; 3 uses
  %i.dri = load <3 x float>, ptr %i.drb, align 4, !tbaa !29 ; 2 uses
  %i.drj = shufflevector <3 x float> %i.dri, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.drk = load <4 x i32>, ptr %i.drh, align 4, !tbaa !43
  %i.drl = sitofp <4 x i32> %i.drk to <4 x float>
  %i.drm = fmul nsz <4 x float> %i.drj, %i.drl
  %i.drn = fptosi <4 x float> %i.drm to <4 x i32>
  store <4 x i32> %i.drn, ptr %i.drh, align 4, !tbaa !43
  %i.dro = getelementptr inbounds nuw i8, ptr %i.drh, i64 16 ; 2 uses
  %i.drp = load i32, ptr %i.dro, align 4, !tbaa !43
  %i.drq = sitofp nsz i32 %i.drp to float
  %i.drr = extractelement <3 x float> %i.dri, i64 0
  %i.drs = fmul nsz float %i.drr, %i.drq
  %i.drt = fptosi float %i.drs to i32
  store i32 %i.drt, ptr %i.dro, align 4, !tbaa !43
  %.pre.i681.i = load i32, ptr %i.fx, align 8, !tbaa !256
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %i.dru = phi i32 [ %.pre.i681.i, %bb.lq ], [ %i.drd, %bb.lp ] ; 3 uses
  %i.drv = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv212.i.i
  %i.drw = load i8, ptr %i.drv, align 1, !tbaa !44
  %i.drx = zext i8 %i.drw to i32
  %i.dry = add nsw i32 %.7174.i.i, %i.drx
  %indvars.iv.next213.i.i = add nuw nsw i64 %indvars.iv212.i.i, 1 ; 2 uses
  %i.drz = sext i32 %i.dru to i64
  %i.dsa = icmp slt i64 %indvars.iv.next213.i.i, %i.drz
  br i1 %i.dsa, label %bb.lp, label %.loopexit145.i.i, !llvm.loop !142

.loopexit145.i.i:                                 ; preds = %bb.lr, %._crit_edge172.i.i
  %i.dsb = phi i32 [ %i.dpo, %._crit_edge172.i.i ], [ %i.dru, %bb.lr ] ; 2 uses
  %i.dsc = icmp sgt i32 %i.dsb, 0
  br i1 %i.dsc, label %.lr.ph186.i.i, label %.loopexit.i679.i

.lr.ph186.i.i:                                    ; preds = %.loopexit145.i.i
  %i.dsd = load i32, ptr %i.fw, align 4, !tbaa !254
  %i.dse = getelementptr inbounds nuw [68 x i8], ptr %i.ga, i64 %indvars.iv221.i.i
  %i.dsf = getelementptr inbounds nuw [68 x i8], ptr %i.gb, i64 %indvars.iv221.i.i
  br label %bb.ls

bb.ls:                                            ; preds = %._crit_edge181.i.i, %.lr.ph186.i.i
  %i.dsg = phi i32 [ %i.dsb, %.lr.ph186.i.i ], [ %i.dub, %._crit_edge181.i.i ]
  %indvars.iv218.i.i = phi i64 [ 0, %.lr.ph186.i.i ], [ %indvars.iv.next219.i.i, %._crit_edge181.i.i ] ; 5 uses
  %.8184.i.i = phi i32 [ %i.dsd, %.lr.ph186.i.i ], [ %.9.lcssa.i.i, %._crit_edge181.i.i ] ; 2 uses
  %i.dsh = getelementptr inbounds nuw [4 x i8], ptr %i.dse, i64 %indvars.iv218.i.i
  %i.dsi = load i32, ptr %i.dsh, align 4, !tbaa !43
  %i.dsj = sitofp nsz i32 %i.dsi to float
  %i.dsk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv218.i.i
  %i.dsl = load float, ptr %i.dsk, align 4, !tbaa !29
  %i.dsm = fmul nsz float %i.dsl, %i.dsj
  %i.dsn = fmul nsz float %i.dsm, f0xB0000000
  %i.dso = getelementptr inbounds nuw [4 x i8], ptr %i.dsf, i64 %indvars.iv218.i.i
  %i.dsp = load i32, ptr %i.dso, align 4, !tbaa !43
  %i.dsq = sitofp nsz i32 %i.dsp to float
  %i.dsr = fmul nsz float %i.dsn, f0x34000000     ; 2 uses
  %i.dss = fmul nnan nsz float %i.dsq, f0x34000000
  %i.dst = fcmp nsz olt float %i.dsr, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.dst, float -1.000000e+00, float %i.dsr
  %i.dsu = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv218.i.i ; 2 uses
  %i.dsv = load i8, ptr %i.dsu, align 1, !tbaa !44
  %.not194.i.i = icmp eq i8 %i.dsv, 0
  br i1 %.not194.i.i, label %._crit_edge181.i.i, label %.lr.ph180.preheader.i.i

.lr.ph180.preheader.i.i:                          ; preds = %bb.ls
  %i.dsw = sext i32 %.8184.i.i to i64
  br label %.lr.ph180.i.i

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i, %.lr.ph180.preheader.i.i
  %indvars.iv215.i.i = phi i64 [ %i.dsw, %.lr.ph180.preheader.i.i ], [ %indvars.iv.next216.i.i, %.lr.ph180.i.i ] ; 2 uses
  %.3138177.i.i = phi i32 [ 0, %.lr.ph180.preheader.i.i ], [ %i.dtw, %.lr.ph180.i.i ]
  %i.dsx = load i32, ptr %i.hn, align 4, !tbaa !58 ; 4 uses
  %i.dsy = add i32 %i.dsx, 40
  %i.dsz = and i32 %i.dsy, 63
  %i.dta = zext nneg i32 %i.dsz to i64
  %i.dtb = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.dta
  %i.dtc = load i32, ptr %i.dtb, align 4, !tbaa !43
  %i.dtd = add i32 %i.dsx, 9
  %i.dte = and i32 %i.dtd, 63
  %i.dtf = zext nneg i32 %i.dte to i64
  %i.dtg = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.dtf
  %i.dth = load i32, ptr %i.dtg, align 4, !tbaa !43
  %i.dti = add i32 %i.dth, %i.dtc                 ; 2 uses
  %i.dtj = and i32 %i.dsx, 63
  %i.dtk = zext nneg i32 %i.dtj to i64
  %i.dtl = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.dtk
  store i32 %i.dti, ptr %i.dtl, align 4, !tbaa !43
  %i.dtm = add i32 %i.dsx, 1
  store i32 %i.dtm, ptr %i.hn, align 4, !tbaa !58
  %i.dtn = sitofp nsz i32 %i.dti to float
  %i.dto = fmul nsz float %spec.store.select.i.i, %i.dtn
  %i.dtp = fptosi float %i.dto to i32
  %i.dtq = getelementptr inbounds [4 x i8], ptr %i.dog, i64 %indvars.iv215.i.i ; 2 uses
  %i.dtr = load i32, ptr %i.dtq, align 4, !tbaa !43
  %i.dts = sitofp nsz i32 %i.dtr to float
  %i.dtt = fmul nsz float %i.dss, %i.dts
  %i.dtu = fptosi float %i.dtt to i32
  %indvars.iv.next216.i.i = add nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %i.dtv = add i32 %i.dtu, %i.dtp
  store i32 %i.dtv, ptr %i.dtq, align 4, !tbaa !43
  %i.dtw = add nuw nsw i32 %.3138177.i.i, 1       ; 2 uses
  %i.dtx = load i8, ptr %i.dsu, align 1, !tbaa !44
  %i.dty = zext i8 %i.dtx to i32
  %i.dtz = icmp samesign ult i32 %i.dtw, %i.dty
  br i1 %i.dtz, label %.lr.ph180.i.i, label %._crit_edge181.loopexit.i.i, !llvm.loop !143

._crit_edge181.loopexit.i.i:                      ; preds = %.lr.ph180.i.i
  %i.dua = trunc nsw i64 %indvars.iv.next216.i.i to i32
  %.pre224.i.i = load i32, ptr %i.fx, align 8, !tbaa !256
  br label %._crit_edge181.i.i

._crit_edge181.i.i:                               ; preds = %._crit_edge181.loopexit.i.i, %bb.ls
  %i.dub = phi i32 [ %i.dsg, %bb.ls ], [ %.pre224.i.i, %._crit_edge181.loopexit.i.i ] ; 2 uses
  %.9.lcssa.i.i = phi i32 [ %.8184.i.i, %bb.ls ], [ %i.dua, %._crit_edge181.loopexit.i.i ]
  %indvars.iv.next219.i.i = add nuw nsw i64 %indvars.iv218.i.i, 1 ; 2 uses
  %i.duc = sext i32 %i.dub to i64
  %i.dud = icmp slt i64 %indvars.iv.next219.i.i, %i.duc
  br i1 %i.dud, label %bb.ls, label %.loopexit.i679.i, !llvm.loop !144

.loopexit.i679.i:                                 ; preds = %._crit_edge181.i.i, %.loopexit145.i.i, %bb.lm, %bb.lk
  %indvars.iv.next222.i.i = add nuw nsw i64 %indvars.iv221.i.i, 1
  %i.due = load i32, ptr %i.bi, align 4, !tbaa !184 ; 2 uses
  %i.duf = sext i32 %i.due to i64
  %.not.not.i680.i = icmp slt i64 %indvars.iv221.i.i, %i.duf
  br i1 %.not.not.i680.i, label %bb.lk, label %ff_eac3_apply_spectral_extension.exit.loopexit.i, !llvm.loop !145

ff_eac3_apply_spectral_extension.exit.loopexit.i: ; preds = %.loopexit.i679.i
  %.pr743.pre.i = load i32, ptr %i.bh, align 16, !tbaa !183
  br label %ff_eac3_apply_spectral_extension.exit.i

ff_eac3_apply_spectral_extension.exit.i:          ; preds = %ff_eac3_apply_spectral_extension.exit.loopexit.i, %._crit_edge155.i.i
  %i.dug = phi i32 [ %i.due, %ff_eac3_apply_spectral_extension.exit.loopexit.i ], [ %i.djr, %._crit_edge155.i.i ]
  %.pr743.i = phi i32 [ %.pr743.pre.i, %ff_eac3_apply_spectral_extension.exit.loopexit.i ], [ %i.dkw, %._crit_edge155.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.lt

bb.lt:                                            ; preds = %ff_eac3_apply_spectral_extension.exit.i, %._crit_edge858.i
  %i.duh = phi i32 [ %i.dug, %ff_eac3_apply_spectral_extension.exit.i ], [ %i.djr, %._crit_edge858.i ] ; 3 uses
  %i.dui = phi i32 [ %.pr743.i, %ff_eac3_apply_spectral_extension.exit.i ], [ %i.dkw, %._crit_edge858.i ] ; 4 uses
  %i.duj = load i32, ptr %i.er, align 4, !tbaa !239 ; 4 uses
  %.not575.i = icmp eq i32 %i.dui, %i.duj
  br i1 %.not575.i, label %.thread744.i, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.duk = load i32, ptr %i.es, align 4, !tbaa !240
  %i.dul = and i32 %i.duk, 8
  %.not576.i = icmp eq i32 %i.dul, 0
  br i1 %.not576.i, label %.thread1061.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.dum = icmp ne i32 %i.duh, %i.duj             ; 2 uses
  br i1 %.2494.i, label %bb.mo, label %bb.lw

.thread1061.i:                                    ; preds = %bb.lu
  br i1 %.2494.i, label %.thread1062.i, label %bb.lw

.thread744.i:                                     ; preds = %bb.lt
  br i1 %.2494.i, label %.critedge607.i, label %bb.lw

bb.lw:                                            ; preds = %.thread744.i, %.thread1061.i, %bb.lv
  %i.dun = phi i1 [ false, %.thread744.i ], [ %i.dum, %bb.lv ], [ true, %.thread1061.i ]
  %i.duo = load i32, ptr %i.hq, align 8, !tbaa !46
  %.not579.i = icmp eq i32 %i.duo, 0
  br i1 %.not579.i, label %ac3_upmix_delay.exit.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  store i32 0, ptr %i.hq, align 8, !tbaa !46
  %i.dup = load i32, ptr %i.ay, align 4, !tbaa !212
  switch i32 %i.dup, label %ac3_upmix_delay.exit.i [
    i32 0, label %bb.ly
    i32 2, label %bb.ly
    i32 6, label %bb.lz
    i32 4, label %bb.ma
    i32 7, label %bb.mb
    i32 5, label %bb.mc
    i32 3, label %bb.md
  ]

bb.ly:                                            ; preds = %bb.lx, %bb.lx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, ptr noundef nonnull align 16 dereferenceable(1024) %i.hw, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

bb.lz:                                            ; preds = %bb.lx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.ht, i8 0, i64 1024, i1 false)
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.lx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hu, i8 0, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

bb.mb:                                            ; preds = %bb.lx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hs, i8 0, i64 1024, i1 false)
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.lx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.ht, i8 0, i64 1024, i1 false)
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.lx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hu, ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, i8 0, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

ac3_upmix_delay.exit.i:                           ; preds = %bb.md, %bb.ma, %bb.ly, %bb.lx, %bb.lw
end_hunk_1
begin_hunk_2_@ac3_decode_frame:bb.a
  br i1 %exitcond817.not, label %.thread548, label %.preheader571, !llvm.loop !162

.thread548:                                       ; preds = %bb.nv, %bb.nw, %.thread535, %bb.nq
  %.7 = phi i32 [ %i.ema, %.thread535 ], [ %.0352713, %bb.nq ], [ %.4, %bb.nw ], [ %.2710, %bb.nv ]
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %exitcond821.not = icmp eq i64 %indvars.iv.next819, 16
  br i1 %exitcond821.not, label %bb.nx, label %bb.nq, !llvm.loop !163

bb.nx:                                            ; preds = %bb.nt, %.thread548
  %i.emt = load ptr, ptr %i.m, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.ac3_downmix.mono, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.ac3_downmix.stereo, i64 24, i1 false)
  %i.emu = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 3 uses
  %i.emv = load i32, ptr %i.emu, align 4, !tbaa !42
  %i.emw = icmp sgt i32 %i.emv, 1
  br i1 %i.emw, label %bb.ny, label %bb.ob

bb.ny:                                            ; preds = %bb.nx
  %i.emx = getelementptr inbounds nuw i8, ptr %i.emt, i64 312 ; 2 uses
  %i.emy = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.emx, ptr noundef nonnull %4) #11
  %.not.i501 = icmp eq i32 %i.emy, 0
  br i1 %.not.i501, label %.thread.sink.split.i, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %.pr.i = load i32, ptr %i.emu, align 4, !tbaa !42
  %i.emz = icmp sgt i32 %.pr.i, 2
  br i1 %i.emz, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.ena = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.emx, ptr noundef nonnull %5) #11
  %.not13.i = icmp eq i32 %i.ena, 0
  br i1 %.not13.i, label %.thread.sink.split.i, label %bb.ob

.thread.sink.split.i:                             ; preds = %bb.oa, %bb.ny
  %.sink14.i = phi i32 [ 1, %bb.ny ], [ 2, %bb.oa ]
  %.sink.i502 = phi i64 [ 4, %bb.ny ], [ 3, %bb.oa ]
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.fk) #11
  store i32 1, ptr %i.fk, align 8, !tbaa !43
  store i32 %.sink14.i, ptr %i.emu, align 4, !tbaa !43
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %.sink.i502, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !45
  br label %bb.ob

bb.ob:                                            ; preds = %.thread.sink.split.i, %bb.oa, %bb.nz, %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %.preheader573.preheader
  %i.enb = load i32, ptr %i.bv, align 8, !tbaa !197
  %i.enc = shl nsw i32 %i.enb, 8
  %i.end = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.enc, ptr %i.end, align 8, !tbaa !284
  %i.ene = call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #11 ; 2 uses
  %i.enf = icmp slt i32 %i.ene, 0
  br i1 %i.enf, label %.thread554, label %.preheader

.preheader:                                       ; preds = %bb.oc
  %i.eng = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.enh = load i32, ptr %i.eng, align 4, !tbaa !42
  %i.eni = icmp sgt i32 %i.enh, 0
  br i1 %i.eni, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %.preheader
  %i.enj = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.od

bb.od:                                            ; preds = %.lr.ph715, %._crit_edge849
  %indvars.iv822 = phi i64 [ 0, %.lr.ph715 ], [ %indvars.iv.next823, %._crit_edge849 ] ; 5 uses
  %i.enk = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv822
  %i.enl = load i8, ptr %i.enk, align 1, !tbaa !44
  %i.enm = icmp samesign ugt i64 %indvars.iv822, 7
  %.pre848 = load ptr, ptr %i.enj, align 8, !tbaa !285
  %.phi.trans.insert850 = getelementptr inbounds nuw [8 x i8], ptr %.pre848, i64 %indvars.iv822
  %.pre851 = load ptr, ptr %.phi.trans.insert850, align 8, !tbaa !286 ; 2 uses
  br i1 %i.enm, label %._crit_edge849, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.enn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv822
  %i.eno = load ptr, ptr %i.enn, align 8, !tbaa !286
  %i.enp = icmp eq ptr %.pre851, %i.eno
  br i1 %i.enp, label %._crit_edge849, label %bb.of

bb.of:                                            ; preds = %bb.oe
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1661) #11
  call void @abort() #13
  unreachable

._crit_edge849:                                   ; preds = %bb.od, %bb.oe
  %i.enq = zext i8 %i.enl to i64
  %i.enr = getelementptr inbounds nuw [3072 x i8], ptr %i.fo, i64 %i.enq
  %i.ens = load i32, ptr %i.bv, align 8, !tbaa !197
  %i.ent = shl nsw i32 %i.ens, 8
  %i.enu = sext i32 %i.ent to i64
  %i.env = shl nsw i64 %i.enu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.pre851, ptr nonnull align 16 %i.enr, i64 %i.env, i1 false)
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 1 ; 2 uses
  %i.enw = load i32, ptr %i.eng, align 4, !tbaa !42
  %i.enx = sext i32 %i.enw to i64
  %i.eny = icmp slt i64 %indvars.iv.next823, %i.enx
  br i1 %i.eny, label %bb.od, label %._crit_edge716, !llvm.loop !164

._crit_edge716:                                   ; preds = %._crit_edge849, %.preheader
  %i.enz = load i32, ptr %i.ay, align 4, !tbaa !212 ; 4 uses
  %i.eoa = icmp eq i32 %i.enz, 2
  br i1 %i.eoa, label %bb.og, label %bb.oi

bb.og:                                            ; preds = %._crit_edge716
  %i.eob = load i32, ptr %i.es, align 4, !tbaa !240
  %i.eoc = and i32 %i.eob, -9
  %i.eod = icmp eq i32 %i.eoc, 2
  br i1 %i.eod, label %bb.oh, label %.thread565

bb.oh:                                            ; preds = %bb.og
  %i.eoe = load i32, ptr %i.cb, align 8, !tbaa !203
  %i.eof = icmp eq i32 %i.eoe, 2
  br i1 %i.eof, label %.thread560, label %bb.om

bb.oi:                                            ; preds = %._crit_edge716
  %i.eog = icmp sgt i32 %i.enz, 5
  br i1 %i.eog, label %bb.oj, label %.critedge

bb.oj:                                            ; preds = %bb.oi
  %i.eoh = load i32, ptr %i.es, align 4, !tbaa !240
  %i.eoi = and i32 %i.eoh, -9
  %i.eoj = icmp eq i32 %i.enz, %i.eoi
  br i1 %i.eoj, label %bb.ok, label %.critedge.thread

bb.ok:                                            ; preds = %bb.oj
  %i.eok = load i32, ptr %i.cc, align 4, !tbaa !204
  switch i32 %i.eok, label %.critedge.thread [
    i32 2, label %.thread560
    i32 3, label %bb.ol
  ]

bb.ol:                                            ; preds = %bb.ok
  br label %.thread560

bb.om:                                            ; preds = %bb.oh
  %i.eol = load i32, ptr %i.cd, align 16, !tbaa !205
  %.not570 = icmp eq i32 %i.eol, 2
  br i1 %.not570, label %.thread560, label %.thread565

.thread560:                                       ; preds = %bb.ok, %bb.oh, %bb.ol, %bb.om
  %.0371563 = phi i32 [ 6, %bb.om ], [ 5, %bb.ok ], [ 1, %bb.oh ], [ 4, %bb.ol ]
  %i.eom = call i32 @ff_side_data_update_matrix_encoding(ptr noundef nonnull %1, i32 noundef %.0371563) #11 ; 2 uses
  %i.eon = icmp slt i32 %i.eom, 0
  br i1 %i.eon, label %.thread554, label %.thread560..critedgethread-pre-split_crit_edge

.thread560..critedgethread-pre-split_crit_edge:   ; preds = %.thread560
  %.pr.pre = load i32, ptr %i.ay, align 4, !tbaa !212
  br label %.critedge

.critedge:                                        ; preds = %.thread560..critedgethread-pre-split_crit_edge, %bb.oi
  %i.eoo = phi i32 [ %i.enz, %bb.oi ], [ %.pr.pre, %.thread560..critedgethread-pre-split_crit_edge ]
  %i.eop = icmp sgt i32 %i.eoo, 2
  br i1 %i.eop, label %.critedge.thread, label %.thread565

.critedge.thread:                                 ; preds = %bb.ok, %bb.oj, %.critedge
  %i.eoq = load i32, ptr %i.es, align 4, !tbaa !240
  %i.eor = and i32 %i.eoq, -9
  %i.eos = icmp sgt i32 %i.eor, 2
  br i1 %i.eos, label %bb.on, label %.thread565

bb.on:                                            ; preds = %.critedge.thread
  %i.eot = call ptr @av_downmix_info_update_side_data(ptr noundef nonnull %1) #11 ; 5 uses
  %.not450.not = icmp eq ptr %i.eot, null
  br i1 %.not450.not, label %.thread554, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.eou = load i32, ptr %i.bm, align 16, !tbaa !188
  %switch.tableidx1276 = add i32 %i.eou, -1       ; 2 uses
  %i.eov = icmp ult i32 %switch.tableidx1276, 3
  br i1 %i.eov, label %switch.lookup1277, label %bb.op

switch.lookup1277:                                ; preds = %bb.oo
  %i.eow = zext nneg i32 %switch.tableidx1276 to i64
  %switch.gep1278 = getelementptr inbounds nuw i8, ptr @switch.table.ac3_decode_frame.1, i64 %i.eow
  %switch.load1279 = load i8, ptr %switch.gep1278, align 1
  %switch.ext1280 = zext i8 %switch.load1279 to i32
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %switch.lookup1277
  %.sink1050 = phi i32 [ %switch.ext1280, %switch.lookup1277 ], [ 0, %bb.oo ]
  store i32 %.sink1050, ptr %i.eot, align 8, !tbaa !289
  %i.eox = load i32, ptr %i.bo, align 4, !tbaa !190
  %i.eoy = sext i32 %i.eox to i64
  %i.eoz = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.eoy
  %i.epa = load float, ptr %i.eoz, align 4, !tbaa !29
  %i.epb = getelementptr inbounds nuw i8, ptr %i.eot, i64 8
  %i.epc = load i32, ptr %i.br, align 8, !tbaa !193
  %i.epd = sext i32 %i.epc to i64
  %i.epe = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.epd
  %i.epf = load float, ptr %i.epe, align 4, !tbaa !29
  %i.epg = insertelement <2 x float> poison, float %i.epa, i64 0
  %i.eph = insertelement <2 x float> %i.epg, float %i.epf, i64 1
  %i.epi = fpext <2 x float> %i.eph to <2 x double>
  store <2 x double> %i.epi, ptr %i.epb, align 8, !tbaa !290
  %i.epj = load i32, ptr %i.bq, align 4, !tbaa !192
  %i.epk = sext i32 %i.epj to i64
  %i.epl = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.epk
  %i.epm = load float, ptr %i.epl, align 4, !tbaa !29
  %i.epn = getelementptr inbounds nuw i8, ptr %i.eot, i64 24
  %i.epo = load i32, ptr %i.bs, align 16, !tbaa !194
  %i.epp = sext i32 %i.epo to i64
  %i.epq = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.epp
  %i.epr = load float, ptr %i.epq, align 4, !tbaa !29
  %i.eps = insertelement <2 x float> poison, float %i.epm, i64 0
  %i.ept = insertelement <2 x float> %i.eps, float %i.epr, i64 1
  %i.epu = fpext <2 x float> %i.ept to <2 x double>
  store <2 x double> %i.epu, ptr %i.epn, align 8, !tbaa !290
  %i.epv = load i32, ptr %i.bt, align 4, !tbaa !195
  %.not451 = icmp eq i32 %i.epv, 0
  br i1 %.not451, label %.thread565.sink.split, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.epw = load i32, ptr %i.cy, align 8, !tbaa !291
  %i.epx = sext i32 %i.epw to i64
  %i.epy = getelementptr inbounds [4 x i8], ptr @ff_eac3_gain_levels_lfe, i64 %i.epx
  %i.epz = load float, ptr %i.epy, align 4, !tbaa !29
  %i.eqa = fpext nsz float %i.epz to double
  br label %.thread565.sink.split

.thread565.sink.split:                            ; preds = %bb.op, %bb.oq
  %.sink1051 = phi double [ %i.eqa, %bb.oq ], [ 0.000000e+00, %bb.op ]
  %i.eqb = getelementptr inbounds nuw i8, ptr %i.eot, i64 40
  store double %.sink1051, ptr %i.eqb, align 8, !tbaa !292
  br label %.thread565

.thread565:                                       ; preds = %.thread565.sink.split, %bb.om, %bb.og, %.critedge.thread, %.critedge
  store i32 1, ptr %2, align 4, !tbaa !43
  %i.eqc = load i32, ptr %i.o, align 8, !tbaa !168 ; 2 uses
  %.not452 = icmp eq i32 %i.eqc, 0
  br i1 %.not452, label %bb.or, label %bb.os

bb.or:                                            ; preds = %.thread565
  %i.eqd = load i32, ptr %i.bl, align 4, !tbaa !187
  %i.eqe = add nsw i32 %i.eqd, %.2376
  %.462 = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.eqe)
  br label %.thread554

bb.os:                                            ; preds = %.thread565
  %i.eqf = add nsw i32 %i.eqc, %.2376
  %.463 = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.eqf)
  br label %.thread554

.thread554:                                       ; preds = %bb.nj, %bb.bz, %bb.ns, %bb.nu, %bb.h, %bb.no, %bb.on, %.thread524, %.thread560, %bb.oc, %bb.a, %bb.os, %bb.or, %bb.nm, %bb.db, %bb.da, %bb.cb, %bb.bw, %bb.bv, %bb.bu, %bb.bq
  %.15 = phi i32 [ -1094995529, %bb.ns ], [ %i.p, %bb.a ], [ %.077.i.ph, %bb.bw ], [ -1094995529, %bb.bq ], [ %.1357.ph, %.thread524 ], [ -1094995529, %bb.h ], [ %i.ene, %bb.oc ], [ %.463, %bb.os ], [ %.462, %bb.or ], [ %i.eom, %.thread560 ], [ -12, %bb.on ], [ -1094995529, %bb.nm ], [ -12, %bb.da ], [ -1094995529, %bb.db ], [ %., %bb.cb ], [ %.0391702, %bb.bu ], [ -1094995529, %bb.bv ], [ -1094995529, %bb.no ], [ -1094995529, %bb.nu ], [ -1094995529, %bb.bz ], [ -1094995529, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  ret i32 %.15
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @ac3_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @av_tx_uninit(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @av_tx_uninit(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  tail call void @av_freep(ptr noundef nonnull %i.f) #11
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @ac3_decode_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(177520) %i.c, i8 0, i64 177520, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 85648
  tail call void @ff_kbd_window_init_fixed(ptr noundef nonnull %i.d, float noundef 5.000000e+00, i32 noundef 256) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 54572
  tail call void @av_lfg_init(ptr noundef nonnull %i.e, i32 noundef 0) #11
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_kbd_window_init_fixed(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #2

declare ptr @avpriv_alloc_fixed_dsp(i32 noundef) local_unnamed_addr #2

declare void @ff_ac3dsp_init(ptr noundef) local_unnamed_addr #2

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @ff_ac3_init_static() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare i32 @ff_ac3_find_syncword(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_lfg_init_from_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_ac3_parse_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_index_from_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i32 @ff_side_data_update_matrix_encoding(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_downmix_info_update_side_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_ac3_bit_alloc_calc_psd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_ac3_bit_alloc_calc_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_ac3dsp_downmix_fixed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_band_structure(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef captures(none) %8, i32 noundef range(i32 17, 19) %9) unnamed_addr #1 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = sub i32 %4, %3                           ; 7 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not47 = icmp slt i32 %9, %4
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.31, i32 noundef 668) #11
  tail call void @abort() #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr i8, ptr %8, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 1        ; 2 uses
  %.not48 = icmp eq i32 %2, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !48
  %i.j = lshr i32 %i.h, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49
  %i.p = icmp slt i32 %i.h, %i.o
  %i.q = zext i1 %i.p to i32
  %spec.select.i = add i32 %i.h, %i.q
  %i.r = zext i8 %i.m to i32
  %i.s = and i32 %i.h, 7
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !50
  %i.t = lshr exact i32 128, %i.s
  %i.u = and i32 %i.t, %i.r
  %.not49 = icmp ne i32 %i.u, 0
  %i.v = icmp sgt i32 %i.b, 1
  %or.cond70 = and i1 %.not49, %i.v
  br i1 %or.cond70, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.e
  %.old = icmp sgt i32 %i.b, 1
  br i1 %.old, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.w = add nsw i32 %i.b, -1
end_hunk_2
