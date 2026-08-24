Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/kvm?download=true
inline.NumInlined: 610
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@kvm_arch_init_vcpu:bb.a
  %indvars.iv.next.i139.i = add nuw nsw i64 %indvars.iv.i130.i, 1 ; 2 uses
  %exitcond.not.i140.i = icmp eq i64 %indvars.iv.next.i139.i, 21
  br i1 %exitcond.not.i140.i, label %hv_build_cpuid_leaf.exit145.i, label %bb.am, !llvm.loop !32

hv_build_cpuid_leaf.exit145.i:                    ; preds = %.loopexit.i137.i
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 140 ; 3 uses
  store i32 %.3.i138.i, ptr %i.fe, align 4
  %i.ff = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29 ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  store i32 0, ptr %i.fg, align 4
  %i.fh = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29
  %i.fi = getelementptr i8, ptr %i.fh, i64 32032
  %.val26.i163.i = load i64, ptr %i.fi, align 16
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i171.i, %hv_build_cpuid_leaf.exit145.i
  %indvars.iv.i164.i = phi i64 [ 0, %hv_build_cpuid_leaf.exit145.i ], [ %indvars.iv.next.i173.i, %.loopexit.i171.i ] ; 4 uses
  %.02231.i165.i = phi i32 [ 0, %hv_build_cpuid_leaf.exit145.i ], [ %.3.i172.i, %.loopexit.i171.i ] ; 3 uses
  %i.fj = shl nuw i64 1, %indvars.iv.i164.i       ; 2 uses
  %i.fk = and i64 %i.fj, %.val26.i163.i
  %.not28.i166.i = icmp eq i64 %i.fk, 0
  br i1 %.not28.i166.i, label %.loopexit.i171.i, label %.preheader.i167.i

.preheader.i167.i:                                ; preds = %bb.ao
  %i.fl = getelementptr inbounds nuw [48 x i8], ptr @kvm_hyperv_properties, i64 %indvars.iv.i164.i ; 2 uses
  %i.fm = and i64 %i.fj, 868360
  %.not25.i178.not.i = icmp eq i64 %i.fm, 0
  br i1 %.not25.i178.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.preheader.i167.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load i32, ptr %i.fn, align 16
  %i.fp = or i32 %i.fo, %.02231.i165.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.preheader.i167.i
  %.2.i169.i = phi i32 [ %.02231.i165.i, %.preheader.i167.i ], [ %i.fp, %bb.ap ] ; 2 uses
  %.not.1.i170.i = icmp eq i64 %indvars.iv.i164.i, 9
  br i1 %.not.1.i170.i, label %bb.ar, label %.loopexit.i171.i

bb.ar:                                            ; preds = %bb.aq
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = or i32 %i.fr, %.2.i169.i
  br label %.loopexit.i171.i

.loopexit.i171.i:                                 ; preds = %bb.ar, %bb.aq, %bb.ao
  %.3.i172.i = phi i32 [ %.02231.i165.i, %bb.ao ], [ %.2.i169.i, %bb.aq ], [ %i.fs, %bb.ar ] ; 3 uses
  %indvars.iv.next.i173.i = add nuw nsw i64 %indvars.iv.i164.i, 1 ; 2 uses
  %exitcond.not.i174.i = icmp eq i64 %indvars.iv.next.i173.i, 21
  br i1 %exitcond.not.i174.i, label %hv_build_cpuid_leaf.exit179.i, label %bb.ao, !llvm.loop !32

hv_build_cpuid_leaf.exit179.i:                    ; preds = %.loopexit.i171.i
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 152 ; 2 uses
  store i32 %.3.i172.i, ptr %i.ft, align 4
  %i.fu = load i32, ptr %i.fe, align 4
  %i.fv = or i32 %i.fu, 32
  store i32 %i.fv, ptr %i.fe, align 4
  %.val127.i = load i64, ptr %i.dh, align 16
  %i.fw = and i64 %.val127.i, 128
  %.not199.i = icmp eq i64 %i.fw, 0
  br i1 %.not199.i, label %.loopexit.i188.i.10, label %bb.as

bb.as:                                            ; preds = %hv_build_cpuid_leaf.exit179.i
  %i.fx = load i32, ptr %i.fg, align 4
  %i.fy = or i32 %i.fx, 48
  store i32 %i.fy, ptr %i.fg, align 4
  br label %.loopexit.i188.i.10

.loopexit.i188.i.10:                              ; preds = %bb.as, %hv_build_cpuid_leaf.exit179.i
  %i.fz = or i32 %.3.i172.i, 8
  store i32 %i.fz, ptr %i.ft, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 168
  store i32 1073741828, ptr %i.ga, align 4
  %i.gb = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29
  %i.gc = getelementptr i8, ptr %i.gb, i64 32032
  %.val26.i180.i = load i64, ptr %i.gc, align 16  ; 5 uses
  %i.gd = trunc i64 %.val26.i180.i to i32
  %i.ge = shl i32 %i.gd, 5
  %spec.select = and i32 %i.ge, 32                ; 2 uses
  %i.gf = and i64 %.val26.i180.i, 2048
  %.not28.i183.i.11 = icmp eq i64 %i.gf, 0
  %i.gg = or disjoint i32 %spec.select, 2052
  %.3.i189.i.11 = select i1 %.not28.i183.i.11, i32 %spec.select, i32 %i.gg
  %i.gh = trunc i64 %.val26.i180.i to i32
  %i.gi = shl i32 %i.gh, 2
  %i.gj = and i32 %i.gi, 16384
  %.3.i189.i.12 = or disjoint i32 %.3.i189.i.11, %i.gj ; 2 uses
  %i.gk = and i64 %.val26.i180.i, 8192
  %.not28.i183.i.13 = icmp eq i64 %i.gk, 0
  %i.gl = or i32 %.3.i189.i.12, 3072
  %.3.i189.i.13 = select i1 %.not28.i183.i.13, i32 %.3.i189.i.12, i32 %i.gl
  %i.gm = trunc i64 %.val26.i180.i to i32
  %i.gn = lshr i32 %i.gm, 6
  %i.go = and i32 %i.gn, 512
  %.3.i189.i.15 = or i32 %.3.i189.i.13, %i.go     ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 180 ; 4 uses
  store i32 %.3.i189.i.15, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cx, i64 32016
  %i.gr = load i32, ptr %i.gq, align 16
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 184
  store i32 %i.gr, ptr %i.gs, align 4
  %.val126.i = load i64, ptr %i.dh, align 16
  %i.gt = and i64 %.val126.i, 32770
  %or.cond.not.i = icmp eq i64 %i.gt, 2
  br i1 %or.cond.not.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.i188.i.10
  %i.gu = or i32 %.3.i189.i.15, 8                 ; 2 uses
  store i32 %i.gu, ptr %i.gp, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit.i188.i.10
  %i.gv = phi i32 [ %i.gu, %bb.at ], [ %.3.i189.i.15, %.loopexit.i188.i.10 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cx, i64 32044
  %i.gx = load i32, ptr %i.gw, align 4
  switch i32 %i.gx, label %bb.ax [
    i32 1, label %bb.av
    i32 0, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.gy = or i32 %i.gv, 262144
  br label %.sink.split.i

bb.aw:                                            ; preds = %bb.au
  %i.gz = call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741828, i32 noundef 0)
  %i.ha = and i32 %i.gz, 262144
  %i.hb = load i32, ptr %i.gp, align 4
  %i.hc = or i32 %i.hb, %i.ha
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aw, %bb.av
  %.sink.i = phi i32 [ %i.hc, %bb.aw ], [ %i.gy, %bb.av ]
  store i32 %.sink.i, ptr %i.gp, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split.i, %bb.au
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 208
  store i32 1073741829, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.cx, i64 33048
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 220
  store i32 %i.hf, ptr %i.hg, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cx, i64 32076
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.hj = load <2 x i32>, ptr %i.hh, align 4
  store <2 x i32> %i.hj, ptr %i.hi, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cx, i64 32084
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 232
  store i32 %i.hl, ptr %i.hm, align 4
  br i1 %.not.i227, label %bb.ay, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ax
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 248
  store i32 1073741830, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 288
  store i32 1073741831, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 328
  store i32 1073741832, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 368
  store i32 1073741833, ptr %i.hq, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 408
  store i32 1073741834, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 420
  store i32 %.4.i.i, ptr %i.hs, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader.preheader.i, %bb.ax
  %.1.i = phi i32 [ 11, %.preheader.preheader.i ], [ 6, %bb.ax ] ; 3 uses
  %.val124.i = load i64, ptr %i.dh, align 16
  %i.ht = and i64 %.val124.i, 65536
  %.not200.i = icmp eq i64 %i.ht, 0
  br i1 %.not200.i, label %hyperv_fill_cpuids.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = zext nneg i32 %.1.i to i64
  %i.hv = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.hu ; 6 uses
  store i32 1073741952, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store <4 x i32> <i32 0, i32 1919117645, i32 1718580079, i32 1398153332>, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store i32 1073741953, ptr %i.hx, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 52
  store <4 x i32> <i32 824398678, i32 0, i32 0, i32 0>, ptr %i.hy, align 4
  %i.hz = add nuw nsw i32 %.1.i, 3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  store i32 1073741954, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 92
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %i.ib, align 4
  br label %hyperv_fill_cpuids.exit

hyperv_fill_cpuids.exit:                          ; preds = %bb.ay, %bb.az
  %.2.i = phi i32 [ %i.hz, %bb.az ], [ %.1.i, %bb.ay ]
  store i1 true, ptr @has_msr_hv_hypercall, align 1
  br label %hyperv_enabled.exit.thread263

hyperv_enabled.exit.thread263:                    ; preds = %bb.h, %hyperv_fill_cpuids.exit, %hyperv_enabled.exit
  %.0189 = phi i32 [ 1073742080, %hyperv_fill_cpuids.exit ], [ 1073741824, %hyperv_enabled.exit ], [ 1073741824, %bb.h ] ; 10 uses
  %.0186 = phi i32 [ %.2.i, %hyperv_fill_cpuids.exit ], [ 0, %hyperv_enabled.exit ], [ 0, %bb.h ] ; 7 uses
  %i.ic = load ptr, ptr %i.r, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 640 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8
  %.not212 = icmp eq i32 %i.ie, 0
  br i1 %.not212, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %hyperv_enabled.exit.thread263
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ig = zext nneg i32 %.0186 to i64
  %i.ih = getelementptr inbounds nuw [40 x i8], ptr %i.if, i64 %i.ig ; 5 uses
  store i32 %.0189, ptr %i.ih, align 4
  %i.ii = or disjoint i32 %.0189, 3               ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 12 ; 2 uses
  store i32 %i.ii, ptr %i.ij, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i32 1450075480, ptr %i.ik, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  store i32 1700285773, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  store i32 1296914030, ptr %i.im, align 4
  %11 = zext nneg i32 %.0186 to i64
  %12 = getelementptr inbounds nuw [40 x i8], ptr %i.if, i64 %11 ; 20 uses
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.io = or disjoint i32 %.0189, 1
  store i32 %i.io, ptr %i.in, align 4
  %i.ip = load i32, ptr %i.id, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 52
  store i32 %i.ip, ptr %i.iq, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 0, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 60
  store i32 0, ptr %i.is, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 0, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.iv = or disjoint i32 %.0189, 2
  store i32 %i.iv, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 92
  store i32 1, ptr %i.iw, align 4
  %i.ix = load ptr, ptr @kvm_state, align 8
  %i.iy = call i32 @kvm_check_extension(ptr noundef %i.ix, i32 noundef 44) #29
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %bb.bb, label %hyperv_enabled.exit231.thread266

bb.bb:                                            ; preds = %bb.ba
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 32016
  %i.jb = load i32, ptr %i.ja, align 16
  %.not.i229 = icmp eq i32 %i.jb, -1
  br i1 %.not.i229, label %bb.bc, label %hyperv_enabled.exit231.thread

bb.bc:                                            ; preds = %bb.bb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 32032
  %i.jd = load i64, ptr %i.jc, align 16
  %.not3.i230 = icmp eq i64 %i.jd, 0
  br i1 %.not3.i230, label %hyperv_enabled.exit231, label %hyperv_enabled.exit231.thread

hyperv_enabled.exit231:                           ; preds = %bb.bc
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 32040
  %i.jf = load i8, ptr %i.je, align 8, !range !7, !noundef !8
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %hyperv_enabled.exit231.thread, label %hyperv_enabled.exit231.thread266

hyperv_enabled.exit231.thread:                    ; preds = %bb.bb, %bb.bc, %hyperv_enabled.exit231
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 96
  store i32 1073742336, ptr %i.jh, align 4
  %i.ji = load ptr, ptr %i.r, align 8
  %i.jj = call i32 @kvm_xen_init(ptr noundef %i.ji, i32 noundef 1073742336) #29 ; 0 uses
  br label %bb.bd

hyperv_enabled.exit231.thread266:                 ; preds = %bb.ba, %hyperv_enabled.exit231
  %i.jk = getelementptr inbounds nuw i8, ptr %12, i64 96
  store i32 1073741824, ptr %i.jk, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %hyperv_enabled.exit231.thread266, %hyperv_enabled.exit231.thread
  %i.jl = getelementptr inbounds nuw i8, ptr %12, i64 100
  store i32 0, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i32 0, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i32 %i.ii, ptr %i.jn, align 4
  %i.jo = load i64, ptr %i.w, align 16
  %.not.i232 = icmp eq i64 %i.jo, 0
  br i1 %.not.i232, label %tsc_is_stable_and_known.exit.thread269, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jp = getelementptr inbounds nuw i8, ptr %i.f, i64 30280
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = and i64 %i.jq, 256
  %.not4.i = icmp eq i64 %i.jr, 0
  br i1 %.not4.i, label %tsc_is_stable_and_known.exit, label %tsc_is_stable_and_known.exit.thread

tsc_is_stable_and_known.exit:                     ; preds = %bb.be
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 31352
  %i.jt = load i64, ptr %i.js, align 8
  %.fr = freeze i64 %i.jt
  %.not284 = icmp eq i64 %.fr, 0
  br i1 %.not284, label %tsc_is_stable_and_known.exit.thread269, label %tsc_is_stable_and_known.exit.thread

tsc_is_stable_and_known.exit.thread:              ; preds = %bb.be, %tsc_is_stable_and_known.exit
  br label %tsc_is_stable_and_known.exit.thread269

tsc_is_stable_and_known.exit.thread269:           ; preds = %bb.bd, %tsc_is_stable_and_known.exit, %tsc_is_stable_and_known.exit.thread
  %i.ju = phi i32 [ 2, %tsc_is_stable_and_known.exit.thread ], [ 0, %tsc_is_stable_and_known.exit ], [ 0, %bb.bd ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.f, i64 30256
  %i.jw = load i64, ptr %i.jv, align 16
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = lshr i32 %i.jx, 25
  %i.jz = and i32 %i.jy, 4
  %i.ka = or disjoint i32 %i.jz, %i.ju
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 132
  store i32 %i.ka, ptr %i.kb, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 0, ptr %i.kc, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.f, i64 31352
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 %i.kf, ptr %i.kg, align 4
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 144
  store i32 0, ptr %i.kh, align 4
  %i.ki = add nuw nsw i32 %.0186, 5
  %i.kj = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 2 uses
  %i.kk = or disjoint i32 %.0189, 4               ; 3 uses
  store i32 %i.kk, ptr %i.kj, align 4
  store i32 %i.kk, ptr %i.ij, align 4
  %i.kl = load ptr, ptr %i.r, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 640 ; 3 uses
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = icmp ugt i32 %i.kn, 262148
  br i1 %i.ko, label %._crit_edge, label %.thread272

._crit_edge:                                      ; preds = %tsc_is_stable_and_known.exit.thread269
  store i32 %i.kk, ptr %i.kj, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 33052
  %i.kq = load i8, ptr %i.kp, align 4, !range !7, !noundef !8
  %i.kr = trunc nuw i8 %i.kq to i1
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 172
  %i.kt = load i32, ptr %i.ks, align 4            ; 2 uses
  %i.ku = or i32 %i.kt, 3
  %i.kv = select i1 %i.kr, i32 %i.ku, i32 %i.kt   ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %12, i64 172 ; 3 uses
  %i.kx = or i32 %i.kv, 4
  store i32 %i.kx, ptr %i.kw, align 4
  %i.ky = load i32, ptr %i.km, align 8
  %i.kz = icmp ugt i32 %i.ky, 262149
  br i1 %i.kz, label %bb.bf, label %.thread272

bb.bf:                                            ; preds = %._crit_edge
  %i.la = or i32 %i.kv, 12
  store i32 %i.la, ptr %i.kw, align 4
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.lc = load i32, ptr %i.lb, align 16
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 176
  store i32 %i.lc, ptr %i.ld, align 4
  %.pr = load i32, ptr %i.km, align 8
  %i.le = icmp ugt i32 %.pr, 262160
  br i1 %i.le, label %bb.bg, label %.thread272

bb.bg:                                            ; preds = %bb.bf
  %i.lf = or i32 %i.kv, 76
  store i32 %i.lf, ptr %i.kw, align 4
  br label %.thread272

.thread272:                                       ; preds = %._crit_edge, %bb.bf, %bb.bg, %tsc_is_stable_and_known.exit.thread269
  %i.lg = call i32 @kvm_xen_init_vcpu(ptr noundef nonnull %0) #29 ; 2 uses
  %.not213 = icmp eq i32 %i.lg, 0
  %i.lh = add nuw nsw i32 %.0189, 256
  br i1 %.not213, label %bb.bj, label %kvm_init_msrs.exit

bb.bh:                                            ; preds = %hyperv_enabled.exit.thread263
  %i.li = getelementptr inbounds nuw i8, ptr %i.f, i64 32115
  %i.lj = load i8, ptr %i.li, align 1, !range !7, !noundef !8
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ll = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.lm = zext nneg i32 %.0186 to i64
  %i.ln = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %i.lm ; 5 uses
  store i32 %.0189, ptr %i.ln, align 4
  %i.lo = or i32 %.0189, 1073741825               ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 %i.lo, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store i32 1263359563, ptr %i.lq, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 20
  store i32 1447775574, ptr %i.lr, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store i32 77, ptr %i.ls, align 4
  %i.lt = add nuw nsw i32 %.0186, 2
  %13 = zext nneg i32 %.0186 to i64
  %14 = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %13 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %i.lo, ptr %i.lu, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.f, i64 30336
  %i.lw = load i64, ptr %i.lv, align 16
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr inbounds nuw i8, ptr %14, i64 52
  store i32 %i.lx, ptr %i.ly, align 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.f, i64 30344
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %i.mb, ptr %i.mc, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %.thread272
  %.2191 = phi i32 [ %i.lh, %.thread272 ], [ %.0189, %bb.bi ], [ %.0189, %bb.bh ]
  %.1187 = phi i32 [ %i.ki, %.thread272 ], [ %i.lt, %bb.bi ], [ %.0186, %bb.bh ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.f, i64 32942
  %i.me = load i8, ptr %i.md, align 2, !range !7, !noundef !8
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %10, i8 0, i64 104, i1 false)
  store i32 190, ptr %10, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.mg, align 8
  %i.mh = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %0, i64 noundef 1080602275, ptr noundef nonnull %10) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mj = load ptr, ptr @stderr, align 8
  %i.mk = sub i32 0, %i.mh
  %i.ml = call ptr @strerror(i32 noundef %i.mk) #29
  %i.mm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.mj, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %i.ml) #29 ; 0 uses
  call void @abort() #31
  unreachable

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.mo = call i32 @kvm_x86_build_cpuid(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mn, i32 noundef %.1187) ; 7 uses
  store i32 %i.mo, ptr %9, align 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.f, i64 32912 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 16, !range !7, !noundef !8
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.bn, label %kvm_init_pmu_info.exit

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.a, i8 0, i64 13, i1 false), !annotation !16
  call void @host_cpu_vendor_fms(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #29
  %i.ms = load i64, ptr %i.a, align 1
  %i.mt = xor i64 %i.ms, 5288754736637306183
  %i.mu = getelementptr i8, ptr %i.a, i64 5
  %i.mv = load i64, ptr %i.mu, align 1
  %i.mw = xor i64 %i.mv, 30510848225666414
  %i.mx = or i64 %i.mt, %i.mw
  %i.my = icmp ne i64 %i.mx, 0
  %i.mz = zext i1 %i.my to i32
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nb = load i64, ptr %i.a, align 1
  %i.nc = xor i64 %i.nb, 5220363979501495619
  %i.nd = getelementptr i8, ptr %i.a, i64 5
  %i.ne = load i64, ptr %i.nd, align 1
  %i.nf = xor i64 %i.ne, 32488873720836725
  %i.ng = or i64 %i.nc, %i.nf
  %i.nh = icmp ne i64 %i.ng, 0
  %i.ni = zext i1 %i.nh to i32
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nk = load i64, ptr %i.a, align 1
  %i.nl = xor i64 %i.nk, 7523103067186864160
  %i.nm = getelementptr i8, ptr %i.a, i64 5
  %i.nn = load i64, ptr %i.nm, align 1
  %i.no = xor i64 %i.nn, 9042836232628078
  %i.np = or i64 %i.nl, %i.no
  %i.nq = icmp ne i64 %i.np, 0
  %i.nr = zext i1 %i.nq to i32
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.bq, label %.thread17.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.nt = getelementptr inbounds nuw i8, ptr %i.f, i64 30188
  %i.nu = load i32, ptr %i.nt, align 4
  switch i32 %i.nu, label %.thread17.i.i [
    i32 1970169159, label %bb.br
    i32 1953391939, label %bb.bt
    i32 1750278176, label %bb.bv
  ]

bb.br:                                            ; preds = %bb.bq
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 30192
  %i.nw = load i32, ptr %i.nv, align 16
  %i.nx = icmp eq i32 %i.nw, 1231384169
  br i1 %i.nx, label %bb.bs, label %.thread17.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ny = getelementptr inbounds nuw i8, ptr %i.f, i64 30196
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = icmp eq i32 %i.nz, 1818588270
  br i1 %i.oa, label %bb.ca, label %.thread17.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.ob = getelementptr inbounds nuw i8, ptr %i.f, i64 30192
  %i.oc = load i32, ptr %i.ob, align 16
  %i.od = icmp eq i32 %i.oc, 1215460705
  br i1 %i.od, label %bb.bu, label %.thread17.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.oe = getelementptr inbounds nuw i8, ptr %i.f, i64 30196
  %i.of = load i32, ptr %i.oe, align 4
  %i.og = icmp eq i32 %i.of, 1936487777
  br i1 %i.og, label %bb.ca, label %.thread17.i.i

bb.bv:                                            ; preds = %bb.bq
  %i.oh = getelementptr inbounds nuw i8, ptr %i.f, i64 30192
  %i.oi = load i32, ptr %i.oh, align 16
  %i.oj = icmp eq i32 %i.oi, 1751608929
  br i1 %i.oj, label %bb.bw, label %.thread17.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.f, i64 30196
  %i.ol = load i32, ptr %i.ok, align 4
  %i.om = icmp eq i32 %i.ol, 538995041
  br i1 %i.om, label %bb.ca, label %.thread17.i.i

.thread17.i.i:                                    ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %i.on = load i64, ptr %i.a, align 1
  %i.oo = xor i64 %i.on, 7598819853104084289
  %i.op = getelementptr i8, ptr %i.a, i64 5
  %i.oq = load i64, ptr %i.op, align 1
  %i.or = xor i64 %i.oq, 19225241652393070
  %i.os = or i64 %i.oo, %i.or
  %i.ot = icmp ne i64 %i.os, 0
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.bx, label %is_host_compat_vendor.exit.thread25.i

bb.bx:                                            ; preds = %.thread17.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.f, i64 30188
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = icmp eq i32 %i.ox, 1752462657
  br i1 %i.oy, label %bb.by, label %is_host_compat_vendor.exit.thread25.i

bb.by:                                            ; preds = %bb.bx
  %i.oz = getelementptr inbounds nuw i8, ptr %i.f, i64 30192
  %i.pa = load i32, ptr %i.oz, align 16
  %i.pb = icmp eq i32 %i.pa, 1769238117
  br i1 %i.pb, label %is_host_compat_vendor.exit.i, label %is_host_compat_vendor.exit.thread25.i

is_host_compat_vendor.exit.thread25.i:            ; preds = %bb.by, %bb.bx, %.thread17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.bz

is_host_compat_vendor.exit.i:                     ; preds = %bb.by
  %i.pc = getelementptr inbounds nuw i8, ptr %i.f, i64 30196
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = icmp eq i32 %i.pd, 1145913699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %i.pe, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %is_host_compat_vendor.exit.i, %is_host_compat_vendor.exit.thread25.i
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.152) #29
  br label %kvm_init_pmu_info.exit

bb.ca:                                            ; preds = %bb.bw, %bb.bu, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.pf = load i32, ptr %9, align 4               ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i.i, label %kvm_init_pmu_info.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ca, %bb.cc
  %.012.i.i.i = phi i32 [ %i.pn, %bb.cc ], [ 0, %bb.ca ] ; 2 uses
  %i.pg = sext i32 %.012.i.i.i to i64
  %i.ph = getelementptr inbounds [40 x i8], ptr %i.mn, i64 %i.pg ; 4 uses
  %i.pi = load i32, ptr %i.ph, align 4
  %i.pj = icmp eq i32 %i.pi, 10
  br i1 %i.pj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pl = load i32, ptr %i.pk, align 4
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %cpuid_find_entry.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i.i.i
  %i.pn = add nuw i32 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.pn, %i.pf
  br i1 %exitcond.not.i.i.i, label %kvm_init_pmu_info.exit, label %.lr.ph.i.i.i, !llvm.loop !14

cpuid_find_entry.exit.i.i:                        ; preds = %bb.cb
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  %i.pp = load i32, ptr %i.po, align 4            ; 2 uses
  %i.pq = and i32 %i.pp, 255                      ; 3 uses
  store i32 %i.pq, ptr @pmu_version, align 4
  %.not6.i.i = icmp eq i32 %i.pq, 0
  br i1 %.not6.i.i, label %kvm_init_pmu_info.exit, label %bb.cd

bb.cd:                                            ; preds = %cpuid_find_entry.exit.i.i
  %i.pr = lshr i32 %i.pp, 8
  %i.ps = and i32 %i.pr, 255
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.ps, i32 18)
  store i32 %spec.store.select.i.i, ptr @num_pmu_gp_counters, align 4
end_hunk_0
