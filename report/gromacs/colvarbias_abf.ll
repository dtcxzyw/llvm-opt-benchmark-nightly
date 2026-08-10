inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN11UIestimator11UIestimatorC2ERKSt6vectorIdSaIdEES5_S5_S5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRKS1_ISB_SaISB_EEd:bb.a
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.qz to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.re) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i166

_ZNSt6vectorIdSaIdEED2Ev.exit.i166:               ; preds = %bb.cv, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i164
  %i.rf = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i6.i167 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i6.i167, label %_ZNSt6vectorIdSaIdEED2Ev.exit7.i168, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i166
  %i.rh = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !224
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.rg to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rl) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit7.i168

_ZNSt6vectorIdSaIdEED2Ev.exit7.i168:              ; preds = %bb.cw, %_ZNSt6vectorIdSaIdEED2Ev.exit.i166
  %i.rm = load ptr, ptr %23, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i8.i169 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i8.i169, label %_ZN11UIestimator8n_vectorIiED2Ev.exit170, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit7.i168
  %i.rn = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !224
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rm to i64
  %i.rr = sub i64 %i.rp, %i.rq
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rr) #26
  br label %_ZN11UIestimator8n_vectorIiED2Ev.exit170

_ZN11UIestimator8n_vectorIiED2Ev.exit170:         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit7.i168, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.rs = load i32, ptr %i.bf, align 8, !tbaa !491 ; 6 uses
  %i.rt = sext i32 %i.rs to i64                   ; 2 uses
  %i.ru = icmp slt i32 %i.rs, 0
  br i1 %i.ru, label %bb.cy, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171

bb.cy:                                            ; preds = %_ZN11UIestimator8n_vectorIiED2Ev.exit170
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc178 unwind label %bb.de

.noexc178:                                        ; preds = %bb.cy
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171: ; preds = %_ZN11UIestimator8n_vectorIiED2Ev.exit170
  %.not.i.i.i.i172 = icmp eq i32 %i.rs, 0
  br i1 %.not.i.i.i.i172, label %.preheader259, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171
  %i.rv = shl nuw nsw i64 %i.rt, 3                ; 2 uses
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #27
          to label %.lr.ph271 unwind label %bb.de ; 12 uses

.lr.ph271:                                        ; preds = %bb.cz
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rw, i8 0, i64 %i.rv, i1 false), !tbaa !53
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rt
  %i.ry = ptrtoint ptr %i.rx to i64               ; 3 uses
  %i.rz = load ptr, ptr %i.q, align 8, !tbaa !26  ; 7 uses
  %wide.trip.count = zext nneg i32 %i.rs to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.rs, 8
  %i.sa = ptrtoaddr ptr %i.rz to i64
  %i.sb = ptrtoaddr ptr %i.rw to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %diff.check = icmp ugt i64 %i.sc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph271
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %index ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %wide.load = load <2 x double>, ptr %i.sd, align 8, !tbaa !53
  %wide.load412 = load <2 x double>, ptr %i.se, align 8, !tbaa !53
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %index ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store <2 x double> %wide.load, ptr %i.sf, align 8, !tbaa !53
  store <2 x double> %wide.load412, ptr %i.sg, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sh = icmp eq i64 %index.next, %n.vec
  br i1 %i.sh, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader259, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph271, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph271 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.prol
  %i.sj = load double, ptr %i.si, align 8, !tbaa !53
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv.prol
  store double %i.sj, ptr %i.sk, align 8, !tbaa !53
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !496

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.sl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.sm = icmp ugt i64 %i.sl, -4
  br i1 %i.sm, label %.preheader259, label %scalar.ph

.preheader259:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171
  %.sroa.0240.0387 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171 ], [ %i.rw, %middle.block ], [ %i.rw, %scalar.ph ], [ %i.rw, %scalar.ph.prol.loopexit ] ; 9 uses
  %.sroa.15.0386 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i171 ], [ %i.ry, %middle.block ], [ %i.ry, %scalar.ph ], [ %i.ry, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 1328
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv
  %i.su = load double, ptr %i.st, align 8, !tbaa !53
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv
  store double %i.su, ptr %i.sv, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.next
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !53
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv.next
  store double %i.sx, ptr %i.sy, align 8, !tbaa !53
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.next.1
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !53
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv.next.1
  store double %i.ta, ptr %i.tb, align 8, !tbaa !53
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.next.2
  %i.td = load double, ptr %i.tc, align 8, !tbaa !53
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv.next.2
  store double %i.td, ptr %i.te, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader259, label %scalar.ph, !llvm.loop !497

bb.da:                                            ; preds = %bb.co, %bb.cn
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit182

bb.db:                                            ; preds = %.loopexit260
  %i.tg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.th = load ptr, ptr %22, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIdSaIdEED2Ev.exit182, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ti = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !224
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.th to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.tm) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit182

_ZNSt6vectorIdSaIdEED2Ev.exit182:                 ; preds = %bb.dc, %bb.db, %bb.da
  %.pn50 = phi { ptr, i32 } [ %i.tf, %bb.da ], [ %i.tg, %bb.db ], [ %i.tg, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

bb.dd:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit158
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

bb.de:                                            ; preds = %bb.cz, %bb.cy
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

.preheader:                                       ; preds = %.preheader259, %._crit_edge279
  %i.tp = phi i32 [ %i.rs, %.preheader259 ], [ %i.yk, %._crit_edge279 ] ; 2 uses
  %i.tq = icmp sgt i32 %i.tp, 0
  br i1 %i.tq, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit195
  %i.tr = phi i32 [ %i.wq, %_ZNSt6vectorIdSaIdEED2Ev.exit195 ], [ %i.tp, %.preheader ] ; 6 uses
  %.0272 = phi i32 [ %i.wp, %_ZNSt6vectorIdSaIdEED2Ev.exit195 ], [ 0, %.preheader ]
  %i.ts = sext i32 %i.tr to i64                   ; 3 uses
  %25 = icmp slt i32 %i.tr, 0
  br i1 %25, label %26, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183

26:                                               ; preds = %.lr.ph273
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc190 unwind label %.loopexit.split-lp

.noexc190:                                        ; preds = %26
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183: ; preds = %.lr.ph273
  %27 = shl nuw nsw i64 %i.ts, 3                  ; 10 uses
  %28 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %27) #27
          to label %.noexc191 unwind label %.loopexit253 ; 10 uses

.noexc191:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %28, i8 0, i64 %27, i1 false), !tbaa !53
  %i.tt = load i32, ptr %i.sn, align 8, !tbaa !498
  %i.tu = icmp sgt i32 %i.tt, 0
  br i1 %i.tu, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc191
  %i.tv = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.tw = load ptr, ptr %i.so, align 8, !tbaa !26
  %i.tx = load ptr, ptr %i.sp, align 8, !tbaa !29 ; 3 uses
  br label %bb.df

.preheader27.i.i:                                 ; preds = %bb.df
  %i.ty = icmp sgt i32 %i.ul, 0
  br i1 %i.ty, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.tz = zext nneg i32 %i.ul to i64              ; 4 uses
  br label %bb.dg

bb.df:                                            ; preds = %bb.df, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.df ] ; 5 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0240.0387, i64 %indvars.iv.i.i
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !53
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i.i
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !53
  %i.ue = fsub double %i.ub, %i.ud
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.i.i
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !53
  %i.uh = fdiv double %i.ue, %i.ug
  %i.ui = fadd double %i.uh, f0x3EB0C6F7A0B5ED8D
  %i.uj = fptosi double %i.ui to i32
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.i.i
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !54
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ul = load i32, ptr %i.sn, align 8, !tbaa !498 ; 3 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = icmp slt i64 %indvars.iv.next.i.i, %i.um
  br i1 %i.un, label %bb.df, label %.preheader27.i.i, !llvm.loop !499

bb.dg:                                            ; preds = %bb.di, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.di ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.di ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.di ]
  %i.uo = xor i64 %indvars.iv43.i.i, -1
  %i.up = add nsw i64 %i.uo, %i.tz                ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.uq = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.tz
  br i1 %i.uq, label %.preheader.i.i, label %bb.dh

.preheader.i.i:                                   ; preds = %bb.dg
  %i.ur = load ptr, ptr %i.ai, align 8, !tbaa !29 ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.up, 8
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %.preheader.i.i
  %n.vec429 = and i64 %i.up, -8                   ; 3 uses
  %i.us = add i64 %indvars.iv38.i.i, %n.vec429
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv38.i.i
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %vec.phi432 = phi <4 x i32> [ splat (i32 1), %vector.ph428 ], [ %i.uw, %vector.body430 ]
  %vec.phi433 = phi <4 x i32> [ splat (i32 1), %vector.ph428 ], [ %i.ux, %vector.body430 ]
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %index431 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %wide.load434 = load <4 x i32>, ptr %i.uu, align 4, !tbaa !54
  %wide.load435 = load <4 x i32>, ptr %i.uv, align 4, !tbaa !54
  %i.uw = mul <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %i.ux = mul <4 x i32> %wide.load435, %vec.phi433 ; 2 uses
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.uy = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.uy, label %middle.block437, label %vector.body430, !llvm.loop !500

middle.block437:                                  ; preds = %vector.body430
  %bin.rdx438 = mul <4 x i32> %i.ux, %i.uw
  %i.uz = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx438) ; 2 uses
  %cmp.n439 = icmp eq i64 %i.up, %n.vec429
  br i1 %cmp.n439, label %.loopexit, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %.preheader.i.i, %middle.block437
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.us, %middle.block437 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.uz, %middle.block437 ]
  br label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.preheader, %scalar.ph426
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph426 ], [ %indvars.iv40.i.i.ph, %scalar.ph426.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.vc, %scalar.ph426 ], [ %.030.i.i.ph, %scalar.ph426.preheader ]
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv40.i.i
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !54
  %i.vc = mul nsw i32 %i.vb, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.tz
  br i1 %exitcond.not.i.i, label %.loopexit, label %scalar.ph426, !llvm.loop !501

.loopexit:                                        ; preds = %scalar.ph426, %middle.block437
  %.lcssa402 = phi i32 [ %i.uz, %middle.block437 ], [ %i.vc, %scalar.ph426 ]
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv43.i.i
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !54
  %i.vf = mul nsw i32 %i.ve, %.lcssa402
  br label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv43.i.i
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !54
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.loopexit
  %.pn.i.i = phi i32 [ %i.vf, %.loopexit ], [ %i.vh, %bb.dh ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.tz
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.dg, !llvm.loop !502

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.di
  %i.vi = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, %.preheader27.i.i, %.noexc191
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %.noexc191 ], [ %i.vi, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.vj = load ptr, ptr %i.aj, align 8, !tbaa !401
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %i.vj, i64 %.021.lcssa.i.i ; 7 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !224
  %i.vn = load ptr, ptr %i.vk, align 8, !tbaa !26 ; 7 uses
  %i.vo = ptrtoint ptr %i.vm to i64
  %i.vp = ptrtoint ptr %i.vn to i64               ; 2 uses
  %i.vq = sub i64 %i.vo, %i.vp                    ; 2 uses
  %i.vr = icmp ugt i64 %27, %i.vq
  br i1 %i.vr, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, label %bb.dn

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.vs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %27) #27
          to label %.noexc237 unwind label %bb.dz ; 4 uses

.noexc237:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.vt = icmp ugt i32 %i.tr, 1
  br i1 %i.vt, label %bb.dj, label %bb.dk, !prof !503

bb.dj:                                            ; preds = %.noexc237
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vs, ptr nonnull align 8 %28, i64 %27, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.dk:                                            ; preds = %.noexc237
  %i.vu = icmp eq i32 %i.tr, 1
  br i1 %i.vu, label %bb.dl, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.dl:                                            ; preds = %bb.dk
  %i.vv = load double, ptr %28, align 8, !tbaa !53
  store double %i.vv, ptr %i.vs, align 8, !tbaa !53
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i: ; preds = %bb.dl, %bb.dk, %bb.dj
  %.not.i.i = icmp eq ptr %i.vn, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vn, i64 noundef %i.vq) #26
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.dm, %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  store ptr %i.vs, ptr %i.vk, align 8, !tbaa !26
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 %27
  store ptr %i.vw, ptr %i.vl, align 8, !tbaa !224
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dn:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vk, i64 8 ; 2 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !225 ; 3 uses
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = sub i64 %i.vz, %i.vp                    ; 5 uses
  %.not24.i = icmp ult i64 %i.wa, %27
  br i1 %.not24.i, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wb = icmp ugt i32 %i.tr, 1
  br i1 %i.wb, label %bb.dp, label %bb.dq, !prof !503

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vn, ptr nonnull align 8 %28, i64 %27, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dq:                                            ; preds = %bb.do
  %i.wc = icmp eq i32 %i.tr, 1
  br i1 %i.wc, label %bb.dr, label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dr:                                            ; preds = %bb.dq
  %i.wd = load double, ptr %28, align 8, !tbaa !53
  store double %i.wd, ptr %i.vn, align 8, !tbaa !53
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.ds:                                            ; preds = %bb.dn
  %i.we = icmp sgt i64 %i.wa, 8
  br i1 %i.we, label %bb.dt, label %bb.du, !prof !503

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vn, ptr nonnull align 8 %28, i64 %i.wa, i1 false)
  %.pre25.i = load ptr, ptr %i.vx, align 8, !tbaa !225 ; 2 uses
  %.pre26.i = load ptr, ptr %i.vk, align 8, !tbaa !26
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.wf = icmp eq i64 %i.wa, 8
  br i1 %i.wf, label %bb.dv, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.dv:                                            ; preds = %bb.du
  %i.wg = load double, ptr %28, align 8, !tbaa !53
  store double %i.wg, ptr %i.vn, align 8, !tbaa !53
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.dv, %bb.du, %bb.dt
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.dt ], [ %i.wa, %bb.du ], [ 8, %bb.dv ] ; 2 uses
  %i.wh = phi ptr [ %.pre25.i, %bb.dt ], [ %i.vy, %bb.du ], [ %i.vy, %bb.dv ] ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %28, i64 %.pre-phi32.i ; 2 uses
  %gepdiff = sub nsw i64 %27, %.pre-phi32.i       ; 3 uses
  %i.wj = icmp sgt i64 %gepdiff, 8
  br i1 %i.wj, label %bb.dw, label %bb.dx, !prof !503

bb.dw:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.wh, ptr nonnull align 8 %i.wi, i64 %gepdiff, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dx:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  %i.wk = icmp eq i64 %gepdiff, 8
  br i1 %i.wk, label %bb.dy, label %_ZNSt6vectorIdSaIdEED2Ev.exit195

bb.dy:                                            ; preds = %bb.dx
  %i.wl = load double, ptr %i.wi, align 8, !tbaa !53
  store double %i.wl, ptr %i.wh, align 8, !tbaa !53
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit195

_ZNSt6vectorIdSaIdEED2Ev.exit195:                 ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.dr, %bb.dq, %bb.dp, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.wm = load ptr, ptr %i.vk, align 8, !tbaa !26
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %27
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store ptr %i.wn, ptr %i.wo, align 8, !tbaa !225
  %.idx = shl nuw nsw i64 %i.ts, 3
  call void @_ZdlPvm(ptr noundef nonnull %28, i64 noundef %.idx) #26
  %i.wp = add nuw nsw i32 %.0272, 1               ; 2 uses
  %i.wq = load i32, ptr %i.bf, align 8, !tbaa !491 ; 2 uses
  %i.wr = icmp slt i32 %i.wp, %i.wq
  br i1 %i.wr, label %.lr.ph273, label %._crit_edge274, !llvm.loop !504

.loopexit253:                                     ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i183
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

.loopexit.split-lp:                               ; preds = %26
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

bb.dz:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %lpad.loopexit256 = landingpad { ptr, i32 }
          cleanup
  %.idx383 = shl nuw nsw i64 %i.ts, 3
  call void @_ZdlPvm(ptr noundef nonnull %28, i64 noundef %.idx383) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

._crit_edge274:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit195, %.preheader
  %i.ws = load i32, ptr %i.sq, align 8, !tbaa !505
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %.lr.ph.i.i199, label %bb.ee

.lr.ph.i.i199:                                    ; preds = %._crit_edge274
  %i.wu = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.wv = load ptr, ptr %i.sr, align 8, !tbaa !26
  %i.ww = load ptr, ptr %i.ss, align 8, !tbaa !29 ; 3 uses
  br label %bb.ea

.preheader27.i.i202:                              ; preds = %bb.ea
  %i.wx = icmp sgt i32 %i.xk, 0
  br i1 %i.wx, label %.lr.ph33.i.i203, label %bb.ee

.lr.ph33.i.i203:                                  ; preds = %.preheader27.i.i202
  %i.wy = zext nneg i32 %i.xk to i64              ; 4 uses
  br label %bb.eb

bb.ea:                                            ; preds = %bb.ea, %.lr.ph.i.i199
  %indvars.iv.i.i200 = phi i64 [ 0, %.lr.ph.i.i199 ], [ %indvars.iv.next.i.i201, %bb.ea ] ; 5 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0240.0387, i64 %indvars.iv.i.i200
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !53
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv.i.i200
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !53
  %i.xd = fsub double %i.xa, %i.xc
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.i.i200
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !53
  %i.xg = fdiv double %i.xd, %i.xf
  %i.xh = fadd double %i.xg, f0x3EB0C6F7A0B5ED8D
  %i.xi = fptosi double %i.xh to i32
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.i.i200
  store i32 %i.xi, ptr %i.xj, align 4, !tbaa !54
  %indvars.iv.next.i.i201 = add nuw nsw i64 %indvars.iv.i.i200, 1 ; 2 uses
  %i.xk = load i32, ptr %i.sq, align 8, !tbaa !505 ; 3 uses
  %i.xl = sext i32 %i.xk to i64
  %i.xm = icmp slt i64 %indvars.iv.next.i.i201, %i.xl
  br i1 %i.xm, label %bb.ea, label %.preheader27.i.i202, !llvm.loop !506

bb.eb:                                            ; preds = %bb.ed, %.lr.ph33.i.i203
  %indvars.iv43.i.i204 = phi i64 [ 0, %.lr.ph33.i.i203 ], [ %indvars.iv.next44.i.i207, %bb.ed ] ; 4 uses
  %indvars.iv38.i.i205 = phi i64 [ 1, %.lr.ph33.i.i203 ], [ %indvars.iv.next39.i.i210, %bb.ed ] ; 4 uses
  %.02132.i.i206 = phi i32 [ 0, %.lr.ph33.i.i203 ], [ %.1.i.i209, %bb.ed ]
  %i.xn = xor i64 %indvars.iv43.i.i204, -1
  %i.xo = add nsw i64 %i.xn, %i.wy                ; 3 uses
  %indvars.iv.next44.i.i207 = add nuw nsw i64 %indvars.iv43.i.i204, 1 ; 3 uses
  %i.xp = icmp samesign ult i64 %indvars.iv.next44.i.i207, %i.wy
  br i1 %i.xp, label %.preheader.i.i212, label %bb.ec

.preheader.i.i212:                                ; preds = %bb.eb
  %i.xq = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %min.iters.check414 = icmp ult i64 %i.xo, 8
  br i1 %min.iters.check414, label %scalar.ph413.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %.preheader.i.i212
  %n.vec416 = and i64 %i.xo, -8                   ; 3 uses
  %i.xr = add i64 %indvars.iv38.i.i205, %n.vec416
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv38.i.i205
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next422, %vector.body417 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph415 ], [ %i.xv, %vector.body417 ]
  %vec.phi419 = phi <4 x i32> [ splat (i32 1), %vector.ph415 ], [ %i.xw, %vector.body417 ]
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %index418 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %wide.load420 = load <4 x i32>, ptr %i.xt, align 4, !tbaa !54
  %wide.load421 = load <4 x i32>, ptr %i.xu, align 4, !tbaa !54
  %i.xv = mul <4 x i32> %wide.load420, %vec.phi   ; 2 uses
  %i.xw = mul <4 x i32> %wide.load421, %vec.phi419 ; 2 uses
  %index.next422 = add nuw i64 %index418, 8       ; 2 uses
  %i.xx = icmp eq i64 %index.next422, %n.vec416
  br i1 %i.xx, label %middle.block423, label %vector.body417, !llvm.loop !507

middle.block423:                                  ; preds = %vector.body417
  %bin.rdx = mul <4 x i32> %i.xw, %i.xv
  %i.xy = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n424 = icmp eq i64 %i.xo, %n.vec416
  br i1 %cmp.n424, label %.loopexit442, label %scalar.ph413.preheader

scalar.ph413.preheader:                           ; preds = %.preheader.i.i212, %middle.block423
  %indvars.iv40.i.i213.ph = phi i64 [ %indvars.iv38.i.i205, %.preheader.i.i212 ], [ %i.xr, %middle.block423 ]
  %.030.i.i214.ph = phi i32 [ 1, %.preheader.i.i212 ], [ %i.xy, %middle.block423 ]
  br label %scalar.ph413

scalar.ph413:                                     ; preds = %scalar.ph413.preheader, %scalar.ph413
  %indvars.iv40.i.i213 = phi i64 [ %indvars.iv.next41.i.i215, %scalar.ph413 ], [ %indvars.iv40.i.i213.ph, %scalar.ph413.preheader ] ; 2 uses
  %.030.i.i214 = phi i32 [ %i.yb, %scalar.ph413 ], [ %.030.i.i214.ph, %scalar.ph413.preheader ]
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv40.i.i213
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !54
  %i.yb = mul nsw i32 %i.ya, %.030.i.i214         ; 2 uses
  %indvars.iv.next41.i.i215 = add nuw nsw i64 %indvars.iv40.i.i213, 1 ; 2 uses
  %exitcond.not.i.i216 = icmp eq i64 %indvars.iv.next41.i.i215, %i.wy
  br i1 %exitcond.not.i.i216, label %.loopexit442, label %scalar.ph413, !llvm.loop !508

.loopexit442:                                     ; preds = %scalar.ph413, %middle.block423
  %.lcssa410 = phi i32 [ %i.xy, %middle.block423 ], [ %i.yb, %scalar.ph413 ]
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv43.i.i204
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !54
  %i.ye = mul nsw i32 %i.yd, %.lcssa410
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv43.i.i204
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !54
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.loopexit442
  %.pn.i.i208 = phi i32 [ %i.ye, %.loopexit442 ], [ %i.yg, %bb.ec ]
  %.1.i.i209 = add nsw i32 %.pn.i.i208, %.02132.i.i206 ; 2 uses
  %indvars.iv.next39.i.i210 = add nuw nsw i64 %indvars.iv38.i.i205, 1
  %exitcond47.not.i.i211 = icmp eq i64 %indvars.iv.next44.i.i207, %i.wy
  br i1 %exitcond47.not.i.i211, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, label %bb.eb, !llvm.loop !509

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i: ; preds = %bb.ed
  %i.yh = sext i32 %.1.i.i209 to i64
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i, %.preheader27.i.i202, %._crit_edge274
  %.021.lcssa.i.i198 = phi i64 [ 0, %.preheader27.i.i202 ], [ 0, %._crit_edge274 ], [ %i.yh, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i ]
  %i.yi = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %.021.lcssa.i.i198
  store i32 0, ptr %i.yj, align 4, !tbaa !54
  %i.yk = load i32, ptr %i.bf, align 8, !tbaa !491 ; 3 uses
  %.3275 = add i32 %i.yk, -1                      ; 2 uses
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph278, label %._crit_edge279

.lr.ph278:                                        ; preds = %bb.ee
  %i.ym = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.yn = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.yo = zext nneg i32 %.3275 to i64
  br label %bb.ef

bb.ef:                                            ; preds = %.lr.ph278, %bb.eg
  %indvars.iv292 = phi i64 [ %i.yo, %.lr.ph278 ], [ %indvars.iv.next293, %bb.eg ] ; 7 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %indvars.iv292 ; 2 uses
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !53
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0240.0387, i64 %indvars.iv292 ; 3 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !53
  %i.yt = fadd double %i.yq, %i.ys                ; 2 uses
  store double %i.yt, ptr %i.yr, align 8, !tbaa !53
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv292
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !53
  %i.yw = load double, ptr %i.yp, align 8, !tbaa !53
  %i.yx = fsub double %i.yv, %i.yw
  %i.yy = fadd double %i.yx, f0x3EB0C6F7A0B5ED8D
  %i.yz = fcmp ogt double %i.yt, %i.yy
  br i1 %i.yz, label %bb.eg, label %._crit_edge279.loopexit

bb.eg:                                            ; preds = %bb.ef
  %i.za = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %indvars.iv292
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !53
  store double %i.zc, ptr %i.yr, align 8, !tbaa !53
  %indvars.iv.next293 = add nsw i64 %indvars.iv292, -1
  %i.zd = icmp sgt i64 %indvars.iv292, 0
  br i1 %i.zd, label %bb.ef, label %._crit_edge279.thread, !llvm.loop !510

bb.eh:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i219
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

._crit_edge279.loopexit:                          ; preds = %bb.ef
  %i.zf = trunc nuw nsw i64 %indvars.iv292 to i32
  br label %._crit_edge279

._crit_edge279:                                   ; preds = %._crit_edge279.loopexit, %bb.ee
  %.3.lcssa = phi i32 [ %.3275, %bb.ee ], [ %i.zf, %._crit_edge279.loopexit ]
  %i.zg = icmp sgt i32 %.3.lcssa, -1
  br i1 %i.zg, label %.preheader, label %._crit_edge279.thread, !llvm.loop !511

._crit_edge279.thread:                            ; preds = %._crit_edge279, %bb.eg
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !362 ; 3 uses
  %i.zj = load ptr, ptr %i.x, align 8, !tbaa !361 ; 3 uses
  %i.zk = ptrtoint ptr %i.zi to i64
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = sub i64 %i.zk, %i.zl                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %.not.i.i.i.i217 = icmp eq ptr %i.zi, %i.zj
  br i1 %.not.i.i.i.i217, label %.noexc221, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge279.thread
  %i.zn = icmp ugt i64 %i.zm, 9223372036854775776
  br i1 %i.zn, label %.noexc.i.i219, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !239

.noexc.i.i219:                                    ; preds = %bb.ei
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc220 unwind label %bb.eh

.noexc220:                                        ; preds = %.noexc.i.i219
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ei
  %i.zo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zm) #27
          to label %.noexc221 unwind label %bb.eh

.noexc221:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %._crit_edge279.thread
  %i.zp = phi ptr [ null, %._crit_edge279.thread ], [ %i.zo, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.zp, ptr %24, align 8, !tbaa !361
  %i.zq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store ptr %i.zp, ptr %i.zq, align 8, !tbaa !362
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zm
  %i.zs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.zr, ptr %i.zs, align 8, !tbaa !364
  %i.zt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.zj, ptr %i.zi, ptr noundef %i.zp)
          to label %bb.el unwind label %bb.ej

bb.ej:                                            ; preds = %.noexc221
  %i.zu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIdSaIdEED2Ev.exit197, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef %i.zm) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

bb.el:                                            ; preds = %.noexc221
  store ptr %i.zt, ptr %i.zq, align 8, !tbaa !362
  invoke void @_ZN11UIestimator11UIestimator15read_inputfilesESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1402) %0, ptr noundef nonnull align 8 %24)
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.zv = load ptr, ptr %24, align 8, !tbaa !361  ; 3 uses
  %i.zw = load ptr, ptr %i.zq, align 8, !tbaa !362 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.zv, %i.zw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.em, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.zv, %bb.em ] ; 3 uses
  %i.zx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !208 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.zz = icmp eq ptr %i.zx, %i.zy
  br i1 %i.zz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aaa = load i64, ptr %i.zy, align 8, !tbaa !210
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zx, i64 noundef %i.aab) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.aac, %i.zw
  br i1 %.not.i.i.i222, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !363

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %24, align 8, !tbaa !361
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.em
  %i.aad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.zv, %bb.em ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.en

bb.en:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aae = load ptr, ptr %i.zs, align 8, !tbaa !364
  %i.aaf = ptrtoint ptr %i.aae to i64
  %i.aag = ptrtoint ptr %i.aad to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.aah) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.en
  %.not.i.i.i224 = icmp eq ptr %.sroa.0240.0387, null
  br i1 %.not.i.i.i224, label %_ZNSt6vectorIdSaIdEED2Ev.exit225, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aai = ptrtoint ptr %.sroa.0240.0387 to i64
  %i.aaj = sub i64 %.sroa.15.0386, %i.aai
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0240.0387, i64 noundef %i.aaj) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit225

bb.ep:                                            ; preds = %bb.el
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit197

_ZNSt6vectorIdSaIdEED2Ev.exit197:                 ; preds = %.loopexit253, %.loopexit.split-lp, %bb.ej, %bb.ek, %bb.eh, %bb.dz, %bb.ep
  %.pn52.pn = phi { ptr, i32 } [ %i.aak, %bb.ep ], [ %lpad.loopexit256, %bb.dz ], [ %i.zu, %bb.ej ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ze, %bb.eh ], [ %i.zu, %bb.ek ], [ %lpad.loopexit, %.loopexit253 ] ; 2 uses
  %.not.i.i.i226 = icmp eq ptr %.sroa.0240.0387, null
  br i1 %.not.i.i.i226, label %_ZNSt6vectorIdSaIdEED2Ev.exit227, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit197
  %i.aal = ptrtoint ptr %.sroa.0240.0387 to i64
  %i.aam = sub i64 %.sroa.15.0386, %i.aal
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0240.0387, i64 noundef %i.aam) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit227

_ZNSt6vectorIdSaIdEED2Ev.exit225:                 ; preds = %bb.eo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.cl
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit227:                 ; preds = %bb.de, %_ZNSt6vectorIdSaIdEED2Ev.exit197, %bb.eq, %bb.am, %bb.ap, %bb.as, %bb.av, %bb.cc, %bb.cd, %_ZNSt6vectorIdSaIdEED2Ev.exit144, %bb.ch, %_ZNSt6vectorIdSaIdEED2Ev.exit146, %_ZNSt6vectorIdSaIdEED2Ev.exit182, %bb.dd, %bb.aj
  %.pn62.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.aj ], [ %.pn62, %bb.av ], [ %.pn60, %bb.as ], [ %.pn58, %bb.ap ], [ %.pn56, %bb.am ], [ %i.os, %bb.cc ], [ %i.tn, %bb.dd ], [ %.pn50, %_ZNSt6vectorIdSaIdEED2Ev.exit182 ], [ %.pn48, %_ZNSt6vectorIdSaIdEED2Ev.exit146 ], [ %i.pc, %bb.ch ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit144 ], [ %i.ot, %bb.cd ], [ %i.to, %bb.de ], [ %.pn52.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit197 ], [ %.pn52.pn, %bb.eq ]
  call void @_ZNSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #24
  call void @_ZNSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #24
  call void @_ZN11UIestimator8n_vectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.ak) #24
  call void @_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.ah) #24
  call void @_ZN11UIestimator8n_vectorIdED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.ae) #24
  call void @_ZN11UIestimator8n_vectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.ab) #24
  call void @_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.y) #24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #24
  %i.aan = load ptr, ptr %i.u, align 8, !tbaa !208 ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.v
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit227
  %i.aap = load i64, ptr %i.v, align 8, !tbaa !210
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aaq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aar = load ptr, ptr %i.t, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i228 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i228, label %_ZNSt6vectorIdSaIdEED2Ev.exit229, label %bb.er

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !224
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aaw) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit229

_ZNSt6vectorIdSaIdEED2Ev.exit229:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.er
  %i.aax = load ptr, ptr %i.s, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i230 = icmp eq ptr %i.aax, null
  br i1 %.not.i.i.i230, label %_ZNSt6vectorIdSaIdEED2Ev.exit231, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit229
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !224
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aax to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.abc) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit231

_ZNSt6vectorIdSaIdEED2Ev.exit231:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit229, %bb.es
  %i.abd = load ptr, ptr %i.r, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i232 = icmp eq ptr %i.abd, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIdSaIdEED2Ev.exit233, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit231
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !224
  %i.abg = ptrtoint ptr %i.abf to i64
  %i.abh = ptrtoint ptr %i.abd to i64
  %i.abi = sub i64 %i.abg, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %i.abd, i64 noundef %i.abi) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit233

_ZNSt6vectorIdSaIdEED2Ev.exit233:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit231, %bb.et
  %i.abj = load ptr, ptr %i.q, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i234 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIdSaIdEED2Ev.exit235, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit233
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !224
  %i.abm = ptrtoint ptr %i.abl to i64
  %i.abn = ptrtoint ptr %i.abj to i64
  %i.abo = sub i64 %i.abm, %i.abn
  call void @_ZdlPvm(ptr noundef nonnull %i.abj, i64 noundef %i.abo) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit235

_ZNSt6vectorIdSaIdEED2Ev.exit235:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit233, %bb.eu
  call void @_ZN11UIestimator8n_matrixD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.n) #24
  call void @_ZN11UIestimator8n_vectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.k) #24
  call void @_ZNSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #24
  call void @_ZNSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(1402) ptr @_ZN11UIestimator11UIestimatoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(1402) %0, ptr noundef nonnull align 8 dereferenceable(1402) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !505
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.o, ptr %i.p, align 8, !tbaa !505
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.u = load i32, ptr %i.t, align 8, !tbaa !512
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.u, ptr %i.v, align 8, !tbaa !512
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ae = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.ac, ptr noundef nonnull align 8 dereferenceable(168) %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ah = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ak = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.am = load i32, ptr %i.al, align 8, !tbaa !513
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.am, ptr %i.an, align 8, !tbaa !513
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aq = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.av = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ay = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !491
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !491
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.be = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bh = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bk = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.bn = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 480
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bq, ptr noundef nonnull align 8 dereferenceable(5) %i.br, i64 5, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !490
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store double %i.bw, ptr %i.bx, align 8, !tbaa !490
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ca = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.by, ptr noundef nonnull align 8 dereferenceable(160) %i.bz) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.cd = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc) ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.cg = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cf) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !498
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !498
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.cm = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 656
end_hunk_0
