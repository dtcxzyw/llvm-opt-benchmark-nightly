Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.ais = fcmp reassoc nsz arcp contract afn ogt float %i.ain, %i.air
  %i.ait = fdiv reassoc nsz arcp contract afn float %i.ain, %i.aiq
  %spec.select334.us.i.i.i = select nsz i1 %i.ais, float %i.ait, float %.15.us.i.i.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.18.us.i.i.i = phi nsz float [ %.15.us.i.i.i, %bb.ez ], [ %spec.select334.us.i.i.i, %bb.fb ], [ %.15.us.i.i.i, %bb.fa ] ; 4 uses
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.aex
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !12 ; 7 uses
  %i.aiw = getelementptr [4 x i8], ptr %i.aff, i64 %i.aez ; 2 uses
  %i.aix = getelementptr i8, ptr %i.aiw, i64 -4
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !12 ; 2 uses
  %i.aiz = fcmp reassoc nsz arcp contract afn ogt float %i.aiv, %i.aiy
  %.335.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.aiz, float %i.aiv, float %i.aiy ; 2 uses
  %i.aja = getelementptr i8, ptr %i.aiw, i64 4
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !12 ; 2 uses
  %i.ajc = fcmp reassoc nsz arcp contract afn ogt float %.335.us.i.i.i, %i.ajb
  %spec.select351.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ajc, float %.335.us.i.i.i, float %i.ajb
  %i.ajd = fcmp reassoc nsz arcp contract afn olt float %spec.select351.us.i.i.i, f0x3F666666
  %i.aje = fcmp reassoc nsz arcp contract afn ogt float %i.aiv, 5.000000e-03
  %or.cond9.us.i.i.i = and i1 %i.aje, %i.ajd
  br i1 %or.cond9.us.i.i.i, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.aiv, %i.afo
  %i.ajg = select reassoc nsz arcp contract afn i1 %i.ajf, float %i.aiv, float %i.afo ; 3 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, f0x3C23D70A
  br i1 %i.ajh, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aji = fcmp reassoc nsz arcp contract afn olt float %i.aiv, %i.afo
  %i.ajj = select reassoc nsz arcp contract afn i1 %i.aji, float %i.aiv, float %i.afo ; 2 uses
  %i.ajk = fmul reassoc nsz arcp contract afn float %i.ajj, %.18.us.i.i.i
  %i.ajl = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, %i.ajk
  %i.ajm = fdiv reassoc nsz arcp contract afn float %i.ajg, %i.ajj
  %spec.select337.us.i.i.i = select nsz i1 %i.ajl, float %i.ajm, float %.18.us.i.i.i
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.ey, %bb.eq
  %.23.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.eq ], [ %.15.us.i.i.i, %bb.ey ], [ %.18.us.i.i.i, %bb.fc ], [ %spec.select337.us.i.i.i, %bb.fe ], [ %.18.us.i.i.i, %bb.fd ] ; 3 uses
  %indvars.iv.next.i171.i.i = add nuw nsw i64 %indvars.iv.i169.i.i, 3 ; 2 uses
  %i.ajn = icmp samesign ult i64 %indvars.iv.next.i171.i.i, %i.afb
  br i1 %i.ajn, label %.thread338.us.i.i.i, label %._crit_edge.us.i172.i.i

._crit_edge.us.i172.i.i:                          ; preds = %bb.ff
  %indvars.iv.next368.i.i.i = add nuw nsw i64 %indvars.iv367.i.i.i, 3 ; 2 uses
  %i.ajo = icmp samesign ult i64 %indvars.iv.next368.i.i.i, %i.afc
  br i1 %i.ajo, label %.lr.ph.us.i.i.i, label %._crit_edge360.loopexit.i.i.i

._crit_edge360.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i172.i.i
  %i.ajp = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.23.us.i.i.i)
  br label %_calcRadiusXtrans.exit.i.i

_calcRadiusXtrans.exit.i.i:                       ; preds = %._crit_edge360.loopexit.i.i.i, %.lr.ph359.i.i.i, %.critedge.i.i.i
  %.0266.lcssa.i.i.i = phi float [ 0.000000e+00, %.critedge.i.i.i ], [ %i.ajp, %._crit_edge360.loopexit.i.i.i ], [ 0.000000e+00, %.lr.ph359.i.i.i ]
  %i.ajq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0266.lcssa.i.i.i
  %i.ajr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ajq)
  %i.ajs = fadd reassoc nsz arcp contract afn float %i.ajr, 2.000000e-01
  br label %bb.fg

bb.fg:                                            ; preds = %_calcRadiusXtrans.exit.i.i, %_calcRadiusBayer.exit.i.i, %_calcRadiusMono.exit.i.i
  %i.ajt = phi reassoc nsz arcp contract afn float [ %i.vb, %_calcRadiusMono.exit.i.i ], [ %i.yo, %_calcRadiusBayer.exit.i.i ], [ %i.ajs, %_calcRadiusXtrans.exit.i.i ] ; 2 uses
  tail call void @free(ptr noundef %i.io) #27
  %i.aju = fcmp reassoc nsz arcp contract afn ogt float %i.ajt, 1.500000e+00
  %i.ajv = select reassoc nsz arcp contract afn i1 %i.aju, float 1.500000e+00, float %i.ajt
  br label %_calc_auto_radius.exit.i

_calc_auto_radius.exit.i:                         ; preds = %bb.fg, %bb.as, %bb.ar, %bb.aq
  %.not35.i = phi ptr [ @.str.196, %bb.aq ], [ @.str.196, %bb.ar ], [ @.str.196, %bb.as ], [ @.str.11, %bb.fg ]
  %.not37.i = phi i1 [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ false, %bb.fg ]
  %.1.i.i = phi nsz float [ 5.000000e-01, %bb.aq ], [ 5.000000e-01, %bb.ar ], [ 5.000000e-01, %bb.as ], [ %i.ajv, %bb.fg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !137
  %i.ajy = fsub reassoc nsz arcp contract afn float %i.ajx, %.1.i.i
  %i.ajz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ajy)
  %i.aka = fcmp reassoc nsz arcp contract afn uge float %i.ajz, 4.000000e-02 ; 2 uses
  %i.akb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.akc = and i32 %i.akb, 33554432
  %.not.i465 = icmp eq i32 %i.akc, 0
  br i1 %.not.i465, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %_calc_auto_radius.exit.i
  %i.akd = select i1 %i.bh, ptr @.str.192, ptr @.str.191
  %i.ake = select i1 %i.bd, ptr @.str.190, ptr %i.akd
  %i.akf = select i1 %i.aka, ptr @.str.195, ptr @.str.194
  %i.akg = fpext reassoc nsz arcp contract afn float %.1.i.i to double
  %i.akh = extractelement <2 x i32> %i.hy, i64 1
  %i.aki = extractelement <2 x i32> %i.ia, i64 0
  %i.akj = extractelement <2 x i32> %i.ia, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.ake, ptr noundef %.val446, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.akf, double noundef %i.akg, ptr noundef nonnull %.not35.i, i32 noundef %i.aki, i32 noundef %i.akj, i32 noundef %i.hz, i32 noundef %i.akh) #27
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_calc_auto_radius.exit.i
  %or.cond.i466 = and i1 %i.ga, %i.gb
  br i1 %or.cond.i466, label %bb.fj, label %_capture_radius.exit

bb.fj:                                            ; preds = %bb.fi
  %i.akk = getelementptr inbounds nuw i8, ptr %.val445, i64 188
  store i32 1, ptr %i.akk, align 4, !tbaa !132
  br i1 %i.aka, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akl = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !131
  %i.akn = fcmp reassoc nsz arcp contract afn olt float %i.akm, 0.000000e+00
  br i1 %i.akn, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  store float %.1.i.i, ptr %i.ajw, align 4, !tbaa !137
  %i.ako = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  store float %.1.i.i, ptr %i.ako, align 4, !tbaa !131
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  br i1 %.not37.i, label %bb.fn, label %_capture_radius.exit

bb.fn:                                            ; preds = %bb.fm
  %i.akp = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.197, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.akp) #27
  br label %_capture_radius.exit

_capture_radius.exit:                             ; preds = %bb.fi, %bb.fm, %bb.fn
  store float %.1.i.i, ptr %i.fy, align 4, !tbaa !463
  br label %_radius_requested.exit.thread698

_radius_requested.exit.thread698:                 ; preds = %bb.ao, %_radius_requested.exit, %_capture_radius.exit, %bb.ae
  %.val450 = load i32, ptr %i.bn, align 4, !tbaa !457 ; 2 uses
  %.val451 = load i32, ptr %i.bp, align 4, !tbaa !458 ; 3 uses
  %i.akq = tail call i64 (...) @dt_get_available_mem() #27 ; 2 uses
  %i.akr = sext i32 %.val450 to i64
  %i.aks = shl nsw i64 %i.akr, 2
  %i.akt = sext i32 %.val451 to i64
  %i.aku = mul i64 %i.aks, %i.akt                 ; 4 uses
  %i.akv = load i32, ptr %i.da, align 4, !tbaa !457
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !458
  %i.akz = sext i32 %i.aky to i64
  %.neg8.i = mul i64 %i.aku, -4
  %.neg9.i = select i1 %i.dn, i64 0, i64 %.neg8.i
  %i.ala = select i1 %i.dy, i64 %i.aku, i64 0
  %i.alb = mul nsw i64 %i.akw, -16
  %.neg4.i = mul i64 %i.alb, %i.akz
  %i.alc = add i64 %i.aku, %i.ala
  %.neg6.i = sub i64 %i.akq, %i.alc
  %.neg7.i = add i64 %.neg6.i, %.neg9.i
  %.168.i = add i64 %.neg7.i, %.neg4.i            ; 3 uses
  %.neg.i = mul i64 %i.aku, -5
  %i.ald = select i1 %spec.select432.not, i64 0, i64 %.neg.i
  %.066.i = add i64 %.168.i, %i.ald               ; 2 uses
  switch i32 %.0394, label %bb.ft [
    i32 1026, label %bb.fu
    i32 1025, label %bb.fo
    i32 1028, label %bb.fo
    i32 5, label %bb.fp
    i32 6, label %bb.fp
    i32 1029, label %bb.fs
    i32 1, label %bb.fq
    i32 2, label %bb.fr
    i32 1024, label %bb.fr
    i32 7, label %bb.fs
    i32 3, label %bb.fs
    i32 4, label %bb.fs
    i32 1027, label %bb.fs
  ]

bb.fo:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fp:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fq:                                            ; preds = %_radius_requested.exit.thread698
  br label %bb.fu

bb.fr:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fs:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.ft:                                            ; preds = %_radius_requested.exit.thread698
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %_radius_requested.exit.thread698
  %i.ale = phi i32 [ 6, %bb.ft ], [ 6, %bb.fq ], [ 25, %bb.fo ], [ 48, %_radius_requested.exit.thread698 ], [ 6, %bb.fp ], [ 6, %bb.fs ], [ 6, %bb.fr ]
  %.064.i = phi i32 [ 4, %bb.ft ], [ 2, %bb.fq ], [ 25, %bb.fo ], [ 48, %_radius_requested.exit.thread698 ], [ 2, %bb.fp ], [ 1, %bb.fs ], [ 4, %bb.fr ]
  %.063.i = phi i32 [ 8, %bb.ft ], [ 6, %bb.fq ], [ 12, %bb.fo ], [ 18, %_radius_requested.exit.thread698 ], [ 10, %bb.fp ], [ 0, %bb.fs ], [ 6, %bb.fr ]
  %spec.select.i = select i1 %i.dv, i32 %i.ale, i32 %.064.i ; 2 uses
  %spec.select77.i = select i1 %i.dv, i32 18, i32 %.063.i ; 3 uses
  %i.alf = shl i32 %.val450, 2
  %i.alg = mul i32 %i.alf, %spec.select.i
  %i.alh = sext i32 %i.alg to i64                 ; 2 uses
  %i.ali = sdiv i64 %.168.i, %i.alh
  %.fr.i = freeze i64 %i.ali
  %i.alj = sdiv i64 %.fr.i, 4
  %i.alk = trunc i64 %i.alj to i32                ; 3 uses
  %i.all = sdiv i64 %.066.i, %i.alh
  %i.alm = trunc i64 %i.all to i32                ; 2 uses
  %6 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8
  %i.aln = shufflevector <4 x i32> %6, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.alo = and <2 x i32> %i.aln, <i32 41943040, i32 16777216>
  %i.alp = icmp eq <2 x i32> %i.alo, zeroinitializer
  %i.alq = bitcast <2 x i1> %i.alp to i2
  %.not4598 = icmp eq i2 %i.alq, 0
  br i1 %.not4598, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.alr = lshr i64 %i.akq, 20
  %i.als = trunc i64 %i.alr to i32
  %i.alt = lshr i64 %.066.i, 20
  %i.alu = trunc i64 %i.alt to i32
  %i.alv = lshr i64 %.168.i, 20
  %i.alw = trunc i64 %i.alv to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.200, i32 noundef %i.als, i32 noundef %i.alu, i32 noundef %i.alw, i32 noundef %spec.select.i, i32 noundef %i.alm, i32 noundef %i.alk) #27
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.not75.i = icmp sgt i32 %.val451, %i.alm       ; 7 uses
  br i1 %.not75.i, label %_tiling_requirements.exit, label %.thread

_tiling_requirements.exit:                        ; preds = %bb.fw
  %i.alx = load i32, ptr %i.ac, align 4, !tbaa !455
  %i.aly = icmp eq i32 %i.alx, 9
  %i.alz = select i1 %i.aly, i32 6, i32 2
  %i.ama = srem i32 %i.alk, %i.alz
  %i.amb = sub nsw i32 %i.alk, %i.ama             ; 2 uses
  %i.amc = shl nuw nsw i32 %spec.select77.i, 1    ; 2 uses
  %i.amd = sub nsw i32 %i.amb, %i.amc             ; 4 uses
  %i.ame = add nsw i32 %.val451, -1
  %i.amf = add i32 %i.ame, %i.amd
  %i.amg = sdiv i32 %i.amf, %i.amd
  %i.amh = icmp slt i32 %i.amd, 30
  br i1 %i.amh, label %.split, label %bb.fx

.split:                                           ; preds = %_tiling_requirements.exit
  %i.ami = add nuw nsw i32 %i.amc, 30
  %i.amj = add nsw i32 %i.bq, 29
  %i.amk = sdiv i32 %i.amj, 30
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8) #27
  br label %bb.fx

.thread:                                          ; preds = %bb.fw
  %i.aml = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.amm = and i32 %i.aml, 16777216
  %.not417 = icmp eq i32 %i.amm, 0
  br i1 %.not417, label %bb.gl, label %bb.fx

bb.fx:                                            ; preds = %_tiling_requirements.exit, %.split, %.thread
  %.0682722 = phi i32 [ %i.amk, %.split ], [ 1, %.thread ], [ %i.amg, %_tiling_requirements.exit ] ; 3 uses
  %.0684719 = phi i32 [ 30, %.split ], [ %i.bq, %.thread ], [ %i.amd, %_tiling_requirements.exit ] ; 2 uses
  %.0686716 = phi i32 [ %i.ami, %.split ], [ %i.bq, %.thread ], [ %i.amb, %_tiling_requirements.exit ] ; 3 uses
  %.0688708713 = phi i32 [ %spec.select77.i, %.split ], [ 0, %.thread ], [ %spec.select77.i, %_tiling_requirements.exit ] ; 3 uses
  %i.amn = phi ptr [ @.str.21, %.split ], [ @.str.11, %.thread ], [ @.str.11, %_tiling_requirements.exit ]
  %i.amo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.amp = and i32 %i.amo, 33554432
  %.not418 = icmp eq i32 %i.amp, 0
  br i1 %.not418, label %bb.gl, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.amq = select i1 %.not75.i, ptr @.str.10, ptr @.str.11
  %i.amr = select i1 %i.dn, ptr @.str.12, ptr @.str.13
  %i.ams = select i1 %spec.select.not, ptr @.str.16, ptr @.str.15
  %i.amt = select i1 %i.bd, ptr @.str.14, ptr %i.ams
  switch i32 %.0394, label %bb.gk [
    i32 0, label %_method_str.exit
    i32 1, label %bb.fz
    i32 2, label %bb.ga
    i32 5, label %bb.gb
    i32 6, label %bb.gc
    i32 3, label %bb.gd
    i32 4, label %bb.ge
    i32 1024, label %bb.gf
    i32 1025, label %bb.gg
    i32 1026, label %bb.gh
    i32 1028, label %bb.gi
    i32 1027, label %bb.gd
    i32 1029, label %bb.ge
    i32 7, label %bb.gj
  ]

bb.fz:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.ga:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gb:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gc:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gd:                                            ; preds = %bb.fy, %bb.fy
  br label %_method_str.exit

bb.ge:                                            ; preds = %bb.fy, %bb.fy
  br label %_method_str.exit

bb.gf:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gg:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gh:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gi:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gj:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gk:                                            ; preds = %bb.fy
  br label %_method_str.exit

_method_str.exit:                                 ; preds = %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk
  %.0.i470 = phi ptr [ @.str.207, %bb.gk ], [ @.str.175, %bb.gj ], [ @.str.201, %bb.fz ], [ @.str.150, %bb.ga ], [ @.str.152, %bb.gb ], [ @.str.154, %bb.gc ], [ @.str.202, %bb.gd ], [ @.str.203, %bb.ge ], [ @.str.164, %bb.gf ], [ @.str.204, %bb.gg ], [ @.str.205, %bb.gh ], [ @.str.206, %bb.gi ], [ @.str.146, %bb.fy ]
  %i.amu = select i1 %spec.select432.not, ptr @.str.11, ptr @.str.17
  %i.amv = select i1 %i.dv, ptr @.str.18, ptr @.str.11
  %i.amw = select i1 %i.dy, ptr @.str.19, ptr @.str.11
  %i.amx = select i1 %i.cw, ptr @.str.20, ptr @.str.11
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.amq, ptr noundef nonnull %i.amr, ptr noundef nonnull %i.amt, ptr noundef nonnull %.0.i470, ptr noundef nonnull %i.amu, ptr noundef nonnull %i.amv, ptr noundef nonnull %i.amw, ptr noundef nonnull %i.amx, ptr noundef nonnull %i.amn, i32 noundef %.0682722, i32 noundef %.0686716, i32 noundef %.0688708713) #27
  br label %bb.gl

bb.gl:                                            ; preds = %bb.fx, %_method_str.exit, %.thread
  %.0682723 = phi i32 [ %.0682722, %bb.fx ], [ %.0682722, %_method_str.exit ], [ 1, %.thread ] ; 3 uses
  %.0684720 = phi i32 [ %.0684719, %bb.fx ], [ %.0684719, %_method_str.exit ], [ %i.bq, %.thread ] ; 3 uses
  %.0686717 = phi i32 [ %.0686716, %bb.fx ], [ %.0686716, %_method_str.exit ], [ %i.bq, %.thread ]
  %.0688708714 = phi i32 [ %.0688708713, %bb.fx ], [ %.0688708713, %_method_str.exit ], [ 0, %.thread ] ; 3 uses
  br i1 %i.dn, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amy = sext i32 %i.bo to i64
  %i.amz = sext i32 %i.bq to i64
  %i.ana = shl nsw i64 %i.amy, 4
  %i.anb = mul i64 %i.ana, %i.amz
  %i.anc = tail call ptr @dt_alloc_aligned(i64 noundef %i.anb) #27 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anc, i64 64) ]
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.and = phi ptr [ %i.anc, %bb.gm ], [ %3, %bb.gl ] ; 8 uses
  %.not420 = icmp eq ptr %i.and, null
  br i1 %.not420, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.ane = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ane) #27
  br label %bb.so

bb.gp:                                            ; preds = %bb.gn
  br i1 %i.dy, label %bb.gq, label %bb.gx

bb.gq:                                            ; preds = %bb.gp
  %i.anf = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.ang = fmul reassoc nnan nsz arcp contract afn float %i.anf, f0x38D1B717 ; 2 uses
  %i.anh = sext i32 %i.bo to i64
  %i.ani = sext i32 %i.bq to i64
  %i.anj = shl nsw i64 %i.anh, 2
  %i.ank = mul i64 %i.anj, %i.ani                 ; 2 uses
  %i.anl = tail call ptr @dt_alloc_aligned(i64 noundef %i.ank) #27 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anl, i64 64) ]
  %.not421 = icmp eq ptr %i.anl, null
  br i1 %.not421, label %bb.gw, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.anm = load i32, ptr %i.z, align 8, !tbaa !123
  switch i32 %i.anm, label %bb.gx [
    i32 2, label %bb.gs
    i32 1, label %bb.gt
    i32 3, label %bb.gu
  ]

bb.gs:                                            ; preds = %bb.gr
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.anl, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070)
  br label %bb.gx

bb.gt:                                            ; preds = %bb.gr
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.anl, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070, float noundef %i.ang)
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gr
  %i.ann = tail call ptr @dt_alloc_aligned(i64 noundef %i.ank) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ann, i64 64) ]
  %.not422 = icmp eq ptr %i.ann, null
  br i1 %.not422, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.ann, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070)
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.anl, ptr noundef nonnull %i.ann, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070, float noundef %i.ang)
  tail call void @free(ptr noundef nonnull %i.ann) #27
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gq
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24) #27
  %i.ano = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ano) #27
  br label %bb.gx
end_hunk_0
begin_hunk_1_@demosaic_ppg:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pre_median.exit, label %.preheader86.i.i

pre_median.exit:                                  ; preds = %._crit_edge103.i.i, %._crit_edge411.split
  %.0333 = phi ptr [ %1, %._crit_edge411.split ], [ %i.hq, %._crit_edge103.i.i ] ; 4 uses
  %i.oa = add nuw nsw i32 %6, 3                   ; 4 uses
  %i.ob = add nsw i32 %3, -3
  %i.oc = icmp sgt i32 %3, 6
  br i1 %i.oc, label %.lr.ph420, label %.preheader

.lr.ph420:                                        ; preds = %pre_median.exit
  %i.od = sext i32 %2 to i64                      ; 3 uses
  %i.oe = shl nsw i64 %i.od, 2
  %i.of = add nsw i32 %2, -3
  %i.og = icmp sgt i32 %2, 6
  %i.oh = sub nsw i32 %2, %i.oa                   ; 3 uses
  %i.oi = shl nsw i32 %i.oh, 2
  %i.oj = sext i32 %i.oi to i64
  %i.ok = sext i32 %i.oh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ok
  %i.ol = sub nsw i32 0, %2                       ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i32 %i.ol, 1
  %i.oo = sext i32 %i.on to i64
  %i.op = mul i32 %2, -3
  %i.oq = sext i32 %i.op to i64
  %i.or = shl nsw i32 %2, 1
  %i.os = sext i32 %i.or to i64
  %i.ot = mul nsw i32 %2, 3
  %i.ou = sext i32 %i.ot to i64
  br i1 %i.og, label %.lr.ph.preheader, label %.lr.ph430

.lr.ph.preheader:                                 ; preds = %.lr.ph420
  %i.ov = sub nsw i32 %3, %i.oa
  %i.ow = sext i32 %i.ov to i64
  %i.ox = zext nneg i32 %i.oa to i64
  %wide.trip.count458 = zext nneg i32 %i.ob to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge417, %bb.x, %pre_median.exit
  %.0333550 = phi ptr [ %i.hq, %bb.x ], [ %.0333, %pre_median.exit ], [ %.0333, %._crit_edge417 ] ; 2 uses
  br i1 %i.d, label %.lr.ph430, label %._crit_edge431.split

.lr.ph430:                                        ; preds = %.lr.ph420, %.preheader
  %.0333550553 = phi ptr [ %.0333550, %.preheader ], [ %.0333, %.lr.ph420 ] ; 2 uses
  %i.oz = sext i32 %2 to i64                      ; 2 uses
  %i.pa = shl nsw i64 %i.oz, 2
  %i.pb = icmp sgt i32 %2, 0
  %i.pc = sub nsw i32 %2, %6                      ; 3 uses
  %i.pd = add nsw i32 %2, -1
  %i.pe = shl nuw nsw i32 %2, 2
  %i.pf = zext nneg i32 %i.pe to i64              ; 4 uses
  %i.pg = sub nsw i64 0, %i.pf                    ; 3 uses
  br i1 %i.pb, label %.lr.ph425.preheader, label %._crit_edge431.split

.lr.ph425.preheader:                              ; preds = %.lr.ph430
  %i.ph = add nsw i32 %3, -1
  %i.pi = sub nsw i32 %3, %6
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = sext i32 %i.pi to i64
  %i.pl = zext nneg i32 %6 to i64
  %i.pm = sext i32 %i.pc to i64
  %wide.trip.count465 = zext nneg i32 %3 to i64
  br label %.lr.ph425

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge417
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next456, %._crit_edge417 ] ; 6 uses
  %i.pn = mul nuw i64 %i.oe, %indvars.iv
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = mul nuw nsw i64 %indvars.iv, %i.od      ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0333, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %.not347 = icmp samesign uge i64 %indvars.iv, %i.ox
  %i.pt = icmp slt i64 %indvars.iv, %i.ow
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.oj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.pq
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.pv = shl nuw i32 %indvars.iv.tr, 1
  %i.pw = and i32 %i.pv, 14
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cs
  %.0325415 = phi i32 [ 3, %.lr.ph ], [ %i.to, %bb.cs ] ; 2 uses
  %.0327414 = phi ptr [ %i.ps, %.lr.ph ], [ %i.tn, %bb.cs ]
  %.0329413 = phi ptr [ %i.pp, %.lr.ph ], [ %i.tm, %bb.cs ]
  %i.px = icmp eq i32 %.0325415, %i.oa
  %or.cond355.not372 = select i1 %i.px, i1 %.not347, i1 false
  %or.cond357 = select i1 %or.cond355.not372, i1 %i.pt, i1 false ; 3 uses
  %.1330 = select i1 %or.cond357, ptr %i.pu, ptr %.0329413 ; 4 uses
  %.1328 = select i1 %or.cond357, ptr %gep, ptr %.0327414 ; 13 uses
  %.1326 = select i1 %or.cond357, i32 %i.oh, i32 %.0325415 ; 3 uses
  %i.py = icmp eq i32 %.1326, %2
  br i1 %i.py, label %._crit_edge417, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pz = and i32 %.1326, 1
  %.tr.i366 = or disjoint i32 %i.pz, %i.pw
  %i.qa = shl nuw nsw i32 %.tr.i366, 1
  %i.qb = lshr i32 %4, %i.qa                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.qc = load float, ptr %.1328, align 4, !tbaa !12 ; 8 uses
  %i.qd = and i32 %i.qb, 1
  %or.cond5 = icmp eq i32 %i.qd, 0
  br i1 %or.cond5, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.qe = and i32 %i.qb, 2
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qf
  store float %i.qc, ptr %i.qg, align 8, !tbaa !12
  %i.qh = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.om
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !12 ; 5 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oo
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !12 ; 2 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oq
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !12
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.od
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !12 ; 5 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.os
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !12 ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.ou
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !12
  %i.qt = getelementptr inbounds i8, ptr %.1328, i64 -8
  %i.qu = getelementptr inbounds i8, ptr %.1328, i64 -12
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !12
  %i.qw = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !12 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.1328, i64 8
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !12 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.1328, i64 12
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !12
  %i.rc = fsub reassoc nsz arcp contract afn float %i.qz, %i.qc
  %i.rd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rc)
  %i.re = load <2 x float>, ptr %i.qt, align 4, !tbaa !12 ; 3 uses
  %i.rf = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.rg = insertelement <2 x float> %i.rf, float %i.qx, i64 1
  %i.rh = fsub reassoc nsz arcp contract afn <2 x float> %i.re, %i.rg
  %i.ri = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rh)
  %i.rj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.rd, <2 x float> %i.ri)
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rj, 3.000000e+00
  %i.rl = fsub reassoc nsz arcp contract afn float %i.rb, %i.qx
  %i.rm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rl)
  %i.rn = extractelement <2 x float> %i.re, i64 1 ; 4 uses
  %i.ro = fsub reassoc nsz arcp contract afn float %i.qv, %i.rn
  %i.rp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ro)
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rm, %i.rp
  %i.rr = fmul reassoc nsz arcp contract afn float %i.rq, 2.000000e+00
  %i.rs = fadd reassoc nsz arcp contract afn float %i.rk, %i.rr
  %i.rt = fsub reassoc nsz arcp contract afn float %i.qk, %i.qc
  %i.ru = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rt)
  %i.rv = fsub reassoc nsz arcp contract afn float %i.qq, %i.qc
  %i.rw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rv)
  %i.rx = fsub reassoc nsz arcp contract afn float %i.qi, %i.qo
  %i.ry = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rx)
  %i.rz = fadd reassoc nsz arcp contract afn float %i.ry, %i.ru
  %i.sa = fadd reassoc nsz arcp contract afn float %i.rz, %i.rw
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, 3.000000e+00
  %i.sc = fsub reassoc nsz arcp contract afn float %i.qs, %i.qo
  %i.sd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sc)
  %i.se = fsub reassoc nsz arcp contract afn float %i.qm, %i.qi
  %i.sf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.se)
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sd, %i.sf
  %i.sh = fmul reassoc nsz arcp contract afn float %i.sg, 2.000000e+00
  %i.si = fadd reassoc nsz arcp contract afn float %i.sb, %i.sh
  %i.sj = fcmp reassoc nsz arcp contract afn ogt float %i.rs, %i.si
  br i1 %i.sj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.sk = fadd reassoc nsz arcp contract afn float %i.qi, %i.qc
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.qo
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, 2.000000e+00
  %i.sn = fadd reassoc nsz arcp contract afn float %i.qk, %i.qq
  %i.so = fsub reassoc nsz arcp contract afn float %i.sm, %i.sn
  %i.sp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qi, float %i.qo)
  %i.sq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qi, float %i.qo)
  %i.sr = fmul reassoc nsz arcp contract afn float %i.so, 2.500000e-01
  %i.ss = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sr, float %i.sq)
  %i.st = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ss, float %i.sp)
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.su = fadd reassoc nsz arcp contract afn float %i.rn, %i.qc
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, %i.qx
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sv, 2.000000e+00
  %i.sx = extractelement <2 x float> %i.re, i64 0
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, %i.qz
  %i.sz = fsub reassoc nsz arcp contract afn float %i.sw, %i.sy
  %i.ta = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rn, float %i.qx)
  %i.tb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rn, float %i.qx)
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sz, 2.500000e-01
  %i.td = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tc, float %i.tb)
  %i.te = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.td, float %i.ta)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cq, %bb.cr
  %i.tf = phi float [ %i.st, %bb.cq ], [ %i.te, %bb.cr ], [ %i.qc, %bb.co ]
  %7 = load <4 x float>, ptr %i.c, align 16
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.tg = insertelement <2 x float> %8, float %i.tf, i64 1
  %i.th = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tg, <2 x float> zeroinitializer)
  store <2 x float> %i.th, ptr %.1330, align 4, !tbaa !12
  %i.ti = load float, ptr %i.oy, align 8, !tbaa !12
  %i.tj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ti, float 0.000000e+00)
  %i.tk = getelementptr inbounds nuw i8, ptr %.1330, i64 8
  store float %i.tj, ptr %i.tk, align 4, !tbaa !12
  %i.tl = getelementptr inbounds nuw i8, ptr %.1330, i64 12
  store float 0.000000e+00, ptr %i.tl, align 4, !tbaa !12
  %i.tm = getelementptr inbounds nuw i8, ptr %.1330, i64 16
  %i.tn = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.to = add nsw i32 %.1326, 1                   ; 2 uses
  %i.tp = icmp slt i32 %i.to, %i.of
  br i1 %i.tp, label %bb.cn, label %._crit_edge417

._crit_edge417:                                   ; preds = %bb.cs, %bb.cn
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader, label %.lr.ph

._crit_edge431.split:                             ; preds = %._crit_edge426, %.lr.ph430, %.preheader
  %.0333550552 = phi ptr [ %.0333550, %.preheader ], [ %.0333550553, %.lr.ph430 ], [ %.0333550553, %._crit_edge426 ]
  br i1 %i.al, label %bb.dj, label %bb.dk

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %._crit_edge426
  %indvars.iv462 = phi i64 [ 0, %.lr.ph425.preheader ], [ %indvars.iv.next463, %._crit_edge426 ] ; 8 uses
  %i.tq = mul nuw i64 %i.pa, %indvars.iv462
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tq ; 2 uses
  %.not = icmp samesign uge i64 %indvars.iv462, %i.pl ; 2 uses
  %i.ts = icmp slt i64 %indvars.iv462, %i.pk      ; 2 uses
  %i.tt = mul nuw nsw i64 %indvars.iv462, %i.oz
  %i.tu = add nsw i64 %i.tt, %i.pm
  %.idx = shl nsw i64 %i.tu, 4
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.tw = icmp ne i64 %indvars.iv462, 0
  %i.tx = icmp samesign ult i64 %indvars.iv462, %i.pj
  %indvars.iv462.tr = trunc i64 %indvars.iv462 to i32
  %i.ty = shl i32 %indvars.iv462.tr, 1
  %i.tz = and i32 %i.ty, 14
  %.fr427 = freeze i1 %i.tx
  %i.ua = and i1 %.fr427, %i.tw
  br i1 %i.ua, label %.lr.ph425.split, label %.lr.ph425.split.us

.lr.ph425.split.us:                               ; preds = %.lr.ph425, %.lr.ph425.split.us
  %.0316423.us = phi i32 [ %i.uf, %.lr.ph425.split.us ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422.us = phi ptr [ %i.ue, %.lr.ph425.split.us ], [ %i.tr, %.lr.ph425 ]
  %i.ub = icmp eq i32 %.0316423.us, %6
  %or.cond358.not370.us = select i1 %i.ub, i1 %.not, i1 false
  %or.cond360.us = select i1 %or.cond358.not370.us, i1 %i.ts, i1 false ; 2 uses
  %spec.select432 = select i1 %or.cond360.us, ptr %i.tv, ptr %.0317422.us ; 3 uses
  %i.uc = load <4 x float>, ptr %spec.select432, align 4, !tbaa !12
  %i.ud = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.uc, <4 x float> zeroinitializer)
  store <4 x float> %i.ud, ptr %spec.select432, align 4, !tbaa !12
  %spec.select433 = select i1 %or.cond360.us, i32 %i.pc, i32 %.0316423.us
  %i.ue = getelementptr inbounds nuw i8, ptr %spec.select432, i64 16
  %i.uf = add nsw i32 %spec.select433, 1          ; 2 uses
  %i.ug = icmp slt i32 %i.uf, %2
  br i1 %i.ug, label %.lr.ph425.split.us, label %._crit_edge426

._crit_edge426:                                   ; preds = %.lr.ph425.split.us, %bb.di
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge431.split, label %.lr.ph425

.lr.ph425.split:                                  ; preds = %.lr.ph425, %bb.di
  %.0316423 = phi i32 [ %i.aau, %bb.di ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422 = phi ptr [ %i.aat, %bb.di ], [ %i.tr, %.lr.ph425 ]
  %i.uh = icmp eq i32 %.0316423, %6
  %or.cond358.not370 = select i1 %i.uh, i1 %.not, i1 false
  %or.cond360 = select i1 %or.cond358.not370, i1 %i.ts, i1 false ; 2 uses
  %spec.select434 = select i1 %or.cond360, ptr %i.tv, ptr %.0317422 ; 18 uses
  %spec.select435 = select i1 %or.cond360, i32 %i.pc, i32 %.0316423 ; 4 uses
  %i.ui = load float, ptr %spec.select434, align 4, !tbaa !12 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %spec.select434, i64 4
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !12 ; 9 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %spec.select434, i64 8
  %i.um = load float, ptr %i.ul, align 4, !tbaa !12 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %spec.select434, i64 12
  %i.uo = load float, ptr %i.un, align 4, !tbaa !12
  %i.up = icmp sgt i32 %spec.select435, 0
  %i.uq = icmp slt i32 %spec.select435, %i.pd
  %or.cond362 = select i1 %i.up, i1 %i.uq, i1 false
  br i1 %or.cond362, label %bb.ct, label %bb.di

bb.ct:                                            ; preds = %.lr.ph425.split
  %i.ur = and i32 %spec.select435, 1
  %.tr.i367 = or disjoint i32 %i.ur, %i.tz
  %i.us = shl nuw nsw i32 %.tr.i367, 1            ; 2 uses
  %i.ut = lshr i32 %4, %i.us                      ; 2 uses
  %i.uu = and i32 %i.ut, 1
  %.not346 = icmp eq i32 %i.uu, 0
  br i1 %.not346, label %bb.cx, label %bb.cu, !prof !626

bb.cu:                                            ; preds = %bb.ct
  %i.uv = getelementptr inbounds [4 x i8], ptr %spec.select434, i64 %i.pg ; 4 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %spec.select434, i64 %i.pf ; 4 uses
  %i.ux = xor i32 %i.us, 2
  %i.uy = shl nuw i32 3, %i.ux
  %i.uz = and i32 %i.uy, %4
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.vb = getelementptr inbounds nuw i8, ptr %spec.select434, i64 16
  %i.vc = getelementptr inbounds i8, ptr %spec.select434, i64 -16
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !12
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !12
  %i.vh = fmul reassoc nsz arcp contract afn float %i.uk, 2.000000e+00 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !12
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !12
  %.neg380 = fadd reassoc nsz arcp contract afn float %i.ve, %i.vh
  %i.vm = fadd reassoc nsz arcp contract afn float %.neg380, %i.vg
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vj, %i.vl
  %i.vo = fsub reassoc nsz arcp contract afn float %i.vm, %i.vn
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vo, 5.000000e-01
  %i.vq = load float, ptr %i.vc, align 4, !tbaa !12
  %i.vr = load float, ptr %i.vb, align 4, !tbaa !12
  %i.vs = getelementptr inbounds i8, ptr %spec.select434, i64 -12
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !12
  %i.vu = getelementptr inbounds nuw i8, ptr %spec.select434, i64 20
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !12
  %.neg383 = fadd reassoc nsz arcp contract afn float %i.vq, %i.vh
  %i.vw = fadd reassoc nsz arcp contract afn float %.neg383, %i.vr
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vt, %i.vv
  %i.vy = fsub reassoc nsz arcp contract afn float %i.vw, %i.vx
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vy, 5.000000e-01
  br label %bb.di

bb.cw:                                            ; preds = %bb.cu
  %i.wa = load float, ptr %i.uv, align 4, !tbaa !12
  %i.wb = load float, ptr %i.uw, align 4, !tbaa !12
  %i.wc = fmul reassoc nsz arcp contract afn float %i.uk, 2.000000e+00 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.we = load float, ptr %i.wd, align 4, !tbaa !12
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !12
  %.neg374 = fadd reassoc nsz arcp contract afn float %i.wa, %i.wc
  %i.wh = fadd reassoc nsz arcp contract afn float %.neg374, %i.wb
  %i.wi = fadd reassoc nsz arcp contract afn float %i.we, %i.wg
  %i.wj = fsub reassoc nsz arcp contract afn float %i.wh, %i.wi
  %i.wk = fmul reassoc nsz arcp contract afn float %i.wj, 5.000000e-01
  %i.wl = getelementptr inbounds i8, ptr %spec.select434, i64 -8
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !12
  %i.wn = getelementptr inbounds nuw i8, ptr %spec.select434, i64 24
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !12
  %i.wp = getelementptr inbounds i8, ptr %spec.select434, i64 -12
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !12
  %i.wr = getelementptr inbounds nuw i8, ptr %spec.select434, i64 20
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !12
  %.neg377 = fadd reassoc nsz arcp contract afn float %i.wm, %i.wc
  %i.wt = fadd reassoc nsz arcp contract afn float %.neg377, %i.wo
  %i.wu = fadd reassoc nsz arcp contract afn float %i.wq, %i.ws
  %i.wv = fsub reassoc nsz arcp contract afn float %i.wt, %i.wu
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wv, 5.000000e-01
  br label %bb.di

bb.cx:                                            ; preds = %bb.ct
  %i.wx = and i32 %i.ut, 2
  %i.wy = getelementptr inbounds i8, ptr %spec.select434, i64 -16 ; 2 uses
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.pg ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %spec.select434, i64 16 ; 2 uses
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.pg ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.pf ; 3 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.pf ; 4 uses
  %i.xe = icmp eq i32 %i.wx, 0
  br i1 %i.xe, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !12 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %i.xi = load <2 x float>, ptr %i.xh, align 4, !tbaa !12 ; 3 uses
  %i.xj = insertelement <2 x float> poison, float %i.uk, i64 0 ; 3 uses
  %i.xk = insertelement <2 x float> %i.xj, float %i.xg, i64 1
  %i.xl = fsub reassoc nsz arcp contract afn <2 x float> %i.xi, %i.xk
  %i.xm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xl) ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !12 ; 2 uses
  %i.xp = fmul reassoc nsz arcp contract afn float %i.uk, 2.000000e+00 ; 2 uses
  %i.xq = extractelement <2 x float> %i.xi, i64 1
  %.neg392 = fadd reassoc nsz arcp contract afn float %i.xq, %i.xp
  %i.xr = fadd reassoc nsz arcp contract afn float %.neg392, %i.xg
  %i.xs = extractelement <2 x float> %i.xi, i64 0
  %i.xt = fadd reassoc nsz arcp contract afn float %i.xs, %i.xo
  %i.xu = fsub reassoc nsz arcp contract afn float %i.xr, %i.xt ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !12 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xy = load <2 x float>, ptr %i.xx, align 4, !tbaa !12 ; 3 uses
  %i.xz = insertelement <2 x float> %i.xj, float %i.xw, i64 1
  %i.ya = fsub reassoc nsz arcp contract afn <2 x float> %i.xy, %i.xz
  %i.yb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ya) ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !12 ; 2 uses
  %i.ye = shufflevector <2 x float> %i.xm, <2 x float> %i.yb, <2 x i32> <i32 0, i32 2>
  %i.yf = shufflevector <2 x float> %i.xm, <2 x float> %i.yb, <2 x i32> <i32 1, i32 3>
end_hunk_1
