Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.lsk = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.lsi
  %wide.load2944 = load <8 x float>, ptr %i.lsk, align 4, !tbaa !12, !noalias !499
  %i.lsl = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.lsi
  %wide.load2945 = load <8 x float>, ptr %i.lsl, align 4, !tbaa !12, !noalias !499
  %i.lsm = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load2945, <8 x float> zeroinitializer)
  %i.lsn = fmul reassoc nsz arcp contract afn <8 x float> %i.lsm, %broadcast.splat2940
  %i.lso = shufflevector <8 x float> %wide.load2943, <8 x float> %wide.load2944, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lsp = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lso, <16 x float> zeroinitializer)
  %i.lsq = fmul reassoc nsz arcp contract afn <16 x float> %i.lsp, %i.awi
  %i.lsr = shufflevector <8 x float> %i.lsn, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2946 = shufflevector <16 x float> %i.lsq, <16 x float> %i.lsr, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2946, ptr %gep4884, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %index.next2947 = add nuw i64 %index2942, 8     ; 2 uses
  %i.lss = icmp eq i64 %index.next2947, %n.vec2938
  br i1 %i.lss, label %middle.block2948, label %vector.body2941, !llvm.loop !328

middle.block2948:                                 ; preds = %vector.body2941
  br i1 %cmp.n2949, label %._crit_edge931.i, label %scalar.ph2935.preheader

scalar.ph2935.preheader:                          ; preds = %.lr.ph930.i, %middle.block2948
  %indvars.iv1065.i.ph = phi i64 [ %i.lsf, %.lr.ph930.i ], [ %i.lsg, %middle.block2948 ]
  %indvars.iv1061.i.ph = phi i64 [ %i.lse, %.lr.ph930.i ], [ %i.lsh, %middle.block2948 ]
  %.0738926.i.ph = phi i32 [ %i.lel, %.lr.ph930.i ], [ %i.lez, %middle.block2948 ]
  br label %scalar.ph2935

._crit_edge931.i:                                 ; preds = %scalar.ph2935, %middle.block2948
  %i.lst = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.lsu = icmp slt i32 %i.lst, %i.jfz
  %indvars.iv.next1060.i = add i32 %indvars.iv1059.i, %i.aow
  %indvars.iv.next1064.i = add i32 %indvars.iv1063.i, 112
  br i1 %i.lsu, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph2935:                                    ; preds = %scalar.ph2935.preheader, %scalar.ph2935
  %indvars.iv1065.i = phi i64 [ %indvars.iv.next1066.i, %scalar.ph2935 ], [ %indvars.iv1065.i.ph, %scalar.ph2935.preheader ] ; 4 uses
  %indvars.iv1061.i = phi i64 [ %indvars.iv.next1062.i, %scalar.ph2935 ], [ %indvars.iv1061.i.ph, %scalar.ph2935.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.ltj, %scalar.ph2935 ], [ %.0738926.i.ph, %scalar.ph2935.preheader ]
  %i.lsv = getelementptr inbounds nuw [4 x i8], ptr %i.jez, i64 %indvars.iv1065.i
  %i.lsw = load float, ptr %i.lsv, align 4, !tbaa !12, !noalias !499
  %i.lsx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lsw, float 0.000000e+00)
  %i.lsy = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %indvars.iv1061.i
  %i.lsz = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv1065.i
  %i.lta = load float, ptr %i.lsz, align 4, !tbaa !12, !noalias !499
  %i.ltb = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %indvars.iv1065.i
  %i.ltc = load float, ptr %i.ltb, align 4, !tbaa !12, !noalias !499
  %i.ltd = insertelement <4 x float> poison, float %i.lta, i64 0
  %i.lte = insertelement <4 x float> %i.ltd, float %i.ltc, i64 1
  %i.ltf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lsx, i64 0
  %i.ltg = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lte, <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>)
  %i.lth = shufflevector <4 x float> %i.ltf, <4 x float> %i.ltg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lti = fmul reassoc nsz arcp contract afn <4 x float> %i.lth, %i.awk
  store <4 x float> %i.lti, ptr %i.lsy, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %i.ltj = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1062.i = add nsw i64 %indvars.iv1061.i, 4
  %indvars.iv.next1066.i = add nuw nsw i64 %indvars.iv1065.i, 1
  %i.ltk = icmp slt i32 %i.ltj, %i.len
  br i1 %i.ltk, label %scalar.ph2935, label %._crit_edge931.i, !llvm.loop !329

bb.oh:                                            ; preds = %bb.nx
  %i.ltl = load i32, ptr %i.aog, align 4, !tbaa !139 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef range(i32 10, 9) %.fr1063, float noundef 0.000000e+00, i32 noundef 4)
  %i.ltm = icmp slt i32 %i.axj, 8
  %or.cond.i549 = or i1 %i.aoh, %i.ltm
  br i1 %or.cond.i549, label %demosaic_box3.exit, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.ltn = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %.not.i550 = icmp eq ptr %i.ltn, null
  br i1 %.not.i550, label %bb.oj, label %.preheader1027.preheader.i

bb.oj:                                            ; preds = %bb.oi
  %i.lto = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lto, i64 64) ]
  store ptr %i.lto, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %i.ltp = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ltp, i64 64) ]
  store ptr %i.ltp, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  %i.ltq = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.ltr = icmp ne ptr %i.ltq, null
  %i.lts = icmp ne ptr %i.ltp, null
  %or.cond.i.i569 = select i1 %i.ltr, i1 %i.lts, i1 false
  br i1 %or.cond.i.i569, label %.preheader.i.i570, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @free(ptr noundef %i.ltq) #27, !noalias !549
  tail call void @free(ptr noundef %i.ltp) #27, !noalias !549
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !549
  br label %.preheader1027.preheader.i

.preheader.i.i570:                                ; preds = %bb.oj, %bb.oq
  %indvars.iv.i.i571 = phi i64 [ %indvars.iv.next.i.i572, %bb.oq ], [ 0, %bb.oj ] ; 4 uses
  %i.ltt = trunc nuw nsw i64 %indvars.iv.i.i571 to i32
  %i.ltu = uitofp nneg i32 %i.ltt to double       ; 4 uses
  %i.ltv = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3EF0001000100010 ; 3 uses
  %i.ltw = fcmp reassoc nsz arcp contract afn ugt double %i.ltv, 1.867000e-03
  br i1 %i.ltw, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.preheader.i.i570
  %i.ltx = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3F31001100110011
  br label %bb.on

bb.om:                                            ; preds = %.preheader.i.i570
  %i.lty = tail call fast double @llvm.log.f64(double %i.ltv)
  %i.ltz = fmul reassoc nnan nsz arcp contract afn double %i.lty, f0x3FDAAAAAAAAAAAAB
  %i.lua = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.ltz)
  %i.lub = fmul reassoc nnan nsz arcp contract afn double %i.lua, f0x3FF0B60BF5D78812
  %i.luc = fadd reassoc nsz arcp contract afn double %i.lub, -4.444500e-02
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.lud = phi reassoc nsz arcp contract afn double [ %i.ltx, %bb.ol ], [ %i.luc, %bb.om ]
  %i.lue = fptrunc reassoc nsz arcp contract afn double %i.lud to float
  %i.luf = getelementptr inbounds nuw [4 x i8], ptr %i.ltq, i64 %indvars.iv.i.i571
  store float %i.lue, ptr %i.luf, align 4, !tbaa !12, !noalias !549
  %i.lug = fcmp reassoc nsz arcp contract afn ugt double %i.ltv, 3.174600e-02
  br i1 %i.lug, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.luh = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3EAE1E3C3C5A5A78
  br label %bb.oq

bb.op:                                            ; preds = %bb.on
  %i.lui = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3EEEA3850F60F739
  %i.luj = fadd reassoc nnan nsz arcp contract afn double %i.lui, f0x3FA5C99942418271
  %i.luk = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.luj)
  %i.lul = fmul reassoc nnan nsz arcp contract afn double %i.luk, 2.400000e+00
  %i.lum = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lul)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.lun = phi reassoc nsz arcp contract afn double [ %i.luh, %bb.oo ], [ %i.lum, %bb.op ]
  %i.luo = fptrunc reassoc nsz arcp contract afn double %i.lun to float
  %i.lup = getelementptr inbounds nuw [4 x i8], ptr %i.ltp, i64 %indvars.iv.i.i571
  store float %i.luo, ptr %i.lup, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next.i.i572 = add nuw nsw i64 %indvars.iv.i.i571, 1 ; 2 uses
  %exitcond.not.i.i573 = icmp eq i64 %indvars.iv.next.i.i572, 65536
  br i1 %exitcond.not.i.i573, label %.preheader1027.preheader.i, label %.preheader.i.i570

.preheader1027.preheader.i:                       ; preds = %bb.oq, %bb.ok, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !551
  %i.luq = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !549 ; 31 uses
  %i.lur = ptrtoaddr ptr %i.luq to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.luq, i64 64) ]
  store ptr %i.luq, ptr %i.b, align 16, !tbaa !140, !noalias !551
  %i.lus = getelementptr inbounds nuw i8, ptr %i.luq, i64 73984 ; 14 uses
  store ptr %i.lus, ptr %i.aoi, align 8, !tbaa !140, !noalias !551
  %i.lut = getelementptr inbounds nuw i8, ptr %i.luq, i64 147968 ; 6 uses
  store ptr %i.lut, ptr %i.aoj, align 16, !tbaa !140, !noalias !551
  %i.luu = getelementptr inbounds nuw i8, ptr %i.luq, i64 221952 ; 5 uses
  store ptr %i.luu, ptr %i.aok, align 8, !tbaa !140, !noalias !551
  %i.luv = getelementptr inbounds nuw i8, ptr %i.luq, i64 295936 ; 5 uses
  store ptr %i.luv, ptr %i.aol, align 16, !tbaa !140, !noalias !551
  %i.luw = getelementptr inbounds nuw i8, ptr %i.luq, i64 369920 ; 10 uses
  store ptr %i.luw, ptr %i.aom, align 8, !tbaa !140, !noalias !551
  %i.lux = icmp ult i32 %i.ltl, 2
  %i.luy = select i1 %i.lux, i32 %i.ltl, i32 3    ; 2 uses
  %i.luz = tail call i32 @llvm.usub.sat.i32(i32 %i.ltl, i32 2) ; 2 uses
  %i.lva = add nsw i32 %i.axj, -17
  %i.lvb = sdiv i32 %i.lva, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.luq, i8 0, i64 443904, i1 false), !noalias !549
  %.not1193.i = icmp eq i32 %i.luy, 0
  %i.lvc = icmp sgt i32 %i.luz, 0
  %i.lvd = tail call i32 @llvm.smax.i32(i32 %i.lvb, i32 0)
  %scevgep3939 = getelementptr i8, ptr %i.luq, i64 295400
  %scevgep4008 = getelementptr i8, ptr %i.luq, i64 295400
  %i.lve = add i64 %i.lur, 372112
  %i.lvf = getelementptr inbounds nuw i8, ptr %i.axt, i64 128
  %i.lvg = getelementptr inbounds nuw i8, ptr %i.axt, i64 256
  %i.lvh = getelementptr inbounds nuw i8, ptr %i.axt, i64 384
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
  %.08821189.i = phi i32 [ %i.lxp, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 5 uses
  %smin1153 = call i32 @llvm.smin.i32(i32 %i.axj, i32 %indvars.iv) ; 5 uses
  %i.lvi = add i32 %smin1153, %indvars.iv1104
  %i.lvj = call i32 @llvm.smax.i32(i32 %i.lvi, i32 5)
  %smax1145 = zext nneg i32 %i.lvj to i64         ; 4 uses
  %i.lvk = add i32 %smin1153, %indvars.iv1129
  %i.lvl = call i32 @llvm.smax.i32(i32 %i.lvk, i32 2)
  %smax1137 = zext nneg i32 %i.lvl to i64         ; 3 uses
  %i.lvm = add i32 %smin1153, %indvars.iv1124
  %i.lvn = call i32 @llvm.smax.i32(i32 %i.lvm, i32 1)
  %smax1126 = zext nneg i32 %i.lvn to i64
  %i.lvo = add i32 %smin1153, %indvars.iv1107
  %i.lvp = call i32 @llvm.umax.i32(i32 %i.lvo, i32 2)
  %umax = zext i32 %i.lvp to i64
  %i.lvq = mul nuw i32 %.08821189.i, 112          ; 4 uses
  %i.lvr = add nuw nsw i32 %i.lvq, 128
  %i.lvs = tail call i32 @llvm.smin.i32(i32 %i.lvr, i32 %i.axj) ; 2 uses
  %i.lvt = sub nsw i32 %i.lvs, %i.lvq             ; 6 uses
  %i.lvu = add nsw i32 %i.lvt, 8
  %i.lvv = icmp sgt i32 %i.lvt, 0                 ; 3 uses
  %i.lvw = icmp sgt i32 %i.lvt, -4
  %i.lvx = add i32 %i.lvq, -4
  %i.lvy = icmp sgt i32 %i.lvt, -8
  %6 = icmp sgt i32 %i.lvt, -6
  %i.lvz = icmp eq i32 %.08821189.i, 0            ; 2 uses
  %i.lwa = select i1 %i.lvz, i32 6, i32 0         ; 3 uses
  %i.lwb = icmp eq i32 %.08821189.i, %i.lvb       ; 2 uses
  %.neg949.i = select i1 %i.lwb, i32 -6, i32 0    ; 2 uses
  %i.lwc = add nsw i32 %i.lvu, %.neg949.i         ; 2 uses
  %7 = icmp slt i32 %i.lvt, -5
  %i.lwd = add nsw i32 %i.lwc, -1
  %i.lwe = icmp slt i32 %i.lwa, %i.lwd
  %i.lwf = add nuw nsw i32 %i.lwa, 2
  %i.lwg = add nsw i32 %i.lwc, -2
  %i.lwh = icmp slt i32 %i.lwf, %i.lwg
  %i.lwi = select i1 %i.lvz, i32 4, i32 8         ; 3 uses
  %i.lwj = or disjoint i32 %i.lwi, %i.lvq
  %.neg950.i = select i1 %i.lwb, i32 -4, i32 -8
  %i.lwk = add nsw i32 %i.lvs, %.neg950.i         ; 2 uses
  %i.lwl = icmp slt i32 %i.lwj, %i.lwk
  %i.lwm = zext nneg i32 %i.lwa to i64            ; 5 uses
  %i.lwn = add nuw nsw i64 %i.lwm, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lwi, 4
  %i.lwo = or disjoint i32 %i.lwi, %indvars.iv1311.i.a
  %i.lwp = zext i32 %i.lwo to i64
  %i.lwq = add i32 %.neg949.i, %smin1153          ; 2 uses
  %i.lwr = add i32 %i.lwq, %indvars.iv1129
  %i.lws = sext i32 %i.lwr to i64                 ; 2 uses
  %i.lwt = add i32 %i.lwq, %indvars.iv1148
  %i.lwu = sext i32 %i.lwt to i64                 ; 3 uses
  %i.lwv = mul nuw nsw i64 %i.lwm, 544            ; 6 uses
  %i.lww = mul nuw nsw i64 %i.lwm, 544            ; 8 uses
  %i.lwx = add nuw nsw i64 %i.lww, 552
  %i.lwy = add nuw nsw i64 %i.lww, 1644
  %i.lwz = mul nuw nsw i64 %i.lwm, 544            ; 5 uses
  %scevgep3937 = getelementptr i8, ptr %i.luq, i64 %i.lwz
  %i.lxa = mul nsw i64 %i.lws, 544                ; 2 uses
  %scevgep3940 = getelementptr i8, ptr %scevgep3939, i64 %i.lxa
  %i.lxb = or disjoint i64 %i.lwz, 8
  %i.lxc = or disjoint i64 %i.lwz, 4
  %scevgep4006 = getelementptr i8, ptr %i.luq, i64 %i.lwz
  %scevgep4009 = getelementptr i8, ptr %scevgep4008, i64 %i.lxa
  %invariant.op = or disjoint i64 %i.lwz, 4
  %i.lxd = getelementptr i8, ptr %i.luq, i64 %i.lww
  %i.lxe = getelementptr i8, ptr %i.lxd, i64 74536
  %i.lxf = getelementptr i8, ptr %i.luq, i64 %i.lww
  %i.lxg = getelementptr i8, ptr %i.lxf, i64 75628
  %i.lxh = getelementptr i8, ptr %i.luq, i64 %i.lww
  %i.lxi = getelementptr i8, ptr %i.lxh, i64 73992
  %i.lxj = getelementptr i8, ptr %i.luq, i64 %i.lww
  %i.lxk = getelementptr i8, ptr %i.lxj, i64 76172
  %i.lxl = getelementptr i8, ptr %i.luq, i64 %i.lwv
  %i.lxm = getelementptr i8, ptr %i.lxl, i64 74536
  %i.lxn = getelementptr i8, ptr %i.luq, i64 %i.lwv
  %i.lxo = getelementptr i8, ptr %i.lxn, i64 75628
  br label %bb.or

._crit_edge1190.split.i:                          ; preds = %._crit_edge1187.i
  tail call void @free(ptr noundef %i.luq) #27, !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !551
  br label %demosaic_box3.exit

._crit_edge1187.i:                                ; preds = %._crit_edge1183.split.i
  %i.lxp = add nuw nsw i32 %.08821189.i, 1
  %indvars.iv.next.i558 = add i32 %indvars.iv.i553, %i.aop
  %indvars.iv.next1312.i.a = add nuw i32 %indvars.iv1311.i.a, 112
  %exitcond1320.i = icmp eq i32 %.08821189.i, %i.lvd
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
  %.08871185.i = phi i32 [ %i.poz, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %smin4735 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lxq = add i32 %smin4735, %indvars.iv1113
  %smin4736 = call i32 @llvm.smin.i32(i32 %i.lxq, i32 128) ; 2 uses
  %i.lxr = add nsw i32 %smin4736, 3
  %i.lxs = zext i32 %i.lxr to i64
  %i.lxt = add nsw i64 %i.lxs, -3                 ; 2 uses
  %smin4726 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lxu = add i32 %smin4726, %indvars.iv1113
  %smin4718 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lxv = add i32 %smin4718, %indvars.iv1113
  %i.lxw = mul nuw i32 %.08871185.i, 112
  %i.lxx = add i32 %i.lxw, 128
  %smin4710 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.lxx)
  %i.lxy = mul i32 %.08871185.i, -112
  %i.lxz = add i32 %smin4710, %i.lxy
  %smin4415 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lya = add i32 %smin4415, %indvars.iv1113
  %smin4416 = call i32 @llvm.smin.i32(i32 %i.lya, i32 128)
  %i.lyb = add i32 %smin4416, -1                  ; 3 uses
  %i.lyc = zext i32 %i.lyb to i64
  %i.lyd = add nuw nsw i64 %i.lyc, 1              ; 5 uses
  %i.lye = add i32 %indvars.iv1113, -1
  %i.lyf = add i32 %indvars.iv1113, -1
  %smin1141 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1110)
  %i.lyg = add i32 %smin1141, %indvars.iv1113
  %smin1142 = call i32 @llvm.smin.i32(i32 %i.lyg, i32 128)
  %i.lyh = add nsw i32 %smin1142, 3
  %i.lyi = zext i32 %i.lyh to i64                 ; 2 uses
  %i.lyj = mul nuw i32 %.08871185.i, 112          ; 5 uses
  %i.lyk = add nuw i32 %i.lyj, 128
  %i.lyl = tail call i32 @llvm.smin.i32(i32 %i.lyk, i32 %i.bo) ; 3 uses
  %i.lym = sub i32 %i.lyl, %i.lyj                 ; 7 uses
  %i.lyn = tail call i32 @llvm.smin.i32(i32 %i.lym, i32 128) ; 24 uses
  %i.lyo = add nsw i32 %i.lyn, 8                  ; 2 uses
  br i1 %i.lvv, label %.lr.ph1038.i, label %.preheader1026.i

.lr.ph1038.i:                                     ; preds = %bb.or
  %i.lyp = add nsw i32 %i.lyn, 4                  ; 2 uses
  %i.lyq = icmp sgt i32 %i.lym, 0
  %i.lyr = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !551 ; 4 uses
  %i.lys = icmp eq ptr %i.lyr, null
  br i1 %i.lyq, label %.lr.ph.i564.preheader, label %.lr.ph1049.i

.lr.ph.i564.preheader:                            ; preds = %.lr.ph1038.i
  %xtraiter4712 = and i32 %i.lyn, 1
  %i.lyt = icmp eq i32 %i.lxz, 1
  %unroll_iter4716 = and i32 %i.lyn, 254
  %lcmp.mod4714.not = icmp eq i32 %xtraiter4712, 0
  %lcmp.mod4715 = trunc i32 %i.lyn to i1
  %min.iters.check4418 = icmp ult i32 %i.lyb, 7
  %min.iters.check4420 = icmp ult i32 %i.lyb, 31
  %i.lyu = and i64 %i.lyd, 24
  %n.vec4422 = and i64 %i.lyd, 8589934560         ; 8 uses
  %i.lyv = shl nuw nsw i64 %n.vec4422, 2
  %i.lyw = trunc i64 %n.vec4422 to i32
  %i.lyx = or disjoint i32 %i.lyw, 4
  %i.lyy = icmp eq i64 %n.vec4422, 32
  %i.lyz = icmp eq i64 %n.vec4422, 64
  %i.lza = icmp eq i64 %n.vec4422, 96
  %cmp.n4434 = icmp eq i64 %i.lyd, %n.vec4422
  %min.epilog.iters.check4442 = icmp eq i64 %i.lyu, 0
  %n.vec4444 = and i64 %i.lyd, 8589934584         ; 5 uses
  %i.lzb = shl nuw nsw i64 %n.vec4444, 2
  %i.lzc = trunc i64 %n.vec4444 to i32
  %i.lzd = or disjoint i32 %i.lzc, 4
  %cmp.n4453 = icmp eq i64 %i.lyd, %n.vec4444
  br label %.lr.ph.i564

.preheader1026.i:                                 ; preds = %._crit_edge.i568, %bb.or
  br i1 %i.lvw, label %.preheader1026.i..lr.ph1049.i_crit_edge, label %._crit_edge1060.i

.preheader1026.i..lr.ph1049.i_crit_edge:          ; preds = %.preheader1026.i
  %.pre1259 = add nsw i32 %i.lyn, 4
  br label %.lr.ph1049.i

.lr.ph1049.i:                                     ; preds = %.preheader1026.i..lr.ph1049.i_crit_edge, %.lr.ph1038.i
  %.pre-phi1260 = phi i32 [ %.pre1259, %.preheader1026.i..lr.ph1049.i_crit_edge ], [ %i.lyp, %.lr.ph1038.i ] ; 2 uses
  %i.lze = add nsw i32 %i.lyn, 6
  %i.lzf = sext i32 %i.lze to i64                 ; 4 uses
  br label %bb.oy

.lr.ph.i564:                                      ; preds = %.lr.ph.i564.preheader, %._crit_edge.i568
  %indvar4412 = phi i64 [ %indvar.next4413, %._crit_edge.i568 ], [ 0, %.lr.ph.i564.preheader ] ; 2 uses
  %indvars.iv1224.i = phi i64 [ %indvars.iv.next1225.i, %._crit_edge.i568 ], [ 4, %.lr.ph.i564.preheader ] ; 2 uses
  %indvars.iv1216.i.a = phi i32 [ %indvars.iv.next1217.i, %._crit_edge.i568 ], [ %indvars.iv1214.i.a, %.lr.ph.i564.preheader ] ; 3 uses
  %i.lzg = zext i32 %indvars.iv1216.i.a to i64    ; 10 uses
  %.idx.i565 = mul nuw nsw i64 %indvars.iv1224.i, 544
  %i.lzh = getelementptr inbounds nuw i8, ptr %i.luw, i64 %.idx.i565 ; 16 uses
  %i.lzi = getelementptr inbounds nuw i8, ptr %i.lzh, i64 16 ; 7 uses
  br i1 %i.lys, label %iter.check4439, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i564
  br i1 %i.lyt, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4439:                                   ; preds = %.lr.ph.i564
  %i.lzj = zext i32 %indvars.iv1216.i.a to i64
  %i.lzk = add nsw i64 %i.axs, %i.lzj
  %i.lzl = shl nsw i64 %i.lzk, 2
  %i.lzm = add i64 %i.lzl, %.13625
  %i.lzn = mul nuw nsw i64 %indvar4412, 544
  %i.lzo = add i64 %i.lve, %i.lzn
  %i.lzp = sub i64 %i.lzm, %i.lzo
  %diff.check4414 = icmp ugt i64 %i.lzp, -128
  %or.cond4572 = select i1 %min.iters.check4418, i1 true, i1 %diff.check4414
  br i1 %or.cond4572, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4419

vector.main.loop.iter.check4419:                  ; preds = %iter.check4439
  br i1 %min.iters.check4420, label %vec.epilog.ph4443, label %vector.ph4421

vector.ph4421:                                    ; preds = %vector.main.loop.iter.check4419
  %i.lzq = add nuw nsw i64 %n.vec4422, %i.lzg
  %i.lzr = getelementptr i8, ptr %i.lzi, i64 %i.lyv
  %i.lzs = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %i.lzg ; 4 uses
  %i.lzt = getelementptr inbounds nuw i8, ptr %i.lzs, i64 32
  %i.lzu = getelementptr inbounds nuw i8, ptr %i.lzs, i64 64
  %i.lzv = getelementptr inbounds nuw i8, ptr %i.lzs, i64 96
  %wide.load4428 = load <8 x float>, ptr %i.lzs, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429 = load <8 x float>, ptr %i.lzt, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4430 = load <8 x float>, ptr %i.lzu, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4431 = load <8 x float>, ptr %i.lzv, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.lzw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428, %broadcast.splat4424
  %i.lzx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429, %broadcast.splat4424
  %i.lzy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4430, %broadcast.splat4424
  %i.lzz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4431, %broadcast.splat4424
  %i.maa = getelementptr i8, ptr %i.lzh, i64 48
  %i.mab = getelementptr i8, ptr %i.lzh, i64 80
  %i.mac = getelementptr i8, ptr %i.lzh, i64 112
  store <8 x float> %i.lzw, ptr %i.lzi, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzx, ptr %i.maa, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzy, ptr %i.mab, align 16, !tbaa !12, !noalias !549
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.myn = fadd reassoc nsz arcp contract afn <8 x float> %i.myl, %i.mym
  %i.myo = fmul reassoc nsz arcp contract afn <8 x float> %i.mxy, %i.mxy
  %i.myp = fadd reassoc nsz arcp contract afn <8 x float> %i.myn, %i.myo
  %i.myq = fmul reassoc nsz arcp contract afn <8 x float> %i.mya, %i.mya
  %i.myr = fadd reassoc nsz arcp contract afn <8 x float> %i.myp, %i.myq
  %i.mys = fmul reassoc nsz arcp contract afn <8 x float> %i.myb, %i.myb
  %i.myt = fadd reassoc nsz arcp contract afn <8 x float> %i.myr, %i.mys
  %i.myu = fmul reassoc nsz arcp contract afn <8 x float> %i.myd, %i.myd
  %i.myv = fadd reassoc nsz arcp contract afn <8 x float> %i.myt, %i.myu
  %i.myw = fmul reassoc nsz arcp contract afn <8 x float> %i.myf, %i.myf
  %i.myx = fadd reassoc nsz arcp contract afn <8 x float> %i.myv, %i.myw
  %i.myy = fmul reassoc nsz arcp contract afn <8 x float> %i.myh, %i.myh
  %i.myz = fadd reassoc nsz arcp contract afn <8 x float> %i.myx, %i.myy
  %i.mza = fmul reassoc nsz arcp contract afn <8 x float> %i.myj, %i.myj
  %i.mzb = fadd reassoc nsz arcp contract afn <8 x float> %i.myz, %i.mza ; 3 uses
  %i.mzc = fmul reassoc nsz arcp contract afn <8 x float> %i.mxs, %strided.vec4296
  %i.mzd = fmul reassoc nsz arcp contract afn <8 x float> %i.mzb, %strided.vec4278
  %i.mze = fadd reassoc nsz arcp contract afn <8 x float> %i.mzc, %i.mzd
  %i.mzf = fadd reassoc nsz arcp contract afn <8 x float> %i.mxs, %i.mzb ; 2 uses
  %i.mzg = fmul reassoc nsz arcp contract afn <8 x float> %i.mxs, %i.mzb
  %i.mzh = fdiv reassoc nsz arcp contract afn <8 x float> %i.mzg, %i.mzf ; 2 uses
  %i.mzi = fmul reassoc nsz arcp contract afn <8 x float> %i.mzh, %i.mvx
  %i.mzj = fdiv reassoc nsz arcp contract afn <8 x float> %i.mzi, %i.mvy
  %i.mzk = fmul reassoc nsz arcp contract afn <8 x float> %i.mze, %i.mwa
  %i.mzl = fdiv reassoc nsz arcp contract afn <8 x float> %i.mzk, %i.mzf
  %i.mzm = fadd reassoc nsz arcp contract afn <8 x float> %i.mzj, %i.mzl
  %i.mzn = fadd reassoc nsz arcp contract afn <8 x float> %i.mzh, %i.mwa
  %i.mzo = fdiv reassoc nsz arcp contract afn <8 x float> %i.mzm, %i.mzn
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mzo, <8 x ptr> align 4 %wide.gep4240, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4305 = add nuw i64 %index4238, 8     ; 2 uses
  %vec.ind.next4306 = add nuw nsw <8 x i64> %vec.ind4239, splat (i64 16)
  %i.mzp = icmp eq i64 %index.next4305, %n.vec4233
  br i1 %i.mzp, label %scalar.ph4230.preheader, label %vector.body4237, !llvm.loop !341

._crit_edge1057.i:                                ; preds = %scalar.ph4230, %bb.ph
  %indvars.iv.next1246.i = add nuw nsw i64 %indvars.iv1245.i, 1 ; 2 uses
  %exitcond1122.not = icmp eq i64 %indvars.iv.next1246.i, %smax1145
  br i1 %exitcond1122.not, label %._crit_edge1060.i, label %bb.ph

scalar.ph4230:                                    ; preds = %scalar.ph4230.preheader, %scalar.ph4230
  %indvars.iv1242.i = phi i64 [ %indvars.iv.next1243.i, %scalar.ph4230 ], [ %indvars.iv1242.i.ph, %scalar.ph4230.preheader ] ; 7 uses
  %i.mzq = getelementptr inbounds nuw [4 x i8], ptr %i.msa, i64 %indvars.iv1242.i ; 3 uses
  %i.mzr = getelementptr inbounds nuw [4 x i8], ptr %i.msb, i64 %indvars.iv1242.i ; 9 uses
  %i.mzs = getelementptr inbounds nuw [4 x i8], ptr %i.msc, i64 %indvars.iv1242.i ; 2 uses
  %i.mzt = getelementptr inbounds nuw [4 x i8], ptr %i.msd, i64 %indvars.iv1242.i ; 9 uses
  %i.mzu = getelementptr inbounds nuw [4 x i8], ptr %i.mse, i64 %indvars.iv1242.i
  %i.mzv = getelementptr inbounds i8, ptr %i.mzs, i64 -16
  %i.mzw = getelementptr inbounds nuw i8, ptr %i.mzs, i64 16
  %i.mzx = load float, ptr %i.mzw, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mzy = load <8 x float>, ptr %i.mzv, align 4, !tbaa !12, !noalias !549 ; 4 uses
  %i.mzz = getelementptr inbounds i8, ptr %i.mzq, i64 -16
  %i.naa = getelementptr inbounds nuw i8, ptr %i.mzq, i64 16
  %i.nab = load <8 x float>, ptr %i.mzz, align 4, !tbaa !12, !noalias !549
  %i.nac = fsub reassoc nsz arcp contract afn <8 x float> %i.mzy, %i.nab ; 2 uses
  %i.nad = fmul reassoc nsz arcp contract afn <8 x float> %i.nac, %i.nac
  %i.nae = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nad)
  %i.naf = getelementptr inbounds i8, ptr %i.mzt, i64 -2176
  %i.nag = load float, ptr %i.naf, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nah = getelementptr inbounds i8, ptr %i.mzt, i64 -1632
  %i.nai = load float, ptr %i.nah, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.naj = getelementptr inbounds i8, ptr %i.mzt, i64 -1088
  %i.nak = load float, ptr %i.naj, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nal = getelementptr inbounds i8, ptr %i.mzt, i64 -544
  %i.nam = load float, ptr %i.nal, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nan = load float, ptr %i.mzt, align 4, !tbaa !12, !noalias !549 ; 4 uses
  %i.nao = getelementptr inbounds nuw i8, ptr %i.mzt, i64 544
  %i.nap = load float, ptr %i.nao, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.naq = getelementptr inbounds nuw i8, ptr %i.mzt, i64 1088
  %i.nar = load float, ptr %i.naq, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nas = getelementptr inbounds nuw i8, ptr %i.mzt, i64 1632
  %i.nat = load float, ptr %i.nas, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.nau = getelementptr inbounds nuw i8, ptr %i.mzt, i64 2176
  %i.nav = load float, ptr %i.nau, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.naw = fadd reassoc nsz arcp contract afn float %i.nai, %i.nag
  %i.nax = fadd reassoc nsz arcp contract afn float %i.naw, %i.nak
  %i.nay = fadd reassoc nsz arcp contract afn float %i.nax, %i.nam
  %i.naz = fadd reassoc nsz arcp contract afn float %i.nay, %i.nan
  %i.nba = fadd reassoc nsz arcp contract afn float %i.naz, %i.nap
  %i.nbb = fadd reassoc nsz arcp contract afn float %i.nba, %i.nar
  %i.nbc = fadd reassoc nsz arcp contract afn float %i.nbb, %i.nat
  %i.nbd = getelementptr inbounds i8, ptr %i.mzr, i64 -2176
  %i.nbe = load float, ptr %i.nbd, align 4, !tbaa !12, !noalias !549
  %i.nbf = fsub reassoc nsz arcp contract afn float %i.nag, %i.nbe ; 2 uses
  %i.nbg = getelementptr inbounds i8, ptr %i.mzr, i64 -1632
  %i.nbh = load float, ptr %i.nbg, align 4, !tbaa !12, !noalias !549
  %i.nbi = fsub reassoc nsz arcp contract afn float %i.nai, %i.nbh ; 2 uses
  %i.nbj = getelementptr inbounds i8, ptr %i.mzr, i64 -1088
  %i.nbk = load float, ptr %i.nbj, align 4, !tbaa !12, !noalias !549
  %i.nbl = fsub reassoc nsz arcp contract afn float %i.nak, %i.nbk ; 2 uses
  %i.nbm = getelementptr inbounds i8, ptr %i.mzr, i64 -544
  %i.nbn = load float, ptr %i.nbm, align 4, !tbaa !12, !noalias !549
  %i.nbo = fsub reassoc nsz arcp contract afn float %i.nam, %i.nbn ; 2 uses
  %i.nbp = getelementptr inbounds nuw i8, ptr %i.mzr, i64 544
  %i.nbq = load float, ptr %i.nbp, align 4, !tbaa !12, !noalias !549
  %i.nbr = fsub reassoc nsz arcp contract afn float %i.nap, %i.nbq ; 2 uses
  %i.nbs = getelementptr inbounds nuw i8, ptr %i.mzr, i64 1088
  %i.nbt = load float, ptr %i.nbs, align 4, !tbaa !12, !noalias !549
  %i.nbu = fsub reassoc nsz arcp contract afn float %i.nar, %i.nbt ; 2 uses
  %i.nbv = getelementptr inbounds nuw i8, ptr %i.mzr, i64 1632
  %i.nbw = getelementptr inbounds nuw i8, ptr %i.mzr, i64 2176
  %i.nbx = load float, ptr %i.nbw, align 4, !tbaa !12, !noalias !549
  %i.nby = fsub reassoc nsz arcp contract afn float %i.nav, %i.nbx ; 2 uses
  %i.nbz = fmul reassoc nsz arcp contract afn float %i.nbf, %i.nbf
  %i.nca = fadd reassoc nsz arcp contract afn float %i.nbz, 1.000000e-07
  %i.ncb = fmul reassoc nsz arcp contract afn float %i.nbi, %i.nbi
  %i.ncc = fadd reassoc nsz arcp contract afn float %i.nca, %i.ncb
  %i.ncd = fmul reassoc nsz arcp contract afn float %i.nbl, %i.nbl
  %i.nce = fadd reassoc nsz arcp contract afn float %i.ncc, %i.ncd
  %i.ncf = fmul reassoc nsz arcp contract afn float %i.nbo, %i.nbo
  %i.ncg = fadd reassoc nsz arcp contract afn float %i.nce, %i.ncf
  %i.nch = fmul reassoc nsz arcp contract afn float %i.nbr, %i.nbr
  %i.nci = fmul reassoc nsz arcp contract afn float %i.nbu, %i.nbu
  %i.ncj = fmul reassoc nsz arcp contract afn float %i.nby, %i.nby
  %op.rdx4606 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.mzx, <8 x float> %i.mzy)
  %i.nck = fadd reassoc nsz arcp contract afn float %i.nbc, %i.nav
  %i.ncl = insertelement <2 x float> poison, float %op.rdx4606, i64 0
  %i.ncm = insertelement <2 x float> %i.ncl, float %i.nck, i64 1
  %i.ncn = fmul reassoc nsz arcp contract afn <2 x float> %i.ncm, splat (float f0x3DE38E39) ; 3 uses
  %i.nco = shufflevector <2 x float> %i.ncn, <2 x float> poison, <8 x i32> zeroinitializer
  %i.ncp = fsub reassoc nsz arcp contract afn <8 x float> %i.mzy, %i.nco ; 2 uses
  %i.ncq = fmul reassoc nsz arcp contract afn <8 x float> %i.ncp, %i.ncp
  %i.ncr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ncq)
  %i.ncs = extractelement <2 x float> %i.ncn, i64 1 ; 8 uses
  %i.nct = fsub reassoc nsz arcp contract afn float %i.nag, %i.ncs ; 2 uses
  %i.ncu = fmul reassoc nsz arcp contract afn float %i.nct, %i.nct
  %i.ncv = fadd reassoc nsz arcp contract afn float %i.ncu, 1.000000e-07
  %i.ncw = fsub reassoc nsz arcp contract afn float %i.nai, %i.ncs ; 2 uses
  %i.ncx = fmul reassoc nsz arcp contract afn float %i.ncw, %i.ncw
  %i.ncy = fadd reassoc nsz arcp contract afn float %i.ncv, %i.ncx
  %i.ncz = fsub reassoc nsz arcp contract afn float %i.nak, %i.ncs ; 2 uses
  %i.nda = fmul reassoc nsz arcp contract afn float %i.ncz, %i.ncz
  %i.ndb = fadd reassoc nsz arcp contract afn float %i.ncy, %i.nda
  %i.ndc = fsub reassoc nsz arcp contract afn float %i.nam, %i.ncs ; 2 uses
  %i.ndd = fmul reassoc nsz arcp contract afn float %i.ndc, %i.ndc
  %i.nde = fadd reassoc nsz arcp contract afn float %i.ndb, %i.ndd
  %i.ndf = fsub reassoc nsz arcp contract afn float %i.nan, %i.ncs ; 2 uses
  %i.ndg = fmul reassoc nsz arcp contract afn float %i.ndf, %i.ndf
  %i.ndh = fadd reassoc nsz arcp contract afn float %i.nde, %i.ndg
  %i.ndi = fsub reassoc nsz arcp contract afn float %i.nap, %i.ncs ; 2 uses
  %i.ndj = fmul reassoc nsz arcp contract afn float %i.ndi, %i.ndi
  %i.ndk = fadd reassoc nsz arcp contract afn float %i.ndh, %i.ndj
  %i.ndl = fsub reassoc nsz arcp contract afn float %i.nar, %i.ncs ; 2 uses
  %i.ndm = fmul reassoc nsz arcp contract afn float %i.ndl, %i.ndl
  %i.ndn = fadd reassoc nsz arcp contract afn float %i.ndk, %i.ndm
  %i.ndo = insertelement <2 x float> poison, float %i.mzx, i64 0
  %i.ndp = insertelement <2 x float> %i.ndo, float %i.nat, i64 1
  %i.ndq = fsub reassoc nsz arcp contract afn <2 x float> %i.ndp, %i.ncn ; 2 uses
  %i.ndr = fmul reassoc nsz arcp contract afn <2 x float> %i.ndq, %i.ndq
  %i.nds = insertelement <2 x float> poison, float %i.ncr, i64 0
  %i.ndt = insertelement <2 x float> %i.nds, float %i.ndn, i64 1
  %i.ndu = fadd reassoc nsz arcp contract afn <2 x float> %i.ndt, %i.ndr
  %i.ndv = fsub reassoc nsz arcp contract afn float %i.nav, %i.ncs ; 2 uses
  %i.ndw = fmul reassoc nsz arcp contract afn float %i.ndv, %i.ndv
  %i.ndx = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ndw, i64 1
  %i.ndy = fadd reassoc nsz arcp contract afn <2 x float> %i.ndu, %i.ndx ; 3 uses
  %i.ndz = load float, ptr %i.nbv, align 4, !tbaa !12, !noalias !549
  %i.nea = load float, ptr %i.mzr, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.neb = load float, ptr %i.naa, align 4, !tbaa !12, !noalias !549
  %i.nec = load float, ptr %i.mzq, align 4, !tbaa !12, !noalias !549
  %i.ned = fsub reassoc nsz arcp contract afn float %i.nan, %i.nea ; 2 uses
  %i.nee = fsub reassoc nsz arcp contract afn float %i.mzx, %i.neb
  %i.nef = fsub reassoc nsz arcp contract afn float %i.nat, %i.ndz
  %i.neg = fmul reassoc nsz arcp contract afn float %i.ned, %i.ned
  %i.neh = fadd reassoc nsz arcp contract afn float %i.ncg, %i.neg
  %i.nei = fadd reassoc nsz arcp contract afn float %i.neh, %i.nch
  %i.nej = fadd reassoc nsz arcp contract afn float %i.nei, %i.nci
  %i.nek = insertelement <2 x float> poison, float %i.nee, i64 0
  %i.nel = insertelement <2 x float> %i.nek, float %i.nef, i64 1 ; 2 uses
  %i.nem = fmul reassoc nsz arcp contract afn <2 x float> %i.nel, %i.nel
  %i.nen = insertelement <2 x float> poison, float %i.nae, i64 0
  %i.neo = insertelement <2 x float> %i.nen, float %i.nej, i64 1
  %i.nep = fadd reassoc nsz arcp contract afn <2 x float> %i.neo, %i.nem
  %i.neq = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ncj, i64 1
  %i.ner = fadd reassoc nsz arcp contract afn <2 x float> %i.nep, %i.neq ; 3 uses
  %i.nes = insertelement <2 x float> poison, float %i.nec, i64 0
  %i.net = insertelement <2 x float> %i.nes, float %i.nea, i64 1
  %i.neu = fmul reassoc nsz arcp contract afn <2 x float> %i.ndy, %i.net
  %i.nev = shufflevector <8 x float> %i.mzy, <8 x float> poison, <2 x i32> <i32 4, i32 poison>
  %i.new = insertelement <2 x float> %i.nev, float %i.nan, i64 1
  %i.nex = fmul reassoc nsz arcp contract afn <2 x float> %i.ner, %i.new
  %i.ney = fadd reassoc nsz arcp contract afn <2 x float> %i.neu, %i.nex
  %i.nez = fadd reassoc nsz arcp contract afn <2 x float> %i.ndy, %i.ner ; 2 uses
  %i.nfa = fmul reassoc nsz arcp contract afn <2 x float> %i.ndy, %i.ner
  %i.nfb = fdiv reassoc nsz arcp contract afn <2 x float> %i.nfa, %i.nez ; 3 uses
  %i.nfc = shufflevector <2 x float> %i.ney, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nfd = fmul reassoc nsz arcp contract afn <2 x float> %i.nfb, %i.nfc
  %i.nfe = shufflevector <2 x float> %i.nez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nff = fdiv reassoc nsz arcp contract afn <2 x float> %i.nfd, %i.nfe ; 2 uses
  %shift = shufflevector <2 x float> %i.nff, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %shift, %i.nff
  %shift4611 = shufflevector <2 x float> %i.nfb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4612 = fadd reassoc nsz arcp contract afn <2 x float> %shift4611, %i.nfb
  %foldExtExtBinop4614 = fdiv reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop4612
  %i.nfg = extractelement <2 x float> %foldExtExtBinop4614, i64 0
  store float %i.nfg, ptr %i.mzu, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1243.i = add nuw nsw i64 %indvars.iv1242.i, 2
  %i.nfh = icmp slt i64 %indvars.iv1242.i, %i.mmy
  br i1 %i.nfh, label %scalar.ph4230, label %._crit_edge1057.i, !llvm.loop !342

.preheader1023.i:                                 ; preds = %._crit_edge1067.i, %.lr.ph1071.i
  br i1 %6, label %.lr.ph1077.i, label %._crit_edge1085.i

.lr.ph1077.i:                                     ; preds = %.preheader1023.i
  %i.nfi = add nsw i32 %i.lyn, 7                  ; 3 uses
  %i.nfj = sext i32 %i.nfi to i64                 ; 3 uses
  %i.nfk = add nsw i32 %i.lyn, 6
  br label %bb.pq

.lr.ph1066.i:                                     ; preds = %._crit_edge1067.i, %.lr.ph1066.preheader.i
  %indvars.iv1257.i = phi i64 [ 0, %.lr.ph1066.preheader.i ], [ %indvars.iv.next1258.i, %._crit_edge1067.i ] ; 3 uses
  %.09261069.i = phi i32 [ %i.lvx, %.lr.ph1066.preheader.i ], [ %i.nin, %._crit_edge1067.i ] ; 3 uses
  %indvars.iv1257.tr.i = trunc nuw i64 %indvars.iv1257.i to i32
  %i.nfl = shl nuw i32 %indvars.iv1257.tr.i, 1
  %i.nfm = and i32 %i.nfl, 14                     ; 7 uses
  %i.nfn = icmp sgt i32 %.09261069.i, -1
  %i.nfo = mul nuw nsw i64 %indvars.iv1257.i, 136 ; 10 uses
  %i.nfp = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.nfo ; 7 uses
  %i.nfq = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.nfo
  br i1 %i.nfn, label %.lr.ph1066.split.us.i, label %.thread982.i.preheader

.thread982.i.preheader:                           ; preds = %.lr.ph1066.i
  br i1 %i.mrp, label %.thread982.i.epil.preheader, label %.thread982.i.preheader.new

.thread982.i.preheader.new:                       ; preds = %.thread982.i.preheader
  %i.nfr = shl nuw nsw i32 %i.nfm, 1
  %i.nfs = lshr i32 %.fr1063, %i.nfr
  %i.nft = and i32 %i.nfs, 3                      ; 2 uses
  %i.nfu = zext nneg i32 %i.nft to i64
  %i.nfv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nfu
  %i.nfw = load ptr, ptr %i.nfv, align 8, !tbaa !140, !noalias !551
  %i.nfx = getelementptr inbounds nuw [4 x i8], ptr %i.nfw, i64 %i.nfo
  %.not955983.i = icmp eq i32 %i.nft, 1
  %.tr.i962.i.1 = shl nuw nsw i32 %i.nfm, 1
  %i.nfy = or disjoint i32 %.tr.i962.i.1, 2
  %i.nfz = lshr i32 %.fr1063, %i.nfy
  %i.nga = and i32 %i.nfz, 3                      ; 2 uses
  %i.ngb = zext nneg i32 %i.nga to i64
  %i.ngc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngb
  %i.ngd = load ptr, ptr %i.ngc, align 8, !tbaa !140, !noalias !551
  %i.nge = getelementptr inbounds nuw [4 x i8], ptr %i.ngd, i64 %i.nfo
  %.not955983.i.1 = icmp eq i32 %i.nga, 1
  br label %.thread982.i

.lr.ph1066.split.us.i:                            ; preds = %.lr.ph1066.i
  %i.ngf = icmp slt i32 %.09261069.i, %i.axj
  br i1 %i.ngf, label %.lr.ph1066.split.us.split.preheader.i, label %.lr.ph1066.split.us.split.us.i.preheader

.lr.ph1066.split.us.split.us.i.preheader:         ; preds = %.lr.ph1066.split.us.i
  br i1 %i.mrr, label %.lr.ph1066.split.us.split.us.i.epil.preheader, label %.lr.ph1066.split.us.split.us.i.preheader.new

.lr.ph1066.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1066.split.us.split.us.i.preheader
  %i.ngg = shl nuw nsw i32 %i.nfm, 1
  %i.ngh = lshr i32 %.fr1063, %i.ngg
  %i.ngi = and i32 %i.ngh, 3                      ; 2 uses
  %i.ngj = zext nneg i32 %i.ngi to i64
  %i.ngk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngj
  %i.ngl = load ptr, ptr %i.ngk, align 8, !tbaa !140, !noalias !551
  %i.ngm = getelementptr inbounds nuw [4 x i8], ptr %i.ngl, i64 %i.nfo
  %.not955.us.us.i = icmp eq i32 %i.ngi, 1
  %.tr.i962.us.us.i.1 = shl nuw nsw i32 %i.nfm, 1
  %i.ngn = or disjoint i32 %.tr.i962.us.us.i.1, 2
  %i.ngo = lshr i32 %.fr1063, %i.ngn
  %i.ngp = and i32 %i.ngo, 3                      ; 2 uses
  %i.ngq = zext nneg i32 %i.ngp to i64
  %i.ngr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngq
  %i.ngs = load ptr, ptr %i.ngr, align 8, !tbaa !140, !noalias !551
  %i.ngt = getelementptr inbounds nuw [4 x i8], ptr %i.ngs, i64 %i.nfo
  %.not955.us.us.i.1 = icmp eq i32 %i.ngp, 1
  br label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.preheader.i:            ; preds = %.lr.ph1066.split.us.i
  %invariant.gep1376.i = getelementptr inbounds nuw [4 x i8], ptr %i.luw, i64 %i.nfo
  br label %.lr.ph1066.split.us.split.i

.lr.ph1066.split.us.split.us.i:                   ; preds = %bb.pk, %.lr.ph1066.split.us.split.us.i.preheader.new
  %indvars.iv1251.i = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1252.i.1, %bb.pk ] ; 4 uses
  %niter4733 = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %niter4733.next.1, %bb.pk ]
  %i.ngu = getelementptr inbounds nuw [4 x i8], ptr %i.ngm, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngu, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i, label %.lr.ph1066.split.us.split.us.i.1, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph1066.split.us.split.us.i
  %i.ngv = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngv, align 8, !tbaa !12, !noalias !549
  br label %.lr.ph1066.split.us.split.us.i.1

.lr.ph1066.split.us.split.us.i.1:                 ; preds = %bb.pi, %.lr.ph1066.split.us.split.us.i
  %indvars.iv.next1252.i = or disjoint i64 %indvars.iv1251.i, 1 ; 2 uses
  %i.ngw = getelementptr inbounds nuw [4 x i8], ptr %i.ngt, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngw, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i.1, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph1066.split.us.split.us.i.1
  %i.ngx = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngx, align 4, !tbaa !12, !noalias !549
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.lr.ph1066.split.us.split.us.i.1
  %indvars.iv.next1252.i.1 = add nuw nsw i64 %indvars.iv1251.i, 2 ; 2 uses
  %niter4733.next.1 = add i64 %niter4733, 2       ; 2 uses
  %niter4733.ncmp.1.not = icmp eq i64 %niter4733.next.1, %unroll_iter4732
  br i1 %niter4733.ncmp.1.not, label %._crit_edge1067.i.loopexit4627.unr-lcssa, label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.i:                      ; preds = %bb.pn, %.lr.ph1066.split.us.split.preheader.i
  %indvars.iv1254.i = phi i64 [ 0, %.lr.ph1066.split.us.split.preheader.i ], [ %indvars.iv.next1255.i, %bb.pn ] ; 6 uses
  %.09241064.us.i = phi i32 [ %i.mrm, %.lr.ph1066.split.us.split.preheader.i ], [ %i.nhp, %bb.pn ] ; 2 uses
  %i.ngy = trunc nuw nsw i64 %indvars.iv1254.i to i32
  %i.ngz = and i32 %i.ngy, 1
  %.tr.i962.us.i = or disjoint i32 %i.ngz, %i.nfm
  %i.nha = shl nuw nsw i32 %.tr.i962.us.i, 1
  %i.nhb = lshr i32 %.fr1063, %i.nha
  %i.nhc = and i32 %i.nhb, 3                      ; 3 uses
  %i.nhd = icmp ult i32 %.09241064.us.i, %i.bo
  %i.nhe = zext nneg i32 %i.nhc to i64
  %i.nhf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhe
  %i.nhg = load ptr, ptr %i.nhf, align 8, !tbaa !140, !noalias !551
  %i.nhh = getelementptr inbounds nuw [4 x i8], ptr %i.nhg, i64 %i.nfo
  %i.nhi = getelementptr inbounds nuw [4 x i8], ptr %i.nhh, i64 %indvars.iv1254.i ; 2 uses
  br i1 %i.nhd, label %bb.pl, label %.thread.i562

bb.pl:                                            ; preds = %.lr.ph1066.split.us.split.i
  %gep1377.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1376.i, i64 %indvars.iv1254.i
  %i.nhj = load float, ptr %gep1377.i, align 4, !tbaa !12, !noalias !549 ; 2 uses
  store float %i.nhj, ptr %i.nhi, align 4, !tbaa !12, !noalias !549
  %.not955.us.i = icmp eq i32 %i.nhc, 1
  br i1 %.not955.us.i, label %bb.pn, label %bb.pm

.thread.i562:                                     ; preds = %.lr.ph1066.split.us.split.i
  store float 0.000000e+00, ptr %i.nhi, align 4, !tbaa !12, !noalias !549
  %.not955.us1356.i = icmp eq i32 %i.nhc, 1
  br i1 %.not955.us1356.i, label %bb.pn, label %.thread1357.i

bb.pm:                                            ; preds = %bb.pl
  %i.nhk = getelementptr inbounds nuw [4 x i8], ptr %i.nfq, i64 %indvars.iv1254.i
  %i.nhl = load float, ptr %i.nhk, align 4, !tbaa !12, !noalias !549
  %i.nhm = fadd reassoc nsz arcp contract afn float %i.nhl, %i.nhj
  br label %.thread1357.i

.thread1357.i:                                    ; preds = %bb.pm, %.thread.i562
  %i.nhn = phi reassoc nsz arcp contract afn float [ %i.nhm, %bb.pm ], [ 0.000000e+00, %.thread.i562 ]
  %i.nho = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1254.i
  store float %i.nhn, ptr %i.nho, align 4, !tbaa !12, !noalias !549
  br label %bb.pn

bb.pn:                                            ; preds = %.thread1357.i, %.thread.i562, %bb.pl
  %indvars.iv.next1255.i = add nuw nsw i64 %indvars.iv1254.i, 1 ; 2 uses
  %i.nhp = add nsw i32 %.09241064.us.i, 1
  %i.nhq = icmp slt i64 %indvars.iv.next1255.i, %i.mro
  br i1 %i.nhq, label %.lr.ph1066.split.us.split.i, label %._crit_edge1067.i

._crit_edge1067.i.loopexit4627.unr-lcssa:         ; preds = %bb.pk
  br i1 %lcmp.mod4730.not, label %._crit_edge1067.i, label %.lr.ph1066.split.us.split.us.i.epil.preheader

.lr.ph1066.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1067.i.loopexit4627.unr-lcssa, %.lr.ph1066.split.us.split.us.i.preheader
  %indvars.iv1251.i.epil.init = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader ], [ %indvars.iv.next1252.i.1, %._crit_edge1067.i.loopexit4627.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4731)
  %i.nhr = trunc nuw nsw i64 %indvars.iv1251.i.epil.init to i32
  %i.nhs = and i32 %i.nhr, 1
  %.tr.i962.us.us.i.epil = or disjoint i32 %i.nhs, %i.nfm
  %i.nht = shl nuw nsw i32 %.tr.i962.us.us.i.epil, 1
  %i.nhu = lshr i32 %.fr1063, %i.nht
  %i.nhv = and i32 %i.nhu, 3                      ; 2 uses
  %i.nhw = zext nneg i32 %i.nhv to i64
  %i.nhx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhw
  %i.nhy = load ptr, ptr %i.nhx, align 8, !tbaa !140, !noalias !551
  %i.nhz = getelementptr inbounds nuw [4 x i8], ptr %i.nhy, i64 %i.nfo
  %i.nia = getelementptr inbounds nuw [4 x i8], ptr %i.nhz, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nia, align 4, !tbaa !12, !noalias !549
  %.not955.us.us.i.epil = icmp eq i32 %i.nhv, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1067.i, label %bb.po

bb.po:                                            ; preds = %.lr.ph1066.split.us.split.us.i.epil.preheader
  %i.nib = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nib, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i

._crit_edge1067.i.loopexit4628.unr-lcssa:         ; preds = %bb.pp
  br i1 %lcmp.mod4722.not, label %._crit_edge1067.i, label %.thread982.i.epil.preheader

.thread982.i.epil.preheader:                      ; preds = %._crit_edge1067.i.loopexit4628.unr-lcssa, %.thread982.i.preheader
  %indvars.iv1248.i.epil.init = phi i64 [ 0, %.thread982.i.preheader ], [ %indvars.iv.next1249.i.1, %._crit_edge1067.i.loopexit4628.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4723)
  %i.nic = trunc nuw nsw i64 %indvars.iv1248.i.epil.init to i32
  %i.nid = and i32 %i.nic, 1
  %.tr.i962.i.epil = or disjoint i32 %i.nid, %i.nfm
  %i.nie = shl nuw nsw i32 %.tr.i962.i.epil, 1
  %i.nif = lshr i32 %.fr1063, %i.nie
  %i.nig = and i32 %i.nif, 3                      ; 2 uses
  %i.nih = zext nneg i32 %i.nig to i64
  %i.nii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nih
  %i.nij = load ptr, ptr %i.nii, align 8, !tbaa !140, !noalias !551
  %i.nik = getelementptr inbounds nuw [4 x i8], ptr %i.nij, i64 %i.nfo
  %i.nil = getelementptr inbounds nuw [4 x i8], ptr %i.nik, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nil, align 4, !tbaa !12, !noalias !549
  %.not955983.i.epil = icmp eq i32 %i.nig, 1
  br i1 %.not955983.i.epil, label %._crit_edge1067.i, label %.thread984.i.epil

.thread984.i.epil:                                ; preds = %.thread982.i.epil.preheader
  %i.nim = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nim, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i
end_hunk_1
begin_hunk_2_@process:bb.a
.lr.ph1074.i:                                     ; preds = %bb.pq
  %i.njc = or disjoint i32 %i.nja, %i.nix
  %i.njd = shl nuw nsw i32 %i.njc, 1
  %i.nje = lshr i32 %.fr1063, %i.njd
  %i.njf = and i32 %i.nje, 3                      ; 2 uses
  %i.njg = zext nneg i32 %i.njf to i64
  %i.njh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njg
  %i.nji = load ptr, ptr %i.njh, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.njj = mul nuw nsw i64 %indvars.iv1263.i, 136 ; 3 uses
  %i.njk = getelementptr inbounds nuw [4 x i8], ptr %i.nji, i64 %i.njj ; 2 uses
  %i.njl = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.njj ; 2 uses
  %i.njm = sub nsw i32 2, %i.njf
  %i.njn = sext i32 %i.njm to i64
  %i.njo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.njn
  %i.njp = load ptr, ptr %i.njo, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.njq = getelementptr inbounds nuw [4 x i8], ptr %i.njp, i64 %i.njj ; 2 uses
  %narrow1352.i = add nuw nsw i32 %i.nja, 1
  %i.njr = zext nneg i32 %narrow1352.i to i64     ; 5 uses
  %i.njs = and i32 %i.niz, 1
  %i.njt = zext nneg i32 %i.njs to i64            ; 2 uses
  %i.nju = add nuw nsw i64 %i.njt, 3
  %i.njv = call i64 @llvm.smax.i64(i64 %i.nfj, i64 %i.nju)
  %i.njw = add nsw i64 %i.njv, -2
  %i.njx = sub i64 %i.njw, %i.njt                 ; 2 uses
  %i.njy = lshr i64 %i.njx, 1
  %i.njz = add nuw nsw i64 %i.njy, 1              ; 2 uses
  %min.iters.check4197 = icmp ult i64 %i.njx, 16
  br i1 %min.iters.check4197, label %scalar.ph4196.preheader, label %vector.memcheck4173

scalar.ph4196.preheader:                          ; preds = %vector.body4203, %vector.memcheck4173, %.lr.ph1074.i
  %indvars.iv1260.i.ph = phi i64 [ %i.njr, %vector.memcheck4173 ], [ %i.njr, %.lr.ph1074.i ], [ %i.nkx, %vector.body4203 ]
  br label %scalar.ph4196

vector.memcheck4173:                              ; preds = %.lr.ph1074.i
  %i.nka = and i32 %i.niz, 1
  %i.nkb = zext nneg i32 %i.nka to i64            ; 3 uses
  %i.nkc = shl nuw nsw i64 %i.nkb, 2              ; 6 uses
  %i.nkd = getelementptr i8, ptr %i.nji, i64 %i.nit
  %i.nke = getelementptr i8, ptr %i.nkd, i64 544
  %scevgep4176 = getelementptr i8, ptr %i.nke, i64 %i.nkc ; 2 uses
  %i.nkf = add nuw nsw i64 %i.nkb, 3
  %smax4177 = call i64 @llvm.smax.i64(i64 %i.nfj, i64 %i.nkf)
  %i.nkg = add nsw i64 %smax4177, -2
  %i.nkh = sub i64 %i.nkg, %i.nkb
  %i.nki = shl nuw nsw i64 %i.nkh, 2
  %i.nkj = and i64 %i.nki, 9223372036854775800    ; 3 uses
  %i.nkk = getelementptr i8, ptr %i.nji, i64 %i.nit
  %i.nkl = getelementptr i8, ptr %i.nkk, i64 556
  %i.nkm = getelementptr i8, ptr %i.nkl, i64 %i.nkj
  %scevgep4178 = getelementptr i8, ptr %i.nkm, i64 %i.nkc ; 2 uses
  %i.nkn = getelementptr i8, ptr %i.njp, i64 %i.nit
  %i.nko = getelementptr i8, ptr %i.nkn, i64 4
  %scevgep4179 = getelementptr i8, ptr %i.nko, i64 %i.nkc ; 2 uses
  %i.nkp = getelementptr i8, ptr %i.njp, i64 %i.nit
  %i.nkq = getelementptr i8, ptr %i.nkp, i64 1096
  %i.nkr = getelementptr i8, ptr %i.nkq, i64 %i.nkj
  %scevgep4180 = getelementptr i8, ptr %i.nkr, i64 %i.nkc ; 2 uses
  %scevgep4182 = getelementptr i8, ptr %scevgep4181, i64 %i.nkc ; 2 uses
  %i.nks = getelementptr i8, ptr %scevgep4183, i64 %i.nkj
  %scevgep4184 = getelementptr i8, ptr %i.nks, i64 %i.nkc ; 2 uses
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
  %i.nkt = and i64 %i.njz, 7                      ; 2 uses
  %i.nku = icmp eq i64 %i.nkt, 0
  %i.nkv = select i1 %i.nku, i64 8, i64 %i.nkt
  %n.vec4199 = sub nsw i64 %i.njz, %i.nkv         ; 2 uses
  %i.nkw = shl i64 %n.vec4199, 1
  %i.nkx = add i64 %i.nkw, %i.njr
  %broadcast.splatinsert4200 = insertelement <8 x i64> poison, i64 %i.njr, i64 0
  %broadcast.splat4201 = shufflevector <8 x i64> %broadcast.splatinsert4200, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4202 = add nuw nsw <8 x i64> %broadcast.splat4201, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4859 = getelementptr [4 x i8], ptr %i.njl, i64 %i.njr
  br label %vector.body4203

vector.body4203:                                  ; preds = %vector.body4203, %vector.ph4198
  %index4204 = phi i64 [ 0, %vector.ph4198 ], [ %index.next4226, %vector.body4203 ] ; 2 uses
  %vec.ind4205 = phi <8 x i64> [ %induction4202, %vector.ph4198 ], [ %vec.ind.next4227, %vector.body4203 ] ; 3 uses
  %wide.gep4206 = getelementptr inbounds nuw [4 x i8], ptr %i.njk, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nky = extractelement <8 x ptr> %wide.gep4206, i64 0 ; 2 uses
  %.idx4558 = shl nuw i64 %index4204, 3
  %gep4860 = getelementptr i8, ptr %invariant.gep4859, i64 %.idx4558 ; 4 uses
  %i.nkz = getelementptr inbounds i8, ptr %gep4860, i64 -4
  %wide.vec4207 = load <16 x float>, ptr %i.nkz, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4208 = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4209 = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nla = getelementptr inbounds i8, ptr %i.nky, i64 -4
  %wide.vec4210 = load <16 x float>, ptr %i.nla, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4211 = shufflevector <16 x float> %wide.vec4210, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlb = getelementptr inbounds nuw i8, ptr %i.nky, i64 4
  %wide.vec4212 = load <16 x float>, ptr %i.nlb, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4213 = shufflevector <16 x float> %wide.vec4212, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4214 = load <16 x float>, ptr %gep4860, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4215 = shufflevector <16 x float> %wide.vec4214, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4214, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nlc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4211, %strided.vec4213
  %i.nld = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4208, %strided.vec4216
  %i.nle = fsub reassoc nsz arcp contract afn <8 x float> %i.nlc, %i.nld
  %i.nlf = fmul reassoc nsz arcp contract afn <8 x float> %i.nle, splat (float 5.000000e-01)
  %i.nlg = fadd reassoc nsz arcp contract afn <8 x float> %i.nlf, %strided.vec4209
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nlg, <8 x ptr> align 4 %wide.gep4206, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !554, !noalias !555
  %wide.gep4217 = getelementptr inbounds nuw [4 x i8], ptr %i.njq, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nlh = extractelement <8 x ptr> %wide.gep4217, i64 0 ; 2 uses
  %i.nli = getelementptr inbounds i8, ptr %i.nlh, i64 -544
  %wide.vec4218 = load <16 x float>, ptr %i.nli, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4219 = shufflevector <16 x float> %wide.vec4218, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlj = getelementptr inbounds i8, ptr %gep4860, i64 -544
  %wide.vec4220 = load <16 x float>, ptr %i.nlj, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4221 = shufflevector <16 x float> %wide.vec4220, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlk = getelementptr inbounds nuw i8, ptr %i.nlh, i64 544
  %wide.vec4222 = load <16 x float>, ptr %i.nlk, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4223 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nll = getelementptr inbounds nuw i8, ptr %gep4860, i64 544
  %wide.vec4224 = load <16 x float>, ptr %i.nll, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4225 = shufflevector <16 x float> %wide.vec4224, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219, %strided.vec4223
  %i.nln = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4221, %strided.vec4225
  %i.nlo = fsub reassoc nsz arcp contract afn <8 x float> %i.nlm, %i.nln
  %i.nlp = fmul reassoc nsz arcp contract afn <8 x float> %i.nlo, splat (float 5.000000e-01)
  %i.nlq = fadd reassoc nsz arcp contract afn <8 x float> %i.nlp, %strided.vec4215
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nlq, <8 x ptr> align 4 %wide.gep4217, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !556, !noalias !557
  %index.next4226 = add nuw i64 %index4204, 8     ; 2 uses
  %vec.ind.next4227 = add nuw nsw <8 x i64> %vec.ind4205, splat (i64 16)
  %i.nlr = icmp eq i64 %index.next4226, %n.vec4199
  br i1 %i.nlr, label %scalar.ph4196.preheader, label %vector.body4203, !llvm.loop !347

._crit_edge1075.i:                                ; preds = %scalar.ph4196, %bb.pq
  %indvars.iv.next1264.i = add nuw nsw i64 %indvars.iv1263.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1264.i, %smax1137
  %indvar.next4175 = add i64 %indvar4174, 1
  br i1 %exitcond1132.not, label %.preheader1022.i, label %bb.pq

scalar.ph4196:                                    ; preds = %scalar.ph4196.preheader, %scalar.ph4196
  %indvars.iv1260.i = phi i64 [ %indvars.iv.next1261.i, %scalar.ph4196 ], [ %indvars.iv1260.i.ph, %scalar.ph4196.preheader ] ; 4 uses
  %i.nls = getelementptr inbounds nuw [4 x i8], ptr %i.njk, i64 %indvars.iv1260.i ; 3 uses
  %i.nlt = getelementptr inbounds nuw [4 x i8], ptr %i.njl, i64 %indvars.iv1260.i ; 6 uses
  %i.nlu = load float, ptr %i.nlt, align 4, !tbaa !12, !noalias !549
  %i.nlv = getelementptr inbounds i8, ptr %i.nls, i64 -4
  %i.nlw = load float, ptr %i.nlv, align 4, !tbaa !12, !noalias !549
  %i.nlx = getelementptr inbounds i8, ptr %i.nlt, i64 -4
  %i.nly = load float, ptr %i.nlx, align 4, !tbaa !12, !noalias !549
  %i.nlz = getelementptr inbounds nuw i8, ptr %i.nls, i64 4
  %i.nma = load float, ptr %i.nlz, align 4, !tbaa !12, !noalias !549
  %i.nmb = getelementptr inbounds nuw i8, ptr %i.nlt, i64 4
  %i.nmc = load float, ptr %i.nmb, align 4, !tbaa !12, !noalias !549
  %i.nmd = fadd reassoc nsz arcp contract afn float %i.nlw, %i.nma
  %i.nme = fadd reassoc nsz arcp contract afn float %i.nly, %i.nmc
  %i.nmf = fsub reassoc nsz arcp contract afn float %i.nmd, %i.nme
  %i.nmg = fmul reassoc nsz arcp contract afn float %i.nmf, 5.000000e-01
  %i.nmh = fadd reassoc nsz arcp contract afn float %i.nmg, %i.nlu
  store float %i.nmh, ptr %i.nls, align 4, !tbaa !12, !noalias !549
  %i.nmi = getelementptr inbounds nuw [4 x i8], ptr %i.njq, i64 %indvars.iv1260.i ; 3 uses
  %i.nmj = load float, ptr %i.nlt, align 4, !tbaa !12, !noalias !549
  %i.nmk = getelementptr inbounds i8, ptr %i.nmi, i64 -544
  %i.nml = load float, ptr %i.nmk, align 4, !tbaa !12, !noalias !549
  %i.nmm = getelementptr inbounds i8, ptr %i.nlt, i64 -544
  %i.nmn = load float, ptr %i.nmm, align 4, !tbaa !12, !noalias !549
  %i.nmo = getelementptr inbounds nuw i8, ptr %i.nmi, i64 544
  %i.nmp = load float, ptr %i.nmo, align 4, !tbaa !12, !noalias !549
  %i.nmq = getelementptr inbounds nuw i8, ptr %i.nlt, i64 544
  %i.nmr = load float, ptr %i.nmq, align 4, !tbaa !12, !noalias !549
  %i.nms = fadd reassoc nsz arcp contract afn float %i.nml, %i.nmp
  %i.nmt = fadd reassoc nsz arcp contract afn float %i.nmn, %i.nmr
  %i.nmu = fsub reassoc nsz arcp contract afn float %i.nms, %i.nmt
  %i.nmv = fmul reassoc nsz arcp contract afn float %i.nmu, 5.000000e-01
  %i.nmw = fadd reassoc nsz arcp contract afn float %i.nmv, %i.nmj
  store float %i.nmw, ptr %i.nmi, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1261.i = add nuw nsw i64 %indvars.iv1260.i, 2 ; 2 uses
  %i.nmx = icmp slt i64 %indvars.iv.next1261.i, %i.nfj
  br i1 %i.nmx, label %scalar.ph4196, label %._crit_edge1075.i, !llvm.loop !348

._crit_edge1085.i:                                ; preds = %._crit_edge1082.i, %.preheader1023.i, %._crit_edge1060.i
  %i.nmy = icmp eq i32 %.08871185.i, 0            ; 2 uses
  %i.nmz = select i1 %i.nmy, i32 6, i32 0         ; 21 uses
  %i.nna = icmp eq i32 %.08871185.i, %i.aoo       ; 2 uses
  %.neg.i554 = select i1 %i.nna, i32 -6, i32 0    ; 10 uses
  %i.nnb = add nsw i32 %i.lyo, %.neg.i554         ; 4 uses
  br i1 %.not1193.i, label %.preheader1021.i, label %.preheader1018.lr.ph.i

.preheader1018.lr.ph.i:                           ; preds = %._crit_edge1085.i
  %i.nnc = icmp slt i32 %i.lym, -5
  %i.nnd = zext nneg i32 %i.nmz to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.luq, i64 %i.nnd
  %invariant.gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.nnd
  %invariant.gep1133.i = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.nnd
  %invariant.gep1135.i = getelementptr inbounds nuw [4 x i8], ptr %i.luu, i64 %i.nnd
  %invariant.gep1137.i = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.nnd
  %i.nne = add nsw i32 %i.nnb, -1                 ; 3 uses
  %i.nnf = icmp slt i32 %i.nmz, %i.nne            ; 2 uses
  %brmerge.i556 = select i1 %7, i1 true, i1 %i.nnc
  %i.nng = add nsw i32 %i.lyn, 6                  ; 3 uses
  %i.nnh = sext i32 %i.nng to i64                 ; 6 uses
  %i.nni = shl nuw nsw i64 %i.nnd, 2              ; 4 uses
  %scevgep3938 = getelementptr i8, ptr %scevgep3937, i64 %i.nni ; 2 uses
  %i.nnj = add nsw i32 %.neg.i554, 6
  %i.nnk = add i32 %i.nnj, %i.lyn
  %i.nnl = sub i32 %i.nnk, %i.nmz
  %i.nnm = lshr i32 %i.nnl, 1
  %i.nnn = zext nneg i32 %i.nnm to i64
  %i.nno = shl nuw nsw i64 %i.nnn, 3              ; 2 uses
  %i.nnp = getelementptr i8, ptr %scevgep3940, i64 %i.nno
  %scevgep3941 = getelementptr i8, ptr %i.nnp, i64 %i.nni ; 2 uses
  %.reass = or disjoint i64 %i.nni, %invariant.op
  %i.nnq = add nuw nsw i64 %i.lxb, %i.nno
  %i.nnr = add nuw nsw i64 %i.nnq, %i.nni
  %i.nns = add nsw i32 %.neg.i554, 6
  %i.nnt = add i32 %i.nns, %i.lyn
  %i.nnu = sub i32 %i.nnt, %i.nmz
  %i.nnv = lshr i32 %i.nnu, 1
  %i.nnw = zext nneg i32 %i.nnv to i64
  %i.nnx = shl nuw nsw i64 %i.nnw, 3              ; 2 uses
  %i.nny = add nuw nsw i64 %i.lxc, %i.nnx
  %i.nnz = shl nuw nsw i64 %i.nnd, 2              ; 3 uses
  %i.noa = add nuw nsw i64 %i.nny, %i.nnz
  %scevgep4007 = getelementptr i8, ptr %scevgep4006, i64 %i.nnz ; 2 uses
  %i.nob = getelementptr i8, ptr %scevgep4009, i64 %i.nnx
  %scevgep4010 = getelementptr i8, ptr %i.nob, i64 %i.nnz ; 2 uses
  %min.iters.check4101 = icmp ult i32 %i.nng, 8
  %n.vec4103 = and i64 %i.nnh, -8                 ; 3 uses
  %i.noc = or disjoint i64 %n.vec4103, 1
  %cmp.n4126 = icmp eq i64 %n.vec4103, %i.nnh
  %min.iters.check4073 = icmp ult i32 %i.nng, 8
  %n.vec4075 = and i64 %i.nnh, -8                 ; 3 uses
  %i.nod = or disjoint i64 %n.vec4075, 1
  %cmp.n4098 = icmp eq i64 %n.vec4075, %i.nnh
  %i.noe = add i32 %.neg.i554, %i.lyn
  %i.nof = add i32 %i.noe, 6
  %i.nog = sub i32 %i.nof, %i.nmz                 ; 2 uses
  %i.noh = lshr i32 %i.nog, 1
  %narrow = add nuw i32 %i.noh, 1
  %i.noi = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4024 = icmp ult i32 %i.nog, 16
  %i.noj = and i64 %i.noi, 7                      ; 2 uses
  %i.nok = icmp eq i64 %i.noj, 0
  %i.nol = select i1 %i.nok, i64 8, i64 %i.noj
  %n.vec4026 = sub nsw i64 %i.noi, %i.nol         ; 3 uses
  %i.nom = trunc i64 %n.vec4026 to i32
  %i.non = shl i32 %i.nom, 1
  %i.noo = add i32 %i.nmz, %i.non
  %i.nop = shl nsw i64 %n.vec4026, 3              ; 7 uses
  %i.noq = add i32 %.neg.i554, %i.lyn
  %i.nor = add i32 %i.noq, 6
  %i.nos = sub i32 %i.nor, %i.nmz                 ; 2 uses
  %i.not = lshr i32 %i.nos, 1
  %narrow4560 = add nuw i32 %i.not, 1
  %i.nou = zext i32 %narrow4560 to i64            ; 2 uses
  %min.iters.check3960 = icmp ult i32 %i.nos, 16
  %i.nov = and i64 %i.nou, 7                      ; 2 uses
  %i.now = icmp eq i64 %i.nov, 0
  %i.nox = select i1 %i.now, i64 8, i64 %i.nov
  %n.vec3962 = sub nsw i64 %i.nou, %i.nox         ; 3 uses
  %i.noy = shl nsw i64 %n.vec3962, 3              ; 7 uses
  %i.noz = trunc i64 %n.vec3962 to i32
  %i.npa = shl i32 %i.noz, 1
  %i.npb = add i32 %i.nmz, %i.npa
  br label %.preheader1018.i

bb.pr:                                            ; preds = %._crit_edge1082.i, %.preheader1022.i
  %indvar4129 = phi i64 [ %indvar.next4130, %._crit_edge1082.i ], [ 0, %.preheader1022.i ] ; 2 uses
  %indvars.iv1269.i = phi i64 [ %indvars.iv.next1270.i, %._crit_edge1082.i ], [ 1, %.preheader1022.i ] ; 3 uses
  %i.npc = mul nuw nsw i64 %indvar4129, 544       ; 4 uses
  %i.npd = getelementptr i8, ptr %i.luq, i64 %i.npc
  %scevgep4134 = getelementptr i8, ptr %i.npd, i64 73988
  %i.npe = getelementptr i8, ptr %i.luq, i64 %i.npc
  %scevgep4136 = getelementptr i8, ptr %i.npe, i64 75080
  %indvars.iv1269.tr.i = trunc nuw i64 %indvars.iv1269.i to i32
  %i.npf = shl nuw i32 %indvars.iv1269.tr.i, 1
  %i.npg = and i32 %i.npf, 14                     ; 2 uses
  %.tr.i965.i = shl nuw nsw i32 %i.npg, 1
  %i.nph = or disjoint i32 %.tr.i965.i, 2
  %i.npi = lshr i32 %.fr1063, %i.nph              ; 3 uses
  %i.npj = and i32 %i.npi, 1
  %i.npk = add nuw nsw i32 %i.npj, 1              ; 3 uses
  %i.npl = icmp slt i32 %i.npk, %i.nfi
  br i1 %i.npl, label %.lr.ph1081.i, label %._crit_edge1082.i

.lr.ph1081.i:                                     ; preds = %bb.pr
  %i.npm = and i32 %i.npk, 1
  %i.npn = or disjoint i32 %i.npm, %i.npg
  %i.npo = shl nuw nsw i32 %i.npn, 1
  %i.npp = lshr i32 %.fr1063, %i.npo
  %i.npq = and i32 %i.npp, 3
  %i.npr = sub nsw i32 2, %i.npq
  %i.nps = sext i32 %i.npr to i64
  %i.npt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nps
  %i.npu = load ptr, ptr %i.npt, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.npv = mul nuw nsw i64 %indvars.iv1269.i, 136 ; 2 uses
  %i.npw = getelementptr inbounds nuw [4 x i8], ptr %i.npu, i64 %i.npv ; 2 uses
  %i.npx = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.npv ; 2 uses
  %i.npy = zext nneg i32 %i.npk to i64            ; 5 uses
  %i.npz = and i32 %i.npi, 1
  %i.nqa = zext nneg i32 %i.npz to i64            ; 2 uses
  %i.nqb = add nuw nsw i64 %i.nqa, 3
  %i.nqc = call i64 @llvm.umax.i64(i64 %i.nqb, i64 %i.nis)
  %i.nqd = add nsw i64 %i.nqc, -2
  %i.nqe = sub nsw i64 %i.nqd, %i.nqa             ; 2 uses
  %i.nqf = lshr i64 %i.nqe, 1
  %i.nqg = add nuw nsw i64 %i.nqf, 1              ; 2 uses
  %min.iters.check4142 = icmp ult i64 %i.nqe, 8
  br i1 %min.iters.check4142, label %scalar.ph4141.preheader, label %vector.memcheck4128

scalar.ph4141.preheader:                          ; preds = %vector.body4148, %vector.memcheck4128, %.lr.ph1081.i
  %indvars.iv1266.i.ph = phi i64 [ %i.npy, %vector.memcheck4128 ], [ %i.npy, %.lr.ph1081.i ], [ %i.nqz, %vector.body4148 ]
  br label %scalar.ph4141

vector.memcheck4128:                              ; preds = %.lr.ph1081.i
  %i.nqh = and i32 %i.npi, 1
  %i.nqi = zext nneg i32 %i.nqh to i64            ; 3 uses
  %i.nqj = shl nuw nsw i64 %i.nqi, 2              ; 4 uses
  %i.nqk = getelementptr i8, ptr %i.npu, i64 %i.npc
  %i.nql = getelementptr i8, ptr %i.nqk, i64 4
  %scevgep4131 = getelementptr i8, ptr %i.nql, i64 %i.nqj
  %i.nqm = add nuw nsw i64 %i.nqi, 3
  %umax4132 = call i64 @llvm.umax.i64(i64 %i.nqm, i64 %i.nis)
  %i.nqn = add nsw i64 %umax4132, -2
  %i.nqo = sub nsw i64 %i.nqn, %i.nqi
  %i.nqp = shl nuw nsw i64 %i.nqo, 2
  %i.nqq = and i64 %i.nqp, 9223372036854775800    ; 2 uses
  %i.nqr = getelementptr i8, ptr %i.npu, i64 %i.npc
  %i.nqs = getelementptr i8, ptr %i.nqr, i64 1096
  %i.nqt = getelementptr i8, ptr %i.nqs, i64 %i.nqq
  %scevgep4133 = getelementptr i8, ptr %i.nqt, i64 %i.nqj
  %scevgep4135 = getelementptr i8, ptr %scevgep4134, i64 %i.nqj
  %i.nqu = getelementptr i8, ptr %scevgep4136, i64 %i.nqq
  %scevgep4137 = getelementptr i8, ptr %i.nqu, i64 %i.nqj
  %bound04138 = icmp ult ptr %scevgep4131, %scevgep4137
  %bound14139 = icmp ult ptr %scevgep4135, %scevgep4133
  %found.conflict4140 = and i1 %bound04138, %bound14139
  br i1 %found.conflict4140, label %scalar.ph4141.preheader, label %vector.ph4143

vector.ph4143:                                    ; preds = %vector.memcheck4128
  %i.nqv = and i64 %i.nqg, 3                      ; 2 uses
  %i.nqw = icmp eq i64 %i.nqv, 0
  %i.nqx = select i1 %i.nqw, i64 4, i64 %i.nqv
  %n.vec4144 = sub nsw i64 %i.nqg, %i.nqx         ; 2 uses
  %i.nqy = shl i64 %n.vec4144, 1
  %i.nqz = add i64 %i.nqy, %i.npy
  %broadcast.splatinsert4145 = insertelement <4 x i64> poison, i64 %i.npy, i64 0
  %broadcast.splat4146 = shufflevector <4 x i64> %broadcast.splatinsert4145, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4147 = add nuw nsw <4 x i64> %broadcast.splat4146, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4861 = getelementptr [4 x i8], ptr %i.npx, i64 %i.npy
  br label %vector.body4148

vector.body4148:                                  ; preds = %vector.body4148, %vector.ph4143
  %index4149 = phi i64 [ 0, %vector.ph4143 ], [ %index.next4169, %vector.body4148 ] ; 2 uses
  %vec.ind4150 = phi <4 x i64> [ %induction4147, %vector.ph4143 ], [ %vec.ind.next4170, %vector.body4148 ] ; 2 uses
  %wide.gep4151 = getelementptr inbounds nuw [4 x i8], ptr %i.npw, <4 x i64> %vec.ind4150 ; 2 uses
  %i.nra = extractelement <4 x ptr> %wide.gep4151, i64 0 ; 4 uses
  %.idx4559 = shl nuw i64 %index4149, 3
  %gep4862 = getelementptr i8, ptr %invariant.gep4861, i64 %.idx4559 ; 4 uses
  %wide.vec4152 = load <8 x float>, ptr %gep4862, align 4, !tbaa !12, !alias.scope !558, !noalias !549 ; 2 uses
  %strided.vec4153 = shufflevector <8 x float> %wide.vec4152, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4154 = shufflevector <8 x float> %wide.vec4152, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nrb = getelementptr inbounds i8, ptr %i.nra, i64 -544
  %wide.vec4155 = load <8 x float>, ptr %i.nrb, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4156 = shufflevector <8 x float> %wide.vec4155, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrc = getelementptr inbounds i8, ptr %gep4862, i64 -544
  %wide.vec4157 = load <8 x float>, ptr %i.nrc, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4158 = shufflevector <8 x float> %wide.vec4157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrd = getelementptr inbounds i8, ptr %i.nra, i64 -4
  %wide.vec4159 = load <8 x float>, ptr %i.nrd, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4160 = shufflevector <8 x float> %wide.vec4159, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nre = getelementptr inbounds i8, ptr %gep4862, i64 -4
  %wide.vec4161 = load <8 x float>, ptr %i.nre, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4162 = shufflevector <8 x float> %wide.vec4161, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrf = getelementptr inbounds nuw i8, ptr %i.nra, i64 4
  %wide.vec4163 = load <8 x float>, ptr %i.nrf, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4164 = shufflevector <8 x float> %wide.vec4163, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrg = getelementptr inbounds nuw i8, ptr %i.nra, i64 544
  %wide.vec4165 = load <8 x float>, ptr %i.nrg, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4166 = shufflevector <8 x float> %wide.vec4165, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nrh = getelementptr inbounds nuw i8, ptr %gep4862, i64 544
  %wide.vec4167 = load <8 x float>, ptr %i.nrh, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4168 = shufflevector <8 x float> %wide.vec4167, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nri = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4156, %strided.vec4160
  %i.nrj = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4158, %strided.vec4162
  %i.nrk = fadd reassoc nsz arcp contract afn <4 x float> %i.nri, %strided.vec4164
  %i.nrl = fadd reassoc nsz arcp contract afn <4 x float> %i.nrj, %strided.vec4154
  %i.nrm = fadd reassoc nsz arcp contract afn <4 x float> %i.nrk, %strided.vec4166
  %i.nrn = fadd reassoc nsz arcp contract afn <4 x float> %i.nrl, %strided.vec4168
  %i.nro = fsub reassoc nsz arcp contract afn <4 x float> %i.nrm, %i.nrn
  %i.nrp = fmul reassoc nsz arcp contract afn <4 x float> %i.nro, splat (float 2.500000e-01)
  %i.nrq = fadd reassoc nsz arcp contract afn <4 x float> %i.nrp, %strided.vec4153
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.nrq, <4 x ptr> align 4 %wide.gep4151, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !559, !noalias !560
  %index.next4169 = add nuw i64 %index4149, 4     ; 2 uses
  %vec.ind.next4170 = add nuw nsw <4 x i64> %vec.ind4150, splat (i64 8)
  %i.nrr = icmp eq i64 %index.next4169, %n.vec4144
  br i1 %i.nrr, label %scalar.ph4141.preheader, label %vector.body4148, !llvm.loop !352

._crit_edge1082.i:                                ; preds = %scalar.ph4141, %bb.pr
  %indvars.iv.next1270.i = add nuw nsw i64 %indvars.iv1269.i, 1 ; 2 uses
  %exitcond1135.not = icmp eq i64 %indvars.iv.next1270.i, %smax1137
end_hunk_2
