Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn57convolution_im2col_gemm_transform_kernel_bf16s_avx512bf16ERKNS_3MatERS0_iiiiRKNS_6OptionE:bb.a
  %i.hm = atomicrmw add ptr %i.hl, i32 -1 acq_rel, align 4
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit68.i

bb.ar:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !46 ; 3 uses
  %.not3.i87.i = icmp eq ptr %i.hp, null
  %i.hq = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i87.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.hq)
          to label %_ZN4ncnn3MatD2Ev.exit68.i unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %.not.i101.i = icmp eq ptr %i.hq, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.hq) #10
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.av:                                            ; preds = %bb.as
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit68.i:                        ; preds = %bb.ap, %bb.aq, %bb.as, %bb.at, %bb.au, %bb.ao
  %.pn.pn.i = phi { ptr, i32 } [ %i.hi, %bb.ao ], [ %i.hj, %bb.au ], [ %i.hj, %bb.at ], [ %i.hj, %bb.as ], [ %i.hj, %bb.aq ], [ %i.hj, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.bf

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit69.i, %_ZN4ncnn3MatD2Ev.exit72.i
  %i.hw = load i32, ptr %i.d, align 4, !tbaa !30  ; 2 uses
  %i.hx = load i32, ptr %i.c, align 4, !tbaa !30  ; 2 uses
  %i.hy = mul nsw i32 %i.hx, %i.hw
  %i.hz = load i32, ptr %i.b, align 4, !tbaa !30
  %i.ia = load i32, ptr %i.a, align 4, !tbaa !30
  %i.ib = insertelement <2 x i32> poison, i32 %i.hw, i64 0
  %i.ic = insertelement <2 x i32> %i.ib, i32 %i.hx, i64 1 ; 2 uses
  %i.id = add <2 x i32> %i.ic, splat (i32 -1)
  %i.ie = insertelement <2 x i32> poison, i32 %i.hz, i64 0
  %i.if = insertelement <2 x i32> %i.ie, i32 %i.ia, i64 1
  %i.ig = add <2 x i32> %i.id, %i.if
  %i.ih = sdiv <2 x i32> %i.ig, %i.ic             ; 2 uses
  %i.ii = extractelement <2 x i32> %i.ih, i64 0
  %i.ij = extractelement <2 x i32> %i.ih, i64 1
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.hy, i32 noundef %i.ii, i32 noundef %i.ij, i64 noundef 2, ptr noundef null)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.ik = load i32, ptr %i.i, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ik)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %7)
  %i.il = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i90.i = icmp eq ptr %i.il, null
  br i1 %.not.i90.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.im = atomicrmw add ptr %i.il, i32 -1 acq_rel, align 4
  %i.in = icmp eq i32 %i.im, 1
  br i1 %i.in, label %bb.az, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.az:                                            ; preds = %bb.ay
  %i.io = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i91.i = icmp eq ptr %i.io, null
  %i.ip = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i91.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !48
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  invoke void %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef %i.ip)
          to label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit unwind label %bb.bd, !inline_history !0

bb.bb:                                            ; preds = %bb.az
  %.not.i99.i = icmp eq ptr %i.ip, null
  br i1 %.not.i99.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.ip) #10
  br label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.bd:                                            ; preds = %bb.ba
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #26
  unreachable

bb.be:                                            ; preds = %bb.aw
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4ncnn3MatD2Ev.exit68.i, %_ZN4ncnn3MatD2Ev.exit71.i
  %.pn65.i = phi { ptr, i32 } [ %i.iv, %bb.be ], [ %.pn63.i, %_ZN4ncnn3MatD2Ev.exit71.i ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit68.i ]
  %i.iw = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i94.i = icmp eq ptr %i.iw, null
  br i1 %.not.i94.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ix = atomicrmw add ptr %i.iw, i32 -1 acq_rel, align 4
  %i.iy = icmp eq i32 %i.ix, 1
  br i1 %i.iy, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.iz = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i95.i = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i95.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jb = load ptr, ptr %i.iz, align 8, !tbaa !48
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef %i.ja)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bl, !inline_history !0

bb.bj:                                            ; preds = %bb.bh
  %.not.i98.i = icmp eq ptr %i.ja, null
  br i1 %.not.i98.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ja) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  resume { ptr, i32 } %.pn65.i

_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit: ; preds = %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.h = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !30
  %i.k = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not106 = icmp sgt i32 %i.k, %i.j
  br i1 %.not106, label %._crit_edge109.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !30     ; 3 uses
  %i.m = load i32, ptr %5, align 4, !tbaa !30     ; 5 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.split, label %._crit_edge109.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %4, align 4, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = load i32, ptr %6, align 4, !tbaa !30     ; 7 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !31, !noalias !399
  %i.v = load ptr, ptr %7, align 8, !tbaa !15, !noalias !399
  %i.w = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !399
  %i.x = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !399 ; 2 uses
  %factor.op.mul = mul i64 %i.w, %i.x
  %i.y = sext i32 %i.u to i64
  %i.z = mul i64 %i.x, %i.y
  %.val38 = load i32, ptr %i.p, align 4, !tbaa !31 ; 2 uses
  %i.aa = sext i32 %.val38 to i64                 ; 33 uses
  %i.ab = sext i32 %i.t to i64
  %i.ac = zext nneg i32 %i.m to i64
  %i.ad = sext i32 %i.k to i64
  %i.ae = sext i32 %i.l to i64
  %i.af = add nsw i32 %i.j, 1
  %ident.check.not = icmp eq i32 %.val38, 1
  br label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %.lr.ph.split, %._crit_edge
  %indvars.iv152 = phi i64 [ %i.ad, %.lr.ph.split ], [ %indvars.iv.next153, %._crit_edge ] ; 2 uses
  %i.ag = mul i64 %indvars.iv152, %i.ae           ; 10 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = sub i32 %i.o, %i.ah
  %.sroa.speculated60 = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.ai) ; 8 uses
  %i.aj = trunc nsw i64 %i.ag to i32
  %i.ak = sdiv i32 %i.aj, %i.l
  %i.al = sext i32 %i.ak to i64
  %.reass = mul i64 %factor.op.mul, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass
  %i.an = icmp sgt i32 %.sroa.speculated60, 15
  %i.ao = zext nneg i32 %.sroa.speculated60 to i64
  %i.ap = sext i32 %.sroa.speculated60 to i64     ; 4 uses
  %invariant.op.i = add nsw i64 %i.ap, -7
  %invariant.op382.i = add nsw i64 %i.ap, -3
  %i.aq = add i32 %.sroa.speculated60, -2
  %invariant.op383.i = add nsw i64 %i.ap, -1      ; 3 uses
  br label %.noexc

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next153 to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge109.split, label %.noexc.lr.ph

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.noexc.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 8 uses
  %i.ar = mul i32 %i.t, %indvar
  %i.as = sub i32 %i.m, %i.ar
  %smin294 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.as) ; 2 uses
  %i.at = and i32 %smin294, 2147483646
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %smin294, %i.au                 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 5 uses
  %i.ay = mul i32 %i.t, %indvar
  %i.az = sub i32 %i.m, %i.ay
  %smin = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.az)
  %i.ba = add i32 %smin, -2                       ; 7 uses
  %i.bb = lshr i32 %i.ba, 1
  %narrow622 = add nuw i32 %i.bb, 1
  %i.bc = zext i32 %narrow622 to i64              ; 15 uses
  %i.bd = trunc i64 %indvars.iv to i32
  %i.be = sub i32 %i.m, %i.bd
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.be) ; 29 uses
  %i.bf = trunc nsw i64 %indvars.iv to i32
  %i.bg = sdiv i32 %i.bf, %i.t
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.z, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bi ; 2 uses
  %.val = load ptr, ptr %8, align 8               ; 5 uses
  br i1 %i.an, label %.lr.ph69.i, label %.preheader9.i

.lr.ph69.i:                                       ; preds = %.noexc
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 16 uses
  %i.bk = icmp sgt i32 %.sroa.speculated, 1
  %i.bl = and i32 %.sroa.speculated, -2
  br label %bb.c

.preheader9.loopexit.i:                           ; preds = %._crit_edge.i
  %i.bm = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader9.i

.preheader9.i:                                    ; preds = %.preheader9.loopexit.i, %.noexc
  %.0531.lcssa.i = phi ptr [ %i.bj, %.noexc ], [ %.2533.lcssa.i, %.preheader9.loopexit.i ] ; 2 uses
  %.0529.lcssa.i = phi i32 [ 0, %.noexc ], [ %i.bm, %.preheader9.loopexit.i ] ; 3 uses
  %i.bn = or disjoint i32 %.0529.lcssa.i, 7
  %i.bo = icmp slt i32 %i.bn, %.sroa.speculated60
  br i1 %i.bo, label %.lr.ph139.i, label %.preheader7.i

.lr.ph139.i:                                      ; preds = %.preheader9.i
  %invariant.gep142.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 8 uses
  %i.bp = icmp sgt i32 %.sroa.speculated, 1
  %i.bq = and i32 %.sroa.speculated, -2
  %i.br = zext nneg i32 %.0529.lcssa.i to i64
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph69.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph69.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.053166.i = phi ptr [ %i.bj, %.lr.ph69.i ], [ %.2533.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bs = add nsw i64 %indvars.iv.i, %i.ag        ; 16 uses
  %i.bt = mul nsw i64 %i.bs, %i.aa
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bt ; 2 uses
  %i.bu = add nsw i64 %i.bs, 1
  %i.bv = mul nsw i64 %i.bu, %i.aa
  %gep73.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bv ; 2 uses
  %i.bw = add nsw i64 %i.bs, 2
  %i.bx = mul nsw i64 %i.bw, %i.aa
  %gep75.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bx ; 2 uses
  %i.by = add nsw i64 %i.bs, 3
  %i.bz = mul nsw i64 %i.by, %i.aa
  %gep77.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bz ; 2 uses
  %i.ca = add nsw i64 %i.bs, 4
  %i.cb = mul nsw i64 %i.ca, %i.aa
  %gep79.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cb ; 2 uses
  %i.cc = add nsw i64 %i.bs, 5
  %i.cd = mul nsw i64 %i.cc, %i.aa
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cd ; 2 uses
  %i.ce = add nsw i64 %i.bs, 6
  %i.cf = mul nsw i64 %i.ce, %i.aa
  %gep83.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cf ; 2 uses
  %i.cg = add nsw i64 %i.bs, 7
  %i.ch = mul nsw i64 %i.cg, %i.aa
  %gep85.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ch ; 2 uses
  %i.ci = add nsw i64 %i.bs, 8
  %i.cj = mul nsw i64 %i.ci, %i.aa
  %gep87.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cj ; 2 uses
  %i.ck = add nsw i64 %i.bs, 9
  %i.cl = mul nsw i64 %i.ck, %i.aa
  %gep89.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cl ; 2 uses
  %i.cm = add nsw i64 %i.bs, 10
  %i.cn = mul nsw i64 %i.cm, %i.aa
  %gep91.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cn ; 2 uses
  %i.co = add nsw i64 %i.bs, 11
  %i.cp = mul nsw i64 %i.co, %i.aa
  %gep93.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cp ; 2 uses
  %i.cq = add nsw i64 %i.bs, 12
  %i.cr = mul nsw i64 %i.cq, %i.aa
  %gep95.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cr ; 2 uses
  %i.cs = add nsw i64 %i.bs, 13
  %i.ct = mul nsw i64 %i.cs, %i.aa
  %gep97.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ct ; 2 uses
  %i.cu = add nsw i64 %i.bs, 14
  %i.cv = mul nsw i64 %i.cu, %i.aa
  %gep99.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cv ; 2 uses
  %i.cw = add nsw i64 %i.bs, 15
  %i.cx = mul nsw i64 %i.cw, %i.aa
  %gep101.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cx ; 2 uses
  br i1 %i.bk, label %.lr.ph.i, label %.preheader10.i

.preheader10.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.1532.lcssa.i = phi ptr [ %.053166.i, %bb.c ], [ %i.eu, %.lr.ph.i ] ; 2 uses
  %.0527.lcssa.i = phi ptr [ %gep.i, %bb.c ], [ %i.ev, %.lr.ph.i ]
  %.0525.lcssa.i = phi ptr [ %gep73.i, %bb.c ], [ %i.ew, %.lr.ph.i ]
  %.0523.lcssa.i = phi ptr [ %gep75.i, %bb.c ], [ %i.ex, %.lr.ph.i ]
  %.0521.lcssa.i = phi ptr [ %gep77.i, %bb.c ], [ %i.ey, %.lr.ph.i ]
  %.0519.lcssa.i = phi ptr [ %gep79.i, %bb.c ], [ %i.ez, %.lr.ph.i ]
  %.0517.lcssa.i = phi ptr [ %gep81.i, %bb.c ], [ %i.fa, %.lr.ph.i ]
  %.0515.lcssa.i = phi ptr [ %gep83.i, %bb.c ], [ %i.fb, %.lr.ph.i ]
  %.0513.lcssa.i = phi ptr [ %gep85.i, %bb.c ], [ %i.fc, %.lr.ph.i ]
  %.0511.lcssa.i = phi ptr [ %gep87.i, %bb.c ], [ %i.fd, %.lr.ph.i ]
  %.0509.lcssa.i = phi ptr [ %gep89.i, %bb.c ], [ %i.fe, %.lr.ph.i ]
  %.0507.lcssa.i = phi ptr [ %gep91.i, %bb.c ], [ %i.ff, %.lr.ph.i ]
  %.0505.lcssa.i = phi ptr [ %gep93.i, %bb.c ], [ %i.fg, %.lr.ph.i ]
  %.0503.lcssa.i = phi ptr [ %gep95.i, %bb.c ], [ %i.fh, %.lr.ph.i ]
  %.0501.lcssa.i = phi ptr [ %gep97.i, %bb.c ], [ %i.fi, %.lr.ph.i ]
  %.0499.lcssa.i = phi ptr [ %gep99.i, %bb.c ], [ %i.fj, %.lr.ph.i ]
  %.0497.lcssa.i = phi ptr [ %gep101.i, %bb.c ], [ %i.fk, %.lr.ph.i ]
  %.0495.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bl, %.lr.ph.i ] ; 2 uses
  %i.cy = icmp slt i32 %.0495.lcssa.i, %.sroa.speculated
  br i1 %i.cy, label %.lr.ph64.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.049528.i = phi i32 [ %i.fl, %.lr.ph.i ], [ 0, %bb.c ]
  %.049727.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %gep101.i, %bb.c ] ; 2 uses
  %.049926.i = phi ptr [ %i.fj, %.lr.ph.i ], [ %gep99.i, %bb.c ] ; 2 uses
  %.050125.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %gep97.i, %bb.c ] ; 2 uses
  %.050324.i = phi ptr [ %i.fh, %.lr.ph.i ], [ %gep95.i, %bb.c ] ; 2 uses
  %.050523.i = phi ptr [ %i.fg, %.lr.ph.i ], [ %gep93.i, %bb.c ] ; 2 uses
  %.050722.i = phi ptr [ %i.ff, %.lr.ph.i ], [ %gep91.i, %bb.c ] ; 2 uses
  %.050921.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %gep89.i, %bb.c ] ; 2 uses
  %.051120.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %gep87.i, %bb.c ] ; 2 uses
  %.051319.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %gep85.i, %bb.c ] ; 2 uses
  %.051518.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %gep83.i, %bb.c ] ; 2 uses
  %.051717.i = phi ptr [ %i.fa, %.lr.ph.i ], [ %gep81.i, %bb.c ] ; 2 uses
  %.051916.i = phi ptr [ %i.ez, %.lr.ph.i ], [ %gep79.i, %bb.c ] ; 2 uses
  %.052115.i = phi ptr [ %i.ey, %.lr.ph.i ], [ %gep77.i, %bb.c ] ; 2 uses
  %.052314.i = phi ptr [ %i.ex, %.lr.ph.i ], [ %gep75.i, %bb.c ] ; 2 uses
  %.052513.i = phi ptr [ %i.ew, %.lr.ph.i ], [ %gep73.i, %bb.c ] ; 2 uses
  %.052712.i = phi ptr [ %i.ev, %.lr.ph.i ], [ %gep.i, %bb.c ] ; 2 uses
  %.153211.i = phi ptr [ %i.eu, %.lr.ph.i ], [ %.053166.i, %bb.c ] ; 2 uses
  %i.cz = load <2 x i32>, ptr %.052712.i, align 4, !tbaa !22
  %i.da = load <2 x i32>, ptr %.052513.i, align 4, !tbaa !22
  %i.db = load <2 x i32>, ptr %.052314.i, align 4, !tbaa !22
  %i.dc = load <2 x i32>, ptr %.052115.i, align 4, !tbaa !22
  %i.dd = load <2 x i32>, ptr %.051916.i, align 4, !tbaa !22
  %i.de = load <2 x i32>, ptr %.051717.i, align 4, !tbaa !22
  %i.df = load <2 x i32>, ptr %.051518.i, align 4, !tbaa !22
  %i.dg = load <2 x i32>, ptr %.051319.i, align 4, !tbaa !22
  %i.dh = load <2 x i32>, ptr %.051120.i, align 4, !tbaa !22
  %i.di = load <2 x i32>, ptr %.050921.i, align 4, !tbaa !22
  %i.dj = load <2 x i32>, ptr %.050722.i, align 4, !tbaa !22
  %i.dk = load <2 x i32>, ptr %.050523.i, align 4, !tbaa !22
  %i.dl = load <2 x i32>, ptr %.050324.i, align 4, !tbaa !22
  %i.dm = load <2 x i32>, ptr %.050125.i, align 4, !tbaa !22
  %i.dn = load <2 x i32>, ptr %.049926.i, align 4, !tbaa !22
  %i.do = load <2 x i32>, ptr %.049727.i, align 4, !tbaa !22
  %i.dp = shufflevector <2 x i32> %i.cz, <2 x i32> %i.da, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x i32> %i.db, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <32 x i32> %i.dp, <32 x i32> %i.dq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <32 x i32> %i.dr, <32 x i32> %i.ds, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <32 x i32> %i.dt, <32 x i32> %i.du, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <2 x i32> %i.de, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dx = shufflevector <32 x i32> %i.dv, <32 x i32> %i.dw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <2 x i32> %i.df, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <32 x i32> %i.dx, <32 x i32> %i.dy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = shufflevector <32 x i32> %i.dz, <32 x i32> %i.ea, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ec = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = shufflevector <32 x i32> %i.eb, <32 x i32> %i.ec, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <2 x i32> %i.di, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <32 x i32> %i.ed, <32 x i32> %i.ee, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <32 x i32> %i.ef, <32 x i32> %i.eg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <32 x i32> %i.eh, <32 x i32> %i.ei, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <32 x i32> %i.ej, <32 x i32> %i.ek, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.em = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <32 x i32> %i.el, <32 x i32> %i.em, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <32 x i32> %i.en, <32 x i32> %i.eo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 poison, i32 poison>
  %i.eq = shufflevector <2 x i32> %i.do, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <32 x i32> %i.ep, <32 x i32> %i.eq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.es = lshr <32 x i32> %i.er, splat (i32 16)
  %i.et = trunc nuw <32 x i32> %i.es to <32 x i16>
  store <32 x i16> %i.et, ptr %.153211.i, align 2, !tbaa !24
  %i.eu = getelementptr inbounds nuw i8, ptr %.153211.i, i64 64 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.052712.i, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.052513.i, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.052314.i, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.052115.i, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.051916.i, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.051717.i, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.051518.i, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.051319.i, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.051120.i, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.050921.i, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.050722.i, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.050523.i, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.050324.i, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.050125.i, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.049926.i, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.049727.i, i64 8 ; 2 uses
  %i.fl = add nuw nsw i32 %.049528.i, 2           ; 2 uses
  %i.fm = or disjoint i32 %i.fl, 1
  %i.fn = icmp slt i32 %i.fm, %.sroa.speculated
  br i1 %i.fn, label %.lr.ph.i, label %.preheader10.i, !llvm.loop !366

.lr.ph64.i:                                       ; preds = %.preheader10.i, %.lr.ph64.i
  %.149663.i = phi i32 [ %i.hn, %.lr.ph64.i ], [ %.0495.lcssa.i, %.preheader10.i ]
  %.149862.i = phi ptr [ %i.hm, %.lr.ph64.i ], [ %.0497.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150061.i = phi ptr [ %i.hl, %.lr.ph64.i ], [ %.0499.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150260.i = phi ptr [ %i.hk, %.lr.ph64.i ], [ %.0501.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150459.i = phi ptr [ %i.hj, %.lr.ph64.i ], [ %.0503.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150658.i = phi ptr [ %i.hi, %.lr.ph64.i ], [ %.0505.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150857.i = phi ptr [ %i.hh, %.lr.ph64.i ], [ %.0507.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151056.i = phi ptr [ %i.hg, %.lr.ph64.i ], [ %.0509.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151255.i = phi ptr [ %i.hf, %.lr.ph64.i ], [ %.0511.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151454.i = phi ptr [ %i.he, %.lr.ph64.i ], [ %.0513.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151653.i = phi ptr [ %i.hd, %.lr.ph64.i ], [ %.0515.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151852.i = phi ptr [ %i.hc, %.lr.ph64.i ], [ %.0517.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152051.i = phi ptr [ %i.hb, %.lr.ph64.i ], [ %.0519.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152250.i = phi ptr [ %i.ha, %.lr.ph64.i ], [ %.0521.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152449.i = phi ptr [ %i.gz, %.lr.ph64.i ], [ %.0523.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152648.i = phi ptr [ %i.gy, %.lr.ph64.i ], [ %.0525.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152847.i = phi ptr [ %i.gx, %.lr.ph64.i ], [ %.0527.lcssa.i, %.preheader10.i ] ; 2 uses
  %.253346.i = phi ptr [ %i.gw, %.lr.ph64.i ], [ %.1532.lcssa.i, %.preheader10.i ] ; 2 uses
  %i.fo = load i32, ptr %.152847.i, align 4, !tbaa !22
  %i.fp = load i32, ptr %.152648.i, align 4, !tbaa !22
  %i.fq = load i32, ptr %.152449.i, align 4, !tbaa !22
  %i.fr = load i32, ptr %.152250.i, align 4, !tbaa !22
  %i.fs = load i32, ptr %.152051.i, align 4, !tbaa !22
  %i.ft = load i32, ptr %.151852.i, align 4, !tbaa !22
  %i.fu = load i32, ptr %.151653.i, align 4, !tbaa !22
  %i.fv = load i32, ptr %.151454.i, align 4, !tbaa !22
  %i.fw = load i32, ptr %.151255.i, align 4, !tbaa !22
  %i.fx = load i32, ptr %.151056.i, align 4, !tbaa !22
  %i.fy = load i32, ptr %.150857.i, align 4, !tbaa !22
  %i.fz = load i32, ptr %.150658.i, align 4, !tbaa !22
  %i.ga = load i32, ptr %.150459.i, align 4, !tbaa !22
  %i.gb = load i32, ptr %.150260.i, align 4, !tbaa !22
  %i.gc = load i32, ptr %.150061.i, align 4, !tbaa !22
  %i.gd = load i32, ptr %.149862.i, align 4, !tbaa !22
  %i.ge = insertelement <16 x i32> poison, i32 %i.fo, i64 0
  %i.gf = insertelement <16 x i32> %i.ge, i32 %i.fp, i64 1
  %i.gg = insertelement <16 x i32> %i.gf, i32 %i.fq, i64 2
  %i.gh = insertelement <16 x i32> %i.gg, i32 %i.fr, i64 3
  %i.gi = insertelement <16 x i32> %i.gh, i32 %i.fs, i64 4
  %i.gj = insertelement <16 x i32> %i.gi, i32 %i.ft, i64 5
  %i.gk = insertelement <16 x i32> %i.gj, i32 %i.fu, i64 6
  %i.gl = insertelement <16 x i32> %i.gk, i32 %i.fv, i64 7
  %i.gm = insertelement <16 x i32> %i.gl, i32 %i.fw, i64 8
  %i.gn = insertelement <16 x i32> %i.gm, i32 %i.fx, i64 9
  %i.go = insertelement <16 x i32> %i.gn, i32 %i.fy, i64 10
  %i.gp = insertelement <16 x i32> %i.go, i32 %i.fz, i64 11
  %i.gq = insertelement <16 x i32> %i.gp, i32 %i.ga, i64 12
  %i.gr = insertelement <16 x i32> %i.gq, i32 %i.gb, i64 13
  %i.gs = insertelement <16 x i32> %i.gr, i32 %i.gc, i64 14
  %i.gt = insertelement <16 x i32> %i.gs, i32 %i.gd, i64 15
  %i.gu = lshr <16 x i32> %i.gt, splat (i32 16)
  %i.gv = trunc nuw <16 x i32> %i.gu to <16 x i16>
  store <16 x i16> %i.gv, ptr %.253346.i, align 2, !tbaa !24
  %i.gw = getelementptr inbounds nuw i8, ptr %.253346.i, i64 32 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.152847.i, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.152648.i, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.152449.i, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.152250.i, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.152051.i, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.151852.i, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.151653.i, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %.151454.i, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.151255.i, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.151056.i, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %.150857.i, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.150658.i, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.150459.i, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.150260.i, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.150061.i, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.149862.i, i64 4
  %i.hn = add nuw nsw i32 %.149663.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hn, %.sroa.speculated
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph64.i, !llvm.loop !367

._crit_edge.i:                                    ; preds = %.lr.ph64.i, %.preheader10.i
  %.2533.lcssa.i = phi ptr [ %.1532.lcssa.i, %.preheader10.i ], [ %i.gw, %.lr.ph64.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.ho = or disjoint i64 %indvars.iv.next.i, 15
  %i.hp = icmp samesign ult i64 %i.ho, %i.ao
  br i1 %i.hp, label %bb.c, label %.preheader9.loopexit.i, !llvm.loop !368

.preheader7.loopexit.i:                           ; preds = %._crit_edge135.i
  %i.hq = trunc nuw nsw i64 %indvars.iv.next315.i to i32
  br label %.preheader7.i

.preheader7.i:                                    ; preds = %.preheader7.loopexit.i, %.preheader9.i
  %.3534.lcssa.i = phi ptr [ %.0531.lcssa.i, %.preheader9.i ], [ %.5.lcssa.i, %.preheader7.loopexit.i ] ; 2 uses
  %.1530.lcssa.i = phi i32 [ %.0529.lcssa.i, %.preheader9.i ], [ %i.hq, %.preheader7.loopexit.i ] ; 3 uses
  %i.hr = or disjoint i32 %.1530.lcssa.i, 3
  %i.hs = icmp slt i32 %i.hr, %.sroa.speculated60
  br i1 %i.hs, label %.lr.ph183.i, label %.preheader5.i

.lr.ph183.i:                                      ; preds = %.preheader7.i
  %invariant.gep186.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 4 uses
  %i.ht = icmp sgt i32 %.sroa.speculated, 1
  %i.hu = and i32 %.sroa.speculated, -2           ; 3 uses
  %i.hv = zext nneg i32 %.1530.lcssa.i to i64
  %min.iters.check475.a = icmp ult i32 %i.ba, 6
  %min.iters.check477 = icmp ult i32 %i.ba, 30
  %i.hw = and i64 %i.bc, 12
  %n.vec479 = and i64 %i.bc, 4294967280           ; 6 uses
  %i.hx = trunc nuw i64 %n.vec479 to i32
  %i.hy = shl i32 %i.hx, 1
  %i.hz = shl nuw nsw i64 %n.vec479, 3            ; 4 uses
  %i.ia = shl nuw nsw i64 %n.vec479, 4
  %cmp.n502 = icmp eq i64 %n.vec479, %i.bc
  %min.epilog.iters.check512 = icmp eq i64 %i.hw, 0
  %n.vec514 = and i64 %i.bc, 4294967292           ; 5 uses
  %i.ib = trunc nuw i64 %n.vec514 to i32
  %i.ic = shl i32 %i.ib, 1
  %i.id = shl nuw nsw i64 %n.vec514, 3            ; 4 uses
  %i.ie = shl nuw nsw i64 %n.vec514, 4
  %cmp.n537 = icmp eq i64 %n.vec514, %i.bc
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge135.i, %.lr.ph139.i
  %indvars.iv314.i = phi i64 [ %i.br, %.lr.ph139.i ], [ %indvars.iv.next315.i, %._crit_edge135.i ] ; 2 uses
  %.3534137.i = phi ptr [ %.0531.lcssa.i, %.lr.ph139.i ], [ %.5.lcssa.i, %._crit_edge135.i ] ; 2 uses
  %i.if = add nsw i64 %indvars.iv314.i, %i.ag     ; 8 uses
  %i.ig = mul nsw i64 %i.if, %i.aa
  %gep143.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.ig ; 2 uses
  %i.ih = add nsw i64 %i.if, 1
  %i.ii = mul nsw i64 %i.ih, %i.aa
  %gep145.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.ii ; 2 uses
  %i.ij = add nsw i64 %i.if, 2
  %i.ik = mul nsw i64 %i.ij, %i.aa
  %gep147.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.ik ; 2 uses
  %i.il = add nsw i64 %i.if, 3
  %i.im = mul nsw i64 %i.il, %i.aa
  %gep149.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.im ; 2 uses
  %i.in = add nsw i64 %i.if, 4
  %i.io = mul nsw i64 %i.in, %i.aa
  %gep151.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.io ; 2 uses
  %i.ip = add nsw i64 %i.if, 5
  %i.iq = mul nsw i64 %i.ip, %i.aa
  %gep153.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.iq ; 2 uses
  %i.ir = add nsw i64 %i.if, 6
  %i.is = mul nsw i64 %i.ir, %i.aa
  %gep155.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.is ; 2 uses
  %i.it = add nsw i64 %i.if, 7
  %i.iu = mul nsw i64 %i.it, %i.aa
  %gep157.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.iu ; 2 uses
  br i1 %i.bp, label %.lr.ph113.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %.lr.ph113.i, %bb.d
  %.4535.lcssa.i = phi ptr [ %.3534137.i, %bb.d ], [ %i.lw, %.lr.ph113.i ] ; 6 uses
  %.0493.lcssa.i = phi ptr [ %gep143.i, %bb.d ], [ %i.lx, %.lr.ph113.i ] ; 5 uses
  %.0491.lcssa.i = phi ptr [ %gep145.i, %bb.d ], [ %i.ly, %.lr.ph113.i ] ; 5 uses
  %.0489.lcssa.i = phi ptr [ %gep147.i, %bb.d ], [ %i.lz, %.lr.ph113.i ] ; 5 uses
  %.0487.lcssa.i = phi ptr [ %gep149.i, %bb.d ], [ %i.ma, %.lr.ph113.i ] ; 5 uses
  %.0485.lcssa.i = phi ptr [ %gep151.i, %bb.d ], [ %i.mb, %.lr.ph113.i ] ; 5 uses
  %.0483.lcssa.i = phi ptr [ %gep153.i, %bb.d ], [ %i.mc, %.lr.ph113.i ] ; 5 uses
  %.0481.lcssa.i = phi ptr [ %gep155.i, %bb.d ], [ %i.md, %.lr.ph113.i ] ; 5 uses
  %.0479.lcssa.i = phi ptr [ %gep157.i, %bb.d ], [ %i.me, %.lr.ph113.i ] ; 5 uses
  %.0477.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.bq, %.lr.ph113.i ] ; 5 uses
  %i.iv = icmp slt i32 %.0477.lcssa.i, %.sroa.speculated
  br i1 %i.iv, label %iter.check582, label %._crit_edge135.i

iter.check582:                                    ; preds = %.preheader8.i
  %i.iw = xor i32 %.0477.lcssa.i, -1
  %i.ix = add i32 %.sroa.speculated, %i.iw        ; 3 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 5 uses
  %min.iters.check544.a = icmp ult i32 %i.ix, 3
  br i1 %min.iters.check544.a, label %.lr.ph134.i.preheader, label %vector.main.loop.iter.check545

vector.main.loop.iter.check545:                   ; preds = %iter.check582
  %min.iters.check546 = icmp ult i32 %i.ix, 15
  br i1 %min.iters.check546, label %vec.epilog.ph586, label %vector.ph547

vector.ph547:                                     ; preds = %vector.main.loop.iter.check545
  %i.ja = and i64 %i.iz, 12
  %n.vec548 = and i64 %i.iz, 8589934576           ; 6 uses
  %i.jb = trunc i64 %n.vec548 to i32
  %i.jc = add i32 %.0477.lcssa.i, %i.jb
  %i.jd = shl nuw nsw i64 %n.vec548, 2            ; 8 uses
  %i.je = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.jd
  %i.jf = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.jd
  %i.jg = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.jd
  %i.jh = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.jd
  %i.ji = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.jd
  %i.jj = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.jd
  %i.jk = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.jd
  %i.jl = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.jd
  %i.jm = shl nuw nsw i64 %n.vec548, 4
  %i.jn = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.jm ; 2 uses
  br label %vector.body549

vector.body549:                                   ; preds = %vector.ph547, %vector.body549
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next569, %vector.body549 ] ; 3 uses
  %i.jo = shl i64 %index550, 2                    ; 8 uses
  %next.gep551.a = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.jo
  %next.gep552.a = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.jo
  %next.gep553.a = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.jo
  %next.gep554.a = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.jo
  %next.gep555.a = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.jo
  %next.gep556.a = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.jo
  %next.gep557.a = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.jo
  %next.gep558 = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.jo
  %i.jp = shl i64 %index550, 4
  %next.gep559 = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.jp
  %wide.load560.a = load <16 x i32>, ptr %next.gep558, align 4, !tbaa !22
  %wide.load561.a = load <16 x i32>, ptr %next.gep557.a, align 4, !tbaa !22
  %wide.load562.a = load <16 x i32>, ptr %next.gep556.a, align 4, !tbaa !22
  %wide.load563.a = load <16 x i32>, ptr %next.gep555.a, align 4, !tbaa !22
  %wide.load564.a = load <16 x i32>, ptr %next.gep554.a, align 4, !tbaa !22
  %wide.load565.a = load <16 x i32>, ptr %next.gep553.a, align 4, !tbaa !22
  %wide.load566 = load <16 x i32>, ptr %next.gep552.a, align 4, !tbaa !22
  %wide.load567 = load <16 x i32>, ptr %next.gep551.a, align 4, !tbaa !22
  %i.jq = shufflevector <16 x i32> %wide.load560.a, <16 x i32> %wide.load561.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jr = shufflevector <16 x i32> %wide.load562.a, <16 x i32> %wide.load563.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.js = shufflevector <32 x i32> %i.jq, <32 x i32> %i.jr, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jt = lshr <64 x i32> %i.js, splat (i32 16)
  %i.ju = trunc nuw <64 x i32> %i.jt to <64 x i16>
  %i.jv = shufflevector <16 x i32> %wide.load564.a, <16 x i32> %wide.load565.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jw = shufflevector <16 x i32> %wide.load566, <16 x i32> %wide.load567, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jx = shufflevector <32 x i32> %i.jv, <32 x i32> %i.jw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jy = lshr <64 x i32> %i.jx, splat (i32 16)
  %i.jz = trunc nuw <64 x i32> %i.jy to <64 x i16>
  %interleaved.vec568 = shufflevector <64 x i16> %i.ju, <64 x i16> %i.jz, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec568, ptr %next.gep559, align 2, !tbaa !24
  %index.next569 = add nuw i64 %index550, 16      ; 2 uses
  %i.ka = icmp eq i64 %index.next569, %n.vec548
  br i1 %i.ka, label %middle.block570, label %vector.body549, !llvm.loop !369

middle.block570:                                  ; preds = %vector.body549
  %cmp.n571 = icmp eq i64 %i.iz, %n.vec548
  br i1 %cmp.n571, label %._crit_edge135.i, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block570
  %min.epilog.iters.check585 = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check585, label %.lr.ph134.i.preheader, label %vec.epilog.ph586, !prof !27

vec.epilog.ph586:                                 ; preds = %vector.main.loop.iter.check545, %vec.epilog.iter.check584
  %vec.epilog.resume.val572 = phi i64 [ %n.vec548, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check545 ]
  %n.vec587 = and i64 %i.iz, 8589934588           ; 5 uses
  %i.kb = trunc i64 %n.vec587 to i32
  %i.kc = add i32 %.0477.lcssa.i, %i.kb
  %i.kd = shl nuw nsw i64 %n.vec587, 2            ; 8 uses
  %i.ke = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.kd
  %i.kf = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.kd
  %i.kg = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.kd
  %i.kh = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.kd
  %i.ki = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.kd
  %i.kj = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.kd
  %i.kk = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.kd
  %i.kl = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.kd
  %i.km = shl nuw nsw i64 %n.vec587, 4
  %i.kn = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.km ; 2 uses
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph586
  %index589 = phi i64 [ %vec.epilog.resume.val572, %vec.epilog.ph586 ], [ %index.next608, %vec.epilog.vector.body588 ] ; 3 uses
  %i.ko = shl i64 %index589, 2                    ; 8 uses
  %next.gep590.a = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.ko
  %next.gep591.a = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.ko
  %next.gep592.a = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.ko
  %next.gep593.a = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.ko
  %next.gep594.a = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.ko
  %next.gep595.a = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.ko
  %next.gep596.a = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.ko
  %next.gep597 = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.ko
  %i.kp = shl i64 %index589, 4
  %next.gep598 = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.kp
  %wide.load599.a = load <4 x i32>, ptr %next.gep597, align 4, !tbaa !22
  %wide.load600.a = load <4 x i32>, ptr %next.gep596.a, align 4, !tbaa !22
  %wide.load601.a = load <4 x i32>, ptr %next.gep595.a, align 4, !tbaa !22
  %wide.load602.a = load <4 x i32>, ptr %next.gep594.a, align 4, !tbaa !22
  %wide.load603.a = load <4 x i32>, ptr %next.gep593.a, align 4, !tbaa !22
  %wide.load604.a = load <4 x i32>, ptr %next.gep592.a, align 4, !tbaa !22
  %wide.load605 = load <4 x i32>, ptr %next.gep591.a, align 4, !tbaa !22
  %wide.load606 = load <4 x i32>, ptr %next.gep590.a, align 4, !tbaa !22
  %i.kq = shufflevector <4 x i32> %wide.load599.a, <4 x i32> %wide.load600.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kr = shufflevector <4 x i32> %wide.load601.a, <4 x i32> %wide.load602.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ks = shufflevector <4 x i32> %wide.load603.a, <4 x i32> %wide.load604.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kt = shufflevector <4 x i32> %wide.load605, <4 x i32> %wide.load606, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ku = shufflevector <8 x i32> %i.kq, <8 x i32> %i.kr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kv = shufflevector <8 x i32> %i.ks, <8 x i32> %i.kt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kw = shufflevector <16 x i32> %i.ku, <16 x i32> %i.kv, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.kx = lshr <32 x i32> %i.kw, splat (i32 16)
  %interleaved.vec607 = trunc nuw <32 x i32> %i.kx to <32 x i16>
  store <32 x i16> %interleaved.vec607, ptr %next.gep598, align 2, !tbaa !24
  %index.next608 = add nuw i64 %index589, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next608, %n.vec587
  br i1 %i.ky, label %vec.epilog.middle.block609, label %vec.epilog.vector.body588, !llvm.loop !370

vec.epilog.middle.block609:                       ; preds = %vec.epilog.vector.body588
  %cmp.n610 = icmp eq i64 %i.iz, %n.vec587
  br i1 %cmp.n610, label %._crit_edge135.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %iter.check582, %vec.epilog.iter.check584, %vec.epilog.middle.block609
  %.1478133.i.ph = phi i32 [ %.0477.lcssa.i, %iter.check582 ], [ %i.jc, %vec.epilog.iter.check584 ], [ %i.kc, %vec.epilog.middle.block609 ]
  %.1480132.i.ph = phi ptr [ %.0479.lcssa.i, %iter.check582 ], [ %i.je, %vec.epilog.iter.check584 ], [ %i.ke, %vec.epilog.middle.block609 ]
  %.1482131.i.ph = phi ptr [ %.0481.lcssa.i, %iter.check582 ], [ %i.jf, %vec.epilog.iter.check584 ], [ %i.kf, %vec.epilog.middle.block609 ]
  %.1484130.i.ph = phi ptr [ %.0483.lcssa.i, %iter.check582 ], [ %i.jg, %vec.epilog.iter.check584 ], [ %i.kg, %vec.epilog.middle.block609 ]
  %.1486129.i.ph = phi ptr [ %.0485.lcssa.i, %iter.check582 ], [ %i.jh, %vec.epilog.iter.check584 ], [ %i.kh, %vec.epilog.middle.block609 ]
  %.1488128.i.ph = phi ptr [ %.0487.lcssa.i, %iter.check582 ], [ %i.ji, %vec.epilog.iter.check584 ], [ %i.ki, %vec.epilog.middle.block609 ]
  %.1490127.i.ph = phi ptr [ %.0489.lcssa.i, %iter.check582 ], [ %i.jj, %vec.epilog.iter.check584 ], [ %i.kj, %vec.epilog.middle.block609 ]
  %.1492126.i.ph = phi ptr [ %.0491.lcssa.i, %iter.check582 ], [ %i.jk, %vec.epilog.iter.check584 ], [ %i.kk, %vec.epilog.middle.block609 ]
  %.1494125.i.ph = phi ptr [ %.0493.lcssa.i, %iter.check582 ], [ %i.jl, %vec.epilog.iter.check584 ], [ %i.kl, %vec.epilog.middle.block609 ]
  %.5124.i.ph = phi ptr [ %.4535.lcssa.i, %iter.check582 ], [ %i.jn, %vec.epilog.iter.check584 ], [ %i.kn, %vec.epilog.middle.block609 ]
  br label %.lr.ph134.i

.lr.ph113.i:                                      ; preds = %bb.d, %.lr.ph113.i
  %.0477111.i = phi i32 [ %i.mf, %.lr.ph113.i ], [ 0, %bb.d ]
  %.0479110.i = phi ptr [ %i.me, %.lr.ph113.i ], [ %gep157.i, %bb.d ] ; 2 uses
  %.0481109.i = phi ptr [ %i.md, %.lr.ph113.i ], [ %gep155.i, %bb.d ] ; 2 uses
  %.0483108.i = phi ptr [ %i.mc, %.lr.ph113.i ], [ %gep153.i, %bb.d ] ; 2 uses
  %.0485107.i = phi ptr [ %i.mb, %.lr.ph113.i ], [ %gep151.i, %bb.d ] ; 2 uses
  %.0487106.i = phi ptr [ %i.ma, %.lr.ph113.i ], [ %gep149.i, %bb.d ] ; 2 uses
  %.0489105.i = phi ptr [ %i.lz, %.lr.ph113.i ], [ %gep147.i, %bb.d ] ; 2 uses
  %.0491104.i = phi ptr [ %i.ly, %.lr.ph113.i ], [ %gep145.i, %bb.d ] ; 2 uses
  %.0493103.i = phi ptr [ %i.lx, %.lr.ph113.i ], [ %gep143.i, %bb.d ] ; 2 uses
  %.4535102.i = phi ptr [ %i.lw, %.lr.ph113.i ], [ %.3534137.i, %bb.d ] ; 2 uses
  %i.kz = load <2 x i32>, ptr %.0493103.i, align 4, !tbaa !22
  %i.la = load <2 x i32>, ptr %.0491104.i, align 4, !tbaa !22
  %i.lb = load <2 x i32>, ptr %.0489105.i, align 4, !tbaa !22
  %i.lc = load <2 x i32>, ptr %.0487106.i, align 4, !tbaa !22
  %i.ld = load <2 x i32>, ptr %.0485107.i, align 4, !tbaa !22
  %i.le = load <2 x i32>, ptr %.0483108.i, align 4, !tbaa !22
  %i.lf = load <2 x i32>, ptr %.0481109.i, align 4, !tbaa !22
  %i.lg = load <2 x i32>, ptr %.0479110.i, align 4, !tbaa !22
  %i.lh = shufflevector <2 x i32> %i.kz, <2 x i32> %i.la, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.li = shufflevector <2 x i32> %i.lb, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lj = shufflevector <16 x i32> %i.lh, <16 x i32> %i.li, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lk = shufflevector <2 x i32> %i.lc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ll = shufflevector <16 x i32> %i.lj, <16 x i32> %i.lk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lm = shufflevector <2 x i32> %i.ld, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ln = shufflevector <16 x i32> %i.ll, <16 x i32> %i.lm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lo = shufflevector <2 x i32> %i.le, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lp = shufflevector <16 x i32> %i.ln, <16 x i32> %i.lo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lq = shufflevector <2 x i32> %i.lf, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lr = shufflevector <16 x i32> %i.lp, <16 x i32> %i.lq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.ls = shufflevector <2 x i32> %i.lg, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = shufflevector <16 x i32> %i.lr, <16 x i32> %i.ls, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.lu = lshr <16 x i32> %i.lt, splat (i32 16)
  %i.lv = trunc nuw <16 x i32> %i.lu to <16 x i16>
  store <16 x i16> %i.lv, ptr %.4535102.i, align 2, !tbaa !24
  %i.lw = getelementptr inbounds nuw i8, ptr %.4535102.i, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0493103.i, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0491104.i, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0489105.i, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0487106.i, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.0485107.i, i64 8 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0483108.i, i64 8 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0481109.i, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0479110.i, i64 8 ; 2 uses
  %i.mf = add nuw nsw i32 %.0477111.i, 2          ; 2 uses
  %i.mg = or disjoint i32 %i.mf, 1
  %i.mh = icmp slt i32 %i.mg, %.sroa.speculated
  br i1 %i.mh, label %.lr.ph113.i, label %.preheader8.i, !llvm.loop !371

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i
  %.1478133.i = phi i32 [ %i.nj, %.lr.ph134.i ], [ %.1478133.i.ph, %.lr.ph134.i.preheader ]
  %.1480132.i = phi ptr [ %i.ni, %.lr.ph134.i ], [ %.1480132.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1482131.i = phi ptr [ %i.nh, %.lr.ph134.i ], [ %.1482131.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1484130.i = phi ptr [ %i.ng, %.lr.ph134.i ], [ %.1484130.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1486129.i = phi ptr [ %i.nf, %.lr.ph134.i ], [ %.1486129.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1488128.i = phi ptr [ %i.ne, %.lr.ph134.i ], [ %.1488128.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1490127.i = phi ptr [ %i.nd, %.lr.ph134.i ], [ %.1490127.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1492126.i = phi ptr [ %i.nc, %.lr.ph134.i ], [ %.1492126.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1494125.i = phi ptr [ %i.nb, %.lr.ph134.i ], [ %.1494125.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.5124.i = phi ptr [ %i.na, %.lr.ph134.i ], [ %.5124.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %i.mi = load i32, ptr %.1494125.i, align 4, !tbaa !22
  %i.mj = load i32, ptr %.1492126.i, align 4, !tbaa !22
  %i.mk = load i32, ptr %.1490127.i, align 4, !tbaa !22
  %i.ml = load i32, ptr %.1488128.i, align 4, !tbaa !22
  %i.mm = load i32, ptr %.1486129.i, align 4, !tbaa !22
  %i.mn = load i32, ptr %.1484130.i, align 4, !tbaa !22
  %i.mo = load i32, ptr %.1482131.i, align 4, !tbaa !22
  %i.mp = load i32, ptr %.1480132.i, align 4, !tbaa !22
  %i.mq = insertelement <8 x i32> poison, i32 %i.mi, i64 0
  %i.mr = insertelement <8 x i32> %i.mq, i32 %i.mj, i64 1
  %i.ms = insertelement <8 x i32> %i.mr, i32 %i.mk, i64 2
  %i.mt = insertelement <8 x i32> %i.ms, i32 %i.ml, i64 3
  %i.mu = insertelement <8 x i32> %i.mt, i32 %i.mm, i64 4
  %i.mv = insertelement <8 x i32> %i.mu, i32 %i.mn, i64 5
  %i.mw = insertelement <8 x i32> %i.mv, i32 %i.mo, i64 6
  %i.mx = insertelement <8 x i32> %i.mw, i32 %i.mp, i64 7
  %i.my = lshr <8 x i32> %i.mx, splat (i32 16)
  %i.mz = trunc nuw <8 x i32> %i.my to <8 x i16>
  store <8 x i16> %i.mz, ptr %.5124.i, align 2, !tbaa !24
  %i.na = getelementptr inbounds nuw i8, ptr %.5124.i, i64 16 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.1494125.i, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %.1492126.i, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.1490127.i, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %.1488128.i, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %.1486129.i, i64 4
  %i.ng = getelementptr inbounds nuw i8, ptr %.1484130.i, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %.1482131.i, i64 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.1480132.i, i64 4
  %i.nj = add nuw nsw i32 %.1478133.i, 1          ; 2 uses
  %exitcond313.not.i = icmp eq i32 %i.nj, %.sroa.speculated
  br i1 %exitcond313.not.i, label %._crit_edge135.i, label %.lr.ph134.i, !llvm.loop !372

._crit_edge135.i:                                 ; preds = %.lr.ph134.i, %middle.block570, %vec.epilog.middle.block609, %.preheader8.i
  %.5.lcssa.i = phi ptr [ %.4535.lcssa.i, %.preheader8.i ], [ %i.kn, %vec.epilog.middle.block609 ], [ %i.jn, %middle.block570 ], [ %i.na, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 8 ; 3 uses
  %i.nk = icmp slt i64 %indvars.iv.next315.i, %invariant.op.i
  br i1 %i.nk, label %bb.d, label %.preheader7.loopexit.i, !llvm.loop !373

.preheader5.loopexit.i:                           ; preds = %._crit_edge179.i
  %i.nl = trunc nuw nsw i64 %indvars.iv.next319.i to i32
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %.preheader5.loopexit.i, %.preheader7.i
  %.6.lcssa.i = phi ptr [ %.3534.lcssa.i, %.preheader7.i ], [ %.8.lcssa.i, %.preheader5.loopexit.i ] ; 8 uses
  %.2.lcssa.i = phi i32 [ %.1530.lcssa.i, %.preheader7.i ], [ %i.nl, %.preheader5.loopexit.i ] ; 6 uses
  %i.nm = or disjoint i32 %.2.lcssa.i, 1
  %i.nn = icmp slt i32 %i.nm, %.sroa.speculated60
  br i1 %i.nn, label %.lr.ph213.i, label %.preheader3.i

.lr.ph213.i:                                      ; preds = %.preheader5.i
  %invariant.gep216.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 6 uses
  %i.no = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.no, label %.lr.ph199.us.preheader.i, label %.lr.ph213.split.i

.lr.ph199.us.preheader.i:                         ; preds = %.lr.ph213.i
  %i.np = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.nq = sext i32 %.2.lcssa.i to i64
  %.not63 = icmp eq i32 %i.np, %.sroa.speculated
  %min.iters.check337 = icmp ult i32 %i.ba, 6
  %min.iters.check339 = icmp ult i32 %i.ba, 30
  %i.nr = and i64 %i.bc, 12
  %n.vec341 = and i64 %i.bc, 4294967280           ; 5 uses
  %i.ns = trunc nuw i64 %n.vec341 to i32
  %i.nt = shl i32 %i.ns, 1
  %i.nu = shl nuw nsw i64 %n.vec341, 3            ; 3 uses
  %cmp.n356 = icmp eq i64 %n.vec341, %i.bc
  %min.epilog.iters.check364 = icmp eq i64 %i.nr, 0
  %n.vec366 = and i64 %i.bc, 4294967292           ; 4 uses
  %i.nv = trunc nuw i64 %n.vec366 to i32
  %i.nw = shl i32 %i.nv, 1
  %i.nx = shl nuw nsw i64 %n.vec366, 3            ; 3 uses
  %cmp.n381 = icmp eq i64 %n.vec366, %i.bc
  %min.iters.check295 = icmp ult i32 %i.av, 3
  %min.iters.check297 = icmp ult i32 %i.av, 15
  %i.ny = and i64 %i.ax, 12
  %n.vec299 = and i64 %i.ax, 8589934576           ; 5 uses
  %i.nz = trunc i64 %n.vec299 to i32
  %i.oa = add i32 %i.np, %i.nz
  %i.ob = shl nuw nsw i64 %n.vec299, 2            ; 3 uses
  %cmp.n310 = icmp eq i64 %i.ax, %n.vec299
  %min.epilog.iters.check318 = icmp eq i64 %i.ny, 0
  %n.vec320 = and i64 %i.ax, 8589934588           ; 4 uses
  %i.oc = trunc i64 %n.vec320 to i32
  %i.od = add i32 %i.np, %i.oc
  %i.oe = shl nuw nsw i64 %n.vec320, 2            ; 3 uses
  %cmp.n331 = icmp eq i64 %i.ax, %n.vec320
  br label %iter.check361

iter.check361:                                    ; preds = %._crit_edge209.us.i, %.lr.ph199.us.preheader.i
  %indvars.iv325.i = phi i64 [ %i.nq, %.lr.ph199.us.preheader.i ], [ %indvars.iv.next326.i, %._crit_edge209.us.i ] ; 2 uses
  %.9211.us.i = phi ptr [ %.6.lcssa.i, %.lr.ph199.us.preheader.i ], [ %.11.lcssa.us.i, %._crit_edge209.us.i ] ; 5 uses
  %i.of = add nsw i64 %indvars.iv325.i, %i.ag     ; 2 uses
  %i.og = mul nsw i64 %i.of, %i.aa
  %gep217.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.og ; 5 uses
  %i.oh = add nsw i64 %i.of, 1
  %i.oi = mul nsw i64 %i.oh, %i.aa
  %gep219.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.oi ; 5 uses
  br i1 %min.iters.check337, label %vec.epilog.scalar.ph362.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %iter.check361
  br i1 %min.iters.check339, label %vec.epilog.ph365, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %i.oj = getelementptr i8, ptr %gep219.us.i, i64 %i.nu ; 2 uses
  %i.ok = getelementptr i8, ptr %gep217.us.i, i64 %i.nu ; 2 uses
  %i.ol = getelementptr i8, ptr %.9211.us.i, i64 %i.nu ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.ph340, %vector.body342
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next354, %vector.body342 ] ; 2 uses
  %i.om = shl i64 %index343, 3                    ; 3 uses
  %next.gep344.a = getelementptr i8, ptr %gep219.us.i, i64 %i.om
  %next.gep345.a = getelementptr i8, ptr %gep217.us.i, i64 %i.om
  %next.gep346 = getelementptr i8, ptr %.9211.us.i, i64 %i.om
  %wide.vec347 = load <32 x i32>, ptr %next.gep345.a, align 4, !tbaa !22
  %wide.vec350 = load <32 x i32>, ptr %next.gep344.a, align 4, !tbaa !22
  %i.on = lshr <32 x i32> %wide.vec347, splat (i32 16)
  %i.oo = shufflevector <32 x i32> %i.on, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.op = trunc nuw <32 x i32> %i.oo to <32 x i16>
  %i.oq = lshr <32 x i32> %wide.vec350, splat (i32 16)
  %i.or = shufflevector <32 x i32> %i.oq, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.os = trunc nuw <32 x i32> %i.or to <32 x i16>
  %interleaved.vec353 = shufflevector <32 x i16> %i.op, <32 x i16> %i.os, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec353, ptr %next.gep346, align 2, !tbaa !24
  %index.next354 = add nuw i64 %index343, 16      ; 2 uses
  %i.ot = icmp eq i64 %index.next354, %n.vec341
  br i1 %i.ot, label %middle.block355, label %vector.body342, !llvm.loop !374

middle.block355:                                  ; preds = %vector.body342
  br i1 %cmp.n356, label %..preheader4_crit_edge.us.i, label %vec.epilog.iter.check363

vec.epilog.iter.check363:                         ; preds = %middle.block355
  br i1 %min.epilog.iters.check364, label %vec.epilog.scalar.ph362.preheader, label %vec.epilog.ph365, !prof !27

vec.epilog.ph365:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check363
  %vec.epilog.resume.val357 = phi i64 [ %n.vec341, %vec.epilog.iter.check363 ], [ 0, %vector.main.loop.iter.check338 ]
  %i.ou = getelementptr i8, ptr %gep219.us.i, i64 %i.nx ; 2 uses
  %i.ov = getelementptr i8, ptr %gep217.us.i, i64 %i.nx ; 2 uses
  %i.ow = getelementptr i8, ptr %.9211.us.i, i64 %i.nx ; 2 uses
  br label %vec.epilog.vector.body367

vec.epilog.vector.body367:                        ; preds = %vec.epilog.vector.body367, %vec.epilog.ph365
  %index368 = phi i64 [ %vec.epilog.resume.val357, %vec.epilog.ph365 ], [ %index.next379, %vec.epilog.vector.body367 ] ; 2 uses
  %i.ox = shl i64 %index368, 3                    ; 3 uses
  %next.gep369.a = getelementptr i8, ptr %gep219.us.i, i64 %i.ox
  %next.gep370.a = getelementptr i8, ptr %gep217.us.i, i64 %i.ox
  %next.gep371 = getelementptr i8, ptr %.9211.us.i, i64 %i.ox
  %wide.vec372 = load <8 x i32>, ptr %next.gep370.a, align 4, !tbaa !22
  %wide.vec375 = load <8 x i32>, ptr %next.gep369.a, align 4, !tbaa !22
  %i.oy = shufflevector <8 x i32> %wide.vec372, <8 x i32> %wide.vec375, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.oz = lshr <16 x i32> %i.oy, splat (i32 16)
  %interleaved.vec378 = trunc nuw <16 x i32> %i.oz to <16 x i16>
  store <16 x i16> %interleaved.vec378, ptr %next.gep371, align 2, !tbaa !24
  %index.next379 = add nuw i64 %index368, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next379, %n.vec366
  br i1 %i.pa, label %vec.epilog.middle.block380, label %vec.epilog.vector.body367, !llvm.loop !375

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body367
  br i1 %cmp.n381, label %..preheader4_crit_edge.us.i, label %vec.epilog.scalar.ph362.preheader

vec.epilog.scalar.ph362.preheader:                ; preds = %iter.check361, %vec.epilog.iter.check363, %vec.epilog.middle.block380
  %.0461197.us.i.ph = phi i32 [ 0, %iter.check361 ], [ %i.nt, %vec.epilog.iter.check363 ], [ %i.nw, %vec.epilog.middle.block380 ]
  %.0463196.us.i.ph = phi ptr [ %gep219.us.i, %iter.check361 ], [ %i.oj, %vec.epilog.iter.check363 ], [ %i.ou, %vec.epilog.middle.block380 ]
  %.0465195.us.i.ph = phi ptr [ %gep217.us.i, %iter.check361 ], [ %i.ok, %vec.epilog.iter.check363 ], [ %i.ov, %vec.epilog.middle.block380 ]
  %.10194.us.i.ph = phi ptr [ %.9211.us.i, %iter.check361 ], [ %i.ol, %vec.epilog.iter.check363 ], [ %i.ow, %vec.epilog.middle.block380 ]
  br label %vec.epilog.scalar.ph362

vec.epilog.scalar.ph362:                          ; preds = %vec.epilog.scalar.ph362.preheader, %vec.epilog.scalar.ph362
  %.0461197.us.i = phi i32 [ %i.pj, %vec.epilog.scalar.ph362 ], [ %.0461197.us.i.ph, %vec.epilog.scalar.ph362.preheader ]
  %.0463196.us.i = phi ptr [ %i.pi, %vec.epilog.scalar.ph362 ], [ %.0463196.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.0465195.us.i = phi ptr [ %i.ph, %vec.epilog.scalar.ph362 ], [ %.0465195.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.10194.us.i = phi ptr [ %i.pg, %vec.epilog.scalar.ph362 ], [ %.10194.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %i.pb = load <2 x i32>, ptr %.0465195.us.i, align 4, !tbaa !22
  %i.pc = load <2 x i32>, ptr %.0463196.us.i, align 4, !tbaa !22
  %i.pd = shufflevector <2 x i32> %i.pb, <2 x i32> %i.pc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pe = lshr <4 x i32> %i.pd, splat (i32 16)
  %i.pf = trunc nuw <4 x i32> %i.pe to <4 x i16>
  store <4 x i16> %i.pf, ptr %.10194.us.i, align 2, !tbaa !24
  %i.pg = getelementptr inbounds nuw i8, ptr %.10194.us.i, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.0465195.us.i, i64 8 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.0463196.us.i, i64 8 ; 2 uses
  %i.pj = add nuw nsw i32 %.0461197.us.i, 2       ; 2 uses
  %i.pk = or disjoint i32 %i.pj, 1
  %i.pl = icmp slt i32 %i.pk, %.sroa.speculated
  br i1 %i.pl, label %vec.epilog.scalar.ph362, label %..preheader4_crit_edge.us.i, !llvm.loop !376

.lr.ph208.us.i:                                   ; preds = %.lr.ph208.us.i.preheader, %.lr.ph208.us.i
  %.1462207.us.i = phi i32 [ %i.pw, %.lr.ph208.us.i ], [ %.1462207.us.i.ph, %.lr.ph208.us.i.preheader ]
  %.1464206.us.i = phi ptr [ %i.pv, %.lr.ph208.us.i ], [ %.1464206.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.1466205.us.i = phi ptr [ %i.pu, %.lr.ph208.us.i ], [ %.1466205.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.11204.us.i = phi ptr [ %i.pt, %.lr.ph208.us.i ], [ %.11204.us.i.ph, %.lr.ph208.us.i.preheader ] ; 3 uses
  %i.pm = load i32, ptr %.1466205.us.i, align 4, !tbaa !22
  %i.pn = lshr i32 %i.pm, 16
  %i.po = trunc nuw i32 %i.pn to i16
  store i16 %i.po, ptr %.11204.us.i, align 2, !tbaa !24
  %i.pp = load i32, ptr %.1464206.us.i, align 4, !tbaa !22
  %i.pq = lshr i32 %i.pp, 16
  %i.pr = trunc nuw i32 %i.pq to i16
  %i.ps = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 2
  store i16 %i.pr, ptr %i.ps, align 2, !tbaa !24
  %i.pt = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 4 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.1466205.us.i, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.1464206.us.i, i64 4
  %i.pw = add nuw nsw i32 %.1462207.us.i, 1       ; 2 uses
  %exitcond324.not.i = icmp eq i32 %i.pw, %.sroa.speculated
  br i1 %exitcond324.not.i, label %._crit_edge209.us.i, label %.lr.ph208.us.i, !llvm.loop !377

._crit_edge209.us.i:                              ; preds = %.lr.ph208.us.i, %middle.block309, %vec.epilog.middle.block330, %..preheader4_crit_edge.us.i
  %.11.lcssa.us.i = phi ptr [ %.lcssa236, %..preheader4_crit_edge.us.i ], [ %i.qh, %vec.epilog.middle.block330 ], [ %i.qa, %middle.block309 ], [ %i.pt, %.lr.ph208.us.i ] ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 2 ; 3 uses
  %i.px = icmp slt i64 %indvars.iv.next326.i, %invariant.op383.i
  br i1 %i.px, label %iter.check361, label %.preheader3.loopexit.i, !llvm.loop !378

..preheader4_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph362, %vec.epilog.middle.block380, %middle.block355
  %.lcssa236 = phi ptr [ %i.ow, %vec.epilog.middle.block380 ], [ %i.ol, %middle.block355 ], [ %i.pg, %vec.epilog.scalar.ph362 ] ; 6 uses
  %.lcssa235 = phi ptr [ %i.ov, %vec.epilog.middle.block380 ], [ %i.ok, %middle.block355 ], [ %i.ph, %vec.epilog.scalar.ph362 ] ; 5 uses
  %.lcssa234 = phi ptr [ %i.ou, %vec.epilog.middle.block380 ], [ %i.oj, %middle.block355 ], [ %i.pi, %vec.epilog.scalar.ph362 ] ; 5 uses
  br i1 %.not63, label %._crit_edge209.us.i, label %iter.check315

iter.check315:                                    ; preds = %..preheader4_crit_edge.us.i
  br i1 %min.iters.check295, label %.lr.ph208.us.i.preheader, label %vector.main.loop.iter.check296

vector.main.loop.iter.check296:                   ; preds = %iter.check315
  br i1 %min.iters.check297, label %vec.epilog.ph319, label %vector.ph298

vector.ph298:                                     ; preds = %vector.main.loop.iter.check296
  %i.py = getelementptr i8, ptr %.lcssa234, i64 %i.ob
  %i.pz = getelementptr i8, ptr %.lcssa235, i64 %i.ob
  %i.qa = getelementptr i8, ptr %.lcssa236, i64 %i.ob ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.ph298, %vector.body300
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next308, %vector.body300 ] ; 2 uses
  %i.qb = shl i64 %index301, 2                    ; 3 uses
  %next.gep302 = getelementptr i8, ptr %.lcssa234, i64 %i.qb
  %next.gep303 = getelementptr i8, ptr %.lcssa235, i64 %i.qb
  %next.gep304 = getelementptr i8, ptr %.lcssa236, i64 %i.qb
  %wide.load305 = load <16 x i32>, ptr %next.gep303, align 4, !tbaa !22
  %wide.load306 = load <16 x i32>, ptr %next.gep302, align 4, !tbaa !22
  %i.qc = shufflevector <16 x i32> %wide.load305, <16 x i32> %wide.load306, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.qd = lshr <32 x i32> %i.qc, splat (i32 16)
  %interleaved.vec307 = trunc nuw <32 x i32> %i.qd to <32 x i16>
  store <32 x i16> %interleaved.vec307, ptr %next.gep304, align 2, !tbaa !24
  %index.next308 = add nuw i64 %index301, 16      ; 2 uses
  %i.qe = icmp eq i64 %index.next308, %n.vec299
  br i1 %i.qe, label %middle.block309, label %vector.body300, !llvm.loop !379

middle.block309:                                  ; preds = %vector.body300
  br i1 %cmp.n310, label %._crit_edge209.us.i, label %vec.epilog.iter.check317

vec.epilog.iter.check317:                         ; preds = %middle.block309
  br i1 %min.epilog.iters.check318, label %.lr.ph208.us.i.preheader, label %vec.epilog.ph319, !prof !27

vec.epilog.ph319:                                 ; preds = %vector.main.loop.iter.check296, %vec.epilog.iter.check317
  %vec.epilog.resume.val311 = phi i64 [ %n.vec299, %vec.epilog.iter.check317 ], [ 0, %vector.main.loop.iter.check296 ]
  %i.qf = getelementptr i8, ptr %.lcssa234, i64 %i.oe
  %i.qg = getelementptr i8, ptr %.lcssa235, i64 %i.oe
  %i.qh = getelementptr i8, ptr %.lcssa236, i64 %i.oe ; 2 uses
  br label %vec.epilog.vector.body321

vec.epilog.vector.body321:                        ; preds = %vec.epilog.vector.body321, %vec.epilog.ph319
  %index322 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph319 ], [ %index.next329, %vec.epilog.vector.body321 ] ; 2 uses
  %i.qi = shl i64 %index322, 2                    ; 3 uses
  %next.gep323 = getelementptr i8, ptr %.lcssa234, i64 %i.qi
  %next.gep324 = getelementptr i8, ptr %.lcssa235, i64 %i.qi
  %next.gep325 = getelementptr i8, ptr %.lcssa236, i64 %i.qi
  %wide.load326 = load <4 x i32>, ptr %next.gep324, align 4, !tbaa !22
  %wide.load327 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !22
  %i.qj = shufflevector <4 x i32> %wide.load326, <4 x i32> %wide.load327, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qk = lshr <8 x i32> %i.qj, splat (i32 16)
  %interleaved.vec328 = trunc nuw <8 x i32> %i.qk to <8 x i16>
  store <8 x i16> %interleaved.vec328, ptr %next.gep325, align 2, !tbaa !24
end_hunk_0
