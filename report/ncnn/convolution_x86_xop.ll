Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_xop?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  store i16 %i.qr, ptr %i.qn, align 2, !tbaa !239
  %i.qs = sub nsw i16 %i.pe, %i.oj
  store i16 %i.qs, ptr %i.qo, align 2, !tbaa !239
  %i.qt = sub nsw i16 %i.pz, %i.oj
  store i16 %i.qt, ptr %i.qp, align 2, !tbaa !239
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.lm ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.lm ; 2 uses
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.lm ; 2 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.lm ; 2 uses
  %i.qy = sub nsw i16 %i.nq, %i.pg
  store i16 %i.qy, ptr %i.qu, align 2, !tbaa !239
  %i.qz = add nsw i16 %i.pg, %i.ol
  store i16 %i.qz, ptr %i.qv, align 2, !tbaa !239
  %i.ra = sub nsw i16 %i.pg, %i.ol
  store i16 %i.ra, ptr %i.qw, align 2, !tbaa !239
  %i.rb = sub nsw i16 %i.qb, %i.ol
  store i16 %i.rb, ptr %i.qx, align 2, !tbaa !239
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %i.lm
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.lm
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qw, i64 %i.lm
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %i.lm
  %i.rg = sub nsw i16 %i.ns, %i.pi
  store i16 %i.rg, ptr %i.rc, align 2, !tbaa !239
  %i.rh = add nsw i16 %i.pi, %i.on
  store i16 %i.rh, ptr %i.rd, align 2, !tbaa !239
  %i.ri = sub nsw i16 %i.pi, %i.on
  store i16 %i.ri, ptr %i.re, align 2, !tbaa !239
  %i.rj = sub nsw i16 %i.qd, %i.on
  store i16 %i.rj, ptr %i.rf, align 2, !tbaa !239
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge.us267, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !246

._crit_edge.us267:                                ; preds = %bb.bi
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.rk = icmp slt i64 %indvars.iv.next294, %i.mb
  br i1 %i.rk, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge264, !llvm.loop !247

._crit_edge264:                                   ; preds = %._crit_edge.us267, %.lr.ph263, %._crit_edge248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #14 personality ptr @__gxx_personality_v0 {
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
  %i.h = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.j, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 1, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !9
  %i.k = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !9
  %i.n = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not68 = icmp sgt i32 %i.n, %i.m
  br i1 %.not68, label %._crit_edge, label %.lr.ph

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
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !9     ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !9     ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !9
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !10, !noalias !248 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !19, !noalias !248 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !251, !noalias !248
  %i.bi = load ptr, ptr %8, align 8, !tbaa !32, !noalias !248
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !248
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !248 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !16, !noalias !248
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !225, !noalias !248
  store ptr %i.bo, ptr %11, align 8, !tbaa !32
  store ptr null, ptr %i.v, align 8, !tbaa !226
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !36
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !225
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !10
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !19
  store i32 1, ptr %i.ac, align 4, !tbaa !251
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !17
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !18
  %i.by = load i32, ptr %i.af, align 8, !tbaa !227, !noalias !248 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !227, !alias.scope !248
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !18, !alias.scope !248
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.cb = load i32, ptr %4, align 4, !tbaa !9
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !32, !noalias !252
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !252
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !36, !noalias !252 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !16, !noalias !252
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !225, !noalias !252
  %i.cm = load i32, ptr %5, align 4, !tbaa !9
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !226
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !36
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !16
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !225
  store i32 2, ptr %i.aq, align 8, !tbaa !227
  %13 = load <4 x i32>, ptr %i.ag, align 4
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !19, !noalias !252
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !10, !noalias !252
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !32
  %i.cx = shufflevector <4 x i32> %13, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !9
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !18, !alias.scope !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !9
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !9
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !9
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !226 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cz, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !225 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !231
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !233

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.dd, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.dd) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !226 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dj, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !225 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !231
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !233

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dn, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dn) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dt = add nsw i32 %.069, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #24
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not151 = icmp sgt i32 %i.k, %i.j
  br i1 %.not151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.b
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

bb.c:                                             ; preds = %.lr.ph154, %_ZN4ncnn3MatD2Ev.exit
  %.045152 = phi i32 [ %i.k, %.lr.ph154 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !9
  %i.at = mul nsw i32 %i.as, %.045152             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ad

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !32, !noalias !258
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !258
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !258
  %i.ba = mul i64 %i.ay, %i.az
end_hunk_0
begin_hunk_1_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1:bb.a
.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph395.split.preheader.i, %.preheader372.i
  %.1288.lcssa.i = phi i32 [ %.0287.lcssa.i, %.preheader372.i ], [ %i.ne, %.preheader.loopexit.i ], [ %i.hf, %.lr.ph395.split.preheader.i ] ; 2 uses
  %i.nf = icmp slt i32 %.1288.lcssa.i, %.sroa.speculated120
  br i1 %i.nf, label %.lr.ph413.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph413.i:                                      ; preds = %.preheader.i
  %i.ng = icmp sgt i32 %.sroa.speculated116, 0
  %i.nh = sext i32 %.sroa.speculated116 to i64
  %i.ni = shl nsw i32 %.sroa.speculated116, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = mul nsw i32 %.sroa.speculated116, 3
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl nsw i32 %.sroa.speculated116, 2
  %i.nn = sext i32 %i.nm to i64                   ; 12 uses
  %i.no = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.ng, label %.lr.ph413.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph413.split.us.i:                             ; preds = %.lr.ph413.i
  %i.np = load ptr, ptr %12, align 8, !tbaa !32, !noalias !271
  %i.nq = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !271
  %i.nr = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !271 ; 2 uses
  %factor.op.mul423.i = mul i64 %i.nr, %i.nq
  %i.ns = sext i32 %.1288.lcssa.i to i64
  %wide.trip.count466.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us421.i

.lr.ph.us421.i:                                   ; preds = %._crit_edge.us422.i, %.lr.ph413.split.us.i
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %._crit_edge.us422.i ], [ %i.ns, %.lr.ph413.split.us.i ] ; 3 uses
  %i.nt = trunc nsw i64 %indvars.iv468.i to i32
  %factor.op.mul408.reass.us.i = mul i32 %factor.op.mul381.i, %i.nt
  %i.nu = sext i32 %factor.op.mul408.reass.us.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nu
  %i.nw = add nsw i64 %indvars.iv468.i, %i.bl
  %.reass424.i = mul i64 %factor.op.mul423.i, %i.nw
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 %.reass424.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us419.i, %.lr.ph.us421.i
  %indvars.iv463.i = phi i64 [ 0, %.lr.ph.us421.i ], [ %indvars.iv.next464.i, %.split.us419.i ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv463.i ; 5 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nh ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nj ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nl ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !9
  %i.od = load i32, ptr %i.nz, align 4, !tbaa !9  ; 2 uses
  %i.oe = add nsw i32 %i.od, %i.oc
  %i.of = load i32, ptr %i.oa, align 4, !tbaa !9  ; 2 uses
  %i.og = add nsw i32 %i.oe, %i.of                ; 2 uses
  %i.oh = sub i32 %i.od, %i.of
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !9
  %i.oj = add nsw i32 %i.oh, %i.oi                ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nn ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nn ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nn ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nn ; 2 uses
  %i.oo = load i32, ptr %i.ok, align 4, !tbaa !9
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !9  ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.oo
  %i.or = load i32, ptr %i.om, align 4, !tbaa !9  ; 2 uses
  %i.os = add nsw i32 %i.oq, %i.or                ; 3 uses
  %i.ot = sub i32 %i.op, %i.or
  %i.ou = load i32, ptr %i.on, align 4, !tbaa !9
  %i.ov = add nsw i32 %i.ot, %i.ou                ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.nn ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.nn ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.nn ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nn ; 2 uses
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !9
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !9  ; 2 uses
  %i.pc = add nsw i32 %i.pb, %i.pa
  %i.pd = load i32, ptr %i.oy, align 4, !tbaa !9  ; 2 uses
  %i.pe = add nsw i32 %i.pc, %i.pd                ; 3 uses
  %i.pf = sub i32 %i.pb, %i.pd
  %i.pg = load i32, ptr %i.oz, align 4, !tbaa !9
  %i.ph = add nsw i32 %i.pf, %i.pg                ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.nn
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nn
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nn
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.nn
  %i.pm = load i32, ptr %i.pi, align 4, !tbaa !9
  %i.pn = load i32, ptr %i.pj, align 4, !tbaa !9  ; 2 uses
  %i.po = load i32, ptr %i.pk, align 4, !tbaa !9  ; 2 uses
  %i.pp = load i32, ptr %i.pl, align 4, !tbaa !9
  %i.pq = trunc i64 %indvars.iv463.i to i32
  %i.pr = add i32 %.044150, %i.pq                 ; 2 uses
  %i.ps = sdiv i32 %i.pr, %i.ca
  %i.pt = srem i32 %i.pr, %i.ca
  %i.pu = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !271
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
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i
  %i.qg = add nsw i32 %i.os, %i.og
  %i.qh = add nsw i32 %i.qg, %i.pe
  %i.qi = ashr i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qd, align 4, !tbaa !9
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i

_ZN4ncnn3MatD2Ev.exit.split.us420.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i
  %.1.us418.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us420.preheader.i ], [ %i.qj, %bb.y ]
  %i.qk = or disjoint i32 %i.pw, 1
  %.not.us417.1.i = icmp slt i32 %i.qk, %i.bu
  br i1 %.not.us417.1.i, label %bb.z, label %.split.us419.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i
  %i.ql = add nsw i32 %i.ov, %i.oj
  %i.qm = add nsw i32 %i.ql, %i.ph
  %i.qn = ashr i32 %i.qm, 2
  store i32 %i.qn, ptr %.1.us418.i, align 4, !tbaa !9
  br label %.split.us419.i

.split.us419.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us420.1.i
  %indvars.iv.next464.i = add nuw nsw i64 %indvars.iv463.i, 1 ; 2 uses
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next464.i, %wide.trip.count466.i
  br i1 %exitcond467.not.i, label %._crit_edge.us422.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !274

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qo = add nsw i32 %i.os, %i.og
  %i.qp = add nsw i32 %i.qo, %i.pe
  %i.qq = ashr i32 %i.qp, 2
  store i32 %i.qq, ptr %i.qd, align 4, !tbaa !9
  %i.qr = sub i32 %i.os, %i.pe
  %i.qs = add i32 %i.qr, %i.pm
  %i.qt = add i32 %i.qs, %i.pn
  %i.qu = add i32 %i.qt, %i.po
  %i.qv = ashr i32 %i.qu, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !9
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.qx, %bb.aa ] ; 2 uses
  %i.qy = or disjoint i32 %i.pw, 1
  %.not.us.us.1.i = icmp slt i32 %i.qy, %i.bu
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us419.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.qz = add nsw i32 %i.ov, %i.oj
  %i.ra = add nsw i32 %i.qz, %i.ph
  %i.rb = ashr i32 %i.ra, 2
  store i32 %i.rb, ptr %.1.us.us.i, align 4, !tbaa !9
  %i.rc = add i32 %i.ov, %i.pn
  %i.rd = add i32 %i.ph, %i.po
  %i.re = sub i32 %i.rc, %i.rd
  %i.rf = add i32 %i.re, %i.pp
  %i.rg = ashr i32 %i.rf, 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !9
  br label %.split.us419.i

._crit_edge.us422.i:                              ; preds = %.split.us419.i
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond472.not.i = icmp eq i64 %indvars.iv.next469.i, %i.bk
  br i1 %exitcond472.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us421.i, !llvm.loop !275

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.ri = phi i32 [ %i.td, %.noexc52 ], [ %.pre156, %.noexc52.preheader ] ; 3 uses
  %i.rj = phi i32 [ %i.tf, %.noexc52 ], [ %i.br, %.noexc52.preheader ] ; 2 uses
  %.0149 = phi i32 [ %i.te, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.rk = sub nsw i32 %i.rj, %.0149
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ri, i32 %i.rk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.rl = load i32, ptr %3, align 4, !tbaa !9
  %i.rm = sdiv i32 %i.at, %i.rl
  %i.rn = load ptr, ptr %10, align 8, !tbaa !32, !noalias !276
  %i.ro = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !276
  %i.rp = sext i32 %i.rm to i64
  %i.rq = mul i64 %i.ro, %i.rp
  %i.rr = load i64, ptr %i.q, align 8, !tbaa !36, !noalias !276 ; 3 uses
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rs
  %i.ru = load i32, ptr %i.r, align 8, !tbaa !16, !noalias !276
  %i.rv = load ptr, ptr %i.s, align 8, !tbaa !225, !noalias !276
  %i.rw = sdiv i32 %.0149, %i.ri
  %i.rx = sext i32 %i.rw to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !226
  store i64 %i.rr, ptr %i.u, align 8, !tbaa !36
  store i32 %i.ru, ptr %i.v, align 8, !tbaa !16
  store ptr %i.rv, ptr %i.w, align 8, !tbaa !225
  store i32 2, ptr %i.x, align 8, !tbaa !227
  %15 = load <4 x i32>, ptr %i.n, align 4
  %i.ry = load i32, ptr %i.o, align 8, !tbaa !19, !noalias !276
  %i.rz = load i32, ptr %i.n, align 4, !tbaa !10, !noalias !276
  %i.sa = sext i32 %i.rz to i64
  %i.sb = sext i32 %i.ry to i64
  %i.sc = mul nsw i64 %i.sb, %i.sa                ; 2 uses
  %i.sd = mul i64 %i.rr, %i.sc
  %i.se = mul i64 %i.sd, %i.rx
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.se
  store ptr %i.sf, ptr %13, align 8, !tbaa !32
  %i.sg = shufflevector <4 x i32> %15, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.sg, ptr %i.y, align 4, !tbaa !9
  store i64 %i.sc, ptr %i.z, align 8, !tbaa !18, !alias.scope !279
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.sh = load i32, ptr %7, align 4, !tbaa !9
  %i.si = sdiv i32 %.044150, %i.sh
  %i.sj = load ptr, ptr %11, align 8, !tbaa !32, !noalias !282
  %i.sk = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !282
  %i.sl = sext i32 %i.si to i64
  %i.sm = mul i64 %i.sk, %i.sl
  %i.sn = load i64, ptr %i.ad, align 8, !tbaa !36, !noalias !282 ; 3 uses
  %i.so = mul i64 %i.sm, %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.so
  %i.sq = load i32, ptr %i.ae, align 8, !tbaa !16, !noalias !282
  %i.sr = load ptr, ptr %i.af, align 8, !tbaa !225, !noalias !282
  store ptr null, ptr %i.ag, align 8, !tbaa !226
  store i64 %i.sn, ptr %i.ah, align 8, !tbaa !36
  store i32 %i.sq, ptr %i.ai, align 8, !tbaa !16
  store ptr %i.sr, ptr %i.aj, align 8, !tbaa !225
  store i32 2, ptr %i.ak, align 8, !tbaa !227
  %16 = load <4 x i32>, ptr %i.aa, align 4
  %i.ss = load i32, ptr %i.ab, align 8, !tbaa !19, !noalias !282
  %i.st = load i32, ptr %i.aa, align 4, !tbaa !10, !noalias !282
  %i.su = sext i32 %i.st to i64
  %i.sv = sext i32 %i.ss to i64
  %i.sw = mul nsw i64 %i.sv, %i.su                ; 2 uses
  %i.sx = mul i64 %i.sn, %i.sw
  %i.sy = mul i64 %i.sx, %i.rx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sy
  store ptr %i.sz, ptr %14, align 8, !tbaa !32
  %i.ta = shufflevector <4 x i32> %16, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ta, ptr %i.al, align 4, !tbaa !9
  store i64 %i.sw, ptr %i.am, align 8, !tbaa !18, !alias.scope !285
  %i.tb = add nsw i32 %i.ri, %.0149
  %i.tc = icmp sge i32 %i.tb, %i.rj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated120, i32 noundef %.sroa.speculated116, i32 noundef %.0149, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.tc)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.td = load i32, ptr %9, align 4, !tbaa !9     ; 2 uses
  %i.te = add nsw i32 %i.td, %.0149               ; 2 uses
  %i.tf = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.tg = icmp slt i32 %i.te, %i.tf
  br i1 %i.tg, label %.noexc52, label %._crit_edge, !llvm.loop !288

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us422.i, %.lr.ph413.i, %.preheader.i
  %i.th = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.ti = add nsw i32 %i.th, %.044150             ; 2 uses
  %i.tj = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.tk = icmp slt i32 %i.ti, %i.tj
  br i1 %i.tk, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !289

._crit_edge155:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge155, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.c
  %i.tl = landingpad { ptr, i32 }
          catch ptr null
  %i.tm = extractvalue { ptr, i32 } %i.tl, 0
  call void @__clang_call_terminate(ptr %i.tm) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #15 {
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
  %i.i = add i32 %6, -2                           ; 6 uses
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
  %i.u = add nuw i32 %i.t, 1                      ; 6 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1389 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1398 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1393.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1397 = trunc i32 %i.u to i1
  %xtraiter1402 = and i32 %i.u, 3                 ; 3 uses
  %i.z = icmp ult i32 %i.i, 6
  %unroll_iter1407 = and i32 %i.u, -4
  %lcmp.mod1403.not = icmp eq i32 %xtraiter1402, 0
  %lcmp.mod1406 = icmp ne i32 %xtraiter1402, 0
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0622360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.aa = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

.preheader203.loopexit:                           ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %indvars.iv.next750 to i32
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader203.loopexit, %bb.a
  %.0625.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %.preheader203.loopexit ] ; 3 uses
  %.0622.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader203.loopexit ] ; 2 uses
  %i.ac = or disjoint i32 %.0625.lcssa, 1
  %i.ad = icmp slt i32 %i.ac, %3
  br i1 %i.ad, label %.preheader202.lr.ph, label %.preheader194

.preheader202.lr.ph:                              ; preds = %.preheader203
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = icmp sgt i32 %4, 7
  %i.aj = icmp eq i32 %5, 0                       ; 4 uses
  %i.ak = icmp sgt i32 %6, 1                      ; 4 uses
  %i.al = add i32 %6, -2                          ; 6 uses
  %i.am = and i32 %i.al, -2
  %i.an = add i32 %i.am, 2                        ; 4 uses
  %i.ao = and i32 %4, -8
  %i.ap = lshr i32 %i.al, 1
  %i.aq = zext nneg i32 %i.ap to i64              ; 5 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = shl nuw nsw i64 %i.aq, 2
  %i.au = zext nneg i32 %.0625.lcssa to i64
  %i.av = sext i32 %3 to i64
  %i.aw = sext i32 %6 to i64
  %wide.trip.count763 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.av, -1
  %i.ax = lshr i32 %i.al, 1                       ; 2 uses
  %i.ay = add nuw i32 %i.ax, 1                    ; 2 uses
  %i.az = icmp eq i32 %i.ax, 0
  %unroll_iter1419 = and i32 %i.ay, -2
  %i.ba = and i32 %i.al, 2
  %lcmp.mod1414.not.not = icmp eq i32 %i.ba, 0
  %lcmp.mod1418 = trunc i32 %i.ay to i1
  %i.bb = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i32 %i.al, 6
  %n.vec1105 = and i64 %i.bb, 4294967292          ; 4 uses
  %i.bc = trunc nuw i64 %n.vec1105 to i32
  %i.bd = shl i32 %i.bc, 1
  %i.be = shl nuw nsw i64 %n.vec1105, 3           ; 2 uses
  %cmp.n1122 = icmp eq i64 %i.bb, %n.vec1105
  %i.bf = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check1039 = icmp ult i32 %i.al, 14
  %n.vec1041 = and i64 %i.bf, 4294967288          ; 5 uses
  %i.bg = trunc nuw i64 %n.vec1041 to i32
  %i.bh = shl i32 %i.bg, 1
  %i.bi = shl nuw nsw i64 %n.vec1041, 3
  %i.bj = shl nuw nsw i64 %n.vec1041, 2
  %cmp.n1068 = icmp eq i64 %i.bf, %n.vec1041
  br label %.preheader202

bb.b:                                             ; preds = %._crit_edge355
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 4 ; 3 uses
  %i.bk = or disjoint i64 %indvars.iv.next750, 3
  %i.bl = icmp samesign ult i64 %i.bk, %i.r
  br i1 %i.bl, label %.preheader211, label %.preheader203.loopexit, !llvm.loop !290

bb.c:                                             ; preds = %.preheader211, %._crit_edge355
  %indvars.iv = phi i64 [ 0, %.preheader211 ], [ %indvars.iv.next, %._crit_edge355 ] ; 3 uses
  %.1623358 = phi ptr [ %.0622360, %.preheader211 ], [ %.5.lcssa, %._crit_edge355 ] ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !32
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %indvars.iv, %i.bo
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !36
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aa ; 11 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !32
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !10
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %indvars.iv, %i.bw
  %i.by = load i64, ptr %i.e, align 8, !tbaa !36
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 2 uses
  br i1 %i.f, label %.lr.ph265, label %.preheader210

.preheader210:                                    ; preds = %bb.g, %bb.c
  %.0641.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0629.lcssa = phi ptr [ %i.ca, %bb.c ], [ %.2631.lcssa, %bb.g ] ; 2 uses
  %.2624.lcssa = phi ptr [ %.1623358, %bb.c ], [ %i.ht, %bb.g ] ; 2 uses
  %i.cb = or disjoint i32 %.0641.lcssa, 3
  %i.cc = icmp slt i32 %i.cb, %4
  br i1 %i.cc, label %.lr.ph302, label %.preheader209

.lr.ph265:                                        ; preds = %bb.c, %bb.g
  %.2624263 = phi ptr [ %i.ht, %bb.g ], [ %.1623358, %bb.c ] ; 17 uses
  %.0629262 = phi ptr [ %.2631.lcssa, %bb.g ], [ %i.ca, %bb.c ] ; 2 uses
  %.0641261 = phi i32 [ %i.hu, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph265
  %i.cd = load <2 x i64>, ptr %.2624263, align 16, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %.2624263, i64 16
  %i.cf = load <2 x i64>, ptr %i.ce, align 16, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %.2624263, i64 32
  %i.ch = load <2 x i64>, ptr %i.cg, align 16, !tbaa !46
  %i.ci = getelementptr inbounds nuw i8, ptr %.2624263, i64 48
  %i.cj = load <2 x i64>, ptr %i.ci, align 16, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %.2624263, i64 64
  %i.cl = load <2 x i64>, ptr %i.ck, align 16, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %.2624263, i64 80
  %i.cn = load <2 x i64>, ptr %i.cm, align 16, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %.2624263, i64 96
end_hunk_1
begin_hunk_2_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
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
  store i16 %i.aad, ptr %i.zn, align 2, !tbaa !239
  %i.aae = add i16 %i.zx, %i.zv
  store i16 %i.aae, ptr %i.zo, align 2, !tbaa !239
  %i.aaf = sub i16 %i.zx, %i.zv
  store i16 %i.aaf, ptr %i.zp, align 2, !tbaa !239
  %i.aag = add i16 %i.aaa, %i.zz
  store i16 %i.aag, ptr %i.zq, align 2, !tbaa !239
  %i.aah = sub i16 %i.aaa, %i.zz
  store i16 %i.aah, ptr %i.zr, align 2, !tbaa !239
  %.neg340.us.5 = mul i32 %i.rp, 65531
  %i.aai = add i32 %.neg340.us.5, %i.zt
  %i.aaj = trunc i32 %i.aai to i16
  %i.aak = add i16 %i.us, %i.aaj
  store i16 %i.aak, ptr %i.zs, align 2, !tbaa !239
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %._crit_edge.us420, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !382

._crit_edge.us420:                                ; preds = %bb.ce
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.aal = icmp slt i64 %indvars.iv.next453, %i.km
  br i1 %i.aal, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge417, !llvm.loop !383

._crit_edge417:                                   ; preds = %._crit_edge.us420, %.lr.ph416, %._crit_edge399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #14 personality ptr @__gxx_personality_v0 {
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
  %i.h = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.j, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 1, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !9
  %i.k = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !9
  %i.n = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not68 = icmp sgt i32 %i.n, %i.m
  br i1 %.not68, label %._crit_edge, label %.lr.ph

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
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.dt, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !9     ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !9     ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !9
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !10, !noalias !384 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !19, !noalias !384 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !251, !noalias !384
  %i.bi = load ptr, ptr %8, align 8, !tbaa !32, !noalias !384
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !384
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !384 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !16, !noalias !384
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !225, !noalias !384
  store ptr %i.bo, ptr %11, align 8, !tbaa !32
  store ptr null, ptr %i.v, align 8, !tbaa !226
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !36
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !225
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !10
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !19
  store i32 1, ptr %i.ac, align 4, !tbaa !251
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !17
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !18
  %i.by = load i32, ptr %i.af, align 8, !tbaa !227, !noalias !384 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !227, !alias.scope !384
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !18, !alias.scope !384
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.cb = load i32, ptr %4, align 4, !tbaa !9
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !32, !noalias !387
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !387
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !36, !noalias !387 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !16, !noalias !387
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !225, !noalias !387
  %i.cm = load i32, ptr %5, align 4, !tbaa !9
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !226
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !36
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !16
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !225
  store i32 2, ptr %i.aq, align 8, !tbaa !227
  %13 = load <4 x i32>, ptr %i.ag, align 4
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !19, !noalias !387
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !10, !noalias !387
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !32
  %i.cx = shufflevector <4 x i32> %13, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !9
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !18, !alias.scope !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !9
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !9
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !9
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !226 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cz, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !225 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !231
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !233

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.dd, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.dd) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !226 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dj, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !225 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !231
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !233

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dn, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dn) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dt = add nsw i32 %.069, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #24
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.b = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %i.i, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 1, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !9
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !9
  %i.m = load i32, ptr %i.c, align 4, !tbaa !9    ; 2 uses
  %.not132 = icmp sgt i32 %i.m, %i.l
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
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
end_hunk_2
begin_hunk_3_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aga
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.alt, %.preheader.us.i ], [ %i.ans, %bb.al ] ; 6 uses
  %i.ant = or disjoint i32 %i.alm, 1
  %.not.us.1.i = icmp slt i32 %i.ant, %i.en
  br i1 %.not.us.1.i, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.anu = add nsw i32 %i.ain, %i.ahr             ; 2 uses
  %i.anv = add nsw i32 %i.akf, %i.ajj             ; 2 uses
  %i.anw = sub nsw i32 %i.ahr, %i.ain             ; 2 uses
  %i.anx = sub nsw i32 %i.ajj, %i.akf             ; 2 uses
  %i.any = add i32 %i.agy, %i.agw
  %i.anz = add i32 %i.any, %i.anu
  %i.aoa = add i32 %i.anz, %i.anv
  %i.aob = shl nsw i32 %i.anv, 2
  %i.aoc = add nsw i32 %i.aob, %i.anu
  %reass.add = add i32 %i.ald, %i.anx
  %reass.mul = shl i32 %reass.add, 3
  %i.aod = add i32 %i.alf, %i.anw
  %i.aoe = add i32 %i.aod, %reass.mul
  %i.aof = sdiv i32 %i.aoa, 576
  %i.aog = sdiv i32 %i.aoc, 576
  %i.aoh = sdiv i32 %i.aoe, 576
  store i32 %i.aof, ptr %.1.us.i, align 4, !tbaa !9
  br i1 %i.alv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aoi = shl nsw i32 %i.anx, 1
  %i.aoj = add nsw i32 %i.aoi, %i.anw
  %i.aok = sdiv i32 %i.aoj, 576
  %i.aol = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.aok, ptr %i.aol, align 4, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.alx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aom = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.aog, ptr %i.aom, align 4, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.alz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aon = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.aoh, ptr %i.aon, align 4, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.aoo = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.aga
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.am ], [ %i.aoo, %bb.at ] ; 6 uses
  %i.aop = or disjoint i32 %i.alm, 2
  %.not.us.2.i = icmp slt i32 %i.aop, %i.en
  br i1 %.not.us.2.i, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.aoq = add nsw i32 %i.aip, %i.aht             ; 2 uses
  %i.aor = add nsw i32 %i.akh, %i.ajl             ; 2 uses
  %i.aos = sub nsw i32 %i.aht, %i.aip             ; 2 uses
  %i.aot = sub nsw i32 %i.ajl, %i.akh             ; 2 uses
  %i.aou = add i32 %i.agz, %i.ags
  %i.aov = add i32 %i.aou, %i.aoq
  %i.aow = add i32 %i.aov, %i.aor
  %i.aox = shl nsw i32 %i.aor, 2
  %i.aoy = add nsw i32 %i.aox, %i.aoq
  %i.aoz = shl nsw i32 %i.aot, 3
  %i.apa = add i32 %i.aoz, %i.aos
  %i.apb = add i32 %i.apa, %i.alh
  %i.apc = add i32 %i.apb, %i.alg
  %i.apd = sdiv i32 %i.aow, 576
  %i.ape = sdiv i32 %i.aoy, 576
  %i.apf = sdiv i32 %i.apc, 576
  store i32 %i.apd, ptr %.1.us.1.i, align 4, !tbaa !9
  br i1 %i.alv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.apg = shl nsw i32 %i.aot, 1
  %i.aph = add nsw i32 %i.apg, %i.aos
  %i.api = sdiv i32 %i.aph, 576
  %i.apj = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.api, ptr %i.apj, align 4, !tbaa !9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.alx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.apk = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.ape, ptr %i.apk, align 4, !tbaa !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.alz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.apl = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.apf, ptr %i.apl, align 4, !tbaa !9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.apm = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.aga
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.au ], [ %i.apm, %bb.bb ] ; 4 uses
  %i.apn = or disjoint i32 %i.alm, 3
  %.not.us.3.i = icmp slt i32 %i.apn, %i.en
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.apo = add nsw i32 %i.aiu, %i.ahy             ; 2 uses
  %i.app = add nsw i32 %i.akm, %i.ajq             ; 2 uses
  %i.apq = sub nsw i32 %i.ahy, %i.aiu             ; 2 uses
  %i.apr = sub nsw i32 %i.ajq, %i.akm             ; 2 uses
  %i.aps = add i32 %i.aha, %i.agw
  %i.apt = add i32 %i.aps, %i.ahc
  %i.apu = add i32 %i.apt, %i.apo
  %i.apv = add i32 %i.apu, %i.app
  %i.apw = shl nsw i32 %i.app, 2
  %i.apx = add nsw i32 %i.apw, %i.apo
  %i.apy = shl nsw i32 %i.apr, 3
  %i.apz = add i32 %i.apy, %i.apq
  %i.aqa = add i32 %i.apz, %i.alf
  %i.aqb = add i32 %i.aqa, %i.alj
  %i.aqc = add i32 %i.aqb, %i.ali
  %i.aqd = sdiv i32 %i.apv, 576
  %i.aqe = sdiv i32 %i.apx, 576
  %i.aqf = sdiv i32 %i.aqc, 576
  store i32 %i.aqd, ptr %.1.us.2.i, align 4, !tbaa !9
  br i1 %i.alv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aqg = shl nsw i32 %i.apr, 1
  %i.aqh = add nsw i32 %i.aqg, %i.apq
  %i.aqi = sdiv i32 %i.aqh, 576
  %i.aqj = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.aqi, ptr %i.aqj, align 4, !tbaa !9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.alx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aqk = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.aqe, ptr %i.aqk, align 4, !tbaa !9
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.alz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aql = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.aqf, ptr %i.aql, align 4, !tbaa !9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next305.i = add nuw nsw i64 %indvars.iv304.i, 1 ; 2 uses
  %exitcond308.not.i = icmp eq i64 %indvars.iv.next305.i, %wide.trip.count307.i
  br i1 %exitcond308.not.i, label %._crit_edge.us220.i, label %.preheader.us.i, !llvm.loop !411

._crit_edge.us220.i:                              ; preds = %bb.bj
  %indvars.iv.next310.i = add nuw nsw i64 %indvars.iv309.i, 1 ; 2 uses
  %exitcond313.not.i = icmp eq i64 %indvars.iv.next310.i, %i.ed
  br i1 %exitcond313.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us219.i, !llvm.loop !412

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.aqm = phi i32 [ %i.ash, %.noexc52 ], [ %.pre137, %.noexc52.preheader ] ; 3 uses
  %i.aqn = phi i32 [ %i.asj, %.noexc52 ], [ %i.ek, %.noexc52.preheader ] ; 2 uses
  %.0130 = phi i32 [ %i.asi, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.aqo = sub nsw i32 %i.aqn, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqm, i32 %i.aqo)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.aqp = load i32, ptr %3, align 4, !tbaa !9
  %i.aqq = sdiv i32 %i.dm, %i.aqp
  %i.aqr = load ptr, ptr %10, align 8, !tbaa !32, !noalias !413
  %i.aqs = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !413
  %i.aqt = sext i32 %i.aqq to i64
  %i.aqu = mul i64 %i.aqs, %i.aqt
  %i.aqv = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !413 ; 3 uses
  %i.aqw = mul i64 %i.aqu, %i.aqv
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqr, i64 %i.aqw
  %i.aqy = load i32, ptr %i.t, align 8, !tbaa !16, !noalias !413
  %i.aqz = load ptr, ptr %i.u, align 8, !tbaa !225, !noalias !413
  %i.ara = sdiv i32 %.0130, %i.aqm
  %i.arb = sext i32 %i.ara to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !226
  store i64 %i.aqv, ptr %i.w, align 8, !tbaa !36
  store i32 %i.aqy, ptr %i.x, align 8, !tbaa !16
  store ptr %i.aqz, ptr %i.y, align 8, !tbaa !225
  store i32 2, ptr %i.z, align 8, !tbaa !227
  %15 = load <4 x i32>, ptr %i.p, align 4
  %i.arc = load i32, ptr %i.q, align 8, !tbaa !19, !noalias !413
  %i.ard = load i32, ptr %i.p, align 4, !tbaa !10, !noalias !413
  %i.are = sext i32 %i.ard to i64
  %i.arf = sext i32 %i.arc to i64
  %i.arg = mul nsw i64 %i.arf, %i.are             ; 2 uses
  %i.arh = mul i64 %i.aqv, %i.arg
  %i.ari = mul i64 %i.arh, %i.arb
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqx, i64 %i.ari
  store ptr %i.arj, ptr %13, align 8, !tbaa !32
  %i.ark = shufflevector <4 x i32> %15, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ark, ptr %i.aa, align 4, !tbaa !9
  store i64 %i.arg, ptr %i.ab, align 8, !tbaa !18, !alias.scope !416
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.arl = load i32, ptr %7, align 4, !tbaa !9
  %i.arm = sdiv i32 %.044131, %i.arl
  %i.arn = load ptr, ptr %11, align 8, !tbaa !32, !noalias !419
  %i.aro = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !419
  %i.arp = sext i32 %i.arm to i64
  %i.arq = mul i64 %i.aro, %i.arp
  %i.arr = load i64, ptr %i.af, align 8, !tbaa !36, !noalias !419 ; 3 uses
  %i.ars = mul i64 %i.arq, %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.ars
  %i.aru = load i32, ptr %i.ag, align 8, !tbaa !16, !noalias !419
  %i.arv = load ptr, ptr %i.ah, align 8, !tbaa !225, !noalias !419
  store ptr null, ptr %i.ai, align 8, !tbaa !226
  store i64 %i.arr, ptr %i.aj, align 8, !tbaa !36
  store i32 %i.aru, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.arv, ptr %i.al, align 8, !tbaa !225
  store i32 2, ptr %i.am, align 8, !tbaa !227
  %16 = load <4 x i32>, ptr %i.ac, align 4
  %i.arw = load i32, ptr %i.ad, align 8, !tbaa !19, !noalias !419
  %i.arx = load i32, ptr %i.ac, align 4, !tbaa !10, !noalias !419
  %i.ary = sext i32 %i.arx to i64
  %i.arz = sext i32 %i.arw to i64
  %i.asa = mul nsw i64 %i.arz, %i.ary             ; 2 uses
  %i.asb = mul i64 %i.arr, %i.asa
  %i.asc = mul i64 %i.asb, %i.arb
  %i.asd = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.asc
  store ptr %i.asd, ptr %14, align 8, !tbaa !32
  %i.ase = shufflevector <4 x i32> %16, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ase, ptr %i.an, align 4, !tbaa !9
  store i64 %i.asa, ptr %i.ao, align 8, !tbaa !18, !alias.scope !422
  %i.asf = add nsw i32 %i.aqm, %.0130
  %i.asg = icmp sge i32 %i.asf, %i.aqn
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.du, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.asg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.ash = load i32, ptr %9, align 4, !tbaa !9    ; 2 uses
  %i.asi = add nsw i32 %i.ash, %.0130             ; 2 uses
  %i.asj = load i32, ptr %8, align 4, !tbaa !9    ; 2 uses
  %i.ask = icmp slt i32 %i.asi, %i.asj
  br i1 %i.ask, label %.noexc52, label %._crit_edge, !llvm.loop !425

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us220.i, %.lr.ph217.i, %.preheader51.i
  %i.asl = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.asm = add nsw i32 %i.asl, %.044131           ; 2 uses
  %i.asn = load i32, ptr %6, align 4, !tbaa !9    ; 2 uses
  %i.aso = icmp slt i32 %i.asm, %i.asn
  br i1 %i.aso, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !426

._crit_edge136:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge136, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.asp = landingpad { ptr, i32 }
          catch ptr null
  %i.asq = extractvalue { ptr, i32 } %i.asp, 0
  call void @__clang_call_terminate(ptr %i.asq) #24
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.co

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not287 = icmp sgt i32 %i.k, %i.j
  br i1 %.not287, label %._crit_edge290, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !9      ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge290

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.awi, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0288 = phi i32 [ %i.awj, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !9
  %i.s = shl nsw i32 %.0288, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.5
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !9
  %i.x = load i32, ptr %6, align 4, !tbaa !9      ; 2 uses
  %i.y = load i32, ptr %8, align 4, !tbaa !9
  %i.z = add nsw i32 %i.y, %i.t
  %i.aa = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.ab = sdiv i32 %i.z, %i.aa
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !427
  %i.ad = load ptr, ptr %7, align 8, !tbaa !32, !noalias !427
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !427
  %i.af = sext i32 %i.ab to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !36, !noalias !427 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = add nsw i32 %i.w, %i.al                 ; 2 uses
  %i.an = srem i32 %i.am, %i.x
  %i.ao = sdiv i32 %i.am, %i.x
  %i.ap = shl nsw i32 %i.ao, 2                    ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 6 uses
  %i.ar = mul i64 %i.ah, %i.ak
  %i.as = mul i64 %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = shl nsw i32 %i.an, 2                    ; 6 uses
  %i.av = mul nsw i32 %i.au, %i.aa
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw ; 15 uses
  %i.ay = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.az = load i32, ptr %11, align 4, !tbaa !9    ; 11 uses
  %i.ba = mul nsw i32 %i.aa, %i.az
  %i.bb = sext i32 %i.ba to i64                   ; 5 uses
  %i.bc = or disjoint i32 %i.au, 1                ; 12 uses
  %i.bd = or disjoint i32 %i.au, 2                ; 12 uses
  %i.be = or disjoint i32 %i.au, 3                ; 12 uses
  %i.bf = add nsw i32 %i.au, 4                    ; 12 uses
  %i.bg = add nsw i32 %i.au, 5                    ; 12 uses
  %i.bh = sext i32 %i.ay to i64                   ; 5 uses
  %i.bi = icmp slt i32 %i.ap, %i.ay
  br i1 %i.bi, label %bb.c, label %.thread

bb.c:                                             ; preds = %.noexc
  switch i32 %i.aa, label %.thread [
    i32 8, label %bb.d
    i32 1, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = load i64, ptr %i.ax, align 1, !tbaa !46
  %i.bk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <16 x i8>    ; 2 uses
  %.lobit.i258 = ashr <16 x i8> %i.bl, splat (i8 7)
  %i.bm = shufflevector <16 x i8> %i.bl, <16 x i8> %.lobit.i258, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bn = bitcast <16 x i8> %i.bm to <2 x i64>    ; 2 uses
  %i.bo = icmp slt i32 %i.bc, %i.az
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bq = load i64, ptr %i.bp, align 1, !tbaa !46
  %i.br = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bq, i64 0
  %i.bs = bitcast <2 x i64> %i.br to <16 x i8>    ; 2 uses
  %.lobit.i257 = ashr <16 x i8> %i.bs, splat (i8 7)
  %i.bt = shufflevector <16 x i8> %i.bs, <16 x i8> %.lobit.i257, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bu = bitcast <16 x i8> %i.bt to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0228 = phi <2 x i64> [ %i.bu, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bv = icmp slt i32 %i.bd, %i.az
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bx = load i64, ptr %i.bw, align 1, !tbaa !46
  %i.by = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.bz = bitcast <2 x i64> %i.by to <16 x i8>    ; 2 uses
  %.lobit.i256 = ashr <16 x i8> %i.bz, splat (i8 7)
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> %.lobit.i256, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cb = bitcast <16 x i8> %i.ca to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0230 = phi <2 x i64> [ %i.cb, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.cc = icmp slt i32 %i.be, %i.az
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !46
  %i.cf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ce, i64 0
  %i.cg = bitcast <2 x i64> %i.cf to <16 x i8>    ; 2 uses
  %.lobit.i255 = ashr <16 x i8> %i.cg, splat (i8 7)
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> %.lobit.i255, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ci = bitcast <16 x i8> %i.ch to <2 x i64>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0241 = phi <2 x i64> [ %i.ci, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.cj = icmp slt i32 %i.bf, %i.az
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.cl = load i64, ptr %i.ck, align 1, !tbaa !46
  %i.cm = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cl, i64 0
  %i.cn = bitcast <2 x i64> %i.cm to <16 x i8>    ; 2 uses
  %.lobit.i254 = ashr <16 x i8> %i.cn, splat (i8 7)
end_hunk_3
