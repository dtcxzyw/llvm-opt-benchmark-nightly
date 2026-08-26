Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn20DeformableConv2D_x8615create_pipelineERKNS_6OptionE:bb.a
bb.fm:                                            ; preds = %bb.fl
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !17 ; 3 uses
  %.not3.i111 = icmp eq ptr %i.rl, null
  %i.rm = load ptr, ptr %i.rf, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i111, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.rn = load ptr, ptr %i.rl, align 8, !tbaa !9
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef %i.rm), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit112

bb.fo:                                            ; preds = %bb.fm
  %.not.i113 = icmp eq ptr %i.rm, null
  br i1 %.not.i113, label %_ZN4ncnn3Mat7releaseEv.exit112, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @free(ptr noundef nonnull %i.rm) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit112

_ZN4ncnn3Mat7releaseEv.exit112:                   ; preds = %bb.fp, %bb.fo, %bb.fk, %bb.fl, %bb.fn
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.rr, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.rf, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.rq, i8 0, i64 20, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit112, %bb.fj
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20DeformableConv2D_x8616destroy_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 3 uses
  %.not6 = icmp eq ptr %i.m, null
  br i1 %.not6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !53   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(208) %i.r) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.l, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i8, align 1                       ; 6 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca i32, align 4                      ; 7 uses
  %i.aa = alloca i32, align 4                     ; 7 uses
  %i.ab = alloca i32, align 4                     ; 6 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 6 uses
  %i.ac = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !74    ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #9
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp eq i64 %i.aj, 216
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %i.v, align 1, !tbaa !76
  %i.am = load ptr, ptr %2, align 8, !tbaa !74    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #9
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !55 ; 2 uses
  store i32 %i.ao, ptr %i.w, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  store i32 %i.aq, ptr %i.x, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !68
  store i32 %i.as, ptr %i.y, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !66 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !78
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = mul nsw i32 %i.bb, %i.ay
  %.neg = xor i32 %i.bc, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !45
  %i.bh = add nsw i32 %i.bg, -1
  %i.bi = mul nsw i32 %i.bh, %i.be
  %.neg58 = xor i32 %i.bi, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !81
  %i.bn = add i32 %i.ao, %.neg
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = add i32 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !82
  %i.bs = sdiv i32 %i.bp, %i.br
  %i.bt = add nsw i32 %i.bs, 1                    ; 3 uses
  store i32 %i.bt, ptr %i.z, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.by = add i32 %i.aq, %.neg58
  %i.bz = add i32 %i.by, %i.bv
  %i.ca = add i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !85
  %i.cd = sdiv i32 %i.ca, %i.cc
  %i.ce = add nsw i32 %i.cd, 1                    ; 3 uses
  store i32 %i.ce, ptr %i.aa, align 4, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !48, !range !50, !noundef !51
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !47 ; 3 uses
  %i.ck = and i32 %i.cj, 3
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = and i1 %i.cl, %i.ch                     ; 3 uses
  %.056 = select i1 %i.cm, i32 4, i32 1
  %i.cn = sext i32 %i.aw to i64
  %i.co = udiv i64 %i.au, %i.cn
  %i.cp = select i1 %i.cm, i64 2, i64 0
  %i.cq = shl i64 %i.co, %i.cp
  %i.cr = sdiv i32 %i.cj, 4
  %8 = select i1 %i.cm, i32 %i.cr, i32 %i.cj
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !86
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i32 noundef %i.bt, i32 noundef %i.ce, i32 noundef %8, i64 noundef %i.cq, i32 noundef %.056, ptr noundef %i.ct)
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !68 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.cx, %i.da
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !52, !range !50, !noundef !51
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  %i.dg = mul nsw i32 %i.ce, %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #9
  %i.dh = load i32, ptr %i.az, align 4, !tbaa !44
  %i.di = load i32, ptr %i.bf, align 8, !tbaa !45
  %i.dj = mul nsw i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.ab, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.dm, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.dp, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.do, i8 0, i64 28, i1 false)
  %i.dq = load i8, ptr %i.v, align 1, !tbaa !76, !range !50, !noundef !51
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ds = load ptr, ptr %1, align 8, !tbaa !74
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 144
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.f:                                             ; preds = %bb.d
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.g:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.dw = load i32, ptr %i.ab, align 4, !tbaa !67
  %i.dx = load i32, ptr %i.y, align 4, !tbaa !67
  %i.dy = mul nsw i32 %i.dx, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.ed, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ec, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.dg, i32 noundef %i.dy, i64 noundef %i.au, i32 noundef %i.aw, ptr noundef %i.ea)
          to label %_ZN4ncnn3MatC2EiimiPNS_9AllocatorE.exit unwind label %bb.h

_ZN4ncnn3MatC2EiimiPNS_9AllocatorE.exit:          ; preds = %bb.g
  switch i32 %i.aw, label %bb.j [
    i32 4, label %.sink.split
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.i:                                             ; preds = %_ZN4ncnn3MatC2EiimiPNS_9AllocatorE.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatC2EiimiPNS_9AllocatorE.exit, %bb.i
  %_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.sink = phi ptr [ @_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, %bb.i ], [ @_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, %_ZN4ncnn3MatC2EiimiPNS_9AllocatorE.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !88
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ac, i32 %i.eg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull %_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.sink, ptr nonnull %i.y, ptr nonnull %i.ad, ptr nonnull %6, ptr nonnull %i.ab, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.v, ptr nonnull %5, ptr nonnull %i.aa, ptr nonnull %i.z, ptr nonnull %i.x, ptr nonnull %i.w)
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_ZN4ncnn3MatC2EiimiPNS_9AllocatorE.exit
  %i.eh = load i32, ptr %i.z, align 4, !tbaa !67
  %i.ei = load i32, ptr %i.aa, align 4, !tbaa !67
  %i.ej = mul nsw i32 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.am, i64 44 ; 2 uses
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !55
  %i.el = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  store i32 1, ptr %i.el, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !89
  %i.em = load ptr, ptr %i.dz, align 8, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.em, ptr %i.en, align 8, !tbaa !86
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !53 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef i32 %i.es(ptr noundef nonnull align 8 dereferenceable(208) %i.ep, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.k unwind label %bb.m       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.eu = load i32, ptr %i.z, align 4, !tbaa !67
  store i32 %i.eu, ptr %i.ek, align 4, !tbaa !55
  %i.ev = load i32, ptr %i.aa, align 4, !tbaa !67
  store i32 %i.ev, ptr %i.el, align 8, !tbaa !77
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !41 ; 3 uses
  %.not = icmp eq ptr %i.ex, null
  br i1 %.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(208) %i.ex, ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.t unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.fd = load ptr, ptr %i.eb, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.fd, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fe = atomicrmw add ptr %i.fd, i32 -1 acq_rel, align 4
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit66

bb.o:                                             ; preds = %bb.n
  %i.fg = load ptr, ptr %i.ec, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.fg, null
  %i.fh = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef %i.fh)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.s, !inline_history !19

bb.q:                                             ; preds = %bb.o
  %.not.i96 = icmp eq ptr %i.fh, null
  br i1 %.not.i96, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.fh) #9
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.s:                                             ; preds = %bb.p
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #18
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.fn = load ptr, ptr %i.eb, align 8, !tbaa !11 ; 2 uses
  %.not.i67 = icmp eq ptr %i.fn, null
  br i1 %.not.i67, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = atomicrmw add ptr %i.fn, i32 -1 acq_rel, align 4
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit65

bb.v:                                             ; preds = %bb.u
  %i.fq = load ptr, ptr %i.ec, align 8, !tbaa !17 ; 3 uses
  %.not3.i68 = icmp eq ptr %i.fq, null
  %i.fr = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i68, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
