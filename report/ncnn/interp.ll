Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp?download=true
inline.NumInlined: 152
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.hh = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN4ncnn3MataSERKS0_.exit76, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.as
  %i.hj = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !49
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul i64 %i.hk, %i.hn
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %_ZN4ncnn3MataSERKS0_.exit76, label %bb.at

bb.at:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !34 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 1
  br i1 %i.hs, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !37
  %.not72 = icmp eq i32 %i.hu, 0
  br i1 %.not72, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hv = load i64, ptr %i.al, align 8, !tbaa !42
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hx = load i32, ptr %i.b, align 4, !tbaa !47
  %i.hy = sitofp fast i32 %i.hx to float
  %i.hz = sitofp fast i32 %i.br to float
  %i.ia = fdiv fast float %i.hy, %i.hz
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !35
  %i.id = fdiv fast float 1.000000e+00, %i.ic
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ie = phi fast float [ %i.ia, %bb.aw ], [ %i.id, %bb.ax ]
  store float %i.ie, ptr %i.k, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !38
  %.not73 = icmp eq i32 %i.ig, 0
  br i1 %.not73, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ih = load i64, ptr %i.al, align 8, !tbaa !42
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ij = load i32, ptr %i.a, align 4, !tbaa !47
  %i.ik = sitofp fast i32 %i.ij to float
  %i.il = load i32, ptr %i.d, align 4, !tbaa !47
  %i.im = sitofp fast i32 %i.il to float
  %i.in = fdiv fast float %i.ik, %i.im
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ip = load float, ptr %i.io, align 4, !tbaa !36
  %i.iq = fdiv fast float 1.000000e+00, %i.ip
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ir = phi fast float [ %i.in, %bb.ba ], [ %i.iq, %bb.bb ]
  store float %i.ir, ptr %i.l, align 4, !tbaa !61
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !78
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.u, i32 %i.it)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8, ptr nonnull %i.c, ptr nonnull %i.v, ptr nonnull %i.w, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  %.pr89 = load i32, ptr %i.hq, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.at
  %i.iu = phi i32 [ %.pr89, %bb.bc ], [ %i.hr, %bb.at ] ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 2
  br i1 %i.iv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.iw = load i32, ptr %i.d, align 4, !tbaa !47
  %i.ix = load i32, ptr %i.e, align 4, !tbaa !47
  %i.iy = add nsw i32 %i.ix, %i.iw
  %i.iz = mul i32 %i.iy, 3                        ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp slt i32 %i.iz, 0
  %i.jc = shl nsw i64 %i.ja, 2
  %i.jd = select i1 %i.jb, i64 -1, i64 %i.jc
  %i.je = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jd) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  store ptr %i.je, ptr %i.m, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  %i.jf = load i32, ptr %i.d, align 4, !tbaa !47  ; 3 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jg ; 3 uses
  store ptr %i.jh, ptr %i.n, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.ji = load i32, ptr %i.e, align 4, !tbaa !47  ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jj ; 3 uses
  store ptr %i.jk, ptr %i.o, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  %i.jl = shl nsw i32 %i.jf, 1
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jm ; 2 uses
  store ptr %i.jn, ptr %i.p, align 8, !tbaa !63
  %i.jo = load i32, ptr %i.a, align 4, !tbaa !47
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !39 ; 2 uses
  call fastcc void @_ZN4ncnnL13linear_coeffsEiiPiPfi(i32 noundef %i.jo, i32 noundef %i.jf, ptr noundef nonnull %i.je, ptr noundef nonnull %i.jk, i32 noundef %i.jq)
  %i.jr = load i32, ptr %i.b, align 4, !tbaa !47
  call fastcc void @_ZN4ncnnL13linear_coeffsEiiPiPfi(i32 noundef %i.jr, i32 noundef %i.ji, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.jn, i32 noundef %i.jq)
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !78
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.u, i32 %i.jt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9, ptr nonnull %i.c, ptr nonnull %i.v, ptr nonnull %i.w, ptr nonnull %i.o, ptr nonnull %i.m, ptr nonnull %i.p, ptr nonnull %i.n)
  call void @_ZdaPv(ptr noundef nonnull %i.je) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %.pre90 = load i32, ptr %i.hq, align 8, !tbaa !34
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ju = phi i32 [ %.pre90, %bb.be ], [ %i.iu, %bb.bd ]
  %i.jv = icmp eq i32 %i.ju, 3
  br i1 %i.jv, label %bb.bg, label %_ZN4ncnn3MataSERKS0_.exit76

bb.bg:                                            ; preds = %bb.bf
  %i.jw = load i32, ptr %i.d, align 4, !tbaa !47
  %i.jx = load i32, ptr %i.e, align 4, !tbaa !47
  %i.jy = add nsw i32 %i.jx, %i.jw
  %i.jz = mul i32 %i.jy, 5                        ; 2 uses
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp slt i32 %i.jz, 0
  %i.kc = shl nsw i64 %i.ka, 2
  %i.kd = select i1 %i.kb, i64 -1, i64 %i.kc
  %i.ke = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  store ptr %i.ke, ptr %i.q, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #12
  %i.kf = load i32, ptr %i.d, align 4, !tbaa !47  ; 3 uses
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kg ; 3 uses
  store ptr %i.kh, ptr %i.r, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  %i.ki = load i32, ptr %i.e, align 4, !tbaa !47  ; 2 uses
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.kj ; 3 uses
  store ptr %i.kk, ptr %i.s, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #12
  %i.kl = shl nsw i32 %i.kf, 2
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.km ; 2 uses
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !63
  %i.ko = load i32, ptr %i.a, align 4, !tbaa !47
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !39 ; 2 uses
  call fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %i.ko, i32 noundef %i.kf, ptr noundef nonnull %i.ke, ptr noundef nonnull %i.kk, i32 noundef %i.kq)
  %i.kr = load i32, ptr %i.b, align 4, !tbaa !47
  call fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %i.kr, i32 noundef %i.ki, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.kn, i32 noundef %i.kq)
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !78
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.u, i32 %i.kt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.10, ptr nonnull %i.c, ptr nonnull %i.v, ptr nonnull %i.w, ptr nonnull %i.s, ptr nonnull %i.q, ptr nonnull %i.t, ptr nonnull %i.r)
  call void @_ZdaPv(ptr noundef nonnull %i.ke) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  br label %_ZN4ncnn3MataSERKS0_.exit76

_ZN4ncnn3MataSERKS0_.exit76:                      ; preds = %_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_.exit, %bb.as, %bb.x, %bb.l, %_ZN4ncnn3Mat7releaseEv.exit80, %bb.aj, %_ZN4ncnn3Mat7releaseEv.exit, %bb.o, %_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_.exit.thread, %bb.bf, %bb.bg, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.ag, %bb.ah, %_ZNK4ncnn3Mat5emptyEv.exit84, %_ZNK4ncnn3Mat5emptyEv.exit85, %bb.m
  %.1 = phi i32 [ -1, %_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_.exit ], [ 0, %bb.m ], [ -100, %bb.x ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit85 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit84 ], [ -100, %bb.l ], [ 0, %bb.ag ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.ah ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ -1, %_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_.exit.thread ], [ 0, %bb.o ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ], [ 0, %bb.aj ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit80 ], [ -100, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn6Interp7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = icmp eq <2 x i32> %i.b, zeroinitializer  ; 2 uses
  %6 = extractelement <2 x i1> %i.d, i64 0
  %7 = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %6, i1 true, i1 %7
  br i1 %or.cond, label %bb.b, label %.noexc63

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.c, align 8, !tbaa !50
  %i.g = icmp eq i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !47
  %i.j = insertelement <2 x i1> poison, i1 %i.g, i64 0
  %i.k = shufflevector <2 x i1> %i.j, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.l = sitofp fast <2 x i32> %i.i to <2 x float>
  %i.m = select <2 x i1> %i.k, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !61
  %i.o = fmul fast <2 x float> %i.n, %i.m
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  br label %.noexc63

.noexc63:                                         ; preds = %bb.a, %bb.b
  %i.q = phi <2 x i32> [ %i.p, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.r = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21 ; 17 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 0, ptr %i.x, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.v, i8 0, i64 36, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !65
  %i.aa = icmp eq ptr %i.r, %1
  br i1 %i.aa, label %_ZN4ncnn3MataSERKS0_.exit34, label %bb.c

bb.c:                                             ; preds = %.noexc63
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57 ; 2 uses
  %.not.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i32, label %.noexc33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = atomicrmw add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57 ; 2 uses
  %.not.i42 = icmp eq ptr %.pre, null
  br i1 %.not.i42, label %.noexc33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.f, label %.noexc33

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !58  ; 3 uses
  %.not3.i43 = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !55  ; 3 uses
  br i1 %.not3.i43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ah)
          to label %.noexc33 unwind label %bb.al, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i57 = icmp eq ptr %i.ah, null
  br i1 %.not.i57, label %.noexc33, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ah) #12
  br label %.noexc33

.noexc33:                                         ; preds = %bb.c, %bb.e, %bb.d, %bb.g, %bb.h, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ap = load <2 x ptr>, ptr %1, align 8, !tbaa !59
  store <2 x ptr> %i.ap, ptr %i.r, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !60
  store i32 %i.at, ptr %i.am, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  store ptr %i.av, ptr %i.u, align 8, !tbaa !58
  %i.aw = load <4 x i32>, ptr %i.c, align 8, !tbaa !47
  store <4 x i32> %i.aw, ptr %i.an, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !56
  store i64 %i.ba, ptr %i.v, align 8, !tbaa !56
  %.pre93 = load ptr, ptr %4, align 8, !tbaa !43
  br label %_ZN4ncnn3MataSERKS0_.exit34

_ZN4ncnn3MataSERKS0_.exit34:                      ; preds = %.noexc33, %.noexc63
  %i.bb = phi ptr [ %.pre93, %.noexc33 ], [ %i.r, %.noexc63 ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %.not.i46 = icmp eq ptr %i.be, null
  br i1 %.not.i46, label %.noexc30, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit34
  %i.bf = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.k, label %.noexc30

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 3 uses
  %.not3.i47 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !55 ; 3 uses
  br i1 %.not3.i47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bj)
          to label %.noexc30 unwind label %bb.al, !inline_history !0

bb.m:                                             ; preds = %bb.k
  %.not.i55 = icmp eq ptr %i.bj, null
  br i1 %.not.i55, label %.noexc30, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.bj) #12
  br label %.noexc30

.noexc30:                                         ; preds = %bb.j, %_ZN4ncnn3MataSERKS0_.exit34, %bb.l, %bb.m, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 116
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 124
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store <2 x i32> %i.q, ptr %i.bn, align 4, !tbaa !47
  store i32 0, ptr %i.bo, align 4, !tbaa !66
  store i32 0, ptr %i.bp, align 8, !tbaa !49
  store i64 0, ptr %i.bq, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bs = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21
          to label %.noexc68 unwind label %bb.am  ; 5 uses

.noexc68:                                         ; preds = %.noexc30
  store ptr %i.bs, ptr %5, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store i64 0, ptr %i.bw, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bs, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bv, i8 0, i64 28, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !65
  %i.by = load ptr, ptr %0, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.o unwind label %bb.an

bb.o:                                             ; preds = %.noexc68
  %i.cc = load ptr, ptr %5, align 8, !tbaa !43    ; 10 uses
  %i.cd = icmp eq ptr %2, %i.cc
  br i1 %i.cd, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = atomicrmw add ptr %i.cf, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !57 ; 2 uses
  %.not.i50 = icmp eq ptr %i.ci, null
  br i1 %.not.i50, label %.noexc, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = atomicrmw add ptr %i.ci, i32 -1 acq_rel, align 4
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.t, label %.noexc

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !58 ; 3 uses
  %.not3.i51 = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %2, align 8, !tbaa !55    ; 3 uses
  br i1 %.not3.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %i.cn)
          to label %.noexc unwind label %bb.an, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i54 = icmp eq ptr %i.cn, null
  br i1 %.not.i54, label %.noexc, label %bb.w

end_hunk_0
