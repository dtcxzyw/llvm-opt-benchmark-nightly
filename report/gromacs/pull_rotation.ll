Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull_rotation?download=true
inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_Z8init_rotP8_IO_FILEP10t_inputreciPK8t_filenmRKN3gmx7MpiCommEPNS6_19LocalAtomSetManagerEPK7t_stateRK10gmx_mtop_tPK16gmx_output_env_tRKNS6_12MdrunOptionsENS6_16StartingBehaviorE:bb.a
  store i32 %i.gg, ptr %i.gf, align 8, !tbaa !105
  br i1 %.not114, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EED2Ev.exit
  %i.gh = load ptr, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !101
  %i.gi = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !95
  %i.gk = invoke noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef %i.gj)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef %i.gh, i32 noundef %i.gg, ptr noundef %i.gk) #29 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EED2Ev.exit
  %i.gm = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !121 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %bb.ak, label %bb.bz

bb.ak:                                            ; preds = %bb.aj
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0293360, i32 %i.go)
  %i.gq = load i8, ptr %i.q, align 8, !tbaa !384, !range !64, !noundef !65
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.gt = load i32, ptr %i.n, align 4, !tbaa !103
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = select i1 %i.gu, ptr %i.fd, ptr null
  %i.gw = load i8, ptr %i.ac, align 4, !tbaa !215, !range !64, !noundef !65
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = xor i1 %i.gx, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  %i.gz = load i32, ptr %i.gm, align 8, !tbaa !95 ; 2 uses
  %i.ha = and i32 %i.gz, -4
  %switch.selectcmp.i = icmp eq i32 %i.ha, 8      ; 2 uses
  %i.hb = zext nneg i32 %i.go to i64              ; 2 uses
  switch i32 %i.gz, label %switch.edge182.i [
    i32 8, label %bb.al
    i32 9, label %bb.al
    i32 10, label %bb.al
    i32 11, label %bb.al
    i32 5, label %bb.al
    i32 7, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.hc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 3481, i64 noundef range(i64 -2147483648, 2147483648) %i.hb, i64 noundef 12)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %bb.al
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 144
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !122
  %i.he = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !121
  %i.hh = sext i32 %i.hg to i64
  %i.hi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 3482, i64 noundef range(i64 -2147483648, 2147483648) %i.hh, i64 noundef 12)
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc139
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 152
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !385
  %i.hk = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !121
  %i.hn = sext i32 %i.hm to i64
  %i.ho = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2, i32 noundef 3483, i64 noundef range(i64 -2147483648, 2147483648) %i.hn, i64 noundef 12)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc140
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 160
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !385
  %i.hq = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !121
  %i.ht = sext i32 %i.hs to i64
  %i.hu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 3484, i64 noundef range(i64 -2147483648, 2147483648) %i.ht, i64 noundef 12)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc142:                                        ; preds = %.noexc141
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 168
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !122
  %i.hw = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !86
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc142
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !121
  %i.ic = sext i32 %i.ib to i64
  %i.id = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.2, i32 noundef 3488, i64 noundef range(i64 -2147483648, 2147483648) %i.ic, i64 noundef 4)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.am
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 88
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !122
  %i.if = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !121
  %i.ii = sext i32 %i.ih to i64
  %i.ij = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2, i32 noundef 3489, i64 noundef range(i64 -2147483648, 2147483648) %i.ii, i64 noundef 12)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

switch.edge182.i:                                 ; preds = %bb.ak
  %i.ik = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 3494, i64 noundef range(i64 -2147483648, 2147483648) %i.hb, i64 noundef 12)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %switch.edge182.i
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 232
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !122
  %i.im = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !121
  %i.ip = sext i32 %i.io to i64
  %i.iq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 3495, i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 12)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %.noexc145, %.noexc143
  %.sink539 = phi i64 [ 176, %.noexc143 ], [ 240, %.noexc145 ]
  %.sink537 = phi ptr [ %i.ij, %.noexc143 ], [ %i.iq, %.noexc145 ]
  %.ph = phi i1 [ true, %.noexc143 ], [ false, %.noexc145 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 %.sink539
  store ptr %.sink537, ptr %i.ir, align 8, !tbaa !122
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %.noexc142
  %i.is = phi i1 [ true, %.noexc142 ], [ %.ph, %.sink.split ] ; 2 uses
  %i.it = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 64 ; 3 uses
  %i.iw = load float, ptr %i.iu, align 4, !tbaa !61
  store float %i.iw, ptr %i.iv, align 8, !tbaa !61
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 52
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !61
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 68 ; 2 uses
  store float %i.iy, ptr %i.iz, align 4, !tbaa !61
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 72 ; 3 uses
  store float %i.jb, ptr %i.jc, align 8, !tbaa !61
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !121
  %i.jf = sext i32 %i.je to i64
  %i.jg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 3499, i64 noundef range(i64 -2147483648, 2147483648) %i.jf, i64 noundef 12)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc147:                                        ; preds = %bb.an
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 80
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !122
  %i.ji = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 80
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !86
  %i.jl = icmp eq i32 %i.jk, 2
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 368 ; 5 uses
  br i1 %i.jl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.noexc147
  %i.jn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 3505, i64 noundef 1, i64 noundef 24)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc148:                                        ; preds = %bb.ao
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !386
  %i.jo = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 84
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !87
  %i.jr = sext i32 %i.jq to i64
  %i.js = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.2, i32 noundef 3506, i64 noundef range(i64 -2147483648, 2147483648) %i.jr, i64 noundef 4)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %.noexc148
  store ptr %i.js, ptr %i.jn, align 8, !tbaa !122
  %i.jt = load ptr, ptr %i.jm, align 8, !tbaa !88
  %i.ju = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 84
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !87
  %i.jx = sext i32 %i.jw to i64
  %i.jy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2, i32 noundef 3507, i64 noundef range(i64 -2147483648, 2147483648) %i.jx, i64 noundef 4)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %.noexc149
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !122
  %i.ka = load ptr, ptr %i.jm, align 8, !tbaa !88
  %i.kb = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 84
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !87
  %i.ke = sext i32 %i.kd to i64
  %i.kf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.2, i32 noundef 3508, i64 noundef range(i64 -2147483648, 2147483648) %i.ke, i64 noundef 36)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %.noexc150
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !122
  %i.kh = load ptr, ptr %.sroa.0273.0359, align 8, !tbaa !77 ; 8 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 84
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !87 ; 5 uses
  %i.kk = add nsw i32 %i.kj, -1
  %29 = sitofp i32 %i.kk to double
  %i.kl = fmul nnan double %29, -5.000000e-01
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 88 ; 13 uses
  %i.kn = load float, ptr %i.km, align 8, !tbaa !387
  %i.ko = fpext float %i.kn to double
  %i.kp = fmul double %i.kl, %i.ko
  %i.kq = fptrunc double %i.kp to float           ; 11 uses
  %i.kr = icmp sgt i32 %i.kj, 0
  br i1 %i.kr, label %iter.check, label %.loopexit213.i

iter.check:                                       ; preds = %.noexc151
  %i.ks = load ptr, ptr %i.jm, align 8, !tbaa !88
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !104 ; 13 uses
  %wide.trip.count.i = zext nneg i32 %i.kj to i64 ; 9 uses
  %min.iters.check604 = icmp ult i32 %i.kj, 4
  br i1 %min.iters.check604, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck605

vector.memcheck605:                               ; preds = %iter.check
  %i.ku = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.kv = getelementptr i8, ptr %i.kt, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kh, i64 92
  %bound0606 = icmp ult ptr %i.kt, %i.kw
  %bound1607 = icmp ult ptr %i.km, %i.kv
  %found.conflict608 = and i1 %bound0606, %bound1607
  br i1 %found.conflict608, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck605
  %min.iters.check609 = icmp ult i32 %i.kj, 32
  br i1 %min.iters.check609, label %vec.epilog.ph, label %vector.ph610

vector.ph610:                                     ; preds = %vector.main.loop.iter.check
  %i.kx = and i64 %wide.trip.count.i, 28
  %n.vec611 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %i.ky = load float, ptr %i.km, align 8, !tbaa !387, !alias.scope !388
  %broadcast.splatinsert616 = insertelement <8 x float> poison, float %i.ky, i64 0
  %broadcast.splat617 = shufflevector <8 x float> %broadcast.splatinsert616, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert612 = insertelement <8 x float> poison, float %i.kq, i64 0
  %broadcast.splat613 = shufflevector <8 x float> %broadcast.splatinsert612, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.ph610, %vector.body614
  %index615 = phi i64 [ 0, %vector.ph610 ], [ %index.next618, %vector.body614 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph610 ], [ %vec.ind.next, %vector.body614 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.kz = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.la = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.lb = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.lc = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.ld = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.kz, <8 x float> %broadcast.splat617, <8 x float> %broadcast.splat613)
  %i.le = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.la, <8 x float> %broadcast.splat617, <8 x float> %broadcast.splat613)
  %i.lf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.lb, <8 x float> %broadcast.splat617, <8 x float> %broadcast.splat613)
  %i.lg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.lc, <8 x float> %broadcast.splat617, <8 x float> %broadcast.splat613)
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index615 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  store <8 x float> %i.ld, ptr %i.lh, align 4, !tbaa !61, !alias.scope !389, !noalias !388
  store <8 x float> %i.le, ptr %i.li, align 4, !tbaa !61, !alias.scope !389, !noalias !388
  store <8 x float> %i.lf, ptr %i.lj, align 4, !tbaa !61, !alias.scope !389, !noalias !388
  store <8 x float> %i.lg, ptr %i.lk, align 4, !tbaa !61, !alias.scope !389, !noalias !388
  %index.next618 = add nuw i64 %index615, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ll = icmp eq i64 %index.next618, %n.vec611
  br i1 %i.ll, label %middle.block619, label %vector.body614, !llvm.loop !181

middle.block619:                                  ; preds = %vector.body614
  %cmp.n620 = icmp eq i64 %n.vec611, %wide.trip.count.i
  br i1 %cmp.n620, label %.loopexit213.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block619
  %min.epilog.iters.check = icmp eq i64 %i.kx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec611, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec621 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %i.lm = load float, ptr %i.km, align 8, !tbaa !387, !alias.scope !388
  %broadcast.splatinsert628 = insertelement <4 x float> poison, float %i.lm, i64 0
  %broadcast.splat629 = shufflevector <4 x float> %broadcast.splatinsert628, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert622 = insertelement <4 x float> poison, float %i.kq, i64 0
  %broadcast.splat623 = shufflevector <4 x float> %broadcast.splatinsert622, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert624 = insertelement <4 x i32> poison, i32 %i.ln, i64 0
  %broadcast.splat625 = shufflevector <4 x i32> %broadcast.splatinsert624, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat625, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index626 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next630, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind627 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next631, %vec.epilog.vector.body ] ; 2 uses
  %i.lo = uitofp nneg <4 x i32> %vec.ind627 to <4 x float>
  %i.lp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %broadcast.splat629, <4 x float> %broadcast.splat623)
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index626
  store <4 x float> %i.lp, ptr %i.lq, align 4, !tbaa !61, !alias.scope !389, !noalias !388
  %index.next630 = add nuw i64 %index626, 4       ; 2 uses
  %vec.ind.next631 = add <4 x i32> %vec.ind627, splat (i32 4)
  %i.lr = icmp eq i64 %index.next630, %n.vec621
  br i1 %i.lr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !182

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n632 = icmp eq i64 %n.vec621, %wide.trip.count.i
  br i1 %cmp.n632, label %.loopexit213.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck605, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck605 ], [ %n.vec611, %vec.epilog.iter.check ], [ %n.vec621, %vec.epilog.middle.block ] ; 4 uses
  %i.ls = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ls, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.lt = trunc nuw nsw i64 %indvars.iv.i.prol to i32
  %i.lu = uitofp nneg i32 %i.lt to float
  %i.lv = load float, ptr %i.km, align 8, !tbaa !387
  %i.lw = call float @llvm.fmuladd.f32(float %i.lu, float %i.lv, float %i.kq)
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i.prol
  store float %i.lw, ptr %i.lx, align 4, !tbaa !61
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !183

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ly = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.lz = icmp ugt i64 %i.ly, -8
  br i1 %i.lz, label %.loopexit213.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ma = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.mb = uitofp nneg i32 %i.ma to float
  %i.mc = load float, ptr %i.km, align 8, !tbaa !387
  %i.md = call float @llvm.fmuladd.f32(float %i.mb, float %i.mc, float %i.kq)
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i
  store float %i.md, ptr %i.me, align 4, !tbaa !61
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.mg = uitofp nneg i32 %i.mf to float
  %i.mh = load float, ptr %i.km, align 8, !tbaa !387
  %i.mi = call float @llvm.fmuladd.f32(float %i.mg, float %i.mh, float %i.kq)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i
  store float %i.mi, ptr %i.mj, align 4, !tbaa !61
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.mk = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.ml = uitofp nneg i32 %i.mk to float
  %i.mm = load float, ptr %i.km, align 8, !tbaa !387
  %i.mn = call float @llvm.fmuladd.f32(float %i.ml, float %i.mm, float %i.kq)
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.1
  store float %i.mn, ptr %i.mo, align 4, !tbaa !61
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.mq = uitofp nneg i32 %i.mp to float
  %i.mr = load float, ptr %i.km, align 8, !tbaa !387
  %i.ms = call float @llvm.fmuladd.f32(float %i.mq, float %i.mr, float %i.kq)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.2
  store float %i.ms, ptr %i.mt, align 4, !tbaa !61
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.mu = trunc nuw nsw i64 %indvars.iv.next.i.3 to i32
  %i.mv = uitofp nneg i32 %i.mu to float
  %i.mw = load float, ptr %i.km, align 8, !tbaa !387
  %i.mx = call float @llvm.fmuladd.f32(float %i.mv, float %i.mw, float %i.kq)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.3
  store float %i.mx, ptr %i.my, align 4, !tbaa !61
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.mz = trunc nuw nsw i64 %indvars.iv.next.i.4 to i32
  %i.na = uitofp nneg i32 %i.mz to float
  %i.nb = load float, ptr %i.km, align 8, !tbaa !387
  %i.nc = call float @llvm.fmuladd.f32(float %i.na, float %i.nb, float %i.kq)
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.4
  store float %i.nc, ptr %i.nd, align 4, !tbaa !61
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.ne = trunc nuw nsw i64 %indvars.iv.next.i.5 to i32
  %i.nf = uitofp nneg i32 %i.ne to float
  %i.ng = load float, ptr %i.km, align 8, !tbaa !387
  %i.nh = call float @llvm.fmuladd.f32(float %i.nf, float %i.ng, float %i.kq)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.5
  store float %i.nh, ptr %i.ni, align 4, !tbaa !61
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.nj = trunc nuw nsw i64 %indvars.iv.next.i.6 to i32
  %i.nk = uitofp nneg i32 %i.nj to float
  %i.nl = load float, ptr %i.km, align 8, !tbaa !387
  %i.nm = call float @llvm.fmuladd.f32(float %i.nk, float %i.nl, float %i.kq)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.6
  store float %i.nm, ptr %i.nn, align 4, !tbaa !61
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %.loopexit213.i, label %vec.epilog.scalar.ph, !llvm.loop !184

bb.ap:                                            ; preds = %.noexc147
  store ptr null, ptr %i.jm, align 8, !tbaa !88
  br label %.loopexit213.i

.loopexit213.i:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block619, %vec.epilog.middle.block, %bb.ap, %.noexc151
  %i.no = phi ptr [ %i.ji, %bb.ap ], [ %i.kh, %.noexc151 ], [ %i.kh, %middle.block619 ], [ %i.kh, %vec.epilog.middle.block ], [ %i.kh, %vec.epilog.scalar.ph ], [ %i.kh, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0273.0359, i64 200 ; 6 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8
end_hunk_0
