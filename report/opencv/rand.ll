Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rand?download=true
inline.NumInlined: 597
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b:bb.a
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !20
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i487

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i487: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i486
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body496

bb.bv:                                            ; preds = %bb.br
  %i.hj = icmp sgt i32 %i.hb, 0
  br i1 %i.hj, label %bb.bw, label %.thread.i489

.thread.i489:                                     ; preds = %bb.bv
  %i.hk = icmp eq i32 %i.hb, 0
  %i.hl = zext i1 %i.hk to i32
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 84
  %i.hn = icmp eq i32 %i.hb, 2
  %.sroa.gep606 = getelementptr inbounds nuw i8, ptr %22, i64 88
  %.sroa.gep606.val = load i32, ptr %.sroa.gep606, align 8
  %.val654 = load i32, ptr %i.hm, align 4         ; 2 uses
  %i.ho = select i1 %i.hn, i32 %.sroa.gep606.val, i32 %.val654 ; 2 uses
  %.not.i494 = icmp eq i32 %i.hb, 1
  br i1 %.not.i494, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %.thread.i489
  %i.hp = phi i32 [ %i.hl, %.thread.i489 ], [ %i.ho, %bb.bw ]
  %i.hq = icmp sgt i32 %i.hb, -1
  %i.hr = zext i1 %i.hq to i32
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.hs = phi i32 [ %i.hp, %bb.bx ], [ %i.ho, %bb.bw ]
  %i.ht = phi i32 [ %i.hr, %bb.bx ], [ %.val654, %bb.bw ]
  %.sroa.2.0.insert.ext.i490 = zext i32 %i.ht to i64
  %.sroa.2.0.insert.shift.i491 = shl nuw i64 %.sroa.2.0.insert.ext.i490, 32
  %.sroa.0.0.insert.ext.i492 = zext i32 %i.hs to i64
  %.sroa.0.0.insert.insert.i493 = or disjoint i64 %.sroa.2.0.insert.shift.i491, %.sroa.0.0.insert.ext.i492
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %30, i64 %.sroa.0.0.insert.insert.i493, i32 noundef 6, ptr noundef nonnull %i.gz, i64 noundef 0)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.hu = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 0, ptr %i.hv, align 8
  store i32 33619968, ptr %31, align 8, !tbaa !97
  store ptr %30, ptr %i.hu, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %.not655677 = icmp slt i32 %i.aa, %i.dn
  br i1 %.not655677, label %._crit_edge681, label %.lr.ph680.preheader

.lr.ph680.preheader:                              ; preds = %bb.ca
  %sext810 = shl i64 %i.dm, 32                    ; 2 uses
  %i.hw = ashr exact i64 %sext810, 32             ; 9 uses
  %i.hx = sub i32 %i.aa, %i.dn                    ; 2 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check893 = icmp ult i32 %i.hx, 5
  br i1 %min.iters.check893, label %.lr.ph680.preheader928, label %vector.memcheck890

vector.memcheck890:                               ; preds = %.lr.ph680.preheader
  %i.ia = ashr exact i64 %sext810, 29
  %i.ib = add nsw i64 %i.ia, -1
  %diff.check891 = icmp ult i64 %i.ib, 31
  br i1 %diff.check891, label %.lr.ph680.preheader928, label %vector.ph894

vector.ph894:                                     ; preds = %vector.memcheck890
  %n.vec895 = and i64 %i.hz, 8589934588           ; 3 uses
  %i.ic = add nsw i64 %i.hw, %n.vec895
  %i.id = getelementptr [8 x i8], ptr %i.gz, i64 %i.hw
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph894
  %index897 = phi i64 [ 0, %vector.ph894 ], [ %index.next900, %vector.body896 ] ; 3 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %index897 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load898 = load <2 x double>, ptr %i.ie, align 8, !tbaa !34
  %wide.load899 = load <2 x double>, ptr %i.if, align 8, !tbaa !34
  %i.ig = getelementptr [8 x i8], ptr %i.id, i64 %index897 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <2 x double> %wide.load898, ptr %i.ig, align 8, !tbaa !34
  store <2 x double> %wide.load899, ptr %i.ih, align 8, !tbaa !34
  %index.next900 = add nuw i64 %index897, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next900, %n.vec895
  br i1 %i.ii, label %middle.block901, label %vector.body896, !llvm.loop !71

middle.block901:                                  ; preds = %vector.body896
  %cmp.n902 = icmp eq i64 %i.hz, %n.vec895
  br i1 %cmp.n902, label %._crit_edge681, label %.lr.ph680.preheader928

.lr.ph680.preheader928:                           ; preds = %vector.memcheck890, %.lr.ph680.preheader, %middle.block901
  %indvars.iv720.ph = phi i64 [ %i.hw, %vector.memcheck890 ], [ %i.hw, %.lr.ph680.preheader ], [ %i.ic, %middle.block901 ] ; 3 uses
  %i.ij = add nuw nsw i32 %i.z, 1
  %i.ik = trunc i64 %indvars.iv720.ph to i32      ; 2 uses
  %i.il = sub i32 %i.ij, %i.ik
  %i.im = sub i32 %i.aa, %i.ik
  %xtraiter930 = and i32 %i.il, 3                 ; 2 uses
  %lcmp.mod931.not = icmp eq i32 %xtraiter930, 0
  br i1 %lcmp.mod931.not, label %.lr.ph680.prol.loopexit, label %.lr.ph680.prol

.lr.ph680.prol:                                   ; preds = %.lr.ph680.preheader928, %.lr.ph680.prol
  %indvars.iv720.prol = phi i64 [ %indvars.iv.next721.prol, %.lr.ph680.prol ], [ %indvars.iv720.ph, %.lr.ph680.preheader928 ] ; 3 uses
  %prol.iter932 = phi i32 [ %prol.iter932.next, %.lr.ph680.prol ], [ 0, %.lr.ph680.preheader928 ]
  %i.in = sub nsw i64 %indvars.iv720.prol, %i.hw
  %i.io = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !34
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv720.prol
  store double %i.ip, ptr %i.iq, align 8, !tbaa !34
  %indvars.iv.next721.prol = add nsw i64 %indvars.iv720.prol, 1 ; 2 uses
  %prol.iter932.next = add i32 %prol.iter932, 1   ; 2 uses
  %prol.iter932.cmp.not = icmp eq i32 %prol.iter932.next, %xtraiter930
  br i1 %prol.iter932.cmp.not, label %.lr.ph680.prol.loopexit, label %.lr.ph680.prol, !llvm.loop !72

.lr.ph680.prol.loopexit:                          ; preds = %.lr.ph680.prol, %.lr.ph680.preheader928
  %indvars.iv720.unr = phi i64 [ %indvars.iv720.ph, %.lr.ph680.preheader928 ], [ %indvars.iv.next721.prol, %.lr.ph680.prol ]
  %i.ir = icmp ult i32 %i.im, 3
  br i1 %i.ir, label %._crit_edge681, label %.lr.ph680

.lr.ph680:                                        ; preds = %.lr.ph680.prol.loopexit, %.lr.ph680
  %indvars.iv720 = phi i64 [ %indvars.iv.next721.3, %.lr.ph680 ], [ %indvars.iv720.unr, %.lr.ph680.prol.loopexit ] ; 6 uses
  %i.is = sub nsw i64 %indvars.iv720, %i.hw
  %i.it = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !34
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv720
  store double %i.iu, ptr %i.iv, align 8, !tbaa !34
  %indvars.iv.next721 = add nsw i64 %indvars.iv720, 1 ; 2 uses
  %i.iw = sub nsw i64 %indvars.iv.next721, %i.hw
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !34
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.next721
  store double %i.iy, ptr %i.iz, align 8, !tbaa !34
  %indvars.iv.next721.1 = add nsw i64 %indvars.iv720, 2 ; 2 uses
  %i.ja = sub nsw i64 %indvars.iv.next721.1, %i.hw
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !34
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.next721.1
  store double %i.jc, ptr %i.jd, align 8, !tbaa !34
  %indvars.iv.next721.2 = add nsw i64 %indvars.iv720, 3 ; 2 uses
  %i.je = sub nsw i64 %indvars.iv.next721.2, %i.hw
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.je
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !34
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.next721.2
  store double %i.jg, ptr %i.jh, align 8, !tbaa !34
  %indvars.iv.next721.3 = add nsw i64 %indvars.iv720, 4 ; 2 uses
  %lftr.wideiv723.3 = trunc i64 %indvars.iv.next721.3 to i32
  %exitcond724.not.3 = icmp eq i32 %i.ab, %lftr.wideiv723.3
  br i1 %exitcond724.not.3, label %._crit_edge681, label %.lr.ph680, !llvm.loop !73

bb.cb:                                            ; preds = %bb.bs, %bb.by
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body496

bb.cc:                                            ; preds = %bb.bz
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  br label %.body496

._crit_edge681:                                   ; preds = %.lr.ph680.prol.loopexit, %.lr.ph680, %middle.block901, %bb.ca
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.cd

.body496:                                         ; preds = %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i487, %bb.cc
  %.pn394.pn = phi { ptr, i32 } [ %i.jj, %bb.cc ], [ %i.ji, %bb.cb ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i487 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %.body

bb.cd:                                            ; preds = %bb.bq, %._crit_edge681
  %.0335 = phi ptr [ %i.gz, %._crit_edge681 ], [ %i.ee, %bb.bq ] ; 5 uses
  %i.jk = shl nuw i32 1, %i.y
  %i.jl = and i32 %i.jk, 7711
  %.not397 = icmp eq i32 %i.jl, 0
  br i1 %.not397, label %bb.da, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jm = shl nuw nsw i32 %i.ab, 1
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.jn ; 8 uses
  %i.jp = and i32 %i.x, 30
  %or.cond19 = icmp eq i32 %i.jp, 10              ; 2 uses
  %spec.select433 = select i1 %or.cond19, i64 -4611686018427387904, i64 -1073741824 ; 3 uses
  %spec.select434 = select i1 %or.cond19, i64 9223372036854775807, i64 2147483647 ; 3 uses
  %i.jq = uitofp nneg i64 %spec.select434 to double ; 2 uses
  %i.jr = sitofp i64 %spec.select433 to double    ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.ce
  %indvars.iv725.ph = phi i64 [ %indvars.iv.next726812, %.thread ], [ 0, %bb.ce ] ; 5 uses
  %.0349683.ph = phi i32 [ %43, %.thread ], [ 0, %bb.ce ] ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.0336, i64 %indvars.iv725.ph
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.0335, i64 %indvars.iv725.ph
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !34 ; 4 uses
  %i.jv = load double, ptr %i.js, align 8, !tbaa !34 ; 4 uses
  %i.jw = fcmp olt double %i.ju, %i.jv
  %i.jx = select i1 %i.jw, double %i.ju, double %i.jv ; 9 uses
  %i.jy = fcmp olt double %i.jv, %i.ju
  %i.jz = select i1 %i.jy, double %i.ju, double %i.jv ; 3 uses
  br i1 %5, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %.outer
  switch i32 %i.y, label %bb.cg [
    i32 12, label %bb.ch
    i32 10, label %bb.ch
    i32 9, label %bb.ch
    i32 2, label %bb.ch
    i32 0, label %bb.ch
    i32 1, label %.thread634.peel
    i32 3, label %.thread638.peel
    i32 4, label %.thread641.peel
  ]

.thread641.peel:                                  ; preds = %bb.cf
  %i.ka = fcmp olt double %i.jx, f0xC1E0000000000000
  %.sroa.speculated590642.peel = select i1 %i.ka, double f0xC1E0000000000000, double %i.jx
  br label %bb.cj

.thread638.peel:                                  ; preds = %bb.cf
  %i.kb = fcmp olt double %i.jx, -3.276800e+04
  %.sroa.speculated590639.peel = select i1 %i.kb, double -3.276800e+04, double %i.jx
  br label %bb.cj

.thread634.peel:                                  ; preds = %bb.cf
  %i.kc = fcmp olt double %i.jx, -1.280000e+02
  %.sroa.speculated590635.peel = select i1 %i.kc, double -1.280000e+02, double %i.jx
  br label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf
  %i.kd = phi double [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %bb.cf ], [ f0xC3E0000000000000, %bb.cg ], [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %bb.cf ] ; 2 uses
  %i.ke = fcmp olt double %i.jx, %i.kd
  %.sroa.speculated590.peel = select i1 %i.ke, double %i.kd, double %i.jx ; 8 uses
  switch i32 %i.y, label %bb.ci [
    i32 0, label %bb.cj
    i32 9, label %.fold.split427.peel
    i32 2, label %.fold.split428.peel
    i32 1, label %.fold.split429.peel
    i32 3, label %.fold.split430.peel
    i32 12, label %.fold.split431.peel
    i32 4, label %switch.edge432.peel
  ]

switch.edge432.peel:                              ; preds = %bb.ch
  br label %bb.cj

.fold.split431.peel:                              ; preds = %bb.ch
  br label %bb.cj

.fold.split430.peel:                              ; preds = %bb.ch
  br label %bb.cj

.fold.split429.peel:                              ; preds = %bb.ch
  br label %bb.cj

.fold.split428.peel:                              ; preds = %bb.ch
  br label %bb.cj

.fold.split427.peel:                              ; preds = %bb.ch
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.fold.split427.peel, %.fold.split428.peel, %.fold.split429.peel, %.fold.split430.peel, %.fold.split431.peel, %switch.edge432.peel, %bb.ch, %.thread634.peel, %.thread638.peel, %.thread641.peel
  %.sroa.speculated590637.peel = phi double [ %.sroa.speculated590.peel, %bb.ch ], [ %.sroa.speculated590.peel, %.fold.split429.peel ], [ %.sroa.speculated590.peel, %.fold.split427.peel ], [ %.sroa.speculated590.peel, %.fold.split428.peel ], [ %.sroa.speculated590.peel, %switch.edge432.peel ], [ %.sroa.speculated590.peel, %bb.ci ], [ %.sroa.speculated590.peel, %.fold.split431.peel ], [ %.sroa.speculated590642.peel, %.thread641.peel ], [ %.sroa.speculated590635.peel, %.thread634.peel ], [ %.sroa.speculated590639.peel, %.thread638.peel ], [ %.sroa.speculated590.peel, %.fold.split430.peel ]
  %i.kf = phi double [ 2.560000e+02, %bb.ch ], [ 1.280000e+02, %.fold.split429.peel ], [ 2.000000e+00, %.fold.split427.peel ], [ 6.553600e+04, %.fold.split428.peel ], [ f0x41DFFFFFFFC00000, %switch.edge432.peel ], [ f0x43E0000000000000, %bb.ci ], [ f0x41EFFFFFFFE00000, %.fold.split431.peel ], [ f0x41DFFFFFFFC00000, %.thread641.peel ], [ 1.280000e+02, %.thread634.peel ], [ 3.276800e+04, %.thread638.peel ], [ 3.276800e+04, %.fold.split430.peel ] ; 2 uses
  %i.kg = fcmp olt double %i.kf, %i.jz
  %.sroa.speculated586.peel = select i1 %i.kg, double %i.kf, double %i.jz
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.outer
  %.0622.peel = phi double [ %.sroa.speculated590637.peel, %bb.cj ], [ %i.jx, %.outer ] ; 3 uses
  %.0621.peel = phi double [ %.sroa.speculated586.peel, %bb.cj ], [ %i.jz, %.outer ] ; 2 uses
  %i.kh = call double @llvm.ceil.f64(double %.0622.peel)
  %i.ki = fptosi double %i.kh to i64              ; 2 uses
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %indvars.iv725.ph ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  store i64 %i.ki, ptr %i.kk, align 8, !tbaa !12
  %i.kl = call double @llvm.floor.f64(double %.0621.peel)
  %i.km = fptosi double %i.kl to i64
  %i.kn = xor i64 %i.ki, -1
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %spec.store.select.peel = call i64 @llvm.smax.i64(i64 %i.ko, i64 0) ; 3 uses
  store i64 %spec.store.select.peel, ptr %i.kj, align 8
  %i.kp = fsub double %.0621.peel, %.0622.peel    ; 2 uses
  %i.kq = fcmp ole double %i.kp, f0x41F0000000000000
  %i.kr = add nuw nsw i64 %spec.store.select.peel, 1
  %i.ks = and i64 %i.kr, %spec.store.select.peel
  %i.kt = icmp eq i64 %i.ks, 0
  %i.ku = select i1 %i.kq, i1 %i.kt, i1 false
  br i1 %i.ku, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kv = fcmp ogt double %i.kp, %i.jq
  br i1 %i.kv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i64 %spec.select434, ptr %i.kj, align 8, !tbaa !12
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.kw = fcmp olt double %.0622.peel, %i.jr
  br i1 %i.kw, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i64 %spec.select433, ptr %i.kk, align 8, !tbaa !12
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %indvars.iv.next726.peel = add nuw nsw i64 %indvars.iv725.ph, 1 ; 2 uses
  %exitcond727.not.peel = icmp eq i64 %indvars.iv.next726.peel, %i.dp
  br i1 %exitcond727.not.peel, label %.loopexit934, label %.outer.peel.newph

.outer.peel.newph:                                ; preds = %bb.cp, %bb.cx
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %bb.cx ], [ %indvars.iv.next726.peel, %bb.cp ] ; 4 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.0336, i64 %indvars.iv725
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.0335, i64 %indvars.iv725
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !34 ; 4 uses
  %i.la = load double, ptr %i.kx, align 8, !tbaa !34 ; 4 uses
  %i.lb = fcmp olt double %i.kz, %i.la
  %i.lc = select i1 %i.lb, double %i.kz, double %i.la ; 9 uses
  %i.ld = fcmp olt double %i.la, %i.kz
  %i.le = select i1 %i.ld, double %i.kz, double %i.la ; 3 uses
  br i1 %5, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %.outer.peel.newph
  switch i32 %i.y, label %bb.cr [
    i32 12, label %bb.cs
    i32 10, label %bb.cs
    i32 9, label %bb.cs
    i32 2, label %bb.cs
    i32 0, label %bb.cs
    i32 1, label %.thread634
    i32 3, label %.thread638
    i32 4, label %.thread641
  ]

.thread641:                                       ; preds = %bb.cq
  %i.lf = fcmp olt double %i.lc, f0xC1E0000000000000
  %.sroa.speculated590642 = select i1 %i.lf, double f0xC1E0000000000000, double %i.lc
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  br label %bb.cs

.thread634:                                       ; preds = %bb.cq
  %i.lg = fcmp olt double %i.lc, -1.280000e+02
  %.sroa.speculated590635 = select i1 %i.lg, double -1.280000e+02, double %i.lc
  br label %bb.cu

.thread638:                                       ; preds = %bb.cq
  %i.lh = fcmp olt double %i.lc, -3.276800e+04
  %.sroa.speculated590639 = select i1 %i.lh, double -3.276800e+04, double %i.lc
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cr
  %i.li = phi double [ 0.000000e+00, %bb.cq ], [ 0.000000e+00, %bb.cq ], [ f0xC3E0000000000000, %bb.cr ], [ 0.000000e+00, %bb.cq ], [ 0.000000e+00, %bb.cq ], [ 0.000000e+00, %bb.cq ] ; 2 uses
  %i.lj = fcmp olt double %i.lc, %i.li
  %.sroa.speculated590 = select i1 %i.lj, double %i.li, double %i.lc ; 8 uses
  switch i32 %i.y, label %bb.ct [
    i32 0, label %bb.cu
    i32 9, label %.fold.split427
    i32 2, label %.fold.split428
    i32 1, label %.fold.split429
    i32 3, label %.fold.split430
    i32 12, label %.fold.split431
    i32 4, label %switch.edge432
  ]

switch.edge432:                                   ; preds = %bb.cs
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  br label %bb.cu

.fold.split427:                                   ; preds = %bb.cs
  br label %bb.cu

.fold.split428:                                   ; preds = %bb.cs
  br label %bb.cu

.fold.split429:                                   ; preds = %bb.cs
  br label %bb.cu

.fold.split430:                                   ; preds = %bb.cs
  br label %bb.cu

.fold.split431:                                   ; preds = %bb.cs
  br label %bb.cu

bb.cu:                                            ; preds = %.thread638, %.thread634, %.thread641, %switch.edge432, %bb.cs, %.fold.split431, %.fold.split430, %.fold.split429, %.fold.split428, %.fold.split427, %bb.ct
  %.sroa.speculated590637 = phi double [ %.sroa.speculated590, %bb.cs ], [ %.sroa.speculated590, %.fold.split429 ], [ %.sroa.speculated590, %.fold.split427 ], [ %.sroa.speculated590, %.fold.split428 ], [ %.sroa.speculated590, %switch.edge432 ], [ %.sroa.speculated590, %bb.ct ], [ %.sroa.speculated590, %.fold.split431 ], [ %.sroa.speculated590642, %.thread641 ], [ %.sroa.speculated590635, %.thread634 ], [ %.sroa.speculated590639, %.thread638 ], [ %.sroa.speculated590, %.fold.split430 ]
  %i.lk = phi double [ 2.560000e+02, %bb.cs ], [ 1.280000e+02, %.fold.split429 ], [ 2.000000e+00, %.fold.split427 ], [ 6.553600e+04, %.fold.split428 ], [ f0x41DFFFFFFFC00000, %switch.edge432 ], [ f0x43E0000000000000, %bb.ct ], [ f0x41EFFFFFFFE00000, %.fold.split431 ], [ f0x41DFFFFFFFC00000, %.thread641 ], [ 1.280000e+02, %.thread634 ], [ 3.276800e+04, %.thread638 ], [ 3.276800e+04, %.fold.split430 ] ; 2 uses
  %i.ll = fcmp olt double %i.lk, %i.le
  %.sroa.speculated586 = select i1 %i.ll, double %i.lk, double %i.le
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.outer.peel.newph
  %.0622 = phi double [ %.sroa.speculated590637, %bb.cu ], [ %i.lc, %.outer.peel.newph ] ; 3 uses
  %.0621 = phi double [ %.sroa.speculated586, %bb.cu ], [ %i.le, %.outer.peel.newph ] ; 2 uses
  %i.lm = call double @llvm.ceil.f64(double %.0622)
  %i.ln = fptosi double %i.lm to i64              ; 2 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %indvars.iv725 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  store i64 %i.ln, ptr %i.lp, align 8, !tbaa !12
  %i.lq = call double @llvm.floor.f64(double %.0621)
  %i.lr = fptosi double %i.lq to i64
  %i.ls = xor i64 %i.ln, -1
  %i.lt = add i64 %i.lr, %i.ls
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.lt, i64 0) ; 2 uses
  store i64 %spec.store.select, ptr %i.lo, align 8
  %i.lu = fsub double %.0621, %.0622
  %i.lv = fcmp ogt double %i.lu, %i.jq
  %spec.store.select950 = select i1 %i.lv, i64 %spec.select434, i64 %spec.store.select
  store i64 %spec.store.select950, ptr %i.lo, align 8
  %i.lw = fcmp olt double %.0622, %i.jr
  br i1 %i.lw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i64 %spec.select433, ptr %i.lp, align 8, !tbaa !12
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next726, %i.dp
  br i1 %exitcond727.not, label %.loopexit934, label %.outer.peel.newph, !llvm.loop !74

.thread:                                          ; preds = %bb.ck
  %i.lx = icmp slt i64 %i.ko, 256
  %43 = zext i1 %i.lx to i32                      ; 2 uses
  %indvars.iv.next726812 = add nuw nsw i64 %indvars.iv725.ph, 1 ; 2 uses
  %exitcond727.not813 = icmp eq i64 %indvars.iv.next726812, %i.dp
  br i1 %exitcond727.not813, label %.loopexit667, label %.outer, !llvm.loop !75

.loopexit934:                                     ; preds = %bb.cp, %bb.cx
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.dp ; 7 uses
  %i.lz = add nsw i32 %i.y, -12
  %or.cond21 = icmp ult i32 %i.lz, -2
  br i1 %or.cond21, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %.loopexit934
  %xtraiter937 = and i64 %i.dp, 1
  %i.ma = and i32 %i.x, 4064
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %.split.epil.preheader, label %.split.preheader.new

.split.preheader.new:                             ; preds = %.split.preheader
  %unroll_iter = and i64 %i.dp, 254
  br label %.split

.split.us:                                        ; preds = %.loopexit934, %bb.cz
  %indvars.iv736 = phi i64 [ %indvars.iv.next737, %bb.cz ], [ 0, %.loopexit934 ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %indvars.iv736 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !12
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %indvars.iv736 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store i64 %i.me, ptr %i.mg, align 8, !tbaa !39
  %i.mh = load i64, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !40
  %i.mj = trunc i64 %i.mh to i32
  %i.mk = add i32 %i.mj, 1                        ; 2 uses
  store i32 %i.mk, ptr %i.mf, align 8, !tbaa !41
  %i.ml = zext i32 %i.mk to i64                   ; 3 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.split.us
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %bb.cy ], [ 0, %.split.us ] ; 4 uses
  %i.mm = shl nuw i64 1, %indvars.iv733           ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %i.ml
  %indvars.iv.next734 = add nuw nsw i64 %indvars.iv733, 1
  br i1 %i.mn, label %bb.cy, label %bb.cz, !llvm.loop !76

bb.cz:                                            ; preds = %bb.cy
  %i.mo = trunc nuw nsw i64 %indvars.iv733 to i32
  %i.mp = sub nuw i64 %i.mm, %i.ml
  %i.mq = shl i64 %i.mp, 32
  %i.mr = udiv i64 %i.mq, %i.ml
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = add i32 %i.ms, 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !42
  %i.mv = icmp ne i64 %indvars.iv733, 0
  %.sroa.speculated579.us = zext i1 %i.mv to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 %.sroa.speculated579.us, ptr %i.mw, align 8, !tbaa !43
  %i.mx = call i32 @llvm.smax.i32(i32 %i.mo, i32 1)
  %.sroa.speculated573.us = add nsw i32 %i.mx, -1
  %i.my = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  store i32 %.sroa.speculated573.us, ptr %i.my, align 4, !tbaa !44
  %indvars.iv.next737 = add nuw nsw i64 %indvars.iv736, 1 ; 2 uses
  %exitcond740.not = icmp eq i64 %indvars.iv.next737, %i.dp
  br i1 %exitcond740.not, label %.loopexit667, label %.split.us, !llvm.loop !77

.split:                                           ; preds = %.split, %.split.preheader.new
  %indvars.iv728 = phi i64 [ 0, %.split.preheader.new ], [ %indvars.iv.next729.1, %.split ] ; 4 uses
  %niter = phi i64 [ 0, %.split.preheader.new ], [ %niter.next.1, %.split ]
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %indvars.iv728 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !12
  %i.nc = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %indvars.iv728 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store i64 %i.nb, ptr %i.nd, align 8, !tbaa !39
  %i.ne = load i64, ptr %i.mz, align 8, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !40
  %indvars.iv.next729 = or disjoint i64 %indvars.iv728, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %indvars.iv.next729 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %indvars.iv.next729 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store i64 %i.ni, ptr %i.nk, align 8, !tbaa !39
  %i.nl = load i64, ptr %i.ng, align 8, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !40
  %indvars.iv.next729.1 = add nuw nsw i64 %indvars.iv728, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit667.loopexit921.unr-lcssa, label %.split, !llvm.loop !77

.loopexit667.loopexit921.unr-lcssa:               ; preds = %.split
  %lcmp.mod938.not = icmp eq i64 %xtraiter937, 0
  br i1 %lcmp.mod938.not, label %.loopexit667, label %.split.epil.preheader

.split.epil.preheader:                            ; preds = %.loopexit667.loopexit921.unr-lcssa, %.split.preheader
  %indvars.iv728.epil.init = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next729.1, %.loopexit667.loopexit921.unr-lcssa ] ; 2 uses
  %lcmp.mod939 = trunc i32 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod939)
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %indvars.iv728.epil.init ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !12
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %indvars.iv728.epil.init ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store i64 %i.np, ptr %i.nr, align 8, !tbaa !39
  %i.ns = load i64, ptr %i.nn, align 8, !tbaa !12
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !40
  br label %.loopexit667

.loopexit667:                                     ; preds = %.thread, %.split.epil.preheader, %.loopexit667.loopexit921.unr-lcssa, %bb.cz
  %i.nu = phi i64 [ 0, %bb.cz ], [ 0, %.split.epil.preheader ], [ 0, %.loopexit667.loopexit921.unr-lcssa ], [ 1, %.thread ]
  %.1350814817 = phi i32 [ %.0349683.ph, %bb.cz ], [ %.0349683.ph, %.split.epil.preheader ], [ %.0349683.ph, %.loopexit667.loopexit921.unr-lcssa ], [ %43, %.thread ]
  %.0342 = phi ptr [ %i.ly, %bb.cz ], [ %i.ly, %.split.epil.preheader ], [ %i.ly, %.loopexit667.loopexit921.unr-lcssa ], [ %i.jo, %.thread ]
  %i.nv = getelementptr inbounds nuw [256 x i8], ptr @_ZN2cvL7randTabE, i64 %i.nu
  %i.nw = zext nneg i32 %i.y to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = shl nsw i32 %.1350814817, 30
  br label %bb.db

bb.da:                                            ; preds = %bb.cd
  %i.nz = icmp eq i32 %i.y, 6
  %i.oa = select i1 %5, double f0x47EFFFFFE0000000, double f0x7FEFFFFFFFFFFFFF ; 3 uses
  %i.ob = shl nuw nsw i32 %i.ab, 1
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.oc ; 4 uses
  br i1 %i.nz, label %.preheader832, label %.preheader833

.preheader833:                                    ; preds = %bb.da
  %min.iters.check905 = icmp eq i32 %i.aa, 0
  br i1 %min.iters.check905, label %scalar.ph904.preheader, label %vector.ph906

vector.ph906:                                     ; preds = %.preheader833
  %n.vec907 = and i64 %i.dp, 254                  ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.oa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %vector.ph906
  %index909 = phi i64 [ 0, %vector.ph906 ], [ %index.next912, %vector.body908 ] ; 4 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.0335, i64 %index909
  %wide.load910 = load <2 x double>, ptr %i.oe, align 8, !tbaa !34 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.0336, i64 %index909
  %wide.load911 = load <2 x double>, ptr %i.of, align 8, !tbaa !34 ; 2 uses
  %i.og = fsub <2 x double> %wide.load910, %wide.load911 ; 2 uses
  %i.oh = fcmp olt <2 x double> %i.og, %broadcast.splat
  %i.oi = select <2 x i1> %i.oh, <2 x double> %i.og, <2 x double> %broadcast.splat
  %i.oj = fmul <2 x double> %i.oi, splat (double f0x3DF0000000000000)
  %i.ok = fptrunc <2 x double> %i.oj to <2 x float>
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %index909
  %i.om = fadd <2 x double> %wide.load910, %wide.load911
  %i.on = fmul <2 x double> %i.om, splat (double 5.000000e-01)
  %i.oo = fptrunc <2 x double> %i.on to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.ok, <2 x float> %i.oo, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.ol, align 4, !tbaa !10
  %index.next912 = add nuw i64 %index909, 2       ; 2 uses
  %i.op = icmp eq i64 %index.next912, %n.vec907
  br i1 %i.op, label %middle.block913, label %vector.body908, !llvm.loop !78

middle.block913:                                  ; preds = %vector.body908
  %cmp.n914 = icmp eq i64 %n.vec907, %i.dp
  br i1 %cmp.n914, label %.loopexit, label %scalar.ph904.preheader

scalar.ph904.preheader:                           ; preds = %.preheader833, %middle.block913
  %indvars.iv741.ph = phi i64 [ 0, %.preheader833 ], [ %n.vec907, %middle.block913 ]
  br label %scalar.ph904

scalar.ph904:                                     ; preds = %scalar.ph904.preheader, %scalar.ph904
  %indvars.iv741 = phi i64 [ %indvars.iv.next742, %scalar.ph904 ], [ %indvars.iv741.ph, %scalar.ph904.preheader ] ; 4 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %.0335, i64 %indvars.iv741
  %i.or = load double, ptr %i.oq, align 8, !tbaa !34 ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %.0336, i64 %indvars.iv741
  %i.ot = load double, ptr %i.os, align 8, !tbaa !34 ; 2 uses
  %i.ou = fsub double %i.or, %i.ot                ; 2 uses
  %i.ov = fcmp olt double %i.ou, %i.oa
  %.sroa.speculated568 = select i1 %i.ov, double %i.ou, double %i.oa
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv741
  %i.ox = fadd double %i.or, %i.ot
  %i.oy = insertelement <2 x double> poison, double %.sroa.speculated568, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.ox, i64 1
  %i.pa = fmul <2 x double> %i.oz, <double f0x3DF0000000000000, double 5.000000e-01>
  %i.pb = fptrunc <2 x double> %i.pa to <2 x float>
  store <2 x float> %i.pb, ptr %i.ow, align 4, !tbaa !10
  %indvars.iv.next742 = add nuw nsw i64 %indvars.iv741, 1 ; 2 uses
  %exitcond745.not = icmp eq i64 %indvars.iv.next742, %i.dp
  br i1 %exitcond745.not, label %.loopexit, label %scalar.ph904, !llvm.loop !79

.preheader832:                                    ; preds = %bb.da, %.preheader832
  %indvars.iv746 = phi i64 [ %indvars.iv.next747, %.preheader832 ], [ 0, %bb.da ] ; 4 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.0335, i64 %indvars.iv746 ; 2 uses
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !34
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.0336, i64 %indvars.iv746 ; 2 uses
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !34
  %i.pg = fsub double %i.pd, %i.pf                ; 2 uses
  %i.ph = fcmp olt double %i.pg, f0x7FEFFFFFFFFFFFFF
  %.sroa.speculated566 = select i1 %i.ph, double %i.pg, double f0x7FEFFFFFFFFFFFFF
  %i.pi = fmul double %.sroa.speculated566, f0x3BF0000000000000
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %indvars.iv746 ; 2 uses
  store double %i.pi, ptr %i.pj, align 8, !tbaa !34
  %i.pk = load double, ptr %i.pc, align 8, !tbaa !34
  %i.pl = load double, ptr %i.pe, align 8, !tbaa !34
  %i.pm = fadd double %i.pk, %i.pl
  %i.pn = fmul double %i.pm, 5.000000e-01
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store double %i.pn, ptr %i.po, align 8, !tbaa !34
  %indvars.iv.next747 = add nuw nsw i64 %indvars.iv746, 1 ; 2 uses
  %exitcond750.not = icmp eq i64 %indvars.iv.next747, %i.dp
  br i1 %exitcond750.not, label %.loopexit, label %.preheader832, !llvm.loop !80

.loopexit:                                        ; preds = %scalar.ph904, %.preheader832, %middle.block913
  %i.pp = zext nneg i32 %i.y to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cvL7randTabE, i64 %i.pp
  br label %bb.db

bb.db:                                            ; preds = %.loopexit667, %.loopexit
  %.2351 = phi i32 [ %i.ny, %.loopexit667 ], [ 0, %.loopexit ]
  %.0347.in = phi ptr [ %i.nx, %.loopexit667 ], [ %i.pq, %.loopexit ]
  %.2344 = phi ptr [ %.0342, %.loopexit667 ], [ %i.od, %.loopexit ]
  %.0347 = load ptr, ptr %.0347.in, align 8, !tbaa !45 ; 2 uses
  %.not399 = icmp eq ptr %.0347, null
  br i1 %.not399, label %bb.dc, label %bb.fg

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @__func__._ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b, ptr noundef nonnull @.str.1, i32 noundef 676) #20
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.dc
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508

bb.dg:                                            ; preds = %bb.dd
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = load ptr, ptr %32, align 8, !tbaa !19   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506: ; preds = %bb.dg
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !20
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506, %bb.df
  %.pn400 = phi { ptr, i32 } [ %i.pr, %bb.df ], [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506 ], [ %i.ps, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %.body

bb.dh:                                            ; preds = %bb.as
  %i.py = icmp eq i32 %2, 1
  br i1 %i.py, label %bb.di, label %bb.fb

bb.di:                                            ; preds = %bb.dh
  %i.pz = icmp sge i32 %i.aa, %i.dl               ; 2 uses
  %i.qa = call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.dl) ; 2 uses
  %i.qb = icmp sge i32 %i.aa, %i.dn               ; 2 uses
  %i.qc = call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.dn)
  %i.qd = add nuw nsw i32 %i.qc, %i.qa            ; 2 uses
  %i.qe = zext nneg i32 %i.qd to i64              ; 4 uses
  %i.qf = load i64, ptr %i.ai, align 8, !tbaa !95
  %.not.i509 = icmp ult i64 %i.qf, %i.qe
  br i1 %.not.i509, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i64 %i.qe, ptr %i.ai, align 8, !tbaa !95
  %.pre = load ptr, ptr %23, align 8, !tbaa !94
  br label %_ZN2cv10AutoBufferIdLm136EE8allocateEm.exit513

bb.dk:                                            ; preds = %bb.di
  %i.qg = load ptr, ptr %23, align 8, !tbaa !94   ; 4 uses
  %.not.i.i510 = icmp eq ptr %i.qg, %i.ah
  br i1 %.not.i.i510, label %_ZN2cv10AutoBufferIdLm136EE10deallocateEv.exit.i511, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZdaPv(ptr noundef nonnull %i.qg) #21
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  store ptr %i.ah, ptr %23, align 8, !tbaa !94
  br label %_ZN2cv10AutoBufferIdLm136EE10deallocateEv.exit.i511

_ZN2cv10AutoBufferIdLm136EE10deallocateEv.exit.i511: ; preds = %bb.dn, %bb.dk
  %i.qi = phi ptr [ %i.ah, %bb.dn ], [ %i.qg, %bb.dk ]
  store i64 %i.qe, ptr %i.ai, align 8, !tbaa !95
  %i.qj = icmp samesign ugt i32 %i.qd, 136
  br i1 %i.qj, label %bb.do, label %_ZN2cv10AutoBufferIdLm136EE8allocateEm.exit513

bb.do:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EE10deallocateEv.exit.i511
  %i.qk = shl nuw nsw i64 %i.qe, 3
  %i.ql = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qk) #22
          to label %.noexc512 unwind label %bb.bm ; 2 uses

.noexc512:                                        ; preds = %bb.do
  store ptr %i.ql, ptr %23, align 8, !tbaa !94
  br label %_ZN2cv10AutoBufferIdLm136EE8allocateEm.exit513

_ZN2cv10AutoBufferIdLm136EE8allocateEm.exit513:   ; preds = %.noexc512, %_ZN2cv10AutoBufferIdLm136EE10deallocateEv.exit.i511, %bb.dj
  %i.qm = phi ptr [ %i.ql, %.noexc512 ], [ %i.qi, %_ZN2cv10AutoBufferIdLm136EE10deallocateEv.exit.i511 ], [ %.pre, %bb.dj ] ; 3 uses
  %i.qn = icmp eq i32 %i.ag, 8
  %i.qo = select i1 %i.qn, i32 6, i32 5           ; 6 uses
  %i.qp = load i32, ptr %21, align 8, !tbaa !30   ; 2 uses
  %i.qq = and i32 %i.qp, 16384
end_hunk_0
