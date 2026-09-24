Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.ltd = getelementptr inbounds nuw [4 x i8], ptr %i.jfz, i64 %i.ltb
  %wide.load2944 = load <8 x float>, ptr %i.ltd, align 4, !tbaa !12, !noalias !499
  %i.lte = getelementptr inbounds nuw [4 x i8], ptr %i.jga, i64 %i.ltb
  %wide.load2945 = load <8 x float>, ptr %i.lte, align 4, !tbaa !12, !noalias !499
  %i.ltf = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load2945, <8 x float> zeroinitializer)
  %i.ltg = fmul reassoc nsz arcp contract afn <8 x float> %i.ltf, %broadcast.splat2940
  %i.lth = shufflevector <8 x float> %wide.load2943, <8 x float> %wide.load2944, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lti = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lth, <16 x float> zeroinitializer)
  %i.ltj = fmul reassoc nsz arcp contract afn <16 x float> %i.lti, %i.awm
  %i.ltk = shufflevector <8 x float> %i.ltg, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2946 = shufflevector <16 x float> %i.ltj, <16 x float> %i.ltk, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2946, ptr %gep4879, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %index.next2947 = add nuw i64 %index2942, 8     ; 2 uses
  %i.ltl = icmp eq i64 %index.next2947, %n.vec2938
  br i1 %i.ltl, label %middle.block2948, label %vector.body2941, !llvm.loop !328

middle.block2948:                                 ; preds = %vector.body2941
  br i1 %cmp.n2949, label %._crit_edge931.i, label %scalar.ph2935.preheader

scalar.ph2935.preheader:                          ; preds = %.lr.ph930.i, %middle.block2948
  %indvars.iv1066.i.ph = phi i64 [ %i.lsy, %.lr.ph930.i ], [ %i.lsz, %middle.block2948 ]
  %indvars.iv1062.i.ph = phi i64 [ %i.lsx, %.lr.ph930.i ], [ %i.lta, %middle.block2948 ]
  %.0738926.i.ph = phi i32 [ %i.lfe, %.lr.ph930.i ], [ %i.lfs, %middle.block2948 ]
  br label %scalar.ph2935

._crit_edge931.i:                                 ; preds = %scalar.ph2935, %middle.block2948
  %i.ltm = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.ltn = icmp slt i32 %i.ltm, %i.jgv
  %indvars.iv.next1061.i = add i32 %indvars.iv1060.i, %i.aoy
  %indvars.iv.next1065.i = add i32 %indvars.iv1064.i, 112
  br i1 %i.ltn, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph2935:                                    ; preds = %scalar.ph2935.preheader, %scalar.ph2935
  %indvars.iv1066.i = phi i64 [ %indvars.iv.next1067.i, %scalar.ph2935 ], [ %indvars.iv1066.i.ph, %scalar.ph2935.preheader ] ; 4 uses
  %indvars.iv1062.i = phi i64 [ %indvars.iv.next1063.i, %scalar.ph2935 ], [ %indvars.iv1062.i.ph, %scalar.ph2935.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.luc, %scalar.ph2935 ], [ %.0738926.i.ph, %scalar.ph2935.preheader ]
  %i.lto = getelementptr inbounds nuw [4 x i8], ptr %i.jfx, i64 %indvars.iv1066.i
  %i.ltp = load float, ptr %i.lto, align 4, !tbaa !12, !noalias !499
  %i.ltq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ltp, float 0.000000e+00)
  %i.ltr = getelementptr inbounds [4 x i8], ptr %i.any, i64 %indvars.iv1062.i
  %i.lts = getelementptr inbounds nuw [4 x i8], ptr %i.jfz, i64 %indvars.iv1066.i
  %i.ltt = load float, ptr %i.lts, align 4, !tbaa !12, !noalias !499
  %i.ltu = getelementptr inbounds nuw [4 x i8], ptr %i.jga, i64 %indvars.iv1066.i
  %i.ltv = load float, ptr %i.ltu, align 4, !tbaa !12, !noalias !499
  %i.ltw = insertelement <4 x float> poison, float %i.ltt, i64 0
  %i.ltx = insertelement <4 x float> %i.ltw, float %i.ltv, i64 1
  %i.lty = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ltq, i64 0
  %i.ltz = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ltx, <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>)
  %i.lua = shufflevector <4 x float> %i.lty, <4 x float> %i.ltz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lub = fmul reassoc nsz arcp contract afn <4 x float> %i.lua, %i.awo
  store <4 x float> %i.lub, ptr %i.ltr, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %i.luc = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1063.i = add nsw i64 %indvars.iv1062.i, 4
  %indvars.iv.next1067.i = add nuw nsw i64 %indvars.iv1066.i, 1
  %i.lud = icmp slt i32 %i.luc, %i.lfg
  br i1 %i.lud, label %scalar.ph2935, label %._crit_edge931.i, !llvm.loop !329

bb.oh:                                            ; preds = %bb.nx
  %i.lue = load i32, ptr %i.aoi, align 4, !tbaa !139 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.any, ptr noundef %i.axv, i32 noundef %i.bo, i32 noundef %i.axl, i32 noundef range(i32 10, 9) %.fr1063, float noundef 0.000000e+00, i32 noundef 4)
  %i.luf = icmp slt i32 %i.axl, 8
  %or.cond.i549 = or i1 %i.aoj, %i.luf
  br i1 %or.cond.i549, label %demosaic_box3.exit, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.lug = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %.not.i550 = icmp eq ptr %i.lug, null
  br i1 %.not.i550, label %bb.oj, label %.preheader1027.preheader.i

bb.oj:                                            ; preds = %bb.oi
  %i.luh = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.luh, i64 64) ]
  store ptr %i.luh, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %i.lui = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lui, i64 64) ]
  store ptr %i.lui, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  %i.luj = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.luk = icmp ne ptr %i.luj, null
  %i.lul = icmp ne ptr %i.lui, null
  %or.cond.i.i569 = select i1 %i.luk, i1 %i.lul, i1 false
  br i1 %or.cond.i.i569, label %.preheader.i.i570, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @free(ptr noundef %i.luj) #27, !noalias !549
  tail call void @free(ptr noundef %i.lui) #27, !noalias !549
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !549
  br label %.preheader1027.preheader.i

.preheader.i.i570:                                ; preds = %bb.oj, %bb.oq
  %indvars.iv.i.i571 = phi i64 [ %indvars.iv.next.i.i572, %bb.oq ], [ 0, %bb.oj ] ; 4 uses
  %i.lum = trunc nuw nsw i64 %indvars.iv.i.i571 to i32
  %i.lun = uitofp nsz nneg i32 %i.lum to double   ; 4 uses
  %i.luo = fmul reassoc nnan nsz arcp contract afn double %i.lun, f0x3EF0001000100010 ; 3 uses
  %i.lup = fcmp reassoc nsz arcp contract afn ugt double %i.luo, 1.867000e-03
  br i1 %i.lup, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.preheader.i.i570
  %i.luq = fmul reassoc nnan nsz arcp contract afn double %i.lun, f0x3F31001100110011
  br label %bb.on

bb.om:                                            ; preds = %.preheader.i.i570
  %i.lur = tail call fast double @llvm.log.f64(double %i.luo)
  %i.lus = fmul reassoc nnan nsz arcp contract afn double %i.lur, f0x3FDAAAAAAAAAAAAB
  %i.lut = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.lus)
  %i.luu = fmul reassoc nnan nsz arcp contract afn double %i.lut, f0x3FF0B60BF5D78812
  %i.luv = fadd reassoc nsz arcp contract afn double %i.luu, -4.444500e-02
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.luw = phi reassoc nsz arcp contract afn double [ %i.luq, %bb.ol ], [ %i.luv, %bb.om ]
  %i.lux = fptrunc reassoc nsz arcp contract afn double %i.luw to float
  %i.luy = getelementptr inbounds nuw [4 x i8], ptr %i.luj, i64 %indvars.iv.i.i571
  store float %i.lux, ptr %i.luy, align 4, !tbaa !12, !noalias !549
  %i.luz = fcmp reassoc nsz arcp contract afn ugt double %i.luo, 3.174600e-02
  br i1 %i.luz, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.lva = fmul reassoc nnan nsz arcp contract afn double %i.lun, f0x3EAE1E3C3C5A5A78
  br label %bb.oq

bb.op:                                            ; preds = %bb.on
  %i.lvb = fmul reassoc nnan nsz arcp contract afn double %i.lun, f0x3EEEA3850F60F739
  %i.lvc = fadd reassoc nnan nsz arcp contract afn double %i.lvb, f0x3FA5C99942418271
  %i.lvd = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lvc)
  %i.lve = fmul reassoc nnan nsz arcp contract afn double %i.lvd, 2.400000e+00
  %i.lvf = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lve)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.lvg = phi reassoc nsz arcp contract afn double [ %i.lva, %bb.oo ], [ %i.lvf, %bb.op ]
  %i.lvh = fptrunc reassoc nsz arcp contract afn double %i.lvg to float
  %i.lvi = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %indvars.iv.i.i571
  store float %i.lvh, ptr %i.lvi, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next.i.i572 = add nuw nsw i64 %indvars.iv.i.i571, 1 ; 2 uses
  %exitcond.not.i.i573 = icmp eq i64 %indvars.iv.next.i.i572, 65536
  br i1 %exitcond.not.i.i573, label %.preheader1027.preheader.i, label %.preheader.i.i570

.preheader1027.preheader.i:                       ; preds = %bb.oq, %bb.ok, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !551
  %i.lvj = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !549 ; 31 uses
  %i.lvk = ptrtoaddr ptr %i.lvj to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lvj, i64 64) ]
  store ptr %i.lvj, ptr %i.b, align 16, !tbaa !140, !noalias !551
  %i.lvl = getelementptr inbounds nuw i8, ptr %i.lvj, i64 73984 ; 14 uses
  store ptr %i.lvl, ptr %i.aok, align 8, !tbaa !140, !noalias !551
  %i.lvm = getelementptr inbounds nuw i8, ptr %i.lvj, i64 147968 ; 6 uses
  store ptr %i.lvm, ptr %i.aol, align 16, !tbaa !140, !noalias !551
  %i.lvn = getelementptr inbounds nuw i8, ptr %i.lvj, i64 221952 ; 5 uses
  store ptr %i.lvn, ptr %i.aom, align 8, !tbaa !140, !noalias !551
  %i.lvo = getelementptr inbounds nuw i8, ptr %i.lvj, i64 295936 ; 5 uses
  store ptr %i.lvo, ptr %i.aon, align 16, !tbaa !140, !noalias !551
  %i.lvp = getelementptr inbounds nuw i8, ptr %i.lvj, i64 369920 ; 10 uses
  store ptr %i.lvp, ptr %i.aoo, align 8, !tbaa !140, !noalias !551
  %i.lvq = icmp ult i32 %i.lue, 2
  %i.lvr = select i1 %i.lvq, i32 %i.lue, i32 3    ; 2 uses
  %i.lvs = tail call i32 @llvm.usub.sat.i32(i32 %i.lue, i32 2) ; 2 uses
  %i.lvt = add nsw i32 %i.axl, -17
  %i.lvu = sdiv i32 %i.lvt, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.lvj, i8 0, i64 443904, i1 false), !noalias !549
  %.not1193.i = icmp eq i32 %i.lvr, 0
  %i.lvv = icmp sgt i32 %i.lvs, 0
  %i.lvw = tail call i32 @llvm.smax.i32(i32 %i.lvu, i32 0)
  %scevgep3939 = getelementptr i8, ptr %i.lvj, i64 295400
  %scevgep4008 = getelementptr i8, ptr %i.lvj, i64 295400
  %i.lvx = add i64 %i.lvk, 372112
  %i.lvy = getelementptr inbounds nuw i8, ptr %i.axv, i64 128
  %i.lvz = getelementptr inbounds nuw i8, ptr %i.axv, i64 256
  %i.lwa = getelementptr inbounds nuw i8, ptr %i.axv, i64 384
  br label %.preheader1027.i

.preheader1027.i:                                 ; preds = %._crit_edge1187.i, %.preheader1027.preheader.i
  %indvars.iv1148 = phi i32 [ %indvars.iv.next1149, %._crit_edge1187.i ], [ 6, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1129 = phi i32 [ %indvars.iv.next1130, %._crit_edge1187.i ], [ 7, %.preheader1027.preheader.i ] ; 3 uses
  %indvars.iv1124 = phi i32 [ %indvars.iv.next1125, %._crit_edge1187.i ], [ 8, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1107 = phi i32 [ %indvars.iv.next1108, %._crit_edge1187.i ], [ 5, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1104 = phi i32 [ %indvars.iv.next1105, %._crit_edge1187.i ], [ 4, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1187.i ], [ 128, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1311.i.a = phi i32 [ %indvars.iv.next1312.i.a, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv.i553 = phi i32 [ %indvars.iv.next.i558, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %.08821189.i = phi i32 [ %i.lyi, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 5 uses
  %smin1153 = call i32 @llvm.smin.i32(i32 %i.axl, i32 %indvars.iv) ; 5 uses
  %i.lwb = add i32 %smin1153, %indvars.iv1104
  %i.lwc = call i32 @llvm.smax.i32(i32 %i.lwb, i32 5)
  %smax1145 = zext nneg i32 %i.lwc to i64         ; 4 uses
  %i.lwd = add i32 %smin1153, %indvars.iv1129
  %i.lwe = call i32 @llvm.smax.i32(i32 %i.lwd, i32 2)
  %smax1137 = zext nneg i32 %i.lwe to i64         ; 3 uses
  %i.lwf = add i32 %smin1153, %indvars.iv1124
  %i.lwg = call i32 @llvm.smax.i32(i32 %i.lwf, i32 1)
  %smax1126 = zext nneg i32 %i.lwg to i64
  %i.lwh = add i32 %smin1153, %indvars.iv1107
  %i.lwi = call i32 @llvm.umax.i32(i32 %i.lwh, i32 2)
  %umax = zext i32 %i.lwi to i64
  %i.lwj = mul nuw i32 %.08821189.i, 112          ; 4 uses
  %i.lwk = add nuw nsw i32 %i.lwj, 128
  %i.lwl = tail call i32 @llvm.smin.i32(i32 %i.lwk, i32 %i.axl) ; 2 uses
  %i.lwm = sub nsw i32 %i.lwl, %i.lwj             ; 6 uses
  %i.lwn = add nsw i32 %i.lwm, 8
  %i.lwo = icmp sgt i32 %i.lwm, 0                 ; 3 uses
  %i.lwp = icmp sgt i32 %i.lwm, -4
  %i.lwq = add i32 %i.lwj, -4
  %i.lwr = icmp sgt i32 %i.lwm, -8
  %6 = icmp sgt i32 %i.lwm, -6
  %i.lws = icmp eq i32 %.08821189.i, 0            ; 2 uses
  %i.lwt = select i1 %i.lws, i32 6, i32 0         ; 3 uses
  %i.lwu = icmp eq i32 %.08821189.i, %i.lvu       ; 2 uses
  %.neg949.i = select i1 %i.lwu, i32 -6, i32 0    ; 2 uses
  %i.lwv = add nsw i32 %i.lwn, %.neg949.i         ; 2 uses
  %7 = icmp slt i32 %i.lwm, -5
  %i.lww = add nsw i32 %i.lwv, -1
  %i.lwx = icmp slt i32 %i.lwt, %i.lww
  %i.lwy = add nuw nsw i32 %i.lwt, 2
  %i.lwz = add nsw i32 %i.lwv, -2
  %i.lxa = icmp slt i32 %i.lwy, %i.lwz
  %i.lxb = select i1 %i.lws, i32 4, i32 8         ; 3 uses
  %i.lxc = or disjoint i32 %i.lxb, %i.lwj
  %.neg950.i = select i1 %i.lwu, i32 -4, i32 -8
  %i.lxd = add nsw i32 %i.lwl, %.neg950.i         ; 2 uses
  %i.lxe = icmp slt i32 %i.lxc, %i.lxd
  %i.lxf = zext nneg i32 %i.lwt to i64            ; 5 uses
  %i.lxg = add nuw nsw i64 %i.lxf, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lxb, 4
  %i.lxh = or disjoint i32 %i.lxb, %indvars.iv1311.i.a
  %i.lxi = zext i32 %i.lxh to i64
  %i.lxj = add i32 %.neg949.i, %smin1153          ; 2 uses
  %i.lxk = add i32 %i.lxj, %indvars.iv1129
  %i.lxl = sext i32 %i.lxk to i64                 ; 2 uses
  %i.lxm = add i32 %i.lxj, %indvars.iv1148
  %i.lxn = sext i32 %i.lxm to i64                 ; 3 uses
  %i.lxo = mul nuw nsw i64 %i.lxf, 544            ; 6 uses
  %i.lxp = mul nuw nsw i64 %i.lxf, 544            ; 8 uses
  %i.lxq = add nuw nsw i64 %i.lxp, 552
  %i.lxr = add nuw nsw i64 %i.lxp, 1644
  %i.lxs = mul nuw nsw i64 %i.lxf, 544            ; 5 uses
  %scevgep3937 = getelementptr i8, ptr %i.lvj, i64 %i.lxs
  %i.lxt = mul nsw i64 %i.lxl, 544                ; 2 uses
  %scevgep3940 = getelementptr i8, ptr %scevgep3939, i64 %i.lxt
  %i.lxu = or disjoint i64 %i.lxs, 8
  %i.lxv = or disjoint i64 %i.lxs, 4
  %scevgep4006 = getelementptr i8, ptr %i.lvj, i64 %i.lxs
  %scevgep4009 = getelementptr i8, ptr %scevgep4008, i64 %i.lxt
  %invariant.op = or disjoint i64 %i.lxs, 4
  %i.lxw = getelementptr i8, ptr %i.lvj, i64 %i.lxp
  %i.lxx = getelementptr i8, ptr %i.lxw, i64 74536
  %i.lxy = getelementptr i8, ptr %i.lvj, i64 %i.lxp
  %i.lxz = getelementptr i8, ptr %i.lxy, i64 75628
  %i.lya = getelementptr i8, ptr %i.lvj, i64 %i.lxp
  %i.lyb = getelementptr i8, ptr %i.lya, i64 73992
  %i.lyc = getelementptr i8, ptr %i.lvj, i64 %i.lxp
  %i.lyd = getelementptr i8, ptr %i.lyc, i64 76172
  %i.lye = getelementptr i8, ptr %i.lvj, i64 %i.lxo
  %i.lyf = getelementptr i8, ptr %i.lye, i64 74536
  %i.lyg = getelementptr i8, ptr %i.lvj, i64 %i.lxo
  %i.lyh = getelementptr i8, ptr %i.lyg, i64 75628
  br label %bb.or

._crit_edge1190.split.i:                          ; preds = %._crit_edge1187.i
  tail call void @free(ptr noundef %i.lvj) #27, !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !551
  br label %demosaic_box3.exit

._crit_edge1187.i:                                ; preds = %._crit_edge1183.split.i
  %i.lyi = add nuw nsw i32 %.08821189.i, 1
  %indvars.iv.next.i558 = add i32 %indvars.iv.i553, %i.aor
  %indvars.iv.next1312.i.a = add nuw i32 %indvars.iv1311.i.a, 112
  %exitcond1320.i = icmp eq i32 %.08821189.i, %i.lvw
  %indvars.iv.next = add nuw i32 %indvars.iv, 112
  %indvars.iv.next1105 = add i32 %indvars.iv1104, -112
  %indvars.iv.next1108 = add i32 %indvars.iv1107, -112
  %indvars.iv.next1125 = add i32 %indvars.iv1124, -112
  %indvars.iv.next1130 = add i32 %indvars.iv1129, -112
  %indvars.iv.next1149 = add i32 %indvars.iv1148, -112
  br i1 %exitcond1320.i, label %._crit_edge1190.split.i, label %.preheader1027.i

bb.or:                                            ; preds = %._crit_edge1183.split.i, %.preheader1027.i
  %indvars.iv1113 = phi i32 [ %indvars.iv.next1114, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 8 uses
  %indvars.iv1110 = phi i32 [ %indvars.iv.next1111, %._crit_edge1183.split.i ], [ 128, %.preheader1027.i ] ; 6 uses
  %indvars.iv1214.i.a = phi i32 [ %indvars.iv.next1215.i, %._crit_edge1183.split.i ], [ %indvars.iv.i553, %.preheader1027.i ] ; 2 uses
  %.08871185.i = phi i32 [ %i.pps, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %smin4732 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lyj = add i32 %smin4732, %indvars.iv1113
  %smin4733 = call i32 @llvm.smin.i32(i32 %i.lyj, i32 128) ; 2 uses
  %i.lyk = add nsw i32 %smin4733, 3
  %i.lyl = zext i32 %i.lyk to i64
  %i.lym = add nsw i64 %i.lyl, -3                 ; 2 uses
  %smin4723 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lyn = add i32 %smin4723, %indvars.iv1113
  %smin4715 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lyo = add i32 %smin4715, %indvars.iv1113
  %i.lyp = mul nuw i32 %.08871185.i, 112
  %i.lyq = add i32 %i.lyp, 128
  %smin4707 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.lyq)
  %i.lyr = mul i32 %.08871185.i, -112
  %i.lys = add i32 %smin4707, %i.lyr
  %smin4415 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lyt = add i32 %smin4415, %indvars.iv1113
  %smin4416 = call i32 @llvm.smin.i32(i32 %i.lyt, i32 128)
  %i.lyu = add i32 %smin4416, -1                  ; 3 uses
  %i.lyv = zext i32 %i.lyu to i64
  %i.lyw = add nuw nsw i64 %i.lyv, 1              ; 5 uses
  %i.lyx = add i32 %indvars.iv1113, -1
  %i.lyy = add i32 %indvars.iv1113, -1
  %smin1141 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lyz = add i32 %smin1141, %indvars.iv1113
  %smin1142 = call i32 @llvm.smin.i32(i32 %i.lyz, i32 128)
  %i.lza = add nsw i32 %smin1142, 3
  %i.lzb = zext i32 %i.lza to i64                 ; 2 uses
  %i.lzc = mul nuw i32 %.08871185.i, 112          ; 5 uses
  %i.lzd = add nuw i32 %i.lzc, 128
  %i.lze = tail call i32 @llvm.smin.i32(i32 %i.lzd, i32 %i.bo) ; 3 uses
  %i.lzf = sub i32 %i.lze, %i.lzc                 ; 7 uses
  %i.lzg = tail call i32 @llvm.smin.i32(i32 %i.lzf, i32 128) ; 24 uses
  %i.lzh = add nsw i32 %i.lzg, 8                  ; 2 uses
  br i1 %i.lwo, label %.lr.ph1038.i, label %.preheader1026.i

.lr.ph1038.i:                                     ; preds = %bb.or
  %i.lzi = add nsw i32 %i.lzg, 4                  ; 2 uses
  %i.lzj = icmp sgt i32 %i.lzf, 0
  %i.lzk = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !551 ; 4 uses
  %i.lzl = icmp eq ptr %i.lzk, null
  br i1 %i.lzj, label %.lr.ph.i564.preheader, label %.lr.ph1049.i

.lr.ph.i564.preheader:                            ; preds = %.lr.ph1038.i
  %xtraiter4709 = and i32 %i.lzg, 1
  %i.lzm = icmp eq i32 %i.lys, 1
  %unroll_iter4713 = and i32 %i.lzg, 254
  %lcmp.mod4711.not = icmp eq i32 %xtraiter4709, 0
  %lcmp.mod4712 = trunc i32 %i.lzg to i1
  %min.iters.check4418 = icmp ult i32 %i.lyu, 7
  %min.iters.check4420 = icmp ult i32 %i.lyu, 31
  %i.lzn = and i64 %i.lyw, 24
  %n.vec4422 = and i64 %i.lyw, 8589934560         ; 8 uses
  %i.lzo = shl nuw nsw i64 %n.vec4422, 2
  %i.lzp = trunc i64 %n.vec4422 to i32
  %i.lzq = or disjoint i32 %i.lzp, 4
  %i.lzr = icmp eq i64 %n.vec4422, 32
  %i.lzs = icmp eq i64 %n.vec4422, 64
  %i.lzt = icmp eq i64 %n.vec4422, 96
  %cmp.n4434 = icmp eq i64 %i.lyw, %n.vec4422
  %min.epilog.iters.check4442 = icmp eq i64 %i.lzn, 0
  %n.vec4444 = and i64 %i.lyw, 8589934584         ; 5 uses
  %i.lzu = shl nuw nsw i64 %n.vec4444, 2
  %i.lzv = trunc i64 %n.vec4444 to i32
  %i.lzw = or disjoint i32 %i.lzv, 4
  %cmp.n4453 = icmp eq i64 %i.lyw, %n.vec4444
  br label %.lr.ph.i564

.preheader1026.i:                                 ; preds = %._crit_edge.i568, %bb.or
  br i1 %i.lwp, label %.preheader1026.i..lr.ph1049.i_crit_edge, label %._crit_edge1060.i

.preheader1026.i..lr.ph1049.i_crit_edge:          ; preds = %.preheader1026.i
  %.pre1259 = add nsw i32 %i.lzg, 4
  br label %.lr.ph1049.i

.lr.ph1049.i:                                     ; preds = %.preheader1026.i..lr.ph1049.i_crit_edge, %.lr.ph1038.i
  %.pre-phi1260 = phi i32 [ %.pre1259, %.preheader1026.i..lr.ph1049.i_crit_edge ], [ %i.lzi, %.lr.ph1038.i ] ; 2 uses
  %i.lzx = add nsw i32 %i.lzg, 6
  %i.lzy = sext i32 %i.lzx to i64                 ; 4 uses
  br label %bb.oy

.lr.ph.i564:                                      ; preds = %.lr.ph.i564.preheader, %._crit_edge.i568
  %indvar4412 = phi i64 [ %indvar.next4413, %._crit_edge.i568 ], [ 0, %.lr.ph.i564.preheader ] ; 2 uses
  %indvars.iv1224.i = phi i64 [ %indvars.iv.next1225.i, %._crit_edge.i568 ], [ 4, %.lr.ph.i564.preheader ] ; 2 uses
  %indvars.iv1216.i.a = phi i32 [ %indvars.iv.next1217.i, %._crit_edge.i568 ], [ %indvars.iv1214.i.a, %.lr.ph.i564.preheader ] ; 3 uses
  %i.lzz = zext i32 %indvars.iv1216.i.a to i64    ; 10 uses
  %.idx.i565 = mul nuw nsw i64 %indvars.iv1224.i, 544
  %i.maa = getelementptr inbounds nuw i8, ptr %i.lvp, i64 %.idx.i565 ; 16 uses
  %i.mab = getelementptr inbounds nuw i8, ptr %i.maa, i64 16 ; 7 uses
  br i1 %i.lzl, label %iter.check4439, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i564
  br i1 %i.lzm, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4439:                                   ; preds = %.lr.ph.i564
  %i.mac = zext i32 %indvars.iv1216.i.a to i64
  %i.mad = add nsw i64 %i.axu, %i.mac
  %i.mae = shl nsw i64 %i.mad, 2
  %i.maf = add i64 %i.mae, %.13625
  %i.mag = mul nuw nsw i64 %indvar4412, 544
  %i.mah = add i64 %i.lvx, %i.mag
  %i.mai = sub i64 %i.maf, %i.mah
  %diff.check4414 = icmp ugt i64 %i.mai, -128
  %or.cond4572 = select i1 %min.iters.check4418, i1 true, i1 %diff.check4414
  br i1 %or.cond4572, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4419

vector.main.loop.iter.check4419:                  ; preds = %iter.check4439
  br i1 %min.iters.check4420, label %vec.epilog.ph4443, label %vector.ph4421

vector.ph4421:                                    ; preds = %vector.main.loop.iter.check4419
  %i.maj = add nuw nsw i64 %n.vec4422, %i.lzz
  %i.mak = getelementptr i8, ptr %i.mab, i64 %i.lzo
  %i.mal = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %i.lzz ; 4 uses
  %i.mam = getelementptr inbounds nuw i8, ptr %i.mal, i64 32
  %i.man = getelementptr inbounds nuw i8, ptr %i.mal, i64 64
  %i.mao = getelementptr inbounds nuw i8, ptr %i.mal, i64 96
  %wide.load4428 = load <8 x float>, ptr %i.mal, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429 = load <8 x float>, ptr %i.mam, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4430 = load <8 x float>, ptr %i.man, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4431 = load <8 x float>, ptr %i.mao, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.map = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428, %broadcast.splat4424
  %i.maq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429, %broadcast.splat4424
  %i.mar = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4430, %broadcast.splat4424
  %i.mas = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4431, %broadcast.splat4424
  %i.mat = getelementptr i8, ptr %i.maa, i64 48
  %i.mau = getelementptr i8, ptr %i.maa, i64 80
  %i.mav = getelementptr i8, ptr %i.maa, i64 112
  store <8 x float> %i.map, ptr %i.mab, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.maq, ptr %i.mat, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mar, ptr %i.mau, align 16, !tbaa !12, !noalias !549
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.mzg = fadd reassoc nsz arcp contract afn <8 x float> %i.mze, %i.mzf
  %i.mzh = fmul reassoc nsz arcp contract afn <8 x float> %i.myr, %i.myr
  %i.mzi = fadd reassoc nsz arcp contract afn <8 x float> %i.mzg, %i.mzh
  %i.mzj = fmul reassoc nsz arcp contract afn <8 x float> %i.myt, %i.myt
  %i.mzk = fadd reassoc nsz arcp contract afn <8 x float> %i.mzi, %i.mzj
  %i.mzl = fmul reassoc nsz arcp contract afn <8 x float> %i.myu, %i.myu
  %i.mzm = fadd reassoc nsz arcp contract afn <8 x float> %i.mzk, %i.mzl
  %i.mzn = fmul reassoc nsz arcp contract afn <8 x float> %i.myw, %i.myw
  %i.mzo = fadd reassoc nsz arcp contract afn <8 x float> %i.mzm, %i.mzn
  %i.mzp = fmul reassoc nsz arcp contract afn <8 x float> %i.myy, %i.myy
  %i.mzq = fadd reassoc nsz arcp contract afn <8 x float> %i.mzo, %i.mzp
  %i.mzr = fmul reassoc nsz arcp contract afn <8 x float> %i.mza, %i.mza
  %i.mzs = fadd reassoc nsz arcp contract afn <8 x float> %i.mzq, %i.mzr
  %i.mzt = fmul reassoc nsz arcp contract afn <8 x float> %i.mzc, %i.mzc
  %i.mzu = fadd reassoc nsz arcp contract afn <8 x float> %i.mzs, %i.mzt ; 3 uses
  %i.mzv = fmul reassoc nsz arcp contract afn <8 x float> %i.myl, %strided.vec4296
  %i.mzw = fmul reassoc nsz arcp contract afn <8 x float> %i.mzu, %strided.vec4278
  %i.mzx = fadd reassoc nsz arcp contract afn <8 x float> %i.mzv, %i.mzw
  %i.mzy = fadd reassoc nsz arcp contract afn <8 x float> %i.myl, %i.mzu ; 2 uses
  %i.mzz = fmul reassoc nsz arcp contract afn <8 x float> %i.myl, %i.mzu
  %i.naa = fdiv reassoc nsz arcp contract afn <8 x float> %i.mzz, %i.mzy ; 2 uses
  %i.nab = fmul reassoc nsz arcp contract afn <8 x float> %i.naa, %i.mwq
  %i.nac = fdiv reassoc nsz arcp contract afn <8 x float> %i.nab, %i.mwr
  %i.nad = fmul reassoc nsz arcp contract afn <8 x float> %i.mzx, %i.mwt
  %i.nae = fdiv reassoc nsz arcp contract afn <8 x float> %i.nad, %i.mzy
  %i.naf = fadd reassoc nsz arcp contract afn <8 x float> %i.nac, %i.nae
  %i.nag = fadd reassoc nsz arcp contract afn <8 x float> %i.naa, %i.mwt
  %i.nah = fdiv reassoc nsz arcp contract afn <8 x float> %i.naf, %i.nag
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nah, <8 x ptr> align 4 %wide.gep4240, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4305 = add nuw i64 %index4238, 8     ; 2 uses
  %vec.ind.next4306 = add nuw nsw <8 x i64> %vec.ind4239, splat (i64 16)
  %i.nai = icmp eq i64 %index.next4305, %n.vec4233
  br i1 %i.nai, label %scalar.ph4230.preheader, label %vector.body4237, !llvm.loop !341

._crit_edge1057.i:                                ; preds = %scalar.ph4230, %bb.ph
  %indvars.iv.next1246.i = add nuw nsw i64 %indvars.iv1245.i, 1 ; 2 uses
  %exitcond1122.not = icmp eq i64 %indvars.iv.next1246.i, %smax1145
  br i1 %exitcond1122.not, label %._crit_edge1060.i, label %bb.ph

scalar.ph4230:                                    ; preds = %scalar.ph4230.preheader, %scalar.ph4230
  %indvars.iv1242.i = phi i64 [ %indvars.iv.next1243.i, %scalar.ph4230 ], [ %indvars.iv1242.i.ph, %scalar.ph4230.preheader ] ; 7 uses
  %i.naj = getelementptr inbounds nuw [4 x i8], ptr %i.mst, i64 %indvars.iv1242.i ; 3 uses
  %i.nak = getelementptr inbounds nuw [4 x i8], ptr %i.msu, i64 %indvars.iv1242.i ; 9 uses
  %i.nal = getelementptr inbounds nuw [4 x i8], ptr %i.msv, i64 %indvars.iv1242.i ; 2 uses
  %i.nam = getelementptr inbounds nuw [4 x i8], ptr %i.msw, i64 %indvars.iv1242.i ; 9 uses
  %i.nan = getelementptr inbounds nuw [4 x i8], ptr %i.msx, i64 %indvars.iv1242.i
  %i.nao = getelementptr inbounds i8, ptr %i.nal, i64 -16
  %i.nap = getelementptr inbounds nuw i8, ptr %i.nal, i64 16
  %i.naq = load float, ptr %i.nap, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nar = load <8 x float>, ptr %i.nao, align 4, !tbaa !12, !noalias !549 ; 4 uses
  %i.nas = getelementptr inbounds i8, ptr %i.naj, i64 -16
  %i.nat = getelementptr inbounds nuw i8, ptr %i.naj, i64 16
  %i.nau = load <8 x float>, ptr %i.nas, align 4, !tbaa !12, !noalias !549
  %i.nav = fsub reassoc nsz arcp contract afn <8 x float> %i.nar, %i.nau ; 2 uses
  %i.naw = fmul reassoc nsz arcp contract afn <8 x float> %i.nav, %i.nav
  %i.nax = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.naw)
  %i.nay = getelementptr inbounds i8, ptr %i.nam, i64 -2176
  %i.naz = load float, ptr %i.nay, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nba = getelementptr inbounds i8, ptr %i.nam, i64 -1632
  %i.nbb = load float, ptr %i.nba, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbc = getelementptr inbounds i8, ptr %i.nam, i64 -1088
  %i.nbd = load float, ptr %i.nbc, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbe = getelementptr inbounds i8, ptr %i.nam, i64 -544
  %i.nbf = load float, ptr %i.nbe, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbg = load float, ptr %i.nam, align 4, !tbaa !12, !noalias !549 ; 4 uses
  %i.nbh = getelementptr inbounds nuw i8, ptr %i.nam, i64 544
  %i.nbi = load float, ptr %i.nbh, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbj = getelementptr inbounds nuw i8, ptr %i.nam, i64 1088
  %i.nbk = load float, ptr %i.nbj, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbl = getelementptr inbounds nuw i8, ptr %i.nam, i64 1632
  %i.nbm = load float, ptr %i.nbl, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbn = getelementptr inbounds nuw i8, ptr %i.nam, i64 2176
  %i.nbo = load float, ptr %i.nbn, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nbp = fadd reassoc nsz arcp contract afn float %i.nbb, %i.naz
  %i.nbq = fadd reassoc nsz arcp contract afn float %i.nbp, %i.nbd
  %i.nbr = fadd reassoc nsz arcp contract afn float %i.nbq, %i.nbf
  %i.nbs = fadd reassoc nsz arcp contract afn float %i.nbr, %i.nbg
  %i.nbt = fadd reassoc nsz arcp contract afn float %i.nbs, %i.nbi
  %i.nbu = fadd reassoc nsz arcp contract afn float %i.nbt, %i.nbk
  %i.nbv = fadd reassoc nsz arcp contract afn float %i.nbu, %i.nbm
  %i.nbw = getelementptr inbounds i8, ptr %i.nak, i64 -2176
  %i.nbx = load float, ptr %i.nbw, align 4, !tbaa !12, !noalias !549
  %i.nby = fsub reassoc nsz arcp contract afn float %i.naz, %i.nbx ; 2 uses
  %i.nbz = getelementptr inbounds i8, ptr %i.nak, i64 -1632
  %i.nca = load float, ptr %i.nbz, align 4, !tbaa !12, !noalias !549
  %i.ncb = fsub reassoc nsz arcp contract afn float %i.nbb, %i.nca ; 2 uses
  %i.ncc = getelementptr inbounds i8, ptr %i.nak, i64 -1088
  %i.ncd = load float, ptr %i.ncc, align 4, !tbaa !12, !noalias !549
  %i.nce = fsub reassoc nsz arcp contract afn float %i.nbd, %i.ncd ; 2 uses
  %i.ncf = getelementptr inbounds i8, ptr %i.nak, i64 -544
  %i.ncg = load float, ptr %i.ncf, align 4, !tbaa !12, !noalias !549
  %i.nch = fsub reassoc nsz arcp contract afn float %i.nbf, %i.ncg ; 2 uses
  %i.nci = getelementptr inbounds nuw i8, ptr %i.nak, i64 544
  %i.ncj = load float, ptr %i.nci, align 4, !tbaa !12, !noalias !549
  %i.nck = fsub reassoc nsz arcp contract afn float %i.nbi, %i.ncj ; 2 uses
  %i.ncl = getelementptr inbounds nuw i8, ptr %i.nak, i64 1088
  %i.ncm = load float, ptr %i.ncl, align 4, !tbaa !12, !noalias !549
  %i.ncn = fsub reassoc nsz arcp contract afn float %i.nbk, %i.ncm ; 2 uses
  %i.nco = getelementptr inbounds nuw i8, ptr %i.nak, i64 1632
  %i.ncp = getelementptr inbounds nuw i8, ptr %i.nak, i64 2176
  %i.ncq = load float, ptr %i.ncp, align 4, !tbaa !12, !noalias !549
  %i.ncr = fsub reassoc nsz arcp contract afn float %i.nbo, %i.ncq ; 2 uses
  %i.ncs = fmul reassoc nsz arcp contract afn float %i.nby, %i.nby
  %i.nct = fadd reassoc nsz arcp contract afn float %i.ncs, 1.000000e-07
  %i.ncu = fmul reassoc nsz arcp contract afn float %i.ncb, %i.ncb
  %i.ncv = fadd reassoc nsz arcp contract afn float %i.nct, %i.ncu
  %i.ncw = fmul reassoc nsz arcp contract afn float %i.nce, %i.nce
  %i.ncx = fadd reassoc nsz arcp contract afn float %i.ncv, %i.ncw
  %i.ncy = fmul reassoc nsz arcp contract afn float %i.nch, %i.nch
  %i.ncz = fadd reassoc nsz arcp contract afn float %i.ncx, %i.ncy
  %i.nda = fmul reassoc nsz arcp contract afn float %i.nck, %i.nck
  %i.ndb = fmul reassoc nsz arcp contract afn float %i.ncn, %i.ncn
  %i.ndc = fmul reassoc nsz arcp contract afn float %i.ncr, %i.ncr
  %op.rdx4605 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.naq, <8 x float> %i.nar)
  %i.ndd = fadd reassoc nsz arcp contract afn float %i.nbv, %i.nbo
  %i.nde = insertelement <2 x float> poison, float %op.rdx4605, i64 0
  %i.ndf = insertelement <2 x float> %i.nde, float %i.ndd, i64 1
  %i.ndg = fmul reassoc nsz arcp contract afn <2 x float> %i.ndf, splat (float f0x3DE38E39) ; 3 uses
  %i.ndh = shufflevector <2 x float> %i.ndg, <2 x float> poison, <8 x i32> zeroinitializer
  %i.ndi = fsub reassoc nsz arcp contract afn <8 x float> %i.nar, %i.ndh ; 2 uses
  %i.ndj = fmul reassoc nsz arcp contract afn <8 x float> %i.ndi, %i.ndi
  %i.ndk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ndj)
  %i.ndl = extractelement <2 x float> %i.ndg, i64 1 ; 8 uses
  %i.ndm = fsub reassoc nsz arcp contract afn float %i.naz, %i.ndl ; 2 uses
  %i.ndn = fmul reassoc nsz arcp contract afn float %i.ndm, %i.ndm
  %i.ndo = fadd reassoc nsz arcp contract afn float %i.ndn, 1.000000e-07
  %i.ndp = fsub reassoc nsz arcp contract afn float %i.nbb, %i.ndl ; 2 uses
  %i.ndq = fmul reassoc nsz arcp contract afn float %i.ndp, %i.ndp
  %i.ndr = fadd reassoc nsz arcp contract afn float %i.ndo, %i.ndq
  %i.nds = fsub reassoc nsz arcp contract afn float %i.nbd, %i.ndl ; 2 uses
  %i.ndt = fmul reassoc nsz arcp contract afn float %i.nds, %i.nds
  %i.ndu = fadd reassoc nsz arcp contract afn float %i.ndr, %i.ndt
  %i.ndv = fsub reassoc nsz arcp contract afn float %i.nbf, %i.ndl ; 2 uses
  %i.ndw = fmul reassoc nsz arcp contract afn float %i.ndv, %i.ndv
  %i.ndx = fadd reassoc nsz arcp contract afn float %i.ndu, %i.ndw
  %i.ndy = fsub reassoc nsz arcp contract afn float %i.nbg, %i.ndl ; 2 uses
  %i.ndz = fmul reassoc nsz arcp contract afn float %i.ndy, %i.ndy
  %i.nea = fadd reassoc nsz arcp contract afn float %i.ndx, %i.ndz
  %i.neb = fsub reassoc nsz arcp contract afn float %i.nbi, %i.ndl ; 2 uses
  %i.nec = fmul reassoc nsz arcp contract afn float %i.neb, %i.neb
  %i.ned = fadd reassoc nsz arcp contract afn float %i.nea, %i.nec
  %i.nee = fsub reassoc nsz arcp contract afn float %i.nbk, %i.ndl ; 2 uses
  %i.nef = fmul reassoc nsz arcp contract afn float %i.nee, %i.nee
  %i.neg = fadd reassoc nsz arcp contract afn float %i.ned, %i.nef
  %i.neh = insertelement <2 x float> poison, float %i.naq, i64 0
  %i.nei = insertelement <2 x float> %i.neh, float %i.nbm, i64 1
  %i.nej = fsub reassoc nsz arcp contract afn <2 x float> %i.nei, %i.ndg ; 2 uses
  %i.nek = fmul reassoc nsz arcp contract afn <2 x float> %i.nej, %i.nej
  %i.nel = insertelement <2 x float> poison, float %i.ndk, i64 0
  %i.nem = insertelement <2 x float> %i.nel, float %i.neg, i64 1
  %i.nen = fadd reassoc nsz arcp contract afn <2 x float> %i.nem, %i.nek
  %i.neo = fsub reassoc nsz arcp contract afn float %i.nbo, %i.ndl ; 2 uses
  %i.nep = fmul reassoc nsz arcp contract afn float %i.neo, %i.neo
  %i.neq = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.nep, i64 1
  %i.ner = fadd reassoc nsz arcp contract afn <2 x float> %i.nen, %i.neq ; 3 uses
  %i.nes = load float, ptr %i.nco, align 4, !tbaa !12, !noalias !549
  %i.net = load float, ptr %i.nak, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.neu = load float, ptr %i.nat, align 4, !tbaa !12, !noalias !549
  %i.nev = load float, ptr %i.naj, align 4, !tbaa !12, !noalias !549
  %i.new = fsub reassoc nsz arcp contract afn float %i.nbg, %i.net ; 2 uses
  %i.nex = fsub reassoc nsz arcp contract afn float %i.naq, %i.neu
  %i.ney = fsub reassoc nsz arcp contract afn float %i.nbm, %i.nes
  %i.nez = fmul reassoc nsz arcp contract afn float %i.new, %i.new
  %i.nfa = fadd reassoc nsz arcp contract afn float %i.ncz, %i.nez
  %i.nfb = fadd reassoc nsz arcp contract afn float %i.nfa, %i.nda
  %i.nfc = fadd reassoc nsz arcp contract afn float %i.nfb, %i.ndb
  %i.nfd = insertelement <2 x float> poison, float %i.nex, i64 0
  %i.nfe = insertelement <2 x float> %i.nfd, float %i.ney, i64 1 ; 2 uses
  %i.nff = fmul reassoc nsz arcp contract afn <2 x float> %i.nfe, %i.nfe
  %i.nfg = insertelement <2 x float> poison, float %i.nax, i64 0
  %i.nfh = insertelement <2 x float> %i.nfg, float %i.nfc, i64 1
  %i.nfi = fadd reassoc nsz arcp contract afn <2 x float> %i.nfh, %i.nff
  %i.nfj = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ndc, i64 1
  %i.nfk = fadd reassoc nsz arcp contract afn <2 x float> %i.nfi, %i.nfj ; 3 uses
  %i.nfl = insertelement <2 x float> poison, float %i.nev, i64 0
  %i.nfm = insertelement <2 x float> %i.nfl, float %i.net, i64 1
  %i.nfn = fmul reassoc nsz arcp contract afn <2 x float> %i.ner, %i.nfm
  %i.nfo = shufflevector <8 x float> %i.nar, <8 x float> poison, <2 x i32> <i32 4, i32 poison>
  %i.nfp = insertelement <2 x float> %i.nfo, float %i.nbg, i64 1
  %i.nfq = fmul reassoc nsz arcp contract afn <2 x float> %i.nfk, %i.nfp
  %i.nfr = fadd reassoc nsz arcp contract afn <2 x float> %i.nfn, %i.nfq
  %i.nfs = fadd reassoc nsz arcp contract afn <2 x float> %i.ner, %i.nfk ; 2 uses
  %i.nft = fmul reassoc nsz arcp contract afn <2 x float> %i.ner, %i.nfk
  %i.nfu = fdiv reassoc nsz arcp contract afn <2 x float> %i.nft, %i.nfs ; 3 uses
  %i.nfv = shufflevector <2 x float> %i.nfr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nfw = fmul reassoc nsz arcp contract afn <2 x float> %i.nfu, %i.nfv
  %i.nfx = shufflevector <2 x float> %i.nfs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nfy = fdiv reassoc nsz arcp contract afn <2 x float> %i.nfw, %i.nfx ; 2 uses
  %shift = shufflevector <2 x float> %i.nfy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %shift, %i.nfy
  %shift4610 = shufflevector <2 x float> %i.nfu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4611 = fadd reassoc nsz arcp contract afn <2 x float> %shift4610, %i.nfu
  %foldExtExtBinop4613 = fdiv reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop4611
  %i.nfz = extractelement <2 x float> %foldExtExtBinop4613, i64 0
  store float %i.nfz, ptr %i.nan, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1243.i = add nuw nsw i64 %indvars.iv1242.i, 2
  %i.nga = icmp slt i64 %indvars.iv1242.i, %i.mnr
  br i1 %i.nga, label %scalar.ph4230, label %._crit_edge1057.i, !llvm.loop !342

.preheader1023.i:                                 ; preds = %._crit_edge1067.i, %.lr.ph1071.i
  br i1 %6, label %.lr.ph1077.i, label %._crit_edge1085.i

.lr.ph1077.i:                                     ; preds = %.preheader1023.i
  %i.ngb = add nsw i32 %i.lzg, 7                  ; 3 uses
  %i.ngc = sext i32 %i.ngb to i64                 ; 3 uses
  %i.ngd = add nsw i32 %i.lzg, 6
  br label %bb.pq

.lr.ph1066.i:                                     ; preds = %._crit_edge1067.i, %.lr.ph1066.preheader.i
  %indvars.iv1257.i = phi i64 [ 0, %.lr.ph1066.preheader.i ], [ %indvars.iv.next1258.i, %._crit_edge1067.i ] ; 3 uses
  %.09261069.i = phi i32 [ %i.lwq, %.lr.ph1066.preheader.i ], [ %i.njg, %._crit_edge1067.i ] ; 3 uses
  %indvars.iv1257.tr.i = trunc nuw i64 %indvars.iv1257.i to i32
  %i.nge = shl nuw i32 %indvars.iv1257.tr.i, 1
  %i.ngf = and i32 %i.nge, 14                     ; 7 uses
  %i.ngg = icmp sgt i32 %.09261069.i, -1
  %i.ngh = mul nuw nsw i64 %indvars.iv1257.i, 136 ; 10 uses
  %i.ngi = getelementptr inbounds nuw [4 x i8], ptr %i.lvl, i64 %i.ngh ; 7 uses
  %i.ngj = getelementptr inbounds nuw [4 x i8], ptr %i.lvo, i64 %i.ngh
  br i1 %i.ngg, label %.lr.ph1066.split.us.i, label %.thread982.i.preheader

.thread982.i.preheader:                           ; preds = %.lr.ph1066.i
  br i1 %i.msi, label %.thread982.i.epil.preheader, label %.thread982.i.preheader.new

.thread982.i.preheader.new:                       ; preds = %.thread982.i.preheader
  %i.ngk = shl nuw nsw i32 %i.ngf, 1
  %i.ngl = lshr i32 %.fr1063, %i.ngk
  %i.ngm = and i32 %i.ngl, 3                      ; 2 uses
  %i.ngn = zext nneg i32 %i.ngm to i64
  %i.ngo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngn
  %i.ngp = load ptr, ptr %i.ngo, align 8, !tbaa !140, !noalias !551
  %i.ngq = getelementptr inbounds nuw [4 x i8], ptr %i.ngp, i64 %i.ngh
  %.not955983.i = icmp eq i32 %i.ngm, 1
  %.tr.i962.i.1 = shl nuw nsw i32 %i.ngf, 1
  %i.ngr = or disjoint i32 %.tr.i962.i.1, 2
  %i.ngs = lshr i32 %.fr1063, %i.ngr
  %i.ngt = and i32 %i.ngs, 3                      ; 2 uses
  %i.ngu = zext nneg i32 %i.ngt to i64
  %i.ngv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngu
  %i.ngw = load ptr, ptr %i.ngv, align 8, !tbaa !140, !noalias !551
  %i.ngx = getelementptr inbounds nuw [4 x i8], ptr %i.ngw, i64 %i.ngh
  %.not955983.i.1 = icmp eq i32 %i.ngt, 1
  br label %.thread982.i

.lr.ph1066.split.us.i:                            ; preds = %.lr.ph1066.i
  %i.ngy = icmp slt i32 %.09261069.i, %i.axl
  br i1 %i.ngy, label %.lr.ph1066.split.us.split.preheader.i, label %.lr.ph1066.split.us.split.us.i.preheader

.lr.ph1066.split.us.split.us.i.preheader:         ; preds = %.lr.ph1066.split.us.i
  br i1 %i.msk, label %.lr.ph1066.split.us.split.us.i.epil.preheader, label %.lr.ph1066.split.us.split.us.i.preheader.new

.lr.ph1066.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1066.split.us.split.us.i.preheader
  %i.ngz = shl nuw nsw i32 %i.ngf, 1
  %i.nha = lshr i32 %.fr1063, %i.ngz
  %i.nhb = and i32 %i.nha, 3                      ; 2 uses
  %i.nhc = zext nneg i32 %i.nhb to i64
  %i.nhd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhc
  %i.nhe = load ptr, ptr %i.nhd, align 8, !tbaa !140, !noalias !551
  %i.nhf = getelementptr inbounds nuw [4 x i8], ptr %i.nhe, i64 %i.ngh
  %.not955.us.us.i = icmp eq i32 %i.nhb, 1
  %.tr.i962.us.us.i.1 = shl nuw nsw i32 %i.ngf, 1
  %i.nhg = or disjoint i32 %.tr.i962.us.us.i.1, 2
  %i.nhh = lshr i32 %.fr1063, %i.nhg
  %i.nhi = and i32 %i.nhh, 3                      ; 2 uses
  %i.nhj = zext nneg i32 %i.nhi to i64
  %i.nhk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhj
  %i.nhl = load ptr, ptr %i.nhk, align 8, !tbaa !140, !noalias !551
  %i.nhm = getelementptr inbounds nuw [4 x i8], ptr %i.nhl, i64 %i.ngh
  %.not955.us.us.i.1 = icmp eq i32 %i.nhi, 1
  br label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.preheader.i:            ; preds = %.lr.ph1066.split.us.i
  %invariant.gep1376.i = getelementptr inbounds nuw [4 x i8], ptr %i.lvp, i64 %i.ngh
  br label %.lr.ph1066.split.us.split.i

.lr.ph1066.split.us.split.us.i:                   ; preds = %bb.pk, %.lr.ph1066.split.us.split.us.i.preheader.new
  %indvars.iv1251.i = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1252.i.1, %bb.pk ] ; 4 uses
  %niter4730 = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %niter4730.next.1, %bb.pk ]
  %i.nhn = getelementptr inbounds nuw [4 x i8], ptr %i.nhf, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.nhn, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i, label %.lr.ph1066.split.us.split.us.i.1, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph1066.split.us.split.us.i
  %i.nho = getelementptr inbounds nuw [4 x i8], ptr %i.ngi, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.nho, align 8, !tbaa !12, !noalias !549
  br label %.lr.ph1066.split.us.split.us.i.1

.lr.ph1066.split.us.split.us.i.1:                 ; preds = %bb.pi, %.lr.ph1066.split.us.split.us.i
  %indvars.iv.next1252.i = or disjoint i64 %indvars.iv1251.i, 1 ; 2 uses
  %i.nhp = getelementptr inbounds nuw [4 x i8], ptr %i.nhm, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.nhp, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i.1, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph1066.split.us.split.us.i.1
  %i.nhq = getelementptr inbounds nuw [4 x i8], ptr %i.ngi, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.nhq, align 4, !tbaa !12, !noalias !549
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.lr.ph1066.split.us.split.us.i.1
  %indvars.iv.next1252.i.1 = add nuw nsw i64 %indvars.iv1251.i, 2 ; 2 uses
  %niter4730.next.1 = add i64 %niter4730, 2       ; 2 uses
  %niter4730.ncmp.1.not = icmp eq i64 %niter4730.next.1, %unroll_iter4729
  br i1 %niter4730.ncmp.1.not, label %._crit_edge1067.i.loopexit4626.unr-lcssa, label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.i:                      ; preds = %bb.pn, %.lr.ph1066.split.us.split.preheader.i
  %indvars.iv1254.i = phi i64 [ 0, %.lr.ph1066.split.us.split.preheader.i ], [ %indvars.iv.next1255.i, %bb.pn ] ; 6 uses
  %.09241064.us.i = phi i32 [ %i.msf, %.lr.ph1066.split.us.split.preheader.i ], [ %i.nii, %bb.pn ] ; 2 uses
  %i.nhr = trunc nuw nsw i64 %indvars.iv1254.i to i32
  %i.nhs = and i32 %i.nhr, 1
  %.tr.i962.us.i = or disjoint i32 %i.nhs, %i.ngf
  %i.nht = shl nuw nsw i32 %.tr.i962.us.i, 1
  %i.nhu = lshr i32 %.fr1063, %i.nht
  %i.nhv = and i32 %i.nhu, 3                      ; 3 uses
  %i.nhw = icmp ult i32 %.09241064.us.i, %i.bo
  %i.nhx = zext nneg i32 %i.nhv to i64
  %i.nhy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhx
  %i.nhz = load ptr, ptr %i.nhy, align 8, !tbaa !140, !noalias !551
  %i.nia = getelementptr inbounds nuw [4 x i8], ptr %i.nhz, i64 %i.ngh
  %i.nib = getelementptr inbounds nuw [4 x i8], ptr %i.nia, i64 %indvars.iv1254.i ; 2 uses
  br i1 %i.nhw, label %bb.pl, label %.thread.i562

bb.pl:                                            ; preds = %.lr.ph1066.split.us.split.i
  %gep1377.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1376.i, i64 %indvars.iv1254.i
  %i.nic = load float, ptr %gep1377.i, align 4, !tbaa !12, !noalias !549 ; 2 uses
  store float %i.nic, ptr %i.nib, align 4, !tbaa !12, !noalias !549
  %.not955.us.i = icmp eq i32 %i.nhv, 1
  br i1 %.not955.us.i, label %bb.pn, label %bb.pm

.thread.i562:                                     ; preds = %.lr.ph1066.split.us.split.i
  store float 0.000000e+00, ptr %i.nib, align 4, !tbaa !12, !noalias !549
  %.not955.us1356.i = icmp eq i32 %i.nhv, 1
  br i1 %.not955.us1356.i, label %bb.pn, label %.thread1357.i

bb.pm:                                            ; preds = %bb.pl
  %i.nid = getelementptr inbounds nuw [4 x i8], ptr %i.ngj, i64 %indvars.iv1254.i
  %i.nie = load float, ptr %i.nid, align 4, !tbaa !12, !noalias !549
  %i.nif = fadd reassoc nsz arcp contract afn float %i.nie, %i.nic
  br label %.thread1357.i

.thread1357.i:                                    ; preds = %bb.pm, %.thread.i562
  %i.nig = phi reassoc nsz arcp contract afn float [ %i.nif, %bb.pm ], [ 0.000000e+00, %.thread.i562 ]
  %i.nih = getelementptr inbounds nuw [4 x i8], ptr %i.ngi, i64 %indvars.iv1254.i
  store float %i.nig, ptr %i.nih, align 4, !tbaa !12, !noalias !549
  br label %bb.pn

bb.pn:                                            ; preds = %.thread1357.i, %.thread.i562, %bb.pl
  %indvars.iv.next1255.i = add nuw nsw i64 %indvars.iv1254.i, 1 ; 2 uses
  %i.nii = add nsw i32 %.09241064.us.i, 1
  %i.nij = icmp slt i64 %indvars.iv.next1255.i, %i.msh
  br i1 %i.nij, label %.lr.ph1066.split.us.split.i, label %._crit_edge1067.i

._crit_edge1067.i.loopexit4626.unr-lcssa:         ; preds = %bb.pk
  br i1 %lcmp.mod4727.not, label %._crit_edge1067.i, label %.lr.ph1066.split.us.split.us.i.epil.preheader

.lr.ph1066.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1067.i.loopexit4626.unr-lcssa, %.lr.ph1066.split.us.split.us.i.preheader
  %indvars.iv1251.i.epil.init = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader ], [ %indvars.iv.next1252.i.1, %._crit_edge1067.i.loopexit4626.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4728)
  %i.nik = trunc nuw nsw i64 %indvars.iv1251.i.epil.init to i32
  %i.nil = and i32 %i.nik, 1
  %.tr.i962.us.us.i.epil = or disjoint i32 %i.nil, %i.ngf
  %i.nim = shl nuw nsw i32 %.tr.i962.us.us.i.epil, 1
  %i.nin = lshr i32 %.fr1063, %i.nim
  %i.nio = and i32 %i.nin, 3                      ; 2 uses
  %i.nip = zext nneg i32 %i.nio to i64
  %i.niq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nip
  %i.nir = load ptr, ptr %i.niq, align 8, !tbaa !140, !noalias !551
  %i.nis = getelementptr inbounds nuw [4 x i8], ptr %i.nir, i64 %i.ngh
  %i.nit = getelementptr inbounds nuw [4 x i8], ptr %i.nis, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nit, align 4, !tbaa !12, !noalias !549
  %.not955.us.us.i.epil = icmp eq i32 %i.nio, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1067.i, label %bb.po

bb.po:                                            ; preds = %.lr.ph1066.split.us.split.us.i.epil.preheader
  %i.niu = getelementptr inbounds nuw [4 x i8], ptr %i.ngi, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.niu, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i

._crit_edge1067.i.loopexit4627.unr-lcssa:         ; preds = %bb.pp
  br i1 %lcmp.mod4719.not, label %._crit_edge1067.i, label %.thread982.i.epil.preheader

.thread982.i.epil.preheader:                      ; preds = %._crit_edge1067.i.loopexit4627.unr-lcssa, %.thread982.i.preheader
  %indvars.iv1248.i.epil.init = phi i64 [ 0, %.thread982.i.preheader ], [ %indvars.iv.next1249.i.1, %._crit_edge1067.i.loopexit4627.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4720)
  %i.niv = trunc nuw nsw i64 %indvars.iv1248.i.epil.init to i32
  %i.niw = and i32 %i.niv, 1
  %.tr.i962.i.epil = or disjoint i32 %i.niw, %i.ngf
  %i.nix = shl nuw nsw i32 %.tr.i962.i.epil, 1
  %i.niy = lshr i32 %.fr1063, %i.nix
  %i.niz = and i32 %i.niy, 3                      ; 2 uses
  %i.nja = zext nneg i32 %i.niz to i64
  %i.njb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nja
  %i.njc = load ptr, ptr %i.njb, align 8, !tbaa !140, !noalias !551
  %i.njd = getelementptr inbounds nuw [4 x i8], ptr %i.njc, i64 %i.ngh
  %i.nje = getelementptr inbounds nuw [4 x i8], ptr %i.njd, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nje, align 4, !tbaa !12, !noalias !549
  %.not955983.i.epil = icmp eq i32 %i.niz, 1
  br i1 %.not955983.i.epil, label %._crit_edge1067.i, label %.thread984.i.epil

.thread984.i.epil:                                ; preds = %.thread982.i.epil.preheader
  %i.njf = getelementptr inbounds nuw [4 x i8], ptr %i.ngi, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.njf, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i
end_hunk_1
begin_hunk_2_@process:bb.a
.lr.ph1074.i:                                     ; preds = %bb.pq
  %i.njv = or disjoint i32 %i.njt, %i.njq
  %i.njw = shl nuw nsw i32 %i.njv, 1
  %i.njx = lshr i32 %.fr1063, %i.njw
  %i.njy = and i32 %i.njx, 3                      ; 2 uses
  %i.njz = zext nneg i32 %i.njy to i64
  %i.nka = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njz
  %i.nkb = load ptr, ptr %i.nka, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.nkc = mul nuw nsw i64 %indvars.iv1263.i, 136 ; 3 uses
  %i.nkd = getelementptr inbounds nuw [4 x i8], ptr %i.nkb, i64 %i.nkc ; 2 uses
  %i.nke = getelementptr inbounds nuw [4 x i8], ptr %i.lvl, i64 %i.nkc ; 2 uses
  %i.nkf = sub nsw i32 2, %i.njy
  %i.nkg = sext i32 %i.nkf to i64
  %i.nkh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nkg
  %i.nki = load ptr, ptr %i.nkh, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.nkj = getelementptr inbounds nuw [4 x i8], ptr %i.nki, i64 %i.nkc ; 2 uses
  %narrow1352.i = add nuw nsw i32 %i.njt, 1
  %i.nkk = zext nneg i32 %narrow1352.i to i64     ; 5 uses
  %i.nkl = and i32 %i.njs, 1
  %i.nkm = zext nneg i32 %i.nkl to i64            ; 2 uses
  %i.nkn = add nuw nsw i64 %i.nkm, 3
  %i.nko = call i64 @llvm.smax.i64(i64 %i.ngc, i64 %i.nkn)
  %i.nkp = add nsw i64 %i.nko, -2
  %i.nkq = sub i64 %i.nkp, %i.nkm                 ; 2 uses
  %i.nkr = lshr i64 %i.nkq, 1
  %i.nks = add nuw nsw i64 %i.nkr, 1              ; 2 uses
  %min.iters.check4197 = icmp ult i64 %i.nkq, 16
  br i1 %min.iters.check4197, label %scalar.ph4196.preheader, label %vector.memcheck4173

scalar.ph4196.preheader:                          ; preds = %vector.body4203, %vector.memcheck4173, %.lr.ph1074.i
  %indvars.iv1260.i.ph = phi i64 [ %i.nkk, %vector.memcheck4173 ], [ %i.nkk, %.lr.ph1074.i ], [ %i.nlq, %vector.body4203 ]
  br label %scalar.ph4196

vector.memcheck4173:                              ; preds = %.lr.ph1074.i
  %i.nkt = and i32 %i.njs, 1
  %i.nku = zext nneg i32 %i.nkt to i64            ; 3 uses
  %i.nkv = shl nuw nsw i64 %i.nku, 2              ; 6 uses
  %i.nkw = getelementptr i8, ptr %i.nkb, i64 %i.njm
  %i.nkx = getelementptr i8, ptr %i.nkw, i64 544
  %scevgep4176 = getelementptr i8, ptr %i.nkx, i64 %i.nkv ; 2 uses
  %i.nky = add nuw nsw i64 %i.nku, 3
  %smax4177 = call i64 @llvm.smax.i64(i64 %i.ngc, i64 %i.nky)
  %i.nkz = add nsw i64 %smax4177, -2
  %i.nla = sub i64 %i.nkz, %i.nku
  %i.nlb = shl nuw nsw i64 %i.nla, 2
  %i.nlc = and i64 %i.nlb, 9223372036854775800    ; 3 uses
  %i.nld = getelementptr i8, ptr %i.nkb, i64 %i.njm
  %i.nle = getelementptr i8, ptr %i.nld, i64 556
  %i.nlf = getelementptr i8, ptr %i.nle, i64 %i.nlc
  %scevgep4178 = getelementptr i8, ptr %i.nlf, i64 %i.nkv ; 2 uses
  %i.nlg = getelementptr i8, ptr %i.nki, i64 %i.njm
  %i.nlh = getelementptr i8, ptr %i.nlg, i64 4
  %scevgep4179 = getelementptr i8, ptr %i.nlh, i64 %i.nkv ; 2 uses
  %i.nli = getelementptr i8, ptr %i.nki, i64 %i.njm
  %i.nlj = getelementptr i8, ptr %i.nli, i64 1096
  %i.nlk = getelementptr i8, ptr %i.nlj, i64 %i.nlc
  %scevgep4180 = getelementptr i8, ptr %i.nlk, i64 %i.nkv ; 2 uses
  %scevgep4182 = getelementptr i8, ptr %scevgep4181, i64 %i.nkv ; 2 uses
  %i.nll = getelementptr i8, ptr %scevgep4183, i64 %i.nlc
  %scevgep4184 = getelementptr i8, ptr %i.nll, i64 %i.nkv ; 2 uses
  %bound04185 = icmp ult ptr %scevgep4176, %scevgep4180
  %bound14186 = icmp ult ptr %scevgep4179, %scevgep4178
  %found.conflict4187 = and i1 %bound04185, %bound14186
  %bound04188 = icmp ult ptr %scevgep4176, %scevgep4184
  %bound14189 = icmp ult ptr %scevgep4182, %scevgep4178
  %found.conflict4190 = and i1 %bound04188, %bound14189
  %conflict.rdx4191 = or i1 %found.conflict4187, %found.conflict4190
  %bound04192 = icmp ult ptr %scevgep4179, %scevgep4184
  %bound14193 = icmp ult ptr %scevgep4182, %scevgep4180
  %found.conflict4194 = and i1 %bound04192, %bound14193
  %conflict.rdx4195 = or i1 %conflict.rdx4191, %found.conflict4194
  br i1 %conflict.rdx4195, label %scalar.ph4196.preheader, label %vector.ph4198

vector.ph4198:                                    ; preds = %vector.memcheck4173
  %i.nlm = and i64 %i.nks, 7                      ; 2 uses
  %i.nln = icmp eq i64 %i.nlm, 0
  %i.nlo = select i1 %i.nln, i64 8, i64 %i.nlm
  %n.vec4199 = sub nsw i64 %i.nks, %i.nlo         ; 2 uses
  %i.nlp = shl i64 %n.vec4199, 1
  %i.nlq = add i64 %i.nlp, %i.nkk
  %broadcast.splatinsert4200 = insertelement <8 x i64> poison, i64 %i.nkk, i64 0
  %broadcast.splat4201 = shufflevector <8 x i64> %broadcast.splatinsert4200, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4202 = add nuw nsw <8 x i64> %broadcast.splat4201, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4854 = getelementptr [4 x i8], ptr %i.nke, i64 %i.nkk
  br label %vector.body4203

vector.body4203:                                  ; preds = %vector.body4203, %vector.ph4198
  %index4204 = phi i64 [ 0, %vector.ph4198 ], [ %index.next4226, %vector.body4203 ] ; 2 uses
  %vec.ind4205 = phi <8 x i64> [ %induction4202, %vector.ph4198 ], [ %vec.ind.next4227, %vector.body4203 ] ; 3 uses
  %wide.gep4206 = getelementptr inbounds nuw [4 x i8], ptr %i.nkd, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nlr = extractelement <8 x ptr> %wide.gep4206, i64 0 ; 2 uses
  %.idx4558 = shl nuw i64 %index4204, 3
  %gep4855 = getelementptr i8, ptr %invariant.gep4854, i64 %.idx4558 ; 4 uses
  %i.nls = getelementptr inbounds i8, ptr %gep4855, i64 -4
  %wide.vec4207 = load <16 x float>, ptr %i.nls, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4208 = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4209 = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nlt = getelementptr inbounds i8, ptr %i.nlr, i64 -4
  %wide.vec4210 = load <16 x float>, ptr %i.nlt, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4211 = shufflevector <16 x float> %wide.vec4210, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlu = getelementptr inbounds nuw i8, ptr %i.nlr, i64 4
  %wide.vec4212 = load <16 x float>, ptr %i.nlu, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4213 = shufflevector <16 x float> %wide.vec4212, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4214 = load <16 x float>, ptr %gep4855, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4215 = shufflevector <16 x float> %wide.vec4214, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4214, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nlv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4211, %strided.vec4213
  %i.nlw = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4208, %strided.vec4216
  %i.nlx = fsub reassoc nsz arcp contract afn <8 x float> %i.nlv, %i.nlw
  %i.nly = fmul reassoc nsz arcp contract afn <8 x float> %i.nlx, splat (float 5.000000e-01)
  %i.nlz = fadd reassoc nsz arcp contract afn <8 x float> %i.nly, %strided.vec4209
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nlz, <8 x ptr> align 4 %wide.gep4206, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !554, !noalias !555
  %wide.gep4217 = getelementptr inbounds nuw [4 x i8], ptr %i.nkj, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nma = extractelement <8 x ptr> %wide.gep4217, i64 0 ; 2 uses
  %i.nmb = getelementptr inbounds i8, ptr %i.nma, i64 -544
  %wide.vec4218 = load <16 x float>, ptr %i.nmb, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4219 = shufflevector <16 x float> %wide.vec4218, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nmc = getelementptr inbounds i8, ptr %gep4855, i64 -544
  %wide.vec4220 = load <16 x float>, ptr %i.nmc, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4221 = shufflevector <16 x float> %wide.vec4220, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nmd = getelementptr inbounds nuw i8, ptr %i.nma, i64 544
  %wide.vec4222 = load <16 x float>, ptr %i.nmd, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4223 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nme = getelementptr inbounds nuw i8, ptr %gep4855, i64 544
  %wide.vec4224 = load <16 x float>, ptr %i.nme, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4225 = shufflevector <16 x float> %wide.vec4224, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nmf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219, %strided.vec4223
  %i.nmg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4221, %strided.vec4225
  %i.nmh = fsub reassoc nsz arcp contract afn <8 x float> %i.nmf, %i.nmg
  %i.nmi = fmul reassoc nsz arcp contract afn <8 x float> %i.nmh, splat (float 5.000000e-01)
  %i.nmj = fadd reassoc nsz arcp contract afn <8 x float> %i.nmi, %strided.vec4215
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nmj, <8 x ptr> align 4 %wide.gep4217, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !556, !noalias !557
  %index.next4226 = add nuw i64 %index4204, 8     ; 2 uses
  %vec.ind.next4227 = add nuw nsw <8 x i64> %vec.ind4205, splat (i64 16)
  %i.nmk = icmp eq i64 %index.next4226, %n.vec4199
  br i1 %i.nmk, label %scalar.ph4196.preheader, label %vector.body4203, !llvm.loop !347

._crit_edge1075.i:                                ; preds = %scalar.ph4196, %bb.pq
  %indvars.iv.next1264.i = add nuw nsw i64 %indvars.iv1263.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1264.i, %smax1137
  %indvar.next4175 = add i64 %indvar4174, 1
  br i1 %exitcond1132.not, label %.preheader1022.i, label %bb.pq

scalar.ph4196:                                    ; preds = %scalar.ph4196.preheader, %scalar.ph4196
  %indvars.iv1260.i = phi i64 [ %indvars.iv.next1261.i, %scalar.ph4196 ], [ %indvars.iv1260.i.ph, %scalar.ph4196.preheader ] ; 4 uses
  %i.nml = getelementptr inbounds nuw [4 x i8], ptr %i.nkd, i64 %indvars.iv1260.i ; 3 uses
  %i.nmm = getelementptr inbounds nuw [4 x i8], ptr %i.nke, i64 %indvars.iv1260.i ; 6 uses
  %i.nmn = load float, ptr %i.nmm, align 4, !tbaa !12, !noalias !549
  %i.nmo = getelementptr inbounds i8, ptr %i.nml, i64 -4
  %i.nmp = load float, ptr %i.nmo, align 4, !tbaa !12, !noalias !549
  %i.nmq = getelementptr inbounds i8, ptr %i.nmm, i64 -4
  %i.nmr = load float, ptr %i.nmq, align 4, !tbaa !12, !noalias !549
  %i.nms = getelementptr inbounds nuw i8, ptr %i.nml, i64 4
  %i.nmt = load float, ptr %i.nms, align 4, !tbaa !12, !noalias !549
  %i.nmu = getelementptr inbounds nuw i8, ptr %i.nmm, i64 4
  %i.nmv = load float, ptr %i.nmu, align 4, !tbaa !12, !noalias !549
  %i.nmw = fadd reassoc nsz arcp contract afn float %i.nmp, %i.nmt
  %i.nmx = fadd reassoc nsz arcp contract afn float %i.nmr, %i.nmv
  %i.nmy = fsub reassoc nsz arcp contract afn float %i.nmw, %i.nmx
  %i.nmz = fmul reassoc nsz arcp contract afn float %i.nmy, 5.000000e-01
  %i.nna = fadd reassoc nsz arcp contract afn float %i.nmz, %i.nmn
  store float %i.nna, ptr %i.nml, align 4, !tbaa !12, !noalias !549
  %i.nnb = getelementptr inbounds nuw [4 x i8], ptr %i.nkj, i64 %indvars.iv1260.i ; 3 uses
  %i.nnc = load float, ptr %i.nmm, align 4, !tbaa !12, !noalias !549
  %i.nnd = getelementptr inbounds i8, ptr %i.nnb, i64 -544
  %i.nne = load float, ptr %i.nnd, align 4, !tbaa !12, !noalias !549
  %i.nnf = getelementptr inbounds i8, ptr %i.nmm, i64 -544
  %i.nng = load float, ptr %i.nnf, align 4, !tbaa !12, !noalias !549
  %i.nnh = getelementptr inbounds nuw i8, ptr %i.nnb, i64 544
  %i.nni = load float, ptr %i.nnh, align 4, !tbaa !12, !noalias !549
  %i.nnj = getelementptr inbounds nuw i8, ptr %i.nmm, i64 544
  %i.nnk = load float, ptr %i.nnj, align 4, !tbaa !12, !noalias !549
  %i.nnl = fadd reassoc nsz arcp contract afn float %i.nne, %i.nni
  %i.nnm = fadd reassoc nsz arcp contract afn float %i.nng, %i.nnk
  %i.nnn = fsub reassoc nsz arcp contract afn float %i.nnl, %i.nnm
  %i.nno = fmul reassoc nsz arcp contract afn float %i.nnn, 5.000000e-01
  %i.nnp = fadd reassoc nsz arcp contract afn float %i.nno, %i.nnc
  store float %i.nnp, ptr %i.nnb, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1261.i = add nuw nsw i64 %indvars.iv1260.i, 2 ; 2 uses
  %i.nnq = icmp slt i64 %indvars.iv.next1261.i, %i.ngc
  br i1 %i.nnq, label %scalar.ph4196, label %._crit_edge1075.i, !llvm.loop !348

._crit_edge1085.i:                                ; preds = %._crit_edge1082.i, %.preheader1023.i, %._crit_edge1060.i
  %i.nnr = icmp eq i32 %.08871185.i, 0            ; 2 uses
  %i.nns = select i1 %i.nnr, i32 6, i32 0         ; 21 uses
  %i.nnt = icmp eq i32 %.08871185.i, %i.aoq       ; 2 uses
  %.neg.i554 = select i1 %i.nnt, i32 -6, i32 0    ; 10 uses
  %i.nnu = add nsw i32 %i.lzh, %.neg.i554         ; 4 uses
  br i1 %.not1193.i, label %.preheader1021.i, label %.preheader1018.lr.ph.i

.preheader1018.lr.ph.i:                           ; preds = %._crit_edge1085.i
  %i.nnv = icmp slt i32 %i.lzf, -5
  %i.nnw = zext nneg i32 %i.nns to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.lvj, i64 %i.nnw
  %invariant.gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %i.lvl, i64 %i.nnw
  %invariant.gep1133.i = getelementptr inbounds nuw [4 x i8], ptr %i.lvm, i64 %i.nnw
  %invariant.gep1135.i = getelementptr inbounds nuw [4 x i8], ptr %i.lvn, i64 %i.nnw
  %invariant.gep1137.i = getelementptr inbounds nuw [4 x i8], ptr %i.lvo, i64 %i.nnw
  %i.nnx = add nsw i32 %i.nnu, -1                 ; 3 uses
  %i.nny = icmp slt i32 %i.nns, %i.nnx            ; 2 uses
  %brmerge.i556 = select i1 %7, i1 true, i1 %i.nnv
  %i.nnz = add nsw i32 %i.lzg, 6                  ; 3 uses
  %i.noa = sext i32 %i.nnz to i64                 ; 6 uses
  %i.nob = shl nuw nsw i64 %i.nnw, 2              ; 4 uses
  %scevgep3938 = getelementptr i8, ptr %scevgep3937, i64 %i.nob ; 2 uses
  %i.noc = add nsw i32 %.neg.i554, 6
  %i.nod = add i32 %i.noc, %i.lzg
  %i.noe = sub i32 %i.nod, %i.nns
  %i.nof = lshr i32 %i.noe, 1
  %i.nog = zext nneg i32 %i.nof to i64
  %i.noh = shl nuw nsw i64 %i.nog, 3              ; 2 uses
  %i.noi = getelementptr i8, ptr %scevgep3940, i64 %i.noh
  %scevgep3941 = getelementptr i8, ptr %i.noi, i64 %i.nob ; 2 uses
  %.reass = or disjoint i64 %i.nob, %invariant.op
  %i.noj = add nuw nsw i64 %i.lxu, %i.noh
  %i.nok = add nuw nsw i64 %i.noj, %i.nob
  %i.nol = add nsw i32 %.neg.i554, 6
  %i.nom = add i32 %i.nol, %i.lzg
  %i.non = sub i32 %i.nom, %i.nns
  %i.noo = lshr i32 %i.non, 1
  %i.nop = zext nneg i32 %i.noo to i64
  %i.noq = shl nuw nsw i64 %i.nop, 3              ; 2 uses
  %i.nor = add nuw nsw i64 %i.lxv, %i.noq
  %i.nos = shl nuw nsw i64 %i.nnw, 2              ; 3 uses
  %i.not = add nuw nsw i64 %i.nor, %i.nos
  %scevgep4007 = getelementptr i8, ptr %scevgep4006, i64 %i.nos ; 2 uses
  %i.nou = getelementptr i8, ptr %scevgep4009, i64 %i.noq
  %scevgep4010 = getelementptr i8, ptr %i.nou, i64 %i.nos ; 2 uses
  %min.iters.check4101 = icmp ult i32 %i.nnz, 8
  %n.vec4103 = and i64 %i.noa, -8                 ; 3 uses
  %i.nov = or disjoint i64 %n.vec4103, 1
  %cmp.n4126 = icmp eq i64 %n.vec4103, %i.noa
  %min.iters.check4073 = icmp ult i32 %i.nnz, 8
  %n.vec4075 = and i64 %i.noa, -8                 ; 3 uses
  %i.now = or disjoint i64 %n.vec4075, 1
  %cmp.n4098 = icmp eq i64 %n.vec4075, %i.noa
  %i.nox = add i32 %.neg.i554, %i.lzg
  %i.noy = add i32 %i.nox, 6
  %i.noz = sub i32 %i.noy, %i.nns                 ; 2 uses
  %i.npa = lshr i32 %i.noz, 1
  %narrow = add nuw i32 %i.npa, 1
  %i.npb = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4024 = icmp ult i32 %i.noz, 16
  %i.npc = and i64 %i.npb, 7                      ; 2 uses
  %i.npd = icmp eq i64 %i.npc, 0
  %i.npe = select i1 %i.npd, i64 8, i64 %i.npc
  %n.vec4026 = sub nsw i64 %i.npb, %i.npe         ; 3 uses
  %i.npf = trunc i64 %n.vec4026 to i32
  %i.npg = shl i32 %i.npf, 1
  %i.nph = add i32 %i.nns, %i.npg
  %i.npi = shl nsw i64 %n.vec4026, 3              ; 7 uses
  %i.npj = add i32 %.neg.i554, %i.lzg
  %i.npk = add i32 %i.npj, 6
  %i.npl = sub i32 %i.npk, %i.nns                 ; 2 uses
  %i.npm = lshr i32 %i.npl, 1
  %narrow4560 = add nuw i32 %i.npm, 1
  %i.npn = zext i32 %narrow4560 to i64            ; 2 uses
  %min.iters.check3960 = icmp ult i32 %i.npl, 16
  %i.npo = and i64 %i.npn, 7                      ; 2 uses
  %i.npp = icmp eq i64 %i.npo, 0
  %i.npq = select i1 %i.npp, i64 8, i64 %i.npo
  %n.vec3962 = sub nsw i64 %i.npn, %i.npq         ; 3 uses
  %i.npr = shl nsw i64 %n.vec3962, 3              ; 7 uses
  %i.nps = trunc i64 %n.vec3962 to i32
  %i.npt = shl i32 %i.nps, 1
  %i.npu = add i32 %i.nns, %i.npt
  br label %.preheader1018.i

bb.pr:                                            ; preds = %._crit_edge1082.i, %.preheader1022.i
  %indvar4129 = phi i64 [ %indvar.next4130, %._crit_edge1082.i ], [ 0, %.preheader1022.i ] ; 2 uses
  %indvars.iv1269.i = phi i64 [ %indvars.iv.next1270.i, %._crit_edge1082.i ], [ 1, %.preheader1022.i ] ; 3 uses
  %i.npv = mul nuw nsw i64 %indvar4129, 544       ; 4 uses
  %i.npw = getelementptr i8, ptr %i.lvj, i64 %i.npv
  %scevgep4134 = getelementptr i8, ptr %i.npw, i64 73988
  %i.npx = getelementptr i8, ptr %i.lvj, i64 %i.npv
  %scevgep4136 = getelementptr i8, ptr %i.npx, i64 75080
  %indvars.iv1269.tr.i = trunc nuw i64 %indvars.iv1269.i to i32
  %i.npy = shl nuw i32 %indvars.iv1269.tr.i, 1
  %i.npz = and i32 %i.npy, 14                     ; 2 uses
  %.tr.i965.i = shl nuw nsw i32 %i.npz, 1
  %i.nqa = or disjoint i32 %.tr.i965.i, 2
  %i.nqb = lshr i32 %.fr1063, %i.nqa              ; 3 uses
  %i.nqc = and i32 %i.nqb, 1
  %i.nqd = add nuw nsw i32 %i.nqc, 1              ; 3 uses
  %i.nqe = icmp slt i32 %i.nqd, %i.ngb
  br i1 %i.nqe, label %.lr.ph1081.i, label %._crit_edge1082.i

.lr.ph1081.i:                                     ; preds = %bb.pr
  %i.nqf = and i32 %i.nqd, 1
  %i.nqg = or disjoint i32 %i.nqf, %i.npz
  %i.nqh = shl nuw nsw i32 %i.nqg, 1
  %i.nqi = lshr i32 %.fr1063, %i.nqh
  %i.nqj = and i32 %i.nqi, 3
  %i.nqk = sub nsw i32 2, %i.nqj
  %i.nql = sext i32 %i.nqk to i64
  %i.nqm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nql
  %i.nqn = load ptr, ptr %i.nqm, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.nqo = mul nuw nsw i64 %indvars.iv1269.i, 136 ; 2 uses
  %i.nqp = getelementptr inbounds nuw [4 x i8], ptr %i.nqn, i64 %i.nqo ; 2 uses
  %i.nqq = getelementptr inbounds nuw [4 x i8], ptr %i.lvl, i64 %i.nqo ; 2 uses
  %i.nqr = zext nneg i32 %i.nqd to i64            ; 5 uses
  %i.nqs = and i32 %i.nqb, 1
  %i.nqt = zext nneg i32 %i.nqs to i64            ; 2 uses
  %i.nqu = add nuw nsw i64 %i.nqt, 3
  %i.nqv = call i64 @llvm.umax.i64(i64 %i.nqu, i64 %i.njl)
  %i.nqw = add nsw i64 %i.nqv, -2
  %i.nqx = sub nsw i64 %i.nqw, %i.nqt             ; 2 uses
  %i.nqy = lshr i64 %i.nqx, 1
  %i.nqz = add nuw nsw i64 %i.nqy, 1              ; 2 uses
  %min.iters.check4142 = icmp ult i64 %i.nqx, 8
  br i1 %min.iters.check4142, label %scalar.ph4141.preheader, label %vector.memcheck4128

scalar.ph4141.preheader:                          ; preds = %vector.body4148, %vector.memcheck4128, %.lr.ph1081.i
  %indvars.iv1266.i.ph = phi i64 [ %i.nqr, %vector.memcheck4128 ], [ %i.nqr, %.lr.ph1081.i ], [ %i.nrs, %vector.body4148 ]
  br label %scalar.ph4141

vector.memcheck4128:                              ; preds = %.lr.ph1081.i
  %i.nra = and i32 %i.nqb, 1
  %i.nrb = zext nneg i32 %i.nra to i64            ; 3 uses
  %i.nrc = shl nuw nsw i64 %i.nrb, 2              ; 4 uses
  %i.nrd = getelementptr i8, ptr %i.nqn, i64 %i.npv
  %i.nre = getelementptr i8, ptr %i.nrd, i64 4
  %scevgep4131 = getelementptr i8, ptr %i.nre, i64 %i.nrc
  %i.nrf = add nuw nsw i64 %i.nrb, 3
  %umax4132 = call i64 @llvm.umax.i64(i64 %i.nrf, i64 %i.njl)
  %i.nrg = add nsw i64 %umax4132, -2
  %i.nrh = sub nsw i64 %i.nrg, %i.nrb
  %i.nri = shl nuw nsw i64 %i.nrh, 2
  %i.nrj = and i64 %i.nri, 9223372036854775800    ; 2 uses
  %i.nrk = getelementptr i8, ptr %i.nqn, i64 %i.npv
  %i.nrl = getelementptr i8, ptr %i.nrk, i64 1096
  %i.nrm = getelementptr i8, ptr %i.nrl, i64 %i.nrj
  %scevgep4133 = getelementptr i8, ptr %i.nrm, i64 %i.nrc
  %scevgep4135 = getelementptr i8, ptr %scevgep4134, i64 %i.nrc
  %i.nrn = getelementptr i8, ptr %scevgep4136, i64 %i.nrj
  %scevgep4137 = getelementptr i8, ptr %i.nrn, i64 %i.nrc
  %bound04138 = icmp ult ptr %scevgep4131, %scevgep4137
  %bound14139 = icmp ult ptr %scevgep4135, %scevgep4133
  %found.conflict4140 = and i1 %bound04138, %bound14139
  br i1 %found.conflict4140, label %scalar.ph4141.preheader, label %vector.ph4143

vector.ph4143:                                    ; preds = %vector.memcheck4128
  %i.nro = and i64 %i.nqz, 3                      ; 2 uses
  %i.nrp = icmp eq i64 %i.nro, 0
  %i.nrq = select i1 %i.nrp, i64 4, i64 %i.nro
  %n.vec4144 = sub nsw i64 %i.nqz, %i.nrq         ; 2 uses
  %i.nrr = shl i64 %n.vec4144, 1
  %i.nrs = add i64 %i.nrr, %i.nqr
  %broadcast.splatinsert4145 = insertelement <4 x i64> poison, i64 %i.nqr, i64 0
  %broadcast.splat4146 = shufflevector <4 x i64> %broadcast.splatinsert4145, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4147 = add nuw nsw <4 x i64> %broadcast.splat4146, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4856 = getelementptr [4 x i8], ptr %i.nqq, i64 %i.nqr
  br label %vector.body4148

vector.body4148:                                  ; preds = %vector.body4148, %vector.ph4143
  %index4149 = phi i64 [ 0, %vector.ph4143 ], [ %index.next4169, %vector.body4148 ] ; 2 uses
  %vec.ind4150 = phi <4 x i64> [ %induction4147, %vector.ph4143 ], [ %vec.ind.next4170, %vector.body4148 ] ; 2 uses
  %wide.gep4151 = getelementptr inbounds nuw [4 x i8], ptr %i.nqp, <4 x i64> %vec.ind4150 ; 2 uses
  %i.nrt = extractelement <4 x ptr> %wide.gep4151, i64 0 ; 4 uses
  %.idx4559 = shl nuw i64 %index4149, 3
  %gep4857 = getelementptr i8, ptr %invariant.gep4856, i64 %.idx4559 ; 4 uses
  %wide.vec4152 = load <8 x float>, ptr %gep4857, align 4, !tbaa !12, !alias.scope !558, !noalias !549 ; 2 uses
  %strided.vec4153 = shufflevector <8 x float> %wide.vec4152, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4154 = shufflevector <8 x float> %wide.vec4152, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nru = getelementptr inbounds i8, ptr %i.nrt, i64 -544
  %wide.vec4155 = load <8 x float>, ptr %i.nru, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4156 = shufflevector <8 x float> %wide.vec4155, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrv = getelementptr inbounds i8, ptr %gep4857, i64 -544
  %wide.vec4157 = load <8 x float>, ptr %i.nrv, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4158 = shufflevector <8 x float> %wide.vec4157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrw = getelementptr inbounds i8, ptr %i.nrt, i64 -4
  %wide.vec4159 = load <8 x float>, ptr %i.nrw, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4160 = shufflevector <8 x float> %wide.vec4159, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrx = getelementptr inbounds i8, ptr %gep4857, i64 -4
  %wide.vec4161 = load <8 x float>, ptr %i.nrx, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4162 = shufflevector <8 x float> %wide.vec4161, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nry = getelementptr inbounds nuw i8, ptr %i.nrt, i64 4
  %wide.vec4163 = load <8 x float>, ptr %i.nry, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4164 = shufflevector <8 x float> %wide.vec4163, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrz = getelementptr inbounds nuw i8, ptr %i.nrt, i64 544
  %wide.vec4165 = load <8 x float>, ptr %i.nrz, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4166 = shufflevector <8 x float> %wide.vec4165, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nsa = getelementptr inbounds nuw i8, ptr %gep4857, i64 544
  %wide.vec4167 = load <8 x float>, ptr %i.nsa, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4168 = shufflevector <8 x float> %wide.vec4167, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nsb = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4156, %strided.vec4160
  %i.nsc = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4158, %strided.vec4162
  %i.nsd = fadd reassoc nsz arcp contract afn <4 x float> %i.nsb, %strided.vec4164
  %i.nse = fadd reassoc nsz arcp contract afn <4 x float> %i.nsc, %strided.vec4154
  %i.nsf = fadd reassoc nsz arcp contract afn <4 x float> %i.nsd, %strided.vec4166
  %i.nsg = fadd reassoc nsz arcp contract afn <4 x float> %i.nse, %strided.vec4168
  %i.nsh = fsub reassoc nsz arcp contract afn <4 x float> %i.nsf, %i.nsg
  %i.nsi = fmul reassoc nsz arcp contract afn <4 x float> %i.nsh, splat (float 2.500000e-01)
  %i.nsj = fadd reassoc nsz arcp contract afn <4 x float> %i.nsi, %strided.vec4153
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.nsj, <4 x ptr> align 4 %wide.gep4151, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !559, !noalias !560
  %index.next4169 = add nuw i64 %index4149, 4     ; 2 uses
  %vec.ind.next4170 = add nuw nsw <4 x i64> %vec.ind4150, splat (i64 8)
  %i.nsk = icmp eq i64 %index.next4169, %n.vec4144
  br i1 %i.nsk, label %scalar.ph4141.preheader, label %vector.body4148, !llvm.loop !352

._crit_edge1082.i:                                ; preds = %scalar.ph4141, %bb.pr
  %indvars.iv.next1270.i = add nuw nsw i64 %indvars.iv1269.i, 1 ; 2 uses
  %exitcond1135.not = icmp eq i64 %indvars.iv.next1270.i, %smax1137
end_hunk_2
