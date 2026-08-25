Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph86, %_ZN4ncnn3MatD2Ev.exit
  %.03385 = phi i32 [ %i.k, %.lr.ph86 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !92
  %i.ab = mul nsw i32 %i.aa, %.03385              ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc34 unwind label %bb.e

.noexc34:                                         ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !9, !noalias !487
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !487
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !487
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !92    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.noexc34
  %.pre = load i32, ptr %6, align 4, !tbaa !92
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.noexc, %.noexc34
  %i.am = add nsw i32 %.03385, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.03385, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc
  %i.ao = phi i32 [ %i.fb, %.noexc ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.fd, %.noexc ], [ %i.ak, %.lr.ph.preheader ]
  %.083 = phi i32 [ %i.fc, %.noexc ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !92
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !92    ; 2 uses
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub nsw i32 %i.ap, %.083
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 3 uses
  %.val = load ptr, ptr %8, align 8
  %i.au = icmp sgt i32 %.sroa.speculated68, 0
  br i1 %i.au, label %.preheader4.lr.ph.i, label %.noexc

.preheader4.lr.ph.i:                              ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !92
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader4.preheader.i, label %.noexc

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %i.ay = sext i32 %.083 to i64
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated68 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 2 uses
  %.012.i = phi ptr [ %i.aj, %.preheader4.preheader.i ], [ %i.ef, %._crit_edge.i ]
  %i.az = trunc i64 %indvars.iv17.i to i32
  %i.ba = add i32 %i.ab, %i.az
  %i.bb = mul i32 %i.ax, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.val, i64 %i.bc
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.preheader4.i
  %indvars.iv.i = phi i64 [ 0, %.preheader4.i ], [ %indvars.iv.next.i, %.preheader.preheader.i ] ; 2 uses
  %.110.i = phi ptr [ %.012.i, %.preheader4.i ], [ %i.ef, %.preheader.preheader.i ] ; 2 uses
  %i.be = add nsw i64 %indvars.iv.i, %i.ay
  %i.bf = mul nsw i64 %i.be, 9
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf ; 9 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !20  ; 2 uses
  %i.bm = sext i8 %i.bh to i32                    ; 2 uses
  %.tr.i = sext i8 %i.bh to i16                   ; 2 uses
  %i.bn = shl nsw i16 %.tr.i, 1
  %i.bo = sext i8 %i.bj to i32                    ; 2 uses
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = sext i8 %i.bl to i32                    ; 2 uses
  %i.br = add nsw i32 %i.bp, %i.bq
  %i.bs = trunc nsw i32 %i.br to i16
  %i.bt = sub nsw i32 %i.bm, %i.bo
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = trunc nsw i32 %i.bu to i16
  %.tr57.i = sext i8 %i.bl to i16                 ; 2 uses
  %i.bw = shl nsw i16 %.tr57.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20  ; 2 uses
  %i.cd = sext i8 %i.by to i32                    ; 2 uses
  %.tr.1.i = sext i8 %i.by to i16
  %i.ce = shl nsw i16 %.tr.1.i, 1
  %i.cf = sext i8 %i.ca to i32                    ; 2 uses
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = sext i8 %i.cc to i32                    ; 2 uses
  %i.ci = add nsw i32 %i.cg, %i.ch
  %i.cj = trunc nsw i32 %i.ci to i16
  %i.ck = sub nsw i32 %i.cd, %i.cf
  %i.cl = add nsw i32 %i.ck, %i.ch
  %i.cm = trunc nsw i32 %i.cl to i16
  %.tr57.1.i = sext i8 %i.cc to i16
  %i.cn = shl nsw i16 %.tr57.1.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !20  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !20  ; 2 uses
  %i.cu = sext i8 %i.cp to i32                    ; 2 uses
  %.tr.2.i = sext i8 %i.cp to i16                 ; 2 uses
  %i.cv = shl nsw i16 %.tr.2.i, 1
  %i.cw = sext i8 %i.cr to i32                    ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cu
  %i.cy = sext i8 %i.ct to i32                    ; 2 uses
  %i.cz = add nsw i32 %i.cx, %i.cy
  %i.da = trunc nsw i32 %i.cz to i16              ; 2 uses
  %i.db = sub nsw i32 %i.cu, %i.cw
  %i.dc = add nsw i32 %i.db, %i.cy
  %i.dd = trunc nsw i32 %i.dc to i16              ; 2 uses
  %.tr57.2.i = sext i8 %i.ct to i16               ; 2 uses
  %i.de = shl nsw i16 %.tr57.2.i, 1
  %i.df = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.ce, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.bs, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.cj, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.bv, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.cm, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.bw, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.cn, i64 7 ; 4 uses
  %i.dn = shufflevector <8 x i16> %i.dm, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.do = add nsw <8 x i16> %i.dm, %i.dn
  %i.dp = sub nsw <8 x i16> %i.dm, %i.dn
  %i.dq = shufflevector <8 x i16> %i.dp, <8 x i16> %i.do, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %i.dr = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.da, i64 1
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dd, i64 2
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.de, i64 3
  %i.dv = shufflevector <8 x i16> %i.du, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.dw = add nsw <8 x i16> %i.dq, %i.dv
  %i.dx = insertelement <8 x i16> %i.dm, i16 %.tr.i, i64 0
  %i.dy = insertelement <8 x i16> %i.dx, i16 %.tr.2.i, i64 1
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.da, i64 3
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.dd, i64 5
  %i.eb = insertelement <8 x i16> %i.ea, i16 %.tr57.i, i64 6
  %i.ec = insertelement <8 x i16> %i.eb, i16 %.tr57.2.i, i64 7
  %i.ed = shl nsw <8 x i16> %i.ec, <i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> %i.dw, <16 x i32> <i32 0, i32 9, i32 8, i32 1, i32 2, i32 11, i32 10, i32 3, i32 4, i32 13, i32 12, i32 5, i32 6, i32 15, i32 14, i32 7>
  store <16 x i16> %i.ee, ptr %.110.i, align 2, !tbaa !490
  %i.ef = getelementptr inbounds nuw i8, ptr %.110.i, i64 32 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !492

._crit_edge.i:                                    ; preds = %.preheader.preheader.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %.noexc, label %.preheader4.i, !llvm.loop !493

.noexc:                                           ; preds = %._crit_edge.i, %.lr.ph, %.preheader4.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.eg = sdiv i32 %i.ab, %i.as
  %i.eh = load ptr, ptr %10, align 8, !tbaa !9, !noalias !494
  %i.ei = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !494
  %i.ej = sext i32 %i.eg to i64
  %i.ek = mul i64 %i.ei, %i.ej
  %i.el = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !494 ; 3 uses
  %i.em = mul i64 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  %i.eo = load i32, ptr %i.r, align 8, !tbaa !94, !noalias !494
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !483, !noalias !494
  %i.eq = sdiv i32 %.083, %i.ao
  %i.er = sext i32 %i.eq to i64
  store ptr null, ptr %i.t, align 8, !tbaa !482
  store i64 %i.el, ptr %i.u, align 8, !tbaa !19
  store i32 %i.eo, ptr %i.v, align 8, !tbaa !94
  store ptr %i.ep, ptr %i.w, align 8, !tbaa !483
  store i32 2, ptr %i.x, align 8, !tbaa !497
  %12 = load <2 x i32>, ptr %i.n, align 4, !tbaa !92, !noalias !494
  %i.es = load i32, ptr %i.o, align 8, !tbaa !96, !noalias !494
  %i.et = load i32, ptr %i.n, align 4, !tbaa !93, !noalias !494
  %i.eu = sext i32 %i.et to i64
  %i.ev = sext i32 %i.es to i64
  %i.ew = mul nsw i64 %i.ev, %i.eu                ; 2 uses
  %i.ex = mul i64 %i.el, %i.ew
  %i.ey = mul i64 %i.ex, %i.er
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ey
  store ptr %i.ez, ptr %11, align 8, !tbaa !9
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x i32> %13, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.fa, ptr %i.y, align 4, !tbaa !92
  store i64 %i.ew, ptr %i.z, align 8, !tbaa !18, !alias.scope !498
  call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iii(ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 16, i32 noundef %.sroa.speculated68, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.fb = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.fc = add nsw i32 %i.fb, %.083                ; 2 uses
  %i.fd = load i32, ptr %5, align 4, !tbaa !92    ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !501

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #23
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iii(ptr nofree readonly %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 16, 37) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = mul nsw i32 %3, %1                       ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !93
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %factor.op.mul = mul i64 %i.g, %i.e
  %i.h = icmp sgt i32 %2, 7
  %i.i = icmp sgt i32 %3, 1                       ; 3 uses
  %i.j = zext nneg i32 %1 to i64                  ; 24 uses
  %i.k = sext i32 %i.a to i64                     ; 18 uses
  %i.l = add nsw i32 %i.a, %1
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %i.n = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 6 uses
  %i.p = add nsw i32 %i.n, %1
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = mul nsw i32 %i.a, 3                      ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 6 uses
  %i.t = add nsw i32 %i.r, %1
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = shl nsw i32 %i.a, 2                      ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = add nsw i32 %i.v, %1
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i32 %i.a, 5                      ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i32 %i.z, %1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i32 %i.a, 6                     ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = add nsw i32 %i.ad, %1
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i32 %i.a, 7                     ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = add nsw i32 %i.ah, %1
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nuw nsw i32 %1, 1
  %i.am = zext nneg i32 %i.al to i64              ; 5 uses
  %i.an = icmp sgt i32 %3, 0
  %i.ao = and i32 %3, -2                          ; 4 uses
  %i.ap = sext i32 %2 to i64                      ; 4 uses
  %invariant.op = add nsw i64 %i.ap, -7
  %invariant.op121 = add nsw i64 %i.ap, -3
  %invariant.op122 = add nsw i64 %i.ap, -1
  %i.aq = add i32 %3, -1
  %i.ar = add i32 %3, -2                          ; 2 uses
  %i.as = lshr i32 %i.ar, 1                       ; 2 uses
  %i.at = add nuw i32 %i.as, 1                    ; 2 uses
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.au = icmp eq i32 %i.as, 0
  %unroll_iter = and i32 %i.at, -2
  %i.av = and i32 %i.ar, 2
  %lcmp.mod142.not.not = icmp eq i32 %i.av, 0
  %lcmp.mod145 = trunc i32 %i.at to i1
  %xtraiter148 = and i32 %3, 7                    ; 3 uses
  %i.aw = icmp ult i32 %3, 8
  %unroll_iter152 = and i32 %3, 2147483640
  %lcmp.mod149.not = icmp eq i32 %xtraiter148, 0
  %lcmp.mod151 = icmp ne i32 %xtraiter148, 0
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge74.split
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge74.split
  %indvars.iv107 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next108, %._crit_edge74.split ] ; 6 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv107
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %.reass ; 2 uses
  br i1 %i.h, label %.lr.ph19, label %.preheader5

.lr.ph19:                                         ; preds = %bb.c
  %invariant.gep = getelementptr [2 x i8], ptr %.0.val, i64 %indvars.iv107
  br label %bb.d

.preheader5.loopexit:                             ; preds = %._crit_edge
  %i.ay = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.loopexit, %bb.c
  %.0223.lcssa = phi ptr [ %i.ax, %bb.c ], [ %.2225.lcssa, %.preheader5.loopexit ] ; 2 uses
  %.0221.lcssa = phi i32 [ 0, %bb.c ], [ %i.ay, %.preheader5.loopexit ] ; 3 uses
  %i.az = or disjoint i32 %.0221.lcssa, 3
  %i.ba = icmp slt i32 %i.az, %2
  br i1 %i.ba, label %.lr.ph38, label %.preheader4

.lr.ph38:                                         ; preds = %.preheader5
  %invariant.gep41 = getelementptr [2 x i8], ptr %.0.val, i64 %indvars.iv107
  %i.bb = zext nneg i32 %.0221.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph19, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.022316 = phi ptr [ %i.ax, %.lr.ph19 ], [ %.2225.lcssa, %._crit_edge ] ; 2 uses
  %i.bc = mul nsw i64 %indvars.iv, %i.k
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bc ; 2 uses
  br i1 %i.i, label %.lr.ph, label %.preheader2

.preheader2:                                      ; preds = %.lr.ph, %bb.d
  %.1224.lcssa = phi ptr [ %.022316, %bb.d ], [ %i.cz, %.lr.ph ] ; 2 uses
  %.0219.lcssa = phi ptr [ %gep, %bb.d ], [ %i.cy, %.lr.ph ]
  %.0217.lcssa = phi i32 [ 0, %bb.d ], [ %i.ao, %.lr.ph ] ; 2 uses
  %i.bd = icmp slt i32 %.0217.lcssa, %3
  br i1 %i.bd, label %.lr.ph14, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.02178 = phi i32 [ %i.da, %.lr.ph ], [ 0, %bb.d ]
  %.02197 = phi ptr [ %i.cy, %.lr.ph ], [ %gep, %bb.d ] ; 17 uses
  %.12246 = phi ptr [ %i.cz, %.lr.ph ], [ %.022316, %bb.d ] ; 17 uses
  %i.be = load i16, ptr %.02197, align 2, !tbaa !490
  store i16 %i.be, ptr %.12246, align 2, !tbaa !490
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.j
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !490
  %i.bh = getelementptr inbounds nuw i8, ptr %.12246, i64 2
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !490
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.k
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !490
  %i.bk = getelementptr inbounds nuw i8, ptr %.12246, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !490
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.m
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !490
  %i.bn = getelementptr inbounds nuw i8, ptr %.12246, i64 6
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !490
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.o
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !490
  %i.bq = getelementptr inbounds nuw i8, ptr %.12246, i64 8
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !490
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.q
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !490
  %i.bt = getelementptr inbounds nuw i8, ptr %.12246, i64 10
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !490
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.s
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !490
  %i.bw = getelementptr inbounds nuw i8, ptr %.12246, i64 12
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !490
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.u
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !490
  %i.bz = getelementptr inbounds nuw i8, ptr %.12246, i64 14
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !490
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.w
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !490
  %i.cc = getelementptr inbounds nuw i8, ptr %.12246, i64 16
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !490
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.y
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !490
  %i.cf = getelementptr inbounds nuw i8, ptr %.12246, i64 18
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !490
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.aa
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !490
  %i.ci = getelementptr inbounds nuw i8, ptr %.12246, i64 20
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !490
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.ac
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !490
  %i.cl = getelementptr inbounds nuw i8, ptr %.12246, i64 22
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !490
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.ae
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !490
  %i.co = getelementptr inbounds nuw i8, ptr %.12246, i64 24
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !490
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.ag
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !490
  %i.cr = getelementptr inbounds nuw i8, ptr %.12246, i64 26
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !490
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.02197, i64 %i.ai
end_hunk_0
begin_hunk_1_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  store i16 %i.qr, ptr %i.qn, align 2, !tbaa !490
  %i.qs = sub nsw i16 %i.pe, %i.oj
  store i16 %i.qs, ptr %i.qo, align 2, !tbaa !490
  %i.qt = sub nsw i16 %i.pz, %i.oj
  store i16 %i.qt, ptr %i.qp, align 2, !tbaa !490
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.lm ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.lm ; 2 uses
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.lm ; 2 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.lm ; 2 uses
  %i.qy = sub nsw i16 %i.nq, %i.pg
  store i16 %i.qy, ptr %i.qu, align 2, !tbaa !490
  %i.qz = add nsw i16 %i.pg, %i.ol
  store i16 %i.qz, ptr %i.qv, align 2, !tbaa !490
  %i.ra = sub nsw i16 %i.pg, %i.ol
  store i16 %i.ra, ptr %i.qw, align 2, !tbaa !490
  %i.rb = sub nsw i16 %i.qb, %i.ol
  store i16 %i.rb, ptr %i.qx, align 2, !tbaa !490
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %i.lm
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.lm
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qw, i64 %i.lm
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %i.lm
  %i.rg = sub nsw i16 %i.ns, %i.pi
  store i16 %i.rg, ptr %i.rc, align 2, !tbaa !490
  %i.rh = add nsw i16 %i.pi, %i.on
  store i16 %i.rh, ptr %i.rd, align 2, !tbaa !490
  %i.ri = sub nsw i16 %i.pi, %i.on
  store i16 %i.ri, ptr %i.re, align 2, !tbaa !490
  %i.rj = sub nsw i16 %i.qd, %i.on
  store i16 %i.rj, ptr %i.rf, align 2, !tbaa !490
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge.us267, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !533

._crit_edge.us267:                                ; preds = %bb.bi
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.rk = icmp slt i64 %indvars.iv.next294, %i.mb
  br i1 %i.rk, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge264, !llvm.loop !534

._crit_edge264:                                   ; preds = %._crit_edge.us267, %.lr.ph263, %._crit_edge248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
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
  %i.h = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 %i.j, ptr %i.e, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.k = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !92
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !92
  %i.n = load i32, ptr %i.d, align 4, !tbaa !92   ; 2 uses
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
  %i.at = load i32, ptr %3, align 4, !tbaa !92    ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !92    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !92    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !92
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !92
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !93, !noalias !535 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !96, !noalias !535 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !538, !noalias !535
  %i.bi = load ptr, ptr %8, align 8, !tbaa !9, !noalias !535
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !535
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !535 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !94, !noalias !535
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !483, !noalias !535
  store ptr %i.bo, ptr %11, align 8, !tbaa !9
  store ptr null, ptr %i.v, align 8, !tbaa !482
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !19
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !94
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !483
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !93
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !96
  store i32 1, ptr %i.ac, align 4, !tbaa !538
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !95
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !18
  %i.by = load i32, ptr %i.af, align 8, !tbaa !497, !noalias !535 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !497, !alias.scope !535
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !18, !alias.scope !535
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.cb = load i32, ptr %4, align 4, !tbaa !92
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !9, !noalias !539
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !539
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !19, !noalias !539 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !94, !noalias !539
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !483, !noalias !539
  %i.cm = load i32, ptr %5, align 4, !tbaa !92
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !482
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !19
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !94
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !483
  store i32 2, ptr %i.aq, align 8, !tbaa !497
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !92, !noalias !539
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !96, !noalias !539
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !93, !noalias !539
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !9
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !92
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !18, !alias.scope !542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !92
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !92
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !92
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !482 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cz, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !483 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !484
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !486

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.dd, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.dd) #8
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !482 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dj, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !483 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !484
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !486

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dn, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dn) #8
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.dt = add nsw i32 %.069, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.069, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #23
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.h = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !92
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !92
  %i.k = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.not152 = icmp sgt i32 %i.k, %i.j
  br i1 %.not152, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.b
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
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph155, %_ZN4ncnn3MatD2Ev.exit
  %.045153 = phi i32 [ %i.k, %.lr.ph155 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !92
  %i.at = mul nsw i32 %i.as, %.045153             ; 5 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.au

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !9, !noalias !545
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !545
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !545
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 5 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !92
end_hunk_1
begin_hunk_2_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1:bb.a
.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph606.split.preheader.i, %.preheader566.i
  %.2.lcssa.i = phi i32 [ %.1434.lcssa.i, %.preheader566.i ], [ %i.th, %.preheader.loopexit.i ], [ %i.ni, %.lr.ph606.split.preheader.i ] ; 2 uses
  %i.ti = icmp slt i32 %.2.lcssa.i, %.sroa.speculated119
  br i1 %i.ti, label %.lr.ph624.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph624.i:                                      ; preds = %.preheader.i
  %i.tj = icmp sgt i32 %.sroa.speculated115, 0
  %i.tk = sext i32 %.sroa.speculated115 to i64
  %i.tl = shl nsw i32 %.sroa.speculated115, 1
  %i.tm = sext i32 %i.tl to i64
  %i.tn = mul nsw i32 %.sroa.speculated115, 3
  %i.to = sext i32 %i.tn to i64
  %i.tp = shl nsw i32 %.sroa.speculated115, 2
  %i.tq = sext i32 %i.tp to i64                   ; 12 uses
  %i.tr = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.tj, label %.lr.ph624.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph624.split.us.i:                             ; preds = %.lr.ph624.i
  %i.ts = load ptr, ptr %12, align 8, !tbaa !9, !noalias !563
  %i.tt = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !563
  %i.tu = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !563 ; 2 uses
  %factor.op.mul634.i = mul i64 %i.tu, %i.tt
  %i.tv = sext i32 %.2.lcssa.i to i64
  %wide.trip.count696.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us632.i

.lr.ph.us632.i:                                   ; preds = %._crit_edge.us633.i, %.lr.ph624.split.us.i
  %indvars.iv698.i = phi i64 [ %indvars.iv.next699.i, %._crit_edge.us633.i ], [ %i.tv, %.lr.ph624.split.us.i ] ; 3 uses
  %i.tw = trunc nsw i64 %indvars.iv698.i to i32
  %factor.op.mul619.reass.us.i = mul i32 %factor.op.mul576.i, %i.tw
  %i.tx = sext i32 %factor.op.mul619.reass.us.i to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.tx
  %i.tz = add nsw i64 %indvars.iv698.i, %i.bl
  %.reass635.i = mul i64 %factor.op.mul634.i, %i.tz
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.reass635.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us630.i, %.lr.ph.us632.i
  %indvars.iv693.i = phi i64 [ 0, %.lr.ph.us632.i ], [ %indvars.iv.next694.i, %.split.us630.i ] ; 3 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv693.i ; 5 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.tk ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.tm ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.to ; 2 uses
  %i.uf = load i32, ptr %i.ub, align 4, !tbaa !92
  %i.ug = load i32, ptr %i.uc, align 4, !tbaa !92 ; 2 uses
  %i.uh = add nsw i32 %i.ug, %i.uf
  %i.ui = load i32, ptr %i.ud, align 4, !tbaa !92 ; 2 uses
  %i.uj = add nsw i32 %i.uh, %i.ui                ; 2 uses
  %i.uk = sub i32 %i.ug, %i.ui
  %i.ul = load i32, ptr %i.ue, align 4, !tbaa !92
  %i.um = add nsw i32 %i.uk, %i.ul                ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.tq ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.tq ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.tq ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.tq ; 2 uses
  %i.ur = load i32, ptr %i.un, align 4, !tbaa !92
  %i.us = load i32, ptr %i.uo, align 4, !tbaa !92 ; 2 uses
  %i.ut = add nsw i32 %i.us, %i.ur
  %i.uu = load i32, ptr %i.up, align 4, !tbaa !92 ; 2 uses
  %i.uv = add nsw i32 %i.ut, %i.uu                ; 3 uses
  %i.uw = sub i32 %i.us, %i.uu
  %i.ux = load i32, ptr %i.uq, align 4, !tbaa !92
  %i.uy = add nsw i32 %i.uw, %i.ux                ; 3 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.tq ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.tq ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.tq ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.tq ; 2 uses
  %i.vd = load i32, ptr %i.uz, align 4, !tbaa !92
  %i.ve = load i32, ptr %i.va, align 4, !tbaa !92 ; 2 uses
  %i.vf = add nsw i32 %i.ve, %i.vd
  %i.vg = load i32, ptr %i.vb, align 4, !tbaa !92 ; 2 uses
  %i.vh = add nsw i32 %i.vf, %i.vg                ; 3 uses
  %i.vi = sub i32 %i.ve, %i.vg
  %i.vj = load i32, ptr %i.vc, align 4, !tbaa !92
  %i.vk = add nsw i32 %i.vi, %i.vj                ; 3 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.tq
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.tq
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.tq
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.tq
  %i.vp = load i32, ptr %i.vl, align 4, !tbaa !92
  %i.vq = load i32, ptr %i.vm, align 4, !tbaa !92 ; 2 uses
  %i.vr = load i32, ptr %i.vn, align 4, !tbaa !92 ; 2 uses
  %i.vs = load i32, ptr %i.vo, align 4, !tbaa !92
  %i.vt = trunc i64 %indvars.iv693.i to i32
  %i.vu = add i32 %.044151, %i.vt                 ; 2 uses
  %i.vv = sdiv i32 %i.vu, %i.ca
  %i.vw = srem i32 %i.vu, %i.ca
  %i.vx = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !563
  %i.vy = sext i32 %i.vx to i64
  %i.vz = shl nsw i32 %i.vv, 1                    ; 4 uses
  %i.wa = sext i32 %i.vz to i64
  %i.wb = mul i64 %i.tu, %i.wa
  %i.wc = mul i64 %i.wb, %i.vy
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.wc
  %i.we = shl nsw i32 %i.vw, 1                    ; 2 uses
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.wf ; 7 uses
  %i.wh = or disjoint i32 %i.we, 1
  %i.wi = icmp slt i32 %i.wh, %i.bt
  %.fr.us.i = freeze i1 %i.wi
  %.not.us.us.i = icmp slt i32 %i.vz, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ap:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %i.wj = add nsw i32 %i.uv, %i.uj
  %i.wk = add nsw i32 %i.wj, %i.vh
  %i.wl = ashr i32 %i.wk, 2
  store i32 %i.wl, ptr %i.wg, align 4, !tbaa !92
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.tr
  br label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us631.1.i:            ; preds = %bb.ap, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %.1.us629.i = phi ptr [ %i.wg, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i ], [ %i.wm, %bb.ap ]
  %i.wn = or disjoint i32 %i.vz, 1
  %.not.us628.1.i = icmp slt i32 %i.wn, %i.bu
  br i1 %.not.us628.1.i, label %bb.aq, label %.split.us630.i

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %i.wo = add nsw i32 %i.uy, %i.um
  %i.wp = add nsw i32 %i.wo, %i.vk
  %i.wq = ashr i32 %i.wp, 2
  store i32 %i.wq, ptr %.1.us629.i, align 4, !tbaa !92
  br label %.split.us630.i

.split.us630.i:                                   ; preds = %bb.as, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aq, %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %indvars.iv.next694.i = add nuw nsw i64 %indvars.iv693.i, 1 ; 2 uses
  %exitcond697.not.i = icmp eq i64 %indvars.iv.next694.i, %wide.trip.count696.i
  br i1 %exitcond697.not.i, label %._crit_edge.us633.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !566

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.wr = add nsw i32 %i.uv, %i.uj
  %i.ws = add nsw i32 %i.wr, %i.vh
  %i.wt = ashr i32 %i.ws, 2
  store i32 %i.wt, ptr %i.wg, align 4, !tbaa !92
  %i.wu = sub i32 %i.uv, %i.vh
  %i.wv = add i32 %i.wu, %i.vp
  %i.ww = add i32 %i.wv, %i.vq
  %i.wx = add i32 %i.ww, %i.vr
  %i.wy = ashr i32 %i.wx, 2
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store i32 %i.wy, ptr %i.wz, align 4, !tbaa !92
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.tr
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ar, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.wg, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.xa, %bb.ar ] ; 2 uses
  %i.xb = or disjoint i32 %i.vz, 1
  %.not.us.us.1.i = icmp slt i32 %i.xb, %i.bu
  br i1 %.not.us.us.1.i, label %bb.as, label %.split.us630.i

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.xc = add nsw i32 %i.uy, %i.um
  %i.xd = add nsw i32 %i.xc, %i.vk
  %i.xe = ashr i32 %i.xd, 2
  store i32 %i.xe, ptr %.1.us.us.i, align 4, !tbaa !92
  %i.xf = add i32 %i.uy, %i.vq
  %i.xg = add i32 %i.vk, %i.vr
  %i.xh = sub i32 %i.xf, %i.xg
  %i.xi = add i32 %i.xh, %i.vs
  %i.xj = ashr i32 %i.xi, 2
  %i.xk = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.xj, ptr %i.xk, align 4, !tbaa !92
  br label %.split.us630.i

._crit_edge.us633.i:                              ; preds = %.split.us630.i
  %indvars.iv.next699.i = add nuw nsw i64 %indvars.iv698.i, 1 ; 2 uses
  %exitcond702.not.i = icmp eq i64 %indvars.iv.next699.i, %i.bk
  br i1 %exitcond702.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us632.i, !llvm.loop !567

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.xl = phi i32 [ %i.zg, %.noexc ], [ %.pre158, %.noexc.preheader ] ; 3 uses
  %i.xm = phi i32 [ %i.zi, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.0150 = phi i32 [ %i.zh, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.xn = sub nsw i32 %i.xm, %.0150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.xl, i32 %i.xn)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.xo = load i32, ptr %3, align 4, !tbaa !92
  %i.xp = sdiv i32 %i.at, %i.xo
  %i.xq = load ptr, ptr %10, align 8, !tbaa !9, !noalias !568
  %i.xr = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !568
  %i.xs = sext i32 %i.xp to i64
  %i.xt = mul i64 %i.xr, %i.xs
  %i.xu = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !568 ; 3 uses
  %i.xv = mul i64 %i.xt, %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xv
  %i.xx = load i32, ptr %i.r, align 8, !tbaa !94, !noalias !568
  %i.xy = load ptr, ptr %i.s, align 8, !tbaa !483, !noalias !568
  %i.xz = sdiv i32 %.0150, %i.xl
  %i.ya = sext i32 %i.xz to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !482, !alias.scope !571
  store i64 %i.xu, ptr %i.u, align 8, !tbaa !19, !alias.scope !571
  store i32 %i.xx, ptr %i.v, align 8, !tbaa !94, !alias.scope !571
  store ptr %i.xy, ptr %i.w, align 8, !tbaa !483, !alias.scope !571
  store i32 2, ptr %i.x, align 8, !tbaa !497, !alias.scope !571
  %15 = load <2 x i32>, ptr %i.n, align 4, !tbaa !92, !noalias !568
  %i.yb = load i32, ptr %i.o, align 8, !tbaa !96, !noalias !568
  %i.yc = load i32, ptr %i.n, align 4, !tbaa !93, !noalias !568
  %i.yd = sext i32 %i.yc to i64
  %i.ye = sext i32 %i.yb to i64
  %i.yf = mul nsw i64 %i.ye, %i.yd                ; 2 uses
  %i.yg = mul i64 %i.xu, %i.yf
  %i.yh = mul i64 %i.yg, %i.ya
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.yh
  store ptr %i.yi, ptr %13, align 8, !tbaa !9, !alias.scope !571
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yj = shufflevector <4 x i32> %16, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.yj, ptr %i.y, align 4, !tbaa !92, !alias.scope !571
  store i64 %i.yf, ptr %i.z, align 8, !tbaa !18, !alias.scope !571
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.yk = load i32, ptr %7, align 4, !tbaa !92
  %i.yl = sdiv i32 %.044151, %i.yk
  %i.ym = load ptr, ptr %11, align 8, !tbaa !9, !noalias !574
  %i.yn = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !574
  %i.yo = sext i32 %i.yl to i64
  %i.yp = mul i64 %i.yn, %i.yo
  %i.yq = load i64, ptr %i.ad, align 8, !tbaa !19, !noalias !574 ; 3 uses
  %i.yr = mul i64 %i.yp, %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yr
  %i.yt = load i32, ptr %i.ae, align 8, !tbaa !94, !noalias !574
  %i.yu = load ptr, ptr %i.af, align 8, !tbaa !483, !noalias !574
  store ptr null, ptr %i.ag, align 8, !tbaa !482
  store i64 %i.yq, ptr %i.ah, align 8, !tbaa !19
  store i32 %i.yt, ptr %i.ai, align 8, !tbaa !94
  store ptr %i.yu, ptr %i.aj, align 8, !tbaa !483
  store i32 2, ptr %i.ak, align 8, !tbaa !497
  %17 = load <2 x i32>, ptr %i.aa, align 4, !tbaa !92, !noalias !574
  %i.yv = load i32, ptr %i.ab, align 8, !tbaa !96, !noalias !574
  %i.yw = load i32, ptr %i.aa, align 4, !tbaa !93, !noalias !574
  %i.yx = sext i32 %i.yw to i64
  %i.yy = sext i32 %i.yv to i64
  %i.yz = mul nsw i64 %i.yy, %i.yx                ; 2 uses
  %i.za = mul i64 %i.yq, %i.yz
  %i.zb = mul i64 %i.za, %i.ya
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.zb
  store ptr %i.zc, ptr %14, align 8, !tbaa !9
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zd = shufflevector <4 x i32> %18, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.zd, ptr %i.al, align 4, !tbaa !92
  store i64 %i.yz, ptr %i.am, align 8, !tbaa !18, !alias.scope !577
  %i.ze = add nsw i32 %i.xl, %.0150
  %i.zf = icmp sge i32 %i.ze, %i.xm
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated119, i32 noundef %.sroa.speculated115, i32 noundef %.0150, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.zf)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.zg = load i32, ptr %9, align 4, !tbaa !92    ; 2 uses
  %i.zh = add nsw i32 %i.zg, %.0150               ; 2 uses
  %i.zi = load i32, ptr %8, align 4, !tbaa !92    ; 2 uses
  %i.zj = icmp slt i32 %i.zh, %i.zi
  br i1 %i.zj, label %.noexc, label %._crit_edge, !llvm.loop !580

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us633.i, %.lr.ph624.i, %.preheader.i
  %i.zk = load i32, ptr %7, align 4, !tbaa !92    ; 2 uses
  %i.zl = add nsw i32 %i.zk, %.044151             ; 2 uses
  %i.zm = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.zn = icmp slt i32 %i.zl, %i.zm
  br i1 %i.zn, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !581

._crit_edge156:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge156, %bb.a
  ret void

bb.au:                                            ; preds = %bb.c
  %i.zo = landingpad { ptr, i32 }
          catch ptr null
  %i.zp = extractvalue { ptr, i32 } %i.zo, 0
  call void @__clang_call_terminate(ptr %i.zp) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %.preheader362.lr.ph, label %.preheader354

.preheader362.lr.ph:                              ; preds = %bb.a
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
  %lcmp.mod1956 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1964 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1960.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1963 = trunc i32 %i.u to i1
  br label %.preheader362

.preheader362:                                    ; preds = %.preheader362.lr.ph, %bb.b
  %indvars.iv1068 = phi i64 [ 0, %.preheader362.lr.ph ], [ %indvars.iv.next1069, %bb.b ] ; 2 uses
  %.0802513 = phi ptr [ %.0.val, %.preheader362.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv1068, %i.s
  br label %bb.c

.preheader354.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next1069 to i32
  br label %.preheader354

.preheader354:                                    ; preds = %.preheader354.loopexit, %bb.a
  %.0805.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader354.loopexit ] ; 3 uses
  %.0802.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader354.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0805.lcssa, 3
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader353.lr.ph, label %.preheader345

.preheader353.lr.ph:                              ; preds = %.preheader354
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 5 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0805.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count1082 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -3
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 4 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1975 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1970.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1974 = trunc i32 %i.ax to i1
  %i.ba = icmp eq i32 %i.ao, 0
  %unroll_iter1984 = and i32 %i.ax, -2
  %i.bb = and i32 %i.ak, 2
  %lcmp.mod1980.not.not = icmp eq i32 %i.bb, 0
  %lcmp.mod1983 = trunc i32 %i.ax to i1
  br label %.preheader353

bb.b:                                             ; preds = %._crit_edge508
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 8 ; 3 uses
  %i.bc = or disjoint i64 %indvars.iv.next1069, 7
  %i.bd = icmp samesign ult i64 %i.bc, %i.r
  br i1 %i.bd, label %.preheader362, label %.preheader354.loopexit, !llvm.loop !582

bb.c:                                             ; preds = %.preheader362, %._crit_edge508
  %indvars.iv = phi i64 [ 0, %.preheader362 ], [ %indvars.iv.next, %._crit_edge508 ] ; 3 uses
  %.1803511 = phi ptr [ %.0802513, %.preheader362 ], [ %.5.lcssa, %._crit_edge508 ] ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !9
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !93
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %indvars.iv, %i.bg
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !19
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.z ; 10 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !9
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !93
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %indvars.iv, %i.bo
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !19
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br ; 2 uses
  br i1 %i.f, label %.lr.ph418, label %.preheader361

.preheader361:                                    ; preds = %bb.g, %bb.c
  %.0822.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0810.lcssa = phi ptr [ %i.bs, %bb.c ], [ %.2812.lcssa, %bb.g ] ; 2 uses
  %.2804.lcssa = phi ptr [ %.1803511, %bb.c ], [ %i.ic, %bb.g ] ; 2 uses
  %i.bt = or disjoint i32 %.0822.lcssa, 3
  %i.bu = icmp slt i32 %i.bt, %4
  br i1 %i.bu, label %.lr.ph455, label %.preheader360

.lr.ph418:                                        ; preds = %bb.c, %bb.g
  %.2804416 = phi ptr [ %i.ic, %bb.g ], [ %.1803511, %bb.c ] ; 17 uses
  %.0810415 = phi ptr [ %.2812.lcssa, %bb.g ], [ %i.bs, %bb.c ] ; 2 uses
  %.0822414 = phi i32 [ %i.id, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph418
  %i.bv = load <4 x i64>, ptr %.2804416, align 32, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %.2804416, i64 32
  %i.bx = load <4 x i64>, ptr %i.bw, align 32, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %.2804416, i64 64
  %i.bz = load <4 x i64>, ptr %i.by, align 32, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %.2804416, i64 96
  %i.cb = load <4 x i64>, ptr %i.ca, align 32, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %.2804416, i64 128
  %i.cd = load <4 x i64>, ptr %i.cc, align 32, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %.2804416, i64 160
  %i.cf = load <4 x i64>, ptr %i.ce, align 32, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %.2804416, i64 192
  %i.ch = load <4 x i64>, ptr %i.cg, align 32, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %.2804416, i64 224
  %i.cj = load <4 x i64>, ptr %i.ci, align 32, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph418, %bb.d
  %.0271 = phi <4 x i64> [ %i.ch, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %.0267 = phi <4 x i64> [ %i.cf, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %.0256 = phi <4 x i64> [ %i.cd, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %.0252 = phi <4 x i64> [ %i.cb, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %.0248 = phi <4 x i64> [ %i.bz, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %.0242 = phi <4 x i64> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %.0238 = phi <4 x i64> [ %i.bv, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  %storemerge991 = phi <4 x i64> [ %i.cj, %bb.d ], [ zeroinitializer, %.lr.ph418 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader358
end_hunk_2
begin_hunk_3_@_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.aqc = sext i8 %i.app to i16                  ; 2 uses
  %i.aqd = mul nsw i16 %i.aqc, 6
  %i.aqe = zext i16 %i.aoe to i32                 ; 3 uses
  %i.aqf = mul nsw i16 %i.aod, 36
  %.neg.i = mul nsw i32 %i.aqe, -4                ; 2 uses
  %i.aqg = mul nsw i32 %i.aow, 24                 ; 2 uses
  %i.aqh = sext i16 %i.aps to i32
  %i.aqi = shl nsw i32 %i.aqh, 2                  ; 4 uses
  %i.aqj = add nsw i32 %i.aqg, %i.aqi
  %i.aqk = sub nsw i32 %.neg.i, %i.aqj
  %i.aql = trunc i32 %i.aqk to i16
  %i.aqm = add nsw i32 %i.aqg, %.neg.i
  %i.aqn = sub nsw i32 %i.aqm, %i.aqi
  %i.aqo = trunc i32 %i.aqn to i16
  %i.aqp = mul nsw i32 %i.aow, 12                 ; 2 uses
  %i.aqq = add nsw i32 %i.aqp, %i.aqe
  %i.aqr = add nsw i32 %i.aqq, %i.aqi
  %i.aqs = trunc i32 %i.aqr to i16
  %i.aqt = sub nsw i32 %i.aqe, %i.aqp
  %i.aqu = add nsw i32 %i.aqt, %i.aqi
  %i.aqv = trunc i32 %i.aqu to i16
  %i.aqw = mul nsw i16 %i.apr, 36
  store i16 %i.aqf, ptr %.117.i, align 2, !tbaa !490
  %i.aqx = getelementptr inbounds nuw i8, ptr %.117.i, i64 2
  store i16 %i.aql, ptr %i.aqx, align 2, !tbaa !490
  %i.aqy = getelementptr inbounds nuw i8, ptr %.117.i, i64 4
  store i16 %i.aqo, ptr %i.aqy, align 2, !tbaa !490
  %i.aqz = getelementptr inbounds nuw i8, ptr %.117.i, i64 6
  store i16 %i.aqs, ptr %i.aqz, align 2, !tbaa !490
  %i.ara = getelementptr inbounds nuw i8, ptr %.117.i, i64 8
  store i16 %i.aqv, ptr %i.ara, align 2, !tbaa !490
  %i.arb = getelementptr inbounds nuw i8, ptr %.117.i, i64 10
  store i16 %i.aqw, ptr %i.arb, align 2, !tbaa !490
  %i.arc = getelementptr inbounds nuw i8, ptr %.117.i, i64 12
  %i.ard = shl nsw i32 %i.apc, 2                  ; 2 uses
  %i.are = shl nsw i32 %i.apc, 1                  ; 2 uses
  %i.arf = shl nsw i32 %i.ape, 2                  ; 2 uses
  %i.arg = shl nsw i32 %i.ape, 1                  ; 2 uses
  %i.arh = shl nsw i32 %i.aph, 2                  ; 2 uses
  %i.ari = shl nsw i32 %i.aph, 1                  ; 2 uses
  %i.arj = sub nsw i32 %.neg75.i, %i.aoj          ; 4 uses
  %i.ark = sub nsw i32 %i.aok, %i.aoi             ; 4 uses
  %i.arl = sub nsw i32 %.neg75.2.i, %i.apx        ; 2 uses
  %.neg.1.i = mul nsw i32 %i.arj, -4              ; 2 uses
  %i.arm = shl nsw i32 %i.arl, 2                  ; 4 uses
  %i.arn = add nsw i32 %i.ard, %i.arm
  %i.aro = sub nsw i32 %.neg.1.i, %i.arn
  %i.arp = add nsw i32 %i.ard, %.neg.1.i
  %i.arq = sub nsw i32 %i.arp, %i.arm
  %i.arr = add nsw i32 %i.are, %i.arj
  %i.ars = add nsw i32 %i.arr, %i.arm
  %i.art = sub nsw i32 %i.arj, %i.are
  %i.aru = add nsw i32 %i.art, %i.arm
  %.neg.2.i = mul nsw i32 %i.ark, -4              ; 2 uses
  %i.arv = add nsw i32 %i.arf, %.neg.2.i
  %i.arw = add nsw i32 %i.arg, %i.ark
  %i.arx = sub nsw i32 %i.ark, %i.arg
  %i.ary = trunc nsw i32 %i.arj to i16
  %i.arz = insertelement <16 x i16> poison, i16 %i.ary, i64 0
  %i.asa = trunc i32 %i.aro to i16
  %i.asb = insertelement <16 x i16> %i.arz, i16 %i.asa, i64 1
  %i.asc = trunc i32 %i.arq to i16
  %i.asd = insertelement <16 x i16> %i.asb, i16 %i.asc, i64 2
  %i.ase = trunc i32 %i.ars to i16
  %i.asf = insertelement <16 x i16> %i.asd, i16 %i.ase, i64 3
  %i.asg = trunc i32 %i.aru to i16
  %i.ash = insertelement <16 x i16> %i.asf, i16 %i.asg, i64 4
  %i.asi = trunc nsw i32 %i.arl to i16
  %i.asj = insertelement <16 x i16> %i.ash, i16 %i.asi, i64 5
  %i.ask = trunc nsw i32 %i.ark to i16
  %i.asl = insertelement <16 x i16> %i.asj, i16 %i.ask, i64 6
  %i.asm = getelementptr inbounds nuw i8, ptr %.117.i, i64 44
  %i.asn = shl nsw i32 %i.apj, 2                  ; 2 uses
  %i.aso = shl nsw i32 %i.apj, 1                  ; 2 uses
  %i.asp = add nsw i32 %i.aon, %i.aoi             ; 4 uses
  %i.asq = add nsw i32 %i.aqa, %i.apw             ; 2 uses
  %i.asr = add nsw i32 %i.aqb, %i.apw             ; 2 uses
  %i.ass = shl nsw i32 %i.asq, 2                  ; 4 uses
  %i.ast = add nsw i32 %i.arh, %i.ass
  %i.asu = add nsw i32 %i.aom, %i.aoi             ; 4 uses
  %i.asv = sub nsw i32 %i.apy, %i.apw             ; 2 uses
  %i.asw = shl nsw i32 %i.asv, 2                  ; 4 uses
  %i.asx = add nsw i32 %i.arf, %i.asw
  %i.asy = sub nsw i32 %.neg.2.i, %i.asx
  %i.asz = sub nsw i32 %i.arv, %i.asw
  %i.ata = add nsw i32 %i.arw, %i.asw
  %i.atb = add nsw i32 %i.arx, %i.asw
  %.neg.3.i = mul nsw i32 %i.asu, -4              ; 2 uses
  %i.atc = add nsw i32 %i.arh, %.neg.3.i
  %i.atd = add nsw i32 %i.ari, %i.asu
  %i.ate = trunc i32 %i.asy to i16
  %i.atf = insertelement <16 x i16> %i.asl, i16 %i.ate, i64 7
  %i.atg = sub nsw i32 %.neg.3.i, %i.ast
  %i.ath = sub nsw i32 %i.atc, %i.ass
  %i.ati = add nsw i32 %i.atd, %i.ass
  %i.atj = insertelement <8 x i32> poison, i32 %i.asz, i64 0
  %i.atk = insertelement <8 x i32> %i.atj, i32 %i.ata, i64 1
  %i.atl = insertelement <8 x i32> %i.atk, i32 %i.atb, i64 2
  %i.atm = insertelement <8 x i32> %i.atl, i32 %i.asv, i64 3
  %i.atn = insertelement <8 x i32> %i.atm, i32 %i.asu, i64 4
  %i.ato = insertelement <8 x i32> %i.atn, i32 %i.atg, i64 5
  %i.atp = insertelement <8 x i32> %i.ato, i32 %i.ath, i64 6
  %i.atq = insertelement <8 x i32> %i.atp, i32 %i.ati, i64 7
  %i.atr = trunc <8 x i32> %i.atq to <8 x i16>
  %i.ats = sub nsw i32 %i.asu, %i.ari
  %i.att = shufflevector <8 x i16> %i.atr, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atu = shufflevector <16 x i16> %i.atf, <16 x i16> %i.att, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.atv = mul nsw <16 x i16> %i.atu, <i16 6, i16 1, i16 1, i16 1, i16 1, i16 6, i16 6, i16 1, i16 1, i16 1, i16 1, i16 6, i16 6, i16 1, i16 1, i16 1>
  %i.atw = add nsw i32 %i.ats, %i.ass
  store <16 x i16> %i.atv, ptr %i.arc, align 2, !tbaa !490
  %.neg.4.i = mul nsw i32 %i.asp, -4              ; 2 uses
  %i.atx = shl nsw i32 %i.asr, 2                  ; 4 uses
  %i.aty = add nsw i32 %i.asn, %i.atx
  %i.atz = sub nsw i32 %.neg.4.i, %i.aty
  %i.aua = add nsw i32 %i.asn, %.neg.4.i
  %i.aub = sub nsw i32 %i.aua, %i.atx
  %i.auc = add nsw i32 %i.aso, %i.asp
  %i.aud = add nsw i32 %i.auc, %i.atx
  %i.aue = sub nsw i32 %i.asp, %i.aso
  %i.auf = add nsw i32 %i.aue, %i.atx
  %i.aug = trunc i32 %i.atw to i16
  %i.auh = insertelement <8 x i16> poison, i16 %i.aug, i64 0
  %i.aui = trunc nsw i32 %i.asq to i16
  %i.auj = insertelement <8 x i16> %i.auh, i16 %i.aui, i64 1
  %i.auk = trunc nsw i32 %i.asp to i16
  %i.aul = insertelement <8 x i16> %i.auj, i16 %i.auk, i64 2
  %i.aum = trunc i32 %i.atz to i16
  %i.aun = insertelement <8 x i16> %i.aul, i16 %i.aum, i64 3
  %i.auo = trunc i32 %i.aub to i16
  %i.aup = insertelement <8 x i16> %i.aun, i16 %i.auo, i64 4
  %i.auq = trunc i32 %i.aud to i16
  %i.aur = insertelement <8 x i16> %i.aup, i16 %i.auq, i64 5
  %i.aus = trunc i32 %i.auf to i16
  %i.aut = insertelement <8 x i16> %i.aur, i16 %i.aus, i64 6
  %i.auu = trunc nsw i32 %i.asr to i16
  %i.auv = insertelement <8 x i16> %i.aut, i16 %i.auu, i64 7
  %i.auw = mul nsw <8 x i16> %i.auv, <i16 1, i16 6, i16 6, i16 1, i16 1, i16 1, i16 1, i16 6>
  store <8 x i16> %i.auw, ptr %i.asm, align 2, !tbaa !490
  %i.aux = getelementptr inbounds nuw i8, ptr %.117.i, i64 60
  %i.auy = zext i16 %i.aop to i32                 ; 3 uses
  %i.auz = mul nsw i16 %i.aoo, 36
  %.neg.5.i = mul nsw i32 %i.auy, -4              ; 2 uses
  %i.ava = mul nsw i32 %i.aoz, 24                 ; 2 uses
  %i.avb = sext i16 %i.aqd to i32
  %i.avc = shl nsw i32 %i.avb, 2                  ; 4 uses
  %i.avd = add nsw i32 %i.ava, %i.avc
  %i.ave = sub nsw i32 %.neg.5.i, %i.avd
  %i.avf = trunc i32 %i.ave to i16
  %i.avg = add nsw i32 %i.ava, %.neg.5.i
  %i.avh = sub nsw i32 %i.avg, %i.avc
  %i.avi = trunc i32 %i.avh to i16
  %i.avj = mul nsw i32 %i.aoz, 12                 ; 2 uses
  %i.avk = add nsw i32 %i.avj, %i.auy
  %i.avl = add nsw i32 %i.avk, %i.avc
  %i.avm = trunc i32 %i.avl to i16
  %i.avn = sub nsw i32 %i.auy, %i.avj
  %i.avo = add nsw i32 %i.avn, %i.avc
  %i.avp = trunc i32 %i.avo to i16
  %i.avq = mul nsw i16 %i.aqc, 36
  store i16 %i.auz, ptr %i.aux, align 2, !tbaa !490
  %i.avr = getelementptr inbounds nuw i8, ptr %.117.i, i64 62
  store i16 %i.avf, ptr %i.avr, align 2, !tbaa !490
  %i.avs = getelementptr inbounds nuw i8, ptr %.117.i, i64 64
  store i16 %i.avi, ptr %i.avs, align 2, !tbaa !490
  %i.avt = getelementptr inbounds nuw i8, ptr %.117.i, i64 66
  store i16 %i.avm, ptr %i.avt, align 2, !tbaa !490
  %i.avu = getelementptr inbounds nuw i8, ptr %.117.i, i64 68
  store i16 %i.avp, ptr %i.avu, align 2, !tbaa !490
  %i.avv = getelementptr inbounds nuw i8, ptr %.117.i, i64 70
  store i16 %i.avq, ptr %i.avv, align 2, !tbaa !490
  %i.avw = getelementptr inbounds nuw i8, ptr %.117.i, i64 72 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !682

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block
  %.lcssa = phi ptr [ %i.bs, %middle.block ], [ %i.avw, %.preheader.preheader.i ]
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %.noexc, label %.preheader11.i, !llvm.loop !683

.noexc:                                           ; preds = %._crit_edge.i, %.preheader11.lr.ph.i, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.avx = sdiv i32 %i.ad, %i.av
  %i.avy = load ptr, ptr %10, align 8, !tbaa !9, !noalias !684
  %i.avz = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !684
  %i.awa = sext i32 %i.avx to i64
  %i.awb = mul i64 %i.avz, %i.awa
  %i.awc = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !684 ; 3 uses
  %i.awd = mul i64 %i.awb, %i.awc
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.awd
  %i.awf = load i32, ptr %i.r, align 8, !tbaa !94, !noalias !684
  %i.awg = load ptr, ptr %i.s, align 8, !tbaa !483, !noalias !684
  %i.awh = sdiv i32 %.0109, %i.ar
  %i.awi = sext i32 %i.awh to i64
  store ptr null, ptr %i.t, align 8, !tbaa !482
  store i64 %i.awc, ptr %i.u, align 8, !tbaa !19
  store i32 %i.awf, ptr %i.v, align 8, !tbaa !94
  store ptr %i.awg, ptr %i.w, align 8, !tbaa !483
  store i32 2, ptr %i.x, align 8, !tbaa !497
  %12 = load <2 x i32>, ptr %i.n, align 4, !tbaa !92, !noalias !684
  %i.awj = load i32, ptr %i.o, align 8, !tbaa !96, !noalias !684
  %i.awk = load i32, ptr %i.n, align 4, !tbaa !93, !noalias !684
  %i.awl = sext i32 %i.awk to i64
  %i.awm = sext i32 %i.awj to i64
  %i.awn = mul nsw i64 %i.awm, %i.awl             ; 2 uses
  %i.awo = mul i64 %i.awc, %i.awn
  %i.awp = mul i64 %i.awo, %i.awi
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp
  store ptr %i.awq, ptr %11, align 8, !tbaa !9
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awr = shufflevector <4 x i32> %13, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.awr, ptr %i.y, align 4, !tbaa !92
  store i64 %i.awn, ptr %i.z, align 8, !tbaa !18, !alias.scope !687
  call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 36, i32 noundef %.sroa.speculated68, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.aws = load i32, ptr %6, align 4, !tbaa !92   ; 2 uses
  %i.awt = add nsw i32 %i.aws, %.0109             ; 2 uses
  %i.awu = load i32, ptr %5, align 4, !tbaa !92   ; 2 uses
  %i.awv = icmp slt i32 %i.awt, %i.awu
  br i1 %i.awv, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !690

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.aww = landingpad { ptr, i32 }
          catch ptr null
  %i.awx = extractvalue { ptr, i32 } %i.aww, 0
  call void @__clang_call_terminate(ptr %i.awx) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn30conv3x3s1_winograd43_int8_avx2ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 12 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.m = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.n = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef i32 @_ZN4ncnn33conv3x3s1_winograd43_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  br label %_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load <2 x i32>, ptr %i.p, align 4, !tbaa !92
  %i.r = add nsw <2 x i32> %i.q, splat (i32 3)
  %i.s = sdiv <2 x i32> %i.r, splat (i32 4)       ; 2 uses
  %i.t = extractelement <2 x i32> %i.s, i64 0
  %i.u = extractelement <2 x i32> %i.s, i64 1
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !94
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 3 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 %i.v, ptr %i.e, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !94
  %i.af = mul nsw i32 %i.ae, %i.ac                ; 2 uses
  store i32 %i.af, ptr %i.f, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %i.aa, i32 noundef %i.v, i32 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  %i.ag = load i32, ptr %i.g, align 4, !tbaa !92  ; 2 uses
  %i.ah = add i32 %i.aa, -1
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = sdiv i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.j, align 4, !tbaa !92
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !92
  %i.al = load i32, ptr %i.h, align 4, !tbaa !92  ; 3 uses
  %i.am = add i32 %i.ak, -1
  %i.an = add i32 %i.am, %i.al
  %i.ao = sdiv i32 %i.an, %i.al                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !92
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !92  ; 3 uses
  %i.ar = add i32 %i.ap, -1
  %i.as = add i32 %i.ar, %i.aq
  %i.at = sdiv i32 %i.as, %i.aq                   ; 2 uses
  store i32 %i.at, ptr %i.k, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.au = mul nsw i32 %i.aq, %i.al
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !516
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.au, i32 noundef 36, i32 noundef %i.at, i32 noundef %i.ao, i64 noundef 4, ptr noundef %i.aw)
  %i.be = load ptr, ptr %5, align 8, !tbaa !9
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK4ncnn3Mat5emptyEv.exit176.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit176.i

_ZNK4ncnn3Mat5emptyEv.exit176.i:                  ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !18
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !95
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bh, %i.bj
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZNK4ncnn3Mat5emptyEv.exit176.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit176.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  %i.bm = load i32, ptr %i.k, align 4, !tbaa !92
  %i.bn = mul nsw i32 %i.bm, %i.ao                ; 2 uses
  store i32 %i.bn, ptr %i.l, align 4, !tbaa !92
  %i.bo = icmp sgt i32 %3, 1
  %i.bp = icmp slt i32 %i.bn, %3
  %or.cond.i = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !92
  %i.br = mul nsw i32 %i.bq, 36
  %i.bs = load i32, ptr %i.i, align 4, !tbaa !92
  %i.bt = mul nsw i32 %i.br, %i.bs
  %i.bu = load ptr, ptr %i.av, align 8, !tbaa !516
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.by, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bw, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.bt, i64 noundef 4, ptr noundef %i.bu)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.f

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.e
  %i.bz = load ptr, ptr %6, align 8, !tbaa !9
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit175.i

_ZNK4ncnn3Mat5emptyEv.exit175.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !18
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !95
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.cb, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit175.i
  %i.cg = load i32, ptr %i.l, align 4, !tbaa !92
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %.noexc.i

bb.f:                                             ; preds = %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ax

.noexc.i:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit95.i, %.noexc.lr.ph.i
  %.0199.i = phi i32 [ 0, %.noexc.lr.ph.i ], [ %i.ej, %_ZN4ncnn3MatD2Ev.exit95.i ] ; 3 uses
  %i.cq = load i32, ptr %i.k, align 4, !tbaa !92  ; 2 uses
  %i.cr = sdiv i32 %.0199.i, %i.cq
  %i.cs = srem i32 %.0199.i, %i.cq
  %i.ct = load i32, ptr %i.h, align 4, !tbaa !92  ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.cr                ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
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
  store i16 %i.aad, ptr %i.zn, align 2, !tbaa !490
  %i.aae = add i16 %i.zx, %i.zv
  store i16 %i.aae, ptr %i.zo, align 2, !tbaa !490
  %i.aaf = sub i16 %i.zx, %i.zv
  store i16 %i.aaf, ptr %i.zp, align 2, !tbaa !490
  %i.aag = add i16 %i.aaa, %i.zz
  store i16 %i.aag, ptr %i.zq, align 2, !tbaa !490
  %i.aah = sub i16 %i.aaa, %i.zz
  store i16 %i.aah, ptr %i.zr, align 2, !tbaa !490
  %.neg340.us.5 = mul i32 %i.rp, 65531
  %i.aai = add i32 %.neg340.us.5, %i.zt
  %i.aaj = trunc i32 %i.aai to i16
  %i.aak = add i16 %i.us, %i.aaj
  store i16 %i.aak, ptr %i.zs, align 2, !tbaa !490
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %._crit_edge.us420, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !708

._crit_edge.us420:                                ; preds = %bb.ce
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.aal = icmp slt i64 %indvars.iv.next453, %i.km
  br i1 %i.aal, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge417, !llvm.loop !709

._crit_edge417:                                   ; preds = %._crit_edge.us420, %.lr.ph416, %._crit_edge399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
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
  %i.h = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 %i.j, ptr %i.e, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.k = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !92
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !92
  %i.n = load i32, ptr %i.d, align 4, !tbaa !92   ; 2 uses
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
  %i.at = load i32, ptr %3, align 4, !tbaa !92    ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !92    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !92    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !92
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !92
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !93, !noalias !710 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !96, !noalias !710 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !538, !noalias !710
  %i.bi = load ptr, ptr %8, align 8, !tbaa !9, !noalias !710
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !710
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !710 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !94, !noalias !710
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !483, !noalias !710
  store ptr %i.bo, ptr %11, align 8, !tbaa !9
  store ptr null, ptr %i.v, align 8, !tbaa !482
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !19
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !94
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !483
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !93
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !96
  store i32 1, ptr %i.ac, align 4, !tbaa !538
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !95
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !18
  %i.by = load i32, ptr %i.af, align 8, !tbaa !497, !noalias !710 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !497, !alias.scope !710
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !18, !alias.scope !710
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.cb = load i32, ptr %4, align 4, !tbaa !92
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !9, !noalias !713
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !713
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !19, !noalias !713 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !94, !noalias !713
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !483, !noalias !713
  %i.cm = load i32, ptr %5, align 4, !tbaa !92
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !482
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !19
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !94
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !483
  store i32 2, ptr %i.aq, align 8, !tbaa !497
  %13 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !92, !noalias !713
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !96, !noalias !713
  %i.cq = load i32, ptr %i.ag, align 4, !tbaa !93, !noalias !713
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %i.cp to i64
  %i.ct = mul nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = mul i64 %i.ch, %i.ct
  %i.cv = mul i64 %i.cu, %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  store ptr %i.cw, ptr %12, align 8, !tbaa !9
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %14, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cx, ptr %i.ar, align 4, !tbaa !92
  store i64 %i.ct, ptr %i.as, align 8, !tbaa !18, !alias.scope !716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !92
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !92
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !92
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cy, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !482 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cz, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !483 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %12, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !484
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !486

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.dd, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.dd) #8
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !482 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dj, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !483 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %11, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !484
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !486

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dn, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dn) #8
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.dt = add nsw i32 %.069, 1
  %i.du = load i32, ptr %i.e, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.069, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #23
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [8 x i32]]], align 32   ; 27 uses
  %i.b = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.c = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 %i.j, ptr %i.e, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.k = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !92
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !92
  %i.n = load i32, ptr %i.d, align 4, !tbaa !92   ; 2 uses
  %.not131 = icmp sgt i32 %i.n, %i.m
  br i1 %.not131, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 640
end_hunk_4
begin_hunk_5_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.bai = getelementptr inbounds [4 x i8], ptr %i.ayj, i64 %i.asq
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.ayj, %.preheader.us.i ], [ %i.bai, %bb.bi ] ; 6 uses
  %i.baj = or disjoint i32 %i.ayc, 1
  %.not.us.1.i = icmp slt i32 %i.baj, %i.fl
  br i1 %.not.us.1.i, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.bak = add nsw i32 %i.avd, %i.auh             ; 2 uses
  %i.bal = add nsw i32 %i.awv, %i.avz             ; 2 uses
  %i.bam = sub nsw i32 %i.auh, %i.avd             ; 2 uses
  %i.ban = sub nsw i32 %i.avz, %i.awv             ; 2 uses
  %i.bao = add i32 %i.ato, %i.atm
  %i.bap = add i32 %i.bao, %i.bak
  %i.baq = add i32 %i.bap, %i.bal
  %i.bar = shl nsw i32 %i.bal, 2
  %i.bas = add nsw i32 %i.bar, %i.bak
  %reass.add = add i32 %i.axt, %i.ban
  %reass.mul = shl i32 %reass.add, 3
  %i.bat = add i32 %i.axv, %i.bam
  %i.bau = add i32 %i.bat, %reass.mul
  %i.bav = sdiv i32 %i.baq, 576
  %i.baw = sdiv i32 %i.bas, 576
  %i.bax = sdiv i32 %i.bau, 576
  store i32 %i.bav, ptr %.1.us.i, align 4, !tbaa !92
  br i1 %i.ayl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.bay = shl nsw i32 %i.ban, 1
  %i.baz = add nsw i32 %i.bay, %i.bam
  %i.bba = sdiv i32 %i.baz, 576
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.bba, ptr %i.bbb, align 4, !tbaa !92
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.ayn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.bbc = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.baw, ptr %i.bbc, align 4, !tbaa !92
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %i.ayp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.bbd = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.bax, ptr %i.bbd, align 4, !tbaa !92
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.bbe = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.asq
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bj
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.bj ], [ %i.bbe, %bb.bq ] ; 6 uses
  %i.bbf = or disjoint i32 %i.ayc, 2
  %.not.us.2.i = icmp slt i32 %i.bbf, %i.fl
  br i1 %.not.us.2.i, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.bbg = add nsw i32 %i.avf, %i.auj             ; 2 uses
  %i.bbh = add nsw i32 %i.awx, %i.awb             ; 2 uses
  %i.bbi = sub nsw i32 %i.auj, %i.avf             ; 2 uses
  %i.bbj = sub nsw i32 %i.awb, %i.awx             ; 2 uses
  %i.bbk = add i32 %i.atp, %i.ati
  %i.bbl = add i32 %i.bbk, %i.bbg
  %i.bbm = add i32 %i.bbl, %i.bbh
  %i.bbn = shl nsw i32 %i.bbh, 2
  %i.bbo = add nsw i32 %i.bbn, %i.bbg
  %i.bbp = shl nsw i32 %i.bbj, 3
  %i.bbq = add i32 %i.bbp, %i.bbi
  %i.bbr = add i32 %i.bbq, %i.axx
  %i.bbs = add i32 %i.bbr, %i.axw
  %i.bbt = sdiv i32 %i.bbm, 576
  %i.bbu = sdiv i32 %i.bbo, 576
  %i.bbv = sdiv i32 %i.bbs, 576
  store i32 %i.bbt, ptr %.1.us.1.i, align 4, !tbaa !92
  br i1 %i.ayl, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.bbw = shl nsw i32 %i.bbj, 1
  %i.bbx = add nsw i32 %i.bbw, %i.bbi
  %i.bby = sdiv i32 %i.bbx, 576
  %i.bbz = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.bby, ptr %i.bbz, align 4, !tbaa !92
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %i.ayn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.bca = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.bbu, ptr %i.bca, align 4, !tbaa !92
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %i.ayp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.bcb = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.bbv, ptr %i.bcb, align 4, !tbaa !92
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.bcc = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.asq
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.br ], [ %i.bcc, %bb.by ] ; 4 uses
  %i.bcd = or disjoint i32 %i.ayc, 3
  %.not.us.3.i = icmp slt i32 %i.bcd, %i.fl
  br i1 %.not.us.3.i, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.bce = add nsw i32 %i.avk, %i.auo             ; 2 uses
  %i.bcf = add nsw i32 %i.axc, %i.awg             ; 2 uses
  %i.bcg = sub nsw i32 %i.auo, %i.avk             ; 2 uses
  %i.bch = sub nsw i32 %i.awg, %i.axc             ; 2 uses
  %i.bci = add i32 %i.atq, %i.atm
  %i.bcj = add i32 %i.bci, %i.ats
  %i.bck = add i32 %i.bcj, %i.bce
  %i.bcl = add i32 %i.bck, %i.bcf
  %i.bcm = shl nsw i32 %i.bcf, 2
  %i.bcn = add nsw i32 %i.bcm, %i.bce
  %i.bco = shl nsw i32 %i.bch, 3
  %i.bcp = add i32 %i.bco, %i.bcg
  %i.bcq = add i32 %i.bcp, %i.axv
  %i.bcr = add i32 %i.bcq, %i.axz
  %i.bcs = add i32 %i.bcr, %i.axy
  %i.bct = sdiv i32 %i.bcl, 576
  %i.bcu = sdiv i32 %i.bcn, 576
  %i.bcv = sdiv i32 %i.bcs, 576
  store i32 %i.bct, ptr %.1.us.2.i, align 4, !tbaa !92
  br i1 %i.ayl, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.bcw = shl nsw i32 %i.bch, 1
  %i.bcx = add nsw i32 %i.bcw, %i.bcg
  %i.bcy = sdiv i32 %i.bcx, 576
  %i.bcz = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.bcy, ptr %i.bcz, align 4, !tbaa !92
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %i.ayn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.bda = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.bcu, ptr %i.bda, align 4, !tbaa !92
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  br i1 %i.ayp, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bdb = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.bcv, ptr %i.bdb, align 4, !tbaa !92
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.bz
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1 ; 2 uses
  %exitcond412.not.i = icmp eq i64 %indvars.iv.next409.i, %wide.trip.count411.i
  br i1 %exitcond412.not.i, label %._crit_edge.us298.i, label %.preheader.us.i, !llvm.loop !743

._crit_edge.us298.i:                              ; preds = %bb.cg
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond417.not.i = icmp eq i64 %indvars.iv.next414.i, %i.fb
  br i1 %exitcond417.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us297.i, !llvm.loop !744

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bdc = phi i32 [ %i.bex, %.noexc ], [ %.pre137, %.noexc.preheader ] ; 3 uses
  %i.bdd = phi i32 [ %i.bez, %.noexc ], [ %i.fi, %.noexc.preheader ] ; 2 uses
  %.0129 = phi i32 [ %i.bey, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.bde = sub nsw i32 %i.bdd, %.0129
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bdc, i32 %i.bde)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.bdf = load i32, ptr %3, align 4, !tbaa !92
  %i.bdg = sdiv i32 %i.ek, %i.bdf
  %i.bdh = load ptr, ptr %10, align 8, !tbaa !9, !noalias !745
  %i.bdi = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !745
  %i.bdj = sext i32 %i.bdg to i64
  %i.bdk = mul i64 %i.bdi, %i.bdj
  %i.bdl = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !745 ; 3 uses
  %i.bdm = mul i64 %i.bdk, %i.bdl
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdh, i64 %i.bdm
  %i.bdo = load i32, ptr %i.u, align 8, !tbaa !94, !noalias !745
  %i.bdp = load ptr, ptr %i.v, align 8, !tbaa !483, !noalias !745
  %i.bdq = sdiv i32 %.0129, %i.bdc
  %i.bdr = sext i32 %i.bdq to i64                 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !482, !alias.scope !748
  store i64 %i.bdl, ptr %i.x, align 8, !tbaa !19, !alias.scope !748
  store i32 %i.bdo, ptr %i.y, align 8, !tbaa !94, !alias.scope !748
  store ptr %i.bdp, ptr %i.z, align 8, !tbaa !483, !alias.scope !748
  store i32 2, ptr %i.aa, align 8, !tbaa !497, !alias.scope !748
  %15 = load <2 x i32>, ptr %i.q, align 4, !tbaa !92, !noalias !745
  %i.bds = load i32, ptr %i.r, align 8, !tbaa !96, !noalias !745
  %i.bdt = load i32, ptr %i.q, align 4, !tbaa !93, !noalias !745
  %i.bdu = sext i32 %i.bdt to i64
  %i.bdv = sext i32 %i.bds to i64
  %i.bdw = mul nsw i64 %i.bdv, %i.bdu             ; 2 uses
  %i.bdx = mul i64 %i.bdl, %i.bdw
  %i.bdy = mul i64 %i.bdx, %i.bdr
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdn, i64 %i.bdy
  store ptr %i.bdz, ptr %13, align 8, !tbaa !9, !alias.scope !748
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bea = shufflevector <4 x i32> %16, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bea, ptr %i.ab, align 4, !tbaa !92, !alias.scope !748
  store i64 %i.bdw, ptr %i.ac, align 8, !tbaa !18, !alias.scope !748
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.beb = load i32, ptr %7, align 4, !tbaa !92
  %i.bec = sdiv i32 %.044130, %i.beb
  %i.bed = load ptr, ptr %11, align 8, !tbaa !9, !noalias !751
  %i.bee = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !751
  %i.bef = sext i32 %i.bec to i64
  %i.beg = mul i64 %i.bee, %i.bef
  %i.beh = load i64, ptr %i.ag, align 8, !tbaa !19, !noalias !751 ; 3 uses
  %i.bei = mul i64 %i.beg, %i.beh
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bed, i64 %i.bei
  %i.bek = load i32, ptr %i.ah, align 8, !tbaa !94, !noalias !751
  %i.bel = load ptr, ptr %i.ai, align 8, !tbaa !483, !noalias !751
  store ptr null, ptr %i.aj, align 8, !tbaa !482
  store i64 %i.beh, ptr %i.ak, align 8, !tbaa !19
  store i32 %i.bek, ptr %i.al, align 8, !tbaa !94
  store ptr %i.bel, ptr %i.am, align 8, !tbaa !483
  store i32 2, ptr %i.an, align 8, !tbaa !497
  %17 = load <2 x i32>, ptr %i.ad, align 4, !tbaa !92, !noalias !751
  %i.bem = load i32, ptr %i.ae, align 8, !tbaa !96, !noalias !751
  %i.ben = load i32, ptr %i.ad, align 4, !tbaa !93, !noalias !751
  %i.beo = sext i32 %i.ben to i64
  %i.bep = sext i32 %i.bem to i64
  %i.beq = mul nsw i64 %i.bep, %i.beo             ; 2 uses
  %i.ber = mul i64 %i.beh, %i.beq
  %i.bes = mul i64 %i.ber, %i.bdr
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bej, i64 %i.bes
  store ptr %i.bet, ptr %14, align 8, !tbaa !9
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.beu = shufflevector <4 x i32> %18, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.beu, ptr %i.ao, align 4, !tbaa !92
  store i64 %i.beq, ptr %i.ap, align 8, !tbaa !18, !alias.scope !754
  %i.bev = add nsw i32 %i.bdc, %.0129
  %i.bew = icmp sge i32 %i.bev, %i.bdd
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.es, i32 noundef 36, i32 noundef %.sroa.speculated120, i32 noundef %.sroa.speculated116, i32 noundef %.0129, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.bew)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.bex = load i32, ptr %9, align 4, !tbaa !92   ; 2 uses
  %i.bey = add nsw i32 %i.bex, %.0129             ; 2 uses
  %i.bez = load i32, ptr %8, align 4, !tbaa !92   ; 2 uses
  %i.bfa = icmp slt i32 %i.bey, %i.bez
  br i1 %i.bfa, label %.noexc, label %._crit_edge, !llvm.loop !757

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us298.i, %.lr.ph295.i, %.preheader75.i
  %i.bfb = load i32, ptr %7, align 4, !tbaa !92   ; 2 uses
  %i.bfc = add nsw i32 %i.bfb, %.044130           ; 2 uses
  %i.bfd = load i32, ptr %6, align 4, !tbaa !92   ; 2 uses
  %i.bfe = icmp slt i32 %i.bfc, %i.bfd
  br i1 %i.bfe, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !758

._crit_edge135:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge135, %bb.a
  ret void

bb.ci:                                            ; preds = %bb.c
  %i.bff = landingpad { ptr, i32 }
          catch ptr null
  %i.bfg = extractvalue { ptr, i32 } %i.bff, 0
  call void @__clang_call_terminate(ptr %i.bfg) #23
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.dy

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.h = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !92
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !92
  %i.k = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.not259 = icmp sgt i32 %i.k, %i.j
  br i1 %.not259, label %._crit_edge262, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !92     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge262

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.anl, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0260 = phi i32 [ %i.anm, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !92
  %i.s = shl nsw i32 %.0260, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.thread.5
  %i.w = phi i32 [ %i.q, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %i.ani, %.thread.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !92
  %i.y = load i32, ptr %6, align 4, !tbaa !92     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !92
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !92    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !759
  %i.ae = load ptr, ptr %7, align 8, !tbaa !9, !noalias !759
  %i.af = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !759
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !759 ; 2 uses
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
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !92   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !92   ; 61 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 12 uses
  %i.be = or disjoint i32 %i.av, 2                ; 12 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 12 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 12 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 12 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
  %i.bj = icmp slt i32 %i.aq, %i.az
  br i1 %i.bj, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  switch i32 %i.ab, label %.thread [
    i32 8, label %bb.d
    i32 1, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.bk = load i64, ptr %i.ay, align 1, !tbaa !20
  %i.bl = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bk, i64 0
  %i.bm = bitcast <2 x i64> %i.bl to <16 x i8>    ; 2 uses
  %.lobit.i231 = ashr <16 x i8> %i.bm, splat (i8 7)
  %i.bn = shufflevector <16 x i8> %i.bm, <16 x i8> %.lobit.i231, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bo = bitcast <16 x i8> %i.bn to <2 x i64>    ; 2 uses
  %i.bp = icmp slt i32 %i.bd, %i.ba
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !20
  %i.bs = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.br, i64 0
  %i.bt = bitcast <2 x i64> %i.bs to <16 x i8>    ; 2 uses
  %.lobit.i230 = ashr <16 x i8> %i.bt, splat (i8 7)
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> %.lobit.i230, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bv = bitcast <16 x i8> %i.bu to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0202 = phi <2 x i64> [ %i.bv, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bw = icmp slt i32 %i.be, %i.ba
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.by = load i64, ptr %i.bx, align 1, !tbaa !20
  %i.bz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <16 x i8>    ; 2 uses
  %.lobit.i229 = ashr <16 x i8> %i.ca, splat (i8 7)
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> %.lobit.i229, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cc = bitcast <16 x i8> %i.cb to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0204 = phi <2 x i64> [ %i.cc, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.cd = icmp slt i32 %i.bf, %i.ba
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !20
  %i.cg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <16 x i8>    ; 2 uses
  %.lobit.i228 = ashr <16 x i8> %i.ch, splat (i8 7)
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> %.lobit.i228, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cj = bitcast <16 x i8> %i.ci to <2 x i64>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0215 = phi <2 x i64> [ %i.cj, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.ck = icmp slt i32 %i.bg, %i.ba
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.cm = load i64, ptr %i.cl, align 1, !tbaa !20
  %i.cn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cm, i64 0
  %i.co = bitcast <2 x i64> %i.cn to <16 x i8>    ; 2 uses
end_hunk_5
