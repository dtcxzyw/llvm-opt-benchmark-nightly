inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  br label %_ZN4ncnn3MatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %..loopexit_crit_edge.i.i, %.loopexit150.us.i.loopexit.i, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %.lr.ph232.split.split.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i, %.lr.ph232.i.i, %.preheader.i.i
  %i.ur = add nsw i32 %.087, 1
  %i.us = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.087, %i.us
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ee

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
  %.not266 = icmp sgt i32 %i.k, %i.j
  br i1 %.not266, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph269, %_ZN4ncnn3MatD2Ev.exit
  %.0267 = phi i32 [ %i.k, %.lr.ph269 ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.w = mul nsw i32 %i.v, %.0267                 ; 3 uses
  %i.x = load i32, ptr %4, align 4, !tbaa !67
  %i.y = load i32, ptr %5, align 4, !tbaa !67
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit50

bb.d:                                             ; preds = %bb.c
  %i.aa = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.e unwind label %bb.ef

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1033
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1033
  %i.ad = sext i32 %i.aa to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1033
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.pre = load i32, ptr %3, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit50

_ZN4ncnn3MatD2Ev.exit50:                          ; preds = %bb.e, %bb.c
  %i.ai = phi i32 [ %i.v, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.0167.0 = phi ptr [ null, %bb.c ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !67
  %i.ak = sub nsw i32 %i.aj, %i.w
  %.sroa.speculated149 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ak) ; 5 uses
  %i.al = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit50
  %i.an = icmp sgt i32 %.sroa.speculated149, 3
  %i.ao = sext i32 %i.w to i64                    ; 6 uses
  %i.ap = zext i32 %.sroa.speculated149 to i64    ; 2 uses
  %i.aq = sext i32 %.sroa.speculated149 to i64
  %invariant.op.i = add nsw i64 %i.aq, -1
  %i.ar = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre354 = load i32, ptr %9, align 4, !tbaa !67
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit50
  %i.at = add nsw i32 %.0267, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.0267, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge270

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.av = phi i32 [ %i.bf, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.bg, %._crit_edge ], [ %.pre354, %.lr.ph.split.preheader ] ; 2 uses
  %i.ax = phi i32 [ %i.bh, %._crit_edge ], [ %i.ar, %.lr.ph.split.preheader ] ; 3 uses
  %.044265 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %i.ay = sub nsw i32 %i.av, %.044265
  %.sroa.speculated145 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ay) ; 30 uses
  %i.az = icmp sgt i32 %i.ax, 0
  br i1 %i.az, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.ba = icmp sgt i32 %.sroa.speculated145, 11   ; 3 uses
  %i.bb = add i32 %.sroa.speculated145, -12
  %i.bc = urem i32 %i.bb, 12
  %i.bd = sub i32 %.sroa.speculated145, %i.bc     ; 3 uses
  %i.be = sext i32 %.044265 to i64                ; 2 uses
  %.pre355 = load i32, ptr %5, align 4, !tbaa !67
  br label %.noexc

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit46
  %.pre356 = load i32, ptr %9, align 4, !tbaa !67
  %.pre357 = load i32, ptr %8, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.bf = phi i32 [ %.pre357, %._crit_edge.loopexit ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.bg = phi i32 [ %.pre356, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph.split ] ; 2 uses
  %i.bh = phi i32 [ %i.ash, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph.split ]
  %i.bi = add nsw i32 %i.bg, %.044265             ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.bf
  br i1 %i.bj, label %.lr.ph.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1036

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnn3MatD2Ev.exit46
  %i.bk = phi i32 [ %.pre355, %.noexc.lr.ph ], [ %i.asf, %_ZN4ncnn3MatD2Ev.exit46 ] ; 3 uses
  %i.bl = phi i32 [ %i.ax, %.noexc.lr.ph ], [ %i.ash, %_ZN4ncnn3MatD2Ev.exit46 ] ; 2 uses
  %.045264 = phi i32 [ 0, %.noexc.lr.ph ], [ %i.asg, %_ZN4ncnn3MatD2Ev.exit46 ] ; 7 uses
  %i.bm = sub i32 %i.bl, %.045264
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bm) ; 45 uses
  %i.bn = load i32, ptr %3, align 4, !tbaa !67
  %i.bo = sdiv i32 %i.w, %i.bn
  %i.bp = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1037
  %i.bq = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1037
  %i.br = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1037
  %i.bs = sext i32 %i.bo to i64
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !65, !noalias !1037 ; 2 uses
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = sext i32 %i.bp to i64
  %i.by = sdiv i32 %.045264, %i.bk
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = mul i64 %i.bu, %i.bx
  %i.cb = mul i64 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %9, align 4, !tbaa !67
  %i.ce = sdiv i32 %.044265, %i.cd
  %i.cf = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !1040
  %i.cg = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1040
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1040
  %i.ci = sext i32 %i.ce to i64
  %i.cj = mul i64 %i.ch, %i.ci
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1040 ; 2 uses
  %i.cl = mul i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cl
  %i.cn = sext i32 %i.cf to i64
  %i.co = mul i64 %i.ck, %i.cn
  %i.cp = mul i64 %i.co, %i.bz
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp ; 6 uses
  %i.cr = add nsw i32 %i.bk, %.045264
  %.not179 = icmp slt i32 %i.cr, %i.bl            ; 15 uses
  %i.cs = load i32, ptr %i.t, align 8, !tbaa !66  ; 6 uses
  %i.ct = load i64, ptr %i.u, align 8, !tbaa !20  ; 5 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  br i1 %i.an, label %.lr.ph566.i, label %.preheader427.i

.lr.ph566.i:                                      ; preds = %.noexc
  %i.cv = trunc i64 %i.ct to i32
  %i.cw = mul nsw i32 %i.cs, %.044265
  %i.cx = sext i32 %i.cw to i64
  %14 = icmp ne i32 %.045264, 0                   ; 6 uses
  %i.cy = icmp sgt i32 %.sroa.speculated, 0       ; 5 uses
  %sext904.i = shl i64 %i.ct, 32                  ; 3 uses
  %i.cz = ashr exact i64 %sext904.i, 30           ; 5 uses
  %i.da = shl nsw i32 %i.cv, 1
  %i.db = sext i32 %i.da to i64                   ; 5 uses
  %sext905.i = mul i64 %i.ct, 12884901888
  %i.dc = ashr exact i64 %sext905.i, 30           ; 5 uses
  %sext896.i = add i64 %sext904.i, 4294967296
  %i.dd = ashr exact i64 %sext896.i, 30
  %i.de = shl nsw i32 %.sroa.speculated, 2
  %i.df = sext i32 %i.de to i64
  %i.dg = add i32 %.sroa.speculated, -1           ; 2 uses
  %i.dh = zext i32 %i.dg to i64                   ; 4 uses
  %i.di = shl nuw nsw i64 %i.dh, 5
  %i.dj = shl nuw nsw i64 %i.dh, 4
  %i.dk = shl nuw nsw i64 %i.dh, 3
  %i.dl = shl nuw nsw i64 %i.dh, 2
  %i.dm = ashr exact i64 %sext904.i, 32
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.dn = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod731 = trunc i32 %.sroa.speculated to i1
  %xtraiter732 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.do = icmp ult i32 %i.dg, 3
  %unroll_iter736 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod733.not = icmp eq i32 %xtraiter732, 0
  %lcmp.mod735 = icmp ne i32 %xtraiter732, 0
  br label %bb.f

.preheader427.loopexit.i:                         ; preds = %._crit_edge559.i
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader427.i

.preheader427.i:                                  ; preds = %.preheader427.loopexit.i, %.noexc
  %.0802.lcssa.i = phi i32 [ 0, %.noexc ], [ %i.dp, %.preheader427.loopexit.i ] ; 3 uses
  %.0792.lcssa.i = phi ptr [ %.sroa.0167.0, %.noexc ], [ %.5797.lcssa.i, %.preheader427.loopexit.i ] ; 2 uses
  %.0784.lcssa.i = phi ptr [ %i.cu, %.noexc ], [ %.1785.i, %.preheader427.loopexit.i ] ; 2 uses
  %.0781.lcssa.i = phi ptr [ %i.cc, %.noexc ], [ %i.wc, %.preheader427.loopexit.i ] ; 2 uses
  %i.dq = or disjoint i32 %.0802.lcssa.i, 1
  %i.dr = icmp slt i32 %i.dq, %.sroa.speculated149
  br i1 %i.dr, label %.lr.ph690.i, label %.preheader422.i

.lr.ph690.i:                                      ; preds = %.preheader427.i
  %i.ds = icmp eq i32 %.045264, 0                 ; 5 uses
  %i.dt = icmp sgt i32 %.sroa.speculated, 0       ; 5 uses
  %sext889.i = shl i64 %i.ct, 32                  ; 3 uses
  %i.du = ashr exact i64 %sext889.i, 30           ; 5 uses
  %sext883.i = add i64 %sext889.i, 4294967296
  %i.dv = ashr exact i64 %sext883.i, 30
  %i.dw = shl nsw i32 %.sroa.speculated, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = add i32 %.sroa.speculated, -1
  %i.dz = zext i32 %i.dy to i64                   ; 4 uses
  %i.ea = shl nuw nsw i64 %i.dz, 5
  %i.eb = shl nuw nsw i64 %i.dz, 4
  %i.ec = shl nuw nsw i64 %i.dz, 3
  %i.ed = shl nuw nsw i64 %i.dz, 2
  %i.ee = zext nneg i32 %.0802.lcssa.i to i64
  %i.ef = ashr exact i64 %sext889.i, 32
  %xtraiter738 = and i32 %.sroa.speculated, 1
  %i.eg = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter744 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod740.not = icmp eq i32 %xtraiter738, 0
  %lcmp.mod743 = trunc i32 %.sroa.speculated to i1
  %i.eh = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check604 = icmp ult i32 %.sroa.speculated, 4
  %n.vec606 = and i64 %i.eh, 2147483644           ; 4 uses
  %i.ei = trunc nuw nsw i64 %n.vec606 to i32
  %i.ej = shl nuw nsw i64 %n.vec606, 3            ; 2 uses
  %cmp.n623 = icmp eq i64 %n.vec606, %i.eh
  %i.ek = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check573 = icmp ult i32 %.sroa.speculated, 8
  %n.vec575 = and i64 %i.ek, 2147483640           ; 5 uses
  %i.el = trunc nuw nsw i64 %n.vec575 to i32
  %i.em = shl nuw nsw i64 %n.vec575, 3
  %i.en = shl nuw nsw i64 %n.vec575, 2
  %cmp.n597 = icmp eq i64 %n.vec575, %i.ek
  br label %bb.az

bb.f:                                             ; preds = %._crit_edge559.i, %.lr.ph566.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph566.i ], [ %indvars.iv.next.i, %._crit_edge559.i ] ; 3 uses
  %.0781564.i = phi ptr [ %i.cc, %.lr.ph566.i ], [ %i.wc, %._crit_edge559.i ] ; 8 uses
  %.0784563.i = phi ptr [ %i.cu, %.lr.ph566.i ], [ %.1785.i, %._crit_edge559.i ]
  %.0792562.i = phi ptr [ %.sroa.0167.0, %.lr.ph566.i ], [ %.5797.lcssa.i, %._crit_edge559.i ] ; 2 uses
  %i.eo = load ptr, ptr %13, align 8, !tbaa !18
  %i.ep = add nsw i64 %indvars.iv.i, %i.ao
  %i.eq = mul nsw i64 %i.ep, %i.dm
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.cx ; 2 uses
  %.not890.i = icmp eq ptr %.0784563.i, null
  br i1 %.not890.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.et = load ptr, ptr %12, align 8, !tbaa !18
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ao
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1785.i = phi ptr [ %i.ev, %bb.g ], [ null, %bb.f ] ; 12 uses
  br i1 %i.ba, label %.lr.ph464.i, label %.preheader431.i

.lr.ph464.i:                                      ; preds = %bb.h
  %.not903.i = icmp eq ptr %.1785.i, null
  br label %bb.i

.preheader431.i:                                  ; preds = %bb.q, %bb.h
  %.0830.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.bd, %bb.q ] ; 3 uses
  %.0820.lcssa.i = phi ptr [ %i.cq, %bb.h ], [ %.1821.lcssa.i, %bb.q ] ; 2 uses
  %.0805.lcssa.i = phi ptr [ %i.es, %bb.h ], [ %.2807.i, %bb.q ] ; 2 uses
  %.1793.lcssa.i = phi ptr [ %.0792562.i, %bb.h ], [ %i.la, %bb.q ] ; 2 uses
  %i.ew = add nuw nsw i32 %.0830.lcssa.i, 7
  %i.ex = icmp slt i32 %i.ew, %.sroa.speculated145
  br i1 %i.ex, label %.lr.ph496.i, label %.preheader430.i

.lr.ph496.i:                                      ; preds = %.preheader431.i
  %.not900.i = icmp eq ptr %.1785.i, null
  br label %bb.r

bb.i:                                             ; preds = %bb.q, %.lr.ph464.i
  %.1793462.i = phi ptr [ %.0792562.i, %.lr.ph464.i ], [ %i.la, %bb.q ] ; 25 uses
  %.0805461.i = phi ptr [ %i.es, %.lr.ph464.i ], [ %.2807.i, %bb.q ] ; 22 uses
  %.0820460.i = phi ptr [ %i.cq, %.lr.ph464.i ], [ %.1821.lcssa.i, %bb.q ] ; 2 uses
  %.0830459.i = phi i32 [ 0, %.lr.ph464.i ], [ %i.lb, %bb.q ] ; 2 uses
  br i1 %14, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not903.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ey = load <4 x float>, ptr %.1785.i, align 1, !tbaa !254 ; 12 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ez = load <4 x float>, ptr %.1793462.i, align 16, !tbaa !254
  %i.fa = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 16
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 32
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !254
  %i.fe = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 48
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 64
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !254
  %i.fi = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 80
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !tbaa !254
  %i.fk = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 96
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !254
  %i.fm = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 112
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !254
  %i.fo = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 128
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !254
  %i.fq = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 144
  %i.fr = load <4 x float>, ptr %i.fq, align 16, !tbaa !254
  %i.fs = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 160
  %i.ft = load <4 x float>, ptr %i.fs, align 16, !tbaa !254
  %i.fu = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 176
  %i.fv = load <4 x float>, ptr %i.fu, align 16, !tbaa !254
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0353.i = phi nsz <4 x float> [ %i.fv, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0351.i = phi nsz <4 x float> [ %i.ft, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0349.i = phi nsz <4 x float> [ %i.fr, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0341.i = phi nsz <4 x float> [ %i.fp, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0339.i = phi nsz <4 x float> [ %i.fn, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0337.i = phi nsz <4 x float> [ %i.fl, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0335.i = phi nsz <4 x float> [ %i.fj, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0329.i = phi nsz <4 x float> [ %i.fh, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0327.i = phi nsz <4 x float> [ %i.ff, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0325.i = phi nsz <4 x float> [ %i.fd, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0321.i = phi nsz <4 x float> [ %i.fb, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %.0319.i = phi nsz <4 x float> [ %i.ez, %bb.l ], [ %i.ey, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.1821446.i = phi ptr [ %i.ir, %.lr.ph.i ], [ %.0820460.i, %bb.m ] ; 13 uses
  %.0835445.i = phi ptr [ %i.iq, %.lr.ph.i ], [ %.0781564.i, %bb.m ] ; 2 uses
  %.0838444.i = phi i32 [ %i.is, %.lr.ph.i ], [ 0, %bb.m ]
  %.1320443.i = phi <4 x float> [ %i.gb, %.lr.ph.i ], [ %.0319.i, %bb.m ]
  %.1322442.i = phi <4 x float> [ %i.gh, %.lr.ph.i ], [ %.0321.i, %bb.m ]
  %.1326441.i = phi <4 x float> [ %i.gn, %.lr.ph.i ], [ %.0325.i, %bb.m ]
  %.1328440.i = phi <4 x float> [ %i.gt, %.lr.ph.i ], [ %.0327.i, %bb.m ]
  %.1330439.i = phi <4 x float> [ %i.gz, %.lr.ph.i ], [ %.0329.i, %bb.m ]
  %.1336438.i = phi <4 x float> [ %i.hf, %.lr.ph.i ], [ %.0335.i, %bb.m ]
  %.1338437.i = phi <4 x float> [ %i.hl, %.lr.ph.i ], [ %.0337.i, %bb.m ]
  %.1340436.i = phi <4 x float> [ %i.hr, %.lr.ph.i ], [ %.0339.i, %bb.m ]
  %.1342435.i = phi <4 x float> [ %i.hx, %.lr.ph.i ], [ %.0341.i, %bb.m ]
  %.1350434.i = phi <4 x float> [ %i.id, %.lr.ph.i ], [ %.0349.i, %bb.m ]
  %.1352433.i = phi <4 x float> [ %i.ij, %.lr.ph.i ], [ %.0351.i, %bb.m ]
  %.1354432.i = phi <4 x float> [ %i.ip, %.lr.ph.i ], [ %.0353.i, %bb.m ]
  %i.fw = load <4 x float>, ptr %.0835445.i, align 1, !tbaa !254 ; 12 uses
  %i.fx = load float, ptr %.1821446.i, align 4, !tbaa !39
  %i.fy = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = fmul fast <4 x float> %i.fz, %i.fw
  %i.gb = fadd fast <4 x float> %i.ga, %.1320443.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !39
  %i.ge = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = fmul fast <4 x float> %i.gf, %i.fw
  %i.gh = fadd fast <4 x float> %i.gg, %.1322442.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 8
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !39
  %i.gk = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = fmul fast <4 x float> %i.gl, %i.fw
  %i.gn = fadd fast <4 x float> %i.gm, %.1326441.i ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 12
  %i.gp = load float, ptr %i.go, align 4, !tbaa !39
  %i.gq = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = fmul fast <4 x float> %i.gr, %i.fw
  %i.gt = fadd fast <4 x float> %i.gs, %.1328440.i ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 16
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !39
  %i.gw = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = fmul fast <4 x float> %i.gx, %i.fw
  %i.gz = fadd fast <4 x float> %i.gy, %.1330439.i ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 20
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !39
  %i.hc = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = fmul fast <4 x float> %i.hd, %i.fw
  %i.hf = fadd fast <4 x float> %i.he, %.1336438.i ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 24
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !39
  %i.hi = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = fmul fast <4 x float> %i.hj, %i.fw
  %i.hl = fadd fast <4 x float> %i.hk, %.1338437.i ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 28
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !39
  %i.ho = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = fmul fast <4 x float> %i.hp, %i.fw
  %i.hr = fadd fast <4 x float> %i.hq, %.1340436.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 32
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !39
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fmul fast <4 x float> %i.hv, %i.fw
  %i.hx = fadd fast <4 x float> %i.hw, %.1342435.i ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 36
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !39
  %i.ia = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = fmul fast <4 x float> %i.ib, %i.fw
  %i.id = fadd fast <4 x float> %i.ic, %.1350434.i ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 40
  %i.if = load float, ptr %i.ie, align 4, !tbaa !39
  %i.ig = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul fast <4 x float> %i.ih, %i.fw
  %i.ij = fadd fast <4 x float> %i.ii, %.1352433.i ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 44
  %i.il = load float, ptr %i.ik, align 4, !tbaa !39
  %i.im = insertelement <4 x float> poison, float %i.il, i64 0
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul fast <4 x float> %i.in, %i.fw
  %i.ip = fadd fast <4 x float> %i.io, %.1354432.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0835445.i, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %.1821446.i, i64 48 ; 2 uses
  %i.is = add nuw nsw i32 %.0838444.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.is, %.sroa.speculated
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1043

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.1354.lcssa.i = phi <4 x float> [ %.0353.i, %bb.m ], [ %i.ip, %.lr.ph.i ] ; 4 uses
  %.1352.lcssa.i = phi <4 x float> [ %.0351.i, %bb.m ], [ %i.ij, %.lr.ph.i ] ; 4 uses
  %.1350.lcssa.i = phi <4 x float> [ %.0349.i, %bb.m ], [ %i.id, %.lr.ph.i ] ; 4 uses
  %.1342.lcssa.i = phi <4 x float> [ %.0341.i, %bb.m ], [ %i.hx, %.lr.ph.i ] ; 4 uses
  %.1340.lcssa.i = phi <4 x float> [ %.0339.i, %bb.m ], [ %i.hr, %.lr.ph.i ] ; 4 uses
  %.1338.lcssa.i = phi <4 x float> [ %.0337.i, %bb.m ], [ %i.hl, %.lr.ph.i ] ; 4 uses
  %.1336.lcssa.i = phi <4 x float> [ %.0335.i, %bb.m ], [ %i.hf, %.lr.ph.i ] ; 4 uses
  %.1330.lcssa.i = phi <4 x float> [ %.0329.i, %bb.m ], [ %i.gz, %.lr.ph.i ] ; 4 uses
  %.1328.lcssa.i = phi <4 x float> [ %.0327.i, %bb.m ], [ %i.gt, %.lr.ph.i ] ; 4 uses
  %.1326.lcssa.i = phi <4 x float> [ %.0325.i, %bb.m ], [ %i.gn, %.lr.ph.i ] ; 4 uses
  %.1322.lcssa.i = phi <4 x float> [ %.0321.i, %bb.m ], [ %i.gh, %.lr.ph.i ] ; 4 uses
  %.1320.lcssa.i = phi <4 x float> [ %.0319.i, %bb.m ], [ %i.gb, %.lr.ph.i ] ; 4 uses
  %.1821.lcssa.i = phi ptr [ %.0820460.i, %bb.m ], [ %i.ir, %.lr.ph.i ] ; 2 uses
  br i1 %.not179, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  switch i32 %i.cs, label %bb.q [
    i32 4, label %.thread.i
    i32 1, label %bb.o
  ]

.thread.i:                                        ; preds = %bb.n
  store <4 x float> %.1320.lcssa.i, ptr %.0805461.i, align 1, !tbaa !254
  %i.it = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 16
  store <4 x float> %.1322.lcssa.i, ptr %i.it, align 1, !tbaa !254
  %i.iu = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 32
  store <4 x float> %.1326.lcssa.i, ptr %i.iu, align 1, !tbaa !254
  %i.iv = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 48
  store <4 x float> %.1328.lcssa.i, ptr %i.iv, align 1, !tbaa !254
  %i.iw = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 64
  store <4 x float> %.1330.lcssa.i, ptr %i.iw, align 1, !tbaa !254
  %i.ix = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 80
  store <4 x float> %.1336.lcssa.i, ptr %i.ix, align 1, !tbaa !254
  %i.iy = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 96
  store <4 x float> %.1338.lcssa.i, ptr %i.iy, align 1, !tbaa !254
  %i.iz = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 112
  store <4 x float> %.1340.lcssa.i, ptr %i.iz, align 1, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 128
  store <4 x float> %.1342.lcssa.i, ptr %i.ja, align 1, !tbaa !254
  %i.jb = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 144
  store <4 x float> %.1350.lcssa.i, ptr %i.jb, align 1, !tbaa !254
  %i.jc = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 160
  store <4 x float> %.1352.lcssa.i, ptr %i.jc, align 1, !tbaa !254
  %i.jd = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 176
  store <4 x float> %.1354.lcssa.i, ptr %i.jd, align 1, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 192
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.jf = shufflevector <4 x float> %.1320.lcssa.i, <4 x float> %.1322.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jg = shufflevector <4 x float> %.1326.lcssa.i, <4 x float> %.1328.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jh = shufflevector <4 x float> %.1320.lcssa.i, <4 x float> %.1322.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ji = shufflevector <4 x float> %.1326.lcssa.i, <4 x float> %.1328.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jj = shufflevector <4 x float> %i.jf, <4 x float> %i.jg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jk = shufflevector <4 x float> %i.jg, <4 x float> %i.jf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jl = shufflevector <4 x float> %i.jh, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jm = shufflevector <4 x float> %i.ji, <4 x float> %i.jh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jn = shufflevector <4 x float> %.1330.lcssa.i, <4 x float> %.1336.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jo = shufflevector <4 x float> %.1338.lcssa.i, <4 x float> %.1340.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jp = shufflevector <4 x float> %.1330.lcssa.i, <4 x float> %.1336.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jq = shufflevector <4 x float> %.1338.lcssa.i, <4 x float> %.1340.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jr = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.js = shufflevector <4 x float> %i.jo, <4 x float> %i.jn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jt = shufflevector <4 x float> %i.jp, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ju = shufflevector <4 x float> %i.jq, <4 x float> %i.jp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jv = shufflevector <4 x float> %.1342.lcssa.i, <4 x float> %.1350.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jw = shufflevector <4 x float> %.1352.lcssa.i, <4 x float> %.1354.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jx = shufflevector <4 x float> %.1342.lcssa.i, <4 x float> %.1350.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jy = shufflevector <4 x float> %.1352.lcssa.i, <4 x float> %.1354.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jz = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ka = shufflevector <4 x float> %i.jw, <4 x float> %i.jv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.kb = shufflevector <4 x float> %i.jx, <4 x float> %i.jy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kc = shufflevector <4 x float> %i.jy, <4 x float> %i.jx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.jj, ptr %.0805461.i, align 1, !tbaa !254
  %i.kd = getelementptr inbounds i8, ptr %.0805461.i, i64 %i.cz ; 3 uses
  store <4 x float> %i.jk, ptr %i.kd, align 1, !tbaa !254
  %i.ke = getelementptr inbounds [4 x i8], ptr %.0805461.i, i64 %i.db ; 3 uses
  store <4 x float> %i.jl, ptr %i.ke, align 1, !tbaa !254
  %i.kf = getelementptr inbounds i8, ptr %.0805461.i, i64 %i.dc ; 3 uses
  store <4 x float> %i.jm, ptr %i.kf, align 1, !tbaa !254
  %i.kg = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 16
  store <4 x float> %i.jr, ptr %i.kg, align 1, !tbaa !254
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store <4 x float> %i.js, ptr %i.kh, align 1, !tbaa !254
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store <4 x float> %i.jt, ptr %i.ki, align 1, !tbaa !254
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <4 x float> %i.ju, ptr %i.kj, align 1, !tbaa !254
  %i.kk = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 32
  store <4 x float> %i.jz, ptr %i.kk, align 1, !tbaa !254
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store <4 x float> %i.ka, ptr %i.kl, align 1, !tbaa !254
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  store <4 x float> %i.kb, ptr %i.km, align 1, !tbaa !254
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  store <4 x float> %i.kc, ptr %i.kn, align 1, !tbaa !254
  %i.ko = getelementptr inbounds nuw i8, ptr %.0805461.i, i64 48
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i
  store <4 x float> %.1320.lcssa.i, ptr %.1793462.i, align 16, !tbaa !254
  %i.kp = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 16
  store <4 x float> %.1322.lcssa.i, ptr %i.kp, align 16, !tbaa !254
  %i.kq = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 32
  store <4 x float> %.1326.lcssa.i, ptr %i.kq, align 16, !tbaa !254
  %i.kr = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 48
  store <4 x float> %.1328.lcssa.i, ptr %i.kr, align 16, !tbaa !254
  %i.ks = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 64
  store <4 x float> %.1330.lcssa.i, ptr %i.ks, align 16, !tbaa !254
  %i.kt = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 80
  store <4 x float> %.1336.lcssa.i, ptr %i.kt, align 16, !tbaa !254
  %i.ku = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 96
  store <4 x float> %.1338.lcssa.i, ptr %i.ku, align 16, !tbaa !254
  %i.kv = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 112
  store <4 x float> %.1340.lcssa.i, ptr %i.kv, align 16, !tbaa !254
  %i.kw = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 128
  store <4 x float> %.1342.lcssa.i, ptr %i.kw, align 16, !tbaa !254
  %i.kx = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 144
  store <4 x float> %.1350.lcssa.i, ptr %i.kx, align 16, !tbaa !254
  %i.ky = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 160
  store <4 x float> %.1352.lcssa.i, ptr %i.ky, align 16, !tbaa !254
  %i.kz = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 176
  store <4 x float> %.1354.lcssa.i, ptr %i.kz, align 16, !tbaa !254
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread.i, %bb.n
  %.2807.i = phi ptr [ %i.ko, %bb.o ], [ %.0805461.i, %bb.n ], [ %.0805461.i, %bb.p ], [ %i.je, %.thread.i ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.1793462.i, i64 192 ; 2 uses
  %i.lb = add nuw nsw i32 %.0830459.i, 12
  %i.lc = add nuw nsw i32 %.0830459.i, 23
  %i.ld = icmp slt i32 %i.lc, %.sroa.speculated145
  br i1 %i.ld, label %bb.i, label %.preheader431.i, !llvm.loop !1044

.preheader430.i:                                  ; preds = %bb.z, %.preheader431.i
  %.1831.lcssa.i = phi i32 [ %.0830.lcssa.i, %.preheader431.i ], [ %i.pk, %bb.z ] ; 3 uses
  %.2822.lcssa.i = phi ptr [ %.0820.lcssa.i, %.preheader431.i ], [ %.3823.lcssa.i, %bb.z ] ; 2 uses
  %.3808.lcssa.i = phi ptr [ %.0805.lcssa.i, %.preheader431.i ], [ %.5810.i, %bb.z ] ; 2 uses
  %.2794.lcssa.i = phi ptr [ %.1793.lcssa.i, %.preheader431.i ], [ %i.pj, %bb.z ] ; 2 uses
  %i.le = or disjoint i32 %.1831.lcssa.i, 3
  %i.lf = icmp slt i32 %i.le, %.sroa.speculated145
  br i1 %i.lf, label %.lr.ph520.i, label %.preheader429.i

.lr.ph520.i:                                      ; preds = %.preheader430.i
  %.not897.i = icmp eq ptr %.1785.i, null
  br label %bb.aa

bb.r:                                             ; preds = %bb.z, %.lr.ph496.i
  %.2794495.i = phi ptr [ %.1793.lcssa.i, %.lr.ph496.i ], [ %i.pj, %bb.z ] ; 17 uses
  %.3808494.i = phi ptr [ %.0805.lcssa.i, %.lr.ph496.i ], [ %.5810.i, %bb.z ] ; 17 uses
  %.2822493.i = phi ptr [ %.0820.lcssa.i, %.lr.ph496.i ], [ %.3823.lcssa.i, %bb.z ] ; 3 uses
  %.1831492.i = phi i32 [ %.0830.lcssa.i, %.lr.ph496.i ], [ %i.pk, %bb.z ] ; 2 uses
  br i1 %14, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not900.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lg = load <4 x float>, ptr %.1785.i, align 1, !tbaa !254 ; 8 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.lh = load <4 x float>, ptr %.2794495.i, align 16, !tbaa !254
  %i.li = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 16
  %i.lj = load <4 x float>, ptr %i.li, align 16, !tbaa !254
  %i.lk = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 32
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !tbaa !254
  %i.lm = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 48
  %i.ln = load <4 x float>, ptr %i.lm, align 16, !tbaa !254
  %i.lo = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 64
  %i.lp = load <4 x float>, ptr %i.lo, align 16, !tbaa !254
  %i.lq = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 80
  %i.lr = load <4 x float>, ptr %i.lq, align 16, !tbaa !254
  %i.ls = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 96
  %i.lt = load <4 x float>, ptr %i.ls, align 16, !tbaa !254
  %i.lu = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 112
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !254
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0381.i = phi nsz <4 x float> [ %i.lv, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0379.i = phi nsz <4 x float> [ %i.lt, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0377.i = phi nsz <4 x float> [ %i.lr, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0375.i = phi nsz <4 x float> [ %i.lp, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0365.i = phi nsz <4 x float> [ %i.ln, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0363.i = phi nsz <4 x float> [ %i.ll, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0361.i = phi nsz <4 x float> [ %i.lj, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.0359.i = phi nsz <4 x float> [ %i.lh, %bb.u ], [ %i.lg, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  br i1 %i.cy, label %.lr.ph481.i, label %._crit_edge482.i

.lr.ph481.i:                                      ; preds = %bb.v, %.lr.ph481.i
  %.3823479.i = phi ptr [ %i.nt, %.lr.ph481.i ], [ %.2822493.i, %bb.v ] ; 9 uses
  %.0839478.i = phi ptr [ %i.ns, %.lr.ph481.i ], [ %.0781564.i, %bb.v ] ; 2 uses
  %.0840477.i = phi i32 [ %i.nu, %.lr.ph481.i ], [ 0, %bb.v ]
  %.1360476.i = phi <4 x float> [ %i.mb, %.lr.ph481.i ], [ %.0359.i, %bb.v ]
  %.1362475.i = phi <4 x float> [ %i.mh, %.lr.ph481.i ], [ %.0361.i, %bb.v ]
  %.1364474.i = phi <4 x float> [ %i.mn, %.lr.ph481.i ], [ %.0363.i, %bb.v ]
  %.1366473.i = phi <4 x float> [ %i.mt, %.lr.ph481.i ], [ %.0365.i, %bb.v ]
  %.1376472.i = phi <4 x float> [ %i.mz, %.lr.ph481.i ], [ %.0375.i, %bb.v ]
  %.1378471.i = phi <4 x float> [ %i.nf, %.lr.ph481.i ], [ %.0377.i, %bb.v ]
  %.1380470.i = phi <4 x float> [ %i.nl, %.lr.ph481.i ], [ %.0379.i, %bb.v ]
  %.1382469.i = phi <4 x float> [ %i.nr, %.lr.ph481.i ], [ %.0381.i, %bb.v ]
  %i.lw = load <4 x float>, ptr %.0839478.i, align 1, !tbaa !254 ; 8 uses
  %i.lx = load float, ptr %.3823479.i, align 4, !tbaa !39
  %i.ly = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = fmul fast <4 x float> %i.lz, %i.lw
  %i.mb = fadd fast <4 x float> %i.ma, %.1360476.i ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 4
  %i.md = load float, ptr %i.mc, align 4, !tbaa !39
  %i.me = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mg = fmul fast <4 x float> %i.mf, %i.lw
  %i.mh = fadd fast <4 x float> %i.mg, %.1362475.i ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 8
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !39
  %i.mk = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul fast <4 x float> %i.ml, %i.lw
  %i.mn = fadd fast <4 x float> %i.mm, %.1364474.i ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 12
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !39
  %i.mq = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = fmul fast <4 x float> %i.mr, %i.lw
  %i.mt = fadd fast <4 x float> %i.ms, %.1366473.i ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 16
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !39
  %i.mw = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = fmul fast <4 x float> %i.mx, %i.lw
  %i.mz = fadd fast <4 x float> %i.my, %.1376472.i ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 20
  %i.nb = load float, ptr %i.na, align 4, !tbaa !39
  %i.nc = insertelement <4 x float> poison, float %i.nb, i64 0
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ne = fmul fast <4 x float> %i.nd, %i.lw
  %i.nf = fadd fast <4 x float> %i.ne, %.1378471.i ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 24
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !39
  %i.ni = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = fmul fast <4 x float> %i.nj, %i.lw
  %i.nl = fadd fast <4 x float> %i.nk, %.1380470.i ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 28
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !39
  %i.no = insertelement <4 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nq = fmul fast <4 x float> %i.np, %i.lw
  %i.nr = fadd fast <4 x float> %i.nq, %.1382469.i ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0839478.i, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %.3823479.i, i64 32
  %i.nu = add nuw nsw i32 %.0840477.i, 1          ; 2 uses
  %exitcond898.not.i = icmp eq i32 %i.nu, %.sroa.speculated
  br i1 %exitcond898.not.i, label %._crit_edge482.loopexit.i, label %.lr.ph481.i, !llvm.loop !1045

._crit_edge482.loopexit.i:                        ; preds = %.lr.ph481.i
  %i.nv = getelementptr i8, ptr %.2822493.i, i64 %i.di
  %scevgep.i = getelementptr i8, ptr %i.nv, i64 32
  br label %._crit_edge482.i

._crit_edge482.i:                                 ; preds = %._crit_edge482.loopexit.i, %bb.v
  %.1382.lcssa.i = phi <4 x float> [ %.0381.i, %bb.v ], [ %i.nr, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1380.lcssa.i = phi <4 x float> [ %.0379.i, %bb.v ], [ %i.nl, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1378.lcssa.i = phi <4 x float> [ %.0377.i, %bb.v ], [ %i.nf, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1376.lcssa.i = phi <4 x float> [ %.0375.i, %bb.v ], [ %i.mz, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1366.lcssa.i = phi <4 x float> [ %.0365.i, %bb.v ], [ %i.mt, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1364.lcssa.i = phi <4 x float> [ %.0363.i, %bb.v ], [ %i.mn, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1362.lcssa.i = phi <4 x float> [ %.0361.i, %bb.v ], [ %i.mh, %._crit_edge482.loopexit.i ] ; 4 uses
  %.1360.lcssa.i = phi <4 x float> [ %.0359.i, %bb.v ], [ %i.mb, %._crit_edge482.loopexit.i ] ; 4 uses
  %.3823.lcssa.i = phi ptr [ %.2822493.i, %bb.v ], [ %scevgep.i, %._crit_edge482.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge482.i
  switch i32 %i.cs, label %bb.z [
    i32 4, label %.thread410.i
    i32 1, label %bb.x
  ]

.thread410.i:                                     ; preds = %bb.w
  store <4 x float> %.1360.lcssa.i, ptr %.3808494.i, align 1, !tbaa !254
  %i.nw = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 16
  store <4 x float> %.1362.lcssa.i, ptr %i.nw, align 1, !tbaa !254
  %i.nx = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 32
  store <4 x float> %.1364.lcssa.i, ptr %i.nx, align 1, !tbaa !254
  %i.ny = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 48
  store <4 x float> %.1366.lcssa.i, ptr %i.ny, align 1, !tbaa !254
  %i.nz = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 64
  store <4 x float> %.1376.lcssa.i, ptr %i.nz, align 1, !tbaa !254
  %i.oa = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 80
  store <4 x float> %.1378.lcssa.i, ptr %i.oa, align 1, !tbaa !254
  %i.ob = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 96
  store <4 x float> %.1380.lcssa.i, ptr %i.ob, align 1, !tbaa !254
  %i.oc = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 112
  store <4 x float> %.1382.lcssa.i, ptr %i.oc, align 1, !tbaa !254
  %i.od = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 128
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.oe = shufflevector <4 x float> %.1360.lcssa.i, <4 x float> %.1362.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.of = shufflevector <4 x float> %.1364.lcssa.i, <4 x float> %.1366.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.og = shufflevector <4 x float> %.1360.lcssa.i, <4 x float> %.1362.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.oh = shufflevector <4 x float> %.1364.lcssa.i, <4 x float> %.1366.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.oi = shufflevector <4 x float> %i.oe, <4 x float> %i.of, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oj = shufflevector <4 x float> %i.of, <4 x float> %i.oe, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ok = shufflevector <4 x float> %i.og, <4 x float> %i.oh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ol = shufflevector <4 x float> %i.oh, <4 x float> %i.og, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.om = shufflevector <4 x float> %.1376.lcssa.i, <4 x float> %.1378.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.on = shufflevector <4 x float> %.1380.lcssa.i, <4 x float> %.1382.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.oo = shufflevector <4 x float> %.1376.lcssa.i, <4 x float> %.1378.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.op = shufflevector <4 x float> %.1380.lcssa.i, <4 x float> %.1382.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.oq = shufflevector <4 x float> %i.om, <4 x float> %i.on, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.or = shufflevector <4 x float> %i.on, <4 x float> %i.om, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.os = shufflevector <4 x float> %i.oo, <4 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ot = shufflevector <4 x float> %i.op, <4 x float> %i.oo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.oi, ptr %.3808494.i, align 1, !tbaa !254
  %i.ou = getelementptr inbounds i8, ptr %.3808494.i, i64 %i.cz ; 2 uses
  store <4 x float> %i.oj, ptr %i.ou, align 1, !tbaa !254
  %i.ov = getelementptr inbounds [4 x i8], ptr %.3808494.i, i64 %i.db ; 2 uses
  store <4 x float> %i.ok, ptr %i.ov, align 1, !tbaa !254
  %i.ow = getelementptr inbounds i8, ptr %.3808494.i, i64 %i.dc ; 2 uses
  store <4 x float> %i.ol, ptr %i.ow, align 1, !tbaa !254
  %i.ox = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 16
  store <4 x float> %i.oq, ptr %i.ox, align 1, !tbaa !254
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store <4 x float> %i.or, ptr %i.oy, align 1, !tbaa !254
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store <4 x float> %i.os, ptr %i.oz, align 1, !tbaa !254
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store <4 x float> %i.ot, ptr %i.pa, align 1, !tbaa !254
  %i.pb = getelementptr inbounds nuw i8, ptr %.3808494.i, i64 32
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge482.i
  store <4 x float> %.1360.lcssa.i, ptr %.2794495.i, align 16, !tbaa !254
  %i.pc = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 16
  store <4 x float> %.1362.lcssa.i, ptr %i.pc, align 16, !tbaa !254
  %i.pd = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 32
  store <4 x float> %.1364.lcssa.i, ptr %i.pd, align 16, !tbaa !254
  %i.pe = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 48
  store <4 x float> %.1366.lcssa.i, ptr %i.pe, align 16, !tbaa !254
  %i.pf = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 64
  store <4 x float> %.1376.lcssa.i, ptr %i.pf, align 16, !tbaa !254
  %i.pg = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 80
  store <4 x float> %.1378.lcssa.i, ptr %i.pg, align 16, !tbaa !254
  %i.ph = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 96
  store <4 x float> %.1380.lcssa.i, ptr %i.ph, align 16, !tbaa !254
  %i.pi = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 112
  store <4 x float> %.1382.lcssa.i, ptr %i.pi, align 16, !tbaa !254
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.thread410.i, %bb.w
  %.5810.i = phi ptr [ %i.pb, %bb.x ], [ %.3808494.i, %bb.w ], [ %.3808494.i, %bb.y ], [ %i.od, %.thread410.i ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.2794495.i, i64 128 ; 2 uses
  %i.pk = add nuw nsw i32 %.1831492.i, 8          ; 2 uses
  %i.pl = add nuw nsw i32 %.1831492.i, 15
  %i.pm = icmp slt i32 %i.pl, %.sroa.speculated145
  br i1 %i.pm, label %bb.r, label %.preheader430.i, !llvm.loop !1046

.preheader429.i:                                  ; preds = %bb.ai, %.preheader430.i
  %.2832.lcssa.i = phi i32 [ %.1831.lcssa.i, %.preheader430.i ], [ %i.rt, %bb.ai ] ; 3 uses
  %.4824.lcssa.i = phi ptr [ %.2822.lcssa.i, %.preheader430.i ], [ %.5825.lcssa.i, %bb.ai ] ; 2 uses
  %.6811.lcssa.i = phi ptr [ %.3808.lcssa.i, %.preheader430.i ], [ %.8813.i, %bb.ai ] ; 2 uses
  %.3795.lcssa.i = phi ptr [ %.2794.lcssa.i, %.preheader430.i ], [ %i.rs, %bb.ai ] ; 2 uses
  %i.pn = or disjoint i32 %.2832.lcssa.i, 1
  %i.po = icmp slt i32 %i.pn, %.sroa.speculated145
  br i1 %i.po, label %.lr.ph540.i, label %.preheader428.i

.lr.ph540.i:                                      ; preds = %.preheader429.i
  %.not894.i = icmp eq ptr %.1785.i, null
  br label %bb.aj

bb.aa:                                            ; preds = %bb.ai, %.lr.ph520.i
  %.3795519.i = phi ptr [ %.2794.lcssa.i, %.lr.ph520.i ], [ %i.rs, %bb.ai ] ; 9 uses
  %.6811518.i = phi ptr [ %.3808.lcssa.i, %.lr.ph520.i ], [ %.8813.i, %bb.ai ] ; 12 uses
  %.4824517.i = phi ptr [ %.2822.lcssa.i, %.lr.ph520.i ], [ %.5825.lcssa.i, %bb.ai ] ; 3 uses
  %.2832516.i = phi i32 [ %.1831.lcssa.i, %.lr.ph520.i ], [ %i.rt, %bb.ai ]
  br i1 %14, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not897.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.pp = load <4 x float>, ptr %.1785.i, align 1, !tbaa !254 ; 4 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.pq = load <4 x float>, ptr %.3795519.i, align 16, !tbaa !254
  %i.pr = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 16
  %i.ps = load <4 x float>, ptr %i.pr, align 16, !tbaa !254
  %i.pt = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 32
  %i.pu = load <4 x float>, ptr %i.pt, align 16, !tbaa !254
  %i.pv = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 48
  %i.pw = load <4 x float>, ptr %i.pv, align 16, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0401.i = phi nsz <4 x float> [ %i.pw, %bb.ad ], [ %i.pp, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 2 uses
  %.0399.i = phi nsz <4 x float> [ %i.pu, %bb.ad ], [ %i.pp, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 2 uses
  %.0397.i = phi nsz <4 x float> [ %i.ps, %bb.ad ], [ %i.pp, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 2 uses
  %.0383.i = phi nsz <4 x float> [ %i.pq, %bb.ad ], [ %i.pp, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 2 uses
  br i1 %i.cy, label %.lr.ph509.i, label %._crit_edge510.i

.lr.ph509.i:                                      ; preds = %bb.ae, %.lr.ph509.i
  %.5825507.i = phi ptr [ %i.qw, %.lr.ph509.i ], [ %.4824517.i, %bb.ae ] ; 5 uses
  %.0841506.i = phi ptr [ %i.qv, %.lr.ph509.i ], [ %.0781564.i, %bb.ae ] ; 2 uses
  %.0842505.i = phi i32 [ %i.qx, %.lr.ph509.i ], [ 0, %bb.ae ]
  %.1384504.i = phi <4 x float> [ %i.qc, %.lr.ph509.i ], [ %.0383.i, %bb.ae ]
  %.1398503.i = phi <4 x float> [ %i.qi, %.lr.ph509.i ], [ %.0397.i, %bb.ae ]
  %.1400502.i = phi <4 x float> [ %i.qo, %.lr.ph509.i ], [ %.0399.i, %bb.ae ]
  %.1402501.i = phi <4 x float> [ %i.qu, %.lr.ph509.i ], [ %.0401.i, %bb.ae ]
  %i.px = load <4 x float>, ptr %.0841506.i, align 1, !tbaa !254 ; 4 uses
  %i.py = load float, ptr %.5825507.i, align 4, !tbaa !39
  %i.pz = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qa = shufflevector <4 x float> %i.pz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qb = fmul fast <4 x float> %i.qa, %i.px
  %i.qc = fadd fast <4 x float> %i.qb, %.1384504.i ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.5825507.i, i64 4
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !39
  %i.qf = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qh = fmul fast <4 x float> %i.qg, %i.px
  %i.qi = fadd fast <4 x float> %i.qh, %.1398503.i ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.5825507.i, i64 8
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !39
  %i.ql = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = fmul fast <4 x float> %i.qm, %i.px
  %i.qo = fadd fast <4 x float> %i.qn, %.1400502.i ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.5825507.i, i64 12
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !39
  %i.qr = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = fmul fast <4 x float> %i.qs, %i.px
  %i.qu = fadd fast <4 x float> %i.qt, %.1402501.i ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0841506.i, i64 16
  %i.qw = getelementptr inbounds nuw i8, ptr %.5825507.i, i64 16
  %i.qx = add nuw nsw i32 %.0842505.i, 1          ; 2 uses
  %exitcond900.not.i = icmp eq i32 %i.qx, %.sroa.speculated
  br i1 %exitcond900.not.i, label %._crit_edge510.loopexit.i, label %.lr.ph509.i, !llvm.loop !1047

._crit_edge510.loopexit.i:                        ; preds = %.lr.ph509.i
  %i.qy = getelementptr i8, ptr %.4824517.i, i64 %i.dj
  %scevgep899.i = getelementptr i8, ptr %i.qy, i64 16
  br label %._crit_edge510.i

._crit_edge510.i:                                 ; preds = %._crit_edge510.loopexit.i, %bb.ae
  %.1402.lcssa.i = phi <4 x float> [ %.0401.i, %bb.ae ], [ %i.qu, %._crit_edge510.loopexit.i ] ; 4 uses
  %.1400.lcssa.i = phi <4 x float> [ %.0399.i, %bb.ae ], [ %i.qo, %._crit_edge510.loopexit.i ] ; 4 uses
  %.1398.lcssa.i = phi <4 x float> [ %.0397.i, %bb.ae ], [ %i.qi, %._crit_edge510.loopexit.i ] ; 4 uses
  %.1384.lcssa.i = phi <4 x float> [ %.0383.i, %bb.ae ], [ %i.qc, %._crit_edge510.loopexit.i ] ; 4 uses
  %.5825.lcssa.i = phi ptr [ %.4824517.i, %bb.ae ], [ %scevgep899.i, %._crit_edge510.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge510.i
  switch i32 %i.cs, label %bb.ai [
    i32 4, label %.thread412.i
    i32 1, label %bb.ag
  ]

.thread412.i:                                     ; preds = %bb.af
  store <4 x float> %.1384.lcssa.i, ptr %.6811518.i, align 1, !tbaa !254
  %i.qz = getelementptr inbounds nuw i8, ptr %.6811518.i, i64 16
  store <4 x float> %.1398.lcssa.i, ptr %i.qz, align 1, !tbaa !254
  %i.ra = getelementptr inbounds nuw i8, ptr %.6811518.i, i64 32
  store <4 x float> %.1400.lcssa.i, ptr %i.ra, align 1, !tbaa !254
  %i.rb = getelementptr inbounds nuw i8, ptr %.6811518.i, i64 48
  store <4 x float> %.1402.lcssa.i, ptr %i.rb, align 1, !tbaa !254
  %i.rc = getelementptr inbounds nuw i8, ptr %.6811518.i, i64 64
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.rd = shufflevector <4 x float> %.1384.lcssa.i, <4 x float> %.1398.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.re = shufflevector <4 x float> %.1400.lcssa.i, <4 x float> %.1402.lcssa.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.rf = shufflevector <4 x float> %.1384.lcssa.i, <4 x float> %.1398.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.rg = shufflevector <4 x float> %.1400.lcssa.i, <4 x float> %.1402.lcssa.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.rh = shufflevector <4 x float> %i.rd, <4 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ri = shufflevector <4 x float> %i.re, <4 x float> %i.rd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.rj = shufflevector <4 x float> %i.rf, <4 x float> %i.rg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rk = shufflevector <4 x float> %i.rg, <4 x float> %i.rf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.rh, ptr %.6811518.i, align 1, !tbaa !254
  %i.rl = getelementptr inbounds i8, ptr %.6811518.i, i64 %i.cz
  store <4 x float> %i.ri, ptr %i.rl, align 1, !tbaa !254
  %i.rm = getelementptr inbounds [4 x i8], ptr %.6811518.i, i64 %i.db
  store <4 x float> %i.rj, ptr %i.rm, align 1, !tbaa !254
  %i.rn = getelementptr inbounds i8, ptr %.6811518.i, i64 %i.dc
  store <4 x float> %i.rk, ptr %i.rn, align 1, !tbaa !254
  %i.ro = getelementptr inbounds nuw i8, ptr %.6811518.i, i64 16
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge510.i
  store <4 x float> %.1384.lcssa.i, ptr %.3795519.i, align 16, !tbaa !254
  %i.rp = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 16
  store <4 x float> %.1398.lcssa.i, ptr %i.rp, align 16, !tbaa !254
  %i.rq = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 32
  store <4 x float> %.1400.lcssa.i, ptr %i.rq, align 16, !tbaa !254
  %i.rr = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 48
  store <4 x float> %.1402.lcssa.i, ptr %i.rr, align 16, !tbaa !254
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.thread412.i, %bb.af
  %.8813.i = phi ptr [ %i.ro, %bb.ag ], [ %.6811518.i, %bb.af ], [ %.6811518.i, %bb.ah ], [ %i.rc, %.thread412.i ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.3795519.i, i64 64 ; 2 uses
  %i.rt = add nuw nsw i32 %.2832516.i, 4          ; 3 uses
  %i.ru = or disjoint i32 %i.rt, 3
  %i.rv = icmp slt i32 %i.ru, %.sroa.speculated145
  br i1 %i.rv, label %bb.aa, label %.preheader429.i, !llvm.loop !1048

.preheader428.i:                                  ; preds = %bb.ar, %.preheader429.i
  %.3833.lcssa.i = phi i32 [ %.2832.lcssa.i, %.preheader429.i ], [ %i.uc, %bb.ar ] ; 2 uses
  %.6826.lcssa.i = phi ptr [ %.4824.lcssa.i, %.preheader429.i ], [ %.7827.lcssa.i, %bb.ar ]
  %.9814.lcssa.i = phi ptr [ %.6811.lcssa.i, %.preheader429.i ], [ %.11816.i, %bb.ar ]
  %.4796.lcssa.i = phi ptr [ %.3795.lcssa.i, %.preheader429.i ], [ %i.ub, %bb.ar ] ; 2 uses
  %i.rw = icmp slt i32 %.3833.lcssa.i, %.sroa.speculated145
  br i1 %i.rw, label %.lr.ph558.i, label %._crit_edge559.i

.lr.ph558.i:                                      ; preds = %.preheader428.i
  %.not891.i = icmp ne ptr %.1785.i, null
  %brmerge.i = select i1 %14, i1 true, i1 %.not891.i
  br label %bb.as

bb.aj:                                            ; preds = %bb.ar, %.lr.ph540.i
  %.4796539.i = phi ptr [ %.3795.lcssa.i, %.lr.ph540.i ], [ %i.ub, %bb.ar ] ; 5 uses
  %.9814538.i = phi ptr [ %.6811.lcssa.i, %.lr.ph540.i ], [ %.11816.i, %bb.ar ] ; 12 uses
  %.6826537.i = phi ptr [ %.4824.lcssa.i, %.lr.ph540.i ], [ %.7827.lcssa.i, %bb.ar ] ; 4 uses
  %.3833536.i = phi i32 [ %.2832.lcssa.i, %.lr.ph540.i ], [ %i.uc, %bb.ar ]
  br i1 %14, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not894.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rx = load <4 x float>, ptr %.1785.i, align 1, !tbaa !254 ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.ry = load <4 x float>, ptr %.4796539.i, align 16, !tbaa !254
  %i.rz = getelementptr inbounds nuw i8, ptr %.4796539.i, i64 16
  %i.sa = load <4 x float>, ptr %i.rz, align 16, !tbaa !254
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.0407.i = phi nsz <4 x float> [ %i.sa, %bb.am ], [ %i.rx, %bb.al ], [ zeroinitializer, %bb.ak ] ; 3 uses
  %.0405.i = phi nsz <4 x float> [ %i.ry, %bb.am ], [ %i.rx, %bb.al ], [ zeroinitializer, %bb.ak ] ; 3 uses
  br i1 %i.cy, label %.lr.ph531.i.preheader, label %._crit_edge532.i

.lr.ph531.i.preheader:                            ; preds = %bb.an
  br i1 %i.dn, label %.lr.ph531.i.epil.preheader, label %.lr.ph531.i

.lr.ph531.i:                                      ; preds = %.lr.ph531.i.preheader, %.lr.ph531.i
  %.7827529.i = phi ptr [ %i.tc, %.lr.ph531.i ], [ %.6826537.i, %.lr.ph531.i.preheader ] ; 5 uses
  %.0843528.i = phi ptr [ %i.tb, %.lr.ph531.i ], [ %.0781564.i, %.lr.ph531.i.preheader ] ; 3 uses
  %.1406526.i = phi <4 x float> [ %i.su, %.lr.ph531.i ], [ %.0405.i, %.lr.ph531.i.preheader ]
  %.1408525.i = phi <4 x float> [ %i.ta, %.lr.ph531.i ], [ %.0407.i, %.lr.ph531.i.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph531.i ], [ 0, %.lr.ph531.i.preheader ]
  %i.sb = load <4 x float>, ptr %.0843528.i, align 1, !tbaa !254 ; 2 uses
  %i.sc = load float, ptr %.7827529.i, align 4, !tbaa !39
  %i.sd = insertelement <4 x float> poison, float %i.sc, i64 0
  %i.se = shufflevector <4 x float> %i.sd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sf = fmul fast <4 x float> %i.se, %i.sb
  %i.sg = fadd fast <4 x float> %i.sf, %.1406526.i
  %i.sh = getelementptr inbounds nuw i8, ptr %.7827529.i, i64 4
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  %i.sj = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = fmul fast <4 x float> %i.sk, %i.sb
  %i.sm = fadd fast <4 x float> %i.sl, %.1408525.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.0843528.i, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %.7827529.i, i64 8
  %i.sp = load <4 x float>, ptr %i.sn, align 1, !tbaa !254 ; 2 uses
  %i.sq = load float, ptr %i.so, align 4, !tbaa !39
  %i.sr = insertelement <4 x float> poison, float %i.sq, i64 0
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.st = fmul fast <4 x float> %i.ss, %i.sp
  %i.su = fadd fast <4 x float> %i.st, %i.sg      ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.7827529.i, i64 12
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !39
  %i.sx = insertelement <4 x float> poison, float %i.sw, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sz = fmul fast <4 x float> %i.sy, %i.sp
  %i.ta = fadd fast <4 x float> %i.sz, %i.sm      ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0843528.i, i64 32 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.7827529.i, i64 16 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge532.loopexit.i.unr-lcssa, label %.lr.ph531.i, !llvm.loop !1049

._crit_edge532.loopexit.i.unr-lcssa:              ; preds = %.lr.ph531.i
  br i1 %lcmp.mod.not, label %._crit_edge532.loopexit.i, label %.lr.ph531.i.epil.preheader

.lr.ph531.i.epil.preheader:                       ; preds = %._crit_edge532.loopexit.i.unr-lcssa, %.lr.ph531.i.preheader
  %.7827529.i.epil.init = phi ptr [ %.6826537.i, %.lr.ph531.i.preheader ], [ %i.tc, %._crit_edge532.loopexit.i.unr-lcssa ] ; 2 uses
  %.0843528.i.epil.init = phi ptr [ %.0781564.i, %.lr.ph531.i.preheader ], [ %i.tb, %._crit_edge532.loopexit.i.unr-lcssa ]
  %.1406526.i.epil.init = phi <4 x float> [ %.0405.i, %.lr.ph531.i.preheader ], [ %i.su, %._crit_edge532.loopexit.i.unr-lcssa ]
  %.1408525.i.epil.init = phi <4 x float> [ %.0407.i, %.lr.ph531.i.preheader ], [ %i.ta, %._crit_edge532.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod731)
  %i.td = load <4 x float>, ptr %.0843528.i.epil.init, align 1, !tbaa !254 ; 2 uses
  %i.te = load float, ptr %.7827529.i.epil.init, align 4, !tbaa !39
  %i.tf = insertelement <4 x float> poison, float %i.te, i64 0
  %i.tg = shufflevector <4 x float> %i.tf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.th = fmul fast <4 x float> %i.tg, %i.td
  %i.ti = fadd fast <4 x float> %i.th, %.1406526.i.epil.init
  %i.tj = getelementptr inbounds nuw i8, ptr %.7827529.i.epil.init, i64 4
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !39
  %i.tl = insertelement <4 x float> poison, float %i.tk, i64 0
  %i.tm = shufflevector <4 x float> %i.tl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tn = fmul fast <4 x float> %i.tm, %i.td
  %i.to = fadd fast <4 x float> %i.tn, %.1408525.i.epil.init
  br label %._crit_edge532.loopexit.i

._crit_edge532.loopexit.i:                        ; preds = %._crit_edge532.loopexit.i.unr-lcssa, %.lr.ph531.i.epil.preheader
  %.lcssa667 = phi <4 x float> [ %i.su, %._crit_edge532.loopexit.i.unr-lcssa ], [ %i.ti, %.lr.ph531.i.epil.preheader ]
  %.lcssa666 = phi <4 x float> [ %i.ta, %._crit_edge532.loopexit.i.unr-lcssa ], [ %i.to, %.lr.ph531.i.epil.preheader ]
  %i.tp = getelementptr i8, ptr %.6826537.i, i64 %i.dk
  %scevgep901.i = getelementptr i8, ptr %i.tp, i64 8
  br label %._crit_edge532.i

._crit_edge532.i:                                 ; preds = %._crit_edge532.loopexit.i, %bb.an
  %.1408.lcssa.i = phi <4 x float> [ %.0407.i, %bb.an ], [ %.lcssa666, %._crit_edge532.loopexit.i ] ; 6 uses
  %.1406.lcssa.i = phi <4 x float> [ %.0405.i, %bb.an ], [ %.lcssa667, %._crit_edge532.loopexit.i ] ; 6 uses
  %.7827.lcssa.i = phi ptr [ %.6826537.i, %bb.an ], [ %scevgep901.i, %._crit_edge532.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge532.i
  switch i32 %i.cs, label %bb.ar [
    i32 4, label %.thread414.i
    i32 1, label %bb.ap
  ]

.thread414.i:                                     ; preds = %bb.ao
  store <4 x float> %.1406.lcssa.i, ptr %.9814538.i, align 1, !tbaa !254
  %i.tq = getelementptr inbounds nuw i8, ptr %.9814538.i, i64 16
  store <4 x float> %.1408.lcssa.i, ptr %i.tq, align 1, !tbaa !254
  %i.tr = getelementptr inbounds nuw i8, ptr %.9814538.i, i64 32
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.sroa.0112.0.vec.extract.i = extractelement <4 x float> %.1406.lcssa.i, i64 0
  store float %.sroa.0112.0.vec.extract.i, ptr %.9814538.i, align 4, !tbaa !39
  %.sroa.0112.4.vec.extract.i = extractelement <4 x float> %.1406.lcssa.i, i64 1
  %i.ts = getelementptr inbounds i8, ptr %.9814538.i, i64 %i.cz
  store float %.sroa.0112.4.vec.extract.i, ptr %i.ts, align 4, !tbaa !39
  %.sroa.0112.8.vec.extract.i = extractelement <4 x float> %.1406.lcssa.i, i64 2
  %i.tt = getelementptr inbounds [4 x i8], ptr %.9814538.i, i64 %i.db ; 2 uses
  store float %.sroa.0112.8.vec.extract.i, ptr %i.tt, align 4, !tbaa !39
  %.sroa.0112.12.vec.extract.i = extractelement <4 x float> %.1406.lcssa.i, i64 3
  %i.tu = getelementptr inbounds i8, ptr %.9814538.i, i64 %i.dc ; 2 uses
  store float %.sroa.0112.12.vec.extract.i, ptr %i.tu, align 4, !tbaa !39
  %.sroa.7.16.vec.extract.i = extractelement <4 x float> %.1408.lcssa.i, i64 0
  %i.tv = getelementptr inbounds nuw i8, ptr %.9814538.i, i64 4
  store float %.sroa.7.16.vec.extract.i, ptr %i.tv, align 4, !tbaa !39
  %.sroa.7.20.vec.extract.i = extractelement <4 x float> %.1408.lcssa.i, i64 1
  %i.tw = getelementptr inbounds i8, ptr %.9814538.i, i64 %i.dd
  store float %.sroa.7.20.vec.extract.i, ptr %i.tw, align 4, !tbaa !39
  %.sroa.7.24.vec.extract.i = extractelement <4 x float> %.1408.lcssa.i, i64 2
  %i.tx = getelementptr i8, ptr %i.tt, i64 4
  store float %.sroa.7.24.vec.extract.i, ptr %i.tx, align 4, !tbaa !39
  %.sroa.7.28.vec.extract.i = extractelement <4 x float> %.1408.lcssa.i, i64 3
  %i.ty = getelementptr i8, ptr %i.tu, i64 4
  store float %.sroa.7.28.vec.extract.i, ptr %i.ty, align 4, !tbaa !39
  %i.tz = getelementptr inbounds nuw i8, ptr %.9814538.i, i64 8
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge532.i
  store <4 x float> %.1406.lcssa.i, ptr %.4796539.i, align 16, !tbaa !254
  %i.ua = getelementptr inbounds nuw i8, ptr %.4796539.i, i64 16
  store <4 x float> %.1408.lcssa.i, ptr %i.ua, align 16, !tbaa !254
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.thread414.i, %bb.ao
  %.11816.i = phi ptr [ %i.tz, %bb.ap ], [ %.9814538.i, %bb.ao ], [ %.9814538.i, %bb.aq ], [ %i.tr, %.thread414.i ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.4796539.i, i64 32 ; 2 uses
  %i.uc = add nuw nsw i32 %.3833536.i, 2          ; 3 uses
  %i.ud = or disjoint i32 %i.uc, 1
  %i.ue = icmp slt i32 %i.ud, %.sroa.speculated145
  br i1 %i.ue, label %bb.aj, label %.preheader428.i, !llvm.loop !1050

bb.as:                                            ; preds = %bb.ay, %.lr.ph558.i
  %.5797557.i = phi ptr [ %.4796.lcssa.i, %.lr.ph558.i ], [ %i.wa, %bb.ay ] ; 3 uses
  %.12817556.i = phi ptr [ %.9814.lcssa.i, %.lr.ph558.i ], [ %.14819.i, %bb.ay ] ; 9 uses
  %.8828555.i = phi ptr [ %.6826.lcssa.i, %.lr.ph558.i ], [ %.9829.lcssa.i, %bb.ay ] ; 4 uses
  %.4834554.i = phi i32 [ %.3833.lcssa.i, %.lr.ph558.i ], [ %i.wb, %bb.ay ]
  br i1 %brmerge.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.5797557.mux.i = select i1 %14, ptr %.5797557.i, ptr %.1785.i
  %i.uf = load <4 x float>, ptr %.5797557.mux.i, align 1, !tbaa !254
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0403.i = phi nsz <4 x float> [ zeroinitializer, %bb.as ], [ %i.uf, %bb.at ] ; 3 uses
  br i1 %i.cy, label %.lr.ph550.i.preheader, label %._crit_edge551.i

.lr.ph550.i.preheader:                            ; preds = %bb.au
  br i1 %i.do, label %.lr.ph550.i.epil.preheader, label %.lr.ph550.i

.lr.ph550.i:                                      ; preds = %.lr.ph550.i.preheader, %.lr.ph550.i
  %.9829548.i = phi ptr [ %i.vl, %.lr.ph550.i ], [ %.8828555.i, %.lr.ph550.i.preheader ] ; 5 uses
  %.0845547.i = phi ptr [ %i.vk, %.lr.ph550.i ], [ %.0781564.i, %.lr.ph550.i.preheader ] ; 5 uses
  %.1404545.i = phi <4 x float> [ %i.vj, %.lr.ph550.i ], [ %.0403.i, %.lr.ph550.i.preheader ]
  %niter737 = phi i32 [ %niter737.next.3, %.lr.ph550.i ], [ 0, %.lr.ph550.i.preheader ]
  %i.ug = load <4 x float>, ptr %.0845547.i, align 1, !tbaa !254
  %i.uh = load float, ptr %.9829548.i, align 4, !tbaa !39
  %i.ui = insertelement <4 x float> poison, float %i.uh, i64 0
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uk = fmul fast <4 x float> %i.uj, %i.ug
  %i.ul = fadd fast <4 x float> %i.uk, %.1404545.i
  %i.um = getelementptr inbounds nuw i8, ptr %.0845547.i, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %.9829548.i, i64 4
  %i.uo = load <4 x float>, ptr %i.um, align 1, !tbaa !254
  %i.up = load float, ptr %i.un, align 4, !tbaa !39
  %i.uq = insertelement <4 x float> poison, float %i.up, i64 0
  %i.ur = shufflevector <4 x float> %i.uq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.us = fmul fast <4 x float> %i.ur, %i.uo
  %i.ut = fadd fast <4 x float> %i.us, %i.ul
  %i.uu = getelementptr inbounds nuw i8, ptr %.0845547.i, i64 32
  %i.uv = getelementptr inbounds nuw i8, ptr %.9829548.i, i64 8
  %i.uw = load <4 x float>, ptr %i.uu, align 1, !tbaa !254
  %i.ux = load float, ptr %i.uv, align 4, !tbaa !39
  %i.uy = insertelement <4 x float> poison, float %i.ux, i64 0
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.va = fmul fast <4 x float> %i.uz, %i.uw
  %i.vb = fadd fast <4 x float> %i.va, %i.ut
  %i.vc = getelementptr inbounds nuw i8, ptr %.0845547.i, i64 48
  %i.vd = getelementptr inbounds nuw i8, ptr %.9829548.i, i64 12
  %i.ve = load <4 x float>, ptr %i.vc, align 1, !tbaa !254
  %i.vf = load float, ptr %i.vd, align 4, !tbaa !39
  %i.vg = insertelement <4 x float> poison, float %i.vf, i64 0
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = fmul fast <4 x float> %i.vh, %i.ve
  %i.vj = fadd fast <4 x float> %i.vi, %i.vb      ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0845547.i, i64 64 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.9829548.i, i64 16 ; 2 uses
  %niter737.next.3 = add i32 %niter737, 4         ; 2 uses
  %niter737.ncmp.3 = icmp eq i32 %niter737.next.3, %unroll_iter736
  br i1 %niter737.ncmp.3, label %._crit_edge551.loopexit.i.unr-lcssa, label %.lr.ph550.i, !llvm.loop !1051

._crit_edge551.loopexit.i.unr-lcssa:              ; preds = %.lr.ph550.i
  br i1 %lcmp.mod733.not, label %._crit_edge551.loopexit.i, label %.lr.ph550.i.epil.preheader

.lr.ph550.i.epil.preheader:                       ; preds = %._crit_edge551.loopexit.i.unr-lcssa, %.lr.ph550.i.preheader
  %.9829548.i.epil.init = phi ptr [ %.8828555.i, %.lr.ph550.i.preheader ], [ %i.vl, %._crit_edge551.loopexit.i.unr-lcssa ]
  %.0845547.i.epil.init = phi ptr [ %.0781564.i, %.lr.ph550.i.preheader ], [ %i.vk, %._crit_edge551.loopexit.i.unr-lcssa ]
  %.1404545.i.epil.init = phi <4 x float> [ %.0403.i, %.lr.ph550.i.preheader ], [ %i.vj, %._crit_edge551.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod735)
  br label %.lr.ph550.i.epil

.lr.ph550.i.epil:                                 ; preds = %.lr.ph550.i.epil, %.lr.ph550.i.epil.preheader
  %.9829548.i.epil = phi ptr [ %i.vt, %.lr.ph550.i.epil ], [ %.9829548.i.epil.init, %.lr.ph550.i.epil.preheader ] ; 2 uses
  %.0845547.i.epil = phi ptr [ %i.vs, %.lr.ph550.i.epil ], [ %.0845547.i.epil.init, %.lr.ph550.i.epil.preheader ] ; 2 uses
  %.1404545.i.epil = phi <4 x float> [ %i.vr, %.lr.ph550.i.epil ], [ %.1404545.i.epil.init, %.lr.ph550.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph550.i.epil ], [ 0, %.lr.ph550.i.epil.preheader ]
  %i.vm = load <4 x float>, ptr %.0845547.i.epil, align 1, !tbaa !254
  %i.vn = load float, ptr %.9829548.i.epil, align 4, !tbaa !39
  %i.vo = insertelement <4 x float> poison, float %i.vn, i64 0
  %i.vp = shufflevector <4 x float> %i.vo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vq = fmul fast <4 x float> %i.vp, %i.vm
  %i.vr = fadd fast <4 x float> %i.vq, %.1404545.i.epil ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.0845547.i.epil, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %.9829548.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter732
  br i1 %epil.iter.cmp.not, label %._crit_edge551.loopexit.i, label %.lr.ph550.i.epil, !llvm.loop !1052

._crit_edge551.loopexit.i:                        ; preds = %.lr.ph550.i.epil, %._crit_edge551.loopexit.i.unr-lcssa
  %.lcssa670 = phi <4 x float> [ %i.vj, %._crit_edge551.loopexit.i.unr-lcssa ], [ %i.vr, %.lr.ph550.i.epil ]
  %i.vu = getelementptr i8, ptr %.8828555.i, i64 %i.dl
  %scevgep903.i = getelementptr i8, ptr %i.vu, i64 4
  br label %._crit_edge551.i

._crit_edge551.i:                                 ; preds = %._crit_edge551.loopexit.i, %bb.au
  %.1404.lcssa.i = phi <4 x float> [ %.0403.i, %bb.au ], [ %.lcssa670, %._crit_edge551.loopexit.i ] ; 6 uses
  %.9829.lcssa.i = phi ptr [ %.8828555.i, %bb.au ], [ %scevgep903.i, %._crit_edge551.loopexit.i ]
  br i1 %.not179, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %._crit_edge551.i
  switch i32 %i.cs, label %bb.ay [
    i32 4, label %.thread416.i
    i32 1, label %bb.aw
  ]

.thread416.i:                                     ; preds = %bb.av
  store <4 x float> %.1404.lcssa.i, ptr %.12817556.i, align 1, !tbaa !254
  %i.vv = getelementptr inbounds nuw i8, ptr %.12817556.i, i64 16
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %.1404.lcssa.i, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.12817556.i, align 4, !tbaa !39
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %.1404.lcssa.i, i64 1
  %i.vw = getelementptr inbounds i8, ptr %.12817556.i, i64 %i.cz
  store float %.sroa.0.4.vec.extract.i, ptr %i.vw, align 4, !tbaa !39
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %.1404.lcssa.i, i64 2
  %i.vx = getelementptr inbounds [4 x i8], ptr %.12817556.i, i64 %i.db
  store float %.sroa.0.8.vec.extract.i, ptr %i.vx, align 4, !tbaa !39
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %.1404.lcssa.i, i64 3
  %i.vy = getelementptr inbounds i8, ptr %.12817556.i, i64 %i.dc
  store float %.sroa.0.12.vec.extract.i, ptr %i.vy, align 4, !tbaa !39
  %i.vz = getelementptr inbounds nuw i8, ptr %.12817556.i, i64 4
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge551.i
  store <4 x float> %.1404.lcssa.i, ptr %.5797557.i, align 16, !tbaa !254
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.thread416.i, %bb.av
  %.14819.i = phi ptr [ %i.vz, %bb.aw ], [ %.12817556.i, %bb.av ], [ %.12817556.i, %bb.ax ], [ %i.vv, %.thread416.i ]
  %i.wa = getelementptr inbounds nuw i8, ptr %.5797557.i, i64 16 ; 2 uses
  %i.wb = add nuw nsw i32 %.4834554.i, 1          ; 2 uses
  %exitcond905.not.i = icmp eq i32 %i.wb, %.sroa.speculated145
  br i1 %exitcond905.not.i, label %._crit_edge559.i, label %bb.as, !llvm.loop !1053

._crit_edge559.i:                                 ; preds = %bb.ay, %.preheader428.i
  %.5797.lcssa.i = phi ptr [ %.4796.lcssa.i, %.preheader428.i ], [ %i.wa, %bb.ay ] ; 2 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr %.0781564.i, i64 %i.df ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.wd = or disjoint i64 %indvars.iv.next.i, 3
  %i.we = icmp samesign ult i64 %i.wd, %i.ap
  br i1 %i.we, label %bb.f, label %.preheader427.loopexit.i, !llvm.loop !1054

.preheader422.loopexit.i:                         ; preds = %._crit_edge684.i
  %i.wf = trunc nuw nsw i64 %indvars.iv.next918.i to i32
  br label %.preheader422.i

.preheader422.i:                                  ; preds = %.preheader422.loopexit.i, %.preheader427.i
  %.1803.lcssa.i = phi i32 [ %.0802.lcssa.i, %.preheader427.i ], [ %i.wf, %.preheader422.loopexit.i ] ; 2 uses
  %.6798.lcssa.i = phi ptr [ %.0792.lcssa.i, %.preheader427.i ], [ %.11.lcssa.i, %.preheader422.loopexit.i ]
  %.2786.lcssa.i = phi ptr [ %.0784.lcssa.i, %.preheader427.i ], [ %.3787.i, %.preheader422.loopexit.i ]
  %.1782.lcssa.i = phi ptr [ %.0781.lcssa.i, %.preheader427.i ], [ %i.aiq, %.preheader422.loopexit.i ]
  %i.wg = icmp slt i32 %.1803.lcssa.i, %.sroa.speculated149
  br i1 %i.wg, label %.lr.ph797.i, label %_ZN4ncnn3MatD2Ev.exit46

.lr.ph797.i:                                      ; preds = %.preheader422.i
  %i.wh = icmp ne i32 %.045264, 0                 ; 6 uses
  %i.wi = icmp sgt i32 %.sroa.speculated, 0       ; 5 uses
  %i.wj = sext i32 %.sroa.speculated to i64
  %i.wk = add i32 %.sroa.speculated, -1
  %i.wl = zext i32 %i.wk to i64                   ; 4 uses
  %i.wm = shl nuw nsw i64 %i.wl, 5
  %i.wn = shl nuw nsw i64 %i.wl, 4
  %i.wo = shl nuw nsw i64 %i.wl, 3
  %i.wp = shl nuw nsw i64 %i.wl, 2
  %i.wq = zext nneg i32 %.1803.lcssa.i to i64
  %sext956.i = shl i64 %i.ct, 32
  %i.wr = ashr exact i64 %sext956.i, 32
  %i.ws = add i32 %.sroa.speculated, -1           ; 3 uses
  %xtraiter746 = and i32 %.sroa.speculated, 1
  %i.wt = icmp eq i32 %i.ws, 0
  %unroll_iter754 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod748.not = icmp eq i32 %xtraiter746, 0
  %lcmp.mod753 = trunc i32 %.sroa.speculated to i1
  %xtraiter756 = and i32 %.sroa.speculated, 1
  %i.wu = icmp eq i32 %i.ws, 0
  %unroll_iter762 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod758.not = icmp eq i32 %xtraiter756, 0
  %lcmp.mod761 = trunc i32 %.sroa.speculated to i1
  %xtraiter764 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.wv = icmp ult i32 %i.ws, 3
  %unroll_iter769 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod766.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod768 = icmp ne i32 %xtraiter764, 0
  %i.ww = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check544 = icmp ult i32 %.sroa.speculated, 8
  %n.vec546 = and i64 %i.ww, 2147483640           ; 5 uses
  %i.wx = trunc nuw nsw i64 %n.vec546 to i32
  %i.wy = shl nuw nsw i64 %n.vec546, 2
  %i.wz = shl nuw nsw i64 %n.vec546, 3
  %cmp.n566 = icmp eq i64 %n.vec546, %i.ww
  %i.xa = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %n.vec = and i64 %i.xa, 2147483640              ; 4 uses
  %i.xb = trunc nuw nsw i64 %n.vec to i32
  %i.xc = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.xa
  br label %bb.cq

bb.az:                                            ; preds = %._crit_edge684.i, %.lr.ph690.i
  %indvars.iv917.i = phi i64 [ %i.ee, %.lr.ph690.i ], [ %indvars.iv.next918.i, %._crit_edge684.i ] ; 3 uses
  %.1782689.i = phi ptr [ %.0781.lcssa.i, %.lr.ph690.i ], [ %i.aiq, %._crit_edge684.i ] ; 12 uses
  %.2786688.i = phi ptr [ %.0784.lcssa.i, %.lr.ph690.i ], [ %.3787.i, %._crit_edge684.i ]
  %.6798687.i = phi ptr [ %.0792.lcssa.i, %.lr.ph690.i ], [ %.11.lcssa.i, %._crit_edge684.i ] ; 2 uses
  %i.xd = load ptr, ptr %13, align 8, !tbaa !18
  %i.xe = add nsw i64 %indvars.iv917.i, %i.ao
  %i.xf = mul nsw i64 %i.xe, %i.ef
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xf
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.be ; 2 uses
  %.not879.i = icmp eq ptr %.2786688.i, null
  br i1 %.not879.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.xi = load ptr, ptr %12, align 8, !tbaa !18
end_hunk_0
