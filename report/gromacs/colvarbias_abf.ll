Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_abf?download=true
inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN11UIestimator11UIestimatorC2ERKSt6vectorIdSaIdEES5_S5_S5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRKS1_ISB_SaISB_EEd:bb.a
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180 unwind label %bb.df ; 13 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180:         ; preds = %bb.da
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.sa, i8 0, i64 %i.rz, i1 false), !tbaa !82
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.rx
  %.pre299 = load i32, ptr %i.bf, align 8, !tbaa !268 ; 7 uses
  %i.sc = ptrtoint ptr %i.sb to i64               ; 4 uses
  %i.sd = icmp sgt i32 %.pre299, 0
  br i1 %i.sd, label %.lr.ph271, label %.preheader259.split

.lr.ph271:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180
  %i.se = ptrtoaddr ptr %i.sa to i64
  %i.sf = load ptr, ptr %i.q, align 8, !tbaa !57  ; 7 uses
  %wide.trip.count = zext nneg i32 %.pre299 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre299, 8
  %i.sg = ptrtoaddr ptr %i.sf to i64
  %i.sh = sub i64 %i.sg, %i.se
  %diff.check = icmp ugt i64 %i.sh, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph271
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %index ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %wide.load = load <2 x double>, ptr %i.si, align 8, !tbaa !82
  %wide.load423 = load <2 x double>, ptr %i.sj, align 8, !tbaa !82
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %index ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  store <2 x double> %wide.load, ptr %i.sk, align 8, !tbaa !82
  store <2 x double> %wide.load423, ptr %i.sl, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sm = icmp eq i64 %index.next, %n.vec
  br i1 %i.sm, label %middle.block, label %vector.body, !llvm.loop !544

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader259.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph271, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph271 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.prol
  %i.so = load double, ptr %i.sn, align 8, !tbaa !82
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv.prol
  store double %i.so, ptr %i.sp, align 8, !tbaa !82
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !545

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.sq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.sr = icmp ugt i64 %i.sq, -4
  br i1 %i.sr, label %.preheader259.split, label %scalar.ph

.preheader259.split:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180
  %.sroa.15.0400 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171 ], [ %i.sc, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180 ], [ %i.sc, %middle.block ], [ %i.sc, %scalar.ph ], [ %i.sc, %scalar.ph.prol.loopexit ] ; 2 uses
  %.sroa.0240.0399 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171 ], [ %i.sa, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180 ], [ %i.sa, %middle.block ], [ %i.sa, %scalar.ph ], [ %i.sa, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ss = phi i32 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171 ], [ %.pre299, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180 ], [ %.pre299, %middle.block ], [ %.pre299, %scalar.ph ], [ %.pre299, %scalar.ph.prol.loopexit ]
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 1328
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !82
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv
  store double %i.ta, ptr %i.tb, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next
  %i.td = load double, ptr %i.tc, align 8, !tbaa !82
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv.next
  store double %i.td, ptr %i.te, align 8, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.1
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !82
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv.next.1
  store double %i.tg, ptr %i.th, align 8, !tbaa !82
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.2
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !82
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv.next.2
  store double %i.tj, ptr %i.tk, align 8, !tbaa !82
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader259.split, label %scalar.ph, !llvm.loop !546

bb.db:                                            ; preds = %bb.cp, %bb.co
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit182

bb.dc:                                            ; preds = %.loopexit260
  %i.tm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tn = load ptr, ptr %22, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIdSaIdEED2Ev.exit182, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.to = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !210
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.ts) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit182

_ZNSt6vectorIdSaIdEED2Ev.exit182:                 ; preds = %bb.dd, %bb.dc, %bb.db
  %.pn50 = phi { ptr, i32 } [ %i.tl, %bb.db ], [ %i.tm, %bb.dc ], [ %i.tm, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

bb.de:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit158
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

bb.df:                                            ; preds = %bb.da, %bb.cz
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

.preheader:                                       ; preds = %.preheader259.split, %._crit_edge278
  %i.tv = phi i32 [ %i.ss, %.preheader259.split ], [ %i.yt, %._crit_edge278 ] ; 2 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  br i1 %i.tw, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183, label %._crit_edge273

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183: ; preds = %.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit195
  %i.tx = phi i32 [ %i.xb, %_ZNSt6vectorIdSaIdEED2Ev.exit195 ], [ %i.tv, %.preheader ] ; 5 uses
  %.0272 = phi i32 [ %i.xa, %_ZNSt6vectorIdSaIdEED2Ev.exit195 ], [ 0, %.preheader ]
  %i.ty = sext i32 %i.tx to i64                   ; 3 uses
  %i.tz = shl nuw nsw i64 %i.ty, 3                ; 10 uses
  %i.ua = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tz) #27
          to label %.noexc191 unwind label %.loopexit253 ; 10 uses

.noexc191:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ua, i8 0, i64 %i.tz, i1 false), !tbaa !82
  %i.ub = load i32, ptr %i.st, align 8, !tbaa !273
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc191
  %i.ud = load ptr, ptr %i.ah, align 8, !tbaa !57
  %i.ue = load ptr, ptr %i.su, align 8, !tbaa !57
  %i.uf = load ptr, ptr %i.sv, align 8, !tbaa !60 ; 3 uses
  br label %bb.dg

.preheader27.i.i:                                 ; preds = %bb.dg
  %i.ug = icmp sgt i32 %i.ut, 0
  br i1 %i.ug, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.uh = zext nneg i32 %i.ut to i64              ; 4 uses
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.dg ] ; 5 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0240.0399, i64 %indvars.iv.i.i
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !82
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i.i
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !82
  %i.um = fsub double %i.uj, %i.ul
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv.i.i
  %i.uo = load double, ptr %i.un, align 8, !tbaa !82
  %i.up = fdiv double %i.um, %i.uo
  %i.uq = fadd double %i.up, f0x3EB0C6F7A0B5ED8D
  %i.ur = fptosi double %i.uq to i32
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv.i.i
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ut = load i32, ptr %i.st, align 8, !tbaa !273 ; 3 uses
  %i.uu = sext i32 %i.ut to i64
  %i.uv = icmp slt i64 %indvars.iv.next.i.i, %i.uu
  br i1 %i.uv, label %bb.dg, label %.preheader27.i.i, !llvm.loop !16

bb.dh:                                            ; preds = %bb.dj, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.dj ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.dj ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.dj ]
  %25 = xor i64 %indvars.iv43.i.i, -1
  %26 = add nsw i64 %25, %i.uh                    ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.uw = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.uh
  br i1 %i.uw, label %.preheader.i.i, label %bb.di

.preheader.i.i:                                   ; preds = %bb.dh
  %i.ux = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %min.iters.check438 = icmp ult i64 %26, 8
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %.preheader.i.i
  %n.vec440 = and i64 %26, -8                     ; 3 uses
  %i.uy = add i64 %indvars.iv38.i.i, %n.vec440
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %indvars.iv38.i.i
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph439
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next447, %vector.body441 ] ; 2 uses
  %vec.phi443 = phi <4 x i32> [ splat (i32 1), %vector.ph439 ], [ %i.vc, %vector.body441 ]
  %vec.phi444 = phi <4 x i32> [ splat (i32 1), %vector.ph439 ], [ %i.vd, %vector.body441 ]
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %index442 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %wide.load445 = load <4 x i32>, ptr %i.va, align 4, !tbaa !83
  %wide.load446 = load <4 x i32>, ptr %i.vb, align 4, !tbaa !83
  %i.vc = mul <4 x i32> %wide.load445, %vec.phi443 ; 2 uses
  %i.vd = mul <4 x i32> %wide.load446, %vec.phi444 ; 2 uses
  %index.next447 = add nuw i64 %index442, 8       ; 2 uses
  %i.ve = icmp eq i64 %index.next447, %n.vec440
  br i1 %i.ve, label %middle.block448, label %vector.body441, !llvm.loop !547

middle.block448:                                  ; preds = %vector.body441
  %bin.rdx449 = mul <4 x i32> %i.vd, %i.vc
  %i.vf = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx449) ; 2 uses
  %cmp.n450 = icmp eq i64 %26, %n.vec440
  br i1 %cmp.n450, label %.loopexit, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.preheader.i.i, %middle.block448
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.uy, %middle.block448 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.vf, %middle.block448 ]
  br label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.preheader, %scalar.ph437
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph437 ], [ %indvars.iv40.i.i.ph, %scalar.ph437.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.vi, %scalar.ph437 ], [ %.030.i.i.ph, %scalar.ph437.preheader ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %indvars.iv40.i.i
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !83
  %i.vi = mul nsw i32 %i.vh, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.uh
  br i1 %exitcond.not.i.i, label %.loopexit, label %scalar.ph437, !llvm.loop !548

.loopexit:                                        ; preds = %scalar.ph437, %middle.block448
  %.lcssa414 = phi i32 [ %i.vf, %middle.block448 ], [ %i.vi, %scalar.ph437 ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv43.i.i
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !83
  %i.vl = mul nsw i32 %i.vk, %.lcssa414
  br label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv43.i.i
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !83
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.loopexit
  %.pn.i.i = phi i32 [ %i.vl, %.loopexit ], [ %i.vn, %bb.di ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.uh
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.dh, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.dj
  %i.vo = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, %.preheader27.i.i, %.noexc191
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %.noexc191 ], [ %i.vo, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.vp = load ptr, ptr %i.aj, align 8, !tbaa !250
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %.021.lcssa.i.i ; 8 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16 ; 3 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !210
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !57 ; 5 uses
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = ptrtoint ptr %i.vt to i64               ; 2 uses
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = icmp ugt i64 %i.tz, %i.vw
  br i1 %i.vx, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, label %bb.do

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.vy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tz) #27
          to label %.noexc237 unwind label %bb.ea ; 4 uses

.noexc237:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.vz = icmp ugt i32 %i.tx, 1
  br i1 %i.vz, label %bb.dk, label %bb.dl, !prof !272

bb.dk:                                            ; preds = %.noexc237
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vy, ptr nonnull align 8 %i.ua, i64 %i.tz, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.dl:                                            ; preds = %.noexc237
  %i.wa = icmp eq i32 %i.tx, 1
  br i1 %i.wa, label %bb.dm, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.dm:                                            ; preds = %bb.dl
  %i.wb = load double, ptr %i.ua, align 8, !tbaa !82
  store double %i.wb, ptr %i.vy, align 8, !tbaa !82
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i: ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.wc = load ptr, ptr %i.vq, align 8, !tbaa !57 ; 3 uses
  %.not.i.i = icmp eq ptr %i.wc, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  %i.wd = load ptr, ptr %i.vr, align 8, !tbaa !210
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %i.wc to i64
  %i.wg = sub i64 %i.we, %i.wf
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %i.wg) #26
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.dn, %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  store ptr %i.vy, ptr %i.vq, align 8, !tbaa !57
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.tz
  store ptr %i.wh, ptr %i.vr, align 8, !tbaa !210
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.do:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !211 ; 3 uses
  %i.wk = ptrtoint ptr %i.wj to i64
  %i.wl = sub i64 %i.wk, %i.vv                    ; 5 uses
  %.not24.i = icmp ult i64 %i.wl, %i.tz
  br i1 %.not24.i, label %bb.dt, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wm = icmp ugt i32 %i.tx, 1
  br i1 %i.wm, label %bb.dq, label %bb.dr, !prof !272

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vt, ptr nonnull align 8 %i.ua, i64 %i.tz, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dr:                                            ; preds = %bb.dp
  %i.wn = icmp eq i32 %i.tx, 1
  br i1 %i.wn, label %bb.ds, label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.ds:                                            ; preds = %bb.dr
  %i.wo = load double, ptr %i.ua, align 8, !tbaa !82
  store double %i.wo, ptr %i.vt, align 8, !tbaa !82
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dt:                                            ; preds = %bb.do
  %i.wp = icmp sgt i64 %i.wl, 8
  br i1 %i.wp, label %bb.du, label %bb.dv, !prof !272

bb.du:                                            ; preds = %bb.dt
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vt, ptr nonnull align 8 %i.ua, i64 %i.wl, i1 false)
  %.pre25.i = load ptr, ptr %i.wi, align 8, !tbaa !211 ; 2 uses
  %.pre26.i = load ptr, ptr %i.vq, align 8, !tbaa !57
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.dv:                                            ; preds = %bb.dt
  %i.wq = icmp eq i64 %i.wl, 8
  br i1 %i.wq, label %bb.dw, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.wr = load double, ptr %i.ua, align 8, !tbaa !82
  store double %i.wr, ptr %i.vt, align 8, !tbaa !82
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.dw, %bb.dv, %bb.du
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.du ], [ %i.wl, %bb.dv ], [ 8, %bb.dw ] ; 2 uses
  %i.ws = phi ptr [ %.pre25.i, %bb.du ], [ %i.wj, %bb.dv ], [ %i.wj, %bb.dw ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.pre-phi32.i ; 2 uses
  %gepdiff = sub nsw i64 %i.tz, %.pre-phi32.i     ; 3 uses
  %i.wu = icmp sgt i64 %gepdiff, 8
  br i1 %i.wu, label %bb.dx, label %bb.dy, !prof !272

bb.dx:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ws, ptr nonnull align 8 %i.wt, i64 %gepdiff, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dy:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  %i.wv = icmp eq i64 %gepdiff, 8
  br i1 %i.wv, label %bb.dz, label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dz:                                            ; preds = %bb.dy
  %i.ww = load double, ptr %i.wt, align 8, !tbaa !82
  store double %i.ww, ptr %i.ws, align 8, !tbaa !82
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

_ZNSt6vectorIdSaIdEED2Ev.exit195:                 ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.ds, %bb.dr, %bb.dq, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.wx = load ptr, ptr %i.vq, align 8, !tbaa !57
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.tz
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store ptr %i.wy, ptr %i.wz, align 8, !tbaa !211
  %.idx = shl nuw nsw i64 %i.ty, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef %.idx) #26
  %i.xa = add nuw nsw i32 %.0272, 1               ; 2 uses
  %i.xb = load i32, ptr %i.bf, align 8, !tbaa !268 ; 2 uses
  %i.xc = icmp slt i32 %i.xa, %i.xb
  br i1 %i.xc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183, label %._crit_edge273, !llvm.loop !549

.loopexit253:                                     ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

bb.ea:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %lpad.loopexit256 = landingpad { ptr, i32 }
          cleanup
  %.idx396 = shl nuw nsw i64 %i.ty, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef %.idx396) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

._crit_edge273:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit195, %.preheader
  %i.xd = load i32, ptr %i.sw, align 8, !tbaa !274
  %i.xe = icmp sgt i32 %i.xd, 0
  br i1 %i.xe, label %.lr.ph.i.i199, label %bb.ef

.lr.ph.i.i199:                                    ; preds = %._crit_edge273
  %i.xf = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.xg = load ptr, ptr %i.sx, align 8, !tbaa !57
  %i.xh = load ptr, ptr %i.sy, align 8, !tbaa !60 ; 3 uses
  br label %bb.eb

.preheader27.i.i202:                              ; preds = %bb.eb
  %i.xi = icmp sgt i32 %i.xv, 0
  br i1 %i.xi, label %.lr.ph33.i.i203, label %bb.ef

.lr.ph33.i.i203:                                  ; preds = %.preheader27.i.i202
  %i.xj = zext nneg i32 %i.xv to i64              ; 4 uses
  br label %bb.ec

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i.i199
  %indvars.iv.i.i200 = phi i64 [ 0, %.lr.ph.i.i199 ], [ %indvars.iv.next.i.i201, %bb.eb ] ; 5 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0240.0399, i64 %indvars.iv.i.i200
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !82
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv.i.i200
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !82
  %i.xo = fsub double %i.xl, %i.xn
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.i.i200
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !82
  %i.xr = fdiv double %i.xo, %i.xq
  %i.xs = fadd double %i.xr, f0x3EB0C6F7A0B5ED8D
  %i.xt = fptosi double %i.xs to i32
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv.i.i200
  store i32 %i.xt, ptr %i.xu, align 4, !tbaa !83
  %indvars.iv.next.i.i201 = add nuw nsw i64 %indvars.iv.i.i200, 1 ; 2 uses
  %i.xv = load i32, ptr %i.sw, align 8, !tbaa !274 ; 3 uses
  %i.xw = sext i32 %i.xv to i64
  %i.xx = icmp slt i64 %indvars.iv.next.i.i201, %i.xw
  br i1 %i.xx, label %bb.eb, label %.preheader27.i.i202, !llvm.loop !18

bb.ec:                                            ; preds = %bb.ee, %.lr.ph33.i.i203
  %indvars.iv43.i.i204 = phi i64 [ 0, %.lr.ph33.i.i203 ], [ %indvars.iv.next44.i.i207, %bb.ee ] ; 4 uses
  %indvars.iv38.i.i205 = phi i64 [ 1, %.lr.ph33.i.i203 ], [ %indvars.iv.next39.i.i210, %bb.ee ] ; 4 uses
  %.02132.i.i206 = phi i32 [ 0, %.lr.ph33.i.i203 ], [ %.1.i.i209, %bb.ee ]
  %27 = xor i64 %indvars.iv43.i.i204, -1
  %28 = add nsw i64 %27, %i.xj                    ; 3 uses
  %indvars.iv.next44.i.i207 = add nuw nsw i64 %indvars.iv43.i.i204, 1 ; 3 uses
  %i.xy = icmp samesign ult i64 %indvars.iv.next44.i.i207, %i.xj
  br i1 %i.xy, label %.preheader.i.i212, label %bb.ed

.preheader.i.i212:                                ; preds = %bb.ec
  %i.xz = load ptr, ptr %i.al, align 8, !tbaa !60 ; 2 uses
  %min.iters.check425 = icmp ult i64 %28, 8
  br i1 %min.iters.check425, label %scalar.ph424.preheader, label %vector.ph426

vector.ph426:                                     ; preds = %.preheader.i.i212
  %n.vec427 = and i64 %28, -8                     ; 3 uses
  %i.ya = add i64 %indvars.iv38.i.i205, %n.vec427
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv38.i.i205
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next433, %vector.body428 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph426 ], [ %i.ye, %vector.body428 ]
  %vec.phi430 = phi <4 x i32> [ splat (i32 1), %vector.ph426 ], [ %i.yf, %vector.body428 ]
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %index429 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %wide.load431 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !83
  %wide.load432 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !83
  %i.ye = mul <4 x i32> %wide.load431, %vec.phi   ; 2 uses
  %i.yf = mul <4 x i32> %wide.load432, %vec.phi430 ; 2 uses
  %index.next433 = add nuw i64 %index429, 8       ; 2 uses
  %i.yg = icmp eq i64 %index.next433, %n.vec427
  br i1 %i.yg, label %middle.block434, label %vector.body428, !llvm.loop !550

middle.block434:                                  ; preds = %vector.body428
  %bin.rdx = mul <4 x i32> %i.yf, %i.ye
  %i.yh = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n435 = icmp eq i64 %28, %n.vec427
  br i1 %cmp.n435, label %.loopexit453, label %scalar.ph424.preheader

scalar.ph424.preheader:                           ; preds = %.preheader.i.i212, %middle.block434
  %indvars.iv40.i.i213.ph = phi i64 [ %indvars.iv38.i.i205, %.preheader.i.i212 ], [ %i.ya, %middle.block434 ]
  %.030.i.i214.ph = phi i32 [ 1, %.preheader.i.i212 ], [ %i.yh, %middle.block434 ]
  br label %scalar.ph424

scalar.ph424:                                     ; preds = %scalar.ph424.preheader, %scalar.ph424
  %indvars.iv40.i.i213 = phi i64 [ %indvars.iv.next41.i.i215, %scalar.ph424 ], [ %indvars.iv40.i.i213.ph, %scalar.ph424.preheader ] ; 2 uses
  %.030.i.i214 = phi i32 [ %i.yk, %scalar.ph424 ], [ %.030.i.i214.ph, %scalar.ph424.preheader ]
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv40.i.i213
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !83
  %i.yk = mul nsw i32 %i.yj, %.030.i.i214         ; 2 uses
  %indvars.iv.next41.i.i215 = add nuw nsw i64 %indvars.iv40.i.i213, 1 ; 2 uses
  %exitcond.not.i.i216 = icmp eq i64 %indvars.iv.next41.i.i215, %i.xj
  br i1 %exitcond.not.i.i216, label %.loopexit453, label %scalar.ph424, !llvm.loop !551

.loopexit453:                                     ; preds = %scalar.ph424, %middle.block434
  %.lcssa421 = phi i32 [ %i.yh, %middle.block434 ], [ %i.yk, %scalar.ph424 ]
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv43.i.i204
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !83
  %i.yn = mul nsw i32 %i.ym, %.lcssa421
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv43.i.i204
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !83
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.loopexit453
  %.pn.i.i208 = phi i32 [ %i.yn, %.loopexit453 ], [ %i.yp, %bb.ed ]
  %.1.i.i209 = add nsw i32 %.pn.i.i208, %.02132.i.i206 ; 2 uses
  %indvars.iv.next39.i.i210 = add nuw nsw i64 %indvars.iv38.i.i205, 1
  %exitcond47.not.i.i211 = icmp eq i64 %indvars.iv.next44.i.i207, %i.xj
  br i1 %exitcond47.not.i.i211, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.ec, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.ee
  %i.yq = sext i32 %.1.i.i209 to i64
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, %.preheader27.i.i202, %._crit_edge273
  %.021.lcssa.i.i198 = phi i64 [ 0, %.preheader27.i.i202 ], [ 0, %._crit_edge273 ], [ %i.yq, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.yr = load ptr, ptr %i.am, align 8, !tbaa !60
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %.021.lcssa.i.i198
  store i32 0, ptr %i.ys, align 4, !tbaa !83
  %i.yt = load i32, ptr %i.bf, align 8, !tbaa !268 ; 3 uses
  %.3274 = add i32 %i.yt, -1                      ; 2 uses
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %.lr.ph277, label %._crit_edge278

.lr.ph277:                                        ; preds = %bb.ef
  %i.yv = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.yw = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.yx = zext nneg i32 %.3274 to i64
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph277, %bb.eh
  %indvars.iv291 = phi i64 [ %i.yx, %.lr.ph277 ], [ %indvars.iv.next292, %bb.eh ] ; 7 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %indvars.iv291 ; 2 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !82
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0240.0399, i64 %indvars.iv291 ; 3 uses
  %i.zb = load double, ptr %i.za, align 8, !tbaa !82
  %i.zc = fadd double %i.yz, %i.zb                ; 2 uses
  store double %i.zc, ptr %i.za, align 8, !tbaa !82
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv291
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !82
  %i.zf = load double, ptr %i.yy, align 8, !tbaa !82
  %i.zg = fsub double %i.ze, %i.zf
  %i.zh = fadd double %i.zg, f0x3EB0C6F7A0B5ED8D
  %i.zi = fcmp ogt double %i.zc, %i.zh
  br i1 %i.zi, label %bb.eh, label %._crit_edge278.loopexit

bb.eh:                                            ; preds = %bb.eg
  %i.zj = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %indvars.iv291
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !82
  store double %i.zl, ptr %i.za, align 8, !tbaa !82
  %indvars.iv.next292 = add nsw i64 %indvars.iv291, -1
  %i.zm = icmp sgt i64 %indvars.iv291, 0
  br i1 %i.zm, label %bb.eg, label %._crit_edge278.thread, !llvm.loop !552

bb.ei:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i219
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

._crit_edge278.loopexit:                          ; preds = %bb.eg
  %i.zo = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge278.loopexit, %bb.ef
  %.3.lcssa = phi i32 [ %.3274, %bb.ef ], [ %i.zo, %._crit_edge278.loopexit ]
  %i.zp = icmp sgt i32 %.3.lcssa, -1
  br i1 %i.zp, label %.preheader, label %._crit_edge278.thread, !llvm.loop !553

._crit_edge278.thread:                            ; preds = %._crit_edge278, %bb.eh
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !240 ; 3 uses
  %i.zs = load ptr, ptr %i.x, align 8, !tbaa !239 ; 3 uses
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = sub i64 %i.zt, %i.zu                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %.not.i.i.i.i217 = icmp eq ptr %i.zr, %i.zs
  br i1 %.not.i.i.i.i217, label %.noexc221, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge278.thread
  %i.zw = icmp ugt i64 %i.zv, 9223372036854775776
  br i1 %i.zw, label %.noexc.i.i219, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !213

.noexc.i.i219:                                    ; preds = %bb.ej
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc220 unwind label %bb.ei

.noexc220:                                        ; preds = %.noexc.i.i219
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ej
  %i.zx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zv) #27
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc221_crit_edge unwind label %bb.ei

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc221_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre300 = load ptr, ptr %i.x, align 8, !tbaa !275
  %.pre301 = load ptr, ptr %i.zq, align 8, !tbaa !275
  br label %.noexc221

.noexc221:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc221_crit_edge, %._crit_edge278.thread
  %i.zy = phi ptr [ %i.zr, %._crit_edge278.thread ], [ %.pre301, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc221_crit_edge ]
  %i.zz = phi ptr [ %i.zs, %._crit_edge278.thread ], [ %.pre300, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc221_crit_edge ]
  %i.aaa = phi ptr [ null, %._crit_edge278.thread ], [ %i.zx, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc221_crit_edge ] ; 6 uses
  store ptr %i.aaa, ptr %24, align 8, !tbaa !239
  %i.aab = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !240
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.zv
  %i.aad = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.aac, ptr %i.aad, align 8, !tbaa !241
  %i.aae = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.zz, ptr %i.zy, ptr noundef %i.aaa)
          to label %bb.em unwind label %bb.ek

bb.ek:                                            ; preds = %.noexc221
  %i.aaf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.aaa, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIdSaIdEED2Ev.exit197, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.aaa, i64 noundef %i.zv) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

bb.em:                                            ; preds = %.noexc221
  store ptr %i.aae, ptr %i.aab, align 8, !tbaa !240
  invoke void @_ZN11UIestimator11UIestimator15read_inputfilesESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1402) %0, ptr noundef nonnull align 8 %24)
          to label %bb.en unwind label %bb.eq

bb.en:                                            ; preds = %bb.em
  %i.aag = load ptr, ptr %24, align 8, !tbaa !239 ; 3 uses
  %i.aah = load ptr, ptr %i.aab, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aag, %i.aah
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.en, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aan, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aag, %bb.en ] ; 3 uses
  %i.aai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !207 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aak = icmp eq ptr %i.aai, %i.aaj
  br i1 %i.aak, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aal = load i64, ptr %i.aaj, align 8, !tbaa !209
  %i.aam = add i64 %i.aal, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aam) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN11UIestimator11UIestimator15read_inputfilesESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ep = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.preheader300 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.preheader300:                                    ; preds = %bb.t
  %i.eq = load i32, ptr %i.i, align 8, !tbaa !268
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph, label %.critedge.preheader.lr.ph

.preheader292:                                    ; preds = %_ZNSirsERd.exit130
  %i.es = icmp sgt i32 %i.ff, 0
  br i1 %i.es, label %.critedge.preheader.lr.ph, label %._crit_edge455

.critedge.preheader.lr.ph:                        ; preds = %.preheader300, %.preheader292
  %.042.lcssa575 = phi i32 [ %i.ff, %.preheader292 ], [ 1, %.preheader300 ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv479
  br label %.critedge.preheader

.lr.ph:                                           ; preds = %.preheader300, %_ZNSirsERd.exit130
  %.042446 = phi i32 [ %i.ff, %_ZNSirsERd.exit130 ], [ 1, %.preheader300 ]
  %.056445 = phi i32 [ %i.fg, %_ZNSirsERd.exit130 ], [ 0, %.preheader300 ]
  %i.eu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.ev = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSirsERd.exit:                                  ; preds = %bb.u
  %i.ew = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSirsERd.exit120:                               ; preds = %_ZNSirsERd.exit
  %i.ex = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %_ZNSirsERd.exit120
  %i.ey = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSirsERd.exit122:                               ; preds = %bb.v
  %i.ez = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %_ZNSirsERd.exit122
  %i.fa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSirsERd.exit124:                               ; preds = %bb.w
  %i.fb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSirsERd.exit126:                               ; preds = %_ZNSirsERd.exit124
  %i.fc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSirsERd.exit128:                               ; preds = %_ZNSirsERd.exit126
  %i.fd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSirsERd.exit130:                               ; preds = %_ZNSirsERd.exit128
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !83
  %i.ff = mul nsw i32 %i.fe, %.042446             ; 3 uses
  %i.fg = add nuw nsw i32 %.056445, 1             ; 2 uses
  %i.fh = load i32, ptr %i.i, align 8, !tbaa !268
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %.lr.ph, label %.preheader292, !llvm.loop !587

.critedge.preheader:                              ; preds = %.critedge.preheader.lr.ph, %bb.bs
  %.157454 = phi i32 [ 0, %.critedge.preheader.lr.ph ], [ %i.rm, %bb.bs ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.fj = load i32, ptr %i.i, align 8, !tbaa !268
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph448, label %._crit_edge

.preheader:                                       ; preds = %_ZNSirsERd.exit134
  %i.fl = icmp sgt i32 %i.fp, 0
  br i1 %i.fl, label %.lr.ph450, label %._crit_edge

.lr.ph448:                                        ; preds = %.critedge, %_ZNSirsERd.exit134
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSirsERd.exit134 ], [ 0, %.critedge ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv
  %i.fn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_ZNSirsERd.exit132 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZNSirsERd.exit132:                               ; preds = %.lr.ph448
  %i.fo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit134 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZNSirsERd.exit134:                               ; preds = %_ZNSirsERd.exit132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = load i32, ptr %i.i, align 8, !tbaa !268 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next, %i.fq
  br i1 %i.fr, label %.lr.ph448, label %.preheader, !llvm.loop !588

.lr.ph450:                                        ; preds = %.preheader, %_ZNSirsERd.exit136
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %_ZNSirsERd.exit136 ], [ 0, %.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0257.0, i64 %indvars.iv473
  %i.ft = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %_ZNSirsERd.exit136 unwind label %.loopexit ; 0 uses

_ZNSirsERd.exit136:                               ; preds = %.lr.ph450
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.fu = load i32, ptr %i.i, align 8, !tbaa !268
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next474, %i.fv
  br i1 %i.fw, label %.lr.ph450, label %._crit_edge, !llvm.loop !589

._crit_edge:                                      ; preds = %_ZNSirsERd.exit136, %.critedge, %.preheader
  %i.fx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.x:                                             ; preds = %._crit_edge
  %i.fy = load double, ptr %i.et, align 8, !tbaa !82 ; 2 uses
  %i.fz = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv479
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !82
  %i.gc = fadd double %i.gb, f0xBEB0C6F7A0B5ED8D
  %i.gd = fcmp olt double %i.fy, %i.gc
  br i1 %i.gd, label %.critedge.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ge = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv479
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !82
  %i.gh = fadd double %i.gg, f0x3EB0C6F7A0B5ED8D
  %i.gi = fcmp ogt double %i.fy, %i.gh
  br i1 %i.gi, label %.critedge.backedge, label %bb.z

.critedge.backedge:                               ; preds = %bb.y, %bb.x
  br label %.critedge, !llvm.loop !590

bb.z:                                             ; preds = %bb.y
  %i.gj = load i32, ptr %i.e, align 4, !tbaa !83
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bs, label %.preheader289

.preheader289:                                    ; preds = %bb.z
  %i.gl = load i32, ptr %i.i, align 8, !tbaa !268
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph452, label %._crit_edge453

.lr.ph452:                                        ; preds = %.preheader289
  %i.gn = load ptr, ptr %i.bc, align 8, !tbaa !250
  %i.go = load ptr, ptr %i.bi, align 8, !tbaa !60 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph452, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176
  %indvars.iv476 = phi i64 [ 0, %.lr.ph452 ], [ %indvars.iv.next477, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0257.0, i64 %indvars.iv476 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !82 ; 2 uses
  %i.gr = load i32, ptr %i.e, align 4, !tbaa !83
  %i.gs = sitofp i32 %i.gr to double              ; 2 uses
  %i.gt = load i32, ptr %i.ax, align 8, !tbaa !273
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.aa
  %i.gv = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.gw = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.gx = load ptr, ptr %i.ba, align 8, !tbaa !60 ; 3 uses
  br label %bb.ab

.preheader27.i.i:                                 ; preds = %bb.ab
  %i.gy = icmp sgt i32 %i.hl, 0
  br i1 %i.gy, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.gz = zext nneg i32 %i.hl to i64              ; 4 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ab ] ; 5 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv.i.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !82
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i.i
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !82
  %i.he = fsub double %i.hb, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !82
  %i.hh = fdiv double %i.he, %i.hg
  %i.hi = fadd double %i.hh, f0x3EB0C6F7A0B5ED8D
  %i.hj = fptosi double %i.hi to i32
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i.i
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hl = load i32, ptr %i.ax, align 8, !tbaa !273 ; 3 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next.i.i, %i.hm
  br i1 %i.hn, label %bb.ab, label %.preheader27.i.i, !llvm.loop !16

bb.ac:                                            ; preds = %bb.ae, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.ae ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.ae ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.ae ]
  %6 = xor i64 %indvars.iv43.i.i, -1
  %7 = add nsw i64 %6, %i.gz                      ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.gz
  br i1 %i.ho, label %.preheader.i.i, label %bb.ad

.preheader.i.i:                                   ; preds = %bb.ac
  %i.hp = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %min.iters.check678 = icmp ult i64 %7, 8
  br i1 %min.iters.check678, label %scalar.ph677.preheader, label %vector.ph679

vector.ph679:                                     ; preds = %.preheader.i.i
  %n.vec680 = and i64 %7, -8                      ; 3 uses
  %i.hq = add i64 %indvars.iv38.i.i, %n.vec680
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv38.i.i
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph679
  %index682 = phi i64 [ 0, %vector.ph679 ], [ %index.next687, %vector.body681 ] ; 2 uses
  %vec.phi683 = phi <4 x i32> [ splat (i32 1), %vector.ph679 ], [ %i.hu, %vector.body681 ]
  %vec.phi684 = phi <4 x i32> [ splat (i32 1), %vector.ph679 ], [ %i.hv, %vector.body681 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %index682 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load685 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !83
  %wide.load686 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !83
  %i.hu = mul <4 x i32> %wide.load685, %vec.phi683 ; 2 uses
  %i.hv = mul <4 x i32> %wide.load686, %vec.phi684 ; 2 uses
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.hw, label %middle.block688, label %vector.body681, !llvm.loop !591

middle.block688:                                  ; preds = %vector.body681
  %bin.rdx689 = mul <4 x i32> %i.hv, %i.hu
  %i.hx = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx689) ; 2 uses
  %cmp.n690 = icmp eq i64 %7, %n.vec680
  br i1 %cmp.n690, label %.loopexit695, label %scalar.ph677.preheader

scalar.ph677.preheader:                           ; preds = %.preheader.i.i, %middle.block688
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.hq, %middle.block688 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.hx, %middle.block688 ]
  br label %scalar.ph677

scalar.ph677:                                     ; preds = %scalar.ph677.preheader, %scalar.ph677
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph677 ], [ %indvars.iv40.i.i.ph, %scalar.ph677.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.ia, %scalar.ph677 ], [ %.030.i.i.ph, %scalar.ph677.preheader ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv40.i.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !83
  %i.ia = mul nsw i32 %i.hz, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.gz
  br i1 %exitcond.not.i.i, label %.loopexit695, label %scalar.ph677, !llvm.loop !592

.loopexit695:                                     ; preds = %scalar.ph677, %middle.block688
  %.lcssa614 = phi i32 [ %i.hx, %middle.block688 ], [ %i.ia, %scalar.ph677 ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv43.i.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !83
  %i.id = mul nsw i32 %i.ic, %.lcssa614
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv43.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !83
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit695
  %.pn.i.i = phi i32 [ %i.id, %.loopexit695 ], [ %i.if, %bb.ad ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.gz
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.ac, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.ae
  %i.ig = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit: ; preds = %bb.aa, %.preheader27.i.i, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %bb.aa ], [ %i.ig, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %.021.lcssa.i.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !57
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv476
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !82 ; 2 uses
  %i.il = load i32, ptr %i.be, align 8, !tbaa !274
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph.i.i138, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread

.lr.ph.i.i138:                                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %i.in = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.io = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.ip = load ptr, ptr %i.bg, align 8, !tbaa !60 ; 3 uses
  br label %bb.af

.preheader27.i.i141:                              ; preds = %bb.af
  %i.iq = icmp sgt i32 %i.jd, 0
  br i1 %i.iq, label %.lr.ph33.i.i142, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread

.lr.ph33.i.i142:                                  ; preds = %.preheader27.i.i141
  %i.ir = zext nneg i32 %i.jd to i64              ; 4 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph.i.i138
  %indvars.iv.i.i139 = phi i64 [ 0, %.lr.ph.i.i138 ], [ %indvars.iv.next.i.i140, %bb.af ] ; 5 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv.i.i139
  %i.it = load double, ptr %i.is, align 8, !tbaa !82
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.i.i139
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !82
  %i.iw = fsub double %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.i.i139
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !82
  %i.iz = fdiv double %i.iw, %i.iy
  %i.ja = fadd double %i.iz, f0x3EB0C6F7A0B5ED8D
  %i.jb = fptosi double %i.ja to i32
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i.i139
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !83
  %indvars.iv.next.i.i140 = add nuw nsw i64 %indvars.iv.i.i139, 1 ; 2 uses
  %i.jd = load i32, ptr %i.be, align 8, !tbaa !274 ; 3 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next.i.i140, %i.je
  br i1 %i.jf, label %bb.af, label %.preheader27.i.i141, !llvm.loop !18

bb.ag:                                            ; preds = %bb.ai, %.lr.ph33.i.i142
  %indvars.iv43.i.i143 = phi i64 [ 0, %.lr.ph33.i.i142 ], [ %indvars.iv.next44.i.i146, %bb.ai ] ; 4 uses
  %indvars.iv38.i.i144 = phi i64 [ 1, %.lr.ph33.i.i142 ], [ %indvars.iv.next39.i.i149, %bb.ai ] ; 4 uses
  %.02132.i.i145 = phi i32 [ 0, %.lr.ph33.i.i142 ], [ %.1.i.i148, %bb.ai ]
  %8 = xor i64 %indvars.iv43.i.i143, -1
  %9 = add nsw i64 %8, %i.ir                      ; 3 uses
  %indvars.iv.next44.i.i146 = add nuw nsw i64 %indvars.iv43.i.i143, 1 ; 3 uses
  %i.jg = icmp samesign ult i64 %indvars.iv.next44.i.i146, %i.ir
  br i1 %i.jg, label %.preheader.i.i151, label %bb.ah

.preheader.i.i151:                                ; preds = %bb.ag
  %i.jh = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %min.iters.check662 = icmp ult i64 %9, 8
  br i1 %min.iters.check662, label %scalar.ph661.preheader, label %vector.ph663

vector.ph663:                                     ; preds = %.preheader.i.i151
  %n.vec664 = and i64 %9, -8                      ; 3 uses
  %i.ji = add i64 %indvars.iv38.i.i144, %n.vec664
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv38.i.i144
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph663
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next671, %vector.body665 ] ; 2 uses
  %vec.phi667 = phi <4 x i32> [ splat (i32 1), %vector.ph663 ], [ %i.jm, %vector.body665 ]
  %vec.phi668 = phi <4 x i32> [ splat (i32 1), %vector.ph663 ], [ %i.jn, %vector.body665 ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %index666 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load669 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !83
  %wide.load670 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !83
  %i.jm = mul <4 x i32> %wide.load669, %vec.phi667 ; 2 uses
  %i.jn = mul <4 x i32> %wide.load670, %vec.phi668 ; 2 uses
  %index.next671 = add nuw i64 %index666, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next671, %n.vec664
  br i1 %i.jo, label %middle.block672, label %vector.body665, !llvm.loop !593

middle.block672:                                  ; preds = %vector.body665
  %bin.rdx673 = mul <4 x i32> %i.jn, %i.jm
  %i.jp = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx673) ; 2 uses
  %cmp.n674 = icmp eq i64 %9, %n.vec664
  br i1 %cmp.n674, label %.loopexit694, label %scalar.ph661.preheader

scalar.ph661.preheader:                           ; preds = %.preheader.i.i151, %middle.block672
  %indvars.iv40.i.i152.ph = phi i64 [ %indvars.iv38.i.i144, %.preheader.i.i151 ], [ %i.ji, %middle.block672 ]
  %.030.i.i153.ph = phi i32 [ 1, %.preheader.i.i151 ], [ %i.jp, %middle.block672 ]
  br label %scalar.ph661

scalar.ph661:                                     ; preds = %scalar.ph661.preheader, %scalar.ph661
  %indvars.iv40.i.i152 = phi i64 [ %indvars.iv.next41.i.i154, %scalar.ph661 ], [ %indvars.iv40.i.i152.ph, %scalar.ph661.preheader ] ; 2 uses
  %.030.i.i153 = phi i32 [ %i.js, %scalar.ph661 ], [ %.030.i.i153.ph, %scalar.ph661.preheader ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv40.i.i152
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !83
  %i.js = mul nsw i32 %i.jr, %.030.i.i153         ; 2 uses
  %indvars.iv.next41.i.i154 = add nuw nsw i64 %indvars.iv40.i.i152, 1 ; 2 uses
  %exitcond.not.i.i155 = icmp eq i64 %indvars.iv.next41.i.i154, %i.ir
  br i1 %exitcond.not.i.i155, label %.loopexit694, label %scalar.ph661, !llvm.loop !594

.loopexit694:                                     ; preds = %scalar.ph661, %middle.block672
  %.lcssa616 = phi i32 [ %i.jp, %middle.block672 ], [ %i.js, %scalar.ph661 ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv43.i.i143
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !83
  %i.jv = mul nsw i32 %i.ju, %.lcssa616
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv43.i.i143
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !83
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit694
  %.pn.i.i147 = phi i32 [ %i.jv, %.loopexit694 ], [ %i.jx, %bb.ah ]
  %.1.i.i148 = add nsw i32 %.pn.i.i147, %.02132.i.i145 ; 2 uses
  %indvars.iv.next39.i.i149 = add nuw nsw i64 %indvars.iv38.i.i144, 1
  %exitcond47.not.i.i150 = icmp eq i64 %indvars.iv.next44.i.i146, %i.ir
  br i1 %exitcond47.not.i.i150, label %.lr.ph.i.i157, label %bb.ag, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread: ; preds = %.preheader27.i.i141, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %i.jy = load i32, ptr %i.go, align 4, !tbaa !83
  %i.jz = sitofp i32 %i.jy to double
  %i.ka = fmul double %i.ik, %i.jz
  %i.kb = call double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %i.ka)
  %i.kc = load i32, ptr %i.e, align 4, !tbaa !83
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176

.lr.ph.i.i157:                                    ; preds = %bb.ai
  %i.kd = sext i32 %.1.i.i148 to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !83
  %i.kg = sitofp i32 %i.kf to double
  %i.kh = fmul double %i.ik, %i.kg
  %i.ki = call double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %i.kh) ; 2 uses
  %i.kj = load i32, ptr %i.e, align 4, !tbaa !83  ; 2 uses
  %i.kk = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.kl = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.km = load ptr, ptr %i.bg, align 8, !tbaa !60 ; 3 uses
  br label %bb.aj

.preheader27.i.i160:                              ; preds = %bb.aj
  %i.kn = icmp sgt i32 %i.la, 0
  br i1 %i.kn, label %.lr.ph33.i.i161, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176

.lr.ph33.i.i161:                                  ; preds = %.preheader27.i.i160
  %i.ko = zext nneg i32 %i.la to i64              ; 4 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i157
  %indvars.iv.i.i158 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i159, %bb.aj ] ; 5 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv.i.i158
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !82
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i158
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !82
  %i.kt = fsub double %i.kq, %i.ks
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i.i158
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !82
  %i.kw = fdiv double %i.kt, %i.kv
  %i.kx = fadd double %i.kw, f0x3EB0C6F7A0B5ED8D
  %i.ky = fptosi double %i.kx to i32
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i.i158
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !83
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %i.la = load i32, ptr %i.be, align 8, !tbaa !274 ; 3 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = icmp slt i64 %indvars.iv.next.i.i159, %i.lb
  br i1 %i.lc, label %bb.aj, label %.preheader27.i.i160, !llvm.loop !18

bb.ak:                                            ; preds = %bb.am, %.lr.ph33.i.i161
  %indvars.iv43.i.i162 = phi i64 [ 0, %.lr.ph33.i.i161 ], [ %indvars.iv.next44.i.i165, %bb.am ] ; 4 uses
  %indvars.iv38.i.i163 = phi i64 [ 1, %.lr.ph33.i.i161 ], [ %indvars.iv.next39.i.i168, %bb.am ] ; 4 uses
  %.02132.i.i164 = phi i32 [ 0, %.lr.ph33.i.i161 ], [ %.1.i.i167, %bb.am ]
  %10 = xor i64 %indvars.iv43.i.i162, -1
  %11 = add nsw i64 %10, %i.ko                    ; 3 uses
  %indvars.iv.next44.i.i165 = add nuw nsw i64 %indvars.iv43.i.i162, 1 ; 3 uses
  %i.ld = icmp samesign ult i64 %indvars.iv.next44.i.i165, %i.ko
  br i1 %i.ld, label %.preheader.i.i171, label %bb.al

.preheader.i.i171:                                ; preds = %bb.ak
  %i.le = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %min.iters.check646 = icmp ult i64 %11, 8
  br i1 %min.iters.check646, label %scalar.ph645.preheader, label %vector.ph647

vector.ph647:                                     ; preds = %.preheader.i.i171
  %n.vec648 = and i64 %11, -8                     ; 3 uses
  %i.lf = add i64 %indvars.iv38.i.i163, %n.vec648
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv38.i.i163
  br label %vector.body649

vector.body649:                                   ; preds = %vector.body649, %vector.ph647
  %index650 = phi i64 [ 0, %vector.ph647 ], [ %index.next655, %vector.body649 ] ; 2 uses
  %vec.phi651 = phi <4 x i32> [ splat (i32 1), %vector.ph647 ], [ %i.lj, %vector.body649 ]
  %vec.phi652 = phi <4 x i32> [ splat (i32 1), %vector.ph647 ], [ %i.lk, %vector.body649 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %index650 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load653 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !83
  %wide.load654 = load <4 x i32>, ptr %i.li, align 4, !tbaa !83
  %i.lj = mul <4 x i32> %wide.load653, %vec.phi651 ; 2 uses
  %i.lk = mul <4 x i32> %wide.load654, %vec.phi652 ; 2 uses
  %index.next655 = add nuw i64 %index650, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next655, %n.vec648
  br i1 %i.ll, label %middle.block656, label %vector.body649, !llvm.loop !595

middle.block656:                                  ; preds = %vector.body649
  %bin.rdx657 = mul <4 x i32> %i.lk, %i.lj
  %i.lm = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx657) ; 2 uses
  %cmp.n658 = icmp eq i64 %11, %n.vec648
  br i1 %cmp.n658, label %.loopexit693, label %scalar.ph645.preheader

scalar.ph645.preheader:                           ; preds = %.preheader.i.i171, %middle.block656
  %indvars.iv40.i.i172.ph = phi i64 [ %indvars.iv38.i.i163, %.preheader.i.i171 ], [ %i.lf, %middle.block656 ]
  %.030.i.i173.ph = phi i32 [ 1, %.preheader.i.i171 ], [ %i.lm, %middle.block656 ]
  br label %scalar.ph645

scalar.ph645:                                     ; preds = %scalar.ph645.preheader, %scalar.ph645
  %indvars.iv40.i.i172 = phi i64 [ %indvars.iv.next41.i.i174, %scalar.ph645 ], [ %indvars.iv40.i.i172.ph, %scalar.ph645.preheader ] ; 2 uses
  %.030.i.i173 = phi i32 [ %i.lp, %scalar.ph645 ], [ %.030.i.i173.ph, %scalar.ph645.preheader ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv40.i.i172
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !83
  %i.lp = mul nsw i32 %i.lo, %.030.i.i173         ; 2 uses
  %indvars.iv.next41.i.i174 = add nuw nsw i64 %indvars.iv40.i.i172, 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq i64 %indvars.iv.next41.i.i174, %i.ko
  br i1 %exitcond.not.i.i175, label %.loopexit693, label %scalar.ph645, !llvm.loop !596

.loopexit693:                                     ; preds = %scalar.ph645, %middle.block656
  %.lcssa618 = phi i32 [ %i.lm, %middle.block656 ], [ %i.lp, %scalar.ph645 ]
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv43.i.i162
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !83
  %i.ls = mul nsw i32 %i.lr, %.lcssa618
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv43.i.i162
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !83
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit693
  %.pn.i.i166 = phi i32 [ %i.ls, %.loopexit693 ], [ %i.lu, %bb.al ]
  %.1.i.i167 = add nsw i32 %.pn.i.i166, %.02132.i.i164 ; 2 uses
  %indvars.iv.next39.i.i168 = add nuw nsw i64 %indvars.iv38.i.i163, 1
  %exitcond47.not.i.i169 = icmp eq i64 %indvars.iv.next44.i.i165, %i.ko
  br i1 %exitcond47.not.i.i169, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170, label %bb.ak, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170: ; preds = %bb.am
  %i.lv = sext i32 %.1.i.i167 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread, %.preheader27.i.i160, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170
  %i.lw = phi i32 [ %i.kj, %.preheader27.i.i160 ], [ %i.kc, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ], [ %i.kj, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170 ]
  %i.lx = phi double [ %i.ki, %.preheader27.i.i160 ], [ %i.kb, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ], [ %i.ki, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170 ]
  %.021.lcssa.i.i156 = phi i64 [ 0, %.preheader27.i.i160 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ], [ %i.lv, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170 ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.021.lcssa.i.i156
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !83
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = sitofp i32 %i.ma to double
  %i.mc = fdiv double %i.lx, %i.mb
  store double %i.mc, ptr %i.gp, align 8, !tbaa !82
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.md = load i32, ptr %i.i, align 8, !tbaa !268
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp slt i64 %indvars.iv.next477, %i.me
  br i1 %i.mf, label %bb.aa, label %._crit_edge453, !llvm.loop !597

._crit_edge453:                                   ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176, %.preheader289
  br i1 %.not.i.i.i.i177, label %.thread, label %bb.an

bb.an:                                            ; preds = %._crit_edge453
  br i1 %i.bm, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !213

.noexc.i.i:                                       ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.an
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #27
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc179:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.bl ; 3 uses
  br i1 %i.bn, label %bb.ao, label %bb.ap, !prof !214

bb.ao:                                            ; preds = %.noexc179
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr align 8 %.sroa.0257.0, i64 %i.bl, i1 false)
  br label %.thread

bb.ap:                                            ; preds = %.noexc179
  br i1 %i.bo, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.mi = load double, ptr %.sroa.0257.0, align 8, !tbaa !82
  store double %i.mi, ptr %i.mg, align 8, !tbaa !82
  br label %.thread

.thread:                                          ; preds = %._crit_edge453, %bb.aq, %bb.ap, %bb.ao
  %i.mj = phi ptr [ %i.mh, %bb.ao ], [ %i.mh, %bb.ap ], [ %i.mh, %bb.aq ], [ %i.bp, %._crit_edge453 ]
  %i.mk = phi ptr [ %i.mg, %bb.ao ], [ %i.mg, %bb.ap ], [ %i.mg, %bb.aq ], [ null, %._crit_edge453 ] ; 12 uses
  %i.ml = load i32, ptr %i.ax, align 8, !tbaa !273
  %i.mm = icmp sgt i32 %i.ml, 0
  br i1 %i.mm, label %.lr.ph.i.i181, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph.i.i181:                                    ; preds = %.thread
  %i.mn = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.mo = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.mp = load ptr, ptr %i.ba, align 8, !tbaa !60 ; 3 uses
  br label %bb.ar

.preheader27.i.i184:                              ; preds = %bb.ar
  %i.mq = icmp sgt i32 %i.nd, 0
  br i1 %i.mq, label %.lr.ph33.i.i185, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph33.i.i185:                                  ; preds = %.preheader27.i.i184
  %i.mr = zext nneg i32 %i.nd to i64              ; 4 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i181
  %indvars.iv.i.i182 = phi i64 [ 0, %.lr.ph.i.i181 ], [ %indvars.iv.next.i.i183, %bb.ar ] ; 5 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv.i.i182
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !82
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i182
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !82
  %i.mw = fsub double %i.mt, %i.mv
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.i.i182
  %i.my = load double, ptr %i.mx, align 8, !tbaa !82
  %i.mz = fdiv double %i.mw, %i.my
  %i.na = fadd double %i.mz, f0x3EB0C6F7A0B5ED8D
  %i.nb = fptosi double %i.na to i32
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.i.i182
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !83
  %indvars.iv.next.i.i183 = add nuw nsw i64 %indvars.iv.i.i182, 1 ; 2 uses
  %i.nd = load i32, ptr %i.ax, align 8, !tbaa !273 ; 3 uses
  %i.ne = sext i32 %i.nd to i64
  %i.nf = icmp slt i64 %indvars.iv.next.i.i183, %i.ne
  br i1 %i.nf, label %bb.ar, label %.preheader27.i.i184, !llvm.loop !16

bb.as:                                            ; preds = %bb.au, %.lr.ph33.i.i185
  %indvars.iv43.i.i186 = phi i64 [ 0, %.lr.ph33.i.i185 ], [ %indvars.iv.next44.i.i189, %bb.au ] ; 4 uses
  %indvars.iv38.i.i187 = phi i64 [ 1, %.lr.ph33.i.i185 ], [ %indvars.iv.next39.i.i192, %bb.au ] ; 4 uses
  %.02132.i.i188 = phi i32 [ 0, %.lr.ph33.i.i185 ], [ %.1.i.i191, %bb.au ]
  %12 = xor i64 %indvars.iv43.i.i186, -1
  %13 = add nsw i64 %12, %i.mr                    ; 3 uses
  %indvars.iv.next44.i.i189 = add nuw nsw i64 %indvars.iv43.i.i186, 1 ; 3 uses
  %i.ng = icmp samesign ult i64 %indvars.iv.next44.i.i189, %i.mr
  br i1 %i.ng, label %.preheader.i.i195, label %bb.at

.preheader.i.i195:                                ; preds = %bb.as
  %i.nh = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %min.iters.check630 = icmp ult i64 %13, 8
  br i1 %min.iters.check630, label %scalar.ph629.preheader, label %vector.ph631

vector.ph631:                                     ; preds = %.preheader.i.i195
  %n.vec632 = and i64 %13, -8                     ; 3 uses
  %i.ni = add i64 %indvars.iv38.i.i187, %n.vec632
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv38.i.i187
  br label %vector.body633

vector.body633:                                   ; preds = %vector.body633, %vector.ph631
  %index634 = phi i64 [ 0, %vector.ph631 ], [ %index.next639, %vector.body633 ] ; 2 uses
  %vec.phi635 = phi <4 x i32> [ splat (i32 1), %vector.ph631 ], [ %i.nm, %vector.body633 ]
  %vec.phi636 = phi <4 x i32> [ splat (i32 1), %vector.ph631 ], [ %i.nn, %vector.body633 ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index634 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load637 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !83
  %wide.load638 = load <4 x i32>, ptr %i.nl, align 4, !tbaa !83
  %i.nm = mul <4 x i32> %wide.load637, %vec.phi635 ; 2 uses
  %i.nn = mul <4 x i32> %wide.load638, %vec.phi636 ; 2 uses
  %index.next639 = add nuw i64 %index634, 8       ; 2 uses
  %i.no = icmp eq i64 %index.next639, %n.vec632
  br i1 %i.no, label %middle.block640, label %vector.body633, !llvm.loop !598

middle.block640:                                  ; preds = %vector.body633
  %bin.rdx641 = mul <4 x i32> %i.nn, %i.nm
  %i.np = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx641) ; 2 uses
  %cmp.n642 = icmp eq i64 %13, %n.vec632
  br i1 %cmp.n642, label %.loopexit697, label %scalar.ph629.preheader

scalar.ph629.preheader:                           ; preds = %.preheader.i.i195, %middle.block640
  %indvars.iv40.i.i196.ph = phi i64 [ %indvars.iv38.i.i187, %.preheader.i.i195 ], [ %i.ni, %middle.block640 ]
  %.030.i.i197.ph = phi i32 [ 1, %.preheader.i.i195 ], [ %i.np, %middle.block640 ]
  br label %scalar.ph629

scalar.ph629:                                     ; preds = %scalar.ph629.preheader, %scalar.ph629
  %indvars.iv40.i.i196 = phi i64 [ %indvars.iv.next41.i.i198, %scalar.ph629 ], [ %indvars.iv40.i.i196.ph, %scalar.ph629.preheader ] ; 2 uses
  %.030.i.i197 = phi i32 [ %i.ns, %scalar.ph629 ], [ %.030.i.i197.ph, %scalar.ph629.preheader ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv40.i.i196
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !83
  %i.ns = mul nsw i32 %i.nr, %.030.i.i197         ; 2 uses
  %indvars.iv.next41.i.i198 = add nuw nsw i64 %indvars.iv40.i.i196, 1 ; 2 uses
  %exitcond.not.i.i199 = icmp eq i64 %indvars.iv.next41.i.i198, %i.mr
  br i1 %exitcond.not.i.i199, label %.loopexit697, label %scalar.ph629, !llvm.loop !599

.loopexit697:                                     ; preds = %scalar.ph629, %middle.block640
  %.lcssa620 = phi i32 [ %i.np, %middle.block640 ], [ %i.ns, %scalar.ph629 ]
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv43.i.i186
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !83
  %i.nv = mul nsw i32 %i.nu, %.lcssa620
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv43.i.i186
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !83
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit697
  %.pn.i.i190 = phi i32 [ %i.nv, %.loopexit697 ], [ %i.nx, %bb.at ]
  %.1.i.i191 = add nsw i32 %.pn.i.i190, %.02132.i.i188 ; 2 uses
  %indvars.iv.next39.i.i192 = add nuw nsw i64 %indvars.iv38.i.i187, 1
  %exitcond47.not.i.i193 = icmp eq i64 %indvars.iv.next44.i.i189, %i.mr
  br i1 %exitcond47.not.i.i193, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194, label %bb.as, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194: ; preds = %bb.au
  %i.ny = sext i32 %.1.i.i191 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194, %.preheader27.i.i184, %.thread
  %.021.lcssa.i.i180 = phi i64 [ 0, %.preheader27.i.i184 ], [ 0, %.thread ], [ %i.ny, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194 ]
  %i.nz = load ptr, ptr %i.bc, align 8, !tbaa !250
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %.021.lcssa.i.i180 ; 10 uses
  %i.ob = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.oc = ptrtoint ptr %i.mk to i64
  %i.od = sub i64 %i.ob, %i.oc                    ; 15 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 3 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !210
  %i.og = load ptr, ptr %i.oa, align 8, !tbaa !57 ; 5 uses
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = icmp ugt i64 %i.od, %i.oj
  br i1 %i.ok, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.ol = icmp ugt i64 %i.od, 9223372036854775800
  br i1 %i.ol, label %bb.aw, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, !prof !213

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc253 unwind label %.loopexit.split-lp297

.noexc253:                                        ; preds = %bb.aw
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %bb.av
  %i.om = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.od) #27
          to label %.noexc254 unwind label %.loopexit296 ; 4 uses

.noexc254:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.on = icmp samesign ugt i64 %i.od, 8
  br i1 %i.on, label %bb.ax, label %bb.ay, !prof !272

bb.ax:                                            ; preds = %.noexc254
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.om, ptr align 8 %i.mk, i64 %i.od, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.ay:                                            ; preds = %.noexc254
  %i.oo = icmp eq i64 %i.od, 8
  br i1 %i.oo, label %bb.az, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.op = load double, ptr %i.mk, align 8, !tbaa !82
  store double %i.op, ptr %i.om, align 8, !tbaa !82
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.oq = load ptr, ptr %i.oa, align 8, !tbaa !57 ; 3 uses
  %.not.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  %i.or = load ptr, ptr %i.oe, align 8, !tbaa !210
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.oq to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.ou) #26
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  store ptr %i.om, ptr %i.oa, align 8, !tbaa !57
  %i.ov = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.od
  store ptr %i.ov, ptr %i.oe, align 8, !tbaa !210
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.bb:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !211 ; 3 uses
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.oy, %i.oi                    ; 5 uses
  %.not24.i = icmp ult i64 %i.oz, %i.od
  br i1 %.not24.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pa = icmp sgt i64 %i.od, 8
  br i1 %i.pa, label %bb.bd, label %bb.be, !prof !272

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.og, ptr align 8 %i.mk, i64 %i.od, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.pb = icmp eq i64 %i.od, 8
  br i1 %i.pb, label %bb.bf, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.pc = load double, ptr %i.mk, align 8, !tbaa !82
  store double %i.pc, ptr %i.og, align 8, !tbaa !82
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i.thread

bb.bg:                                            ; preds = %bb.bb
  %i.pd = icmp sgt i64 %i.oz, 8
  br i1 %i.pd, label %bb.bh, label %bb.bi, !prof !272

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.og, ptr align 8 %i.mk, i64 %i.oz, i1 false)
  %.pre25.i = load ptr, ptr %i.ow, align 8, !tbaa !211 ; 2 uses
  %.pre26.i = load ptr, ptr %i.oa, align 8, !tbaa !57
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.pe = icmp eq i64 %i.oz, 8
  br i1 %i.pe, label %bb.bj, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.pf = load double, ptr %i.mk, align 8, !tbaa !82
  store double %i.pf, ptr %i.og, align 8, !tbaa !82
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.bj, %bb.bi, %bb.bh
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.bh ], [ %i.oz, %bb.bi ], [ 8, %bb.bj ]
  %i.pg = phi ptr [ %.pre25.i, %bb.bh ], [ %i.ox, %bb.bi ], [ %i.ox, %bb.bj ] ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.pre-phi32.i ; 3 uses
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = sub i64 %i.ob, %i.pi                    ; 3 uses
  %i.pk = icmp sgt i64 %i.pj, 8
  br i1 %i.pk, label %bb.bk, label %bb.bl, !prof !272

bb.bk:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.pg, ptr align 8 %i.ph, i64 %i.pj, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.bl:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  %i.pl = icmp eq i64 %i.pj, 8
  br i1 %i.pl, label %bb.bm, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.pm = load double, ptr %i.ph, align 8, !tbaa !82
  store double %i.pm, ptr %i.pg, align 8, !tbaa !82
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i.thread

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i.thread: ; preds = %bb.bm, %bb.bf
  %i.pn = load ptr, ptr %i.oa, align 8, !tbaa !57
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.od
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !211
  br label %bb.bn

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.bl, %bb.bk, %bb.be, %bb.bd, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.pq = load ptr, ptr %i.oa, align 8, !tbaa !57
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.od
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !211
  %.not.i.i.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.od) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i, %bb.bn
  %i.pt = load i32, ptr %i.e, align 4, !tbaa !83
  %i.pu = load i32, ptr %i.be, align 8, !tbaa !274
  %i.pv = icmp sgt i32 %i.pu, 0
  br i1 %i.pv, label %.lr.ph.i.i202, label %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit

.lr.ph.i.i202:                                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.pw = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.px = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.py = load ptr, ptr %i.bg, align 8, !tbaa !60 ; 3 uses
  br label %bb.bo

.preheader27.i.i205:                              ; preds = %bb.bo
  %i.pz = icmp sgt i32 %i.qm, 0
  br i1 %i.pz, label %.lr.ph33.i.i206, label %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit

.lr.ph33.i.i206:                                  ; preds = %.preheader27.i.i205
  %i.qa = zext nneg i32 %i.qm to i64              ; 4 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i.i202
  %indvars.iv.i.i203 = phi i64 [ 0, %.lr.ph.i.i202 ], [ %indvars.iv.next.i.i204, %bb.bo ] ; 5 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0559571, i64 %indvars.iv.i.i203
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !82
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i203
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !82
  %i.qf = fsub double %i.qc, %i.qe
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.i.i203
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !82
  %i.qi = fdiv double %i.qf, %i.qh
  %i.qj = fadd double %i.qi, f0x3EB0C6F7A0B5ED8D
  %i.qk = fptosi double %i.qj to i32
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv.i.i203
  store i32 %i.qk, ptr %i.ql, align 4, !tbaa !83
  %indvars.iv.next.i.i204 = add nuw nsw i64 %indvars.iv.i.i203, 1 ; 2 uses
  %i.qm = load i32, ptr %i.be, align 8, !tbaa !274 ; 3 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %indvars.iv.next.i.i204, %i.qn
  br i1 %i.qo, label %bb.bo, label %.preheader27.i.i205, !llvm.loop !18

bb.bp:                                            ; preds = %bb.br, %.lr.ph33.i.i206
  %indvars.iv43.i.i207 = phi i64 [ 0, %.lr.ph33.i.i206 ], [ %indvars.iv.next44.i.i210, %bb.br ] ; 4 uses
  %indvars.iv38.i.i208 = phi i64 [ 1, %.lr.ph33.i.i206 ], [ %indvars.iv.next39.i.i213, %bb.br ] ; 4 uses
  %.02132.i.i209 = phi i32 [ 0, %.lr.ph33.i.i206 ], [ %.1.i.i212, %bb.br ]
  %14 = xor i64 %indvars.iv43.i.i207, -1
  %15 = add nsw i64 %14, %i.qa                    ; 3 uses
  %indvars.iv.next44.i.i210 = add nuw nsw i64 %indvars.iv43.i.i207, 1 ; 3 uses
  %i.qp = icmp samesign ult i64 %indvars.iv.next44.i.i210, %i.qa
  br i1 %i.qp, label %.preheader.i.i216, label %bb.bq

.preheader.i.i216:                                ; preds = %bb.bp
  %i.qq = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %min.iters.check = icmp ult i64 %15, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i216
  %n.vec = and i64 %15, -8                        ; 3 uses
  %i.qr = add i64 %indvars.iv38.i.i208, %n.vec
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv38.i.i208
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.qv, %vector.body ]
  %vec.phi627 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.qw, %vector.body ]
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %index ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load = load <4 x i32>, ptr %i.qt, align 4, !tbaa !83
  %wide.load628 = load <4 x i32>, ptr %i.qu, align 4, !tbaa !83
  %i.qv = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.qw = mul <4 x i32> %wide.load628, %vec.phi627 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.qw, %i.qv
  %i.qy = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %15, %n.vec
  br i1 %cmp.n, label %.loopexit696, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i216, %middle.block
  %indvars.iv40.i.i217.ph = phi i64 [ %indvars.iv38.i.i208, %.preheader.i.i216 ], [ %i.qr, %middle.block ]
  %.030.i.i218.ph = phi i32 [ 1, %.preheader.i.i216 ], [ %i.qy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40.i.i217 = phi i64 [ %indvars.iv.next41.i.i219, %scalar.ph ], [ %indvars.iv40.i.i217.ph, %scalar.ph.preheader ] ; 2 uses
  %.030.i.i218 = phi i32 [ %i.rb, %scalar.ph ], [ %.030.i.i218.ph, %scalar.ph.preheader ]
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv40.i.i217
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !83
  %i.rb = mul nsw i32 %i.ra, %.030.i.i218         ; 2 uses
  %indvars.iv.next41.i.i219 = add nuw nsw i64 %indvars.iv40.i.i217, 1 ; 2 uses
  %exitcond.not.i.i220 = icmp eq i64 %indvars.iv.next41.i.i219, %i.qa
  br i1 %exitcond.not.i.i220, label %.loopexit696, label %scalar.ph, !llvm.loop !601

.loopexit696:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa622 = phi i32 [ %i.qy, %middle.block ], [ %i.rb, %scalar.ph ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv43.i.i207
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !83
  %i.re = mul nsw i32 %i.rd, %.lcssa622
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv43.i.i207
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !83
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.loopexit696
  %.pn.i.i211 = phi i32 [ %i.re, %.loopexit696 ], [ %i.rg, %bb.bq ]
  %.1.i.i212 = add nsw i32 %.pn.i.i211, %.02132.i.i209 ; 2 uses
  %indvars.iv.next39.i.i213 = add nuw nsw i64 %indvars.iv38.i.i208, 1
  %exitcond47.not.i.i214 = icmp eq i64 %indvars.iv.next44.i.i210, %i.qa
  br i1 %exitcond47.not.i.i214, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i215, label %bb.bp, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i215: ; preds = %bb.br
  %i.rh = sext i32 %.1.i.i212 to i64
  br label %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit

_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %.preheader27.i.i205, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i215
  %.021.lcssa.i.i201 = phi i64 [ 0, %.preheader27.i.i205 ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.rh, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i215 ]
  %i.ri = load ptr, ptr %i.bi, align 8, !tbaa !60
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %.021.lcssa.i.i201 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !83
  %i.rl = add nsw i32 %i.rk, %i.pt
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !83
  br label %bb.bs

bb.bs:                                            ; preds = %bb.z, %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit
  %i.rm = add nuw nsw i32 %.157454, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.rm, %.042.lcssa575
  br i1 %exitcond.not, label %._crit_edge455, label %.critedge.preheader, !llvm.loop !602

.loopexit296:                                     ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %lpad.loopexit298 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp297:                            ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp297, %.loopexit296
  %lpad.phi299 = phi { ptr, i32 } [ %lpad.loopexit298, %.loopexit296 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp297 ] ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i221, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.od) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

._crit_edge455:                                   ; preds = %bb.bs, %.preheader292
  %i.rn = invoke noundef i32 @_ZN14colvarproxy_io18close_input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.bv:                                            ; preds = %._crit_edge455
  %i.ro = invoke noundef i32 @_ZN14colvarproxy_io18close_input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.rp = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.ao
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.bw
  %i.rr = load i64, ptr %i.ao, align 8, !tbaa !209
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.rt = load ptr, ptr %2, align 8, !tbaa !207   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.am
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.rv = load i64, ptr %i.am, align 8, !tbaa !209
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.rx = load ptr, ptr %i.ad, align 8, !tbaa !240
  %i.ry = load ptr, ptr %1, align 8, !tbaa !239   ; 2 uses
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = shl i64 %i.sb, 27
  %i.sd = ashr i64 %i.sc, 32
  %i.se = icmp slt i64 %indvars.iv.next480, %i.sd
  br i1 %i.se, label %bb.f, label %.loopexit304, !llvm.loop !603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.p, %bb.n, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.bu, %bb.bt, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.pn62.pn = phi { ptr, i32 } [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %lpad.phi299, %bb.bt ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %lpad.phi299, %bb.bu ], [ %lpad.loopexit.split-lp316, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.eg, %bb.o ], [ %i.eb, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit286, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit290, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit293, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit301, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit315, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.eh, %bb.p ] ; 2 uses
  %i.sf = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.ao
  br i1 %i.sg, label %.body101, label %.body101.sink.split

.body101.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.j
  %.sink = phi ptr [ %i.cv, %bb.j ], [ %i.sf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  %.pn62.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi314, %bb.j ], [ %.pn62.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  %i.sh = load i64, ptr %i.ao, align 8, !tbaa !209
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.si) #26
  br label %.body101

.body101:                                         ; preds = %.body101.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.j
  %.pn62.pn.pn = phi { ptr, i32 } [ %lpad.phi314, %bb.j ], [ %.pn62.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn62.pn.pn.ph, %.body101.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.sj = load ptr, ptr %2, align 8, !tbaa !207   ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.am
  br i1 %i.sk, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body101, %bb.h
  %.sink700 = phi ptr [ %i.cf, %bb.h ], [ %i.sj, %.body101 ]
  %.pn62.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi309, %bb.h ], [ %.pn62.pn.pn, %.body101 ]
  %i.sl = load i64, ptr %i.am, align 8, !tbaa !209
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %.sink700, i64 noundef %i.sm) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body101, %bb.h
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi309, %bb.h ], [ %.pn62.pn.pn, %.body101 ], [ %.pn62.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %.not.i.i.i235 = icmp eq ptr %.sroa.0257.0, null
  br i1 %.not.i.i.i235, label %_ZNSt6vectorIdSaIdEED2Ev.exit236, label %bb.bx

bb.bx:                                            ; preds = %.body
  %i.sn = sub i64 %.sroa.16.0, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0257.0, i64 noundef %i.sn) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit236

.critedge71:                                      ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i110
  %i.so = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.ao
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %.critedge71
  %i.sq = load i64, ptr %i.ao, align 8, !tbaa !209
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %.critedge71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
end_hunk_1
begin_hunk_2_@_ZN14colvarbias_abf18calc_biasing_forceERSt6vectorIdSaIdEE:bb.a
  %i.lx = icmp eq i64 %index.next88, %n.vec75
  br i1 %i.lx, label %middle.block89, label %vector.body76, !llvm.loop !676

middle.block89:                                   ; preds = %pred.store.continue87
  %cmp.n90 = icmp eq i64 %i.kd, %n.vec75
  br i1 %cmp.n90, label %.loopexit, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %vector.memcheck73, %.lr.ph35, %middle.block89
  %.134.ph = phi i64 [ 0, %vector.memcheck73 ], [ 0, %.lr.ph35 ], [ %n.vec75, %middle.block89 ]
  br label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.preheader, %bb.t
  %.134 = phi i64 [ %i.mi, %bb.t ], [ %.134.ph, %scalar.ph71.preheader ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %.134 ; 2 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !82 ; 3 uses
  %i.ma = fmul double %i.lz, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.134
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !82 ; 4 uses
  %i.md = fmul double %i.mc, %i.mc
  %i.me = fcmp ogt double %i.ma, %i.md
  br i1 %i.me, label %bb.s, label %bb.t

bb.s:                                             ; preds = %scalar.ph71
  %i.mf = fcmp ogt double %i.lz, 0.000000e+00
  %i.mg = fneg double %i.mc
  %i.mh = select i1 %i.mf, double %i.mc, double %i.mg
  store double %i.mh, ptr %i.ly, align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %scalar.ph71, %bb.s
  %i.mi = add nuw i64 %.134, 1                    ; 2 uses
  %exitcond41.not = icmp eq i64 %i.mi, %i.kd
  br i1 %exitcond41.not, label %.loopexit, label %scalar.ph71, !llvm.loop !677

.loopexit:                                        ; preds = %bb.t, %middle.block89, %.preheader, %.critedge
  ret i32 0
}

declare noundef i64 @_ZNK12colvarmodule18num_biases_featureEi(ptr noundef nonnull align 8 dereferenceable(632), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11UIestimator11UIestimator6updateExSt6vectorIdSaIdEES3_(ptr noundef nonnull align 8 dereferenceable(1402) %0, i64 noundef %1, ptr noundef align 8 %2, ptr noundef align 8 %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = load ptr, ptr %i.i, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph115, label %bb.c, !llvm.loop !683

.lr.ph115:                                        ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !256
  %i.l = load ptr, ptr %2, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !82 ; 3 uses
  %i.q = fcmp ogt double %i.p, 1.500000e+02
  br i1 %i.q, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %3, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !82 ; 2 uses
  %i.u = fcmp olt double %i.t, -1.500000e+02
  br i1 %i.u, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.v = fadd double %i.t, 3.600000e+02
  store double %i.v, ptr %i.s, align 8, !tbaa !82
  %.pr.pre = load double, ptr %i.o, align 8, !tbaa !82
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.d, %bb.c
  %i.w = phi double [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %.pr.pre, %bb.e ] ; 3 uses
  %i.x = fcmp olt double %i.w, -1.500000e+02
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %thread-pre-split
  %i.y = load ptr, ptr %3, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !82 ; 2 uses
  %i.ab = fcmp ogt double %i.aa, 1.500000e+02
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = fadd double %i.aa, -3.600000e+02
  store double %i.ac, ptr %i.z, align 8, !tbaa !82
  %.pre = load double, ptr %i.o, align 8, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %thread-pre-split
  %i.ad = phi double [ %.pre, %bb.g ], [ %i.w, %bb.f ], [ %i.w, %thread-pre-split ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = load double, ptr %i.ae, align 8, !tbaa !82 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !82 ; 4 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double -1.000000e+01, double %i.af)
  %i.aj = fadd double %i.ai, f0x3EB0C6F7A0B5ED8D
  %i.ak = fcmp olt double %i.ad, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.am = load double, ptr %i.al, align 8, !tbaa !82 ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double 1.000000e+01, double %i.am)
  %i.ao = fadd double %i.an, f0xBEB0C6F7A0B5ED8D
  %i.ap = fcmp ogt double %i.ad, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %3, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load double, ptr %i.ar, align 8, !tbaa !82 ; 3 uses
  %i.at = fsub double %i.as, %i.ad                ; 2 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ah, double -1.000000e+01, double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %i.av = fcmp olt double %i.at, %i.au
  br i1 %i.av, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ah, double 1.000000e+01, double f0xBEB0C6F7A0B5ED8D) ; 2 uses
  %i.ax = fcmp ogt double %i.at, %i.aw
  %i.ay = fsub double %i.as, %i.af
  %i.az = fcmp olt double %i.ay, %i.au
  %or.cond = or i1 %i.ax, %i.az
  %i.ba = fsub double %i.as, %i.am
  %i.bb = fcmp ogt double %i.ba, %i.aw
  %or.cond102 = or i1 %i.bb, %or.cond
  br i1 %or.cond102, label %.loopexit, label %bb.b

bb.l:                                             ; preds = %.lr.ph115, %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61
  %indvars.iv128 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next129, %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv128 ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv128 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !82
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !279
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.bi = load ptr, ptr %3, align 8, !tbaa !57
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 3 uses
  br label %bb.m

.preheader27.i.i:                                 ; preds = %bb.m
  %i.bo = icmp sgt i32 %i.cc, 0
  br i1 %i.bo, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.bq = zext nneg i32 %i.cc to i64              ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 5 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !82
  %i.bv = fsub double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !82
  %i.by = fdiv double %i.bv, %i.bx
  %i.bz = fadd double %i.by, f0x3EB0C6F7A0B5ED8D
  %i.ca = fptosi double %i.bz to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cc = load i32, ptr %i.bf, align 8, !tbaa !279 ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i.i, %i.cd
  br i1 %i.ce, label %bb.m, label %.preheader27.i.i, !llvm.loop !21

bb.n:                                             ; preds = %bb.p, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.p ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.p ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.p ]
  %4 = xor i64 %indvars.iv43.i.i, -1
  %5 = add nsw i64 %4, %i.bq                      ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.bq
  br i1 %i.cf, label %.preheader.i.i, label %bb.o

.preheader.i.i:                                   ; preds = %bb.n
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !60 ; 2 uses
  %min.iters.check174 = icmp ult i64 %5, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.preheader.i.i
  %n.vec176 = and i64 %5, -8                      ; 3 uses
  %i.ch = add i64 %indvars.iv38.i.i, %n.vec176
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv38.i.i
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body177 ] ; 2 uses
  %vec.phi179 = phi <4 x i32> [ splat (i32 1), %vector.ph175 ], [ %i.cl, %vector.body177 ]
  %vec.phi180 = phi <4 x i32> [ splat (i32 1), %vector.ph175 ], [ %i.cm, %vector.body177 ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index178 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load181 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !83
  %wide.load182 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !83
  %i.cl = mul <4 x i32> %wide.load181, %vec.phi179 ; 2 uses
  %i.cm = mul <4 x i32> %wide.load182, %vec.phi180 ; 2 uses
  %index.next183 = add nuw i64 %index178, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.cn, label %middle.block184, label %vector.body177, !llvm.loop !684

middle.block184:                                  ; preds = %vector.body177
  %bin.rdx185 = mul <4 x i32> %i.cm, %i.cl
  %i.co = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx185) ; 2 uses
  %cmp.n186 = icmp eq i64 %5, %n.vec176
  br i1 %cmp.n186, label %.loopexit224, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.preheader.i.i, %middle.block184
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.ch, %middle.block184 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.co, %middle.block184 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph173 ], [ %indvars.iv40.i.i.ph, %scalar.ph173.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.cr, %scalar.ph173 ], [ %.030.i.i.ph, %scalar.ph173.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv40.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83
  %i.cr = mul nsw i32 %i.cq, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.bq
  br i1 %exitcond.not.i.i, label %.loopexit224, label %scalar.ph173, !llvm.loop !685

.loopexit224:                                     ; preds = %scalar.ph173, %middle.block184
  %.lcssa168 = phi i32 [ %i.co, %middle.block184 ], [ %i.cr, %scalar.ph173 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv43.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !83
  %i.cu = mul nsw i32 %i.ct, %.lcssa168
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv43.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit224
  %.pn.i.i = phi i32 [ %i.cu, %.loopexit224 ], [ %i.cw, %bb.o ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.bq
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.n, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.p
  %i.cx = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit

_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit: ; preds = %bb.l, %.preheader27.i.i, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %bb.l ], [ %i.cx, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.021.lcssa.i.i ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !82
  %i.dc = fadd double %i.be, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !82
  %i.dd = getelementptr inbounds nuw [160 x i8], ptr %i.n, i64 %indvars.iv128 ; 6 uses
  %i.de = load double, ptr %i.bd, align 8, !tbaa !82 ; 2 uses
  %i.df = fmul double %i.de, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 72 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !279
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i42, label %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61

.lr.ph.i.i42:                                     ; preds = %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit
  %i.dj = load ptr, ptr %3, align 8, !tbaa !57
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 136
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !60 ; 3 uses
  br label %bb.q

.preheader27.i.i45:                               ; preds = %bb.q
  %i.dp = icmp sgt i32 %i.ed, 0
  br i1 %i.dp, label %.lr.ph33.i.i46, label %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61

.lr.ph33.i.i46:                                   ; preds = %.preheader27.i.i45
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.dr = zext nneg i32 %i.ed to i64              ; 4 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i42
  %indvars.iv.i.i43 = phi i64 [ 0, %.lr.ph.i.i42 ], [ %indvars.iv.next.i.i44, %bb.q ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.i43
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i.i43
  %i.dv = load double, ptr %i.du, align 8, !tbaa !82
  %i.dw = fsub double %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i43
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !82
  %i.dz = fdiv double %i.dw, %i.dy
  %i.ea = fadd double %i.dz, f0x3EB0C6F7A0B5ED8D
  %i.eb = fptosi double %i.ea to i32
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i.i43
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !83
  %indvars.iv.next.i.i44 = add nuw nsw i64 %indvars.iv.i.i43, 1 ; 2 uses
  %i.ed = load i32, ptr %i.dg, align 8, !tbaa !279 ; 3 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next.i.i44, %i.ee
  br i1 %i.ef, label %bb.q, label %.preheader27.i.i45, !llvm.loop !21

bb.r:                                             ; preds = %bb.t, %.lr.ph33.i.i46
  %indvars.iv43.i.i47 = phi i64 [ 0, %.lr.ph33.i.i46 ], [ %indvars.iv.next44.i.i50, %bb.t ] ; 4 uses
  %indvars.iv38.i.i48 = phi i64 [ 1, %.lr.ph33.i.i46 ], [ %indvars.iv.next39.i.i53, %bb.t ] ; 4 uses
  %.02132.i.i49 = phi i32 [ 0, %.lr.ph33.i.i46 ], [ %.1.i.i52, %bb.t ]
  %6 = xor i64 %indvars.iv43.i.i47, -1
  %7 = add nsw i64 %6, %i.dr                      ; 3 uses
  %indvars.iv.next44.i.i50 = add nuw nsw i64 %indvars.iv43.i.i47, 1 ; 3 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next44.i.i50, %i.dr
  br i1 %i.eg, label %.preheader.i.i56, label %bb.s

.preheader.i.i56:                                 ; preds = %bb.r
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !60 ; 2 uses
  %min.iters.check = icmp ult i64 %7, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i56
  %n.vec = and i64 %7, -8                         ; 3 uses
  %i.ei = add i64 %indvars.iv38.i.i48, %n.vec
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv38.i.i48
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.em, %vector.body ]
  %vec.phi171 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.en, %vector.body ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <4 x i32>, ptr %i.ek, align 4, !tbaa !83
  %wide.load172 = load <4 x i32>, ptr %i.el, align 4, !tbaa !83
  %i.em = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.en = mul <4 x i32> %wide.load172, %vec.phi171 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !686

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.en, %i.em
  %i.ep = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit223, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i56, %middle.block
  %indvars.iv40.i.i57.ph = phi i64 [ %indvars.iv38.i.i48, %.preheader.i.i56 ], [ %i.ei, %middle.block ]
  %.030.i.i58.ph = phi i32 [ 1, %.preheader.i.i56 ], [ %i.ep, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40.i.i57 = phi i64 [ %indvars.iv.next41.i.i59, %scalar.ph ], [ %indvars.iv40.i.i57.ph, %scalar.ph.preheader ] ; 2 uses
  %.030.i.i58 = phi i32 [ %i.es, %scalar.ph ], [ %.030.i.i58.ph, %scalar.ph.preheader ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv40.i.i57
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !83
  %i.es = mul nsw i32 %i.er, %.030.i.i58          ; 2 uses
  %indvars.iv.next41.i.i59 = add nuw nsw i64 %indvars.iv40.i.i57, 1 ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %indvars.iv.next41.i.i59, %i.dr
  br i1 %exitcond.not.i.i60, label %.loopexit223, label %scalar.ph, !llvm.loop !687

.loopexit223:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa170 = phi i32 [ %i.ep, %middle.block ], [ %i.es, %scalar.ph ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv43.i.i47
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !83
  %i.ev = mul nsw i32 %i.eu, %.lcssa170
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv43.i.i47
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit223
  %.pn.i.i51 = phi i32 [ %i.ev, %.loopexit223 ], [ %i.ex, %bb.s ]
  %.1.i.i52 = add nsw i32 %.pn.i.i51, %.02132.i.i49 ; 2 uses
  %indvars.iv.next39.i.i53 = add nuw nsw i64 %indvars.iv38.i.i48, 1
  %exitcond47.not.i.i54 = icmp eq i64 %indvars.iv.next44.i.i50, %i.dr
  br i1 %exitcond47.not.i.i54, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i55, label %bb.r, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i55: ; preds = %bb.t
  %i.ey = sext i32 %.1.i.i52 to i64
  br label %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61

_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61: ; preds = %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit, %.preheader27.i.i45, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i55
  %.021.lcssa.i.i41 = phi i64 [ 0, %.preheader27.i.i45 ], [ 0, %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit ], [ %i.ey, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i55 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 112
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !57
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.021.lcssa.i.i41 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !82
  %i.fd = fadd double %i.df, %i.fc
  store double %i.fd, ptr %i.fb, align 8, !tbaa !82
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.fe = load i32, ptr %i.a, align 8, !tbaa !268
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next129, %i.ff
  br i1 %i.fg, label %bb.l, label %._crit_edge, !llvm.loop !688

._crit_edge:                                      ; preds = %_ZN11UIestimator8n_vectorIdE14increase_valueERKSt6vectorIdSaIdEEd.exit61, %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !274
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i63, label %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit

.lr.ph.i.i63:                                     ; preds = %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fl = load ptr, ptr %3, align 8, !tbaa !57
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !57
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !57
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !60 ; 3 uses
  br label %bb.u

.preheader27.i.i66:                               ; preds = %bb.u
  %i.fr = icmp sgt i32 %i.gf, 0
  br i1 %i.fr, label %.lr.ph33.i.i67, label %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit

.lr.ph33.i.i67:                                   ; preds = %.preheader27.i.i66
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ft = zext nneg i32 %i.gf to i64              ; 4 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i63
  %indvars.iv.i.i64 = phi i64 [ 0, %.lr.ph.i.i63 ], [ %indvars.iv.next.i.i65, %bb.u ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i64
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !82
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i.i64
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !82
  %i.fy = fsub double %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i.i64
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !82
  %i.gb = fdiv double %i.fy, %i.ga
  %i.gc = fadd double %i.gb, f0x3EB0C6F7A0B5ED8D
  %i.gd = fptosi double %i.gc to i32
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i.i64
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !83
  %indvars.iv.next.i.i65 = add nuw nsw i64 %indvars.iv.i.i64, 1 ; 2 uses
  %i.gf = load i32, ptr %i.fh, align 8, !tbaa !274 ; 3 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next.i.i65, %i.gg
  br i1 %i.gh, label %bb.u, label %.preheader27.i.i66, !llvm.loop !18

bb.v:                                             ; preds = %bb.x, %.lr.ph33.i.i67
  %indvars.iv43.i.i68 = phi i64 [ 0, %.lr.ph33.i.i67 ], [ %indvars.iv.next44.i.i71, %bb.x ] ; 4 uses
  %indvars.iv38.i.i69 = phi i64 [ 1, %.lr.ph33.i.i67 ], [ %indvars.iv.next39.i.i74, %bb.x ] ; 4 uses
  %.02132.i.i70 = phi i32 [ 0, %.lr.ph33.i.i67 ], [ %.1.i.i73, %bb.x ]
  %8 = xor i64 %indvars.iv43.i.i68, -1
  %9 = add nsw i64 %8, %i.ft                      ; 3 uses
  %indvars.iv.next44.i.i71 = add nuw nsw i64 %indvars.iv43.i.i68, 1 ; 3 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.next44.i.i71, %i.ft
  br i1 %i.gi, label %.preheader.i.i76, label %bb.w

.preheader.i.i76:                                 ; preds = %bb.v
  %i.gj = load ptr, ptr %i.fs, align 8, !tbaa !60 ; 2 uses
  %min.iters.check190 = icmp ult i64 %9, 8
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %.preheader.i.i76
  %n.vec192 = and i64 %9, -8                      ; 3 uses
  %i.gk = add i64 %indvars.iv38.i.i69, %n.vec192
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv38.i.i69
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 2 uses
  %vec.phi195 = phi <4 x i32> [ splat (i32 1), %vector.ph191 ], [ %i.go, %vector.body193 ]
  %vec.phi196 = phi <4 x i32> [ splat (i32 1), %vector.ph191 ], [ %i.gp, %vector.body193 ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index194 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load197 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !83
  %wide.load198 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !83
  %i.go = mul <4 x i32> %wide.load197, %vec.phi195 ; 2 uses
  %i.gp = mul <4 x i32> %wide.load198, %vec.phi196 ; 2 uses
  %index.next199 = add nuw i64 %index194, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.gq, label %middle.block200, label %vector.body193, !llvm.loop !689

middle.block200:                                  ; preds = %vector.body193
  %bin.rdx201 = mul <4 x i32> %i.gp, %i.go
  %i.gr = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx201) ; 2 uses
  %cmp.n202 = icmp eq i64 %9, %n.vec192
  br i1 %cmp.n202, label %.loopexit222, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %.preheader.i.i76, %middle.block200
  %indvars.iv40.i.i77.ph = phi i64 [ %indvars.iv38.i.i69, %.preheader.i.i76 ], [ %i.gk, %middle.block200 ]
  %.030.i.i78.ph = phi i32 [ 1, %.preheader.i.i76 ], [ %i.gr, %middle.block200 ]
  br label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189.preheader, %scalar.ph189
  %indvars.iv40.i.i77 = phi i64 [ %indvars.iv.next41.i.i79, %scalar.ph189 ], [ %indvars.iv40.i.i77.ph, %scalar.ph189.preheader ] ; 2 uses
  %.030.i.i78 = phi i32 [ %i.gu, %scalar.ph189 ], [ %.030.i.i78.ph, %scalar.ph189.preheader ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv40.i.i77
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !83
  %i.gu = mul nsw i32 %i.gt, %.030.i.i78          ; 2 uses
  %indvars.iv.next41.i.i79 = add nuw nsw i64 %indvars.iv40.i.i77, 1 ; 2 uses
  %exitcond.not.i.i80 = icmp eq i64 %indvars.iv.next41.i.i79, %i.ft
  br i1 %exitcond.not.i.i80, label %.loopexit222, label %scalar.ph189, !llvm.loop !690

.loopexit222:                                     ; preds = %scalar.ph189, %middle.block200
  %.lcssa165 = phi i32 [ %i.gr, %middle.block200 ], [ %i.gu, %scalar.ph189 ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv43.i.i68
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !83
  %i.gx = mul nsw i32 %i.gw, %.lcssa165
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv43.i.i68
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit222
  %.pn.i.i72 = phi i32 [ %i.gx, %.loopexit222 ], [ %i.gz, %bb.w ]
  %.1.i.i73 = add nsw i32 %.pn.i.i72, %.02132.i.i70 ; 2 uses
  %indvars.iv.next39.i.i74 = add nuw nsw i64 %indvars.iv38.i.i69, 1
  %exitcond47.not.i.i75 = icmp eq i64 %indvars.iv.next44.i.i71, %i.ft
  br i1 %exitcond47.not.i.i75, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.v, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.x
  %i.ha = sext i32 %.1.i.i73 to i64
  br label %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit

_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit: ; preds = %._crit_edge, %.preheader27.i.i66, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i62 = phi i64 [ 0, %.preheader27.i.i66 ], [ 0, %._crit_edge ], [ %i.ha, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !60
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.021.lcssa.i.i62 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !83
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !83
  %i.hg = load i32, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph117, label %._crit_edge118

.lr.ph117:                                        ; preds = %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit
  %i.hi = load ptr, ptr %2, align 8, !tbaa !57
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !57
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 408
  %wide.trip.count134 = zext nneg i32 %i.hg to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.aa
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge118, label %bb.z, !llvm.loop !691

bb.z:                                             ; preds = %.lr.ph117, %bb.y
  %indvars.iv131 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next132, %bb.y ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv131
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !82 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv131
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !82
  %i.hq = fadd double %i.hp, f0x3EB0C6F7A0B5ED8D
  %i.hr = fcmp olt double %i.hn, %i.hq
  br i1 %i.hr, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hs = load ptr, ptr %i.hl, align 8, !tbaa !57
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv131
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !82
  %i.hv = fadd double %i.hu, f0xBEB0C6F7A0B5ED8D
  %i.hw = fcmp ogt double %i.hn, %i.hv
  br i1 %i.hw, label %.loopexit, label %bb.y

._crit_edge118:                                   ; preds = %bb.y, %_ZN11UIestimator8n_vectorIiE14increase_valueERKSt6vectorIdSaIdEEi.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !277
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph.i.i82, label %_ZN11UIestimator8n_matrix14increase_valueERKSt6vectorIdSaIdEES5_i.exit

.lr.ph.i.i82:                                     ; preds = %._crit_edge118
  %i.ib = load ptr, ptr %2, align 8, !tbaa !57
  %i.ic = load ptr, ptr %i.hx, align 8, !tbaa !57
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !57
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !60 ; 3 uses
  br label %bb.ab

.preheader27.i.i85:                               ; preds = %bb.ab
  %i.ih = icmp sgt i32 %i.iv, 0
  br i1 %i.ih, label %.lr.ph33.i.i86, label %_ZN11UIestimator8n_matrix14increase_valueERKSt6vectorIdSaIdEES5_i.exit

.lr.ph33.i.i86:                                   ; preds = %.preheader27.i.i85
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ij = zext nneg i32 %i.iv to i64              ; 4 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i82
  %indvars.iv.i.i83 = phi i64 [ 0, %.lr.ph.i.i82 ], [ %indvars.iv.next.i.i84, %bb.ab ] ; 5 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.i.i83
  %i.il = load double, ptr %i.ik, align 8, !tbaa !82
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i.i83
  %i.in = load double, ptr %i.im, align 8, !tbaa !82
  %i.io = fsub double %i.il, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i.i83
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !82
  %i.ir = fdiv double %i.io, %i.iq
  %i.is = fadd double %i.ir, f0x3EB0C6F7A0B5ED8D
  %i.it = fptosi double %i.is to i32
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i.i83
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !83
  %indvars.iv.next.i.i84 = add nuw nsw i64 %indvars.iv.i.i83, 1 ; 2 uses
  %i.iv = load i32, ptr %i.hy, align 8, !tbaa !277 ; 3 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp slt i64 %indvars.iv.next.i.i84, %i.iw
  br i1 %i.ix, label %bb.ab, label %.preheader27.i.i85, !llvm.loop !23

bb.ac:                                            ; preds = %bb.ae, %.lr.ph33.i.i86
  %indvars.iv43.i.i87 = phi i64 [ 0, %.lr.ph33.i.i86 ], [ %indvars.iv.next44.i.i90, %bb.ae ] ; 4 uses
  %indvars.iv38.i.i88 = phi i64 [ 1, %.lr.ph33.i.i86 ], [ %indvars.iv.next39.i.i93, %bb.ae ] ; 4 uses
  %.02132.i.i89 = phi i32 [ 0, %.lr.ph33.i.i86 ], [ %.1.i.i92, %bb.ae ]
  %10 = xor i64 %indvars.iv43.i.i87, -1
  %11 = add nsw i64 %10, %i.ij                    ; 3 uses
  %indvars.iv.next44.i.i90 = add nuw nsw i64 %indvars.iv43.i.i87, 1 ; 3 uses
  %i.iy = icmp samesign ult i64 %indvars.iv.next44.i.i90, %i.ij
  br i1 %i.iy, label %.preheader.i.i95, label %bb.ad

.preheader.i.i95:                                 ; preds = %bb.ac
  %i.iz = load ptr, ptr %i.ii, align 8, !tbaa !60 ; 2 uses
  %min.iters.check206 = icmp ult i64 %11, 8
  br i1 %min.iters.check206, label %scalar.ph205.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %.preheader.i.i95
  %n.vec208 = and i64 %11, -8                     ; 3 uses
  %i.ja = add i64 %indvars.iv38.i.i88, %n.vec208
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv38.i.i88
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %vec.phi211 = phi <4 x i32> [ splat (i32 1), %vector.ph207 ], [ %i.je, %vector.body209 ]
  %vec.phi212 = phi <4 x i32> [ splat (i32 1), %vector.ph207 ], [ %i.jf, %vector.body209 ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %index210 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load213 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !83
  %wide.load214 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !83
  %i.je = mul <4 x i32> %wide.load213, %vec.phi211 ; 2 uses
  %i.jf = mul <4 x i32> %wide.load214, %vec.phi212 ; 2 uses
  %index.next215 = add nuw i64 %index210, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.jg, label %middle.block216, label %vector.body209, !llvm.loop !692

middle.block216:                                  ; preds = %vector.body209
  %bin.rdx217 = mul <4 x i32> %i.jf, %i.je
  %i.jh = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx217) ; 2 uses
  %cmp.n218 = icmp eq i64 %11, %n.vec208
  br i1 %cmp.n218, label %.loopexit221, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %.preheader.i.i95, %middle.block216
  %indvars.iv40.i.i96.ph = phi i64 [ %indvars.iv38.i.i88, %.preheader.i.i95 ], [ %i.ja, %middle.block216 ]
  %.030.i.i97.ph = phi i32 [ 1, %.preheader.i.i95 ], [ %i.jh, %middle.block216 ]
  br label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.preheader, %scalar.ph205
  %indvars.iv40.i.i96 = phi i64 [ %indvars.iv.next41.i.i98, %scalar.ph205 ], [ %indvars.iv40.i.i96.ph, %scalar.ph205.preheader ] ; 2 uses
  %.030.i.i97 = phi i32 [ %i.jk, %scalar.ph205 ], [ %.030.i.i97.ph, %scalar.ph205.preheader ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv40.i.i96
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !83
  %i.jk = mul nsw i32 %i.jj, %.030.i.i97          ; 2 uses
  %indvars.iv.next41.i.i98 = add nuw nsw i64 %indvars.iv40.i.i96, 1 ; 2 uses
  %exitcond.not.i.i99 = icmp eq i64 %indvars.iv.next41.i.i98, %i.ij
  br i1 %exitcond.not.i.i99, label %.loopexit221, label %scalar.ph205, !llvm.loop !693

.loopexit221:                                     ; preds = %scalar.ph205, %middle.block216
  %.lcssa = phi i32 [ %i.jh, %middle.block216 ], [ %i.jk, %scalar.ph205 ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv43.i.i87
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !83
  %i.jn = mul nsw i32 %i.jm, %.lcssa
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv43.i.i87
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !83
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit221
  %.pn.i.i91 = phi i32 [ %i.jn, %.loopexit221 ], [ %i.jp, %bb.ad ]
  %.1.i.i92 = add nsw i32 %.pn.i.i91, %.02132.i.i89 ; 2 uses
  %indvars.iv.next39.i.i93 = add nuw nsw i64 %indvars.iv38.i.i88, 1
  %exitcond47.not.i.i94 = icmp eq i64 %indvars.iv.next44.i.i90, %i.ij
  br i1 %exitcond47.not.i.i94, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.ac, !llvm.loop !24

_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.ae
  %i.jq = sext i32 %.1.i.i92 to i64
  br label %_ZN11UIestimator8n_matrix14increase_valueERKSt6vectorIdSaIdEES5_i.exit

_ZN11UIestimator8n_matrix14increase_valueERKSt6vectorIdSaIdEES5_i.exit: ; preds = %._crit_edge118, %.preheader27.i.i85, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i81 = phi i64 [ 0, %.preheader27.i.i85 ], [ 0, %._crit_edge118 ], [ %i.jq, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !253
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %.021.lcssa.i.i81
  %i.ju = tail call noundef i32 @_ZN11UIestimator8n_matrix9convert_yERKSt6vectorIdSaIdEES5_(ptr noundef nonnull align 8 dereferenceable(168) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.jv = sext i32 %i.ju to i64
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !60
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jv ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !83
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.z, %bb.aa, %_ZN11UIestimator8n_matrix14increase_valueERKSt6vectorIdSaIdEES5_i.exit
  %.040 = phi i1 [ true, %_ZN11UIestimator8n_matrix14increase_valueERKSt6vectorIdSaIdEES5_i.exit ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.040
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN11UIestimator8n_matrix9convert_yERKSt6vectorIdSaIdEES5_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !277
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = load ptr, ptr %1, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  br label %bb.b

.preheader:                                       ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22
  %i.k = icmp sgt i32 %i.ba, 0
  br i1 %i.k, label %.lr.ph27, label %._crit_edge

.lr.ph27:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = zext nneg i32 %i.ba to i64
  %wide.trip.count = zext nneg i32 %i.ba to i64
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN11UIestimator8n_matrix5roundEd.exit22
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11UIestimator8n_matrix5roundEd.exit22 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = load double, ptr %i.r, align 8, !tbaa !82 ; 2 uses
  %i.t = fdiv double %i.q, %i.s
  %i.u = fadd double %i.t, f0x3EB0C6F7A0B5ED8D    ; 3 uses
  %i.v = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = fadd double %i.u, 5.000000e-01
  %i.x = tail call double @llvm.floor.f64(double %i.w)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit

bb.d:                                             ; preds = %bb.b
  %i.y = fadd double %i.u, -5.000000e-01
  %i.z = tail call double @llvm.ceil.f64(double %i.y)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit

_ZN11UIestimator8n_matrix5roundEd.exit:           ; preds = %bb.c, %bb.d
  %i.aa = phi double [ %i.x, %bb.c ], [ %i.z, %bb.d ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !82
  %i.ad = fdiv double %i.ac, %i.s
  %i.ae = fadd double %i.ad, f0x3EB0C6F7A0B5ED8D  ; 3 uses
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit
  %i.ag = fadd double %i.ae, 5.000000e-01
  %i.ah = tail call double @llvm.floor.f64(double %i.ag)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21

bb.f:                                             ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit
  %i.ai = fadd double %i.ae, -5.000000e-01
  %i.aj = tail call double @llvm.ceil.f64(double %i.ai)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21

_ZN11UIestimator8n_matrix5roundEd.exit21:         ; preds = %bb.e, %bb.f
  %i.ak = phi double [ %i.ah, %bb.e ], [ %i.aj, %bb.f ]
  %i.al = fsub double %i.aa, %i.ak
  %i.am = load i32, ptr %i.h, align 4, !tbaa !282
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sdiv i32 %i.an, 2
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fadd double %i.al, %i.ap
  %i.ar = fadd double %i.aq, f0x3EB0C6F7A0B5ED8D  ; 3 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21
  %i.at = fadd double %i.ar, 5.000000e-01
  %i.au = tail call double @llvm.floor.f64(double %i.at)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22

bb.h:                                             ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21
  %i.av = fadd double %i.ar, -5.000000e-01
  %i.aw = tail call double @llvm.ceil.f64(double %i.av)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22

_ZN11UIestimator8n_matrix5roundEd.exit22:         ; preds = %bb.g, %bb.h
  %i.ax = phi double [ %i.au, %bb.g ], [ %i.aw, %bb.h ]
  %i.ay = fptosi double %i.ax to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !277 ; 5 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.b, label %.preheader, !llvm.loop !25

bb.i:                                             ; preds = %.lr.ph27, %bb.k
  %indvars.iv31 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next32, %bb.k ] ; 3 uses
  %.026 = phi i32 [ 0, %.lr.ph27 ], [ %.1, %bb.k ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 3 uses
  %i.bd = icmp samesign ult i64 %indvars.iv.next32, %i.n
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv31
end_hunk_2
begin_hunk_3_@_ZN14colvarbias_abf25read_state_data_template_IN12colvarmodule13memory_streamEEERT_S4_:bb.a
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !151
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  ret ptr %1

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  resume { ptr, i32 } %.pn48.pn
}

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN10colvarbias19read_state_data_keyERN12colvarmodule13memory_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN17colvar_grid_count8read_rawERN12colvarmodule13memory_streamE(ptr noundef nonnull align 8 dereferenceable(698), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN20colvar_grid_gradient8read_rawERN12colvarmodule13memory_streamE(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11UIestimator11UIestimator8calc_pmfEv(ptr noundef nonnull align 8 dereferenceable(1402) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.54", align 8    ; 8 uses
  %i.a = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.b = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !268  ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %.preheader677, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27 ; 11 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false), !tbaa !82
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %.pre = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %.lr.ph, label %.preheader677

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 5 uses
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %.pre, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = sub i64 %i.r, %i.i
  %diff.check = icmp ugt i64 %i.s, -32
  %i.t = sub i64 %i.q, %i.i
  %diff.check1209 = icmp ugt i64 %i.t, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1209
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !82
  %wide.load1210 = load <2 x double>, ptr %i.v, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load1211 = load <2 x double>, ptr %i.w, align 8, !tbaa !82
  %wide.load1212 = load <2 x double>, ptr %i.x, align 8, !tbaa !82
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1211, <2 x double> splat (double -1.000000e+01), <2 x double> %wide.load)
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1212, <2 x double> splat (double -1.000000e+01), <2 x double> %wide.load1210)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %i.y, ptr %i.aa, align 8, !tbaa !82
  store <2 x double> %i.z, ptr %i.ab, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !952

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader677, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.ph
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.ph
  %i.ag = load double, ptr %i.af, align 8, !tbaa !82
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double -1.000000e+01, double %i.ae)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.ah, ptr %i.ai, align 8, !tbaa !82
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %.preheader677, label %scalar.ph

.preheader677:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %.sroa.0644.0936 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.h, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ %i.h, %middle.block ], [ %i.h, %scalar.ph ], [ %i.h, %scalar.ph.prol.loopexit ] ; 15 uses
  %.sroa.21658.0935 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ], [ %i.k, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.az = load double, ptr %i.ay, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !82
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double -1.000000e+01, double %i.az)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.bc, ptr %i.bd, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.bf = load double, ptr %i.be, align 8, !tbaa !82
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !82
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double -1.000000e+01, double %i.bf)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  store double %i.bi, ptr %i.bj, align 8, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader677, label %scalar.ph, !llvm.loop !953

bb.b:                                             ; preds = %.preheader677, %._crit_edge
  %i.bk = load i32, ptr %i.am, align 8, !tbaa !274
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !60 ; 3 uses
  br label %bb.c

.preheader27.i.i:                                 ; preds = %bb.c
  %i.bp = icmp sgt i32 %i.cc, 0
  br i1 %i.bp, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.bq = zext nneg i32 %i.cc to i64              ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 5 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !82
  %i.bv = fsub double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !82
  %i.by = fdiv double %i.bv, %i.bx
  %i.bz = fadd double %i.by, f0x3EB0C6F7A0B5ED8D
  %i.ca = fptosi double %i.bz to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cc = load i32, ptr %i.am, align 8, !tbaa !274 ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i.i, %i.cd
  br i1 %i.ce, label %bb.c, label %.preheader27.i.i, !llvm.loop !18

bb.d:                                             ; preds = %bb.f, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.f ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.f ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.f ]
  %2 = xor i64 %indvars.iv43.i.i, -1
  %3 = add nsw i64 %2, %i.bq                      ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.bq
  br i1 %i.cf, label %.preheader.i.i, label %bb.e

.preheader.i.i:                                   ; preds = %bb.d
  %i.cg = load ptr, ptr %i.as, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1323 = icmp ult i64 %3, 8
  br i1 %min.iters.check1323, label %scalar.ph1322.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %.preheader.i.i
  %n.vec1325 = and i64 %3, -8                     ; 3 uses
  %i.ch = add i64 %indvars.iv38.i.i, %n.vec1325
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv38.i.i
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1332, %vector.body1326 ] ; 2 uses
  %vec.phi1328 = phi <4 x i32> [ splat (i32 1), %vector.ph1324 ], [ %i.cl, %vector.body1326 ]
  %vec.phi1329 = phi <4 x i32> [ splat (i32 1), %vector.ph1324 ], [ %i.cm, %vector.body1326 ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index1327 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load1330 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !83
  %wide.load1331 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !83
  %i.cl = mul <4 x i32> %wide.load1330, %vec.phi1328 ; 2 uses
  %i.cm = mul <4 x i32> %wide.load1331, %vec.phi1329 ; 2 uses
  %index.next1332 = add nuw i64 %index1327, 8     ; 2 uses
  %i.cn = icmp eq i64 %index.next1332, %n.vec1325
  br i1 %i.cn, label %middle.block1333, label %vector.body1326, !llvm.loop !954

middle.block1333:                                 ; preds = %vector.body1326
  %bin.rdx1334 = mul <4 x i32> %i.cm, %i.cl
  %i.co = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1334) ; 2 uses
  %cmp.n1335 = icmp eq i64 %3, %n.vec1325
  br i1 %cmp.n1335, label %.loopexit1595, label %scalar.ph1322.preheader

scalar.ph1322.preheader:                          ; preds = %.preheader.i.i, %middle.block1333
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.ch, %middle.block1333 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.co, %middle.block1333 ]
  br label %scalar.ph1322

scalar.ph1322:                                    ; preds = %scalar.ph1322.preheader, %scalar.ph1322
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph1322 ], [ %indvars.iv40.i.i.ph, %scalar.ph1322.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.cr, %scalar.ph1322 ], [ %.030.i.i.ph, %scalar.ph1322.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv40.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83
  %i.cr = mul nsw i32 %i.cq, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.bq
  br i1 %exitcond.not.i.i, label %.loopexit1595, label %scalar.ph1322, !llvm.loop !955

.loopexit1595:                                    ; preds = %scalar.ph1322, %middle.block1333
  %.lcssa1191 = phi i32 [ %i.co, %middle.block1333 ], [ %i.cr, %scalar.ph1322 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv43.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !83
  %i.cu = mul nsw i32 %i.ct, %.lcssa1191
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv43.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit1595
  %.pn.i.i = phi i32 [ %i.cu, %.loopexit1595 ], [ %i.cw, %bb.e ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.bq
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread, label %bb.d, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit: ; preds = %bb.b, %.preheader27.i.i
  %i.cx = load i32, ptr %i.ao, align 4, !tbaa !83
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit146, label %bb.k

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread: ; preds = %bb.f
  %i.cz = sext i32 %.1.i.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !83
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i127, label %bb.k

.lr.ph.i.i127:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread
  %i.dd = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.df = load ptr, ptr %i.ar, align 8, !tbaa !60 ; 3 uses
  br label %bb.g

.preheader27.i.i130:                              ; preds = %bb.g
  %i.dg = icmp sgt i32 %i.dt, 0
  br i1 %i.dg, label %.lr.ph33.i.i131, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit146

.lr.ph33.i.i131:                                  ; preds = %.preheader27.i.i130
  %i.dh = zext nneg i32 %i.dt to i64              ; 4 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i127
  %indvars.iv.i.i128 = phi i64 [ 0, %.lr.ph.i.i127 ], [ %indvars.iv.next.i.i129, %bb.g ] ; 5 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i128
  %i.dj = load double, ptr %i.di, align 8, !tbaa !82
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i128
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !82
  %i.dm = fsub double %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i.i128
  %i.do = load double, ptr %i.dn, align 8, !tbaa !82
  %i.dp = fdiv double %i.dm, %i.do
  %i.dq = fadd double %i.dp, f0x3EB0C6F7A0B5ED8D
  %i.dr = fptosi double %i.dq to i32
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i128
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !83
  %indvars.iv.next.i.i129 = add nuw nsw i64 %indvars.iv.i.i128, 1 ; 2 uses
  %i.dt = load i32, ptr %i.am, align 8, !tbaa !274 ; 3 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next.i.i129, %i.du
  br i1 %i.dv, label %bb.g, label %.preheader27.i.i130, !llvm.loop !18

bb.h:                                             ; preds = %bb.j, %.lr.ph33.i.i131
  %indvars.iv43.i.i132 = phi i64 [ 0, %.lr.ph33.i.i131 ], [ %indvars.iv.next44.i.i135, %bb.j ] ; 4 uses
  %indvars.iv38.i.i133 = phi i64 [ 1, %.lr.ph33.i.i131 ], [ %indvars.iv.next39.i.i138, %bb.j ] ; 4 uses
  %.02132.i.i134 = phi i32 [ 0, %.lr.ph33.i.i131 ], [ %.1.i.i137, %bb.j ]
  %4 = xor i64 %indvars.iv43.i.i132, -1
  %5 = add nsw i64 %4, %i.dh                      ; 3 uses
  %indvars.iv.next44.i.i135 = add nuw nsw i64 %indvars.iv43.i.i132, 1 ; 3 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next44.i.i135, %i.dh
  br i1 %i.dw, label %.preheader.i.i141, label %bb.i

.preheader.i.i141:                                ; preds = %bb.h
  %i.dx = load ptr, ptr %i.as, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1307 = icmp ult i64 %5, 8
  br i1 %min.iters.check1307, label %scalar.ph1306.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %.preheader.i.i141
  %n.vec1309 = and i64 %5, -8                     ; 3 uses
  %i.dy = add i64 %indvars.iv38.i.i133, %n.vec1309
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv38.i.i133
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1316, %vector.body1310 ] ; 2 uses
  %vec.phi1312 = phi <4 x i32> [ splat (i32 1), %vector.ph1308 ], [ %i.ec, %vector.body1310 ]
  %vec.phi1313 = phi <4 x i32> [ splat (i32 1), %vector.ph1308 ], [ %i.ed, %vector.body1310 ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index1311 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load1314 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !83
  %wide.load1315 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !83
  %i.ec = mul <4 x i32> %wide.load1314, %vec.phi1312 ; 2 uses
  %i.ed = mul <4 x i32> %wide.load1315, %vec.phi1313 ; 2 uses
  %index.next1316 = add nuw i64 %index1311, 8     ; 2 uses
  %i.ee = icmp eq i64 %index.next1316, %n.vec1309
  br i1 %i.ee, label %middle.block1317, label %vector.body1310, !llvm.loop !956

middle.block1317:                                 ; preds = %vector.body1310
  %bin.rdx1318 = mul <4 x i32> %i.ed, %i.ec
  %i.ef = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1318) ; 2 uses
  %cmp.n1319 = icmp eq i64 %5, %n.vec1309
  br i1 %cmp.n1319, label %.loopexit1594, label %scalar.ph1306.preheader

scalar.ph1306.preheader:                          ; preds = %.preheader.i.i141, %middle.block1317
  %indvars.iv40.i.i142.ph = phi i64 [ %indvars.iv38.i.i133, %.preheader.i.i141 ], [ %i.dy, %middle.block1317 ]
  %.030.i.i143.ph = phi i32 [ 1, %.preheader.i.i141 ], [ %i.ef, %middle.block1317 ]
  br label %scalar.ph1306

scalar.ph1306:                                    ; preds = %scalar.ph1306.preheader, %scalar.ph1306
  %indvars.iv40.i.i142 = phi i64 [ %indvars.iv.next41.i.i144, %scalar.ph1306 ], [ %indvars.iv40.i.i142.ph, %scalar.ph1306.preheader ] ; 2 uses
  %.030.i.i143 = phi i32 [ %i.ei, %scalar.ph1306 ], [ %.030.i.i143.ph, %scalar.ph1306.preheader ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv40.i.i142
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !83
  %i.ei = mul nsw i32 %i.eh, %.030.i.i143         ; 2 uses
  %indvars.iv.next41.i.i144 = add nuw nsw i64 %indvars.iv40.i.i142, 1 ; 2 uses
  %exitcond.not.i.i145 = icmp eq i64 %indvars.iv.next41.i.i144, %i.dh
  br i1 %exitcond.not.i.i145, label %.loopexit1594, label %scalar.ph1306, !llvm.loop !957

.loopexit1594:                                    ; preds = %scalar.ph1306, %middle.block1317
  %.lcssa1193 = phi i32 [ %i.ef, %middle.block1317 ], [ %i.ei, %scalar.ph1306 ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv43.i.i132
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !83
  %i.el = mul nsw i32 %i.ek, %.lcssa1193
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv43.i.i132
  %i.en = load i32, ptr %i.em, align 4, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit1594
  %.pn.i.i136 = phi i32 [ %i.el, %.loopexit1594 ], [ %i.en, %bb.i ]
  %.1.i.i137 = add nsw i32 %.pn.i.i136, %.02132.i.i134 ; 2 uses
  %indvars.iv.next39.i.i138 = add nuw nsw i64 %indvars.iv38.i.i133, 1
  %exitcond47.not.i.i139 = icmp eq i64 %indvars.iv.next44.i.i135, %i.dh
  br i1 %exitcond47.not.i.i139, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i140, label %bb.h, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i140: ; preds = %bb.j
  %i.eo = sext i32 %.1.i.i137 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit146

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit146: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit, %.preheader27.i.i130, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i140
  %.021.lcssa.i.i126 = phi i64 [ 0, %.preheader27.i.i130 ], [ %i.eo, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i140 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.021.lcssa.i.i126
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !83
  %i.er = sitofp i32 %i.eq to double
  br label %bb.k

bb.k:                                             ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit146
  %i.es = phi double [ %i.er, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit146 ], [ 1.000000e+00, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit ], [ 1.000000e+00, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ] ; 2 uses
  %i.et = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph730, label %.preheader676.thread

.preheader676.thread:                             ; preds = %bb.k
  %.2109731939 = add i32 %i.et, -1
  br label %._crit_edge

.lr.ph730:                                        ; preds = %bb.k
  %i.ev = load ptr, ptr %i.at, align 8, !tbaa !256
  %i.ew = load ptr, ptr %0, align 8, !tbaa !256
  %i.ex = load ptr, ptr %i.au, align 8, !tbaa !256
  %i.ey = load ptr, ptr %i.av, align 8, !tbaa !256
  br label %bb.l

.preheader676:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269
  %.2109731 = add i32 %i.pz, -1                   ; 2 uses
  %i.ez = icmp sgt i32 %i.pz, 0
  br i1 %i.ez, label %.lr.ph733, label %._crit_edge

.lr.ph733:                                        ; preds = %.preheader676
  %i.fa = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.fb = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.fc = zext nneg i32 %.2109731 to i64
  br label %bb.ak

bb.l:                                             ; preds = %.lr.ph730, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269
  %indvars.iv818 = phi i64 [ 0, %.lr.ph730 ], [ %indvars.iv.next819, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269 ] ; 5 uses
  %i.fd = getelementptr inbounds nuw [160 x i8], ptr %i.ev, i64 %indvars.iv818 ; 10 uses
  %i.fe = getelementptr inbounds nuw [160 x i8], ptr %i.ew, i64 %indvars.iv818 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !279
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i148, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph.i.i148:                                    ; preds = %bb.l
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !57
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !57
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !60 ; 3 uses
  br label %bb.m

.preheader27.i.i151:                              ; preds = %bb.m
  %i.fn = icmp sgt i32 %i.gb, 0
  br i1 %i.fn, label %.lr.ph33.i.i152, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph33.i.i152:                                  ; preds = %.preheader27.i.i151
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.fp = zext nneg i32 %i.gb to i64              ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i148
  %indvars.iv.i.i149 = phi i64 [ 0, %.lr.ph.i.i148 ], [ %indvars.iv.next.i.i150, %bb.m ] ; 5 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i149
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !82
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i.i149
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !82
  %i.fu = fsub double %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.i.i149
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !82
  %i.fx = fdiv double %i.fu, %i.fw
  %i.fy = fadd double %i.fx, f0x3EB0C6F7A0B5ED8D
  %i.fz = fptosi double %i.fy to i32
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.i149
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !83
  %indvars.iv.next.i.i150 = add nuw nsw i64 %indvars.iv.i.i149, 1 ; 2 uses
  %i.gb = load i32, ptr %i.ff, align 8, !tbaa !279 ; 3 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next.i.i150, %i.gc
  br i1 %i.gd, label %bb.m, label %.preheader27.i.i151, !llvm.loop !21

bb.n:                                             ; preds = %bb.p, %.lr.ph33.i.i152
  %indvars.iv43.i.i153 = phi i64 [ 0, %.lr.ph33.i.i152 ], [ %indvars.iv.next44.i.i156, %bb.p ] ; 4 uses
  %indvars.iv38.i.i154 = phi i64 [ 1, %.lr.ph33.i.i152 ], [ %indvars.iv.next39.i.i159, %bb.p ] ; 4 uses
  %.02132.i.i155 = phi i32 [ 0, %.lr.ph33.i.i152 ], [ %.1.i.i158, %bb.p ]
  %6 = xor i64 %indvars.iv43.i.i153, -1
  %7 = add nsw i64 %6, %i.fp                      ; 3 uses
  %indvars.iv.next44.i.i156 = add nuw nsw i64 %indvars.iv43.i.i153, 1 ; 3 uses
  %i.ge = icmp samesign ult i64 %indvars.iv.next44.i.i156, %i.fp
  br i1 %i.ge, label %.preheader.i.i161, label %bb.o

.preheader.i.i161:                                ; preds = %bb.n
  %i.gf = load ptr, ptr %i.fo, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1291 = icmp ult i64 %7, 8
  br i1 %min.iters.check1291, label %scalar.ph1290.preheader, label %vector.ph1292

vector.ph1292:                                    ; preds = %.preheader.i.i161
  %n.vec1293 = and i64 %7, -8                     ; 3 uses
  %i.gg = add i64 %indvars.iv38.i.i154, %n.vec1293
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv38.i.i154
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1300, %vector.body1294 ] ; 2 uses
  %vec.phi1296 = phi <4 x i32> [ splat (i32 1), %vector.ph1292 ], [ %i.gk, %vector.body1294 ]
  %vec.phi1297 = phi <4 x i32> [ splat (i32 1), %vector.ph1292 ], [ %i.gl, %vector.body1294 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index1295 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load1298 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !83
  %wide.load1299 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !83
  %i.gk = mul <4 x i32> %wide.load1298, %vec.phi1296 ; 2 uses
  %i.gl = mul <4 x i32> %wide.load1299, %vec.phi1297 ; 2 uses
  %index.next1300 = add nuw i64 %index1295, 8     ; 2 uses
  %i.gm = icmp eq i64 %index.next1300, %n.vec1293
  br i1 %i.gm, label %middle.block1301, label %vector.body1294, !llvm.loop !958

middle.block1301:                                 ; preds = %vector.body1294
  %bin.rdx1302 = mul <4 x i32> %i.gl, %i.gk
  %i.gn = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1302) ; 2 uses
  %cmp.n1303 = icmp eq i64 %7, %n.vec1293
  br i1 %cmp.n1303, label %.loopexit1593, label %scalar.ph1290.preheader

scalar.ph1290.preheader:                          ; preds = %.preheader.i.i161, %middle.block1301
  %indvars.iv40.i.i162.ph = phi i64 [ %indvars.iv38.i.i154, %.preheader.i.i161 ], [ %i.gg, %middle.block1301 ]
  %.030.i.i163.ph = phi i32 [ 1, %.preheader.i.i161 ], [ %i.gn, %middle.block1301 ]
  br label %scalar.ph1290

scalar.ph1290:                                    ; preds = %scalar.ph1290.preheader, %scalar.ph1290
  %indvars.iv40.i.i162 = phi i64 [ %indvars.iv.next41.i.i164, %scalar.ph1290 ], [ %indvars.iv40.i.i162.ph, %scalar.ph1290.preheader ] ; 2 uses
  %.030.i.i163 = phi i32 [ %i.gq, %scalar.ph1290 ], [ %.030.i.i163.ph, %scalar.ph1290.preheader ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv40.i.i162
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !83
  %i.gq = mul nsw i32 %i.gp, %.030.i.i163         ; 2 uses
  %indvars.iv.next41.i.i164 = add nuw nsw i64 %indvars.iv40.i.i162, 1 ; 2 uses
  %exitcond.not.i.i165 = icmp eq i64 %indvars.iv.next41.i.i164, %i.fp
  br i1 %exitcond.not.i.i165, label %.loopexit1593, label %scalar.ph1290, !llvm.loop !959

.loopexit1593:                                    ; preds = %scalar.ph1290, %middle.block1301
  %.lcssa1195 = phi i32 [ %i.gn, %middle.block1301 ], [ %i.gq, %scalar.ph1290 ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv43.i.i153
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !83
  %i.gt = mul nsw i32 %i.gs, %.lcssa1195
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv43.i.i153
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit1593
  %.pn.i.i157 = phi i32 [ %i.gt, %.loopexit1593 ], [ %i.gv, %bb.o ]
  %.1.i.i158 = add nsw i32 %.pn.i.i157, %.02132.i.i155 ; 2 uses
  %indvars.iv.next39.i.i159 = add nuw nsw i64 %indvars.iv38.i.i154, 1
  %exitcond47.not.i.i160 = icmp eq i64 %indvars.iv.next44.i.i156, %i.fp
  br i1 %exitcond47.not.i.i160, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.n, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.p
  %i.gw = sext i32 %.1.i.i158 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit: ; preds = %bb.l, %.preheader27.i.i151, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i147 = phi i64 [ 0, %.preheader27.i.i151 ], [ 0, %bb.l ], [ %i.gw, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !57
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.021.lcssa.i.i147
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !82
  %i.hb = fdiv double %i.ha, %i.es
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fd, i64 72 ; 5 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !279
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i.i167, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit

.lr.ph.i.i167:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit
  %i.hf = load ptr, ptr %i.fd, align 8, !tbaa !57
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !57
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fd, i64 136
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !60 ; 3 uses
  br label %bb.q

.preheader27.i.i170:                              ; preds = %bb.q
  %i.hk = icmp sgt i32 %i.hy, 0
  br i1 %i.hk, label %.lr.ph33.i.i171, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit

.lr.ph33.i.i171:                                  ; preds = %.preheader27.i.i170
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fd, i64 80
  %i.hm = zext nneg i32 %i.hy to i64              ; 4 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i167
  %indvars.iv.i.i168 = phi i64 [ 0, %.lr.ph.i.i167 ], [ %indvars.iv.next.i.i169, %bb.q ] ; 5 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i168
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !82
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i.i168
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !82
  %i.hr = fsub double %i.ho, %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i168
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !82
  %i.hu = fdiv double %i.hr, %i.ht
  %i.hv = fadd double %i.hu, f0x3EB0C6F7A0B5ED8D
  %i.hw = fptosi double %i.hv to i32
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i.i168
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !83
  %indvars.iv.next.i.i169 = add nuw nsw i64 %indvars.iv.i.i168, 1 ; 2 uses
  %i.hy = load i32, ptr %i.hc, align 8, !tbaa !279 ; 3 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next.i.i169, %i.hz
  br i1 %i.ia, label %bb.q, label %.preheader27.i.i170, !llvm.loop !21

bb.r:                                             ; preds = %bb.t, %.lr.ph33.i.i171
  %indvars.iv43.i.i172 = phi i64 [ 0, %.lr.ph33.i.i171 ], [ %indvars.iv.next44.i.i175, %bb.t ] ; 4 uses
  %indvars.iv38.i.i173 = phi i64 [ 1, %.lr.ph33.i.i171 ], [ %indvars.iv.next39.i.i178, %bb.t ] ; 4 uses
  %.02132.i.i174 = phi i32 [ 0, %.lr.ph33.i.i171 ], [ %.1.i.i177, %bb.t ]
  %8 = xor i64 %indvars.iv43.i.i172, -1
  %9 = add nsw i64 %8, %i.hm                      ; 3 uses
  %indvars.iv.next44.i.i175 = add nuw nsw i64 %indvars.iv43.i.i172, 1 ; 3 uses
  %i.ib = icmp samesign ult i64 %indvars.iv.next44.i.i175, %i.hm
  br i1 %i.ib, label %.preheader.i.i181, label %bb.s

.preheader.i.i181:                                ; preds = %bb.r
  %i.ic = load ptr, ptr %i.hl, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1275 = icmp ult i64 %9, 8
  br i1 %min.iters.check1275, label %scalar.ph1274.preheader, label %vector.ph1276

vector.ph1276:                                    ; preds = %.preheader.i.i181
  %n.vec1277 = and i64 %9, -8                     ; 3 uses
  %i.id = add i64 %indvars.iv38.i.i173, %n.vec1277
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv38.i.i173
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1284, %vector.body1278 ] ; 2 uses
  %vec.phi1280 = phi <4 x i32> [ splat (i32 1), %vector.ph1276 ], [ %i.ih, %vector.body1278 ]
  %vec.phi1281 = phi <4 x i32> [ splat (i32 1), %vector.ph1276 ], [ %i.ii, %vector.body1278 ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index1279 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load1282 = load <4 x i32>, ptr %i.if, align 4, !tbaa !83
  %wide.load1283 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !83
  %i.ih = mul <4 x i32> %wide.load1282, %vec.phi1280 ; 2 uses
  %i.ii = mul <4 x i32> %wide.load1283, %vec.phi1281 ; 2 uses
  %index.next1284 = add nuw i64 %index1279, 8     ; 2 uses
  %i.ij = icmp eq i64 %index.next1284, %n.vec1277
  br i1 %i.ij, label %middle.block1285, label %vector.body1278, !llvm.loop !960

middle.block1285:                                 ; preds = %vector.body1278
  %bin.rdx1286 = mul <4 x i32> %i.ii, %i.ih
  %i.ik = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1286) ; 2 uses
  %cmp.n1287 = icmp eq i64 %9, %n.vec1277
  br i1 %cmp.n1287, label %.loopexit1592, label %scalar.ph1274.preheader

scalar.ph1274.preheader:                          ; preds = %.preheader.i.i181, %middle.block1285
  %indvars.iv40.i.i182.ph = phi i64 [ %indvars.iv38.i.i173, %.preheader.i.i181 ], [ %i.id, %middle.block1285 ]
  %.030.i.i183.ph = phi i32 [ 1, %.preheader.i.i181 ], [ %i.ik, %middle.block1285 ]
  br label %scalar.ph1274

scalar.ph1274:                                    ; preds = %scalar.ph1274.preheader, %scalar.ph1274
  %indvars.iv40.i.i182 = phi i64 [ %indvars.iv.next41.i.i184, %scalar.ph1274 ], [ %indvars.iv40.i.i182.ph, %scalar.ph1274.preheader ] ; 2 uses
  %.030.i.i183 = phi i32 [ %i.in, %scalar.ph1274 ], [ %.030.i.i183.ph, %scalar.ph1274.preheader ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv40.i.i182
  %i.im = load i32, ptr %i.il, align 4, !tbaa !83
  %i.in = mul nsw i32 %i.im, %.030.i.i183         ; 2 uses
  %indvars.iv.next41.i.i184 = add nuw nsw i64 %indvars.iv40.i.i182, 1 ; 2 uses
  %exitcond.not.i.i185 = icmp eq i64 %indvars.iv.next41.i.i184, %i.hm
  br i1 %exitcond.not.i.i185, label %.loopexit1592, label %scalar.ph1274, !llvm.loop !961

.loopexit1592:                                    ; preds = %scalar.ph1274, %middle.block1285
  %.lcssa1197 = phi i32 [ %i.ik, %middle.block1285 ], [ %i.in, %scalar.ph1274 ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv43.i.i172
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !83
  %i.iq = mul nsw i32 %i.ip, %.lcssa1197
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv43.i.i172
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit1592
  %.pn.i.i176 = phi i32 [ %i.iq, %.loopexit1592 ], [ %i.is, %bb.s ]
  %.1.i.i177 = add nsw i32 %.pn.i.i176, %.02132.i.i174 ; 2 uses
  %indvars.iv.next39.i.i178 = add nuw nsw i64 %indvars.iv38.i.i173, 1
  %exitcond47.not.i.i179 = icmp eq i64 %indvars.iv.next44.i.i175, %i.hm
  br i1 %exitcond47.not.i.i179, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i180, label %bb.r, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i180: ; preds = %bb.t
  %i.it = sext i32 %.1.i.i177 to i64
  br label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit

_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit, %.preheader27.i.i170, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i180
  %.021.lcssa.i.i166 = phi i64 [ 0, %.preheader27.i.i170 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit ], [ %i.it, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i180 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !57 ; 4 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.021.lcssa.i.i166
  store double %i.hb, ptr %i.iw, align 8, !tbaa !82
  %i.ix = getelementptr inbounds nuw [160 x i8], ptr %i.ex, i64 %indvars.iv818 ; 6 uses
  %i.iy = getelementptr inbounds nuw [160 x i8], ptr %i.ey, i64 %indvars.iv818 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 72 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !279
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph.i.i187, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit206

.lr.ph.i.i187:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !57
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !57
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 136
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !60 ; 3 uses
  br label %bb.u

.preheader27.i.i190:                              ; preds = %bb.u
  %i.jh = icmp sgt i32 %i.jv, 0
  br i1 %i.jh, label %.lr.ph33.i.i191, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit206

.lr.ph33.i.i191:                                  ; preds = %.preheader27.i.i190
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  %i.jj = zext nneg i32 %i.jv to i64              ; 4 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i187
  %indvars.iv.i.i188 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %indvars.iv.next.i.i189, %bb.u ] ; 5 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i188
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !82
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.i.i188
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !82
  %i.jo = fsub double %i.jl, %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i188
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !82
  %i.jr = fdiv double %i.jo, %i.jq
  %i.js = fadd double %i.jr, f0x3EB0C6F7A0B5ED8D
  %i.jt = fptosi double %i.js to i32
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i.i188
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !83
  %indvars.iv.next.i.i189 = add nuw nsw i64 %indvars.iv.i.i188, 1 ; 2 uses
  %i.jv = load i32, ptr %i.iz, align 8, !tbaa !279 ; 3 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp slt i64 %indvars.iv.next.i.i189, %i.jw
  br i1 %i.jx, label %bb.u, label %.preheader27.i.i190, !llvm.loop !21

bb.v:                                             ; preds = %bb.x, %.lr.ph33.i.i191
  %indvars.iv43.i.i192 = phi i64 [ 0, %.lr.ph33.i.i191 ], [ %indvars.iv.next44.i.i195, %bb.x ] ; 4 uses
  %indvars.iv38.i.i193 = phi i64 [ 1, %.lr.ph33.i.i191 ], [ %indvars.iv.next39.i.i198, %bb.x ] ; 4 uses
  %.02132.i.i194 = phi i32 [ 0, %.lr.ph33.i.i191 ], [ %.1.i.i197, %bb.x ]
  %10 = xor i64 %indvars.iv43.i.i192, -1
  %11 = add nsw i64 %10, %i.jj                    ; 3 uses
  %indvars.iv.next44.i.i195 = add nuw nsw i64 %indvars.iv43.i.i192, 1 ; 3 uses
  %i.jy = icmp samesign ult i64 %indvars.iv.next44.i.i195, %i.jj
  br i1 %i.jy, label %.preheader.i.i201, label %bb.w

.preheader.i.i201:                                ; preds = %bb.v
  %i.jz = load ptr, ptr %i.ji, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1259 = icmp ult i64 %11, 8
  br i1 %min.iters.check1259, label %scalar.ph1258.preheader, label %vector.ph1260

vector.ph1260:                                    ; preds = %.preheader.i.i201
  %n.vec1261 = and i64 %11, -8                    ; 3 uses
  %i.ka = add i64 %indvars.iv38.i.i193, %n.vec1261
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv38.i.i193
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1268, %vector.body1262 ] ; 2 uses
  %vec.phi1264 = phi <4 x i32> [ splat (i32 1), %vector.ph1260 ], [ %i.ke, %vector.body1262 ]
  %vec.phi1265 = phi <4 x i32> [ splat (i32 1), %vector.ph1260 ], [ %i.kf, %vector.body1262 ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %index1263 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %wide.load1266 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !83
  %wide.load1267 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !83
  %i.ke = mul <4 x i32> %wide.load1266, %vec.phi1264 ; 2 uses
  %i.kf = mul <4 x i32> %wide.load1267, %vec.phi1265 ; 2 uses
  %index.next1268 = add nuw i64 %index1263, 8     ; 2 uses
  %i.kg = icmp eq i64 %index.next1268, %n.vec1261
  br i1 %i.kg, label %middle.block1269, label %vector.body1262, !llvm.loop !962

middle.block1269:                                 ; preds = %vector.body1262
  %bin.rdx1270 = mul <4 x i32> %i.kf, %i.ke
  %i.kh = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1270) ; 2 uses
  %cmp.n1271 = icmp eq i64 %11, %n.vec1261
  br i1 %cmp.n1271, label %.loopexit1591, label %scalar.ph1258.preheader

scalar.ph1258.preheader:                          ; preds = %.preheader.i.i201, %middle.block1269
  %indvars.iv40.i.i202.ph = phi i64 [ %indvars.iv38.i.i193, %.preheader.i.i201 ], [ %i.ka, %middle.block1269 ]
  %.030.i.i203.ph = phi i32 [ 1, %.preheader.i.i201 ], [ %i.kh, %middle.block1269 ]
  br label %scalar.ph1258

scalar.ph1258:                                    ; preds = %scalar.ph1258.preheader, %scalar.ph1258
  %indvars.iv40.i.i202 = phi i64 [ %indvars.iv.next41.i.i204, %scalar.ph1258 ], [ %indvars.iv40.i.i202.ph, %scalar.ph1258.preheader ] ; 2 uses
  %.030.i.i203 = phi i32 [ %i.kk, %scalar.ph1258 ], [ %.030.i.i203.ph, %scalar.ph1258.preheader ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv40.i.i202
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !83
  %i.kk = mul nsw i32 %i.kj, %.030.i.i203         ; 2 uses
  %indvars.iv.next41.i.i204 = add nuw nsw i64 %indvars.iv40.i.i202, 1 ; 2 uses
  %exitcond.not.i.i205 = icmp eq i64 %indvars.iv.next41.i.i204, %i.jj
  br i1 %exitcond.not.i.i205, label %.loopexit1591, label %scalar.ph1258, !llvm.loop !963

.loopexit1591:                                    ; preds = %scalar.ph1258, %middle.block1269
  %.lcssa1199 = phi i32 [ %i.kh, %middle.block1269 ], [ %i.kk, %scalar.ph1258 ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv43.i.i192
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !83
  %i.kn = mul nsw i32 %i.km, %.lcssa1199
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv43.i.i192
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit1591
  %.pn.i.i196 = phi i32 [ %i.kn, %.loopexit1591 ], [ %i.kp, %bb.w ]
  %.1.i.i197 = add nsw i32 %.pn.i.i196, %.02132.i.i194 ; 2 uses
  %indvars.iv.next39.i.i198 = add nuw nsw i64 %indvars.iv38.i.i193, 1
  %exitcond47.not.i.i199 = icmp eq i64 %indvars.iv.next44.i.i195, %i.jj
  br i1 %exitcond47.not.i.i199, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i200, label %bb.v, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i200: ; preds = %bb.x
  %i.kq = sext i32 %.1.i.i197 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit206

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit206: ; preds = %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit, %.preheader27.i.i190, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i200
  %.021.lcssa.i.i186 = phi i64 [ 0, %.preheader27.i.i190 ], [ 0, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit ], [ %i.kq, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i200 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iy, i64 112
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !57
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %.021.lcssa.i.i186
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !82
  %i.kv = fdiv double %i.ku, %i.es
  %i.kw = load i32, ptr %i.hc, align 8, !tbaa !279
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.lr.ph.i.i208, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit227.thread

.lr.ph.i.i208:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit206
  %i.ky = load ptr, ptr %i.fd, align 8, !tbaa !57 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !57 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fd, i64 136
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !60 ; 6 uses
  br label %bb.y

.preheader27.i.i211:                              ; preds = %bb.y
  %i.ld = icmp sgt i32 %i.lr, 0
  br i1 %i.ld, label %.lr.ph33.i.i212, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit227.thread

.lr.ph33.i.i212:                                  ; preds = %.preheader27.i.i211
  %i.le = getelementptr inbounds nuw i8, ptr %i.fd, i64 80 ; 2 uses
  %i.lf = zext nneg i32 %i.lr to i64              ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i208
  %indvars.iv.i.i209 = phi i64 [ 0, %.lr.ph.i.i208 ], [ %indvars.iv.next.i.i210, %bb.y ] ; 5 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i209
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !82
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i.i209
  %i.lj = load double, ptr %i.li, align 8, !tbaa !82
  %i.lk = fsub double %i.lh, %i.lj
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.i.i209
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !82
  %i.ln = fdiv double %i.lk, %i.lm
  %i.lo = fadd double %i.ln, f0x3EB0C6F7A0B5ED8D
  %i.lp = fptosi double %i.lo to i32
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i.i209
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !83
  %indvars.iv.next.i.i210 = add nuw nsw i64 %indvars.iv.i.i209, 1 ; 2 uses
  %i.lr = load i32, ptr %i.hc, align 8, !tbaa !279 ; 3 uses
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp slt i64 %indvars.iv.next.i.i210, %i.ls
  br i1 %i.lt, label %bb.y, label %.preheader27.i.i211, !llvm.loop !21

bb.z:                                             ; preds = %bb.ab, %.lr.ph33.i.i212
  %indvars.iv43.i.i213 = phi i64 [ 0, %.lr.ph33.i.i212 ], [ %indvars.iv.next44.i.i216, %bb.ab ] ; 4 uses
  %indvars.iv38.i.i214 = phi i64 [ 1, %.lr.ph33.i.i212 ], [ %indvars.iv.next39.i.i219, %bb.ab ] ; 4 uses
  %.02132.i.i215 = phi i32 [ 0, %.lr.ph33.i.i212 ], [ %.1.i.i218, %bb.ab ]
  %12 = xor i64 %indvars.iv43.i.i213, -1
  %13 = add nsw i64 %12, %i.lf                    ; 3 uses
  %indvars.iv.next44.i.i216 = add nuw nsw i64 %indvars.iv43.i.i213, 1 ; 3 uses
  %i.lu = icmp samesign ult i64 %indvars.iv.next44.i.i216, %i.lf
  br i1 %i.lu, label %.preheader.i.i222, label %bb.aa

.preheader.i.i222:                                ; preds = %bb.z
  %i.lv = load ptr, ptr %i.le, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1243 = icmp ult i64 %13, 8
  br i1 %min.iters.check1243, label %scalar.ph1242.preheader, label %vector.ph1244

vector.ph1244:                                    ; preds = %.preheader.i.i222
  %n.vec1245 = and i64 %13, -8                    ; 3 uses
  %i.lw = add i64 %indvars.iv38.i.i214, %n.vec1245
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv38.i.i214
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1252, %vector.body1246 ] ; 2 uses
  %vec.phi1248 = phi <4 x i32> [ splat (i32 1), %vector.ph1244 ], [ %i.ma, %vector.body1246 ]
  %vec.phi1249 = phi <4 x i32> [ splat (i32 1), %vector.ph1244 ], [ %i.mb, %vector.body1246 ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index1247 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.load1250 = load <4 x i32>, ptr %i.ly, align 4, !tbaa !83
  %wide.load1251 = load <4 x i32>, ptr %i.lz, align 4, !tbaa !83
  %i.ma = mul <4 x i32> %wide.load1250, %vec.phi1248 ; 2 uses
  %i.mb = mul <4 x i32> %wide.load1251, %vec.phi1249 ; 2 uses
  %index.next1252 = add nuw i64 %index1247, 8     ; 2 uses
  %i.mc = icmp eq i64 %index.next1252, %n.vec1245
  br i1 %i.mc, label %middle.block1253, label %vector.body1246, !llvm.loop !964

middle.block1253:                                 ; preds = %vector.body1246
  %bin.rdx1254 = mul <4 x i32> %i.mb, %i.ma
  %i.md = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1254) ; 2 uses
  %cmp.n1255 = icmp eq i64 %13, %n.vec1245
  br i1 %cmp.n1255, label %.loopexit1590, label %scalar.ph1242.preheader

scalar.ph1242.preheader:                          ; preds = %.preheader.i.i222, %middle.block1253
  %indvars.iv40.i.i223.ph = phi i64 [ %indvars.iv38.i.i214, %.preheader.i.i222 ], [ %i.lw, %middle.block1253 ]
  %.030.i.i224.ph = phi i32 [ 1, %.preheader.i.i222 ], [ %i.md, %middle.block1253 ]
  br label %scalar.ph1242

scalar.ph1242:                                    ; preds = %scalar.ph1242.preheader, %scalar.ph1242
  %indvars.iv40.i.i223 = phi i64 [ %indvars.iv.next41.i.i225, %scalar.ph1242 ], [ %indvars.iv40.i.i223.ph, %scalar.ph1242.preheader ] ; 2 uses
  %.030.i.i224 = phi i32 [ %i.mg, %scalar.ph1242 ], [ %.030.i.i224.ph, %scalar.ph1242.preheader ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv40.i.i223
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !83
  %i.mg = mul nsw i32 %i.mf, %.030.i.i224         ; 2 uses
  %indvars.iv.next41.i.i225 = add nuw nsw i64 %indvars.iv40.i.i223, 1 ; 2 uses
  %exitcond.not.i.i226 = icmp eq i64 %indvars.iv.next41.i.i225, %i.lf
  br i1 %exitcond.not.i.i226, label %.loopexit1590, label %scalar.ph1242, !llvm.loop !965

.loopexit1590:                                    ; preds = %scalar.ph1242, %middle.block1253
  %.lcssa1201 = phi i32 [ %i.md, %middle.block1253 ], [ %i.mg, %scalar.ph1242 ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv43.i.i213
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !83
  %i.mj = mul nsw i32 %i.mi, %.lcssa1201
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv43.i.i213
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !83
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit1590
  %.pn.i.i217 = phi i32 [ %i.mj, %.loopexit1590 ], [ %i.ml, %bb.aa ]
  %.1.i.i218 = add nsw i32 %.pn.i.i217, %.02132.i.i215 ; 2 uses
  %indvars.iv.next39.i.i219 = add nuw nsw i64 %indvars.iv38.i.i214, 1
  %exitcond47.not.i.i220 = icmp eq i64 %indvars.iv.next44.i.i216, %i.lf
  br i1 %exitcond47.not.i.i220, label %.lr.ph.i.i229, label %bb.z, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit227.thread: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit206, %.preheader27.i.i211
  %i.mm = load double, ptr %i.iv, align 8, !tbaa !82
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248

.lr.ph.i.i229:                                    ; preds = %bb.ab
  %i.mn = sext i32 %.1.i.i218 to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !82 ; 2 uses
  br label %bb.ac

.preheader27.i.i232:                              ; preds = %bb.ac
  %i.mq = icmp sgt i32 %i.nd, 0
  br i1 %i.mq, label %.lr.ph33.i.i233, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248

.lr.ph33.i.i233:                                  ; preds = %.preheader27.i.i232
  %i.mr = zext nneg i32 %i.nd to i64              ; 4 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i229
  %indvars.iv.i.i230 = phi i64 [ 0, %.lr.ph.i.i229 ], [ %indvars.iv.next.i.i231, %bb.ac ] ; 5 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i230
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !82
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i.i230
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !82
  %i.mw = fsub double %i.mt, %i.mv
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.i.i230
  %i.my = load double, ptr %i.mx, align 8, !tbaa !82
  %i.mz = fdiv double %i.mw, %i.my
  %i.na = fadd double %i.mz, f0x3EB0C6F7A0B5ED8D
  %i.nb = fptosi double %i.na to i32
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i.i230
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !83
  %indvars.iv.next.i.i231 = add nuw nsw i64 %indvars.iv.i.i230, 1 ; 2 uses
  %i.nd = load i32, ptr %i.hc, align 8, !tbaa !279 ; 3 uses
  %i.ne = sext i32 %i.nd to i64
  %i.nf = icmp slt i64 %indvars.iv.next.i.i231, %i.ne
  br i1 %i.nf, label %bb.ac, label %.preheader27.i.i232, !llvm.loop !21

bb.ad:                                            ; preds = %bb.af, %.lr.ph33.i.i233
  %indvars.iv43.i.i234 = phi i64 [ 0, %.lr.ph33.i.i233 ], [ %indvars.iv.next44.i.i237, %bb.af ] ; 4 uses
  %indvars.iv38.i.i235 = phi i64 [ 1, %.lr.ph33.i.i233 ], [ %indvars.iv.next39.i.i240, %bb.af ] ; 4 uses
  %.02132.i.i236 = phi i32 [ 0, %.lr.ph33.i.i233 ], [ %.1.i.i239, %bb.af ]
  %14 = xor i64 %indvars.iv43.i.i234, -1
  %15 = add nsw i64 %14, %i.mr                    ; 3 uses
  %indvars.iv.next44.i.i237 = add nuw nsw i64 %indvars.iv43.i.i234, 1 ; 3 uses
  %i.ng = icmp samesign ult i64 %indvars.iv.next44.i.i237, %i.mr
  br i1 %i.ng, label %.preheader.i.i243, label %bb.ae

.preheader.i.i243:                                ; preds = %bb.ad
  %i.nh = load ptr, ptr %i.le, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1227 = icmp ult i64 %15, 8
  br i1 %min.iters.check1227, label %scalar.ph1226.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %.preheader.i.i243
  %n.vec1229 = and i64 %15, -8                    ; 3 uses
  %i.ni = add i64 %indvars.iv38.i.i235, %n.vec1229
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv38.i.i235
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1236, %vector.body1230 ] ; 2 uses
  %vec.phi1232 = phi <4 x i32> [ splat (i32 1), %vector.ph1228 ], [ %i.nm, %vector.body1230 ]
  %vec.phi1233 = phi <4 x i32> [ splat (i32 1), %vector.ph1228 ], [ %i.nn, %vector.body1230 ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index1231 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load1234 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !83
  %wide.load1235 = load <4 x i32>, ptr %i.nl, align 4, !tbaa !83
  %i.nm = mul <4 x i32> %wide.load1234, %vec.phi1232 ; 2 uses
  %i.nn = mul <4 x i32> %wide.load1235, %vec.phi1233 ; 2 uses
  %index.next1236 = add nuw i64 %index1231, 8     ; 2 uses
  %i.no = icmp eq i64 %index.next1236, %n.vec1229
  br i1 %i.no, label %middle.block1237, label %vector.body1230, !llvm.loop !966

middle.block1237:                                 ; preds = %vector.body1230
  %bin.rdx1238 = mul <4 x i32> %i.nn, %i.nm
  %i.np = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1238) ; 2 uses
  %cmp.n1239 = icmp eq i64 %15, %n.vec1229
  br i1 %cmp.n1239, label %.loopexit1589, label %scalar.ph1226.preheader

scalar.ph1226.preheader:                          ; preds = %.preheader.i.i243, %middle.block1237
  %indvars.iv40.i.i244.ph = phi i64 [ %indvars.iv38.i.i235, %.preheader.i.i243 ], [ %i.ni, %middle.block1237 ]
  %.030.i.i245.ph = phi i32 [ 1, %.preheader.i.i243 ], [ %i.np, %middle.block1237 ]
  br label %scalar.ph1226

scalar.ph1226:                                    ; preds = %scalar.ph1226.preheader, %scalar.ph1226
  %indvars.iv40.i.i244 = phi i64 [ %indvars.iv.next41.i.i246, %scalar.ph1226 ], [ %indvars.iv40.i.i244.ph, %scalar.ph1226.preheader ] ; 2 uses
  %.030.i.i245 = phi i32 [ %i.ns, %scalar.ph1226 ], [ %.030.i.i245.ph, %scalar.ph1226.preheader ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv40.i.i244
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !83
  %i.ns = mul nsw i32 %i.nr, %.030.i.i245         ; 2 uses
  %indvars.iv.next41.i.i246 = add nuw nsw i64 %indvars.iv40.i.i244, 1 ; 2 uses
  %exitcond.not.i.i247 = icmp eq i64 %indvars.iv.next41.i.i246, %i.mr
  br i1 %exitcond.not.i.i247, label %.loopexit1589, label %scalar.ph1226, !llvm.loop !967

.loopexit1589:                                    ; preds = %scalar.ph1226, %middle.block1237
  %.lcssa1203 = phi i32 [ %i.np, %middle.block1237 ], [ %i.ns, %scalar.ph1226 ]
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv43.i.i234
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !83
  %i.nv = mul nsw i32 %i.nu, %.lcssa1203
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv43.i.i234
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !83
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit1589
  %.pn.i.i238 = phi i32 [ %i.nv, %.loopexit1589 ], [ %i.nx, %bb.ae ]
  %.1.i.i239 = add nsw i32 %.pn.i.i238, %.02132.i.i236 ; 2 uses
  %indvars.iv.next39.i.i240 = add nuw nsw i64 %indvars.iv38.i.i235, 1
  %exitcond47.not.i.i241 = icmp eq i64 %indvars.iv.next44.i.i237, %i.mr
  br i1 %exitcond47.not.i.i241, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i242, label %bb.ad, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i242: ; preds = %bb.af
  %i.ny = sext i32 %.1.i.i239 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit227.thread, %.preheader27.i.i232, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i242
  %i.nz = phi double [ %i.mp, %.preheader27.i.i232 ], [ %i.mm, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit227.thread ], [ %i.mp, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i242 ]
  %.021.lcssa.i.i228 = phi i64 [ 0, %.preheader27.i.i232 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit227.thread ], [ %i.ny, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i242 ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.021.lcssa.i.i228
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !82
  %i.oc = fneg double %i.nz
  %i.od = tail call double @llvm.fmuladd.f64(double %i.oc, double %i.ob, double %i.kv)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ix, i64 72 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !279
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %.lr.ph.i.i250, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269

.lr.ph.i.i250:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248
  %i.oh = load ptr, ptr %i.ix, align 8, !tbaa !57
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !57
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ix, i64 136
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !60 ; 3 uses
  br label %bb.ag

.preheader27.i.i253:                              ; preds = %bb.ag
  %i.om = icmp sgt i32 %i.pa, 0
  br i1 %i.om, label %.lr.ph33.i.i254, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269

.lr.ph33.i.i254:                                  ; preds = %.preheader27.i.i253
  %i.on = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.oo = zext nneg i32 %i.pa to i64              ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.i250
  %indvars.iv.i.i251 = phi i64 [ 0, %.lr.ph.i.i250 ], [ %indvars.iv.next.i.i252, %bb.ag ] ; 5 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv.i.i251
  %i.oq = load double, ptr %i.op, align 8, !tbaa !82
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.i.i251
  %i.os = load double, ptr %i.or, align 8, !tbaa !82
  %i.ot = fsub double %i.oq, %i.os
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.i.i251
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !82
  %i.ow = fdiv double %i.ot, %i.ov
  %i.ox = fadd double %i.ow, f0x3EB0C6F7A0B5ED8D
  %i.oy = fptosi double %i.ox to i32
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv.i.i251
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !83
  %indvars.iv.next.i.i252 = add nuw nsw i64 %indvars.iv.i.i251, 1 ; 2 uses
  %i.pa = load i32, ptr %i.oe, align 8, !tbaa !279 ; 3 uses
  %i.pb = sext i32 %i.pa to i64
  %i.pc = icmp slt i64 %indvars.iv.next.i.i252, %i.pb
  br i1 %i.pc, label %bb.ag, label %.preheader27.i.i253, !llvm.loop !21

bb.ah:                                            ; preds = %bb.aj, %.lr.ph33.i.i254
  %indvars.iv43.i.i255 = phi i64 [ 0, %.lr.ph33.i.i254 ], [ %indvars.iv.next44.i.i258, %bb.aj ] ; 4 uses
  %indvars.iv38.i.i256 = phi i64 [ 1, %.lr.ph33.i.i254 ], [ %indvars.iv.next39.i.i261, %bb.aj ] ; 4 uses
  %.02132.i.i257 = phi i32 [ 0, %.lr.ph33.i.i254 ], [ %.1.i.i260, %bb.aj ]
  %16 = xor i64 %indvars.iv43.i.i255, -1
  %17 = add nsw i64 %16, %i.oo                    ; 3 uses
  %indvars.iv.next44.i.i258 = add nuw nsw i64 %indvars.iv43.i.i255, 1 ; 3 uses
  %i.pd = icmp samesign ult i64 %indvars.iv.next44.i.i258, %i.oo
  br i1 %i.pd, label %.preheader.i.i264, label %bb.ai

.preheader.i.i264:                                ; preds = %bb.ah
  %i.pe = load ptr, ptr %i.on, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1214 = icmp ult i64 %17, 8
  br i1 %min.iters.check1214, label %scalar.ph1213.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %.preheader.i.i264
  %n.vec1216 = and i64 %17, -8                    ; 3 uses
  %i.pf = add i64 %indvars.iv38.i.i256, %n.vec1216
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv38.i.i256
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1222, %vector.body1217 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph1215 ], [ %i.pj, %vector.body1217 ]
  %vec.phi1219 = phi <4 x i32> [ splat (i32 1), %vector.ph1215 ], [ %i.pk, %vector.body1217 ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index1218 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %wide.load1220 = load <4 x i32>, ptr %i.ph, align 4, !tbaa !83
  %wide.load1221 = load <4 x i32>, ptr %i.pi, align 4, !tbaa !83
  %i.pj = mul <4 x i32> %wide.load1220, %vec.phi  ; 2 uses
  %i.pk = mul <4 x i32> %wide.load1221, %vec.phi1219 ; 2 uses
  %index.next1222 = add nuw i64 %index1218, 8     ; 2 uses
  %i.pl = icmp eq i64 %index.next1222, %n.vec1216
  br i1 %i.pl, label %middle.block1223, label %vector.body1217, !llvm.loop !968

middle.block1223:                                 ; preds = %vector.body1217
  %bin.rdx = mul <4 x i32> %i.pk, %i.pj
  %i.pm = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n1224 = icmp eq i64 %17, %n.vec1216
  br i1 %cmp.n1224, label %.loopexit1588, label %scalar.ph1213.preheader

scalar.ph1213.preheader:                          ; preds = %.preheader.i.i264, %middle.block1223
  %indvars.iv40.i.i265.ph = phi i64 [ %indvars.iv38.i.i256, %.preheader.i.i264 ], [ %i.pf, %middle.block1223 ]
  %.030.i.i266.ph = phi i32 [ 1, %.preheader.i.i264 ], [ %i.pm, %middle.block1223 ]
  br label %scalar.ph1213

scalar.ph1213:                                    ; preds = %scalar.ph1213.preheader, %scalar.ph1213
  %indvars.iv40.i.i265 = phi i64 [ %indvars.iv.next41.i.i267, %scalar.ph1213 ], [ %indvars.iv40.i.i265.ph, %scalar.ph1213.preheader ] ; 2 uses
  %.030.i.i266 = phi i32 [ %i.pp, %scalar.ph1213 ], [ %.030.i.i266.ph, %scalar.ph1213.preheader ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv40.i.i265
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !83
  %i.pp = mul nsw i32 %i.po, %.030.i.i266         ; 2 uses
  %indvars.iv.next41.i.i267 = add nuw nsw i64 %indvars.iv40.i.i265, 1 ; 2 uses
  %exitcond.not.i.i268 = icmp eq i64 %indvars.iv.next41.i.i267, %i.oo
  br i1 %exitcond.not.i.i268, label %.loopexit1588, label %scalar.ph1213, !llvm.loop !969

.loopexit1588:                                    ; preds = %scalar.ph1213, %middle.block1223
  %.lcssa1205 = phi i32 [ %i.pm, %middle.block1223 ], [ %i.pp, %scalar.ph1213 ]
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv43.i.i255
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !83
  %i.ps = mul nsw i32 %i.pr, %.lcssa1205
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv43.i.i255
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !83
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit1588
  %.pn.i.i259 = phi i32 [ %i.ps, %.loopexit1588 ], [ %i.pu, %bb.ai ]
  %.1.i.i260 = add nsw i32 %.pn.i.i259, %.02132.i.i257 ; 2 uses
  %indvars.iv.next39.i.i261 = add nuw nsw i64 %indvars.iv38.i.i256, 1
  %exitcond47.not.i.i262 = icmp eq i64 %indvars.iv.next44.i.i258, %i.oo
  br i1 %exitcond47.not.i.i262, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i263, label %bb.ah, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i263: ; preds = %bb.aj
  %i.pv = sext i32 %.1.i.i260 to i64
  br label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269

_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit269: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248, %.preheader27.i.i253, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i263
  %.021.lcssa.i.i249 = phi i64 [ 0, %.preheader27.i.i253 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit248 ], [ %i.pv, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i263 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ix, i64 112
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !57
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %.021.lcssa.i.i249
  store double %i.od, ptr %i.py, align 8, !tbaa !82
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %i.pz = load i32, ptr %i.c, align 8, !tbaa !268 ; 6 uses
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv.next819, %i.qa
  br i1 %i.qb, label %bb.l, label %.preheader676, !llvm.loop !970

bb.ak:                                            ; preds = %.lr.ph733, %bb.al
  %indvars.iv821 = phi i64 [ %i.fc, %.lr.ph733 ], [ %indvars.iv.next822, %bb.al ] ; 7 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv821 ; 2 uses
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !82
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0644.0936, i64 %indvars.iv821 ; 3 uses
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !82
  %i.qg = fadd double %i.qd, %i.qf                ; 2 uses
  store double %i.qg, ptr %i.qe, align 8, !tbaa !82
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv821
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !82
  %i.qj = load double, ptr %i.qc, align 8, !tbaa !82 ; 3 uses
  %i.qk = tail call double @llvm.fmuladd.f64(double %i.qj, double 1.000000e+01, double %i.qi)
  %i.ql = fsub double %i.qk, %i.qj
  %i.qm = fadd double %i.ql, f0x3EB0C6F7A0B5ED8D
  %i.qn = fcmp ogt double %i.qg, %i.qm
  br i1 %i.qn, label %bb.al, label %._crit_edge.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.qo = load ptr, ptr %i.ax, align 8, !tbaa !57
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv821
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !82
  %i.qr = tail call double @llvm.fmuladd.f64(double %i.qj, double -1.000000e+01, double %i.qq)
  store double %i.qr, ptr %i.qe, align 8, !tbaa !82
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -1
  %i.qs = icmp sgt i64 %indvars.iv821, 0
  br i1 %i.qs, label %bb.ak, label %._crit_edge.thread, !llvm.loop !971

._crit_edge.loopexit:                             ; preds = %bb.ak
  %i.qt = trunc nuw nsw i64 %indvars.iv821 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader676.thread, %.preheader676
  %i.qu = phi i32 [ %i.pz, %.preheader676 ], [ %i.et, %.preheader676.thread ], [ %i.pz, %._crit_edge.loopexit ]
  %.2109.lcssa = phi i32 [ %.2109731, %.preheader676 ], [ %.2109731939, %.preheader676.thread ], [ %i.qt, %._crit_edge.loopexit ]
  %i.qv = icmp sgt i32 %.2109.lcssa, -1
  br i1 %i.qv, label %bb.b, label %._crit_edge.thread, !llvm.loop !972

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.al
  %i.qw = phi i32 [ %i.pz, %bb.al ], [ %i.qu, %._crit_edge ] ; 3 uses
  %i.qx = sext i32 %i.qw to i64                   ; 2 uses
  %i.qy = icmp slt i32 %i.qw, 0
  br i1 %i.qy, label %bb.am, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270

bb.am:                                            ; preds = %._crit_edge.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc277 unwind label %bb.au

.noexc277:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270: ; preds = %._crit_edge.thread
  %.not.i.i.i.i271 = icmp eq i32 %i.qw, 0
  br i1 %.not.i.i.i.i271, label %.preheader669, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270
  %i.qz = shl nuw nsw i64 %i.qx, 3                ; 2 uses
  %i.ra = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qz) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279 unwind label %bb.au ; 12 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279:         ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ra, i8 0, i64 %i.qz, i1 false), !tbaa !82
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.qx
  %.pre848 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.rc = ptrtoint ptr %i.rb to i64               ; 10 uses
  %i.rd = zext nneg i32 %.pre848 to i64           ; 2 uses
  %i.re = icmp slt i32 %.pre848, 0
  br i1 %i.re, label %bb.ao, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc287 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit534.thread

.noexc287:                                        ; preds = %bb.ao
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279
  %.not.i.i.i.i281 = icmp eq i32 %.pre848, 0
  br i1 %.not.i.i.i.i281, label %.preheader669, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280
  %i.rf = shl nuw nsw i64 %i.rd, 3                ; 2 uses
  %i.rg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rf) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit534.thread ; 10 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289:         ; preds = %bb.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rg, i8 0, i64 %i.rf, i1 false), !tbaa !82
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.rd
  %.pre849 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.ri = ptrtoint ptr %i.rh to i64               ; 8 uses
  %i.rj = zext nneg i32 %.pre849 to i64           ; 2 uses
  %i.rk = icmp slt i32 %.pre849, 0
  br i1 %i.rk, label %bb.aq, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290

bb.aq:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc297 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit532.thread

.noexc297:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289
  %.not.i.i.i.i291 = icmp eq i32 %.pre849, 0
  br i1 %.not.i.i.i.i291, label %.preheader669, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290
  %i.rl = shl nuw nsw i64 %i.rj, 3                ; 2 uses
  %i.rm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rl) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit532.thread ; 13 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299:         ; preds = %bb.ar
  %i.rn = ptrtoaddr ptr %i.rm to i64              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rm, i8 0, i64 %i.rl, i1 false), !tbaa !82
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rj
  %.pre850 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.rp = ptrtoint ptr %i.ro to i64               ; 6 uses
  %i.rq = zext nneg i32 %.pre850 to i64           ; 2 uses
  %i.rr = icmp slt i32 %.pre850, 0
  br i1 %i.rr, label %bb.as, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
end_hunk_3
begin_hunk_4_@_ZN11UIestimator11UIestimator8calc_pmfEv:bb.a

scalar.ph1348:                                    ; preds = %scalar.ph1348.prol.loopexit, %scalar.ph1348
  %indvars.iv824 = phi i64 [ %indvars.iv.next825.1, %scalar.ph1348 ], [ %indvars.iv824.unr, %scalar.ph1348.prol.loopexit ] ; 6 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv824
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !82 ; 2 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv824
  store double %i.ug, ptr %i.uh, align 8, !tbaa !82
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv824
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !82
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.uj, double -1.000000e+01, double %i.ug)
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv824
  store double %i.uk, ptr %i.ul, align 8, !tbaa !82
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 4 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv.next825
  %i.un = load double, ptr %i.um, align 8, !tbaa !82 ; 2 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next825
  store double %i.un, ptr %i.uo, align 8, !tbaa !82
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.next825
  %i.uq = load double, ptr %i.up, align 8, !tbaa !82
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.uq, double -1.000000e+01, double %i.un)
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv.next825
  store double %i.ur, ptr %i.us, align 8, !tbaa !82
  %indvars.iv.next825.1 = add nuw nsw i64 %indvars.iv824, 2 ; 2 uses
  %exitcond828.not.1 = icmp eq i64 %indvars.iv.next825.1, %wide.trip.count827
  br i1 %exitcond828.not.1, label %.preheader669, label %scalar.ph1348, !llvm.loop !974

bb.au:                                            ; preds = %bb.an, %bb.am
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit536

_ZNSt6vectorIdSaIdEED2Ev.exit534.thread:          ; preds = %bb.ao, %bb.ap
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

_ZNSt6vectorIdSaIdEED2Ev.exit532.thread:          ; preds = %bb.aq, %bb.ar
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

_ZNSt6vectorIdSaIdEED2Ev.exit530.thread:          ; preds = %bb.as, %bb.at
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.preheader668:                                    ; preds = %.preheader669, %_ZNSt6vectorIdSaIdEED2Ev.exit516
  %i.ux = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.uy = icmp sgt i32 %i.ux, 0
  br i1 %i.uy, label %.lr.ph740, label %.preheader667

.lr.ph740:                                        ; preds = %.preheader668
  %i.uz = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 5 uses
  %wide.trip.count832 = zext nneg i32 %i.ux to i64 ; 5 uses
  %min.iters.check1568 = icmp ult i32 %i.ux, 12
  br i1 %min.iters.check1568, label %scalar.ph1567.preheader, label %vector.memcheck1545

vector.memcheck1545:                              ; preds = %.lr.ph740
  %i.va = ptrtoaddr ptr %i.uz to i64              ; 3 uses
  %i.vb = sub i64 %.sroa.0632.0948952963977990101410251547, %i.va
  %diff.check1555 = icmp ugt i64 %i.vb, -16
  %conflict.rdx1560.reass = or i1 %diff.check1555, %invariant.op1776
  %i.vc = sub i64 %.sroa.0623.0966976993101310261546, %i.va
  %diff.check1561 = icmp ugt i64 %i.vc, -16
  %conflict.rdx1562 = or i1 %conflict.rdx1560.reass, %diff.check1561
  %conflict.rdx1564 = or i1 %conflict.rdx1562, %diff.check1563
  %i.vd = sub i64 %i.va, %.sroa.0582.010301549
  %diff.check1565 = icmp ugt i64 %i.vd, -16
  %conflict.rdx1566 = or i1 %conflict.rdx1564, %diff.check1565
  br i1 %conflict.rdx1566, label %scalar.ph1567.preheader, label %vector.ph1569

vector.ph1569:                                    ; preds = %vector.memcheck1545
  %n.vec1570 = and i64 %wide.trip.count832, 2147483646 ; 3 uses
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1569
  %index1572 = phi i64 [ 0, %vector.ph1569 ], [ %index.next1575, %vector.body1571 ] ; 6 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %index1572
  store <2 x double> zeroinitializer, ptr %i.ve, align 8, !tbaa !82
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %index1572
  store <2 x double> zeroinitializer, ptr %i.vf, align 8, !tbaa !82
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %index1572
  %wide.load1573 = load <2 x double>, ptr %i.vg, align 8, !tbaa !82
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %index1572
  %wide.load1574 = load <2 x double>, ptr %i.vh, align 8, !tbaa !82
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1574, <2 x double> splat (double -1.000000e+01), <2 x double> %wide.load1573)
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %index1572
  store <2 x double> %i.vi, ptr %i.vj, align 8, !tbaa !82
  %index.next1575 = add nuw i64 %index1572, 2     ; 2 uses
  %i.vk = icmp eq i64 %index.next1575, %n.vec1570
  br i1 %i.vk, label %middle.block1576, label %vector.body1571, !llvm.loop !975

middle.block1576:                                 ; preds = %vector.body1571
  %cmp.n1577 = icmp eq i64 %n.vec1570, %wide.trip.count832
  br i1 %cmp.n1577, label %.preheader667, label %scalar.ph1567.preheader

scalar.ph1567.preheader:                          ; preds = %vector.memcheck1545, %.lr.ph740, %middle.block1576
  %indvars.iv829.ph = phi i64 [ 0, %vector.memcheck1545 ], [ 0, %.lr.ph740 ], [ %n.vec1570, %middle.block1576 ] ; 8 uses
  %xtraiter1687 = and i64 %wide.trip.count832, 1
  %lcmp.mod1688.not = icmp eq i64 %xtraiter1687, 0
  br i1 %lcmp.mod1688.not, label %scalar.ph1567.prol.loopexit, label %scalar.ph1567.prol

scalar.ph1567.prol:                               ; preds = %scalar.ph1567.preheader
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %indvars.iv829.ph
  store double 0.000000e+00, ptr %i.vl, align 8, !tbaa !82
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %indvars.iv829.ph
  store double 0.000000e+00, ptr %i.vm, align 8, !tbaa !82
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv829.ph
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !82
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv829.ph
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !82
  %i.vr = call double @llvm.fmuladd.f64(double %i.vq, double -1.000000e+01, double %i.vo)
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv829.ph
  store double %i.vr, ptr %i.vs, align 8, !tbaa !82
  %indvars.iv.next830.prol = or disjoint i64 %indvars.iv829.ph, 1
  br label %scalar.ph1567.prol.loopexit

scalar.ph1567.prol.loopexit:                      ; preds = %scalar.ph1567.prol, %scalar.ph1567.preheader
  %indvars.iv829.unr = phi i64 [ %indvars.iv829.ph, %scalar.ph1567.preheader ], [ %indvars.iv.next830.prol, %scalar.ph1567.prol ]
  %i.vt = add nsw i64 %wide.trip.count832, -1
  %i.vu = icmp eq i64 %indvars.iv829.ph, %i.vt
  br i1 %i.vu, label %.preheader667, label %scalar.ph1567

.preheader667:                                    ; preds = %scalar.ph1567.prol.loopexit, %scalar.ph1567, %middle.block1576, %.preheader668
  %.pre852 = load i32, ptr %i.tc, align 8, !tbaa !277
  br label %bb.av

scalar.ph1567:                                    ; preds = %scalar.ph1567.prol.loopexit, %scalar.ph1567
  %indvars.iv829 = phi i64 [ %indvars.iv.next830.1, %scalar.ph1567 ], [ %indvars.iv829.unr, %scalar.ph1567.prol.loopexit ] ; 7 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %indvars.iv829
  store double 0.000000e+00, ptr %i.vv, align 8, !tbaa !82
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %indvars.iv829
  store double 0.000000e+00, ptr %i.vw, align 8, !tbaa !82
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv829
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !82
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv829
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !82
  %i.wb = call double @llvm.fmuladd.f64(double %i.wa, double -1.000000e+01, double %i.vy)
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv829
  store double %i.wb, ptr %i.wc, align 8, !tbaa !82
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 5 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %indvars.iv.next830
  store double 0.000000e+00, ptr %i.wd, align 8, !tbaa !82
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %indvars.iv.next830
  store double 0.000000e+00, ptr %i.we, align 8, !tbaa !82
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.next830
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !82
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv.next830
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !82
  %i.wj = call double @llvm.fmuladd.f64(double %i.wi, double -1.000000e+01, double %i.wg)
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.next830
  store double %i.wj, ptr %i.wk, align 8, !tbaa !82
  %indvars.iv.next830.1 = add nuw nsw i64 %indvars.iv829, 2 ; 2 uses
  %exitcond833.not.1 = icmp eq i64 %indvars.iv.next830.1, %wide.trip.count832
  br i1 %exitcond833.not.1, label %.preheader667, label %scalar.ph1567, !llvm.loop !976

bb.av:                                            ; preds = %.preheader667, %._crit_edge748
  %i.wl = phi i32 [ %.pre852, %.preheader667 ], [ %i.arr, %._crit_edge748 ] ; 2 uses
  %.0113752 = phi i32 [ 0, %.preheader667 ], [ %i.aan, %._crit_edge748 ]
  %i.wm = icmp sgt i32 %i.wl, 0
  br i1 %i.wm, label %.lr.ph.i.i311, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread

.lr.ph.i.i311:                                    ; preds = %bb.av
  %i.wn = load ptr, ptr %i.tb, align 8, !tbaa !57
  %i.wo = load ptr, ptr %i.td, align 8, !tbaa !57 ; 2 uses
  %i.wp = load ptr, ptr %i.te, align 8, !tbaa !60 ; 5 uses
  br label %bb.aw

.preheader27.i.i314:                              ; preds = %bb.aw
  %i.wq = icmp sgt i32 %i.xd, 0
  br i1 %i.wq, label %.lr.ph33.i.i315, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread

.lr.ph33.i.i315:                                  ; preds = %.preheader27.i.i314
  %i.wr = zext nneg i32 %i.xd to i64              ; 4 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i.i311
  %indvars.iv.i.i312 = phi i64 [ 0, %.lr.ph.i.i311 ], [ %indvars.iv.next.i.i313, %bb.aw ] ; 5 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i.i312
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !82
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %indvars.iv.i.i312
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !82
  %i.ww = fsub double %i.wt, %i.wv
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %indvars.iv.i.i312
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !82
  %i.wz = fdiv double %i.ww, %i.wy
  %i.xa = fadd double %i.wz, f0x3EB0C6F7A0B5ED8D
  %i.xb = fptosi double %i.xa to i32
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.i.i312
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !83
  %indvars.iv.next.i.i313 = add nuw nsw i64 %indvars.iv.i.i312, 1 ; 2 uses
  %i.xd = load i32, ptr %i.tc, align 8, !tbaa !277 ; 4 uses
  %i.xe = sext i32 %i.xd to i64
  %i.xf = icmp slt i64 %indvars.iv.next.i.i313, %i.xe
  br i1 %i.xf, label %bb.aw, label %.preheader27.i.i314, !llvm.loop !23

bb.ax:                                            ; preds = %bb.az, %.lr.ph33.i.i315
  %indvars.iv43.i.i316 = phi i64 [ 0, %.lr.ph33.i.i315 ], [ %indvars.iv.next44.i.i319, %bb.az ] ; 4 uses
  %indvars.iv38.i.i317 = phi i64 [ 1, %.lr.ph33.i.i315 ], [ %indvars.iv.next39.i.i322, %bb.az ] ; 4 uses
  %.02132.i.i318 = phi i32 [ 0, %.lr.ph33.i.i315 ], [ %.1.i.i321, %bb.az ]
  %18 = xor i64 %indvars.iv43.i.i316, -1
  %19 = add nsw i64 %18, %i.wr                    ; 3 uses
  %indvars.iv.next44.i.i319 = add nuw nsw i64 %indvars.iv43.i.i316, 1 ; 3 uses
  %i.xg = icmp samesign ult i64 %indvars.iv.next44.i.i319, %i.wr
  br i1 %i.xg, label %.preheader.i.i324, label %bb.ay

.preheader.i.i324:                                ; preds = %bb.ax
  %i.xh = load ptr, ptr %i.tg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1530 = icmp ult i64 %19, 8
  br i1 %min.iters.check1530, label %scalar.ph1529.preheader, label %vector.ph1531

vector.ph1531:                                    ; preds = %.preheader.i.i324
  %n.vec1532 = and i64 %19, -8                    ; 3 uses
  %i.xi = add i64 %indvars.iv38.i.i317, %n.vec1532
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv38.i.i317
  br label %vector.body1533

vector.body1533:                                  ; preds = %vector.body1533, %vector.ph1531
  %index1534 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1539, %vector.body1533 ] ; 2 uses
  %vec.phi1535 = phi <4 x i32> [ splat (i32 1), %vector.ph1531 ], [ %i.xm, %vector.body1533 ]
  %vec.phi1536 = phi <4 x i32> [ splat (i32 1), %vector.ph1531 ], [ %i.xn, %vector.body1533 ]
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %index1534 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %wide.load1537 = load <4 x i32>, ptr %i.xk, align 4, !tbaa !83
  %wide.load1538 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !83
  %i.xm = mul <4 x i32> %wide.load1537, %vec.phi1535 ; 2 uses
  %i.xn = mul <4 x i32> %wide.load1538, %vec.phi1536 ; 2 uses
  %index.next1539 = add nuw i64 %index1534, 8     ; 2 uses
  %i.xo = icmp eq i64 %index.next1539, %n.vec1532
  br i1 %i.xo, label %middle.block1540, label %vector.body1533, !llvm.loop !977

middle.block1540:                                 ; preds = %vector.body1533
  %bin.rdx1541 = mul <4 x i32> %i.xn, %i.xm
  %i.xp = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1541) ; 2 uses
  %cmp.n1542 = icmp eq i64 %19, %n.vec1532
  br i1 %cmp.n1542, label %.loopexit1585, label %scalar.ph1529.preheader

scalar.ph1529.preheader:                          ; preds = %.preheader.i.i324, %middle.block1540
  %indvars.iv40.i.i325.ph = phi i64 [ %indvars.iv38.i.i317, %.preheader.i.i324 ], [ %i.xi, %middle.block1540 ]
  %.030.i.i326.ph = phi i32 [ 1, %.preheader.i.i324 ], [ %i.xp, %middle.block1540 ]
  br label %scalar.ph1529

scalar.ph1529:                                    ; preds = %scalar.ph1529.preheader, %scalar.ph1529
  %indvars.iv40.i.i325 = phi i64 [ %indvars.iv.next41.i.i327, %scalar.ph1529 ], [ %indvars.iv40.i.i325.ph, %scalar.ph1529.preheader ] ; 2 uses
  %.030.i.i326 = phi i32 [ %i.xs, %scalar.ph1529 ], [ %.030.i.i326.ph, %scalar.ph1529.preheader ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv40.i.i325
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !83
  %i.xs = mul nsw i32 %i.xr, %.030.i.i326         ; 2 uses
  %indvars.iv.next41.i.i327 = add nuw nsw i64 %indvars.iv40.i.i325, 1 ; 2 uses
  %exitcond.not.i.i328 = icmp eq i64 %indvars.iv.next41.i.i327, %i.wr
  br i1 %exitcond.not.i.i328, label %.loopexit1585, label %scalar.ph1529, !llvm.loop !978

.loopexit1585:                                    ; preds = %scalar.ph1529, %middle.block1540
  %.lcssa1156 = phi i32 [ %i.xp, %middle.block1540 ], [ %i.xs, %scalar.ph1529 ]
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv43.i.i316
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !83
  %i.xv = mul nsw i32 %i.xu, %.lcssa1156
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv43.i.i316
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !83
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit1585
  %.pn.i.i320 = phi i32 [ %i.xv, %.loopexit1585 ], [ %i.xx, %bb.ay ]
  %.1.i.i321 = add nsw i32 %.pn.i.i320, %.02132.i.i318 ; 2 uses
  %indvars.iv.next39.i.i322 = add nuw nsw i64 %indvars.iv38.i.i317, 1
  %exitcond47.not.i.i323 = icmp eq i64 %indvars.iv.next44.i.i319, %i.wr
  br i1 %exitcond47.not.i.i323, label %.lr.ph.i, label %bb.ax, !llvm.loop !24

_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread: ; preds = %.preheader27.i.i314, %bb.av
  %i.xy = phi i32 [ %i.xd, %.preheader27.i.i314 ], [ %i.wl, %bb.av ]
  %i.xz = load ptr, ptr %i.tf, align 8, !tbaa !253 ; 2 uses
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.az
  %i.ya = sext i32 %.1.i.i321 to i64
  %i.yb = load ptr, ptr %i.tf, align 8, !tbaa !253 ; 3 uses
  %i.yc = getelementptr inbounds nuw [24 x i8], ptr %i.yb, i64 %i.ya ; 2 uses
  br label %bb.ba

.preheader.i:                                     ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22.i
  %i.yd = icmp sgt i32 %i.zq, 0
  br i1 %i.yd, label %.lr.ph27.i, label %.loopexit

.lr.ph27.i:                                       ; preds = %.preheader.i
  %i.ye = zext nneg i32 %i.zq to i64              ; 2 uses
  br label %bb.bh

bb.ba:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN11UIestimator8n_matrix5roundEd.exit22.i ] ; 5 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !82
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %indvars.iv.i
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !82 ; 2 uses
  %i.yj = fdiv double %i.yg, %i.yi
  %i.yk = fadd double %i.yj, f0x3EB0C6F7A0B5ED8D  ; 3 uses
  %i.yl = fcmp ogt double %i.yk, 0.000000e+00
  br i1 %i.yl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ym = fadd double %i.yk, 5.000000e-01
  %i.yn = call double @llvm.floor.f64(double %i.ym)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.yo = fadd double %i.yk, -5.000000e-01
  %i.yp = call double @llvm.ceil.f64(double %i.yo)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit.i

_ZN11UIestimator8n_matrix5roundEd.exit.i:         ; preds = %bb.bc, %bb.bb
  %i.yq = phi double [ %i.yn, %bb.bb ], [ %i.yp, %bb.bc ]
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !82
  %i.yt = fdiv double %i.ys, %i.yi
  %i.yu = fadd double %i.yt, f0x3EB0C6F7A0B5ED8D  ; 3 uses
  %i.yv = fcmp ogt double %i.yu, 0.000000e+00
  br i1 %i.yv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit.i
  %i.yw = fadd double %i.yu, 5.000000e-01
  %i.yx = call double @llvm.floor.f64(double %i.yw)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21.i

bb.be:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit.i
  %i.yy = fadd double %i.yu, -5.000000e-01
  %i.yz = call double @llvm.ceil.f64(double %i.yy)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21.i

_ZN11UIestimator8n_matrix5roundEd.exit21.i:       ; preds = %bb.be, %bb.bd
  %i.za = phi double [ %i.yx, %bb.bd ], [ %i.yz, %bb.be ]
  %i.zb = fsub double %i.yq, %i.za
  %i.zc = load i32, ptr %i.th, align 4, !tbaa !282
  %i.zd = add nsw i32 %i.zc, -1
  %i.ze = sdiv i32 %i.zd, 2
  %i.zf = sitofp i32 %i.ze to double
  %i.zg = fadd double %i.zb, %i.zf
  %i.zh = fadd double %i.zg, f0x3EB0C6F7A0B5ED8D  ; 3 uses
  %i.zi = fcmp ogt double %i.zh, 0.000000e+00
  br i1 %i.zi, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21.i
  %i.zj = fadd double %i.zh, 5.000000e-01
  %i.zk = call double @llvm.floor.f64(double %i.zj)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22.i

bb.bg:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21.i
  %i.zl = fadd double %i.zh, -5.000000e-01
  %i.zm = call double @llvm.ceil.f64(double %i.zl)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22.i

_ZN11UIestimator8n_matrix5roundEd.exit22.i:       ; preds = %bb.bg, %bb.bf
  %i.zn = phi double [ %i.zk, %bb.bf ], [ %i.zm, %bb.bg ]
  %i.zo = fptosi double %i.zn to i32
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.i
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !83
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.zq = load i32, ptr %i.tc, align 8, !tbaa !277 ; 6 uses
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp slt i64 %indvars.iv.next.i, %i.zr
  br i1 %i.zs, label %bb.ba, label %.preheader.i, !llvm.loop !25

bb.bh:                                            ; preds = %bb.bj, %.lr.ph27.i
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next32.i, %bb.bj ] ; 3 uses
  %.026.i = phi i32 [ 0, %.lr.ph27.i ], [ %.1.i, %bb.bj ]
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 3 uses
  %i.zt = icmp samesign ult i64 %indvars.iv.next32.i, %i.ye
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv31.i
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !83 ; 2 uses
  br i1 %i.zt, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.zw = load i32, ptr %i.th, align 4, !tbaa !282
  %i.zx = sitofp i32 %i.zw to double
  %i.zy = trunc nuw nsw i64 %indvars.iv31.i to i32
  %i.zz = xor i32 %i.zy, -1
  %i.aaa = add nsw i32 %i.zq, %i.zz
  %i.aab = sitofp i32 %i.aaa to double
  %i.aac = call noundef double @pow(double noundef %i.zx, double noundef %i.aab) #24
  %i.aad = fadd double %i.aac, f0x3EB0C6F7A0B5ED8D
  %i.aae = fptosi double %i.aad to i32
  %i.aaf = mul nsw i32 %i.zv, %i.aae
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn.i = phi i32 [ %i.aaf, %bb.bi ], [ %i.zv, %bb.bh ]
  %.1.i = add nsw i32 %.pn.i, %.026.i             ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next32.i, %i.ye
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %bb.bh, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %bb.bj
  %i.aag = sext i32 %.1.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread, %.preheader.i
  %i.aah = phi i32 [ %i.zq, %.preheader.i ], [ %i.zq, %.loopexit.loopexit ], [ %i.xy, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread ]
  %i.aai = phi ptr [ %i.yc, %.preheader.i ], [ %i.yc, %.loopexit.loopexit ], [ %i.xz, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread ]
  %i.aaj = phi ptr [ %i.yb, %.preheader.i ], [ %i.yb, %.loopexit.loopexit ], [ %i.xz, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread ] ; 6 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.aag, %.loopexit.loopexit ], [ 0, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread ]
  %i.aak = load ptr, ptr %i.aai, align 8, !tbaa !60
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.0.lcssa.i
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !83
  %i.aan = add nsw i32 %i.aam, %.0113752          ; 3 uses
  %i.aao = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.aap = icmp sgt i32 %i.aao, 0
  br i1 %i.aap, label %.lr.ph743, label %.preheader.thread

.preheader.thread:                                ; preds = %.loopexit
  %.21067451033 = add i32 %i.aao, -1
  br label %._crit_edge748

.lr.ph743:                                        ; preds = %.loopexit
  %i.aaq = load ptr, ptr %i.au, align 8, !tbaa !256
  br label %bb.bk

.preheader:                                       ; preds = %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread
  %.2106745 = add i32 %i.aqy, -1                  ; 2 uses
  %i.aar = icmp sgt i32 %i.aqy, 0
  br i1 %i.aar, label %.lr.ph747, label %._crit_edge748

.lr.ph747:                                        ; preds = %.preheader
  %i.aas = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.aat = zext nneg i32 %.2106745 to i64
  br label %bb.df

bb.bk:                                            ; preds = %.lr.ph743, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread
  %indvars.iv834 = phi i64 [ 0, %.lr.ph743 ], [ %indvars.iv.next835, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread ] ; 9 uses
  %i.aau = getelementptr inbounds nuw [160 x i8], ptr %i.aaq, i64 %indvars.iv834 ; 15 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 72 ; 5 uses
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !279
  %i.aax = icmp sgt i32 %i.aaw, 0
  br i1 %i.aax, label %.lr.ph.i.i331, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350

.lr.ph.i.i331:                                    ; preds = %bb.bk
  %i.aay = load ptr, ptr %i.aau, align 8, !tbaa !57
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aau, i64 48
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !57
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aau, i64 136
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !60 ; 3 uses
  br label %bb.bl

.preheader27.i.i334:                              ; preds = %bb.bl
  %i.abd = icmp sgt i32 %i.abr, 0
  br i1 %i.abd, label %.lr.ph33.i.i335, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350

.lr.ph33.i.i335:                                  ; preds = %.preheader27.i.i334
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aau, i64 80
  %i.abf = zext nneg i32 %i.abr to i64            ; 4 uses
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.i.i331
  %indvars.iv.i.i332 = phi i64 [ 0, %.lr.ph.i.i331 ], [ %indvars.iv.next.i.i333, %bb.bl ] ; 5 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i.i332
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !82
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %indvars.iv.i.i332
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !82
  %i.abk = fsub double %i.abh, %i.abj
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %indvars.iv.i.i332
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !82
  %i.abn = fdiv double %i.abk, %i.abm
  %i.abo = fadd double %i.abn, f0x3EB0C6F7A0B5ED8D
  %i.abp = fptosi double %i.abo to i32
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %indvars.iv.i.i332
  store i32 %i.abp, ptr %i.abq, align 4, !tbaa !83
  %indvars.iv.next.i.i333 = add nuw nsw i64 %indvars.iv.i.i332, 1 ; 2 uses
  %i.abr = load i32, ptr %i.aav, align 8, !tbaa !279 ; 3 uses
  %i.abs = sext i32 %i.abr to i64
  %i.abt = icmp slt i64 %indvars.iv.next.i.i333, %i.abs
  br i1 %i.abt, label %bb.bl, label %.preheader27.i.i334, !llvm.loop !21

bb.bm:                                            ; preds = %bb.bo, %.lr.ph33.i.i335
  %indvars.iv43.i.i336 = phi i64 [ 0, %.lr.ph33.i.i335 ], [ %indvars.iv.next44.i.i339, %bb.bo ] ; 4 uses
  %indvars.iv38.i.i337 = phi i64 [ 1, %.lr.ph33.i.i335 ], [ %indvars.iv.next39.i.i342, %bb.bo ] ; 4 uses
  %.02132.i.i338 = phi i32 [ 0, %.lr.ph33.i.i335 ], [ %.1.i.i341, %bb.bo ]
  %20 = xor i64 %indvars.iv43.i.i336, -1
  %21 = add nsw i64 %20, %i.abf                   ; 3 uses
  %indvars.iv.next44.i.i339 = add nuw nsw i64 %indvars.iv43.i.i336, 1 ; 3 uses
  %i.abu = icmp samesign ult i64 %indvars.iv.next44.i.i339, %i.abf
  br i1 %i.abu, label %.preheader.i.i345, label %bb.bn

.preheader.i.i345:                                ; preds = %bb.bm
  %i.abv = load ptr, ptr %i.abe, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1514 = icmp ult i64 %21, 8
  br i1 %min.iters.check1514, label %scalar.ph1513.preheader, label %vector.ph1515

vector.ph1515:                                    ; preds = %.preheader.i.i345
  %n.vec1516 = and i64 %21, -8                    ; 3 uses
  %i.abw = add i64 %indvars.iv38.i.i337, %n.vec1516
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv38.i.i337
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1523, %vector.body1517 ] ; 2 uses
  %vec.phi1519 = phi <4 x i32> [ splat (i32 1), %vector.ph1515 ], [ %i.aca, %vector.body1517 ]
  %vec.phi1520 = phi <4 x i32> [ splat (i32 1), %vector.ph1515 ], [ %i.acb, %vector.body1517 ]
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %index1518 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %wide.load1521 = load <4 x i32>, ptr %i.aby, align 4, !tbaa !83
  %wide.load1522 = load <4 x i32>, ptr %i.abz, align 4, !tbaa !83
  %i.aca = mul <4 x i32> %wide.load1521, %vec.phi1519 ; 2 uses
  %i.acb = mul <4 x i32> %wide.load1522, %vec.phi1520 ; 2 uses
  %index.next1523 = add nuw i64 %index1518, 8     ; 2 uses
  %i.acc = icmp eq i64 %index.next1523, %n.vec1516
  br i1 %i.acc, label %middle.block1524, label %vector.body1517, !llvm.loop !979

middle.block1524:                                 ; preds = %vector.body1517
  %bin.rdx1525 = mul <4 x i32> %i.acb, %i.aca
  %i.acd = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1525) ; 2 uses
  %cmp.n1526 = icmp eq i64 %21, %n.vec1516
  br i1 %cmp.n1526, label %.loopexit1584, label %scalar.ph1513.preheader

scalar.ph1513.preheader:                          ; preds = %.preheader.i.i345, %middle.block1524
  %indvars.iv40.i.i346.ph = phi i64 [ %indvars.iv38.i.i337, %.preheader.i.i345 ], [ %i.abw, %middle.block1524 ]
  %.030.i.i347.ph = phi i32 [ 1, %.preheader.i.i345 ], [ %i.acd, %middle.block1524 ]
  br label %scalar.ph1513

scalar.ph1513:                                    ; preds = %scalar.ph1513.preheader, %scalar.ph1513
  %indvars.iv40.i.i346 = phi i64 [ %indvars.iv.next41.i.i348, %scalar.ph1513 ], [ %indvars.iv40.i.i346.ph, %scalar.ph1513.preheader ] ; 2 uses
  %.030.i.i347 = phi i32 [ %i.acg, %scalar.ph1513 ], [ %.030.i.i347.ph, %scalar.ph1513.preheader ]
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv40.i.i346
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !83
  %i.acg = mul nsw i32 %i.acf, %.030.i.i347       ; 2 uses
  %indvars.iv.next41.i.i348 = add nuw nsw i64 %indvars.iv40.i.i346, 1 ; 2 uses
  %exitcond.not.i.i349 = icmp eq i64 %indvars.iv.next41.i.i348, %i.abf
  br i1 %exitcond.not.i.i349, label %.loopexit1584, label %scalar.ph1513, !llvm.loop !980

.loopexit1584:                                    ; preds = %scalar.ph1513, %middle.block1524
  %.lcssa1159 = phi i32 [ %i.acd, %middle.block1524 ], [ %i.acg, %scalar.ph1513 ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %indvars.iv43.i.i336
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !83
  %i.acj = mul nsw i32 %i.aci, %.lcssa1159
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %indvars.iv43.i.i336
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !83
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit1584
  %.pn.i.i340 = phi i32 [ %i.acj, %.loopexit1584 ], [ %i.acl, %bb.bn ]
  %.1.i.i341 = add nsw i32 %.pn.i.i340, %.02132.i.i338 ; 2 uses
  %indvars.iv.next39.i.i342 = add nuw nsw i64 %indvars.iv38.i.i337, 1
  %exitcond47.not.i.i343 = icmp eq i64 %indvars.iv.next44.i.i339, %i.abf
  br i1 %exitcond47.not.i.i343, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350.thread, label %bb.bm, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350: ; preds = %bb.bk, %.preheader27.i.i334
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aau, i64 112
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !57 ; 3 uses
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !82
  %i.acp = fcmp ogt double %i.aco, f0x3EB0C6F7A0B5ED8D
  br i1 %i.acp, label %bb.bt, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350.thread: ; preds = %bb.bo
  %i.acq = sext i32 %.1.i.i341 to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aau, i64 112
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !57 ; 4 uses
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %i.acq
  %i.acu = load double, ptr %i.act, align 8, !tbaa !82
  %i.acv = fcmp ogt double %i.acu, f0x3EB0C6F7A0B5ED8D
  br i1 %i.acv, label %bb.bt, label %.lr.ph.i.i352

.lr.ph.i.i352:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350.thread
  %i.acw = load ptr, ptr %i.aau, align 8, !tbaa !57
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aau, i64 48
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !57
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aau, i64 136
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !60 ; 3 uses
  br label %bb.bp

.preheader27.i.i355:                              ; preds = %bb.bp
  %i.adb = icmp sgt i32 %i.adp, 0
  br i1 %i.adb, label %.lr.ph33.i.i356, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371

.lr.ph33.i.i356:                                  ; preds = %.preheader27.i.i355
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aau, i64 80
  %i.add = zext nneg i32 %i.adp to i64            ; 4 uses
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i352
  %indvars.iv.i.i353 = phi i64 [ 0, %.lr.ph.i.i352 ], [ %indvars.iv.next.i.i354, %bb.bp ] ; 5 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i.i353
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !82
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv.i.i353
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !82
  %i.adi = fsub double %i.adf, %i.adh
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %indvars.iv.i.i353
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !82
  %i.adl = fdiv double %i.adi, %i.adk
  %i.adm = fadd double %i.adl, f0x3EB0C6F7A0B5ED8D
  %i.adn = fptosi double %i.adm to i32
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %indvars.iv.i.i353
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !83
  %indvars.iv.next.i.i354 = add nuw nsw i64 %indvars.iv.i.i353, 1 ; 2 uses
  %i.adp = load i32, ptr %i.aav, align 8, !tbaa !279 ; 3 uses
  %i.adq = sext i32 %i.adp to i64
  %i.adr = icmp slt i64 %indvars.iv.next.i.i354, %i.adq
  br i1 %i.adr, label %bb.bp, label %.preheader27.i.i355, !llvm.loop !21

bb.bq:                                            ; preds = %bb.bs, %.lr.ph33.i.i356
  %indvars.iv43.i.i357 = phi i64 [ 0, %.lr.ph33.i.i356 ], [ %indvars.iv.next44.i.i360, %bb.bs ] ; 4 uses
  %indvars.iv38.i.i358 = phi i64 [ 1, %.lr.ph33.i.i356 ], [ %indvars.iv.next39.i.i363, %bb.bs ] ; 4 uses
  %.02132.i.i359 = phi i32 [ 0, %.lr.ph33.i.i356 ], [ %.1.i.i362, %bb.bs ]
  %22 = xor i64 %indvars.iv43.i.i357, -1
  %23 = add nsw i64 %22, %i.add                   ; 3 uses
  %indvars.iv.next44.i.i360 = add nuw nsw i64 %indvars.iv43.i.i357, 1 ; 3 uses
  %i.ads = icmp samesign ult i64 %indvars.iv.next44.i.i360, %i.add
  br i1 %i.ads, label %.preheader.i.i366, label %bb.br

.preheader.i.i366:                                ; preds = %bb.bq
  %i.adt = load ptr, ptr %i.adc, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1498 = icmp ult i64 %23, 8
  br i1 %min.iters.check1498, label %scalar.ph1497.preheader, label %vector.ph1499

vector.ph1499:                                    ; preds = %.preheader.i.i366
  %n.vec1500 = and i64 %23, -8                    ; 3 uses
  %i.adu = add i64 %indvars.iv38.i.i358, %n.vec1500
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %indvars.iv38.i.i358
  br label %vector.body1501

vector.body1501:                                  ; preds = %vector.body1501, %vector.ph1499
  %index1502 = phi i64 [ 0, %vector.ph1499 ], [ %index.next1507, %vector.body1501 ] ; 2 uses
  %vec.phi1503 = phi <4 x i32> [ splat (i32 1), %vector.ph1499 ], [ %i.ady, %vector.body1501 ]
  %vec.phi1504 = phi <4 x i32> [ splat (i32 1), %vector.ph1499 ], [ %i.adz, %vector.body1501 ]
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %index1502 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %wide.load1505 = load <4 x i32>, ptr %i.adw, align 4, !tbaa !83
  %wide.load1506 = load <4 x i32>, ptr %i.adx, align 4, !tbaa !83
  %i.ady = mul <4 x i32> %wide.load1505, %vec.phi1503 ; 2 uses
  %i.adz = mul <4 x i32> %wide.load1506, %vec.phi1504 ; 2 uses
  %index.next1507 = add nuw i64 %index1502, 8     ; 2 uses
  %i.aea = icmp eq i64 %index.next1507, %n.vec1500
  br i1 %i.aea, label %middle.block1508, label %vector.body1501, !llvm.loop !981

middle.block1508:                                 ; preds = %vector.body1501
  %bin.rdx1509 = mul <4 x i32> %i.adz, %i.ady
  %i.aeb = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1509) ; 2 uses
  %cmp.n1510 = icmp eq i64 %23, %n.vec1500
  br i1 %cmp.n1510, label %.loopexit1583, label %scalar.ph1497.preheader

scalar.ph1497.preheader:                          ; preds = %.preheader.i.i366, %middle.block1508
  %indvars.iv40.i.i367.ph = phi i64 [ %indvars.iv38.i.i358, %.preheader.i.i366 ], [ %i.adu, %middle.block1508 ]
  %.030.i.i368.ph = phi i32 [ 1, %.preheader.i.i366 ], [ %i.aeb, %middle.block1508 ]
  br label %scalar.ph1497

scalar.ph1497:                                    ; preds = %scalar.ph1497.preheader, %scalar.ph1497
  %indvars.iv40.i.i367 = phi i64 [ %indvars.iv.next41.i.i369, %scalar.ph1497 ], [ %indvars.iv40.i.i367.ph, %scalar.ph1497.preheader ] ; 2 uses
  %.030.i.i368 = phi i32 [ %i.aee, %scalar.ph1497 ], [ %.030.i.i368.ph, %scalar.ph1497.preheader ]
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %indvars.iv40.i.i367
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !83
  %i.aee = mul nsw i32 %i.aed, %.030.i.i368       ; 2 uses
  %indvars.iv.next41.i.i369 = add nuw nsw i64 %indvars.iv40.i.i367, 1 ; 2 uses
  %exitcond.not.i.i370 = icmp eq i64 %indvars.iv.next41.i.i369, %i.add
  br i1 %exitcond.not.i.i370, label %.loopexit1583, label %scalar.ph1497, !llvm.loop !982

.loopexit1583:                                    ; preds = %scalar.ph1497, %middle.block1508
  %.lcssa1161 = phi i32 [ %i.aeb, %middle.block1508 ], [ %i.aee, %scalar.ph1497 ]
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %indvars.iv43.i.i357
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !83
  %i.aeh = mul nsw i32 %i.aeg, %.lcssa1161
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %indvars.iv43.i.i357
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !83
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit1583
  %.pn.i.i361 = phi i32 [ %i.aeh, %.loopexit1583 ], [ %i.aej, %bb.br ]
  %.1.i.i362 = add nsw i32 %.pn.i.i361, %.02132.i.i359 ; 2 uses
  %indvars.iv.next39.i.i363 = add nuw nsw i64 %indvars.iv38.i.i358, 1
  %exitcond47.not.i.i364 = icmp eq i64 %indvars.iv.next44.i.i360, %i.add
  br i1 %exitcond47.not.i.i364, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i365, label %bb.bq, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i365: ; preds = %bb.bs
  %i.aek = sext i32 %.1.i.i362 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350, %.preheader27.i.i355, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i365
  %i.ael = phi ptr [ %i.acs, %.preheader27.i.i355 ], [ %i.acs, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i365 ], [ %i.acn, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350 ] ; 2 uses
  %.021.lcssa.i.i351 = phi i64 [ 0, %.preheader27.i.i355 ], [ %i.aek, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i365 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350 ]
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %.021.lcssa.i.i351
  %i.aen = load double, ptr %i.aem, align 8, !tbaa !82
  %i.aeo = fcmp olt double %i.aen, f0xBEB0C6F7A0B5ED8D
  br i1 %i.aeo, label %bb.bt, label %bb.cq

bb.bt:                                            ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350.thread, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350
  %i.aep = phi ptr [ %i.acs, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350.thread ], [ %i.ael, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371 ], [ %i.acn, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit350 ]
  %i.aeq = load i32, ptr %i.tc, align 8, !tbaa !277
  %i.aer = icmp sgt i32 %i.aeq, 0
  br i1 %i.aer, label %.lr.ph.i.i374, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread

.lr.ph.i.i374:                                    ; preds = %bb.bt
  %i.aes = load ptr, ptr %i.tb, align 8, !tbaa !57
  %i.aet = load ptr, ptr %i.td, align 8, !tbaa !57 ; 2 uses
  %i.aeu = load ptr, ptr %i.te, align 8, !tbaa !60 ; 5 uses
  br label %bb.bu

.preheader27.i.i377:                              ; preds = %bb.bu
  %i.aev = icmp sgt i32 %i.afi, 0
  br i1 %i.aev, label %.lr.ph33.i.i378, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread

.lr.ph33.i.i378:                                  ; preds = %.preheader27.i.i377
  %i.aew = zext nneg i32 %i.afi to i64            ; 4 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i.i374
  %indvars.iv.i.i375 = phi i64 [ 0, %.lr.ph.i.i374 ], [ %indvars.iv.next.i.i376, %bb.bu ] ; 5 uses
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i.i375
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !82
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %indvars.iv.i.i375
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !82
  %i.afb = fsub double %i.aey, %i.afa
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %indvars.iv.i.i375
  %i.afd = load double, ptr %i.afc, align 8, !tbaa !82
  %i.afe = fdiv double %i.afb, %i.afd
  %i.aff = fadd double %i.afe, f0x3EB0C6F7A0B5ED8D
  %i.afg = fptosi double %i.aff to i32
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.i.i375
  store i32 %i.afg, ptr %i.afh, align 4, !tbaa !83
  %indvars.iv.next.i.i376 = add nuw nsw i64 %indvars.iv.i.i375, 1 ; 2 uses
  %i.afi = load i32, ptr %i.tc, align 8, !tbaa !277 ; 3 uses
  %i.afj = sext i32 %i.afi to i64
  %i.afk = icmp slt i64 %indvars.iv.next.i.i376, %i.afj
  br i1 %i.afk, label %bb.bu, label %.preheader27.i.i377, !llvm.loop !23

bb.bv:                                            ; preds = %bb.bx, %.lr.ph33.i.i378
  %indvars.iv43.i.i379 = phi i64 [ 0, %.lr.ph33.i.i378 ], [ %indvars.iv.next44.i.i382, %bb.bx ] ; 4 uses
  %indvars.iv38.i.i380 = phi i64 [ 1, %.lr.ph33.i.i378 ], [ %indvars.iv.next39.i.i385, %bb.bx ] ; 4 uses
  %.02132.i.i381 = phi i32 [ 0, %.lr.ph33.i.i378 ], [ %.1.i.i384, %bb.bx ]
  %24 = xor i64 %indvars.iv43.i.i379, -1
  %25 = add nsw i64 %24, %i.aew                   ; 3 uses
  %indvars.iv.next44.i.i382 = add nuw nsw i64 %indvars.iv43.i.i379, 1 ; 3 uses
  %i.afl = icmp samesign ult i64 %indvars.iv.next44.i.i382, %i.aew
  br i1 %i.afl, label %.preheader.i.i388, label %bb.bw

.preheader.i.i388:                                ; preds = %bb.bv
  %i.afm = load ptr, ptr %i.tg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1482 = icmp ult i64 %25, 8
  br i1 %min.iters.check1482, label %scalar.ph1481.preheader, label %vector.ph1483

vector.ph1483:                                    ; preds = %.preheader.i.i388
  %n.vec1484 = and i64 %25, -8                    ; 3 uses
  %i.afn = add i64 %indvars.iv38.i.i380, %n.vec1484
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %indvars.iv38.i.i380
  br label %vector.body1485

vector.body1485:                                  ; preds = %vector.body1485, %vector.ph1483
  %index1486 = phi i64 [ 0, %vector.ph1483 ], [ %index.next1491, %vector.body1485 ] ; 2 uses
  %vec.phi1487 = phi <4 x i32> [ splat (i32 1), %vector.ph1483 ], [ %i.afr, %vector.body1485 ]
  %vec.phi1488 = phi <4 x i32> [ splat (i32 1), %vector.ph1483 ], [ %i.afs, %vector.body1485 ]
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %index1486 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %wide.load1489 = load <4 x i32>, ptr %i.afp, align 4, !tbaa !83
  %wide.load1490 = load <4 x i32>, ptr %i.afq, align 4, !tbaa !83
  %i.afr = mul <4 x i32> %wide.load1489, %vec.phi1487 ; 2 uses
  %i.afs = mul <4 x i32> %wide.load1490, %vec.phi1488 ; 2 uses
  %index.next1491 = add nuw i64 %index1486, 8     ; 2 uses
  %i.aft = icmp eq i64 %index.next1491, %n.vec1484
  br i1 %i.aft, label %middle.block1492, label %vector.body1485, !llvm.loop !983

middle.block1492:                                 ; preds = %vector.body1485
  %bin.rdx1493 = mul <4 x i32> %i.afs, %i.afr
  %i.afu = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1493) ; 2 uses
  %cmp.n1494 = icmp eq i64 %25, %n.vec1484
  br i1 %cmp.n1494, label %.loopexit1582, label %scalar.ph1481.preheader

scalar.ph1481.preheader:                          ; preds = %.preheader.i.i388, %middle.block1492
  %indvars.iv40.i.i389.ph = phi i64 [ %indvars.iv38.i.i380, %.preheader.i.i388 ], [ %i.afn, %middle.block1492 ]
  %.030.i.i390.ph = phi i32 [ 1, %.preheader.i.i388 ], [ %i.afu, %middle.block1492 ]
  br label %scalar.ph1481

scalar.ph1481:                                    ; preds = %scalar.ph1481.preheader, %scalar.ph1481
  %indvars.iv40.i.i389 = phi i64 [ %indvars.iv.next41.i.i391, %scalar.ph1481 ], [ %indvars.iv40.i.i389.ph, %scalar.ph1481.preheader ] ; 2 uses
  %.030.i.i390 = phi i32 [ %i.afx, %scalar.ph1481 ], [ %.030.i.i390.ph, %scalar.ph1481.preheader ]
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %indvars.iv40.i.i389
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !83
  %i.afx = mul nsw i32 %i.afw, %.030.i.i390       ; 2 uses
  %indvars.iv.next41.i.i391 = add nuw nsw i64 %indvars.iv40.i.i389, 1 ; 2 uses
  %exitcond.not.i.i392 = icmp eq i64 %indvars.iv.next41.i.i391, %i.aew
  br i1 %exitcond.not.i.i392, label %.loopexit1582, label %scalar.ph1481, !llvm.loop !984

.loopexit1582:                                    ; preds = %scalar.ph1481, %middle.block1492
  %.lcssa1163 = phi i32 [ %i.afu, %middle.block1492 ], [ %i.afx, %scalar.ph1481 ]
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv43.i.i379
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !83
  %i.aga = mul nsw i32 %i.afz, %.lcssa1163
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv43.i.i379
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !83
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit1582
  %.pn.i.i383 = phi i32 [ %i.aga, %.loopexit1582 ], [ %i.agc, %bb.bw ]
  %.1.i.i384 = add nsw i32 %.pn.i.i383, %.02132.i.i381 ; 2 uses
  %indvars.iv.next39.i.i385 = add nuw nsw i64 %indvars.iv38.i.i380, 1
  %exitcond47.not.i.i386 = icmp eq i64 %indvars.iv.next44.i.i382, %i.aew
  br i1 %exitcond47.not.i.i386, label %.lr.ph.i540, label %bb.bv, !llvm.loop !24

.lr.ph.i540:                                      ; preds = %bb.bx
  %i.agd = sext i32 %.1.i.i384 to i64
  %i.age = getelementptr inbounds nuw [24 x i8], ptr %i.aaj, i64 %i.agd ; 2 uses
  br label %bb.by

.preheader.i546:                                  ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22.i544
  %i.agf = icmp sgt i32 %i.ahs, 0
  br i1 %i.agf, label %.lr.ph27.i547, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread

.lr.ph27.i547:                                    ; preds = %.preheader.i546
  %i.agg = zext nneg i32 %i.ahs to i64            ; 2 uses
  br label %bb.cf

bb.by:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22.i544, %.lr.ph.i540
  %indvars.iv.i541 = phi i64 [ 0, %.lr.ph.i540 ], [ %indvars.iv.next.i545, %_ZN11UIestimator8n_matrix5roundEd.exit22.i544 ] ; 5 uses
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i541
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !82
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %indvars.iv.i541
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !82 ; 2 uses
  %i.agl = fdiv double %i.agi, %i.agk
  %i.agm = fadd double %i.agl, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.agn = fcmp ogt double %i.agm, 0.000000e+00
  br i1 %i.agn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ago = fadd double %i.agm, 5.000000e-01
  %i.agp = call double @llvm.floor.f64(double %i.ago)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit.i542

bb.ca:                                            ; preds = %bb.by
  %i.agq = fadd double %i.agm, -5.000000e-01
  %i.agr = call double @llvm.ceil.f64(double %i.agq)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit.i542

_ZN11UIestimator8n_matrix5roundEd.exit.i542:      ; preds = %bb.ca, %bb.bz
  %i.ags = phi double [ %i.agp, %bb.bz ], [ %i.agr, %bb.ca ]
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i541
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !82
  %i.agv = fdiv double %i.agu, %i.agk
  %i.agw = fadd double %i.agv, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.agx = fcmp ogt double %i.agw, 0.000000e+00
  br i1 %i.agx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit.i542
  %i.agy = fadd double %i.agw, 5.000000e-01
  %i.agz = call double @llvm.floor.f64(double %i.agy)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21.i543

bb.cc:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit.i542
  %i.aha = fadd double %i.agw, -5.000000e-01
  %i.ahb = call double @llvm.ceil.f64(double %i.aha)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21.i543

_ZN11UIestimator8n_matrix5roundEd.exit21.i543:    ; preds = %bb.cc, %bb.cb
  %i.ahc = phi double [ %i.agz, %bb.cb ], [ %i.ahb, %bb.cc ]
  %i.ahd = fsub double %i.ags, %i.ahc
  %i.ahe = load i32, ptr %i.th, align 4, !tbaa !282
  %i.ahf = add nsw i32 %i.ahe, -1
  %i.ahg = sdiv i32 %i.ahf, 2
  %i.ahh = sitofp i32 %i.ahg to double
  %i.ahi = fadd double %i.ahd, %i.ahh
  %i.ahj = fadd double %i.ahi, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.ahk = fcmp ogt double %i.ahj, 0.000000e+00
  br i1 %i.ahk, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21.i543
  %i.ahl = fadd double %i.ahj, 5.000000e-01
  %i.ahm = call double @llvm.floor.f64(double %i.ahl)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22.i544

bb.ce:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21.i543
  %i.ahn = fadd double %i.ahj, -5.000000e-01
  %i.aho = call double @llvm.ceil.f64(double %i.ahn)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22.i544

_ZN11UIestimator8n_matrix5roundEd.exit22.i544:    ; preds = %bb.ce, %bb.cd
  %i.ahp = phi double [ %i.ahm, %bb.cd ], [ %i.aho, %bb.ce ]
  %i.ahq = fptosi double %i.ahp to i32
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.i541
  store i32 %i.ahq, ptr %i.ahr, align 4, !tbaa !83
  %indvars.iv.next.i545 = add nuw nsw i64 %indvars.iv.i541, 1 ; 2 uses
  %i.ahs = load i32, ptr %i.tc, align 8, !tbaa !277 ; 4 uses
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = icmp slt i64 %indvars.iv.next.i545, %i.aht
  br i1 %i.ahu, label %bb.by, label %.preheader.i546, !llvm.loop !25

bb.cf:                                            ; preds = %bb.ch, %.lr.ph27.i547
  %indvars.iv31.i549 = phi i64 [ 0, %.lr.ph27.i547 ], [ %indvars.iv.next32.i551, %bb.ch ] ; 3 uses
  %.026.i550 = phi i32 [ 0, %.lr.ph27.i547 ], [ %.1.i553, %bb.ch ]
  %indvars.iv.next32.i551 = add nuw nsw i64 %indvars.iv31.i549, 1 ; 3 uses
  %i.ahv = icmp samesign ult i64 %indvars.iv.next32.i551, %i.agg
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv31.i549
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !83 ; 2 uses
  br i1 %i.ahv, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ahy = load i32, ptr %i.th, align 4, !tbaa !282
  %i.ahz = sitofp i32 %i.ahy to double
  %i.aia = trunc nuw nsw i64 %indvars.iv31.i549 to i32
  %i.aib = xor i32 %i.aia, -1
  %i.aic = add nsw i32 %i.ahs, %i.aib
  %i.aid = sitofp i32 %i.aic to double
  %i.aie = call noundef double @pow(double noundef %i.ahz, double noundef %i.aid) #24
  %i.aif = fadd double %i.aie, f0x3EB0C6F7A0B5ED8D
  %i.aig = fptosi double %i.aif to i32
  %i.aih = mul nsw i32 %i.ahx, %i.aig
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i552 = phi i32 [ %i.aih, %bb.cg ], [ %i.ahx, %bb.cf ]
  %.1.i553 = add nsw i32 %.pn.i552, %.026.i550    ; 2 uses
  %exitcond.not.i554 = icmp eq i64 %indvars.iv.next32.i551, %i.agg
  br i1 %exitcond.not.i554, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread.loopexit, label %bb.cf, !llvm.loop !26

_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread.loopexit: ; preds = %bb.ch
  %i.aii = sext i32 %.1.i553 to i64
  br label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread

_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread: ; preds = %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread.loopexit, %bb.bt, %.preheader27.i.i377, %.preheader.i546
  %i.aij = phi ptr [ %i.age, %.preheader.i546 ], [ %i.age, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread.loopexit ], [ %i.aaj, %bb.bt ], [ %i.aaj, %.preheader27.i.i377 ]
  %.0.lcssa.i539 = phi i64 [ 0, %.preheader.i546 ], [ %i.aii, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread.loopexit ], [ 0, %bb.bt ], [ 0, %.preheader27.i.i377 ]
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !60
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %.0.lcssa.i539
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !83
  %i.ain = sitofp i32 %i.aim to double
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv834
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !82
  %i.aiq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %indvars.iv834
  %i.ais = load double, ptr %i.air, align 8, !tbaa !82
  %i.ait = call double @llvm.fmuladd.f64(double %i.ais, double 5.000000e-01, double %i.aip)
  %i.aiu = load ptr, ptr %i.at, align 8, !tbaa !256
  %i.aiv = getelementptr inbounds nuw [160 x i8], ptr %i.aiu, i64 %indvars.iv834 ; 6 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 72 ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 8, !tbaa !279
  %i.aiy = icmp sgt i32 %i.aix, 0
  br i1 %i.aiy, label %.lr.ph.i.i396, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415

.lr.ph.i.i396:                                    ; preds = %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread
  %i.aiz = load ptr, ptr %i.aiv, align 8, !tbaa !57
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !57
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiv, i64 136
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !60 ; 3 uses
  br label %bb.ci

.preheader27.i.i399:                              ; preds = %bb.ci
  %i.aje = icmp sgt i32 %i.ajs, 0
  br i1 %i.aje, label %.lr.ph33.i.i400, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415

.lr.ph33.i.i400:                                  ; preds = %.preheader27.i.i399
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiv, i64 80
  %i.ajg = zext nneg i32 %i.ajs to i64            ; 4 uses
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i.i396
  %indvars.iv.i.i397 = phi i64 [ 0, %.lr.ph.i.i396 ], [ %indvars.iv.next.i.i398, %bb.ci ] ; 5 uses
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i.i397
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !82
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv.i.i397
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !82
  %i.ajl = fsub double %i.aji, %i.ajk
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv.i.i397
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !82
  %i.ajo = fdiv double %i.ajl, %i.ajn
  %i.ajp = fadd double %i.ajo, f0x3EB0C6F7A0B5ED8D
  %i.ajq = fptosi double %i.ajp to i32
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %indvars.iv.i.i397
  store i32 %i.ajq, ptr %i.ajr, align 4, !tbaa !83
  %indvars.iv.next.i.i398 = add nuw nsw i64 %indvars.iv.i.i397, 1 ; 2 uses
  %i.ajs = load i32, ptr %i.aiw, align 8, !tbaa !279 ; 3 uses
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = icmp slt i64 %indvars.iv.next.i.i398, %i.ajt
  br i1 %i.aju, label %bb.ci, label %.preheader27.i.i399, !llvm.loop !21

bb.cj:                                            ; preds = %bb.cl, %.lr.ph33.i.i400
  %indvars.iv43.i.i401 = phi i64 [ 0, %.lr.ph33.i.i400 ], [ %indvars.iv.next44.i.i404, %bb.cl ] ; 4 uses
  %indvars.iv38.i.i402 = phi i64 [ 1, %.lr.ph33.i.i400 ], [ %indvars.iv.next39.i.i407, %bb.cl ] ; 4 uses
  %.02132.i.i403 = phi i32 [ 0, %.lr.ph33.i.i400 ], [ %.1.i.i406, %bb.cl ]
  %26 = xor i64 %indvars.iv43.i.i401, -1
  %27 = add nsw i64 %26, %i.ajg                   ; 3 uses
  %indvars.iv.next44.i.i404 = add nuw nsw i64 %indvars.iv43.i.i401, 1 ; 3 uses
  %i.ajv = icmp samesign ult i64 %indvars.iv.next44.i.i404, %i.ajg
  br i1 %i.ajv, label %.preheader.i.i410, label %bb.ck

.preheader.i.i410:                                ; preds = %bb.cj
  %i.ajw = load ptr, ptr %i.ajf, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1466 = icmp ult i64 %27, 8
  br i1 %min.iters.check1466, label %scalar.ph1465.preheader, label %vector.ph1467

vector.ph1467:                                    ; preds = %.preheader.i.i410
  %n.vec1468 = and i64 %27, -8                    ; 3 uses
  %i.ajx = add i64 %indvars.iv38.i.i402, %n.vec1468
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %indvars.iv38.i.i402
  br label %vector.body1469

vector.body1469:                                  ; preds = %vector.body1469, %vector.ph1467
  %index1470 = phi i64 [ 0, %vector.ph1467 ], [ %index.next1475, %vector.body1469 ] ; 2 uses
  %vec.phi1471 = phi <4 x i32> [ splat (i32 1), %vector.ph1467 ], [ %i.akb, %vector.body1469 ]
  %vec.phi1472 = phi <4 x i32> [ splat (i32 1), %vector.ph1467 ], [ %i.akc, %vector.body1469 ]
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %index1470 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %wide.load1473 = load <4 x i32>, ptr %i.ajz, align 4, !tbaa !83
  %wide.load1474 = load <4 x i32>, ptr %i.aka, align 4, !tbaa !83
  %i.akb = mul <4 x i32> %wide.load1473, %vec.phi1471 ; 2 uses
  %i.akc = mul <4 x i32> %wide.load1474, %vec.phi1472 ; 2 uses
  %index.next1475 = add nuw i64 %index1470, 8     ; 2 uses
  %i.akd = icmp eq i64 %index.next1475, %n.vec1468
  br i1 %i.akd, label %middle.block1476, label %vector.body1469, !llvm.loop !985

middle.block1476:                                 ; preds = %vector.body1469
  %bin.rdx1477 = mul <4 x i32> %i.akc, %i.akb
  %i.ake = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1477) ; 2 uses
  %cmp.n1478 = icmp eq i64 %27, %n.vec1468
  br i1 %cmp.n1478, label %.loopexit1581, label %scalar.ph1465.preheader

scalar.ph1465.preheader:                          ; preds = %.preheader.i.i410, %middle.block1476
  %indvars.iv40.i.i411.ph = phi i64 [ %indvars.iv38.i.i402, %.preheader.i.i410 ], [ %i.ajx, %middle.block1476 ]
  %.030.i.i412.ph = phi i32 [ 1, %.preheader.i.i410 ], [ %i.ake, %middle.block1476 ]
  br label %scalar.ph1465

scalar.ph1465:                                    ; preds = %scalar.ph1465.preheader, %scalar.ph1465
  %indvars.iv40.i.i411 = phi i64 [ %indvars.iv.next41.i.i413, %scalar.ph1465 ], [ %indvars.iv40.i.i411.ph, %scalar.ph1465.preheader ] ; 2 uses
  %.030.i.i412 = phi i32 [ %i.akh, %scalar.ph1465 ], [ %.030.i.i412.ph, %scalar.ph1465.preheader ]
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %indvars.iv40.i.i411
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !83
  %i.akh = mul nsw i32 %i.akg, %.030.i.i412       ; 2 uses
  %indvars.iv.next41.i.i413 = add nuw nsw i64 %indvars.iv40.i.i411, 1 ; 2 uses
  %exitcond.not.i.i414 = icmp eq i64 %indvars.iv.next41.i.i413, %i.ajg
  br i1 %exitcond.not.i.i414, label %.loopexit1581, label %scalar.ph1465, !llvm.loop !986

.loopexit1581:                                    ; preds = %scalar.ph1465, %middle.block1476
  %.lcssa1166 = phi i32 [ %i.ake, %middle.block1476 ], [ %i.akh, %scalar.ph1465 ]
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %indvars.iv43.i.i401
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !83
  %i.akk = mul nsw i32 %i.akj, %.lcssa1166
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %indvars.iv43.i.i401
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !83
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.loopexit1581
  %.pn.i.i405 = phi i32 [ %i.akk, %.loopexit1581 ], [ %i.akm, %bb.ck ]
  %.1.i.i406 = add nsw i32 %.pn.i.i405, %.02132.i.i403 ; 2 uses
  %indvars.iv.next39.i.i407 = add nuw nsw i64 %indvars.iv38.i.i402, 1
  %exitcond47.not.i.i408 = icmp eq i64 %indvars.iv.next44.i.i404, %i.ajg
  br i1 %exitcond47.not.i.i408, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i409, label %bb.cj, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i409: ; preds = %bb.cl
  %i.akn = sext i32 %.1.i.i406 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415: ; preds = %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread, %.preheader27.i.i399, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i409
  %.021.lcssa.i.i395 = phi i64 [ 0, %.preheader27.i.i399 ], [ 0, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i372.thread ], [ %i.akn, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i409 ]
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aiv, i64 112
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !57
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.akp, i64 %.021.lcssa.i.i395
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !82
  %i.aks = fsub double %i.ait, %i.akr
  %i.akt = fmul double %i.aks, %i.ain
  %i.aku = load i32, ptr %i.aav, align 8, !tbaa !279
  %i.akv = icmp sgt i32 %i.aku, 0
  br i1 %i.akv, label %.lr.ph.i.i417, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit436

.lr.ph.i.i417:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415
  %i.akw = load ptr, ptr %i.aau, align 8, !tbaa !57
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aau, i64 48
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !57
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aau, i64 136
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !60 ; 3 uses
  br label %bb.cm

.preheader27.i.i420:                              ; preds = %bb.cm
  %i.alb = icmp sgt i32 %i.alp, 0
  br i1 %i.alb, label %.lr.ph33.i.i421, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit436

.lr.ph33.i.i421:                                  ; preds = %.preheader27.i.i420
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aau, i64 80
  %i.ald = zext nneg i32 %i.alp to i64            ; 4 uses
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cm, %.lr.ph.i.i417
  %indvars.iv.i.i418 = phi i64 [ 0, %.lr.ph.i.i417 ], [ %indvars.iv.next.i.i419, %bb.cm ] ; 5 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i.i418
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !82
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %indvars.iv.i.i418
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !82
  %i.ali = fsub double %i.alf, %i.alh
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.aky, i64 %indvars.iv.i.i418
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !82
  %i.all = fdiv double %i.ali, %i.alk
  %i.alm = fadd double %i.all, f0x3EB0C6F7A0B5ED8D
  %i.aln = fptosi double %i.alm to i32
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.ala, i64 %indvars.iv.i.i418
  store i32 %i.aln, ptr %i.alo, align 4, !tbaa !83
  %indvars.iv.next.i.i419 = add nuw nsw i64 %indvars.iv.i.i418, 1 ; 2 uses
  %i.alp = load i32, ptr %i.aav, align 8, !tbaa !279 ; 3 uses
  %i.alq = sext i32 %i.alp to i64
  %i.alr = icmp slt i64 %indvars.iv.next.i.i419, %i.alq
  br i1 %i.alr, label %bb.cm, label %.preheader27.i.i420, !llvm.loop !21

bb.cn:                                            ; preds = %bb.cp, %.lr.ph33.i.i421
  %indvars.iv43.i.i422 = phi i64 [ 0, %.lr.ph33.i.i421 ], [ %indvars.iv.next44.i.i425, %bb.cp ] ; 4 uses
  %indvars.iv38.i.i423 = phi i64 [ 1, %.lr.ph33.i.i421 ], [ %indvars.iv.next39.i.i428, %bb.cp ] ; 4 uses
  %.02132.i.i424 = phi i32 [ 0, %.lr.ph33.i.i421 ], [ %.1.i.i427, %bb.cp ]
  %28 = xor i64 %indvars.iv43.i.i422, -1
  %29 = add nsw i64 %28, %i.ald                   ; 3 uses
  %indvars.iv.next44.i.i425 = add nuw nsw i64 %indvars.iv43.i.i422, 1 ; 3 uses
  %i.als = icmp samesign ult i64 %indvars.iv.next44.i.i425, %i.ald
  br i1 %i.als, label %.preheader.i.i431, label %bb.co

.preheader.i.i431:                                ; preds = %bb.cn
  %i.alt = load ptr, ptr %i.alc, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1450 = icmp ult i64 %29, 8
  br i1 %min.iters.check1450, label %scalar.ph1449.preheader, label %vector.ph1451

vector.ph1451:                                    ; preds = %.preheader.i.i431
  %n.vec1452 = and i64 %29, -8                    ; 3 uses
  %i.alu = add i64 %indvars.iv38.i.i423, %n.vec1452
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv38.i.i423
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %vector.ph1451
  %index1454 = phi i64 [ 0, %vector.ph1451 ], [ %index.next1459, %vector.body1453 ] ; 2 uses
  %vec.phi1455 = phi <4 x i32> [ splat (i32 1), %vector.ph1451 ], [ %i.aly, %vector.body1453 ]
  %vec.phi1456 = phi <4 x i32> [ splat (i32 1), %vector.ph1451 ], [ %i.alz, %vector.body1453 ]
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %index1454 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  %wide.load1457 = load <4 x i32>, ptr %i.alw, align 4, !tbaa !83
  %wide.load1458 = load <4 x i32>, ptr %i.alx, align 4, !tbaa !83
  %i.aly = mul <4 x i32> %wide.load1457, %vec.phi1455 ; 2 uses
  %i.alz = mul <4 x i32> %wide.load1458, %vec.phi1456 ; 2 uses
  %index.next1459 = add nuw i64 %index1454, 8     ; 2 uses
  %i.ama = icmp eq i64 %index.next1459, %n.vec1452
  br i1 %i.ama, label %middle.block1460, label %vector.body1453, !llvm.loop !987

middle.block1460:                                 ; preds = %vector.body1453
  %bin.rdx1461 = mul <4 x i32> %i.alz, %i.aly
  %i.amb = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1461) ; 2 uses
  %cmp.n1462 = icmp eq i64 %29, %n.vec1452
  br i1 %cmp.n1462, label %.loopexit1580, label %scalar.ph1449.preheader

scalar.ph1449.preheader:                          ; preds = %.preheader.i.i431, %middle.block1460
  %indvars.iv40.i.i432.ph = phi i64 [ %indvars.iv38.i.i423, %.preheader.i.i431 ], [ %i.alu, %middle.block1460 ]
  %.030.i.i433.ph = phi i32 [ 1, %.preheader.i.i431 ], [ %i.amb, %middle.block1460 ]
  br label %scalar.ph1449

scalar.ph1449:                                    ; preds = %scalar.ph1449.preheader, %scalar.ph1449
  %indvars.iv40.i.i432 = phi i64 [ %indvars.iv.next41.i.i434, %scalar.ph1449 ], [ %indvars.iv40.i.i432.ph, %scalar.ph1449.preheader ] ; 2 uses
  %.030.i.i433 = phi i32 [ %i.ame, %scalar.ph1449 ], [ %.030.i.i433.ph, %scalar.ph1449.preheader ]
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv40.i.i432
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !83
  %i.ame = mul nsw i32 %i.amd, %.030.i.i433       ; 2 uses
  %indvars.iv.next41.i.i434 = add nuw nsw i64 %indvars.iv40.i.i432, 1 ; 2 uses
  %exitcond.not.i.i435 = icmp eq i64 %indvars.iv.next41.i.i434, %i.ald
  br i1 %exitcond.not.i.i435, label %.loopexit1580, label %scalar.ph1449, !llvm.loop !988

.loopexit1580:                                    ; preds = %scalar.ph1449, %middle.block1460
  %.lcssa1168 = phi i32 [ %i.amb, %middle.block1460 ], [ %i.ame, %scalar.ph1449 ]
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.ala, i64 %indvars.iv43.i.i422
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !83
  %i.amh = mul nsw i32 %i.amg, %.lcssa1168
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.ala, i64 %indvars.iv43.i.i422
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !83
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.loopexit1580
  %.pn.i.i426 = phi i32 [ %i.amh, %.loopexit1580 ], [ %i.amj, %bb.co ]
  %.1.i.i427 = add nsw i32 %.pn.i.i426, %.02132.i.i424 ; 2 uses
  %indvars.iv.next39.i.i428 = add nuw nsw i64 %indvars.iv38.i.i423, 1
  %exitcond47.not.i.i429 = icmp eq i64 %indvars.iv.next44.i.i425, %i.ald
  br i1 %exitcond47.not.i.i429, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i430, label %bb.cn, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i430: ; preds = %bb.cp
  %i.amk = sext i32 %.1.i.i427 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit436

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit436: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415, %.preheader27.i.i420, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i430
  %.021.lcssa.i.i416 = phi i64 [ 0, %.preheader27.i.i420 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit415 ], [ %i.amk, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i430 ]
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %.021.lcssa.i.i416
  %i.amm = load double, ptr %i.aml, align 8, !tbaa !82
  %i.amn = fdiv double %i.akt, %i.amm
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %indvars.iv834 ; 2 uses
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !82
  %i.amq = fadd double %i.amp, %i.amn
  store double %i.amq, ptr %i.amo, align 8, !tbaa !82
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit436, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit371
  %i.amr = load i32, ptr %i.tc, align 8, !tbaa !277 ; 2 uses
  %i.ams = icmp sgt i32 %i.amr, 0
  br i1 %i.ams, label %.lr.ph.i.i439, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread

.lr.ph.i.i439:                                    ; preds = %bb.cq
  %i.amt = load ptr, ptr %i.tb, align 8, !tbaa !57
  %i.amu = load ptr, ptr %i.td, align 8, !tbaa !57 ; 2 uses
  %i.amv = load ptr, ptr %i.te, align 8, !tbaa !60 ; 5 uses
  br label %bb.cr

.preheader27.i.i442:                              ; preds = %bb.cr
  %i.amw = icmp sgt i32 %i.anj, 0
  br i1 %i.amw, label %.lr.ph33.i.i443, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread

.lr.ph33.i.i443:                                  ; preds = %.preheader27.i.i442
  %i.amx = zext nneg i32 %i.anj to i64            ; 4 uses
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cr, %.lr.ph.i.i439
  %indvars.iv.i.i440 = phi i64 [ 0, %.lr.ph.i.i439 ], [ %indvars.iv.next.i.i441, %bb.cr ] ; 5 uses
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i.i440
  %i.amz = load double, ptr %i.amy, align 8, !tbaa !82
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %indvars.iv.i.i440
  %i.anb = load double, ptr %i.ana, align 8, !tbaa !82
  %i.anc = fsub double %i.amz, %i.anb
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.amu, i64 %indvars.iv.i.i440
  %i.ane = load double, ptr %i.and, align 8, !tbaa !82
  %i.anf = fdiv double %i.anc, %i.ane
  %i.ang = fadd double %i.anf, f0x3EB0C6F7A0B5ED8D
  %i.anh = fptosi double %i.ang to i32
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv.i.i440
  store i32 %i.anh, ptr %i.ani, align 4, !tbaa !83
  %indvars.iv.next.i.i441 = add nuw nsw i64 %indvars.iv.i.i440, 1 ; 2 uses
  %i.anj = load i32, ptr %i.tc, align 8, !tbaa !277 ; 4 uses
  %i.ank = sext i32 %i.anj to i64
  %i.anl = icmp slt i64 %indvars.iv.next.i.i441, %i.ank
  br i1 %i.anl, label %bb.cr, label %.preheader27.i.i442, !llvm.loop !23

bb.cs:                                            ; preds = %bb.cu, %.lr.ph33.i.i443
  %indvars.iv43.i.i444 = phi i64 [ 0, %.lr.ph33.i.i443 ], [ %indvars.iv.next44.i.i447, %bb.cu ] ; 4 uses
  %indvars.iv38.i.i445 = phi i64 [ 1, %.lr.ph33.i.i443 ], [ %indvars.iv.next39.i.i450, %bb.cu ] ; 4 uses
  %.02132.i.i446 = phi i32 [ 0, %.lr.ph33.i.i443 ], [ %.1.i.i449, %bb.cu ]
  %30 = xor i64 %indvars.iv43.i.i444, -1
  %31 = add nsw i64 %30, %i.amx                   ; 3 uses
  %indvars.iv.next44.i.i447 = add nuw nsw i64 %indvars.iv43.i.i444, 1 ; 3 uses
  %i.anm = icmp samesign ult i64 %indvars.iv.next44.i.i447, %i.amx
  br i1 %i.anm, label %.preheader.i.i453, label %bb.ct

.preheader.i.i453:                                ; preds = %bb.cs
  %i.ann = load ptr, ptr %i.tg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1434 = icmp ult i64 %31, 8
  br i1 %min.iters.check1434, label %scalar.ph1433.preheader, label %vector.ph1435

vector.ph1435:                                    ; preds = %.preheader.i.i453
  %n.vec1436 = and i64 %31, -8                    ; 3 uses
  %i.ano = add i64 %indvars.iv38.i.i445, %n.vec1436
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv38.i.i445
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %vector.ph1435
  %index1438 = phi i64 [ 0, %vector.ph1435 ], [ %index.next1443, %vector.body1437 ] ; 2 uses
  %vec.phi1439 = phi <4 x i32> [ splat (i32 1), %vector.ph1435 ], [ %i.ans, %vector.body1437 ]
  %vec.phi1440 = phi <4 x i32> [ splat (i32 1), %vector.ph1435 ], [ %i.ant, %vector.body1437 ]
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %index1438 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  %wide.load1441 = load <4 x i32>, ptr %i.anq, align 4, !tbaa !83
  %wide.load1442 = load <4 x i32>, ptr %i.anr, align 4, !tbaa !83
  %i.ans = mul <4 x i32> %wide.load1441, %vec.phi1439 ; 2 uses
  %i.ant = mul <4 x i32> %wide.load1442, %vec.phi1440 ; 2 uses
  %index.next1443 = add nuw i64 %index1438, 8     ; 2 uses
  %i.anu = icmp eq i64 %index.next1443, %n.vec1436
  br i1 %i.anu, label %middle.block1444, label %vector.body1437, !llvm.loop !989

middle.block1444:                                 ; preds = %vector.body1437
  %bin.rdx1445 = mul <4 x i32> %i.ant, %i.ans
  %i.anv = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1445) ; 2 uses
  %cmp.n1446 = icmp eq i64 %31, %n.vec1436
  br i1 %cmp.n1446, label %.loopexit1579, label %scalar.ph1433.preheader

scalar.ph1433.preheader:                          ; preds = %.preheader.i.i453, %middle.block1444
  %indvars.iv40.i.i454.ph = phi i64 [ %indvars.iv38.i.i445, %.preheader.i.i453 ], [ %i.ano, %middle.block1444 ]
  %.030.i.i455.ph = phi i32 [ 1, %.preheader.i.i453 ], [ %i.anv, %middle.block1444 ]
  br label %scalar.ph1433

scalar.ph1433:                                    ; preds = %scalar.ph1433.preheader, %scalar.ph1433
  %indvars.iv40.i.i454 = phi i64 [ %indvars.iv.next41.i.i456, %scalar.ph1433 ], [ %indvars.iv40.i.i454.ph, %scalar.ph1433.preheader ] ; 2 uses
  %.030.i.i455 = phi i32 [ %i.any, %scalar.ph1433 ], [ %.030.i.i455.ph, %scalar.ph1433.preheader ]
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv40.i.i454
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !83
  %i.any = mul nsw i32 %i.anx, %.030.i.i455       ; 2 uses
  %indvars.iv.next41.i.i456 = add nuw nsw i64 %indvars.iv40.i.i454, 1 ; 2 uses
  %exitcond.not.i.i457 = icmp eq i64 %indvars.iv.next41.i.i456, %i.amx
  br i1 %exitcond.not.i.i457, label %.loopexit1579, label %scalar.ph1433, !llvm.loop !990

.loopexit1579:                                    ; preds = %scalar.ph1433, %middle.block1444
  %.lcssa1170 = phi i32 [ %i.anv, %middle.block1444 ], [ %i.any, %scalar.ph1433 ]
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv43.i.i444
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !83
  %i.aob = mul nsw i32 %i.aoa, %.lcssa1170
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv43.i.i444
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !83
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.loopexit1579
  %.pn.i.i448 = phi i32 [ %i.aob, %.loopexit1579 ], [ %i.aod, %bb.ct ]
  %.1.i.i449 = add nsw i32 %.pn.i.i448, %.02132.i.i446 ; 2 uses
  %indvars.iv.next39.i.i450 = add nuw nsw i64 %indvars.iv38.i.i445, 1
  %exitcond47.not.i.i451 = icmp eq i64 %indvars.iv.next44.i.i447, %i.amx
  br i1 %exitcond47.not.i.i451, label %.lr.ph.i557, label %bb.cs, !llvm.loop !24

.lr.ph.i557:                                      ; preds = %bb.cu
  %i.aoe = sext i32 %.1.i.i449 to i64
  %i.aof = getelementptr inbounds nuw [24 x i8], ptr %i.aaj, i64 %i.aoe ; 2 uses
  br label %bb.cv

.preheader.i563:                                  ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22.i561
  %i.aog = icmp sgt i32 %i.apt, 0
  br i1 %i.aog, label %.lr.ph27.i564, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread

.lr.ph27.i564:                                    ; preds = %.preheader.i563
  %i.aoh = zext nneg i32 %i.apt to i64            ; 2 uses
  br label %bb.dc

bb.cv:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit22.i561, %.lr.ph.i557
  %indvars.iv.i558 = phi i64 [ 0, %.lr.ph.i557 ], [ %indvars.iv.next.i562, %_ZN11UIestimator8n_matrix5roundEd.exit22.i561 ] ; 5 uses
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv.i558
  %i.aoj = load double, ptr %i.aoi, align 8, !tbaa !82
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.amu, i64 %indvars.iv.i558
  %i.aol = load double, ptr %i.aok, align 8, !tbaa !82 ; 2 uses
  %i.aom = fdiv double %i.aoj, %i.aol
  %i.aon = fadd double %i.aom, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.aoo = fcmp ogt double %i.aon, 0.000000e+00
  br i1 %i.aoo, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.aop = fadd double %i.aon, 5.000000e-01
  %i.aoq = call double @llvm.floor.f64(double %i.aop)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit.i559

bb.cx:                                            ; preds = %bb.cv
  %i.aor = fadd double %i.aon, -5.000000e-01
  %i.aos = call double @llvm.ceil.f64(double %i.aor)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit.i559

_ZN11UIestimator8n_matrix5roundEd.exit.i559:      ; preds = %bb.cx, %bb.cw
  %i.aot = phi double [ %i.aoq, %bb.cw ], [ %i.aos, %bb.cx ]
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i558
  %i.aov = load double, ptr %i.aou, align 8, !tbaa !82
  %i.aow = fdiv double %i.aov, %i.aol
  %i.aox = fadd double %i.aow, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.aoy = fcmp ogt double %i.aox, 0.000000e+00
  br i1 %i.aoy, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit.i559
  %i.aoz = fadd double %i.aox, 5.000000e-01
  %i.apa = call double @llvm.floor.f64(double %i.aoz)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21.i560

bb.cz:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit.i559
  %i.apb = fadd double %i.aox, -5.000000e-01
  %i.apc = call double @llvm.ceil.f64(double %i.apb)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit21.i560

_ZN11UIestimator8n_matrix5roundEd.exit21.i560:    ; preds = %bb.cz, %bb.cy
  %i.apd = phi double [ %i.apa, %bb.cy ], [ %i.apc, %bb.cz ]
  %i.ape = fsub double %i.aot, %i.apd
  %i.apf = load i32, ptr %i.th, align 4, !tbaa !282
  %i.apg = add nsw i32 %i.apf, -1
  %i.aph = sdiv i32 %i.apg, 2
  %i.api = sitofp i32 %i.aph to double
  %i.apj = fadd double %i.ape, %i.api
  %i.apk = fadd double %i.apj, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.apl = fcmp ogt double %i.apk, 0.000000e+00
  br i1 %i.apl, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21.i560
  %i.apm = fadd double %i.apk, 5.000000e-01
  %i.apn = call double @llvm.floor.f64(double %i.apm)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22.i561

bb.db:                                            ; preds = %_ZN11UIestimator8n_matrix5roundEd.exit21.i560
  %i.apo = fadd double %i.apk, -5.000000e-01
  %i.app = call double @llvm.ceil.f64(double %i.apo)
  br label %_ZN11UIestimator8n_matrix5roundEd.exit22.i561

_ZN11UIestimator8n_matrix5roundEd.exit22.i561:    ; preds = %bb.db, %bb.da
  %i.apq = phi double [ %i.apn, %bb.da ], [ %i.app, %bb.db ]
  %i.apr = fptosi double %i.apq to i32
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv.i558
  store i32 %i.apr, ptr %i.aps, align 4, !tbaa !83
  %indvars.iv.next.i562 = add nuw nsw i64 %indvars.iv.i558, 1 ; 2 uses
  %i.apt = load i32, ptr %i.tc, align 8, !tbaa !277 ; 6 uses
  %i.apu = sext i32 %i.apt to i64
  %i.apv = icmp slt i64 %indvars.iv.next.i562, %i.apu
  br i1 %i.apv, label %bb.cv, label %.preheader.i563, !llvm.loop !25

bb.dc:                                            ; preds = %bb.de, %.lr.ph27.i564
  %indvars.iv31.i566 = phi i64 [ 0, %.lr.ph27.i564 ], [ %indvars.iv.next32.i568, %bb.de ] ; 3 uses
  %.026.i567 = phi i32 [ 0, %.lr.ph27.i564 ], [ %.1.i570, %bb.de ]
  %indvars.iv.next32.i568 = add nuw nsw i64 %indvars.iv31.i566, 1 ; 3 uses
  %i.apw = icmp samesign ult i64 %indvars.iv.next32.i568, %i.aoh
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv31.i566
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !83 ; 2 uses
  br i1 %i.apw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.apz = load i32, ptr %i.th, align 4, !tbaa !282
  %i.aqa = sitofp i32 %i.apz to double
  %i.aqb = trunc nuw nsw i64 %indvars.iv31.i566 to i32
  %i.aqc = xor i32 %i.aqb, -1
  %i.aqd = add nsw i32 %i.apt, %i.aqc
  %i.aqe = sitofp i32 %i.aqd to double
  %i.aqf = call noundef double @pow(double noundef %i.aqa, double noundef %i.aqe) #24
  %i.aqg = fadd double %i.aqf, f0x3EB0C6F7A0B5ED8D
  %i.aqh = fptosi double %i.aqg to i32
  %i.aqi = mul nsw i32 %i.apy, %i.aqh
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn.i569 = phi i32 [ %i.aqi, %bb.dd ], [ %i.apy, %bb.dc ]
  %.1.i570 = add nsw i32 %.pn.i569, %.026.i567    ; 2 uses
  %exitcond.not.i571 = icmp eq i64 %indvars.iv.next32.i568, %i.aoh
  br i1 %exitcond.not.i571, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread.loopexit, label %bb.dc, !llvm.loop !26

_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread.loopexit: ; preds = %bb.de
  %i.aqj = sext i32 %.1.i570 to i64
  br label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread

_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread: ; preds = %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread.loopexit, %bb.cq, %.preheader27.i.i442, %.preheader.i563
  %i.aqk = phi i32 [ %i.apt, %.preheader.i563 ], [ %i.apt, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread.loopexit ], [ %i.amr, %bb.cq ], [ %i.anj, %.preheader27.i.i442 ] ; 2 uses
  %i.aql = phi ptr [ %i.aof, %.preheader.i563 ], [ %i.aof, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread.loopexit ], [ %i.aaj, %bb.cq ], [ %i.aaj, %.preheader27.i.i442 ]
  %.0.lcssa.i556 = phi i64 [ 0, %.preheader.i563 ], [ %i.aqj, %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i437.thread.loopexit ], [ 0, %bb.cq ], [ 0, %.preheader27.i.i442 ]
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !60
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %.0.lcssa.i556
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !83
  %i.aqp = sitofp i32 %i.aqo to double
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv834
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !82
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01030, i64 %indvars.iv834
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !82
  %i.aqu = fsub double %i.aqr, %i.aqt
  %i.aqv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %indvars.iv834 ; 2 uses
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !82
  %i.aqx = call double @llvm.fmuladd.f64(double %i.aqp, double %i.aqu, double %i.aqw)
  store double %i.aqx, ptr %i.aqv, align 8, !tbaa !82
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %i.aqy = load i32, ptr %i.c, align 8, !tbaa !268 ; 6 uses
end_hunk_4
begin_hunk_5_@_ZN11UIestimator11UIestimator8calc_pmfEv:bb.a
  br i1 %.not.i.i.i.i461, label %.thread, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i460
  %i.arw = shl nuw nsw i64 %i.aru, 3              ; 5 uses
  %i.arx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arw) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit469 unwind label %.loopexit670 ; 14 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit469:         ; preds = %bb.di
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.arx, i8 0, i64 %i.arw, i1 false), !tbaa !82
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.arx, i64 %i.aru
  %.pre853 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.arz = ptrtoint ptr %i.ary to i64             ; 3 uses
  %i.asa = icmp sgt i32 %.pre853, 0
  br i1 %i.asa, label %.lr.ph754, label %._crit_edge755

.lr.ph754:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit469
  %i.asb = call i32 @llvm.smax.i32(i32 %i.aan, i32 1)
  %i.asc = uitofp nneg i32 %i.asb to double       ; 3 uses
  %i.asd = load double, ptr %i.tj, align 8, !tbaa !267
  %i.ase = load ptr, ptr %i.tk, align 8, !tbaa !57 ; 6 uses
  %wide.trip.count843 = zext nneg i32 %.pre853 to i64 ; 4 uses
  %.pre854 = load double, ptr %i.ti, align 8, !tbaa !296
  %i.asf = fmul double %.pre854, %i.asd           ; 2 uses
  %min.iters.check1419 = icmp eq i32 %.pre853, 1
  br i1 %min.iters.check1419, label %scalar.ph1418.preheader, label %vector.memcheck1394

vector.memcheck1394:                              ; preds = %.lr.ph754
  %i.asg = shl nuw nsw i64 %wide.trip.count843, 3 ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.0623.096697699310131026, i64 %i.asg ; 3 uses
  %scevgep1395 = getelementptr i8, ptr %.sroa.0632.094895296397799010141025, i64 %i.asg ; 3 uses
  %scevgep1396 = getelementptr i8, ptr %i.arx, i64 %i.asg ; 3 uses
  %scevgep1397 = getelementptr i8, ptr %i.ase, i64 %i.asg ; 3 uses
  %bound0 = icmp ult ptr %.sroa.0623.096697699310131026, %scevgep1395
  %bound1 = icmp ult ptr %.sroa.0632.094895296397799010141025, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound01398 = icmp ult ptr %.sroa.0623.096697699310131026, %scevgep1396
  %bound11399 = icmp ult ptr %i.arx, %scevgep
  %found.conflict1400 = and i1 %bound01398, %bound11399
  %conflict.rdx1401 = or i1 %found.conflict, %found.conflict1400
  %bound01402 = icmp ult ptr %.sroa.0623.096697699310131026, %scevgep1397
  %bound11403 = icmp ult ptr %i.ase, %scevgep
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %conflict.rdx1405 = or i1 %conflict.rdx1401, %found.conflict1404
  %bound01406 = icmp ult ptr %.sroa.0632.094895296397799010141025, %scevgep1396
  %bound11407 = icmp ult ptr %i.arx, %scevgep1395
  %found.conflict1408 = and i1 %bound01406, %bound11407
  %conflict.rdx1409 = or i1 %conflict.rdx1405, %found.conflict1408
  %bound01410 = icmp ult ptr %.sroa.0632.094895296397799010141025, %scevgep1397
  %bound11411 = icmp ult ptr %i.ase, %scevgep1395
  %found.conflict1412 = and i1 %bound01410, %bound11411
  %conflict.rdx1413 = or i1 %conflict.rdx1409, %found.conflict1412
  %bound01414 = icmp ult ptr %i.arx, %scevgep1397
  %bound11415 = icmp ult ptr %i.ase, %scevgep1396
  %found.conflict1416 = and i1 %bound01414, %bound11415
  %conflict.rdx1417 = or i1 %conflict.rdx1413, %found.conflict1416
  br i1 %conflict.rdx1417, label %scalar.ph1418.preheader, label %vector.ph1420

vector.ph1420:                                    ; preds = %vector.memcheck1394
  %n.vec1421 = and i64 %wide.trip.count843, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.asc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1422 = insertelement <2 x double> poison, double %i.asf, i64 0
  %broadcast.splat1423 = shufflevector <2 x double> %broadcast.splatinsert1422, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1420
  %index1425 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1429, %vector.body1424 ] ; 5 uses
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %index1425 ; 2 uses
  %wide.load1426 = load <2 x double>, ptr %i.ash, align 8, !tbaa !82, !alias.scope !1007, !noalias !1008
  %i.asi = fdiv <2 x double> %wide.load1426, %broadcast.splat ; 2 uses
  store <2 x double> %i.asi, ptr %i.ash, align 8, !tbaa !82, !alias.scope !1007, !noalias !1008
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %index1425 ; 2 uses
  %wide.load1427 = load <2 x double>, ptr %i.asj, align 8, !tbaa !82, !alias.scope !1009, !noalias !1010
  %i.ask = fmul <2 x double> %broadcast.splat1423, %wide.load1427
  %i.asl = fdiv <2 x double> %i.ask, %broadcast.splat ; 2 uses
  store <2 x double> %i.asl, ptr %i.asj, align 8, !tbaa !82, !alias.scope !1009, !noalias !1010
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %index1425
  %wide.load1428 = load <2 x double>, ptr %i.asm, align 8, !tbaa !82, !alias.scope !1011
  %i.asn = fneg <2 x double> %wide.load1428
  %i.aso = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asn, <2 x double> %i.asi, <2 x double> %i.asl)
  %i.asp = getelementptr inbounds nuw [8 x i8], ptr %i.arx, i64 %index1425
  store <2 x double> %i.aso, ptr %i.asp, align 8, !tbaa !82, !alias.scope !1012, !noalias !1011
  %index.next1429 = add nuw i64 %index1425, 2     ; 2 uses
  %i.asq = icmp eq i64 %index.next1429, %n.vec1421
  br i1 %i.asq, label %middle.block1430, label %vector.body1424, !llvm.loop !999

middle.block1430:                                 ; preds = %vector.body1424
  %cmp.n1431 = icmp eq i64 %n.vec1421, %wide.trip.count843
  br i1 %cmp.n1431, label %._crit_edge755, label %scalar.ph1418.preheader

scalar.ph1418.preheader:                          ; preds = %vector.memcheck1394, %.lr.ph754, %middle.block1430
  %indvars.iv840.ph = phi i64 [ 0, %vector.memcheck1394 ], [ 0, %.lr.ph754 ], [ %n.vec1421, %middle.block1430 ]
  br label %scalar.ph1418

scalar.ph1418:                                    ; preds = %scalar.ph1418.preheader, %scalar.ph1418
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %scalar.ph1418 ], [ %indvars.iv840.ph, %scalar.ph1418.preheader ] ; 5 uses
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096697699310131026, i64 %indvars.iv840 ; 2 uses
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !82
  %i.ast = fdiv double %i.ass, %i.asc             ; 2 uses
  store double %i.ast, ptr %i.asr, align 8, !tbaa !82
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094895296397799010141025, i64 %indvars.iv840 ; 2 uses
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !82
  %i.asw = fmul double %i.asf, %i.asv
  %i.asx = fdiv double %i.asw, %i.asc             ; 2 uses
  store double %i.asx, ptr %i.asu, align 8, !tbaa !82
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %indvars.iv840
  %i.asz = load double, ptr %i.asy, align 8, !tbaa !82
  %i.ata = fneg double %i.asz
  %i.atb = call double @llvm.fmuladd.f64(double %i.ata, double %i.ast, double %i.asx)
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.arx, i64 %indvars.iv840
  store double %i.atb, ptr %i.atc, align 8, !tbaa !82
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %._crit_edge755, label %scalar.ph1418, !llvm.loop !1000

.loopexit670:                                     ; preds = %bb.di
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit518

.loopexit.split-lp:                               ; preds = %bb.dh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit518

._crit_edge755:                                   ; preds = %scalar.ph1418, %middle.block1430, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit469
  %i.atd = ptrtoint ptr %i.arx to i64             ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ate = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arw) #27
          to label %.noexc472 unwind label %.loopexit671 ; 4 uses

.thread:                                          ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i460
  store i64 0, ptr %1, align 8
  store ptr null, ptr %i.tm, align 8, !tbaa !210
  br label %bb.dl

.noexc472:                                        ; preds = %._crit_edge755
  store ptr %i.ate, ptr %1, align 8, !tbaa !57
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 %i.arw ; 3 uses
  store ptr %i.atf, ptr %i.tm, align 8, !tbaa !210
  %.not = icmp eq i32 %i.art, 1
  br i1 %.not, label %bb.dk, label %bb.dj, !prof !1013

bb.dj:                                            ; preds = %.noexc472
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ate, ptr nonnull align 8 %i.arx, i64 %i.arw, i1 false)
  br label %bb.dl

bb.dk:                                            ; preds = %.noexc472
  %i.atg = load double, ptr %i.arx, align 8, !tbaa !82
  store double %i.atg, ptr %i.ate, align 8, !tbaa !82
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %.thread
  %i.ath = phi i64 [ %i.atd, %bb.dj ], [ 0, %.thread ], [ %i.atd, %bb.dk ] ; 2 uses
  %.sroa.0573.010401050 = phi ptr [ %i.arx, %bb.dj ], [ null, %.thread ], [ %i.arx, %bb.dk ] ; 4 uses
  %.sroa.14.010411047 = phi i64 [ %i.arz, %bb.dj ], [ 0, %.thread ], [ %i.arz, %bb.dk ] ; 2 uses
  %i.ati = phi ptr [ %i.atf, %bb.dj ], [ null, %.thread ], [ %i.atf, %bb.dk ]
  store ptr %i.ati, ptr %i.tl, align 8, !tbaa !211
  %i.atj = load i32, ptr %i.tn, align 8, !tbaa !273
  %i.atk = icmp sgt i32 %i.atj, 0
  br i1 %i.atk, label %.lr.ph.i.i474, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph.i.i474:                                    ; preds = %bb.dl
  %i.atl = load ptr, ptr %i.to, align 8, !tbaa !57
  %i.atm = load ptr, ptr %i.tp, align 8, !tbaa !57
  %i.atn = load ptr, ptr %i.tq, align 8, !tbaa !60 ; 3 uses
  br label %bb.dm

.preheader27.i.i477:                              ; preds = %bb.dm
  %i.ato = icmp sgt i32 %i.aub, 0
  br i1 %i.ato, label %.lr.ph33.i.i478, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph33.i.i478:                                  ; preds = %.preheader27.i.i477
  %i.atp = zext nneg i32 %i.aub to i64            ; 4 uses
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dm, %.lr.ph.i.i474
  %indvars.iv.i.i475 = phi i64 [ 0, %.lr.ph.i.i474 ], [ %indvars.iv.next.i.i476, %bb.dm ] ; 5 uses
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i.i475
  %i.atr = load double, ptr %i.atq, align 8, !tbaa !82
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %i.atl, i64 %indvars.iv.i.i475
  %i.att = load double, ptr %i.ats, align 8, !tbaa !82
  %i.atu = fsub double %i.atr, %i.att
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.atm, i64 %indvars.iv.i.i475
  %i.atw = load double, ptr %i.atv, align 8, !tbaa !82
  %i.atx = fdiv double %i.atu, %i.atw
  %i.aty = fadd double %i.atx, f0x3EB0C6F7A0B5ED8D
  %i.atz = fptosi double %i.aty to i32
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.atn, i64 %indvars.iv.i.i475
  store i32 %i.atz, ptr %i.aua, align 4, !tbaa !83
  %indvars.iv.next.i.i476 = add nuw nsw i64 %indvars.iv.i.i475, 1 ; 2 uses
  %i.aub = load i32, ptr %i.tn, align 8, !tbaa !273 ; 3 uses
  %i.auc = sext i32 %i.aub to i64
  %i.aud = icmp slt i64 %indvars.iv.next.i.i476, %i.auc
  br i1 %i.aud, label %bb.dm, label %.preheader27.i.i477, !llvm.loop !16

bb.dn:                                            ; preds = %bb.dp, %.lr.ph33.i.i478
  %indvars.iv43.i.i479 = phi i64 [ 0, %.lr.ph33.i.i478 ], [ %indvars.iv.next44.i.i482, %bb.dp ] ; 4 uses
  %indvars.iv38.i.i480 = phi i64 [ 1, %.lr.ph33.i.i478 ], [ %indvars.iv.next39.i.i485, %bb.dp ] ; 4 uses
  %.02132.i.i481 = phi i32 [ 0, %.lr.ph33.i.i478 ], [ %.1.i.i484, %bb.dp ]
  %32 = xor i64 %indvars.iv43.i.i479, -1
  %33 = add nsw i64 %32, %i.atp                   ; 3 uses
  %indvars.iv.next44.i.i482 = add nuw nsw i64 %indvars.iv43.i.i479, 1 ; 3 uses
  %i.aue = icmp samesign ult i64 %indvars.iv.next44.i.i482, %i.atp
  br i1 %i.aue, label %.preheader.i.i487, label %bb.do

.preheader.i.i487:                                ; preds = %bb.dn
  %i.auf = load ptr, ptr %i.tr, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1379 = icmp ult i64 %33, 8
  br i1 %min.iters.check1379, label %scalar.ph1378.preheader, label %vector.ph1380

vector.ph1380:                                    ; preds = %.preheader.i.i487
  %n.vec1381 = and i64 %33, -8                    ; 3 uses
  %i.aug = add i64 %indvars.iv38.i.i480, %n.vec1381
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %indvars.iv38.i.i480
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1388, %vector.body1382 ] ; 2 uses
  %vec.phi1384 = phi <4 x i32> [ splat (i32 1), %vector.ph1380 ], [ %i.auk, %vector.body1382 ]
  %vec.phi1385 = phi <4 x i32> [ splat (i32 1), %vector.ph1380 ], [ %i.aul, %vector.body1382 ]
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %index1383 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %wide.load1386 = load <4 x i32>, ptr %i.aui, align 4, !tbaa !83
  %wide.load1387 = load <4 x i32>, ptr %i.auj, align 4, !tbaa !83
  %i.auk = mul <4 x i32> %wide.load1386, %vec.phi1384 ; 2 uses
  %i.aul = mul <4 x i32> %wide.load1387, %vec.phi1385 ; 2 uses
  %index.next1388 = add nuw i64 %index1383, 8     ; 2 uses
  %i.aum = icmp eq i64 %index.next1388, %n.vec1381
  br i1 %i.aum, label %middle.block1389, label %vector.body1382, !llvm.loop !1001

middle.block1389:                                 ; preds = %vector.body1382
  %bin.rdx1390 = mul <4 x i32> %i.aul, %i.auk
  %i.aun = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1390) ; 2 uses
  %cmp.n1391 = icmp eq i64 %33, %n.vec1381
  br i1 %cmp.n1391, label %.loopexit1587, label %scalar.ph1378.preheader

scalar.ph1378.preheader:                          ; preds = %.preheader.i.i487, %middle.block1389
  %indvars.iv40.i.i488.ph = phi i64 [ %indvars.iv38.i.i480, %.preheader.i.i487 ], [ %i.aug, %middle.block1389 ]
  %.030.i.i489.ph = phi i32 [ 1, %.preheader.i.i487 ], [ %i.aun, %middle.block1389 ]
  br label %scalar.ph1378

scalar.ph1378:                                    ; preds = %scalar.ph1378.preheader, %scalar.ph1378
  %indvars.iv40.i.i488 = phi i64 [ %indvars.iv.next41.i.i490, %scalar.ph1378 ], [ %indvars.iv40.i.i488.ph, %scalar.ph1378.preheader ] ; 2 uses
  %.030.i.i489 = phi i32 [ %i.auq, %scalar.ph1378 ], [ %.030.i.i489.ph, %scalar.ph1378.preheader ]
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %indvars.iv40.i.i488
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !83
  %i.auq = mul nsw i32 %i.aup, %.030.i.i489       ; 2 uses
  %indvars.iv.next41.i.i490 = add nuw nsw i64 %indvars.iv40.i.i488, 1 ; 2 uses
  %exitcond.not.i.i491 = icmp eq i64 %indvars.iv.next41.i.i490, %i.atp
  br i1 %exitcond.not.i.i491, label %.loopexit1587, label %scalar.ph1378, !llvm.loop !1002

.loopexit1587:                                    ; preds = %scalar.ph1378, %middle.block1389
  %.lcssa1179 = phi i32 [ %i.aun, %middle.block1389 ], [ %i.auq, %scalar.ph1378 ]
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.atn, i64 %indvars.iv43.i.i479
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !83
  %i.aut = mul nsw i32 %i.aus, %.lcssa1179
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.atn, i64 %indvars.iv43.i.i479
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !83
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.loopexit1587
  %.pn.i.i483 = phi i32 [ %i.aut, %.loopexit1587 ], [ %i.auv, %bb.do ]
  %.1.i.i484 = add nsw i32 %.pn.i.i483, %.02132.i.i481 ; 2 uses
  %indvars.iv.next39.i.i485 = add nuw nsw i64 %indvars.iv38.i.i480, 1
  %exitcond47.not.i.i486 = icmp eq i64 %indvars.iv.next44.i.i482, %i.atp
  br i1 %exitcond47.not.i.i486, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.dn, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.dp
  %i.auw = sext i32 %.1.i.i484 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, %.preheader27.i.i477, %bb.dl
  %.021.lcssa.i.i473 = phi i64 [ 0, %.preheader27.i.i477 ], [ 0, %bb.dl ], [ %i.auw, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.aux = load ptr, ptr %i.ts, align 8, !tbaa !250
  %i.auy = getelementptr inbounds nuw [24 x i8], ptr %i.aux, i64 %.021.lcssa.i.i473
  %i.auz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.auy, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9set_valueERKS3_S3_.exit unwind label %bb.dy ; 0 uses

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9set_valueERKS3_S3_.exit: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.ava = load ptr, ptr %1, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ava, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9set_valueERKS3_S3_.exit
  %i.avb = load ptr, ptr %i.tm, align 8, !tbaa !210
  %i.avc = ptrtoint ptr %i.avb to i64
  %i.avd = ptrtoint ptr %i.ava to i64
  %i.ave = sub i64 %i.avc, %i.avd
  call void @_ZdlPvm(ptr noundef nonnull %i.ava, i64 noundef %i.ave) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9set_valueERKS3_S3_.exit, %bb.dq
  %i.avf = load i32, ptr %i.tt, align 8, !tbaa !274
  %i.avg = icmp sgt i32 %i.avf, 0
  br i1 %i.avg, label %.lr.ph.i.i494, label %bb.dv

.lr.ph.i.i494:                                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.avh = load ptr, ptr %i.tu, align 8, !tbaa !57
  %i.avi = load ptr, ptr %i.tv, align 8, !tbaa !57
  %i.avj = load ptr, ptr %i.tw, align 8, !tbaa !60 ; 3 uses
  br label %bb.dr

.preheader27.i.i497:                              ; preds = %bb.dr
  %i.avk = icmp sgt i32 %i.avx, 0
  br i1 %i.avk, label %.lr.ph33.i.i498, label %bb.dv

.lr.ph33.i.i498:                                  ; preds = %.preheader27.i.i497
  %i.avl = zext nneg i32 %i.avx to i64            ; 4 uses
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dr, %.lr.ph.i.i494
  %indvars.iv.i.i495 = phi i64 [ 0, %.lr.ph.i.i494 ], [ %indvars.iv.next.i.i496, %bb.dr ] ; 5 uses
  %i.avm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv.i.i495
  %i.avn = load double, ptr %i.avm, align 8, !tbaa !82
  %i.avo = getelementptr inbounds nuw [8 x i8], ptr %i.avh, i64 %indvars.iv.i.i495
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !82
  %i.avq = fsub double %i.avn, %i.avp
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.avi, i64 %indvars.iv.i.i495
  %i.avs = load double, ptr %i.avr, align 8, !tbaa !82
  %i.avt = fdiv double %i.avq, %i.avs
  %i.avu = fadd double %i.avt, f0x3EB0C6F7A0B5ED8D
  %i.avv = fptosi double %i.avu to i32
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %indvars.iv.i.i495
  store i32 %i.avv, ptr %i.avw, align 4, !tbaa !83
  %indvars.iv.next.i.i496 = add nuw nsw i64 %indvars.iv.i.i495, 1 ; 2 uses
  %i.avx = load i32, ptr %i.tt, align 8, !tbaa !274 ; 3 uses
  %i.avy = sext i32 %i.avx to i64
  %i.avz = icmp slt i64 %indvars.iv.next.i.i496, %i.avy
  br i1 %i.avz, label %bb.dr, label %.preheader27.i.i497, !llvm.loop !18

bb.ds:                                            ; preds = %bb.du, %.lr.ph33.i.i498
  %indvars.iv43.i.i499 = phi i64 [ 0, %.lr.ph33.i.i498 ], [ %indvars.iv.next44.i.i502, %bb.du ] ; 4 uses
  %indvars.iv38.i.i500 = phi i64 [ 1, %.lr.ph33.i.i498 ], [ %indvars.iv.next39.i.i505, %bb.du ] ; 4 uses
  %.02132.i.i501 = phi i32 [ 0, %.lr.ph33.i.i498 ], [ %.1.i.i504, %bb.du ]
  %34 = xor i64 %indvars.iv43.i.i499, -1
  %35 = add nsw i64 %34, %i.avl                   ; 3 uses
  %indvars.iv.next44.i.i502 = add nuw nsw i64 %indvars.iv43.i.i499, 1 ; 3 uses
  %i.awa = icmp samesign ult i64 %indvars.iv.next44.i.i502, %i.avl
  br i1 %i.awa, label %.preheader.i.i508, label %bb.dt

.preheader.i.i508:                                ; preds = %bb.ds
  %i.awb = load ptr, ptr %i.tx, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1363 = icmp ult i64 %35, 8
  br i1 %min.iters.check1363, label %scalar.ph1362.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %.preheader.i.i508
  %n.vec1365 = and i64 %35, -8                    ; 3 uses
  %i.awc = add i64 %indvars.iv38.i.i500, %n.vec1365
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %indvars.iv38.i.i500
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1372, %vector.body1366 ] ; 2 uses
  %vec.phi1368 = phi <4 x i32> [ splat (i32 1), %vector.ph1364 ], [ %i.awg, %vector.body1366 ]
  %vec.phi1369 = phi <4 x i32> [ splat (i32 1), %vector.ph1364 ], [ %i.awh, %vector.body1366 ]
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %index1367 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 16
  %wide.load1370 = load <4 x i32>, ptr %i.awe, align 4, !tbaa !83
  %wide.load1371 = load <4 x i32>, ptr %i.awf, align 4, !tbaa !83
  %i.awg = mul <4 x i32> %wide.load1370, %vec.phi1368 ; 2 uses
  %i.awh = mul <4 x i32> %wide.load1371, %vec.phi1369 ; 2 uses
  %index.next1372 = add nuw i64 %index1367, 8     ; 2 uses
  %i.awi = icmp eq i64 %index.next1372, %n.vec1365
  br i1 %i.awi, label %middle.block1373, label %vector.body1366, !llvm.loop !1003

middle.block1373:                                 ; preds = %vector.body1366
  %bin.rdx1374 = mul <4 x i32> %i.awh, %i.awg
  %i.awj = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1374) ; 2 uses
  %cmp.n1375 = icmp eq i64 %35, %n.vec1365
  br i1 %cmp.n1375, label %.loopexit1586, label %scalar.ph1362.preheader

scalar.ph1362.preheader:                          ; preds = %.preheader.i.i508, %middle.block1373
  %indvars.iv40.i.i509.ph = phi i64 [ %indvars.iv38.i.i500, %.preheader.i.i508 ], [ %i.awc, %middle.block1373 ]
  %.030.i.i510.ph = phi i32 [ 1, %.preheader.i.i508 ], [ %i.awj, %middle.block1373 ]
  br label %scalar.ph1362

scalar.ph1362:                                    ; preds = %scalar.ph1362.preheader, %scalar.ph1362
  %indvars.iv40.i.i509 = phi i64 [ %indvars.iv.next41.i.i511, %scalar.ph1362 ], [ %indvars.iv40.i.i509.ph, %scalar.ph1362.preheader ] ; 2 uses
  %.030.i.i510 = phi i32 [ %i.awm, %scalar.ph1362 ], [ %.030.i.i510.ph, %scalar.ph1362.preheader ]
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %indvars.iv40.i.i509
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !83
  %i.awm = mul nsw i32 %i.awl, %.030.i.i510       ; 2 uses
  %indvars.iv.next41.i.i511 = add nuw nsw i64 %indvars.iv40.i.i509, 1 ; 2 uses
  %exitcond.not.i.i512 = icmp eq i64 %indvars.iv.next41.i.i511, %i.avl
  br i1 %exitcond.not.i.i512, label %.loopexit1586, label %scalar.ph1362, !llvm.loop !1004

.loopexit1586:                                    ; preds = %scalar.ph1362, %middle.block1373
  %.lcssa1181 = phi i32 [ %i.awj, %middle.block1373 ], [ %i.awm, %scalar.ph1362 ]
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %indvars.iv43.i.i499
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !83
  %i.awp = mul nsw i32 %i.awo, %.lcssa1181
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %indvars.iv43.i.i499
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !83
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.loopexit1586
  %.pn.i.i503 = phi i32 [ %i.awp, %.loopexit1586 ], [ %i.awr, %bb.dt ]
  %.1.i.i504 = add nsw i32 %.pn.i.i503, %.02132.i.i501 ; 2 uses
  %indvars.iv.next39.i.i505 = add nuw nsw i64 %indvars.iv38.i.i500, 1
  %exitcond47.not.i.i506 = icmp eq i64 %indvars.iv.next44.i.i502, %i.avl
  br i1 %exitcond47.not.i.i506, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i507, label %bb.ds, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i507: ; preds = %bb.du
  %i.aws = sext i32 %.1.i.i504 to i64
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i507, %.preheader27.i.i497, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.021.lcssa.i.i493 = phi i64 [ 0, %.preheader27.i.i497 ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.aws, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i507 ]
  %i.awt = load ptr, ptr %i.ty, align 8, !tbaa !60
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.awt, i64 %.021.lcssa.i.i493
  store i32 %i.aan, ptr %i.awu, align 4, !tbaa !83
  %i.awv = load i32, ptr %i.c, align 8, !tbaa !268 ; 2 uses
  %.5112756 = add i32 %i.awv, -1                  ; 2 uses
  %i.aww = icmp sgt i32 %i.awv, 0
  br i1 %i.aww, label %.lr.ph759, label %._crit_edge760

.lr.ph759:                                        ; preds = %bb.dv
  %i.awx = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.awy = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.awz = zext nneg i32 %.5112756 to i64
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph759, %bb.dx
  %indvars.iv845 = phi i64 [ %i.awz, %.lr.ph759 ], [ %indvars.iv.next846, %bb.dx ] ; 7 uses
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.awx, i64 %indvars.iv845 ; 2 uses
  %i.axb = load double, ptr %i.axa, align 8, !tbaa !82
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.099910111028, i64 %indvars.iv845 ; 3 uses
  %i.axd = load double, ptr %i.axc, align 8, !tbaa !82
  %i.axe = fadd double %i.axb, %i.axd             ; 2 uses
  store double %i.axe, ptr %i.axc, align 8, !tbaa !82
  %i.axf = getelementptr inbounds nuw [8 x i8], ptr %i.awy, i64 %indvars.iv845
  %i.axg = load double, ptr %i.axf, align 8, !tbaa !82
  %i.axh = load double, ptr %i.axa, align 8, !tbaa !82
  %i.axi = fsub double %i.axg, %i.axh
  %i.axj = fadd double %i.axi, f0x3EB0C6F7A0B5ED8D
  %i.axk = fcmp ogt double %i.axe, %i.axj
  br i1 %i.axk, label %bb.dx, label %._crit_edge760.loopexit.split.loop.exit

bb.dx:                                            ; preds = %bb.dw
  %i.axl = load ptr, ptr %i.ax, align 8, !tbaa !57
  %i.axm = getelementptr inbounds nuw [8 x i8], ptr %i.axl, i64 %indvars.iv845
  %i.axn = load double, ptr %i.axm, align 8, !tbaa !82
  store double %i.axn, ptr %i.axc, align 8, !tbaa !82
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -1
  %i.axo = icmp sgt i64 %indvars.iv845, 0
  br i1 %i.axo, label %bb.dw, label %._crit_edge760, !llvm.loop !1005

.loopexit671:                                     ; preds = %._crit_edge755
  %lpad.loopexit673 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit514.thread

bb.dy:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.axp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axq = load ptr, ptr %1, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i513 = icmp eq ptr %i.axq, null
  br i1 %.not.i.i.i513, label %_ZNSt6vectorIdSaIdEED2Ev.exit514, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.axr = load ptr, ptr %i.tm, align 8, !tbaa !210
  %i.axs = ptrtoint ptr %i.axr to i64
  %i.axt = ptrtoint ptr %i.axq to i64
  %i.axu = sub i64 %i.axs, %i.axt
  call void @_ZdlPvm(ptr noundef nonnull %i.axq, i64 noundef %i.axu) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit514

._crit_edge760.loopexit.split.loop.exit:          ; preds = %bb.dw
  %i.axv = trunc nuw nsw i64 %indvars.iv845 to i32
  br label %._crit_edge760

._crit_edge760:                                   ; preds = %bb.dx, %._crit_edge760.loopexit.split.loop.exit, %bb.dv
  %.5112.lcssa = phi i32 [ %.5112756, %bb.dv ], [ %i.axv, %._crit_edge760.loopexit.split.loop.exit ], [ -1, %bb.dx ]
  %.not.i.i.i515 = icmp eq ptr %.sroa.0573.010401050, null
  br i1 %.not.i.i.i515, label %_ZNSt6vectorIdSaIdEED2Ev.exit516, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge760
  %i.axw = sub i64 %.sroa.14.010411047, %i.ath
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0573.010401050, i64 noundef %i.axw) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit516

_ZNSt6vectorIdSaIdEED2Ev.exit516:                 ; preds = %._crit_edge760, %bb.ea
  %i.axx = icmp sgt i32 %.5112.lcssa, -1
  br i1 %i.axx, label %.preheader668, label %bb.eb, !llvm.loop !1006

_ZNSt6vectorIdSaIdEED2Ev.exit514:                 ; preds = %bb.dz, %bb.dy
  %.not.i.i.i517 = icmp eq ptr %.sroa.0573.010401050, null
  br i1 %.not.i.i.i517, label %_ZNSt6vectorIdSaIdEED2Ev.exit518, label %_ZNSt6vectorIdSaIdEED2Ev.exit514.thread

_ZNSt6vectorIdSaIdEED2Ev.exit514.thread:          ; preds = %.loopexit671, %_ZNSt6vectorIdSaIdEED2Ev.exit514
  %.pn1059 = phi { ptr, i32 } [ %i.axp, %_ZNSt6vectorIdSaIdEED2Ev.exit514 ], [ %lpad.loopexit673, %.loopexit671 ]
  %.sroa.14.0104110491058 = phi i64 [ %.sroa.14.010411047, %_ZNSt6vectorIdSaIdEED2Ev.exit514 ], [ %i.arz, %.loopexit671 ]
  %.sroa.0573.0104010521057 = phi ptr [ %.sroa.0573.010401050, %_ZNSt6vectorIdSaIdEED2Ev.exit514 ], [ %i.arx, %.loopexit671 ]
  %i.axy = phi i64 [ %i.ath, %_ZNSt6vectorIdSaIdEED2Ev.exit514 ], [ %i.atd, %.loopexit671 ]
  %i.axz = sub i64 %.sroa.14.0104110491058, %i.axy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0573.0104010521057, i64 noundef %i.axz) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit518

bb.eb:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit516
  %.not.i.i.i519 = icmp eq ptr %.sroa.0582.01030, null
  br i1 %.not.i.i.i519, label %_ZNSt6vectorIdSaIdEED2Ev.exit520, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aya = ptrtoint ptr %.sroa.0582.01030 to i64
  %i.ayb = sub i64 %.sroa.22.01032, %i.aya
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0582.01030, i64 noundef %i.ayb) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit520

_ZNSt6vectorIdSaIdEED2Ev.exit520:                 ; preds = %bb.eb, %bb.ec
  %.not.i.i.i521 = icmp eq ptr %.sroa.0600.099910111028, null
  br i1 %.not.i.i.i521, label %_ZNSt6vectorIdSaIdEED2Ev.exit522, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit520
  %i.ayc = ptrtoint ptr %.sroa.0600.099910111028 to i64
  %i.ayd = sub i64 %.sroa.27.0100210101029, %i.ayc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0600.099910111028, i64 noundef %i.ayd) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit522

_ZNSt6vectorIdSaIdEED2Ev.exit522:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit520, %bb.ed
  %.not.i.i.i523 = icmp eq ptr %.sroa.0623.096697699310131026, null
  br i1 %.not.i.i.i523, label %_ZNSt6vectorIdSaIdEED2Ev.exit524, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit522
  %i.aye = ptrtoint ptr %.sroa.0623.096697699310131026 to i64
  %i.ayf = sub i64 %.sroa.13.096997599610121027, %i.aye
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0623.096697699310131026, i64 noundef %i.ayf) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit524

_ZNSt6vectorIdSaIdEED2Ev.exit524:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit522, %bb.ee
  %.not.i.i.i525 = icmp eq ptr %.sroa.0632.094895296397799010141025, null
  br i1 %.not.i.i.i525, label %_ZNSt6vectorIdSaIdEED2Ev.exit526, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit524
  %i.ayg = ptrtoint ptr %.sroa.0632.094895296397799010141025 to i64
  %i.ayh = sub i64 %.sroa.14640.094595396097898710151024, %i.ayg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0632.094895296397799010141025, i64 noundef %i.ayh) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit526

_ZNSt6vectorIdSaIdEED2Ev.exit526:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit524, %bb.ef
end_hunk_5
begin_hunk_6_@_ZN11UIestimator11UIestimator11write_filesEv:bb.a
  %.sroa.29.0787 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ec, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ %i.ec, %middle.block ], [ %i.ec, %scalar.ph ], [ %i.ec, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %.preheader607

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !82
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv
  store double %i.fw, ptr %i.fx, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.next
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !82
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next
  store double %i.fz, ptr %i.ga, align 8, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.next.1
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !82
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.1
  store double %i.gc, ptr %i.gd, align 8, !tbaa !82
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.next.2
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !82
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.2
  store double %i.gf, ptr %i.gg, align 8, !tbaa !82
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader610, label %scalar.ph, !llvm.loop !1028

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

.preheader607:                                    ; preds = %bb.cu, %.preheader610
  %i.gi = load i32, ptr %i.dc, align 8, !tbaa !268
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph650, label %._crit_edge.thread

.lr.ph650:                                        ; preds = %.preheader607, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150 ], [ 0, %.preheader607 ] ; 5 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv687 ; 3 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !82
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv687
  %i.go = load double, ptr %i.gn, align 8, !tbaa !82
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double 5.000000e-01, double %i.gl)
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %i.gp)
          to label %_ZNSolsEd.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSolsEd.exit:                                   ; preds = %.lr.ph650
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit
  %i.gs = load double, ptr %i.gk, align 8, !tbaa !82
  %i.gt = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv687
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !82
  %i.gw = call double @llvm.fmuladd.f64(double %i.gv, double 5.000000e-01, double %i.gs)
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, double noundef %i.gw)
          to label %_ZNSolsEd.exit144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSolsEd.exit144:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %_ZNSolsEd.exit144
  %i.gz = load double, ptr %i.gk, align 8, !tbaa !82
  %i.ha = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv687
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !82
  %i.hd = call double @llvm.fmuladd.f64(double %i.hc, double 5.000000e-01, double %i.gz)
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, double noundef %i.hd)
          to label %_ZNSolsEd.exit148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSolsEd.exit148:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150: ; preds = %_ZNSolsEd.exit148
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 2 uses
  %i.hg = load i32, ptr %i.dc, align 8, !tbaa !268 ; 2 uses
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next688, %i.hh
  br i1 %i.hi, label %.lr.ph650, label %._crit_edge, !llvm.loop !1029

.loopexit:                                        ; preds = %bb.cx, %.noexc547, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i544, %.noexc549, %bb.cz, %.noexc558, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i555, %.noexc560, %bb.db, %.noexc569, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i566, %.noexc571
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.thread

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSolsEd.exit177, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit175, %_ZNSolsEd.exit152, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %lpad.loopexit603 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph650, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit144, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146, %_ZNSolsEd.exit148
  %lpad.loopexit608 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc505, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i500, %.noexc503, %bb.au, %.noexc494, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i489, %.noexc492, %bb.an, %.noexc484, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc482, %bb.al, %bb.as, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit
  %lpad.loopexit616 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp617 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %i.hj = icmp sgt i32 %i.hg, 0                   ; 2 uses
  %i.hk = load i8, ptr %i.eu, align 4, !tbaa !266, !range !90, !noundef !91
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %.preheader, label %.preheader606

._crit_edge.thread:                               ; preds = %.preheader607
  %i.hm = load i8, ptr %i.eu, align 4, !tbaa !266, !range !90, !noundef !91
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %._crit_edge656, label %._crit_edge653

.preheader606:                                    ; preds = %._crit_edge
  br i1 %i.hj, label %.lr.ph652, label %._crit_edge653

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.hj, label %.lr.ph655, label %._crit_edge656

.lr.ph655:                                        ; preds = %.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  %indvars.iv693 = phi i64 [ %indvars.iv.next694, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 ], [ 0, %.preheader ] ; 3 uses
  %i.ho = load i32, ptr %i.fh, align 8, !tbaa !273
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph655
  %i.hq = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.hr = load ptr, ptr %i.fj, align 8, !tbaa !57
  %i.hs = load ptr, ptr %i.fk, align 8, !tbaa !60 ; 3 uses
  br label %bb.ac

.preheader27.i.i:                                 ; preds = %bb.ac
  %i.ht = icmp sgt i32 %i.ig, 0
  br i1 %i.ht, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.hu = zext nneg i32 %i.ig to i64              ; 4 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !82
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !82
  %i.hz = fsub double %i.hw, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.i.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !82
  %i.ic = fdiv double %i.hz, %i.ib
  %i.id = fadd double %i.ic, f0x3EB0C6F7A0B5ED8D
  %i.ie = fptosi double %i.id to i32
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.i.i
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ig = load i32, ptr %i.fh, align 8, !tbaa !273 ; 3 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp slt i64 %indvars.iv.next.i.i, %i.ih
  br i1 %i.ii, label %bb.ac, label %.preheader27.i.i, !llvm.loop !16

bb.ad:                                            ; preds = %bb.af, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.af ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.af ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.af ]
  %9 = xor i64 %indvars.iv43.i.i, -1
  %10 = add nsw i64 %9, %i.hu                     ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.ij = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.hu
  br i1 %i.ij, label %.preheader.i.i, label %bb.ae

.preheader.i.i:                                   ; preds = %bb.ad
  %i.ik = load ptr, ptr %i.fl, align 8, !tbaa !60 ; 2 uses
  %min.iters.check883 = icmp ult i64 %10, 8
  br i1 %min.iters.check883, label %scalar.ph882.preheader, label %vector.ph884

vector.ph884:                                     ; preds = %.preheader.i.i
  %n.vec885 = and i64 %10, -8                     ; 3 uses
  %i.il = add i64 %indvars.iv38.i.i, %n.vec885
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv38.i.i
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph884
  %index887 = phi i64 [ 0, %vector.ph884 ], [ %index.next892, %vector.body886 ] ; 2 uses
  %vec.phi888 = phi <4 x i32> [ splat (i32 1), %vector.ph884 ], [ %i.ip, %vector.body886 ]
  %vec.phi889 = phi <4 x i32> [ splat (i32 1), %vector.ph884 ], [ %i.iq, %vector.body886 ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index887 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load890 = load <4 x i32>, ptr %i.in, align 4, !tbaa !83
  %wide.load891 = load <4 x i32>, ptr %i.io, align 4, !tbaa !83
  %i.ip = mul <4 x i32> %wide.load890, %vec.phi888 ; 2 uses
  %i.iq = mul <4 x i32> %wide.load891, %vec.phi889 ; 2 uses
  %index.next892 = add nuw i64 %index887, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next892, %n.vec885
  br i1 %i.ir, label %middle.block893, label %vector.body886, !llvm.loop !1030

middle.block893:                                  ; preds = %vector.body886
  %bin.rdx894 = mul <4 x i32> %i.iq, %i.ip
  %i.is = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx894) ; 2 uses
  %cmp.n895 = icmp eq i64 %10, %n.vec885
  br i1 %cmp.n895, label %.loopexit1059, label %scalar.ph882.preheader

scalar.ph882.preheader:                           ; preds = %.preheader.i.i, %middle.block893
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.il, %middle.block893 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.is, %middle.block893 ]
  br label %scalar.ph882

scalar.ph882:                                     ; preds = %scalar.ph882.preheader, %scalar.ph882
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph882 ], [ %indvars.iv40.i.i.ph, %scalar.ph882.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.iv, %scalar.ph882 ], [ %.030.i.i.ph, %scalar.ph882.preheader ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv40.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !83
  %i.iv = mul nsw i32 %i.iu, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.hu
  br i1 %exitcond.not.i.i, label %.loopexit1059, label %scalar.ph882, !llvm.loop !1031

.loopexit1059:                                    ; preds = %scalar.ph882, %middle.block893
  %.lcssa846 = phi i32 [ %i.is, %middle.block893 ], [ %i.iv, %scalar.ph882 ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv43.i.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !83
  %i.iy = mul nsw i32 %i.ix, %.lcssa846
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv43.i.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !83
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit1059
  %.pn.i.i = phi i32 [ %i.iy, %.loopexit1059 ], [ %i.ja, %bb.ae ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.hu
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.ad, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.af
  %i.jb = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit: ; preds = %.lr.ph655, %.preheader27.i.i, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %.lr.ph655 ], [ %i.jb, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.jc = load ptr, ptr %i.fm, align 8, !tbaa !250
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.jc, i64 %.021.lcssa.i.i
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !57
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv693
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !82
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %i.jg)
          to label %_ZNSolsEd.exit152 unwind label %.loopexit.split-lp.loopexit

_ZNSolsEd.exit152:                                ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154: ; preds = %_ZNSolsEd.exit152
  %i.jj = load i32, ptr %i.fh, align 8, !tbaa !273
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %.lr.ph.i.i156, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit175

.lr.ph.i.i156:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
  %i.jl = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.jm = load ptr, ptr %i.fj, align 8, !tbaa !57
  %i.jn = load ptr, ptr %i.fk, align 8, !tbaa !60 ; 3 uses
  br label %bb.ag

.preheader27.i.i159:                              ; preds = %bb.ag
  %i.jo = icmp sgt i32 %i.kb, 0
  br i1 %i.jo, label %.lr.ph33.i.i160, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit175

.lr.ph33.i.i160:                                  ; preds = %.preheader27.i.i159
  %i.jp = zext nneg i32 %i.kb to i64              ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.i156
  %indvars.iv.i.i157 = phi i64 [ 0, %.lr.ph.i.i156 ], [ %indvars.iv.next.i.i158, %bb.ag ] ; 5 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i157
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !82
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i.i157
  %i.jt = load double, ptr %i.js, align 8, !tbaa !82
  %i.ju = fsub double %i.jr, %i.jt
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i.i157
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !82
  %i.jx = fdiv double %i.ju, %i.jw
  %i.jy = fadd double %i.jx, f0x3EB0C6F7A0B5ED8D
  %i.jz = fptosi double %i.jy to i32
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i.i157
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !83
  %indvars.iv.next.i.i158 = add nuw nsw i64 %indvars.iv.i.i157, 1 ; 2 uses
  %i.kb = load i32, ptr %i.fh, align 8, !tbaa !273 ; 3 uses
  %i.kc = sext i32 %i.kb to i64
  %i.kd = icmp slt i64 %indvars.iv.next.i.i158, %i.kc
  br i1 %i.kd, label %bb.ag, label %.preheader27.i.i159, !llvm.loop !16

bb.ah:                                            ; preds = %bb.aj, %.lr.ph33.i.i160
  %indvars.iv43.i.i161 = phi i64 [ 0, %.lr.ph33.i.i160 ], [ %indvars.iv.next44.i.i164, %bb.aj ] ; 4 uses
  %indvars.iv38.i.i162 = phi i64 [ 1, %.lr.ph33.i.i160 ], [ %indvars.iv.next39.i.i167, %bb.aj ] ; 4 uses
  %.02132.i.i163 = phi i32 [ 0, %.lr.ph33.i.i160 ], [ %.1.i.i166, %bb.aj ]
  %11 = xor i64 %indvars.iv43.i.i161, -1
  %12 = add nsw i64 %11, %i.jp                    ; 3 uses
  %indvars.iv.next44.i.i164 = add nuw nsw i64 %indvars.iv43.i.i161, 1 ; 3 uses
  %i.ke = icmp samesign ult i64 %indvars.iv.next44.i.i164, %i.jp
  br i1 %i.ke, label %.preheader.i.i170, label %bb.ai

.preheader.i.i170:                                ; preds = %bb.ah
  %i.kf = load ptr, ptr %i.fl, align 8, !tbaa !60 ; 2 uses
  %min.iters.check867 = icmp ult i64 %12, 8
  br i1 %min.iters.check867, label %scalar.ph866.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.preheader.i.i170
  %n.vec869 = and i64 %12, -8                     ; 3 uses
  %i.kg = add i64 %indvars.iv38.i.i162, %n.vec869
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv38.i.i162
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph868
  %index871 = phi i64 [ 0, %vector.ph868 ], [ %index.next876, %vector.body870 ] ; 2 uses
  %vec.phi872 = phi <4 x i32> [ splat (i32 1), %vector.ph868 ], [ %i.kk, %vector.body870 ]
  %vec.phi873 = phi <4 x i32> [ splat (i32 1), %vector.ph868 ], [ %i.kl, %vector.body870 ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %index871 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load874 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !83
  %wide.load875 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !83
  %i.kk = mul <4 x i32> %wide.load874, %vec.phi872 ; 2 uses
  %i.kl = mul <4 x i32> %wide.load875, %vec.phi873 ; 2 uses
  %index.next876 = add nuw i64 %index871, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next876, %n.vec869
  br i1 %i.km, label %middle.block877, label %vector.body870, !llvm.loop !1032

middle.block877:                                  ; preds = %vector.body870
  %bin.rdx878 = mul <4 x i32> %i.kl, %i.kk
  %i.kn = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx878) ; 2 uses
  %cmp.n879 = icmp eq i64 %12, %n.vec869
  br i1 %cmp.n879, label %.loopexit1058, label %scalar.ph866.preheader

scalar.ph866.preheader:                           ; preds = %.preheader.i.i170, %middle.block877
  %indvars.iv40.i.i171.ph = phi i64 [ %indvars.iv38.i.i162, %.preheader.i.i170 ], [ %i.kg, %middle.block877 ]
  %.030.i.i172.ph = phi i32 [ 1, %.preheader.i.i170 ], [ %i.kn, %middle.block877 ]
  br label %scalar.ph866

scalar.ph866:                                     ; preds = %scalar.ph866.preheader, %scalar.ph866
  %indvars.iv40.i.i171 = phi i64 [ %indvars.iv.next41.i.i173, %scalar.ph866 ], [ %indvars.iv40.i.i171.ph, %scalar.ph866.preheader ] ; 2 uses
  %.030.i.i172 = phi i32 [ %i.kq, %scalar.ph866 ], [ %.030.i.i172.ph, %scalar.ph866.preheader ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv40.i.i171
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !83
  %i.kq = mul nsw i32 %i.kp, %.030.i.i172         ; 2 uses
  %indvars.iv.next41.i.i173 = add nuw nsw i64 %indvars.iv40.i.i171, 1 ; 2 uses
  %exitcond.not.i.i174 = icmp eq i64 %indvars.iv.next41.i.i173, %i.jp
  br i1 %exitcond.not.i.i174, label %.loopexit1058, label %scalar.ph866, !llvm.loop !1033

.loopexit1058:                                    ; preds = %scalar.ph866, %middle.block877
  %.lcssa848 = phi i32 [ %i.kn, %middle.block877 ], [ %i.kq, %scalar.ph866 ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv43.i.i161
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !83
  %i.kt = mul nsw i32 %i.ks, %.lcssa848
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv43.i.i161
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !83
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit1058
  %.pn.i.i165 = phi i32 [ %i.kt, %.loopexit1058 ], [ %i.kv, %bb.ai ]
  %.1.i.i166 = add nsw i32 %.pn.i.i165, %.02132.i.i163 ; 2 uses
  %indvars.iv.next39.i.i167 = add nuw nsw i64 %indvars.iv38.i.i162, 1
  %exitcond47.not.i.i168 = icmp eq i64 %indvars.iv.next44.i.i164, %i.jp
  br i1 %exitcond47.not.i.i168, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i169, label %bb.ah, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i169: ; preds = %bb.aj
  %i.kw = sext i32 %.1.i.i166 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit175

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit175: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154, %.preheader27.i.i159, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i169
  %.021.lcssa.i.i155 = phi i64 [ 0, %.preheader27.i.i159 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 ], [ %i.kw, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i169 ]
  %i.kx = load ptr, ptr %i.fm, align 8, !tbaa !250
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %.021.lcssa.i.i155
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !57
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv693
  %i.lb = load double, ptr %i.la, align 8, !tbaa !82
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, double noundef %i.lb)
          to label %_ZNSolsEd.exit177 unwind label %.loopexit.split-lp.loopexit

_ZNSolsEd.exit177:                                ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit175
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179: ; preds = %_ZNSolsEd.exit177
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %i.le = load i32, ptr %i.dc, align 8, !tbaa !268
  %i.lf = sext i32 %i.le to i64
  %i.lg = icmp slt i64 %indvars.iv.next694, %i.lf
  br i1 %i.lg, label %.lr.ph655, label %._crit_edge656, !llvm.loop !1034

._crit_edge656:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179, %._crit_edge.thread, %.preheader
  %i.lh = load ptr, ptr %i.bu, align 8, !tbaa !154
  %i.li = getelementptr i8, ptr %i.lh, i64 -24
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = getelementptr inbounds i8, ptr %i.bu, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 240
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i480 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i480, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge656
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 56
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !307
  %.not.i1.i.i = icmp eq i8 %i.lo, 0
  br i1 %.not.i1.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 67
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lm)
          to label %.noexc482 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc482:                                        ; preds = %bb.al
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !154
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = invoke noundef signext i8 %i.lt(ptr noundef nonnull align 8 dereferenceable(570) %i.lm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !28

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc482, %bb.ak
  %.0.i.i.i = phi i8 [ %i.lq, %bb.ak ], [ %i.lu, %.noexc482 ]
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %.0.i.i.i)
          to label %.noexc484 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc484:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lv)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc484
  %i.lx = load ptr, ptr %i.ck, align 8, !tbaa !154
  %i.ly = getelementptr i8, ptr %i.lx, i64 -24
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds i8, ptr %i.ck, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 240
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i486 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i486, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i487

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i487: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 56
  %i.me = load i8, ptr %i.md, align 8, !tbaa !307
  %.not.i1.i.i488 = icmp eq i8 %i.me, 0
  br i1 %.not.i1.i.i488, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i487
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 67
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i489

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i487
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mc)
          to label %.noexc492 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc492:                                        ; preds = %bb.an
  %i.mh = load ptr, ptr %i.mc, align 8, !tbaa !154
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = invoke noundef signext i8 %i.mj(ptr noundef nonnull align 8 dereferenceable(570) %i.mc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i489 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !28

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i489: ; preds = %.noexc492, %bb.am
  %.0.i.i.i490 = phi i8 [ %i.mg, %bb.am ], [ %i.mk, %.noexc492 ]
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef signext %.0.i.i.i490)
          to label %.noexc494 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc494:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i489
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ml)
          to label %_ZNSolsEPFRSoS_E.exit182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit182:                         ; preds = %.noexc494
  %i.mn = load i32, ptr %i.ew, align 8, !tbaa !274
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph.i.i184, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph.i.i184:                                    ; preds = %_ZNSolsEPFRSoS_E.exit182
  %i.mp = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.mq = load ptr, ptr %i.ex, align 8, !tbaa !57
  %i.mr = load ptr, ptr %i.ey, align 8, !tbaa !60 ; 3 uses
  br label %bb.ao

.preheader27.i.i187:                              ; preds = %bb.ao
  %i.ms = icmp sgt i32 %i.nf, 0
  br i1 %i.ms, label %.lr.ph33.i.i188, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph33.i.i188:                                  ; preds = %.preheader27.i.i187
  %i.mt = zext nneg i32 %i.nf to i64              ; 4 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i184
  %indvars.iv.i.i185 = phi i64 [ 0, %.lr.ph.i.i184 ], [ %indvars.iv.next.i.i186, %bb.ao ] ; 5 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i185
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !82
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.i.i185
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !82
  %i.my = fsub double %i.mv, %i.mx
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.i.i185
  %i.na = load double, ptr %i.mz, align 8, !tbaa !82
  %i.nb = fdiv double %i.my, %i.na
  %i.nc = fadd double %i.nb, f0x3EB0C6F7A0B5ED8D
  %i.nd = fptosi double %i.nc to i32
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i.i185
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !83
  %indvars.iv.next.i.i186 = add nuw nsw i64 %indvars.iv.i.i185, 1 ; 2 uses
  %i.nf = load i32, ptr %i.ew, align 8, !tbaa !274 ; 3 uses
  %i.ng = sext i32 %i.nf to i64
  %i.nh = icmp slt i64 %indvars.iv.next.i.i186, %i.ng
  br i1 %i.nh, label %bb.ao, label %.preheader27.i.i187, !llvm.loop !18

bb.ap:                                            ; preds = %bb.ar, %.lr.ph33.i.i188
  %indvars.iv43.i.i189 = phi i64 [ 0, %.lr.ph33.i.i188 ], [ %indvars.iv.next44.i.i192, %bb.ar ] ; 4 uses
  %indvars.iv38.i.i190 = phi i64 [ 1, %.lr.ph33.i.i188 ], [ %indvars.iv.next39.i.i195, %bb.ar ] ; 4 uses
  %.02132.i.i191 = phi i32 [ 0, %.lr.ph33.i.i188 ], [ %.1.i.i194, %bb.ar ]
  %13 = xor i64 %indvars.iv43.i.i189, -1
  %14 = add nsw i64 %13, %i.mt                    ; 3 uses
  %indvars.iv.next44.i.i192 = add nuw nsw i64 %indvars.iv43.i.i189, 1 ; 3 uses
  %i.ni = icmp samesign ult i64 %indvars.iv.next44.i.i192, %i.mt
  br i1 %i.ni, label %.preheader.i.i197, label %bb.aq

.preheader.i.i197:                                ; preds = %bb.ap
  %i.nj = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 2 uses
  %min.iters.check854 = icmp ult i64 %14, 8
  br i1 %min.iters.check854, label %scalar.ph853.preheader, label %vector.ph855

vector.ph855:                                     ; preds = %.preheader.i.i197
  %n.vec856 = and i64 %14, -8                     ; 3 uses
  %i.nk = add i64 %indvars.iv38.i.i190, %n.vec856
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv38.i.i190
  br label %vector.body857

vector.body857:                                   ; preds = %vector.body857, %vector.ph855
  %index858 = phi i64 [ 0, %vector.ph855 ], [ %index.next862, %vector.body857 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph855 ], [ %i.no, %vector.body857 ]
  %vec.phi859 = phi <4 x i32> [ splat (i32 1), %vector.ph855 ], [ %i.np, %vector.body857 ]
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index858 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %wide.load860 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !83
  %wide.load861 = load <4 x i32>, ptr %i.nn, align 4, !tbaa !83
  %i.no = mul <4 x i32> %wide.load860, %vec.phi   ; 2 uses
  %i.np = mul <4 x i32> %wide.load861, %vec.phi859 ; 2 uses
  %index.next862 = add nuw i64 %index858, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next862, %n.vec856
  br i1 %i.nq, label %middle.block863, label %vector.body857, !llvm.loop !1035

middle.block863:                                  ; preds = %vector.body857
  %bin.rdx = mul <4 x i32> %i.np, %i.no
  %i.nr = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n864 = icmp eq i64 %14, %n.vec856
  br i1 %cmp.n864, label %.loopexit1068, label %scalar.ph853.preheader

scalar.ph853.preheader:                           ; preds = %.preheader.i.i197, %middle.block863
  %indvars.iv40.i.i198.ph = phi i64 [ %indvars.iv38.i.i190, %.preheader.i.i197 ], [ %i.nk, %middle.block863 ]
  %.030.i.i199.ph = phi i32 [ 1, %.preheader.i.i197 ], [ %i.nr, %middle.block863 ]
  br label %scalar.ph853

scalar.ph853:                                     ; preds = %scalar.ph853.preheader, %scalar.ph853
  %indvars.iv40.i.i198 = phi i64 [ %indvars.iv.next41.i.i200, %scalar.ph853 ], [ %indvars.iv40.i.i198.ph, %scalar.ph853.preheader ] ; 2 uses
  %.030.i.i199 = phi i32 [ %i.nu, %scalar.ph853 ], [ %.030.i.i199.ph, %scalar.ph853.preheader ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv40.i.i198
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !83
  %i.nu = mul nsw i32 %i.nt, %.030.i.i199         ; 2 uses
  %indvars.iv.next41.i.i200 = add nuw nsw i64 %indvars.iv40.i.i198, 1 ; 2 uses
  %exitcond.not.i.i201 = icmp eq i64 %indvars.iv.next41.i.i200, %i.mt
  br i1 %exitcond.not.i.i201, label %.loopexit1068, label %scalar.ph853, !llvm.loop !1036

.loopexit1068:                                    ; preds = %scalar.ph853, %middle.block863
  %.lcssa850 = phi i32 [ %i.nr, %middle.block863 ], [ %i.nu, %scalar.ph853 ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv43.i.i189
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !83
  %i.nx = mul nsw i32 %i.nw, %.lcssa850
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv43.i.i189
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !83
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.loopexit1068
  %.pn.i.i193 = phi i32 [ %i.nx, %.loopexit1068 ], [ %i.nz, %bb.aq ]
  %.1.i.i194 = add nsw i32 %.pn.i.i193, %.02132.i.i191 ; 2 uses
  %indvars.iv.next39.i.i195 = add nuw nsw i64 %indvars.iv38.i.i190, 1
  %exitcond47.not.i.i196 = icmp eq i64 %indvars.iv.next44.i.i192, %i.mt
  br i1 %exitcond47.not.i.i196, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.ap, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.ar
  %i.oa = sext i32 %.1.i.i194 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit: ; preds = %_ZNSolsEPFRSoS_E.exit182, %.preheader27.i.i187, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i183 = phi i64 [ 0, %.preheader27.i.i187 ], [ 0, %_ZNSolsEPFRSoS_E.exit182 ], [ %i.oa, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.ob = load ptr, ptr %i.fa, align 8, !tbaa !60
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.021.lcssa.i.i183
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !83
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 noundef %i.od)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

bb.as:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %bb.as
  %i.og = load ptr, ptr %i.oe, align 8, !tbaa !154
  %i.oh = getelementptr i8, ptr %i.og, i64 -24
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds i8, ptr %i.oe, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 240
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i497 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i497, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i498

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i498: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  %i.on = load i8, ptr %i.om, align 8, !tbaa !307
  %.not.i1.i.i499 = icmp eq i8 %i.on, 0
  br i1 %.not.i1.i.i499, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i498
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 67
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i500

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i498
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ol)
          to label %.noexc503 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc503:                                        ; preds = %bb.au
  %i.oq = load ptr, ptr %i.ol, align 8, !tbaa !154
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = invoke noundef signext i8 %i.os(ptr noundef nonnull align 8 dereferenceable(570) %i.ol, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i500 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !28

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i500: ; preds = %.noexc503, %bb.at
  %.0.i.i.i501 = phi i8 [ %i.op, %bb.at ], [ %i.ot, %.noexc503 ]
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, i8 noundef signext %.0.i.i.i501)
          to label %.noexc505 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc505:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i500
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ou)
          to label %_ZNSolsEPFRSoS_E.exit205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.lr.ph652:                                        ; preds = %.preheader606, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381
  %indvars.iv690 = phi i64 [ %indvars.iv.next691, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381 ], [ 0, %.preheader606 ] ; 4 uses
  %i.ow = load i32, ptr %i.ew, align 8, !tbaa !274
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %.lr.ph.i.i207, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit226

.lr.ph.i.i207:                                    ; preds = %.lr.ph652
  %i.oy = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.oz = load ptr, ptr %i.ex, align 8, !tbaa !57
  %i.pa = load ptr, ptr %i.ey, align 8, !tbaa !60 ; 3 uses
  br label %bb.av

.preheader27.i.i210:                              ; preds = %bb.av
  %i.pb = icmp sgt i32 %i.po, 0
  br i1 %i.pb, label %.lr.ph33.i.i211, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit226

.lr.ph33.i.i211:                                  ; preds = %.preheader27.i.i210
  %i.pc = zext nneg i32 %i.po to i64              ; 4 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.av, %.lr.ph.i.i207
  %indvars.iv.i.i208 = phi i64 [ 0, %.lr.ph.i.i207 ], [ %indvars.iv.next.i.i209, %bb.av ] ; 5 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i208
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !82
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv.i.i208
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !82
  %i.ph = fsub double %i.pe, %i.pg
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv.i.i208
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !82
  %i.pk = fdiv double %i.ph, %i.pj
  %i.pl = fadd double %i.pk, f0x3EB0C6F7A0B5ED8D
  %i.pm = fptosi double %i.pl to i32
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv.i.i208
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !83
  %indvars.iv.next.i.i209 = add nuw nsw i64 %indvars.iv.i.i208, 1 ; 2 uses
  %i.po = load i32, ptr %i.ew, align 8, !tbaa !274 ; 3 uses
  %i.pp = sext i32 %i.po to i64
  %i.pq = icmp slt i64 %indvars.iv.next.i.i209, %i.pp
  br i1 %i.pq, label %bb.av, label %.preheader27.i.i210, !llvm.loop !18

bb.aw:                                            ; preds = %bb.ay, %.lr.ph33.i.i211
  %indvars.iv43.i.i212 = phi i64 [ 0, %.lr.ph33.i.i211 ], [ %indvars.iv.next44.i.i215, %bb.ay ] ; 4 uses
  %indvars.iv38.i.i213 = phi i64 [ 1, %.lr.ph33.i.i211 ], [ %indvars.iv.next39.i.i218, %bb.ay ] ; 4 uses
  %.02132.i.i214 = phi i32 [ 0, %.lr.ph33.i.i211 ], [ %.1.i.i217, %bb.ay ]
  %15 = xor i64 %indvars.iv43.i.i212, -1
  %16 = add nsw i64 %15, %i.pc                    ; 3 uses
  %indvars.iv.next44.i.i215 = add nuw nsw i64 %indvars.iv43.i.i212, 1 ; 3 uses
  %i.pr = icmp samesign ult i64 %indvars.iv.next44.i.i215, %i.pc
  br i1 %i.pr, label %.preheader.i.i221, label %bb.ax

.preheader.i.i221:                                ; preds = %bb.aw
  %i.ps = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1043 = icmp ult i64 %16, 8
  br i1 %min.iters.check1043, label %scalar.ph1042.preheader, label %vector.ph1044

vector.ph1044:                                    ; preds = %.preheader.i.i221
  %n.vec1045 = and i64 %16, -8                    ; 3 uses
  %i.pt = add i64 %indvars.iv38.i.i213, %n.vec1045
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv38.i.i213
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %vector.ph1044
  %index1047 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1052, %vector.body1046 ] ; 2 uses
  %vec.phi1048 = phi <4 x i32> [ splat (i32 1), %vector.ph1044 ], [ %i.px, %vector.body1046 ]
  %vec.phi1049 = phi <4 x i32> [ splat (i32 1), %vector.ph1044 ], [ %i.py, %vector.body1046 ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %index1047 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %wide.load1050 = load <4 x i32>, ptr %i.pv, align 4, !tbaa !83
  %wide.load1051 = load <4 x i32>, ptr %i.pw, align 4, !tbaa !83
  %i.px = mul <4 x i32> %wide.load1050, %vec.phi1048 ; 2 uses
  %i.py = mul <4 x i32> %wide.load1051, %vec.phi1049 ; 2 uses
  %index.next1052 = add nuw i64 %index1047, 8     ; 2 uses
  %i.pz = icmp eq i64 %index.next1052, %n.vec1045
  br i1 %i.pz, label %middle.block1053, label %vector.body1046, !llvm.loop !1037

middle.block1053:                                 ; preds = %vector.body1046
  %bin.rdx1054 = mul <4 x i32> %i.py, %i.px
  %i.qa = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1054) ; 2 uses
  %cmp.n1055 = icmp eq i64 %16, %n.vec1045
  br i1 %cmp.n1055, label %.loopexit1067, label %scalar.ph1042.preheader

scalar.ph1042.preheader:                          ; preds = %.preheader.i.i221, %middle.block1053
  %indvars.iv40.i.i222.ph = phi i64 [ %indvars.iv38.i.i213, %.preheader.i.i221 ], [ %i.pt, %middle.block1053 ]
  %.030.i.i223.ph = phi i32 [ 1, %.preheader.i.i221 ], [ %i.qa, %middle.block1053 ]
  br label %scalar.ph1042

scalar.ph1042:                                    ; preds = %scalar.ph1042.preheader, %scalar.ph1042
  %indvars.iv40.i.i222 = phi i64 [ %indvars.iv.next41.i.i224, %scalar.ph1042 ], [ %indvars.iv40.i.i222.ph, %scalar.ph1042.preheader ] ; 2 uses
  %.030.i.i223 = phi i32 [ %i.qd, %scalar.ph1042 ], [ %.030.i.i223.ph, %scalar.ph1042.preheader ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv40.i.i222
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !83
  %i.qd = mul nsw i32 %i.qc, %.030.i.i223         ; 2 uses
  %indvars.iv.next41.i.i224 = add nuw nsw i64 %indvars.iv40.i.i222, 1 ; 2 uses
  %exitcond.not.i.i225 = icmp eq i64 %indvars.iv.next41.i.i224, %i.pc
  br i1 %exitcond.not.i.i225, label %.loopexit1067, label %scalar.ph1042, !llvm.loop !1038

.loopexit1067:                                    ; preds = %scalar.ph1042, %middle.block1053
  %.lcssa826 = phi i32 [ %i.qa, %middle.block1053 ], [ %i.qd, %scalar.ph1042 ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv43.i.i212
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !83
  %i.qg = mul nsw i32 %i.qf, %.lcssa826
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv43.i.i212
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !83
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit1067
  %.pn.i.i216 = phi i32 [ %i.qg, %.loopexit1067 ], [ %i.qi, %bb.ax ]
  %.1.i.i217 = add nsw i32 %.pn.i.i216, %.02132.i.i214 ; 2 uses
  %indvars.iv.next39.i.i218 = add nuw nsw i64 %indvars.iv38.i.i213, 1
  %exitcond47.not.i.i219 = icmp eq i64 %indvars.iv.next44.i.i215, %i.pc
  br i1 %exitcond47.not.i.i219, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i220, label %bb.aw, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i220: ; preds = %bb.ay
  %i.qj = sext i32 %.1.i.i217 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit226

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit226: ; preds = %.lr.ph652, %.preheader27.i.i210, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i220
  %.021.lcssa.i.i206 = phi i64 [ 0, %.preheader27.i.i210 ], [ 0, %.lr.ph652 ], [ %i.qj, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i220 ]
  %i.qk = load ptr, ptr %i.fa, align 8, !tbaa !60 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %.021.lcssa.i.i206
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !83
  %i.qn = load i32, ptr %i.fc, align 8, !tbaa !274
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %.lr.ph.i.i228, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread

.lr.ph.i.i228:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit226
  %i.qp = load ptr, ptr %i.fb, align 8, !tbaa !57 ; 2 uses
  %i.qq = load ptr, ptr %i.fd, align 8, !tbaa !57 ; 2 uses
  %i.qr = load ptr, ptr %i.fe, align 8, !tbaa !60 ; 6 uses
  br label %bb.az

.preheader27.i.i231:                              ; preds = %bb.az
  %i.qs = icmp sgt i32 %i.rf, 0
  br i1 %i.qs, label %.lr.ph33.i.i232, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread

.lr.ph33.i.i232:                                  ; preds = %.preheader27.i.i231
  %i.qt = zext nneg i32 %i.rf to i64              ; 4 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.az, %.lr.ph.i.i228
  %indvars.iv.i.i229 = phi i64 [ 0, %.lr.ph.i.i228 ], [ %indvars.iv.next.i.i230, %bb.az ] ; 5 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i229
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !82
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %indvars.iv.i.i229
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !82
  %i.qy = fsub double %i.qv, %i.qx
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.i.i229
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !82
  %i.rb = fdiv double %i.qy, %i.ra
  %i.rc = fadd double %i.rb, f0x3EB0C6F7A0B5ED8D
  %i.rd = fptosi double %i.rc to i32
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.i.i229
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !83
  %indvars.iv.next.i.i230 = add nuw nsw i64 %indvars.iv.i.i229, 1 ; 2 uses
  %i.rf = load i32, ptr %i.fc, align 8, !tbaa !274 ; 3 uses
  %i.rg = sext i32 %i.rf to i64
  %i.rh = icmp slt i64 %indvars.iv.next.i.i230, %i.rg
  br i1 %i.rh, label %bb.az, label %.preheader27.i.i231, !llvm.loop !18

bb.ba:                                            ; preds = %bb.bc, %.lr.ph33.i.i232
  %indvars.iv43.i.i233 = phi i64 [ 0, %.lr.ph33.i.i232 ], [ %indvars.iv.next44.i.i236, %bb.bc ] ; 4 uses
  %indvars.iv38.i.i234 = phi i64 [ 1, %.lr.ph33.i.i232 ], [ %indvars.iv.next39.i.i239, %bb.bc ] ; 4 uses
  %.02132.i.i235 = phi i32 [ 0, %.lr.ph33.i.i232 ], [ %.1.i.i238, %bb.bc ]
  %17 = xor i64 %indvars.iv43.i.i233, -1
  %18 = add nsw i64 %17, %i.qt                    ; 3 uses
  %indvars.iv.next44.i.i236 = add nuw nsw i64 %indvars.iv43.i.i233, 1 ; 3 uses
  %i.ri = icmp samesign ult i64 %indvars.iv.next44.i.i236, %i.qt
  br i1 %i.ri, label %.preheader.i.i242, label %bb.bb

.preheader.i.i242:                                ; preds = %bb.ba
  %i.rj = load ptr, ptr %i.fg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1027 = icmp ult i64 %18, 8
  br i1 %min.iters.check1027, label %scalar.ph1026.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %.preheader.i.i242
  %n.vec1029 = and i64 %18, -8                    ; 3 uses
  %i.rk = add i64 %indvars.iv38.i.i234, %n.vec1029
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv38.i.i234
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1036, %vector.body1030 ] ; 2 uses
  %vec.phi1032 = phi <4 x i32> [ splat (i32 1), %vector.ph1028 ], [ %i.ro, %vector.body1030 ]
  %vec.phi1033 = phi <4 x i32> [ splat (i32 1), %vector.ph1028 ], [ %i.rp, %vector.body1030 ]
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %index1031 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %wide.load1034 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !83
  %wide.load1035 = load <4 x i32>, ptr %i.rn, align 4, !tbaa !83
  %i.ro = mul <4 x i32> %wide.load1034, %vec.phi1032 ; 2 uses
  %i.rp = mul <4 x i32> %wide.load1035, %vec.phi1033 ; 2 uses
  %index.next1036 = add nuw i64 %index1031, 8     ; 2 uses
  %i.rq = icmp eq i64 %index.next1036, %n.vec1029
  br i1 %i.rq, label %middle.block1037, label %vector.body1030, !llvm.loop !1039

middle.block1037:                                 ; preds = %vector.body1030
  %bin.rdx1038 = mul <4 x i32> %i.rp, %i.ro
  %i.rr = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1038) ; 2 uses
  %cmp.n1039 = icmp eq i64 %18, %n.vec1029
  br i1 %cmp.n1039, label %.loopexit1066, label %scalar.ph1026.preheader

scalar.ph1026.preheader:                          ; preds = %.preheader.i.i242, %middle.block1037
  %indvars.iv40.i.i243.ph = phi i64 [ %indvars.iv38.i.i234, %.preheader.i.i242 ], [ %i.rk, %middle.block1037 ]
  %.030.i.i244.ph = phi i32 [ 1, %.preheader.i.i242 ], [ %i.rr, %middle.block1037 ]
  br label %scalar.ph1026

scalar.ph1026:                                    ; preds = %scalar.ph1026.preheader, %scalar.ph1026
  %indvars.iv40.i.i243 = phi i64 [ %indvars.iv.next41.i.i245, %scalar.ph1026 ], [ %indvars.iv40.i.i243.ph, %scalar.ph1026.preheader ] ; 2 uses
  %.030.i.i244 = phi i32 [ %i.ru, %scalar.ph1026 ], [ %.030.i.i244.ph, %scalar.ph1026.preheader ]
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv40.i.i243
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !83
  %i.ru = mul nsw i32 %i.rt, %.030.i.i244         ; 2 uses
  %indvars.iv.next41.i.i245 = add nuw nsw i64 %indvars.iv40.i.i243, 1 ; 2 uses
  %exitcond.not.i.i246 = icmp eq i64 %indvars.iv.next41.i.i245, %i.qt
  br i1 %exitcond.not.i.i246, label %.loopexit1066, label %scalar.ph1026, !llvm.loop !1040

.loopexit1066:                                    ; preds = %scalar.ph1026, %middle.block1037
  %.lcssa828 = phi i32 [ %i.rr, %middle.block1037 ], [ %i.ru, %scalar.ph1026 ]
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv43.i.i233
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !83
  %i.rx = mul nsw i32 %i.rw, %.lcssa828
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv43.i.i233
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !83
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit1066
  %.pn.i.i237 = phi i32 [ %i.rx, %.loopexit1066 ], [ %i.rz, %bb.bb ]
  %.1.i.i238 = add nsw i32 %.pn.i.i237, %.02132.i.i235 ; 2 uses
  %indvars.iv.next39.i.i239 = add nuw nsw i64 %indvars.iv38.i.i234, 1
  %exitcond47.not.i.i240 = icmp eq i64 %indvars.iv.next44.i.i236, %i.qt
  br i1 %exitcond47.not.i.i240, label %.lr.ph.i.i249, label %bb.ba, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit226, %.preheader27.i.i231
  %i.sa = load ptr, ptr %i.ff, align 8, !tbaa !60 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !83
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit268

.lr.ph.i.i249:                                    ; preds = %bb.bc
  %i.sc = sext i32 %.1.i.i238 to i64
  %i.sd = load ptr, ptr %i.ff, align 8, !tbaa !60 ; 3 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.sc
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !83 ; 2 uses
  br label %bb.bd

.preheader27.i.i252:                              ; preds = %bb.bd
  %i.sg = icmp sgt i32 %i.st, 0
  br i1 %i.sg, label %.lr.ph33.i.i253, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit268

.lr.ph33.i.i253:                                  ; preds = %.preheader27.i.i252
  %i.sh = zext nneg i32 %i.st to i64              ; 4 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i249
  %indvars.iv.i.i250 = phi i64 [ 0, %.lr.ph.i.i249 ], [ %indvars.iv.next.i.i251, %bb.bd ] ; 5 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i250
  %i.sj = load double, ptr %i.si, align 8, !tbaa !82
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %indvars.iv.i.i250
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !82
  %i.sm = fsub double %i.sj, %i.sl
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.i.i250
  %i.so = load double, ptr %i.sn, align 8, !tbaa !82
  %i.sp = fdiv double %i.sm, %i.so
  %i.sq = fadd double %i.sp, f0x3EB0C6F7A0B5ED8D
  %i.sr = fptosi double %i.sq to i32
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv.i.i250
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !83
  %indvars.iv.next.i.i251 = add nuw nsw i64 %indvars.iv.i.i250, 1 ; 2 uses
  %i.st = load i32, ptr %i.fc, align 8, !tbaa !274 ; 3 uses
  %i.su = sext i32 %i.st to i64
  %i.sv = icmp slt i64 %indvars.iv.next.i.i251, %i.su
  br i1 %i.sv, label %bb.bd, label %.preheader27.i.i252, !llvm.loop !18

bb.be:                                            ; preds = %bb.bg, %.lr.ph33.i.i253
  %indvars.iv43.i.i254 = phi i64 [ 0, %.lr.ph33.i.i253 ], [ %indvars.iv.next44.i.i257, %bb.bg ] ; 4 uses
  %indvars.iv38.i.i255 = phi i64 [ 1, %.lr.ph33.i.i253 ], [ %indvars.iv.next39.i.i260, %bb.bg ] ; 4 uses
  %.02132.i.i256 = phi i32 [ 0, %.lr.ph33.i.i253 ], [ %.1.i.i259, %bb.bg ]
  %19 = xor i64 %indvars.iv43.i.i254, -1
  %20 = add nsw i64 %19, %i.sh                    ; 3 uses
  %indvars.iv.next44.i.i257 = add nuw nsw i64 %indvars.iv43.i.i254, 1 ; 3 uses
  %i.sw = icmp samesign ult i64 %indvars.iv.next44.i.i257, %i.sh
  br i1 %i.sw, label %.preheader.i.i263, label %bb.bf

.preheader.i.i263:                                ; preds = %bb.be
  %i.sx = load ptr, ptr %i.fg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check1011 = icmp ult i64 %20, 8
  br i1 %min.iters.check1011, label %scalar.ph1010.preheader, label %vector.ph1012

vector.ph1012:                                    ; preds = %.preheader.i.i263
  %n.vec1013 = and i64 %20, -8                    ; 3 uses
  %i.sy = add i64 %indvars.iv38.i.i255, %n.vec1013
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv38.i.i255
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1020, %vector.body1014 ] ; 2 uses
  %vec.phi1016 = phi <4 x i32> [ splat (i32 1), %vector.ph1012 ], [ %i.tc, %vector.body1014 ]
  %vec.phi1017 = phi <4 x i32> [ splat (i32 1), %vector.ph1012 ], [ %i.td, %vector.body1014 ]
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %index1015 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %wide.load1018 = load <4 x i32>, ptr %i.ta, align 4, !tbaa !83
  %wide.load1019 = load <4 x i32>, ptr %i.tb, align 4, !tbaa !83
  %i.tc = mul <4 x i32> %wide.load1018, %vec.phi1016 ; 2 uses
  %i.td = mul <4 x i32> %wide.load1019, %vec.phi1017 ; 2 uses
  %index.next1020 = add nuw i64 %index1015, 8     ; 2 uses
  %i.te = icmp eq i64 %index.next1020, %n.vec1013
  br i1 %i.te, label %middle.block1021, label %vector.body1014, !llvm.loop !1041

middle.block1021:                                 ; preds = %vector.body1014
  %bin.rdx1022 = mul <4 x i32> %i.td, %i.tc
  %i.tf = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1022) ; 2 uses
  %cmp.n1023 = icmp eq i64 %20, %n.vec1013
  br i1 %cmp.n1023, label %.loopexit1065, label %scalar.ph1010.preheader

scalar.ph1010.preheader:                          ; preds = %.preheader.i.i263, %middle.block1021
  %indvars.iv40.i.i264.ph = phi i64 [ %indvars.iv38.i.i255, %.preheader.i.i263 ], [ %i.sy, %middle.block1021 ]
  %.030.i.i265.ph = phi i32 [ 1, %.preheader.i.i263 ], [ %i.tf, %middle.block1021 ]
  br label %scalar.ph1010

scalar.ph1010:                                    ; preds = %scalar.ph1010.preheader, %scalar.ph1010
  %indvars.iv40.i.i264 = phi i64 [ %indvars.iv.next41.i.i266, %scalar.ph1010 ], [ %indvars.iv40.i.i264.ph, %scalar.ph1010.preheader ] ; 2 uses
  %.030.i.i265 = phi i32 [ %i.ti, %scalar.ph1010 ], [ %.030.i.i265.ph, %scalar.ph1010.preheader ]
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv40.i.i264
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !83
  %i.ti = mul nsw i32 %i.th, %.030.i.i265         ; 2 uses
  %indvars.iv.next41.i.i266 = add nuw nsw i64 %indvars.iv40.i.i264, 1 ; 2 uses
  %exitcond.not.i.i267 = icmp eq i64 %indvars.iv.next41.i.i266, %i.sh
  br i1 %exitcond.not.i.i267, label %.loopexit1065, label %scalar.ph1010, !llvm.loop !1042

.loopexit1065:                                    ; preds = %scalar.ph1010, %middle.block1021
  %.lcssa830 = phi i32 [ %i.tf, %middle.block1021 ], [ %i.ti, %scalar.ph1010 ]
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv43.i.i254
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !83
  %i.tl = mul nsw i32 %i.tk, %.lcssa830
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv43.i.i254
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !83
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.loopexit1065
  %.pn.i.i258 = phi i32 [ %i.tl, %.loopexit1065 ], [ %i.tn, %bb.bf ]
  %.1.i.i259 = add nsw i32 %.pn.i.i258, %.02132.i.i256 ; 2 uses
  %indvars.iv.next39.i.i260 = add nuw nsw i64 %indvars.iv38.i.i255, 1
  %exitcond47.not.i.i261 = icmp eq i64 %indvars.iv.next44.i.i257, %i.sh
  br i1 %exitcond47.not.i.i261, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i262, label %bb.be, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i262: ; preds = %bb.bg
  %i.to = sext i32 %.1.i.i259 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit268

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit268: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread, %.preheader27.i.i252, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i262
  %i.tp = phi i32 [ %i.sf, %.preheader27.i.i252 ], [ %i.sb, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread ], [ %i.sf, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i262 ]
  %i.tq = phi ptr [ %i.sd, %.preheader27.i.i252 ], [ %i.sa, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread ], [ %i.sd, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i262 ] ; 2 uses
  %.021.lcssa.i.i248 = phi i64 [ 0, %.preheader27.i.i252 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit247.thread ], [ %i.to, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i262 ]
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.021.lcssa.i.i248
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !83
  %i.tt = icmp eq i32 %i.ts, 0
  br i1 %i.tt, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit268
  %i.tu = load i32, ptr %i.fh, align 8, !tbaa !273
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %.lr.ph.i.i270, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit289

.lr.ph.i.i270:                                    ; preds = %bb.bh
  %i.tw = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.tx = load ptr, ptr %i.fj, align 8, !tbaa !57
  %i.ty = load ptr, ptr %i.fk, align 8, !tbaa !60 ; 3 uses
  br label %bb.bi

.preheader27.i.i273:                              ; preds = %bb.bi
  %i.tz = icmp sgt i32 %i.um, 0
  br i1 %i.tz, label %.lr.ph33.i.i274, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit289

.lr.ph33.i.i274:                                  ; preds = %.preheader27.i.i273
  %i.ua = zext nneg i32 %i.um to i64              ; 4 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i.i270
  %indvars.iv.i.i271 = phi i64 [ 0, %.lr.ph.i.i270 ], [ %indvars.iv.next.i.i272, %bb.bi ] ; 5 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i271
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !82
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.i.i271
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !82
  %i.uf = fsub double %i.uc, %i.ue
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.i.i271
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !82
  %i.ui = fdiv double %i.uf, %i.uh
  %i.uj = fadd double %i.ui, f0x3EB0C6F7A0B5ED8D
  %i.uk = fptosi double %i.uj to i32
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv.i.i271
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !83
  %indvars.iv.next.i.i272 = add nuw nsw i64 %indvars.iv.i.i271, 1 ; 2 uses
  %i.um = load i32, ptr %i.fh, align 8, !tbaa !273 ; 3 uses
  %i.un = sext i32 %i.um to i64
  %i.uo = icmp slt i64 %indvars.iv.next.i.i272, %i.un
  br i1 %i.uo, label %bb.bi, label %.preheader27.i.i273, !llvm.loop !16

bb.bj:                                            ; preds = %bb.bl, %.lr.ph33.i.i274
  %indvars.iv43.i.i275 = phi i64 [ 0, %.lr.ph33.i.i274 ], [ %indvars.iv.next44.i.i278, %bb.bl ] ; 4 uses
  %indvars.iv38.i.i276 = phi i64 [ 1, %.lr.ph33.i.i274 ], [ %indvars.iv.next39.i.i281, %bb.bl ] ; 4 uses
  %.02132.i.i277 = phi i32 [ 0, %.lr.ph33.i.i274 ], [ %.1.i.i280, %bb.bl ]
  %21 = xor i64 %indvars.iv43.i.i275, -1
  %22 = add nsw i64 %21, %i.ua                    ; 3 uses
  %indvars.iv.next44.i.i278 = add nuw nsw i64 %indvars.iv43.i.i275, 1 ; 3 uses
  %i.up = icmp samesign ult i64 %indvars.iv.next44.i.i278, %i.ua
  br i1 %i.up, label %.preheader.i.i284, label %bb.bk

.preheader.i.i284:                                ; preds = %bb.bj
  %i.uq = load ptr, ptr %i.fl, align 8, !tbaa !60 ; 2 uses
  %min.iters.check931 = icmp ult i64 %22, 8
  br i1 %min.iters.check931, label %scalar.ph930.preheader, label %vector.ph932

vector.ph932:                                     ; preds = %.preheader.i.i284
  %n.vec933 = and i64 %22, -8                     ; 3 uses
  %i.ur = add i64 %indvars.iv38.i.i276, %n.vec933
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv38.i.i276
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph932
  %index935 = phi i64 [ 0, %vector.ph932 ], [ %index.next940, %vector.body934 ] ; 2 uses
  %vec.phi936 = phi <4 x i32> [ splat (i32 1), %vector.ph932 ], [ %i.uv, %vector.body934 ]
  %vec.phi937 = phi <4 x i32> [ splat (i32 1), %vector.ph932 ], [ %i.uw, %vector.body934 ]
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %index935 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %wide.load938 = load <4 x i32>, ptr %i.ut, align 4, !tbaa !83
  %wide.load939 = load <4 x i32>, ptr %i.uu, align 4, !tbaa !83
  %i.uv = mul <4 x i32> %wide.load938, %vec.phi936 ; 2 uses
  %i.uw = mul <4 x i32> %wide.load939, %vec.phi937 ; 2 uses
  %index.next940 = add nuw i64 %index935, 8       ; 2 uses
  %i.ux = icmp eq i64 %index.next940, %n.vec933
  br i1 %i.ux, label %middle.block941, label %vector.body934, !llvm.loop !1043

middle.block941:                                  ; preds = %vector.body934
  %bin.rdx942 = mul <4 x i32> %i.uw, %i.uv
  %i.uy = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx942) ; 2 uses
  %cmp.n943 = icmp eq i64 %22, %n.vec933
  br i1 %cmp.n943, label %.loopexit1060, label %scalar.ph930.preheader

scalar.ph930.preheader:                           ; preds = %.preheader.i.i284, %middle.block941
  %indvars.iv40.i.i285.ph = phi i64 [ %indvars.iv38.i.i276, %.preheader.i.i284 ], [ %i.ur, %middle.block941 ]
  %.030.i.i286.ph = phi i32 [ 1, %.preheader.i.i284 ], [ %i.uy, %middle.block941 ]
  br label %scalar.ph930

scalar.ph930:                                     ; preds = %scalar.ph930.preheader, %scalar.ph930
  %indvars.iv40.i.i285 = phi i64 [ %indvars.iv.next41.i.i287, %scalar.ph930 ], [ %indvars.iv40.i.i285.ph, %scalar.ph930.preheader ] ; 2 uses
  %.030.i.i286 = phi i32 [ %i.vb, %scalar.ph930 ], [ %.030.i.i286.ph, %scalar.ph930.preheader ]
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv40.i.i285
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !83
  %i.vb = mul nsw i32 %i.va, %.030.i.i286         ; 2 uses
  %indvars.iv.next41.i.i287 = add nuw nsw i64 %indvars.iv40.i.i285, 1 ; 2 uses
  %exitcond.not.i.i288 = icmp eq i64 %indvars.iv.next41.i.i287, %i.ua
  br i1 %exitcond.not.i.i288, label %.loopexit1060, label %scalar.ph930, !llvm.loop !1044

.loopexit1060:                                    ; preds = %scalar.ph930, %middle.block941
  %.lcssa840 = phi i32 [ %i.uy, %middle.block941 ], [ %i.vb, %scalar.ph930 ]
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv43.i.i275
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !83
  %i.ve = mul nsw i32 %i.vd, %.lcssa840
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv43.i.i275
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !83
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit1060
  %.pn.i.i279 = phi i32 [ %i.ve, %.loopexit1060 ], [ %i.vg, %bb.bk ]
  %.1.i.i280 = add nsw i32 %.pn.i.i279, %.02132.i.i277 ; 2 uses
  %indvars.iv.next39.i.i281 = add nuw nsw i64 %indvars.iv38.i.i276, 1
  %exitcond47.not.i.i282 = icmp eq i64 %indvars.iv.next44.i.i278, %i.ua
  br i1 %exitcond47.not.i.i282, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i283, label %bb.bj, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i283: ; preds = %bb.bl
  %i.vh = sext i32 %.1.i.i280 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit289

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit289: ; preds = %bb.bh, %.preheader27.i.i273, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i283
  %.021.lcssa.i.i269 = phi i64 [ 0, %.preheader27.i.i273 ], [ 0, %bb.bh ], [ %i.vh, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i283 ]
  %i.vi = load ptr, ptr %i.fm, align 8, !tbaa !250
  %i.vj = getelementptr inbounds nuw [24 x i8], ptr %i.vi, i64 %.021.lcssa.i.i269
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !57
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv690
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !82
  br label %bb.cd

bb.bm:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit268
  %i.vn = add nsw i32 %i.tp, %i.qm
  %i.vo = load i32, ptr %i.fh, align 8, !tbaa !273
  %i.vp = icmp sgt i32 %i.vo, 0
  br i1 %i.vp, label %.lr.ph.i.i291, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310

.lr.ph.i.i291:                                    ; preds = %bb.bm
  %i.vq = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.vr = load ptr, ptr %i.fj, align 8, !tbaa !57
  %i.vs = load ptr, ptr %i.fk, align 8, !tbaa !60 ; 3 uses
  br label %bb.bn

.preheader27.i.i294:                              ; preds = %bb.bn
  %i.vt = icmp sgt i32 %i.wg, 0
  br i1 %i.vt, label %.lr.ph33.i.i295, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310

.lr.ph33.i.i295:                                  ; preds = %.preheader27.i.i294
  %i.vu = zext nneg i32 %i.wg to i64              ; 4 uses
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i.i291
  %indvars.iv.i.i292 = phi i64 [ 0, %.lr.ph.i.i291 ], [ %indvars.iv.next.i.i293, %bb.bn ] ; 5 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i292
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !82
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.i.i292
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !82
  %i.vz = fsub double %i.vw, %i.vy
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.i.i292
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !82
  %i.wc = fdiv double %i.vz, %i.wb
  %i.wd = fadd double %i.wc, f0x3EB0C6F7A0B5ED8D
  %i.we = fptosi double %i.wd to i32
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv.i.i292
  store i32 %i.we, ptr %i.wf, align 4, !tbaa !83
  %indvars.iv.next.i.i293 = add nuw nsw i64 %indvars.iv.i.i292, 1 ; 2 uses
  %i.wg = load i32, ptr %i.fh, align 8, !tbaa !273 ; 3 uses
  %i.wh = sext i32 %i.wg to i64
  %i.wi = icmp slt i64 %indvars.iv.next.i.i293, %i.wh
  br i1 %i.wi, label %bb.bn, label %.preheader27.i.i294, !llvm.loop !16

bb.bo:                                            ; preds = %bb.bq, %.lr.ph33.i.i295
  %indvars.iv43.i.i296 = phi i64 [ 0, %.lr.ph33.i.i295 ], [ %indvars.iv.next44.i.i299, %bb.bq ] ; 4 uses
  %indvars.iv38.i.i297 = phi i64 [ 1, %.lr.ph33.i.i295 ], [ %indvars.iv.next39.i.i302, %bb.bq ] ; 4 uses
  %.02132.i.i298 = phi i32 [ 0, %.lr.ph33.i.i295 ], [ %.1.i.i301, %bb.bq ]
  %23 = xor i64 %indvars.iv43.i.i296, -1
  %24 = add nsw i64 %23, %i.vu                    ; 3 uses
  %indvars.iv.next44.i.i299 = add nuw nsw i64 %indvars.iv43.i.i296, 1 ; 3 uses
  %i.wj = icmp samesign ult i64 %indvars.iv.next44.i.i299, %i.vu
  br i1 %i.wj, label %.preheader.i.i305, label %bb.bp

.preheader.i.i305:                                ; preds = %bb.bo
  %i.wk = load ptr, ptr %i.fl, align 8, !tbaa !60 ; 2 uses
  %min.iters.check995 = icmp ult i64 %24, 8
  br i1 %min.iters.check995, label %scalar.ph994.preheader, label %vector.ph996

vector.ph996:                                     ; preds = %.preheader.i.i305
  %n.vec997 = and i64 %24, -8                     ; 3 uses
  %i.wl = add i64 %indvars.iv38.i.i297, %n.vec997
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv38.i.i297
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1004, %vector.body998 ] ; 2 uses
  %vec.phi1000 = phi <4 x i32> [ splat (i32 1), %vector.ph996 ], [ %i.wp, %vector.body998 ]
  %vec.phi1001 = phi <4 x i32> [ splat (i32 1), %vector.ph996 ], [ %i.wq, %vector.body998 ]
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %index999 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %wide.load1002 = load <4 x i32>, ptr %i.wn, align 4, !tbaa !83
  %wide.load1003 = load <4 x i32>, ptr %i.wo, align 4, !tbaa !83
  %i.wp = mul <4 x i32> %wide.load1002, %vec.phi1000 ; 2 uses
  %i.wq = mul <4 x i32> %wide.load1003, %vec.phi1001 ; 2 uses
  %index.next1004 = add nuw i64 %index999, 8      ; 2 uses
  %i.wr = icmp eq i64 %index.next1004, %n.vec997
  br i1 %i.wr, label %middle.block1005, label %vector.body998, !llvm.loop !1045

middle.block1005:                                 ; preds = %vector.body998
  %bin.rdx1006 = mul <4 x i32> %i.wq, %i.wp
  %i.ws = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1006) ; 2 uses
  %cmp.n1007 = icmp eq i64 %24, %n.vec997
  br i1 %cmp.n1007, label %.loopexit1064, label %scalar.ph994.preheader

scalar.ph994.preheader:                           ; preds = %.preheader.i.i305, %middle.block1005
  %indvars.iv40.i.i306.ph = phi i64 [ %indvars.iv38.i.i297, %.preheader.i.i305 ], [ %i.wl, %middle.block1005 ]
  %.030.i.i307.ph = phi i32 [ 1, %.preheader.i.i305 ], [ %i.ws, %middle.block1005 ]
  br label %scalar.ph994

scalar.ph994:                                     ; preds = %scalar.ph994.preheader, %scalar.ph994
  %indvars.iv40.i.i306 = phi i64 [ %indvars.iv.next41.i.i308, %scalar.ph994 ], [ %indvars.iv40.i.i306.ph, %scalar.ph994.preheader ] ; 2 uses
  %.030.i.i307 = phi i32 [ %i.wv, %scalar.ph994 ], [ %.030.i.i307.ph, %scalar.ph994.preheader ]
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv40.i.i306
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !83
  %i.wv = mul nsw i32 %i.wu, %.030.i.i307         ; 2 uses
  %indvars.iv.next41.i.i308 = add nuw nsw i64 %indvars.iv40.i.i306, 1 ; 2 uses
  %exitcond.not.i.i309 = icmp eq i64 %indvars.iv.next41.i.i308, %i.vu
  br i1 %exitcond.not.i.i309, label %.loopexit1064, label %scalar.ph994, !llvm.loop !1046

.loopexit1064:                                    ; preds = %scalar.ph994, %middle.block1005
  %.lcssa832 = phi i32 [ %i.ws, %middle.block1005 ], [ %i.wv, %scalar.ph994 ]
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv43.i.i296
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !83
  %i.wy = mul nsw i32 %i.wx, %.lcssa832
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv43.i.i296
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !83
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit1064
  %.pn.i.i300 = phi i32 [ %i.wy, %.loopexit1064 ], [ %i.xa, %bb.bp ]
  %.1.i.i301 = add nsw i32 %.pn.i.i300, %.02132.i.i298 ; 2 uses
  %indvars.iv.next39.i.i302 = add nuw nsw i64 %indvars.iv38.i.i297, 1
  %exitcond47.not.i.i303 = icmp eq i64 %indvars.iv.next44.i.i299, %i.vu
  br i1 %exitcond47.not.i.i303, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i304, label %bb.bo, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i304: ; preds = %bb.bq
  %i.xb = sext i32 %.1.i.i301 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310: ; preds = %bb.bm, %.preheader27.i.i294, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i304
  %.021.lcssa.i.i290 = phi i64 [ 0, %.preheader27.i.i294 ], [ 0, %bb.bm ], [ %i.xb, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i304 ]
  %i.xc = load ptr, ptr %i.fm, align 8, !tbaa !250
  %i.xd = getelementptr inbounds nuw [24 x i8], ptr %i.xc, i64 %.021.lcssa.i.i290
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !57
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv690
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !82
  %i.xh = load i32, ptr %i.ew, align 8, !tbaa !274
  %i.xi = icmp sgt i32 %i.xh, 0
  br i1 %i.xi, label %.lr.ph.i.i312, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331

.lr.ph.i.i312:                                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310
  %i.xj = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.xk = load ptr, ptr %i.ex, align 8, !tbaa !57
  %i.xl = load ptr, ptr %i.ey, align 8, !tbaa !60 ; 3 uses
  br label %bb.br

.preheader27.i.i315:                              ; preds = %bb.br
  %i.xm = icmp sgt i32 %i.xz, 0
  br i1 %i.xm, label %.lr.ph33.i.i316, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331

.lr.ph33.i.i316:                                  ; preds = %.preheader27.i.i315
  %i.xn = zext nneg i32 %i.xz to i64              ; 4 uses
  br label %bb.bs

bb.br:                                            ; preds = %bb.br, %.lr.ph.i.i312
  %indvars.iv.i.i313 = phi i64 [ 0, %.lr.ph.i.i312 ], [ %indvars.iv.next.i.i314, %bb.br ] ; 5 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i313
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !82
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv.i.i313
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !82
  %i.xs = fsub double %i.xp, %i.xr
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv.i.i313
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !82
  %i.xv = fdiv double %i.xs, %i.xu
  %i.xw = fadd double %i.xv, f0x3EB0C6F7A0B5ED8D
  %i.xx = fptosi double %i.xw to i32
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %indvars.iv.i.i313
  store i32 %i.xx, ptr %i.xy, align 4, !tbaa !83
  %indvars.iv.next.i.i314 = add nuw nsw i64 %indvars.iv.i.i313, 1 ; 2 uses
  %i.xz = load i32, ptr %i.ew, align 8, !tbaa !274 ; 3 uses
  %i.ya = sext i32 %i.xz to i64
  %i.yb = icmp slt i64 %indvars.iv.next.i.i314, %i.ya
  br i1 %i.yb, label %bb.br, label %.preheader27.i.i315, !llvm.loop !18

bb.bs:                                            ; preds = %bb.bu, %.lr.ph33.i.i316
  %indvars.iv43.i.i317 = phi i64 [ 0, %.lr.ph33.i.i316 ], [ %indvars.iv.next44.i.i320, %bb.bu ] ; 4 uses
  %indvars.iv38.i.i318 = phi i64 [ 1, %.lr.ph33.i.i316 ], [ %indvars.iv.next39.i.i323, %bb.bu ] ; 4 uses
  %.02132.i.i319 = phi i32 [ 0, %.lr.ph33.i.i316 ], [ %.1.i.i322, %bb.bu ]
  %25 = xor i64 %indvars.iv43.i.i317, -1
  %26 = add nsw i64 %25, %i.xn                    ; 3 uses
  %indvars.iv.next44.i.i320 = add nuw nsw i64 %indvars.iv43.i.i317, 1 ; 3 uses
  %i.yc = icmp samesign ult i64 %indvars.iv.next44.i.i320, %i.xn
  br i1 %i.yc, label %.preheader.i.i326, label %bb.bt

.preheader.i.i326:                                ; preds = %bb.bs
  %i.yd = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 2 uses
  %min.iters.check979 = icmp ult i64 %26, 8
  br i1 %min.iters.check979, label %scalar.ph978.preheader, label %vector.ph980

vector.ph980:                                     ; preds = %.preheader.i.i326
  %n.vec981 = and i64 %26, -8                     ; 3 uses
  %i.ye = add i64 %indvars.iv38.i.i318, %n.vec981
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv38.i.i318
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %vector.ph980
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next988, %vector.body982 ] ; 2 uses
  %vec.phi984 = phi <4 x i32> [ splat (i32 1), %vector.ph980 ], [ %i.yi, %vector.body982 ]
  %vec.phi985 = phi <4 x i32> [ splat (i32 1), %vector.ph980 ], [ %i.yj, %vector.body982 ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index983 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %wide.load986 = load <4 x i32>, ptr %i.yg, align 4, !tbaa !83
  %wide.load987 = load <4 x i32>, ptr %i.yh, align 4, !tbaa !83
  %i.yi = mul <4 x i32> %wide.load986, %vec.phi984 ; 2 uses
  %i.yj = mul <4 x i32> %wide.load987, %vec.phi985 ; 2 uses
  %index.next988 = add nuw i64 %index983, 8       ; 2 uses
  %i.yk = icmp eq i64 %index.next988, %n.vec981
  br i1 %i.yk, label %middle.block989, label %vector.body982, !llvm.loop !1047

middle.block989:                                  ; preds = %vector.body982
  %bin.rdx990 = mul <4 x i32> %i.yj, %i.yi
  %i.yl = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx990) ; 2 uses
  %cmp.n991 = icmp eq i64 %26, %n.vec981
  br i1 %cmp.n991, label %.loopexit1063, label %scalar.ph978.preheader

scalar.ph978.preheader:                           ; preds = %.preheader.i.i326, %middle.block989
  %indvars.iv40.i.i327.ph = phi i64 [ %indvars.iv38.i.i318, %.preheader.i.i326 ], [ %i.ye, %middle.block989 ]
  %.030.i.i328.ph = phi i32 [ 1, %.preheader.i.i326 ], [ %i.yl, %middle.block989 ]
  br label %scalar.ph978

scalar.ph978:                                     ; preds = %scalar.ph978.preheader, %scalar.ph978
  %indvars.iv40.i.i327 = phi i64 [ %indvars.iv.next41.i.i329, %scalar.ph978 ], [ %indvars.iv40.i.i327.ph, %scalar.ph978.preheader ] ; 2 uses
  %.030.i.i328 = phi i32 [ %i.yo, %scalar.ph978 ], [ %.030.i.i328.ph, %scalar.ph978.preheader ]
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv40.i.i327
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !83
  %i.yo = mul nsw i32 %i.yn, %.030.i.i328         ; 2 uses
  %indvars.iv.next41.i.i329 = add nuw nsw i64 %indvars.iv40.i.i327, 1 ; 2 uses
  %exitcond.not.i.i330 = icmp eq i64 %indvars.iv.next41.i.i329, %i.xn
  br i1 %exitcond.not.i.i330, label %.loopexit1063, label %scalar.ph978, !llvm.loop !1048

.loopexit1063:                                    ; preds = %scalar.ph978, %middle.block989
  %.lcssa834 = phi i32 [ %i.yl, %middle.block989 ], [ %i.yo, %scalar.ph978 ]
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %indvars.iv43.i.i317
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !83
  %i.yr = mul nsw i32 %i.yq, %.lcssa834
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %indvars.iv43.i.i317
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !83
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.loopexit1063
  %.pn.i.i321 = phi i32 [ %i.yr, %.loopexit1063 ], [ %i.yt, %bb.bt ]
  %.1.i.i322 = add nsw i32 %.pn.i.i321, %.02132.i.i319 ; 2 uses
  %indvars.iv.next39.i.i323 = add nuw nsw i64 %indvars.iv38.i.i318, 1
  %exitcond47.not.i.i324 = icmp eq i64 %indvars.iv.next44.i.i320, %i.xn
  br i1 %exitcond47.not.i.i324, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i325, label %bb.bs, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i325: ; preds = %bb.bu
  %i.yu = sext i32 %.1.i.i322 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310, %.preheader27.i.i315, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i325
  %.021.lcssa.i.i311 = phi i64 [ 0, %.preheader27.i.i315 ], [ 0, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit310 ], [ %i.yu, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i325 ]
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %.021.lcssa.i.i311
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !83
  %i.yx = sitofp i32 %i.yw to double
  %i.yy = load i32, ptr %i.fn, align 8, !tbaa !273
  %i.yz = icmp sgt i32 %i.yy, 0
  br i1 %i.yz, label %.lr.ph.i.i333, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352

.lr.ph.i.i333:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331
  %i.za = load ptr, ptr %i.fo, align 8, !tbaa !57
  %i.zb = load ptr, ptr %i.fp, align 8, !tbaa !57
  %i.zc = load ptr, ptr %i.fq, align 8, !tbaa !60 ; 3 uses
  br label %bb.bv

.preheader27.i.i336:                              ; preds = %bb.bv
  %i.zd = icmp sgt i32 %i.zq, 0
  br i1 %i.zd, label %.lr.ph33.i.i337, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352

.lr.ph33.i.i337:                                  ; preds = %.preheader27.i.i336
  %i.ze = zext nneg i32 %i.zq to i64              ; 4 uses
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i.i333
  %indvars.iv.i.i334 = phi i64 [ 0, %.lr.ph.i.i333 ], [ %indvars.iv.next.i.i335, %bb.bv ] ; 5 uses
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i334
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !82
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %indvars.iv.i.i334
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !82
  %i.zj = fsub double %i.zg, %i.zi
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %indvars.iv.i.i334
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !82
  %i.zm = fdiv double %i.zj, %i.zl
  %i.zn = fadd double %i.zm, f0x3EB0C6F7A0B5ED8D
  %i.zo = fptosi double %i.zn to i32
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %indvars.iv.i.i334
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !83
  %indvars.iv.next.i.i335 = add nuw nsw i64 %indvars.iv.i.i334, 1 ; 2 uses
  %i.zq = load i32, ptr %i.fn, align 8, !tbaa !273 ; 3 uses
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp slt i64 %indvars.iv.next.i.i335, %i.zr
  br i1 %i.zs, label %bb.bv, label %.preheader27.i.i336, !llvm.loop !16

bb.bw:                                            ; preds = %bb.by, %.lr.ph33.i.i337
  %indvars.iv43.i.i338 = phi i64 [ 0, %.lr.ph33.i.i337 ], [ %indvars.iv.next44.i.i341, %bb.by ] ; 4 uses
  %indvars.iv38.i.i339 = phi i64 [ 1, %.lr.ph33.i.i337 ], [ %indvars.iv.next39.i.i344, %bb.by ] ; 4 uses
  %.02132.i.i340 = phi i32 [ 0, %.lr.ph33.i.i337 ], [ %.1.i.i343, %bb.by ]
  %27 = xor i64 %indvars.iv43.i.i338, -1
  %28 = add nsw i64 %27, %i.ze                    ; 3 uses
  %indvars.iv.next44.i.i341 = add nuw nsw i64 %indvars.iv43.i.i338, 1 ; 3 uses
  %i.zt = icmp samesign ult i64 %indvars.iv.next44.i.i341, %i.ze
  br i1 %i.zt, label %.preheader.i.i347, label %bb.bx

.preheader.i.i347:                                ; preds = %bb.bw
  %i.zu = load ptr, ptr %i.fr, align 8, !tbaa !60 ; 2 uses
  %min.iters.check963 = icmp ult i64 %28, 8
  br i1 %min.iters.check963, label %scalar.ph962.preheader, label %vector.ph964

vector.ph964:                                     ; preds = %.preheader.i.i347
  %n.vec965 = and i64 %28, -8                     ; 3 uses
  %i.zv = add i64 %indvars.iv38.i.i339, %n.vec965
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv38.i.i339
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph964
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next972, %vector.body966 ] ; 2 uses
  %vec.phi968 = phi <4 x i32> [ splat (i32 1), %vector.ph964 ], [ %i.zz, %vector.body966 ]
  %vec.phi969 = phi <4 x i32> [ splat (i32 1), %vector.ph964 ], [ %i.aaa, %vector.body966 ]
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %index967 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %wide.load970 = load <4 x i32>, ptr %i.zx, align 4, !tbaa !83
  %wide.load971 = load <4 x i32>, ptr %i.zy, align 4, !tbaa !83
  %i.zz = mul <4 x i32> %wide.load970, %vec.phi968 ; 2 uses
  %i.aaa = mul <4 x i32> %wide.load971, %vec.phi969 ; 2 uses
  %index.next972 = add nuw i64 %index967, 8       ; 2 uses
  %i.aab = icmp eq i64 %index.next972, %n.vec965
  br i1 %i.aab, label %middle.block973, label %vector.body966, !llvm.loop !1049

middle.block973:                                  ; preds = %vector.body966
  %bin.rdx974 = mul <4 x i32> %i.aaa, %i.zz
  %i.aac = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx974) ; 2 uses
  %cmp.n975 = icmp eq i64 %28, %n.vec965
  br i1 %cmp.n975, label %.loopexit1062, label %scalar.ph962.preheader

scalar.ph962.preheader:                           ; preds = %.preheader.i.i347, %middle.block973
  %indvars.iv40.i.i348.ph = phi i64 [ %indvars.iv38.i.i339, %.preheader.i.i347 ], [ %i.zv, %middle.block973 ]
  %.030.i.i349.ph = phi i32 [ 1, %.preheader.i.i347 ], [ %i.aac, %middle.block973 ]
  br label %scalar.ph962

scalar.ph962:                                     ; preds = %scalar.ph962.preheader, %scalar.ph962
  %indvars.iv40.i.i348 = phi i64 [ %indvars.iv.next41.i.i350, %scalar.ph962 ], [ %indvars.iv40.i.i348.ph, %scalar.ph962.preheader ] ; 2 uses
  %.030.i.i349 = phi i32 [ %i.aaf, %scalar.ph962 ], [ %.030.i.i349.ph, %scalar.ph962.preheader ]
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv40.i.i348
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !83
  %i.aaf = mul nsw i32 %i.aae, %.030.i.i349       ; 2 uses
  %indvars.iv.next41.i.i350 = add nuw nsw i64 %indvars.iv40.i.i348, 1 ; 2 uses
  %exitcond.not.i.i351 = icmp eq i64 %indvars.iv.next41.i.i350, %i.ze
  br i1 %exitcond.not.i.i351, label %.loopexit1062, label %scalar.ph962, !llvm.loop !1050

.loopexit1062:                                    ; preds = %scalar.ph962, %middle.block973
  %.lcssa836 = phi i32 [ %i.aac, %middle.block973 ], [ %i.aaf, %scalar.ph962 ]
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %indvars.iv43.i.i338
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !83
  %i.aai = mul nsw i32 %i.aah, %.lcssa836
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %indvars.iv43.i.i338
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !83
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.loopexit1062
  %.pn.i.i342 = phi i32 [ %i.aai, %.loopexit1062 ], [ %i.aak, %bb.bx ]
  %.1.i.i343 = add nsw i32 %.pn.i.i342, %.02132.i.i340 ; 2 uses
  %indvars.iv.next39.i.i344 = add nuw nsw i64 %indvars.iv38.i.i339, 1
  %exitcond47.not.i.i345 = icmp eq i64 %indvars.iv.next44.i.i341, %i.ze
  br i1 %exitcond47.not.i.i345, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i346, label %bb.bw, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i346: ; preds = %bb.by
  %i.aal = sext i32 %.1.i.i343 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331, %.preheader27.i.i336, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i346
  %.021.lcssa.i.i332 = phi i64 [ 0, %.preheader27.i.i336 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit331 ], [ %i.aal, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i346 ]
  %i.aam = load ptr, ptr %i.fs, align 8, !tbaa !250
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.aam, i64 %.021.lcssa.i.i332
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !57
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %indvars.iv690
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !82
  %i.aar = load i32, ptr %i.fc, align 8, !tbaa !274
  %i.aas = icmp sgt i32 %i.aar, 0
  br i1 %i.aas, label %.lr.ph.i.i354, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit373

.lr.ph.i.i354:                                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352
  %i.aat = load ptr, ptr %i.fb, align 8, !tbaa !57
  %i.aau = load ptr, ptr %i.fd, align 8, !tbaa !57
  %i.aav = load ptr, ptr %i.fe, align 8, !tbaa !60 ; 3 uses
  br label %bb.bz

.preheader27.i.i357:                              ; preds = %bb.bz
  %i.aaw = icmp sgt i32 %i.abj, 0
  br i1 %i.aaw, label %.lr.ph33.i.i358, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit373

.lr.ph33.i.i358:                                  ; preds = %.preheader27.i.i357
  %i.aax = zext nneg i32 %i.abj to i64            ; 4 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bz, %.lr.ph.i.i354
  %indvars.iv.i.i355 = phi i64 [ 0, %.lr.ph.i.i354 ], [ %indvars.iv.next.i.i356, %bb.bz ] ; 5 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i355
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !82
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %indvars.iv.i.i355
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !82
  %i.abc = fsub double %i.aaz, %i.abb
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %indvars.iv.i.i355
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !82
  %i.abf = fdiv double %i.abc, %i.abe
  %i.abg = fadd double %i.abf, f0x3EB0C6F7A0B5ED8D
  %i.abh = fptosi double %i.abg to i32
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv.i.i355
  store i32 %i.abh, ptr %i.abi, align 4, !tbaa !83
  %indvars.iv.next.i.i356 = add nuw nsw i64 %indvars.iv.i.i355, 1 ; 2 uses
  %i.abj = load i32, ptr %i.fc, align 8, !tbaa !274 ; 3 uses
  %i.abk = sext i32 %i.abj to i64
  %i.abl = icmp slt i64 %indvars.iv.next.i.i356, %i.abk
  br i1 %i.abl, label %bb.bz, label %.preheader27.i.i357, !llvm.loop !18

bb.ca:                                            ; preds = %bb.cc, %.lr.ph33.i.i358
  %indvars.iv43.i.i359 = phi i64 [ 0, %.lr.ph33.i.i358 ], [ %indvars.iv.next44.i.i362, %bb.cc ] ; 4 uses
  %indvars.iv38.i.i360 = phi i64 [ 1, %.lr.ph33.i.i358 ], [ %indvars.iv.next39.i.i365, %bb.cc ] ; 4 uses
  %.02132.i.i361 = phi i32 [ 0, %.lr.ph33.i.i358 ], [ %.1.i.i364, %bb.cc ]
  %29 = xor i64 %indvars.iv43.i.i359, -1
  %30 = add nsw i64 %29, %i.aax                   ; 3 uses
  %indvars.iv.next44.i.i362 = add nuw nsw i64 %indvars.iv43.i.i359, 1 ; 3 uses
  %i.abm = icmp samesign ult i64 %indvars.iv.next44.i.i362, %i.aax
  br i1 %i.abm, label %.preheader.i.i368, label %bb.cb

.preheader.i.i368:                                ; preds = %bb.ca
  %i.abn = load ptr, ptr %i.fg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check947 = icmp ult i64 %30, 8
  br i1 %min.iters.check947, label %scalar.ph946.preheader, label %vector.ph948

vector.ph948:                                     ; preds = %.preheader.i.i368
  %n.vec949 = and i64 %30, -8                     ; 3 uses
  %i.abo = add i64 %indvars.iv38.i.i360, %n.vec949
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %indvars.iv38.i.i360
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %vector.ph948
  %index951 = phi i64 [ 0, %vector.ph948 ], [ %index.next956, %vector.body950 ] ; 2 uses
  %vec.phi952 = phi <4 x i32> [ splat (i32 1), %vector.ph948 ], [ %i.abs, %vector.body950 ]
  %vec.phi953 = phi <4 x i32> [ splat (i32 1), %vector.ph948 ], [ %i.abt, %vector.body950 ]
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %index951 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %wide.load954 = load <4 x i32>, ptr %i.abq, align 4, !tbaa !83
  %wide.load955 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !83
  %i.abs = mul <4 x i32> %wide.load954, %vec.phi952 ; 2 uses
  %i.abt = mul <4 x i32> %wide.load955, %vec.phi953 ; 2 uses
  %index.next956 = add nuw i64 %index951, 8       ; 2 uses
  %i.abu = icmp eq i64 %index.next956, %n.vec949
  br i1 %i.abu, label %middle.block957, label %vector.body950, !llvm.loop !1051

middle.block957:                                  ; preds = %vector.body950
  %bin.rdx958 = mul <4 x i32> %i.abt, %i.abs
  %i.abv = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx958) ; 2 uses
  %cmp.n959 = icmp eq i64 %30, %n.vec949
  br i1 %cmp.n959, label %.loopexit1061, label %scalar.ph946.preheader

scalar.ph946.preheader:                           ; preds = %.preheader.i.i368, %middle.block957
  %indvars.iv40.i.i369.ph = phi i64 [ %indvars.iv38.i.i360, %.preheader.i.i368 ], [ %i.abo, %middle.block957 ]
  %.030.i.i370.ph = phi i32 [ 1, %.preheader.i.i368 ], [ %i.abv, %middle.block957 ]
  br label %scalar.ph946

scalar.ph946:                                     ; preds = %scalar.ph946.preheader, %scalar.ph946
  %indvars.iv40.i.i369 = phi i64 [ %indvars.iv.next41.i.i371, %scalar.ph946 ], [ %indvars.iv40.i.i369.ph, %scalar.ph946.preheader ] ; 2 uses
  %.030.i.i370 = phi i32 [ %i.aby, %scalar.ph946 ], [ %.030.i.i370.ph, %scalar.ph946.preheader ]
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %indvars.iv40.i.i369
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !83
  %i.aby = mul nsw i32 %i.abx, %.030.i.i370       ; 2 uses
  %indvars.iv.next41.i.i371 = add nuw nsw i64 %indvars.iv40.i.i369, 1 ; 2 uses
  %exitcond.not.i.i372 = icmp eq i64 %indvars.iv.next41.i.i371, %i.aax
  br i1 %exitcond.not.i.i372, label %.loopexit1061, label %scalar.ph946, !llvm.loop !1052

.loopexit1061:                                    ; preds = %scalar.ph946, %middle.block957
  %.lcssa838 = phi i32 [ %i.abv, %middle.block957 ], [ %i.aby, %scalar.ph946 ]
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv43.i.i359
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !83
  %i.acb = mul nsw i32 %i.aca, %.lcssa838
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv43.i.i359
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !83
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit1061
  %.pn.i.i363 = phi i32 [ %i.acb, %.loopexit1061 ], [ %i.acd, %bb.cb ]
  %.1.i.i364 = add nsw i32 %.pn.i.i363, %.02132.i.i361 ; 2 uses
  %indvars.iv.next39.i.i365 = add nuw nsw i64 %indvars.iv38.i.i360, 1
  %exitcond47.not.i.i366 = icmp eq i64 %indvars.iv.next44.i.i362, %i.aax
  br i1 %exitcond47.not.i.i366, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i367, label %bb.ca, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i367: ; preds = %bb.cc
  %i.ace = sext i32 %.1.i.i364 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit373

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit373: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352, %.preheader27.i.i357, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i367
  %.021.lcssa.i.i353 = phi i64 [ 0, %.preheader27.i.i357 ], [ 0, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit352 ], [ %i.ace, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i367 ]
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.021.lcssa.i.i353
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !83
  %i.ach = sitofp i32 %i.acg to double
  %i.aci = fmul double %i.aaq, %i.ach
  %i.acj = call double @llvm.fmuladd.f64(double %i.xg, double %i.yx, double %i.aci)
  %i.ack = sitofp i32 %i.vn to double
  %i.acl = fdiv double %i.acj, %i.ack
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit373, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit289
  %.0 = phi double [ %i.vm, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit289 ], [ %i.acl, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit373 ] ; 2 uses
  %i.acm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %.0)
          to label %_ZNSolsEd.exit375 unwind label %bb.ce

_ZNSolsEd.exit375:                                ; preds = %bb.cd
  %i.acn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acm, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377: ; preds = %_ZNSolsEd.exit375
  %i.aco = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, double noundef %.0)
          to label %_ZNSolsEd.exit379 unwind label %bb.ce

_ZNSolsEd.exit379:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377
  %i.acp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aco, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381: ; preds = %_ZNSolsEd.exit379
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %i.acq = load i32, ptr %i.dc, align 8, !tbaa !268
  %i.acr = sext i32 %i.acq to i64
  %i.acs = icmp slt i64 %indvars.iv.next691, %i.acr
  br i1 %i.acs, label %.lr.ph652, label %._crit_edge653, !llvm.loop !1053

bb.ce:                                            ; preds = %_ZNSolsEd.exit379, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377, %_ZNSolsEd.exit375, %bb.cd
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge653:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381, %._crit_edge.thread, %.preheader606
  %i.acu = load ptr, ptr %i.bu, align 8, !tbaa !154
  %i.acv = getelementptr i8, ptr %i.acu, i64 -24
  %i.acw = load i64, ptr %i.acv, align 8
  %i.acx = getelementptr inbounds i8, ptr %i.bu, i64 %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 240
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i508 = icmp eq ptr %i.acz, null
  br i1 %.not.i.i.i508, label %.invoke822, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i509

.invoke822:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit429, %_ZNSolsEPFRSoS_E.exit383, %._crit_edge653
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont823 unwind label %.loopexit.split-lp612

.cont823:                                         ; preds = %.invoke822
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i509: ; preds = %._crit_edge653
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 56
  %i.adb = load i8, ptr %i.ada, align 8, !tbaa !307
  %.not.i1.i.i510 = icmp eq i8 %i.adb, 0
  br i1 %.not.i1.i.i510, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i509
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 67
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i511

bb.cg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i509
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.acz)
          to label %.noexc514 unwind label %.loopexit611

.noexc514:                                        ; preds = %bb.cg
  %i.ade = load ptr, ptr %i.acz, align 8, !tbaa !154
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 48
  %i.adg = load ptr, ptr %i.adf, align 8
  %i.adh = invoke noundef signext i8 %i.adg(ptr noundef nonnull align 8 dereferenceable(570) %i.acz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i511 unwind label %.loopexit611, !inline_history !28

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i511: ; preds = %.noexc514, %bb.cf
  %.0.i.i.i512 = phi i8 [ %i.add, %bb.cf ], [ %i.adh, %.noexc514 ]
  %i.adi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %.0.i.i.i512)
          to label %.noexc516 unwind label %.loopexit611

.noexc516:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i511
  %i.adj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adi)
          to label %_ZNSolsEPFRSoS_E.exit383 unwind label %.loopexit611 ; 0 uses

_ZNSolsEPFRSoS_E.exit383:                         ; preds = %.noexc516
  %i.adk = load ptr, ptr %i.ck, align 8, !tbaa !154
  %i.adl = getelementptr i8, ptr %i.adk, i64 -24
  %i.adm = load i64, ptr %i.adl, align 8
  %i.adn = getelementptr inbounds i8, ptr %i.ck, i64 %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 240
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i519 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i519, label %.invoke822, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i520

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i520: ; preds = %_ZNSolsEPFRSoS_E.exit383
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 56
  %i.adr = load i8, ptr %i.adq, align 8, !tbaa !307
  %.not.i1.i.i521 = icmp eq i8 %i.adr, 0
  br i1 %.not.i1.i.i521, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i520
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 67
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i522

bb.ci:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i520
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adp)
          to label %.noexc525 unwind label %.loopexit611

.noexc525:                                        ; preds = %bb.ci
  %i.adu = load ptr, ptr %i.adp, align 8, !tbaa !154
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 48
  %i.adw = load ptr, ptr %i.adv, align 8
  %i.adx = invoke noundef signext i8 %i.adw(ptr noundef nonnull align 8 dereferenceable(570) %i.adp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i522 unwind label %.loopexit611, !inline_history !28

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i522: ; preds = %.noexc525, %bb.ch
  %.0.i.i.i523 = phi i8 [ %i.adt, %bb.ch ], [ %i.adx, %.noexc525 ]
  %i.ady = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef signext %.0.i.i.i523)
          to label %.noexc527 unwind label %.loopexit611

.noexc527:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i522
  %i.adz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ady)
          to label %_ZNSolsEPFRSoS_E.exit385 unwind label %.loopexit611 ; 0 uses

_ZNSolsEPFRSoS_E.exit385:                         ; preds = %.noexc527
  %i.aea = load i32, ptr %i.ew, align 8, !tbaa !274
  %i.aeb = icmp sgt i32 %i.aea, 0
  br i1 %i.aeb, label %.lr.ph.i.i387, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406

.lr.ph.i.i387:                                    ; preds = %_ZNSolsEPFRSoS_E.exit385
  %i.aec = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.aed = load ptr, ptr %i.ex, align 8, !tbaa !57
  %i.aee = load ptr, ptr %i.ey, align 8, !tbaa !60 ; 3 uses
  br label %bb.cj

.preheader27.i.i390:                              ; preds = %bb.cj
  %i.aef = icmp sgt i32 %i.aes, 0
  br i1 %i.aef, label %.lr.ph33.i.i391, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406

.lr.ph33.i.i391:                                  ; preds = %.preheader27.i.i390
  %i.aeg = zext nneg i32 %i.aes to i64            ; 4 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i.i387
  %indvars.iv.i.i388 = phi i64 [ 0, %.lr.ph.i.i387 ], [ %indvars.iv.next.i.i389, %bb.cj ] ; 5 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i388
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !82
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.aec, i64 %indvars.iv.i.i388
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !82
  %i.ael = fsub double %i.aei, %i.aek
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %indvars.iv.i.i388
  %i.aen = load double, ptr %i.aem, align 8, !tbaa !82
  %i.aeo = fdiv double %i.ael, %i.aen
  %i.aep = fadd double %i.aeo, f0x3EB0C6F7A0B5ED8D
  %i.aeq = fptosi double %i.aep to i32
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv.i.i388
  store i32 %i.aeq, ptr %i.aer, align 4, !tbaa !83
  %indvars.iv.next.i.i389 = add nuw nsw i64 %indvars.iv.i.i388, 1 ; 2 uses
  %i.aes = load i32, ptr %i.ew, align 8, !tbaa !274 ; 3 uses
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = icmp slt i64 %indvars.iv.next.i.i389, %i.aet
  br i1 %i.aeu, label %bb.cj, label %.preheader27.i.i390, !llvm.loop !18

bb.ck:                                            ; preds = %bb.cm, %.lr.ph33.i.i391
  %indvars.iv43.i.i392 = phi i64 [ 0, %.lr.ph33.i.i391 ], [ %indvars.iv.next44.i.i395, %bb.cm ] ; 4 uses
  %indvars.iv38.i.i393 = phi i64 [ 1, %.lr.ph33.i.i391 ], [ %indvars.iv.next39.i.i398, %bb.cm ] ; 4 uses
  %.02132.i.i394 = phi i32 [ 0, %.lr.ph33.i.i391 ], [ %.1.i.i397, %bb.cm ]
  %31 = xor i64 %indvars.iv43.i.i392, -1
  %32 = add nsw i64 %31, %i.aeg                   ; 3 uses
  %indvars.iv.next44.i.i395 = add nuw nsw i64 %indvars.iv43.i.i392, 1 ; 3 uses
  %i.aev = icmp samesign ult i64 %indvars.iv.next44.i.i395, %i.aeg
  br i1 %i.aev, label %.preheader.i.i401, label %bb.cl

.preheader.i.i401:                                ; preds = %bb.ck
  %i.aew = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 2 uses
  %min.iters.check915 = icmp ult i64 %32, 8
  br i1 %min.iters.check915, label %scalar.ph914.preheader, label %vector.ph916

vector.ph916:                                     ; preds = %.preheader.i.i401
  %n.vec917 = and i64 %32, -8                     ; 3 uses
  %i.aex = add i64 %indvars.iv38.i.i393, %n.vec917
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %indvars.iv38.i.i393
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph916
  %index919 = phi i64 [ 0, %vector.ph916 ], [ %index.next924, %vector.body918 ] ; 2 uses
  %vec.phi920 = phi <4 x i32> [ splat (i32 1), %vector.ph916 ], [ %i.afb, %vector.body918 ]
  %vec.phi921 = phi <4 x i32> [ splat (i32 1), %vector.ph916 ], [ %i.afc, %vector.body918 ]
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %index919 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %wide.load922 = load <4 x i32>, ptr %i.aez, align 4, !tbaa !83
  %wide.load923 = load <4 x i32>, ptr %i.afa, align 4, !tbaa !83
  %i.afb = mul <4 x i32> %wide.load922, %vec.phi920 ; 2 uses
  %i.afc = mul <4 x i32> %wide.load923, %vec.phi921 ; 2 uses
  %index.next924 = add nuw i64 %index919, 8       ; 2 uses
  %i.afd = icmp eq i64 %index.next924, %n.vec917
  br i1 %i.afd, label %middle.block925, label %vector.body918, !llvm.loop !1054

middle.block925:                                  ; preds = %vector.body918
  %bin.rdx926 = mul <4 x i32> %i.afc, %i.afb
  %i.afe = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx926) ; 2 uses
  %cmp.n927 = icmp eq i64 %32, %n.vec917
  br i1 %cmp.n927, label %.loopexit1070, label %scalar.ph914.preheader

scalar.ph914.preheader:                           ; preds = %.preheader.i.i401, %middle.block925
  %indvars.iv40.i.i402.ph = phi i64 [ %indvars.iv38.i.i393, %.preheader.i.i401 ], [ %i.aex, %middle.block925 ]
  %.030.i.i403.ph = phi i32 [ 1, %.preheader.i.i401 ], [ %i.afe, %middle.block925 ]
  br label %scalar.ph914

scalar.ph914:                                     ; preds = %scalar.ph914.preheader, %scalar.ph914
  %indvars.iv40.i.i402 = phi i64 [ %indvars.iv.next41.i.i404, %scalar.ph914 ], [ %indvars.iv40.i.i402.ph, %scalar.ph914.preheader ] ; 2 uses
  %.030.i.i403 = phi i32 [ %i.afh, %scalar.ph914 ], [ %.030.i.i403.ph, %scalar.ph914.preheader ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %indvars.iv40.i.i402
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !83
  %i.afh = mul nsw i32 %i.afg, %.030.i.i403       ; 2 uses
  %indvars.iv.next41.i.i404 = add nuw nsw i64 %indvars.iv40.i.i402, 1 ; 2 uses
  %exitcond.not.i.i405 = icmp eq i64 %indvars.iv.next41.i.i404, %i.aeg
  br i1 %exitcond.not.i.i405, label %.loopexit1070, label %scalar.ph914, !llvm.loop !1055

.loopexit1070:                                    ; preds = %scalar.ph914, %middle.block925
  %.lcssa842 = phi i32 [ %i.afe, %middle.block925 ], [ %i.afh, %scalar.ph914 ]
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv43.i.i392
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !83
  %i.afk = mul nsw i32 %i.afj, %.lcssa842
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv43.i.i392
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !83
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.loopexit1070
  %.pn.i.i396 = phi i32 [ %i.afk, %.loopexit1070 ], [ %i.afm, %bb.cl ]
  %.1.i.i397 = add nsw i32 %.pn.i.i396, %.02132.i.i394 ; 2 uses
  %indvars.iv.next39.i.i398 = add nuw nsw i64 %indvars.iv38.i.i393, 1
  %exitcond47.not.i.i399 = icmp eq i64 %indvars.iv.next44.i.i395, %i.aeg
  br i1 %exitcond47.not.i.i399, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i400, label %bb.ck, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i400: ; preds = %bb.cm
  %i.afn = sext i32 %.1.i.i397 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406: ; preds = %_ZNSolsEPFRSoS_E.exit385, %.preheader27.i.i390, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i400
  %.021.lcssa.i.i386 = phi i64 [ 0, %.preheader27.i.i390 ], [ 0, %_ZNSolsEPFRSoS_E.exit385 ], [ %i.afn, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i400 ]
  %i.afo = load ptr, ptr %i.fa, align 8, !tbaa !60
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %.021.lcssa.i.i386
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !83
  %i.afr = load i32, ptr %i.fc, align 8, !tbaa !274
  %i.afs = icmp sgt i32 %i.afr, 0
  br i1 %i.afs, label %.lr.ph.i.i408, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit427

.lr.ph.i.i408:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406
  %i.aft = load ptr, ptr %i.fb, align 8, !tbaa !57
  %i.afu = load ptr, ptr %i.fd, align 8, !tbaa !57
  %i.afv = load ptr, ptr %i.fe, align 8, !tbaa !60 ; 3 uses
  br label %bb.cn

.preheader27.i.i411:                              ; preds = %bb.cn
  %i.afw = icmp sgt i32 %i.agj, 0
  br i1 %i.afw, label %.lr.ph33.i.i412, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit427

.lr.ph33.i.i412:                                  ; preds = %.preheader27.i.i411
  %i.afx = zext nneg i32 %i.agj to i64            ; 4 uses
  br label %bb.co

bb.cn:                                            ; preds = %bb.cn, %.lr.ph.i.i408
  %indvars.iv.i.i409 = phi i64 [ 0, %.lr.ph.i.i408 ], [ %indvars.iv.next.i.i410, %bb.cn ] ; 5 uses
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %indvars.iv.i.i409
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !82
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %indvars.iv.i.i409
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !82
  %i.agc = fsub double %i.afz, %i.agb
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.afu, i64 %indvars.iv.i.i409
  %i.age = load double, ptr %i.agd, align 8, !tbaa !82
  %i.agf = fdiv double %i.agc, %i.age
  %i.agg = fadd double %i.agf, f0x3EB0C6F7A0B5ED8D
  %i.agh = fptosi double %i.agg to i32
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv.i.i409
  store i32 %i.agh, ptr %i.agi, align 4, !tbaa !83
  %indvars.iv.next.i.i410 = add nuw nsw i64 %indvars.iv.i.i409, 1 ; 2 uses
  %i.agj = load i32, ptr %i.fc, align 8, !tbaa !274 ; 3 uses
  %i.agk = sext i32 %i.agj to i64
  %i.agl = icmp slt i64 %indvars.iv.next.i.i410, %i.agk
  br i1 %i.agl, label %bb.cn, label %.preheader27.i.i411, !llvm.loop !18

bb.co:                                            ; preds = %bb.cq, %.lr.ph33.i.i412
  %indvars.iv43.i.i413 = phi i64 [ 0, %.lr.ph33.i.i412 ], [ %indvars.iv.next44.i.i416, %bb.cq ] ; 4 uses
  %indvars.iv38.i.i414 = phi i64 [ 1, %.lr.ph33.i.i412 ], [ %indvars.iv.next39.i.i419, %bb.cq ] ; 4 uses
  %.02132.i.i415 = phi i32 [ 0, %.lr.ph33.i.i412 ], [ %.1.i.i418, %bb.cq ]
  %33 = xor i64 %indvars.iv43.i.i413, -1
  %34 = add nsw i64 %33, %i.afx                   ; 3 uses
  %indvars.iv.next44.i.i416 = add nuw nsw i64 %indvars.iv43.i.i413, 1 ; 3 uses
  %i.agm = icmp samesign ult i64 %indvars.iv.next44.i.i416, %i.afx
  br i1 %i.agm, label %.preheader.i.i422, label %bb.cp

.preheader.i.i422:                                ; preds = %bb.co
  %i.agn = load ptr, ptr %i.fg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check899 = icmp ult i64 %34, 8
  br i1 %min.iters.check899, label %scalar.ph898.preheader, label %vector.ph900

vector.ph900:                                     ; preds = %.preheader.i.i422
  %n.vec901 = and i64 %34, -8                     ; 3 uses
  %i.ago = add i64 %indvars.iv38.i.i414, %n.vec901
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv38.i.i414
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph900
  %index903 = phi i64 [ 0, %vector.ph900 ], [ %index.next908, %vector.body902 ] ; 2 uses
  %vec.phi904 = phi <4 x i32> [ splat (i32 1), %vector.ph900 ], [ %i.ags, %vector.body902 ]
  %vec.phi905 = phi <4 x i32> [ splat (i32 1), %vector.ph900 ], [ %i.agt, %vector.body902 ]
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %index903 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 16
  %wide.load906 = load <4 x i32>, ptr %i.agq, align 4, !tbaa !83
  %wide.load907 = load <4 x i32>, ptr %i.agr, align 4, !tbaa !83
  %i.ags = mul <4 x i32> %wide.load906, %vec.phi904 ; 2 uses
  %i.agt = mul <4 x i32> %wide.load907, %vec.phi905 ; 2 uses
  %index.next908 = add nuw i64 %index903, 8       ; 2 uses
  %i.agu = icmp eq i64 %index.next908, %n.vec901
  br i1 %i.agu, label %middle.block909, label %vector.body902, !llvm.loop !1056

middle.block909:                                  ; preds = %vector.body902
  %bin.rdx910 = mul <4 x i32> %i.agt, %i.ags
  %i.agv = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx910) ; 2 uses
  %cmp.n911 = icmp eq i64 %34, %n.vec901
  br i1 %cmp.n911, label %.loopexit1069, label %scalar.ph898.preheader

scalar.ph898.preheader:                           ; preds = %.preheader.i.i422, %middle.block909
  %indvars.iv40.i.i423.ph = phi i64 [ %indvars.iv38.i.i414, %.preheader.i.i422 ], [ %i.ago, %middle.block909 ]
  %.030.i.i424.ph = phi i32 [ 1, %.preheader.i.i422 ], [ %i.agv, %middle.block909 ]
  br label %scalar.ph898

scalar.ph898:                                     ; preds = %scalar.ph898.preheader, %scalar.ph898
  %indvars.iv40.i.i423 = phi i64 [ %indvars.iv.next41.i.i425, %scalar.ph898 ], [ %indvars.iv40.i.i423.ph, %scalar.ph898.preheader ] ; 2 uses
  %.030.i.i424 = phi i32 [ %i.agy, %scalar.ph898 ], [ %.030.i.i424.ph, %scalar.ph898.preheader ]
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv40.i.i423
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !83
  %i.agy = mul nsw i32 %i.agx, %.030.i.i424       ; 2 uses
  %indvars.iv.next41.i.i425 = add nuw nsw i64 %indvars.iv40.i.i423, 1 ; 2 uses
  %exitcond.not.i.i426 = icmp eq i64 %indvars.iv.next41.i.i425, %i.afx
  br i1 %exitcond.not.i.i426, label %.loopexit1069, label %scalar.ph898, !llvm.loop !1057

.loopexit1069:                                    ; preds = %scalar.ph898, %middle.block909
  %.lcssa844 = phi i32 [ %i.agv, %middle.block909 ], [ %i.agy, %scalar.ph898 ]
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv43.i.i413
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !83
  %i.ahb = mul nsw i32 %i.aha, %.lcssa844
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv43.i.i413
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !83
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit1069
  %.pn.i.i417 = phi i32 [ %i.ahb, %.loopexit1069 ], [ %i.ahd, %bb.cp ]
  %.1.i.i418 = add nsw i32 %.pn.i.i417, %.02132.i.i415 ; 2 uses
  %indvars.iv.next39.i.i419 = add nuw nsw i64 %indvars.iv38.i.i414, 1
  %exitcond47.not.i.i420 = icmp eq i64 %indvars.iv.next44.i.i416, %i.afx
  br i1 %exitcond47.not.i.i420, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i421, label %bb.co, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i421: ; preds = %bb.cq
  %i.ahe = sext i32 %.1.i.i418 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit427

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit427: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406, %.preheader27.i.i411, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i421
  %.021.lcssa.i.i407 = phi i64 [ 0, %.preheader27.i.i411 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit406 ], [ %i.ahe, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i421 ]
  %i.ahf = load ptr, ptr %i.ff, align 8, !tbaa !60
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %.021.lcssa.i.i407
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !83
  %i.ahi = add nsw i32 %i.ahh, %i.afq
  %i.ahj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 noundef %i.ahi)
          to label %bb.cr unwind label %.loopexit611 ; 4 uses

bb.cr:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit427
  %i.ahk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahj, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit429 unwind label %.loopexit611 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit429: ; preds = %bb.cr
  %i.ahl = load ptr, ptr %i.ahj, align 8, !tbaa !154
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 -24
  %i.ahn = load i64, ptr %i.ahm, align 8
  %i.aho = getelementptr inbounds i8, ptr %i.ahj, i64 %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 240
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i530 = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i.i530, label %.invoke822, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i531

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i531: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit429
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 56
  %i.ahs = load i8, ptr %i.ahr, align 8, !tbaa !307
  %.not.i1.i.i532 = icmp eq i8 %i.ahs, 0
  br i1 %.not.i1.i.i532, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i531
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 67
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i533

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i531
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahq)
          to label %.noexc536 unwind label %.loopexit611

.noexc536:                                        ; preds = %bb.ct
  %i.ahv = load ptr, ptr %i.ahq, align 8, !tbaa !154
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 48
  %i.ahx = load ptr, ptr %i.ahw, align 8
  %i.ahy = invoke noundef signext i8 %i.ahx(ptr noundef nonnull align 8 dereferenceable(570) %i.ahq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i533 unwind label %.loopexit611, !inline_history !28

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i533: ; preds = %.noexc536, %bb.cs
  %.0.i.i.i534 = phi i8 [ %i.ahu, %bb.cs ], [ %i.ahy, %.noexc536 ]
  %i.ahz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahj, i8 noundef signext %.0.i.i.i534)
          to label %.noexc538 unwind label %.loopexit611

.noexc538:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i533
  %i.aia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahz)
          to label %_ZNSolsEPFRSoS_E.exit205 unwind label %.loopexit611 ; 0 uses

.loopexit611:                                     ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit427, %bb.cr, %bb.cg, %.noexc514, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i511, %.noexc516, %bb.ci, %.noexc525, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i522, %.noexc527, %bb.ct, %.noexc536, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i533, %.noexc538
  %lpad.loopexit613 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp612:                            ; preds = %.invoke822
  %lpad.loopexit.split-lp614 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit205:                         ; preds = %.noexc538, %.noexc505
  %i.aib = load i32, ptr %i.dc, align 8, !tbaa !268 ; 2 uses
  %i.aic = icmp sgt i32 %i.aib, 0
  br i1 %i.aic, label %.lr.ph851, label %_ZNSolsEPFRSoS_E.exit205._crit_edge

.lr.ph851:                                        ; preds = %_ZNSolsEPFRSoS_E.exit205
  %i.aid = zext nneg i32 %i.aib to i64
  br label %bb.cu

_ZNSolsEPFRSoS_E.exit437:                         ; preds = %.noexc571
  %i.aie = trunc nuw i64 %i.aig to i32
  %i.aif = icmp sgt i32 %i.aie, 0
  br i1 %i.aif, label %bb.cu, label %_ZNSolsEPFRSoS_E.exit205._crit_edge

bb.cu:                                            ; preds = %.lr.ph851, %_ZNSolsEPFRSoS_E.exit437
  %.in = phi i64 [ %i.aid, %.lr.ph851 ], [ %i.aig, %_ZNSolsEPFRSoS_E.exit437 ]
  %i.aig = add nsw i64 %.in, -1                   ; 6 uses
  %i.aih = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %i.aig ; 2 uses
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !82
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.0788, i64 %i.aig ; 3 uses
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !82
  %i.aim = fadd double %i.aij, %i.ail             ; 2 uses
  store double %i.aim, ptr %i.aik, align 8, !tbaa !82
  %i.ain = load ptr, ptr %i.ft, align 8, !tbaa !57
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.ain, i64 %i.aig
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !82
  %i.aiq = load double, ptr %i.aii, align 8, !tbaa !82
  %i.air = fsub double %i.aip, %i.aiq
  %i.ais = fadd double %i.air, f0x3EB0C6F7A0B5ED8D
  %i.ait = fcmp ogt double %i.aim, %i.ais
  br i1 %i.ait, label %bb.cv, label %.preheader607, !llvm.loop !1058

bb.cv:                                            ; preds = %bb.cu
  %i.aiu = load ptr, ptr %i.fu, align 8, !tbaa !57
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.aiu, i64 %i.aig
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !82
  store double %i.aiw, ptr %i.aik, align 8, !tbaa !82
  %i.aix = load ptr, ptr %i.bu, align 8, !tbaa !154
  %i.aiy = getelementptr i8, ptr %i.aix, i64 -24
  %i.aiz = load i64, ptr %i.aiy, align 8
  %i.aja = getelementptr inbounds i8, ptr %i.bu, i64 %i.aiz
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 240
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i541 = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i.i541, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i542

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i542: ; preds = %bb.cv
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 56
  %i.aje = load i8, ptr %i.ajd, align 8, !tbaa !307
  %.not.i1.i.i543 = icmp eq i8 %i.aje, 0
  br i1 %.not.i1.i.i543, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i542
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 67
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !209
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i544

bb.cx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i542
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ajc)
          to label %.noexc547 unwind label %.loopexit

.noexc547:                                        ; preds = %bb.cx
  %i.ajh = load ptr, ptr %i.ajc, align 8, !tbaa !154
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 48
  %i.ajj = load ptr, ptr %i.aji, align 8
  %i.ajk = invoke noundef signext i8 %i.ajj(ptr noundef nonnull align 8 dereferenceable(570) %i.ajc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i544 unwind label %.loopexit, !inline_history !28

end_hunk_6
begin_hunk_7_@_ZNK11UIestimator11UIestimator9writeheadERSo:bb.a
bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !27
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !268
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408
  br label %bb.h

._crit_edge:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.z = load ptr, ptr %1, align 8, !tbaa !154
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i10, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11: ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !307
  %.not.i1.i.i12 = icmp eq i8 %i.ag, 0
  br i1 %.not.i1.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 67
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !209
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !154
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 10), !inline_history !27
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14: ; preds = %bb.f, %bb.g
  %.0.i.i.i13 = phi i8 [ %i.ai, %bb.f ], [ %i.am, %bb.g ]
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i13)
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 0 uses
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19 ] ; 6 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.119, i64 noundef 2) ; 0 uses
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load double, ptr %i.ar, align 8, !tbaa !82
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.as) ; 2 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.118, i64 noundef 1) ; 0 uses
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !82
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.at, double noundef %i.ax) ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.118, i64 noundef 1) ; 0 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !82
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load double, ptr %i.be, align 8, !tbaa !82
  %i.bg = fsub double %i.bc, %i.bf
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !82
  %i.bk = fdiv double %i.bg, %i.bj
  %i.bl = fadd double %i.bk, f0x3EB0C6F7A0B5ED8D
  %i.bm = fptosi double %i.bl to i32
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %i.bm) ; 2 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.118, i64 noundef 1) ; 0 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i32 noundef 0) ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !154
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !302 ; 6 uses
  %.not.i.i.i15 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i15, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16: ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !307
  %.not.i1.i.i17 = icmp eq i8 %i.bx, 0
  br i1 %.not.i1.i.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 67
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !209
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bv)
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !154
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef signext i8 %i.cc(ptr noundef nonnull align 8 dereferenceable(570) %i.bv, i8 noundef signext 10), !inline_history !27
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19: ; preds = %bb.j, %bb.k
  %.0.i.i.i18 = phi i8 [ %i.bz, %bb.j ], [ %i.cd, %bb.k ]
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i8 noundef signext %.0.i.i.i18)
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !268
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %bb.h, label %._crit_edge, !llvm.loop !1065
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11UIestimator11UIestimator11calc_1D_pmfEv(ptr noundef nonnull align 8 dereferenceable(1402) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %1 = alloca %"class.std::vector.54", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !210
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !211
  %i.e = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %.lr.ph.i.i.i.i.i.i.i.i.i23.preheader unwind label %.thread ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i23.preheader:             ; preds = %.noexc
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 11 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !279
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i23.preheader
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 3 uses
  br label %bb.a

.preheader27.i.i:                                 ; preds = %bb.a
  %i.q = icmp sgt i32 %i.ae, 0
  br i1 %i.q, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.s = zext nneg i32 %i.ae to i64               ; 4 uses
  br label %bb.b

bb.a:                                             ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.u = load double, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !82
  %i.x = fsub double %i.u, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !82
  %i.aa = fdiv double %i.x, %i.z
  %i.ab = fadd double %i.aa, f0x3EB0C6F7A0B5ED8D
  %i.ac = fptosi double %i.ab to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !279 ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i.i, %i.af
  br i1 %i.ag, label %bb.a, label %.preheader27.i.i, !llvm.loop !21

bb.b:                                             ; preds = %bb.d, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.d ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.d ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.d ]
  %2 = xor i64 %indvars.iv43.i.i, -1
  %3 = add nsw i64 %2, %i.s                       ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.ah = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.s
  br i1 %i.ah, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.b
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !60  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.aj = add i64 %indvars.iv38.i.i, %n.vec
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv38.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi465 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ao, %vector.body ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !83
  %wide.load466 = load <4 x i32>, ptr %i.am, align 4, !tbaa !83
  %i.an = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ao = mul <4 x i32> %wide.load466, %vec.phi465 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1066

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit684, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.aj, %middle.block ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph ], [ %indvars.iv40.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.at, %scalar.ph ], [ %.030.i.i.ph, %scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv40.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !83
  %i.at = mul nsw i32 %i.as, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.s
  br i1 %exitcond.not.i.i, label %.loopexit684, label %scalar.ph, !llvm.loop !1067

.loopexit684:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa463 = phi i32 [ %i.aq, %middle.block ], [ %i.at, %scalar.ph ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv43.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !83
  %i.aw = mul nsw i32 %i.av, %.lcssa463
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv43.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit684
  %.pn.i.i = phi i32 [ %i.aw, %.loopexit684 ], [ %i.ay, %bb.c ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.s
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.b, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.d
  %i.az = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit

_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i23.preheader, %.preheader27.i.i, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i23.preheader ], [ %i.az, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.021.lcssa.i.i
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !82
  %i.bd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.e unwind label %bb.bd      ; 0 uses

bb.e:                                             ; preds = %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !82 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57 ; 5 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !82
  %i.bj = fadd double %i.bf, %i.bi                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 3 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !82
  %i.bn = fadd double %i.bm, f0x3EB0C6F7A0B5ED8D  ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !266, !range !90, !noundef !91
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 6 uses
  %i.bu = load ptr, ptr %1, align 8               ; 11 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.cu = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253
  %.0343 = phi double [ %i.bj, %.lr.ph ], [ %i.vb, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253 ] ; 2 uses
  %.015342 = phi double [ 0.000000e+00, %.lr.ph ], [ %.116, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253 ] ; 2 uses
  %i.cv = fadd double %.0343, f0x3EB0C6F7A0B5ED8D ; 2 uses
  store double %i.cv, ptr %i.e, align 8, !tbaa !82
  br i1 %i.br, label %._crit_edge372, label %bb.g

._crit_edge372:                                   ; preds = %bb.f
  %.pre373 = load i32, ptr %i.h, align 8, !tbaa !279
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.cw = load i32, ptr %i.bt, align 8, !tbaa !274
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i29, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph.i.i29:                                     ; preds = %bb.g
  %i.cy = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.cz = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  br label %bb.h

.preheader27.i.i32:                               ; preds = %bb.h
  %i.db = icmp sgt i32 %i.do, 0
  br i1 %i.db, label %.lr.ph33.i.i33, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph33.i.i33:                                   ; preds = %.preheader27.i.i32
  %i.dc = zext nneg i32 %i.do to i64              ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i29
  %indvars.iv.i.i30 = phi i64 [ 0, %.lr.ph.i.i29 ], [ %indvars.iv.next.i.i31, %bb.h ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i30
  %i.de = load double, ptr %i.dd, align 8, !tbaa !82
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.i.i30
  %i.dg = load double, ptr %i.df, align 8, !tbaa !82
  %i.dh = fsub double %i.de, %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i.i30
  %i.dj = load double, ptr %i.di, align 8, !tbaa !82
  %i.dk = fdiv double %i.dh, %i.dj
  %i.dl = fadd double %i.dk, f0x3EB0C6F7A0B5ED8D
  %i.dm = fptosi double %i.dl to i32
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i.i30
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !83
  %indvars.iv.next.i.i31 = add nuw nsw i64 %indvars.iv.i.i30, 1 ; 2 uses
  %i.do = load i32, ptr %i.bt, align 8, !tbaa !274 ; 3 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next.i.i31, %i.dp
  br i1 %i.dq, label %bb.h, label %.preheader27.i.i32, !llvm.loop !18

bb.i:                                             ; preds = %bb.k, %.lr.ph33.i.i33
  %indvars.iv43.i.i34 = phi i64 [ 0, %.lr.ph33.i.i33 ], [ %indvars.iv.next44.i.i37, %bb.k ] ; 4 uses
  %indvars.iv38.i.i35 = phi i64 [ 1, %.lr.ph33.i.i33 ], [ %indvars.iv.next39.i.i40, %bb.k ] ; 4 uses
  %.02132.i.i36 = phi i32 [ 0, %.lr.ph33.i.i33 ], [ %.1.i.i39, %bb.k ]
  %4 = xor i64 %indvars.iv43.i.i34, -1
  %5 = add nsw i64 %4, %i.dc                      ; 3 uses
  %indvars.iv.next44.i.i37 = add nuw nsw i64 %indvars.iv43.i.i34, 1 ; 3 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next44.i.i37, %i.dc
  br i1 %i.dr, label %.preheader.i.i42, label %bb.j

.preheader.i.i42:                                 ; preds = %bb.i
  %i.ds = load ptr, ptr %i.bx, align 8, !tbaa !60 ; 2 uses
  %min.iters.check628 = icmp ult i64 %5, 8
  br i1 %min.iters.check628, label %scalar.ph627.preheader, label %vector.ph629

vector.ph629:                                     ; preds = %.preheader.i.i42
  %n.vec630 = and i64 %5, -8                      ; 3 uses
  %i.dt = add i64 %indvars.iv38.i.i35, %n.vec630
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv38.i.i35
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph629
  %index632 = phi i64 [ 0, %vector.ph629 ], [ %index.next637, %vector.body631 ] ; 2 uses
  %vec.phi633 = phi <4 x i32> [ splat (i32 1), %vector.ph629 ], [ %i.dx, %vector.body631 ]
  %vec.phi634 = phi <4 x i32> [ splat (i32 1), %vector.ph629 ], [ %i.dy, %vector.body631 ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index632 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load635 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !83
  %wide.load636 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !83
  %i.dx = mul <4 x i32> %wide.load635, %vec.phi633 ; 2 uses
  %i.dy = mul <4 x i32> %wide.load636, %vec.phi634 ; 2 uses
  %index.next637 = add nuw i64 %index632, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next637, %n.vec630
  br i1 %i.dz, label %middle.block638, label %vector.body631, !llvm.loop !1068

middle.block638:                                  ; preds = %vector.body631
  %bin.rdx639 = mul <4 x i32> %i.dy, %i.dx
  %i.ea = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx639) ; 2 uses
  %cmp.n640 = icmp eq i64 %5, %n.vec630
  br i1 %cmp.n640, label %.loopexit683, label %scalar.ph627.preheader

scalar.ph627.preheader:                           ; preds = %.preheader.i.i42, %middle.block638
  %indvars.iv40.i.i43.ph = phi i64 [ %indvars.iv38.i.i35, %.preheader.i.i42 ], [ %i.dt, %middle.block638 ]
  %.030.i.i44.ph = phi i32 [ 1, %.preheader.i.i42 ], [ %i.ea, %middle.block638 ]
  br label %scalar.ph627

scalar.ph627:                                     ; preds = %scalar.ph627.preheader, %scalar.ph627
  %indvars.iv40.i.i43 = phi i64 [ %indvars.iv.next41.i.i45, %scalar.ph627 ], [ %indvars.iv40.i.i43.ph, %scalar.ph627.preheader ] ; 2 uses
  %.030.i.i44 = phi i32 [ %i.ed, %scalar.ph627 ], [ %.030.i.i44.ph, %scalar.ph627.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv40.i.i43
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !83
  %i.ed = mul nsw i32 %i.ec, %.030.i.i44          ; 2 uses
  %indvars.iv.next41.i.i45 = add nuw nsw i64 %indvars.iv40.i.i43, 1 ; 2 uses
  %exitcond.not.i.i46 = icmp eq i64 %indvars.iv.next41.i.i45, %i.dc
  br i1 %exitcond.not.i.i46, label %.loopexit683, label %scalar.ph627, !llvm.loop !1069

.loopexit683:                                     ; preds = %scalar.ph627, %middle.block638
  %.lcssa442 = phi i32 [ %i.ea, %middle.block638 ], [ %i.ed, %scalar.ph627 ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv43.i.i34
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !83
  %i.eg = mul nsw i32 %i.ef, %.lcssa442
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv43.i.i34
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit683
  %.pn.i.i38 = phi i32 [ %i.eg, %.loopexit683 ], [ %i.ei, %bb.j ]
  %.1.i.i39 = add nsw i32 %.pn.i.i38, %.02132.i.i36 ; 2 uses
  %indvars.iv.next39.i.i40 = add nuw nsw i64 %indvars.iv38.i.i35, 1
  %exitcond47.not.i.i41 = icmp eq i64 %indvars.iv.next44.i.i37, %i.dc
  br i1 %exitcond47.not.i.i41, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.i, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.k
  %i.ej = sext i32 %.1.i.i39 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit: ; preds = %bb.g, %.preheader27.i.i32, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i
  %.021.lcssa.i.i28 = phi i64 [ 0, %.preheader27.i.i32 ], [ 0, %bb.g ], [ %i.ej, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.ek = load ptr, ptr %i.by, align 8, !tbaa !60 ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.021.lcssa.i.i28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !83
  %i.en = icmp eq i32 %i.em, 0
  %.pre374 = load i32, ptr %i.h, align 8, !tbaa !279 ; 2 uses
  br i1 %i.en, label %bb.l, label %bb.u

bb.l:                                             ; preds = %._crit_edge372, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit
  %i.eo = phi i32 [ %.pre373, %._crit_edge372 ], [ %.pre374, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit ]
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i.i48, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph.i.i48:                                     ; preds = %bb.l
  %i.eq = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.er = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.es = load ptr, ptr %i.ca, align 8, !tbaa !60 ; 3 uses
  br label %bb.m

.preheader27.i.i51:                               ; preds = %bb.m
  %i.et = icmp sgt i32 %i.fg, 0
  br i1 %i.et, label %.lr.ph33.i.i52, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit

.lr.ph33.i.i52:                                   ; preds = %.preheader27.i.i51
  %i.eu = zext nneg i32 %i.fg to i64              ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i48
  %indvars.iv.i.i49 = phi i64 [ 0, %.lr.ph.i.i48 ], [ %indvars.iv.next.i.i50, %bb.m ] ; 5 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i49
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !82
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i49
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !82
  %i.ez = fsub double %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i.i49
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !82
  %i.fc = fdiv double %i.ez, %i.fb
  %i.fd = fadd double %i.fc, f0x3EB0C6F7A0B5ED8D
  %i.fe = fptosi double %i.fd to i32
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i49
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !83
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i49, 1 ; 2 uses
  %i.fg = load i32, ptr %i.h, align 8, !tbaa !279 ; 3 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next.i.i50, %i.fh
  br i1 %i.fi, label %bb.m, label %.preheader27.i.i51, !llvm.loop !21

bb.n:                                             ; preds = %bb.p, %.lr.ph33.i.i52
  %indvars.iv43.i.i53 = phi i64 [ 0, %.lr.ph33.i.i52 ], [ %indvars.iv.next44.i.i56, %bb.p ] ; 4 uses
  %indvars.iv38.i.i54 = phi i64 [ 1, %.lr.ph33.i.i52 ], [ %indvars.iv.next39.i.i59, %bb.p ] ; 4 uses
  %.02132.i.i55 = phi i32 [ 0, %.lr.ph33.i.i52 ], [ %.1.i.i58, %bb.p ]
  %6 = xor i64 %indvars.iv43.i.i53, -1
  %7 = add nsw i64 %6, %i.eu                      ; 3 uses
  %indvars.iv.next44.i.i56 = add nuw nsw i64 %indvars.iv43.i.i53, 1 ; 3 uses
  %i.fj = icmp samesign ult i64 %indvars.iv.next44.i.i56, %i.eu
  br i1 %i.fj, label %.preheader.i.i62, label %bb.o

.preheader.i.i62:                                 ; preds = %bb.n
  %i.fk = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 2 uses
  %min.iters.check500 = icmp ult i64 %7, 8
  br i1 %min.iters.check500, label %scalar.ph499.preheader, label %vector.ph501

vector.ph501:                                     ; preds = %.preheader.i.i62
  %n.vec502 = and i64 %7, -8                      ; 3 uses
  %i.fl = add i64 %indvars.iv38.i.i54, %n.vec502
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv38.i.i54
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next509, %vector.body503 ] ; 2 uses
  %vec.phi505 = phi <4 x i32> [ splat (i32 1), %vector.ph501 ], [ %i.fp, %vector.body503 ]
  %vec.phi506 = phi <4 x i32> [ splat (i32 1), %vector.ph501 ], [ %i.fq, %vector.body503 ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index504 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load507 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !83
  %wide.load508 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !83
  %i.fp = mul <4 x i32> %wide.load507, %vec.phi505 ; 2 uses
  %i.fq = mul <4 x i32> %wide.load508, %vec.phi506 ; 2 uses
  %index.next509 = add nuw i64 %index504, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.fr, label %middle.block510, label %vector.body503, !llvm.loop !1070

middle.block510:                                  ; preds = %vector.body503
  %bin.rdx511 = mul <4 x i32> %i.fq, %i.fp
  %i.fs = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx511) ; 2 uses
  %cmp.n512 = icmp eq i64 %7, %n.vec502
  br i1 %cmp.n512, label %.loopexit675, label %scalar.ph499.preheader

scalar.ph499.preheader:                           ; preds = %.preheader.i.i62, %middle.block510
  %indvars.iv40.i.i63.ph = phi i64 [ %indvars.iv38.i.i54, %.preheader.i.i62 ], [ %i.fl, %middle.block510 ]
  %.030.i.i64.ph = phi i32 [ 1, %.preheader.i.i62 ], [ %i.fs, %middle.block510 ]
  br label %scalar.ph499

scalar.ph499:                                     ; preds = %scalar.ph499.preheader, %scalar.ph499
  %indvars.iv40.i.i63 = phi i64 [ %indvars.iv.next41.i.i65, %scalar.ph499 ], [ %indvars.iv40.i.i63.ph, %scalar.ph499.preheader ] ; 2 uses
  %.030.i.i64 = phi i32 [ %i.fv, %scalar.ph499 ], [ %.030.i.i64.ph, %scalar.ph499.preheader ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv40.i.i63
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !83
  %i.fv = mul nsw i32 %i.fu, %.030.i.i64          ; 2 uses
  %indvars.iv.next41.i.i65 = add nuw nsw i64 %indvars.iv40.i.i63, 1 ; 2 uses
  %exitcond.not.i.i66 = icmp eq i64 %indvars.iv.next41.i.i65, %i.eu
  br i1 %exitcond.not.i.i66, label %.loopexit675, label %scalar.ph499, !llvm.loop !1071

.loopexit675:                                     ; preds = %scalar.ph499, %middle.block510
  %.lcssa458 = phi i32 [ %i.fs, %middle.block510 ], [ %i.fv, %scalar.ph499 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv43.i.i53
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !83
  %i.fy = mul nsw i32 %i.fx, %.lcssa458
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv43.i.i53
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit675
  %.pn.i.i57 = phi i32 [ %i.fy, %.loopexit675 ], [ %i.ga, %bb.o ]
  %.1.i.i58 = add nsw i32 %.pn.i.i57, %.02132.i.i55 ; 2 uses
  %indvars.iv.next39.i.i59 = add nuw nsw i64 %indvars.iv38.i.i54, 1
  %exitcond47.not.i.i60 = icmp eq i64 %indvars.iv.next44.i.i56, %i.eu
  br i1 %exitcond47.not.i.i60, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i61, label %bb.n, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i61: ; preds = %bb.p
  %i.gb = sext i32 %.1.i.i58 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit: ; preds = %bb.l, %.preheader27.i.i51, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i61
  %.021.lcssa.i.i47 = phi i64 [ 0, %.preheader27.i.i51 ], [ 0, %bb.l ], [ %i.gb, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i61 ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.021.lcssa.i.i47
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !82
  %i.ge = load i32, ptr %i.cc, align 8, !tbaa !273
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i68, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph.i.i68:                                     ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit
  %i.gg = load ptr, ptr %i.cd, align 8, !tbaa !57
  %i.gh = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.gi = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 3 uses
  br label %bb.q

.preheader27.i.i71:                               ; preds = %bb.q
  %i.gj = icmp sgt i32 %i.gw, 0
  br i1 %i.gj, label %.lr.ph33.i.i72, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph33.i.i72:                                   ; preds = %.preheader27.i.i71
  %i.gk = zext nneg i32 %i.gw to i64              ; 4 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i68
  %indvars.iv.i.i69 = phi i64 [ 0, %.lr.ph.i.i68 ], [ %indvars.iv.next.i.i70, %bb.q ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i69
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !82
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i.i69
  %i.go = load double, ptr %i.gn, align 8, !tbaa !82
  %i.gp = fsub double %i.gm, %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.i.i69
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !82
  %i.gs = fdiv double %i.gp, %i.gr
  %i.gt = fadd double %i.gs, f0x3EB0C6F7A0B5ED8D
  %i.gu = fptosi double %i.gt to i32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.i69
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !83
  %indvars.iv.next.i.i70 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %i.gw = load i32, ptr %i.cc, align 8, !tbaa !273 ; 3 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next.i.i70, %i.gx
  br i1 %i.gy, label %bb.q, label %.preheader27.i.i71, !llvm.loop !16

bb.r:                                             ; preds = %bb.t, %.lr.ph33.i.i72
  %indvars.iv43.i.i73 = phi i64 [ 0, %.lr.ph33.i.i72 ], [ %indvars.iv.next44.i.i76, %bb.t ] ; 4 uses
  %indvars.iv38.i.i74 = phi i64 [ 1, %.lr.ph33.i.i72 ], [ %indvars.iv.next39.i.i79, %bb.t ] ; 4 uses
  %.02132.i.i75 = phi i32 [ 0, %.lr.ph33.i.i72 ], [ %.1.i.i78, %bb.t ]
  %8 = xor i64 %indvars.iv43.i.i73, -1
  %9 = add nsw i64 %8, %i.gk                      ; 3 uses
  %indvars.iv.next44.i.i76 = add nuw nsw i64 %indvars.iv43.i.i73, 1 ; 3 uses
  %i.gz = icmp samesign ult i64 %indvars.iv.next44.i.i76, %i.gk
  br i1 %i.gz, label %.preheader.i.i81, label %bb.s

.preheader.i.i81:                                 ; preds = %bb.r
  %i.ha = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check484 = icmp ult i64 %9, 8
  br i1 %min.iters.check484, label %scalar.ph483.preheader, label %vector.ph485

vector.ph485:                                     ; preds = %.preheader.i.i81
  %n.vec486 = and i64 %9, -8                      ; 3 uses
  %i.hb = add i64 %indvars.iv38.i.i74, %n.vec486
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv38.i.i74
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next493, %vector.body487 ] ; 2 uses
  %vec.phi489 = phi <4 x i32> [ splat (i32 1), %vector.ph485 ], [ %i.hf, %vector.body487 ]
  %vec.phi490 = phi <4 x i32> [ splat (i32 1), %vector.ph485 ], [ %i.hg, %vector.body487 ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index488 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load491 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !83
  %wide.load492 = load <4 x i32>, ptr %i.he, align 4, !tbaa !83
  %i.hf = mul <4 x i32> %wide.load491, %vec.phi489 ; 2 uses
  %i.hg = mul <4 x i32> %wide.load492, %vec.phi490 ; 2 uses
  %index.next493 = add nuw i64 %index488, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.hh, label %middle.block494, label %vector.body487, !llvm.loop !1072

middle.block494:                                  ; preds = %vector.body487
  %bin.rdx495 = mul <4 x i32> %i.hg, %i.hf
  %i.hi = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx495) ; 2 uses
  %cmp.n496 = icmp eq i64 %9, %n.vec486
  br i1 %cmp.n496, label %.loopexit, label %scalar.ph483.preheader

scalar.ph483.preheader:                           ; preds = %.preheader.i.i81, %middle.block494
  %indvars.iv40.i.i82.ph = phi i64 [ %indvars.iv38.i.i74, %.preheader.i.i81 ], [ %i.hb, %middle.block494 ]
  %.030.i.i83.ph = phi i32 [ 1, %.preheader.i.i81 ], [ %i.hi, %middle.block494 ]
  br label %scalar.ph483

scalar.ph483:                                     ; preds = %scalar.ph483.preheader, %scalar.ph483
  %indvars.iv40.i.i82 = phi i64 [ %indvars.iv.next41.i.i84, %scalar.ph483 ], [ %indvars.iv40.i.i82.ph, %scalar.ph483.preheader ] ; 2 uses
  %.030.i.i83 = phi i32 [ %i.hl, %scalar.ph483 ], [ %.030.i.i83.ph, %scalar.ph483.preheader ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv40.i.i82
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !83
  %i.hl = mul nsw i32 %i.hk, %.030.i.i83          ; 2 uses
  %indvars.iv.next41.i.i84 = add nuw nsw i64 %indvars.iv40.i.i82, 1 ; 2 uses
  %exitcond.not.i.i85 = icmp eq i64 %indvars.iv.next41.i.i84, %i.gk
  br i1 %exitcond.not.i.i85, label %.loopexit, label %scalar.ph483, !llvm.loop !1073

.loopexit:                                        ; preds = %scalar.ph483, %middle.block494
  %.lcssa460 = phi i32 [ %i.hi, %middle.block494 ], [ %i.hl, %scalar.ph483 ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv43.i.i73
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !83
  %i.ho = mul nsw i32 %i.hn, %.lcssa460
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv43.i.i73
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %.pn.i.i77 = phi i32 [ %i.ho, %.loopexit ], [ %i.hq, %bb.s ]
  %.1.i.i78 = add nsw i32 %.pn.i.i77, %.02132.i.i75 ; 2 uses
  %indvars.iv.next39.i.i79 = add nuw nsw i64 %indvars.iv38.i.i74, 1
  %exitcond47.not.i.i80 = icmp eq i64 %indvars.iv.next44.i.i76, %i.gk
  br i1 %exitcond47.not.i.i80, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.r, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.t
  %i.hr = sext i32 %.1.i.i78 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit, %.preheader27.i.i71, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i
  %.021.lcssa.i.i67 = phi i64 [ 0, %.preheader27.i.i71 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit ], [ %i.hr, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.hs = load ptr, ptr %i.ch, align 8, !tbaa !250
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %.021.lcssa.i.i67
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !57
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !82
  %i.hw = load double, ptr %i.bh, align 8, !tbaa !82
  %i.hx = call double @llvm.fmuladd.f64(double %i.hv, double %i.hw, double %i.gd)
  br label %bb.ax

.thread:                                          ; preds = %.noexc
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.u:                                             ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit
  %i.hz = icmp sgt i32 %.pre374, 0
  br i1 %i.hz, label %.lr.ph.i.i87, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106

.lr.ph.i.i87:                                     ; preds = %bb.u
  %i.ia = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ib = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.ic = load ptr, ptr %i.ca, align 8, !tbaa !60 ; 3 uses
  br label %bb.v

.preheader27.i.i90:                               ; preds = %bb.v
  %i.id = icmp sgt i32 %i.iq, 0
  br i1 %i.id, label %.lr.ph33.i.i91, label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106

.lr.ph33.i.i91:                                   ; preds = %.preheader27.i.i90
  %i.ie = zext nneg i32 %i.iq to i64              ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i87
  %indvars.iv.i.i88 = phi i64 [ 0, %.lr.ph.i.i87 ], [ %indvars.iv.next.i.i89, %bb.v ] ; 5 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i88
  %i.ig = load double, ptr %i.if, align 8, !tbaa !82
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i.i88
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !82
  %i.ij = fsub double %i.ig, %i.ii
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.i.i88
  %i.il = load double, ptr %i.ik, align 8, !tbaa !82
  %i.im = fdiv double %i.ij, %i.il
  %i.in = fadd double %i.im, f0x3EB0C6F7A0B5ED8D
  %i.io = fptosi double %i.in to i32
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i88
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !83
  %indvars.iv.next.i.i89 = add nuw nsw i64 %indvars.iv.i.i88, 1 ; 2 uses
  %i.iq = load i32, ptr %i.h, align 8, !tbaa !279 ; 3 uses
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp slt i64 %indvars.iv.next.i.i89, %i.ir
  br i1 %i.is, label %bb.v, label %.preheader27.i.i90, !llvm.loop !21

bb.w:                                             ; preds = %bb.y, %.lr.ph33.i.i91
  %indvars.iv43.i.i92 = phi i64 [ 0, %.lr.ph33.i.i91 ], [ %indvars.iv.next44.i.i95, %bb.y ] ; 4 uses
  %indvars.iv38.i.i93 = phi i64 [ 1, %.lr.ph33.i.i91 ], [ %indvars.iv.next39.i.i98, %bb.y ] ; 4 uses
  %.02132.i.i94 = phi i32 [ 0, %.lr.ph33.i.i91 ], [ %.1.i.i97, %bb.y ]
  %10 = xor i64 %indvars.iv43.i.i92, -1
  %11 = add nsw i64 %10, %i.ie                    ; 3 uses
  %indvars.iv.next44.i.i95 = add nuw nsw i64 %indvars.iv43.i.i92, 1 ; 3 uses
  %i.it = icmp samesign ult i64 %indvars.iv.next44.i.i95, %i.ie
  br i1 %i.it, label %.preheader.i.i101, label %bb.x

.preheader.i.i101:                                ; preds = %bb.w
  %i.iu = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 2 uses
  %min.iters.check612 = icmp ult i64 %11, 8
  br i1 %min.iters.check612, label %scalar.ph611.preheader, label %vector.ph613

vector.ph613:                                     ; preds = %.preheader.i.i101
  %n.vec614 = and i64 %11, -8                     ; 3 uses
  %i.iv = add i64 %indvars.iv38.i.i93, %n.vec614
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv38.i.i93
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph613
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next621, %vector.body615 ] ; 2 uses
  %vec.phi617 = phi <4 x i32> [ splat (i32 1), %vector.ph613 ], [ %i.iz, %vector.body615 ]
  %vec.phi618 = phi <4 x i32> [ splat (i32 1), %vector.ph613 ], [ %i.ja, %vector.body615 ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index616 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load619 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !83
  %wide.load620 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !83
  %i.iz = mul <4 x i32> %wide.load619, %vec.phi617 ; 2 uses
  %i.ja = mul <4 x i32> %wide.load620, %vec.phi618 ; 2 uses
  %index.next621 = add nuw i64 %index616, 8       ; 2 uses
  %i.jb = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.jb, label %middle.block622, label %vector.body615, !llvm.loop !1074

middle.block622:                                  ; preds = %vector.body615
  %bin.rdx623 = mul <4 x i32> %i.ja, %i.iz
  %i.jc = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx623) ; 2 uses
  %cmp.n624 = icmp eq i64 %11, %n.vec614
  br i1 %cmp.n624, label %.loopexit682, label %scalar.ph611.preheader

scalar.ph611.preheader:                           ; preds = %.preheader.i.i101, %middle.block622
  %indvars.iv40.i.i102.ph = phi i64 [ %indvars.iv38.i.i93, %.preheader.i.i101 ], [ %i.iv, %middle.block622 ]
  %.030.i.i103.ph = phi i32 [ 1, %.preheader.i.i101 ], [ %i.jc, %middle.block622 ]
  br label %scalar.ph611

scalar.ph611:                                     ; preds = %scalar.ph611.preheader, %scalar.ph611
  %indvars.iv40.i.i102 = phi i64 [ %indvars.iv.next41.i.i104, %scalar.ph611 ], [ %indvars.iv40.i.i102.ph, %scalar.ph611.preheader ] ; 2 uses
  %.030.i.i103 = phi i32 [ %i.jf, %scalar.ph611 ], [ %.030.i.i103.ph, %scalar.ph611.preheader ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv40.i.i102
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !83
  %i.jf = mul nsw i32 %i.je, %.030.i.i103         ; 2 uses
  %indvars.iv.next41.i.i104 = add nuw nsw i64 %indvars.iv40.i.i102, 1 ; 2 uses
  %exitcond.not.i.i105 = icmp eq i64 %indvars.iv.next41.i.i104, %i.ie
  br i1 %exitcond.not.i.i105, label %.loopexit682, label %scalar.ph611, !llvm.loop !1075

.loopexit682:                                     ; preds = %scalar.ph611, %middle.block622
  %.lcssa444 = phi i32 [ %i.jc, %middle.block622 ], [ %i.jf, %scalar.ph611 ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv43.i.i92
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !83
  %i.ji = mul nsw i32 %i.jh, %.lcssa444
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv43.i.i92
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !83
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit682
  %.pn.i.i96 = phi i32 [ %i.ji, %.loopexit682 ], [ %i.jk, %bb.x ]
  %.1.i.i97 = add nsw i32 %.pn.i.i96, %.02132.i.i94 ; 2 uses
  %indvars.iv.next39.i.i98 = add nuw nsw i64 %indvars.iv38.i.i93, 1
  %exitcond47.not.i.i99 = icmp eq i64 %indvars.iv.next44.i.i95, %i.ie
  br i1 %exitcond47.not.i.i99, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i100, label %bb.w, !llvm.loop !22

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i100: ; preds = %bb.y
  %i.jl = sext i32 %.1.i.i97 to i64
  br label %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106

_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106: ; preds = %bb.u, %.preheader27.i.i90, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i100
  %.021.lcssa.i.i86 = phi i64 [ 0, %.preheader27.i.i90 ], [ 0, %bb.u ], [ %i.jl, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i100 ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.021.lcssa.i.i86
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !82
  %i.jo = load i32, ptr %i.cc, align 8, !tbaa !273
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph.i.i108, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127

.lr.ph.i.i108:                                    ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106
  %i.jq = load ptr, ptr %i.cd, align 8, !tbaa !57
  %i.jr = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.js = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 3 uses
  br label %bb.z

.preheader27.i.i111:                              ; preds = %bb.z
  %i.jt = icmp sgt i32 %i.kg, 0
  br i1 %i.jt, label %.lr.ph33.i.i112, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127

.lr.ph33.i.i112:                                  ; preds = %.preheader27.i.i111
  %i.ju = zext nneg i32 %i.kg to i64              ; 4 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i108
  %indvars.iv.i.i109 = phi i64 [ 0, %.lr.ph.i.i108 ], [ %indvars.iv.next.i.i110, %bb.z ] ; 5 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i109
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !82
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.i.i109
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !82
  %i.jz = fsub double %i.jw, %i.jy
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.i.i109
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !82
  %i.kc = fdiv double %i.jz, %i.kb
  %i.kd = fadd double %i.kc, f0x3EB0C6F7A0B5ED8D
  %i.ke = fptosi double %i.kd to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.i109
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !83
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %i.kg = load i32, ptr %i.cc, align 8, !tbaa !273 ; 3 uses
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next.i.i110, %i.kh
  br i1 %i.ki, label %bb.z, label %.preheader27.i.i111, !llvm.loop !16

bb.aa:                                            ; preds = %bb.ac, %.lr.ph33.i.i112
  %indvars.iv43.i.i113 = phi i64 [ 0, %.lr.ph33.i.i112 ], [ %indvars.iv.next44.i.i116, %bb.ac ] ; 4 uses
  %indvars.iv38.i.i114 = phi i64 [ 1, %.lr.ph33.i.i112 ], [ %indvars.iv.next39.i.i119, %bb.ac ] ; 4 uses
  %.02132.i.i115 = phi i32 [ 0, %.lr.ph33.i.i112 ], [ %.1.i.i118, %bb.ac ]
  %12 = xor i64 %indvars.iv43.i.i113, -1
  %13 = add nsw i64 %12, %i.ju                    ; 3 uses
  %indvars.iv.next44.i.i116 = add nuw nsw i64 %indvars.iv43.i.i113, 1 ; 3 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next44.i.i116, %i.ju
  br i1 %i.kj, label %.preheader.i.i122, label %bb.ab

.preheader.i.i122:                                ; preds = %bb.aa
  %i.kk = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %min.iters.check596 = icmp ult i64 %13, 8
  br i1 %min.iters.check596, label %scalar.ph595.preheader, label %vector.ph597

vector.ph597:                                     ; preds = %.preheader.i.i122
  %n.vec598 = and i64 %13, -8                     ; 3 uses
  %i.kl = add i64 %indvars.iv38.i.i114, %n.vec598
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv38.i.i114
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph597
  %index600 = phi i64 [ 0, %vector.ph597 ], [ %index.next605, %vector.body599 ] ; 2 uses
  %vec.phi601 = phi <4 x i32> [ splat (i32 1), %vector.ph597 ], [ %i.kp, %vector.body599 ]
  %vec.phi602 = phi <4 x i32> [ splat (i32 1), %vector.ph597 ], [ %i.kq, %vector.body599 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index600 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load603 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !83
  %wide.load604 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !83
  %i.kp = mul <4 x i32> %wide.load603, %vec.phi601 ; 2 uses
  %i.kq = mul <4 x i32> %wide.load604, %vec.phi602 ; 2 uses
  %index.next605 = add nuw i64 %index600, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next605, %n.vec598
  br i1 %i.kr, label %middle.block606, label %vector.body599, !llvm.loop !1076

middle.block606:                                  ; preds = %vector.body599
  %bin.rdx607 = mul <4 x i32> %i.kq, %i.kp
  %i.ks = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx607) ; 2 uses
  %cmp.n608 = icmp eq i64 %13, %n.vec598
  br i1 %cmp.n608, label %.loopexit681, label %scalar.ph595.preheader

scalar.ph595.preheader:                           ; preds = %.preheader.i.i122, %middle.block606
  %indvars.iv40.i.i123.ph = phi i64 [ %indvars.iv38.i.i114, %.preheader.i.i122 ], [ %i.kl, %middle.block606 ]
  %.030.i.i124.ph = phi i32 [ 1, %.preheader.i.i122 ], [ %i.ks, %middle.block606 ]
  br label %scalar.ph595

scalar.ph595:                                     ; preds = %scalar.ph595.preheader, %scalar.ph595
  %indvars.iv40.i.i123 = phi i64 [ %indvars.iv.next41.i.i125, %scalar.ph595 ], [ %indvars.iv40.i.i123.ph, %scalar.ph595.preheader ] ; 2 uses
  %.030.i.i124 = phi i32 [ %i.kv, %scalar.ph595 ], [ %.030.i.i124.ph, %scalar.ph595.preheader ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv40.i.i123
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !83
  %i.kv = mul nsw i32 %i.ku, %.030.i.i124         ; 2 uses
  %indvars.iv.next41.i.i125 = add nuw nsw i64 %indvars.iv40.i.i123, 1 ; 2 uses
  %exitcond.not.i.i126 = icmp eq i64 %indvars.iv.next41.i.i125, %i.ju
  br i1 %exitcond.not.i.i126, label %.loopexit681, label %scalar.ph595, !llvm.loop !1077

.loopexit681:                                     ; preds = %scalar.ph595, %middle.block606
  %.lcssa446 = phi i32 [ %i.ks, %middle.block606 ], [ %i.kv, %scalar.ph595 ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv43.i.i113
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !83
  %i.ky = mul nsw i32 %i.kx, %.lcssa446
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv43.i.i113
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !83
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit681
  %.pn.i.i117 = phi i32 [ %i.ky, %.loopexit681 ], [ %i.la, %bb.ab ]
  %.1.i.i118 = add nsw i32 %.pn.i.i117, %.02132.i.i115 ; 2 uses
  %indvars.iv.next39.i.i119 = add nuw nsw i64 %indvars.iv38.i.i114, 1
  %exitcond47.not.i.i120 = icmp eq i64 %indvars.iv.next44.i.i116, %i.ju
  br i1 %exitcond47.not.i.i120, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i121, label %bb.aa, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i121: ; preds = %bb.ac
  %i.lb = sext i32 %.1.i.i118 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127: ; preds = %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106, %.preheader27.i.i111, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i121
  %.021.lcssa.i.i107 = phi i64 [ 0, %.preheader27.i.i111 ], [ 0, %_ZN11UIestimator8n_vectorIdE9get_valueERKSt6vectorIdSaIdEE.exit106 ], [ %i.lb, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i121 ]
  %i.lc = load ptr, ptr %i.ch, align 8, !tbaa !250
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %.021.lcssa.i.i107
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !57
  %i.lf = load double, ptr %i.le, align 8, !tbaa !82
  %i.lg = load i32, ptr %i.cj, align 8, !tbaa !274
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph.i.i129, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148

.lr.ph.i.i129:                                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127
  %i.li = load ptr, ptr %i.ci, align 8, !tbaa !57
  %i.lj = load ptr, ptr %i.ck, align 8, !tbaa !57
  %i.lk = load ptr, ptr %i.cl, align 8, !tbaa !60 ; 3 uses
  br label %bb.ad

.preheader27.i.i132:                              ; preds = %bb.ad
  %i.ll = icmp sgt i32 %i.ly, 0
  br i1 %i.ll, label %.lr.ph33.i.i133, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148

.lr.ph33.i.i133:                                  ; preds = %.preheader27.i.i132
  %i.lm = zext nneg i32 %i.ly to i64              ; 4 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i129
  %indvars.iv.i.i130 = phi i64 [ 0, %.lr.ph.i.i129 ], [ %indvars.iv.next.i.i131, %bb.ad ] ; 5 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i130
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !82
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i.i130
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !82
  %i.lr = fsub double %i.lo, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i.i130
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !82
  %i.lu = fdiv double %i.lr, %i.lt
  %i.lv = fadd double %i.lu, f0x3EB0C6F7A0B5ED8D
  %i.lw = fptosi double %i.lv to i32
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.i.i130
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !83
  %indvars.iv.next.i.i131 = add nuw nsw i64 %indvars.iv.i.i130, 1 ; 2 uses
  %i.ly = load i32, ptr %i.cj, align 8, !tbaa !274 ; 3 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next.i.i131, %i.lz
  br i1 %i.ma, label %bb.ad, label %.preheader27.i.i132, !llvm.loop !18

bb.ae:                                            ; preds = %bb.ag, %.lr.ph33.i.i133
  %indvars.iv43.i.i134 = phi i64 [ 0, %.lr.ph33.i.i133 ], [ %indvars.iv.next44.i.i137, %bb.ag ] ; 4 uses
  %indvars.iv38.i.i135 = phi i64 [ 1, %.lr.ph33.i.i133 ], [ %indvars.iv.next39.i.i140, %bb.ag ] ; 4 uses
  %.02132.i.i136 = phi i32 [ 0, %.lr.ph33.i.i133 ], [ %.1.i.i139, %bb.ag ]
  %14 = xor i64 %indvars.iv43.i.i134, -1
  %15 = add nsw i64 %14, %i.lm                    ; 3 uses
  %indvars.iv.next44.i.i137 = add nuw nsw i64 %indvars.iv43.i.i134, 1 ; 3 uses
  %i.mb = icmp samesign ult i64 %indvars.iv.next44.i.i137, %i.lm
  br i1 %i.mb, label %.preheader.i.i143, label %bb.af

.preheader.i.i143:                                ; preds = %bb.ae
  %i.mc = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 2 uses
  %min.iters.check580 = icmp ult i64 %15, 8
  br i1 %min.iters.check580, label %scalar.ph579.preheader, label %vector.ph581

vector.ph581:                                     ; preds = %.preheader.i.i143
  %n.vec582 = and i64 %15, -8                     ; 3 uses
  %i.md = add i64 %indvars.iv38.i.i135, %n.vec582
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv38.i.i135
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph581
  %index584 = phi i64 [ 0, %vector.ph581 ], [ %index.next589, %vector.body583 ] ; 2 uses
  %vec.phi585 = phi <4 x i32> [ splat (i32 1), %vector.ph581 ], [ %i.mh, %vector.body583 ]
  %vec.phi586 = phi <4 x i32> [ splat (i32 1), %vector.ph581 ], [ %i.mi, %vector.body583 ]
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index584 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %wide.load587 = load <4 x i32>, ptr %i.mf, align 4, !tbaa !83
  %wide.load588 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !83
  %i.mh = mul <4 x i32> %wide.load587, %vec.phi585 ; 2 uses
  %i.mi = mul <4 x i32> %wide.load588, %vec.phi586 ; 2 uses
  %index.next589 = add nuw i64 %index584, 8       ; 2 uses
  %i.mj = icmp eq i64 %index.next589, %n.vec582
  br i1 %i.mj, label %middle.block590, label %vector.body583, !llvm.loop !1078

middle.block590:                                  ; preds = %vector.body583
  %bin.rdx591 = mul <4 x i32> %i.mi, %i.mh
  %i.mk = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx591) ; 2 uses
  %cmp.n592 = icmp eq i64 %15, %n.vec582
  br i1 %cmp.n592, label %.loopexit680, label %scalar.ph579.preheader

scalar.ph579.preheader:                           ; preds = %.preheader.i.i143, %middle.block590
  %indvars.iv40.i.i144.ph = phi i64 [ %indvars.iv38.i.i135, %.preheader.i.i143 ], [ %i.md, %middle.block590 ]
  %.030.i.i145.ph = phi i32 [ 1, %.preheader.i.i143 ], [ %i.mk, %middle.block590 ]
  br label %scalar.ph579

scalar.ph579:                                     ; preds = %scalar.ph579.preheader, %scalar.ph579
  %indvars.iv40.i.i144 = phi i64 [ %indvars.iv.next41.i.i146, %scalar.ph579 ], [ %indvars.iv40.i.i144.ph, %scalar.ph579.preheader ] ; 2 uses
  %.030.i.i145 = phi i32 [ %i.mn, %scalar.ph579 ], [ %.030.i.i145.ph, %scalar.ph579.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv40.i.i144
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !83
  %i.mn = mul nsw i32 %i.mm, %.030.i.i145         ; 2 uses
  %indvars.iv.next41.i.i146 = add nuw nsw i64 %indvars.iv40.i.i144, 1 ; 2 uses
  %exitcond.not.i.i147 = icmp eq i64 %indvars.iv.next41.i.i146, %i.lm
  br i1 %exitcond.not.i.i147, label %.loopexit680, label %scalar.ph579, !llvm.loop !1079

.loopexit680:                                     ; preds = %scalar.ph579, %middle.block590
  %.lcssa448 = phi i32 [ %i.mk, %middle.block590 ], [ %i.mn, %scalar.ph579 ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv43.i.i134
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !83
  %i.mq = mul nsw i32 %i.mp, %.lcssa448
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv43.i.i134
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !83
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit680
  %.pn.i.i138 = phi i32 [ %i.mq, %.loopexit680 ], [ %i.ms, %bb.af ]
  %.1.i.i139 = add nsw i32 %.pn.i.i138, %.02132.i.i136 ; 2 uses
  %indvars.iv.next39.i.i140 = add nuw nsw i64 %indvars.iv38.i.i135, 1
  %exitcond47.not.i.i141 = icmp eq i64 %indvars.iv.next44.i.i137, %i.lm
  br i1 %exitcond47.not.i.i141, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i142, label %bb.ae, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i142: ; preds = %bb.ag
  %i.mt = sext i32 %.1.i.i139 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127, %.preheader27.i.i132, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i142
  %.021.lcssa.i.i128 = phi i64 [ 0, %.preheader27.i.i132 ], [ 0, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit127 ], [ %i.mt, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i142 ]
  %i.mu = load ptr, ptr %i.cn, align 8, !tbaa !60 ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.021.lcssa.i.i128
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !83
  %i.mx = sitofp i32 %i.mw to double
  %i.my = load i32, ptr %i.co, align 8, !tbaa !273
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.lr.ph.i.i150, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169

.lr.ph.i.i150:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148
  %i.na = load ptr, ptr %i.cp, align 8, !tbaa !57
  %i.nb = load ptr, ptr %i.cq, align 8, !tbaa !57
  %i.nc = load ptr, ptr %i.cr, align 8, !tbaa !60 ; 3 uses
  br label %bb.ah

.preheader27.i.i153:                              ; preds = %bb.ah
  %i.nd = icmp sgt i32 %i.nq, 0
  br i1 %i.nd, label %.lr.ph33.i.i154, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169

.lr.ph33.i.i154:                                  ; preds = %.preheader27.i.i153
  %i.ne = zext nneg i32 %i.nq to i64              ; 4 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i.i150
  %indvars.iv.i.i151 = phi i64 [ 0, %.lr.ph.i.i150 ], [ %indvars.iv.next.i.i152, %bb.ah ] ; 5 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i151
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !82
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv.i.i151
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !82
  %i.nj = fsub double %i.ng, %i.ni
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.i.i151
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !82
  %i.nm = fdiv double %i.nj, %i.nl
  %i.nn = fadd double %i.nm, f0x3EB0C6F7A0B5ED8D
  %i.no = fptosi double %i.nn to i32
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i151
  store i32 %i.no, ptr %i.np, align 4, !tbaa !83
  %indvars.iv.next.i.i152 = add nuw nsw i64 %indvars.iv.i.i151, 1 ; 2 uses
  %i.nq = load i32, ptr %i.co, align 8, !tbaa !273 ; 3 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = icmp slt i64 %indvars.iv.next.i.i152, %i.nr
  br i1 %i.ns, label %bb.ah, label %.preheader27.i.i153, !llvm.loop !16

bb.ai:                                            ; preds = %bb.ak, %.lr.ph33.i.i154
  %indvars.iv43.i.i155 = phi i64 [ 0, %.lr.ph33.i.i154 ], [ %indvars.iv.next44.i.i158, %bb.ak ] ; 4 uses
  %indvars.iv38.i.i156 = phi i64 [ 1, %.lr.ph33.i.i154 ], [ %indvars.iv.next39.i.i161, %bb.ak ] ; 4 uses
  %.02132.i.i157 = phi i32 [ 0, %.lr.ph33.i.i154 ], [ %.1.i.i160, %bb.ak ]
  %16 = xor i64 %indvars.iv43.i.i155, -1
  %17 = add nsw i64 %16, %i.ne                    ; 3 uses
  %indvars.iv.next44.i.i158 = add nuw nsw i64 %indvars.iv43.i.i155, 1 ; 3 uses
  %i.nt = icmp samesign ult i64 %indvars.iv.next44.i.i158, %i.ne
  br i1 %i.nt, label %.preheader.i.i164, label %bb.aj

.preheader.i.i164:                                ; preds = %bb.ai
  %i.nu = load ptr, ptr %i.cs, align 8, !tbaa !60 ; 2 uses
  %min.iters.check564 = icmp ult i64 %17, 8
  br i1 %min.iters.check564, label %scalar.ph563.preheader, label %vector.ph565

vector.ph565:                                     ; preds = %.preheader.i.i164
  %n.vec566 = and i64 %17, -8                     ; 3 uses
  %i.nv = add i64 %indvars.iv38.i.i156, %n.vec566
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv38.i.i156
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph565
  %index568 = phi i64 [ 0, %vector.ph565 ], [ %index.next573, %vector.body567 ] ; 2 uses
  %vec.phi569 = phi <4 x i32> [ splat (i32 1), %vector.ph565 ], [ %i.nz, %vector.body567 ]
  %vec.phi570 = phi <4 x i32> [ splat (i32 1), %vector.ph565 ], [ %i.oa, %vector.body567 ]
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %index568 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load571 = load <4 x i32>, ptr %i.nx, align 4, !tbaa !83
  %wide.load572 = load <4 x i32>, ptr %i.ny, align 4, !tbaa !83
  %i.nz = mul <4 x i32> %wide.load571, %vec.phi569 ; 2 uses
  %i.oa = mul <4 x i32> %wide.load572, %vec.phi570 ; 2 uses
  %index.next573 = add nuw i64 %index568, 8       ; 2 uses
  %i.ob = icmp eq i64 %index.next573, %n.vec566
  br i1 %i.ob, label %middle.block574, label %vector.body567, !llvm.loop !1080

middle.block574:                                  ; preds = %vector.body567
  %bin.rdx575 = mul <4 x i32> %i.oa, %i.nz
  %i.oc = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx575) ; 2 uses
  %cmp.n576 = icmp eq i64 %17, %n.vec566
  br i1 %cmp.n576, label %.loopexit679, label %scalar.ph563.preheader

scalar.ph563.preheader:                           ; preds = %.preheader.i.i164, %middle.block574
  %indvars.iv40.i.i165.ph = phi i64 [ %indvars.iv38.i.i156, %.preheader.i.i164 ], [ %i.nv, %middle.block574 ]
  %.030.i.i166.ph = phi i32 [ 1, %.preheader.i.i164 ], [ %i.oc, %middle.block574 ]
  br label %scalar.ph563

scalar.ph563:                                     ; preds = %scalar.ph563.preheader, %scalar.ph563
  %indvars.iv40.i.i165 = phi i64 [ %indvars.iv.next41.i.i167, %scalar.ph563 ], [ %indvars.iv40.i.i165.ph, %scalar.ph563.preheader ] ; 2 uses
  %.030.i.i166 = phi i32 [ %i.of, %scalar.ph563 ], [ %.030.i.i166.ph, %scalar.ph563.preheader ]
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv40.i.i165
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !83
  %i.of = mul nsw i32 %i.oe, %.030.i.i166         ; 2 uses
  %indvars.iv.next41.i.i167 = add nuw nsw i64 %indvars.iv40.i.i165, 1 ; 2 uses
  %exitcond.not.i.i168 = icmp eq i64 %indvars.iv.next41.i.i167, %i.ne
  br i1 %exitcond.not.i.i168, label %.loopexit679, label %scalar.ph563, !llvm.loop !1081

.loopexit679:                                     ; preds = %scalar.ph563, %middle.block574
  %.lcssa450 = phi i32 [ %i.oc, %middle.block574 ], [ %i.of, %scalar.ph563 ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv43.i.i155
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !83
  %i.oi = mul nsw i32 %i.oh, %.lcssa450
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv43.i.i155
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !83
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit679
  %.pn.i.i159 = phi i32 [ %i.oi, %.loopexit679 ], [ %i.ok, %bb.aj ]
  %.1.i.i160 = add nsw i32 %.pn.i.i159, %.02132.i.i157 ; 2 uses
  %indvars.iv.next39.i.i161 = add nuw nsw i64 %indvars.iv38.i.i156, 1
  %exitcond47.not.i.i162 = icmp eq i64 %indvars.iv.next44.i.i158, %i.ne
  br i1 %exitcond47.not.i.i162, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i163, label %bb.ai, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i163: ; preds = %bb.ak
  %i.ol = sext i32 %.1.i.i160 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148, %.preheader27.i.i153, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i163
  %.021.lcssa.i.i149 = phi i64 [ 0, %.preheader27.i.i153 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit148 ], [ %i.ol, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i163 ]
  %i.om = load ptr, ptr %i.ct, align 8, !tbaa !250
  %i.on = getelementptr inbounds nuw [24 x i8], ptr %i.om, i64 %.021.lcssa.i.i149
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !57
  %i.op = load double, ptr %i.oo, align 8, !tbaa !82
  %i.oq = load i32, ptr %i.bt, align 8, !tbaa !274
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %.lr.ph.i.i171, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190

.lr.ph.i.i171:                                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169
  %i.os = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.ot = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.ou = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  br label %bb.al

.preheader27.i.i174:                              ; preds = %bb.al
  %i.ov = icmp sgt i32 %i.pi, 0
  br i1 %i.ov, label %.lr.ph33.i.i175, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190

.lr.ph33.i.i175:                                  ; preds = %.preheader27.i.i174
  %i.ow = zext nneg i32 %i.pi to i64              ; 4 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i171
  %indvars.iv.i.i172 = phi i64 [ 0, %.lr.ph.i.i171 ], [ %indvars.iv.next.i.i173, %bb.al ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i172
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !82
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.i.i172
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !82
  %i.pb = fsub double %i.oy, %i.pa
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.i.i172
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !82
  %i.pe = fdiv double %i.pb, %i.pd
  %i.pf = fadd double %i.pe, f0x3EB0C6F7A0B5ED8D
  %i.pg = fptosi double %i.pf to i32
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.i.i172
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !83
  %indvars.iv.next.i.i173 = add nuw nsw i64 %indvars.iv.i.i172, 1 ; 2 uses
  %i.pi = load i32, ptr %i.bt, align 8, !tbaa !274 ; 3 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = icmp slt i64 %indvars.iv.next.i.i173, %i.pj
  br i1 %i.pk, label %bb.al, label %.preheader27.i.i174, !llvm.loop !18

bb.am:                                            ; preds = %bb.ao, %.lr.ph33.i.i175
  %indvars.iv43.i.i176 = phi i64 [ 0, %.lr.ph33.i.i175 ], [ %indvars.iv.next44.i.i179, %bb.ao ] ; 4 uses
  %indvars.iv38.i.i177 = phi i64 [ 1, %.lr.ph33.i.i175 ], [ %indvars.iv.next39.i.i182, %bb.ao ] ; 4 uses
  %.02132.i.i178 = phi i32 [ 0, %.lr.ph33.i.i175 ], [ %.1.i.i181, %bb.ao ]
  %18 = xor i64 %indvars.iv43.i.i176, -1
  %19 = add nsw i64 %18, %i.ow                    ; 3 uses
  %indvars.iv.next44.i.i179 = add nuw nsw i64 %indvars.iv43.i.i176, 1 ; 3 uses
  %i.pl = icmp samesign ult i64 %indvars.iv.next44.i.i179, %i.ow
  br i1 %i.pl, label %.preheader.i.i185, label %bb.an

.preheader.i.i185:                                ; preds = %bb.am
  %i.pm = load ptr, ptr %i.bx, align 8, !tbaa !60 ; 2 uses
  %min.iters.check548 = icmp ult i64 %19, 8
  br i1 %min.iters.check548, label %scalar.ph547.preheader, label %vector.ph549

vector.ph549:                                     ; preds = %.preheader.i.i185
  %n.vec550 = and i64 %19, -8                     ; 3 uses
  %i.pn = add i64 %indvars.iv38.i.i177, %n.vec550
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv38.i.i177
  br label %vector.body551

vector.body551:                                   ; preds = %vector.body551, %vector.ph549
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next557, %vector.body551 ] ; 2 uses
  %vec.phi553 = phi <4 x i32> [ splat (i32 1), %vector.ph549 ], [ %i.pr, %vector.body551 ]
  %vec.phi554 = phi <4 x i32> [ splat (i32 1), %vector.ph549 ], [ %i.ps, %vector.body551 ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %index552 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load555 = load <4 x i32>, ptr %i.pp, align 4, !tbaa !83
  %wide.load556 = load <4 x i32>, ptr %i.pq, align 4, !tbaa !83
  %i.pr = mul <4 x i32> %wide.load555, %vec.phi553 ; 2 uses
  %i.ps = mul <4 x i32> %wide.load556, %vec.phi554 ; 2 uses
  %index.next557 = add nuw i64 %index552, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next557, %n.vec550
  br i1 %i.pt, label %middle.block558, label %vector.body551, !llvm.loop !1082

middle.block558:                                  ; preds = %vector.body551
  %bin.rdx559 = mul <4 x i32> %i.ps, %i.pr
  %i.pu = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx559) ; 2 uses
  %cmp.n560 = icmp eq i64 %19, %n.vec550
  br i1 %cmp.n560, label %.loopexit678, label %scalar.ph547.preheader

scalar.ph547.preheader:                           ; preds = %.preheader.i.i185, %middle.block558
  %indvars.iv40.i.i186.ph = phi i64 [ %indvars.iv38.i.i177, %.preheader.i.i185 ], [ %i.pn, %middle.block558 ]
  %.030.i.i187.ph = phi i32 [ 1, %.preheader.i.i185 ], [ %i.pu, %middle.block558 ]
  br label %scalar.ph547

scalar.ph547:                                     ; preds = %scalar.ph547.preheader, %scalar.ph547
  %indvars.iv40.i.i186 = phi i64 [ %indvars.iv.next41.i.i188, %scalar.ph547 ], [ %indvars.iv40.i.i186.ph, %scalar.ph547.preheader ] ; 2 uses
  %.030.i.i187 = phi i32 [ %i.px, %scalar.ph547 ], [ %.030.i.i187.ph, %scalar.ph547.preheader ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv40.i.i186
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !83
  %i.px = mul nsw i32 %i.pw, %.030.i.i187         ; 2 uses
  %indvars.iv.next41.i.i188 = add nuw nsw i64 %indvars.iv40.i.i186, 1 ; 2 uses
  %exitcond.not.i.i189 = icmp eq i64 %indvars.iv.next41.i.i188, %i.ow
  br i1 %exitcond.not.i.i189, label %.loopexit678, label %scalar.ph547, !llvm.loop !1083

.loopexit678:                                     ; preds = %scalar.ph547, %middle.block558
  %.lcssa452 = phi i32 [ %i.pu, %middle.block558 ], [ %i.px, %scalar.ph547 ]
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv43.i.i176
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !83
  %i.qa = mul nsw i32 %i.pz, %.lcssa452
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv43.i.i176
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !83
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit678
  %.pn.i.i180 = phi i32 [ %i.qa, %.loopexit678 ], [ %i.qc, %bb.an ]
  %.1.i.i181 = add nsw i32 %.pn.i.i180, %.02132.i.i178 ; 2 uses
  %indvars.iv.next39.i.i182 = add nuw nsw i64 %indvars.iv38.i.i177, 1
  %exitcond47.not.i.i183 = icmp eq i64 %indvars.iv.next44.i.i179, %i.ow
  br i1 %exitcond47.not.i.i183, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i184, label %bb.am, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i184: ; preds = %bb.ao
  %i.qd = sext i32 %.1.i.i181 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169, %.preheader27.i.i174, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i184
  %.021.lcssa.i.i170 = phi i64 [ 0, %.preheader27.i.i174 ], [ 0, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit169 ], [ %i.qd, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i184 ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.021.lcssa.i.i170
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !83
  %i.qg = sitofp i32 %i.qf to double
  %i.qh = fmul double %i.op, %i.qg
  %i.qi = call double @llvm.fmuladd.f64(double %i.lf, double %i.mx, double %i.qh)
  %i.qj = load i32, ptr %i.cj, align 8, !tbaa !274
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %.lr.ph.i.i192, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211

.lr.ph.i.i192:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190
  %i.ql = load ptr, ptr %i.ci, align 8, !tbaa !57
  %i.qm = load ptr, ptr %i.ck, align 8, !tbaa !57
  %i.qn = load ptr, ptr %i.cl, align 8, !tbaa !60 ; 3 uses
  br label %bb.ap

.preheader27.i.i195:                              ; preds = %bb.ap
  %i.qo = icmp sgt i32 %i.rb, 0
  br i1 %i.qo, label %.lr.ph33.i.i196, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211

.lr.ph33.i.i196:                                  ; preds = %.preheader27.i.i195
  %i.qp = zext nneg i32 %i.rb to i64              ; 4 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i.i192
  %indvars.iv.i.i193 = phi i64 [ 0, %.lr.ph.i.i192 ], [ %indvars.iv.next.i.i194, %bb.ap ] ; 5 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i193
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !82
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.i.i193
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !82
  %i.qu = fsub double %i.qr, %i.qt
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.i.i193
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !82
  %i.qx = fdiv double %i.qu, %i.qw
  %i.qy = fadd double %i.qx, f0x3EB0C6F7A0B5ED8D
  %i.qz = fptosi double %i.qy to i32
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv.i.i193
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !83
  %indvars.iv.next.i.i194 = add nuw nsw i64 %indvars.iv.i.i193, 1 ; 2 uses
  %i.rb = load i32, ptr %i.cj, align 8, !tbaa !274 ; 3 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = icmp slt i64 %indvars.iv.next.i.i194, %i.rc
  br i1 %i.rd, label %bb.ap, label %.preheader27.i.i195, !llvm.loop !18

bb.aq:                                            ; preds = %bb.as, %.lr.ph33.i.i196
  %indvars.iv43.i.i197 = phi i64 [ 0, %.lr.ph33.i.i196 ], [ %indvars.iv.next44.i.i200, %bb.as ] ; 4 uses
  %indvars.iv38.i.i198 = phi i64 [ 1, %.lr.ph33.i.i196 ], [ %indvars.iv.next39.i.i203, %bb.as ] ; 4 uses
  %.02132.i.i199 = phi i32 [ 0, %.lr.ph33.i.i196 ], [ %.1.i.i202, %bb.as ]
  %20 = xor i64 %indvars.iv43.i.i197, -1
  %21 = add nsw i64 %20, %i.qp                    ; 3 uses
  %indvars.iv.next44.i.i200 = add nuw nsw i64 %indvars.iv43.i.i197, 1 ; 3 uses
  %i.re = icmp samesign ult i64 %indvars.iv.next44.i.i200, %i.qp
  br i1 %i.re, label %.preheader.i.i206, label %bb.ar

.preheader.i.i206:                                ; preds = %bb.aq
  %i.rf = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 2 uses
  %min.iters.check532 = icmp ult i64 %21, 8
  br i1 %min.iters.check532, label %scalar.ph531.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %.preheader.i.i206
  %n.vec534 = and i64 %21, -8                     ; 3 uses
  %i.rg = add i64 %indvars.iv38.i.i198, %n.vec534
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv38.i.i198
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph533
  %index536 = phi i64 [ 0, %vector.ph533 ], [ %index.next541, %vector.body535 ] ; 2 uses
  %vec.phi537 = phi <4 x i32> [ splat (i32 1), %vector.ph533 ], [ %i.rk, %vector.body535 ]
  %vec.phi538 = phi <4 x i32> [ splat (i32 1), %vector.ph533 ], [ %i.rl, %vector.body535 ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %index536 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %wide.load539 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !83
  %wide.load540 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !83
  %i.rk = mul <4 x i32> %wide.load539, %vec.phi537 ; 2 uses
  %i.rl = mul <4 x i32> %wide.load540, %vec.phi538 ; 2 uses
  %index.next541 = add nuw i64 %index536, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.rm, label %middle.block542, label %vector.body535, !llvm.loop !1084

middle.block542:                                  ; preds = %vector.body535
  %bin.rdx543 = mul <4 x i32> %i.rl, %i.rk
  %i.rn = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx543) ; 2 uses
  %cmp.n544 = icmp eq i64 %21, %n.vec534
  br i1 %cmp.n544, label %.loopexit677, label %scalar.ph531.preheader

scalar.ph531.preheader:                           ; preds = %.preheader.i.i206, %middle.block542
  %indvars.iv40.i.i207.ph = phi i64 [ %indvars.iv38.i.i198, %.preheader.i.i206 ], [ %i.rg, %middle.block542 ]
  %.030.i.i208.ph = phi i32 [ 1, %.preheader.i.i206 ], [ %i.rn, %middle.block542 ]
  br label %scalar.ph531

scalar.ph531:                                     ; preds = %scalar.ph531.preheader, %scalar.ph531
  %indvars.iv40.i.i207 = phi i64 [ %indvars.iv.next41.i.i209, %scalar.ph531 ], [ %indvars.iv40.i.i207.ph, %scalar.ph531.preheader ] ; 2 uses
  %.030.i.i208 = phi i32 [ %i.rq, %scalar.ph531 ], [ %.030.i.i208.ph, %scalar.ph531.preheader ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv40.i.i207
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !83
  %i.rq = mul nsw i32 %i.rp, %.030.i.i208         ; 2 uses
  %indvars.iv.next41.i.i209 = add nuw nsw i64 %indvars.iv40.i.i207, 1 ; 2 uses
  %exitcond.not.i.i210 = icmp eq i64 %indvars.iv.next41.i.i209, %i.qp
  br i1 %exitcond.not.i.i210, label %.loopexit677, label %scalar.ph531, !llvm.loop !1085

.loopexit677:                                     ; preds = %scalar.ph531, %middle.block542
  %.lcssa454 = phi i32 [ %i.rn, %middle.block542 ], [ %i.rq, %scalar.ph531 ]
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv43.i.i197
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !83
  %i.rt = mul nsw i32 %i.rs, %.lcssa454
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv43.i.i197
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !83
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit677
  %.pn.i.i201 = phi i32 [ %i.rt, %.loopexit677 ], [ %i.rv, %bb.ar ]
  %.1.i.i202 = add nsw i32 %.pn.i.i201, %.02132.i.i199 ; 2 uses
  %indvars.iv.next39.i.i203 = add nuw nsw i64 %indvars.iv38.i.i198, 1
  %exitcond47.not.i.i204 = icmp eq i64 %indvars.iv.next44.i.i200, %i.qp
  br i1 %exitcond47.not.i.i204, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i205, label %bb.aq, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i205: ; preds = %bb.as
  %i.rw = sext i32 %.1.i.i202 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190, %.preheader27.i.i195, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i205
  %.021.lcssa.i.i191 = phi i64 [ 0, %.preheader27.i.i195 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit190 ], [ %i.rw, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i205 ]
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.021.lcssa.i.i191
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !83
  %i.rz = load i32, ptr %i.bt, align 8, !tbaa !274
  %i.sa = icmp sgt i32 %i.rz, 0
  br i1 %i.sa, label %.lr.ph.i.i213, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit232

.lr.ph.i.i213:                                    ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211
  %i.sb = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.sc = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.sd = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  br label %bb.at

.preheader27.i.i216:                              ; preds = %bb.at
  %i.se = icmp sgt i32 %i.sr, 0
  br i1 %i.se, label %.lr.ph33.i.i217, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit232

.lr.ph33.i.i217:                                  ; preds = %.preheader27.i.i216
  %i.sf = zext nneg i32 %i.sr to i64              ; 4 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i213
  %indvars.iv.i.i214 = phi i64 [ 0, %.lr.ph.i.i213 ], [ %indvars.iv.next.i.i215, %bb.at ] ; 5 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i214
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !82
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.i.i214
  %i.sj = load double, ptr %i.si, align 8, !tbaa !82
  %i.sk = fsub double %i.sh, %i.sj
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.i.i214
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !82
  %i.sn = fdiv double %i.sk, %i.sm
  %i.so = fadd double %i.sn, f0x3EB0C6F7A0B5ED8D
  %i.sp = fptosi double %i.so to i32
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.i.i214
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !83
  %indvars.iv.next.i.i215 = add nuw nsw i64 %indvars.iv.i.i214, 1 ; 2 uses
  %i.sr = load i32, ptr %i.bt, align 8, !tbaa !274 ; 3 uses
  %i.ss = sext i32 %i.sr to i64
  %i.st = icmp slt i64 %indvars.iv.next.i.i215, %i.ss
  br i1 %i.st, label %bb.at, label %.preheader27.i.i216, !llvm.loop !18

bb.au:                                            ; preds = %bb.aw, %.lr.ph33.i.i217
  %indvars.iv43.i.i218 = phi i64 [ 0, %.lr.ph33.i.i217 ], [ %indvars.iv.next44.i.i221, %bb.aw ] ; 4 uses
  %indvars.iv38.i.i219 = phi i64 [ 1, %.lr.ph33.i.i217 ], [ %indvars.iv.next39.i.i224, %bb.aw ] ; 4 uses
  %.02132.i.i220 = phi i32 [ 0, %.lr.ph33.i.i217 ], [ %.1.i.i223, %bb.aw ]
  %22 = xor i64 %indvars.iv43.i.i218, -1
  %23 = add nsw i64 %22, %i.sf                    ; 3 uses
  %indvars.iv.next44.i.i221 = add nuw nsw i64 %indvars.iv43.i.i218, 1 ; 3 uses
  %i.su = icmp samesign ult i64 %indvars.iv.next44.i.i221, %i.sf
  br i1 %i.su, label %.preheader.i.i227, label %bb.av

.preheader.i.i227:                                ; preds = %bb.au
  %i.sv = load ptr, ptr %i.bx, align 8, !tbaa !60 ; 2 uses
  %min.iters.check516 = icmp ult i64 %23, 8
  br i1 %min.iters.check516, label %scalar.ph515.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %.preheader.i.i227
  %n.vec518 = and i64 %23, -8                     ; 3 uses
  %i.sw = add i64 %indvars.iv38.i.i219, %n.vec518
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv38.i.i219
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph517
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next525, %vector.body519 ] ; 2 uses
  %vec.phi521 = phi <4 x i32> [ splat (i32 1), %vector.ph517 ], [ %i.ta, %vector.body519 ]
  %vec.phi522 = phi <4 x i32> [ splat (i32 1), %vector.ph517 ], [ %i.tb, %vector.body519 ]
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %index520 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load523 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !83
  %wide.load524 = load <4 x i32>, ptr %i.sz, align 4, !tbaa !83
  %i.ta = mul <4 x i32> %wide.load523, %vec.phi521 ; 2 uses
  %i.tb = mul <4 x i32> %wide.load524, %vec.phi522 ; 2 uses
  %index.next525 = add nuw i64 %index520, 8       ; 2 uses
  %i.tc = icmp eq i64 %index.next525, %n.vec518
  br i1 %i.tc, label %middle.block526, label %vector.body519, !llvm.loop !1086

middle.block526:                                  ; preds = %vector.body519
  %bin.rdx527 = mul <4 x i32> %i.tb, %i.ta
  %i.td = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx527) ; 2 uses
  %cmp.n528 = icmp eq i64 %23, %n.vec518
  br i1 %cmp.n528, label %.loopexit676, label %scalar.ph515.preheader

scalar.ph515.preheader:                           ; preds = %.preheader.i.i227, %middle.block526
  %indvars.iv40.i.i228.ph = phi i64 [ %indvars.iv38.i.i219, %.preheader.i.i227 ], [ %i.sw, %middle.block526 ]
  %.030.i.i229.ph = phi i32 [ 1, %.preheader.i.i227 ], [ %i.td, %middle.block526 ]
  br label %scalar.ph515

scalar.ph515:                                     ; preds = %scalar.ph515.preheader, %scalar.ph515
  %indvars.iv40.i.i228 = phi i64 [ %indvars.iv.next41.i.i230, %scalar.ph515 ], [ %indvars.iv40.i.i228.ph, %scalar.ph515.preheader ] ; 2 uses
  %.030.i.i229 = phi i32 [ %i.tg, %scalar.ph515 ], [ %.030.i.i229.ph, %scalar.ph515.preheader ]
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv40.i.i228
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !83
  %i.tg = mul nsw i32 %i.tf, %.030.i.i229         ; 2 uses
  %indvars.iv.next41.i.i230 = add nuw nsw i64 %indvars.iv40.i.i228, 1 ; 2 uses
  %exitcond.not.i.i231 = icmp eq i64 %indvars.iv.next41.i.i230, %i.sf
  br i1 %exitcond.not.i.i231, label %.loopexit676, label %scalar.ph515, !llvm.loop !1087

.loopexit676:                                     ; preds = %scalar.ph515, %middle.block526
  %.lcssa456 = phi i32 [ %i.td, %middle.block526 ], [ %i.tg, %scalar.ph515 ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv43.i.i218
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !83
  %i.tj = mul nsw i32 %i.ti, %.lcssa456
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv43.i.i218
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !83
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit676
  %.pn.i.i222 = phi i32 [ %i.tj, %.loopexit676 ], [ %i.tl, %bb.av ]
  %.1.i.i223 = add nsw i32 %.pn.i.i222, %.02132.i.i220 ; 2 uses
  %indvars.iv.next39.i.i224 = add nuw nsw i64 %indvars.iv38.i.i219, 1
  %exitcond47.not.i.i225 = icmp eq i64 %indvars.iv.next44.i.i221, %i.sf
  br i1 %exitcond47.not.i.i225, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i226, label %bb.au, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i226: ; preds = %bb.aw
  %i.tm = sext i32 %.1.i.i223 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit232

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit232: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211, %.preheader27.i.i216, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i226
  %.021.lcssa.i.i212 = phi i64 [ 0, %.preheader27.i.i216 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit211 ], [ %i.tm, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i226 ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.021.lcssa.i.i212
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !83
  %i.tp = add nsw i32 %i.to, %i.ry
  %i.tq = sitofp i32 %i.tp to double
  %i.tr = fdiv double %i.qi, %i.tq
  %i.ts = load double, ptr %i.bh, align 8, !tbaa !82
  %i.tt = call double @llvm.fmuladd.f64(double %i.tr, double %i.ts, double %i.jn)
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit232, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %.014 = phi double [ %i.hx, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit ], [ %i.tt, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit232 ] ; 3 uses
  %i.tu = fcmp olt double %.014, %.015342
  %.116 = select i1 %i.tu, double %.014, double %.015342 ; 2 uses
  %i.tv = load i32, ptr %i.h, align 8, !tbaa !279
  %i.tw = icmp sgt i32 %i.tv, 0
  br i1 %i.tw, label %.lr.ph.i.i234, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253

.lr.ph.i.i234:                                    ; preds = %bb.ax
  %i.tx = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ty = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.tz = load ptr, ptr %i.ca, align 8, !tbaa !60 ; 3 uses
  br label %bb.ay

.preheader27.i.i237:                              ; preds = %bb.ay
  %i.ua = icmp sgt i32 %i.ut, 0
  br i1 %i.ua, label %.lr.ph33.i.i238, label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253

.lr.ph33.i.i238:                                  ; preds = %.preheader27.i.i237
  %i.ub = zext nneg i32 %i.ut to i64              ; 3 uses
  %min.iters.check468 = icmp ult i32 %i.ut, 8
  br i1 %min.iters.check468, label %scalar.ph467.preheader, label %vector.ph469

vector.ph469:                                     ; preds = %.lr.ph33.i.i238
  %n.vec470 = and i64 %i.ub, 2147483640           ; 3 uses
  br label %vector.body471

vector.body471:                                   ; preds = %vector.body471, %vector.ph469
  %index472 = phi i64 [ 0, %vector.ph469 ], [ %index.next477, %vector.body471 ] ; 2 uses
  %vec.phi473 = phi <4 x i32> [ zeroinitializer, %vector.ph469 ], [ %i.ue, %vector.body471 ]
  %vec.phi474 = phi <4 x i32> [ zeroinitializer, %vector.ph469 ], [ %i.uf, %vector.body471 ]
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %index472 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %wide.load475 = load <4 x i32>, ptr %i.uc, align 4, !tbaa !83
  %wide.load476 = load <4 x i32>, ptr %i.ud, align 4, !tbaa !83
  %i.ue = add <4 x i32> %wide.load475, %vec.phi473 ; 2 uses
  %i.uf = add <4 x i32> %wide.load476, %vec.phi474 ; 2 uses
  %index.next477 = add nuw i64 %index472, 8       ; 2 uses
  %i.ug = icmp eq i64 %index.next477, %n.vec470
  br i1 %i.ug, label %middle.block478, label %vector.body471, !llvm.loop !1088

middle.block478:                                  ; preds = %vector.body471
  %bin.rdx479 = add <4 x i32> %i.uf, %i.ue
  %i.uh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx479) ; 2 uses
  %cmp.n480 = icmp eq i64 %n.vec470, %i.ub
  br i1 %cmp.n480, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i247, label %scalar.ph467.preheader

scalar.ph467.preheader:                           ; preds = %.lr.ph33.i.i238, %middle.block478
  %indvars.iv43.i.i239.ph = phi i64 [ 0, %.lr.ph33.i.i238 ], [ %n.vec470, %middle.block478 ]
  %.02132.i.i241.ph = phi i32 [ 0, %.lr.ph33.i.i238 ], [ %i.uh, %middle.block478 ]
  br label %scalar.ph467

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i234
  %indvars.iv.i.i235 = phi i64 [ 0, %.lr.ph.i.i234 ], [ %indvars.iv.next.i.i236, %bb.ay ] ; 5 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i235
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !82
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.i.i235
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !82
  %i.um = fsub double %i.uj, %i.ul
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.i.i235
  %i.uo = load double, ptr %i.un, align 8, !tbaa !82
  %i.up = fdiv double %i.um, %i.uo
  %i.uq = fadd double %i.up, f0x3EB0C6F7A0B5ED8D
  %i.ur = fptosi double %i.uq to i32
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %indvars.iv.i.i235
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !83
  %indvars.iv.next.i.i236 = add nuw nsw i64 %indvars.iv.i.i235, 1 ; 2 uses
  %i.ut = load i32, ptr %i.h, align 8, !tbaa !279 ; 4 uses
  %i.uu = sext i32 %i.ut to i64
  %i.uv = icmp slt i64 %indvars.iv.next.i.i236, %i.uu
  br i1 %i.uv, label %bb.ay, label %.preheader27.i.i237, !llvm.loop !21

scalar.ph467:                                     ; preds = %scalar.ph467.preheader, %scalar.ph467
  %indvars.iv43.i.i239 = phi i64 [ %indvars.iv.next44.i.i242, %scalar.ph467 ], [ %indvars.iv43.i.i239.ph, %scalar.ph467.preheader ] ; 2 uses
  %.02132.i.i241 = phi i32 [ %.1.i.i244, %scalar.ph467 ], [ %.02132.i.i241.ph, %scalar.ph467.preheader ]
  %indvars.iv.next44.i.i242 = add nuw nsw i64 %indvars.iv43.i.i239, 1 ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %indvars.iv43.i.i239
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !83
  %.1.i.i244 = add nsw i32 %i.ux, %.02132.i.i241  ; 2 uses
  %exitcond47.not.i.i246 = icmp eq i64 %indvars.iv.next44.i.i242, %i.ub
  br i1 %exitcond47.not.i.i246, label %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i247, label %scalar.ph467, !llvm.loop !1089

_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i247: ; preds = %scalar.ph467, %middle.block478
  %.1.i.i244.lcssa = phi i32 [ %i.uh, %middle.block478 ], [ %.1.i.i244, %scalar.ph467 ]
  %i.uy = sext i32 %.1.i.i244.lcssa to i64
  br label %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253

_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253: ; preds = %bb.ax, %.preheader27.i.i237, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i247
  %.021.lcssa.i.i233 = phi i64 [ 0, %.preheader27.i.i237 ], [ 0, %bb.ax ], [ %i.uy, %_ZN11UIestimator8n_vectorIdE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i247 ]
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.021.lcssa.i.i233
  store double %.014, ptr %i.uz, align 8, !tbaa !82
  store double %i.cv, ptr %i.bu, align 8, !tbaa !82
  %i.va = load double, ptr %i.bh, align 8, !tbaa !82
  %i.vb = fadd double %.0343, %i.va               ; 2 uses
  %i.vc = load double, ptr %i.bl, align 8, !tbaa !82
  %i.vd = fadd double %i.vc, f0x3EB0C6F7A0B5ED8D  ; 2 uses
  %i.ve = fcmp olt double %i.vb, %i.vd
  br i1 %i.ve, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !1090

._crit_edge.loopexit:                             ; preds = %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit253
  %.pre375 = load double, ptr %i.be, align 8, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.pre-phi = phi double [ %i.vd, %._crit_edge.loopexit ], [ %i.bn, %bb.e ]
  %i.vf = phi double [ %.pre375, %._crit_edge.loopexit ], [ %i.bf, %bb.e ] ; 2 uses
  %.015.lcssa = phi double [ %.116, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.e ]
  %i.vg = fcmp olt double %i.vf, %.pre-phi
  br i1 %i.vg, label %.lr.ph347, label %_ZNSt6vectorIdSaIdEED2Ev.exit297

.lr.ph347:                                        ; preds = %._crit_edge
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %.pre376 = load i32, ptr %i.h, align 8, !tbaa !279
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph347, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit295
  %i.vj = phi i32 [ %.pre376, %.lr.ph347 ], [ %i.xt, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit295 ] ; 2 uses
  %.1345 = phi double [ %i.vf, %.lr.ph347 ], [ %i.xy, %_ZN11UIestimator8n_vectorIdE9set_valueERKSt6vectorIdSaIdEEd.exit295 ] ; 2 uses
  %i.vk = fadd double %.1345, f0x3EB0C6F7A0B5ED8D
  store double %i.vk, ptr %i.e, align 8, !tbaa !82
  %i.vl = icmp sgt i32 %i.vj, 0
end_hunk_7
