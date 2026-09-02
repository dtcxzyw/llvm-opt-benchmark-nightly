Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/vecmath_test?download=true
inline.NumInlined: 2858
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN24Vector_AngleBetween_Test8TestBodyEv:_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit
bb.dc:                                            ; preds = %.noexc.i.i332
  %i.nx = load ptr, ptr %21, align 8, !tbaa !32   ; 3 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %_ZN7testing7MessageD2Ev.exit333, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !34
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(128) %i.nx) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit333

bb.de:                                            ; preds = %bb.db
  %i.oc = landingpad { ptr, i32 }
          catch ptr null
  %i.od = extractvalue { ptr, i32 } %i.oc, 0
  call void @__clang_call_terminate(ptr %i.od) #26
  unreachable

_ZN7testing7MessageD2Ev.exit333:                  ; preds = %bb.da, %.noexc.i.i332, %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.dl

bb.df:                                            ; preds = %bb.cu
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dg:                                            ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit316, %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %bb.cv
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit330
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.cz
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #25
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn184 = phi { ptr, i32 } [ %i.oh, %bb.di ], [ %i.og, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i320, %bb.dg, %bb.dj
  %.pn184.pn = phi { ptr, i32 } [ %.pn184, %bb.dj ], [ %i.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.of, %bb.dg ], [ %i.nn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i320 ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #25
  br label %bb.dk

bb.dk:                                            ; preds = %.body, %bb.df
  %.pn184.pn.pn = phi { ptr, i32 } [ %.pn184.pn, %.body ], [ %i.oe, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  br label %bb.fl

bb.dl:                                            ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit315, %_ZN7testing7MessageD2Ev.exit333
  %i.oi = load ptr, ptr %i.fp, align 8, !tbaa !24
  %.not.i.i.i334 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i334, label %_ZN7testing15AssertionResultD2Ev.exit339, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.oj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i335 unwind label %bb.dp

.noexc.i.i335:                                    ; preds = %bb.dm
  br i1 %i.oj, label %bb.dn, label %_ZN7testing15AssertionResultD2Ev.exit339

bb.dn:                                            ; preds = %.noexc.i.i335
  %i.ok = load ptr, ptr %i.fp, align 8, !tbaa !24 ; 4 uses
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %_ZN7testing15AssertionResultD2Ev.exit339, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !29 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i336: ; preds = %bb.do
  %i.op = load i64, ptr %i.on, align 8, !tbaa !35
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i337: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i336
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit339

bb.dp:                                            ; preds = %bb.dm
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit339:         ; preds = %bb.dl, %.noexc.i.i335, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %.preheader, label %bb.cr, !llvm.loop !92

_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit377: ; preds = %_ZN7testing15AssertionResultD2Ev.exit465
  %sqrt.i.i357 = call noundef x86_fp80 @llvm.sqrt.f80(x86_fp80 3.000000e+00)
  %i.ot = fdiv x86_fp80 1.000000e+00, %sqrt.i.i357 ; 2 uses
  %sqrt.i.i363 = call noundef x86_fp80 @llvm.sqrt.f80(x86_fp80 f0x4000C00346E71A2AF918) ; 2 uses
  %i.ou = fdiv nnan x86_fp80 -1.000000e+00, %sqrt.i.i363
  %i.ov = fdiv nnan x86_fp80 f0x3FFF800346DC5D638800, %sqrt.i.i363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  store float f0x404907DB, ptr %i.o, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  %i.ow = fmul x86_fp80 %i.ot, %i.ou              ; 2 uses
  %i.ox = fmul x86_fp80 %i.ot, %i.ov
  %i.oy = fsub x86_fp80 %i.ow, %i.ox
  %i.oz = fadd x86_fp80 %i.ow, %i.oy              ; 3 uses
  %i.pa = fcmp olt x86_fp80 %i.oz, -1.000000e+00
  %i.pb = fcmp ogt x86_fp80 %i.oz, 1.000000e+00
  %..i366 = select i1 %i.pb, x86_fp80 1.000000e+00, x86_fp80 %i.oz
  %.0.i367 = select i1 %i.pa, x86_fp80 -1.000000e+00, x86_fp80 %..i366
  %i.pc = call noundef x86_fp80 @acosl(x86_fp80 noundef %.0.i367) #25
  %i.pd = fptrunc x86_fp80 %i.pc to float
  store float %i.pd, ptr %i.p, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  store float f0x40490F15, ptr %i.q, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  %i.pe = load i8, ptr %26, align 8, !tbaa !21, !range !22, !noundef !23
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.fg, label %bb.ep

bb.dq:                                            ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit465
  %indvars.iv728 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next729, %_ZN7testing15AssertionResultD2Ev.exit465 ] ; 2 uses
  %i.pg = add nuw nsw i64 %indvars.iv728, 10000000 ; 2 uses
  %i.ph = mul i64 %i.pg, 9202493588570546565      ; 2 uses
  %i.pi = lshr i64 %i.ph, 27
  %i.pj = xor i64 %i.pi, %i.ph
  %i.pk = mul i64 %i.pj, -9089707755183418291     ; 2 uses
  %i.pl = lshr i64 %i.pk, 33
  %i.pm = xor i64 %i.pl, %i.pk
  %i.pn = shl nuw nsw i64 %i.pg, 1
  %i.po = or disjoint i64 %i.pn, 1                ; 7 uses
  %i.pp = add i64 %i.pm, %i.po
  %i.pq = mul i64 %i.pp, 6364136223846793005
  %i.pr = add i64 %i.pq, %i.po                    ; 2 uses
  %i.ps = mul i64 %i.pr, 6364136223846793005
  %i.pt = add i64 %i.ps, %i.po                    ; 2 uses
  %i.pu = mul i64 %i.pt, 6364136223846793005
  %i.pv = add i64 %i.pu, %i.po                    ; 2 uses
  %i.pw = mul i64 %i.pv, 6364136223846793005
  %i.px = add i64 %i.pw, %i.po                    ; 2 uses
  %i.py = mul i64 %i.px, 6364136223846793005
  %i.pz = insertelement <2 x i64> poison, i64 %i.pv, i64 0
  %i.qa = insertelement <2 x i64> %i.pz, i64 %i.pr, i64 1 ; 3 uses
  %i.qb = lshr <2 x i64> %i.qa, splat (i64 45)
  %i.qc = lshr <2 x i64> %i.qa, splat (i64 27)
  %i.qd = add i64 %i.py, %i.po                    ; 2 uses
  %i.qe = mul i64 %i.qd, 6364136223846793005
  %i.qf = add i64 %i.qe, %i.po
  %i.qg = insertelement <2 x i64> poison, i64 %i.qf, i64 0
  %i.qh = insertelement <2 x i64> %i.qg, i64 %i.px, i64 1 ; 3 uses
  %i.qi = lshr <2 x i64> %i.qh, splat (i64 45)
  %i.qj = xor <2 x i64> %i.qb, %i.qc
  %i.qk = lshr <2 x i64> %i.qh, splat (i64 27)
  %i.ql = trunc <2 x i64> %i.qj to <2 x i32>      ; 2 uses
  %i.qm = lshr <2 x i64> %i.qa, splat (i64 59)
  %i.qn = xor <2 x i64> %i.qi, %i.qk
  %i.qo = trunc nuw nsw <2 x i64> %i.qm to <2 x i32>
  %i.qp = lshr <2 x i64> %i.qh, splat (i64 59)
  %i.qq = trunc <2 x i64> %i.qn to <2 x i32>      ; 2 uses
  %i.qr = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ql, <2 x i32> %i.ql, <2 x i32> %i.qo)
  %i.qs = trunc nuw nsw <2 x i64> %i.qp to <2 x i32>
  %i.qt = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.qq, <2 x i32> %i.qq, <2 x i32> %i.qs)
  %i.qu = uitofp <2 x i32> %i.qr to <2 x float>
  %i.qv = uitofp <2 x i32> %i.qt to <2 x float>
  %i.qw = fmul nnan <2 x float> %i.qu, splat (float f0x2F800000) ; 2 uses
  %i.qx = fmul nnan <2 x float> %i.qv, splat (float f0x2F800000) ; 2 uses
  %i.qy = fcmp olt <2 x float> %i.qw, splat (float f0x3F7FFFFF)
  %i.qz = fcmp olt <2 x float> %i.qx, splat (float f0x3F7FFFFF)
  %i.ra = select <2 x i1> %i.qy, <2 x float> %i.qw, <2 x float> splat (float f0x3F7FFFFF)
  %i.rb = select <2 x i1> %i.qz, <2 x float> %i.qx, <2 x float> splat (float f0x3F7FFFFF)
  %i.rc = fmul nnan <2 x float> %i.ra, splat (float 2.000000e+00)
  %i.rd = fmul nnan <2 x float> %i.rb, splat (float 2.000000e+00)
  %i.re = fadd <2 x float> %i.rc, splat (float -1.000000e+00) ; 3 uses
  %i.rf = insertelement <2 x i64> poison, i64 %i.qd, i64 0
  %i.rg = insertelement <2 x i64> %i.rf, i64 %i.pt, i64 1 ; 3 uses
  %i.rh = lshr <2 x i64> %i.rg, splat (i64 45)
  %i.ri = lshr <2 x i64> %i.rg, splat (i64 27)
  %i.rj = xor <2 x i64> %i.rh, %i.ri
  %i.rk = trunc <2 x i64> %i.rj to <2 x i32>      ; 2 uses
  %i.rl = lshr <2 x i64> %i.rg, splat (i64 59)
  %i.rm = trunc nuw nsw <2 x i64> %i.rl to <2 x i32>
  %i.rn = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.rk, <2 x i32> %i.rk, <2 x i32> %i.rm)
  %i.ro = uitofp <2 x i32> %i.rn to <2 x float>
  %i.rp = fmul nnan <2 x float> %i.ro, splat (float f0x2F800000) ; 2 uses
  %i.rq = fcmp olt <2 x float> %i.rp, splat (float f0x3F7FFFFF)
  %30 = select <2 x i1> %i.rq, <2 x float> %i.rp, <2 x float> splat (float f0x3F7FFFFF)
  %31 = fmul nnan <2 x float> %30, splat (float 2.000000e+00)
  %32 = fadd <2 x float> %31, splat (float -1.000000e+00) ; 4 uses
  %i.rr = fadd <2 x float> %i.rd, splat (float -1.000000e+00) ; 3 uses
  %33 = shufflevector <2 x float> %i.rr, <2 x float> %i.re, <2 x i32> <i32 1, i32 3> ; 2 uses
  %34 = fmul <2 x float> %33, %33
  %i.rs = fmul <2 x float> %32, %32
  %35 = fadd <2 x float> %34, %i.rs
  %36 = shufflevector <2 x float> %i.rr, <2 x float> %i.re, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.rt = fmul <2 x float> %36, %36
  %37 = fadd <2 x float> %35, %i.rt
  %38 = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %37) ; 4 uses
  %foldExtExtBinop801 = fdiv <2 x float> %32, %38
  %i.ru = extractelement <2 x float> %foldExtExtBinop801, i64 1
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rv = fdiv <2 x float> %i.re, %39
  %foldExtExtBinop803 = fdiv <2 x float> %32, %38 ; 2 uses
  %40 = extractelement <2 x float> %foldExtExtBinop803, i64 0 ; 5 uses
  %i.rw = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rx = fdiv <2 x float> %i.rr, %i.rw           ; 9 uses
  %i.ry = fneg float %40
  %i.rz = call noundef float @llvm.copysign.f32(float %i.ru, float %i.ry) ; 5 uses
  %i.sa = fneg <2 x float> %i.rx
  %i.sb = call <2 x float> @llvm.copysign.v2f32(<2 x float> %i.rv, <2 x float> %i.sa) ; 8 uses
  %i.sc = extractelement <2 x float> %i.sb, i64 1 ; 2 uses
  %i.sd = extractelement <2 x float> %i.sb, i64 0
  %i.se = extractelement <2 x float> %i.rx, i64 1 ; 2 uses
  %i.sf = extractelement <2 x float> %i.rx, i64 0
  %i.sg = shufflevector <2 x float> %i.sb, <2 x float> %i.rx, <2 x i32> <i32 0, i32 3>
  %i.sh = fpext <2 x float> %i.sg to <2 x double>
  %i.si = shufflevector <2 x float> %i.sb, <2 x float> %i.rx, <2 x i32> <i32 1, i32 3>
  %i.sj = fpext <2 x float> %i.si to <2 x double> ; 3 uses
  %i.sk = insertelement <2 x float> poison, float %i.rz, i64 0
  %41 = shufflevector <2 x float> %i.sk, <2 x float> %foldExtExtBinop803, <2 x i32> <i32 0, i32 2>
  %i.sl = fpext <2 x float> %41 to <2 x double>   ; 3 uses
  %i.sm = shufflevector <2 x float> %i.sb, <2 x float> %i.rx, <2 x i32> <i32 0, i32 2>
  %i.sn = fpext <2 x float> %i.sm to <2 x double> ; 3 uses
  %i.so = fmul <2 x double> %i.sj, %i.sj
  %i.sp = fmul <2 x double> %i.sl, %i.sl
  %i.sq = fadd <2 x double> %i.so, %i.sp
  %i.sr = fmul <2 x double> %i.sn, %i.sn
  %i.ss = fadd <2 x double> %i.sr, %i.sq
  %i.st = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ss) ; 3 uses
  %i.su = fdiv <2 x double> %i.sh, %i.st
  %i.sv = fdiv <2 x double> %i.sl, %i.st          ; 2 uses
  %i.sw = shufflevector <2 x double> %i.sn, <2 x double> %i.sj, <2 x i32> <i32 1, i32 2>
  %i.sx = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sy = fdiv <2 x double> %i.sw, %i.sx
  %shift805 = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop806 = fmul <2 x double> %shift805, %i.sv
  %i.sz = fmul <2 x double> %i.su, %i.sy          ; 2 uses
  %shift808 = shufflevector <2 x double> %i.sz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop809.a = fadd <2 x double> %shift808, %foldExtExtBinop806
  %foldExtExtBinop811 = fadd <2 x double> %i.sz, %foldExtExtBinop809.a
  %i.ta = extractelement <2 x double> %foldExtExtBinop811, i64 0
  %i.tb = call double @acos(double noundef %i.ta) #25
  %i.tc = fptrunc double %i.tb to float           ; 3 uses
  %i.td = fmul float %i.se, %i.sc
  %i.te = fmul float %40, %i.rz
  %i.tf = fadd float %i.td, %i.te
  %foldExtExtBinop813 = fmul <2 x float> %i.rx, %i.sb
  %i.tg = extractelement <2 x float> %foldExtExtBinop813, i64 0
  %i.th = fadd float %i.tg, %i.tf
  %i.ti = fcmp olt float %i.th, 0.000000e+00
  br i1 %i.ti, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.tj = fadd <2 x float> %i.rx, %i.sb           ; 2 uses
  %i.tk = fadd float %40, %i.rz                   ; 2 uses
  %i.tl = fmul float %i.tk, %i.tk
  %i.tm = fmul <2 x float> %i.tj, %i.tj           ; 2 uses
  %i.tn = extractelement <2 x float> %i.tm, i64 1
  %i.to = fadd float %i.tn, %i.tl
  %i.tp = extractelement <2 x float> %i.tm, i64 0
  %i.tq = fadd float %i.tp, %i.to
  %sqrt.i.i421 = call noundef float @llvm.sqrt.f32(float %i.tq)
  %i.tr = fmul float %sqrt.i.i421, 5.000000e-01   ; 2 uses
  %i.ts = fcmp ogt float %i.tr, 1.000000e+00
  %..i.i.i422 = select i1 %i.ts, float 1.000000e+00, float %i.tr
  %i.tt = call noundef float @asinf(float noundef %..i.i.i422) #25
  %i.tu = fmul float %i.tt, 2.000000e+00
  %i.tv = fsub float f0x40490FDB, %i.tu
  br label %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit423

bb.ds:                                            ; preds = %bb.dq
  %i.tw = fsub float %40, %i.rz                   ; 2 uses
  %i.tx = fmul float %i.tw, %i.tw
  %i.ty = fsub <2 x float> %i.rx, %i.sb           ; 2 uses
  %i.tz = fmul <2 x float> %i.ty, %i.ty           ; 2 uses
  %i.ua = extractelement <2 x float> %i.tz, i64 1
  %i.ub = fadd float %i.ua, %i.tx
  %i.uc = extractelement <2 x float> %i.tz, i64 0
  %i.ud = fadd float %i.uc, %i.ub
  %sqrt.i41.i418 = call noundef float @llvm.sqrt.f32(float %i.ud)
  %i.ue = fmul float %sqrt.i41.i418, 5.000000e-01 ; 2 uses
  %i.uf = fcmp ogt float %i.ue, 1.000000e+00
  %..i.i42.i419 = select i1 %i.uf, float 1.000000e+00, float %i.ue
  %i.ug = call noundef float @asinf(float noundef %..i.i42.i419) #25
  %i.uh = fmul float %i.ug, 2.000000e+00
  br label %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit423

_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit423: ; preds = %bb.dr, %bb.ds
  %.0.i420 = phi float [ %i.tv, %bb.dr ], [ %i.uh, %bb.ds ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.ui = fsub float %i.tc, %.0.i420
  %i.uj = call noundef float @llvm.fabs.f32(float %i.ui)
  %i.uk = fdiv float %i.uj, %i.tc
  store float %i.uk, ptr %i.m, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  store double 5.000000e-06, ptr %i.n, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  %i.ul = load i8, ptr %23, align 8, !tbaa !21, !range !22, !noundef !23
  %i.um = trunc nuw i8 %i.ul to i1
  br i1 %i.um, label %bb.ek, label %bb.dt

bb.dt:                                            ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit423
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.du unwind label %bb.ee

bb.du:                                            ; preds = %bb.dt
  %i.un = load ptr, ptr %24, align 8, !tbaa !32
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = fpext float %i.tc to double
  %i.uq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uo, double noundef %i.up)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit426 unwind label %bb.ef ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit426:        ; preds = %bb.du
  %i.ur = load ptr, ptr %24, align 8, !tbaa !32
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.us, ptr noundef nonnull @.str.85, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit428 unwind label %bb.ef ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit428:     ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit426
  %i.uu = load ptr, ptr %24, align 8, !tbaa !32
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = fpext float %.0.i420 to double
  %i.ux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uv, double noundef %i.uw)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit430 unwind label %bb.ef ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit430:        ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit428
  %i.uy = load ptr, ptr %24, align 8, !tbaa !32
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.va = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.uz, ptr noundef nonnull @.str.86, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit432 unwind label %bb.ef ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit432:     ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit430
  %i.vb = load ptr, ptr %24, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, float noundef %i.sc, float noundef %i.rz, float noundef %i.sd)
          to label %.noexc439 unwind label %bb.ef

.noexc439:                                        ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit432
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %2, align 8, !tbaa !29
  %i.ve = load i64, ptr %i.fq, align 8, !tbaa !47
  %i.vf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vc, ptr noundef %i.vd, i64 noundef %i.ve)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i436 unwind label %bb.dv ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i436: ; preds = %.noexc439
  %i.vg = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.fr
  br i1 %i.vh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i437: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i436
  %i.vi = load i64, ptr %i.fr, align 8, !tbaa !35
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i438

bb.dv:                                            ; preds = %.noexc439
  %i.vk = landingpad { ptr, i32 }
          cleanup
  %i.vl = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.fr
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i433: ; preds = %bb.dv
  %i.vn = load i64, ptr %i.fr, align 8, !tbaa !35
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i434: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i433
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i438: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.vp = load ptr, ptr %24, align 8, !tbaa !32
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vq, ptr noundef nonnull @.str.87, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit444 unwind label %bb.ef ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit444:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i438
  %i.vs = load ptr, ptr %24, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.se, float noundef %40, float noundef %i.sf)
          to label %.noexc451 unwind label %bb.ef

.noexc451:                                        ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit444
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load ptr, ptr %1, align 8, !tbaa !29
  %i.vv = load i64, ptr %i.fs, align 8, !tbaa !47
  %i.vw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vt, ptr noundef %i.vu, i64 noundef %i.vv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i448 unwind label %bb.dw ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i448: ; preds = %.noexc451
  %i.vx = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.ft
  br i1 %i.vy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i449: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i448
  %i.vz = load i64, ptr %i.ft, align 8, !tbaa !35
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i450

bb.dw:                                            ; preds = %.noexc451
  %i.wb = landingpad { ptr, i32 }
          cleanup
  %i.wc = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.ft
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i445: ; preds = %bb.dw
  %i.we = load i64, ptr %i.ft, align 8, !tbaa !35
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i446: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.body440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i450: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.wg = load ptr, ptr %i.fu, align 8, !tbaa !24 ; 2 uses
  %.not.i.i455 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i455, label %_ZNK7testing15AssertionResult15failure_messageEv.exit456, label %bb.dx

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i450
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit456

_ZNK7testing15AssertionResult15failure_messageEv.exit456: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i450
  %i.wi = phi ptr [ %i.wh, %bb.dx ], [ @.str.218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i450 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 163, ptr noundef %i.wi)
          to label %bb.dy unwind label %bb.eg

bb.dy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit456
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.dz unwind label %bb.eh

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %i.wj = load ptr, ptr %24, align 8, !tbaa !32
  %.not.i.i.i457 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i457, label %_ZN7testing7MessageD2Ev.exit459, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.wk = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i458 unwind label %bb.ed

.noexc.i.i458:                                    ; preds = %bb.ea
  br i1 %i.wk, label %bb.eb, label %_ZN7testing7MessageD2Ev.exit459

bb.eb:                                            ; preds = %.noexc.i.i458
  %i.wl = load ptr, ptr %24, align 8, !tbaa !32   ; 3 uses
  %i.wm = icmp eq ptr %i.wl, null
  br i1 %i.wm, label %_ZN7testing7MessageD2Ev.exit459, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.wn = load ptr, ptr %i.wl, align 8, !tbaa !34
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8
  call void %i.wp(ptr noundef nonnull align 8 dereferenceable(128) %i.wl) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit459

bb.ed:                                            ; preds = %bb.ea
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #26
  unreachable

_ZN7testing7MessageD2Ev.exit459:                  ; preds = %bb.dz, %.noexc.i.i458, %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.ek

bb.ee:                                            ; preds = %bb.dt
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ef:                                            ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i438, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit432, %_ZN7testing7MessagelsIfEERS0_RKT_.exit430, %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit428, %_ZN7testing7MessagelsIfEERS0_RKT_.exit426, %bb.du
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %.body440

bb.eg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit456
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.dy
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #25
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn180 = phi { ptr, i32 } [ %i.wv, %bb.eh ], [ %i.wu, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.body440

.body440:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i434, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i446, %bb.ef, %bb.ei
  %.pn180.pn = phi { ptr, i32 } [ %.pn180, %bb.ei ], [ %i.vk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i434 ], [ %i.wt, %bb.ef ], [ %i.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i446 ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #25
  br label %bb.ej

bb.ej:                                            ; preds = %.body440, %bb.ee
  %.pn180.pn.pn = phi { ptr, i32 } [ %.pn180.pn, %.body440 ], [ %i.ws, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  br label %bb.fl

bb.ek:                                            ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit423, %_ZN7testing7MessageD2Ev.exit459
  %i.ww = load ptr, ptr %i.fu, align 8, !tbaa !24
  %.not.i.i.i460 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i.i460, label %_ZN7testing15AssertionResultD2Ev.exit465, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.wx = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i461 unwind label %bb.eo

.noexc.i.i461:                                    ; preds = %bb.el
  br i1 %i.wx, label %bb.em, label %_ZN7testing15AssertionResultD2Ev.exit465

bb.em:                                            ; preds = %.noexc.i.i461
  %i.wy = load ptr, ptr %i.fu, align 8, !tbaa !24 ; 4 uses
  %i.wz = icmp eq ptr %i.wy, null
  br i1 %i.wz, label %_ZN7testing15AssertionResultD2Ev.exit465, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xa = load ptr, ptr %i.wy, align 8, !tbaa !29 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462: ; preds = %bb.en
  %i.xd = load i64, ptr %i.xb, align 8, !tbaa !35
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i463: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit465

bb.eo:                                            ; preds = %bb.el
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit465:         ; preds = %bb.ek, %.noexc.i.i461, %bb.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond731.not = icmp eq i64 %indvars.iv.next729, 100000
  br i1 %exitcond731.not, label %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit377, label %bb.dq, !llvm.loop !93

bb.ep:                                            ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit377
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.eq unwind label %bb.ez

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.xh, ptr %28, align 8, !tbaa !46, !alias.scope !96
  %i.xi = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 0, ptr %i.xi, align 8, !tbaa !47, !alias.scope !96
  store i8 0, ptr %i.xh, align 8, !tbaa !35, !alias.scope !96
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %28, ptr noundef nonnull @.str.90, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %28, align 8, !tbaa !29, !alias.scope !96 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.xh
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11CmpHelperGEIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.aa, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !24  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.u
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !35
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31DirectionCone_VectorInCone_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 13 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %.0231 = phi i32 [ 0, %bb.a ], [ %i.dd, %bb.d ]
  %.sroa.0192.0230 = phi i64 [ -8846114313915602277, %bb.a ], [ %.sroa.0192.1, %bb.d ] ; 2 uses
  %i.k = mul i64 %.sroa.0192.0230, 6364136223846793005
  %i.l = add i64 %i.k, -2720673578348880933       ; 2 uses
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, -2720673578348880933       ; 4 uses
  %i.o = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.p = insertelement <2 x i64> %i.o, i64 %.sroa.0192.0230, i64 1 ; 3 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 45)
  %i.r = lshr <2 x i64> %i.p, splat (i64 27)
  %i.s = xor <2 x i64> %i.q, %i.r
  %i.t = trunc <2 x i64> %i.s to <2 x i32>        ; 2 uses
  %i.u = lshr <2 x i64> %i.p, splat (i64 59)
  %i.v = trunc nuw nsw <2 x i64> %i.u to <2 x i32>
  %i.w = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.t, <2 x i32> %i.t, <2 x i32> %i.v)
  %i.x = uitofp <2 x i32> %i.w to <2 x float>
  %i.y = fmul nnan <2 x float> %i.x, splat (float f0x2F800000) ; 3 uses
  %i.z = fcmp olt <2 x float> %i.y, splat (float f0x3F7FFFFF) ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 1
  %i.ab = extractelement <2 x float> %i.y, i64 1
  %i.ac = extractelement <2 x i1> %i.z, i64 0
  %i.ad = extractelement <2 x float> %i.y, i64 0
  %i.ae = fmul nnan float %i.ab, 2.000000e+00
  %i.af = fsub float 1.000000e+00, %i.ae
  %i.ag = select i1 %i.aa, float %i.af, float f0xBF7FFFFE ; 3 uses
  %i.ah = fmul float %i.ag, %i.ag                 ; 2 uses
  %i.ai = fsub float 1.000000e+00, %i.ah          ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.aj, float %i.ai, float 0.000000e+00
  %i.ak = fmul nnan float %i.ad, f0x40C90FDB
  %i.al = select i1 %i.ac, float %i.ak, float f0x40C90FDA ; 2 uses
  %i.am = call noundef float @cosf(float noundef %i.al) #25
  %i.an = call noundef float @sinf(float noundef %i.al) #25
  %i.ao = lshr i64 %i.n, 45
  %i.ap = lshr i64 %i.n, 27
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = lshr i64 %i.n, 59
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = call noundef i32 @llvm.fshr.i32(i32 %i.ar, i32 %i.ar, i32 %i.at)
  %i.av = uitofp i32 %i.au to float
  %i.aw = fmul nnan float %i.av, f0x2F800000      ; 2 uses
  %i.ax = fcmp olt float %i.aw, f0x3F7FFFFF
  %.sroa.speculated.i9.i = select i1 %i.ax, float %i.aw, float f0x3F7FFFFF
  %.sroa.0192.1.in226 = mul i64 %i.n, 6364136223846793005
  %.sroa.0192.1227 = add i64 %.sroa.0192.1.in226, -2720673578348880933
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i)
  %i.ay = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.am, i64 1
  %i.bc = fmul <2 x float> %i.az, %i.bb           ; 3 uses
  %i.bd = fmul <2 x float> %i.bc, %i.bc           ; 2 uses
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fadd float %i.ah, %i.be
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.bf) ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv <2 x float> %i.bc, %i.bh           ; 11 uses
  %i.bj = fdiv float %i.ag, %sqrt.i.i.i.i         ; 10 uses
  %i.bk = extractelement <2 x float> %i.bi, i64 1 ; 5 uses
  %i.bl = extractelement <2 x float> %i.bi, i64 0
  %9 = insertelement <2 x float> poison, float %.sroa.speculated.i9.i, i64 0
  %10 = insertelement <2 x float> %9, float %i.bj, i64 1 ; 2 uses
  %11 = insertelement <2 x float> %10, float 2.000000e+00, i64 0
  %12 = fmul <2 x float> %10, %11                 ; 2 uses
  %13 = fadd <2 x float> %12, <float -1.000000e+00, float -0.000000e+00> ; 5 uses
  %14 = extractelement <2 x float> %13, i64 0     ; 6 uses
  %i.bm = fcmp une float %14, +inf
  %foldExtExtBinop253 = fmul <2 x float> %13, %13
  %15 = extractelement <2 x float> %foldExtExtBinop253, i64 0
  %i.bn = fsub float 1.000000e+00, %15            ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  %.sroa.speculated.i.i113 = select i1 %i.bo, float %i.bn, float 0.000000e+00
  %sqrt.i.i114 = call float @llvm.sqrt.f32(float %.sroa.speculated.i.i113) ; 2 uses
  %i.bp = fneg float %sqrt.i.i114
  %i.bq = fcmp ogt float %14, 1.000000e+00
  %..i7.i = select i1 %i.bq, float 1.000000e+00, float %14
  %i.br = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = fmul float %14, %i.bj
  %i.bv = fmul float %i.bk, %i.bk                 ; 3 uses
  %i.bw = call float @llvm.copysign.f32(float 1.000000e+00, float %i.bj) ; 5 uses
  %i.bx = insertelement <2 x float> %i.bi, float %i.bw, i64 1
  %i.by = insertelement <2 x float> %i.bi, float %i.bv, i64 1
  %i.bz = fmul <2 x float> %i.bx, %i.by           ; 3 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %16 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = insertelement <2 x float> %i.bz, float %i.bv, i64 1
  %i.cc = fadd <2 x float> %16, %i.cb
  %i.cd = fadd float %i.bv, %i.ca
  %i.ce = fadd float %i.bj, %i.bw
  %i.cf = fdiv float -1.000000e+00, %i.ce         ; 2 uses
  %i.cg = fmul float %i.bk, %i.bl
  %i.ch = fmul float %i.cg, %i.cf                 ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.bz, %i.cj
  %i.cl = fmul float %i.bw, %i.ch
  %i.cm = fneg float %i.bw
  %i.cn = fmul float %i.bk, %i.cm
  %i.co = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bw, i64 0
  %i.cp = fadd <2 x float> %i.co, %i.ck
  %17 = shufflevector <2 x float> <float 1.000000e+00, float poison>, <2 x float> %13, <2 x i32> <i32 0, i32 2>
  %i.cq = insertelement <2 x float> <float poison, float -1.000000e+00>, float %sqrt.i.i114, i64 0 ; 2 uses
  %i.cr = fcmp olt <2 x float> %17, %i.cq
  %i.cs = insertelement <2 x float> %i.cq, float %..i7.i, i64 1
  %i.ct = select <2 x i1> %i.cr, <2 x float> <float 1.000000e+00, float -1.000000e+00>, <2 x float> %i.cs ; 3 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x float> %i.cu, %i.bi
  %i.cw = extractelement <2 x float> %i.ct, i64 1
  %i.cx = fmul float %i.cw, %i.bj
  %i.cy = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cz = insertelement <2 x float> %i.cy, float %i.bj, i64 0
  %i.da = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.ch, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.ay
  %i.dd = add nuw nsw i32 %.0231, 1               ; 2 uses
  %exitcond233.not = icmp eq i32 %i.dd, 100
  br i1 %exitcond233.not, label %bb.b, label %bb.c, !llvm.loop !122

bb.e:                                             ; preds = %bb.c, %bb.ay
  %.sroa.0192.1229 = phi i64 [ %.sroa.0192.1227, %bb.c ], [ %.sroa.0192.1, %bb.ay ] ; 2 uses
  %.088228 = phi i32 [ 0, %bb.c ], [ %i.ln, %bb.ay ]
  %i.de = mul i64 %.sroa.0192.1229, 6364136223846793005
  %i.df = add i64 %i.de, -2720673578348880933     ; 2 uses
  %i.dg = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.dh = insertelement <2 x i64> %i.dg, i64 %.sroa.0192.1229, i64 1 ; 3 uses
  %i.di = lshr <2 x i64> %i.dh, splat (i64 45)
  %i.dj = lshr <2 x i64> %i.dh, splat (i64 27)
  %i.dk = xor <2 x i64> %i.di, %i.dj
  %i.dl = trunc <2 x i64> %i.dk to <2 x i32>      ; 2 uses
  %i.dm = lshr <2 x i64> %i.dh, splat (i64 59)
  %i.dn = trunc nuw nsw <2 x i64> %i.dm to <2 x i32>
  %i.do = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dl, <2 x i32> %i.dl, <2 x i32> %i.dn)
  %i.dp = uitofp <2 x i32> %i.do to <2 x float>
  %i.dq = fmul nnan <2 x float> %i.dp, splat (float f0x2F800000) ; 3 uses
  %i.dr = fcmp olt <2 x float> %i.dq, splat (float f0x3F7FFFFF) ; 2 uses
  %i.ds = extractelement <2 x i1> %i.dr, i64 1
  %i.dt = extractelement <2 x float> %i.dq, i64 1
  %i.du = extractelement <2 x i1> %i.dr, i64 0
  %i.dv = extractelement <2 x float> %i.dq, i64 0
  %i.dw = fmul nnan float %i.dt, 2.000000e+00
  %i.dx = fsub float 1.000000e+00, %i.dw
  %i.dy = select i1 %i.ds, float %i.dx, float f0xBF7FFFFE ; 5 uses
  %i.dz = fmul float %i.dy, %i.dy                 ; 2 uses
  %i.ea = fsub float 1.000000e+00, %i.dz          ; 2 uses
  %i.eb = fcmp ogt float %i.ea, 0.000000e+00
  %.sroa.speculated.i.i109 = select i1 %i.eb, float %i.ea, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i109)
  %i.ec = fmul nnan float %i.dv, f0x40C90FDB
  %i.ed = select i1 %i.du, float %i.ec, float f0x40C90FDA ; 2 uses
  %i.ee = call noundef float @cosf(float noundef %i.ed) #25
  %i.ef = call noundef float @sinf(float noundef %i.ed) #25
  %i.eg = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.ee, i64 1
  %i.ek = fmul <2 x float> %i.eh, %i.ej           ; 7 uses
  %i.el = fmul <2 x float> %i.ek, %i.ek           ; 2 uses
  %shift255 = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop256 = fadd <2 x float> %shift255, %i.el
  %i.em = extractelement <2 x float> %foldExtExtBinop256, i64 0
  %i.en = fadd float %i.dz, %i.em
  %sqrt.i.i.i112 = call noundef float @llvm.sqrt.f32(float %i.en)
  %i.eo = insertelement <2 x float> poison, float %sqrt.i.i.i112, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eq = fdiv <2 x float> %i.ek, %i.ep           ; 4 uses
  %i.er = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.es = insertelement <2 x float> %i.er, float %i.dy, i64 0
  %i.et = fdiv <2 x float> %i.es, %i.ep           ; 3 uses
  %i.eu = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ev = fmul <2 x float> %i.bi, %i.eq           ; 3 uses
  %shift258 = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop259 = fadd <2 x float> %shift258, %i.ev
  %i.ew = extractelement <2 x float> %foldExtExtBinop259, i64 0 ; 2 uses
  %i.ex = extractelement <2 x float> %i.et, i64 0 ; 4 uses
  %i.ey = fmul float %i.bj, %i.ex                 ; 2 uses
  %i.ez = fadd float %i.ey, %i.ew                 ; 2 uses
  %i.fa = fcmp ogt float %i.ez, %14
  br i1 %i.fa, label %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fb = fneg <2 x float> %i.et
  %i.fc = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.fd = fmul float %i.bj, %i.fc                 ; 2 uses
  %i.fe = fneg float %i.fd
  %i.ff = call noundef float @llvm.fma.f32(float %i.ex, float %i.bk, float %i.fe)
  %i.fg = fneg float %i.fc
  %i.fh = call noundef float @llvm.fma.f32(float %i.fg, float %i.bj, float %i.fd)
  %i.fi = fadd float %i.ff, %i.fh                 ; 2 uses
  %i.fj = fmul float %i.fi, %i.fi
  %i.fk = fmul <2 x float> %i.bi, %i.et           ; 2 uses
  %i.fl = fneg <2 x float> %i.fk
  %i.fm = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.eq, <2 x float> %i.cz, <2 x float> %i.fl)
  %i.fn = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.fb, <2 x float> %i.bi, <2 x float> %i.fk)
  %i.fo = fadd <2 x float> %i.fm, %i.fn           ; 2 uses
  %i.fp = fmul <2 x float> %i.fo, %i.fo           ; 2 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  %i.fr = fadd float %i.fq, %i.fj
  %i.fs = extractelement <2 x float> %i.fp, i64 1
  %i.ft = fadd float %i.fs, %i.fr
  %sqrt.i80.i = call noundef float @llvm.sqrt.f32(float %i.ft)
  %i.fu = fdiv float %i.bp, %sqrt.i80.i           ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fadd <2 x float> %i.fw, %i.ev
  %i.fy = fmul float %i.bj, %i.ew
  %i.fz = fmul float %i.cd, %i.ex
  %i.ga = fsub float %i.fy, %i.fz
  %i.gb = fmul float %i.ga, %i.fu
  %i.gc = fmul <2 x float> %i.cy, %i.fx
  %i.gd = fmul <2 x float> %i.cc, %i.eu
  %i.ge = fsub <2 x float> %i.gc, %i.gd
  %i.gf = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.ge, %i.gg
  %i.gi = fadd <2 x float> %i.bt, %i.gh
  %i.gj = fadd float %i.bu, %i.gb
  br label %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit

_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.4.vec.insert.i90.pn.i = phi <2 x float> [ %i.gi, %bb.f ], [ %i.eu, %bb.e ] ; 5 uses
  %.pn.i = phi float [ %i.gj, %bb.f ], [ %i.ex, %bb.e ] ; 3 uses
  %i.gk = fcmp oge float %i.ez, %14
  %or.cond = and i1 %i.bm, %i.gk
  br i1 %or.cond, label %bb.g, label %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread

bb.g:                                             ; preds = %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %shift261 = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop262 = fmul <2 x float> %shift261, %.sroa.0.4.vec.insert.i90.pn.i
  %shift264 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i90.pn.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop265.a = fmul <2 x float> %i.ek, %shift264
  %foldExtExtBinop267.a = fadd <2 x float> %foldExtExtBinop262, %foldExtExtBinop265.a
  %i.gl = extractelement <2 x float> %foldExtExtBinop267.a, i64 0
  %i.gm = fmul float %i.dy, %.pn.i
  %i.gn = fadd float %i.gm, %i.gl
  store float %i.gn, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store double f0x3FEFF7CED916872B, ptr %i.b, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperGTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.go = load i8, ptr %3, align 8, !tbaa !21, !range !22, !noundef !23
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.gq = load ptr, ptr %i.j, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.gs = phi ptr [ %i.gr, %bb.j ], [ @.str.218, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 482, ptr noundef %i.gs)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.gt = load ptr, ptr %4, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.gu, label %bb.n, label %_ZN7testing7MessageD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.gv = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN7testing7MessageD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !34
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gv) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %.noexc.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.v

bb.q:                                             ; preds = %bb.h
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.k
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn104 = phi { ptr, i32 } [ %i.he, %bb.s ], [ %i.hd, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %bb.t ], [ %i.hc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.az

bb.v:                                             ; preds = %bb.g, %_ZN7testing7MessageD2Ev.exit
  %i.hf = load ptr, ptr %i.j, align 8, !tbaa !24
  %.not.i.i.i118 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i118, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i119 unwind label %bb.z

.noexc.i.i119:                                    ; preds = %bb.w
  br i1 %i.hg, label %bb.x, label %_ZN7testing15AssertionResultD2Ev.exit

bb.x:                                             ; preds = %.noexc.i.i119
  %i.hh = load ptr, ptr %i.j, align 8, !tbaa !24  ; 4 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !29 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !35
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.z:                                             ; preds = %bb.w
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.v, %.noexc.i.i119, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ay

bb.aa:                                            ; preds = %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %.sroa.04.0.vec.extract.i121 = extractelement <2 x float> %.sroa.0.1, i64 0
  %.sroa.01.0.vec.extract.i122 = extractelement <2 x float> %.sroa.0.4.vec.insert.i90.pn.i, i64 0
  %foldExtExtBinop269 = fmul <2 x float> %.sroa.0.4.vec.insert.i90.pn.i, %.sroa.0.1
  %i.hq = extractelement <2 x float> %foldExtExtBinop269, i64 0
  %.sroa.04.4.vec.extract.i123 = extractelement <2 x float> %.sroa.0.1, i64 1 ; 2 uses
  %.sroa.01.4.vec.extract.i124 = extractelement <2 x float> %.sroa.0.4.vec.insert.i90.pn.i, i64 1 ; 2 uses
  %i.hr = fmul float %.sroa.01.4.vec.extract.i124, %.sroa.04.4.vec.extract.i123
  %i.hs = fadd float %i.hq, %i.hr
  %i.ht = fmul float %.pn.i, %.sroa.10.1
  %i.hu = fadd float %i.ht, %i.hs                 ; 2 uses
  store float %i.hu, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store double f0x3FEFF7CED916872B, ptr %i.d, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperGTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.186, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.hv = load i8, ptr %6, align 8, !tbaa !21, !range !22, !noundef !23
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.at, label %bb.ab

_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread: ; preds = %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit, %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread
  %.097225 = phi float [ %.198, %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread ], [ -1.000000e+00, %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit ] ; 2 uses
  %.099224 = phi i32 [ %i.iy, %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread ], [ 0, %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit ] ; 2 uses
  %.sroa.0.0223 = phi <2 x float> [ %.sroa.0.1, %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread ], [ zeroinitializer, %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit ]
  %.sroa.10.0222 = phi float [ %.sroa.10.1, %_ZN4pbrt6InsideERKNS_13DirectionConeENS_7Vector3IfEE.exit.thread ], [ 0.000000e+00, %_ZNK4pbrt13DirectionCone19ClosestVectorInConeENS_7Vector3IfEE.exit ]
  %i.hx = uitofp nneg i32 %.099224 to double
  %i.hy = fadd nnan double %i.hx, 5.000000e-01
  %i.hz = fdiv nnan double %i.hy, 1.000000e+03
  %i.ia = fmul nnan double %i.hz, 2.000000e+00
  %i.ib = fmul nnan double %i.ia, f0x400921FB60000000
  %i.ic = fptrunc double %i.ib to float           ; 2 uses
  %i.id = call noundef float @cosf(float noundef %i.ic) #25
  %i.ie = call noundef float @sinf(float noundef %i.ic) #25
  %i.if = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ie, i64 1
  %i.ih = fmul <2 x float> %i.da, %i.ig           ; 4 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0
  %i.ij = fmul float %i.cn, %i.ii
  %i.ik = fmul <2 x float> %i.dc, %i.ih
end_hunk_1
begin_hunk_2_@_ZN4pbrt20DifferenceOfProductsENS_8IntervalES0_S0_S0_:.lr.ph.i.i
bb.a:                                             ; preds = %_ZN4pbrt13NextFloatDownEf.exit
  %i.bw = fcmp oeq float %i.bv, 0.000000e+00
  %spec.store.select.i87 = select i1 %i.bw, float -0.000000e+00, float %i.bv ; 2 uses
  %i.bx = bitcast float %spec.store.select.i87 to i32
  %i.by = fcmp ogt float %spec.store.select.i87, 0.000000e+00
  %.0.v.i88 = select i1 %i.by, i32 -1, i32 1
  %.0.i89 = add i32 %.0.v.i88, %i.bx
  %i.bz = bitcast i32 %.0.i89 to float
  br label %_ZN4pbrt13NextFloatDownEf.exit91

_ZN4pbrt13NextFloatDownEf.exit91:                 ; preds = %.lr.ph.i.i, %_ZN4pbrt13NextFloatDownEf.exit, %bb.a
  %.09.i90 = phi float [ %i.bz, %bb.a ], [ -inf, %_ZN4pbrt13NextFloatDownEf.exit ], [ -inf, %.lr.ph.i.i ] ; 4 uses
  %or.cond.i92 = fcmp oeq float %i.br, +inf
  br i1 %or.cond.i92, label %_ZN4pbrt11NextFloatUpEf.exit101, label %_ZN4pbrt11NextFloatUpEf.exit

_ZN4pbrt11NextFloatUpEf.exit:                     ; preds = %_ZN4pbrt13NextFloatDownEf.exit91
  %i.ca = fcmp oeq float %i.br, 0.000000e+00
  %spec.store.select.i93 = select i1 %i.ca, float 0.000000e+00, float %i.br ; 2 uses
  %i.cb = bitcast float %spec.store.select.i93 to i32
  %i.cc = fcmp ult float %spec.store.select.i93, 0.000000e+00
  %.0.v.i94 = select i1 %i.cc, i32 -1, i32 1
  %.0.i95 = add i32 %.0.v.i94, %i.cb
  %i.cd = bitcast i32 %.0.i95 to float            ; 3 uses
  %or.cond.i96 = fcmp oeq float %i.cd, +inf
  br i1 %or.cond.i96, label %_ZN4pbrt11NextFloatUpEf.exit101, label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt11NextFloatUpEf.exit
  %i.ce = fcmp oeq float %i.cd, 0.000000e+00
  %spec.store.select.i97 = select i1 %i.ce, float 0.000000e+00, float %i.cd ; 2 uses
  %i.cf = bitcast float %spec.store.select.i97 to i32
  %i.cg = fcmp ult float %spec.store.select.i97, 0.000000e+00
  %.0.v.i98 = select i1 %i.cg, i32 -1, i32 1
  %.0.i99 = add i32 %.0.v.i98, %i.cf
  %i.ch = bitcast i32 %.0.i99 to float
  br label %_ZN4pbrt11NextFloatUpEf.exit101

_ZN4pbrt11NextFloatUpEf.exit101:                  ; preds = %_ZN4pbrt13NextFloatDownEf.exit91, %_ZN4pbrt11NextFloatUpEf.exit, %bb.b
  %.010.i100 = phi float [ %i.ch, %bb.b ], [ +inf, %_ZN4pbrt11NextFloatUpEf.exit ], [ +inf, %_ZN4pbrt13NextFloatDownEf.exit91 ] ; 4 uses
  %i.ci = fcmp olt float %.010.i100, %.09.i90
  %.sroa.speculated5.i = select i1 %i.ci, float %.010.i100, float %.09.i90
  %.sroa.0145.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated5.i, i64 0
  %i.cj = fcmp olt float %.09.i90, %.010.i100
  %.sroa.speculated.i = select i1 %i.cj, float %.010.i100, float %.09.i90
  %.sroa.0145.4.vec.insert = insertelement <2 x float> %.sroa.0145.0.vec.insert, float %.sroa.speculated.i, i64 1
  ret <2 x float> %.sroa.0145.4.vec.insert
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_vecmath_test.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !15
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !15
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !15
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !15
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  %i.c = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19Vector2_Basics_TestEE, i64 16), ptr %i.d, align 8, !tbaa !34
  %i.e = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef %i.c, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.d)
  store ptr %i.e, ptr @_ZN19Vector2_Basics_Test10test_info_E, align 8, !tbaa !472
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19Vector2_Basics_Test10test_info_E) ; 0 uses
  %i.g = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19Vector3_Basics_TestEE, i64 16), ptr %i.h, align 8, !tbaa !34
  %i.i = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.h)
  store ptr %i.i, ptr @_ZN19Vector3_Basics_Test10test_info_E, align 8, !tbaa !472
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19Vector3_Basics_Test10test_info_E) ; 0 uses
  %i.k = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Point2_InvertBilinear_TestEE, i64 16), ptr %i.l, align 8, !tbaa !34
  %i.m = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, ptr noundef %i.k, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.l)
  store ptr %i.m, ptr @_ZN26Point2_InvertBilinear_Test10test_info_E, align 8, !tbaa !472
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Point2_InvertBilinear_Test10test_info_E) ; 0 uses
  %i.o = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24Vector_AngleBetween_TestEE, i64 16), ptr %i.p, align 8, !tbaa !34
  %i.q = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.p)
  store ptr %i.q, ptr @_ZN24Vector_AngleBetween_Test10test_info_E, align 8, !tbaa !472
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24Vector_AngleBetween_Test10test_info_E) ; 0 uses
  %i.s = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI28Vector_CoordinateSystem_TestEE, i64 16), ptr %i.t, align 8, !tbaa !34
  %i.u = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, ptr noundef %i.s, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.t)
  store ptr %i.u, ptr @_ZN28Vector_CoordinateSystem_Test10test_info_E, align 8, !tbaa !472
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN28Vector_CoordinateSystem_Test10test_info_E) ; 0 uses
  %i.w = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Bounds2_IteratorBasic_TestEE, i64 16), ptr %i.x, align 8, !tbaa !34
  %i.y = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, ptr noundef %i.w, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.x)
  store ptr %i.y, ptr @_ZN26Bounds2_IteratorBasic_Test10test_info_E, align 8, !tbaa !472
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Bounds2_IteratorBasic_Test10test_info_E) ; 0 uses
  %i.aa = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31Bounds2_IteratorDegenerate_TestEE, i64 16), ptr %i.ab, align 8, !tbaa !34
  %i.ac = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef null, ptr noundef %i.aa, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ab)
  store ptr %i.ac, ptr @_ZN31Bounds2_IteratorDegenerate_Test10test_info_E, align 8, !tbaa !472
  %i.ad = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31Bounds2_IteratorDegenerate_Test10test_info_E) ; 0 uses
  %i.ae = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.af = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Bounds3_PointDistance_TestEE, i64 16), ptr %i.af, align 8, !tbaa !34
  %i.ag = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef null, ptr noundef %i.ae, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.af)
  store ptr %i.ag, ptr @_ZN26Bounds3_PointDistance_Test10test_info_E, align 8, !tbaa !472
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Bounds3_PointDistance_Test10test_info_E) ; 0 uses
  %i.ai = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.aj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI18Bounds2_Union_TestEE, i64 16), ptr %i.aj, align 8, !tbaa !34
  %i.ak = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, ptr noundef %i.ai, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.aj)
  store ptr %i.ak, ptr @_ZN18Bounds2_Union_Test10test_info_E, align 8, !tbaa !472
  %i.al = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN18Bounds2_Union_Test10test_info_E) ; 0 uses
  %i.am = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.an = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI18Bounds3_Union_TestEE, i64 16), ptr %i.an, align 8, !tbaa !34
  %i.ao = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, ptr noundef %i.am, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.an)
  store ptr %i.ao, ptr @_ZN18Bounds3_Union_Test10test_info_E, align 8, !tbaa !472
  %i.ap = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN18Bounds3_Union_Test10test_info_E) ; 0 uses
  %i.aq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ar = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22EqualArea_Randoms_TestEE, i64 16), ptr %i.ar, align 8, !tbaa !34
  %i.as = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr noundef null, ptr noundef null, ptr noundef %i.aq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ar)
  store ptr %i.as, ptr @_ZN22EqualArea_Randoms_Test10test_info_E, align 8, !tbaa !472
  %i.at = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22EqualArea_Randoms_Test10test_info_E) ; 0 uses
  %i.au = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.av = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25EqualArea_RemapEdges_TestEE, i64 16), ptr %i.av, align 8, !tbaa !34
  %i.aw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef null, ptr noundef %i.au, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.av)
  store ptr %i.aw, ptr @_ZN25EqualArea_RemapEdges_Test10test_info_E, align 8, !tbaa !472
  %i.ax = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25EqualArea_RemapEdges_Test10test_info_E) ; 0 uses
  %i.ay = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.az = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30DirectionCone_UnionBasics_TestEE, i64 16), ptr %i.az, align 8, !tbaa !34
  %i.ba = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, ptr noundef null, ptr noundef null, ptr noundef %i.ay, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.az)
  store ptr %i.ba, ptr @_ZN30DirectionCone_UnionBasics_Test10test_info_E, align 8, !tbaa !472
  %i.bb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30DirectionCone_UnionBasics_Test10test_info_E) ; 0 uses
  %i.bc = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31DirectionCone_UnionRandoms_TestEE, i64 16), ptr %i.bd, align 8, !tbaa !34
  %i.be = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef null, ptr noundef %i.bc, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bd)
  store ptr %i.be, ptr @_ZN31DirectionCone_UnionRandoms_Test10test_info_E, align 8, !tbaa !472
  %i.bf = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31DirectionCone_UnionRandoms_Test10test_info_E) ; 0 uses
  %i.bg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bh = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30DirectionCone_BoundBounds_TestEE, i64 16), ptr %i.bh, align 8, !tbaa !34
  %i.bi = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, ptr noundef %i.bg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bh)
  store ptr %i.bi, ptr @_ZN30DirectionCone_BoundBounds_Test10test_info_E, align 8, !tbaa !472
  %i.bj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30DirectionCone_BoundBounds_Test10test_info_E) ; 0 uses
  %i.bk = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bl = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31DirectionCone_VectorInCone_TestEE, i64 16), ptr %i.bl, align 8, !tbaa !34
  %i.bm = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef null, ptr noundef %i.bk, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bl)
  store ptr %i.bm, ptr @_ZN31DirectionCone_VectorInCone_Test10test_info_E, align 8, !tbaa !472
  %i.bn = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31DirectionCone_VectorInCone_Test10test_info_E) ; 0 uses
  %i.bo = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bp = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI33SphericalTriangleArea_Basics_TestEE, i64 16), ptr %i.bp, align 8, !tbaa !34
  %i.bq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef %i.bo, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bp)
  store ptr %i.bq, ptr @_ZN33SphericalTriangleArea_Basics_Test10test_info_E, align 8, !tbaa !472
  %i.br = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN33SphericalTriangleArea_Basics_Test10test_info_E) ; 0 uses
  %i.bs = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bt = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI41SphericalTriangleArea_RandomSampling_TestEE, i64 16), ptr %i.bt, align 8, !tbaa !34
  %i.bu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.197, ptr noundef null, ptr noundef null, ptr noundef %i.bs, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bt)
  store ptr %i.bu, ptr @_ZN41SphericalTriangleArea_RandomSampling_Test10test_info_E, align 8, !tbaa !472
  %i.bv = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN41SphericalTriangleArea_RandomSampling_Test10test_info_E) ; 0 uses
  %i.bw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25PointVector_Interval_TestEE, i64 16), ptr %i.bx, align 8, !tbaa !34
  %i.by = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, ptr noundef %i.bw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bx)
  store ptr %i.by, ptr @_ZN25PointVector_Interval_Test10test_info_E, align 8, !tbaa !472
  %i.bz = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25PointVector_Interval_Test10test_info_E) ; 0 uses
  %i.ca = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI34OctahedralVector_EncodeDecode_TestEE, i64 16), ptr %i.cb, align 8, !tbaa !34
  %i.cc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef null, ptr noundef %i.ca, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cb)
  store ptr %i.cc, ptr @_ZN34OctahedralVector_EncodeDecode_Test10test_info_E, align 8, !tbaa !472
  %i.cd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN34OctahedralVector_EncodeDecode_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.sqrt.f80(x86_fp80) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshr.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !"_ZNK4pbrt6Tuple2INS_6Point2EfE8ToStringB5cxx11Ev"}
!3 = distinct !{!3, !2, !"_ZNK4pbrt6Tuple2INS_6Point2EfE8ToStringB5cxx11Ev: argument 0"}
!4 = !{i32 1, !"long-double-type", !"x86_fp80"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"float", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"bool", !10, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!19 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !18, i64 0}
!20 = !{!"_ZTSN7testing15AssertionResultE", !16, i64 0, !19, i64 8}
!21 = !{!20, !16, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!19, !18, i64 0}
!25 = !{!"p1 omnipotent char", !17, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"long", !10, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !27, i64 8, !10, i64 16}
!29 = !{!28, !25, i64 0}
!30 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!31 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"vtable pointer", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!10, !10, i64 0}
!36 = !{!11, !11, i64 0}
!37 = !{!"_ZTSN4pbrt6Tuple2INS_7Vector2EfEE", !14, i64 0, !14, i64 4}
!38 = !{!37, !14, i64 0}
!39 = !{!37, !14, i64 4}
!40 = !{!25, !25, i64 0}
!41 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!42 = !{!41, !14, i64 8}
!43 = !{!41, !14, i64 0}
!44 = !{!41, !14, i64 4}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!26, !25, i64 0}
!47 = !{!28, !27, i64 8}
!48 = !{!"double", !10, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!27, !27, i64 0}
!51 = !{!"_ZTSN4pbrt7Vector3IfEE", !41, i64 0}
!52 = !{!"_ZTSN4pbrt13DirectionConeE", !51, i64 0, !14, i64 12}
!53 = !{!52, !14, i64 12}
!54 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!55 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!56 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!57 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !27, i64 8}
!58 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!59 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!60 = !{!"_ZTSSt6locale", !59, i64 0}
!61 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !54, i64 24, !55, i64 28, !55, i64 32, !56, i64 40, !57, i64 48, !10, i64 64, !11, i64 192, !58, i64 200, !60, i64 208}
!62 = !{!"_ZTSSi", !27, i64 8}
!63 = !{!62, !27, i64 8}
!64 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!65 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !60, i64 56}
!66 = !{!65, !25, i64 40}
!67 = !{!65, !25, i64 32}
!68 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !11, i64 0, !11, i64 4}
!69 = !{!68, !11, i64 0}
!70 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !14, i64 0, !14, i64 4}
!71 = !{!70, !14, i64 0}
!72 = !{!3}
!73 = !{!70, !14, i64 4}
!74 = !{!61, !55, i64 32}
!75 = !{!64, !14, i64 8}
!76 = !{!64, !14, i64 0}
!77 = !{!64, !14, i64 4}
!78 = distinct !{null, null}
!79 = distinct !{!79, !45}
!80 = distinct !{!80, !45}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45}
!83 = distinct !{!83, !"_ZN4pbrt12StringPrintfIJRA16_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!84 = distinct !{!84, !83, !"_ZN4pbrt12StringPrintfIJRA16_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!85 = !{!84}
!86 = distinct !{!86, !"_ZN4pbrt12StringPrintfIJRA45_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!87 = distinct !{!87, !86, !"_ZN4pbrt12StringPrintfIJRA45_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!88 = !{!87}
!89 = distinct !{!89, !"_ZN4pbrt12StringPrintfIJRA18_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!90 = distinct !{!90, !89, !"_ZN4pbrt12StringPrintfIJRA18_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, !45}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, !"_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!95 = distinct !{!95, !94, !"_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!96 = !{!95}
!97 = distinct !{!97, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!98 = distinct !{!98, !97, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!99 = distinct !{!99, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!100 = distinct !{!100, !99, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !45}
!103 = !{!98}
!104 = !{!100}
!105 = distinct !{!105, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!106 = distinct !{!106, !105, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!107 = distinct !{!107, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!108 = distinct !{!108, !107, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!109 = distinct !{!109, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!110 = distinct !{!110, !109, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!111 = !{!106}
!112 = !{!108}
!113 = !{!110}
!114 = !{!"_ZTSN4pbrt3RNGE", !27, i64 0, !27, i64 8}
!115 = !{!114, !27, i64 0}
!116 = !{!114, !27, i64 8}
!117 = !{!61, !27, i64 8}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !45}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !45}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE"}
!126 = distinct !{!126, !125, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0"}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE"}
!129 = distinct !{!129, !128, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0"}
!130 = distinct !{!130, !45}
!131 = !{!126}
!132 = !{!129}
!133 = distinct !{!133, !45}
!134 = !{!"_ZTSN4pbrt6Point3IfEE", !64, i64 0}
!135 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !27, i64 0}
!136 = !{!"_ZTSN4pbrt6MediumE", !135, i64 0}
!137 = !{!"_ZTSN4pbrt3RayE", !134, i64 0, !51, i64 12, !14, i64 24, !136, i64 32}
!138 = !{!137, !14, i64 24}
!139 = !{!135, !27, i64 0}
!140 = !{!"_ZTSN4pstd8optionalIN4pbrt20TriangleIntersectionEEE", !10, i64 0, !16, i64 16}
!141 = !{!140, !16, i64 16}
!142 = distinct !{!142, !"_ZN4pbrtmlINS_7Vector3ENS_8IntervalES2_EET_IDTmltlT0_EtlT1_EEES5_NS_6Tuple3IS3_S4_EE"}
!143 = distinct !{!143, !142, !"_ZN4pbrtmlINS_7Vector3ENS_8IntervalES2_EET_IDTmltlT0_EtlT1_EEES5_NS_6Tuple3IS3_S4_EE: argument 0"}
!144 = distinct !{!144, !"_ZNK4pbrt6Tuple3INS_7Vector3ENS_8IntervalEEmlIS2_EENS1_IDTmltlS2_EtlT_EEEES5_"}
!145 = distinct !{!145, !144, !"_ZNK4pbrt6Tuple3INS_7Vector3ENS_8IntervalEEmlIS2_EENS1_IDTmltlS2_EtlT_EEEES5_: argument 0"}
!146 = distinct !{!146, !"_ZNK4pbrt6Point3INS_8IntervalEEmiIS1_EENS_7Vector3IDTmitlS1_EtlT_EEEENS0_IS5_EE"}
!147 = distinct !{!147, !146, !"_ZNK4pbrt6Point3INS_8IntervalEEmiIS1_EENS_7Vector3IDTmitlS1_EtlT_EEEENS0_IS5_EE: argument 0"}
!148 = distinct !{!148, !"_ZN4pbrt5CrossINS_8IntervalEEENS_7Vector3IT_EES4_S4_"}
!149 = distinct !{!149, !148, !"_ZN4pbrt5CrossINS_8IntervalEEENS_7Vector3IT_EES4_S4_: argument 0"}
!150 = !{!143}
!151 = !{!145, !143}
!152 = !{!147}
!153 = !{!149}
end_hunk_2
