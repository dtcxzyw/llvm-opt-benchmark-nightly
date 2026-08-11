inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn40convolution_im2col_gemm_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE:bb.a
bb.o:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.e
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %12)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.1, ptr nonnull %i.n, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %i.m, ptr nonnull %15, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %14, ptr nonnull align 8 dereferenceable(72) %3, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %11)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i

_ZNK4ncnn3Mat5emptyEv.exit.thread.i:              ; preds = %bb.o, %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.g
  %.022.i = phi i32 [ 0, %bb.o ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %bb.g ]
  %i.eg = load ptr, ptr %i.dd, align 8, !tbaa !343 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.eg, null
  br i1 %.not.i27.i, label %_ZN4ncnn3MatD2Ev.exit25.i, label %bb.p

bb.p:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  %i.eh = atomicrmw add ptr %i.eg, i32 -1 acq_rel, align 4
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit25.i

bb.q:                                             ; preds = %bb.p
  %i.ej = load ptr, ptr %i.de, align 8, !tbaa !344 ; 3 uses
  %.not3.i28.i = icmp eq ptr %i.ej, null
  %i.ek = load ptr, ptr %15, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i28.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !345
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  invoke void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.ek)
          to label %_ZN4ncnn3MatD2Ev.exit25.i unwind label %bb.u, !inline_history !349

bb.s:                                             ; preds = %bb.q
  %.not.i42.i = icmp eq ptr %i.ek, null
  br i1 %.not.i42.i, label %_ZN4ncnn3MatD2Ev.exit25.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ek) #10
  br label %_ZN4ncnn3MatD2Ev.exit25.i

bb.u:                                             ; preds = %bb.r
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit25.i:                        ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i

_ZNK4ncnn3Mat5emptyEv.exit46.thread.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit25.i, %_ZNK4ncnn3Mat5emptyEv.exit46.i, %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i
  %.1.i = phi i32 [ %.022.i, %_ZN4ncnn3MatD2Ev.exit25.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit46.i ], [ -100, %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i ]
  %i.eq = load ptr, ptr %i.cq, align 8, !tbaa !343 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.eq, null
  br i1 %.not.i31.i, label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i
  %i.er = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.w, label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit

bb.w:                                             ; preds = %bb.v
  %i.et = load ptr, ptr %i.cr, align 8, !tbaa !344 ; 3 uses
  %.not3.i32.i = icmp eq ptr %i.et, null
  %i.eu = load ptr, ptr %14, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i32.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !345
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.eu)
          to label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit unwind label %bb.aa, !inline_history !349

bb.y:                                             ; preds = %bb.w
  %.not.i40.i = icmp eq ptr %i.eu, null
  br i1 %.not.i40.i, label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.eu) #10
  br label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit

bb.aa:                                            ; preds = %bb.x
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #26
  unreachable

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit26.i
  %i.fa = atomicrmw add ptr %i.ef, i32 -1 acq_rel, align 4
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ac, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.fc = load ptr, ptr %i.cr, align 8, !tbaa !344 ; 3 uses
  %.not3.i36.i = icmp eq ptr %i.fc, null
  %i.fd = load ptr, ptr %14, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i36.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !345
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef %i.fd)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ag, !inline_history !349

bb.ae:                                            ; preds = %bb.ac
  %.not.i39.i = icmp eq ptr %i.fd, null
  br i1 %.not.i39.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.fd) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ag:                                            ; preds = %bb.ad
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %_ZN4ncnn3MatD2Ev.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  resume { ptr, i32 } %i.du

_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %.1.i
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !113
  %i.h = load i32, ptr %0, align 4, !tbaa !113    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !113
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not106 = icmp sgt i32 %i.k, %i.j
  br i1 %.not106, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 62 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 16 uses
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0107 = phi i32 [ %i.k, %.noexc.lr.ph ], [ %i.bfw, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !113    ; 2 uses
  %i.s = sdiv i32 %.0107, %i.r                    ; 2 uses
  %i.t = srem i32 %.0107, %i.r                    ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !113    ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 12 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !113    ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 24 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !113
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 15 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !113
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 56 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !114, !noalias !398
  %i.ad = load ptr, ptr %8, align 8, !tbaa !9, !noalias !398
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !398
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !398 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 17 uses
  %i.ap = load i32, ptr %10, align 4, !tbaa !113  ; 5 uses
  %i.aq = load i32, ptr %11, align 4, !tbaa !113  ; 5 uses
  %i.ar = load i32, ptr %12, align 4, !tbaa !113  ; 2 uses
  %i.as = load i32, ptr %13, align 4, !tbaa !113  ; 2 uses
  %i.at = load i32, ptr %14, align 4, !tbaa !113  ; 3 uses
  %i.au = load i32, ptr %15, align 4, !tbaa !113  ; 3 uses
  %i.av = icmp eq i32 %i.ap, 1
  %i.aw = icmp eq i32 %i.aq, 1
  %or.cond.i = and i1 %i.av, %i.aw                ; 2 uses
  %i.ax = icmp eq i32 %i.ar, 1                    ; 4 uses
  %or.cond3.i = and i1 %or.cond.i, %i.ax
  %i.ay = icmp eq i32 %i.as, 1                    ; 4 uses
  %or.cond5.i = and i1 %or.cond3.i, %i.ay
  %i.az = icmp eq i32 %i.at, 1                    ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.az
  %i.ba = icmp eq i32 %i.au, 1                    ; 3 uses
  %or.cond9.i = and i1 %or.cond7.i, %i.ba
  br i1 %or.cond9.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !115 ; 8 uses
  %i.bc = icmp sgt i32 %.sroa.speculated65, 15
  br i1 %i.bc, label %.lr.ph629.i.i, label %.preheader596.i.i

.lr.ph629.i.i:                                    ; preds = %bb.c
  %16 = sdiv i32 %i.x, 16
  %17 = sext i32 %16 to i64
  %18 = lshr i32 %.sroa.speculated, 4
  %19 = icmp sgt i32 %.sroa.speculated, 15
  %20 = sdiv i32 %i.x, 8
  %i.bd = sext i32 %20 to i64
  %21 = lshr i32 %.sroa.speculated, 3
  %i.be = icmp sgt i32 %.sroa.speculated, 7
  %i.bf = sdiv i32 %i.x, 4
  %i.bg = sext i32 %i.bf to i64
  %22 = lshr i32 %.sroa.speculated, 2
  %i.bh = icmp sgt i32 %.sroa.speculated, 3
  %i.bi = sext i32 %i.x to i64
  %i.bj = icmp sgt i32 %.sroa.speculated, 1
  %i.bk = and i32 %.sroa.speculated, -2
  %i.bl = zext nneg i32 %.sroa.speculated65 to i64 ; 9 uses
  %i.bm = sext i32 %i.v to i64                    ; 4 uses
  %i.bn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph629.i.split.us.i, label %.loopexit598.i.preheader.i

.loopexit598.i.preheader.i:                       ; preds = %.lr.ph629.i.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 31)
  %i.bp = and i64 %umax.i, 2147483632
  br label %.preheader596.loopexit.i.i

.lr.ph629.i.split.us.i:                           ; preds = %.lr.ph629.i.i
  %i.bq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  switch i32 %i.bq, label %.split.i.us.preheader.i [
    i32 4, label %.lr.ph629.i.split.us.split.us.i
    i32 3, label %.lr.ph629.i.split.us.split.us37.i
    i32 2, label %.lr.ph629.i.split.us.split.us48.i
    i32 0, label %.split.i.us.us60.preheader.i
  ]

.split.i.us.us60.preheader.i:                     ; preds = %.lr.ph629.i.split.us.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !401
  br label %.split.i.us.us60.i

.split.i.us.preheader.i:                          ; preds = %.lr.ph629.i.split.us.i
  %umax123.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 31)
  %i.br = and i64 %umax123.i, 2147483632
  br label %.preheader596.loopexit.i.i

.lr.ph629.i.split.us.split.us.i:                  ; preds = %.lr.ph629.i.split.us.i
  br i1 %19, label %.split.i.us.us.us.preheader.i, label %.split.i.us.us.preheader.i

.split.i.us.us.preheader.i:                       ; preds = %.lr.ph629.i.split.us.split.us.i
  %umax122.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 31)
  %i.bs = and i64 %umax122.i, 2147483632
  br label %.preheader596.loopexit.i.i

.split.i.us.us.us.preheader.i:                    ; preds = %.lr.ph629.i.split.us.split.us.i
  %.pre127.i = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !404
  br label %.split.i.us.us.us.i

.split.i.us.us.us.i:                              ; preds = %.loopexit598.i.loopexit.us.us.us.i, %.split.i.us.us.us.preheader.i
  %i.bt = phi i64 [ %i.im, %.loopexit598.i.loopexit.us.us.us.i ], [ %.pre127.i, %.split.i.us.us.us.preheader.i ]
  %indvars.iv.i.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.i, %.loopexit598.i.loopexit.us.us.us.i ], [ 0, %.split.i.us.us.us.preheader.i ] ; 2 uses
  %.0714628.i.us.us.us.i = phi ptr [ %i.il, %.loopexit598.i.loopexit.us.us.us.i ], [ %i.ao, %.split.i.us.us.us.preheader.i ]
  %i.bu = load ptr, ptr %9, align 8, !tbaa !9, !noalias !404
  %i.bv = mul i64 %i.bt, %17
  %i.bw = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !404
  %i.bx = mul i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = add nsw i64 %indvars.iv.i.us.us.us.i, %i.bm
  %.idx779.i.us.us.us.i = shl nsw i64 %i.bz, 5
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %.idx779.i.us.us.us.i
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph.i.us.us.us.i, %.split.i.us.us.us.i
  %.1604.i.us.us.us.i = phi ptr [ %i.il, %.lr.ph.i.us.us.us.i ], [ %.0714628.i.us.us.us.i, %.split.i.us.us.us.i ] ; 17 uses
  %.0723603.i.us.us.us.i = phi ptr [ %i.in, %.lr.ph.i.us.us.us.i ], [ %i.ca, %.split.i.us.us.us.i ] ; 17 uses
  %.0724602.i.us.us.us.i = phi i32 [ %i.io, %.lr.ph.i.us.us.us.i ], [ 0, %.split.i.us.us.us.i ]
  %i.cb = load <16 x bfloat>, ptr %.0723603.i.us.us.us.i, align 1, !tbaa !20
  %i.cc = fpext fast <16 x bfloat> %i.cb to <16 x float> ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 32
  %i.ce = load <16 x bfloat>, ptr %i.cd, align 1, !tbaa !20
  %i.cf = fpext fast <16 x bfloat> %i.ce to <16 x float> ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 64
  %i.ch = load <16 x bfloat>, ptr %i.cg, align 1, !tbaa !20
  %i.ci = fpext fast <16 x bfloat> %i.ch to <16 x float> ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 96
  %i.ck = load <16 x bfloat>, ptr %i.cj, align 1, !tbaa !20
  %i.cl = fpext fast <16 x bfloat> %i.ck to <16 x float> ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 128
  %i.cn = load <16 x bfloat>, ptr %i.cm, align 1, !tbaa !20
  %i.co = fpext fast <16 x bfloat> %i.cn to <16 x float> ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 160
  %i.cq = load <16 x bfloat>, ptr %i.cp, align 1, !tbaa !20
  %i.cr = fpext fast <16 x bfloat> %i.cq to <16 x float> ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 192
  %i.ct = load <16 x bfloat>, ptr %i.cs, align 1, !tbaa !20
  %i.cu = fpext fast <16 x bfloat> %i.ct to <16 x float> ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 224
  %i.cw = load <16 x bfloat>, ptr %i.cv, align 1, !tbaa !20
  %i.cx = fpext fast <16 x bfloat> %i.cw to <16 x float> ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 256
  %i.cz = load <16 x bfloat>, ptr %i.cy, align 1, !tbaa !20
  %i.da = fpext fast <16 x bfloat> %i.cz to <16 x float> ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 288
  %i.dc = load <16 x bfloat>, ptr %i.db, align 1, !tbaa !20
  %i.dd = fpext fast <16 x bfloat> %i.dc to <16 x float> ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 320
  %i.df = load <16 x bfloat>, ptr %i.de, align 1, !tbaa !20
  %i.dg = fpext fast <16 x bfloat> %i.df to <16 x float> ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 352
  %i.di = load <16 x bfloat>, ptr %i.dh, align 1, !tbaa !20
  %i.dj = fpext fast <16 x bfloat> %i.di to <16 x float> ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 384
  %i.dl = load <16 x bfloat>, ptr %i.dk, align 1, !tbaa !20
  %i.dm = fpext fast <16 x bfloat> %i.dl to <16 x float> ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 416
  %i.do = load <16 x bfloat>, ptr %i.dn, align 1, !tbaa !20
  %i.dp = fpext fast <16 x bfloat> %i.do to <16 x float> ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 448
  %i.dr = load <16 x bfloat>, ptr %i.dq, align 1, !tbaa !20
  %i.ds = fpext fast <16 x bfloat> %i.dr to <16 x float> ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 480
  %i.du = load <16 x bfloat>, ptr %i.dt, align 1, !tbaa !20
  %i.dv = fpext fast <16 x bfloat> %i.du to <16 x float> ; 2 uses
  %i.dw = shufflevector <16 x float> %i.cc, <16 x float> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dx = shufflevector <16 x float> %i.cc, <16 x float> %i.cf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dy = shufflevector <16 x float> %i.ci, <16 x float> %i.cl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dz = shufflevector <16 x float> %i.ci, <16 x float> %i.cl, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ea = shufflevector <16 x float> %i.co, <16 x float> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.eb = shufflevector <16 x float> %i.co, <16 x float> %i.cr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ec = shufflevector <16 x float> %i.cu, <16 x float> %i.cx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ed = shufflevector <16 x float> %i.cu, <16 x float> %i.cx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ee = shufflevector <16 x float> %i.da, <16 x float> %i.dd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ef = shufflevector <16 x float> %i.da, <16 x float> %i.dd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eg = shufflevector <16 x float> %i.dg, <16 x float> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.eh = shufflevector <16 x float> %i.dg, <16 x float> %i.dj, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ei = shufflevector <16 x float> %i.dm, <16 x float> %i.dp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ej = shufflevector <16 x float> %i.dm, <16 x float> %i.dp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ek = shufflevector <16 x float> %i.ds, <16 x float> %i.dv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.el = shufflevector <16 x float> %i.ds, <16 x float> %i.dv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.em = shufflevector <16 x float> %i.dw, <16 x float> %i.dy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.en = shufflevector <16 x float> %i.dw, <16 x float> %i.dy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.eo = shufflevector <16 x float> %i.dx, <16 x float> %i.dz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ep = shufflevector <16 x float> %i.dx, <16 x float> %i.dz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.eq = shufflevector <16 x float> %i.ea, <16 x float> %i.ec, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.er = shufflevector <16 x float> %i.ea, <16 x float> %i.ec, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.es = shufflevector <16 x float> %i.eb, <16 x float> %i.ed, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.et = shufflevector <16 x float> %i.eb, <16 x float> %i.ed, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.eu = shufflevector <16 x float> %i.ee, <16 x float> %i.eg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ev = shufflevector <16 x float> %i.ee, <16 x float> %i.eg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ew = shufflevector <16 x float> %i.ef, <16 x float> %i.eh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ex = shufflevector <16 x float> %i.ef, <16 x float> %i.eh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ey = shufflevector <16 x float> %i.ei, <16 x float> %i.ek, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ez = shufflevector <16 x float> %i.ei, <16 x float> %i.ek, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.fa = shufflevector <16 x float> %i.ej, <16 x float> %i.el, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.fb = shufflevector <16 x float> %i.ej, <16 x float> %i.el, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.fc = shufflevector <16 x float> %i.em, <16 x float> %i.eq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fd = shufflevector <16 x float> %i.eu, <16 x float> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fe = shufflevector <16 x float> %i.en, <16 x float> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ff = shufflevector <16 x float> %i.ev, <16 x float> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fg = shufflevector <16 x float> %i.eo, <16 x float> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fh = shufflevector <16 x float> %i.ew, <16 x float> %i.fa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fi = shufflevector <16 x float> %i.ep, <16 x float> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fj = shufflevector <16 x float> %i.ex, <16 x float> %i.fb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.fk = shufflevector <16 x float> %i.em, <16 x float> %i.eq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fl = shufflevector <16 x float> %i.eu, <16 x float> %i.ey, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fm = shufflevector <16 x float> %i.en, <16 x float> %i.er, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fn = shufflevector <16 x float> %i.ev, <16 x float> %i.ez, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fo = shufflevector <16 x float> %i.eo, <16 x float> %i.es, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fp = shufflevector <16 x float> %i.ew, <16 x float> %i.fa, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fq = shufflevector <16 x float> %i.ep, <16 x float> %i.et, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fr = shufflevector <16 x float> %i.ex, <16 x float> %i.fb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fs = shufflevector <16 x float> %i.fc, <16 x float> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ft = shufflevector <16 x float> %i.fe, <16 x float> %i.ff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fu = shufflevector <16 x float> %i.fg, <16 x float> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fv = shufflevector <16 x float> %i.fi, <16 x float> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fw = shufflevector <16 x float> %i.fk, <16 x float> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fx = shufflevector <16 x float> %i.fm, <16 x float> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fy = shufflevector <16 x float> %i.fo, <16 x float> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fz = shufflevector <16 x float> %i.fq, <16 x float> %i.fr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ga = shufflevector <16 x float> %i.fc, <16 x float> %i.fd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gb = shufflevector <16 x float> %i.fe, <16 x float> %i.ff, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gc = shufflevector <16 x float> %i.fg, <16 x float> %i.fh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gd = shufflevector <16 x float> %i.fi, <16 x float> %i.fj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ge = shufflevector <16 x float> %i.fk, <16 x float> %i.fl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gf = shufflevector <16 x float> %i.fm, <16 x float> %i.fn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gg = shufflevector <16 x float> %i.fo, <16 x float> %i.fp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gh = shufflevector <16 x float> %i.fq, <16 x float> %i.fr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gi = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fs) ; 2 uses
  %i.gj = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ft) ; 2 uses
  %i.gk = shufflevector <16 x bfloat> %i.gi, <16 x bfloat> %i.gj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gl = shufflevector <16 x bfloat> %i.gi, <16 x bfloat> %i.gj, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gm = shufflevector <16 x bfloat> %i.gk, <16 x bfloat> %i.gl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.gm, ptr %.1604.i.us.us.us.i, align 1, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 32
  %.uncasted = shufflevector <16 x bfloat> %i.gk, <16 x bfloat> %i.gl, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted, ptr %i.gn, align 1, !tbaa !20
  %i.go = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fu) ; 2 uses
  %i.gp = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fv) ; 2 uses
  %i.gq = shufflevector <16 x bfloat> %i.go, <16 x bfloat> %i.gp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gr = shufflevector <16 x bfloat> %i.go, <16 x bfloat> %i.gp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 64
  %i.gt = shufflevector <16 x bfloat> %i.gq, <16 x bfloat> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.gt, ptr %i.gs, align 1, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 96
  %.uncasted223 = shufflevector <16 x bfloat> %i.gq, <16 x bfloat> %i.gr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted223, ptr %i.gu, align 1, !tbaa !20
  %i.gv = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fw) ; 2 uses
  %i.gw = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fx) ; 2 uses
  %i.gx = shufflevector <16 x bfloat> %i.gv, <16 x bfloat> %i.gw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gy = shufflevector <16 x bfloat> %i.gv, <16 x bfloat> %i.gw, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 128
  %i.ha = shufflevector <16 x bfloat> %i.gx, <16 x bfloat> %i.gy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.ha, ptr %i.gz, align 1, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 160
  %.uncasted224 = shufflevector <16 x bfloat> %i.gx, <16 x bfloat> %i.gy, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted224, ptr %i.hb, align 1, !tbaa !20
  %i.hc = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fy) ; 2 uses
  %i.hd = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fz) ; 2 uses
  %i.he = shufflevector <16 x bfloat> %i.hc, <16 x bfloat> %i.hd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.hf = shufflevector <16 x bfloat> %i.hc, <16 x bfloat> %i.hd, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 192
  %i.hh = shufflevector <16 x bfloat> %i.he, <16 x bfloat> %i.hf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.hh, ptr %i.hg, align 1, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 224
  %.uncasted225 = shufflevector <16 x bfloat> %i.he, <16 x bfloat> %i.hf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted225, ptr %i.hi, align 1, !tbaa !20
  %i.hj = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ga) ; 2 uses
  %i.hk = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gb) ; 2 uses
  %i.hl = shufflevector <16 x bfloat> %i.hj, <16 x bfloat> %i.hk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.hm = shufflevector <16 x bfloat> %i.hj, <16 x bfloat> %i.hk, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 256
  %i.ho = shufflevector <16 x bfloat> %i.hl, <16 x bfloat> %i.hm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.ho, ptr %i.hn, align 1, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 288
  %.uncasted226 = shufflevector <16 x bfloat> %i.hl, <16 x bfloat> %i.hm, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted226, ptr %i.hp, align 1, !tbaa !20
  %i.hq = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gc) ; 2 uses
  %i.hr = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gd) ; 2 uses
  %i.hs = shufflevector <16 x bfloat> %i.hq, <16 x bfloat> %i.hr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ht = shufflevector <16 x bfloat> %i.hq, <16 x bfloat> %i.hr, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 320
  %i.hv = shufflevector <16 x bfloat> %i.hs, <16 x bfloat> %i.ht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.hv, ptr %i.hu, align 1, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 352
  %.uncasted227 = shufflevector <16 x bfloat> %i.hs, <16 x bfloat> %i.ht, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted227, ptr %i.hw, align 1, !tbaa !20
  %i.hx = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ge) ; 2 uses
  %i.hy = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gf) ; 2 uses
  %i.hz = shufflevector <16 x bfloat> %i.hx, <16 x bfloat> %i.hy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ia = shufflevector <16 x bfloat> %i.hx, <16 x bfloat> %i.hy, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 384
  %i.ic = shufflevector <16 x bfloat> %i.hz, <16 x bfloat> %i.ia, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.ic, ptr %i.ib, align 1, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 416
  %.uncasted228 = shufflevector <16 x bfloat> %i.hz, <16 x bfloat> %i.ia, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted228, ptr %i.id, align 1, !tbaa !20
  %i.ie = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gg) ; 2 uses
  %i.if = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gh) ; 2 uses
  %i.ig = shufflevector <16 x bfloat> %i.ie, <16 x bfloat> %i.if, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ih = shufflevector <16 x bfloat> %i.ie, <16 x bfloat> %i.if, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 448
  %i.ij = shufflevector <16 x bfloat> %i.ig, <16 x bfloat> %i.ih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.ij, ptr %i.ii, align 1, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 480
  %.uncasted229 = shufflevector <16 x bfloat> %i.ig, <16 x bfloat> %i.ih, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted229, ptr %i.ik, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.1604.i.us.us.us.i, i64 512 ; 3 uses
  %i.im = load i64, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %.idx762.i.us.us.us.i = shl i64 %i.im, 5
  %i.in = getelementptr inbounds nuw i8, ptr %.0723603.i.us.us.us.i, i64 %.idx762.i.us.us.us.i
  %i.io = add nuw nsw i32 %.0724602.i.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.i = icmp eq i32 %i.io, %18
  br i1 %exitcond.not.i.us.us.us.i, label %.loopexit598.i.loopexit.us.us.us.i, label %.lr.ph.i.us.us.us.i, !llvm.loop !407

.loopexit598.i.loopexit.us.us.us.i:               ; preds = %.lr.ph.i.us.us.us.i
  %indvars.iv.next.i.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.i, 16 ; 3 uses
  %i.ip = or disjoint i64 %indvars.iv.next.i.us.us.us.i, 15
  %i.iq = icmp samesign ult i64 %i.ip, %i.bl
  br i1 %i.iq, label %.split.i.us.us.us.i, label %.preheader596.loopexit.i.i, !llvm.loop !408

.lr.ph629.i.split.us.split.us37.i:                ; preds = %.lr.ph629.i.split.us.i
  br i1 %i.be, label %.split.i.us.us38.us.preheader.i, label %.split.i.us.us38.preheader.i

.split.i.us.us38.preheader.i:                     ; preds = %.lr.ph629.i.split.us.split.us37.i
  %umax121.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 31)
  %i.ir = and i64 %umax121.i, 2147483632
  br label %.preheader596.loopexit.i.i

.split.i.us.us38.us.preheader.i:                  ; preds = %.lr.ph629.i.split.us.split.us37.i
  %.pre126.i = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !409
  br label %.split.i.us.us38.us.i

.split.i.us.us38.us.i:                            ; preds = %.loopexit598.i.loopexit10.us.us.us.i, %.split.i.us.us38.us.preheader.i
  %i.is = phi i64 [ %i.pd, %.loopexit598.i.loopexit10.us.us.us.i ], [ %.pre126.i, %.split.i.us.us38.us.preheader.i ]
  %indvars.iv.i.us.us39.us.i = phi i64 [ %indvars.iv.next.i.us.us43.us.i, %.loopexit598.i.loopexit10.us.us.us.i ], [ 0, %.split.i.us.us38.us.preheader.i ] ; 2 uses
  %.0714628.i.us.us40.us.i = phi ptr [ %i.pc, %.loopexit598.i.loopexit10.us.us.us.i ], [ %i.ao, %.split.i.us.us38.us.preheader.i ]
  %i.it = load ptr, ptr %9, align 8, !tbaa !9, !noalias !409
  %i.iu = mul i64 %i.is, %i.bd
  %i.iv = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !409
  %i.iw = mul i64 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iw
  %i.iy = add nsw i64 %indvars.iv.i.us.us39.us.i, %i.bm
  %.idx780.i.us.us.us.i = shl nsw i64 %i.iy, 4
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 %.idx780.i.us.us.us.i
  br label %.lr.ph608.i.us.us.us.i

.lr.ph608.i.us.us.us.i:                           ; preds = %.lr.ph608.i.us.us.us.i, %.split.i.us.us38.us.i
  %.3607.i.us.us.us.i = phi ptr [ %i.pc, %.lr.ph608.i.us.us.us.i ], [ %.0714628.i.us.us40.us.i, %.split.i.us.us38.us.i ] ; 17 uses
  %.0725606.i.us.us.us.i = phi ptr [ %i.pe, %.lr.ph608.i.us.us.us.i ], [ %i.iz, %.split.i.us.us38.us.i ] ; 17 uses
  %.0726605.i.us.us.us.i = phi i32 [ %i.pf, %.lr.ph608.i.us.us.us.i ], [ 0, %.split.i.us.us38.us.i ]
  %i.ja = load <8 x bfloat>, ptr %.0725606.i.us.us.us.i, align 1, !tbaa !20
  %i.jb = fpext fast <8 x bfloat> %i.ja to <8 x float> ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 16
  %i.jd = load <8 x bfloat>, ptr %i.jc, align 1, !tbaa !20
  %i.je = fpext fast <8 x bfloat> %i.jd to <8 x float> ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 32
  %i.jg = load <8 x bfloat>, ptr %i.jf, align 1, !tbaa !20
  %i.jh = fpext fast <8 x bfloat> %i.jg to <8 x float> ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 48
  %i.jj = load <8 x bfloat>, ptr %i.ji, align 1, !tbaa !20
  %i.jk = fpext fast <8 x bfloat> %i.jj to <8 x float> ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 64
  %i.jm = load <8 x bfloat>, ptr %i.jl, align 1, !tbaa !20
  %i.jn = fpext fast <8 x bfloat> %i.jm to <8 x float> ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 80
  %i.jp = load <8 x bfloat>, ptr %i.jo, align 1, !tbaa !20
  %i.jq = fpext fast <8 x bfloat> %i.jp to <8 x float> ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 96
  %i.js = load <8 x bfloat>, ptr %i.jr, align 1, !tbaa !20
  %i.jt = fpext fast <8 x bfloat> %i.js to <8 x float> ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 112
  %i.jv = load <8 x bfloat>, ptr %i.ju, align 1, !tbaa !20
  %i.jw = fpext fast <8 x bfloat> %i.jv to <8 x float> ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 128
  %i.jy = load <8 x bfloat>, ptr %i.jx, align 1, !tbaa !20
  %i.jz = fpext fast <8 x bfloat> %i.jy to <8 x float> ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 144
  %i.kb = load <8 x bfloat>, ptr %i.ka, align 1, !tbaa !20
  %i.kc = fpext fast <8 x bfloat> %i.kb to <8 x float> ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 160
  %i.ke = load <8 x bfloat>, ptr %i.kd, align 1, !tbaa !20
  %i.kf = fpext fast <8 x bfloat> %i.ke to <8 x float> ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 176
  %i.kh = load <8 x bfloat>, ptr %i.kg, align 1, !tbaa !20
  %i.ki = fpext fast <8 x bfloat> %i.kh to <8 x float> ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 192
  %i.kk = load <8 x bfloat>, ptr %i.kj, align 1, !tbaa !20
  %i.kl = fpext fast <8 x bfloat> %i.kk to <8 x float> ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 208
  %i.kn = load <8 x bfloat>, ptr %i.km, align 1, !tbaa !20
  %i.ko = fpext fast <8 x bfloat> %i.kn to <8 x float> ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 224
  %i.kq = load <8 x bfloat>, ptr %i.kp, align 1, !tbaa !20
  %i.kr = fpext fast <8 x bfloat> %i.kq to <8 x float> ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 240
  %i.kt = load <8 x bfloat>, ptr %i.ks, align 1, !tbaa !20
  %i.ku = fpext fast <8 x bfloat> %i.kt to <8 x float> ; 2 uses
  %i.kv = shufflevector <8 x float> %i.jb, <8 x float> %i.je, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kw = shufflevector <8 x float> %i.jb, <8 x float> %i.je, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kx = shufflevector <8 x float> %i.jh, <8 x float> %i.jk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ky = shufflevector <8 x float> %i.jh, <8 x float> %i.jk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kz = shufflevector <8 x float> %i.jn, <8 x float> %i.jq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.la = shufflevector <8 x float> %i.jn, <8 x float> %i.jq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lb = shufflevector <8 x float> %i.jt, <8 x float> %i.jw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lc = shufflevector <8 x float> %i.jt, <8 x float> %i.jw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ld = shufflevector <8 x float> %i.kv, <8 x float> %i.kx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.le = shufflevector <8 x float> %i.kv, <8 x float> %i.kx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.lf = shufflevector <8 x float> %i.kw, <8 x float> %i.ky, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.lg = shufflevector <8 x float> %i.kw, <8 x float> %i.ky, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.lh = shufflevector <8 x float> %i.kz, <8 x float> %i.lb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.li = shufflevector <8 x float> %i.kz, <8 x float> %i.lb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.lj = shufflevector <8 x float> %i.la, <8 x float> %i.lc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.lk = shufflevector <8 x float> %i.la, <8 x float> %i.lc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ll = shufflevector <8 x float> %i.ld, <8 x float> %i.lh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lm = shufflevector <8 x float> %i.le, <8 x float> %i.li, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ln = shufflevector <8 x float> %i.lf, <8 x float> %i.lj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lo = shufflevector <8 x float> %i.lg, <8 x float> %i.lk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lp = shufflevector <8 x float> %i.ld, <8 x float> %i.lh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lq = shufflevector <8 x float> %i.le, <8 x float> %i.li, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lr = shufflevector <8 x float> %i.lf, <8 x float> %i.lj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ls = shufflevector <8 x float> %i.lg, <8 x float> %i.lk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lt = shufflevector <8 x float> %i.jz, <8 x float> %i.kc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lu = shufflevector <8 x float> %i.jz, <8 x float> %i.kc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lv = shufflevector <8 x float> %i.kf, <8 x float> %i.ki, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lw = shufflevector <8 x float> %i.kf, <8 x float> %i.ki, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lx = shufflevector <8 x float> %i.kl, <8 x float> %i.ko, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ly = shufflevector <8 x float> %i.kl, <8 x float> %i.ko, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lz = shufflevector <8 x float> %i.kr, <8 x float> %i.ku, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ma = shufflevector <8 x float> %i.kr, <8 x float> %i.ku, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.mb = shufflevector <8 x float> %i.lt, <8 x float> %i.lv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mc = shufflevector <8 x float> %i.lt, <8 x float> %i.lv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.md = shufflevector <8 x float> %i.lu, <8 x float> %i.lw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.me = shufflevector <8 x float> %i.lu, <8 x float> %i.lw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mf = shufflevector <8 x float> %i.lx, <8 x float> %i.lz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mg = shufflevector <8 x float> %i.lx, <8 x float> %i.lz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mh = shufflevector <8 x float> %i.ly, <8 x float> %i.ma, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mi = shufflevector <8 x float> %i.ly, <8 x float> %i.ma, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mj = shufflevector <8 x float> %i.mb, <8 x float> %i.mf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mk = shufflevector <8 x float> %i.mc, <8 x float> %i.mg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ml = shufflevector <8 x float> %i.md, <8 x float> %i.mh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mm = shufflevector <8 x float> %i.me, <8 x float> %i.mi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mn = shufflevector <8 x float> %i.mb, <8 x float> %i.mf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.mo = shufflevector <8 x float> %i.mc, <8 x float> %i.mg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.mp = shufflevector <8 x float> %i.md, <8 x float> %i.mh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.mq = shufflevector <8 x float> %i.me, <8 x float> %i.mi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.mr = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ll)
  %i.ms = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lm)
  %i.mt = bitcast <8 x bfloat> %i.mr to <8 x i16> ; 2 uses
  %i.mu = bitcast <8 x bfloat> %i.ms to <8 x i16> ; 2 uses
  %i.mv = shufflevector <8 x i16> %i.mt, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.mv, ptr %.3607.i.us.us.us.i, align 1, !tbaa !20
  %i.mw = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 16
  %i.mx = shufflevector <8 x i16> %i.mt, <8 x i16> %i.mu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.mx, ptr %i.mw, align 1, !tbaa !20
  %i.my = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mj)
  %i.mz = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mk)
  %i.na = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 32
  %i.nb = bitcast <8 x bfloat> %i.my to <8 x i16> ; 2 uses
  %i.nc = bitcast <8 x bfloat> %i.mz to <8 x i16> ; 2 uses
  %i.nd = shufflevector <8 x i16> %i.nb, <8 x i16> %i.nc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.nd, ptr %i.na, align 1, !tbaa !20
  %i.ne = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 48
  %i.nf = shufflevector <8 x i16> %i.nb, <8 x i16> %i.nc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.nf, ptr %i.ne, align 1, !tbaa !20
  %i.ng = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ln)
  %i.nh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lo)
  %i.ni = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 64
  %i.nj = bitcast <8 x bfloat> %i.ng to <8 x i16> ; 2 uses
  %i.nk = bitcast <8 x bfloat> %i.nh to <8 x i16> ; 2 uses
  %i.nl = shufflevector <8 x i16> %i.nj, <8 x i16> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.nl, ptr %i.ni, align 1, !tbaa !20
  %i.nm = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 80
  %i.nn = shufflevector <8 x i16> %i.nj, <8 x i16> %i.nk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.nn, ptr %i.nm, align 1, !tbaa !20
  %i.no = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ml)
  %i.np = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mm)
  %i.nq = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 96
  %i.nr = bitcast <8 x bfloat> %i.no to <8 x i16> ; 2 uses
  %i.ns = bitcast <8 x bfloat> %i.np to <8 x i16> ; 2 uses
  %i.nt = shufflevector <8 x i16> %i.nr, <8 x i16> %i.ns, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.nt, ptr %i.nq, align 1, !tbaa !20
  %i.nu = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 112
  %i.nv = shufflevector <8 x i16> %i.nr, <8 x i16> %i.ns, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.nv, ptr %i.nu, align 1, !tbaa !20
  %i.nw = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lp)
  %i.nx = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lq)
  %i.ny = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 128
  %i.nz = bitcast <8 x bfloat> %i.nw to <8 x i16> ; 2 uses
  %i.oa = bitcast <8 x bfloat> %i.nx to <8 x i16> ; 2 uses
  %i.ob = shufflevector <8 x i16> %i.nz, <8 x i16> %i.oa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ob, ptr %i.ny, align 1, !tbaa !20
  %i.oc = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 144
  %i.od = shufflevector <8 x i16> %i.nz, <8 x i16> %i.oa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.od, ptr %i.oc, align 1, !tbaa !20
  %i.oe = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mn)
  %i.of = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mo)
  %i.og = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 160
  %i.oh = bitcast <8 x bfloat> %i.oe to <8 x i16> ; 2 uses
  %i.oi = bitcast <8 x bfloat> %i.of to <8 x i16> ; 2 uses
  %i.oj = shufflevector <8 x i16> %i.oh, <8 x i16> %i.oi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.oj, ptr %i.og, align 1, !tbaa !20
  %i.ok = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 176
  %i.ol = shufflevector <8 x i16> %i.oh, <8 x i16> %i.oi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ol, ptr %i.ok, align 1, !tbaa !20
  %i.om = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lr)
  %i.on = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ls)
  %i.oo = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 192
  %i.op = bitcast <8 x bfloat> %i.om to <8 x i16> ; 2 uses
  %i.oq = bitcast <8 x bfloat> %i.on to <8 x i16> ; 2 uses
  %i.or = shufflevector <8 x i16> %i.op, <8 x i16> %i.oq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.or, ptr %i.oo, align 1, !tbaa !20
  %i.os = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 208
  %i.ot = shufflevector <8 x i16> %i.op, <8 x i16> %i.oq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ot, ptr %i.os, align 1, !tbaa !20
  %i.ou = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mp)
  %i.ov = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mq)
  %i.ow = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 224
  %i.ox = bitcast <8 x bfloat> %i.ou to <8 x i16> ; 2 uses
  %i.oy = bitcast <8 x bfloat> %i.ov to <8 x i16> ; 2 uses
  %i.oz = shufflevector <8 x i16> %i.ox, <8 x i16> %i.oy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.oz, ptr %i.ow, align 1, !tbaa !20
  %i.pa = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 240
  %i.pb = shufflevector <8 x i16> %i.ox, <8 x i16> %i.oy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.pb, ptr %i.pa, align 1, !tbaa !20
  %i.pc = getelementptr inbounds nuw i8, ptr %.3607.i.us.us.us.i, i64 256 ; 3 uses
  %i.pd = load i64, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %.idx761.i.us.us.us.i = shl i64 %i.pd, 4
  %i.pe = getelementptr inbounds nuw i8, ptr %.0725606.i.us.us.us.i, i64 %.idx761.i.us.us.us.i
  %i.pf = add nuw nsw i32 %.0726605.i.us.us.us.i, 1 ; 2 uses
  %exitcond746.not.i.us.us.us.i = icmp eq i32 %i.pf, %21
  br i1 %exitcond746.not.i.us.us.us.i, label %.loopexit598.i.loopexit10.us.us.us.i, label %.lr.ph608.i.us.us.us.i, !llvm.loop !412

.loopexit598.i.loopexit10.us.us.us.i:             ; preds = %.lr.ph608.i.us.us.us.i
  %indvars.iv.next.i.us.us43.us.i = add nuw nsw i64 %indvars.iv.i.us.us39.us.i, 16 ; 3 uses
  %i.pg = or disjoint i64 %indvars.iv.next.i.us.us43.us.i, 15
  %i.ph = icmp samesign ult i64 %i.pg, %i.bl
  br i1 %i.ph, label %.split.i.us.us38.us.i, label %.preheader596.loopexit.i.i, !llvm.loop !408

.lr.ph629.i.split.us.split.us48.i:                ; preds = %.lr.ph629.i.split.us.i
  br i1 %i.bh, label %.split.i.us.us49.us.preheader.i, label %.split.i.us.us49.preheader.i

.split.i.us.us49.preheader.i:                     ; preds = %.lr.ph629.i.split.us.split.us48.i
  %umax120.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 31)
  %i.pi = and i64 %umax120.i, 2147483632
  br label %.preheader596.loopexit.i.i

.split.i.us.us49.us.preheader.i:                  ; preds = %.lr.ph629.i.split.us.split.us48.i
  %.pre125.i = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !413
  br label %.split.i.us.us49.us.i

.split.i.us.us49.us.i:                            ; preds = %.loopexit598.i.loopexit11.us.us.us.i, %.split.i.us.us49.us.preheader.i
  %i.pj = phi i64 [ %i.xa, %.loopexit598.i.loopexit11.us.us.us.i ], [ %.pre125.i, %.split.i.us.us49.us.preheader.i ]
  %indvars.iv.i.us.us50.us.i = phi i64 [ %indvars.iv.next.i.us.us54.us.i, %.loopexit598.i.loopexit11.us.us.us.i ], [ 0, %.split.i.us.us49.us.preheader.i ] ; 2 uses
  %.0714628.i.us.us51.us.i = phi ptr [ %i.wz, %.loopexit598.i.loopexit11.us.us.us.i ], [ %i.ao, %.split.i.us.us49.us.preheader.i ]
  %i.pk = load ptr, ptr %9, align 8, !tbaa !9, !noalias !413
  %i.pl = mul i64 %i.pj, %i.bg
  %i.pm = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !413
  %i.pn = mul i64 %i.pl, %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  %i.pp = add nsw i64 %indvars.iv.i.us.us50.us.i, %i.bm
  %.idx781.i.us.us.us.i = shl nsw i64 %i.pp, 3
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %.idx781.i.us.us.us.i
  br label %.lr.ph613.i.us.us.us.i

.lr.ph613.i.us.us.us.i:                           ; preds = %.lr.ph613.i.us.us.us.i, %.split.i.us.us49.us.i
  %.5612.i.us.us.us.i = phi ptr [ %i.wz, %.lr.ph613.i.us.us.us.i ], [ %.0714628.i.us.us51.us.i, %.split.i.us.us49.us.i ] ; 9 uses
  %.0727611.i.us.us.us.i = phi ptr [ %i.xb, %.lr.ph613.i.us.us.us.i ], [ %i.pq, %.split.i.us.us49.us.i ] ; 17 uses
  %.0728610.i.us.us.us.i = phi i32 [ %i.xc, %.lr.ph613.i.us.us.us.i ], [ 0, %.split.i.us.us49.us.i ]
  %i.pr = load i64, ptr %.0727611.i.us.us.us.i, align 1, !tbaa !20
  %i.ps = insertelement <2 x i64> poison, i64 %i.pr, i64 0
  %i.pt = bitcast <2 x i64> %i.ps to <8 x i16>
  %i.pu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pv = bitcast <8 x i16> %i.pu to <4 x float>  ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 8
  %i.px = load i64, ptr %i.pw, align 1, !tbaa !20
  %i.py = insertelement <2 x i64> poison, i64 %i.px, i64 0
  %i.pz = bitcast <2 x i64> %i.py to <8 x i16>
  %i.qa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qb = bitcast <8 x i16> %i.qa to <4 x float>  ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 16
  %i.qd = load i64, ptr %i.qc, align 1, !tbaa !20
  %i.qe = insertelement <2 x i64> poison, i64 %i.qd, i64 0
  %i.qf = bitcast <2 x i64> %i.qe to <8 x i16>
  %i.qg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qh = bitcast <8 x i16> %i.qg to <4 x float>  ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 24
  %i.qj = load i64, ptr %i.qi, align 1, !tbaa !20
  %i.qk = insertelement <2 x i64> poison, i64 %i.qj, i64 0
  %i.ql = bitcast <2 x i64> %i.qk to <8 x i16>
  %i.qm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ql, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qn = bitcast <8 x i16> %i.qm to <4 x float>  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 32
  %i.qp = load i64, ptr %i.qo, align 1, !tbaa !20
  %i.qq = insertelement <2 x i64> poison, i64 %i.qp, i64 0
  %i.qr = bitcast <2 x i64> %i.qq to <8 x i16>
  %i.qs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qt = bitcast <8 x i16> %i.qs to <4 x float>  ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 40
  %i.qv = load i64, ptr %i.qu, align 1, !tbaa !20
  %i.qw = insertelement <2 x i64> poison, i64 %i.qv, i64 0
  %i.qx = bitcast <2 x i64> %i.qw to <8 x i16>
  %i.qy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qz = bitcast <8 x i16> %i.qy to <4 x float>  ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 48
  %i.rb = load i64, ptr %i.ra, align 1, !tbaa !20
  %i.rc = insertelement <2 x i64> poison, i64 %i.rb, i64 0
  %i.rd = bitcast <2 x i64> %i.rc to <8 x i16>
  %i.re = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rf = bitcast <8 x i16> %i.re to <4 x float>  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 56
  %i.rh = load i64, ptr %i.rg, align 1, !tbaa !20
  %i.ri = insertelement <2 x i64> poison, i64 %i.rh, i64 0
  %i.rj = bitcast <2 x i64> %i.ri to <8 x i16>
  %i.rk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rl = bitcast <8 x i16> %i.rk to <4 x float>  ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 64
  %i.rn = load i64, ptr %i.rm, align 1, !tbaa !20
  %i.ro = insertelement <2 x i64> poison, i64 %i.rn, i64 0
  %i.rp = bitcast <2 x i64> %i.ro to <8 x i16>
  %i.rq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rr = bitcast <8 x i16> %i.rq to <4 x float>  ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 72
  %i.rt = load i64, ptr %i.rs, align 1, !tbaa !20
  %i.ru = insertelement <2 x i64> poison, i64 %i.rt, i64 0
  %i.rv = bitcast <2 x i64> %i.ru to <8 x i16>
  %i.rw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rx = bitcast <8 x i16> %i.rw to <4 x float>  ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 80
  %i.rz = load i64, ptr %i.ry, align 1, !tbaa !20
  %i.sa = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.sb = bitcast <2 x i64> %i.sa to <8 x i16>
  %i.sc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sd = bitcast <8 x i16> %i.sc to <4 x float>  ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 88
  %i.sf = load i64, ptr %i.se, align 1, !tbaa !20
  %i.sg = insertelement <2 x i64> poison, i64 %i.sf, i64 0
  %i.sh = bitcast <2 x i64> %i.sg to <8 x i16>
  %i.si = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sj = bitcast <8 x i16> %i.si to <4 x float>  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 96
  %i.sl = load i64, ptr %i.sk, align 1, !tbaa !20
  %i.sm = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %i.sn = bitcast <2 x i64> %i.sm to <8 x i16>
  %i.so = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sp = bitcast <8 x i16> %i.so to <4 x float>  ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 104
  %i.sr = load i64, ptr %i.sq, align 1, !tbaa !20
  %i.ss = insertelement <2 x i64> poison, i64 %i.sr, i64 0
  %i.st = bitcast <2 x i64> %i.ss to <8 x i16>
  %i.su = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.st, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sv = bitcast <8 x i16> %i.su to <4 x float>  ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 112
  %i.sx = load i64, ptr %i.sw, align 1, !tbaa !20
  %i.sy = insertelement <2 x i64> poison, i64 %i.sx, i64 0
  %i.sz = bitcast <2 x i64> %i.sy to <8 x i16>
  %i.ta = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tb = bitcast <8 x i16> %i.ta to <4 x float>  ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 120
  %i.td = load i64, ptr %i.tc, align 1, !tbaa !20
  %i.te = insertelement <2 x i64> poison, i64 %i.td, i64 0
  %i.tf = bitcast <2 x i64> %i.te to <8 x i16>
  %i.tg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.th = bitcast <8 x i16> %i.tg to <4 x float>  ; 2 uses
  %i.ti = shufflevector <4 x float> %i.pv, <4 x float> %i.qb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tj = shufflevector <4 x float> %i.qh, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tk = shufflevector <4 x float> %i.pv, <4 x float> %i.qb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.tl = shufflevector <4 x float> %i.qh, <4 x float> %i.qn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.tm = shufflevector <4 x float> %i.ti, <4 x float> %i.tj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.tn = shufflevector <4 x float> %i.tj, <4 x float> %i.ti, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.to = shufflevector <4 x float> %i.tk, <4 x float> %i.tl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.tp = shufflevector <4 x float> %i.tl, <4 x float> %i.tk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.tq = shufflevector <4 x float> %i.qt, <4 x float> %i.qz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tr = shufflevector <4 x float> %i.rf, <4 x float> %i.rl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ts = shufflevector <4 x float> %i.qt, <4 x float> %i.qz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.tt = shufflevector <4 x float> %i.rf, <4 x float> %i.rl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.tu = shufflevector <4 x float> %i.tq, <4 x float> %i.tr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.tv = shufflevector <4 x float> %i.tr, <4 x float> %i.tq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.tw = shufflevector <4 x float> %i.ts, <4 x float> %i.tt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.tx = shufflevector <4 x float> %i.tt, <4 x float> %i.ts, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ty = shufflevector <4 x float> %i.rr, <4 x float> %i.rx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tz = shufflevector <4 x float> %i.sd, <4 x float> %i.sj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ua = shufflevector <4 x float> %i.rr, <4 x float> %i.rx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ub = shufflevector <4 x float> %i.sd, <4 x float> %i.sj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.uc = shufflevector <4 x float> %i.ty, <4 x float> %i.tz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ud = shufflevector <4 x float> %i.tz, <4 x float> %i.ty, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ue = shufflevector <4 x float> %i.ua, <4 x float> %i.ub, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.uf = shufflevector <4 x float> %i.ub, <4 x float> %i.ua, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ug = shufflevector <4 x float> %i.sp, <4 x float> %i.sv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.uh = shufflevector <4 x float> %i.tb, <4 x float> %i.th, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ui = shufflevector <4 x float> %i.sp, <4 x float> %i.sv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.uj = shufflevector <4 x float> %i.tb, <4 x float> %i.th, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.uk = shufflevector <4 x float> %i.ug, <4 x float> %i.uh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ul = shufflevector <4 x float> %i.uh, <4 x float> %i.ug, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.um = shufflevector <4 x float> %i.ui, <4 x float> %i.uj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.un = shufflevector <4 x float> %i.uj, <4 x float> %i.ui, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.uo = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tm)
  %i.up = bitcast <8 x bfloat> %i.uo to <2 x i64>
  %i.uq = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tu)
  %i.ur = bitcast <8 x bfloat> %i.uq to <2 x i64>
  %i.us = shufflevector <2 x i64> %i.up, <2 x i64> %i.ur, <2 x i32> <i32 0, i32 2>
  %i.ut = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tn)
  %i.uu = bitcast <8 x bfloat> %i.ut to <2 x i64>
  %i.uv = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tv)
  %i.uw = bitcast <8 x bfloat> %i.uv to <2 x i64>
  %i.ux = shufflevector <2 x i64> %i.uu, <2 x i64> %i.uw, <2 x i32> <i32 0, i32 2>
  %i.uy = bitcast <2 x i64> %i.us to <8 x i16>    ; 2 uses
  %i.uz = bitcast <2 x i64> %i.ux to <8 x i16>    ; 2 uses
  %i.va = shufflevector <8 x i16> %i.uy, <8 x i16> %i.uz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.va, ptr %.5612.i.us.us.us.i, align 1, !tbaa !20
  %i.vb = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 16
  %i.vc = shufflevector <8 x i16> %i.uy, <8 x i16> %i.uz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.vc, ptr %i.vb, align 1, !tbaa !20
  %i.vd = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.uc)
  %i.ve = bitcast <8 x bfloat> %i.vd to <2 x i64>
  %i.vf = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.uk)
  %i.vg = bitcast <8 x bfloat> %i.vf to <2 x i64>
  %i.vh = shufflevector <2 x i64> %i.ve, <2 x i64> %i.vg, <2 x i32> <i32 0, i32 2>
  %i.vi = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ud)
  %i.vj = bitcast <8 x bfloat> %i.vi to <2 x i64>
  %i.vk = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ul)
  %i.vl = bitcast <8 x bfloat> %i.vk to <2 x i64>
  %i.vm = shufflevector <2 x i64> %i.vj, <2 x i64> %i.vl, <2 x i32> <i32 0, i32 2>
  %i.vn = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 32
  %i.vo = bitcast <2 x i64> %i.vh to <8 x i16>    ; 2 uses
  %i.vp = bitcast <2 x i64> %i.vm to <8 x i16>    ; 2 uses
  %i.vq = shufflevector <8 x i16> %i.vo, <8 x i16> %i.vp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.vq, ptr %i.vn, align 1, !tbaa !20
  %i.vr = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 48
  %i.vs = shufflevector <8 x i16> %i.vo, <8 x i16> %i.vp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.vs, ptr %i.vr, align 1, !tbaa !20
  %i.vt = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.to)
  %i.vu = bitcast <8 x bfloat> %i.vt to <2 x i64>
  %i.vv = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tw)
  %i.vw = bitcast <8 x bfloat> %i.vv to <2 x i64>
  %i.vx = shufflevector <2 x i64> %i.vu, <2 x i64> %i.vw, <2 x i32> <i32 0, i32 2>
  %i.vy = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tp)
  %i.vz = bitcast <8 x bfloat> %i.vy to <2 x i64>
  %i.wa = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.tx)
  %i.wb = bitcast <8 x bfloat> %i.wa to <2 x i64>
  %i.wc = shufflevector <2 x i64> %i.vz, <2 x i64> %i.wb, <2 x i32> <i32 0, i32 2>
  %i.wd = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 64
  %i.we = bitcast <2 x i64> %i.vx to <8 x i16>    ; 2 uses
  %i.wf = bitcast <2 x i64> %i.wc to <8 x i16>    ; 2 uses
  %i.wg = shufflevector <8 x i16> %i.we, <8 x i16> %i.wf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.wg, ptr %i.wd, align 1, !tbaa !20
  %i.wh = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 80
  %i.wi = shufflevector <8 x i16> %i.we, <8 x i16> %i.wf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.wi, ptr %i.wh, align 1, !tbaa !20
  %i.wj = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ue)
  %i.wk = bitcast <8 x bfloat> %i.wj to <2 x i64>
  %i.wl = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.um)
  %i.wm = bitcast <8 x bfloat> %i.wl to <2 x i64>
  %i.wn = shufflevector <2 x i64> %i.wk, <2 x i64> %i.wm, <2 x i32> <i32 0, i32 2>
  %i.wo = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.uf)
  %i.wp = bitcast <8 x bfloat> %i.wo to <2 x i64>
  %i.wq = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.un)
  %i.wr = bitcast <8 x bfloat> %i.wq to <2 x i64>
  %i.ws = shufflevector <2 x i64> %i.wp, <2 x i64> %i.wr, <2 x i32> <i32 0, i32 2>
  %i.wt = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 96
  %i.wu = bitcast <2 x i64> %i.wn to <8 x i16>    ; 2 uses
  %i.wv = bitcast <2 x i64> %i.ws to <8 x i16>    ; 2 uses
  %i.ww = shufflevector <8 x i16> %i.wu, <8 x i16> %i.wv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ww, ptr %i.wt, align 1, !tbaa !20
  %i.wx = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 112
  %i.wy = shufflevector <8 x i16> %i.wu, <8 x i16> %i.wv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.wy, ptr %i.wx, align 1, !tbaa !20
  %i.wz = getelementptr inbounds nuw i8, ptr %.5612.i.us.us.us.i, i64 128 ; 3 uses
  %i.xa = load i64, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %.idx760.i.us.us.us.i = shl i64 %i.xa, 3
  %i.xb = getelementptr inbounds nuw i8, ptr %.0727611.i.us.us.us.i, i64 %.idx760.i.us.us.us.i
  %i.xc = add nuw nsw i32 %.0728610.i.us.us.us.i, 1 ; 2 uses
  %exitcond747.not.i.us.us.us.i = icmp eq i32 %i.xc, %22
  br i1 %exitcond747.not.i.us.us.us.i, label %.loopexit598.i.loopexit11.us.us.us.i, label %.lr.ph613.i.us.us.us.i, !llvm.loop !416

.loopexit598.i.loopexit11.us.us.us.i:             ; preds = %.lr.ph613.i.us.us.us.i
  %indvars.iv.next.i.us.us54.us.i = add nuw nsw i64 %indvars.iv.i.us.us50.us.i, 16 ; 3 uses
  %i.xd = or disjoint i64 %indvars.iv.next.i.us.us54.us.i, 15
  %i.xe = icmp samesign ult i64 %i.xd, %i.bl
  br i1 %i.xe, label %.split.i.us.us49.us.i, label %.preheader596.loopexit.i.i, !llvm.loop !408

.split.i.us.us60.i:                               ; preds = %.loopexit598.i.us.us63.i, %.split.i.us.us60.preheader.i
  %i.xf = phi i64 [ %i.zy, %.loopexit598.i.us.us63.i ], [ %.pre.i, %.split.i.us.us60.preheader.i ] ; 3 uses
  %indvars.iv.i.us.us61.i = phi i64 [ %indvars.iv.next.i.us.us65.i, %.loopexit598.i.us.us63.i ], [ 0, %.split.i.us.us60.preheader.i ] ; 2 uses
  %.0714628.i.us.us62.i = phi ptr [ %.9.i.us.us64.i, %.loopexit598.i.us.us63.i ], [ %i.ao, %.split.i.us.us60.preheader.i ] ; 2 uses
  %i.xg = load ptr, ptr %9, align 8, !tbaa !9, !noalias !401
  %i.xh = mul i64 %i.xf, %i.bi
  %i.xi = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !401
  %i.xj = mul i64 %i.xh, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xj
  %i.xl = getelementptr [2 x i8], ptr %i.xk, i64 %indvars.iv.i.us.us61.i
  %i.xm = getelementptr [2 x i8], ptr %i.xl, i64 %i.bm ; 2 uses
  br i1 %i.bj, label %.lr.ph618.i.us.us.i, label %.preheader597.i.us.us.i

.lr.ph618.i.us.us.i:                              ; preds = %.split.i.us.us60.i, %.lr.ph618.i.us.us.i
  %i.xn = phi i64 [ %i.yd, %.lr.ph618.i.us.us.i ], [ %i.xf, %.split.i.us.us60.i ]
  %.7617.i.us.us.i = phi ptr [ %i.yc, %.lr.ph618.i.us.us.i ], [ %.0714628.i.us.us62.i, %.split.i.us.us60.i ] ; 5 uses
  %.0729616.i.us.us.i = phi ptr [ %i.ye, %.lr.ph618.i.us.us.i ], [ %i.xm, %.split.i.us.us60.i ] ; 3 uses
  %.0731615.i.us.us.i = phi i32 [ %i.yf, %.lr.ph618.i.us.us.i ], [ 0, %.split.i.us.us60.i ]
  %i.xo = load <4 x i64>, ptr %.0729616.i.us.us.i, align 1, !tbaa !20 ; 2 uses
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %.0729616.i.us.us.i, i64 %i.xn
  %i.xq = load <4 x i64>, ptr %i.xp, align 1, !tbaa !20 ; 2 uses
  %i.xr = bitcast <4 x i64> %i.xo to <16 x i16>   ; 2 uses
  %i.xs = bitcast <4 x i64> %i.xq to <16 x i16>   ; 2 uses
  %i.xt = shufflevector <16 x i16> %i.xr, <16 x i16> %i.xs, <8 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19>
  store <8 x i16> %i.xt, ptr %.7617.i.us.us.i, align 1, !tbaa !20
  %i.xu = getelementptr inbounds nuw i8, ptr %.7617.i.us.us.i, i64 16
  %i.xv = shufflevector <16 x i16> %i.xr, <16 x i16> %i.xs, <8 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <8 x i16> %i.xv, ptr %i.xu, align 1, !tbaa !20
  %i.xw = getelementptr inbounds nuw i8, ptr %.7617.i.us.us.i, i64 32
  %i.xx = bitcast <4 x i64> %i.xo to <16 x i16>   ; 2 uses
  %i.xy = bitcast <4 x i64> %i.xq to <16 x i16>   ; 2 uses
  %i.xz = shufflevector <16 x i16> %i.xx, <16 x i16> %i.xy, <8 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  store <8 x i16> %i.xz, ptr %i.xw, align 1, !tbaa !20
  %i.ya = getelementptr inbounds nuw i8, ptr %.7617.i.us.us.i, i64 48
  %i.yb = shufflevector <16 x i16> %i.xx, <16 x i16> %i.xy, <8 x i32> <i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <8 x i16> %i.yb, ptr %i.ya, align 1, !tbaa !20
  %i.yc = getelementptr inbounds nuw i8, ptr %.7617.i.us.us.i, i64 64 ; 2 uses
  %i.yd = load i64, ptr %i.p, align 8, !tbaa !18  ; 3 uses
  %.idx759.i.us.us.i = shl i64 %i.yd, 2
  %i.ye = getelementptr inbounds nuw i8, ptr %.0729616.i.us.us.i, i64 %.idx759.i.us.us.i ; 2 uses
  %i.yf = add nuw nsw i32 %.0731615.i.us.us.i, 2  ; 2 uses
  %i.yg = or disjoint i32 %i.yf, 1
  %i.yh = icmp slt i32 %i.yg, %.sroa.speculated
  br i1 %i.yh, label %.lr.ph618.i.us.us.i, label %.preheader597.i.us.us.i, !llvm.loop !417

.preheader597.i.us.us.i:                          ; preds = %.lr.ph618.i.us.us.i, %.split.i.us.us60.i
  %i.yi = phi i64 [ %i.xf, %.split.i.us.us60.i ], [ %i.yd, %.lr.ph618.i.us.us.i ]
  %.0731.lcssa.i.us.us.i = phi i32 [ 0, %.split.i.us.us60.i ], [ %i.bk, %.lr.ph618.i.us.us.i ] ; 5 uses
  %.0729.lcssa.i.us.us.i = phi ptr [ %i.xm, %.split.i.us.us60.i ], [ %i.ye, %.lr.ph618.i.us.us.i ] ; 2 uses
  %.7.lcssa.i.us.us.i = phi ptr [ %.0714628.i.us.us62.i, %.split.i.us.us60.i ], [ %i.yc, %.lr.ph618.i.us.us.i ] ; 3 uses
  %i.yj = icmp slt i32 %.0731.lcssa.i.us.us.i, %.sroa.speculated
  br i1 %i.yj, label %.lr.ph625.i.us.us.i.preheader, label %.loopexit598.i.us.us63.i

.lr.ph625.i.us.us.i.preheader:                    ; preds = %.preheader597.i.us.us.i
  %i.yk = sub i32 %.sroa.speculated, %.0731.lcssa.i.us.us.i
  %xtraiter = and i32 %i.yk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph625.i.us.us.i.prol.loopexit, label %.lr.ph625.i.us.us.i.prol

.lr.ph625.i.us.us.i.prol:                         ; preds = %.lr.ph625.i.us.us.i.preheader, %.lr.ph625.i.us.us.i.prol
  %.8624.i.us.us.i.prol = phi ptr [ %i.yp, %.lr.ph625.i.us.us.i.prol ], [ %.7.lcssa.i.us.us.i, %.lr.ph625.i.us.us.i.preheader ] ; 3 uses
  %.1730623.i.us.us.i.prol = phi ptr [ %i.yr, %.lr.ph625.i.us.us.i.prol ], [ %.0729.lcssa.i.us.us.i, %.lr.ph625.i.us.us.i.preheader ] ; 3 uses
  %.1732622.i.us.us.i.prol = phi i32 [ %i.ys, %.lr.ph625.i.us.us.i.prol ], [ %.0731.lcssa.i.us.us.i, %.lr.ph625.i.us.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph625.i.us.us.i.prol ], [ 0, %.lr.ph625.i.us.us.i.preheader ]
  %i.yl = load <2 x i64>, ptr %.1730623.i.us.us.i.prol, align 1, !tbaa !20
  store <2 x i64> %i.yl, ptr %.8624.i.us.us.i.prol, align 1, !tbaa !20
  %i.ym = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i.prol, i64 16
  %i.yn = getelementptr inbounds nuw i8, ptr %.1730623.i.us.us.i.prol, i64 16
  %i.yo = load <2 x i64>, ptr %i.yn, align 1, !tbaa !20
  store <2 x i64> %i.yo, ptr %i.ym, align 1, !tbaa !20
  %i.yp = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i.prol, i64 32 ; 3 uses
  %i.yq = load i64, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %.1730623.i.us.us.i.prol, i64 %i.yq ; 2 uses
  %i.ys = add nuw nsw i32 %.1732622.i.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph625.i.us.us.i.prol.loopexit, label %.lr.ph625.i.us.us.i.prol, !llvm.loop !418

.lr.ph625.i.us.us.i.prol.loopexit:                ; preds = %.lr.ph625.i.us.us.i.prol, %.lr.ph625.i.us.us.i.preheader
  %.lcssa249.unr = phi ptr [ poison, %.lr.ph625.i.us.us.i.preheader ], [ %i.yp, %.lr.ph625.i.us.us.i.prol ]
  %.lcssa248.unr = phi i64 [ poison, %.lr.ph625.i.us.us.i.preheader ], [ %i.yq, %.lr.ph625.i.us.us.i.prol ]
  %.8624.i.us.us.i.unr = phi ptr [ %.7.lcssa.i.us.us.i, %.lr.ph625.i.us.us.i.preheader ], [ %i.yp, %.lr.ph625.i.us.us.i.prol ]
  %.1730623.i.us.us.i.unr = phi ptr [ %.0729.lcssa.i.us.us.i, %.lr.ph625.i.us.us.i.preheader ], [ %i.yr, %.lr.ph625.i.us.us.i.prol ]
  %.1732622.i.us.us.i.unr = phi i32 [ %.0731.lcssa.i.us.us.i, %.lr.ph625.i.us.us.i.preheader ], [ %i.ys, %.lr.ph625.i.us.us.i.prol ]
  %i.yt = sub i32 %.0731.lcssa.i.us.us.i, %.sroa.speculated
  %i.yu = icmp ugt i32 %i.yt, -4
  br i1 %i.yu, label %.loopexit598.i.us.us63.i, label %.lr.ph625.i.us.us.i

.lr.ph625.i.us.us.i:                              ; preds = %.lr.ph625.i.us.us.i.prol.loopexit, %.lr.ph625.i.us.us.i
  %.8624.i.us.us.i = phi ptr [ %i.zu, %.lr.ph625.i.us.us.i ], [ %.8624.i.us.us.i.unr, %.lr.ph625.i.us.us.i.prol.loopexit ] ; 9 uses
  %.1730623.i.us.us.i = phi ptr [ %i.zw, %.lr.ph625.i.us.us.i ], [ %.1730623.i.us.us.i.unr, %.lr.ph625.i.us.us.i.prol.loopexit ] ; 3 uses
  %.1732622.i.us.us.i = phi i32 [ %i.zx, %.lr.ph625.i.us.us.i ], [ %.1732622.i.us.us.i.unr, %.lr.ph625.i.us.us.i.prol.loopexit ]
  %i.yv = load <2 x i64>, ptr %.1730623.i.us.us.i, align 1, !tbaa !20
  store <2 x i64> %i.yv, ptr %.8624.i.us.us.i, align 1, !tbaa !20
  %i.yw = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %.1730623.i.us.us.i, i64 16
  %i.yy = load <2 x i64>, ptr %i.yx, align 1, !tbaa !20
  store <2 x i64> %i.yy, ptr %i.yw, align 1, !tbaa !20
  %i.yz = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 32
  %i.za = load i64, ptr %i.p, align 8, !tbaa !18
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %.1730623.i.us.us.i, i64 %i.za ; 3 uses
  %i.zc = load <2 x i64>, ptr %i.zb, align 1, !tbaa !20
  store <2 x i64> %i.zc, ptr %i.yz, align 1, !tbaa !20
  %i.zd = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 48
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zf = load <2 x i64>, ptr %i.ze, align 1, !tbaa !20
  store <2 x i64> %i.zf, ptr %i.zd, align 1, !tbaa !20
  %i.zg = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 64
  %i.zh = load i64, ptr %i.p, align 8, !tbaa !18
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.zb, i64 %i.zh ; 3 uses
  %i.zj = load <2 x i64>, ptr %i.zi, align 1, !tbaa !20
  store <2 x i64> %i.zj, ptr %i.zg, align 1, !tbaa !20
  %i.zk = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 80
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zm = load <2 x i64>, ptr %i.zl, align 1, !tbaa !20
  store <2 x i64> %i.zm, ptr %i.zk, align 1, !tbaa !20
  %i.zn = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 96
  %i.zo = load i64, ptr %i.p, align 8, !tbaa !18
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %i.zo ; 3 uses
  %i.zq = load <2 x i64>, ptr %i.zp, align 1, !tbaa !20
  store <2 x i64> %i.zq, ptr %i.zn, align 1, !tbaa !20
  %i.zr = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 112
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zt = load <2 x i64>, ptr %i.zs, align 1, !tbaa !20
  store <2 x i64> %i.zt, ptr %i.zr, align 1, !tbaa !20
  %i.zu = getelementptr inbounds nuw i8, ptr %.8624.i.us.us.i, i64 128 ; 2 uses
  %i.zv = load i64, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.zp, i64 %i.zv
  %i.zx = add nuw nsw i32 %.1732622.i.us.us.i, 4  ; 2 uses
  %exitcond748.not.i.us.us.i.3 = icmp eq i32 %i.zx, %.sroa.speculated
  br i1 %exitcond748.not.i.us.us.i.3, label %.loopexit598.i.us.us63.i, label %.lr.ph625.i.us.us.i, !llvm.loop !419

.loopexit598.i.us.us63.i:                         ; preds = %.lr.ph625.i.us.us.i.prol.loopexit, %.lr.ph625.i.us.us.i, %.preheader597.i.us.us.i
  %i.zy = phi i64 [ %i.yi, %.preheader597.i.us.us.i ], [ %.lcssa248.unr, %.lr.ph625.i.us.us.i.prol.loopexit ], [ %i.zv, %.lr.ph625.i.us.us.i ]
  %.9.i.us.us64.i = phi ptr [ %.7.lcssa.i.us.us.i, %.preheader597.i.us.us.i ], [ %.lcssa249.unr, %.lr.ph625.i.us.us.i.prol.loopexit ], [ %i.zu, %.lr.ph625.i.us.us.i ] ; 2 uses
  %indvars.iv.next.i.us.us65.i = add nuw nsw i64 %indvars.iv.i.us.us61.i, 16 ; 3 uses
  %i.zz = or disjoint i64 %indvars.iv.next.i.us.us65.i, 15
  %i.aaa = icmp samesign ult i64 %i.zz, %i.bl
  br i1 %i.aaa, label %.split.i.us.us60.i, label %.preheader596.loopexit.i.i, !llvm.loop !408

.preheader596.loopexit.i.i:                       ; preds = %.loopexit598.i.us.us63.i, %.loopexit598.i.loopexit11.us.us.us.i, %.loopexit598.i.loopexit10.us.us.us.i, %.loopexit598.i.loopexit.us.us.us.i, %.split.i.us.us49.preheader.i, %.split.i.us.us38.preheader.i, %.split.i.us.us.preheader.i, %.split.i.us.preheader.i, %.loopexit598.i.preheader.i
  %.us-phi.i = phi ptr [ %i.wz, %.loopexit598.i.loopexit11.us.us.us.i ], [ %i.ao, %.loopexit598.i.preheader.i ], [ %i.ao, %.split.i.us.preheader.i ], [ %i.il, %.loopexit598.i.loopexit.us.us.us.i ], [ %i.ao, %.split.i.us.us.preheader.i ], [ %i.pc, %.loopexit598.i.loopexit10.us.us.us.i ], [ %i.ao, %.split.i.us.us38.preheader.i ], [ %i.ao, %.split.i.us.us49.preheader.i ], [ %.9.i.us.us64.i, %.loopexit598.i.us.us63.i ]
  %.us-phi34.i = phi i64 [ %indvars.iv.next.i.us.us54.us.i, %.loopexit598.i.loopexit11.us.us.us.i ], [ %i.bp, %.loopexit598.i.preheader.i ], [ %i.br, %.split.i.us.preheader.i ], [ %indvars.iv.next.i.us.us.us.i, %.loopexit598.i.loopexit.us.us.us.i ], [ %i.bs, %.split.i.us.us.preheader.i ], [ %indvars.iv.next.i.us.us43.us.i, %.loopexit598.i.loopexit10.us.us.us.i ], [ %i.ir, %.split.i.us.us38.preheader.i ], [ %i.pi, %.split.i.us.us49.preheader.i ], [ %indvars.iv.next.i.us.us65.i, %.loopexit598.i.us.us63.i ]
  %i.aab = trunc nuw nsw i64 %.us-phi34.i to i32
  br label %.preheader596.i.i

.preheader596.i.i:                                ; preds = %.preheader596.loopexit.i.i, %bb.c
  %.0715.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.aab, %.preheader596.loopexit.i.i ] ; 3 uses
  %.0714.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader596.loopexit.i.i ] ; 3 uses
  %i.aac = or disjoint i32 %.0715.lcssa.i.i, 7
  %i.aad = icmp slt i32 %i.aac, %.sroa.speculated65
  br i1 %i.aad, label %.lr.ph661.i.i, label %.preheader590.i.i

.lr.ph661.i.i:                                    ; preds = %.preheader596.i.i
  %23 = sdiv i32 %i.x, 16
  %24 = sext i32 %23 to i64
  %25 = lshr i32 %.sroa.speculated, 4
  %26 = icmp sgt i32 %.sroa.speculated, 15
  %27 = sdiv i32 %i.x, 8
  %i.aae = sext i32 %27 to i64
  %28 = lshr i32 %.sroa.speculated, 3
  %i.aaf = icmp sgt i32 %.sroa.speculated, 7
  %i.aag = sdiv i32 %i.x, 4
  %i.aah = sext i32 %i.aag to i64
  %29 = lshr i32 %.sroa.speculated, 2
  %i.aai = icmp sgt i32 %.sroa.speculated, 3
  %i.aaj = sext i32 %i.x to i64
  %i.aak = icmp sgt i32 %.sroa.speculated, 1
  %i.aal = and i32 %.sroa.speculated, -2          ; 2 uses
  %i.aam = zext i32 %.0715.lcssa.i.i to i64       ; 3 uses
  %i.aan = sext i32 %.sroa.speculated65 to i64
  %i.aao = sext i32 %i.v to i64                   ; 4 uses
  %invariant.op.i.i = add nsw i64 %i.aan, -7      ; 2 uses
  %i.aap = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.aaq = icmp eq i32 %i.aap, 1
  %i.aar = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  br i1 %i.aaq, label %.split837.i.us.i.preheader, label %.loopexit592.i.preheader.i

.split837.i.us.i.preheader:                       ; preds = %.lr.ph661.i.i
  %i.aas = add i32 %.sroa.speculated, -2          ; 2 uses
  %i.aat = lshr i32 %i.aas, 1                     ; 2 uses
  %i.aau = add nuw i32 %i.aat, 1                  ; 2 uses
  %i.aav = icmp eq i32 %i.aat, 0
  %unroll_iter = and i32 %i.aau, -2
  %i.aaw = and i32 %i.aas, 2
  %lcmp.mod273.not.not = icmp eq i32 %i.aaw, 0
  %lcmp.mod276 = trunc i32 %i.aau to i1
  br label %.split837.i.us.i

.loopexit592.i.preheader.i:                       ; preds = %.lr.ph661.i.i
  %i.aax = add nuw nsw i64 %i.aam, 8              ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.aax)
  %i.aay = xor i64 %i.aam, -1
  %i.aaz = add nsw i64 %smax.i, %i.aay
  %i.aba = and i64 %i.aaz, -8
  %i.abb = add i64 %i.aax, %i.aba
  br label %.preheader590.loopexit.i.i

.split837.i.us.i:                                 ; preds = %.split837.i.us.i.preheader, %.loopexit592.i.us.i
  %indvars.iv754.i.us.i = phi i64 [ %indvars.iv.next755.i.us.i, %.loopexit592.i.us.i ], [ %i.aam, %.split837.i.us.i.preheader ] ; 5 uses
  %.10660.i.us.i = phi ptr [ %.19.i.us.i, %.loopexit592.i.us.i ], [ %.0714.lcssa.i.i, %.split837.i.us.i.preheader ] ; 10 uses
  switch i32 %i.aar, label %.loopexit592.i.us.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit773.i.us.i
    i32 3, label %_ZN4ncnn3MatD2Ev.exit772.i.us.i
    i32 2, label %_ZN4ncnn3MatD2Ev.exit771.i.us.i
    i32 0, label %_ZN4ncnn3MatD2Ev.exit770.i.us.i
  ]

_ZN4ncnn3MatD2Ev.exit770.i.us.i:                  ; preds = %.split837.i.us.i
  %i.abc = load ptr, ptr %9, align 8, !tbaa !9, !noalias !420
  %i.abd = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !420 ; 3 uses
  %i.abe = mul i64 %i.abd, %i.aaj
  %i.abf = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !420
  %i.abg = mul i64 %i.abe, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abg
  %i.abi = getelementptr [2 x i8], ptr %i.abh, i64 %indvars.iv754.i.us.i
  %i.abj = getelementptr [2 x i8], ptr %i.abi, i64 %i.aao ; 3 uses
  br i1 %i.aak, label %.lr.ph650.i.us.i.preheader, label %.preheader591.i.us.i

.lr.ph650.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit770.i.us.i
  br i1 %i.aav, label %.lr.ph650.i.us.i.epil.preheader, label %.lr.ph650.i.us.i

.lr.ph650.i.us.i:                                 ; preds = %.lr.ph650.i.us.i.preheader, %.lr.ph650.i.us.i
  %i.abk = phi i64 [ %i.acb, %.lr.ph650.i.us.i ], [ %i.abd, %.lr.ph650.i.us.i.preheader ]
  %.17649.i.us.i = phi ptr [ %i.aca, %.lr.ph650.i.us.i ], [ %.10660.i.us.i, %.lr.ph650.i.us.i.preheader ] ; 5 uses
  %.0743648.i.us.i = phi ptr [ %i.acc, %.lr.ph650.i.us.i ], [ %i.abj, %.lr.ph650.i.us.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph650.i.us.i ], [ 0, %.lr.ph650.i.us.i.preheader ]
  %i.abl = load <8 x i16>, ptr %.0743648.i.us.i, align 1, !tbaa !20 ; 2 uses
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %.0743648.i.us.i, i64 %i.abk
  %i.abn = load <8 x i16>, ptr %i.abm, align 1, !tbaa !20 ; 2 uses
  %i.abo = shufflevector <8 x i16> %i.abl, <8 x i16> %i.abn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.abo, ptr %.17649.i.us.i, align 1, !tbaa !20
  %i.abp = getelementptr inbounds nuw i8, ptr %.17649.i.us.i, i64 16
  %i.abq = shufflevector <8 x i16> %i.abl, <8 x i16> %i.abn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.abq, ptr %i.abp, align 1, !tbaa !20
  %i.abr = getelementptr inbounds nuw i8, ptr %.17649.i.us.i, i64 32
  %i.abs = load i64, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  %.idx755.i.us.i = shl i64 %i.abs, 2
  %i.abt = getelementptr inbounds nuw i8, ptr %.0743648.i.us.i, i64 %.idx755.i.us.i ; 3 uses
  %i.abu = load <8 x i16>, ptr %i.abt, align 1, !tbaa !20 ; 2 uses
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.abt, i64 %i.abs
  %i.abw = load <8 x i16>, ptr %i.abv, align 1, !tbaa !20 ; 2 uses
  %i.abx = shufflevector <8 x i16> %i.abu, <8 x i16> %i.abw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.abx, ptr %i.abr, align 1, !tbaa !20
  %i.aby = getelementptr inbounds nuw i8, ptr %.17649.i.us.i, i64 48
  %i.abz = shufflevector <8 x i16> %i.abu, <8 x i16> %i.abw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.abz, ptr %i.aby, align 1, !tbaa !20
  %i.aca = getelementptr inbounds nuw i8, ptr %.17649.i.us.i, i64 64 ; 3 uses
  %i.acb = load i64, ptr %i.p, align 8, !tbaa !18 ; 3 uses
  %.idx755.i.us.i.1 = shl i64 %i.acb, 2
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abt, i64 %.idx755.i.us.i.1 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader591.i.us.i.loopexit.unr-lcssa, label %.lr.ph650.i.us.i, !llvm.loop !423

.preheader591.i.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph650.i.us.i
  br i1 %lcmp.mod273.not.not, label %.lr.ph650.i.us.i.epil.preheader, label %.preheader591.i.us.i

.lr.ph650.i.us.i.epil.preheader:                  ; preds = %.preheader591.i.us.i.loopexit.unr-lcssa, %.lr.ph650.i.us.i.preheader
  %.epil.init = phi i64 [ %i.abd, %.lr.ph650.i.us.i.preheader ], [ %i.acb, %.preheader591.i.us.i.loopexit.unr-lcssa ]
  %.17649.i.us.i.epil.init = phi ptr [ %.10660.i.us.i, %.lr.ph650.i.us.i.preheader ], [ %i.aca, %.preheader591.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  %.0743648.i.us.i.epil.init = phi ptr [ %i.abj, %.lr.ph650.i.us.i.preheader ], [ %i.acc, %.preheader591.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod276)
  %i.acd = load <8 x i16>, ptr %.0743648.i.us.i.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %.0743648.i.us.i.epil.init, i64 %.epil.init
  %i.acf = load <8 x i16>, ptr %i.ace, align 1, !tbaa !20 ; 2 uses
  %i.acg = shufflevector <8 x i16> %i.acd, <8 x i16> %i.acf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.acg, ptr %.17649.i.us.i.epil.init, align 1, !tbaa !20
  %i.ach = getelementptr inbounds nuw i8, ptr %.17649.i.us.i.epil.init, i64 16
  %i.aci = shufflevector <8 x i16> %i.acd, <8 x i16> %i.acf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.aci, ptr %i.ach, align 1, !tbaa !20
  %i.acj = getelementptr inbounds nuw i8, ptr %.17649.i.us.i.epil.init, i64 32
  %i.ack = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx755.i.us.i.epil = shl i64 %i.ack, 2
  %i.acl = getelementptr inbounds nuw i8, ptr %.0743648.i.us.i.epil.init, i64 %.idx755.i.us.i.epil
  br label %.preheader591.i.us.i

.preheader591.i.us.i:                             ; preds = %.lr.ph650.i.us.i.epil.preheader, %.preheader591.i.us.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit770.i.us.i
  %.0745.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit770.i.us.i ], [ %i.aal, %.preheader591.i.us.i.loopexit.unr-lcssa ], [ %i.aal, %.lr.ph650.i.us.i.epil.preheader ] ; 5 uses
  %.0743.lcssa.i.us.i = phi ptr [ %i.abj, %_ZN4ncnn3MatD2Ev.exit770.i.us.i ], [ %i.acc, %.preheader591.i.us.i.loopexit.unr-lcssa ], [ %i.acl, %.lr.ph650.i.us.i.epil.preheader ] ; 2 uses
  %.17.lcssa.i.us.i = phi ptr [ %.10660.i.us.i, %_ZN4ncnn3MatD2Ev.exit770.i.us.i ], [ %i.aca, %.preheader591.i.us.i.loopexit.unr-lcssa ], [ %i.acj, %.lr.ph650.i.us.i.epil.preheader ] ; 3 uses
  %i.acm = icmp slt i32 %.0745.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.acm, label %.lr.ph657.i.us.i.preheader, label %.loopexit592.i.us.i

.lr.ph657.i.us.i.preheader:                       ; preds = %.preheader591.i.us.i
  %i.acn = sub i32 %.sroa.speculated, %.0745.lcssa.i.us.i
  %xtraiter277 = and i32 %i.acn, 3                ; 2 uses
  %lcmp.mod278.not = icmp eq i32 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %.lr.ph657.i.us.i.prol.loopexit, label %.lr.ph657.i.us.i.prol

.lr.ph657.i.us.i.prol:                            ; preds = %.lr.ph657.i.us.i.preheader, %.lr.ph657.i.us.i.prol
  %.18656.i.us.i.prol = phi ptr [ %i.acp, %.lr.ph657.i.us.i.prol ], [ %.17.lcssa.i.us.i, %.lr.ph657.i.us.i.preheader ] ; 2 uses
  %.1744655.i.us.i.prol = phi ptr [ %i.acr, %.lr.ph657.i.us.i.prol ], [ %.0743.lcssa.i.us.i, %.lr.ph657.i.us.i.preheader ] ; 2 uses
  %.1746654.i.us.i.prol = phi i32 [ %i.acs, %.lr.ph657.i.us.i.prol ], [ %.0745.lcssa.i.us.i, %.lr.ph657.i.us.i.preheader ]
  %prol.iter279 = phi i32 [ %prol.iter279.next, %.lr.ph657.i.us.i.prol ], [ 0, %.lr.ph657.i.us.i.preheader ]
  %i.aco = load <2 x i64>, ptr %.1744655.i.us.i.prol, align 1, !tbaa !20
  store <2 x i64> %i.aco, ptr %.18656.i.us.i.prol, align 1, !tbaa !20
  %i.acp = getelementptr inbounds nuw i8, ptr %.18656.i.us.i.prol, i64 16 ; 3 uses
  %i.acq = load i64, ptr %i.p, align 8, !tbaa !18
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr %.1744655.i.us.i.prol, i64 %i.acq ; 2 uses
  %i.acs = add nuw nsw i32 %.1746654.i.us.i.prol, 1 ; 2 uses
  %prol.iter279.next = add i32 %prol.iter279, 1   ; 2 uses
  %prol.iter279.cmp.not = icmp eq i32 %prol.iter279.next, %xtraiter277
  br i1 %prol.iter279.cmp.not, label %.lr.ph657.i.us.i.prol.loopexit, label %.lr.ph657.i.us.i.prol, !llvm.loop !424

.lr.ph657.i.us.i.prol.loopexit:                   ; preds = %.lr.ph657.i.us.i.prol, %.lr.ph657.i.us.i.preheader
  %.lcssa258.unr = phi ptr [ poison, %.lr.ph657.i.us.i.preheader ], [ %i.acp, %.lr.ph657.i.us.i.prol ]
  %.18656.i.us.i.unr = phi ptr [ %.17.lcssa.i.us.i, %.lr.ph657.i.us.i.preheader ], [ %i.acp, %.lr.ph657.i.us.i.prol ]
  %.1744655.i.us.i.unr = phi ptr [ %.0743.lcssa.i.us.i, %.lr.ph657.i.us.i.preheader ], [ %i.acr, %.lr.ph657.i.us.i.prol ]
  %.1746654.i.us.i.unr = phi i32 [ %.0745.lcssa.i.us.i, %.lr.ph657.i.us.i.preheader ], [ %i.acs, %.lr.ph657.i.us.i.prol ]
  %i.act = sub i32 %.0745.lcssa.i.us.i, %.sroa.speculated
  %i.acu = icmp ugt i32 %i.act, -4
  br i1 %i.acu, label %.loopexit592.i.us.i, label %.lr.ph657.i.us.i

.lr.ph657.i.us.i:                                 ; preds = %.lr.ph657.i.us.i.prol.loopexit, %.lr.ph657.i.us.i
  %.18656.i.us.i = phi ptr [ %i.adi, %.lr.ph657.i.us.i ], [ %.18656.i.us.i.unr, %.lr.ph657.i.us.i.prol.loopexit ] ; 5 uses
  %.1744655.i.us.i = phi ptr [ %i.adk, %.lr.ph657.i.us.i ], [ %.1744655.i.us.i.unr, %.lr.ph657.i.us.i.prol.loopexit ] ; 2 uses
  %.1746654.i.us.i = phi i32 [ %i.adl, %.lr.ph657.i.us.i ], [ %.1746654.i.us.i.unr, %.lr.ph657.i.us.i.prol.loopexit ]
  %i.acv = load <2 x i64>, ptr %.1744655.i.us.i, align 1, !tbaa !20
  store <2 x i64> %i.acv, ptr %.18656.i.us.i, align 1, !tbaa !20
  %i.acw = getelementptr inbounds nuw i8, ptr %.18656.i.us.i, i64 16
  %i.acx = load i64, ptr %i.p, align 8, !tbaa !18
  %i.acy = getelementptr inbounds nuw [2 x i8], ptr %.1744655.i.us.i, i64 %i.acx ; 2 uses
  %i.acz = load <2 x i64>, ptr %i.acy, align 1, !tbaa !20
  store <2 x i64> %i.acz, ptr %i.acw, align 1, !tbaa !20
  %i.ada = getelementptr inbounds nuw i8, ptr %.18656.i.us.i, i64 32
  %i.adb = load i64, ptr %i.p, align 8, !tbaa !18
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %i.adb ; 2 uses
  %i.add = load <2 x i64>, ptr %i.adc, align 1, !tbaa !20
  store <2 x i64> %i.add, ptr %i.ada, align 1, !tbaa !20
  %i.ade = getelementptr inbounds nuw i8, ptr %.18656.i.us.i, i64 48
  %i.adf = load i64, ptr %i.p, align 8, !tbaa !18
  %i.adg = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %i.adf ; 2 uses
  %i.adh = load <2 x i64>, ptr %i.adg, align 1, !tbaa !20
  store <2 x i64> %i.adh, ptr %i.ade, align 1, !tbaa !20
  %i.adi = getelementptr inbounds nuw i8, ptr %.18656.i.us.i, i64 64 ; 2 uses
  %i.adj = load i64, ptr %i.p, align 8, !tbaa !18
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %i.adg, i64 %i.adj
  %i.adl = add nuw nsw i32 %.1746654.i.us.i, 4    ; 2 uses
  %exitcond753.not.i.us.i.3 = icmp eq i32 %i.adl, %.sroa.speculated
  br i1 %exitcond753.not.i.us.i.3, label %.loopexit592.i.us.i, label %.lr.ph657.i.us.i, !llvm.loop !425

_ZN4ncnn3MatD2Ev.exit771.i.us.i:                  ; preds = %.split837.i.us.i
  br i1 %i.aai, label %.lr.ph645.preheader.i.us.i, label %.loopexit592.i.us.i

.lr.ph645.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit771.i.us.i
  %i.adm = load ptr, ptr %9, align 8, !tbaa !9, !noalias !426
  %i.adn = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !426
  %i.ado = mul i64 %i.adn, %i.aah
  %i.adp = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !426
  %i.adq = mul i64 %i.ado, %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.adq
  %i.ads = add nsw i64 %indvars.iv754.i.us.i, %i.aao
  %.idx784.i.us.i = shl nsw i64 %i.ads, 3
  %i.adt = getelementptr inbounds i8, ptr %i.adr, i64 %.idx784.i.us.i
  br label %.lr.ph645.i.us.i

.lr.ph645.i.us.i:                                 ; preds = %.lr.ph645.i.us.i, %.lr.ph645.preheader.i.us.i
  %.15644.i.us.i = phi ptr [ %i.ahk, %.lr.ph645.i.us.i ], [ %.10660.i.us.i, %.lr.ph645.preheader.i.us.i ] ; 5 uses
  %.0741643.i.us.i = phi ptr [ %i.ahm, %.lr.ph645.i.us.i ], [ %i.adt, %.lr.ph645.preheader.i.us.i ] ; 9 uses
  %.0742642.i.us.i = phi i32 [ %i.ahn, %.lr.ph645.i.us.i ], [ 0, %.lr.ph645.preheader.i.us.i ]
  %i.adu = load i64, ptr %.0741643.i.us.i, align 1, !tbaa !20
  %i.adv = insertelement <2 x i64> poison, i64 %i.adu, i64 0
  %i.adw = bitcast <2 x i64> %i.adv to <8 x i16>
  %i.adx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ady = bitcast <8 x i16> %i.adx to <4 x float> ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 8
  %i.aea = load i64, ptr %i.adz, align 1, !tbaa !20
  %i.aeb = insertelement <2 x i64> poison, i64 %i.aea, i64 0
  %i.aec = bitcast <2 x i64> %i.aeb to <8 x i16>
  %i.aed = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aec, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aee = bitcast <8 x i16> %i.aed to <4 x float> ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 16
  %i.aeg = load i64, ptr %i.aef, align 1, !tbaa !20
  %i.aeh = insertelement <2 x i64> poison, i64 %i.aeg, i64 0
  %i.aei = bitcast <2 x i64> %i.aeh to <8 x i16>
  %i.aej = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aek = bitcast <8 x i16> %i.aej to <4 x float> ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 24
  %i.aem = load i64, ptr %i.ael, align 1, !tbaa !20
  %i.aen = insertelement <2 x i64> poison, i64 %i.aem, i64 0
  %i.aeo = bitcast <2 x i64> %i.aen to <8 x i16>
  %i.aep = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aeo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aeq = bitcast <8 x i16> %i.aep to <4 x float> ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 32
  %i.aes = load i64, ptr %i.aer, align 1, !tbaa !20
  %i.aet = insertelement <2 x i64> poison, i64 %i.aes, i64 0
  %i.aeu = bitcast <2 x i64> %i.aet to <8 x i16>
  %i.aev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aeu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aew = bitcast <8 x i16> %i.aev to <4 x float> ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 40
  %i.aey = load i64, ptr %i.aex, align 1, !tbaa !20
  %i.aez = insertelement <2 x i64> poison, i64 %i.aey, i64 0
  %i.afa = bitcast <2 x i64> %i.aez to <8 x i16>
  %i.afb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afc = bitcast <8 x i16> %i.afb to <4 x float> ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 48
  %i.afe = load i64, ptr %i.afd, align 1, !tbaa !20
  %i.aff = insertelement <2 x i64> poison, i64 %i.afe, i64 0
  %i.afg = bitcast <2 x i64> %i.aff to <8 x i16>
  %i.afh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afi = bitcast <8 x i16> %i.afh to <4 x float> ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 56
  %i.afk = load i64, ptr %i.afj, align 1, !tbaa !20
  %i.afl = insertelement <2 x i64> poison, i64 %i.afk, i64 0
  %i.afm = bitcast <2 x i64> %i.afl to <8 x i16>
  %i.afn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afo = bitcast <8 x i16> %i.afn to <4 x float> ; 2 uses
  %i.afp = shufflevector <4 x float> %i.ady, <4 x float> %i.aee, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afq = shufflevector <4 x float> %i.aek, <4 x float> %i.aeq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afr = shufflevector <4 x float> %i.ady, <4 x float> %i.aee, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.afs = shufflevector <4 x float> %i.aek, <4 x float> %i.aeq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aft = shufflevector <4 x float> %i.afp, <4 x float> %i.afq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.afu = shufflevector <4 x float> %i.afq, <4 x float> %i.afp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.afv = shufflevector <4 x float> %i.afr, <4 x float> %i.afs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.afw = shufflevector <4 x float> %i.afs, <4 x float> %i.afr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.afx = shufflevector <4 x float> %i.aew, <4 x float> %i.afc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afy = shufflevector <4 x float> %i.afi, <4 x float> %i.afo, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afz = shufflevector <4 x float> %i.aew, <4 x float> %i.afc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aga = shufflevector <4 x float> %i.afi, <4 x float> %i.afo, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.agb = shufflevector <4 x float> %i.afx, <4 x float> %i.afy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.agc = shufflevector <4 x float> %i.afy, <4 x float> %i.afx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.agd = shufflevector <4 x float> %i.afz, <4 x float> %i.aga, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.age = shufflevector <4 x float> %i.aga, <4 x float> %i.afz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.agf = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aft)
  %i.agg = bitcast <8 x bfloat> %i.agf to <2 x i64>
  %i.agh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.agb)
  %i.agi = bitcast <8 x bfloat> %i.agh to <2 x i64>
  %i.agj = shufflevector <2 x i64> %i.agg, <2 x i64> %i.agi, <2 x i32> <i32 0, i32 2>
  %i.agk = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.afu)
  %i.agl = bitcast <8 x bfloat> %i.agk to <2 x i64>
  %i.agm = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.agc)
  %i.agn = bitcast <8 x bfloat> %i.agm to <2 x i64>
  %i.ago = shufflevector <2 x i64> %i.agl, <2 x i64> %i.agn, <2 x i32> <i32 0, i32 2>
  %i.agp = bitcast <2 x i64> %i.agj to <8 x i16>  ; 2 uses
  %i.agq = bitcast <2 x i64> %i.ago to <8 x i16>  ; 2 uses
  %i.agr = shufflevector <8 x i16> %i.agp, <8 x i16> %i.agq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.agr, ptr %.15644.i.us.i, align 1, !tbaa !20
  %i.ags = getelementptr inbounds nuw i8, ptr %.15644.i.us.i, i64 16
  %i.agt = shufflevector <8 x i16> %i.agp, <8 x i16> %i.agq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.agt, ptr %i.ags, align 1, !tbaa !20
  %i.agu = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.afv)
  %i.agv = bitcast <8 x bfloat> %i.agu to <2 x i64>
  %i.agw = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.agd)
  %i.agx = bitcast <8 x bfloat> %i.agw to <2 x i64>
  %i.agy = shufflevector <2 x i64> %i.agv, <2 x i64> %i.agx, <2 x i32> <i32 0, i32 2>
  %i.agz = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.afw)
  %i.aha = bitcast <8 x bfloat> %i.agz to <2 x i64>
  %i.ahb = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.age)
  %i.ahc = bitcast <8 x bfloat> %i.ahb to <2 x i64>
  %i.ahd = shufflevector <2 x i64> %i.aha, <2 x i64> %i.ahc, <2 x i32> <i32 0, i32 2>
  %i.ahe = getelementptr inbounds nuw i8, ptr %.15644.i.us.i, i64 32
  %i.ahf = bitcast <2 x i64> %i.agy to <8 x i16>  ; 2 uses
  %i.ahg = bitcast <2 x i64> %i.ahd to <8 x i16>  ; 2 uses
  %i.ahh = shufflevector <8 x i16> %i.ahf, <8 x i16> %i.ahg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ahh, ptr %i.ahe, align 1, !tbaa !20
  %i.ahi = getelementptr inbounds nuw i8, ptr %.15644.i.us.i, i64 48
  %i.ahj = shufflevector <8 x i16> %i.ahf, <8 x i16> %i.ahg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ahj, ptr %i.ahi, align 1, !tbaa !20
  %i.ahk = getelementptr inbounds nuw i8, ptr %.15644.i.us.i, i64 64 ; 2 uses
  %i.ahl = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx756.i.us.i = shl i64 %i.ahl, 3
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0741643.i.us.i, i64 %.idx756.i.us.i
  %i.ahn = add nuw nsw i32 %.0742642.i.us.i, 1    ; 2 uses
  %exitcond752.not.i.us.i = icmp eq i32 %i.ahn, %29
  br i1 %exitcond752.not.i.us.i, label %.loopexit592.i.us.i, label %.lr.ph645.i.us.i, !llvm.loop !429

_ZN4ncnn3MatD2Ev.exit772.i.us.i:                  ; preds = %.split837.i.us.i
  br i1 %i.aaf, label %.lr.ph640.preheader.i.us.i, label %.loopexit592.i.us.i

.lr.ph640.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit772.i.us.i
  %i.aho = load ptr, ptr %9, align 8, !tbaa !9, !noalias !430
  %i.ahp = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !430
  %i.ahq = mul i64 %i.ahp, %i.aae
  %i.ahr = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !430
  %i.ahs = mul i64 %i.ahq, %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahs
  %i.ahu = add nsw i64 %indvars.iv754.i.us.i, %i.aao
  %.idx783.i.us.i = shl nsw i64 %i.ahu, 4
  %i.ahv = getelementptr inbounds i8, ptr %i.aht, i64 %.idx783.i.us.i
  br label %.lr.ph640.i.us.i

.lr.ph640.i.us.i:                                 ; preds = %.lr.ph640.i.us.i, %.lr.ph640.preheader.i.us.i
  %.13639.i.us.i = phi ptr [ %i.akw, %.lr.ph640.i.us.i ], [ %.10660.i.us.i, %.lr.ph640.preheader.i.us.i ] ; 9 uses
  %.0737638.i.us.i = phi ptr [ %i.aky, %.lr.ph640.i.us.i ], [ %i.ahv, %.lr.ph640.preheader.i.us.i ] ; 9 uses
  %.0738637.i.us.i = phi i32 [ %i.akz, %.lr.ph640.i.us.i ], [ 0, %.lr.ph640.preheader.i.us.i ]
  %i.ahw = load <8 x bfloat>, ptr %.0737638.i.us.i, align 1, !tbaa !20
  %i.ahx = fpext fast <8 x bfloat> %i.ahw to <8 x float> ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 16
  %i.ahz = load <8 x bfloat>, ptr %i.ahy, align 1, !tbaa !20
  %i.aia = fpext fast <8 x bfloat> %i.ahz to <8 x float> ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 32
  %i.aic = load <8 x bfloat>, ptr %i.aib, align 1, !tbaa !20
  %i.aid = fpext fast <8 x bfloat> %i.aic to <8 x float> ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 48
  %i.aif = load <8 x bfloat>, ptr %i.aie, align 1, !tbaa !20
  %i.aig = fpext fast <8 x bfloat> %i.aif to <8 x float> ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 64
  %i.aii = load <8 x bfloat>, ptr %i.aih, align 1, !tbaa !20
  %i.aij = fpext fast <8 x bfloat> %i.aii to <8 x float> ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 80
  %i.ail = load <8 x bfloat>, ptr %i.aik, align 1, !tbaa !20
  %i.aim = fpext fast <8 x bfloat> %i.ail to <8 x float> ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 96
  %i.aio = load <8 x bfloat>, ptr %i.ain, align 1, !tbaa !20
  %i.aip = fpext fast <8 x bfloat> %i.aio to <8 x float> ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 112
  %i.air = load <8 x bfloat>, ptr %i.aiq, align 1, !tbaa !20
  %i.ais = fpext fast <8 x bfloat> %i.air to <8 x float> ; 2 uses
  %i.ait = shufflevector <8 x float> %i.ahx, <8 x float> %i.aia, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aiu = shufflevector <8 x float> %i.ahx, <8 x float> %i.aia, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aiv = shufflevector <8 x float> %i.aid, <8 x float> %i.aig, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aiw = shufflevector <8 x float> %i.aid, <8 x float> %i.aig, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aix = shufflevector <8 x float> %i.aij, <8 x float> %i.aim, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aiy = shufflevector <8 x float> %i.aij, <8 x float> %i.aim, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aiz = shufflevector <8 x float> %i.aip, <8 x float> %i.ais, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aja = shufflevector <8 x float> %i.aip, <8 x float> %i.ais, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ajb = shufflevector <8 x float> %i.ait, <8 x float> %i.aiv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ajc = shufflevector <8 x float> %i.ait, <8 x float> %i.aiv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ajd = shufflevector <8 x float> %i.aiu, <8 x float> %i.aiw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aje = shufflevector <8 x float> %i.aiu, <8 x float> %i.aiw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ajf = shufflevector <8 x float> %i.aix, <8 x float> %i.aiz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ajg = shufflevector <8 x float> %i.aix, <8 x float> %i.aiz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ajh = shufflevector <8 x float> %i.aiy, <8 x float> %i.aja, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aji = shufflevector <8 x float> %i.aiy, <8 x float> %i.aja, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ajj = shufflevector <8 x float> %i.ajb, <8 x float> %i.ajf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ajk = shufflevector <8 x float> %i.ajc, <8 x float> %i.ajg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ajl = shufflevector <8 x float> %i.ajd, <8 x float> %i.ajh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ajm = shufflevector <8 x float> %i.aje, <8 x float> %i.aji, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ajn = shufflevector <8 x float> %i.ajb, <8 x float> %i.ajf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ajo = shufflevector <8 x float> %i.ajc, <8 x float> %i.ajg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ajp = shufflevector <8 x float> %i.ajd, <8 x float> %i.ajh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ajq = shufflevector <8 x float> %i.aje, <8 x float> %i.aji, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ajr = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajj)
  %i.ajs = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajk)
  %i.ajt = bitcast <8 x bfloat> %i.ajr to <8 x i16> ; 2 uses
  %i.aju = bitcast <8 x bfloat> %i.ajs to <8 x i16> ; 2 uses
  %i.ajv = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.aju, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ajv, ptr %.13639.i.us.i, align 1, !tbaa !20
  %i.ajw = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 16
  %i.ajx = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.aju, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ajx, ptr %i.ajw, align 1, !tbaa !20
  %i.ajy = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajl)
  %i.ajz = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajm)
  %i.aka = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 32
  %i.akb = bitcast <8 x bfloat> %i.ajy to <8 x i16> ; 2 uses
  %i.akc = bitcast <8 x bfloat> %i.ajz to <8 x i16> ; 2 uses
  %i.akd = shufflevector <8 x i16> %i.akb, <8 x i16> %i.akc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.akd, ptr %i.aka, align 1, !tbaa !20
  %i.ake = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 48
  %i.akf = shufflevector <8 x i16> %i.akb, <8 x i16> %i.akc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.akf, ptr %i.ake, align 1, !tbaa !20
  %i.akg = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajn)
  %i.akh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajo)
  %i.aki = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 64
  %i.akj = bitcast <8 x bfloat> %i.akg to <8 x i16> ; 2 uses
  %i.akk = bitcast <8 x bfloat> %i.akh to <8 x i16> ; 2 uses
  %i.akl = shufflevector <8 x i16> %i.akj, <8 x i16> %i.akk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.akl, ptr %i.aki, align 1, !tbaa !20
  %i.akm = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 80
  %i.akn = shufflevector <8 x i16> %i.akj, <8 x i16> %i.akk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.akn, ptr %i.akm, align 1, !tbaa !20
  %i.ako = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajp)
  %i.akp = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajq)
  %i.akq = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 96
  %i.akr = bitcast <8 x bfloat> %i.ako to <8 x i16> ; 2 uses
  %i.aks = bitcast <8 x bfloat> %i.akp to <8 x i16> ; 2 uses
  %i.akt = shufflevector <8 x i16> %i.akr, <8 x i16> %i.aks, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.akt, ptr %i.akq, align 1, !tbaa !20
  %i.aku = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 112
  %i.akv = shufflevector <8 x i16> %i.akr, <8 x i16> %i.aks, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.akv, ptr %i.aku, align 1, !tbaa !20
  %i.akw = getelementptr inbounds nuw i8, ptr %.13639.i.us.i, i64 128 ; 2 uses
  %i.akx = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx757.i.us.i = shl i64 %i.akx, 4
  %i.aky = getelementptr inbounds nuw i8, ptr %.0737638.i.us.i, i64 %.idx757.i.us.i
  %i.akz = add nuw nsw i32 %.0738637.i.us.i, 1    ; 2 uses
  %exitcond751.not.i.us.i = icmp eq i32 %i.akz, %28
  br i1 %exitcond751.not.i.us.i, label %.loopexit592.i.us.i, label %.lr.ph640.i.us.i, !llvm.loop !433

_ZN4ncnn3MatD2Ev.exit773.i.us.i:                  ; preds = %.split837.i.us.i
  br i1 %26, label %.lr.ph635.preheader.i.us.i, label %.loopexit592.i.us.i

.lr.ph635.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit773.i.us.i
  %i.ala = load ptr, ptr %9, align 8, !tbaa !9, !noalias !434
  %i.alb = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !434
  %i.alc = mul i64 %i.alb, %24
  %i.ald = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !434
  %i.ale = mul i64 %i.alc, %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.ale
  %i.alg = add nsw i64 %indvars.iv754.i.us.i, %i.aao
  %.idx782.i.us.i = shl nsw i64 %i.alg, 5
  %i.alh = getelementptr inbounds i8, ptr %i.alf, i64 %.idx782.i.us.i
  br label %.lr.ph635.i.us.i

.lr.ph635.i.us.i:                                 ; preds = %.lr.ph635.i.us.i, %.lr.ph635.preheader.i.us.i
  %.11634.i.us.i = phi ptr [ %i.apo, %.lr.ph635.i.us.i ], [ %.10660.i.us.i, %.lr.ph635.preheader.i.us.i ] ; 17 uses
  %.0735633.i.us.i = phi ptr [ %i.apq, %.lr.ph635.i.us.i ], [ %i.alh, %.lr.ph635.preheader.i.us.i ] ; 9 uses
  %.0736632.i.us.i = phi i32 [ %i.apr, %.lr.ph635.i.us.i ], [ 0, %.lr.ph635.preheader.i.us.i ]
  %i.ali = load <16 x bfloat>, ptr %.0735633.i.us.i, align 1, !tbaa !20
  %i.alj = fpext fast <16 x bfloat> %i.ali to <16 x float> ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 32
  %i.all = load <16 x bfloat>, ptr %i.alk, align 1, !tbaa !20
  %i.alm = fpext fast <16 x bfloat> %i.all to <16 x float> ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 64
  %i.alo = load <16 x bfloat>, ptr %i.aln, align 1, !tbaa !20
  %i.alp = fpext fast <16 x bfloat> %i.alo to <16 x float> ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 96
  %i.alr = load <16 x bfloat>, ptr %i.alq, align 1, !tbaa !20
  %i.als = fpext fast <16 x bfloat> %i.alr to <16 x float> ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 128
  %i.alu = load <16 x bfloat>, ptr %i.alt, align 1, !tbaa !20
  %i.alv = fpext fast <16 x bfloat> %i.alu to <16 x float> ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 160
  %i.alx = load <16 x bfloat>, ptr %i.alw, align 1, !tbaa !20
  %i.aly = fpext fast <16 x bfloat> %i.alx to <16 x float> ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 192
  %i.ama = load <16 x bfloat>, ptr %i.alz, align 1, !tbaa !20
  %i.amb = fpext fast <16 x bfloat> %i.ama to <16 x float> ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 224
  %i.amd = load <16 x bfloat>, ptr %i.amc, align 1, !tbaa !20
  %i.ame = fpext fast <16 x bfloat> %i.amd to <16 x float> ; 2 uses
  %i.amf = shufflevector <16 x float> %i.alj, <16 x float> %i.alm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.amg = shufflevector <16 x float> %i.alj, <16 x float> %i.alm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.amh = shufflevector <16 x float> %i.alp, <16 x float> %i.als, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ami = shufflevector <16 x float> %i.alp, <16 x float> %i.als, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.amj = shufflevector <16 x float> %i.alv, <16 x float> %i.aly, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.amk = shufflevector <16 x float> %i.alv, <16 x float> %i.aly, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aml = shufflevector <16 x float> %i.amb, <16 x float> %i.ame, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.amm = shufflevector <16 x float> %i.amb, <16 x float> %i.ame, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.amn = shufflevector <16 x float> %i.amf, <16 x float> %i.amh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.amo = shufflevector <16 x float> %i.amf, <16 x float> %i.amh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.amp = shufflevector <16 x float> %i.amg, <16 x float> %i.ami, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.amq = shufflevector <16 x float> %i.amg, <16 x float> %i.ami, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.amr = shufflevector <16 x float> %i.amj, <16 x float> %i.aml, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ams = shufflevector <16 x float> %i.amj, <16 x float> %i.aml, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.amt = shufflevector <16 x float> %i.amk, <16 x float> %i.amm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.amu = shufflevector <16 x float> %i.amk, <16 x float> %i.amm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.amv = shufflevector <16 x float> %i.amn, <16 x float> %i.amr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.amw = shufflevector <16 x float> %i.amo, <16 x float> %i.ams, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.amx = shufflevector <16 x float> %i.amp, <16 x float> %i.amt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.amy = shufflevector <16 x float> %i.amq, <16 x float> %i.amu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.amz = shufflevector <16 x float> %i.amn, <16 x float> %i.amr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ana = shufflevector <16 x float> %i.amo, <16 x float> %i.ams, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.anb = shufflevector <16 x float> %i.amp, <16 x float> %i.amt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.anc = shufflevector <16 x float> %i.amq, <16 x float> %i.amu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.and = shufflevector <16 x float> %i.amv, <16 x float> %i.amw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ane = shufflevector <16 x float> %i.amx, <16 x float> %i.amy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.anf = shufflevector <16 x float> %i.amz, <16 x float> %i.ana, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ang = shufflevector <16 x float> %i.anb, <16 x float> %i.anc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.anh = shufflevector <16 x float> %i.amv, <16 x float> %i.amw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ani = shufflevector <16 x float> %i.amx, <16 x float> %i.amy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.anj = shufflevector <16 x float> %i.amz, <16 x float> %i.ana, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ank = shufflevector <16 x float> %i.anb, <16 x float> %i.anc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.anl = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.and) ; 2 uses
  %i.anm = bitcast <16 x bfloat> %i.anl to <16 x i16> ; 2 uses
  %i.ann = bitcast <16 x bfloat> %i.anl to <16 x i16> ; 2 uses
  %i.ano = shufflevector <16 x i16> %i.anm, <16 x i16> %i.ann, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.ano, ptr %.11634.i.us.i, align 1, !tbaa !20
  %i.anp = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 16
  %i.anq = shufflevector <16 x i16> %i.anm, <16 x i16> %i.ann, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.anq, ptr %i.anp, align 1, !tbaa !20
  %i.anr = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ane) ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 32
  %i.ant = bitcast <16 x bfloat> %i.anr to <16 x i16> ; 2 uses
  %i.anu = bitcast <16 x bfloat> %i.anr to <16 x i16> ; 2 uses
  %i.anv = shufflevector <16 x i16> %i.ant, <16 x i16> %i.anu, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.anv, ptr %i.ans, align 1, !tbaa !20
  %i.anw = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 48
  %i.anx = shufflevector <16 x i16> %i.ant, <16 x i16> %i.anu, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.anx, ptr %i.anw, align 1, !tbaa !20
  %i.any = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.anf) ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 64
  %i.aoa = bitcast <16 x bfloat> %i.any to <16 x i16> ; 2 uses
  %i.aob = bitcast <16 x bfloat> %i.any to <16 x i16> ; 2 uses
  %i.aoc = shufflevector <16 x i16> %i.aoa, <16 x i16> %i.aob, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.aoc, ptr %i.anz, align 1, !tbaa !20
  %i.aod = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 80
  %i.aoe = shufflevector <16 x i16> %i.aoa, <16 x i16> %i.aob, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.aoe, ptr %i.aod, align 1, !tbaa !20
  %i.aof = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ang) ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 96
  %i.aoh = bitcast <16 x bfloat> %i.aof to <16 x i16> ; 2 uses
  %i.aoi = bitcast <16 x bfloat> %i.aof to <16 x i16> ; 2 uses
  %i.aoj = shufflevector <16 x i16> %i.aoh, <16 x i16> %i.aoi, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.aoj, ptr %i.aog, align 1, !tbaa !20
  %i.aok = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 112
  %i.aol = shufflevector <16 x i16> %i.aoh, <16 x i16> %i.aoi, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.aol, ptr %i.aok, align 1, !tbaa !20
  %i.aom = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.anh) ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 128
  %i.aoo = bitcast <16 x bfloat> %i.aom to <16 x i16> ; 2 uses
  %i.aop = bitcast <16 x bfloat> %i.aom to <16 x i16> ; 2 uses
  %i.aoq = shufflevector <16 x i16> %i.aoo, <16 x i16> %i.aop, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.aoq, ptr %i.aon, align 1, !tbaa !20
  %i.aor = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 144
  %i.aos = shufflevector <16 x i16> %i.aoo, <16 x i16> %i.aop, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.aos, ptr %i.aor, align 1, !tbaa !20
  %i.aot = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ani) ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 160
  %i.aov = bitcast <16 x bfloat> %i.aot to <16 x i16> ; 2 uses
  %i.aow = bitcast <16 x bfloat> %i.aot to <16 x i16> ; 2 uses
  %i.aox = shufflevector <16 x i16> %i.aov, <16 x i16> %i.aow, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.aox, ptr %i.aou, align 1, !tbaa !20
  %i.aoy = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 176
  %i.aoz = shufflevector <16 x i16> %i.aov, <16 x i16> %i.aow, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.aoz, ptr %i.aoy, align 1, !tbaa !20
  %i.apa = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.anj) ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 192
  %i.apc = bitcast <16 x bfloat> %i.apa to <16 x i16> ; 2 uses
  %i.apd = bitcast <16 x bfloat> %i.apa to <16 x i16> ; 2 uses
  %i.ape = shufflevector <16 x i16> %i.apc, <16 x i16> %i.apd, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.ape, ptr %i.apb, align 1, !tbaa !20
  %i.apf = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 208
  %i.apg = shufflevector <16 x i16> %i.apc, <16 x i16> %i.apd, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.apg, ptr %i.apf, align 1, !tbaa !20
  %i.aph = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ank) ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 224
  %i.apj = bitcast <16 x bfloat> %i.aph to <16 x i16> ; 2 uses
  %i.apk = bitcast <16 x bfloat> %i.aph to <16 x i16> ; 2 uses
  %i.apl = shufflevector <16 x i16> %i.apj, <16 x i16> %i.apk, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.apl, ptr %i.api, align 1, !tbaa !20
  %i.apm = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 240
  %i.apn = shufflevector <16 x i16> %i.apj, <16 x i16> %i.apk, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.apn, ptr %i.apm, align 1, !tbaa !20
  %i.apo = getelementptr inbounds nuw i8, ptr %.11634.i.us.i, i64 256 ; 2 uses
  %i.app = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx758.i.us.i = shl i64 %i.app, 5
  %i.apq = getelementptr inbounds nuw i8, ptr %.0735633.i.us.i, i64 %.idx758.i.us.i
  %i.apr = add nuw nsw i32 %.0736632.i.us.i, 1    ; 2 uses
  %exitcond750.not.i.us.i = icmp eq i32 %i.apr, %25
  br i1 %exitcond750.not.i.us.i, label %.loopexit592.i.us.i, label %.lr.ph635.i.us.i, !llvm.loop !437

.loopexit592.i.us.i:                              ; preds = %.lr.ph657.i.us.i.prol.loopexit, %.lr.ph657.i.us.i, %.lr.ph645.i.us.i, %.lr.ph640.i.us.i, %.lr.ph635.i.us.i, %_ZN4ncnn3MatD2Ev.exit773.i.us.i, %_ZN4ncnn3MatD2Ev.exit772.i.us.i, %_ZN4ncnn3MatD2Ev.exit771.i.us.i, %.preheader591.i.us.i, %.split837.i.us.i
  %.19.i.us.i = phi ptr [ %.10660.i.us.i, %.split837.i.us.i ], [ %.17.lcssa.i.us.i, %.preheader591.i.us.i ], [ %i.ahk, %.lr.ph645.i.us.i ], [ %i.apo, %.lr.ph635.i.us.i ], [ %.10660.i.us.i, %_ZN4ncnn3MatD2Ev.exit771.i.us.i ], [ %i.akw, %.lr.ph640.i.us.i ], [ %.10660.i.us.i, %_ZN4ncnn3MatD2Ev.exit772.i.us.i ], [ %.10660.i.us.i, %_ZN4ncnn3MatD2Ev.exit773.i.us.i ], [ %.lcssa258.unr, %.lr.ph657.i.us.i.prol.loopexit ], [ %i.adi, %.lr.ph657.i.us.i ] ; 2 uses
  %indvars.iv.next755.i.us.i = add nuw nsw i64 %indvars.iv754.i.us.i, 8 ; 3 uses
  %i.aps = icmp slt i64 %indvars.iv.next755.i.us.i, %invariant.op.i.i
  br i1 %i.aps, label %.split837.i.us.i, label %.preheader590.loopexit.i.i, !llvm.loop !438

.preheader590.loopexit.i.i:                       ; preds = %.loopexit592.i.us.i, %.loopexit592.i.preheader.i
  %.us-phi76.i = phi ptr [ %.0714.lcssa.i.i, %.loopexit592.i.preheader.i ], [ %.19.i.us.i, %.loopexit592.i.us.i ]
  %.us-phi77.i = phi i64 [ %i.abb, %.loopexit592.i.preheader.i ], [ %indvars.iv.next755.i.us.i, %.loopexit592.i.us.i ]
  %i.apt = trunc nuw nsw i64 %.us-phi77.i to i32
  br label %.preheader590.i.i

.preheader590.i.i:                                ; preds = %.preheader590.loopexit.i.i, %.preheader596.i.i
  %.1716.lcssa.i.i = phi i32 [ %.0715.lcssa.i.i, %.preheader596.i.i ], [ %i.apt, %.preheader590.loopexit.i.i ] ; 3 uses
  %.10.lcssa.i.i = phi ptr [ %.0714.lcssa.i.i, %.preheader596.i.i ], [ %.us-phi76.i, %.preheader590.loopexit.i.i ] ; 3 uses
  %i.apu = or disjoint i32 %.1716.lcssa.i.i, 3
  %i.apv = icmp slt i32 %i.apu, %.sroa.speculated65
  br i1 %i.apv, label %.lr.ph693.i.i, label %.preheader.i.i

.lr.ph693.i.i:                                    ; preds = %.preheader590.i.i
  %30 = sdiv i32 %i.x, 16
  %31 = sext i32 %30 to i64
  %32 = lshr i32 %.sroa.speculated, 4
  %33 = icmp sgt i32 %.sroa.speculated, 15
  %34 = sdiv i32 %i.x, 8
  %i.apw = sext i32 %34 to i64
  %35 = lshr i32 %.sroa.speculated, 3
  %i.apx = icmp sgt i32 %.sroa.speculated, 7
  %i.apy = sdiv i32 %i.x, 4
  %i.apz = sext i32 %i.apy to i64
  %36 = lshr i32 %.sroa.speculated, 2
  %i.aqa = icmp sgt i32 %.sroa.speculated, 3
  %i.aqb = sext i32 %i.x to i64
  %i.aqc = icmp sgt i32 %.sroa.speculated, 1
  %i.aqd = and i32 %.sroa.speculated, -2          ; 2 uses
  %i.aqe = zext i32 %.1716.lcssa.i.i to i64       ; 3 uses
  %i.aqf = sext i32 %.sroa.speculated65 to i64
  %i.aqg = sext i32 %i.v to i64                   ; 4 uses
  %invariant.op836.i.i = add nsw i64 %i.aqf, -3   ; 2 uses
  %i.aqh = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.aqi = icmp eq i32 %i.aqh, 1
  %i.aqj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  br i1 %i.aqi, label %.split838.i.us.i.preheader, label %.loopexit586.i.preheader.i

.split838.i.us.i.preheader:                       ; preds = %.lr.ph693.i.i
  %i.aqk = add i32 %.sroa.speculated, -2          ; 2 uses
  %i.aql = lshr i32 %i.aqk, 1                     ; 2 uses
  %i.aqm = add nuw i32 %i.aql, 1                  ; 2 uses
  %i.aqn = icmp eq i32 %i.aql, 0
  %unroll_iter287 = and i32 %i.aqm, -2
  %i.aqo = and i32 %i.aqk, 2
  %lcmp.mod283.not.not = icmp eq i32 %i.aqo, 0
  %lcmp.mod286 = trunc i32 %i.aqm to i1
  br label %.split838.i.us.i

.loopexit586.i.preheader.i:                       ; preds = %.lr.ph693.i.i
  %i.aqp = add nuw nsw i64 %i.aqe, 4              ; 2 uses
  %smax124.i = call i64 @llvm.smax.i64(i64 %invariant.op836.i.i, i64 %i.aqp)
  %i.aqq = xor i64 %i.aqe, -1
  %i.aqr = add nsw i64 %smax124.i, %i.aqq
  %i.aqs = and i64 %i.aqr, -4
  %i.aqt = add i64 %i.aqp, %i.aqs
  br label %.preheader.loopexit.i.i

.split838.i.us.i:                                 ; preds = %.split838.i.us.i.preheader, %.loopexit586.i.us.i
  %indvars.iv761.i.us.i = phi i64 [ %indvars.iv.next762.i.us.i, %.loopexit586.i.us.i ], [ %i.aqe, %.split838.i.us.i.preheader ] ; 5 uses
  %.20692.i.us.i = phi ptr [ %.29.i.us.i, %.loopexit586.i.us.i ], [ %.10.lcssa.i.i, %.split838.i.us.i.preheader ] ; 10 uses
  switch i32 %i.aqj, label %.loopexit586.i.us.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit769.i.us.i
    i32 3, label %_ZN4ncnn3MatD2Ev.exit768.i.us.i
    i32 2, label %_ZN4ncnn3MatD2Ev.exit767.i.us.i
    i32 0, label %_ZN4ncnn3MatD2Ev.exit766.i.us.i
  ]

_ZN4ncnn3MatD2Ev.exit766.i.us.i:                  ; preds = %.split838.i.us.i
  %i.aqu = load ptr, ptr %9, align 8, !tbaa !9, !noalias !439
  %i.aqv = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !439 ; 3 uses
  %i.aqw = mul i64 %i.aqv, %i.aqb
  %i.aqx = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !439
  %i.aqy = mul i64 %i.aqw, %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqy
  %i.ara = getelementptr [2 x i8], ptr %i.aqz, i64 %indvars.iv761.i.us.i
  %i.arb = getelementptr [2 x i8], ptr %i.ara, i64 %i.aqg ; 3 uses
  br i1 %i.aqc, label %.lr.ph682.i.us.i.preheader, label %.preheader585.i.us.i

.lr.ph682.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit766.i.us.i
  br i1 %i.aqn, label %.lr.ph682.i.us.i.epil.preheader, label %.lr.ph682.i.us.i

.lr.ph682.i.us.i:                                 ; preds = %.lr.ph682.i.us.i.preheader, %.lr.ph682.i.us.i
  %i.arc = phi i64 [ %i.arx, %.lr.ph682.i.us.i ], [ %i.aqv, %.lr.ph682.i.us.i.preheader ]
  %.27681.i.us.i = phi ptr [ %i.arw, %.lr.ph682.i.us.i ], [ %.20692.i.us.i, %.lr.ph682.i.us.i.preheader ] ; 3 uses
  %.0721679.i.us.i = phi ptr [ %i.ary, %.lr.ph682.i.us.i ], [ %i.arb, %.lr.ph682.i.us.i.preheader ] ; 3 uses
  %niter288 = phi i32 [ %niter288.next.1, %.lr.ph682.i.us.i ], [ 0, %.lr.ph682.i.us.i.preheader ]
  %i.ard = load i64, ptr %.0721679.i.us.i, align 1, !tbaa !20
  %i.are = insertelement <2 x i64> poison, i64 %i.ard, i64 0
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr %.0721679.i.us.i, i64 %i.arc
  %i.arg = load i64, ptr %i.arf, align 1, !tbaa !20
  %i.arh = insertelement <2 x i64> poison, i64 %i.arg, i64 0
  %i.ari = bitcast <2 x i64> %i.are to <8 x i16>
  %i.arj = bitcast <2 x i64> %i.arh to <8 x i16>
  %i.ark = shufflevector <8 x i16> %i.ari, <8 x i16> %i.arj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ark, ptr %.27681.i.us.i, align 1, !tbaa !20
  %i.arl = getelementptr inbounds nuw i8, ptr %.27681.i.us.i, i64 16
  %i.arm = load i64, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  %.idx751.i.us.i = shl i64 %i.arm, 2
  %i.arn = getelementptr inbounds nuw i8, ptr %.0721679.i.us.i, i64 %.idx751.i.us.i ; 3 uses
  %i.aro = load i64, ptr %i.arn, align 1, !tbaa !20
  %i.arp = insertelement <2 x i64> poison, i64 %i.aro, i64 0
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.arn, i64 %i.arm
  %i.arr = load i64, ptr %i.arq, align 1, !tbaa !20
  %i.ars = insertelement <2 x i64> poison, i64 %i.arr, i64 0
  %i.art = bitcast <2 x i64> %i.arp to <8 x i16>
  %i.aru = bitcast <2 x i64> %i.ars to <8 x i16>
  %i.arv = shufflevector <8 x i16> %i.art, <8 x i16> %i.aru, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.arv, ptr %i.arl, align 1, !tbaa !20
  %i.arw = getelementptr inbounds nuw i8, ptr %.27681.i.us.i, i64 32 ; 3 uses
  %i.arx = load i64, ptr %i.p, align 8, !tbaa !18 ; 3 uses
  %.idx751.i.us.i.1 = shl i64 %i.arx, 2
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arn, i64 %.idx751.i.us.i.1 ; 3 uses
  %niter288.next.1 = add nuw nsw i32 %niter288, 2 ; 2 uses
  %niter288.ncmp.1.not = icmp eq i32 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1.not, label %.preheader585.i.us.i.loopexit.unr-lcssa, label %.lr.ph682.i.us.i, !llvm.loop !442

.preheader585.i.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph682.i.us.i
  br i1 %lcmp.mod283.not.not, label %.lr.ph682.i.us.i.epil.preheader, label %.preheader585.i.us.i

.lr.ph682.i.us.i.epil.preheader:                  ; preds = %.preheader585.i.us.i.loopexit.unr-lcssa, %.lr.ph682.i.us.i.preheader
  %.epil.init282 = phi i64 [ %i.aqv, %.lr.ph682.i.us.i.preheader ], [ %i.arx, %.preheader585.i.us.i.loopexit.unr-lcssa ]
  %.27681.i.us.i.epil.init = phi ptr [ %.20692.i.us.i, %.lr.ph682.i.us.i.preheader ], [ %i.arw, %.preheader585.i.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.0721679.i.us.i.epil.init = phi ptr [ %i.arb, %.lr.ph682.i.us.i.preheader ], [ %i.ary, %.preheader585.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.arz = load i64, ptr %.0721679.i.us.i.epil.init, align 1, !tbaa !20
  %i.asa = insertelement <2 x i64> poison, i64 %i.arz, i64 0
  %i.asb = getelementptr inbounds nuw [2 x i8], ptr %.0721679.i.us.i.epil.init, i64 %.epil.init282
  %i.asc = load i64, ptr %i.asb, align 1, !tbaa !20
  %i.asd = insertelement <2 x i64> poison, i64 %i.asc, i64 0
  %i.ase = bitcast <2 x i64> %i.asa to <8 x i16>
  %i.asf = bitcast <2 x i64> %i.asd to <8 x i16>
  %i.asg = shufflevector <8 x i16> %i.ase, <8 x i16> %i.asf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.asg, ptr %.27681.i.us.i.epil.init, align 1, !tbaa !20
  %i.ash = getelementptr inbounds nuw i8, ptr %.27681.i.us.i.epil.init, i64 16
  %i.asi = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx751.i.us.i.epil = shl i64 %i.asi, 2
  %i.asj = getelementptr inbounds nuw i8, ptr %.0721679.i.us.i.epil.init, i64 %.idx751.i.us.i.epil
  br label %.preheader585.i.us.i

.preheader585.i.us.i:                             ; preds = %.lr.ph682.i.us.i.epil.preheader, %.preheader585.i.us.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit766.i.us.i
  %.0721.lcssa.i.us.i = phi ptr [ %i.arb, %_ZN4ncnn3MatD2Ev.exit766.i.us.i ], [ %i.ary, %.preheader585.i.us.i.loopexit.unr-lcssa ], [ %i.asj, %.lr.ph682.i.us.i.epil.preheader ] ; 2 uses
  %.0719.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit766.i.us.i ], [ %i.aqd, %.preheader585.i.us.i.loopexit.unr-lcssa ], [ %i.aqd, %.lr.ph682.i.us.i.epil.preheader ] ; 5 uses
  %.27.lcssa.i.us.i = phi ptr [ %.20692.i.us.i, %_ZN4ncnn3MatD2Ev.exit766.i.us.i ], [ %i.arw, %.preheader585.i.us.i.loopexit.unr-lcssa ], [ %i.ash, %.lr.ph682.i.us.i.epil.preheader ] ; 3 uses
  %i.ask = icmp slt i32 %.0719.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.ask, label %.lr.ph689.i.us.i.preheader, label %.loopexit586.i.us.i

.lr.ph689.i.us.i.preheader:                       ; preds = %.preheader585.i.us.i
  %i.asl = sub i32 %.sroa.speculated, %.0719.lcssa.i.us.i
  %xtraiter289 = and i32 %i.asl, 3                ; 2 uses
  %lcmp.mod290.not = icmp eq i32 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %.lr.ph689.i.us.i.prol.loopexit, label %.lr.ph689.i.us.i.prol

.lr.ph689.i.us.i.prol:                            ; preds = %.lr.ph689.i.us.i.preheader, %.lr.ph689.i.us.i.prol
  %.28688.i.us.i.prol = phi ptr [ %i.asn, %.lr.ph689.i.us.i.prol ], [ %.27.lcssa.i.us.i, %.lr.ph689.i.us.i.preheader ] ; 2 uses
  %.1720687.i.us.i.prol = phi i32 [ %i.asq, %.lr.ph689.i.us.i.prol ], [ %.0719.lcssa.i.us.i, %.lr.ph689.i.us.i.preheader ]
  %.1722686.i.us.i.prol = phi ptr [ %i.asp, %.lr.ph689.i.us.i.prol ], [ %.0721.lcssa.i.us.i, %.lr.ph689.i.us.i.preheader ] ; 2 uses
  %prol.iter291 = phi i32 [ %prol.iter291.next, %.lr.ph689.i.us.i.prol ], [ 0, %.lr.ph689.i.us.i.preheader ]
  %i.asm = load i64, ptr %.1722686.i.us.i.prol, align 1, !tbaa !20
  store i64 %i.asm, ptr %.28688.i.us.i.prol, align 1, !tbaa !20
  %i.asn = getelementptr inbounds nuw i8, ptr %.28688.i.us.i.prol, i64 8 ; 3 uses
  %i.aso = load i64, ptr %i.p, align 8, !tbaa !18
  %i.asp = getelementptr inbounds nuw [2 x i8], ptr %.1722686.i.us.i.prol, i64 %i.aso ; 2 uses
  %i.asq = add nuw nsw i32 %.1720687.i.us.i.prol, 1 ; 2 uses
  %prol.iter291.next = add i32 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i32 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %.lr.ph689.i.us.i.prol.loopexit, label %.lr.ph689.i.us.i.prol, !llvm.loop !443

.lr.ph689.i.us.i.prol.loopexit:                   ; preds = %.lr.ph689.i.us.i.prol, %.lr.ph689.i.us.i.preheader
  %.lcssa264.unr = phi ptr [ poison, %.lr.ph689.i.us.i.preheader ], [ %i.asn, %.lr.ph689.i.us.i.prol ]
  %.28688.i.us.i.unr = phi ptr [ %.27.lcssa.i.us.i, %.lr.ph689.i.us.i.preheader ], [ %i.asn, %.lr.ph689.i.us.i.prol ]
  %.1720687.i.us.i.unr = phi i32 [ %.0719.lcssa.i.us.i, %.lr.ph689.i.us.i.preheader ], [ %i.asq, %.lr.ph689.i.us.i.prol ]
  %.1722686.i.us.i.unr = phi ptr [ %.0721.lcssa.i.us.i, %.lr.ph689.i.us.i.preheader ], [ %i.asp, %.lr.ph689.i.us.i.prol ]
  %i.asr = sub i32 %.0719.lcssa.i.us.i, %.sroa.speculated
  %i.ass = icmp ugt i32 %i.asr, -4
  br i1 %i.ass, label %.loopexit586.i.us.i, label %.lr.ph689.i.us.i

.lr.ph689.i.us.i:                                 ; preds = %.lr.ph689.i.us.i.prol.loopexit, %.lr.ph689.i.us.i
  %.28688.i.us.i = phi ptr [ %i.atg, %.lr.ph689.i.us.i ], [ %.28688.i.us.i.unr, %.lr.ph689.i.us.i.prol.loopexit ] ; 5 uses
  %.1720687.i.us.i = phi i32 [ %i.atj, %.lr.ph689.i.us.i ], [ %.1720687.i.us.i.unr, %.lr.ph689.i.us.i.prol.loopexit ]
  %.1722686.i.us.i = phi ptr [ %i.ati, %.lr.ph689.i.us.i ], [ %.1722686.i.us.i.unr, %.lr.ph689.i.us.i.prol.loopexit ] ; 2 uses
  %i.ast = load i64, ptr %.1722686.i.us.i, align 1, !tbaa !20
  store i64 %i.ast, ptr %.28688.i.us.i, align 1, !tbaa !20
  %i.asu = getelementptr inbounds nuw i8, ptr %.28688.i.us.i, i64 8
  %i.asv = load i64, ptr %i.p, align 8, !tbaa !18
  %i.asw = getelementptr inbounds nuw [2 x i8], ptr %.1722686.i.us.i, i64 %i.asv ; 2 uses
  %i.asx = load i64, ptr %i.asw, align 1, !tbaa !20
  store i64 %i.asx, ptr %i.asu, align 1, !tbaa !20
  %i.asy = getelementptr inbounds nuw i8, ptr %.28688.i.us.i, i64 16
  %i.asz = load i64, ptr %i.p, align 8, !tbaa !18
  %i.ata = getelementptr inbounds nuw [2 x i8], ptr %i.asw, i64 %i.asz ; 2 uses
  %i.atb = load i64, ptr %i.ata, align 1, !tbaa !20
  store i64 %i.atb, ptr %i.asy, align 1, !tbaa !20
  %i.atc = getelementptr inbounds nuw i8, ptr %.28688.i.us.i, i64 24
  %i.atd = load i64, ptr %i.p, align 8, !tbaa !18
  %i.ate = getelementptr inbounds nuw [2 x i8], ptr %i.ata, i64 %i.atd ; 2 uses
  %i.atf = load i64, ptr %i.ate, align 1, !tbaa !20
  store i64 %i.atf, ptr %i.atc, align 1, !tbaa !20
  %i.atg = getelementptr inbounds nuw i8, ptr %.28688.i.us.i, i64 32 ; 2 uses
  %i.ath = load i64, ptr %i.p, align 8, !tbaa !18
  %i.ati = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %i.ath
  %i.atj = add nuw nsw i32 %.1720687.i.us.i, 4    ; 2 uses
  %exitcond760.not.i.us.i.3 = icmp eq i32 %i.atj, %.sroa.speculated
  br i1 %exitcond760.not.i.us.i.3, label %.loopexit586.i.us.i, label %.lr.ph689.i.us.i, !llvm.loop !444

_ZN4ncnn3MatD2Ev.exit767.i.us.i:                  ; preds = %.split838.i.us.i
  br i1 %i.aqa, label %.lr.ph677.preheader.i.us.i, label %.loopexit586.i.us.i

.lr.ph677.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit767.i.us.i
  %i.atk = load ptr, ptr %9, align 8, !tbaa !9, !noalias !445
  %i.atl = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !445
  %i.atm = mul i64 %i.atl, %i.apz
  %i.atn = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !445
  %i.ato = mul i64 %i.atm, %i.atn
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atk, i64 %i.ato
  %i.atq = add nsw i64 %indvars.iv761.i.us.i, %i.aqg
  %.idx787.i.us.i = shl nsw i64 %i.atq, 3
  %i.atr = getelementptr inbounds i8, ptr %i.atp, i64 %.idx787.i.us.i
  br label %.lr.ph677.i.us.i

.lr.ph677.i.us.i:                                 ; preds = %.lr.ph677.i.us.i, %.lr.ph677.preheader.i.us.i
  %.25676.i.us.i = phi ptr [ %i.avc, %.lr.ph677.i.us.i ], [ %.20692.i.us.i, %.lr.ph677.preheader.i.us.i ] ; 3 uses
  %.0733675.i.us.i = phi i32 [ %i.avf, %.lr.ph677.i.us.i ], [ 0, %.lr.ph677.preheader.i.us.i ]
  %.0734674.i.us.i = phi ptr [ %i.ave, %.lr.ph677.i.us.i ], [ %i.atr, %.lr.ph677.preheader.i.us.i ] ; 5 uses
  %i.ats = load i64, ptr %.0734674.i.us.i, align 1, !tbaa !20
  %i.att = insertelement <2 x i64> poison, i64 %i.ats, i64 0
  %i.atu = bitcast <2 x i64> %i.att to <8 x i16>
  %i.atv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.atu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atw = bitcast <8 x i16> %i.atv to <4 x float> ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %.0734674.i.us.i, i64 8
  %i.aty = load i64, ptr %i.atx, align 1, !tbaa !20
  %i.atz = insertelement <2 x i64> poison, i64 %i.aty, i64 0
  %i.aua = bitcast <2 x i64> %i.atz to <8 x i16>
  %i.aub = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aua, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.auc = bitcast <8 x i16> %i.aub to <4 x float> ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %.0734674.i.us.i, i64 16
  %i.aue = load i64, ptr %i.aud, align 1, !tbaa !20
  %i.auf = insertelement <2 x i64> poison, i64 %i.aue, i64 0
  %i.aug = bitcast <2 x i64> %i.auf to <8 x i16>
  %i.auh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aug, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aui = bitcast <8 x i16> %i.auh to <4 x float> ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.0734674.i.us.i, i64 24
  %i.auk = load i64, ptr %i.auj, align 1, !tbaa !20
  %i.aul = insertelement <2 x i64> poison, i64 %i.auk, i64 0
  %i.aum = bitcast <2 x i64> %i.aul to <8 x i16>
  %i.aun = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aum, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.auo = bitcast <8 x i16> %i.aun to <4 x float> ; 2 uses
  %i.aup = shufflevector <4 x float> %i.atw, <4 x float> %i.auc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auq = shufflevector <4 x float> %i.aui, <4 x float> %i.auo, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aur = shufflevector <4 x float> %i.atw, <4 x float> %i.auc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aus = shufflevector <4 x float> %i.aui, <4 x float> %i.auo, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aut = shufflevector <4 x float> %i.aup, <4 x float> %i.auq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auu = shufflevector <4 x float> %i.auq, <4 x float> %i.aup, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.auv = shufflevector <4 x float> %i.aur, <4 x float> %i.aus, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auw = shufflevector <4 x float> %i.aus, <4 x float> %i.aur, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aux = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aut)
  %i.auy = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.auu)
  %.uncasted.i.us.i = shufflevector <8 x bfloat> %i.aux, <8 x bfloat> %i.auy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x bfloat> %.uncasted.i.us.i, ptr %.25676.i.us.i, align 1, !tbaa !20
  %i.auz = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.auv)
  %i.ava = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.auw)
  %i.avb = getelementptr inbounds nuw i8, ptr %.25676.i.us.i, i64 16
  %.uncasted581.i.us.i = shufflevector <8 x bfloat> %i.auz, <8 x bfloat> %i.ava, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x bfloat> %.uncasted581.i.us.i, ptr %i.avb, align 1, !tbaa !20
  %i.avc = getelementptr inbounds nuw i8, ptr %.25676.i.us.i, i64 32 ; 2 uses
  %i.avd = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx752.i.us.i = shl i64 %i.avd, 3
  %i.ave = getelementptr inbounds nuw i8, ptr %.0734674.i.us.i, i64 %.idx752.i.us.i
  %i.avf = add nuw nsw i32 %.0733675.i.us.i, 1    ; 2 uses
  %exitcond759.not.i.us.i = icmp eq i32 %i.avf, %36
  br i1 %exitcond759.not.i.us.i, label %.loopexit586.i.us.i, label %.lr.ph677.i.us.i, !llvm.loop !448

_ZN4ncnn3MatD2Ev.exit768.i.us.i:                  ; preds = %.split838.i.us.i
  br i1 %i.apx, label %.lr.ph672.preheader.i.us.i, label %.loopexit586.i.us.i

.lr.ph672.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit768.i.us.i
  %i.avg = load ptr, ptr %9, align 8, !tbaa !9, !noalias !449
  %i.avh = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !449
  %i.avi = mul i64 %i.avh, %i.apw
  %i.avj = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !449
  %i.avk = mul i64 %i.avi, %i.avj
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avg, i64 %i.avk
  %i.avm = add nsw i64 %indvars.iv761.i.us.i, %i.aqg
  %.idx786.i.us.i = shl nsw i64 %i.avm, 4
  %i.avn = getelementptr inbounds i8, ptr %i.avl, i64 %.idx786.i.us.i
  br label %.lr.ph672.i.us.i

.lr.ph672.i.us.i:                                 ; preds = %.lr.ph672.i.us.i, %.lr.ph672.preheader.i.us.i
  %.23671.i.us.i = phi ptr [ %i.aww, %.lr.ph672.i.us.i ], [ %.20692.i.us.i, %.lr.ph672.preheader.i.us.i ] ; 5 uses
  %.0739670.i.us.i = phi i32 [ %i.awz, %.lr.ph672.i.us.i ], [ 0, %.lr.ph672.preheader.i.us.i ]
  %.0740669.i.us.i = phi ptr [ %i.awy, %.lr.ph672.i.us.i ], [ %i.avn, %.lr.ph672.preheader.i.us.i ] ; 5 uses
  %i.avo = load <8 x bfloat>, ptr %.0740669.i.us.i, align 1, !tbaa !20
  %i.avp = fpext fast <8 x bfloat> %i.avo to <8 x float> ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %.0740669.i.us.i, i64 16
  %i.avr = load <8 x bfloat>, ptr %i.avq, align 1, !tbaa !20
  %i.avs = fpext fast <8 x bfloat> %i.avr to <8 x float> ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %.0740669.i.us.i, i64 32
  %i.avu = load <8 x bfloat>, ptr %i.avt, align 1, !tbaa !20
  %i.avv = fpext fast <8 x bfloat> %i.avu to <8 x float> ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %.0740669.i.us.i, i64 48
  %i.avx = load <8 x bfloat>, ptr %i.avw, align 1, !tbaa !20
  %i.avy = fpext fast <8 x bfloat> %i.avx to <8 x float> ; 2 uses
  %i.avz = shufflevector <8 x float> %i.avp, <8 x float> %i.avs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.awa = shufflevector <8 x float> %i.avp, <8 x float> %i.avs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.awb = shufflevector <8 x float> %i.avv, <8 x float> %i.avy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.awc = shufflevector <8 x float> %i.avv, <8 x float> %i.avy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.awd = shufflevector <8 x float> %i.avz, <8 x float> %i.awb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.awe = shufflevector <8 x float> %i.awa, <8 x float> %i.awc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.awf = shufflevector <8 x float> %i.avz, <8 x float> %i.awb, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.awg = shufflevector <8 x float> %i.awa, <8 x float> %i.awc, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.awh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awd)
  %i.awi = bitcast <8 x bfloat> %i.awh to <8 x i16>
  %i.awj = shufflevector <8 x i16> %i.awi, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.awj, ptr %.23671.i.us.i, align 1, !tbaa !20
  %i.awk = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awe)
  %i.awl = getelementptr inbounds nuw i8, ptr %.23671.i.us.i, i64 16
  %i.awm = bitcast <8 x bfloat> %i.awk to <8 x i16>
  %i.awn = shufflevector <8 x i16> %i.awm, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.awn, ptr %i.awl, align 1, !tbaa !20
  %i.awo = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awf)
  %i.awp = getelementptr inbounds nuw i8, ptr %.23671.i.us.i, i64 32
  %i.awq = bitcast <8 x bfloat> %i.awo to <8 x i16>
  %i.awr = shufflevector <8 x i16> %i.awq, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.awr, ptr %i.awp, align 1, !tbaa !20
  %i.aws = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awg)
  %i.awt = getelementptr inbounds nuw i8, ptr %.23671.i.us.i, i64 48
  %i.awu = bitcast <8 x bfloat> %i.aws to <8 x i16>
  %i.awv = shufflevector <8 x i16> %i.awu, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.awv, ptr %i.awt, align 1, !tbaa !20
  %i.aww = getelementptr inbounds nuw i8, ptr %.23671.i.us.i, i64 64 ; 2 uses
  %i.awx = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx753.i.us.i = shl i64 %i.awx, 4
  %i.awy = getelementptr inbounds nuw i8, ptr %.0740669.i.us.i, i64 %.idx753.i.us.i
  %i.awz = add nuw nsw i32 %.0739670.i.us.i, 1    ; 2 uses
  %exitcond758.not.i.us.i = icmp eq i32 %i.awz, %35
  br i1 %exitcond758.not.i.us.i, label %.loopexit586.i.us.i, label %.lr.ph672.i.us.i, !llvm.loop !452

_ZN4ncnn3MatD2Ev.exit769.i.us.i:                  ; preds = %.split838.i.us.i
  br i1 %33, label %.lr.ph667.preheader.i.us.i, label %.loopexit586.i.us.i

.lr.ph667.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit769.i.us.i
  %i.axa = load ptr, ptr %9, align 8, !tbaa !9, !noalias !453
  %i.axb = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !453
  %i.axc = mul i64 %i.axb, %31
  %i.axd = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !453
  %i.axe = mul i64 %i.axc, %i.axd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axa, i64 %i.axe
  %i.axg = add nsw i64 %indvars.iv761.i.us.i, %i.aqg
  %.idx785.i.us.i = shl nsw i64 %i.axg, 5
  %i.axh = getelementptr inbounds i8, ptr %i.axf, i64 %.idx785.i.us.i
  br label %.lr.ph667.i.us.i

.lr.ph667.i.us.i:                                 ; preds = %.lr.ph667.i.us.i, %.lr.ph667.preheader.i.us.i
  %.21666.i.us.i = phi ptr [ %i.baa, %.lr.ph667.i.us.i ], [ %.20692.i.us.i, %.lr.ph667.preheader.i.us.i ] ; 9 uses
  %.0747665.i.us.i = phi ptr [ %i.bac, %.lr.ph667.i.us.i ], [ %i.axh, %.lr.ph667.preheader.i.us.i ] ; 5 uses
  %.0748664.i.us.i = phi i32 [ %i.bad, %.lr.ph667.i.us.i ], [ 0, %.lr.ph667.preheader.i.us.i ]
  %i.axi = load <16 x bfloat>, ptr %.0747665.i.us.i, align 1, !tbaa !20
  %i.axj = fpext fast <16 x bfloat> %i.axi to <16 x float> ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.0747665.i.us.i, i64 32
  %i.axl = load <16 x bfloat>, ptr %i.axk, align 1, !tbaa !20
  %i.axm = fpext fast <16 x bfloat> %i.axl to <16 x float> ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.0747665.i.us.i, i64 64
  %i.axo = load <16 x bfloat>, ptr %i.axn, align 1, !tbaa !20
  %i.axp = fpext fast <16 x bfloat> %i.axo to <16 x float> ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %.0747665.i.us.i, i64 96
  %i.axr = load <16 x bfloat>, ptr %i.axq, align 1, !tbaa !20
  %i.axs = fpext fast <16 x bfloat> %i.axr to <16 x float> ; 2 uses
  %i.axt = shufflevector <16 x float> %i.axj, <16 x float> %i.axm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.axu = shufflevector <16 x float> %i.axj, <16 x float> %i.axm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.axv = shufflevector <16 x float> %i.axp, <16 x float> %i.axs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.axw = shufflevector <16 x float> %i.axp, <16 x float> %i.axs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.axx = shufflevector <16 x float> %i.axt, <16 x float> %i.axv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.axy = shufflevector <16 x float> %i.axu, <16 x float> %i.axw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.axz = shufflevector <16 x float> %i.axt, <16 x float> %i.axv, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aya = shufflevector <16 x float> %i.axu, <16 x float> %i.axw, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ayb = shufflevector <16 x float> %i.axx, <16 x float> %i.axy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ayc = shufflevector <16 x float> %i.axz, <16 x float> %i.aya, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ayd = shufflevector <16 x float> %i.axx, <16 x float> %i.axy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aye = shufflevector <16 x float> %i.axz, <16 x float> %i.aya, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ayf = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ayb)
  %i.ayg = bitcast <16 x bfloat> %i.ayf to <4 x i64> ; 2 uses
  %i.ayh = shufflevector <4 x i64> %i.ayg, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ayi = shufflevector <4 x i64> %i.ayg, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ayj = bitcast <2 x i64> %i.ayh to <8 x i16>
  %i.ayk = bitcast <2 x i64> %i.ayh to <8 x i16>
  %i.ayl = shufflevector <8 x i16> %i.ayj, <8 x i16> %i.ayk, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.ayl, ptr %.21666.i.us.i, align 1, !tbaa !20
  %i.aym = bitcast <2 x i64> %i.ayi to <8 x i16>
  %i.ayn = bitcast <2 x i64> %i.ayi to <8 x i16>
  %i.ayo = shufflevector <8 x i16> %i.aym, <8 x i16> %i.ayn, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.ayp = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 16
  store <8 x i16> %i.ayo, ptr %i.ayp, align 1, !tbaa !20
  %i.ayq = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ayc)
  %i.ayr = bitcast <16 x bfloat> %i.ayq to <4 x i64> ; 2 uses
  %i.ays = shufflevector <4 x i64> %i.ayr, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ayt = shufflevector <4 x i64> %i.ayr, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ayu = bitcast <2 x i64> %i.ays to <8 x i16>
  %i.ayv = bitcast <2 x i64> %i.ays to <8 x i16>
  %i.ayw = shufflevector <8 x i16> %i.ayu, <8 x i16> %i.ayv, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.ayx = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 32
  store <8 x i16> %i.ayw, ptr %i.ayx, align 1, !tbaa !20
  %i.ayy = bitcast <2 x i64> %i.ayt to <8 x i16>
  %i.ayz = bitcast <2 x i64> %i.ayt to <8 x i16>
  %i.aza = shufflevector <8 x i16> %i.ayy, <8 x i16> %i.ayz, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.azb = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 48
  store <8 x i16> %i.aza, ptr %i.azb, align 1, !tbaa !20
  %i.azc = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ayd)
  %i.azd = bitcast <16 x bfloat> %i.azc to <4 x i64> ; 2 uses
  %i.aze = shufflevector <4 x i64> %i.azd, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.azf = shufflevector <4 x i64> %i.azd, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.azg = bitcast <2 x i64> %i.aze to <8 x i16>
  %i.azh = bitcast <2 x i64> %i.aze to <8 x i16>
  %i.azi = shufflevector <8 x i16> %i.azg, <8 x i16> %i.azh, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.azj = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 64
  store <8 x i16> %i.azi, ptr %i.azj, align 1, !tbaa !20
  %i.azk = bitcast <2 x i64> %i.azf to <8 x i16>
  %i.azl = bitcast <2 x i64> %i.azf to <8 x i16>
  %i.azm = shufflevector <8 x i16> %i.azk, <8 x i16> %i.azl, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.azn = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 80
  store <8 x i16> %i.azm, ptr %i.azn, align 1, !tbaa !20
  %i.azo = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aye)
  %i.azp = bitcast <16 x bfloat> %i.azo to <4 x i64> ; 2 uses
  %i.azq = shufflevector <4 x i64> %i.azp, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.azr = shufflevector <4 x i64> %i.azp, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.azs = bitcast <2 x i64> %i.azq to <8 x i16>
  %i.azt = bitcast <2 x i64> %i.azq to <8 x i16>
  %i.azu = shufflevector <8 x i16> %i.azs, <8 x i16> %i.azt, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.azv = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 96
  store <8 x i16> %i.azu, ptr %i.azv, align 1, !tbaa !20
  %i.azw = bitcast <2 x i64> %i.azr to <8 x i16>
  %i.azx = bitcast <2 x i64> %i.azr to <8 x i16>
  %i.azy = shufflevector <8 x i16> %i.azw, <8 x i16> %i.azx, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.azz = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 112
  store <8 x i16> %i.azy, ptr %i.azz, align 1, !tbaa !20
  %i.baa = getelementptr inbounds nuw i8, ptr %.21666.i.us.i, i64 128 ; 2 uses
  %i.bab = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx754.i.us.i = shl i64 %i.bab, 5
  %i.bac = getelementptr inbounds nuw i8, ptr %.0747665.i.us.i, i64 %.idx754.i.us.i
  %i.bad = add nuw nsw i32 %.0748664.i.us.i, 1    ; 2 uses
  %exitcond757.not.i.us.i = icmp eq i32 %i.bad, %32
  br i1 %exitcond757.not.i.us.i, label %.loopexit586.i.us.i, label %.lr.ph667.i.us.i, !llvm.loop !456

.loopexit586.i.us.i:                              ; preds = %.lr.ph689.i.us.i.prol.loopexit, %.lr.ph689.i.us.i, %.lr.ph677.i.us.i, %.lr.ph672.i.us.i, %.lr.ph667.i.us.i, %_ZN4ncnn3MatD2Ev.exit769.i.us.i, %_ZN4ncnn3MatD2Ev.exit768.i.us.i, %_ZN4ncnn3MatD2Ev.exit767.i.us.i, %.preheader585.i.us.i, %.split838.i.us.i
  %.29.i.us.i = phi ptr [ %.20692.i.us.i, %.split838.i.us.i ], [ %.27.lcssa.i.us.i, %.preheader585.i.us.i ], [ %i.avc, %.lr.ph677.i.us.i ], [ %i.baa, %.lr.ph667.i.us.i ], [ %.20692.i.us.i, %_ZN4ncnn3MatD2Ev.exit767.i.us.i ], [ %i.aww, %.lr.ph672.i.us.i ], [ %.20692.i.us.i, %_ZN4ncnn3MatD2Ev.exit768.i.us.i ], [ %.20692.i.us.i, %_ZN4ncnn3MatD2Ev.exit769.i.us.i ], [ %.lcssa264.unr, %.lr.ph689.i.us.i.prol.loopexit ], [ %i.atg, %.lr.ph689.i.us.i ] ; 2 uses
  %indvars.iv.next762.i.us.i = add nuw nsw i64 %indvars.iv761.i.us.i, 4 ; 3 uses
  %i.bae = icmp slt i64 %indvars.iv.next762.i.us.i, %invariant.op836.i.i
  br i1 %i.bae, label %.split838.i.us.i, label %.preheader.loopexit.i.i, !llvm.loop !457

.preheader.loopexit.i.i:                          ; preds = %.loopexit586.i.us.i, %.loopexit586.i.preheader.i
  %.us-phi78.i = phi ptr [ %.10.lcssa.i.i, %.loopexit586.i.preheader.i ], [ %.29.i.us.i, %.loopexit586.i.us.i ]
  %.us-phi79.i = phi i64 [ %i.aqt, %.loopexit586.i.preheader.i ], [ %indvars.iv.next762.i.us.i, %.loopexit586.i.us.i ]
  %i.baf = trunc nsw i64 %.us-phi79.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader590.i.i
  %.2717.lcssa.i.i = phi i32 [ %.1716.lcssa.i.i, %.preheader590.i.i ], [ %i.baf, %.preheader.loopexit.i.i ] ; 2 uses
  %.20.lcssa.i.i = phi ptr [ %.10.lcssa.i.i, %.preheader590.i.i ], [ %.us-phi78.i, %.preheader.loopexit.i.i ]
  %i.bag = icmp slt i32 %.2717.lcssa.i.i, %.sroa.speculated65
  br i1 %i.bag, label %.lr.ph718.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph718.i.i:                                    ; preds = %.preheader.i.i
  %37 = sdiv i32 %i.x, 16
  %38 = sext i32 %37 to i64
  %39 = lshr i32 %.sroa.speculated, 4             ; 3 uses
  %40 = icmp sgt i32 %.sroa.speculated, 15
  %41 = sdiv i32 %i.x, 8
  %i.bah = sext i32 %41 to i64
  %42 = lshr i32 %.sroa.speculated, 3             ; 3 uses
  %i.bai = icmp sgt i32 %.sroa.speculated, 7
  %i.baj = sdiv i32 %i.x, 4
  %i.bak = sext i32 %i.baj to i64
  %43 = lshr i32 %.sroa.speculated, 2             ; 3 uses
  %i.bal = icmp sgt i32 %.sroa.speculated, 3
  %i.bam = sext i32 %i.x to i64
  %i.ban = icmp sgt i32 %.sroa.speculated, 0
  %i.bao = sext i32 %i.v to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %.sroa.speculated65 to i64
  %i.bap = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.baq = icmp eq i32 %i.bap, 1
  %i.bar = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  br i1 %i.baq, label %.split839.i.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

.split839.i.preheader.i:                          ; preds = %.lr.ph718.i.i
  %i.bas = sext i32 %.2717.lcssa.i.i to i64
  %i.bat = add i32 %.sroa.speculated, -1
  %44 = add nsw i32 %43, -1
  %45 = add nsw i32 %42, -1
  %i.bau = add nsw i32 %39, -1
  %xtraiter292 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.bav = icmp ult i32 %i.bat, 7
  %unroll_iter296 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod293.not = icmp eq i32 %xtraiter292, 0
  %lcmp.mod295 = icmp ne i32 %xtraiter292, 0
  %xtraiter298 = and i32 %43, 3                   ; 3 uses
  %i.baw = icmp ult i32 %44, 3
  %unroll_iter303 = and i32 %43, 536870908
  %lcmp.mod300.not = icmp eq i32 %xtraiter298, 0
  %lcmp.mod302 = icmp ne i32 %xtraiter298, 0
  %xtraiter305 = and i32 %42, 3                   ; 3 uses
  %i.bax = icmp ult i32 %45, 3
  %unroll_iter310 = and i32 %42, 268435452
  %lcmp.mod307.not = icmp eq i32 %xtraiter305, 0
  %lcmp.mod309 = icmp ne i32 %xtraiter305, 0
  %xtraiter312 = and i32 %39, 3                   ; 3 uses
  %i.bay = icmp ult i32 %i.bau, 3
  %unroll_iter317 = and i32 %39, 134217724
  %lcmp.mod314.not = icmp eq i32 %xtraiter312, 0
  %lcmp.mod316 = icmp ne i32 %xtraiter312, 0
  br label %.split839.i.i

.split839.i.i:                                    ; preds = %.loopexit.i.i, %.split839.i.preheader.i
  %indvars.iv768.i.i = phi i64 [ %indvars.iv.next769.i.i, %.loopexit.i.i ], [ %i.bas, %.split839.i.preheader.i ] ; 5 uses
  %.30717.i.i = phi ptr [ %.38.i.i, %.loopexit.i.i ], [ %.20.lcssa.i.i, %.split839.i.preheader.i ] ; 13 uses
  switch i32 %i.bar, label %.loopexit.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit765.i.i
    i32 3, label %_ZN4ncnn3MatD2Ev.exit764.i.i
    i32 2, label %_ZN4ncnn3MatD2Ev.exit763.i.i
    i32 0, label %_ZN4ncnn3MatD2Ev.exit.i.i
  ]

_ZN4ncnn3MatD2Ev.exit765.i.i:                     ; preds = %.split839.i.i
  br i1 %40, label %.lr.ph699.preheader.i.i, label %.loopexit.i.i

.lr.ph699.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit765.i.i
  %i.baz = load ptr, ptr %9, align 8, !tbaa !9, !noalias !458
  %i.bba = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !458
  %i.bbb = mul i64 %i.bba, %38
  %i.bbc = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !458
  %i.bbd = mul i64 %i.bbb, %i.bbc
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baz, i64 %i.bbd
  %i.bbf = add nsw i64 %indvars.iv768.i.i, %i.bao
  %.idx788.i.i = shl nsw i64 %i.bbf, 5
  %i.bbg = getelementptr inbounds i8, ptr %i.bbe, i64 %.idx788.i.i ; 2 uses
  br i1 %i.bay, label %.lr.ph699.i.i.epil.preheader, label %.lr.ph699.i.i

.lr.ph699.i.i:                                    ; preds = %.lr.ph699.preheader.i.i, %.lr.ph699.i.i
  %.0713697.i.i = phi ptr [ %i.bbw, %.lr.ph699.i.i ], [ %i.bbg, %.lr.ph699.preheader.i.i ] ; 2 uses
  %.31696.i.i = phi ptr [ %i.bbu, %.lr.ph699.i.i ], [ %.30717.i.i, %.lr.ph699.preheader.i.i ] ; 5 uses
  %niter318 = phi i32 [ %niter318.next.3, %.lr.ph699.i.i ], [ 0, %.lr.ph699.preheader.i.i ]
  %i.bbh = load <4 x i64>, ptr %.0713697.i.i, align 1, !tbaa !20
  store <4 x i64> %i.bbh, ptr %.31696.i.i, align 1, !tbaa !20
  %i.bbi = getelementptr inbounds nuw i8, ptr %.31696.i.i, i64 32
  %i.bbj = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx750.i.i = shl i64 %i.bbj, 5
  %i.bbk = getelementptr inbounds nuw i8, ptr %.0713697.i.i, i64 %.idx750.i.i ; 2 uses
  %i.bbl = load <4 x i64>, ptr %i.bbk, align 1, !tbaa !20
  store <4 x i64> %i.bbl, ptr %i.bbi, align 1, !tbaa !20
  %i.bbm = getelementptr inbounds nuw i8, ptr %.31696.i.i, i64 64
  %i.bbn = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx750.i.i.1 = shl i64 %i.bbn, 5
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %.idx750.i.i.1 ; 2 uses
  %i.bbp = load <4 x i64>, ptr %i.bbo, align 1, !tbaa !20
  store <4 x i64> %i.bbp, ptr %i.bbm, align 1, !tbaa !20
  %i.bbq = getelementptr inbounds nuw i8, ptr %.31696.i.i, i64 96
  %i.bbr = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx750.i.i.2 = shl i64 %i.bbr, 5
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %.idx750.i.i.2 ; 2 uses
  %i.bbt = load <4 x i64>, ptr %i.bbs, align 1, !tbaa !20
  store <4 x i64> %i.bbt, ptr %i.bbq, align 1, !tbaa !20
  %i.bbu = getelementptr inbounds nuw i8, ptr %.31696.i.i, i64 128 ; 3 uses
  %i.bbv = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx750.i.i.3 = shl i64 %i.bbv, 5
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %.idx750.i.i.3 ; 2 uses
  %niter318.next.3 = add i32 %niter318, 4         ; 2 uses
  %niter318.ncmp.3 = icmp eq i32 %niter318.next.3, %unroll_iter317
  br i1 %niter318.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph699.i.i, !llvm.loop !461

_ZN4ncnn3MatD2Ev.exit764.i.i:                     ; preds = %.split839.i.i
  br i1 %i.bai, label %.lr.ph704.preheader.i.i, label %.loopexit.i.i

.lr.ph704.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit764.i.i
  %i.bbx = load ptr, ptr %9, align 8, !tbaa !9, !noalias !462
  %i.bby = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !462
  %i.bbz = mul i64 %i.bby, %i.bah
  %i.bca = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !462
  %i.bcb = mul i64 %i.bbz, %i.bca
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbx, i64 %i.bcb
  %i.bcd = add nsw i64 %indvars.iv768.i.i, %i.bao
  %.idx789.i.i = shl nsw i64 %i.bcd, 4
  %i.bce = getelementptr inbounds i8, ptr %i.bcc, i64 %.idx789.i.i ; 2 uses
  br i1 %i.bax, label %.lr.ph704.i.i.epil.preheader, label %.lr.ph704.i.i

.lr.ph704.i.i:                                    ; preds = %.lr.ph704.preheader.i.i, %.lr.ph704.i.i
  %.0711702.i.i = phi ptr [ %i.bcu, %.lr.ph704.i.i ], [ %i.bce, %.lr.ph704.preheader.i.i ] ; 2 uses
  %.33701.i.i = phi ptr [ %i.bcs, %.lr.ph704.i.i ], [ %.30717.i.i, %.lr.ph704.preheader.i.i ] ; 5 uses
  %niter311 = phi i32 [ %niter311.next.3, %.lr.ph704.i.i ], [ 0, %.lr.ph704.preheader.i.i ]
  %i.bcf = load <2 x i64>, ptr %.0711702.i.i, align 1, !tbaa !20
  store <2 x i64> %i.bcf, ptr %.33701.i.i, align 1, !tbaa !20
  %i.bcg = getelementptr inbounds nuw i8, ptr %.33701.i.i, i64 16
  %i.bch = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i = shl i64 %i.bch, 4
  %i.bci = getelementptr inbounds nuw i8, ptr %.0711702.i.i, i64 %.idx749.i.i ; 2 uses
  %i.bcj = load <2 x i64>, ptr %i.bci, align 1, !tbaa !20
  store <2 x i64> %i.bcj, ptr %i.bcg, align 1, !tbaa !20
  %i.bck = getelementptr inbounds nuw i8, ptr %.33701.i.i, i64 32
  %i.bcl = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i.1 = shl i64 %i.bcl, 4
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bci, i64 %.idx749.i.i.1 ; 2 uses
  %i.bcn = load <2 x i64>, ptr %i.bcm, align 1, !tbaa !20
  store <2 x i64> %i.bcn, ptr %i.bck, align 1, !tbaa !20
  %i.bco = getelementptr inbounds nuw i8, ptr %.33701.i.i, i64 48
  %i.bcp = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i.2 = shl i64 %i.bcp, 4
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcm, i64 %.idx749.i.i.2 ; 2 uses
  %i.bcr = load <2 x i64>, ptr %i.bcq, align 1, !tbaa !20
  store <2 x i64> %i.bcr, ptr %i.bco, align 1, !tbaa !20
  %i.bcs = getelementptr inbounds nuw i8, ptr %.33701.i.i, i64 64 ; 3 uses
  %i.bct = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i.3 = shl i64 %i.bct, 4
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcq, i64 %.idx749.i.i.3 ; 2 uses
  %niter311.next.3 = add i32 %niter311, 4         ; 2 uses
  %niter311.ncmp.3 = icmp eq i32 %niter311.next.3, %unroll_iter310
  br i1 %niter311.ncmp.3, label %.loopexit.i.i.loopexit234.unr-lcssa, label %.lr.ph704.i.i, !llvm.loop !465

_ZN4ncnn3MatD2Ev.exit763.i.i:                     ; preds = %.split839.i.i
  br i1 %i.bal, label %.lr.ph709.preheader.i.i, label %.loopexit.i.i

.lr.ph709.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit763.i.i
  %i.bcv = load ptr, ptr %9, align 8, !tbaa !9, !noalias !466
  %i.bcw = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !466
  %i.bcx = mul i64 %i.bcw, %i.bak
  %i.bcy = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !466
  %i.bcz = mul i64 %i.bcx, %i.bcy
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcv, i64 %i.bcz
  %i.bdb = add nsw i64 %indvars.iv768.i.i, %i.bao
  %.idx790.i.i = shl nsw i64 %i.bdb, 3
  %i.bdc = getelementptr inbounds i8, ptr %i.bda, i64 %.idx790.i.i ; 2 uses
  br i1 %i.baw, label %.lr.ph709.i.i.epil.preheader, label %.lr.ph709.i.i

.lr.ph709.i.i:                                    ; preds = %.lr.ph709.preheader.i.i, %.lr.ph709.i.i
  %.0709707.i.i = phi ptr [ %i.bds, %.lr.ph709.i.i ], [ %i.bdc, %.lr.ph709.preheader.i.i ] ; 2 uses
  %.35706.i.i = phi ptr [ %i.bdq, %.lr.ph709.i.i ], [ %.30717.i.i, %.lr.ph709.preheader.i.i ] ; 5 uses
  %niter304 = phi i32 [ %niter304.next.3, %.lr.ph709.i.i ], [ 0, %.lr.ph709.preheader.i.i ]
  %i.bdd = load i64, ptr %.0709707.i.i, align 1, !tbaa !20
  store i64 %i.bdd, ptr %.35706.i.i, align 1, !tbaa !20
  %i.bde = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 8
  %i.bdf = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i = shl i64 %i.bdf, 3
  %i.bdg = getelementptr inbounds nuw i8, ptr %.0709707.i.i, i64 %.idx.i.i ; 2 uses
  %i.bdh = load i64, ptr %i.bdg, align 1, !tbaa !20
  store i64 %i.bdh, ptr %i.bde, align 1, !tbaa !20
  %i.bdi = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 16
  %i.bdj = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.1 = shl i64 %i.bdj, 3
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %.idx.i.i.1 ; 2 uses
  %i.bdl = load i64, ptr %i.bdk, align 1, !tbaa !20
  store i64 %i.bdl, ptr %i.bdi, align 1, !tbaa !20
  %i.bdm = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 24
  %i.bdn = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.2 = shl i64 %i.bdn, 3
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %.idx.i.i.2 ; 2 uses
  %i.bdp = load i64, ptr %i.bdo, align 1, !tbaa !20
  store i64 %i.bdp, ptr %i.bdm, align 1, !tbaa !20
  %i.bdq = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 32 ; 3 uses
  %i.bdr = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.3 = shl i64 %i.bdr, 3
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.idx.i.i.3 ; 2 uses
  %niter304.next.3 = add i32 %niter304, 4         ; 2 uses
  %niter304.ncmp.3 = icmp eq i32 %niter304.next.3, %unroll_iter303
  br i1 %niter304.ncmp.3, label %.loopexit.i.i.loopexit235.unr-lcssa, label %.lr.ph709.i.i, !llvm.loop !469

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %.split839.i.i
  br i1 %i.ban, label %.lr.ph714.i.i, label %.loopexit.i.i

.lr.ph714.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i
  %i.bdt = load ptr, ptr %9, align 8, !tbaa !9, !noalias !470
  %i.bdu = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !470 ; 10 uses
  %i.bdv = mul i64 %i.bdu, %i.bam
  %i.bdw = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !470
  %i.bdx = mul i64 %i.bdv, %i.bdw
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdt, i64 %i.bdx
  %i.bdz = getelementptr [2 x i8], ptr %i.bdy, i64 %indvars.iv768.i.i
  %i.bea = getelementptr [2 x i8], ptr %i.bdz, i64 %i.bao ; 2 uses
  br i1 %i.bav, label %.epil.preheader, label %.lr.ph714.i.i.new

.lr.ph714.i.i.new:                                ; preds = %.lr.ph714.i.i, %.lr.ph714.i.i.new
  %.0707712.i.i = phi ptr [ %i.bey, %.lr.ph714.i.i.new ], [ %i.bea, %.lr.ph714.i.i ] ; 2 uses
  %.37711.i.i = phi ptr [ %i.bex, %.lr.ph714.i.i.new ], [ %.30717.i.i, %.lr.ph714.i.i ] ; 9 uses
  %niter297 = phi i32 [ %niter297.next.7, %.lr.ph714.i.i.new ], [ 0, %.lr.ph714.i.i ]
  %i.beb = load i16, ptr %.0707712.i.i, align 2, !tbaa !76
  store i16 %i.beb, ptr %.37711.i.i, align 2, !tbaa !76
  %i.bec = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 2
  %i.bed = getelementptr inbounds nuw [2 x i8], ptr %.0707712.i.i, i64 %i.bdu ; 2 uses
  %i.bee = load i16, ptr %i.bed, align 2, !tbaa !76
  store i16 %i.bee, ptr %i.bec, align 2, !tbaa !76
  %i.bef = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 4
  %i.beg = getelementptr inbounds nuw [2 x i8], ptr %i.bed, i64 %i.bdu ; 2 uses
  %i.beh = load i16, ptr %i.beg, align 2, !tbaa !76
  store i16 %i.beh, ptr %i.bef, align 2, !tbaa !76
  %i.bei = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 6
  %i.bej = getelementptr inbounds nuw [2 x i8], ptr %i.beg, i64 %i.bdu ; 2 uses
  %i.bek = load i16, ptr %i.bej, align 2, !tbaa !76
  store i16 %i.bek, ptr %i.bei, align 2, !tbaa !76
  %i.bel = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 8
  %i.bem = getelementptr inbounds nuw [2 x i8], ptr %i.bej, i64 %i.bdu ; 2 uses
  %i.ben = load i16, ptr %i.bem, align 2, !tbaa !76
  store i16 %i.ben, ptr %i.bel, align 2, !tbaa !76
  %i.beo = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 10
  %i.bep = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %i.bdu ; 2 uses
  %i.beq = load i16, ptr %i.bep, align 2, !tbaa !76
  store i16 %i.beq, ptr %i.beo, align 2, !tbaa !76
  %i.ber = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 12
  %i.bes = getelementptr inbounds nuw [2 x i8], ptr %i.bep, i64 %i.bdu ; 2 uses
  %i.bet = load i16, ptr %i.bes, align 2, !tbaa !76
  store i16 %i.bet, ptr %i.ber, align 2, !tbaa !76
  %i.beu = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 14
  %i.bev = getelementptr inbounds nuw [2 x i8], ptr %i.bes, i64 %i.bdu ; 2 uses
  %i.bew = load i16, ptr %i.bev, align 2, !tbaa !76
  store i16 %i.bew, ptr %i.beu, align 2, !tbaa !76
  %i.bex = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 16 ; 3 uses
  %i.bey = getelementptr inbounds nuw [2 x i8], ptr %i.bev, i64 %i.bdu ; 2 uses
  %niter297.next.7 = add i32 %niter297, 8         ; 2 uses
  %niter297.ncmp.7 = icmp eq i32 %niter297.next.7, %unroll_iter296
  br i1 %niter297.ncmp.7, label %.loopexit.i.i.loopexit236.unr-lcssa, label %.lr.ph714.i.i.new, !llvm.loop !473

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph699.i.i
  br i1 %lcmp.mod314.not, label %.loopexit.i.i, label %.lr.ph699.i.i.epil.preheader

.lr.ph699.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph699.preheader.i.i
  %.0713697.i.i.epil.init = phi ptr [ %i.bbg, %.lr.ph699.preheader.i.i ], [ %i.bbw, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.31696.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph699.preheader.i.i ], [ %i.bbu, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph699.i.i.epil

.lr.ph699.i.i.epil:                               ; preds = %.lr.ph699.i.i.epil, %.lr.ph699.i.i.epil.preheader
  %.0713697.i.i.epil = phi ptr [ %i.bfc, %.lr.ph699.i.i.epil ], [ %.0713697.i.i.epil.init, %.lr.ph699.i.i.epil.preheader ] ; 2 uses
  %.31696.i.i.epil = phi ptr [ %i.bfa, %.lr.ph699.i.i.epil ], [ %.31696.i.i.epil.init, %.lr.ph699.i.i.epil.preheader ] ; 2 uses
  %epil.iter313 = phi i32 [ %epil.iter313.next, %.lr.ph699.i.i.epil ], [ 0, %.lr.ph699.i.i.epil.preheader ]
  %i.bez = load <4 x i64>, ptr %.0713697.i.i.epil, align 1, !tbaa !20
  store <4 x i64> %i.bez, ptr %.31696.i.i.epil, align 1, !tbaa !20
  %i.bfa = getelementptr inbounds nuw i8, ptr %.31696.i.i.epil, i64 32 ; 2 uses
  %i.bfb = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx750.i.i.epil = shl i64 %i.bfb, 5
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0713697.i.i.epil, i64 %.idx750.i.i.epil
  %epil.iter313.next = add i32 %epil.iter313, 1   ; 2 uses
  %epil.iter313.cmp.not = icmp eq i32 %epil.iter313.next, %xtraiter312
  br i1 %epil.iter313.cmp.not, label %.loopexit.i.i, label %.lr.ph699.i.i.epil, !llvm.loop !474

.loopexit.i.i.loopexit234.unr-lcssa:              ; preds = %.lr.ph704.i.i
  br i1 %lcmp.mod307.not, label %.loopexit.i.i, label %.lr.ph704.i.i.epil.preheader

.lr.ph704.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit234.unr-lcssa, %.lr.ph704.preheader.i.i
  %.0711702.i.i.epil.init = phi ptr [ %i.bce, %.lr.ph704.preheader.i.i ], [ %i.bcu, %.loopexit.i.i.loopexit234.unr-lcssa ]
  %.33701.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph704.preheader.i.i ], [ %i.bcs, %.loopexit.i.i.loopexit234.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod309)
  br label %.lr.ph704.i.i.epil

.lr.ph704.i.i.epil:                               ; preds = %.lr.ph704.i.i.epil, %.lr.ph704.i.i.epil.preheader
  %.0711702.i.i.epil = phi ptr [ %i.bfg, %.lr.ph704.i.i.epil ], [ %.0711702.i.i.epil.init, %.lr.ph704.i.i.epil.preheader ] ; 2 uses
  %.33701.i.i.epil = phi ptr [ %i.bfe, %.lr.ph704.i.i.epil ], [ %.33701.i.i.epil.init, %.lr.ph704.i.i.epil.preheader ] ; 2 uses
  %epil.iter306 = phi i32 [ %epil.iter306.next, %.lr.ph704.i.i.epil ], [ 0, %.lr.ph704.i.i.epil.preheader ]
  %i.bfd = load <2 x i64>, ptr %.0711702.i.i.epil, align 1, !tbaa !20
  store <2 x i64> %i.bfd, ptr %.33701.i.i.epil, align 1, !tbaa !20
  %i.bfe = getelementptr inbounds nuw i8, ptr %.33701.i.i.epil, i64 16 ; 2 uses
  %i.bff = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i.epil = shl i64 %i.bff, 4
  %i.bfg = getelementptr inbounds nuw i8, ptr %.0711702.i.i.epil, i64 %.idx749.i.i.epil
  %epil.iter306.next = add i32 %epil.iter306, 1   ; 2 uses
  %epil.iter306.cmp.not = icmp eq i32 %epil.iter306.next, %xtraiter305
  br i1 %epil.iter306.cmp.not, label %.loopexit.i.i, label %.lr.ph704.i.i.epil, !llvm.loop !475

.loopexit.i.i.loopexit235.unr-lcssa:              ; preds = %.lr.ph709.i.i
  br i1 %lcmp.mod300.not, label %.loopexit.i.i, label %.lr.ph709.i.i.epil.preheader

.lr.ph709.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit235.unr-lcssa, %.lr.ph709.preheader.i.i
  %.0709707.i.i.epil.init = phi ptr [ %i.bdc, %.lr.ph709.preheader.i.i ], [ %i.bds, %.loopexit.i.i.loopexit235.unr-lcssa ]
  %.35706.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph709.preheader.i.i ], [ %i.bdq, %.loopexit.i.i.loopexit235.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod302)
  br label %.lr.ph709.i.i.epil

.lr.ph709.i.i.epil:                               ; preds = %.lr.ph709.i.i.epil, %.lr.ph709.i.i.epil.preheader
  %.0709707.i.i.epil = phi ptr [ %i.bfk, %.lr.ph709.i.i.epil ], [ %.0709707.i.i.epil.init, %.lr.ph709.i.i.epil.preheader ] ; 2 uses
  %.35706.i.i.epil = phi ptr [ %i.bfi, %.lr.ph709.i.i.epil ], [ %.35706.i.i.epil.init, %.lr.ph709.i.i.epil.preheader ] ; 2 uses
  %epil.iter299 = phi i32 [ %epil.iter299.next, %.lr.ph709.i.i.epil ], [ 0, %.lr.ph709.i.i.epil.preheader ]
end_hunk_0
