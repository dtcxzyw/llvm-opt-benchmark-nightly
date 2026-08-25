Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx?download=true
inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd23_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  store float %i.uv, ptr %i.ur, align 4, !tbaa !39
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.qy ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.qy ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.qy ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.qy ; 2 uses
  %i.va = fadd fast float %.1278.us, %i.ts
  %i.vb = fsub fast float %.1.us, %i.va
  store float %i.vb, ptr %i.uw, align 4, !tbaa !39
  %i.vc = fadd fast float %i.ts, %i.tf
  store float %i.vc, ptr %i.ux, align 4, !tbaa !39
  %i.vd = fsub fast float %i.ts, %i.tf
  store float %i.vd, ptr %i.uy, align 4, !tbaa !39
  %i.ve = fadd fast float %.1278.us.3, %i.tf
  %i.vf = fsub fast float %.1.us.3, %i.ve
  store float %i.vf, ptr %i.uz, align 4, !tbaa !39
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.qy
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.qy
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.qy
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.qy
  %i.vk = fadd fast float %.1278.us, %i.tt
  %i.vl = fsub fast float %.0275.us, %i.vk
  store float %i.vl, ptr %i.vg, align 4, !tbaa !39
  %i.vm = fadd fast float %i.tt, %i.tg
  store float %i.vm, ptr %i.vh, align 4, !tbaa !39
  %i.vn = fsub fast float %i.tt, %i.tg
  store float %i.vn, ptr %i.vi, align 4, !tbaa !39
  %i.vo = fadd fast float %.1278.us.3, %i.tg
  %i.vp = fsub fast float %.0275.us.3, %i.vo
  store float %i.vp, ptr %i.vj, align 4, !tbaa !39
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge.us440, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1020

._crit_edge.us440:                                ; preds = %bb.ck
  %indvars.iv.next486 = add nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.vq = icmp slt i64 %indvars.iv.next486, %i.rn
  br i1 %i.vq, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge437, !llvm.loop !1021

._crit_edge437:                                   ; preds = %._crit_edge.us440, %.lr.ph436, %._crit_edge416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1022 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1022 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !1022
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1022
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1022
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1022 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1022
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1022
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1022
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1022
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1022
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1022
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1022
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1022
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1022
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !1022
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1022
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1022
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !1022 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !1022
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1022
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd23_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1025
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1025
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1025 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1025
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1025
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1025
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1025
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1025
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !1028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not158 = icmp sgt i32 %i.k, %i.j
  br i1 %.not158, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.as = sub i32 0, %i.k
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph161, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i32 [ %i.as, %.lr.ph161 ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.045159 = phi i32 [ %i.k, %.lr.ph161 ], [ %i.br, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = mul nsw i32 %i.at, %.045159             ; 5 uses
  %i.av = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.ba

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.aw = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1031
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1031
  %i.ay = sext i32 %i.av to i64
  %i.az = mul i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1031
  %i.bb = mul i64 %i.az, %i.ba
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a
  %i.rs = sext i32 %.sroa.speculated117 to i64
  %i.rt = shl nsw i32 %.sroa.speculated117, 1
  %i.ru = sext i32 %i.rt to i64
  %i.rv = mul nsw i32 %.sroa.speculated117, 3
  %i.rw = sext i32 %i.rv to i64
  %i.rx = shl nsw i32 %.sroa.speculated117, 2
  %i.ry = sext i32 %i.rx to i64                   ; 12 uses
  %i.rz = sext i32 %i.by to i64                   ; 2 uses
  br i1 %i.rr, label %.lr.ph142.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph142.split.us.i:                             ; preds = %.lr.ph142.i
  %i.sa = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1049
  %i.sb = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1049
  %i.sc = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1049
  %i.sd = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1049 ; 2 uses
  %factor.op.mul.i = mul i64 %i.sd, %i.sc
  %i.se = sext i32 %i.sa to i64
  %factor.op.mul137.us.i = mul i64 %i.sd, %i.se
  %i.sf = sext i32 %.2.lcssa.i to i64
  %wide.trip.count214.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge136.us.i, %.lr.ph142.split.us.i
  %indvars.iv216.i = phi i64 [ %indvars.iv.next217.i, %._crit_edge136.us.i ], [ %i.sf, %.lr.ph142.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv216.i, %i.bj   ; 2 uses
  br i1 %.not.i80, label %.lr.ph135.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.sg = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre.i
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !39
  br label %.lr.ph135.us.i

.lr.ph135.us.i:                                   ; preds = %bb.au, %bb.at
  %i.si = phi fast float [ %i.sh, %bb.au ], [ 0.000000e+00, %bb.at ] ; 4 uses
  %i.sj = trunc nsw i64 %indvars.iv216.i to i32
  %factor.op.mul.reass140.us.i = mul i32 %factor.op.mul86.i, %i.sj
  %i.sk = sext i32 %factor.op.mul.reass140.us.i to i64
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.sk
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us148.i, %.lr.ph135.us.i
  %indvars.iv211.i = phi i64 [ 0, %.lr.ph135.us.i ], [ %indvars.iv.next212.i, %.split.us148.i ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv211.i ; 5 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.rs ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.ru ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.rw ; 2 uses
  %i.sr = load float, ptr %i.sn, align 4, !tbaa !39
  %i.ss = load float, ptr %i.so, align 4, !tbaa !39 ; 2 uses
  %i.st = fadd fast float %i.ss, %i.sr
  %i.su = load float, ptr %i.sp, align 4, !tbaa !39 ; 2 uses
  %i.sv = fadd fast float %i.st, %i.su            ; 2 uses
  %i.sw = fsub fast float %i.ss, %i.su
  %i.sx = load float, ptr %i.sq, align 4, !tbaa !39
  %i.sy = fadd fast float %i.sw, %i.sx            ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.ry ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.ry ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.ry ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.ry ; 2 uses
  %i.td = load float, ptr %i.sz, align 4, !tbaa !39
  %i.te = load float, ptr %i.ta, align 4, !tbaa !39 ; 2 uses
  %i.tf = fadd fast float %i.te, %i.td
  %i.tg = load float, ptr %i.tb, align 4, !tbaa !39 ; 2 uses
  %i.th = fadd fast float %i.tf, %i.tg            ; 2 uses
  %i.ti = fsub fast float %i.te, %i.tg
  %i.tj = load float, ptr %i.tc, align 4, !tbaa !39
  %i.tk = fadd fast float %i.ti, %i.tj            ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.ry ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.ry ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ry ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.ry ; 2 uses
  %i.tp = load float, ptr %i.tl, align 4, !tbaa !39
  %i.tq = load float, ptr %i.tm, align 4, !tbaa !39 ; 2 uses
  %i.tr = fadd fast float %i.tq, %i.tp
  %i.ts = load float, ptr %i.tn, align 4, !tbaa !39 ; 2 uses
  %i.tt = fadd fast float %i.tr, %i.ts            ; 3 uses
  %i.tu = fsub fast float %i.tq, %i.ts
  %i.tv = load float, ptr %i.to, align 4, !tbaa !39
  %i.tw = fadd fast float %i.tu, %i.tv            ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.ry
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.ry
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.ry
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.ry
  %i.ub = load float, ptr %i.tx, align 4, !tbaa !39
  %i.uc = load float, ptr %i.ty, align 4, !tbaa !39 ; 2 uses
  %i.ud = load float, ptr %i.tz, align 4, !tbaa !39 ; 2 uses
  %i.ue = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uf = trunc i64 %indvars.iv211.i to i32
  %i.ug = add i32 %.044156, %i.uf                 ; 2 uses
  %i.uh = sdiv i32 %i.ug, %i.cf
  %i.ui = srem i32 %i.ug, %i.cf
  %i.uj = shl nsw i32 %i.uh, 1                    ; 4 uses
  %i.uk = sext i32 %i.uj to i64
  %.reass138.us.i = mul i64 %factor.op.mul137.us.i, %i.uk
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.reass138.us.i
  %i.um = shl nsw i32 %i.ui, 1                    ; 2 uses
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.un ; 7 uses
  %i.up = or disjoint i32 %i.um, 1
  %i.uq = icmp slt i32 %i.up, %i.by
  %.fr.us.i = freeze i1 %i.uq
  %.not491.us.us.i = icmp slt i32 %i.uj, %i.bz    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not491.us.us.i, label %bb.av, label %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not491.us.us.i, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.av:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i
  %i.ur = fadd fast float %i.th, %i.si
  %i.us = fadd fast float %i.ur, %i.sv
  %i.ut = fadd fast float %i.us, %i.tt
  store float %i.ut, ptr %i.uo, align 4, !tbaa !39
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rz
  br label %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i

_ZN4ncnn3MatD2Ev.exit.split.us149.1.i:            ; preds = %bb.av, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i
  %.1.us147.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i ], [ %i.uu, %bb.av ]
  %i.uv = or disjoint i32 %i.uj, 1
  %.not491.us146.1.i = icmp slt i32 %i.uv, %i.bz
  br i1 %.not491.us146.1.i, label %bb.aw, label %.split.us148.i

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %i.uw = fadd fast float %i.tk, %i.si
  %i.ux = fadd fast float %i.uw, %i.sy
  %i.uy = fadd fast float %i.ux, %i.tw
  store float %i.uy, ptr %.1.us147.i, align 4, !tbaa !39
  br label %.split.us148.i

.split.us148.i:                                   ; preds = %bb.ay, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aw, %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count214.i
  br i1 %exitcond215.not.i, label %._crit_edge136.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1052

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.uz = fadd fast float %i.th, %i.si            ; 2 uses
  %i.va = fadd fast float %i.uz, %i.sv
  %i.vb = fadd fast float %i.va, %i.tt
  store float %i.vb, ptr %i.uo, align 4, !tbaa !39
  %i.vc = fsub fast float %i.uz, %i.tt
  %i.vd = fadd fast float %i.vc, %i.ub
  %i.ve = fadd fast float %i.vd, %i.uc
  %i.vf = fadd fast float %i.ve, %i.ud
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  store float %i.vf, ptr %i.vg, align 4, !tbaa !39
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rz
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ax, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.vh, %bb.ax ] ; 2 uses
  %i.vi = or disjoint i32 %i.uj, 1
  %.not491.us.us.1.i = icmp slt i32 %i.vi, %i.bz
  br i1 %.not491.us.us.1.i, label %bb.ay, label %.split.us148.i

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.vj = fadd fast float %i.tk, %i.si            ; 2 uses
  %i.vk = fadd fast float %i.vj, %i.sy
  %i.vl = fadd fast float %i.vk, %i.tw
  store float %i.vl, ptr %.1.us.us.i, align 4, !tbaa !39
  %i.vm = fadd fast float %i.vj, %i.uc
  %i.vn = fadd fast float %i.tw, %i.ud
  %i.vo = fsub fast float %i.vm, %i.vn
  %i.vp = fadd fast float %i.vo, %i.ue
  %i.vq = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store float %i.vp, ptr %i.vq, align 4, !tbaa !39
  br label %.split.us148.i

._crit_edge136.us.i:                              ; preds = %.split.us148.i
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond220.not.i = icmp eq i64 %indvars.iv.next217.i, %i.bm
  br i1 %exitcond220.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.at, !llvm.loop !1053

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.vr = phi i32 [ %i.xk, %.noexc ], [ %.pre167, %.noexc.preheader ] ; 2 uses
  %i.vs = phi i32 [ %i.xm, %.noexc ], [ %i.bw, %.noexc.preheader ]
  %.0150 = phi i32 [ %i.xl, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.vt = sub nsw i32 %i.vs, %.0150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.vr, i32 %i.vt)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.vu = load i32, ptr %3, align 4, !tbaa !67
  %i.vv = sdiv i32 %i.au, %i.vu
  %i.vw = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1054
  %i.vx = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1054
  %i.vy = sext i32 %i.vv to i64
  %i.vz = mul i64 %i.vx, %i.vy
  %i.wa = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1054 ; 3 uses
  %i.wb = mul i64 %i.vz, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.wb
  %i.wd = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !1054
  %i.we = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !1054
  %i.wf = sdiv i32 %.0150, %i.vr
  %i.wg = sext i32 %i.wf to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !1057
  store i64 %i.wa, ptr %i.u, align 8, !tbaa !65, !alias.scope !1057
  store i32 %i.wd, ptr %i.v, align 8, !tbaa !66, !alias.scope !1057
  store ptr %i.we, ptr %i.w, align 8, !tbaa !17, !alias.scope !1057
  store i32 2, ptr %i.x, align 8, !tbaa !289, !alias.scope !1057
  %16 = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !1054
  %i.wh = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1054
  %i.wi = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1054
  %i.wj = sext i32 %i.wi to i64
  %i.wk = sext i32 %i.wh to i64
  %i.wl = mul nsw i64 %i.wk, %i.wj                ; 2 uses
  %i.wm = mul i64 %i.wa, %i.wl
  %i.wn = mul i64 %i.wm, %i.wg
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wn
  store ptr %i.wo, ptr %14, align 8, !tbaa !18, !alias.scope !1057
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wp = shufflevector <4 x i32> %17, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.wp, ptr %i.y, align 4, !tbaa !67, !alias.scope !1057
  store i64 %i.wl, ptr %i.z, align 8, !tbaa !20, !alias.scope !1057
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.wq = load i32, ptr %7, align 4, !tbaa !67
  %i.wr = sdiv i32 %.044156, %i.wq
  %i.ws = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1060
  %i.wt = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !1060
  %i.wu = sext i32 %i.wr to i64
  %i.wv = mul i64 %i.wt, %i.wu
  %i.ww = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !1060 ; 3 uses
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wx
  %i.wz = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !1060
  %i.xa = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !1060
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.ww, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.wz, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.xa, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !289
  %18 = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !1060
  %i.xb = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !1060
  %i.xc = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !1060
  %i.xd = sext i32 %i.xc to i64
  %i.xe = sext i32 %i.xb to i64
  %i.xf = mul nsw i64 %i.xe, %i.xd                ; 2 uses
  %i.xg = mul i64 %i.ww, %i.xf
  %i.xh = mul i64 %i.xg, %i.wg
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xh
  store ptr %i.xi, ptr %15, align 8, !tbaa !18
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xj = shufflevector <4 x i32> %19, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.xj, ptr %i.al, align 4, !tbaa !67
  store i64 %i.xf, ptr %i.am, align 8, !tbaa !20, !alias.scope !1063
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bc, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0150, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.xk = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.xl = add nsw i32 %i.xk, %.0150               ; 2 uses
  %i.xm = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.xn = icmp slt i32 %i.xl, %i.xm
  br i1 %i.xn, label %.noexc, label %._crit_edge, !llvm.loop !1066

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge136.us.i, %.lr.ph142.i, %.preheader.i
  %i.xo = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.xp = add nsw i32 %i.xo, %.044156             ; 2 uses
  %i.xq = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.xr = icmp slt i32 %i.xp, %i.xq
  br i1 %i.xr, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1067

._crit_edge162:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge162, %bb.a
  ret void

bb.ba:                                            ; preds = %bb.c
  %i.xs = landingpad { ptr, i32 }
          catch ptr null
  %i.xt = extractvalue { ptr, i32 } %i.xs, 0
  call void @__clang_call_terminate(ptr %i.xt) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 65) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %.preheader449.lr.ph, label %.preheader444

.preheader449.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 11
  %i.g = icmp eq i32 %5, 0                        ; 6 uses
  %i.h = icmp sgt i32 %6, 0                       ; 5 uses
  %i.i = add i32 %4, -12                          ; 2 uses
  %i.j = urem i32 %i.i, 12
  %i.k = sub nuw i32 %i.i, %i.j
  %i.l = add i32 %i.k, 12
  %i.m = add i32 %6, -1                           ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add nsw i32 %4, -1                       ; 2 uses
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = zext nneg i32 %3 to i64
  %i.u = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %6, 1
  %i.v = icmp eq i32 %6, 1
  %unroll_iter = and i32 %6, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1683 = trunc i32 %6 to i1
  %xtraiter1684 = and i32 %6, 1
  %i.w = icmp eq i32 %i.m, 0
  %unroll_iter1688 = and i32 %6, 2147483646
  %lcmp.mod1685.not = icmp eq i32 %xtraiter1684, 0
  %lcmp.mod1687 = trunc i32 %6 to i1
  br label %.preheader449

.preheader449:                                    ; preds = %.preheader449.lr.ph, %bb.b
  %indvars.iv1101 = phi i64 [ 0, %.preheader449.lr.ph ], [ %indvars.iv.next1102, %bb.b ] ; 2 uses
  %.0625578 = phi ptr [ %.0.val, %.preheader449.lr.ph ], [ %.6631.lcssa, %bb.b ]
  %i.x = mul nsw i64 %indvars.iv1101, %i.u
  br label %bb.c

.preheader444.loopexit:                           ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv.next1102 to i32
  br label %.preheader444

.preheader444:                                    ; preds = %.preheader444.loopexit, %bb.a
  %.0635.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader444.loopexit ] ; 3 uses
  %.0625.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6631.lcssa, %.preheader444.loopexit ] ; 2 uses
  %i.z = or disjoint i32 %.0635.lcssa, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.preheader443.lr.ph, label %.preheader438

.preheader443.lr.ph:                              ; preds = %.preheader444
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = icmp sgt i32 %4, 11
  %i.ag = icmp eq i32 %5, 0                       ; 6 uses
  %i.ah = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ai = add i32 %4, -12                         ; 2 uses
  %i.aj = urem i32 %i.ai, 12
  %i.ak = sub nuw i32 %i.ai, %i.aj
  %i.al = add i32 %i.ak, 12
  %i.am = add i32 %6, -1                          ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = shl nuw nsw i64 %i.an, 4
  %i.aq = shl nuw nsw i64 %i.an, 3
  %i.ar = add nsw i32 %4, -1                      ; 2 uses
  %i.as = shl nuw nsw i64 %i.an, 2
  %i.at = zext nneg i32 %.0635.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count1121 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -3
  %xtraiter1690 = and i32 %6, 1
  %i.aw = icmp eq i32 %6, 1
  %unroll_iter1695 = and i32 %6, 2147483646
  %lcmp.mod1691.not = icmp eq i32 %xtraiter1690, 0
  %lcmp.mod1694 = trunc i32 %6 to i1
  %xtraiter1697 = and i32 %6, 3                   ; 3 uses
  %i.ax = icmp ult i32 %i.am, 3
  %unroll_iter1701 = and i32 %6, 2147483644
  %lcmp.mod1698.not = icmp eq i32 %xtraiter1697, 0
  %lcmp.mod1700 = icmp ne i32 %xtraiter1697, 0
  br label %.preheader443

bb.b:                                             ; preds = %._crit_edge568
  %indvars.iv.next1102 = add nuw nsw i64 %indvars.iv1101, 8 ; 3 uses
  %i.ay = or disjoint i64 %indvars.iv.next1102, 7
  %i.az = icmp samesign ult i64 %i.ay, %i.t
  br i1 %i.az, label %.preheader449, label %.preheader444.loopexit, !llvm.loop !1068

bb.c:                                             ; preds = %.preheader449, %._crit_edge568
  %indvars.iv = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next, %._crit_edge568 ] ; 3 uses
  %.1626576 = phi ptr [ %.0625578, %.preheader449 ], [ %.6631.lcssa, %._crit_edge568 ] ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !18
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %indvars.iv, %i.bc
  %i.be = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.x ; 7 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !18
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !75
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv, %i.bk
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !65
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn ; 2 uses
  br i1 %i.f, label %.lr.ph481, label %.preheader448

.preheader448:                                    ; preds = %._crit_edge, %bb.c
  %.0652.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %._crit_edge ] ; 3 uses
  %.0642.lcssa = phi ptr [ %i.bo, %bb.c ], [ %.1643.lcssa, %._crit_edge ] ; 2 uses
  %.2627.lcssa = phi ptr [ %.1626576, %bb.c ], [ %i.fw, %._crit_edge ] ; 2 uses
  %i.bp = add nuw nsw i32 %.0652.lcssa, 7
  %i.bq = icmp slt i32 %i.bp, %4
  br i1 %i.bq, label %.lr.ph511, label %.preheader447

.lr.ph481:                                        ; preds = %bb.c, %._crit_edge
  %.2627479 = phi ptr [ %i.fw, %._crit_edge ], [ %.1626576, %bb.c ] ; 25 uses
  %.0642478 = phi ptr [ %.1643.lcssa, %._crit_edge ], [ %i.bo, %bb.c ] ; 2 uses
  %.0652477 = phi i32 [ %i.fx, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph481
  %i.br = load <8 x float>, ptr %.2627479, align 32, !tbaa !316
  %i.bs = getelementptr inbounds nuw i8, ptr %.2627479, i64 32
  %i.bt = load <8 x float>, ptr %i.bs, align 32, !tbaa !316
  %i.bu = getelementptr inbounds nuw i8, ptr %.2627479, i64 64
  %i.bv = load <8 x float>, ptr %i.bu, align 32, !tbaa !316
  %i.bw = getelementptr inbounds nuw i8, ptr %.2627479, i64 96
  %i.bx = load <8 x float>, ptr %i.bw, align 32, !tbaa !316
  %i.by = getelementptr inbounds nuw i8, ptr %.2627479, i64 128
  %i.bz = load <8 x float>, ptr %i.by, align 32, !tbaa !316
  %i.ca = getelementptr inbounds nuw i8, ptr %.2627479, i64 160
  %i.cb = load <8 x float>, ptr %i.ca, align 32, !tbaa !316
  %i.cc = getelementptr inbounds nuw i8, ptr %.2627479, i64 192
  %i.cd = load <8 x float>, ptr %i.cc, align 32, !tbaa !316
  %i.ce = getelementptr inbounds nuw i8, ptr %.2627479, i64 224
  %i.cf = load <8 x float>, ptr %i.ce, align 32, !tbaa !316
  %i.cg = getelementptr inbounds nuw i8, ptr %.2627479, i64 256
  %i.ch = load <8 x float>, ptr %i.cg, align 32, !tbaa !316
  %i.ci = getelementptr inbounds nuw i8, ptr %.2627479, i64 288
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !316
  %i.ck = getelementptr inbounds nuw i8, ptr %.2627479, i64 320
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !316
  %i.cm = getelementptr inbounds nuw i8, ptr %.2627479, i64 352
  %i.cn = load <8 x float>, ptr %i.cm, align 32, !tbaa !316
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph481, %bb.d
  %.0329 = phi nsz <8 x float> [ %i.cl, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0327 = phi nsz <8 x float> [ %i.cj, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0320 = phi nsz <8 x float> [ %i.ch, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %i.aoo
  %i.bck = fmul fast float %i.asp, f0x3FB504F3
  %i.bcl = fmul fast float %i.avb, f0x3F3504F3
  %i.bcm = fsub fast float %i.bck, %i.bcl         ; 2 uses
  %i.bcn = fmul fast float %i.atv, 2.000000e+00
  %i.bco = fsub fast float %i.awh, %i.bcn         ; 2 uses
  %i.bcp = fmul fast float %i.avb, f0x3FB504F3
  %i.bcq = fmul fast float %i.asp, f0x3F3504F3
  %i.bcr = fsub fast float %i.bcp, %i.bcq         ; 2 uses
  %i.bcs = fmul fast float %i.atv, 5.000000e-01
  %i.bct = fsub fast float %i.awh, %i.bcs         ; 2 uses
  %.neg.us.5 = fmul fast float %i.atv, -2.500000e+00
  %i.bcu = fadd fast float %i.arj, %.neg.us.5
  %i.bcv = fadd fast float %i.bcu, %i.awh
  store float %i.bcv, ptr %i.bce, align 4, !tbaa !39
  %i.bcw = fsub fast float %i.bco, %i.bcm
  store float %i.bcw, ptr %i.bcf, align 4, !tbaa !39
  %i.bcx = fadd fast float %i.bco, %i.bcm
  store float %i.bcx, ptr %i.bcg, align 4, !tbaa !39
  %i.bcy = fadd fast float %i.bct, %i.bcr
  store float %i.bcy, ptr %i.bch, align 4, !tbaa !39
  %i.bcz = fsub fast float %i.bct, %i.bcr
  store float %i.bcz, ptr %i.bci, align 4, !tbaa !39
  %.neg619.us.5 = fmul fast float %i.avb, -2.500000e+00
  %i.bda = fadd fast float %i.asp, %.neg619.us.5
  %i.bdb = fadd fast float %i.bda, %i.axn
  store float %i.bdb, ptr %i.bcj, align 4, !tbaa !39
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count723
  br i1 %exitcond724.not, label %._crit_edge.us680, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1169

._crit_edge.us680:                                ; preds = %bb.fo
  %indvars.iv.next726 = add nsw i64 %indvars.iv725, 1 ; 2 uses
  %i.bdc = icmp slt i64 %indvars.iv.next726, %i.apd
  br i1 %i.bdc, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge677, !llvm.loop !1170

._crit_edge677:                                   ; preds = %._crit_edge.us680, %.lr.ph676, %._crit_edge654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1171 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1171 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !1171
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1171
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1171
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1171 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1171
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1171
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1171
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1171
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1171
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1171
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1171
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1171
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1171
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !1171
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1171
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1171
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !1171 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !1171
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1171
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1174
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1174
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1174 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1174
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1174
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1174
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1174
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1174
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !1177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [8 x float]]], align 32 ; 27 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.ey

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 %i.h, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 1, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !67
  %i.l = load i32, ptr %i.b, align 4, !tbaa !67   ; 3 uses
  %.not138 = icmp sgt i32 %i.l, %i.k
  br i1 %.not138, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 320
end_hunk_2
begin_hunk_3_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.bah, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.bci, %bb.dz ] ; 6 uses
  %i.bcj = or disjoint i32 %i.bac, 1
  %.not763.us.1.i = icmp slt i32 %i.bcj, %i.cx
  br i1 %.not763.us.1.i, label %bb.eb, label %bb.ei

bb.eb:                                            ; preds = %bb.ea
  %i.bck = fadd fast float %i.awv, %i.avx         ; 2 uses
  %i.bcl = fadd fast float %i.ayr, %i.axt         ; 2 uses
  %i.bcm = fsub fast float %i.avx, %i.awv         ; 2 uses
  %i.bcn = fsub fast float %i.axt, %i.ayr         ; 2 uses
  %i.bco = fadd fast float %i.auz, %i.aug
  %i.bcp = fadd fast float %i.bco, %i.ava
  %i.bcq = fadd fast float %i.bck, %i.bcp
  %i.bcr = fadd fast float %i.bcq, %i.bcl
  %i.bcs = fmul fast float %i.bck, 5.000000e-01
  %i.bct = fadd fast float %i.aug, %i.bcs
  %i.bcu = fmul fast float %i.bcl, 2.000000e+00
  %i.bcv = fadd fast float %i.bcu, %i.bct
  %i.bcw = fadd fast float %i.aug, %i.azp
  %i.bcx = fmul fast float %i.bcm, f0x3EB504F3
  %i.bcy = fadd fast float %i.bcx, %i.bcw
  %i.bcz = fmul fast float %i.bcn, f0x403504F3
  %i.bda = fadd fast float %i.bcy, %i.bcz
  store float %i.bcr, ptr %.1.us.i, align 4, !tbaa !39
  br i1 %i.baj, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.bdb = fmul fast float %i.bcm, f0x3F3504F3
  %i.bdc = fadd fast float %i.aug, %i.bdb
  %i.bdd = fmul fast float %i.bcn, f0x3FB504F3
  %i.bde = fadd fast float %i.bdd, %i.bdc
  %i.bdf = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store float %i.bde, ptr %i.bdf, align 4, !tbaa !39
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  br i1 %i.bal, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.bdg = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store float %i.bcv, ptr %i.bdg, align 4, !tbaa !39
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  br i1 %i.ban, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bdh = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store float %i.bda, ptr %i.bdh, align 4, !tbaa !39
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.bdi = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.atx
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ea
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.ea ], [ %i.bdi, %bb.eh ] ; 6 uses
  %i.bdj = or disjoint i32 %i.bac, 2
  %.not763.us.2.i = icmp slt i32 %i.bdj, %i.cx
  br i1 %.not763.us.2.i, label %bb.ej, label %bb.eq

bb.ej:                                            ; preds = %bb.ei
  %i.bdk = fadd fast float %i.awy, %i.awa         ; 2 uses
  %i.bdl = fadd fast float %i.ayu, %i.axw         ; 2 uses
  %i.bdm = fsub fast float %i.awa, %i.awy         ; 2 uses
  %i.bdn = fsub fast float %i.axw, %i.ayu         ; 2 uses
  %i.bdo = fadd fast float %i.avb, %i.aug
  %i.bdp = fadd fast float %i.bdo, %i.avc
  %i.bdq = fadd fast float %i.bdk, %i.bdp
  %i.bdr = fadd fast float %i.bdq, %i.bdl
  %i.bds = fmul fast float %i.bdk, 5.000000e-01
  %i.bdt = fadd fast float %i.aug, %i.bds
  %i.bdu = fmul fast float %i.bdl, 2.000000e+00
  %i.bdv = fadd fast float %i.bdu, %i.bdt
  %i.bdw = fadd fast float %i.aug, %i.azs
  %i.bdx = fmul fast float %i.bdm, f0x3EB504F3
  %i.bdy = fadd fast float %i.bdx, %i.bdw
  %i.bdz = fmul fast float %i.bdn, f0x403504F3
  %i.bea = fadd fast float %i.bdy, %i.bdz
  store float %i.bdr, ptr %.1.us.1.i, align 4, !tbaa !39
  br i1 %i.baj, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.beb = fmul fast float %i.bdm, f0x3F3504F3
  %i.bec = fadd fast float %i.aug, %i.beb
  %i.bed = fmul fast float %i.bdn, f0x3FB504F3
  %i.bee = fadd fast float %i.bed, %i.bec
  %i.bef = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store float %i.bee, ptr %i.bef, align 4, !tbaa !39
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br i1 %i.bal, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.beg = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store float %i.bdv, ptr %i.beg, align 4, !tbaa !39
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  br i1 %i.ban, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.beh = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store float %i.bea, ptr %i.beh, align 4, !tbaa !39
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.bei = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.atx
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.ei
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.ei ], [ %i.bei, %bb.ep ] ; 4 uses
  %i.bej = or disjoint i32 %i.bac, 3
  %.not763.us.3.i = icmp slt i32 %i.bej, %i.cx
  br i1 %.not763.us.3.i, label %bb.er, label %bb.ex

bb.er:                                            ; preds = %bb.eq
  %i.bek = fadd fast float %i.axd, %i.awf         ; 2 uses
  %i.bel = fadd fast float %i.ayz, %i.ayb         ; 2 uses
  %i.bem = fsub fast float %i.awf, %i.axd         ; 2 uses
  %i.ben = fsub fast float %i.ayb, %i.ayz         ; 2 uses
  %i.beo = fadd fast float %i.avh, %i.aug
  %i.bep = fadd fast float %i.beo, %i.bek
  %i.beq = fadd fast float %i.bep, %i.bel
  %i.ber = fmul fast float %i.bek, 5.000000e-01
  %i.bes = fadd fast float %i.aug, %i.ber
  %i.bet = fmul fast float %i.bel, 2.000000e+00
  %i.beu = fadd fast float %i.bet, %i.bes
  %i.bev = fadd fast float %i.aug, %i.azx
  %i.bew = fmul fast float %i.bem, f0x3EB504F3
  %i.bex = fadd fast float %i.bew, %i.bev
  %i.bey = fmul fast float %i.ben, f0x403504F3
  %i.bez = fadd fast float %i.bex, %i.bey
  store float %i.beq, ptr %.1.us.2.i, align 4, !tbaa !39
  br i1 %i.baj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.bfa = fmul fast float %i.bem, f0x3F3504F3
  %i.bfb = fadd fast float %i.aug, %i.bfa
  %i.bfc = fmul fast float %i.ben, f0x3FB504F3
  %i.bfd = fadd fast float %i.bfc, %i.bfb
  %i.bfe = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store float %i.bfd, ptr %i.bfe, align 4, !tbaa !39
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %i.bal, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.bff = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store float %i.beu, ptr %i.bff, align 4, !tbaa !39
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  br i1 %i.ban, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.bfg = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store float %i.bez, ptr %i.bfg, align 4, !tbaa !39
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eq
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %exitcond287.not.i = icmp eq i64 %indvars.iv.next284.i, %wide.trip.count286.i
  br i1 %exitcond287.not.i, label %._crit_edge212.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1202

._crit_edge212.us.i:                              ; preds = %bb.ex
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next289.i, %i.ck
  br i1 %exitcond292.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.dr, !llvm.loop !1203

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bfh = phi i32 [ %i.bha, %.noexc ], [ %.pre147, %.noexc.preheader ] ; 2 uses
  %i.bfi = phi i32 [ %i.bhc, %.noexc ], [ %i.cu, %.noexc.preheader ]
  %.0130 = phi i32 [ %i.bhb, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bfj = sub nsw i32 %i.bfi, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bfh, i32 %i.bfj)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.bfk = load i32, ptr %3, align 4, !tbaa !67
  %i.bfl = sdiv i32 %i.bs, %i.bfk
  %i.bfm = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1204
  %i.bfn = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !1204
  %i.bfo = sext i32 %i.bfl to i64
  %i.bfp = mul i64 %i.bfn, %i.bfo
  %i.bfq = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1204 ; 3 uses
  %i.bfr = mul i64 %i.bfp, %i.bfq
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfm, i64 %i.bfr
  %i.bft = load i32, ptr %i.s, align 8, !tbaa !66, !noalias !1204
  %i.bfu = load ptr, ptr %i.t, align 8, !tbaa !17, !noalias !1204
  %i.bfv = sdiv i32 %.0130, %i.bfh
  %i.bfw = sext i32 %i.bfv to i64                 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !11, !alias.scope !1207
  store i64 %i.bfq, ptr %i.v, align 8, !tbaa !65, !alias.scope !1207
  store i32 %i.bft, ptr %i.w, align 8, !tbaa !66, !alias.scope !1207
  store ptr %i.bfu, ptr %i.x, align 8, !tbaa !17, !alias.scope !1207
  store i32 2, ptr %i.y, align 8, !tbaa !289, !alias.scope !1207
  %16 = load <2 x i32>, ptr %i.o, align 4, !tbaa !67, !noalias !1204
  %i.bfx = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1204
  %i.bfy = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1204
  %i.bfz = sext i32 %i.bfy to i64
  %i.bga = sext i32 %i.bfx to i64
  %i.bgb = mul nsw i64 %i.bga, %i.bfz             ; 2 uses
  %i.bgc = mul i64 %i.bfq, %i.bgb
  %i.bgd = mul i64 %i.bgc, %i.bfw
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %i.bgd
  store ptr %i.bge, ptr %14, align 8, !tbaa !18, !alias.scope !1207
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgf = shufflevector <4 x i32> %17, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bgf, ptr %i.z, align 4, !tbaa !67, !alias.scope !1207
  store i64 %i.bgb, ptr %i.aa, align 8, !tbaa !20, !alias.scope !1207
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.bgg = load i32, ptr %7, align 4, !tbaa !67
  %i.bgh = sdiv i32 %.044136, %i.bgg
  %i.bgi = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1210
  %i.bgj = load i64, ptr %i.ad, align 8, !tbaa !20, !noalias !1210
  %i.bgk = sext i32 %i.bgh to i64
  %i.bgl = mul i64 %i.bgj, %i.bgk
  %i.bgm = load i64, ptr %i.ae, align 8, !tbaa !65, !noalias !1210 ; 3 uses
  %i.bgn = mul i64 %i.bgl, %i.bgm
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgi, i64 %i.bgn
  %i.bgp = load i32, ptr %i.af, align 8, !tbaa !66, !noalias !1210
  %i.bgq = load ptr, ptr %i.ag, align 8, !tbaa !17, !noalias !1210
  store ptr null, ptr %i.ah, align 8, !tbaa !11
  store i64 %i.bgm, ptr %i.ai, align 8, !tbaa !65
  store i32 %i.bgp, ptr %i.aj, align 8, !tbaa !66
  store ptr %i.bgq, ptr %i.ak, align 8, !tbaa !17
  store i32 2, ptr %i.al, align 8, !tbaa !289
  %18 = load <2 x i32>, ptr %i.ab, align 4, !tbaa !67, !noalias !1210
  %i.bgr = load i32, ptr %i.ac, align 8, !tbaa !76, !noalias !1210
  %i.bgs = load i32, ptr %i.ab, align 4, !tbaa !75, !noalias !1210
  %i.bgt = sext i32 %i.bgs to i64
  %i.bgu = sext i32 %i.bgr to i64
  %i.bgv = mul nsw i64 %i.bgu, %i.bgt             ; 2 uses
  %i.bgw = mul i64 %i.bgm, %i.bgv
  %i.bgx = mul i64 %i.bgw, %i.bfw
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgo, i64 %i.bgx
  store ptr %i.bgy, ptr %15, align 8, !tbaa !18
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgz = shufflevector <4 x i32> %19, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bgz, ptr %i.am, align 4, !tbaa !67
  store i64 %i.bgv, ptr %i.an, align 8, !tbaa !20, !alias.scope !1213
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.ca, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.bha = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.bhb = add nsw i32 %i.bha, %.0130             ; 2 uses
  %i.bhc = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.bhd = icmp slt i32 %i.bhb, %i.bhc
  br i1 %i.bhd, label %.noexc, label %._crit_edge, !llvm.loop !1216

_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge212.us.i, %.lr.ph218.i, %.preheader.i
  %i.bhe = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.bhf = add nsw i32 %i.bhe, %.044136           ; 2 uses
  %i.bhg = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.bhh = icmp slt i32 %i.bhf, %i.bhg
  br i1 %i.bhh, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1217

._crit_edge142:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ey

bb.ey:                                            ; preds = %._crit_edge142, %bb.a
  ret void

bb.ez:                                            ; preds = %bb.c
  %i.bhi = landingpad { ptr, i32 }
          catch ptr null
  %i.bhj = extractvalue { ptr, i32 } %i.bhi, 0
  call void @__clang_call_terminate(ptr %i.bhj) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ew

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not339 = icmp sgt i32 %i.k, %i.j
  br i1 %.not339, label %._crit_edge342, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge342

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.aud, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0192340 = phi i32 [ %i.aue, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0192340, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread322.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.aua, %.thread322.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread322.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1218
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1218
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1218
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1218 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax ; 24 uses
  %i.az = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %13, align 4, !tbaa !67   ; 91 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 18 uses
  %i.be = or disjoint i32 %i.av, 2                ; 18 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 18 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 18 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 18 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
  %i.bj = icmp slt i32 %i.aq, %i.az
  br i1 %i.bj, label %bb.c, label %.thread322

bb.c:                                             ; preds = %.noexc
  switch i32 %i.ab, label %.thread322 [
    i32 8, label %bb.d
    i32 4, label %bb.n
    i32 1, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  %i.bk = load <8 x float>, ptr %i.ay, align 32, !tbaa !316 ; 2 uses
  %i.bl = icmp slt i32 %i.bd, %i.ba
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bn = load <8 x float>, ptr %i.bm, align 32, !tbaa !316
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0309 = phi nsz <8 x float> [ %i.bn, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bo = icmp slt i32 %i.be, %i.ba
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bq = load <8 x float>, ptr %i.bp, align 32, !tbaa !316
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0303 = phi nsz <8 x float> [ %i.bq, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.br = icmp slt i32 %i.bf, %i.ba
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.bt = load <8 x float>, ptr %i.bs, align 32, !tbaa !316
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0297 = phi nsz <8 x float> [ %i.bt, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.bu = icmp slt i32 %i.bg, %i.ba
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bw = load <8 x float>, ptr %i.bv, align 32, !tbaa !316
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0293 = phi nsz <8 x float> [ %i.bw, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.bx = icmp slt i32 %i.bh, %i.ba
  br i1 %i.bx, label %bb.m, label %.thread322

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.bz = load <8 x float>, ptr %i.by, align 32, !tbaa !316
  br label %.thread322

bb.n:                                             ; preds = %bb.c
  %i.ca = load i64, ptr %14, align 8, !tbaa !295
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca ; 6 uses
  %i.cc = load <4 x float>, ptr %i.ay, align 16, !tbaa !316
  %i.cd = load <4 x float>, ptr %i.cb, align 16, !tbaa !316
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cf = icmp slt i32 %i.bd, %i.ba
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
end_hunk_3
begin_hunk_4_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  store float %i.aaw, ptr %.0619946.us, align 4, !tbaa !39
  %i.aax = fsub fast float %i.aaf, %i.aaj
  store float %i.aax, ptr %.0618947.us, align 4, !tbaa !39
  %i.aay = extractelement <2 x float> %i.aan, i64 0 ; 2 uses
  %i.aaz = extractelement <2 x float> %i.aan, i64 1 ; 2 uses
  %i.aba = fadd fast float %i.aaz, %i.aay
  store float %i.aba, ptr %.0617948.us, align 4, !tbaa !39
  %i.abb = fsub fast float %i.aaz, %i.aay
  store float %i.abb, ptr %.0616949.us, align 4, !tbaa !39
  %i.abc = fsub fast float %i.zp, %i.zz
  %foldExtExtBinop = fsub fast <2 x float> %i.zr, %i.zs
  %i.abd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.abe = fmul fast float %i.abd, 5.250000e+00
  %i.abf = fadd fast float %i.abc, %i.abe
  store float %i.abf, ptr %.0615950.us, align 4, !tbaa !39
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.0622943.us, i64 %i.uz
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.0621944.us, i64 %i.uz
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.0620945.us, i64 %i.uz
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.0619946.us, i64 %i.uz
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.0618947.us, i64 %i.uz
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.0617948.us, i64 %i.uz
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.0616949.us, i64 %i.uz
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.0615950.us, i64 %i.uz
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 1 ; 2 uses
  %exitcond1006.not = icmp eq i64 %indvars.iv.next1004, 8
  br i1 %exitcond1006.not, label %bb.bh, label %bb.bg, !llvm.loop !1241

bb.bh:                                            ; preds = %bb.bg
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1 ; 2 uses
  %exitcond1011.not = icmp eq i64 %indvars.iv.next1008, %wide.trip.count1010
  br i1 %exitcond1011.not, label %._crit_edge.us961, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1242

._crit_edge.us961:                                ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 1 ; 2 uses
  %i.abo = icmp slt i64 %indvars.iv.next1013, %i.vo
  br i1 %i.abo, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge958, !llvm.loop !1243

._crit_edge958:                                   ; preds = %._crit_edge.us961, %.lr.ph957, %._crit_edge933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1244 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1244 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !1244
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1244
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1244
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1244 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1244
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1244
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1244
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1244
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1244
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1244
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1244
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1244
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1244
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !1244
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1244
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1244
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !1244 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !1244
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1244
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1247
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1247
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1247 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1247
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1247
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1247
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1247
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1247
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !1250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 64, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x [8 x [8 x float]]], align 32 ; 9 uses
  %i.b = alloca [6 x [8 x [4 x float]]], align 16 ; 9 uses
  %i.c = alloca [6 x [8 x [2 x float]]], align 16 ; 9 uses
  %i.d = alloca [6 x [8 x float]], align 16       ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.dc

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 %i.k, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 1, ptr %i.g, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 0, ptr %i.h, align 4, !tbaa !67
  %i.l = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g, i32 1, i32 1)
  %i.m = load i32, ptr %i.f, align 4, !tbaa !67
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.f, align 4, !tbaa !67
  %i.o = load i32, ptr %i.e, align 4, !tbaa !67   ; 3 uses
  %.not138 = icmp sgt i32 %i.o, %i.n
  br i1 %.not138, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %i.afp = fadd fast float %i.afo, %i.afn
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv350.i
  store float %i.afp, ptr %i.afq, align 4, !tbaa !39
  %i.afr = fmul fast float %i.aex, 8.000000e+00
  %i.afs = fadd fast float %i.aet, %i.afr
  %i.aft = fmul fast float %i.afb, 4.000000e+00
  %i.afu = fadd fast float %i.aft, %i.afs
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv350.i
  store float %i.afu, ptr %i.afv, align 4, !tbaa !39
  %i.afw = fmul fast float %i.aew, 1.600000e+01
  %i.afx = fadd fast float %i.aes, %i.afw
  %factor199.us.i = fmul fast float %i.afa, 2.000000e+00
  %i.afy = fadd fast float %factor199.us.i, %i.afx
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv350.i
  store float %i.afy, ptr %i.afz, align 4, !tbaa !39
  %i.aga = load float, ptr %.01013277.us.i, align 4, !tbaa !39
  %i.agb = fadd fast float %i.aet, %i.aga
  %i.agc = fmul fast float %i.aex, 3.200000e+01
  %i.agd = fadd fast float %i.agc, %i.agb
  %i.age = fadd fast float %i.agd, %i.afb
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv350.i
  store float %i.age, ptr %i.agf, align 4, !tbaa !39
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %.01020270.us.i, i64 %i.ads
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.01019271.us.i, i64 %i.ads
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %.01018272.us.i, i64 %i.ads
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.01017273.us.i, i64 %i.ads
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.01016274.us.i, i64 %i.ads
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %.01015275.us.i, i64 %i.ads
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %.01014276.us.i, i64 %i.ads
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.01013277.us.i, i64 %i.ads
  %indvars.iv.next351.i = add nuw nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %exitcond353.not.i = icmp eq i64 %indvars.iv.next351.i, 8
  br i1 %exitcond353.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.cn, !llvm.loop !1280

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.cn
  %i.ago = trunc i64 %indvars.iv358.i to i32
  %i.agp = add i32 %.044136, %i.ago               ; 2 uses
  %i.agq = sdiv i32 %i.agp, %i.dd
  %i.agr = srem i32 %i.agp, %i.dd
  %i.ags = mul nsw i32 %i.agq, 6
  %i.agt = sext i32 %i.ags to i64                 ; 2 uses
  %.reass286.us.i = mul i64 %factor.op.mul285.us.i, %i.agt
  %i.agu = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %.reass286.us.i
  %i.agv = mul nsw i32 %i.agr, 6                  ; 6 uses
  %i.agw = sext i32 %i.agv to i64
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.agw
  %i.agy = or disjoint i32 %i.agv, 1
  %i.agz = icmp slt i32 %i.agy, %i.cw
  %i.aha = add nsw i32 %i.agv, 2
  %i.ahb = icmp slt i32 %i.aha, %i.cw
  %i.ahc = add nsw i32 %i.agv, 3
  %i.ahd = icmp slt i32 %i.ahc, %i.cw
  %i.ahe = add nsw i32 %i.agv, 4
  %i.ahf = icmp slt i32 %i.ahe, %i.cw
  %i.ahg = add nsw i32 %i.agv, 5
  %i.ahh = icmp slt i32 %i.ahg, %i.cw
  %invariant.op379.i = sub nsw i64 %i.adz, %i.agt
  br label %bb.co

bb.co:                                            ; preds = %bb.da, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv354.i = phi i64 [ %indvars.iv.next355.i, %bb.da ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.01011279.us.i = phi ptr [ %.1.us.i, %bb.da ], [ %i.agx, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not1071.us.i = icmp slt i64 %indvars.iv354.i, %invariant.op379.i
  br i1 %.not1071.us.i, label %bb.cp, label %bb.da

bb.cp:                                            ; preds = %bb.co
  %i.ahi = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv354.i ; 5 uses
  %i.ahj = load float, ptr %i.ahi, align 16, !tbaa !39
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !39 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahn = load float, ptr %i.ahm, align 8, !tbaa !39 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahi, i64 12
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 28
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !39
  %i.ahr = fsub fast float %i.ahl, %i.ahn         ; 2 uses
  %i.ahs = fadd fast float %i.ahl, %i.aed
  %i.aht = fadd fast float %i.ahs, %i.ahn         ; 3 uses
  %i.ahu = fadd fast float %i.aht, %i.ahj
  %i.ahv = fadd fast float %i.ahr, %i.aed         ; 2 uses
  %i.ahw = load <4 x float>, ptr %i.aho, align 4, !tbaa !39 ; 3 uses
  %i.ahx = shufflevector <4 x float> %i.ahw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ahy = fadd fast <4 x float> %i.ahw, %i.ahx   ; 3 uses
  %i.ahz = fsub fast <4 x float> %i.ahw, %i.ahx   ; 3 uses
  %i.aia = shufflevector <4 x float> %i.ahz, <4 x float> %i.ahy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.aib = extractelement <4 x float> %i.ahy, i64 3 ; 2 uses
  %i.aic = fmul fast float %i.aib, 3.200000e+01
  %i.aid = extractelement <4 x float> %i.ahy, i64 1 ; 2 uses
  %i.aie = fadd fast float %i.ahu, %i.aid
  %i.aif = fadd fast float %i.aie, %i.aic
  %i.aig = fmul fast <4 x float> %i.aia, <float 8.000000e+00, float 4.000000e+00, float 4.000000e+00, float 8.000000e+00> ; 4 uses
  %i.aih = extractelement <4 x float> %i.aig, i64 1
  %i.aii = fadd fast float %i.aht, %i.aih
  %i.aij = extractelement <4 x float> %i.aig, i64 3
  %i.aik = fadd fast float %i.aij, %i.aii
  %i.ail = extractelement <4 x float> %i.aig, i64 0
  %i.aim = fadd fast float %i.ahv, %i.ail
  %i.ain = extractelement <4 x float> %i.aig, i64 2
  %i.aio = fadd fast float %i.ain, %i.aim
  %i.aip = fmul fast float %i.aid, 1.600000e+01
  %i.aiq = fadd fast float %i.aht, %i.aip
  %factor.us.i = fmul fast float %i.aib, 2.000000e+00
  %i.air = fadd fast float %factor.us.i, %i.aiq
  %i.ais = fadd fast float %i.aed, %i.ahq
  %i.ait = fadd fast float %i.ahr, %i.ais
  %i.aiu = extractelement <4 x float> %i.ahz, i64 0 ; 2 uses
  %i.aiv = fmul fast float %i.aiu, 3.200000e+01
  %i.aiw = fadd fast float %i.aiv, %i.ait
  %i.aix = extractelement <4 x float> %i.ahz, i64 2 ; 2 uses
  %i.aiy = fadd fast float %i.aiw, %i.aix
  store float %i.aif, ptr %.01011279.us.i, align 4, !tbaa !39
  br i1 %i.agz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.aiz = fmul fast float %i.aix, 1.600000e+01
  %factor197.us.i = fmul fast float %i.aiu, 2.000000e+00
  %i.aja = fadd fast float %i.ahv, %i.aiz
  %i.ajb = fadd fast float %i.aja, %factor197.us.i
  %i.ajc = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 4
  store float %i.ajb, ptr %i.ajc, align 4, !tbaa !39
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.ahb, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ajd = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 8
  store float %i.aik, ptr %i.ajd, align 4, !tbaa !39
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.ahd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aje = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 12
  store float %i.aio, ptr %i.aje, align 4, !tbaa !39
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.ahf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ajf = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 16
  store float %i.air, ptr %i.ajf, align 4, !tbaa !39
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %i.ahh, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ajg = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 20
  store float %i.aiy, ptr %i.ajg, align 4, !tbaa !39
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ajh = getelementptr inbounds [4 x i8], ptr %.01011279.us.i, i64 %i.adt
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.co
  %.1.us.i = phi ptr [ %.01011279.us.i, %bb.co ], [ %i.ajh, %bb.cz ]
  %indvars.iv.next355.i = add nuw nsw i64 %indvars.iv354.i, 1 ; 2 uses
  %exitcond357.not.i = icmp eq i64 %indvars.iv.next355.i, 6
  br i1 %exitcond357.not.i, label %bb.db, label %bb.co, !llvm.loop !1281

bb.db:                                            ; preds = %bb.da
  %indvars.iv.next359.i = add nuw nsw i64 %indvars.iv358.i, 1 ; 2 uses
  %exitcond362.not.i = icmp eq i64 %indvars.iv.next359.i, %wide.trip.count361.i
  br i1 %exitcond362.not.i, label %._crit_edge284.us.i, label %bb.cm, !llvm.loop !1282

._crit_edge284.us.i:                              ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %indvars.iv.next364.i = add nuw nsw i64 %indvars.iv363.i, 1 ; 2 uses
  %exitcond367.not.i = icmp eq i64 %indvars.iv.next364.i, %i.ck
  br i1 %exitcond367.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ck, !llvm.loop !1283

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aji = phi i32 [ %i.alb, %.noexc ], [ %.pre147, %.noexc.preheader ] ; 2 uses
  %i.ajj = phi i32 [ %i.ald, %.noexc ], [ %i.cu, %.noexc.preheader ]
  %.0130 = phi i32 [ %i.alc, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.ajk = sub nsw i32 %i.ajj, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aji, i32 %i.ajk)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.ajl = load i32, ptr %3, align 4, !tbaa !67
  %i.ajm = sdiv i32 %i.bs, %i.ajl
  %i.ajn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1284
  %i.ajo = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !1284
  %i.ajp = sext i32 %i.ajm to i64
  %i.ajq = mul i64 %i.ajo, %i.ajp
  %i.ajr = load i64, ptr %i.u, align 8, !tbaa !65, !noalias !1284 ; 3 uses
  %i.ajs = mul i64 %i.ajq, %i.ajr
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.ajs
  %i.aju = load i32, ptr %i.v, align 8, !tbaa !66, !noalias !1284
  %i.ajv = load ptr, ptr %i.w, align 8, !tbaa !17, !noalias !1284
  %i.ajw = sdiv i32 %.0130, %i.aji
  %i.ajx = sext i32 %i.ajw to i64                 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !11, !alias.scope !1287
  store i64 %i.ajr, ptr %i.y, align 8, !tbaa !65, !alias.scope !1287
  store i32 %i.aju, ptr %i.z, align 8, !tbaa !66, !alias.scope !1287
  store ptr %i.ajv, ptr %i.aa, align 8, !tbaa !17, !alias.scope !1287
  store i32 2, ptr %i.ab, align 8, !tbaa !289, !alias.scope !1287
  %16 = load <2 x i32>, ptr %i.r, align 4, !tbaa !67, !noalias !1284
  %i.ajy = load i32, ptr %i.s, align 8, !tbaa !76, !noalias !1284
  %i.ajz = load i32, ptr %i.r, align 4, !tbaa !75, !noalias !1284
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = sext i32 %i.ajy to i64
  %i.akc = mul nsw i64 %i.akb, %i.aka             ; 2 uses
  %i.akd = mul i64 %i.ajr, %i.akc
  %i.ake = mul i64 %i.akd, %i.ajx
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.ake
  store ptr %i.akf, ptr %14, align 8, !tbaa !18, !alias.scope !1287
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akg = shufflevector <4 x i32> %17, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.akg, ptr %i.ac, align 4, !tbaa !67, !alias.scope !1287
  store i64 %i.akc, ptr %i.ad, align 8, !tbaa !20, !alias.scope !1287
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.akh = load i32, ptr %7, align 4, !tbaa !67
  %i.aki = sdiv i32 %.044136, %i.akh
  %i.akj = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1290
  %i.akk = load i64, ptr %i.ag, align 8, !tbaa !20, !noalias !1290
  %i.akl = sext i32 %i.aki to i64
  %i.akm = mul i64 %i.akk, %i.akl
  %i.akn = load i64, ptr %i.ah, align 8, !tbaa !65, !noalias !1290 ; 3 uses
  %i.ako = mul i64 %i.akm, %i.akn
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.ako
  %i.akq = load i32, ptr %i.ai, align 8, !tbaa !66, !noalias !1290
  %i.akr = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !1290
  store ptr null, ptr %i.ak, align 8, !tbaa !11
  store i64 %i.akn, ptr %i.al, align 8, !tbaa !65
  store i32 %i.akq, ptr %i.am, align 8, !tbaa !66
  store ptr %i.akr, ptr %i.an, align 8, !tbaa !17
  store i32 2, ptr %i.ao, align 8, !tbaa !289
  %18 = load <2 x i32>, ptr %i.ae, align 4, !tbaa !67, !noalias !1290
  %i.aks = load i32, ptr %i.af, align 8, !tbaa !76, !noalias !1290
  %i.akt = load i32, ptr %i.ae, align 4, !tbaa !75, !noalias !1290
  %i.aku = sext i32 %i.akt to i64
  %i.akv = sext i32 %i.aks to i64
  %i.akw = mul nsw i64 %i.akv, %i.aku             ; 2 uses
  %i.akx = mul i64 %i.akn, %i.akw
  %i.aky = mul i64 %i.akx, %i.ajx
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.aky
  store ptr %i.akz, ptr %15, align 8, !tbaa !18
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ala = shufflevector <4 x i32> %19, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ala, ptr %i.ap, align 4, !tbaa !67
  store i64 %i.akw, ptr %i.aq, align 8, !tbaa !20, !alias.scope !1293
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.ca, i32 noundef 64, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.alb = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.alc = add nsw i32 %i.alb, %.0130             ; 2 uses
  %i.ald = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.ale = icmp slt i32 %i.alc, %i.ald
  br i1 %i.ale, label %.noexc, label %._crit_edge, !llvm.loop !1296

_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge284.us.i, %.lr.ph290.i, %.preheader.i
  %i.alf = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.alg = add nsw i32 %i.alf, %.044136           ; 2 uses
  %i.alh = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.ali = icmp slt i32 %i.alg, %i.alh
  br i1 %i.ali, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1297

._crit_edge142:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge142, %bb.a
  ret void

bb.dd:                                            ; preds = %bb.c
  %i.alj = landingpad { ptr, i32 }
          catch ptr null
  %i.alk = extractvalue { ptr, i32 } %i.alj, 0
  call void @__clang_call_terminate(ptr %i.alk) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [8 x float]]], align 32 ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !67
  %i.l = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not484 = icmp sgt i32 %i.l, %i.k
  br i1 %.not484, label %._crit_edge487, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1792
  %i.w = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split, label %._crit_edge487

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.y = phi i32 [ %i.ms, %._crit_edge ], [ %i.w, %.lr.ph ] ; 3 uses
  %.0240485 = phi i32 [ %i.mt, %._crit_edge ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !67
  %i.aa = shl nsw i32 %.0240485, 3
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.ad = shl i32 %i.ab, 6
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.ak
  %i.ae = phi i32 [ %i.y, %.noexc.lr.ph ], [ %i.mh, %bb.ak ] ; 8 uses
  %indvars.iv494 = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next495, %bb.ak ] ; 3 uses
  %i.af = load i32, ptr %5, align 4, !tbaa !67
  %i.ag = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.ah = load i32, ptr %8, align 4, !tbaa !67
  %i.ai = add nsw i32 %i.ah, %i.ab
  %i.aj = load i32, ptr %9, align 4, !tbaa !67    ; 4 uses
  %i.ak = sdiv i32 %i.ai, %i.aj
  %i.al = load i32, ptr %i.m, align 4, !tbaa !75, !noalias !1298
  %i.am = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1298
  %i.an = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1298
  %i.ao = sext i32 %i.ak to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !65, !noalias !1298 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.al to i64
  %i.au = trunc nuw nsw i64 %indvars.iv494 to i32
  %i.av = add nsw i32 %i.af, %i.au                ; 2 uses
  %i.aw = srem i32 %i.av, %i.ag
  %i.ax = sdiv i32 %i.av, %i.ag
  %i.ay = mul nsw i32 %i.ax, 6
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul i64 %i.aq, %i.at
  %i.bb = mul i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb
  %i.bd = mul nsw i32 %i.aw, 6                    ; 8 uses
  %i.be = mul nsw i32 %i.bd, %i.aj
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i32, ptr %10, align 4, !tbaa !67
  %i.bi = load i32, ptr %11, align 4, !tbaa !67   ; 22 uses
  %i.bj = mul nsw i32 %i.aj, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = or disjoint i32 %i.bd, 1                ; 3 uses
  %i.bm = add nsw i32 %i.bd, 2                    ; 3 uses
  %i.bn = add nsw i32 %i.bd, 3                    ; 3 uses
  %i.bo = add nsw i32 %i.bd, 4                    ; 3 uses
  %i.bp = add nsw i32 %i.bd, 5                    ; 3 uses
  %i.bq = add nsw i32 %i.bd, 6                    ; 3 uses
  %i.br = add nsw i32 %i.bd, 7                    ; 3 uses
  %i.bs = sext i32 %i.bh to i64
  %invariant.op = sub nsw i64 %i.bs, %i.az
  %i.bt = icmp slt i32 %i.bl, %i.bi
  %i.bu = icmp slt i32 %i.bm, %i.bi
  %i.bv = icmp slt i32 %i.bn, %i.bi
  %i.bw = icmp slt i32 %i.bo, %i.bi
  %i.bx = icmp slt i32 %i.bp, %i.bi
  %i.by = icmp slt i32 %i.bq, %i.bi
  %i.bz = icmp slt i32 %i.br, %i.bi
  %i.ca = icmp slt i32 %i.bl, %i.bi
  %i.cb = icmp slt i32 %i.bm, %i.bi
  %i.cc = icmp slt i32 %i.bn, %i.bi
  %i.cd = icmp slt i32 %i.bo, %i.bi
  %i.ce = icmp slt i32 %i.bp, %i.bi
  %i.cf = icmp slt i32 %i.bq, %i.bi
  %i.cg = icmp slt i32 %i.br, %i.bi
  %i.ch = icmp slt i32 %i.bl, %i.bi
  %i.ci = icmp slt i32 %i.bm, %i.bi
  %i.cj = icmp slt i32 %i.bn, %i.bi
  %i.ck = icmp slt i32 %i.bo, %i.bi
  %i.cl = icmp slt i32 %i.bp, %i.bi
  %i.cm = icmp slt i32 %i.bq, %i.bi
  %i.cn = icmp slt i32 %i.br, %i.bi
  br label %bb.d

bb.c:                                             ; preds = %.thread462
  %i.co = load ptr, ptr %13, align 8, !tbaa !18
  %i.cp = mul i32 %i.ad, %i.ae
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cq
  %.idx509 = shl nuw nsw i64 %indvars.iv494, 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx509 ; 8 uses
  %i.ct = shl nsw i32 %i.ae, 3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = shl nsw i32 %i.ae, 4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cx
  %i.cz = mul nsw i32 %i.ae, 24
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.da
  %i.dc = shl nsw i32 %i.ae, 5
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.dd
  %i.df = mul nsw i32 %i.ae, 40
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.dg
  %i.di = mul nsw i32 %i.ae, 48
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.dj
  %i.dl = mul nsw i32 %i.ae, 56
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.dm
  br label %bb.al

bb.d:                                             ; preds = %.noexc, %.thread462
  %indvars.iv = phi i64 [ 0, %.noexc ], [ %indvars.iv.next, %.thread462 ] ; 10 uses
  %.0242473 = phi ptr [ %i.bg, %.noexc ], [ %i.ke, %.thread462 ] ; 27 uses
  %i.do = icmp slt i64 %indvars.iv, %invariant.op
  br i1 %i.do, label %bb.e, label %.thread462

end_hunk_5
begin_hunk_6_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.yr, i64 %i.jx
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %i.jx
  %sext457 = shl i32 %i.on, 16
  %i.zt = ashr exact i32 %sext457, 14             ; 2 uses
  %i.zu = trunc i32 %i.zt to i16
  %i.zv = sub i16 %i.rq, %i.zu                    ; 2 uses
  %i.zw = shl i16 %i.qc, 2
  %i.zx = sub i16 %i.te, %i.zw                    ; 2 uses
  %i.zy = sub i16 %i.rq, %i.oo
  %i.zz = shl i16 %i.zy, 1                        ; 2 uses
  %i.aaa = sub i16 %i.te, %i.qc                   ; 2 uses
  %i.aab = shl i16 %i.na, 2
  %.neg.us.5 = mul i16 %i.qc, -5
  %i.aac = add i16 %.neg.us.5, %i.aab
  %i.aad = add i16 %i.aac, %i.te
  store i16 %i.aad, ptr %i.zn, align 2, !tbaa !573
  %i.aae = add i16 %i.zx, %i.zv
  store i16 %i.aae, ptr %i.zo, align 2, !tbaa !573
  %i.aaf = sub i16 %i.zx, %i.zv
  store i16 %i.aaf, ptr %i.zp, align 2, !tbaa !573
  %i.aag = add i16 %i.aaa, %i.zz
  store i16 %i.aag, ptr %i.zq, align 2, !tbaa !573
  %i.aah = sub i16 %i.aaa, %i.zz
  store i16 %i.aah, ptr %i.zr, align 2, !tbaa !573
  %.neg340.us.5 = mul i32 %i.rp, 65531
  %i.aai = add i32 %.neg340.us.5, %i.zt
  %i.aaj = trunc i32 %i.aai to i16
  %i.aak = add i16 %i.us, %i.aaj
  store i16 %i.aak, ptr %i.zs, align 2, !tbaa !573
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %._crit_edge.us420, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1748

._crit_edge.us420:                                ; preds = %bb.ce
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.aal = icmp slt i64 %indvars.iv.next453, %i.km
  br i1 %i.aal, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge417, !llvm.loop !1749

._crit_edge417:                                   ; preds = %._crit_edge.us420, %.lr.ph416, %._crit_edge399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1750 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1750 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !1750
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1750
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1750
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1750 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1750
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1750
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1750
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1750
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1750
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1750
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1750
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1750
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1750
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !1750
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1750
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1750
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !1750 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !1750
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1750
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1753
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1753
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1753 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1753
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1753
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1753
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1753
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1753
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !1756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.b = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 %i.i, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 1, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !67
  %i.j = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !67
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !67
  %i.m = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %.not135 = icmp sgt i32 %i.m, %i.l
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
end_hunk_6
begin_hunk_7_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12:bb.a

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.alp, i64 %i.afw
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.alp, %.preheader.us.i ], [ %i.ano, %bb.al ] ; 6 uses
  %i.anp = or disjoint i32 %i.ali, 1
  %.not.us.1.i = icmp slt i32 %i.anp, %i.en
  br i1 %.not.us.1.i, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.anq = add nsw i32 %i.aij, %i.ahn             ; 2 uses
  %i.anr = add nsw i32 %i.akb, %i.ajf             ; 2 uses
  %i.ans = sub nsw i32 %i.ahn, %i.aij             ; 2 uses
  %i.ant = sub nsw i32 %i.ajf, %i.akb             ; 2 uses
  %i.anu = add i32 %i.agu, %i.ags
  %i.anv = add i32 %i.anu, %i.anq
  %i.anw = add i32 %i.anv, %i.anr
  %i.anx = shl nsw i32 %i.anr, 2
  %i.any = add nsw i32 %i.anx, %i.anq
  %reass.add = add i32 %i.akz, %i.ant
  %reass.mul = shl i32 %reass.add, 3
  %i.anz = add i32 %i.alb, %i.ans
  %i.aoa = add i32 %i.anz, %reass.mul
  %i.aob = sdiv i32 %i.anw, 576
  %i.aoc = sdiv i32 %i.any, 576
  %i.aod = sdiv i32 %i.aoa, 576
  store i32 %i.aob, ptr %.1.us.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aoe = shl nsw i32 %i.ant, 1
  %i.aof = add nsw i32 %i.aoe, %i.ans
  %i.aog = sdiv i32 %i.aof, 576
  %i.aoh = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.aog, ptr %i.aoh, align 4, !tbaa !67
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.alt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aoi = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.aoc, ptr %i.aoi, align 4, !tbaa !67
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.alv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aoj = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.aod, ptr %i.aoj, align 4, !tbaa !67
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.aok = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.afw
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.am ], [ %i.aok, %bb.at ] ; 6 uses
  %i.aol = or disjoint i32 %i.ali, 2
  %.not.us.2.i = icmp slt i32 %i.aol, %i.en
  br i1 %.not.us.2.i, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.aom = add nsw i32 %i.ail, %i.ahp             ; 2 uses
  %i.aon = add nsw i32 %i.akd, %i.ajh             ; 2 uses
  %i.aoo = sub nsw i32 %i.ahp, %i.ail             ; 2 uses
  %i.aop = sub nsw i32 %i.ajh, %i.akd             ; 2 uses
  %i.aoq = add i32 %i.agv, %i.ago
  %i.aor = add i32 %i.aoq, %i.aom
  %i.aos = add i32 %i.aor, %i.aon
  %i.aot = shl nsw i32 %i.aon, 2
  %i.aou = add nsw i32 %i.aot, %i.aom
  %i.aov = shl nsw i32 %i.aop, 3
  %i.aow = add i32 %i.aov, %i.aoo
  %i.aox = add i32 %i.aow, %i.ald
  %i.aoy = add i32 %i.aox, %i.alc
  %i.aoz = sdiv i32 %i.aos, 576
  %i.apa = sdiv i32 %i.aou, 576
  %i.apb = sdiv i32 %i.aoy, 576
  store i32 %i.aoz, ptr %.1.us.1.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.apc = shl nsw i32 %i.aop, 1
  %i.apd = add nsw i32 %i.apc, %i.aoo
  %i.ape = sdiv i32 %i.apd, 576
  %i.apf = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !67
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.alt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.apg = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.apa, ptr %i.apg, align 4, !tbaa !67
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.alv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.aph = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.apb, ptr %i.aph, align 4, !tbaa !67
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.api = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.afw
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.au ], [ %i.api, %bb.bb ] ; 4 uses
  %i.apj = or disjoint i32 %i.ali, 3
  %.not.us.3.i = icmp slt i32 %i.apj, %i.en
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.apk = add nsw i32 %i.aiq, %i.ahu             ; 2 uses
  %i.apl = add nsw i32 %i.aki, %i.ajm             ; 2 uses
  %i.apm = sub nsw i32 %i.ahu, %i.aiq             ; 2 uses
  %i.apn = sub nsw i32 %i.ajm, %i.aki             ; 2 uses
  %i.apo = add i32 %i.agw, %i.ags
  %i.app = add i32 %i.apo, %i.agy
  %i.apq = add i32 %i.app, %i.apk
  %i.apr = add i32 %i.apq, %i.apl
  %i.aps = shl nsw i32 %i.apl, 2
  %i.apt = add nsw i32 %i.aps, %i.apk
  %i.apu = shl nsw i32 %i.apn, 3
  %i.apv = add i32 %i.apu, %i.apm
  %i.apw = add i32 %i.apv, %i.alb
  %i.apx = add i32 %i.apw, %i.alf
  %i.apy = add i32 %i.apx, %i.ale
  %i.apz = sdiv i32 %i.apr, 576
  %i.aqa = sdiv i32 %i.apt, 576
  %i.aqb = sdiv i32 %i.apy, 576
  store i32 %i.apz, ptr %.1.us.2.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aqc = shl nsw i32 %i.apn, 1
  %i.aqd = add nsw i32 %i.aqc, %i.apm
  %i.aqe = sdiv i32 %i.aqd, 576
  %i.aqf = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.aqe, ptr %i.aqf, align 4, !tbaa !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.alt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aqg = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.aqa, ptr %i.aqg, align 4, !tbaa !67
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.alv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aqh = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.aqb, ptr %i.aqh, align 4, !tbaa !67
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next1027.i = add nuw nsw i64 %indvars.iv1026.i, 1 ; 2 uses
  %exitcond1030.not.i = icmp eq i64 %indvars.iv.next1027.i, %wide.trip.count1029.i
  br i1 %exitcond1030.not.i, label %._crit_edge.us942.i, label %.preheader.us.i, !llvm.loop !1777

._crit_edge.us942.i:                              ; preds = %bb.bj
  %indvars.iv.next1032.i = add nuw nsw i64 %indvars.iv1031.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1032.i, %i.ed
  br i1 %exitcond1035.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us941.i, !llvm.loop !1778

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aqi = phi i32 [ %i.asd, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 3 uses
  %i.aqj = phi i32 [ %i.asf, %.noexc ], [ %i.ek, %.noexc.preheader ] ; 2 uses
  %.0133 = phi i32 [ %i.ase, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.aqk = sub nsw i32 %i.aqj, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqi, i32 %i.aqk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.aql = load i32, ptr %3, align 4, !tbaa !67
  %i.aqm = sdiv i32 %i.dm, %i.aql
  %i.aqn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1779
  %i.aqo = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1779
  %i.aqp = sext i32 %i.aqm to i64
  %i.aqq = mul i64 %i.aqo, %i.aqp
  %i.aqr = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1779 ; 3 uses
  %i.aqs = mul i64 %i.aqq, %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %i.aqs
  %i.aqu = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1779
  %i.aqv = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1779
  %i.aqw = sdiv i32 %.0133, %i.aqi
  %i.aqx = sext i32 %i.aqw to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1782
  store i64 %i.aqr, ptr %i.w, align 8, !tbaa !65, !alias.scope !1782
  store i32 %i.aqu, ptr %i.x, align 8, !tbaa !66, !alias.scope !1782
  store ptr %i.aqv, ptr %i.y, align 8, !tbaa !17, !alias.scope !1782
  store i32 2, ptr %i.z, align 8, !tbaa !289, !alias.scope !1782
  %15 = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1779
  %i.aqy = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1779
  %i.aqz = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1779
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = sext i32 %i.aqy to i64
  %i.arc = mul nsw i64 %i.arb, %i.ara             ; 2 uses
  %i.ard = mul i64 %i.aqr, %i.arc
  %i.are = mul i64 %i.ard, %i.aqx
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.are
  store ptr %i.arf, ptr %13, align 8, !tbaa !18, !alias.scope !1782
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.arg = shufflevector <4 x i32> %16, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.arg, ptr %i.aa, align 4, !tbaa !67, !alias.scope !1782
  store i64 %i.arc, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1782
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.arh = load i32, ptr %7, align 4, !tbaa !67
  %i.ari = sdiv i32 %.044134, %i.arh
  %i.arj = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1785
  %i.ark = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1785
  %i.arl = sext i32 %i.ari to i64
  %i.arm = mul i64 %i.ark, %i.arl
  %i.arn = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1785 ; 3 uses
  %i.aro = mul i64 %i.arm, %i.arn
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.aro
  %i.arq = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1785
  %i.arr = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1785
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.arn, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.arq, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.arr, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !289
  %17 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1785
  %i.ars = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1785
  %i.art = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1785
  %i.aru = sext i32 %i.art to i64
  %i.arv = sext i32 %i.ars to i64
  %i.arw = mul nsw i64 %i.arv, %i.aru             ; 2 uses
  %i.arx = mul i64 %i.arn, %i.arw
  %i.ary = mul i64 %i.arx, %i.aqx
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.ary
  store ptr %i.arz, ptr %14, align 8, !tbaa !18
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asa = shufflevector <4 x i32> %18, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.asa, ptr %i.an, align 4, !tbaa !67
  store i64 %i.arw, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1788
  %i.asb = add nsw i32 %i.aqi, %.0133
  %i.asc = icmp sge i32 %i.asb, %i.aqj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.du, i32 noundef 36, i32 noundef %.sroa.speculated118, i32 noundef %.sroa.speculated114, i32 noundef %.0133, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.asc)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.asd = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.ase = add nsw i32 %i.asd, %.0133             ; 2 uses
  %i.asf = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.asg = icmp slt i32 %i.ase, %i.asf
  br i1 %i.asg, label %.noexc, label %._crit_edge, !llvm.loop !1791

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us942.i, %.lr.ph939.i, %.preheader773.i
  %i.ash = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.asi = add nsw i32 %i.ash, %.044134           ; 2 uses
  %i.asj = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.ask = icmp slt i32 %i.asi, %i.asj
  br i1 %i.ask, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1792

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.asl = landingpad { ptr, i32 }
          catch ptr null
  %i.asm = extractvalue { ptr, i32 } %i.asl, 0
  call void @__clang_call_terminate(ptr %i.asm) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #26 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader211.lr.ph, label %.preheader203

.preheader211.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 4 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1387 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1393 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1389.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1392 = trunc i32 %i.u to i1
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0655360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

.preheader203.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next750 to i32
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader203.loopexit, %bb.a
  %.0658.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader203.loopexit ] ; 3 uses
  %.0655.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader203.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0658.lcssa, 1
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader202.lr.ph, label %.preheader194

.preheader202.lr.ph:                              ; preds = %.preheader203
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 6 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0658.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count763 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -1
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1404 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1399.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1403 = trunc i32 %i.ax to i1
  %i.ba = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i32 %i.ak, 6
  %n.vec1105 = and i64 %i.ba, 4294967292          ; 4 uses
  %i.bb = trunc nuw i64 %n.vec1105 to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = shl nuw nsw i64 %n.vec1105, 3           ; 2 uses
  %cmp.n1122 = icmp eq i64 %i.ba, %n.vec1105
  %i.be = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1039 = icmp ult i32 %i.ak, 14
  %n.vec1041 = and i64 %i.be, 4294967288          ; 5 uses
  %i.bf = trunc nuw i64 %n.vec1041 to i32
  %i.bg = shl i32 %i.bf, 1
  %i.bh = shl nuw nsw i64 %n.vec1041, 3
  %i.bi = shl nuw nsw i64 %n.vec1041, 2
  %cmp.n1068 = icmp eq i64 %i.be, %n.vec1041
  br label %.preheader202

bb.b:                                             ; preds = %._crit_edge355
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 4 ; 3 uses
  %i.bj = or disjoint i64 %indvars.iv.next750, 3
  %i.bk = icmp samesign ult i64 %i.bj, %i.r
  br i1 %i.bk, label %.preheader211, label %.preheader203.loopexit, !llvm.loop !1793

bb.c:                                             ; preds = %.preheader211, %._crit_edge355
  %indvars.iv = phi i64 [ 0, %.preheader211 ], [ %indvars.iv.next, %._crit_edge355 ] ; 3 uses
  %.1656358 = phi ptr [ %.0655360, %.preheader211 ], [ %.5.lcssa, %._crit_edge355 ] ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !18
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv, %i.bn
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.z ; 10 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !18
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !75
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %indvars.iv, %i.bv
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !65
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  br i1 %i.f, label %.lr.ph265, label %.preheader210

.preheader210:                                    ; preds = %bb.g, %bb.c
  %.0674.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0662.lcssa = phi ptr [ %i.bz, %bb.c ], [ %.2664.lcssa, %bb.g ] ; 2 uses
  %.2657.lcssa = phi ptr [ %.1656358, %bb.c ], [ %i.ix, %bb.g ] ; 2 uses
  %i.ca = or disjoint i32 %.0674.lcssa, 3
  %i.cb = icmp slt i32 %i.ca, %4
  br i1 %i.cb, label %.lr.ph302, label %.preheader209

.lr.ph265:                                        ; preds = %bb.c, %bb.g
  %.2657263 = phi ptr [ %i.ix, %bb.g ], [ %.1656358, %bb.c ] ; 17 uses
  %.0662262 = phi ptr [ %.2664.lcssa, %bb.g ], [ %i.bz, %bb.c ] ; 2 uses
  %.0674261 = phi i32 [ %i.iy, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph265
  %i.cc = load <2 x i64>, ptr %.2657263, align 16, !tbaa !316
  %i.cd = getelementptr inbounds nuw i8, ptr %.2657263, i64 16
  %i.ce = load <2 x i64>, ptr %i.cd, align 16, !tbaa !316
  %i.cf = getelementptr inbounds nuw i8, ptr %.2657263, i64 32
  %i.cg = load <2 x i64>, ptr %i.cf, align 16, !tbaa !316
  %i.ch = getelementptr inbounds nuw i8, ptr %.2657263, i64 48
  %i.ci = load <2 x i64>, ptr %i.ch, align 16, !tbaa !316
  %i.cj = getelementptr inbounds nuw i8, ptr %.2657263, i64 64
  %i.ck = load <2 x i64>, ptr %i.cj, align 16, !tbaa !316
  %i.cl = getelementptr inbounds nuw i8, ptr %.2657263, i64 80
  %i.cm = load <2 x i64>, ptr %i.cl, align 16, !tbaa !316
  %i.cn = getelementptr inbounds nuw i8, ptr %.2657263, i64 96
  %i.co = load <2 x i64>, ptr %i.cn, align 16, !tbaa !316
  %i.cp = getelementptr inbounds nuw i8, ptr %.2657263, i64 112
  %i.cq = load <2 x i64>, ptr %i.cp, align 16, !tbaa !316
  br label %bb.e

end_hunk_7
begin_hunk_8_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  store i16 %i.qr, ptr %i.qn, align 2, !tbaa !573
  %i.qs = sub nsw i16 %i.pe, %i.oj
  store i16 %i.qs, ptr %i.qo, align 2, !tbaa !573
  %i.qt = sub nsw i16 %i.pz, %i.oj
  store i16 %i.qt, ptr %i.qp, align 2, !tbaa !573
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.lm ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.lm ; 2 uses
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.lm ; 2 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.lm ; 2 uses
  %i.qy = sub nsw i16 %i.nq, %i.pg
  store i16 %i.qy, ptr %i.qu, align 2, !tbaa !573
  %i.qz = add nsw i16 %i.pg, %i.ol
  store i16 %i.qz, ptr %i.qv, align 2, !tbaa !573
  %i.ra = sub nsw i16 %i.pg, %i.ol
  store i16 %i.ra, ptr %i.qw, align 2, !tbaa !573
  %i.rb = sub nsw i16 %i.qb, %i.ol
  store i16 %i.rb, ptr %i.qx, align 2, !tbaa !573
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %i.lm
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.lm
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qw, i64 %i.lm
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %i.lm
  %i.rg = sub nsw i16 %i.ns, %i.pi
  store i16 %i.rg, ptr %i.rc, align 2, !tbaa !573
  %i.rh = add nsw i16 %i.pi, %i.on
  store i16 %i.rh, ptr %i.rd, align 2, !tbaa !573
  %i.ri = sub nsw i16 %i.pi, %i.on
  store i16 %i.ri, ptr %i.re, align 2, !tbaa !573
  %i.rj = sub nsw i16 %i.qd, %i.on
  store i16 %i.rj, ptr %i.rf, align 2, !tbaa !573
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge.us267, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1873

._crit_edge.us267:                                ; preds = %bb.bi
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.rk = icmp slt i64 %indvars.iv.next294, %i.mb
  br i1 %i.rk, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge264, !llvm.loop !1874

._crit_edge264:                                   ; preds = %._crit_edge.us267, %.lr.ph263, %._crit_edge248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1875 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1875 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !1875
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1875
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1875
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1875 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1875
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1875
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1875
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1875
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1875
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1875
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1875
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1875
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1875
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !1875
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1875
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1875
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !1875 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !1875
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1875
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1878
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1878
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1878 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1878
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1878
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1878
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1878
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1878
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !1881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not144 = icmp sgt i32 %i.k, %i.j
  br i1 %.not144, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph147, %_ZN4ncnn3MatD2Ev.exit
  %.045145 = phi i32 [ %i.k, %.lr.ph147 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !67
  %i.at = mul nsw i32 %i.as, %.045145             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.ad

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1884
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1884
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1884
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !67
end_hunk_8
begin_hunk_9_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.13:bb.a
.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph78.split.preheader.i, %.preheader55.i
  %.1288.lcssa.i = phi i32 [ %.0287.lcssa.i, %.preheader55.i ], [ %i.ne, %.preheader.loopexit.i ], [ %i.hf, %.lr.ph78.split.preheader.i ] ; 2 uses
  %i.nf = icmp slt i32 %.1288.lcssa.i, %.sroa.speculated119
  br i1 %i.nf, label %.lr.ph96.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph96.i:                                       ; preds = %.preheader.i
  %i.ng = icmp sgt i32 %.sroa.speculated115, 0
  %i.nh = sext i32 %.sroa.speculated115 to i64
  %i.ni = shl nsw i32 %.sroa.speculated115, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = mul nsw i32 %.sroa.speculated115, 3
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl nsw i32 %.sroa.speculated115, 2
  %i.nn = sext i32 %i.nm to i64                   ; 12 uses
  %i.no = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.ng, label %.lr.ph96.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph96.split.us.i:                              ; preds = %.lr.ph96.i
  %i.np = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1897
  %i.nq = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1897
  %i.nr = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1897 ; 2 uses
  %factor.op.mul106.i = mul i64 %i.nr, %i.nq
  %i.ns = sext i32 %.1288.lcssa.i to i64
  %wide.trip.count149.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us104.i

.lr.ph.us104.i:                                   ; preds = %._crit_edge.us105.i, %.lr.ph96.split.us.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %._crit_edge.us105.i ], [ %i.ns, %.lr.ph96.split.us.i ] ; 3 uses
  %i.nt = trunc nsw i64 %indvars.iv151.i to i32
  %factor.op.mul91.reass.us.i = mul i32 %factor.op.mul64.i, %i.nt
  %i.nu = sext i32 %factor.op.mul91.reass.us.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nu
  %i.nw = add nsw i64 %indvars.iv151.i, %i.bl
  %.reass107.i = mul i64 %factor.op.mul106.i, %i.nw
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 %.reass107.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us102.i, %.lr.ph.us104.i
  %indvars.iv146.i = phi i64 [ 0, %.lr.ph.us104.i ], [ %indvars.iv.next147.i, %.split.us102.i ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv146.i ; 5 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nh ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nj ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nl ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !67
  %i.od = load i32, ptr %i.nz, align 4, !tbaa !67 ; 2 uses
  %i.oe = add nsw i32 %i.od, %i.oc
  %i.of = load i32, ptr %i.oa, align 4, !tbaa !67 ; 2 uses
  %i.og = add nsw i32 %i.oe, %i.of                ; 2 uses
  %i.oh = sub i32 %i.od, %i.of
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !67
  %i.oj = add nsw i32 %i.oh, %i.oi                ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nn ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nn ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nn ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nn ; 2 uses
  %i.oo = load i32, ptr %i.ok, align 4, !tbaa !67
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !67 ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.oo
  %i.or = load i32, ptr %i.om, align 4, !tbaa !67 ; 2 uses
  %i.os = add nsw i32 %i.oq, %i.or                ; 3 uses
  %i.ot = sub i32 %i.op, %i.or
  %i.ou = load i32, ptr %i.on, align 4, !tbaa !67
  %i.ov = add nsw i32 %i.ot, %i.ou                ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.nn ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.nn ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.nn ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nn ; 2 uses
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !67
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !67 ; 2 uses
  %i.pc = add nsw i32 %i.pb, %i.pa
  %i.pd = load i32, ptr %i.oy, align 4, !tbaa !67 ; 2 uses
  %i.pe = add nsw i32 %i.pc, %i.pd                ; 3 uses
  %i.pf = sub i32 %i.pb, %i.pd
  %i.pg = load i32, ptr %i.oz, align 4, !tbaa !67
  %i.ph = add nsw i32 %i.pf, %i.pg                ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.nn
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nn
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nn
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.nn
  %i.pm = load i32, ptr %i.pi, align 4, !tbaa !67
  %i.pn = load i32, ptr %i.pj, align 4, !tbaa !67 ; 2 uses
  %i.po = load i32, ptr %i.pk, align 4, !tbaa !67 ; 2 uses
  %i.pp = load i32, ptr %i.pl, align 4, !tbaa !67
  %i.pq = trunc i64 %indvars.iv146.i to i32
  %i.pr = add i32 %.044143, %i.pq                 ; 2 uses
  %i.ps = sdiv i32 %i.pr, %i.ca
  %i.pt = srem i32 %i.pr, %i.ca
  %i.pu = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1897
  %i.pv = sext i32 %i.pu to i64
  %i.pw = shl nsw i32 %i.ps, 1                    ; 4 uses
  %i.px = sext i32 %i.pw to i64
  %i.py = mul i64 %i.nr, %i.px
  %i.pz = mul i64 %i.py, %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.pz
  %i.qb = shl nsw i32 %i.pt, 1                    ; 2 uses
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qc ; 7 uses
  %i.qe = or disjoint i32 %i.qb, 1
  %i.qf = icmp slt i32 %i.qe, %i.bt
  %.fr.us.i = freeze i1 %i.qf
  %.not.us.us.i = icmp slt i32 %i.pw, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i
  %i.qg = add nsw i32 %i.os, %i.og
  %i.qh = add nsw i32 %i.qg, %i.pe
  %i.qi = ashr i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qd, align 4, !tbaa !67
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i

_ZN4ncnn3MatD2Ev.exit.split.us103.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i
  %.1.us101.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i ], [ %i.qj, %bb.y ]
  %i.qk = or disjoint i32 %i.pw, 1
  %.not.us100.1.i = icmp slt i32 %i.qk, %i.bu
  br i1 %.not.us100.1.i, label %bb.z, label %.split.us102.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i
  %i.ql = add nsw i32 %i.ov, %i.oj
  %i.qm = add nsw i32 %i.ql, %i.ph
  %i.qn = ashr i32 %i.qm, 2
  store i32 %i.qn, ptr %.1.us101.i, align 4, !tbaa !67
  br label %.split.us102.i

.split.us102.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %._crit_edge.us105.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1900

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qo = add nsw i32 %i.os, %i.og
  %i.qp = add nsw i32 %i.qo, %i.pe
  %i.qq = ashr i32 %i.qp, 2
  store i32 %i.qq, ptr %i.qd, align 4, !tbaa !67
  %i.qr = sub i32 %i.os, %i.pe
  %i.qs = add i32 %i.qr, %i.pm
  %i.qt = add i32 %i.qs, %i.pn
  %i.qu = add i32 %i.qt, %i.po
  %i.qv = ashr i32 %i.qu, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !67
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.qx, %bb.aa ] ; 2 uses
  %i.qy = or disjoint i32 %i.pw, 1
  %.not.us.us.1.i = icmp slt i32 %i.qy, %i.bu
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us102.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.qz = add nsw i32 %i.ov, %i.oj
  %i.ra = add nsw i32 %i.qz, %i.ph
  %i.rb = ashr i32 %i.ra, 2
  store i32 %i.rb, ptr %.1.us.us.i, align 4, !tbaa !67
  %i.rc = add i32 %i.ov, %i.pn
  %i.rd = add i32 %i.ph, %i.po
  %i.re = sub i32 %i.rc, %i.rd
  %i.rf = add i32 %i.re, %i.pp
  %i.rg = ashr i32 %i.rf, 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !67
  br label %.split.us102.i

._crit_edge.us105.i:                              ; preds = %.split.us102.i
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, %i.bk
  br i1 %exitcond155.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us104.i, !llvm.loop !1901

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ri = phi i32 [ %i.td, %.noexc ], [ %.pre149, %.noexc.preheader ] ; 3 uses
  %i.rj = phi i32 [ %i.tf, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.0142 = phi i32 [ %i.te, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.rk = sub nsw i32 %i.rj, %.0142
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ri, i32 %i.rk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.rl = load i32, ptr %3, align 4, !tbaa !67
  %i.rm = sdiv i32 %i.at, %i.rl
  %i.rn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1902
  %i.ro = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1902
  %i.rp = sext i32 %i.rm to i64
  %i.rq = mul i64 %i.ro, %i.rp
  %i.rr = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1902 ; 3 uses
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rs
  %i.ru = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !1902
  %i.rv = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !1902
  %i.rw = sdiv i32 %.0142, %i.ri
  %i.rx = sext i32 %i.rw to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !1905
  store i64 %i.rr, ptr %i.u, align 8, !tbaa !65, !alias.scope !1905
  store i32 %i.ru, ptr %i.v, align 8, !tbaa !66, !alias.scope !1905
  store ptr %i.rv, ptr %i.w, align 8, !tbaa !17, !alias.scope !1905
  store i32 2, ptr %i.x, align 8, !tbaa !289, !alias.scope !1905
  %15 = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !1902
  %i.ry = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1902
  %i.rz = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1902
  %i.sa = sext i32 %i.rz to i64
  %i.sb = sext i32 %i.ry to i64
  %i.sc = mul nsw i64 %i.sb, %i.sa                ; 2 uses
  %i.sd = mul i64 %i.rr, %i.sc
  %i.se = mul i64 %i.sd, %i.rx
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.se
  store ptr %i.sf, ptr %13, align 8, !tbaa !18, !alias.scope !1905
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sg = shufflevector <4 x i32> %16, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.sg, ptr %i.y, align 4, !tbaa !67, !alias.scope !1905
  store i64 %i.sc, ptr %i.z, align 8, !tbaa !20, !alias.scope !1905
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.sh = load i32, ptr %7, align 4, !tbaa !67
  %i.si = sdiv i32 %.044143, %i.sh
  %i.sj = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1908
  %i.sk = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !1908
  %i.sl = sext i32 %i.si to i64
  %i.sm = mul i64 %i.sk, %i.sl
  %i.sn = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !1908 ; 3 uses
  %i.so = mul i64 %i.sm, %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.so
  %i.sq = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !1908
  %i.sr = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !1908
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.sn, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.sq, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.sr, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !289
  %17 = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !1908
  %i.ss = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !1908
  %i.st = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !1908
  %i.su = sext i32 %i.st to i64
  %i.sv = sext i32 %i.ss to i64
  %i.sw = mul nsw i64 %i.sv, %i.su                ; 2 uses
  %i.sx = mul i64 %i.sn, %i.sw
  %i.sy = mul i64 %i.sx, %i.rx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sy
  store ptr %i.sz, ptr %14, align 8, !tbaa !18
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ta = shufflevector <4 x i32> %18, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ta, ptr %i.al, align 4, !tbaa !67
  store i64 %i.sw, ptr %i.am, align 8, !tbaa !20, !alias.scope !1911
  %i.tb = add nsw i32 %i.ri, %.0142
  %i.tc = icmp sge i32 %i.tb, %i.rj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated119, i32 noundef %.sroa.speculated115, i32 noundef %.0142, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.tc)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.td = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.te = add nsw i32 %i.td, %.0142               ; 2 uses
  %i.tf = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.tg = icmp slt i32 %i.te, %i.tf
  br i1 %i.tg, label %.noexc, label %._crit_edge, !llvm.loop !1914

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us105.i, %.lr.ph96.i, %.preheader.i
  %i.th = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.ti = add nsw i32 %i.th, %.044143             ; 2 uses
  %i.tj = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.tk = icmp slt i32 %i.ti, %i.tj
  br i1 %i.tk, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1915

._crit_edge148:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge148, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.c
  %i.tl = landingpad { ptr, i32 }
          catch ptr null
  %i.tm = extractvalue { ptr, i32 } %i.tl, 0
  call void @__clang_call_terminate(ptr %i.tm) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not186 = icmp sgt i32 %i.k, %i.j
  br i1 %.not186, label %._crit_edge189, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge189

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.sj, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0187 = phi i32 [ %i.sk, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0187, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = shl i32 %i.t, 4
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.3
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.sg, %.thread.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.3 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 7 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1916
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1916
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1916
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1916 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 1                    ; 4 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !67   ; 25 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 8 uses
  %i.be = add nsw i32 %i.av, 2                    ; 8 uses
  %i.bf = add nsw i32 %i.av, 3                    ; 8 uses
  %i.bg = sext i32 %i.az to i64                   ; 3 uses
  %i.bh = icmp slt i32 %i.aq, %i.az
  br i1 %i.bh, label %bb.c, label %.thread

bb.c:                                             ; preds = %.noexc
  switch i32 %i.ab, label %.thread [
    i32 8, label %bb.d
    i32 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bi = load i64, ptr %i.ay, align 1, !tbaa !316
  %i.bj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bi, i64 0
  %i.bk = bitcast <2 x i64> %i.bj to <16 x i8>    ; 2 uses
  %.lobit.i166 = ashr <16 x i8> %i.bk, splat (i8 7)
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> %.lobit.i166, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>    ; 2 uses
  %i.bn = icmp slt i32 %i.bd, %i.ba
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bp = load i64, ptr %i.bo, align 1, !tbaa !316
  %i.bq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bp, i64 0
  %i.br = bitcast <2 x i64> %i.bq to <16 x i8>    ; 2 uses
  %.lobit.i165 = ashr <16 x i8> %i.br, splat (i8 7)
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> %.lobit.i165, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0151 = phi <2 x i64> [ %i.bt, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bu = icmp slt i32 %i.be, %i.ba
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bw = load i64, ptr %i.bv, align 1, !tbaa !316
  %i.bx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bw, i64 0
  %i.by = bitcast <2 x i64> %i.bx to <16 x i8>    ; 2 uses
  %.lobit.i164 = ashr <16 x i8> %i.by, splat (i8 7)
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> %.lobit.i164, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ca = bitcast <16 x i8> %i.bz to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0156 = phi <2 x i64> [ %i.ca, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.cb = icmp slt i32 %i.bf, %i.ba
  br i1 %i.cb, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cd = load i64, ptr %i.cc, align 1, !tbaa !316
  %i.ce = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cd, i64 0
  %i.cf = bitcast <2 x i64> %i.ce to <16 x i8>    ; 2 uses
  %.lobit.i163 = ashr <16 x i8> %i.cf, splat (i8 7)
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> %.lobit.i163, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  br label %.thread

bb.j:                                             ; preds = %bb.c
  %i.ci = load i64, ptr %12, align 8, !tbaa !295  ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ci
  %i.ck = shl i64 %i.ci, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ck
  %i.cm = mul i64 %i.ci, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cm
  %i.co = shl i64 %i.ci, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.co
  %i.cq = mul i64 %i.ci, 5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cq
  %i.cs = mul i64 %i.ci, 6
end_hunk_9
begin_hunk_10_@_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  store float %i.aej, ptr %i.aef, align 4, !tbaa !39
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %i.yq ; 2 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.yq ; 2 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %i.yq ; 2 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.yq ; 2 uses
  %i.aeo = fadd fast float %.1278.us, %i.acu
  %i.aep = fsub fast float %.1.us, %i.aeo
  store float %i.aep, ptr %i.aek, align 4, !tbaa !39
  %i.aeq = fadd fast float %i.acu, %i.abv
  store float %i.aeq, ptr %i.ael, align 4, !tbaa !39
  %i.aer = fsub fast float %i.acu, %i.abv
  store float %i.aer, ptr %i.aem, align 4, !tbaa !39
  %i.aes = fadd fast float %.1278.us.3, %i.abv
  %i.aet = fsub fast float %.1.us.3, %i.aes
  store float %i.aet, ptr %i.aen, align 4, !tbaa !39
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.yq
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.yq
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %i.yq
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %i.yq
  %i.aey = fadd fast float %.1278.us, %i.acv
  %i.aez = fsub fast float %.0275.us, %i.aey
  store float %i.aez, ptr %i.aeu, align 4, !tbaa !39
  %i.afa = fadd fast float %i.acv, %i.abw
  store float %i.afa, ptr %i.aev, align 4, !tbaa !39
  %i.afb = fsub fast float %i.acv, %i.abw
  store float %i.afb, ptr %i.aew, align 4, !tbaa !39
  %i.afc = fadd fast float %.1278.us.3, %i.abw
  %i.afd = fsub fast float %.0275.us.3, %i.afc
  store float %i.afd, ptr %i.aex, align 4, !tbaa !39
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count490
  br i1 %exitcond491.not, label %._crit_edge.us447, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2198

._crit_edge.us447:                                ; preds = %bb.ck
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, 1 ; 2 uses
  %i.afe = icmp slt i64 %indvars.iv.next493, %i.zf
  br i1 %i.afe, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge444, !llvm.loop !2199

._crit_edge444:                                   ; preds = %._crit_edge.us447, %.lr.ph443, %._crit_edge423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2200 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2200 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !2200
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2200
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2200
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2200 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2200
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2200
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2200
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2200
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2200
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2200
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2200
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2200
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2200
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !2200
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2200
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2200
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !2200 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !2200
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2200
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2203
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2203
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2203 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2203
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2203
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2203
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2203
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2203
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x [4 x [8 x float]]], align 32 ; 11 uses
  %i.b = alloca [2 x [4 x [4 x float]]], align 16 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %indvars.iv880.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %indvars.iv.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.by

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 %i.i, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 1, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !67
  %i.j = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !67
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !67
  %i.m = load i32, ptr %i.c, align 4, !tbaa !67   ; 3 uses
  %.not164 = icmp sgt i32 %i.m, %i.l
  br i1 %.not164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bg = sub i32 0, %i.m
  br label %bb.c
end_hunk_10
begin_hunk_11_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.bgj = insertelement <2 x float> poison, float %i.bgh, i64 0
  %i.bgk = shufflevector <2 x float> %i.bgj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgl = select <2 x i1> %i.bgi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bgk
  %i.bgm = fmul fast <2 x float> %i.bgl, %i.bei
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.i: ; preds = %bb.bf
  %i.bgn = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bei, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.i, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.i, %bb.bk, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.i, %bb.bf
  %i.bgo = phi <2 x float> [ %i.bex, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.i ], [ %i.bgn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.i ], [ %i.bgm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.i ], [ %i.bgf, %bb.bl ], [ %i.bge, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.i ], [ %i.bfw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.i ], [ %i.bfq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.i ], [ %i.bff, %bb.bk ], [ %i.bfb, %bb.bj ], [ %i.bei, %bb.bf ] ; 2 uses
  %i.bgp = bitcast <2 x float> %i.bgo to <4 x i16>
  %i.bgq = extractelement <4 x i16> %i.bgp, i64 1
  store i16 %i.bgq, ptr %i.bdk, align 2, !tbaa !573
  br i1 %i.bdm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.bgr = bitcast <2 x float> %i.bgo to <4 x i16>
  %i.bgs = extractelement <4 x i16> %i.bgr, i64 3
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bdk, i64 2
  store i16 %i.bgs, ptr %i.bgt, align 2, !tbaa !573
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.bgu = getelementptr inbounds [2 x i8], ptr %i.bdk, i64 %i.bbj
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.bdk, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.bgu, %bb.bn ] ; 2 uses
  %i.bgv = or disjoint i32 %i.bdf, 1
  %.not505.us.1.i = icmp slt i32 %i.bgv, %i.co
  br i1 %.not505.us.1.i, label %bb.bp, label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  %i.bgw = fadd fast float %i.bcj, %i.bbs
  %i.bgx = fsub fast float %i.bgw, %i.bck
  %i.bgy = fadd fast float %i.bgx, %i.bcl         ; 2 uses
  %i.bgz = fsub fast float %i.bgy, %i.bct
  %i.bha = fadd fast float %i.bcz, %i.bgz
  %i.bhb = fadd fast float %i.bcf, %i.bgy
  %i.bhc = fadd fast float %i.bhb, %i.bct         ; 8 uses
  %i.bhd = fadd fast float %i.bha, %i.bda         ; 7 uses
  %i.bhe = insertelement <2 x float> poison, float %i.bhc, i64 0
  %i.bhf = insertelement <2 x float> %i.bhe, float %i.bhd, i64 1 ; 7 uses
  switch i32 %i.cm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i
    i32 6, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.bhg = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bhh = load float, ptr %i.bhg, align 4, !tbaa !39 ; 5 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 4
  %i.bhj = load float, ptr %i.bhi, align 4, !tbaa !39 ; 3 uses
  %i.bhk = fneg fast float %i.bhj
  %i.bhl = fdiv fast float %i.bhk, %i.bhh         ; 4 uses
  %i.bhm = fcmp fast olt float %i.bhc, %i.bhl
  br i1 %i.bhm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bhn = fdiv fast float 1.000000e+00, %i.bhh
  %i.bho = fadd fast float %i.bhl, %i.bhn
  %i.bhp = fcmp fast ogt float %i.bhc, %i.bho
  br i1 %i.bhp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.bhq = fmul fast float %i.bhh, %i.bhc
  %i.bhr = fadd fast float %i.bhq, %i.bhj
  %i.bhs = fmul fast float %i.bhr, %i.bhc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %.1606745.us.1.i = phi float [ %i.bhs, %bb.bs ], [ 0.000000e+00, %bb.bq ], [ %i.bhc, %bb.br ] ; 2 uses
  %i.bht = fcmp fast olt float %i.bhd, %i.bhl
  %i.bhu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1606745.us.1.i, i64 0 ; 2 uses
  br i1 %i.bht, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, label %bb.bt

bb.bt:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i
  %i.bhv = fdiv fast float 1.000000e+00, %i.bhh
  %i.bhw = fadd fast float %i.bhl, %i.bhv
  %i.bhx = fcmp fast ogt float %i.bhd, %i.bhw
  %i.bhy = insertelement <2 x float> %i.bhf, float %.1606745.us.1.i, i64 0
  br i1 %i.bhx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.bhz = fmul fast float %i.bhh, %i.bhd
  %i.bia = fadd fast float %i.bhz, %i.bhj
  %i.bib = fmul fast float %i.bia, %i.bhd
  %i.bic = insertelement <2 x float> %i.bhu, float %i.bib, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i: ; preds = %bb.bp
  %i.bid = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bhc)
  %i.bie = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bhd)
  %i.bif = fadd fast float %i.bie, 1.000000e+00
  %i.big = fadd fast float %i.bid, 1.000000e+00
  %i.bih = call fast float @llvm.log.f32(float %i.bif)
  %i.bii = call fast float @llvm.log.f32(float %i.big)
  %i.bij = call fast float @llvm.tanh.f32(float %i.bih)
  %i.bik = call fast float @llvm.tanh.f32(float %i.bii)
  %i.bil = insertelement <2 x float> poison, float %i.bik, i64 0
  %i.bim = insertelement <2 x float> %i.bil, float %i.bij, i64 1
  %i.bin = fmul fast <2 x float> %i.bim, %i.bhf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i: ; preds = %bb.bp
  %i.bio = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bhf, <2 x float> splat (float f0x42B0C0A5))
  %i.bip = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bio, <2 x float> splat (float f0xC2B0C0A5))
  %i.biq = fneg fast <2 x float> %i.bip
  %i.bir = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.biq)
  %i.bis = fadd fast <2 x float> %i.bir, splat (float 1.000000e+00)
  %i.bit = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bis
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i: ; preds = %bb.bp
  %i.biu = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.biv = load float, ptr %i.biu, align 4, !tbaa !39 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biu, i64 4
  %i.bix = load float, ptr %i.biw, align 4, !tbaa !39 ; 4 uses
  %.0605.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bhc, float %i.biv) ; 2 uses
  %i.biy = fcmp fast ogt float %.0605.us.1.i, %i.bix
  %.1606751.us.1.i = select i1 %i.biy, float %i.bix, float %.0605.us.1.i
  %.0607.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bhd, float %i.biv) ; 2 uses
  %i.biz = fcmp fast ogt float %.0607.us.1.i, %i.bix
  %i.bja = insertelement <2 x float> poison, float %.1606751.us.1.i, i64 0
  %i.bjb = insertelement <2 x float> %i.bja, float %.0607.us.1.i, i64 1 ; 2 uses
  br i1 %i.biz, label %bb.bv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

bb.bv:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i
  %i.bjc = insertelement <2 x float> %i.bjb, float %i.bix, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i: ; preds = %bb.bp
  %i.bjd = load ptr, ptr %15, align 8, !tbaa !18
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !39
  %i.bjf = fcmp fast ogt <2 x float> %i.bhf, zeroinitializer
  %i.bjg = insertelement <2 x float> poison, float %i.bje, i64 0
  %i.bjh = shufflevector <2 x float> %i.bjg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bji = select <2 x i1> %i.bjf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bjh
  %i.bjj = fmul fast <2 x float> %i.bji, %i.bhf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i: ; preds = %bb.bp
  %i.bjk = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bhf, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i, %bb.bv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i, %bb.bu, %bb.bt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i, %bb.bp
  %i.bjl = phi <2 x float> [ %i.bhu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i ], [ %i.bjk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i ], [ %i.bjj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i ], [ %i.bjc, %bb.bv ], [ %i.bjb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i ], [ %i.bit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i ], [ %i.bin, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i ], [ %i.bic, %bb.bu ], [ %i.bhy, %bb.bt ], [ %i.bhf, %bb.bp ] ; 2 uses
  %i.bjm = bitcast <2 x float> %i.bjl to <4 x i16>
  %i.bjn = extractelement <4 x i16> %i.bjm, i64 1
  store i16 %i.bjn, ptr %.1.us.i, align 2, !tbaa !573
  br i1 %i.bdm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i
  %i.bjo = bitcast <2 x float> %i.bjl to <4 x i16>
  %i.bjp = extractelement <4 x i16> %i.bjo, i64 3
  %i.bjq = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 2
  store i16 %i.bjp, ptr %i.bjq, align 2, !tbaa !573
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, %bb.bo
  %indvars.iv.next914.i = add nuw nsw i64 %indvars.iv913.i, 1 ; 2 uses
  %exitcond917.not.i = icmp eq i64 %indvars.iv.next914.i, %wide.trip.count916.i
  br i1 %exitcond917.not.i, label %._crit_edge846.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !2232

._crit_edge846.us.i:                              ; preds = %bb.bx
  %indvars.iv.next919.i = add nuw nsw i64 %indvars.iv918.i, 1 ; 2 uses
  %exitcond922.not.i = icmp eq i64 %indvars.iv.next919.i, %i.ca
  br i1 %exitcond922.not.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.bd, !llvm.loop !2233

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bjr = phi i32 [ %i.blk, %.noexc ], [ %.pre173, %.noexc.preheader ] ; 2 uses
  %i.bjs = phi i32 [ %i.blm, %.noexc ], [ %i.ck, %.noexc.preheader ]
  %.0156 = phi i32 [ %i.bll, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bjt = sub nsw i32 %i.bjs, %.0156
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bjr, i32 %i.bjt)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.bju = load i32, ptr %3, align 4, !tbaa !67
  %i.bjv = sdiv i32 %i.bi, %i.bju
  %i.bjw = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2234
  %i.bjx = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2234
  %i.bjy = sext i32 %i.bjv to i64
  %i.bjz = mul i64 %i.bjx, %i.bjy
  %i.bka = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2234 ; 3 uses
  %i.bkb = mul i64 %i.bjz, %i.bka
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjw, i64 %i.bkb
  %i.bkd = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2234
  %i.bke = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2234
  %i.bkf = sdiv i32 %.0156, %i.bjr
  %i.bkg = sext i32 %i.bkf to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2237
  store i64 %i.bka, ptr %i.w, align 8, !tbaa !65, !alias.scope !2237
  store i32 %i.bkd, ptr %i.x, align 8, !tbaa !66, !alias.scope !2237
  store ptr %i.bke, ptr %i.y, align 8, !tbaa !17, !alias.scope !2237
  store i32 2, ptr %i.z, align 8, !tbaa !289, !alias.scope !2237
  %18 = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !2234
  %i.bkh = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !2234
  %i.bki = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !2234
  %i.bkj = sext i32 %i.bki to i64
  %i.bkk = sext i32 %i.bkh to i64
  %i.bkl = mul nsw i64 %i.bkk, %i.bkj             ; 2 uses
  %i.bkm = mul i64 %i.bka, %i.bkl
  %i.bkn = mul i64 %i.bkm, %i.bkg
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkc, i64 %i.bkn
  store ptr %i.bko, ptr %16, align 8, !tbaa !18, !alias.scope !2237
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bkp = shufflevector <4 x i32> %19, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bkp, ptr %i.aa, align 4, !tbaa !67, !alias.scope !2237
  store i64 %i.bkl, ptr %i.ab, align 8, !tbaa !20, !alias.scope !2237
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.bkq = load i32, ptr %7, align 4, !tbaa !67
  %i.bkr = sdiv i32 %.047162, %i.bkq
  %i.bks = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2240
  %i.bkt = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !2240
  %i.bku = sext i32 %i.bkr to i64
  %i.bkv = mul i64 %i.bkt, %i.bku
  %i.bkw = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !2240 ; 3 uses
  %i.bkx = mul i64 %i.bkv, %i.bkw
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bkx
  %i.bkz = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !2240
  %i.bla = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !2240
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.bkw, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.bkz, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.bla, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !289
  %20 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !2240
  %i.blb = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !2240
  %i.blc = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !2240
  %i.bld = sext i32 %i.blc to i64
  %i.ble = sext i32 %i.blb to i64
  %i.blf = mul nsw i64 %i.ble, %i.bld             ; 2 uses
  %i.blg = mul i64 %i.bkw, %i.blf
  %i.blh = mul i64 %i.blg, %i.bkg
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bky, i64 %i.blh
  store ptr %i.bli, ptr %17, align 8, !tbaa !18
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.blj = shufflevector <4 x i32> %21, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.blj, ptr %i.an, align 4, !tbaa !67
  store i64 %i.blf, ptr %i.ao, align 8, !tbaa !20, !alias.scope !2243
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.bq, i32 noundef 16, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0156, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.blk = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.bll = add nsw i32 %i.blk, %.0156             ; 2 uses
  %i.blm = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.bln = icmp slt i32 %i.bll, %i.blm
  br i1 %i.bln, label %.noexc, label %._crit_edge, !llvm.loop !2246

_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge846.us.i, %.lr.ph852.i, %.preheader.i
  %i.blo = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.blp = add nsw i32 %i.blo, %.047162           ; 2 uses
  %i.blq = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.blr = icmp slt i32 %i.blp, %i.blq
  br i1 %i.blr, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2247

._crit_edge168:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge168, %bb.a
  ret void

bb.bz:                                            ; preds = %bb.c
  %i.bls = landingpad { ptr, i32 }
          catch ptr null
  %i.blt = extractvalue { ptr, i32 } %i.bls, 0
  call void @__clang_call_terminate(ptr %i.blt) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not246 = icmp sgt i32 %i.k, %i.j
  br i1 %.not246, label %._crit_edge249, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge249

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.abd, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0247 = phi i32 [ %i.abe, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0247, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = shl i32 %i.t, 4
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread233.3
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.aba, %.thread233.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread233.3 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 7 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2248
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !2248
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2248
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2248 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 1                    ; 4 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ax ; 18 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !67   ; 37 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 12 uses
  %i.be = add nsw i32 %i.av, 2                    ; 12 uses
  %i.bf = add nsw i32 %i.av, 3                    ; 12 uses
  %i.bg = sext i32 %i.az to i64                   ; 3 uses
  %i.bh = icmp slt i32 %i.aq, %i.az
  br i1 %i.bh, label %bb.c, label %.thread233

bb.c:                                             ; preds = %.noexc
  switch i32 %i.ab, label %.thread233 [
    i32 8, label %bb.d
    i32 4, label %bb.j
    i32 1, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.bi = load <8 x i16>, ptr %i.ay, align 16, !tbaa !316 ; 2 uses
  %i.bj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bl = shufflevector <8 x i16> %i.bj, <8 x i16> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = bitcast <16 x i16> %i.bl to <8 x float> ; 2 uses
  %i.bn = icmp slt i32 %i.bd, %i.ba
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bp = load <8 x i16>, ptr %i.bo, align 16, !tbaa !316 ; 2 uses
  %i.bq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.br = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bs = shufflevector <8 x i16> %i.bq, <8 x i16> %i.br, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bt = bitcast <16 x i16> %i.bs to <8 x float>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0145 = phi nsz <8 x float> [ %i.bt, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bu = icmp slt i32 %i.be, %i.ba
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bw = load <8 x i16>, ptr %i.bv, align 16, !tbaa !316 ; 2 uses
  %i.bx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.by = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bz = shufflevector <8 x i16> %i.bx, <8 x i16> %i.by, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = bitcast <16 x i16> %i.bz to <8 x float>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0148 = phi nsz <8 x float> [ %i.ca, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.cb = icmp slt i32 %i.bf, %i.ba
  br i1 %i.cb, label %bb.i, label %.thread233

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.cd = load <8 x i16>, ptr %i.cc, align 16, !tbaa !316 ; 2 uses
  %i.ce = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cg = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ch = bitcast <16 x i16> %i.cg to <8 x float>
  br label %.thread233

bb.j:                                             ; preds = %bb.c
  %i.ci = load i64, ptr %12, align 8, !tbaa !295
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ci ; 4 uses
  %i.ck = load i64, ptr %i.ay, align 1, !tbaa !316
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %i.cn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.co = load i64, ptr %i.cj, align 1, !tbaa !316
  %i.cp = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %i.cq = bitcast <2 x i64> %i.cp to <8 x i16>
  %i.cr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = shufflevector <8 x i16> %i.cn, <8 x i16> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = bitcast <16 x i16> %i.cs to <8 x float> ; 2 uses
  %i.cu = icmp slt i32 %i.bd, %i.ba
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_11
begin_hunk_12_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.chu = getelementptr inbounds nuw [4 x i8], ptr %i.cgw, i64 %i.bpv
  %i.chv = fmul fast float %i.bvg, f0x3FB504F3
  %i.chw = fmul fast float %i.bzc, f0x3F3504F3
  %i.chx = fsub fast float %i.chv, %i.chw         ; 2 uses
  %i.chy = fmul fast float %i.bxe, 2.000000e+00
  %i.chz = fsub fast float %i.cba, %i.chy         ; 2 uses
  %i.cia = fmul fast float %i.bzc, f0x3FB504F3
  %i.cib = fmul fast float %i.bvg, f0x3F3504F3
  %i.cic = fsub fast float %i.cia, %i.cib         ; 2 uses
  %i.cid = fmul fast float %i.bxe, 5.000000e-01
  %i.cie = fsub fast float %i.cba, %i.cid         ; 2 uses
  %.neg.us.5 = fmul fast float %i.bxe, -2.500000e+00
  %i.cif = fadd fast float %i.bti, %.neg.us.5
  %i.cig = fadd fast float %i.cif, %i.cba
  store float %i.cig, ptr %i.chp, align 4, !tbaa !39
  %i.cih = fsub fast float %i.chz, %i.chx
  store float %i.cih, ptr %i.chq, align 4, !tbaa !39
  %i.cii = fadd fast float %i.chz, %i.chx
  store float %i.cii, ptr %i.chr, align 4, !tbaa !39
  %i.cij = fadd fast float %i.cie, %i.cic
  store float %i.cij, ptr %i.chs, align 4, !tbaa !39
  %i.cik = fsub fast float %i.cie, %i.cic
  store float %i.cik, ptr %i.cht, align 4, !tbaa !39
  %.neg629.us.5 = fmul fast float %i.bzc, -2.500000e+00
  %i.cil = fadd fast float %i.bvg, %.neg629.us.5
  %i.cim = fadd fast float %i.cil, %i.ccy
  store float %i.cim, ptr %i.chu, align 4, !tbaa !39
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next731, %wide.trip.count733
  br i1 %exitcond734.not, label %._crit_edge.us690, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2266

._crit_edge.us690:                                ; preds = %bb.hu
  %indvars.iv.next736 = add nsw i64 %indvars.iv735, 1 ; 2 uses
  %i.cin = icmp slt i64 %indvars.iv.next736, %i.bqk
  br i1 %i.cin, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge687, !llvm.loop !2267

._crit_edge687:                                   ; preds = %._crit_edge.us690, %.lr.ph686, %._crit_edge664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2268)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2268 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2268 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !2268
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2268
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2268
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2268 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2268
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2268
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2268
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2268
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2268
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2268
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2268
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2268
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2268
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !2268
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2268
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2268
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !2268 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !2268
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2268
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2271
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2271
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2271 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2271
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2271
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2271
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2271
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2271
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !2274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.17(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [8 x float]]], align 32 ; 27 uses
  %i.b = alloca [4 x [6 x [4 x float]]], align 16 ; 27 uses
  %i.c = alloca [4 x [6 x [2 x float]]], align 16 ; 27 uses
  %.sroa.21 = alloca [36 x i8], align 8           ; 11 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.et

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 3 uses
  %.not141 = icmp sgt i32 %i.n, %i.m
  br i1 %.not141, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 480
end_hunk_12
begin_hunk_13_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.17:bb.a
  br i1 %i.dts, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.dtt = fmul fast float %i.dtb, %i.dto
  %i.dtu = fadd fast float %i.dtt, %i.dtd
  %i.dtv = fmul fast float %i.dtu, %i.dto
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3: ; preds = %bb.eh, %bb.eg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3
  %.112341868.us.i.3 = phi float [ %i.dtv, %bb.eh ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3 ], [ %i.dto, %bb.eg ]
  %i.dtw = extractelement <4 x float> %i.dsz, i64 0 ; 5 uses
  %i.dtx = fcmp fast olt float %i.dtw, %i.dtf
  br i1 %i.dtx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, label %bb.ei

bb.ei:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3
  %i.dty = fdiv fast float 1.000000e+00, %i.dtb
  %i.dtz = fadd fast float %i.dtf, %i.dty
  %i.dua = fcmp fast ogt float %i.dtw, %i.dtz
  br i1 %i.dua, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.dub = fmul fast float %i.dtb, %i.dtw
  %i.duc = fadd fast float %i.dub, %i.dtd
  %i.dud = fmul fast float %i.duc, %i.dtw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3: ; preds = %bb.ej, %bb.ei, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3
  %.112361904.us.i.3 = phi float [ %i.dud, %bb.ej ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3 ], [ %i.dtw, %bb.ei ]
  %i.due = extractelement <4 x float> %i.dsz, i64 3 ; 4 uses
  %i.duf = fcmp fast olt float %i.due, %i.dtf
  %i.dug = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.112361904.us.i.3, i64 0
  %i.duh = insertelement <4 x float> %i.dug, float %.112341868.us.i.3, i64 1
  %i.dui = insertelement <4 x float> %i.duh, float %.112321845.us.i.3, i64 2 ; 3 uses
  br i1 %i.duf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.ek

bb.ek:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3
  %i.duj = fdiv fast float 1.000000e+00, %i.dtb
  %i.duk = fadd fast float %i.dtf, %i.duj
  %i.dul = fcmp fast ogt float %i.due, %i.duk
  %i.dum = shufflevector <4 x float> %i.dui, <4 x float> %i.dsz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.dul, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.dun = fmul fast float %i.dtb, %i.due
  %i.duo = fadd fast float %i.dun, %i.dtd
  %i.dup = fmul fast float %i.duo, %i.due
  %i.duq = insertelement <4 x float> %i.dui, float %i.dup, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3: ; preds = %bb.ec
  %i.dur = extractelement <4 x float> %i.dsz, i64 2
  %i.dus = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dur)
  %i.dut = extractelement <4 x float> %i.dsz, i64 1
  %i.duu = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dut)
  %i.duv = extractelement <4 x float> %i.dsz, i64 0
  %i.duw = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.duv)
  %i.dux = extractelement <4 x float> %i.dsz, i64 3
  %i.duy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dux)
  %i.duz = fadd fast float %i.duy, 1.000000e+00
  %i.dva = fadd fast float %i.dus, 1.000000e+00
  %i.dvb = fadd fast float %i.duu, 1.000000e+00
  %i.dvc = fadd fast float %i.duw, 1.000000e+00
  %i.dvd = call fast float @llvm.log.f32(float %i.duz)
  %i.dve = call fast float @llvm.log.f32(float %i.dva)
  %i.dvf = call fast float @llvm.log.f32(float %i.dvb)
  %i.dvg = call fast float @llvm.log.f32(float %i.dvc)
  %i.dvh = call fast float @llvm.tanh.f32(float %i.dvd)
  %i.dvi = call fast float @llvm.tanh.f32(float %i.dve)
  %i.dvj = call fast float @llvm.tanh.f32(float %i.dvf)
  %i.dvk = call fast float @llvm.tanh.f32(float %i.dvg)
  %i.dvl = insertelement <4 x float> poison, float %i.dvk, i64 0
  %i.dvm = insertelement <4 x float> %i.dvl, float %i.dvj, i64 1
  %i.dvn = insertelement <4 x float> %i.dvm, float %i.dvi, i64 2
  %i.dvo = insertelement <4 x float> %i.dvn, float %i.dvh, i64 3
  %i.dvp = fmul fast <4 x float> %i.dvo, %i.dsz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3: ; preds = %bb.ec
  %i.dvq = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dsz, <4 x float> splat (float f0x42B0C0A5))
  %i.dvr = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dvq, <4 x float> splat (float f0xC2B0C0A5))
  %i.dvs = fneg fast <4 x float> %i.dvr
  %i.dvt = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dvs)
  %i.dvu = fadd fast <4 x float> %i.dvt, splat (float 1.000000e+00)
  %i.dvv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dvu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3: ; preds = %bb.ec
  %i.dvw = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.dvx = load float, ptr %i.dvw, align 4, !tbaa !39 ; 3 uses
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvw, i64 4
  %i.dvz = load float, ptr %i.dvy, align 4, !tbaa !39 ; 5 uses
  %i.dwa = shufflevector <4 x float> %i.dsz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dwb = insertelement <2 x float> poison, float %i.dvx, i64 0
  %i.dwc = shufflevector <2 x float> %i.dwb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dwd = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dwa, <2 x float> %i.dwc) ; 2 uses
  %i.dwe = insertelement <2 x float> poison, float %i.dvz, i64 0
  %i.dwf = shufflevector <2 x float> %i.dwe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dwg = fcmp fast ogt <2 x float> %i.dwd, %i.dwf
  %i.dwh = select <2 x i1> %i.dwg, <2 x float> %i.dwf, <2 x float> %i.dwd
  %i.dwi = extractelement <4 x float> %i.dsz, i64 0
  %.01235.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dwi, float %i.dvx) ; 2 uses
  %i.dwj = fcmp fast ogt float %.01235.us.i.3, %i.dvz
  %.112361914.us.i.3 = select i1 %i.dwj, float %i.dvz, float %.01235.us.i.3
  %i.dwk = extractelement <4 x float> %i.dsz, i64 3
  %.01237.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dwk, float %i.dvx) ; 2 uses
  %i.dwl = fcmp fast ogt float %.01237.us.i.3, %i.dvz
  %i.dwm = insertelement <4 x float> poison, float %.112361914.us.i.3, i64 0
  %i.dwn = shufflevector <2 x float> %i.dwh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dwo = shufflevector <4 x float> %i.dwm, <4 x float> %i.dwn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.dwp = insertelement <4 x float> %i.dwo, float %.01237.us.i.3, i64 3
  br i1 %i.dwl, label %bb.em, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

bb.em:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3
  %i.dwq = insertelement <4 x float> %i.dwo, float %i.dvz, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3: ; preds = %bb.ec
  %i.dwr = load ptr, ptr %15, align 8, !tbaa !18
  %i.dws = load float, ptr %i.dwr, align 4, !tbaa !39
  %i.dwt = fcmp fast ogt <4 x float> %i.dsz, zeroinitializer
  %i.dwu = insertelement <4 x float> poison, float %i.dws, i64 0
  %i.dwv = shufflevector <4 x float> %i.dwu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dww = select <4 x i1> %i.dwt, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dwv
  %i.dwx = fmul fast <4 x float> %i.dww, %i.dsz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3: ; preds = %bb.ec
  %i.dwy = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dsz, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3, %bb.em, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3, %bb.el, %bb.ek, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, %bb.ec
  %i.dwz = phi <4 x float> [ %i.dui, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3 ], [ %i.dwy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3 ], [ %i.dwx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3 ], [ %i.dwq, %bb.em ], [ %i.dwp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3 ], [ %i.dvv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3 ], [ %i.dvp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3 ], [ %i.duq, %bb.el ], [ %i.dum, %bb.ek ], [ %i.dsz, %bb.ec ] ; 4 uses
  %i.dxa = bitcast <4 x float> %i.dwz to <8 x i16>
  %i.dxb = extractelement <8 x i16> %i.dxa, i64 5
  store i16 %i.dxb, ptr %.1.us.i.2, align 2, !tbaa !573
  br i1 %i.dco, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  %i.dxc = bitcast <4 x float> %i.dwz to <8 x i16>
  %i.dxd = extractelement <8 x i16> %i.dxc, i64 3
  %i.dxe = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 2
  store i16 %i.dxd, ptr %i.dxe, align 2, !tbaa !573
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  br i1 %i.dcq, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.dxf = bitcast <4 x float> %i.dwz to <8 x i16>
  %i.dxg = extractelement <8 x i16> %i.dxf, i64 1
  %i.dxh = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 4
  store i16 %i.dxg, ptr %i.dxh, align 2, !tbaa !573
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  br i1 %i.dcs, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.dxi = bitcast <4 x float> %i.dwz to <8 x i16>
  %i.dxj = extractelement <8 x i16> %i.dxi, i64 7
  %i.dxk = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 6
  store i16 %i.dxj, ptr %i.dxk, align 2, !tbaa !573
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er, %bb.eb
  %indvars.iv.next2111.i = add nuw nsw i64 %indvars.iv2110.i, 1 ; 2 uses
  %exitcond2114.not.i = icmp eq i64 %indvars.iv.next2111.i, %wide.trip.count2113.i
  br i1 %exitcond2114.not.i, label %._crit_edge2039.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !2301

._crit_edge2039.us.i:                             ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  %indvars.iv.next2116.i = add nuw nsw i64 %indvars.iv2115.i, 1 ; 2 uses
  %exitcond2119.not.i = icmp eq i64 %indvars.iv.next2116.i, %i.eg
  br i1 %exitcond2119.not.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.by, !llvm.loop !2302

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.dxl = phi i32 [ %i.dze, %.noexc ], [ %.pre150, %.noexc.preheader ] ; 2 uses
  %i.dxm = phi i32 [ %i.dzg, %.noexc ], [ %i.eq, %.noexc.preheader ]
  %.0133 = phi i32 [ %i.dzf, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.dxn = sub nsw i32 %i.dxm, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dxl, i32 %i.dxn)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.dxo = load i32, ptr %3, align 4, !tbaa !67
  %i.dxp = sdiv i32 %i.do, %i.dxo
  %i.dxq = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2303
  %i.dxr = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !2303
  %i.dxs = sext i32 %i.dxp to i64
  %i.dxt = mul i64 %i.dxr, %i.dxs
  %i.dxu = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !2303 ; 3 uses
  %i.dxv = mul i64 %i.dxt, %i.dxu
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxq, i64 %i.dxv
  %i.dxx = load i32, ptr %i.u, align 8, !tbaa !66, !noalias !2303
  %i.dxy = load ptr, ptr %i.v, align 8, !tbaa !17, !noalias !2303
  %i.dxz = sdiv i32 %.0133, %i.dxl
  %i.dya = sext i32 %i.dxz to i64                 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !11, !alias.scope !2306
  store i64 %i.dxu, ptr %i.x, align 8, !tbaa !65, !alias.scope !2306
  store i32 %i.dxx, ptr %i.y, align 8, !tbaa !66, !alias.scope !2306
  store ptr %i.dxy, ptr %i.z, align 8, !tbaa !17, !alias.scope !2306
  store i32 2, ptr %i.aa, align 8, !tbaa !289, !alias.scope !2306
  %18 = load <2 x i32>, ptr %i.q, align 4, !tbaa !67, !noalias !2303
  %i.dyb = load i32, ptr %i.r, align 8, !tbaa !76, !noalias !2303
  %i.dyc = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !2303
  %i.dyd = sext i32 %i.dyc to i64
  %i.dye = sext i32 %i.dyb to i64
  %i.dyf = mul nsw i64 %i.dye, %i.dyd             ; 2 uses
  %i.dyg = mul i64 %i.dxu, %i.dyf
  %i.dyh = mul i64 %i.dyg, %i.dya
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dxw, i64 %i.dyh
  store ptr %i.dyi, ptr %16, align 8, !tbaa !18, !alias.scope !2306
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dyj = shufflevector <4 x i32> %19, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dyj, ptr %i.ab, align 4, !tbaa !67, !alias.scope !2306
  store i64 %i.dyf, ptr %i.ac, align 8, !tbaa !20, !alias.scope !2306
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.dyk = load i32, ptr %7, align 4, !tbaa !67
  %i.dyl = sdiv i32 %.047139, %i.dyk
  %i.dym = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2309
  %i.dyn = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !2309
  %i.dyo = sext i32 %i.dyl to i64
  %i.dyp = mul i64 %i.dyn, %i.dyo
  %i.dyq = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !2309 ; 3 uses
  %i.dyr = mul i64 %i.dyp, %i.dyq
  %i.dys = getelementptr inbounds nuw i8, ptr %i.dym, i64 %i.dyr
  %i.dyt = load i32, ptr %i.ah, align 8, !tbaa !66, !noalias !2309
  %i.dyu = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !2309
  store ptr null, ptr %i.aj, align 8, !tbaa !11
  store i64 %i.dyq, ptr %i.ak, align 8, !tbaa !65
  store i32 %i.dyt, ptr %i.al, align 8, !tbaa !66
  store ptr %i.dyu, ptr %i.am, align 8, !tbaa !17
  store i32 2, ptr %i.an, align 8, !tbaa !289
  %20 = load <2 x i32>, ptr %i.ad, align 4, !tbaa !67, !noalias !2309
  %i.dyv = load i32, ptr %i.ae, align 8, !tbaa !76, !noalias !2309
  %i.dyw = load i32, ptr %i.ad, align 4, !tbaa !75, !noalias !2309
  %i.dyx = sext i32 %i.dyw to i64
  %i.dyy = sext i32 %i.dyv to i64
  %i.dyz = mul nsw i64 %i.dyy, %i.dyx             ; 2 uses
  %i.dza = mul i64 %i.dyq, %i.dyz
  %i.dzb = mul i64 %i.dza, %i.dya
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dys, i64 %i.dzb
  store ptr %i.dzc, ptr %17, align 8, !tbaa !18
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dzd = shufflevector <4 x i32> %21, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dzd, ptr %i.ao, align 4, !tbaa !67
  store i64 %i.dyz, ptr %i.ap, align 8, !tbaa !20, !alias.scope !2312
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.dw, i32 noundef 36, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated120, i32 noundef %.0133, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.dze = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.dzf = add nsw i32 %i.dze, %.0133             ; 2 uses
  %i.dzg = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.dzh = icmp slt i32 %i.dzf, %i.dzg
  br i1 %i.dzh, label %.noexc, label %._crit_edge, !llvm.loop !2315

_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge2039.us.i, %.lr.ph2045.i, %.preheader.i
  %i.dzi = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.dzj = add nsw i32 %i.dzi, %.047139           ; 2 uses
  %i.dzk = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.dzl = icmp slt i32 %i.dzj, %i.dzk
  br i1 %i.dzl, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2316

._crit_edge145:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.et

bb.et:                                            ; preds = %._crit_edge145, %bb.a
  ret void

bb.eu:                                            ; preds = %bb.c
  %i.dzm = landingpad { ptr, i32 }
          catch ptr null
  %i.dzn = extractvalue { ptr, i32 } %i.dzm, 0
  call void @__clang_call_terminate(ptr %i.dzn) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ew

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not371 = icmp sgt i32 %i.k, %i.j
  br i1 %.not371, label %._crit_edge374, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge374

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.bux, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0192372 = phi i32 [ %i.buy, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0192372, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread354.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.buu, %.thread354.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread354.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2317
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !2317
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2317
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2317 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ax ; 24 uses
  %i.az = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %13, align 4, !tbaa !67   ; 91 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 18 uses
  %i.be = or disjoint i32 %i.av, 2                ; 18 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 18 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 18 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 18 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
  %i.bj = icmp slt i32 %i.aq, %i.az
  br i1 %i.bj, label %bb.c, label %.thread354

bb.c:                                             ; preds = %.noexc
  switch i32 %i.ab, label %.thread354 [
    i32 8, label %bb.d
    i32 4, label %bb.n
    i32 1, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  %i.bk = load <8 x i16>, ptr %i.ay, align 16, !tbaa !316 ; 2 uses
  %i.bl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bn = shufflevector <8 x i16> %i.bl, <8 x i16> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = bitcast <16 x i16> %i.bn to <8 x float> ; 2 uses
  %i.bp = icmp slt i32 %i.bd, %i.ba
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.br = load <8 x i16>, ptr %i.bq, align 16, !tbaa !316 ; 2 uses
  %i.bs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.br, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bt = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.br, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bu = shufflevector <8 x i16> %i.bs, <8 x i16> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bv = bitcast <16 x i16> %i.bu to <8 x float>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0341 = phi nsz <8 x float> [ %i.bv, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bw = icmp slt i32 %i.be, %i.ba
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.by = load <8 x i16>, ptr %i.bx, align 16, !tbaa !316 ; 2 uses
  %i.bz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.by, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ca = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.by, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cb = shufflevector <8 x i16> %i.bz, <8 x i16> %i.ca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = bitcast <16 x i16> %i.cb to <8 x float>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0335 = phi nsz <8 x float> [ %i.cc, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.cd = icmp slt i32 %i.bf, %i.ba
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.cf = load <8 x i16>, ptr %i.ce, align 16, !tbaa !316 ; 2 uses
  %i.cg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ch = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ci = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ch, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cj = bitcast <16 x i16> %i.ci to <8 x float>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0329 = phi nsz <8 x float> [ %i.cj, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.ck = icmp slt i32 %i.bg, %i.ba
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.cm = load <8 x i16>, ptr %i.cl, align 16, !tbaa !316 ; 2 uses
  %i.cn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.co = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cp = shufflevector <8 x i16> %i.cn, <8 x i16> %i.co, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cq = bitcast <16 x i16> %i.cp to <8 x float>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_13
begin_hunk_14_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  store float %i.buu, ptr %.0619962.us, align 4, !tbaa !39
  %i.buv = fsub fast float %i.bud, %i.buh
  store float %i.buv, ptr %.0618963.us, align 4, !tbaa !39
  %i.buw = extractelement <2 x float> %i.bul, i64 0 ; 2 uses
  %i.bux = extractelement <2 x float> %i.bul, i64 1 ; 2 uses
  %i.buy = fadd fast float %i.bux, %i.buw
  store float %i.buy, ptr %.0617964.us, align 4, !tbaa !39
  %i.buz = fsub fast float %i.bux, %i.buw
  store float %i.buz, ptr %.0616965.us, align 4, !tbaa !39
  %i.bva = fsub fast float %i.btn, %i.btx
  %foldExtExtBinop = fsub fast <2 x float> %i.btp, %i.btq
  %i.bvb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bvc = fmul fast float %i.bvb, 5.250000e+00
  %i.bvd = fadd fast float %i.bva, %i.bvc
  store float %i.bvd, ptr %.0615966.us, align 4, !tbaa !39
  %i.bve = getelementptr inbounds nuw [4 x i8], ptr %.0622959.us, i64 %i.bnz
  %i.bvf = getelementptr inbounds nuw [4 x i8], ptr %.0621960.us, i64 %i.bnz
  %i.bvg = getelementptr inbounds nuw [4 x i8], ptr %.0620961.us, i64 %i.bnz
  %i.bvh = getelementptr inbounds nuw [4 x i8], ptr %.0619962.us, i64 %i.bnz
  %i.bvi = getelementptr inbounds nuw [4 x i8], ptr %.0618963.us, i64 %i.bnz
  %i.bvj = getelementptr inbounds nuw [4 x i8], ptr %.0617964.us, i64 %i.bnz
  %i.bvk = getelementptr inbounds nuw [4 x i8], ptr %.0616965.us, i64 %i.bnz
  %i.bvl = getelementptr inbounds nuw [4 x i8], ptr %.0615966.us, i64 %i.bnz
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1 ; 2 uses
  %exitcond1019.not = icmp eq i64 %indvars.iv.next1017, 8
  br i1 %exitcond1019.not, label %bb.fu, label %bb.ft, !llvm.loop !2339

bb.fu:                                            ; preds = %bb.ft
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 2 uses
  %exitcond1024.not = icmp eq i64 %indvars.iv.next1021, %wide.trip.count1023
  br i1 %exitcond1024.not, label %._crit_edge.us977, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2340

._crit_edge.us977:                                ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 1 ; 2 uses
  %i.bvm = icmp slt i64 %indvars.iv.next1026, %i.boo
  br i1 %i.bvm, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge974, !llvm.loop !2341

._crit_edge974:                                   ; preds = %._crit_edge.us977, %.lr.ph973, %._crit_edge949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2342 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2342 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !290, !noalias !2342
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2342
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2342
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2342 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2342
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2342
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2342
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2342
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2342
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2342
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2342
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2342
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2342
  store i32 1, ptr %i.ac, align 4, !tbaa !290, !alias.scope !2342
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2342
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2342
  %i.by = load i32, ptr %i.af, align 8, !tbaa !289, !noalias !2342 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !289, !alias.scope !2342
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2342
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2345
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2345
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2345 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2345
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2345
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  store i32 2, ptr %i.aq, align 8, !tbaa !289
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2345
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2345
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2345
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !18
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !67
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !20, !alias.scope !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 64, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cz, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.dd, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dd) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dt = add nsw i32 %.067, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not134 = icmp sgt i32 %i.k, %i.j
  br i1 %.not134, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph137, %_ZN4ncnn3MatD2Ev.exit
  %.048135 = phi i32 [ %i.k, %.lr.ph137 ], [ %i.bc, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.an = load i32, ptr %3, align 4, !tbaa !67
  %i.ao = mul nsw i32 %i.an, %.048135             ; 3 uses
  %i.ap = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit79 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit79:                    ; preds = %bb.c
  %i.aq = load ptr, ptr %4, align 8, !tbaa !18, !noalias !2351
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !2351
  %i.as = sext i32 %i.ap to i64
  %i.at = mul i64 %i.ar, %i.as
  %i.au = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !2351
  %i.av = mul i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %5, align 4, !tbaa !67
  %i.ay = sub nsw i32 %i.ax, %i.ao
  %i.az = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated123 = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.ay) ; 2 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit79
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZN4ncnn3Mat7channelEi.exit79
  %i.bc = add nsw i32 %.048135, 1
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048135, %i.bd
  br i1 %.not.not, label %bb.c, label %._crit_edge138

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.be = phi i32 [ %i.bk, %._crit_edge ], [ %.pre, %.lr.ph.preheader ]
  %i.bf = phi i32 [ %i.bm, %._crit_edge ], [ %i.ba, %.lr.ph.preheader ]
  %.047133 = phi i32 [ %i.bl, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bg = sub nsw i32 %i.bf, %.047133
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bg) ; 2 uses
  %i.bh = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph
  %.pre139 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %.lr.ph
  %i.bj = load i32, ptr %14, align 4, !tbaa !67
  %.val81 = load ptr, ptr %13, align 8, !tbaa !18
  call fastcc void @_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_(ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val81, i32 noundef %i.ao, i32 noundef %.sroa.speculated123, i32 noundef %.047133, i32 noundef %.sroa.speculated119, i32 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %15)
  %i.bk = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.bl = add nsw i32 %i.bk, %.047133             ; 2 uses
  %i.bm = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2354

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bo = phi i32 [ %i.dh, %.noexc ], [ %.pre139, %.noexc.preheader ] ; 2 uses
  %i.bp = phi i32 [ %i.dj, %.noexc ], [ %i.bh, %.noexc.preheader ]
  %.0132 = phi i32 [ %i.di, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bq = sub nsw i32 %i.bp, %.0132
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.br = load i32, ptr %3, align 4, !tbaa !67
  %i.bs = sdiv i32 %i.ao, %i.br
  %i.bt = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2355
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2355
  %i.bv = sext i32 %i.bs to i64
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !2355 ; 3 uses
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by
  %i.ca = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !2355
  %i.cb = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !2355
  %i.cc = sdiv i32 %.0132, %i.bo
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !2358
  store i64 %i.bx, ptr %i.u, align 8, !tbaa !65, !alias.scope !2358
  store i32 %i.ca, ptr %i.v, align 8, !tbaa !66, !alias.scope !2358
  store ptr %i.cb, ptr %i.w, align 8, !tbaa !17, !alias.scope !2358
  store i32 2, ptr %i.x, align 8, !tbaa !289, !alias.scope !2358
  %18 = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !2355
  %i.ce = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !2355
  %i.cf = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !2355
  %i.cg = sext i32 %i.cf to i64
  %i.ch = sext i32 %i.ce to i64
  %i.ci = mul nsw i64 %i.ch, %i.cg                ; 2 uses
  %i.cj = mul i64 %i.bx, %i.ci
  %i.ck = mul i64 %i.cj, %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ck
  store ptr %i.cl, ptr %16, align 8, !tbaa !18, !alias.scope !2358
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x i32> %19, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cm, ptr %i.y, align 4, !tbaa !67, !alias.scope !2358
  store i64 %i.ci, ptr %i.z, align 8, !tbaa !20, !alias.scope !2358
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.cn = load i32, ptr %7, align 4, !tbaa !67
  %i.co = sdiv i32 %.047133, %i.cn
  %i.cp = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2361
  %i.cq = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !2361
  %i.cr = sext i32 %i.co to i64
  %i.cs = mul i64 %i.cq, %i.cr
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !2361 ; 3 uses
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu
  %i.cw = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !2361
  %i.cx = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !2361
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.ct, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.cw, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.cx, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !289
  %20 = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !2361
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !2361
  %i.cz = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !2361
  %i.da = sext i32 %i.cz to i64
  %i.db = sext i32 %i.cy to i64
  %i.dc = mul nsw i64 %i.db, %i.da                ; 2 uses
  %i.dd = mul i64 %i.ct, %i.dc
  %i.de = mul i64 %i.dd, %i.cd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.de
  store ptr %i.df, ptr %17, align 8, !tbaa !18
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x i32> %21, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dg, ptr %i.al, align 4, !tbaa !67
  store i64 %i.dc, ptr %i.am, align 8, !tbaa !20, !alias.scope !2364
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.aw, i32 noundef 64, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0132, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.dh = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.di = add nsw i32 %i.dh, %.0132               ; 2 uses
  %i.dj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.noexc, label %._crit_edge, !llvm.loop !2367

._crit_edge138:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge138, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_(ptr nofree readonly %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readonly captures(address_is_null) %.0.val1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x [8 x [8 x float]]], align 32 ; 9 uses
  %i.b = alloca [6 x [8 x [4 x float]]], align 16 ; 9 uses
  %i.c = alloca [6 x [8 x [2 x float]]], align 16 ; 9 uses
  %i.d = alloca [6 x [8 x float]], align 16       ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75   ; 25 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = sext i32 %i.j to i64
  %i.n = mul i64 %i.l, %i.m                       ; 12 uses
  %i.o = add nsw i32 %i.f, 5
  %i.p = sdiv i32 %i.o, 6                         ; 8 uses
  %factor.op.mul3528 = shl i32 %4, 6              ; 5 uses
  %i.q = icmp sgt i32 %2, 7
  br i1 %i.q, label %.lr.ph3531, label %.preheader3515

.lr.ph3531:                                       ; preds = %bb.a
  %.not1119 = icmp eq ptr %.0.val1, null
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.r
  %i.t = icmp sgt i32 %4, 0
  %i.u = shl nsw i32 %4, 3
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i32 %4, 4
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i32 %4, 24
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i32 %4, 5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i32 %4, 40
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i32 %4, 48
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i32 %4, 56
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.an = sext i32 %factor.op.mul3528 to i64      ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.idx1121 = shl i64 %i.n, 2
  %.idx1122 = mul i64 %i.n, 6
  %.idx1123 = shl i64 %i.n, 3
  %.idx1124 = mul i64 %i.n, 10
  %.idx1125 = mul i64 %i.n, 12
  %.idx1126 = mul i64 %i.n, 14
  %i.ap = mul nsw i32 %i.j, %i.f
  %i.aq = sext i32 %i.ap to i64
  br i1 %i.t, label %.lr.ph3531.split.us.preheader, label %.lr.ph3531.split

.lr.ph3531.split.us.preheader:                    ; preds = %.lr.ph3531
  %i.ar = sext i32 %i.h to i64
  %i.as = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph3531.split.us

.lr.ph3531.split.us:                              ; preds = %.lr.ph3531.split.us.preheader, %._crit_edge.us
  %indvars.iv3620 = phi i64 [ 0, %.lr.ph3531.split.us.preheader ], [ %indvars.iv.next3621, %._crit_edge.us ] ; 4 uses
  br i1 %.not1119, label %.lr.ph.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph3531.split.us
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv3620
  %i.au = load <8 x float>, ptr %i.at, align 1, !tbaa !316
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.b, %.lr.ph3531.split.us
  %i.av = phi fast <8 x float> [ %i.au, %bb.b ], [ zeroinitializer, %.lr.ph3531.split.us ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aw = trunc nuw nsw i64 %indvars.iv3620 to i32
  %factor.op.mul.reass.us = mul i32 %factor.op.mul3528, %i.aw
  %i.ax = sext i32 %factor.op.mul.reass.us to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.ax
  %i.az = trunc i64 %indvars.iv3620 to i32
  %i.ba = add i32 %1, %i.az
  %i.bb = sdiv i32 %i.ba, %i.j
  %i.bc = sext i32 %i.bb to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.am
  %indvars.iv3616 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next3617, %bb.am ] ; 3 uses
  %.idx3708 = shl nuw nsw i64 %indvars.iv3616, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx3708 ; 8 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.v
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.x
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.z
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ab
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ad
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.af
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 7 uses
  %.010703524.us = phi ptr [ %i.dd, %bb.d ], [ %i.bd, %bb.c ] ; 2 uses
  %.010713523.us = phi ptr [ %i.de, %bb.d ], [ %i.be, %bb.c ] ; 2 uses
  %.010723522.us = phi ptr [ %i.df, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %.010733521.us = phi ptr [ %i.dg, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %.010743520.us = phi ptr [ %i.dh, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %.010753519.us = phi ptr [ %i.di, %bb.d ], [ %i.bi, %bb.c ] ; 2 uses
  %.010763518.us = phi ptr [ %i.dj, %bb.d ], [ %i.bj, %bb.c ] ; 2 uses
  %.010903517.us = phi ptr [ %i.dk, %bb.d ], [ %i.bk, %bb.c ] ; 2 uses
  %i.bl = load <8 x float>, ptr %.010703524.us, align 32, !tbaa !316
  %i.bm = load <8 x float>, ptr %.010713523.us, align 32, !tbaa !316 ; 2 uses
  %i.bn = load <8 x float>, ptr %.010723522.us, align 32, !tbaa !316 ; 2 uses
  %i.bo = load <8 x float>, ptr %.010733521.us, align 32, !tbaa !316 ; 2 uses
  %i.bp = load <8 x float>, ptr %.010743520.us, align 32, !tbaa !316 ; 2 uses
  %i.bq = load <8 x float>, ptr %.010753519.us, align 32, !tbaa !316 ; 2 uses
  %i.br = load <8 x float>, ptr %.010763518.us, align 32, !tbaa !316 ; 2 uses
  %i.bs = load <8 x float>, ptr %.010903517.us, align 32, !tbaa !316
  %i.bt = fadd fast <8 x float> %i.bn, %i.bm      ; 3 uses
  %i.bu = fsub fast <8 x float> %i.bm, %i.bn      ; 3 uses
  %i.bv = fadd fast <8 x float> %i.bp, %i.bo      ; 3 uses
  %i.bw = fsub fast <8 x float> %i.bo, %i.bp      ; 3 uses
  %i.bx = fadd fast <8 x float> %i.br, %i.bq      ; 3 uses
  %i.by = fsub fast <8 x float> %i.bq, %i.br      ; 3 uses
  %i.bz = fadd fast <8 x float> %i.bt, %i.bl
  %i.ca = fmul fast <8 x float> %i.bx, splat (float 3.200000e+01)
  %i.cb = fadd fast <8 x float> %i.bv, %i.ca
  %i.cc = fadd fast <8 x float> %i.bz, %i.cb
  %i.cd = fmul fast <8 x float> %i.bw, splat (float 2.000000e+00)
  %i.ce = fadd fast <8 x float> %i.bu, %i.cd
  %i.cf = fmul fast <8 x float> %i.by, splat (float 1.600000e+01)
  %i.cg = fadd fast <8 x float> %i.cf, %i.ce
  %i.ch = fmul fast <8 x float> %i.bv, splat (float 4.000000e+00)
  %i.ci = fadd fast <8 x float> %i.bt, %i.ch
  %i.cj = fmul fast <8 x float> %i.bx, splat (float 8.000000e+00)
  %i.ck = fadd fast <8 x float> %i.cj, %i.ci
  %i.cl = fmul fast <8 x float> %i.bw, splat (float 8.000000e+00)
  %i.cm = fadd fast <8 x float> %i.bu, %i.cl
  %i.cn = fmul fast <8 x float> %i.by, splat (float 4.000000e+00)
  %i.co = fadd fast <8 x float> %i.cn, %i.cm
  %i.cp = fmul fast <8 x float> %i.bv, splat (float 1.600000e+01)
  %i.cq = fadd fast <8 x float> %i.bt, %i.cp
  %i.cr = fmul fast <8 x float> %i.bx, splat (float 2.000000e+00)
  %i.cs = fadd fast <8 x float> %i.cr, %i.cq
  %i.ct = fadd fast <8 x float> %i.bs, %i.bu
  %i.cu = fmul fast <8 x float> %i.bw, splat (float 3.200000e+01)
  %i.cv = fadd fast <8 x float> %i.cu, %i.by
  %i.cw = fadd fast <8 x float> %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv
  store <8 x float> %i.cc, ptr %i.cx, align 32, !tbaa !316
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv
  store <8 x float> %i.cg, ptr %i.cy, align 32, !tbaa !316
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %indvars.iv
  store <8 x float> %i.ck, ptr %i.cz, align 32, !tbaa !316
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv
  store <8 x float> %i.co, ptr %i.da, align 32, !tbaa !316
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv
  store <8 x float> %i.cs, ptr %i.db, align 32, !tbaa !316
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv
  store <8 x float> %i.cw, ptr %i.dc, align 32, !tbaa !316
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.010703524.us, i64 %i.an
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.010713523.us, i64 %i.an
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.010723522.us, i64 %i.an
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.010733521.us, i64 %i.an
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.010743520.us, i64 %i.an
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.010753519.us, i64 %i.an
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.010763518.us, i64 %i.an
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.010903517.us, i64 %i.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
end_hunk_14
