Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE:bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.px, i8 0, i64 28, i1 false)
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.py, i8 0, i64 28, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pz, i8 0, i64 28, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pv, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qa, i8 0, i64 28, i1 false)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qb, i8 0, i64 28, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qc, i8 0, i64 28, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 256 ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.pp
  br i1 %i.qe, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.cs
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oz, i64 1032 ; 7 uses
  store ptr %i.pn, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8            ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  %.not322353 = icmp eq ptr %i.qh, %i.qi
  br i1 %.not322353, label %._crit_edge358, label %.lr.ph357

._crit_edge358:                                   ; preds = %._crit_edge352, %.loopexit
  %i.qj = load ptr, ptr %i.x, align 8
  %i.qk = add i32 %.0123361, 1
  %i.ql = zext i32 %.0123361 to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.ql
  store ptr %i.oz, ptr %i.qm, align 8
  %i.qn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0276.0360) #28 ; 2 uses
  %.not321 = icmp eq ptr %i.qn, %i.fv
  br i1 %.not321, label %.loopexit326, label %bb.cp

bb.cu:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit247, %bb.cp
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.lr.ph357:                                        ; preds = %.loopexit, %._crit_edge352
  %.0122355 = phi i32 [ %i.ry, %._crit_edge352 ], [ 0, %.loopexit ] ; 2 uses
  %.sroa.0272.0354 = phi ptr [ %i.rz, %._crit_edge352 ], [ %i.qh, %.loopexit ] ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0272.0354, i64 32
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0272.0354, i64 40
  %i.qr = load ptr, ptr %i.qq, align 8            ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = load ptr, ptr %i.qr, align 8
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 2                 ; 3 uses
  %i.qz = trunc i64 %i.qy to i32                  ; 2 uses
  %i.ra = load ptr, ptr %i.qf, align 8
  %i.rb = zext i32 %.0122355 to i64               ; 6 uses
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.ra, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  store i32 %i.qz, ptr %i.rd, align 8
  %i.re = and i64 %i.qy, 4294967295               ; 2 uses
  %i.rf = shl nuw nsw i64 %i.re, 2
  %i.rg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rf) #30
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %.lr.ph357
  %i.rh = load ptr, ptr %i.qf, align 8
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %i.rh, i64 %i.rb
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rg, ptr %i.rj, align 8
  %i.rk = shl nuw nsw i64 %i.re, 3
  %i.rl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rk) #30
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rm = load ptr, ptr %i.qf, align 8
  %i.rn = getelementptr inbounds nuw [32 x i8], ptr %i.rm, i64 %i.rb
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store ptr %i.rl, ptr %i.ro, align 8
  %i.rp = load i64, ptr %i.qp, align 8
  %i.rq = sitofp i64 %i.rp to double
  %i.rr = fdiv nnan double %i.rq, f0x422581D1AF600000
  %i.rs = load double, ptr %i.os, align 8
  %i.rt = fmul double %i.rs, %i.rr
  %i.ru = load ptr, ptr %i.qf, align 8
  %i.rv = getelementptr inbounds nuw [32 x i8], ptr %i.ru, i64 %i.rb
  store double %i.rt, ptr %i.rv, align 8
  %.not382 = icmp eq i32 %i.qz, 0
  br i1 %.not382, label %._crit_edge352, label %.lr.ph351

.lr.ph351:                                        ; preds = %bb.cw
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %wide.trip.count = and i64 %i.qy, 4294967295
  br label %bb.cy

._crit_edge352:                                   ; preds = %bb.da, %bb.cw
  %i.ry = add i32 %.0122355, 1
  %i.rz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0272.0354) #28 ; 2 uses
  %.not322 = icmp eq ptr %i.rz, %i.qi
  br i1 %.not322, label %._crit_edge358, label %.lr.ph357

bb.cx:                                            ; preds = %bb.cv, %.lr.ph357
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.cy:                                            ; preds = %.lr.ph351, %bb.da
  %indvars.iv = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next, %bb.da ] ; 8 uses
  %i.sb = load ptr, ptr %i.qs, align 8
  %i.sc = load ptr, ptr %i.qr, align 8            ; 2 uses
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = ashr exact i64 %i.sf, 2                 ; 2 uses
  %.not.i.i248 = icmp ugt i64 %i.sg, %indvars.iv
  br i1 %.not.i.i248, label %bb.cz, label %.invoke

bb.cz:                                            ; preds = %bb.cy
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv
  %i.si = load i32, ptr %i.sh, align 4
  %i.sj = load ptr, ptr %i.qf, align 8
  %i.sk = getelementptr inbounds nuw [32 x i8], ptr %i.sj, i64 %i.rb
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv
  store i32 %i.si, ptr %i.sn, align 4
  %i.so = load ptr, ptr %i.rx, align 8
  %i.sp = load ptr, ptr %i.rw, align 8            ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = ashr exact i64 %i.ss, 2                 ; 2 uses
  %.not.i.i250 = icmp ugt i64 %i.st, %indvars.iv
  br i1 %.not.i.i250, label %bb.da, label %.invoke

.invoke:                                          ; preds = %bb.cz, %bb.cy
  %i.su = phi i64 [ %i.sg, %bb.cy ], [ %i.st, %bb.cz ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %indvars.iv, i64 noundef %i.su) #31
          to label %.cont unwind label %bb.db

.cont:                                            ; preds = %.invoke
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv
  %i.sw = load float, ptr %i.sv, align 4
  %i.sx = fpext float %i.sw to double
  %i.sy = load ptr, ptr %i.qf, align 8
  %i.sz = getelementptr inbounds nuw [32 x i8], ptr %i.sy, i64 %i.rb
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv
  store double %i.sx, ptr %i.tc, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge352, label %bb.cy, !llvm.loop !322

bb.db:                                            ; preds = %.invoke
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dc:                                            ; preds = %._crit_edge348.thread
  call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.p) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1096) #29
  %i.te = load ptr, ptr %i.z, align 8
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 -8
  store ptr %i.tf, ptr %i.z, align 8
  %i.tg = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc252 unwind label %bb.cm

.noexc252:                                        ; preds = %bb.dc
  br i1 %i.tg, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.dd

bb.dd:                                            ; preds = %.noexc252
  %i.th = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc253 unwind label %bb.cm

.noexc253:                                        ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ti = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc254 unwind label %bb.cm

.noexc254:                                        ; preds = %.noexc253
  store ptr %i.ti, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA44_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.th, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc255 unwind label %bb.cm

.noexc255:                                        ; preds = %.noexc254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.loopexit326:                                     ; preds = %._crit_edge358, %bb.cn, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.tj = phi i64 [ %i.ms, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ok, %bb.cn ], [ %i.ok, %._crit_edge358 ]
  %i.tk = phi ptr [ %.pre424, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ol, %bb.cn ], [ %i.ol, %._crit_edge358 ]
  br i1 %.not, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.loopexit326
  %i.tl = sitofp i64 %i.gj to double
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 480
  %17 = load <2 x double>, ptr %i.tm, align 8
  %i.tn = sitofp i64 %i.mm to double
  %i.to = insertelement <2 x double> poison, double %i.tn, i64 0
  %i.tp = insertelement <2 x double> %i.to, double %i.tl, i64 1
  %i.tq = fdiv nnan <2 x double> %i.tp, splat (double f0x422581D1AF600000)
  %i.tr = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ts = fmul <2 x double> %i.tq, %i.tr
  br label %bb.dg

bb.df:                                            ; preds = %.loopexit326
  %i.tt = load double, ptr %i.i, align 8
  %i.tu = load double, ptr %i.j, align 8
  %i.tv = insertelement <2 x double> poison, double %i.tu, i64 0
  %i.tw = insertelement <2 x double> %i.tv, double %i.tt, i64 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.tx = phi <2 x double> [ %i.ts, %bb.de ], [ %i.tw, %bb.df ] ; 6 uses
  %i.ty = load i32, ptr %i.s, align 8
  %.not383 = icmp eq i32 %i.ty, 0
  br i1 %.not383, label %.preheader, label %.lr.ph374.preheader

.lr.ph374.preheader:                              ; preds = %bb.dg
  %i.tz = extractelement <2 x double> %i.tx, i64 1
  %i.ua = extractelement <2 x double> %i.tx, i64 1
  %i.ub = extractelement <2 x double> %i.tx, i64 1
  br label %.lr.ph374

.preheader:                                       ; preds = %._crit_edge371, %bb.dg
  %i.uc = load i32, ptr %i.w, align 8             ; 2 uses
  %.not387 = icmp eq i32 %i.uc, 0
  br i1 %.not387, label %._crit_edge381, label %.lr.ph380.preheader

.lr.ph380.preheader:                              ; preds = %.preheader
  %i.ud = extractelement <2 x double> %i.tx, i64 1
  br label %.lr.ph380

.lr.ph374:                                        ; preds = %.lr.ph374.preheader, %._crit_edge371
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %._crit_edge371 ], [ 0, %.lr.ph374.preheader ] ; 2 uses
  %i.ue = load ptr, ptr %i.t, align 8
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv409
  %i.ug = load ptr, ptr %i.uf, align 8            ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1028 ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4
  %.not384 = icmp eq i32 %i.ui, 0
  br i1 %.not384, label %.preheader325, label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph374
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 1032
  br label %bb.dh

.preheader325:                                    ; preds = %bb.dh, %.lr.ph374
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 1040 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 8
  %.not385 = icmp eq i32 %i.ul, 0
  br i1 %.not385, label %.preheader324, label %.lr.ph368

.lr.ph368:                                        ; preds = %.preheader325
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 1048
  br label %bb.di

bb.dh:                                            ; preds = %.lr.ph366, %bb.dh
  %indvars.iv400 = phi i64 [ 0, %.lr.ph366 ], [ %indvars.iv.next401, %bb.dh ] ; 2 uses
  %i.un = load ptr, ptr %i.uj, align 8
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.un, i64 %indvars.iv400 ; 2 uses
  %i.up = load double, ptr %i.uo, align 8
  %i.uq = fsub double %i.up, %i.tz
  store double %i.uq, ptr %i.uo, align 8
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %i.ur = load i32, ptr %i.uh, align 4
  %i.us = zext i32 %i.ur to i64
  %i.ut = icmp samesign ult i64 %indvars.iv.next401, %i.us
  br i1 %i.ut, label %bb.dh, label %.preheader325, !llvm.loop !323

.preheader324:                                    ; preds = %bb.di, %.preheader325
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ug, i64 1056 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 8
  %.not386 = icmp eq i32 %i.uv, 0
  br i1 %.not386, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %.preheader324
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ug, i64 1064
  br label %bb.dj

bb.di:                                            ; preds = %.lr.ph368, %bb.di
  %indvars.iv403 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next404, %bb.di ] ; 2 uses
  %i.ux = load ptr, ptr %i.um, align 8
  %i.uy = getelementptr inbounds nuw [32 x i8], ptr %i.ux, i64 %indvars.iv403 ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8
  %i.va = fsub double %i.uz, %i.ua
  store double %i.va, ptr %i.uy, align 8
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %i.vb = load i32, ptr %i.uk, align 8
  %i.vc = zext i32 %i.vb to i64
  %i.vd = icmp samesign ult i64 %indvars.iv.next404, %i.vc
  br i1 %i.vd, label %bb.di, label %.preheader324, !llvm.loop !324

._crit_edge371:                                   ; preds = %bb.dj, %.preheader324
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.ve = load i32, ptr %i.s, align 8
  %i.vf = zext i32 %i.ve to i64
  %i.vg = icmp samesign ult i64 %indvars.iv.next410, %i.vf
  br i1 %i.vg, label %.lr.ph374, label %.preheader, !llvm.loop !325

bb.dj:                                            ; preds = %.lr.ph370, %bb.dj
  %indvars.iv406 = phi i64 [ 0, %.lr.ph370 ], [ %indvars.iv.next407, %bb.dj ] ; 2 uses
  %i.vh = load ptr, ptr %i.uw, align 8
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.vh, i64 %indvars.iv406 ; 2 uses
  %i.vj = load double, ptr %i.vi, align 8
  %i.vk = fsub double %i.vj, %i.ub
  store double %i.vk, ptr %i.vi, align 8
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %i.vl = load i32, ptr %i.uu, align 8
  %i.vm = zext i32 %i.vl to i64
  %i.vn = icmp samesign ult i64 %indvars.iv.next407, %i.vm
  br i1 %i.vn, label %bb.dj, label %._crit_edge371, !llvm.loop !326

._crit_edge381:                                   ; preds = %._crit_edge378, %.preheader
  %shift = shufflevector <2 x double> %i.tx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.tx, %shift
  %i.vo = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.vo, ptr %i.q, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.vq = load double, ptr %i.vp, align 8
  store double %i.vq, ptr %i.r, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %._crit_edge378
  %i.vr = phi i32 [ %i.vy, %._crit_edge378 ], [ %i.uc, %.lr.ph380.preheader ]
  %indvars.iv415 = phi i64 [ %indvars.iv.next416, %._crit_edge378 ], [ 0, %.lr.ph380.preheader ] ; 2 uses
  %i.vs = load ptr, ptr %i.x, align 8
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv415
  %i.vu = load ptr, ptr %i.vt, align 8            ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 1028 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4
  %.not388 = icmp eq i32 %i.vw, 0
  br i1 %.not388, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph380
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 1032
  br label %bb.dk

._crit_edge378.loopexit:                          ; preds = %bb.dk
  %.pre425 = load i32, ptr %i.w, align 8
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %._crit_edge378.loopexit, %.lr.ph380
  %i.vy = phi i32 [ %.pre425, %._crit_edge378.loopexit ], [ %i.vr, %.lr.ph380 ] ; 2 uses
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %i.vz = zext i32 %i.vy to i64
  %i.wa = icmp samesign ult i64 %indvars.iv.next416, %i.vz
  br i1 %i.wa, label %.lr.ph380, label %._crit_edge381, !llvm.loop !327

bb.dk:                                            ; preds = %.lr.ph377, %bb.dk
  %indvars.iv412 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next413, %bb.dk ] ; 2 uses
  %i.wb = load ptr, ptr %i.vx, align 8
  %i.wc = getelementptr inbounds nuw [32 x i8], ptr %i.wb, i64 %indvars.iv412 ; 2 uses
  %i.wd = load double, ptr %i.wc, align 8
  %i.we = fsub double %i.wd, %i.ud
  store double %i.we, ptr %i.wc, align 8
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %i.wf = load i32, ptr %i.vv, align 4
  %i.wg = zext i32 %i.wf to i64
  %i.wh = icmp samesign ult i64 %indvars.iv.next413, %i.wg
  br i1 %i.wh, label %bb.dk, label %._crit_edge378.loopexit, !llvm.loop !328

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc255, %.noexc252, %._crit_edge381
  %i.wi = phi i64 [ %i.ni, %.noexc255 ], [ %i.ni, %.noexc252 ], [ %i.tj, %._crit_edge381 ]
  %i.wj = phi ptr [ %i.nj, %.noexc255 ], [ %i.nj, %.noexc252 ], [ %i.tk, %._crit_edge381 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %.not.i.i.i256 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.wk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = ptrtoint ptr %i.wl to i64
  %i.wn = sub i64 %i.wm, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wj, i64 noundef %i.wn) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit:      ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.wo = load ptr, ptr %i.fw, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.wo)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS_IlP12morphKeyDataSt4lessIlESaISt4pairIKlS7_EEES8_IS5_ESaISA_IKS5_SF_EEED2Ev.exit unwind label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS_IlP12morphKeyDataSt4lessIlESaISt4pairIKlS7_EEES8_IS5_ESaISA_IKS5_SF_EEED2Ev.exit: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.wr = load ptr, ptr %i.fr, align 8
  invoke void @_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.wr)
          to label %_ZNSt3mapIPKN6Assimp3FBX18AnimationCurveNodeEPKNS1_14AnimationLayerESt4lessIS4_ESaISt4pairIKS4_S7_EEED2Ev.exit unwind label %bb.dn

bb.dn:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS_IlP12morphKeyDataSt4lessIlESaISt4pairIKlS7_EEES8_IS5_ESaISA_IKS5_SF_EEED2Ev.exit
  %i.ws = landingpad { ptr, i32 }
          catch ptr null
  %i.wt = extractvalue { ptr, i32 } %i.ws, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP9aiQuatKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_NS0_5Model8RotOrderE:bb.a
  %i.dg = extractelement <2 x float> %i.aq, i64 1
  %i.dh = fadd float %i.dg, %i.ar
  %i.di = fadd float %i.ap, %i.as
  %i.dj = extractelement <2 x float> %i.aq, i64 0
  %i.dk = fsub float %i.an, %i.dj
  %i.dl = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.dk, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.dh, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %i.di, i64 2 ; 2 uses
  %i.do = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = fdiv <4 x float> %i.dn, %i.dp
  %i.dr = fmul <4 x float> %i.dn, %i.dp
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %i.dt = phi <4 x float> [ %i.bm, %bb.h ], [ %i.cg, %bb.j ], [ %i.da, %bb.l ], [ %i.ds, %bb.m ] ; 6 uses
  %i.du = extractelement <4 x float> %i.dt, i64 2
  %i.dv = fmul float %.sroa.957.064, %i.du
  %i.dw = extractelement <4 x float> %i.dt, i64 1
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %.sroa.6.065, float %i.dv)
  %i.dy = extractelement <4 x float> %i.dt, i64 3
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %.sroa.12.063, float %i.dx)
  %i.ea = extractelement <4 x float> %i.dt, i64 0
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %.sroa.056.066, float %i.dz)
  %i.ec = fcmp olt float %i.eb, 0.000000e+00
  %i.ed = fneg <4 x float> %i.dt
  %i.ee = select i1 %i.ec, <4 x float> %i.ed, <4 x float> %i.dt ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <4 x float> %i.ee, ptr %i.ef, align 8
  %i.eg = add nuw i64 %.067, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %i.ad
  %i.eh = extractelement <4 x float> %i.ee, i64 0
  %i.ei = extractelement <4 x float> %i.ee, i64 1
  %i.ej = extractelement <4 x float> %i.ee, i64 2
  %i.ek = extractelement <4 x float> %i.ee, i64 3
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit, label %bb.f, !llvm.loop !398

bb.n:                                             ; preds = %bb.f
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25: ; preds = %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.el, %bb.n ], [ %i.ah, %bb.e ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, <2 x float> } @_ZN6Assimp3FBX12FBXConverter17EulerToQuaternionERK10aiVector3tIfENS0_5Model8RotOrderE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE(ptr nonnull align 8 poison, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.e = load float, ptr %3, align 4              ; 6 uses
  %i.f = load <2 x float>, ptr %i.a, align 4      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load float, ptr %i.g, align 4            ; 4 uses
  %i.i = load float, ptr %i.b, align 4            ; 6 uses
  %i.j = load float, ptr %i.c, align 4            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = load float, ptr %i.k, align 4            ; 4 uses
  %i.n = load float, ptr %i.l, align 4            ; 4 uses
  %i.o = load float, ptr %i.d, align 4            ; 6 uses
  %i.p = fadd float %i.e, %i.i
  %i.q = fadd float %i.p, %i.o                    ; 2 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd float %i.q, 1.000000e+00
  %i.t = tail call noundef float @sqrtf(float noundef %i.s) #27
  %i.u = fmul float %i.t, 2.000000e+00            ; 3 uses
  %i.v = fsub float %i.n, %i.j
  %i.w = fdiv float %i.v, %i.u
  %.sroa.020.4.vec.insert27 = insertelement <2 x float> <float undef, float poison>, float %i.w, i64 1
  %i.x = extractelement <2 x float> %i.f, i64 1
  %i.y = fsub float %i.x, %i.m
  %i.z = extractelement <2 x float> %i.f, i64 0
  %i.aa = fsub float %i.h, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x float> %i.ac, %i.ae
  %i.ag = fmul float %i.u, 2.500000e-01
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = fcmp ogt float %i.e, %i.i
  %i.ai = fcmp ogt float %i.e, %i.o
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = fadd float %i.e, 1.000000e+00
  %i.ak = fsub float %i.aj, %i.i
  %i.al = fsub float %i.ak, %i.o
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #27
  %i.an = fmul float %i.am, 2.000000e+00          ; 3 uses
  %i.ao = fmul float %i.an, 2.500000e-01
  %.sroa.020.4.vec.insert25 = insertelement <2 x float> <float undef, float poison>, float %i.ao, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.m, i64 1
  %i.ar = fadd <2 x float> %i.f, %i.aq
  %i.as = insertelement <2 x float> poison, float %i.an, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.ar, %i.at
  %i.av = fsub float %i.n, %i.j
  %i.aw = fdiv float %i.av, %i.an
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = fcmp ogt float %i.i, %i.o
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fadd float %i.i, 1.000000e+00
  %i.az = fsub float %i.ay, %i.e
  %i.ba = fsub float %i.az, %i.o
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #27
  %i.bc = fmul float %i.bb, 2.000000e+00          ; 3 uses
  %i.bd = extractelement <2 x float> %i.f, i64 0
  %i.be = fadd float %i.bd, %i.h
  %i.bf = fdiv float %i.be, %i.bc
  %.sroa.020.4.vec.insert23 = insertelement <2 x float> <float undef, float poison>, float %i.bf, i64 1
  %i.bg = fmul float %i.bc, 2.500000e-01
  %i.bh = extractelement <2 x float> %i.f, i64 1
  %i.bi = fadd float %i.j, %i.n
  %i.bj = fsub float %i.bh, %i.m
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bi, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %i.bg, i64 0
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.br = fadd float %i.o, 1.000000e+00
  %i.bs = fsub float %i.br, %i.e
  %i.bt = fsub float %i.bs, %i.i
  %i.bu = tail call noundef float @sqrtf(float noundef %i.bt) #27
  %i.bv = fmul float %i.bu, 2.000000e+00          ; 3 uses
  %i.bw = extractelement <2 x float> %i.f, i64 1
  %i.bx = fadd float %i.bw, %i.m
  %i.by = fdiv float %i.bx, %i.bv
  %.sroa.020.4.vec.insert = insertelement <2 x float> <float undef, float poison>, float %i.by, i64 1
  %i.bz = fmul float %i.bv, 2.500000e-01
  %i.ca = extractelement <2 x float> %i.f, i64 0
  %i.cb = fadd float %i.j, %i.n
  %i.cc = fsub float %i.h, %i.ca
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.cc, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x float> %i.ce, %i.cg           ; 2 uses
  %.sroa.6.12.vec.insert = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.ci = extractelement <2 x float> %i.ch, i64 1
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.sroa.6.0 = phi <2 x float> [ %i.af, %bb.b ], [ %i.au, %bb.d ], [ %i.bp, %bb.f ], [ %.sroa.6.12.vec.insert, %bb.g ]
  %.sroa.020.0 = phi <2 x float> [ %.sroa.020.4.vec.insert27, %bb.b ], [ %.sroa.020.4.vec.insert25, %bb.d ], [ %.sroa.020.4.vec.insert23, %bb.f ], [ %.sroa.020.4.vec.insert, %bb.g ]
  %.sink.i = phi float [ %i.ag, %bb.b ], [ %i.aw, %bb.d ], [ %i.bq, %bb.f ], [ %i.ci, %bb.g ]
  %.sroa.020.0.vec.insert = insertelement <2 x float> %.sroa.020.0, float %.sink.i, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.020.0.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load <4 x float>, ptr %i.n, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %0, align 4              ; 3 uses
  %i.u = load float, ptr %i.c, align 4            ; 2 uses
  %i.v = load float, ptr %i.g, align 4            ; 3 uses
  %i.w = load float, ptr %i.k, align 4            ; 4 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.m, align 4            ; 4 uses
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.u, i64 1 ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = insertelement <2 x float> %5, float %i.t, i64 1 ; 2 uses
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.ab)
  %i.ae = insertelement <2 x float> poison, float %i.r, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.v, i64 1 ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.ad)
  %i.ah = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ag) ; 4 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1
  store float %i.ai, ptr %1, align 4
  %i.aj = fmul float %i.x, %i.x
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ak)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.al) ; 3 uses
  store float %sqrt.i31, ptr %i.s, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = extractelement <2 x float> %i.ah, i64 0
  store float %i.an, ptr %i.am, align 4
  %i.ao = load float, ptr %0, align 4             ; 3 uses
  %i.ap = load float, ptr %i.l, align 4           ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap                 ; 2 uses
  %i.ar = load float, ptr %i.q, align 4           ; 4 uses
  %i.as = fmul float %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.au = load float, ptr %i.at, align 4          ; 6 uses
  %i.av = load float, ptr %i.h, align 4           ; 5 uses
  %i.aw = fmul float %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4          ; 6 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.aw, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.as, float %i.au, float %i.ba)
  %i.bc = load float, ptr %i.o, align 4           ; 3 uses
  %i.bd = fmul float %i.ao, %i.bc                 ; 2 uses
  %i.be = fmul float %i.av, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bg = load float, ptr %i.bf, align 4          ; 6 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.bb)
  %i.bi = load float, ptr %i.m, align 4           ; 4 uses
  %i.bj = fneg float %i.bi                        ; 3 uses
  %i.bk = fmul float %i.bd, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.au, float %i.bh)
  %i.bm = load float, ptr %i.d, align 4           ; 3 uses
  %i.bn = fmul float %i.ao, %i.bm                 ; 2 uses
  %i.bo = fmul float %i.bi, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.ay, float %i.bl)
  %i.bq = fneg float %i.ar                        ; 3 uses
  %i.br = fmul float %i.bn, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bg, float %i.bp)
  %i.bt = load float, ptr %i.k, align 4           ; 3 uses
  %i.bu = fmul float %i.bc, %i.bt                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load float, ptr %i.bv, align 4          ; 6 uses
  %i.bx = fneg float %i.av                        ; 2 uses
  %i.by = fmul float %i.bu, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bw, float %i.bs)
  %i.ca = load float, ptr %i.g, align 4           ; 4 uses
  %i.cb = fmul float %i.bu, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.au, float %i.bz)
  %i.cd = fmul float %i.bm, %i.bt                 ; 2 uses
  %i.ce = fneg float %i.ca                        ; 3 uses
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ay, float %i.cc)
  %i.ch = fmul float %i.ar, %i.cd
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bw, float %i.cg)
  %i.cj = load float, ptr %i.c, align 4           ; 3 uses
  %i.ck = fmul float %i.bt, %i.cj                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.bq
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.au, float %i.ci)
  %i.cn = fmul float %i.av, %i.ck
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ay, float %i.cm)
  %i.cp = load float, ptr %i.n, align 4           ; 3 uses
  %i.cq = fmul float %i.bm, %i.cp                 ; 2 uses
  %i.cr = fmul float %i.ca, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.bg, float %i.co)
  %i.ct = fmul float %i.cq, %i.bj
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bw, float %i.cs)
  %i.cv = fmul float %i.cj, %i.cp                 ; 2 uses
  %i.cw = fmul float %i.bi, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.au, float %i.cu)
  %i.cy = fmul float %i.cv, %i.bx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bg, float %i.cx)
  %i.da = fmul float %i.ap, %i.cp                 ; 2 uses
  %i.db = fmul float %i.av, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.bw, float %i.cz)
  %i.dd = fmul float %i.da, %i.ce
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.au, float %i.dc)
  %i.df = load float, ptr %i.a, align 4           ; 3 uses
  %i.dg = fmul float %i.cj, %i.df                 ; 2 uses
  %i.dh = fmul float %i.dg, %i.bj
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ay, float %i.de)
  %i.dj = fmul float %i.ar, %i.dg
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.bg, float %i.di)
  %i.dl = fmul float %i.ap, %i.df                 ; 2 uses
  %i.dm = fmul float %i.dl, %i.bq
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.bw, float %i.dk)
  %i.do = fmul float %i.ca, %i.dl
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ay, float %i.dn)
  %i.dq = fmul float %i.bc, %i.df                 ; 2 uses
  %i.dr = fmul float %i.dq, %i.ce
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.bg, float %i.dp)
  %i.dt = fmul float %i.bi, %i.dq
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.bw, float %i.ds)
  %i.dv = fcmp olt float %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dw = insertelement <2 x float> %i.ah, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dx = fneg <2 x float> %i.ah                  ; 3 uses
  %i.dy = fneg float %sqrt.i31                    ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.dz, float %i.dy, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ea = extractelement <2 x float> %i.dx, i64 0
  store float %i.ea, ptr %i.am, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.eb = phi float [ %sqrt.i31, %._crit_edge ], [ %i.dy, %bb.b ] ; 2 uses
  %i.ec = phi <2 x float> [ %i.dw, %._crit_edge ], [ %i.dx, %bb.b ] ; 2 uses
  %i.ed = fcmp une <2 x float> %i.ec, zeroinitializer ; 3 uses
  %i.ee = fdiv <2 x float> splat (float 1.000000e+00), %i.ec ; 3 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eg = fmul float %i.t, %i.ef
  %i.eh = extractelement <2 x i1> %i.ed, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.eh, float %i.eg, float %i.t ; 6 uses
  %i.ei = fcmp une float %i.eb, 0.000000e+00      ; 3 uses
  %i.ej = fdiv float 1.000000e+00, %i.eb          ; 3 uses
  %i.ek = fmul float %i.x, %i.ej
  %i.el = fmul float %i.y, %i.ej
  %.sroa.27.0 = select i1 %i.ei, float %i.el, float %i.y ; 4 uses
  %.sroa.22.0 = select i1 %i.ei, float %i.ek, float %i.x ; 6 uses
  %i.em = insertelement <2 x float> %5, float %i.u, i64 1 ; 2 uses
  %i.en = fmul <2 x float> %i.em, %i.ee
  %i.eo = fmul float %i.v, %i.ef
  %.sroa.1260.0 = select i1 %i.eh, float %i.eo, float %i.v ; 4 uses
  %i.ep = fmul float %i.w, %i.ej
  %.sroa.17.0 = select i1 %i.ei, float %i.ep, float %i.w ; 4 uses
  %i.eq = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.er = fmul float %i.p, %i.eq
  %i.es = fmul float %i.r, %i.eq
  %i.et = extractelement <2 x i1> %i.ed, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.et, float %i.es, float %i.r ; 6 uses
  %.sroa.37.0 = select i1 %i.et, float %i.er, float %i.p ; 4 uses
  %i.eu = select <2 x i1> %i.ed, <2 x float> %i.en, <2 x float> %i.em ; 6 uses
  %i.ev = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ew = fadd float %i.ev, %.sroa.42.0           ; 2 uses
  %i.ex = fcmp ogt float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ey = fadd float %i.ew, 1.000000e+00
  %i.ez = tail call noundef float @sqrtf(float noundef %i.ey) #27
  %i.fa = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ez, i64 1
  %i.fb = fmul <4 x float> %i.fa, <float 2.500000e-01, float 2.000000e+00, float poison, float poison> ; 2 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fd = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fe = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %.sroa.17.0, i64 1
  %i.fg = fsub <2 x float> %i.eu, %i.ff
  %i.fh = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.fd, i64 1
  %i.fj = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fl = fmul <4 x float> %i.fk, %i.fc
  %i.fm = fdiv <4 x float> %i.fk, %i.fc
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fo = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fp = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fq = fadd float %.sroa.055.0, 1.000000e+00
  %i.fr = fsub float %i.fq, %.sroa.22.0
  %i.fs = fsub float %i.fr, %.sroa.42.0
  %i.ft = tail call noundef float @sqrtf(float noundef %i.fs) #27
  %i.fu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ft, i64 0
  %i.fv = fmul <4 x float> %i.fu, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %.sroa.17.0, i64 1
  %i.fz = fadd <2 x float> %i.eu, %i.fy
  %i.ga = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gd = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gf = fdiv <4 x float> %i.ge, %i.fw
  %i.gg = fmul <4 x float> %i.ge, %i.fw
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gi = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gj = fadd float %.sroa.22.0, 1.000000e+00
  %i.gk = fsub float %i.gj, %.sroa.055.0
  %i.gl = fsub float %i.gk, %.sroa.42.0
  %i.gm = tail call noundef float @sqrtf(float noundef %i.gl) #27
  %i.gn = fmul float %i.gm, 2.000000e+00
  %i.go = extractelement <2 x float> %i.eu, i64 1
  %i.gp = fadd float %i.go, %.sroa.17.0
  %i.gq = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gr = extractelement <2 x float> %i.eu, i64 0
  %i.gs = fsub float %i.gr, %.sroa.1260.0
  %i.gt = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gs, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gp, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gq, i64 3 ; 2 uses
  %i.gw = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = fdiv <4 x float> %i.gv, %i.gx
  %i.gz = fmul <4 x float> %i.gv, %i.gx
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hb = fadd float %.sroa.42.0, 1.000000e+00
  %i.hc = fsub float %i.hb, %.sroa.055.0
  %i.hd = fsub float %i.hc, %.sroa.22.0
  %i.he = tail call noundef float @sqrtf(float noundef %i.hd) #27
  %i.hf = fmul float %i.he, 2.000000e+00
  %i.hg = extractelement <2 x float> %i.eu, i64 0
  %i.hh = fadd float %.sroa.1260.0, %i.hg
  %i.hi = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hj = extractelement <2 x float> %i.eu, i64 1
  %i.hk = fsub float %i.hj, %.sroa.17.0
  %i.hl = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hk, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.hh, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.hi, i64 2 ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hq = fdiv <4 x float> %i.hn, %i.hp
  %i.hr = fmul <4 x float> %i.hn, %i.hp
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.ht = phi <4 x float> [ %i.fn, %bb.d ], [ %i.gh, %bb.f ], [ %i.ha, %bb.h ], [ %i.hs, %bb.i ]
  store <4 x float> %i.ht, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.223) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 4 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.r = load i32, ptr %.0911.i.i.i, align 4, !alias.scope !403, !noalias !402
  store i32 %i.r, ptr %.012.i.i.i, align 4, !alias.scope !402, !noalias !403
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !alias.scope !403, !noalias !402
  store <2 x ptr> %i.u, ptr %i.s, align 8, !alias.scope !402, !noalias !403
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !403, !noalias !402
  store <2 x ptr> %i.x, ptr %i.v, align 8, !alias.scope !402, !noalias !403
  store <4 x ptr> splat (ptr null), ptr %i.t, align 8, !alias.scope !403, !noalias !402
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exitthread-pre-split, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit
  %i.aa = phi ptr [ %.pr, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #29
  br label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.af, ptr %i.j, align 8
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %1
  store ptr %i.ag, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12
end_hunk_1
