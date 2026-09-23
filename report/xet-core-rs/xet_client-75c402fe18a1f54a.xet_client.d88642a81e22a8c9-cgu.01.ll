Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.01?download=true
inline.NumInlined: 2281
inline.NumDeleted: 732
begin_hunk_0_@_RNCNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB7_16ConnectionPermit17report_completion0Bd_:bb.a
  store ptr %i.hy, ptr %i.aa, align 8, !noalias !3289
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ic = load i8, ptr %i.ib, align 8, !range !13, !noalias !3289, !noundef !11
  %cond.i196.i = icmp eq i8 %i.ic, 3
  br i1 %cond.i196.i, label %bb.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ie = load i8, ptr %i.id, align 8, !range !13, !noalias !3289, !noundef !11
  %cond.i.i197.i = icmp eq i8 %i.ie, 3
  br i1 %cond.i.i197.i, label %bb.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ig = load i8, ptr %i.if, align 8, !range !14, !noalias !3289, !noundef !11
  %cond.i.i.i198.i = icmp eq i8 %i.ig, 4
  br i1 %cond.i.i.i198.i, label %bb.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ih)
          to label %bb.bn unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val2.i.i.i.i199.i = load ptr, ptr %i.ij, align 8, !noalias !3289, !align !15, !noundef !11 ; 2 uses
  %i.ik = icmp eq ptr %.val2.i.i.i.i199.i, null
  br i1 %i.ik, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEEB1w_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.il = getelementptr i8, ptr %0, i64 232
  %.val3.i.i.i.i200.i = load ptr, ptr %i.il, align 8, !noalias !3289
  %i.im = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i199.i, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !nonnull !11, !noundef !11
  invoke void %i.in(ptr noundef %.val3.i.i.i.i200.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEEB1w_.exit.i unwind label %bb.bp, !inline_history !0

bb.bn:                                            ; preds = %bb.bk
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val.i.i.i.i202.i = load ptr, ptr %i.io, align 8, !noalias !3289, !align !15, !noundef !11 ; 2 uses
  %i.ip = icmp eq ptr %.val.i.i.i.i202.i, null
  br i1 %i.ip, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iq = getelementptr i8, ptr %0, i64 232
  %.val1.i.i.i.i203.i = load ptr, ptr %i.iq, align 8, !noalias !3289
  %i.ir = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i202.i, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !11, !noundef !11
  invoke void %i.is(ptr noundef %.val1.i.i.i.i203.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i unwind label %bb.bq, !inline_history !29

bb.bp:                                            ; preds = %bb.bm
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEEB1w_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bj, %bb.bi, %bb.bh
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.iw = load i64, ptr %i.iv, align 8, !range !10, !noalias !3289, !noundef !11
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.iy = trunc nuw i64 %i.iw to i1
  br i1 %i.iy, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.ja = load i8, ptr %i.iz, align 4, !range !23, !noalias !3289, !noundef !11
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.bv, label %bb.bu

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_.exit.i
  %i.jc = load i64, ptr %i.ix, align 8, !noalias !3289, !noundef !11 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 144
  %i.jg = atomicrmw umax ptr %i.jf, i64 %i.jc acq_rel, align 8
  %i.jh = call noundef i64 @llvm.usub.sat.i64(i64 %i.jc, i64 %i.jg)
  %.val150.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.ji = getelementptr inbounds nuw i8, ptr %.val150.i, i64 96 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !noundef !11
  %i.jk = add i64 %i.jj, %i.jh
  store i64 %i.jk, ptr %i.ji, align 8
  br label %bb.br

bb.bt:                                            ; preds = %bb.cm, %bb.ch, %bb.cf, %bb.cc, %bb.bw
  %.pn92.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.la, %bb.cf ], [ %i.jt, %bb.bw ], [ %.pn92.pn.pn.pn.pn.pn.i, %bb.cm ], [ %i.le, %bb.ch ], [ %i.kr, %bb.cc ]
  invoke void @_RNvXsd_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB5_10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEEB1w_.exit.i unwind label %bb.bc

bb.bu:                                            ; preds = %bb.br
  %.val149.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.jl = getelementptr inbounds nuw i8, ptr %.val149.i, i64 104 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !noundef !11
  %i.jn = add i64 %i.jm, 1
  store i64 %i.jn, ptr %i.jl, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 13 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %.val158.i = load ptr, ptr %i.jq, align 8, !nonnull !11, !noundef !11
  %i.jr = getelementptr inbounds nuw i8, ptr %.val158.i, i64 16
  %i.js = invoke noundef i64 @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore14active_permits(ptr noundef nonnull align 8 %i.jr)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bx:                                            ; preds = %bb.bv
  %i.ju = uitofp i64 %i.js to double
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 128
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !11
  %i.jz = uitofp i64 %i.jy to double
  %i.ka = fadd nnan double %i.ju, %i.jz
  %i.kb = fmul nnan double %i.ka, 5.000000e-01    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 147 ; 4 uses
  %i.kd = load i8, ptr %i.kc, align 1, !range !23, !noalias !3289, !noundef !11
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kg = load i8, ptr %i.kf, align 8, !range !23, !noalias !3289, !noundef !11
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %i.ki = load i64, ptr %i.iv, align 8, !range !10, !noalias !3289, !noundef !11
  %i.kj = trunc nuw i64 %i.ki to i1
  br i1 %i.kj, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.kk = load i64, ptr %i.jw, align 8, !range !10, !alias.scope !3297, !noundef !11
  %i.kl = trunc nuw i64 %i.kk to i1               ; 2 uses
  br i1 %i.kl, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ko = load i64, ptr %i.ix, align 8, !noalias !3289, !noundef !11
  %i.kp = load double, ptr %i.kn, align 8, !noalias !3298, !noundef !11
  %i.kq = invoke noundef double @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_predictionNtB2_12RTTPredictor12rtt_quantile(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.km, double noundef %i.kp, i64 noundef %i.ko, double noundef %i.kb)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.3.0.i.i = phi double [ undef, %bb.ca ], [ %i.kq, %bb.cb ]
  %..i211.i = select i1 %i.kl, double %.sroa.3.0.i.i, double 5.000000e-01
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %.val131.i = load ptr, ptr %i.kt, align 8, !nonnull !11, !noundef !11
  %i.ku = getelementptr inbounds nuw i8, ptr %.val131.i, i64 704
  %i.kv = load double, ptr %i.ku, align 8, !noundef !11
  %i.kw = fcmp olt double %..i211.i, %i.kv
  br i1 %i.kw, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bz, %bb.by, %bb.bx
  %.val148.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.kx = getelementptr inbounds nuw i8, ptr %.val148.i, i64 40
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kz = load double, ptr %i.ky, align 8, !noalias !3289, !noundef !11
  invoke void @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState14update_success(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.kx, i1 noundef zeroext false, double noundef %i.kz)
          to label %bb.ci unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.cg:                                            ; preds = %bb.cd
  %.val147.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.lb = getelementptr inbounds nuw i8, ptr %.val147.i, i64 40
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ld = load double, ptr %i.lc, align 8, !noalias !3289, !noundef !11
  invoke void @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState14update_success(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.lb, i1 noundef zeroext true, double noundef %i.ld)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ci:                                            ; preds = %bb.cg, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3289
  %.val171.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11 ; 9 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.val171.i, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %i.lg = getelementptr inbounds nuw i8, ptr %.val171.i, i64 120
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !3300, !noalias !3299, !nonnull !11, !noundef !11
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 712
  %i.lj = getelementptr inbounds nuw i8, ptr %.val171.i, i64 128
  %i.lk = load double, ptr %i.lj, align 8, !alias.scope !3300, !noalias !3299, !noundef !11 ; 2 uses
  %i.ll = fcmp oeq double %i.lk, 0.000000e+00
  %i.lm = getelementptr inbounds nuw i8, ptr %.val171.i, i64 136
  %i.ln = load double, ptr %i.lm, align 8, !alias.scope !3300, !noalias !3299
  %i.lo = fdiv double %i.ln, %i.lk
  %.sroa.0.0.i212.i = select i1 %i.ll, double 0.000000e+00, double %i.lo ; 2 uses
  %i.lp = fcmp olt double %.sroa.0.0.i212.i, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.lp, double 0.000000e+00, double %.sroa.0.0.i212.i ; 2 uses
  %i.lq = fcmp ogt double %spec.store.select.i.i.i, 1.000000e+00
  %spec.store.select1.i.i.i = select i1 %i.lq, double 1.000000e+00, double %spec.store.select.i.i.i ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store double %spec.store.select1.i.i.i, ptr %i.lr, align 16, !alias.scope !3299, !noalias !3301
  %i.ls = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.lt = load <2 x double>, ptr %i.li, align 8, !noalias !3302 ; 3 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  %i.lv = fcmp ogt double %spec.store.select1.i.i.i, %i.lu
  %i.lw = extractelement <2 x double> %i.lt, i64 1
  %i.lx = fcmp olt double %spec.store.select1.i.i.i, %i.lw
  %..i213.i = sext i1 %i.lx to i8
  %.sroa.01.0.i.i = select i1 %i.lv, i8 1, i8 %..i213.i
  store <2 x double> %i.lt, ptr %i.z, align 16, !alias.scope !3299, !noalias !3301
  %i.ly = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.ly, align 8, !alias.scope !3299, !noalias !3301
  %i.lz = load i8, ptr %i.kc, align 1, !range !23, !noalias !3289, !noundef !11
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %bb.ck, %bb.ci
  %i.mb = load i8, ptr %i.iz, align 4, !range !23, !noalias !3289, !noundef !11
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.cq, label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  %i.md = load i64, ptr %i.iv, align 8, !range !10, !noalias !3289, !noundef !11
  %i.me = trunc nuw i64 %i.md to i1
  br i1 %i.me, label %bb.cl, label %bb.cj

bb.cl:                                            ; preds = %bb.ck
  %i.mf = load i64, ptr %i.ix, align 8, !noalias !3289, !noundef !11
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !3289, !noundef !11
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.mj = load i32, ptr %i.mi, align 8, !range !32, !noalias !3289, !noundef !11
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ml = load double, ptr %i.mk, align 8, !noalias !3289, !noundef !11
  %i.mm = call nsz double @llvm.maximumnum.f64(double %i.ml, double 0.000000e+00) ; 3 uses
  %i.mn = uitofp i64 %i.mf to double
  %i.mo = fmul nnan double %i.mn, f0x3EB0000000000000
  %i.mp = call nnan nsz double @llvm.maximumnum.f64(double %i.kb, double 1.000000e+00)
  %i.mq = fmul double %i.mp, %i.mo                ; 2 uses
  %i.mr = uitofp i64 %i.mh to double
  %i.ms = uitofp nneg i32 %i.mj to double
  %i.mt = fdiv double %i.ms, 1.000000e+09
  %i.mu = fadd double %i.mt, %i.mr
  %i.mv = call nsz double @llvm.maximumnum.f64(double %i.mu, double 1.000000e-09) ; 3 uses
  %i.mw = load double, ptr %i.lf, align 8, !alias.scope !3303, !noundef !11 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.val171.i, i64 48 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.val171.i, i64 80 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !alias.scope !3303, !noundef !11
  %i.na = fmul double %i.mw, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %.val171.i, i64 88 ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !alias.scope !3303, !noundef !11
  %i.nd = fmul double %i.mw, %i.nc
  %i.ne = fmul double %i.mq, %i.mm                ; 3 uses
  %i.nf = fmul double %i.mm, %i.mv                ; 2 uses
  %i.ng = fmul double %i.mq, %i.ne
  %2 = load <4 x double>, ptr %i.mx, align 8, !alias.scope !3303
  %3 = insertelement <4 x double> poison, double %i.mw, i64 0
  %4 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> zeroinitializer
  %5 = fmul <4 x double> %4, %2
  %6 = insertelement <4 x double> poison, double %i.mm, i64 0
  %7 = insertelement <4 x double> %6, double %i.ne, i64 1
  %8 = insertelement <4 x double> %7, double %i.nf, i64 2
  %9 = insertelement <4 x double> %8, double %i.ng, i64 3
  %10 = fadd <4 x double> %9, %5
  store <4 x double> %10, ptr %i.mx, align 8, !alias.scope !3303
  %i.nh = fmul double %i.ne, %i.mv
  %i.ni = fadd double %i.nh, %i.na
  store double %i.ni, ptr %i.my, align 8, !alias.scope !3303
  %i.nj = fmul double %i.mv, %i.nf
  %i.nk = fadd double %i.nj, %i.nd
  store double %i.nk, ptr %i.nb, align 8, !alias.scope !3303
  br label %bb.cj

bb.cm:                                            ; preds = %bb.ea, %bb.cr, %bb.cp
  %.pn92.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn.i, %bb.ea ], [ %i.nr, %bb.cr ], [ %i.no, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3289
  br label %bb.bt

bb.cn:                                            ; preds = %bb.cj
  %i.nl = load i64, ptr %i.iv, align 8, !range !10, !noalias !3289, !noundef !11
  %i.nm = trunc nuw i64 %i.nl to i1
  br i1 %i.nm, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.nn = load i64, ptr %i.ix, align 8, !noalias !3289, !noundef !11
  invoke void @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState20update_size_tracking(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.lf, i64 noundef %i.nn)
          to label %._crit_edge.i unwind label %bb.cp

._crit_edge.i:                                    ; preds = %bb.co
  %.val170.pre.i = load ptr, ptr %i.aa, align 8, !noalias !3289
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cq:                                            ; preds = %._crit_edge.i, %bb.cn, %bb.cj
  %.val170.i = phi ptr [ %.val170.pre.i, %._crit_edge.i ], [ %.val171.i, %bb.cj ], [ %.val171.i, %bb.cn ]
  %i.np = getelementptr inbounds nuw i8, ptr %.val170.i, i64 40
  %i.nq = invoke { i64, i64 } @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState37estimated_reference_transmission_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.np)
          to label %bb.cs unwind label %bb.cr     ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cs:                                            ; preds = %bb.cq
  %i.ns = extractvalue { i64, i64 } %i.nq, 0
  %i.nt = extractvalue { i64, i64 } %i.nq, 1
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11 ; 2 uses
  %.val130.i = load ptr, ptr %i.nv, align 8, !nonnull !11, !noundef !11
  %i.nw = getelementptr inbounds nuw i8, ptr %.val130.i, i64 728
  %i.nx = load i64, ptr %i.nw, align 8, !noundef !11
  %i.ny = trunc nuw i64 %i.ns to i1
  %..i214.i = select i1 %i.ny, i64 %i.nt, i64 %i.nx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3289
  %.val129.i = load ptr, ptr %i.nv, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.val129.i, i64 608
  %.val134.i = load i64, ptr %i.nz, align 8, !noundef !11
  %i.oa = getelementptr i8, ptr %.val129.i, i64 616
  %.val135.i = load i32, ptr %i.oa, align 8, !range !32, !noundef !11
  %i.ob = uitofp i64 %.val134.i to double
  %i.oc = uitofp nneg i32 %.val135.i to double
  %i.od = fdiv double %i.oc, 1.000000e+09
  %i.oe = fadd double %i.od, %i.ob                ; 2 uses
  store double %i.oe, ptr %i.y, align 8, !noalias !3289
  %i.of = load i8, ptr %i.ly, align 8, !noalias !3289, !noundef !11 ; 2 uses
  %i.og = icmp eq i8 %i.of, 1
  %.pre370.i = load ptr, ptr %i.jo, align 8, !noalias !3289 ; 5 uses
  br i1 %i.og, label %bb.ct, label %bb.eb

bb.ct:                                            ; preds = %bb.cs
  %.val169.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.val169.i, i64 96
  %i.oi = load i64, ptr %i.oh, align 8, !noundef !11
  %i.oj = getelementptr inbounds nuw i8, ptr %.pre370.i, i64 344
  %i.ok = load i64, ptr %i.oj, align 8, !noundef !11
  %.not39.i = icmp ult i64 %i.oi, %i.ok
  br i1 %.not39.i, label %bb.eb, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ol = getelementptr inbounds nuw i8, ptr %.val169.i, i64 104
  %i.om = load i64, ptr %i.ol, align 8, !noundef !11
  %i.on = getelementptr inbounds nuw i8, ptr %.pre370.i, i64 352
  %i.oo = load i64, ptr %i.on, align 8, !noundef !11
  %.not40.i = icmp ult i64 %i.om, %i.oo
  br i1 %.not40.i, label %bb.eb, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.op = getelementptr inbounds nuw i8, ptr %.val169.i, i64 248
  %i.oq = invoke { i64, i32 } @_RNvMNtNtCsUrhh0HcRih_5tokio4time7instantNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.op)
          to label %bb.cx unwind label %bb.cw     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.cx:                                            ; preds = %bb.cv
  %i.os = extractvalue { i64, i32 } %i.oq, 0      ; 2 uses
  %i.ot = extractvalue { i64, i32 } %i.oq, 1
  %i.ou = load ptr, ptr %i.jo, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11 ; 4 uses
  %.val182.i = load i64, ptr %i.ou, align 8, !noundef !11 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %.val183.i = load i32, ptr %i.ov, align 8
  %i.ow = icmp eq i64 %i.os, %.val182.i
  %i.ox = icmp ugt i32 %i.ot, %.val183.i
  %i.oy = icmp ugt i64 %i.os, %.val182.i
  %i.oz = select i1 %i.ow, i1 %i.ox, i1 %i.oy
  br i1 %i.oz, label %bb.cy, label %bb.eb

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3289
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %.val157.i = load ptr, ptr %i.pa, align 8, !nonnull !11, !noundef !11
  %i.pb = getelementptr inbounds nuw i8, ptr %.val157.i, i64 16
  %i.pc = invoke noundef i64 @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13total_permits(ptr noundef nonnull align 8 %i.pb)
          to label %bb.da unwind label %bb.cz     ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.da:                                            ; preds = %bb.cy
  store i64 %i.pc, ptr %i.x, align 8, !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3289
  %.val165.i = load ptr, ptr %i.aa, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.pe = getelementptr inbounds nuw i8, ptr %.val165.i, i64 40
  %i.pf = uitofp i64 %i.pc to double
  %i.pg = fadd double %i.pf, 1.000000e+00
  %i.ph = invoke { i64, double } @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_predictionNtB2_12RTTPredictor13predicted_rtt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.pe, i64 noundef %..i214.i, double noundef %i.pg)
          to label %bb.dc unwind label %bb.db     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dc:                                            ; preds = %bb.da
  %i.pj = extractvalue { i64, double } %i.ph, 0
  %i.pk = extractvalue { i64, double } %i.ph, 1
  %i.pl = trunc nuw i64 %i.pj to i1
  %..i215.i = select i1 %i.pl, double %i.pk, double +inf ; 2 uses
  store double %..i215.i, ptr %i.w, align 8, !noalias !3289
  %i.pm = fcmp olt double %..i215.i, %i.oe
  br i1 %i.pm, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.critedge105.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3289
  %.pre369.i = load ptr, ptr %i.jo, align 8, !noalias !3289
  br label %bb.eb

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3289
  %i.pn = load ptr, ptr %i.jo, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  invoke void @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore23increment_total_permits(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.po, i64 noundef 1)
          to label %bb.dg unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  %i.pq = load ptr, ptr %i.v, align 8, !alias.scope !3304, !noalias !3289, !noundef !11
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.dk unwind label %bb.dj

bb.di:                                            ; preds = %bb.dj, %bb.df
  %.pn43.i = phi { ptr, i32 } [ %i.ps, %bb.dj ], [ %i.pp, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3289
  br label %bb.dy

bb.dj:                                            ; preds = %bb.dh
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dk:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3289
  %i.pt = load ptr, ptr %i.jo, align 8, !noalias !3289, !nonnull !11, !align !15, !noundef !11
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %.val156.i = load ptr, ptr %i.pu, align 8, !nonnull !11, !noundef !11
  %i.pv = getelementptr inbounds nuw i8, ptr %.val156.i, i64 16
  %i.pw = invoke noundef i64 @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13total_permits(ptr noundef nonnull align 8 %i.pv)
          to label %bb.dm unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dm:                                            ; preds = %bb.dk
  store i64 %i.pw, ptr %i.u, align 8, !noalias !3289
  %i.py = invoke { i64, i32 } @_RNvMNtNtCsUrhh0HcRih_5tokio4time7instantNtB2_7Instant3now()
          to label %.noexc120.i unwind label %bb.dn ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %i.pz = landingpad { ptr, i32 }
          cleanup
end_hunk_0
