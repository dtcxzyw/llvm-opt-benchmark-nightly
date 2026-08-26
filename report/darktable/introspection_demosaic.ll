Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.ajj = fcmp reassoc nsz arcp contract afn olt float %i.agb, %i.agf
  %i.ajk = select reassoc nsz arcp contract afn i1 %i.ajj, float %i.agb, float %i.agf ; 2 uses
  %i.ajl = fmul reassoc nsz arcp contract afn float %.15.us.i.i.i, %i.ajk
  %i.ajm = fcmp reassoc nsz arcp contract afn ogt float %i.ajh, %i.ajl
  %i.ajn = fdiv reassoc nsz arcp contract afn float %i.ajh, %i.ajk
  %.16.us.i.i.i = select nsz i1 %i.ajm, float %i.ajn, float %.15.us.i.i.i
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  %.18.us.i.i.i = phi nsz float [ %.15.us.i.i.i, %bb.fv ], [ %.16.us.i.i.i, %bb.fx ], [ %.15.us.i.i.i, %bb.fw ] ; 4 uses
  %i.ajo = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.afo
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !22 ; 7 uses
  %i.ajq = getelementptr [4 x i8], ptr %i.afw, i64 %i.afq ; 2 uses
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 -4
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !22 ; 2 uses
  %i.ajt = fcmp reassoc nsz arcp contract afn ogt float %i.ajp, %i.ajs
  %.331.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ajt, float %i.ajp, float %i.ajs ; 2 uses
  %i.aju = getelementptr i8, ptr %i.ajq, i64 4
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !22 ; 2 uses
  %i.ajw = fcmp reassoc nsz arcp contract afn ogt float %.331.us.i.i.i, %i.ajv
  %i.ajx = select reassoc nsz arcp contract afn i1 %i.ajw, float %.331.us.i.i.i, float %i.ajv
  %i.ajy = fcmp reassoc nsz arcp contract afn olt float %i.ajx, f0x3F666666
  %i.ajz = fcmp reassoc nsz arcp contract afn ogt float %i.ajp, 5.000000e-03
  %or.cond9.us.i.i.i = and i1 %i.ajz, %i.ajy
  br i1 %or.cond9.us.i.i.i, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.aka = fcmp reassoc nsz arcp contract afn ogt float %i.ajp, %i.agf
  %i.akb = select reassoc nsz arcp contract afn i1 %i.aka, float %i.ajp, float %i.agf ; 3 uses
  %i.akc = fcmp reassoc nsz arcp contract afn ogt float %i.akb, f0x3C23D70A
  br i1 %i.akc, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.akd = fcmp reassoc nsz arcp contract afn olt float %i.ajp, %i.agf
  %i.ake = select reassoc nsz arcp contract afn i1 %i.akd, float %i.ajp, float %i.agf ; 2 uses
  %i.akf = fmul reassoc nsz arcp contract afn float %i.ake, %.18.us.i.i.i
  %i.akg = fcmp reassoc nsz arcp contract afn ogt float %i.akb, %i.akf
  %i.akh = fdiv reassoc nsz arcp contract afn float %i.akb, %i.ake
  %.19.us.i.i.i = select nsz i1 %i.akg, float %i.akh, float %.18.us.i.i.i
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fu, %bb.fm
  %.23.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.fm ], [ %.15.us.i.i.i, %bb.fu ], [ %.18.us.i.i.i, %bb.fy ], [ %.19.us.i.i.i, %bb.ga ], [ %.18.us.i.i.i, %bb.fz ] ; 3 uses
  %indvars.iv.next.i171.i.i = add nuw nsw i64 %indvars.iv.i168.i.i, 3 ; 2 uses
  %i.aki = icmp samesign ult i64 %indvars.iv.next.i171.i.i, %i.afs
  br i1 %i.aki, label %bb.ex, label %._crit_edge.us.i172.i.i

._crit_edge.us.i172.i.i:                          ; preds = %bb.gb
  %indvars.iv.next357.i.i.i = add nuw nsw i64 %indvars.iv356.i.i.i, 3 ; 2 uses
  %i.akj = icmp samesign ult i64 %indvars.iv.next357.i.i.i, %i.aft
  br i1 %i.akj, label %.lr.ph.us.i.i.i, label %._crit_edge349.loopexit.i.i.i

._crit_edge349.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i172.i.i
  %i.akk = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.23.us.i.i.i)
  br label %_calcRadiusXtrans.exit.i.i

_calcRadiusXtrans.exit.i.i:                       ; preds = %._crit_edge349.loopexit.i.i.i, %.lr.ph348.i.i.i, %.critedge.i.i.i
  %.0268.lcssa.i.i.i = phi float [ 0.000000e+00, %.critedge.i.i.i ], [ %i.akk, %._crit_edge349.loopexit.i.i.i ], [ 0.000000e+00, %.lr.ph348.i.i.i ]
  %i.akl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0268.lcssa.i.i.i
  %i.akm = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.akl)
  %i.akn = fadd reassoc nsz arcp contract afn float %i.akm, 2.000000e-01
  br label %bb.gc

bb.gc:                                            ; preds = %_calcRadiusXtrans.exit.i.i, %_calcRadiusBayer.exit.i.i, %_calcRadiusMono.exit.i.i
  %i.ako = phi reassoc nsz arcp contract afn float [ %i.vl, %_calcRadiusMono.exit.i.i ], [ %i.zf, %_calcRadiusBayer.exit.i.i ], [ %i.akn, %_calcRadiusXtrans.exit.i.i ] ; 2 uses
  tail call void @free(ptr noundef %i.ir) #27
  %i.akp = fcmp reassoc nsz arcp contract afn ogt float %i.ako, 1.500000e+00
  %i.akq = select reassoc nsz arcp contract afn i1 %i.akp, float 1.500000e+00, float %i.ako
  br label %_calc_auto_radius.exit.i

_calc_auto_radius.exit.i:                         ; preds = %bb.gc, %bb.as, %bb.ar, %bb.aq
  %.not35.i = phi ptr [ @.str.196, %bb.aq ], [ @.str.196, %bb.ar ], [ @.str.196, %bb.as ], [ @.str.11, %bb.gc ]
  %.not37.i = phi i1 [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ false, %bb.gc ]
  %.1.i.i = phi nsz float [ 5.000000e-01, %bb.aq ], [ 5.000000e-01, %bb.ar ], [ 5.000000e-01, %bb.as ], [ %i.akq, %bb.gc ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  %i.akr = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !191
  %i.akt = fsub reassoc nsz arcp contract afn float %i.aks, %.1.i.i
  %i.aku = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.akt)
  %i.akv = fcmp reassoc nsz arcp contract afn uge float %i.aku, 4.000000e-02 ; 2 uses
  %i.akw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !118
  %i.akx = and i32 %i.akw, 33554432
  %.not.i463 = icmp eq i32 %i.akx, 0
  br i1 %.not.i463, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %_calc_auto_radius.exit.i
  %i.aky = select i1 %i.bh, ptr @.str.192, ptr @.str.191
  %i.akz = select i1 %i.bd, ptr @.str.190, ptr %i.aky
  %i.ala = select i1 %i.akv, ptr @.str.195, ptr @.str.194
  %i.alb = fpext reassoc nsz arcp contract afn float %.1.i.i to double
  %i.alc = extractelement <2 x i32> %i.ib, i64 1
  %i.ald = extractelement <2 x i32> %i.id, i64 0
  %i.ale = extractelement <2 x i32> %i.id, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.akz, ptr noundef %.val446, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.ala, double noundef %i.alb, ptr noundef nonnull %.not35.i, i32 noundef %i.ald, i32 noundef %i.ale, i32 noundef %i.ic, i32 noundef %i.alc) #27
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %_calc_auto_radius.exit.i
  %or.cond.i464 = and i1 %i.gb, %i.gc
  br i1 %or.cond.i464, label %bb.gf, label %_capture_radius.exit

bb.gf:                                            ; preds = %bb.ge
  %i.alf = getelementptr inbounds nuw i8, ptr %.val445, i64 188
  store i32 1, ptr %i.alf, align 4, !tbaa !167
  br i1 %i.akv, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.alg = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !166
  %i.ali = fcmp reassoc nsz arcp contract afn olt float %i.alh, 0.000000e+00
  br i1 %i.ali, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  store float %.1.i.i, ptr %i.akr, align 4, !tbaa !191
  %i.alj = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  store float %.1.i.i, ptr %i.alj, align 4, !tbaa !166
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  br i1 %.not37.i, label %bb.gj, label %_capture_radius.exit

bb.gj:                                            ; preds = %bb.gi
  %i.alk = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.197, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.alk) #27
  br label %_capture_radius.exit

_capture_radius.exit:                             ; preds = %bb.ge, %bb.gi, %bb.gj
  store float %.1.i.i, ptr %i.fz, align 4, !tbaa !165
  br label %_radius_requested.exit.thread692

_radius_requested.exit.thread692:                 ; preds = %bb.ao, %_radius_requested.exit, %_capture_radius.exit, %bb.ae
  %.val450 = load i32, ptr %i.bn, align 4, !tbaa !87 ; 2 uses
  %.val451 = load i32, ptr %i.bp, align 4, !tbaa !88 ; 3 uses
  %i.all = tail call i64 (...) @dt_get_available_mem() #27 ; 2 uses
  %i.alm = sext i32 %.val450 to i64
  %i.aln = shl nsw i64 %i.alm, 2
  %i.alo = sext i32 %.val451 to i64
  %i.alp = mul i64 %i.aln, %i.alo                 ; 4 uses
  %i.alq = load i32, ptr %i.da, align 4, !tbaa !87
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !88
  %i.alu = sext i32 %i.alt to i64
  %.neg8.i = mul i64 %i.alp, -4
  %.neg9.i = select i1 %i.dn, i64 0, i64 %.neg8.i
  %i.alv = select i1 %i.dy, i64 %i.alp, i64 0
  %i.alw = mul nsw i64 %i.alr, -16
  %.neg4.i = mul i64 %i.alw, %i.alu
  %i.alx = add i64 %i.alp, %i.alv
  %.neg6.i = sub i64 %i.all, %i.alx
  %.neg7.i = add i64 %.neg6.i, %.neg9.i
  %.1.i = add i64 %.neg7.i, %.neg4.i              ; 3 uses
  %.neg.i = mul i64 %i.alp, -5
  %i.aly = select i1 %spec.select432.not, i64 0, i64 %.neg.i
  %.064.i = add i64 %.1.i, %i.aly                 ; 2 uses
  switch i32 %.0, label %bb.gp [
    i32 1026, label %bb.gq
    i32 1025, label %bb.gk
    i32 1028, label %bb.gk
    i32 5, label %bb.gl
    i32 6, label %bb.gl
    i32 1029, label %bb.go
    i32 1, label %bb.gm
    i32 2, label %bb.gn
    i32 1024, label %bb.gn
    i32 7, label %bb.go
    i32 3, label %bb.go
    i32 4, label %bb.go
    i32 1027, label %bb.go
  ]

bb.gk:                                            ; preds = %_radius_requested.exit.thread692, %_radius_requested.exit.thread692
  br label %bb.gq

bb.gl:                                            ; preds = %_radius_requested.exit.thread692, %_radius_requested.exit.thread692
  br label %bb.gq

bb.gm:                                            ; preds = %_radius_requested.exit.thread692
  br label %bb.gq

bb.gn:                                            ; preds = %_radius_requested.exit.thread692, %_radius_requested.exit.thread692
  br label %bb.gq

bb.go:                                            ; preds = %_radius_requested.exit.thread692, %_radius_requested.exit.thread692, %_radius_requested.exit.thread692, %_radius_requested.exit.thread692, %_radius_requested.exit.thread692
  br label %bb.gq

bb.gp:                                            ; preds = %_radius_requested.exit.thread692
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %_radius_requested.exit.thread692
  %.067.i = phi i32 [ 8, %bb.gp ], [ 6, %bb.gm ], [ 12, %bb.gk ], [ 18, %_radius_requested.exit.thread692 ], [ 10, %bb.gl ], [ 0, %bb.go ], [ 6, %bb.gn ]
  %i.alz = phi i32 [ 6, %bb.gp ], [ 6, %bb.gm ], [ 25, %bb.gk ], [ 48, %_radius_requested.exit.thread692 ], [ 6, %bb.gl ], [ 6, %bb.go ], [ 6, %bb.gn ]
  %.065.i = phi i32 [ 4, %bb.gp ], [ 2, %bb.gm ], [ 25, %bb.gk ], [ 48, %_radius_requested.exit.thread692 ], [ 2, %bb.gl ], [ 1, %bb.go ], [ 4, %bb.gn ]
  %spec.select.i = select i1 %i.dv, i32 18, i32 %.067.i ; 3 uses
  %spec.select77.i = select i1 %i.dv, i32 %i.alz, i32 %.065.i ; 2 uses
  %i.ama = shl i32 %.val450, 2
  %i.amb = mul i32 %i.ama, %spec.select77.i
  %i.amc = sext i32 %i.amb to i64                 ; 2 uses
  %i.amd = sdiv i64 %.1.i, %i.amc
  %.fr.i = freeze i64 %i.amd
  %i.ame = sdiv i64 %.fr.i, 4
  %i.amf = trunc i64 %i.ame to i32                ; 3 uses
  %i.amg = sdiv i64 %.064.i, %i.amc
  %i.amh = trunc i64 %i.amg to i32                ; 2 uses
  %i.ami = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !118 ; 2 uses
  %i.amj = and i32 %i.ami, 41943040
  %.not73.i = icmp eq i32 %i.amj, 0
  %i.amk = and i32 %i.ami, 16777216
  %.not74.not.i = icmp eq i32 %i.amk, 0
  %or.cond.i466 = or i1 %.not73.i, %.not74.not.i
  br i1 %or.cond.i466, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aml = lshr i64 %i.all, 20
  %i.amm = trunc i64 %i.aml to i32
  %i.amn = lshr i64 %.064.i, 20
  %i.amo = trunc i64 %i.amn to i32
  %i.amp = lshr i64 %.1.i, 20
  %i.amq = trunc i64 %i.amp to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.200, i32 noundef %i.amm, i32 noundef %i.amo, i32 noundef %i.amq, i32 noundef %spec.select77.i, i32 noundef %i.amh, i32 noundef %i.amf) #27
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.not75.i = icmp sgt i32 %.val451, %i.amh       ; 7 uses
  br i1 %.not75.i, label %_tiling_requirements.exit, label %.thread

_tiling_requirements.exit:                        ; preds = %bb.gs
  %i.amr = load i32, ptr %i.ac, align 4, !tbaa !84
  %i.ams = icmp eq i32 %i.amr, 9
  %6 = select i1 %i.ams, i32 6, i32 2
  %i.amt = srem i32 %i.amf, %6
  %i.amu = sub nsw i32 %i.amf, %i.amt             ; 2 uses
  %i.amv = shl nuw nsw i32 %spec.select.i, 1      ; 2 uses
  %i.amw = sub nsw i32 %i.amu, %i.amv             ; 4 uses
  %i.amx = add nsw i32 %.val451, -1
  %i.amy = add i32 %i.amx, %i.amw
  %i.amz = sdiv i32 %i.amy, %i.amw
  %i.ana = icmp slt i32 %i.amw, 30
  br i1 %i.ana, label %.split, label %bb.gt

.split:                                           ; preds = %_tiling_requirements.exit
  %i.anb = add nuw nsw i32 %i.amv, 30
  %i.anc = add nsw i32 %i.bq, 29
  %i.and = sdiv i32 %i.anc, 30
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8) #27
  br label %bb.gt

.thread:                                          ; preds = %bb.gs
  %i.ane = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !118
  %i.anf = and i32 %i.ane, 16777216
  %.not417 = icmp eq i32 %i.anf, 0
  br i1 %.not417, label %bb.hh, label %bb.gt

bb.gt:                                            ; preds = %_tiling_requirements.exit, %.split, %.thread
  %.0677715 = phi i32 [ %i.and, %.split ], [ 1, %.thread ], [ %i.amz, %_tiling_requirements.exit ] ; 3 uses
  %.0679712 = phi i32 [ 30, %.split ], [ %i.bq, %.thread ], [ %i.amw, %_tiling_requirements.exit ] ; 2 uses
  %.0681709 = phi i32 [ %i.anb, %.split ], [ %i.bq, %.thread ], [ %i.amu, %_tiling_requirements.exit ] ; 3 uses
  %.0683701706 = phi i32 [ %spec.select.i, %.split ], [ 0, %.thread ], [ %spec.select.i, %_tiling_requirements.exit ] ; 3 uses
  %i.ang = phi ptr [ @.str.21, %.split ], [ @.str.11, %.thread ], [ @.str.11, %_tiling_requirements.exit ]
  %i.anh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !118
  %i.ani = and i32 %i.anh, 33554432
  %.not418 = icmp eq i32 %i.ani, 0
  br i1 %.not418, label %bb.hh, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.anj = select i1 %.not75.i, ptr @.str.10, ptr @.str.11
  %i.ank = select i1 %i.dn, ptr @.str.12, ptr @.str.13
  %i.anl = select i1 %spec.select.not, ptr @.str.16, ptr @.str.15
  %i.anm = select i1 %i.bd, ptr @.str.14, ptr %i.anl
  switch i32 %.0, label %bb.hg [
    i32 0, label %_method_str.exit
    i32 1, label %bb.gv
    i32 2, label %bb.gw
    i32 5, label %bb.gx
    i32 6, label %bb.gy
    i32 3, label %bb.gz
    i32 4, label %bb.ha
    i32 1024, label %bb.hb
    i32 1025, label %bb.hc
    i32 1026, label %bb.hd
    i32 1028, label %bb.he
    i32 1027, label %bb.gz
    i32 1029, label %bb.ha
    i32 7, label %bb.hf
  ]

bb.gv:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gw:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gx:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gy:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.gz:                                            ; preds = %bb.gu, %bb.gu
  br label %_method_str.exit

bb.ha:                                            ; preds = %bb.gu, %bb.gu
  br label %_method_str.exit

bb.hb:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hc:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hd:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.he:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hf:                                            ; preds = %bb.gu
  br label %_method_str.exit

bb.hg:                                            ; preds = %bb.gu
  br label %_method_str.exit

_method_str.exit:                                 ; preds = %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg
  %.0.i468 = phi ptr [ @.str.207, %bb.hg ], [ @.str.175, %bb.hf ], [ @.str.201, %bb.gv ], [ @.str.150, %bb.gw ], [ @.str.152, %bb.gx ], [ @.str.154, %bb.gy ], [ @.str.202, %bb.gz ], [ @.str.203, %bb.ha ], [ @.str.164, %bb.hb ], [ @.str.204, %bb.hc ], [ @.str.205, %bb.hd ], [ @.str.206, %bb.he ], [ @.str.146, %bb.gu ]
  %i.ann = select i1 %spec.select432.not, ptr @.str.11, ptr @.str.17
  %i.ano = select i1 %i.dv, ptr @.str.18, ptr @.str.11
  %i.anp = select i1 %i.dy, ptr @.str.19, ptr @.str.11
  %i.anq = select i1 %i.cw, ptr @.str.20, ptr @.str.11
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.anj, ptr noundef nonnull %i.ank, ptr noundef nonnull %i.anm, ptr noundef nonnull %.0.i468, ptr noundef nonnull %i.ann, ptr noundef nonnull %i.ano, ptr noundef nonnull %i.anp, ptr noundef nonnull %i.anq, ptr noundef nonnull %i.ang, i32 noundef %.0677715, i32 noundef %.0681709, i32 noundef %.0683701706) #27
  br label %bb.hh

bb.hh:                                            ; preds = %bb.gt, %_method_str.exit, %.thread
  %.0677716 = phi i32 [ %.0677715, %bb.gt ], [ %.0677715, %_method_str.exit ], [ 1, %.thread ] ; 3 uses
  %.0679713 = phi i32 [ %.0679712, %bb.gt ], [ %.0679712, %_method_str.exit ], [ %i.bq, %.thread ] ; 3 uses
  %.0681710 = phi i32 [ %.0681709, %bb.gt ], [ %.0681709, %_method_str.exit ], [ %i.bq, %.thread ]
  %.0683701707 = phi i32 [ %.0683701706, %bb.gt ], [ %.0683701706, %_method_str.exit ], [ 0, %.thread ] ; 3 uses
  br i1 %i.dn, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.anr = sext i32 %i.bo to i64
  %i.ans = sext i32 %i.bq to i64
  %i.ant = shl nsw i64 %i.anr, 4
  %i.anu = mul i64 %i.ant, %i.ans
  %i.anv = tail call ptr @dt_alloc_aligned(i64 noundef %i.anu) #27 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anv, i64 64) ]
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hh, %bb.hi
  %i.anw = phi ptr [ %i.anv, %bb.hi ], [ %3, %bb.hh ] ; 8 uses
  %.not420 = icmp eq ptr %i.anw, null
  br i1 %.not420, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.anx = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.anx) #27
  br label %bb.ug

bb.hl:                                            ; preds = %bb.hj
  br i1 %i.dy, label %bb.hm, label %bb.ht

bb.hm:                                            ; preds = %bb.hl
  %i.any = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.anz = fmul reassoc nnan nsz arcp contract afn float %i.any, f0x38D1B717 ; 2 uses
  %i.aoa = sext i32 %i.bo to i64
  %i.aob = sext i32 %i.bq to i64
  %i.aoc = shl nsw i64 %i.aoa, 2
  %i.aod = mul i64 %i.aoc, %i.aob                 ; 2 uses
  %i.aoe = tail call ptr @dt_alloc_aligned(i64 noundef %i.aod) #27 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoe, i64 64) ]
  %.not421 = icmp eq ptr %i.aoe, null
  br i1 %.not421, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aof = load i32, ptr %i.z, align 8, !tbaa !156
  switch i32 %i.aof, label %bb.ht [
    i32 2, label %bb.ho
    i32 1, label %bb.hp
    i32 3, label %bb.hq
  ]

bb.ho:                                            ; preds = %bb.hn
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.aoe, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043)
  br label %bb.ht

bb.hp:                                            ; preds = %bb.hn
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.aoe, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043, float noundef %i.anz)
  br label %bb.ht

bb.hq:                                            ; preds = %bb.hn
  %i.aog = tail call ptr @dt_alloc_aligned(i64 noundef %i.aod) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aog, i64 64) ]
  %.not422 = icmp eq ptr %i.aog, null
  br i1 %.not422, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.aog, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043)
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.aoe, ptr noundef nonnull %i.aog, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1043, float noundef %i.anz)
  tail call void @free(ptr noundef nonnull %i.aog) #27
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hm
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24) #27
  %i.aoh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.aoh) #27
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hn, %bb.hq, %bb.hr, %bb.hp, %bb.ho, %bb.hl
  %.0393 = phi ptr [ null, %bb.hl ], [ %i.aoe, %bb.ho ], [ %i.aoe, %bb.hp ], [ %i.aoe, %bb.hr ], [ %i.aoe, %bb.hq ], [ %i.aoe, %bb.hn ], [ null, %bb.hs ] ; 2 uses
  %.1392 = phi ptr [ %2, %bb.hl ], [ %i.aoe, %bb.ho ], [ %i.aoe, %bb.hp ], [ %i.aoe, %bb.hr ], [ %i.aoe, %bb.hq ], [ %i.aoe, %bb.hn ], [ %2, %bb.hs ] ; 3 uses
  %.13923632 = ptrtoaddr ptr %.1392 to i64        ; 2 uses
  br i1 %.not75.i, label %bb.hu, label %.thread719

bb.hu:                                            ; preds = %bb.ht
  %i.aoi = sext i32 %i.bo to i64
  %i.aoj = sext i32 %.0681710 to i64
  %i.aok = shl nsw i64 %i.aoi, 4
  %i.aol = mul i64 %i.aok, %i.aoj
  %i.aom = tail call ptr @dt_alloc_aligned(i64 noundef %i.aol) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aom, i64 64) ]
  %.not423 = icmp eq ptr %i.aom, null
  br i1 %.not423, label %bb.hv, label %.thread719

bb.hv:                                            ; preds = %bb.hu
  tail call void @free(ptr noundef %.0393) #27
  br i1 %i.dn, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @free(ptr noundef nonnull %i.anw) #27
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.aon = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.aon) #27
  br label %bb.ug

.thread719:                                       ; preds = %bb.ht, %bb.hu
  %i.aoo = phi ptr [ %i.aom, %bb.hu ], [ %i.anw, %bb.ht ] ; 112 uses
  %i.aop = icmp sgt i32 %.0677716, 0
  br i1 %i.aop, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread719
  %i.aoq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh ; 4 uses
  %.not424 = icmp eq i32 %i.bj, 0
  %i.aor = add i32 %.0683701707, %.0679713
  %i.aos = select i1 %.not424, i32 0, i32 2
  %i.aot = icmp sgt i32 %i.bo, 0                  ; 7 uses
  %i.aou = sext i32 %i.bo to i64                  ; 50 uses
  %i.aov = zext i32 %i.bo to i64                  ; 40 uses
  %i.aow = shl nsw i64 %i.aou, 2                  ; 2 uses
  %i.aox = icmp eq i32 %.0, 2
  %or.cond31 = or i1 %i.bg, %i.aox
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aoz = icmp slt i32 %i.bo, 8
  %i.apa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.apb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_0
begin_hunk_1_@green_equilibration_favg:bb.a
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %scalar.ph.preheader, label %vector.body, !llvm.loop !598

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.ca = icmp slt i64 %indvars.iv.next85, %i.f
  br i1 %i.ca, label %.preheader, label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cb = add nsw i64 %i.bq, %indvars.iv          ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !22
  %i.ce = fpext reassoc nsz arcp contract afn float %i.cd to double
  %i.cf = fmul reassoc nsz arcp contract afn double %i.bl, %i.ce
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, %i.bn
  %i.ch = fptrunc reassoc nsz arcp contract afn double %i.cg to float
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb
  store float %i.ci, ptr %i.cj, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ck, label %scalar.ph, label %._crit_edge, !llvm.loop !599

.loopexit:                                        ; preds = %.lr.ph68.split, %._crit_edge, %bb.a, %.preheader.lr.ph, %._crit_edge69
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @green_equilibration_lavg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 768
  %.not = icmp eq i32 %i.a, 256
  %spec.select = select i1 %.not, i32 2, i32 3    ; 2 uses
  %i.b = shl nuw nsw i32 %spec.select, 2          ; 2 uses
  %i.c = lshr i32 %4, %i.b
  %i.d = and i32 %i.c, 3
  %.not117 = icmp eq i32 %i.d, 1
  %.0110 = select i1 %.not117, i64 2, i64 3       ; 3 uses
  %i.e = trunc nuw nsw i64 %.0110 to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = and i32 %i.f, 2
  %i.h = or disjoint i32 %i.g, %i.b
  %i.i = lshr i32 %4, %i.h
  %i.j = and i32 %i.i, 3
  %.not118 = icmp ne i32 %i.j, 1
  %i.k = sext i1 %.not118 to i32
  %.1 = add nsw i32 %spec.select, %i.k            ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 6 uses
  %i.m = sext i32 %3 to i64
  %i.n = mul nsw i64 %i.m, %i.l
  tail call void @dt_iop_image_copy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.n) #27
  %i.o = add nsw i32 %3, -2                       ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i32 %.1, %i.o
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge125

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.s = add nsw i32 %2, -2
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ult i64 %.0110, %i.t
  br i1 %i.u, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.0111124.us = phi i64 [ %i.ae, %._crit_edge.us ], [ %i.r, %.preheader.lr.ph ] ; 5 uses
  %i.v = add i64 %.0111124.us, -1
  %i.w = mul i64 %i.v, %i.l
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.w
  %i.y = add nuw i64 %.0111124.us, 1
  %i.z = mul i64 %i.y, %i.l
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %i.z
  %i.ab = add i64 %.0111124.us, -2
  %i.ac = mul i64 %i.ab, %i.l
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %i.ac
  %i.ae = add i64 %.0111124.us, 2                 ; 3 uses
  %i.af = mul i64 %i.ae, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af
  %i.ah = mul i64 %.0111124.us, %i.l
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.f
  %.0112123.us = phi i64 [ %.0110, %.preheader.us ], [ %i.cz, %bb.f ] ; 6 uses
  %i.ai = getelementptr [4 x i8], ptr %i.x, i64 %.0112123.us ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.aa, i64 %.0112123.us ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 -4
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = getelementptr i8, ptr %i.ai, i64 4
  %i.an = getelementptr i8, ptr %i.aj, i64 -4
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !22 ; 4 uses
  %i.ap = load float, ptr %i.al, align 4, !tbaa !22 ; 4 uses
  %i.aq = load float, ptr %i.am, align 4, !tbaa !22 ; 4 uses
  %i.ar = load float, ptr %i.an, align 4, !tbaa !22 ; 4 uses
  %i.as = getelementptr [4 x i8], ptr %i.ad, i64 %.0112123.us
  %i.at = getelementptr [4 x i8], ptr %i.ag, i64 %.0112123.us
  %i.au = load float, ptr %i.at, align 4, !tbaa !22 ; 4 uses
  %i.av = load float, ptr %i.as, align 4, !tbaa !22 ; 4 uses
  %i.aw = add i64 %.0112123.us, %i.ah             ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %1, i64 %i.aw ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !22 ; 4 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !22 ; 4 uses
  %i.bc = fadd reassoc nsz arcp contract afn float %i.aq, %i.ao
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ar
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.ap
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, 2.500000e-01 ; 3 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %i.au, %i.av
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.az
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bb
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 2.500000e-01 ; 3 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt float %i.bj, 0.000000e+00
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 0.000000e+00
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bj
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bm, 2.000000e+00
  %i.bo = and i1 %i.bl, %i.bn
  %or.cond120.us = select i1 %i.bk, i1 %i.bo, i1 false
  br i1 %or.cond120.us, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bp = load float, ptr %i.ax, align 4, !tbaa !22 ; 2 uses
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bp, f0x3F733333
  br i1 %i.bq, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.br = fsub reassoc nsz arcp contract afn float %i.av, %i.au
  %i.bs = fsub reassoc nsz arcp contract afn float %i.av, %i.az
  %i.bt = fsub reassoc nsz arcp contract afn float %i.av, %i.bb
  %i.bu = fsub reassoc nsz arcp contract afn float %i.au, %i.az
  %i.bv = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.br, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bu, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bt, i64 3
  %i.bz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.by)
  %i.ca = fsub reassoc nsz arcp contract afn float %i.az, %i.bb
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca)
  %i.cc = fsub reassoc nsz arcp contract afn float %i.au, %i.bb
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cc)
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.cb, <4 x float> %i.bz)
  %op.rdx134 = fadd reassoc nsz arcp contract afn float %op.rdx, %i.cd
  %i.ce = fmul reassoc nsz arcp contract afn float %op.rdx134, f0x3E2AAAAB
  %i.cf = fsub reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.cg = fsub reassoc nsz arcp contract afn float %i.ao, %i.ar
  %i.ch = fsub reassoc nsz arcp contract afn float %i.ao, %i.ap
  %i.ci = fsub reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.cj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cf, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ci, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ch, i64 3
  %i.cn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cm)
  %i.co = fsub reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.co)
  %i.cq = fsub reassoc nsz arcp contract afn float %i.aq, %i.ap
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cq)
  %op.rdx135 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.cp, <4 x float> %i.cn)
  %op.rdx136 = fadd reassoc nsz arcp contract afn float %op.rdx135, %i.cr
  %i.cs = fmul reassoc nsz arcp contract afn float %op.rdx136, f0x3E2AAAAB
  %i.ct = fcmp reassoc nsz arcp contract afn olt float %i.cs, %5
  %i.cu = fcmp reassoc nsz arcp contract afn olt float %i.ce, %5
  %or.cond121.us = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond121.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cv = fmul reassoc nsz arcp contract afn float %i.bp, %i.bf
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cv, %i.bj
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cw, float 0.000000e+00)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  store float %i.cx, ptr %i.cy, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cz = add i64 %.0112123.us, 2                 ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.t
  br i1 %i.da, label %bb.b, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f
  %i.db = icmp ult i64 %i.ae, %i.p
  br i1 %i.db, label %.preheader.us, label %._crit_edge125

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.0111124 = phi i64 [ %i.dc, %.preheader ], [ %i.r, %.preheader.lr.ph ]
  %i.dc = add i64 %.0111124, 2                    ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.p
  br i1 %i.dd, label %.preheader, label %._crit_edge125

._crit_edge125:                                   ; preds = %.preheader, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @vng_interpolate(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x [16 x ptr]], align 16       ; 4 uses
  %i.b = alloca [8 x float], align 16             ; 14 uses
  %i.c = alloca [4 x float], align 16             ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not406 = icmp eq i32 %4, 9                    ; 4 uses
  switch i32 %4, label %switch.edge [
    i32 -505290271, label %switch.edge.thread
    i32 -1263225676, label %switch.edge.thread
    i32 1263225675, label %switch.edge.thread
    i32 505290270, label %switch.edge.thread
    i32 -1667457892, label %switch.edge.thread
    i32 1667457891, label %switch.edge.thread
    i32 909522486, label %switch.edge.thread
    i32 -909522487, label %switch.edge.thread
  ]

switch.edge.thread:                               ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = select i1 %.not406, i32 6, i32 8
  %i.e = select i1 %.not406, i32 6, i32 2
  %i.f = select i1 %.not406, i64 3, i64 4
  br label %bb.e

switch.edge:                                      ; preds = %bb.a
  br i1 %.not406, label %bb.e, label %bb.b

bb.b:                                             ; preds = %switch.edge
  %i.g = and i32 %4, 3
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = or i32 %4, 50529027
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = or i32 %4, 202116108
  br label %bb.e

bb.e:                                             ; preds = %switch.edge.thread, %switch.edge, %bb.c, %bb.d
  %spec.select332 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ false, %switch.edge ], [ false, %switch.edge.thread ]
  %.pre478 = phi i64 [ 4, %bb.d ], [ 4, %bb.c ], [ 3, %switch.edge ], [ %i.f, %switch.edge.thread ] ; 28 uses
  %i.k = phi i32 [ 2, %bb.d ], [ 2, %bb.c ], [ 6, %switch.edge ], [ %i.e, %switch.edge.thread ] ; 3 uses
  %i.l = phi i32 [ 8, %bb.d ], [ 8, %bb.c ], [ 6, %switch.edge ], [ %i.d, %switch.edge.thread ] ; 3 uses
  %.0270 = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ 9, %switch.edge ], [ %4, %switch.edge.thread ] ; 21 uses
  tail call fastcc void @_vng_lininterpolate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.0270, ptr noundef %5, i32 noundef 1000000)
  %.not = icmp eq i32 %6, 0
  %i.m = sext i32 %2 to i64                       ; 4 uses
  br i1 %.not, label %bb.f, label %._crit_edge470

bb.f:                                             ; preds = %bb.e
  %i.n = mul nsw i64 %i.m, 48                     ; 2 uses
  %narrow = mul nuw nsw i32 %i.k, 1280
  %narrow300 = mul nuw nsw i32 %narrow, %i.l
  %i.o = zext nneg i32 %narrow300 to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = tail call ptr @dt_alloc_aligned(i64 noundef %i.p) #27 ; 7 uses
  %.not301 = icmp eq ptr %i.q, null
  br i1 %.not301, label %bb.g, label %.preheader367.preheader

.preheader367.preheader:                          ; preds = %bb.f
  %i.r = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %.idx = shl nsw i64 %i.m, 5
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %.idx
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.u = icmp eq i32 %.0270, 9                    ; 3 uses
  %wide.trip.count418 = zext nneg i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %i.v = sub nsw i32 0, %2                        ; 2 uses
  %i.w = xor i32 %2, -1                           ; 2 uses
  %i.x = shl nsw i32 %i.w, 2
  %i.y = shl nsw i32 %i.w, 3
  %i.z = shl nsw i32 %i.v, 2
  %i.aa = shl nsw i32 %i.v, 3
  %i.ab = sub i32 1, %2                           ; 2 uses
  %i.ac = shl nsw i32 %i.ab, 2
  %i.ad = shl nsw i32 %i.ab, 3
  %i.ae = add nsw i32 %2, 1                       ; 2 uses
  %i.af = shl nsw i32 %i.ae, 2
  %i.ag = shl nsw i32 %i.ae, 3
  %i.ah = shl nsw i32 %2, 2
  %i.ai = shl nsw i32 %2, 3
  %i.aj = add nsw i32 %2, -1                      ; 2 uses
  %i.ak = shl nsw i32 %i.aj, 2
  %i.al = shl nsw i32 %i.aj, 3
  %i.am = insertelement <2 x i32> poison, i32 %.0270, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ao = xor i32 %2, -1                          ; 2 uses
  %i.ap = shl nsw i32 %i.ao, 2
  %i.aq = shl nsw i32 %i.ao, 3
  %i.ar = sub nsw i32 0, %2                       ; 2 uses
  %i.as = shl nsw i32 %i.ar, 2
  %i.at = shl nsw i32 %i.ar, 3
  %i.au = sub i32 1, %2                           ; 2 uses
  %i.av = shl nsw i32 %i.au, 2
  %i.aw = shl nsw i32 %i.au, 3
  %i.ax = add nsw i32 %2, 1                       ; 2 uses
  %i.ay = shl nsw i32 %i.ax, 2
  %i.az = shl nsw i32 %i.ax, 3
  %i.ba = shl nsw i32 %2, 2
  %i.bb = shl nsw i32 %2, 3
  %i.bc = add nsw i32 %2, -1                      ; 2 uses
  %i.bd = shl nsw i32 %i.bc, 2
  %i.be = shl nsw i32 %i.bc, 3
  br label %.preheader366

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.211) #27
  br label %.loopexit

.preheader366:                                    ; preds = %.preheader367.preheader, %bb.h
  %indvars.iv415 = phi i64 [ 0, %.preheader367.preheader ], [ %indvars.iv.next416, %bb.h ] ; 8 uses
  %.0268383 = phi ptr [ %i.t, %.preheader367.preheader ], [ %.us-phi, %bb.h ]
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %indvars.iv415
  %i.bg = shl nuw nsw i64 %indvars.iv415, 1       ; 8 uses
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 14                       ; 3 uses
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.bj, 2
  %i.bl = and i32 %i.bk, 14
  %i.bm = trunc i64 %indvars.iv415 to i32
  %i.bn = add i32 %i.bm, 600                      ; 3 uses
  %i.bo = urem i32 %i.bn, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.bp ; 2 uses
  %i.br = trunc i64 %indvars.iv415 to i32
  %i.bs = add i32 %i.br, 601
  %i.bt = urem i32 %i.bs, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.bu
  %i.bw = trunc nuw nsw i64 %indvars.iv415 to i32 ; 2 uses
  %indvars.iv415.tr = trunc i64 %indvars.iv415 to i32
  %i.bx = shl i32 %indvars.iv415.tr, 1
  %i.by = add i32 %i.bx, 14
  %i.bz = and i32 %i.by, 14                       ; 3 uses
  %i.ca = trunc i64 %i.bg to i32
  %i.cb = add i32 %i.ca, 12
  %i.cc = and i32 %i.cb, 14
  %i.cd = trunc i64 %i.bg to i32
  %i.ce = add i32 %i.cd, 12
  %i.cf = and i32 %i.ce, 14
  %i.cg = trunc i64 %i.bg to i32
  %i.ch = add i32 %i.cg, 12
  %i.ci = and i32 %i.ch, 14
  %indvars.iv415.tr510 = trunc i64 %indvars.iv415 to i32
  %i.cj = shl i32 %indvars.iv415.tr510, 1
  %i.ck = add i32 %i.cj, 2
  %i.cl = and i32 %i.ck, 14                       ; 3 uses
  %i.cm = trunc i64 %i.bg to i32
  %i.cn = add i32 %i.cm, 4
  %i.co = and i32 %i.cn, 14
  %i.cp = trunc i64 %i.bg to i32
  %i.cq = add i32 %i.cp, 4
  %i.cr = and i32 %i.cq, 14
  %i.cs = trunc i64 %i.bg to i32
  %i.ct = add i32 %i.cs, 4
  %i.cu = and i32 %i.ct, 14
  %i.cv = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  br label %bb.i

.preheader365:                                    ; preds = %bb.h
  %i.cw = icmp sgt i32 %3, 4
  br i1 %i.cw, label %.preheader364.lr.ph, label %.preheader365.._crit_edge402_crit_edge

.preheader365.._crit_edge402_crit_edge:           ; preds = %.preheader365
  %.pre471 = shl i32 %2, 2                        ; 2 uses
  %.pre472 = add i32 %.pre471, -16
  %.pre474 = sext i32 %.pre472 to i64
  br label %._crit_edge402

.preheader364.lr.ph:                              ; preds = %.preheader365
  %i.cx = add nsw i32 %3, -2
  %i.cy = add nsw i32 %2, -2
  %i.cz = icmp sgt i32 %2, 4
  %i.da = shl i32 %2, 2                           ; 3 uses
  %i.db = add i32 %i.da, -16
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %wide.trip.count450 = zext nneg i32 %i.cx to i64
  %wide.trip.count441 = zext nneg i32 %i.cy to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.phi.trans.insert457 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert459 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.phi.trans.insert461 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert463 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.phi.trans.insert465 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.phi.trans.insert467 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.dd = add nsw i64 %.pre478, -1                ; 8 uses
  %xtraiter = and i64 %.pre478, 1
  %i.de = icmp eq i64 %i.dd, 0
  %unroll_iter = and i64 %.pre478, 6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod673 = trunc i64 %.pre478 to i1
  %xtraiter678 = and i64 %.pre478, 1
  %i.df = icmp eq i64 %i.dd, 0
  %unroll_iter681 = and i64 %.pre478, 6
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  %lcmp.mod680 = trunc i64 %.pre478 to i1
  %xtraiter685 = and i64 %.pre478, 1
  %i.dg = icmp eq i64 %i.dd, 0
  %unroll_iter689 = and i64 %.pre478, 6
  %lcmp.mod686.not = icmp eq i64 %xtraiter685, 0
  %lcmp.mod688 = trunc i64 %.pre478 to i1
  %xtraiter693 = and i64 %.pre478, 1
  %i.dh = icmp eq i64 %i.dd, 0
  %unroll_iter697 = and i64 %.pre478, 6
  %lcmp.mod694.not = icmp eq i64 %xtraiter693, 0
  %lcmp.mod696 = trunc i64 %.pre478 to i1
  %xtraiter701 = and i64 %.pre478, 1
  %i.di = icmp eq i64 %i.dd, 0
  %unroll_iter705 = and i64 %.pre478, 6
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  %lcmp.mod704 = trunc i64 %.pre478 to i1
  %xtraiter709 = and i64 %.pre478, 1
  %i.dj = icmp eq i64 %i.dd, 0
  %unroll_iter713 = and i64 %.pre478, 6
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  %lcmp.mod712 = trunc i64 %.pre478 to i1
  %xtraiter717 = and i64 %.pre478, 1
  %i.dk = icmp eq i64 %i.dd, 0
  %unroll_iter721 = and i64 %.pre478, 6
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  %lcmp.mod720 = trunc i64 %.pre478 to i1
  %xtraiter725 = and i64 %.pre478, 1
  %i.dl = icmp eq i64 %i.dd, 0
  %unroll_iter729 = and i64 %.pre478, 6
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  %lcmp.mod728 = trunc i64 %.pre478 to i1
  %xtraiter733 = and i64 %.pre478, 3              ; 3 uses
  %i.dm = icmp samesign ult i64 %.pre478, 4
  %unroll_iter737 = and i64 %.pre478, 4
  %lcmp.mod734.not = icmp eq i64 %xtraiter733, 0
  %lcmp.mod736 = icmp ne i64 %xtraiter733, 0
  br label %.preheader364

bb.h:                                             ; preds = %.split379.us
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.preheader365, label %.preheader366

bb.i:                                             ; preds = %.preheader366, %.split379.us
  %indvars.iv = phi i64 [ 0, %.preheader366 ], [ %indvars.iv.next.pre-phi, %.split379.us ] ; 7 uses
  %.1269381 = phi ptr [ %.0268383, %.preheader366 ], [ %.us-phi, %.split379.us ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store ptr %.1269381, ptr %i.dn, align 8, !tbaa !600
end_hunk_1
begin_hunk_2_@vng_interpolate:bb.a
.outer:                                           ; preds = %bb.am, %bb.i
  %.2373.ph = phi ptr [ %.6, %bb.am ], [ %.1269381, %bb.i ] ; 11 uses
  %.0282372.ph = phi ptr [ %i.mh, %bb.am ], [ @terms, %bb.i ]
  %.0286371.ph = phi i32 [ %i.pz, %bb.am ], [ 0, %bb.i ]
  br label %.backedge

.thread517:                                       ; preds = %fcol.exit311
  %i.qa = add nuw nsw i32 %.0286371, 1            ; 2 uses
  %exitcond.not519 = icmp eq i32 %i.qa, 64
  br i1 %exitcond.not519, label %.thread520, label %.backedge.backedge

.thread520:                                       ; preds = %.thread517
  %i.qb = getelementptr inbounds nuw i8, ptr %.2373.ph, i64 4
  store i32 2147483647, ptr %.2373.ph, align 4, !tbaa !32
  br label %fcol.exit323.us.preheader

.thread:                                          ; preds = %fcol.exit311.thread
  %i.qc = add nuw nsw i32 %.0286371, 1            ; 2 uses
  %exitcond.not512 = icmp eq i32 %i.qc, 64
  br i1 %exitcond.not512, label %.thread514, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread, %.thread517
  %.0286371.be = phi i32 [ %i.qc, %.thread ], [ %i.qa, %.thread517 ]
  br label %.backedge

.thread514:                                       ; preds = %.thread
  %i.qd = getelementptr inbounds nuw i8, ptr %.2373.ph, i64 4
  store i32 2147483647, ptr %.2373.ph, align 4, !tbaa !32
  br label %fcol.exit323.thread.preheader

.split379.us:                                     ; preds = %fcol.exit323.thread.7, %.split379.us.loopexit
  %indvars.iv.next.pre-phi = phi i64 [ %i.qt, %fcol.exit323.thread.7 ], [ %.pre469, %.split379.us.loopexit ] ; 2 uses
  %.us-phi = phi ptr [ %.8.7, %fcol.exit323.thread.7 ], [ %.8.us.7, %.split379.us.loopexit ] ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond414.not, label %bb.h, label %bb.i

fcol.exit326:                                     ; preds = %fcol.exit323.thread.preheader
  %.tr.i.i324 = or disjoint i32 %i.cc, %i.dp
  %i.qe = shl nuw nsw i32 %.tr.i.i324, 1
  %i.qf = lshr i32 %.0270, %i.qe
  %i.qg = and i32 %i.qf, 3
  %i.qh = icmp eq i32 %i.qg, %i.ej
  %i.qi = or disjoint i32 %i.ej, %i.y
  %spec.select = select i1 %i.qh, i32 %i.qi, i32 0
  br label %fcol.exit323.thread.1

fcol.exit323.thread.1:                            ; preds = %fcol.exit326, %fcol.exit323.thread.preheader
  %storemerge = phi i32 [ 0, %fcol.exit323.thread.preheader ], [ %spec.select, %fcol.exit326 ]
  %.8 = getelementptr inbounds nuw i8, ptr %.6513516, i64 12
  store i32 %storemerge, ptr %i.ek, align 4, !tbaa !32
  %i.qj = getelementptr inbounds nuw i8, ptr %.6513516, i64 16
  store i32 %i.z, ptr %.8, align 4, !tbaa !32
  %.tr.i.i321.1 = or disjoint i32 %i.bz, %i.dp
  %i.qk = shl nuw nsw i32 %.tr.i.i321.1, 1
  %i.ql = lshr i32 %.0270, %i.qk
  %i.qm = and i32 %i.ql, 3
  %.not306356.1 = icmp eq i32 %i.qm, %i.ej
  br i1 %.not306356.1, label %fcol.exit323.thread.2, label %fcol.exit326.1

fcol.exit326.1:                                   ; preds = %fcol.exit323.thread.1
  %.tr.i.i324.1 = or disjoint i32 %i.cf, %i.dp
  %i.qn = shl nuw nsw i32 %.tr.i.i324.1, 1
  %i.qo = lshr i32 %.0270, %i.qn
  %i.qp = and i32 %i.qo, 3
  %i.qq = icmp eq i32 %i.qp, %i.ej
  %i.qr = or disjoint i32 %i.ej, %i.aa
  %spec.select581 = select i1 %i.qq, i32 %i.qr, i32 0
  br label %fcol.exit323.thread.2

fcol.exit323.thread.2:                            ; preds = %fcol.exit326.1, %fcol.exit323.thread.1
  %storemerge.1 = phi i32 [ 0, %fcol.exit323.thread.1 ], [ %spec.select581, %fcol.exit326.1 ]
  %.8.1 = getelementptr inbounds nuw i8, ptr %.6513516, i64 20
  store i32 %storemerge.1, ptr %i.qj, align 4, !tbaa !32
  %i.qs = getelementptr inbounds nuw i8, ptr %.6513516, i64 24
  store i32 %i.ac, ptr %.8.1, align 4, !tbaa !32
  %i.qt = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.qu = trunc nuw nsw i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 1                        ; 3 uses
  %.tr.i.i321.2 = or disjoint i32 %i.bz, %i.qv
  %i.qw = shl nuw nsw i32 %.tr.i.i321.2, 1
  %i.qx = lshr i32 %.0270, %i.qw
  %i.qy = and i32 %i.qx, 3
  %.not306356.2 = icmp eq i32 %i.qy, %i.ej
  br i1 %.not306356.2, label %fcol.exit323.thread.3, label %fcol.exit326.2

fcol.exit326.2:                                   ; preds = %fcol.exit323.thread.2
  %.tr.i.i324.2 = or disjoint i32 %i.ci, %i.dp
  %i.qz = shl nuw nsw i32 %.tr.i.i324.2, 1
  %i.ra = lshr i32 %.0270, %i.qz
  %i.rb = and i32 %i.ra, 3
  %i.rc = icmp eq i32 %i.rb, %i.ej
  %i.rd = or disjoint i32 %i.ej, %i.ad
  %spec.select582 = select i1 %i.rc, i32 %i.rd, i32 0
  br label %fcol.exit323.thread.3

fcol.exit323.thread.3:                            ; preds = %fcol.exit326.2, %fcol.exit323.thread.2
  %storemerge.2 = phi i32 [ 0, %fcol.exit323.thread.2 ], [ %spec.select582, %fcol.exit326.2 ]
  %.8.2 = getelementptr inbounds nuw i8, ptr %.6513516, i64 28
  store i32 %storemerge.2, ptr %i.qs, align 4, !tbaa !32
  %i.re = getelementptr inbounds nuw i8, ptr %.6513516, i64 32
  store i32 4, ptr %.8.2, align 4, !tbaa !32
  %.tr.i.i321.3 = or disjoint i32 %i.bi, %i.qv
  %i.rf = shl nuw nsw i32 %.tr.i.i321.3, 1
  %i.rg = lshr i32 %.0270, %i.rf
  %i.rh = and i32 %i.rg, 3
  %.not306356.3 = icmp eq i32 %i.rh, %i.ej
  %i.ri = or disjoint i32 %i.ej, 8
  %spec.select583 = select i1 %.not306356.3, i32 0, i32 %i.ri
  %.8.3 = getelementptr inbounds nuw i8, ptr %.6513516, i64 36
  store i32 %spec.select583, ptr %i.re, align 4, !tbaa !32
  %i.rj = getelementptr inbounds nuw i8, ptr %.6513516, i64 40
  store i32 %i.af, ptr %.8.3, align 4, !tbaa !32
  %.tr.i.i321.4 = or disjoint i32 %i.cl, %i.qv
  %i.rk = shl nuw nsw i32 %.tr.i.i321.4, 1
  %i.rl = lshr i32 %.0270, %i.rk
  %i.rm = and i32 %i.rl, 3
  %.not306356.4 = icmp eq i32 %i.rm, %i.ej
  br i1 %.not306356.4, label %fcol.exit323.thread.5, label %fcol.exit326.4

fcol.exit326.4:                                   ; preds = %fcol.exit323.thread.3
  %.tr.i.i324.4 = or disjoint i32 %i.co, %i.dp
  %i.rn = shl nuw nsw i32 %.tr.i.i324.4, 1
  %i.ro = lshr i32 %.0270, %i.rn
  %i.rp = and i32 %i.ro, 3
  %i.rq = icmp eq i32 %i.rp, %i.ej
  %i.rr = or disjoint i32 %i.ej, %i.ag
  %spec.select584 = select i1 %i.rq, i32 %i.rr, i32 0
  br label %fcol.exit323.thread.5

fcol.exit323.thread.5:                            ; preds = %fcol.exit326.4, %fcol.exit323.thread.3
  %storemerge.4 = phi i32 [ 0, %fcol.exit323.thread.3 ], [ %spec.select584, %fcol.exit326.4 ]
  %.8.4 = getelementptr inbounds nuw i8, ptr %.6513516, i64 44
  store i32 %storemerge.4, ptr %i.rj, align 4, !tbaa !32
  %i.rs = getelementptr inbounds nuw i8, ptr %.6513516, i64 48
  store i32 %i.ah, ptr %.8.4, align 4, !tbaa !32
  %.tr.i.i321.5 = or disjoint i32 %i.cl, %i.dp
  %i.rt = shl nuw nsw i32 %.tr.i.i321.5, 1
  %i.ru = lshr i32 %.0270, %i.rt
  %i.rv = and i32 %i.ru, 3
  %.not306356.5 = icmp eq i32 %i.rv, %i.ej
  br i1 %.not306356.5, label %fcol.exit323.thread.6, label %fcol.exit326.5

fcol.exit326.5:                                   ; preds = %fcol.exit323.thread.5
  %.tr.i.i324.5 = or disjoint i32 %i.cr, %i.dp
  %i.rw = shl nuw nsw i32 %.tr.i.i324.5, 1
  %i.rx = lshr i32 %.0270, %i.rw
  %i.ry = and i32 %i.rx, 3
  %i.rz = icmp eq i32 %i.ry, %i.ej
  %i.sa = or disjoint i32 %i.ej, %i.ai
  %spec.select585 = select i1 %i.rz, i32 %i.sa, i32 0
  br label %fcol.exit323.thread.6

fcol.exit323.thread.6:                            ; preds = %fcol.exit326.5, %fcol.exit323.thread.5
  %storemerge.5 = phi i32 [ 0, %fcol.exit323.thread.5 ], [ %spec.select585, %fcol.exit326.5 ]
  %.8.5 = getelementptr inbounds nuw i8, ptr %.6513516, i64 52
  store i32 %storemerge.5, ptr %i.rs, align 4, !tbaa !32
  %i.sb = getelementptr inbounds nuw i8, ptr %.6513516, i64 56
  store i32 %i.ak, ptr %.8.5, align 4, !tbaa !32
  %.tr.i.i321.6 = or disjoint i32 %i.cl, %i.en
  %i.sc = shl nuw nsw i32 %.tr.i.i321.6, 1
  %i.sd = lshr i32 %.0270, %i.sc
  %i.se = and i32 %i.sd, 3
  %.not306356.6 = icmp eq i32 %i.se, %i.ej
  br i1 %.not306356.6, label %fcol.exit323.thread.7, label %fcol.exit326.6

fcol.exit326.6:                                   ; preds = %fcol.exit323.thread.6
  %.tr.i.i324.6 = or disjoint i32 %i.cu, %i.dp
  %i.sf = shl nuw nsw i32 %.tr.i.i324.6, 1
  %i.sg = lshr i32 %.0270, %i.sf
  %i.sh = and i32 %i.sg, 3
  %i.si = icmp eq i32 %i.sh, %i.ej
  %i.sj = or disjoint i32 %i.ej, %i.al
  %spec.select586 = select i1 %i.si, i32 %i.sj, i32 0
  br label %fcol.exit323.thread.7

fcol.exit323.thread.7:                            ; preds = %fcol.exit326.6, %fcol.exit323.thread.6
  %storemerge.6 = phi i32 [ 0, %fcol.exit323.thread.6 ], [ %spec.select586, %fcol.exit326.6 ]
  %.8.6 = getelementptr inbounds nuw i8, ptr %.6513516, i64 60
  store i32 %storemerge.6, ptr %i.sb, align 4, !tbaa !32
  %i.sk = getelementptr inbounds nuw i8, ptr %.6513516, i64 64
  store i32 -4, ptr %.8.6, align 4, !tbaa !32
  %.tr.i.i321.7 = or disjoint i32 %i.bi, %i.en
  %i.sl = shl nuw nsw i32 %.tr.i.i321.7, 1
  %i.sm = lshr i32 %.0270, %i.sl
  %i.sn = and i32 %i.sm, 3
  %.not306356.7 = icmp eq i32 %i.sn, %i.ej
  %i.so = or disjoint i32 %i.ej, -8
  %spec.select587 = select i1 %.not306356.7, i32 0, i32 %i.so
  %.8.7 = getelementptr inbounds nuw i8, ptr %.6513516, i64 68
  store i32 %spec.select587, ptr %i.sk, align 4, !tbaa !32
  br label %.split379.us

.preheader364:                                    ; preds = %.preheader364.lr.ph, %bb.ex
  %.sroa.11.0 = phi ptr [ %i.s, %.preheader364.lr.ph ], [ %.sroa.0.0, %bb.ex ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.r, %.preheader364.lr.ph ], [ %.sroa.11.0, %bb.ex ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.q, %.preheader364.lr.ph ], [ %.sroa.7.0, %bb.ex ] ; 2 uses
  %indvars.iv447 = phi i64 [ 2, %.preheader364.lr.ph ], [ %indvars.iv.next448, %bb.ex ] ; 7 uses
  br i1 %i.cz, label %.lr.ph398, label %._crit_edge399

.lr.ph398:                                        ; preds = %.preheader364
  %i.sp = trunc nuw nsw i64 %indvars.iv447 to i32
  %7 = urem i32 %i.sp, %i.l
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %8
  %indvars.iv447.tr = trunc i64 %indvars.iv447 to i32
  %10 = shl i32 %indvars.iv447.tr, 1
  %11 = and i32 %10, 14
  %12 = trunc i64 %indvars.iv447 to i32
  %13 = add i32 %12, 600
  %14 = urem i32 %13, 6
  %i.sq = zext nneg i32 %14 to i64
  %i.sr = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.sq
  %i.ss = trunc i64 %indvars.iv447 to i32
  %i.st = mul i32 %2, %i.ss
  br label %bb.an

._crit_edge402:                                   ; preds = %bb.ex, %.preheader365.._crit_edge402_crit_edge
  %.pre-phi475 = phi i64 [ %.pre474, %.preheader365.._crit_edge402_crit_edge ], [ %i.dc, %bb.ex ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre471, %.preheader365.._crit_edge402_crit_edge ], [ %i.da, %bb.ex ] ; 2 uses
  %.sroa.7.1 = phi ptr [ %i.r, %.preheader365.._crit_edge402_crit_edge ], [ %.sroa.11.0, %bb.ex ]
  %.sroa.0.1 = phi ptr [ %i.q, %.preheader365.._crit_edge402_crit_edge ], [ %.sroa.7.0, %bb.ex ]
  %i.su = add i32 %3, 1073741820
  %i.sv = mul i32 %.pre-phi, %i.su
  %i.sw = add i32 %i.sv, 8
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.sy, ptr noundef nonnull %i.sz, i64 noundef %.pre-phi475) #27
  %i.ta = add i32 %3, 1073741821
  %i.tb = mul i32 %.pre-phi, %i.ta
  %i.tc = add i32 %i.tb, 8
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %0, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.7.1, i64 32
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.te, ptr noundef nonnull %i.tf, i64 noundef %.pre-phi475) #27
  tail call void @free(ptr noundef %i.q) #27
  br label %._crit_edge470

._crit_edge399:                                   ; preds = %bb.ev, %.preheader364
  %i.tg = icmp samesign ugt i64 %indvars.iv447, 3
  br i1 %i.tg, label %bb.ew, label %bb.ex

bb.an:                                            ; preds = %.lr.ph398, %bb.ev
  %indvars.iv438 = phi i64 [ 2, %.lr.ph398 ], [ %indvars.iv.next439, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.th = trunc i64 %indvars.iv438 to i32
  %i.ti = add i32 %i.st, %i.th
  %i.tj = shl nsw i32 %i.ti, 2
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tk ; 60 uses
  %i.tm = trunc nuw nsw i64 %indvars.iv438 to i32 ; 2 uses
  %i.tn = urem i32 %i.tm, %i.k
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !600 ; 3 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !32 ; 2 uses
  %.not302385 = icmp eq i32 %i.tr, 2147483647
  br i1 %.not302385, label %._crit_edge, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.an, %.loopexit362
  %i.ts = phi i32 [ %i.vf, %.loopexit362 ], [ %i.tr, %bb.an ]
  %.9386 = phi ptr [ %.11, %.loopexit362 ], [ %i.tq, %bb.an ] ; 6 uses
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !22
  %i.tw = getelementptr inbounds nuw i8, ptr %.9386, i64 4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !32
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !22
  %i.ub = fsub reassoc nsz arcp contract afn float %i.tv, %i.ua
  %i.uc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ub)
  %i.ud = getelementptr inbounds nuw i8, ptr %.9386, i64 8
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !32
  %i.uf = sitofp reassoc nsz arcp contract afn i32 %i.ue to float
  %i.ug = fmul reassoc nsz arcp contract afn float %i.uc, %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.9386, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !32
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uj ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !22
  %i.um = fadd reassoc nsz arcp contract afn float %i.ul, %i.ug
  store float %i.um, ptr %i.uk, align 4, !tbaa !22
  %i.un = getelementptr inbounds nuw i8, ptr %.9386, i64 20 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.9386, i64 16
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !32 ; 2 uses
  %i.uq = icmp eq i32 %i.up, -1
  br i1 %i.uq, label %.loopexit362, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph387
  %i.ur = sext i32 %i.up to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ur ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !22
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.ug
  store float %i.uu, ptr %i.us, align 4, !tbaa !22
  %i.uv = getelementptr inbounds nuw i8, ptr %.9386, i64 24 ; 2 uses
  %i.uw = load i32, ptr %i.un, align 4, !tbaa !32 ; 2 uses
  %.not305384 = icmp eq i32 %i.uw, -1
  br i1 %.not305384, label %.loopexit362, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %.lr.ph
  %i.ux = phi i32 [ %i.ve, %.lr.ph ], [ %i.uw, %bb.ao ]
  %i.uy = phi ptr [ %i.vd, %.lr.ph ], [ %i.uv, %bb.ao ] ; 2 uses
  %i.uz = sext i32 %i.ux to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uz ; 2 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !22
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, %i.ug
  store float %i.vc, ptr %i.va, align 4, !tbaa !22
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 4 ; 2 uses
  %i.ve = load i32, ptr %i.uy, align 4, !tbaa !32 ; 2 uses
  %.not305 = icmp eq i32 %i.ve, -1
  br i1 %.not305, label %.loopexit362, label %.lr.ph

.loopexit362:                                     ; preds = %.lr.ph, %bb.ao, %.lr.ph387
  %.11 = phi ptr [ %i.un, %.lr.ph387 ], [ %i.uv, %bb.ao ], [ %i.vd, %.lr.ph ] ; 3 uses
  %i.vf = load i32, ptr %.11, align 4, !tbaa !32  ; 2 uses
  %.not302 = icmp eq i32 %i.vf, 2147483647
  br i1 %.not302, label %._crit_edge.loopexit, label %.lr.ph387

._crit_edge.loopexit:                             ; preds = %.loopexit362
  %.pre = load float, ptr %i.b, align 16, !tbaa !22
  %.pre456 = load float, ptr %.phi.trans.insert, align 4, !tbaa !22
  %.pre458 = load float, ptr %.phi.trans.insert457, align 8, !tbaa !22
  %.pre460 = load float, ptr %.phi.trans.insert459, align 4, !tbaa !22
  %.pre462 = load float, ptr %.phi.trans.insert461, align 16, !tbaa !22
  %.pre464 = load float, ptr %.phi.trans.insert463, align 4, !tbaa !22
  %.pre466 = load float, ptr %.phi.trans.insert465, align 8, !tbaa !22
  %.pre468 = load float, ptr %.phi.trans.insert467, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.an
  %i.vg = phi float [ 0.000000e+00, %bb.an ], [ %.pre468, %._crit_edge.loopexit ] ; 5 uses
  %i.vh = phi float [ 0.000000e+00, %bb.an ], [ %.pre466, %._crit_edge.loopexit ] ; 5 uses
  %i.vi = phi float [ 0.000000e+00, %bb.an ], [ %.pre464, %._crit_edge.loopexit ] ; 5 uses
  %i.vj = phi float [ 0.000000e+00, %bb.an ], [ %.pre462, %._crit_edge.loopexit ] ; 5 uses
  %i.vk = phi float [ 0.000000e+00, %bb.an ], [ %.pre460, %._crit_edge.loopexit ] ; 5 uses
  %i.vl = phi float [ 0.000000e+00, %bb.an ], [ %.pre458, %._crit_edge.loopexit ] ; 5 uses
  %i.vm = phi float [ 0.000000e+00, %bb.an ], [ %.pre456, %._crit_edge.loopexit ] ; 5 uses
  %i.vn = phi float [ 0.000000e+00, %bb.an ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.9.lcssa = phi ptr [ %i.tq, %bb.an ], [ %.11, %._crit_edge.loopexit ] ; 16 uses
  %i.vo = fcmp reassoc nsz arcp contract afn olt float %i.vn, %i.vm
  %.1272 = select nsz i1 %i.vo, float %i.vm, float %i.vn ; 2 uses
  %i.vp = fcmp reassoc nsz arcp contract afn olt float %.1272, %i.vl
  %.1272.1 = select nsz i1 %i.vp, float %i.vl, float %.1272 ; 2 uses
  %i.vq = fcmp reassoc nsz arcp contract afn olt float %.1272.1, %i.vk
  %.1272.2 = select nsz i1 %i.vq, float %i.vk, float %.1272.1 ; 2 uses
  %i.vr = fcmp reassoc nsz arcp contract afn olt float %.1272.2, %i.vj
  %.1272.3 = select nsz i1 %i.vr, float %i.vj, float %.1272.2 ; 2 uses
  %i.vs = fcmp reassoc nsz arcp contract afn olt float %.1272.3, %i.vi
  %.1272.4 = select nsz i1 %i.vs, float %i.vi, float %.1272.3 ; 2 uses
  %i.vt = fcmp reassoc nsz arcp contract afn olt float %.1272.4, %i.vh
  %.1272.5 = select nsz i1 %i.vt, float %i.vh, float %.1272.4 ; 2 uses
  %i.vu = fcmp reassoc nsz arcp contract afn olt float %.1272.5, %i.vg
  %.1272.6 = select nsz i1 %i.vu, float %i.vg, float %.1272.5 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 4 ; 3 uses
  %i.vw = fcmp reassoc nsz arcp contract afn oeq float %.1272.6, 0.000000e+00
  br i1 %i.vw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11.0, i64 %indvars.iv438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vx, ptr noundef nonnull align 4 dereferenceable(16) %i.tl, i64 16, i1 false)
  br label %bb.ev

bb.aq:                                            ; preds = %._crit_edge
  %i.vy = fcmp reassoc nsz arcp contract afn ogt float %i.vn, %i.vm
  %.1274 = select nsz i1 %i.vy, float %i.vm, float %i.vn ; 2 uses
  %i.vz = fcmp reassoc nsz arcp contract afn ogt float %.1274, %i.vl
  %.1274.1 = select nsz i1 %i.vz, float %i.vl, float %.1274 ; 2 uses
  %i.wa = fcmp reassoc nsz arcp contract afn ogt float %.1274.1, %i.vk
  %.1274.2 = select nsz i1 %i.wa, float %i.vk, float %.1274.1 ; 2 uses
  %i.wb = fcmp reassoc nsz arcp contract afn ogt float %.1274.2, %i.vj
  %.1274.3 = select nsz i1 %i.wb, float %i.vj, float %.1274.2 ; 2 uses
  %i.wc = fcmp reassoc nsz arcp contract afn ogt float %.1274.3, %i.vi
  %.1274.4 = select nsz i1 %i.wc, float %i.vi, float %.1274.3 ; 2 uses
  %i.wd = fcmp reassoc nsz arcp contract afn ogt float %.1274.4, %i.vh
  %.1274.5 = select nsz i1 %i.wd, float %i.vh, float %.1274.4 ; 2 uses
  %i.we = fcmp reassoc nsz arcp contract afn ogt float %.1274.5, %i.vg
  %.1274.6 = select nsz i1 %i.we, float %i.vg, float %.1274.5
  %i.wf = fmul reassoc nsz arcp contract afn float %.1272.6, 5.000000e-01
  %i.wg = fadd reassoc nsz arcp contract afn float %i.wf, %.1274.6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %i.u, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.wh = trunc i64 %indvars.iv438 to i32
  %i.wi = add i32 %i.wh, 600
  %i.wj = urem i32 %i.wi, 6
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !169
  %i.wn = zext i8 %i.wm to i32
  br label %fcol.exit329

bb.as:                                            ; preds = %bb.aq
  %15 = and i32 %i.tm, 1
  %.tr.i.i327 = or disjoint i32 %15, %11
  %i.wo = shl nuw nsw i32 %.tr.i.i327, 1
  %i.wp = lshr i32 %.0270, %i.wo
  %i.wq = and i32 %i.wp, 3
  br label %fcol.exit329

fcol.exit329:                                     ; preds = %bb.ar, %bb.as
  %.0.i328 = phi i32 [ %i.wn, %bb.ar ], [ %i.wq, %bb.as ]
  %i.wr = zext nneg i32 %.0.i328 to i64           ; 47 uses
  %i.ws = fcmp reassoc nsz arcp contract afn ugt float %i.vn, %i.wg
  br i1 %i.ws, label %.loopexit523, label %.preheader

.preheader:                                       ; preds = %fcol.exit329
  %i.wt = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 8 ; 3 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.wr ; 3 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wr ; 6 uses
  br i1 %i.de, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.ba
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1676, %bb.ba ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.ba ], [ 0, %.preheader ]
  %i.ww = icmp eq i64 %indvars.iv424, %i.wr
  br i1 %i.ww, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.preheader.new
  %i.wx = load i32, ptr %i.wt, align 4, !tbaa !32 ; 2 uses
  %.not304 = icmp eq i32 %i.wx, 0
  br i1 %.not304, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.wy = load float, ptr %i.wu, align 4, !tbaa !22
  %i.wz = sext i32 %i.wx to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !22
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, %i.wy
  %i.xd = fmul reassoc nsz arcp contract afn float %i.xc, 5.000000e-01
  %i.xe = load float, ptr %i.wv, align 4, !tbaa !22
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xd, %i.xe
  store float %i.xf, ptr %i.wv, align 4, !tbaa !22
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %.preheader.new
  %i.xg = load i32, ptr %i.vv, align 4, !tbaa !32
  %i.xh = trunc nuw nsw i64 %indvars.iv424 to i32
  %i.xi = add nsw i32 %i.xg, %i.xh
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.xj
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !22
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv424 ; 2 uses
  %i.xn = load float, ptr %i.xm, align 8, !tbaa !22
  %i.xo = fadd reassoc nsz arcp contract afn float %i.xn, %i.xl
  store float %i.xo, ptr %i.xm, align 8, !tbaa !22
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %indvars.iv.next425 = or disjoint i64 %indvars.iv424, 1 ; 3 uses
  %i.xp = icmp eq i64 %indvars.iv.next425, %i.wr
  br i1 %i.xp, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.xq = load i32, ptr %i.wt, align 4, !tbaa !32 ; 2 uses
  %.not304.1675 = icmp eq i32 %i.xq, 0
  br i1 %.not304.1675, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xr = load float, ptr %i.wu, align 4, !tbaa !22
  %i.xs = sext i32 %i.xq to i64
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.xs
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !22
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xu, %i.xr
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xv, 5.000000e-01
  %i.xx = load float, ptr %i.wv, align 4, !tbaa !22
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xw, %i.xx
  store float %i.xy, ptr %i.wv, align 4, !tbaa !22
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.xz = load i32, ptr %i.vv, align 4, !tbaa !32
  %i.ya = trunc nuw nsw i64 %indvars.iv.next425 to i32
  %i.yb = add nsw i32 %i.xz, %i.ya
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.yc
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !22
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next425 ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !22
  %i.yh = fadd reassoc nsz arcp contract afn float %i.yg, %i.ye
  store float %i.yh, ptr %i.yf, align 4, !tbaa !22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %indvars.iv.next425.1676 = add nuw nsw i64 %indvars.iv424, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit523.loopexit.unr-lcssa, label %.preheader.new

.loopexit523.loopexit.unr-lcssa:                  ; preds = %bb.ba
  br i1 %lcmp.mod.not, label %.loopexit523, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit523.loopexit.unr-lcssa, %.preheader
  %indvars.iv424.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next425.1676, %.loopexit523.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod673)
  %i.yi = icmp eq i64 %indvars.iv424.epil.init, %i.wr
  br i1 %i.yi, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.epil.preheader
  %i.yj = load i32, ptr %i.wt, align 4, !tbaa !32 ; 2 uses
  %.not304.epil = icmp eq i32 %i.yj, 0
  br i1 %.not304.epil, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.yk = load float, ptr %i.wu, align 4, !tbaa !22
  %i.yl = sext i32 %i.yj to i64
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.yl
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !22
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yn, %i.yk
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yo, 5.000000e-01
  %i.yq = load float, ptr %i.wv, align 4, !tbaa !22
  %i.yr = fadd reassoc nsz arcp contract afn float %i.yp, %i.yq
  store float %i.yr, ptr %i.wv, align 4, !tbaa !22
  br label %.loopexit523

bb.bd:                                            ; preds = %bb.bb, %.epil.preheader
  %i.ys = load i32, ptr %i.vv, align 4, !tbaa !32
  %i.yt = trunc nuw nsw i64 %indvars.iv424.epil.init to i32
  %i.yu = add nsw i32 %i.ys, %i.yt
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.yv
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !22
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv424.epil.init ; 2 uses
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !22
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, %i.yx
  store float %i.za, ptr %i.yy, align 4, !tbaa !22
  br label %.loopexit523

.loopexit523:                                     ; preds = %.loopexit523.loopexit.unr-lcssa, %bb.bd, %bb.bc, %fcol.exit329
  %.1 = phi i32 [ 0, %fcol.exit329 ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %.loopexit523.loopexit.unr-lcssa ] ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 12 ; 3 uses
  %i.zc = fcmp reassoc nsz arcp contract afn ugt float %i.vm, %i.wg
  br i1 %i.zc, label %bb.bp, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit523
  %i.zd = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 16 ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.wr ; 3 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wr ; 6 uses
  br i1 %i.df, label %.epil.preheader677, label %.preheader.1.new

.preheader.1.new:                                 ; preds = %.preheader.1, %bb.bl
  %indvars.iv424.1 = phi i64 [ %indvars.iv.next425.1.1, %bb.bl ], [ 0, %.preheader.1 ] ; 5 uses
  %niter682 = phi i64 [ %niter682.next.1, %bb.bl ], [ 0, %.preheader.1 ]
  %i.zg = icmp eq i64 %indvars.iv424.1, %i.wr
  br i1 %i.zg, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.preheader.1.new
  %i.zh = load i32, ptr %i.zd, align 4, !tbaa !32 ; 2 uses
  %.not304.1 = icmp eq i32 %i.zh, 0
  br i1 %.not304.1, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.zi = load float, ptr %i.ze, align 4, !tbaa !22
  %i.zj = sext i32 %i.zh to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.zj
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !22
  %i.zm = fadd reassoc nsz arcp contract afn float %i.zl, %i.zi
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, 5.000000e-01
  %i.zo = load float, ptr %i.zf, align 4, !tbaa !22
  %i.zp = fadd reassoc nsz arcp contract afn float %i.zn, %i.zo
  store float %i.zp, ptr %i.zf, align 4, !tbaa !22
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be, %.preheader.1.new
  %i.zq = load i32, ptr %i.zb, align 4, !tbaa !32
  %i.zr = trunc nuw nsw i64 %indvars.iv424.1 to i32
  %i.zs = add nsw i32 %i.zq, %i.zr
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.zt
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !22
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv424.1 ; 2 uses
  %i.zx = load float, ptr %i.zw, align 8, !tbaa !22
  %i.zy = fadd reassoc nsz arcp contract afn float %i.zx, %i.zv
  store float %i.zy, ptr %i.zw, align 8, !tbaa !22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv.next425.1 = or disjoint i64 %indvars.iv424.1, 1 ; 3 uses
  %i.zz = icmp eq i64 %indvars.iv.next425.1, %i.wr
  br i1 %i.zz, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.aaa = load i32, ptr %i.zd, align 4, !tbaa !32 ; 2 uses
  %.not304.1.1 = icmp eq i32 %i.aaa, 0
  br i1 %.not304.1.1, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.aab = load float, ptr %i.ze, align 4, !tbaa !22
  %i.aac = sext i32 %i.aaa to i64
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.aac
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !22
  %i.aaf = fadd reassoc nsz arcp contract afn float %i.aae, %i.aab
  %i.aag = fmul reassoc nsz arcp contract afn float %i.aaf, 5.000000e-01
  %i.aah = load float, ptr %i.zf, align 4, !tbaa !22
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aag, %i.aah
end_hunk_2
begin_hunk_3_@get_p:bb.a
bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.85) #30
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.95) #30
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.90) #30
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.106) #30
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.110) #30
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.113) #30
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.104) #30
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.116) #30
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.100) #30
  %.not36 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %spec.select = select i1 %.not36, ptr %i.w, ptr null
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.v ], [ %i.u, %bb.u ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.98) #27
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.93) #27
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.36) #27
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.85) #27
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.95) #27
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.90) #27
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.106) #27
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.110) #27
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.113) #27
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.104) #27
  %.not21 = icmp eq i32 %i.j, 0
  br i1 %.not21, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.116) #27
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.100) #27
  %.not23 = icmp eq i32 %i.l, 0
  %. = select i1 %.not23, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ %., %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

declare i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

declare i64 @dt_get_available_mem(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_vng_lininterpolate(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 12, 1000001) %6) unnamed_addr #20 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 13 uses
  %i.b = alloca [4 x i8], align 4                 ; 13 uses
  %i.c = alloca [4 x i32], align 16               ; 33 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %i.e = icmp eq i32 %4, 9                        ; 8 uses
  %i.f = select i1 %i.e, i32 3, i32 4             ; 3 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.preheader236.lr.ph, label %._crit_edge248.split

.preheader236.lr.ph:                              ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0
  %i.i = add nsw i32 %3, -1
  %i.j = add nsw i32 %2, -1
  br i1 %i.h, label %.preheader236.preheader, label %._crit_edge248.split

.preheader236.preheader:                          ; preds = %.preheader236.lr.ph
  %i.k = zext nneg i32 %2 to i64                  ; 5 uses
  %i.l = zext nneg i32 %3 to i64
  %wide.trip.count304 = zext nneg i32 %i.f to i64 ; 6 uses
  %i.m = shl nuw nsw i64 %wide.trip.count304, 2
  %scevgep423 = getelementptr i8, ptr %0, i64 %i.m
  %scevgep425 = getelementptr i8, ptr %1, i64 4
  %n.vec = and i64 %wide.trip.count304, 4         ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count304
  %xtraiter = and i64 %wide.trip.count304, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nsw i64 %wide.trip.count304, -1
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236.preheader, %._crit_edge
  %indvars.iv306 = phi i64 [ 2, %.preheader236.preheader ], [ %indvars.iv.next307, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ -1, %.preheader236.preheader ], [ %indvars.iv.next295, %._crit_edge ] ; 2 uses
  %.0188247 = phi i32 [ 0, %.preheader236.preheader ], [ %i.gm, %._crit_edge ] ; 6 uses
  %i.o = icmp ne i32 %.0188247, 0
  %i.p = icmp slt i32 %.0188247, %i.i
  %spec.select = select i1 %i.p, i32 %i.j, i32 1
  %i.q = shl nuw i32 %.0188247, 1
  %i.r = and i32 %i.q, 14
  %i.s = add nuw nsw i32 %.0188247, 600
  %i.t = urem i32 %i.s, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.u
  %i.w = mul i32 %.0188247, %2
  br label %bb.v

._crit_edge248.split:                             ; preds = %._crit_edge, %.preheader236.lr.ph, %bb.a
  %i.x = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #28 ; 4 uses
  %7 = select i1 %i.e, i32 6, i32 16              ; 2 uses
  %i.y = insertelement <2 x i32> <i32 poison, i32 0>, i32 %2, i64 0 ; 10 uses
  %i.z = sub nsw <2 x i32> <i32 0, i32 2>, %i.y
  %i.aa = sub nsw <2 x i32> <i32 0, i32 2>, %i.y
  %i.ab = xor <2 x i32> %i.y, <i32 -1, i32 1>
  %i.ac = xor <2 x i32> %i.y, <i32 -1, i32 1>
  %i.ad = sub <2 x i32> splat (i32 1), %i.y
  %i.ae = sub <2 x i32> splat (i32 1), %i.y
  %i.af = add nsw <2 x i32> %i.y, <i32 -1, i32 1>
  %i.ag = add nsw <2 x i32> %i.y, <i32 -1, i32 1>
  %i.ah = add nsw <2 x i32> %i.y, splat (i32 1)
  %i.ai = add nsw <2 x i32> %i.y, splat (i32 1)
  %wide.trip.count345 = zext nneg i32 %i.f to i64 ; 4 uses
  br i1 %i.e, label %.preheader235.us.preheader, label %.preheader235.preheader

.preheader235.preheader:                          ; preds = %._crit_edge248.split
  %i.aj = insertelement <2 x i32> <i32 poison, i32 2>, i32 %2, i64 0
  %xtraiter445 = and i64 %wide.trip.count345, 3   ; 3 uses
  %unroll_iter = and i64 %wide.trip.count345, 4
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  %lcmp.mod448 = icmp ne i64 %xtraiter445, 0
  br label %.preheader235

.preheader235.us.preheader:                       ; preds = %._crit_edge248.split
  %i.ak = insertelement <2 x i32> <i32 poison, i32 2>, i32 %2, i64 0
  %xtraiter451 = and i64 %wide.trip.count345, 3   ; 3 uses
  %unroll_iter457 = and i64 %wide.trip.count345, 4
  %lcmp.mod453.not = icmp eq i64 %xtraiter451, 0
  %lcmp.mod456 = icmp ne i64 %xtraiter451, 0
  br label %.preheader235.us

.preheader235.us:                                 ; preds = %.preheader235.us.preheader, %.split264.us.us
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %.split264.us.us ], [ 0, %.preheader235.us.preheader ] ; 5 uses
  %i.al = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %indvars.iv359
  %i.am = trunc i64 %indvars.iv359 to i32
  %i.an = add i32 %i.am, 600
  %i.ao = urem i32 %i.an, 6                       ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.ap
  %i.ar = trunc i64 %indvars.iv359 to i32
  %i.as = add i32 %i.ar, 599
  %.urem333 = urem i32 %i.as, 6
  %i.at = zext nneg i32 %.urem333 to i64
  %i.au = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.at ; 3 uses
  %i.av = zext nneg i32 %i.ao to i64
  %i.aw = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.av ; 3 uses
  %i.ax = trunc i64 %indvars.iv359 to i32
  %i.ay = add i32 %i.ax, 601
  %.urem333.2 = urem i32 %i.ay, 6
  %i.az = zext nneg i32 %.urem333.2 to i64
  %i.ba = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.az ; 3 uses
  br label %fcol.exit227.us.us

fcol.exit227.us.us:                               ; preds = %.epilog-lcssa454, %.preheader235.us
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %.epilog-lcssa454 ], [ 0, %.preheader235.us ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %indvars.iv347 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.bd = trunc i64 %indvars.iv347 to i32
  %i.be = add i32 %i.bd, 600
  %i.bf = urem i32 %i.be, 6                       ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !169 ; 11 uses
  %i.bj = trunc i64 %indvars.iv347 to i32
  %i.bk = add i32 %i.bj, 599
  %.urem = urem i32 %i.bk, 6
  %i.bl = zext nneg i32 %.urem to i64             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !169 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, %i.bi
  br i1 %i.bo, label %fcol.exit230.us.us.us.us.1, label %bb.m

.split252.us.us.us.us.2.new:                      ; preds = %.split252.us.us.us.us.2, %bb.i
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.3, %bb.i ], [ 0, %.split252.us.us.us.us.2 ] ; 7 uses
  %.3259.us.us = phi ptr [ %.4.us.us.3, %bb.i ], [ %.2.us.us.us.us.2.2, %.split252.us.us.us.us.2 ] ; 4 uses
  %niter458 = phi i64 [ %niter458.next.3, %bb.i ], [ 0, %.split252.us.us.us.us.2 ]
  %.not212.us.us = icmp eq i64 %indvars.iv342, %i.gl
  br i1 %.not212.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split252.us.us.us.us.2.new
  %i.bp = getelementptr inbounds nuw i8, ptr %.3259.us.us, i64 4
  %i.bq = trunc nuw nsw i64 %indvars.iv342 to i32
  store i32 %i.bq, ptr %.3259.us.us, align 4, !tbaa !32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv342
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %.3259.us.us, i64 8
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split252.us.us.us.us.2.new
  %.4.us.us = phi ptr [ %i.bt, %bb.b ], [ %.3259.us.us, %.split252.us.us.us.us.2.new ] ; 4 uses
  %indvars.iv.next343 = or disjoint i64 %indvars.iv342, 1 ; 3 uses
  %.not212.us.us.1 = icmp eq i64 %indvars.iv.next343, %i.gl
  br i1 %.not212.us.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %.4.us.us, i64 4
  %i.bv = trunc nuw nsw i64 %indvars.iv.next343 to i32
  store i32 %i.bv, ptr %.4.us.us, align 4, !tbaa !32
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next343
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %.4.us.us, i64 8
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.4.us.us.1 = phi ptr [ %i.by, %bb.d ], [ %.4.us.us, %bb.c ] ; 4 uses
  %indvars.iv.next343.1 = or disjoint i64 %indvars.iv342, 2 ; 3 uses
  %.not212.us.us.2 = icmp eq i64 %indvars.iv.next343.1, %i.gl
  br i1 %.not212.us.us.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %.4.us.us.1, i64 4
  %i.ca = trunc nuw nsw i64 %indvars.iv.next343.1 to i32
  store i32 %i.ca, ptr %.4.us.us.1, align 4, !tbaa !32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next343.1
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.4.us.us.1, i64 8
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.us.us.2 = phi ptr [ %i.cd, %bb.f ], [ %.4.us.us.1, %bb.e ] ; 4 uses
  %indvars.iv.next343.2 = or disjoint i64 %indvars.iv342, 3 ; 3 uses
  %.not212.us.us.3 = icmp eq i64 %indvars.iv.next343.2, %i.gl
  br i1 %.not212.us.us.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %.4.us.us.2, i64 4
  %i.cf = trunc nuw nsw i64 %indvars.iv.next343.2 to i32
  store i32 %i.cf, ptr %.4.us.us.2, align 4, !tbaa !32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next343.2
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %.4.us.us.2, i64 8
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4.us.us.3 = phi ptr [ %i.ci, %bb.h ], [ %.4.us.us.2, %bb.g ] ; 3 uses
  %indvars.iv.next343.3 = add nuw nsw i64 %indvars.iv342, 4 ; 2 uses
  %niter458.next.3 = add i64 %niter458, 4         ; 2 uses
  %niter458.ncmp.3 = icmp eq i64 %niter458.next.3, %unroll_iter457
  br i1 %niter458.ncmp.3, label %.unr-lcssa449, label %.split252.us.us.us.us.2.new

.unr-lcssa449:                                    ; preds = %bb.i
  br i1 %lcmp.mod453.not, label %.epilog-lcssa454, label %.epil.preheader450

.epil.preheader450:                               ; preds = %.unr-lcssa449, %.split252.us.us.us.us.2
  %indvars.iv342.epil.init = phi i64 [ 0, %.split252.us.us.us.us.2 ], [ %indvars.iv.next343.3, %.unr-lcssa449 ]
  %.3259.us.us.epil.init = phi ptr [ %.2.us.us.us.us.2.2, %.split252.us.us.us.us.2 ], [ %.4.us.us.3, %.unr-lcssa449 ]
  tail call void @llvm.assume(i1 %lcmp.mod456)
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.epil.preheader450
  %indvars.iv342.epil = phi i64 [ %indvars.iv342.epil.init, %.epil.preheader450 ], [ %indvars.iv.next343.epil, %bb.l ] ; 4 uses
  %.3259.us.us.epil = phi ptr [ %.3259.us.us.epil.init, %.epil.preheader450 ], [ %.4.us.us.epil, %bb.l ] ; 4 uses
  %epil.iter452 = phi i64 [ 0, %.epil.preheader450 ], [ %epil.iter452.next, %bb.l ]
  %.not212.us.us.epil = icmp eq i64 %indvars.iv342.epil, %i.gl
  br i1 %.not212.us.us.epil, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.3259.us.us.epil, i64 4
  %i.ck = trunc nuw nsw i64 %indvars.iv342.epil to i32
  store i32 %i.ck, ptr %.3259.us.us.epil, align 4, !tbaa !32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv342.epil
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %.3259.us.us.epil, i64 8
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4.us.us.epil = phi ptr [ %i.cn, %bb.k ], [ %.3259.us.us.epil, %bb.j ] ; 2 uses
  %indvars.iv.next343.epil = add nuw nsw i64 %indvars.iv342.epil, 1
  %epil.iter452.next = add i64 %epil.iter452, 1   ; 2 uses
  %epil.iter452.cmp.not = icmp eq i64 %epil.iter452.next, %xtraiter451
  br i1 %epil.iter452.cmp.not, label %.epilog-lcssa454, label %bb.j, !llvm.loop !719

.epilog-lcssa454:                                 ; preds = %bb.l, %.unr-lcssa449
  %.4.us.us.lcssa = phi ptr [ %.4.us.us.3, %.unr-lcssa449 ], [ %.4.us.us.epil, %bb.l ]
  store i32 %i.ge, ptr %.4.us.us.lcssa, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next348, 6
  br i1 %exitcond358.not, label %.split264.us.us, label %fcol.exit227.us.us

bb.m:                                             ; preds = %fcol.exit227.us.us
  %i.co = zext i8 %i.bn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store <2 x i32> %i.ab, ptr %i.bc, align 4, !tbaa !32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !32
  %i.cr = zext i8 %i.bn to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !32
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !32
  br label %fcol.exit230.us.us.us.us.1

fcol.exit230.us.us.us.us.1:                       ; preds = %bb.m, %fcol.exit227.us.us
end_hunk_3
begin_hunk_4_@_vng_lininterpolate:bb.a
  %i.qt = shl nuw nsw i32 %.tr.i.i228.2315, 1
  %i.qu = lshr i32 %4, %i.qt
  %i.qv = and i32 %i.qu, 3                        ; 3 uses
  %i.qw = icmp eq i32 %i.qv, %i.on
  br i1 %i.qw, label %fcol.exit230.1.2, label %bb.am

bb.am:                                            ; preds = %.split252.1
  %i.qx = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 8
  store <2 x i32> %i.ag, ptr %.2.2.1, align 4, !tbaa !32
  %i.qy = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 12
  store i32 %i.qv, ptr %i.qx, align 4, !tbaa !32
  %i.qz = zext nneg i32 %i.qv to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qz ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !32
  %i.rc = add nsw i32 %i.rb, 1
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !32
  br label %fcol.exit230.1.2

fcol.exit230.1.2:                                 ; preds = %bb.am, %.split252.1
  %.2.2317 = phi ptr [ %i.qy, %bb.am ], [ %.2.2.1, %.split252.1 ] ; 4 uses
  %.tr.i.i228.1.2 = or disjoint i32 %i.ok, %i.np
  %i.rd = shl nuw nsw i32 %.tr.i.i228.1.2, 1
  %i.re = lshr i32 %4, %i.rd
  %i.rf = and i32 %i.re, 3                        ; 3 uses
  %i.rg = icmp eq i32 %i.rf, %i.on
  br i1 %i.rg, label %fcol.exit230.2.2, label %bb.an

bb.an:                                            ; preds = %fcol.exit230.1.2
  %i.rh = getelementptr inbounds nuw i8, ptr %.2.2317, i64 8
  store <2 x i32> %i.aj, ptr %.2.2317, align 4, !tbaa !32
  %i.ri = getelementptr inbounds nuw i8, ptr %.2.2317, i64 12
  store i32 %i.rf, ptr %i.rh, align 4, !tbaa !32
  %i.rj = zext nneg i32 %i.rf to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rj ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !32
  %i.rm = add nsw i32 %i.rl, 2
  store i32 %i.rm, ptr %i.rk, align 4, !tbaa !32
  br label %fcol.exit230.2.2

fcol.exit230.2.2:                                 ; preds = %bb.an, %fcol.exit230.1.2
  %.2.1.2 = phi ptr [ %i.ri, %bb.an ], [ %.2.2317, %fcol.exit230.1.2 ] ; 4 uses
  %.tr.i.i228.2.2 = or disjoint i32 %i.pm, %i.np
  %i.rn = shl nuw nsw i32 %.tr.i.i228.2.2, 1
  %i.ro = lshr i32 %4, %i.rn
  %i.rp = and i32 %i.ro, 3                        ; 3 uses
  %i.rq = icmp eq i32 %i.rp, %i.on
  br i1 %i.rq, label %.split252.2, label %bb.ao

bb.ao:                                            ; preds = %fcol.exit230.2.2
  %i.rr = getelementptr inbounds nuw i8, ptr %.2.1.2, i64 8
  store <2 x i32> %i.ai, ptr %.2.1.2, align 4, !tbaa !32
  %i.rs = getelementptr inbounds nuw i8, ptr %.2.1.2, i64 12
  store i32 %i.rp, ptr %i.rr, align 4, !tbaa !32
  %i.rt = zext nneg i32 %i.rp to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rt ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !32
  %i.rw = add nsw i32 %i.rv, 1
  store i32 %i.rw, ptr %i.ru, align 4, !tbaa !32
  br label %.split252.2

.split252.2:                                      ; preds = %bb.ao, %fcol.exit230.2.2
  %.2.2.2 = phi ptr [ %i.rs, %bb.ao ], [ %.2.1.2, %fcol.exit230.2.2 ] ; 3 uses
  %i.rx = ptrtoint ptr %.2.2.2 to i64
  %i.ry = ptrtoint ptr %i.oh to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = ashr exact i64 %i.rz, 2
  %i.sb = sdiv i64 %i.sa, 3
  %i.sc = trunc i64 %i.sb to i32
  store i32 %i.sc, ptr %i.oh, align 4, !tbaa !32
  %i.sd = zext nneg i32 %i.on to i64              ; 5 uses
  br i1 %i.e, label %.epil.preheader, label %.split252.2.new

.unr-lcssa:                                       ; preds = %bb.az
  br i1 %lcmp.mod446.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.split252.2
  %indvars.iv318.epil.init = phi i64 [ 0, %.split252.2 ], [ %indvars.iv.next319.3, %.unr-lcssa ]
  %.3259.epil.init = phi ptr [ %.2.2.2, %.split252.2 ], [ %.4.3, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod448)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.epil.preheader
  %indvars.iv318.epil = phi i64 [ %indvars.iv318.epil.init, %.epil.preheader ], [ %indvars.iv.next319.epil, %bb.ar ] ; 4 uses
  %.3259.epil = phi ptr [ %.3259.epil.init, %.epil.preheader ], [ %.4.epil, %bb.ar ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ar ]
  %.not212.epil = icmp eq i64 %indvars.iv318.epil, %i.sd
  br i1 %.not212.epil, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.se = getelementptr inbounds nuw i8, ptr %.3259.epil, i64 4
  %i.sf = trunc nuw nsw i64 %indvars.iv318.epil to i32
  store i32 %i.sf, ptr %.3259.epil, align 4, !tbaa !32
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv318.epil
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !32
  %i.si = getelementptr inbounds nuw i8, ptr %.3259.epil, i64 8
  store i32 %i.sh, ptr %i.se, align 4, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.4.epil = phi ptr [ %i.si, %bb.aq ], [ %.3259.epil, %bb.ap ] ; 2 uses
  %indvars.iv.next319.epil = add nuw nsw i64 %indvars.iv318.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter445
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ap, !llvm.loop !727

.epilog-lcssa:                                    ; preds = %bb.ar, %.unr-lcssa
  %.4.lcssa = phi ptr [ %.4.3, %.unr-lcssa ], [ %.4.epil, %bb.ar ]
  store i32 %i.on, ptr %.4.lcssa, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, 16
  br i1 %exitcond326.not, label %.split264, label %fcol.exit227

.split252.2.new:                                  ; preds = %.split252.2, %bb.az
  %indvars.iv318 = phi i64 [ %indvars.iv.next319.3, %bb.az ], [ 0, %.split252.2 ] ; 7 uses
  %.3259 = phi ptr [ %.4.3, %bb.az ], [ %.2.2.2, %.split252.2 ] ; 4 uses
  %niter = phi i64 [ %niter.next.3, %bb.az ], [ 0, %.split252.2 ]
  %.not212 = icmp eq i64 %indvars.iv318, %i.sd
  br i1 %.not212, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.split252.2.new
  %i.sj = getelementptr inbounds nuw i8, ptr %.3259, i64 4
  %i.sk = trunc nuw nsw i64 %indvars.iv318 to i32
  store i32 %i.sk, ptr %.3259, align 4, !tbaa !32
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv318
  %i.sm = load i32, ptr %i.sl, align 16, !tbaa !32
  %i.sn = getelementptr inbounds nuw i8, ptr %.3259, i64 8
  store i32 %i.sm, ptr %i.sj, align 4, !tbaa !32
  br label %bb.at

bb.at:                                            ; preds = %.split252.2.new, %bb.as
  %.4 = phi ptr [ %i.sn, %bb.as ], [ %.3259, %.split252.2.new ] ; 4 uses
  %indvars.iv.next319 = or disjoint i64 %indvars.iv318, 1 ; 3 uses
  %.not212.1 = icmp eq i64 %indvars.iv.next319, %i.sd
  br i1 %.not212.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.so = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %i.sp = trunc nuw nsw i64 %indvars.iv.next319 to i32
  store i32 %i.sp, ptr %.4, align 4, !tbaa !32
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next319
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !32
  %i.ss = getelementptr inbounds nuw i8, ptr %.4, i64 8
  store i32 %i.sr, ptr %i.so, align 4, !tbaa !32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.4.1 = phi ptr [ %i.ss, %bb.au ], [ %.4, %bb.at ] ; 4 uses
  %indvars.iv.next319.1 = or disjoint i64 %indvars.iv318, 2 ; 3 uses
  %.not212.2 = icmp eq i64 %indvars.iv.next319.1, %i.sd
  br i1 %.not212.2, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.st = getelementptr inbounds nuw i8, ptr %.4.1, i64 4
  %i.su = trunc nuw nsw i64 %indvars.iv.next319.1 to i32
  store i32 %i.su, ptr %.4.1, align 4, !tbaa !32
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next319.1
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !32
  %i.sx = getelementptr inbounds nuw i8, ptr %.4.1, i64 8
  store i32 %i.sw, ptr %i.st, align 4, !tbaa !32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.4.2 = phi ptr [ %i.sx, %bb.aw ], [ %.4.1, %bb.av ] ; 4 uses
  %indvars.iv.next319.2 = or disjoint i64 %indvars.iv318, 3 ; 3 uses
  %.not212.3 = icmp eq i64 %indvars.iv.next319.2, %i.sd
  br i1 %.not212.3, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sy = getelementptr inbounds nuw i8, ptr %.4.2, i64 4
  %i.sz = trunc nuw nsw i64 %indvars.iv.next319.2 to i32
  store i32 %i.sz, ptr %.4.2, align 4, !tbaa !32
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next319.2
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !32
  %i.tc = getelementptr inbounds nuw i8, ptr %.4.2, i64 8
  store i32 %i.tb, ptr %i.sy, align 4, !tbaa !32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.4.3 = phi ptr [ %i.tc, %bb.ay ], [ %.4.2, %bb.ax ] ; 3 uses
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.split252.2.new

._crit_edge285.split:                             ; preds = %._crit_edge281, %.lr.ph284, %.preheader233
  tail call void @free(ptr noundef %i.x) #27
  ret void

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %._crit_edge281
  %indvars.iv367 = phi i64 [ 1, %.lr.ph280.preheader ], [ %indvars.iv.next368, %._crit_edge281 ] ; 8 uses
  %i.td = mul nuw nsw i64 %indvars.iv367, %i.of
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.td
  %i.tf = mul nuw nsw i64 %indvars.iv367, %i.og
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tf
  %.not = icmp samesign uge i64 %indvars.iv367, %i.oe
  %i.th = icmp slt i64 %indvars.iv367, %i.od
  %i.ti = mul nuw i64 %i.nw, %indvars.iv367
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ti
  %i.tj = mul nuw nsw i64 %indvars.iv367, %i.nv
  %gep287 = getelementptr [4 x i8], ptr %invariant.gep286, i64 %i.tj
  %i.tk = trunc nuw nsw i64 %indvars.iv367 to i32
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph280, %._crit_edge274
  %.0180278 = phi i32 [ 1, %.lr.ph280 ], [ %i.vv, %._crit_edge274 ] ; 2 uses
  %.pn211277 = phi ptr [ %i.tg, %.lr.ph280 ], [ %.1183, %._crit_edge274 ]
  %.pn276 = phi ptr [ %i.te, %.lr.ph280 ], [ %.1185, %._crit_edge274 ]
  %.0184 = getelementptr inbounds nuw i8, ptr %.pn276, i64 16
  %.0182 = getelementptr inbounds nuw i8, ptr %.pn211277, i64 4
  %i.tl = icmp eq i32 %.0180278, %6
  %or.cond219.not232 = select i1 %i.tl, i1 %.not, i1 false
  %or.cond221 = select i1 %or.cond219.not232, i1 %i.th, i1 false ; 3 uses
  %.1185 = select i1 %or.cond221, ptr %gep, ptr %.0184 ; 5 uses
  %.1183 = select i1 %or.cond221, ptr %gep287, ptr %.0182 ; 5 uses
  %.1181 = select i1 %or.cond221, i32 %i.nu, i32 %.0180278 ; 3 uses
  %i.tm = icmp eq i32 %.1181, %2
  br i1 %i.tm, label %._crit_edge281, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %8 = urem i32 %i.tk, %7
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %9
  %11 = srem i32 %.1181, %7
  %i.tn = sext i32 %11 to i64
  %i.to = getelementptr inbounds [128 x i8], ptr %10, i64 %i.tn ; 5 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4 ; 3 uses
  %i.tq = load i32, ptr %i.to, align 4, !tbaa !32 ; 5 uses
  %.not209267 = icmp eq i32 %i.tq, 0
  br i1 %.not209267, label %.lr.ph273.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bb
  %xtraiter459 = and i32 %i.tq, 1
  %lcmp.mod460.not = icmp eq i32 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.tr = add nsw i32 %i.tq, -1
  %i.ts = load i32, ptr %i.tp, align 4, !tbaa !32
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %.1183, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !22
  %i.tw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tv, float 0.000000e+00)
  %i.tx = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !32
  %i.tz = sitofp reassoc nsz arcp contract afn i32 %i.ty to float
  %i.ua = fmul reassoc nsz arcp contract afn float %i.tw, %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !32
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ud ; 2 uses
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !22
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %i.ua
  store float %i.ug, ptr %i.ue, align 4, !tbaa !22
  %i.uh = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.uh, %.lr.ph.prol ]
  %.0178269.unr = phi i32 [ %i.tq, %.lr.ph.preheader ], [ %i.tr, %.lr.ph.prol ]
  %.0179268.unr = phi ptr [ %i.tp, %.lr.ph.preheader ], [ %i.uh, %.lr.ph.prol ]
  %i.ui = icmp eq i32 %i.tq, 1
  br i1 %i.ui, label %.lr.ph273.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0178269 = phi i32 [ %i.uz, %.lr.ph ], [ %.0178269.unr, %.lr.ph.prol.loopexit ]
  %.0179268 = phi ptr [ %i.vp, %.lr.ph ], [ %.0179268.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.uj = load i32, ptr %.0179268, align 4, !tbaa !32
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [4 x i8], ptr %.1183, i64 %i.uk
  %i.um = load float, ptr %i.ul, align 4, !tbaa !22
  %i.un = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.um, float 0.000000e+00)
  %i.uo = getelementptr inbounds nuw i8, ptr %.0179268, i64 4
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !32
  %i.uq = sitofp reassoc nsz arcp contract afn i32 %i.up to float
  %i.ur = fmul reassoc nsz arcp contract afn float %i.un, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %.0179268, i64 8
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !32
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.uu ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !22
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uw, %i.ur
  store float %i.ux, ptr %i.uv, align 4, !tbaa !22
  %i.uy = getelementptr inbounds nuw i8, ptr %.0179268, i64 12
  %i.uz = add nsw i32 %.0178269, -2               ; 2 uses
  %i.va = load i32, ptr %i.uy, align 4, !tbaa !32
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds [4 x i8], ptr %.1183, i64 %i.vb
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !22
  %i.ve = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vd, float 0.000000e+00)
  %i.vf = getelementptr inbounds nuw i8, ptr %.0179268, i64 16
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !32
  %i.vh = sitofp reassoc nsz arcp contract afn i32 %i.vg to float
  %i.vi = fmul reassoc nsz arcp contract afn float %i.ve, %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %.0179268, i64 20
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !32
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.vl ; 2 uses
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !22
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vn, %i.vi
  store float %i.vo, ptr %i.vm, align 4, !tbaa !22
  %i.vp = getelementptr inbounds nuw i8, ptr %.0179268, i64 24 ; 2 uses
  %.not209.1 = icmp eq i32 %i.uz, 0
  br i1 %.not209.1, label %.lr.ph273.preheader, label %.lr.ph

.lr.ph273.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.bb
  %.1272.ph = phi ptr [ %i.tp, %bb.bb ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.vp, %.lr.ph ]
  br label %.lr.ph273

._crit_edge274:                                   ; preds = %.lr.ph273
  %i.vq = load float, ptr %.1183, align 4, !tbaa !22
  %i.vr = load i32, ptr %i.wh, align 4, !tbaa !32
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %.1185, i64 %i.vs
  store float %i.vq, ptr %i.vt, align 4, !tbaa !22
  %.val.i = load <4 x float>, ptr %.1185, align 16, !tbaa !169
  %i.vu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  store <4 x float> %i.vu, ptr %.1185, align 16, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.vv = add nsw i32 %.1181, 1                   ; 2 uses
  %i.vw = icmp slt i32 %i.vv, %i.ns
  br i1 %i.vw, label %bb.ba, label %._crit_edge281

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %.lr.ph273
  %i.vx = phi i32 [ %i.wi, %.lr.ph273 ], [ %i.oa, %.lr.ph273.preheader ]
  %.1272 = phi ptr [ %i.wh, %.lr.ph273 ], [ %.1272.ph, %.lr.ph273.preheader ] ; 3 uses
  %i.vy = load i32, ptr %.1272, align 4, !tbaa !32
  %i.vz = sext i32 %i.vy to i64                   ; 2 uses
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.vz
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !22
  %i.wc = getelementptr inbounds nuw i8, ptr %.1272, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !32
  %i.we = sitofp reassoc nsz arcp contract afn i32 %i.wd to float
  %i.wf = fdiv reassoc nsz arcp contract afn float %i.wb, %i.we
  %i.wg = getelementptr inbounds [4 x i8], ptr %.1185, i64 %i.vz
  store float %i.wf, ptr %i.wg, align 4, !tbaa !22
  %i.wh = getelementptr inbounds nuw i8, ptr %.1272, i64 8 ; 2 uses
  %i.wi = add nsw i32 %i.vx, -1                   ; 2 uses
  %.not210 = icmp eq i32 %i.wi, 0
  br i1 %.not210, label %._crit_edge274, label %.lr.ph273, !llvm.loop !728

._crit_edge281:                                   ; preds = %._crit_edge274, %bb.ba
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %exitcond371.not = icmp eq i64 %indvars.iv.next368, %wide.trip.count370
  br i1 %exitcond371.not, label %._crit_edge285.split, label %.lr.ph280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

declare void @dt_gaussian_fast_blur(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #22

declare ptr @dt_masks_calc_scharr_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_masks_calc_detail_blend(ptr noundef, ptr noundef, i64 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_val(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12
end_hunk_4
