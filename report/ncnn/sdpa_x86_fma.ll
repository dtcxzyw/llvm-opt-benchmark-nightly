Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/sdpa_x86_fma?download=true
inline.NumInlined: 161
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn12SDPA_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef %i.er)
          to label %.noexc142 unwind label %bb.m, !inline_history !63

bb.u:                                             ; preds = %bb.s
  %.not.i262 = icmp eq ptr %i.er, null
  br i1 %.not.i262, label %.noexc142, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.er) #6
  br label %.noexc142

.noexc142:                                        ; preds = %bb.p, %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  %i.ev = load <2 x ptr>, ptr %i.o, align 8, !tbaa !51
  store <2 x ptr> %i.ev, ptr %8, align 16, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !52
  store i64 %i.ex, ptr %i.dr, align 16, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !53
  store i32 %i.ez, ptr %i.ds, align 8, !tbaa !53
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !54
  store ptr %i.fb, ptr %i.dt, align 16, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.fd = load <4 x i32>, ptr %i.fc, align 8, !tbaa !12
  store <4 x i32> %i.fd, ptr %i.du, align 8, !tbaa !12
  %i.fe = load i32, ptr %i.dh, align 8, !tbaa !55
  store i32 %i.fe, ptr %i.dv, align 8, !tbaa !55
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !56
  store i64 %i.fg, ptr %i.dw, align 16, !tbaa !56
  br label %_ZN4ncnn3MataSERKS0_.exit143

_ZN4ncnn3MataSERKS0_.exit143:                     ; preds = %.noexc142, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  store i64 0, ptr %i.fn, align 16, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fk, i8 0, i64 28, i1 false)
  %i.fo = load i32, ptr %i.f, align 4, !tbaa !12
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit143
  %i.fq = load i32, ptr %i.e, align 4, !tbaa !12
  %i.fr = load i32, ptr %i.d, align 4, !tbaa !12
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !60
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !61
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.fq, i32 noundef %i.dn, i32 noundef %i.fr, i64 noundef %i.fs, ptr noundef %i.fu)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fv = load ptr, ptr %9, align 16, !tbaa !62
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZNK4ncnn3Mat5emptyEv.exit120.thread, label %_ZNK4ncnn3Mat5emptyEv.exit120

_ZNK4ncnn3Mat5emptyEv.exit120:                    ; preds = %bb.x
  %i.fx = load i64, ptr %i.fn, align 16, !tbaa !56
  %i.fy = load i32, ptr %i.fm, align 8, !tbaa !55
  %i.fz = sext i32 %i.fy to i64
  %i.ga = mul i64 %i.fx, %i.fz
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_ZNK4ncnn3Mat5emptyEv.exit120.thread, label %bb.z

bb.y:                                             ; preds = %bb.af, %bb.w
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.z:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit120
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.ge)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn12SDPA_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.d, ptr nonnull %7, ptr nonnull %i.p, ptr nonnull %9, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.c)
  br label %_ZN4ncnn3MataSERKS0_.exit140

bb.aa:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit143
  %i.gf = icmp eq ptr %9, %i.p
  br i1 %i.gf, label %_ZN4ncnn3MataSERKS0_.exit140, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !49 ; 2 uses
  %.not.i138 = icmp eq ptr %i.gh, null
  br i1 %.not.i138, label %.noexc139, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = atomicrmw add ptr %i.gh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre302 = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 2 uses
  %.not.i148 = icmp eq ptr %.pre302, null
  br i1 %.not.i148, label %.noexc139, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = atomicrmw add ptr %.pre302, i32 -1 acq_rel, align 4
  %i.gk = icmp eq i32 %i.gj, 1
  br i1 %i.gk, label %bb.ae, label %.noexc139

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %i.fk, align 16, !tbaa !54 ; 3 uses
  %.not3.i149 = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %9, align 16, !tbaa !62   ; 3 uses
  br i1 %.not3.i149, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef %i.gm)
          to label %.noexc139 unwind label %bb.y, !inline_history !63

bb.ag:                                            ; preds = %bb.ae
  %.not.i260 = icmp eq ptr %i.gm, null
  br i1 %.not.i260, label %.noexc139, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.gm) #6
  br label %.noexc139

.noexc139:                                        ; preds = %bb.ab, %bb.ad, %bb.ac, %bb.af, %bb.ag, %bb.ah
  %i.gq = load <2 x ptr>, ptr %i.p, align 8, !tbaa !51
  store <2 x ptr> %i.gq, ptr %9, align 16, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !52
  store i64 %i.gs, ptr %i.fi, align 16, !tbaa !52
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !53
  store i32 %i.gu, ptr %i.fj, align 8, !tbaa !53
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !54
  store ptr %i.gw, ptr %i.fk, align 16, !tbaa !54
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.gy = load <4 x i32>, ptr %i.gx, align 8, !tbaa !12
  store <4 x i32> %i.gy, ptr %i.fl, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !55
  store i32 %i.ha, ptr %i.fm, align 8, !tbaa !55
  %i.hb = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !56
  store i64 %i.hc, ptr %i.fn, align 16, !tbaa !56
  br label %_ZN4ncnn3MataSERKS0_.exit140

_ZN4ncnn3MataSERKS0_.exit140:                     ; preds = %.noexc139, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.hd = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.he = load i32, ptr %i.d, align 4, !tbaa !12
  %i.hf = sdiv i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.h, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !64
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store i64 0, ptr %i.hl, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.hj, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.dn, i32 noundef %i.dc, i32 noundef %i.hd, i64 noundef 4, ptr noundef %i.hh)
          to label %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit unwind label %bb.ai

_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit:          ; preds = %_ZN4ncnn3MataSERKS0_.exit140
  %i.hm = load ptr, ptr %10, align 8, !tbaa !62
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZNK4ncnn3Mat5emptyEv.exit119.thread, label %_ZNK4ncnn3Mat5emptyEv.exit119

_ZNK4ncnn3Mat5emptyEv.exit119:                    ; preds = %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit
  %i.ho = load i64, ptr %i.hl, align 8, !tbaa !56
  %i.hp = load i32, ptr %i.hk, align 8, !tbaa !55
  %i.hq = sext i32 %i.hp to i64
  %i.hr = mul i64 %i.ho, %i.hq
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZNK4ncnn3Mat5emptyEv.exit119.thread, label %bb.aj

bb.ai:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit140
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit131

bb.aj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !12  ; 3 uses
  %i.hv = sext i32 %i.hu to i64                   ; 3 uses
  %i.hw = icmp slt i32 %i.hu, 0
  br i1 %i.hw, label %bb.ak, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc264 unwind label %bb.bj

.noexc264:                                        ; preds = %bb.ak
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.al

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hx = shl nuw nsw i64 %i.hv, 2
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #19
          to label %.noexc265 unwind label %bb.bj ; 4 uses

.noexc265:                                        ; preds = %bb.al
  store ptr %i.hy, ptr %11, align 8, !tbaa !65
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hv
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !66
  store i32 0, ptr %i.hy, align 4, !tbaa !12
  %i.ib = getelementptr i8, ptr %i.hy, i64 4      ; 3 uses
  %i.ic = add nsw i64 %i.hv, -1                   ; 2 uses
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.am, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc265
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ic, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ib, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.am

bb.am:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc265, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.ib, %.noexc265 ], [ %i.ie, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.if, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !44
  store ptr %i.ih, ptr %i.i, align 8, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !43
  %i.ik = fcmp fast oeq float %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.an, label %bb.bt

bb.an:                                            ; preds = %bb.am
  %i.il = load i32, ptr %i.a, align 4, !tbaa !12
  %i.im = sitofp fast i32 %i.il to double
  %i.in = call fast noundef nofpclass(nan inf) double @llvm.sqrt.f64(double %i.im)
  %i.io = fdiv fast double 1.000000e+00, %i.in
  %i.ip = fptrunc fast double %i.io to float      ; 2 uses
  %i.iq = invoke noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
          to label %bb.ao unwind label %bb.bk

bb.ao:                                            ; preds = %bb.an
  store ptr %i.iq, ptr %i.i, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  invoke void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.ap unwind label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 0, float noundef nofpclass(nan inf) %i.ip)
          to label %bb.aq unwind label %bb.bm

bb.aq:                                            ; preds = %bb.ap
  %i.ir = fdiv fast float 1.000000e+00, %i.ip
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 1, float noundef nofpclass(nan inf) %i.ir)
          to label %bb.ar unwind label %bb.bm

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 2, i32 noundef 0)
          to label %bb.as unwind label %bb.bm

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 3, i32 noundef 1)
          to label %bb.at unwind label %bb.bm

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 4, i32 noundef 0)
          to label %bb.au unwind label %bb.bm

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 5, i32 noundef 0)
          to label %bb.av unwind label %bb.bm

bb.av:                                            ; preds = %bb.au
  %i.is = load i32, ptr %i.q, align 8, !tbaa !45
  %.not91 = icmp eq i32 %i.is, 0
  %i.it = zext i1 %.not91 to i32
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 6, i32 noundef %i.it)
          to label %bb.aw unwind label %bb.bm

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 7, i32 noundef 0)
          to label %bb.ax unwind label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 8, i32 noundef 0)
          to label %bb.ay unwind label %bb.bm

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 9, i32 noundef 0)
          to label %bb.az unwind label %bb.bm

bb.az:                                            ; preds = %bb.ay
  %i.iu = load i32, ptr %i.q, align 8, !tbaa !45
  %.not92 = icmp eq i32 %i.iu, 0
  %i.iv = select i1 %.not92, i32 -1, i32 3
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 10, i32 noundef %i.iv)
          to label %bb.ba unwind label %bb.bm

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 11, i32 noundef 0)
          to label %bb.bb unwind label %bb.bm

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 12, i32 noundef 1)
          to label %bb.bc unwind label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 13, i32 noundef 1)
          to label %bb.bd unwind label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.iw = load i32, ptr %i.k, align 4, !tbaa !17
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 18, i32 noundef %i.iw)
          to label %bb.be unwind label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.ix = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !41
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef i32 %i.ja(ptr noundef nonnull align 8 dereferenceable(208) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.bf unwind label %bb.bm     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.jc = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef null)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !41
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef i32 %i.jf(ptr noundef nonnull align 8 dereferenceable(208) %i.jc, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bh unwind label %bb.bo     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !9
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.jh, align 4, !tbaa !46
  %i.ji = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !41
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(208) %i.ji, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %bb.bi unwind label %bb.bq     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %bb.bt

bb.bj:                                            ; preds = %bb.al, %bb.ak
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit271

bb.bk:                                            ; preds = %bb.an
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.bl:                                            ; preds = %bb.ao
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bm:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bn:                                            ; preds = %bb.bf
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bg
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #6
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.js, %bb.bo ], [ %i.jr, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  br label %bb.br

bb.bq:                                            ; preds = %bb.bh
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bm
  %.pn94 = phi { ptr, i32 } [ %i.jt, %bb.bq ], [ %.pn, %bb.bp ], [ %i.jq, %bb.bm ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #6
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bl
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %bb.br ], [ %i.jp, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %bb.ef

bb.bt:                                            ; preds = %bb.bi, %bb.am
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.jv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZNK4ncnn12SDPA_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.b, ptr nonnull %i.n, ptr nonnull %8, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %5, ptr nonnull %10, ptr nonnull %4, ptr nonnull %11, ptr nonnull %i.i)
  %i.jw = load float, ptr %i.ii, align 4, !tbaa !43
  %i.jx = fcmp fast oeq float %i.jw, 0.000000e+00
  br i1 %i.jx, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !9
  %i.jy = getelementptr inbounds nuw i8, ptr %15, i64 4
end_hunk_0
