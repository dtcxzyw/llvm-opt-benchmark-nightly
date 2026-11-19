Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn57convolution_im2col_gemm_transform_kernel_bf16s_avx512bf16ERKNS_3MatERS0_iiiiRKNS_6OptionE:bb.a
bb.at:                                            ; preds = %bb.ar
  %.not.i101.i = icmp eq ptr %i.hw, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.hw) #10
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.av:                                            ; preds = %bb.as
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit68.i:                        ; preds = %bb.ap, %bb.aq, %bb.as, %bb.at, %bb.au, %bb.ao
  %.pn.pn.i = phi { ptr, i32 } [ %i.ho, %bb.ao ], [ %i.hp, %bb.au ], [ %i.hp, %bb.at ], [ %i.hp, %bb.as ], [ %i.hp, %bb.aq ], [ %i.hp, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.bf

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit69.i, %_ZN4ncnn3MatD2Ev.exit72.i
  %i.ic = load i32, ptr %i.d, align 4, !tbaa !30  ; 2 uses
  %i.id = load i32, ptr %i.c, align 4, !tbaa !30  ; 2 uses
  %i.ie = mul nsw i32 %i.id, %i.ic
  %i.if = load i32, ptr %i.b, align 4, !tbaa !30
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !30
  %i.ih = insertelement <2 x i32> poison, i32 %i.ic, i64 0
  %i.ii = insertelement <2 x i32> %i.ih, i32 %i.id, i64 1 ; 2 uses
  %i.ij = add <2 x i32> %i.ii, splat (i32 -1)
  %i.ik = insertelement <2 x i32> poison, i32 %i.if, i64 0
  %i.il = insertelement <2 x i32> %i.ik, i32 %i.ig, i64 1
  %i.im = add <2 x i32> %i.ij, %i.il
  %i.in = sdiv <2 x i32> %i.im, %i.ii             ; 2 uses
  %i.io = extractelement <2 x i32> %i.in, i64 0
  %i.ip = extractelement <2 x i32> %i.in, i64 1
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.ie, i32 noundef %i.io, i32 noundef %i.ip, i64 noundef 2, ptr noundef null)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.iq = load i32, ptr %i.i, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.iq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %7)
  %i.ir = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i90.i = icmp eq ptr %i.ir, null
  br i1 %.not.i90.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.is = atomicrmw add ptr %i.ir, i32 -1 acq_rel, align 4
  %i.it = icmp eq i32 %i.is, 1
  br i1 %i.it, label %bb.az, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.az:                                            ; preds = %bb.ay
  %i.iu = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i91.i = icmp eq ptr %i.iu, null
  %i.iv = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i91.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef %i.iv)
          to label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit unwind label %bb.bd, !inline_history !0

bb.bb:                                            ; preds = %bb.az
  %.not.i99.i = icmp eq ptr %i.iv, null
  br i1 %.not.i99.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.iv) #10
  br label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.bd:                                            ; preds = %bb.ba
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #26
  unreachable

bb.be:                                            ; preds = %bb.aw
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4ncnn3MatD2Ev.exit68.i, %_ZN4ncnn3MatD2Ev.exit71.i
  %.pn65.i = phi { ptr, i32 } [ %i.jb, %bb.be ], [ %.pn63.i, %_ZN4ncnn3MatD2Ev.exit71.i ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit68.i ]
  %i.jc = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i94.i = icmp eq ptr %i.jc, null
  br i1 %.not.i94.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jd = atomicrmw add ptr %i.jc, i32 -1 acq_rel, align 4
  %i.je = icmp eq i32 %i.jd, 1
  br i1 %i.je, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.jf = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i95.i = icmp eq ptr %i.jf, null
  %i.jg = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i95.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !48
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef %i.jg)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bl, !inline_history !0

bb.bj:                                            ; preds = %bb.bh
  %.not.i98.i = icmp eq ptr %i.jg, null
  br i1 %.not.i98.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.jg) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #26
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
  %.val38 = load i32, ptr %i.p, align 4, !tbaa !31
  %i.aa = sext i32 %.val38 to i64                 ; 35 uses
  %i.ab = sext i32 %i.t to i64
  %i.ac = zext nneg i32 %i.m to i64
  %i.ad = sext i32 %i.k to i64
  %i.ae = sext i32 %i.l to i64
  %i.af = add nsw i32 %i.j, 1
  %broadcast.splatinsert379 = insertelement <16 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat380 = shufflevector <16 x i64> %broadcast.splatinsert379, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert402 = insertelement <4 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat403 = shufflevector <4 x i64> %broadcast.splatinsert402, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
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
  %i.aq = add nsw i32 %.sroa.speculated60, -2
  %invariant.op383.i = add nsw i64 %i.ap, -1      ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <16 x i64> %broadcast.splat, splat (i64 1)
  %broadcast.splatinsert400 = insertelement <4 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat401 = shufflevector <4 x i64> %broadcast.splatinsert400, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op687 = add <4 x i64> %broadcast.splat401, splat (i64 1)
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
  %smin289 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.as) ; 2 uses
  %i.at = and i32 %smin289, 2147483646
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %smin289, %i.au                 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 5 uses
  %i.ay = mul i32 %i.t, %indvar
  %i.az = sub i32 %i.m, %i.ay
  %smin = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.az)
  %i.ba = add i32 %smin, -2                       ; 7 uses
  %i.bb = lshr i32 %i.ba, 1
  %narrow = add nuw i32 %i.bb, 1
  %i.bc = zext i32 %narrow to i64                 ; 15 uses
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
end_hunk_0
begin_hunk_1_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.ju = shufflevector <32 x i32> %i.jq, <32 x i32> %i.jr, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jv = lshr <64 x i32> %i.ju, splat (i32 16)
  %i.jw = trunc nuw <64 x i32> %i.jv to <64 x i16>
  %i.jx = shufflevector <32 x i32> %i.js, <32 x i32> %i.jt, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jy = lshr <64 x i32> %i.jx, splat (i32 16)
  %i.jz = trunc nuw <64 x i32> %i.jy to <64 x i16>
  %interleaved.vec544 = shufflevector <64 x i16> %i.jw, <64 x i16> %i.jz, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec544, ptr %next.gep535, align 2, !tbaa !24
  %index.next545 = add nuw i64 %index526, 16      ; 2 uses
  %i.ka = icmp eq i64 %index.next545, %n.vec524
  br i1 %i.ka, label %middle.block546, label %vector.body525, !llvm.loop !369

middle.block546:                                  ; preds = %vector.body525
  %cmp.n547 = icmp eq i64 %i.iz, %n.vec524
  br i1 %cmp.n547, label %._crit_edge135.i, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block546
  %min.epilog.iters.check551 = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check551, label %.lr.ph134.i.preheader, label %vec.epilog.ph552, !prof !27

vec.epilog.ph552:                                 ; preds = %vector.main.loop.iter.check521, %vec.epilog.iter.check549
  %vec.epilog.resume.val553 = phi i64 [ %n.vec524, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check521 ]
  %n.vec554 = and i64 %i.iz, 8589934588           ; 5 uses
  %i.kb = trunc i64 %n.vec554 to i32
  %i.kc = add i32 %.0477.lcssa.i, %i.kb
  %i.kd = shl nuw nsw i64 %n.vec554, 2            ; 8 uses
  %i.ke = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.kd
  %i.kf = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.kd
  %i.kg = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.kd
  %i.kh = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.kd
  %i.ki = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.kd
  %i.kj = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.kd
  %i.kk = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.kd
  %i.kl = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.kd
  %i.km = shl nuw nsw i64 %n.vec554, 4
  %i.kn = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.km ; 2 uses
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph552
  %index556 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph552 ], [ %index.next575, %vec.epilog.vector.body555 ] ; 3 uses
  %i.ko = shl i64 %index556, 2                    ; 8 uses
  %next.gep557 = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.ko
  %next.gep558 = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.ko
  %next.gep559 = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.ko
  %next.gep560 = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.ko
  %next.gep561 = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.ko
  %next.gep562 = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.ko
  %next.gep563 = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.ko
  %next.gep564 = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.ko
  %i.kp = shl i64 %index556, 4
  %next.gep565 = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.kp
  %wide.load566 = load <4 x i32>, ptr %next.gep564, align 4, !tbaa !22
  %wide.load567 = load <4 x i32>, ptr %next.gep563, align 4, !tbaa !22
  %wide.load568 = load <4 x i32>, ptr %next.gep562, align 4, !tbaa !22
  %wide.load569 = load <4 x i32>, ptr %next.gep561, align 4, !tbaa !22
  %wide.load570 = load <4 x i32>, ptr %next.gep560, align 4, !tbaa !22
  %wide.load571 = load <4 x i32>, ptr %next.gep559, align 4, !tbaa !22
  %wide.load572 = load <4 x i32>, ptr %next.gep558, align 4, !tbaa !22
  %wide.load573 = load <4 x i32>, ptr %next.gep557, align 4, !tbaa !22
  %i.kq = shufflevector <4 x i32> %wide.load566, <4 x i32> %wide.load567, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kr = shufflevector <4 x i32> %wide.load568, <4 x i32> %wide.load569, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ks = shufflevector <4 x i32> %wide.load570, <4 x i32> %wide.load571, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kt = shufflevector <4 x i32> %wide.load572, <4 x i32> %wide.load573, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ku = shufflevector <8 x i32> %i.kq, <8 x i32> %i.kr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kv = shufflevector <8 x i32> %i.ks, <8 x i32> %i.kt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kw = shufflevector <16 x i32> %i.ku, <16 x i32> %i.kv, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.kx = lshr <32 x i32> %i.kw, splat (i32 16)
  %interleaved.vec574 = trunc nuw <32 x i32> %i.kx to <32 x i16>
  store <32 x i16> %interleaved.vec574, ptr %next.gep565, align 2, !tbaa !24
  %index.next575 = add nuw i64 %index556, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next575, %n.vec554
  br i1 %i.ky, label %vec.epilog.middle.block576, label %vec.epilog.vector.body555, !llvm.loop !370

vec.epilog.middle.block576:                       ; preds = %vec.epilog.vector.body555
  %cmp.n577 = icmp eq i64 %i.iz, %n.vec554
  br i1 %cmp.n577, label %._crit_edge135.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %iter.check548, %vec.epilog.iter.check549, %vec.epilog.middle.block576
  %.1478133.i.ph = phi i32 [ %.0477.lcssa.i, %iter.check548 ], [ %i.jc, %vec.epilog.iter.check549 ], [ %i.kc, %vec.epilog.middle.block576 ]
  %.1480132.i.ph = phi ptr [ %.0479.lcssa.i, %iter.check548 ], [ %i.je, %vec.epilog.iter.check549 ], [ %i.ke, %vec.epilog.middle.block576 ]
  %.1482131.i.ph = phi ptr [ %.0481.lcssa.i, %iter.check548 ], [ %i.jf, %vec.epilog.iter.check549 ], [ %i.kf, %vec.epilog.middle.block576 ]
  %.1484130.i.ph = phi ptr [ %.0483.lcssa.i, %iter.check548 ], [ %i.jg, %vec.epilog.iter.check549 ], [ %i.kg, %vec.epilog.middle.block576 ]
  %.1486129.i.ph = phi ptr [ %.0485.lcssa.i, %iter.check548 ], [ %i.jh, %vec.epilog.iter.check549 ], [ %i.kh, %vec.epilog.middle.block576 ]
  %.1488128.i.ph = phi ptr [ %.0487.lcssa.i, %iter.check548 ], [ %i.ji, %vec.epilog.iter.check549 ], [ %i.ki, %vec.epilog.middle.block576 ]
  %.1490127.i.ph = phi ptr [ %.0489.lcssa.i, %iter.check548 ], [ %i.jj, %vec.epilog.iter.check549 ], [ %i.kj, %vec.epilog.middle.block576 ]
  %.1492126.i.ph = phi ptr [ %.0491.lcssa.i, %iter.check548 ], [ %i.jk, %vec.epilog.iter.check549 ], [ %i.kk, %vec.epilog.middle.block576 ]
  %.1494125.i.ph = phi ptr [ %.0493.lcssa.i, %iter.check548 ], [ %i.jl, %vec.epilog.iter.check549 ], [ %i.kl, %vec.epilog.middle.block576 ]
  %.5124.i.ph = phi ptr [ %.4535.lcssa.i, %iter.check548 ], [ %i.jn, %vec.epilog.iter.check549 ], [ %i.kn, %vec.epilog.middle.block576 ]
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

._crit_edge135.i:                                 ; preds = %.lr.ph134.i, %middle.block546, %vec.epilog.middle.block576, %.preheader8.i
  %.5.lcssa.i = phi ptr [ %.4535.lcssa.i, %.preheader8.i ], [ %i.kn, %vec.epilog.middle.block576 ], [ %i.jn, %middle.block546 ], [ %i.na, %.lr.ph134.i ] ; 2 uses
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
  %invariant.gep216.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 8 uses
  %i.no = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.no, label %.lr.ph199.us.preheader.i, label %.lr.ph213.split.i

.lr.ph199.us.preheader.i:                         ; preds = %.lr.ph213.i
  %i.np = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.nq = sext i32 %.2.lcssa.i to i64
  %.not63 = icmp eq i32 %i.np, %.sroa.speculated
  %min.iters.check328 = icmp ult i32 %i.ba, 6
  %min.iters.check330 = icmp ult i32 %i.ba, 30
  %i.nr = and i64 %i.bc, 12
  %n.vec332 = and i64 %i.bc, 4294967280           ; 5 uses
  %i.ns = trunc nuw i64 %n.vec332 to i32
  %i.nt = shl i32 %i.ns, 1
  %i.nu = shl nuw nsw i64 %n.vec332, 3            ; 3 uses
  %cmp.n347 = icmp eq i64 %n.vec332, %i.bc
  %min.epilog.iters.check351 = icmp eq i64 %i.nr, 0
  %n.vec354 = and i64 %i.bc, 4294967292           ; 4 uses
  %i.nv = trunc nuw i64 %n.vec354 to i32
  %i.nw = shl i32 %i.nv, 1
  %i.nx = shl nuw nsw i64 %n.vec354, 3            ; 3 uses
  %cmp.n369 = icmp eq i64 %n.vec354, %i.bc
  %min.iters.check290 = icmp ult i32 %i.av, 3
  %min.iters.check292 = icmp ult i32 %i.av, 15
  %i.ny = and i64 %i.ax, 12
  %n.vec294 = and i64 %i.ax, 8589934576           ; 5 uses
  %i.nz = trunc i64 %n.vec294 to i32
  %i.oa = add i32 %i.np, %i.nz
  %i.ob = shl nuw nsw i64 %n.vec294, 2            ; 3 uses
  %cmp.n305 = icmp eq i64 %i.ax, %n.vec294
  %min.epilog.iters.check309 = icmp eq i64 %i.ny, 0
  %n.vec312 = and i64 %i.ax, 8589934588           ; 4 uses
  %i.oc = trunc i64 %n.vec312 to i32
  %i.od = add i32 %i.np, %i.oc
  %i.oe = shl nuw nsw i64 %n.vec312, 2            ; 3 uses
  %cmp.n323 = icmp eq i64 %i.ax, %n.vec312
  br label %iter.check348

iter.check348:                                    ; preds = %._crit_edge209.us.i, %.lr.ph199.us.preheader.i
  %indvars.iv325.i = phi i64 [ %i.nq, %.lr.ph199.us.preheader.i ], [ %indvars.iv.next326.i, %._crit_edge209.us.i ] ; 2 uses
  %.9211.us.i = phi ptr [ %.6.lcssa.i, %.lr.ph199.us.preheader.i ], [ %.11.lcssa.us.i, %._crit_edge209.us.i ] ; 5 uses
  %i.of = add nsw i64 %indvars.iv325.i, %i.ag     ; 2 uses
  %i.og = mul nsw i64 %i.of, %i.aa
  %gep217.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.og ; 5 uses
  %i.oh = add nsw i64 %i.of, 1
  %i.oi = mul nsw i64 %i.oh, %i.aa
  %gep219.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.oi ; 5 uses
  br i1 %min.iters.check328, label %vec.epilog.scalar.ph350.preheader, label %vector.main.loop.iter.check329

vector.main.loop.iter.check329:                   ; preds = %iter.check348
  br i1 %min.iters.check330, label %vec.epilog.ph352, label %vector.ph331

vector.ph331:                                     ; preds = %vector.main.loop.iter.check329
  %i.oj = getelementptr i8, ptr %gep219.us.i, i64 %i.nu ; 2 uses
  %i.ok = getelementptr i8, ptr %gep217.us.i, i64 %i.nu ; 2 uses
  %i.ol = getelementptr i8, ptr %.9211.us.i, i64 %i.nu ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.ph331, %vector.body333
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next345, %vector.body333 ] ; 2 uses
  %i.om = shl i64 %index334, 3                    ; 3 uses
  %next.gep335 = getelementptr i8, ptr %gep219.us.i, i64 %i.om
  %next.gep336 = getelementptr i8, ptr %gep217.us.i, i64 %i.om
  %next.gep337 = getelementptr i8, ptr %.9211.us.i, i64 %i.om
  %wide.vec338 = load <32 x i32>, ptr %next.gep336, align 4, !tbaa !22
  %wide.vec341 = load <32 x i32>, ptr %next.gep335, align 4, !tbaa !22
  %i.on = lshr <32 x i32> %wide.vec338, splat (i32 16)
  %i.oo = shufflevector <32 x i32> %i.on, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.op = trunc nuw <32 x i32> %i.oo to <32 x i16>
  %i.oq = lshr <32 x i32> %wide.vec341, splat (i32 16)
  %i.or = shufflevector <32 x i32> %i.oq, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.os = trunc nuw <32 x i32> %i.or to <32 x i16>
  %interleaved.vec344 = shufflevector <32 x i16> %i.op, <32 x i16> %i.os, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec344, ptr %next.gep337, align 2, !tbaa !24
  %index.next345 = add nuw i64 %index334, 16      ; 2 uses
  %i.ot = icmp eq i64 %index.next345, %n.vec332
  br i1 %i.ot, label %middle.block346, label %vector.body333, !llvm.loop !374

middle.block346:                                  ; preds = %vector.body333
  br i1 %cmp.n347, label %..preheader4_crit_edge.us.i, label %vec.epilog.iter.check349

vec.epilog.iter.check349:                         ; preds = %middle.block346
  br i1 %min.epilog.iters.check351, label %vec.epilog.scalar.ph350.preheader, label %vec.epilog.ph352, !prof !27

vec.epilog.ph352:                                 ; preds = %vector.main.loop.iter.check329, %vec.epilog.iter.check349
  %vec.epilog.resume.val353 = phi i64 [ %n.vec332, %vec.epilog.iter.check349 ], [ 0, %vector.main.loop.iter.check329 ]
  %i.ou = getelementptr i8, ptr %gep219.us.i, i64 %i.nx ; 2 uses
  %i.ov = getelementptr i8, ptr %gep217.us.i, i64 %i.nx ; 2 uses
  %i.ow = getelementptr i8, ptr %.9211.us.i, i64 %i.nx ; 2 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph352
  %index356 = phi i64 [ %vec.epilog.resume.val353, %vec.epilog.ph352 ], [ %index.next367, %vec.epilog.vector.body355 ] ; 2 uses
  %i.ox = shl i64 %index356, 3                    ; 3 uses
  %next.gep357 = getelementptr i8, ptr %gep219.us.i, i64 %i.ox
  %next.gep358 = getelementptr i8, ptr %gep217.us.i, i64 %i.ox
  %next.gep359 = getelementptr i8, ptr %.9211.us.i, i64 %i.ox
  %wide.vec360 = load <8 x i32>, ptr %next.gep358, align 4, !tbaa !22
  %wide.vec363 = load <8 x i32>, ptr %next.gep357, align 4, !tbaa !22
  %i.oy = shufflevector <8 x i32> %wide.vec360, <8 x i32> %wide.vec363, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.oz = lshr <16 x i32> %i.oy, splat (i32 16)
  %interleaved.vec366 = trunc nuw <16 x i32> %i.oz to <16 x i16>
  store <16 x i16> %interleaved.vec366, ptr %next.gep359, align 2, !tbaa !24
  %index.next367 = add nuw i64 %index356, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next367, %n.vec354
  br i1 %i.pa, label %vec.epilog.middle.block368, label %vec.epilog.vector.body355, !llvm.loop !375

vec.epilog.middle.block368:                       ; preds = %vec.epilog.vector.body355
  br i1 %cmp.n369, label %..preheader4_crit_edge.us.i, label %vec.epilog.scalar.ph350.preheader

vec.epilog.scalar.ph350.preheader:                ; preds = %iter.check348, %vec.epilog.iter.check349, %vec.epilog.middle.block368
  %.0461197.us.i.ph = phi i32 [ 0, %iter.check348 ], [ %i.nt, %vec.epilog.iter.check349 ], [ %i.nw, %vec.epilog.middle.block368 ]
  %.0463196.us.i.ph = phi ptr [ %gep219.us.i, %iter.check348 ], [ %i.oj, %vec.epilog.iter.check349 ], [ %i.ou, %vec.epilog.middle.block368 ]
  %.0465195.us.i.ph = phi ptr [ %gep217.us.i, %iter.check348 ], [ %i.ok, %vec.epilog.iter.check349 ], [ %i.ov, %vec.epilog.middle.block368 ]
  %.10194.us.i.ph = phi ptr [ %.9211.us.i, %iter.check348 ], [ %i.ol, %vec.epilog.iter.check349 ], [ %i.ow, %vec.epilog.middle.block368 ]
  br label %vec.epilog.scalar.ph350

vec.epilog.scalar.ph350:                          ; preds = %vec.epilog.scalar.ph350.preheader, %vec.epilog.scalar.ph350
  %.0461197.us.i = phi i32 [ %i.pj, %vec.epilog.scalar.ph350 ], [ %.0461197.us.i.ph, %vec.epilog.scalar.ph350.preheader ]
  %.0463196.us.i = phi ptr [ %i.pi, %vec.epilog.scalar.ph350 ], [ %.0463196.us.i.ph, %vec.epilog.scalar.ph350.preheader ] ; 2 uses
  %.0465195.us.i = phi ptr [ %i.ph, %vec.epilog.scalar.ph350 ], [ %.0465195.us.i.ph, %vec.epilog.scalar.ph350.preheader ] ; 2 uses
  %.10194.us.i = phi ptr [ %i.pg, %vec.epilog.scalar.ph350 ], [ %.10194.us.i.ph, %vec.epilog.scalar.ph350.preheader ] ; 2 uses
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
  br i1 %i.pl, label %vec.epilog.scalar.ph350, label %..preheader4_crit_edge.us.i, !llvm.loop !376

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

._crit_edge209.us.i:                              ; preds = %.lr.ph208.us.i, %middle.block304, %vec.epilog.middle.block322, %..preheader4_crit_edge.us.i
  %.11.lcssa.us.i = phi ptr [ %.lcssa236, %..preheader4_crit_edge.us.i ], [ %i.qh, %vec.epilog.middle.block322 ], [ %i.qa, %middle.block304 ], [ %i.pt, %.lr.ph208.us.i ] ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 2 ; 3 uses
  %i.px = icmp slt i64 %indvars.iv.next326.i, %invariant.op383.i
  br i1 %i.px, label %iter.check348, label %.preheader3.loopexit.i, !llvm.loop !378

..preheader4_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph350, %vec.epilog.middle.block368, %middle.block346
  %.lcssa236 = phi ptr [ %i.ow, %vec.epilog.middle.block368 ], [ %i.ol, %middle.block346 ], [ %i.pg, %vec.epilog.scalar.ph350 ] ; 6 uses
  %.lcssa235 = phi ptr [ %i.ov, %vec.epilog.middle.block368 ], [ %i.ok, %middle.block346 ], [ %i.ph, %vec.epilog.scalar.ph350 ] ; 5 uses
  %.lcssa234 = phi ptr [ %i.ou, %vec.epilog.middle.block368 ], [ %i.oj, %middle.block346 ], [ %i.pi, %vec.epilog.scalar.ph350 ] ; 5 uses
  br i1 %.not63, label %._crit_edge209.us.i, label %iter.check306

iter.check306:                                    ; preds = %..preheader4_crit_edge.us.i
  br i1 %min.iters.check290, label %.lr.ph208.us.i.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %iter.check306
  br i1 %min.iters.check292, label %vec.epilog.ph310, label %vector.ph293

vector.ph293:                                     ; preds = %vector.main.loop.iter.check291
  %i.py = getelementptr i8, ptr %.lcssa234, i64 %i.ob
  %i.pz = getelementptr i8, ptr %.lcssa235, i64 %i.ob
  %i.qa = getelementptr i8, ptr %.lcssa236, i64 %i.ob ; 2 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.ph293, %vector.body295
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next303, %vector.body295 ] ; 2 uses
  %i.qb = shl i64 %index296, 2                    ; 3 uses
  %next.gep297 = getelementptr i8, ptr %.lcssa234, i64 %i.qb
  %next.gep298 = getelementptr i8, ptr %.lcssa235, i64 %i.qb
  %next.gep299 = getelementptr i8, ptr %.lcssa236, i64 %i.qb
  %wide.load300 = load <16 x i32>, ptr %next.gep298, align 4, !tbaa !22
  %wide.load301 = load <16 x i32>, ptr %next.gep297, align 4, !tbaa !22
  %i.qc = shufflevector <16 x i32> %wide.load300, <16 x i32> %wide.load301, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.qd = lshr <32 x i32> %i.qc, splat (i32 16)
  %interleaved.vec302 = trunc nuw <32 x i32> %i.qd to <32 x i16>
  store <32 x i16> %interleaved.vec302, ptr %next.gep299, align 2, !tbaa !24
  %index.next303 = add nuw i64 %index296, 16      ; 2 uses
  %i.qe = icmp eq i64 %index.next303, %n.vec294
  br i1 %i.qe, label %middle.block304, label %vector.body295, !llvm.loop !379

middle.block304:                                  ; preds = %vector.body295
  br i1 %cmp.n305, label %._crit_edge209.us.i, label %vec.epilog.iter.check307

vec.epilog.iter.check307:                         ; preds = %middle.block304
  br i1 %min.epilog.iters.check309, label %.lr.ph208.us.i.preheader, label %vec.epilog.ph310, !prof !27

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check291, %vec.epilog.iter.check307
  %vec.epilog.resume.val311 = phi i64 [ %n.vec294, %vec.epilog.iter.check307 ], [ 0, %vector.main.loop.iter.check291 ]
  %i.qf = getelementptr i8, ptr %.lcssa234, i64 %i.oe
  %i.qg = getelementptr i8, ptr %.lcssa235, i64 %i.oe
  %i.qh = getelementptr i8, ptr %.lcssa236, i64 %i.oe ; 2 uses
  br label %vec.epilog.vector.body313

vec.epilog.vector.body313:                        ; preds = %vec.epilog.vector.body313, %vec.epilog.ph310
  %index314 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph310 ], [ %index.next321, %vec.epilog.vector.body313 ] ; 2 uses
  %i.qi = shl i64 %index314, 2                    ; 3 uses
  %next.gep315 = getelementptr i8, ptr %.lcssa234, i64 %i.qi
  %next.gep316 = getelementptr i8, ptr %.lcssa235, i64 %i.qi
  %next.gep317 = getelementptr i8, ptr %.lcssa236, i64 %i.qi
  %wide.load318 = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !22
  %wide.load319 = load <4 x i32>, ptr %next.gep315, align 4, !tbaa !22
  %i.qj = shufflevector <4 x i32> %wide.load318, <4 x i32> %wide.load319, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qk = lshr <8 x i32> %i.qj, splat (i32 16)
  %interleaved.vec320 = trunc nuw <8 x i32> %i.qk to <8 x i16>
  store <8 x i16> %interleaved.vec320, ptr %next.gep317, align 2, !tbaa !24
  %index.next321 = add nuw i64 %index314, 4       ; 2 uses
  %i.ql = icmp eq i64 %index.next321, %n.vec312
  br i1 %i.ql, label %vec.epilog.middle.block322, label %vec.epilog.vector.body313, !llvm.loop !380

vec.epilog.middle.block322:                       ; preds = %vec.epilog.vector.body313
  br i1 %cmp.n323, label %._crit_edge209.us.i, label %.lr.ph208.us.i.preheader

.lr.ph208.us.i.preheader:                         ; preds = %iter.check306, %vec.epilog.iter.check307, %vec.epilog.middle.block322
  %.1462207.us.i.ph = phi i32 [ %i.np, %iter.check306 ], [ %i.oa, %vec.epilog.iter.check307 ], [ %i.od, %vec.epilog.middle.block322 ]
  %.1464206.us.i.ph = phi ptr [ %.lcssa234, %iter.check306 ], [ %i.py, %vec.epilog.iter.check307 ], [ %i.qf, %vec.epilog.middle.block322 ]
  %.1466205.us.i.ph = phi ptr [ %.lcssa235, %iter.check306 ], [ %i.pz, %vec.epilog.iter.check307 ], [ %i.qg, %vec.epilog.middle.block322 ]
  %.11204.us.i.ph = phi ptr [ %.lcssa236, %iter.check306 ], [ %i.qa, %vec.epilog.iter.check307 ], [ %i.qh, %vec.epilog.middle.block322 ]
  br label %.lr.ph208.us.i

.lr.ph213.split.i:                                ; preds = %.lr.ph213.i
  %i.qm = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.qm, label %iter.check389, label %.preheader4.preheader.i

.preheader4.preheader.i:                          ; preds = %.lr.ph213.split.i
  %i.qn = sub i32 %i.aq, %.2.lcssa.i
  %i.qo = and i32 %i.qn, -2
  %i.qp = add nsw i32 %.2.lcssa.i, 2
  %i.qq = add i32 %i.qp, %i.qo
  br label %.preheader3.i

iter.check389:                                    ; preds = %.lr.ph213.split.i
  %i.qr = sext i32 %.2.lcssa.i to i64             ; 7 uses
  %i.qs = add nsw i64 %i.qr, 2
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op383.i, i64 %i.qs)
  %i.qt = xor i64 %i.qr, -1
  %i.qu = add i64 %smax, %i.qt                    ; 3 uses
  %i.qv = lshr i64 %i.qu, 1
  %i.qw = add nuw i64 %i.qv, 1                    ; 5 uses
  %min.iters.check374 = icmp ult i64 %i.qu, 6
  br i1 %min.iters.check374, label %._crit_edge209.us231.i.preheader, label %vector.main.loop.iter.check375

vector.main.loop.iter.check375:                   ; preds = %iter.check389
  %min.iters.check376 = icmp ult i64 %i.qu, 30
  br i1 %min.iters.check376, label %vec.epilog.ph393, label %vector.ph377

vector.ph377:                                     ; preds = %vector.main.loop.iter.check375
  %i.qx = and i64 %i.qw, 12
  %n.vec378 = and i64 %i.qw, -16                  ; 5 uses
  %i.qy = shl i64 %n.vec378, 1
  %i.qz = add i64 %i.qy, %i.qr                    ; 3 uses
  %i.ra = shl i64 %n.vec378, 2
  %i.rb = getelementptr i8, ptr %.6.lcssa.i, i64 %i.ra ; 2 uses
  %broadcast.splatinsert381 = insertelement <16 x i64> poison, i64 %i.qr, i64 0
  %broadcast.splat382 = shufflevector <16 x i64> %broadcast.splatinsert381, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat382, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16, i64 18, i64 20, i64 22, i64 24, i64 26, i64 28, i64 30>
  br label %vector.body379

vector.body379:                                   ; preds = %vector.ph377, %vector.body379
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next386, %vector.body379 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph377 ], [ %vec.ind.next, %vector.body379 ] ; 3 uses
  %i.rc = shl i64 %index380, 2
  %next.gep381 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rc
  %9 = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %.reass686 = add <16 x i64> %vec.ind, %invariant.op
  %10 = mul nsw <16 x i64> %.reass686, %broadcast.splat380
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep216.i, <16 x i64> %10
  %wide.masked.gather = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !22
  %11 = mul nsw <16 x i64> %9, %broadcast.splat380
  %wide.gep386 = getelementptr [4 x i8], ptr %invariant.gep216.i, <16 x i64> %11
  %wide.masked.gather387 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep386, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !22
  %12 = shufflevector <16 x i32> %wide.masked.gather387, <16 x i32> %wide.masked.gather, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.rd = lshr <32 x i32> %12, splat (i32 16)
  %interleaved.vec385 = trunc nuw <32 x i32> %i.rd to <32 x i16>
  store <32 x i16> %interleaved.vec385, ptr %next.gep381, align 2, !tbaa !24
  %index.next386 = add nuw i64 %index380, 16      ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 32)
  %i.re = icmp eq i64 %index.next386, %n.vec378
  br i1 %i.re, label %middle.block387, label %vector.body379, !llvm.loop !381

middle.block387:                                  ; preds = %vector.body379
  %cmp.n388 = icmp eq i64 %i.qw, %n.vec378
  br i1 %cmp.n388, label %.preheader3.loopexit258.i, label %vec.epilog.iter.check390

vec.epilog.iter.check390:                         ; preds = %middle.block387
  %min.epilog.iters.check392 = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check392, label %._crit_edge209.us231.i.preheader, label %vec.epilog.ph393, !prof !27

vec.epilog.ph393:                                 ; preds = %vector.main.loop.iter.check375, %vec.epilog.iter.check390
  %vec.epilog.resume.val394 = phi i64 [ %n.vec378, %vec.epilog.iter.check390 ], [ 0, %vector.main.loop.iter.check375 ]
  %bc.resume.val398 = phi i64 [ %i.qz, %vec.epilog.iter.check390 ], [ %i.qr, %vector.main.loop.iter.check375 ]
  %n.vec395 = and i64 %i.qw, -4                   ; 4 uses
  %i.rf = shl i64 %n.vec395, 1
  %i.rg = add i64 %i.rf, %i.qr                    ; 2 uses
  %i.rh = shl i64 %n.vec395, 2
  %i.ri = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rh ; 2 uses
  %broadcast.splatinsert404 = insertelement <4 x i64> poison, i64 %bc.resume.val398, i64 0
  %broadcast.splat405 = shufflevector <4 x i64> %broadcast.splatinsert404, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction406 = add nuw nsw <4 x i64> %broadcast.splat405, <i64 0, i64 2, i64 4, i64 6>
  br label %vec.epilog.vector.body396

vec.epilog.vector.body396:                        ; preds = %vec.epilog.vector.body396, %vec.epilog.ph393
  %index397 = phi i64 [ %vec.epilog.resume.val394, %vec.epilog.ph393 ], [ %index.next403, %vec.epilog.vector.body396 ] ; 2 uses
  %vec.ind409 = phi <4 x i64> [ %induction406, %vec.epilog.ph393 ], [ %vec.ind.next417, %vec.epilog.vector.body396 ] ; 3 uses
  %i.rj = shl i64 %index397, 2
  %next.gep398 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rj
  %13 = add nsw <4 x i64> %vec.ind409, %broadcast.splat401
  %.reass688 = add <4 x i64> %vec.ind409, %invariant.op687
  %14 = mul nsw <4 x i64> %.reass688, %broadcast.splat403
  %wide.gep411 = getelementptr [4 x i8], ptr %invariant.gep216.i, <4 x i64> %14
  %wide.masked.gather412 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep411, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !22
  %15 = mul nsw <4 x i64> %13, %broadcast.splat403
  %wide.gep413 = getelementptr [4 x i8], ptr %invariant.gep216.i, <4 x i64> %15
  %wide.masked.gather414 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep413, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !22
  %16 = shufflevector <4 x i32> %wide.masked.gather414, <4 x i32> %wide.masked.gather412, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.rk = lshr <8 x i32> %16, splat (i32 16)
  %interleaved.vec402 = trunc nuw <8 x i32> %i.rk to <8 x i16>
  store <8 x i16> %interleaved.vec402, ptr %next.gep398, align 2, !tbaa !24
  %index.next403 = add nuw i64 %index397, 4       ; 2 uses
  %vec.ind.next417 = add nuw nsw <4 x i64> %vec.ind409, splat (i64 8)
  %i.rl = icmp eq i64 %index.next403, %n.vec395
  br i1 %i.rl, label %vec.epilog.middle.block404, label %vec.epilog.vector.body396, !llvm.loop !382

vec.epilog.middle.block404:                       ; preds = %vec.epilog.vector.body396
  %cmp.n405 = icmp eq i64 %i.qw, %n.vec395
  br i1 %cmp.n405, label %.preheader3.loopexit258.i, label %._crit_edge209.us231.i.preheader

._crit_edge209.us231.i.preheader:                 ; preds = %iter.check389, %vec.epilog.iter.check390, %vec.epilog.middle.block404
  %indvars.iv321.i.ph = phi i64 [ %i.qr, %iter.check389 ], [ %i.qz, %vec.epilog.iter.check390 ], [ %i.rg, %vec.epilog.middle.block404 ]
  %.9211.us223.i.ph = phi ptr [ %.6.lcssa.i, %iter.check389 ], [ %i.rb, %vec.epilog.iter.check390 ], [ %i.ri, %vec.epilog.middle.block404 ]
  br label %._crit_edge209.us231.i

._crit_edge209.us231.i:                           ; preds = %._crit_edge209.us231.i.preheader, %._crit_edge209.us231.i
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %._crit_edge209.us231.i ], [ %indvars.iv321.i.ph, %._crit_edge209.us231.i.preheader ] ; 2 uses
  %.9211.us223.i = phi ptr [ %i.rm, %._crit_edge209.us231.i ], [ %.9211.us223.i.ph, %._crit_edge209.us231.i.preheader ] ; 3 uses
  %i.rm = getelementptr i8, ptr %.9211.us223.i, i64 4 ; 2 uses
  %i.rn = add nsw i64 %indvars.iv321.i, %i.ag     ; 2 uses
  %i.ro = add nsw i64 %i.rn, 1
  %i.rp = mul nsw i64 %i.ro, %i.aa
  %gep219.us225.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rp
  %.pre333.i = load i32, ptr %gep219.us225.i, align 4, !tbaa !22
  %i.rq = mul nsw i64 %i.rn, %i.aa
  %gep217.us224.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rq
  %.pre.i = load i32, ptr %gep217.us224.i, align 4, !tbaa !22
  %i.rr = lshr i32 %.pre.i, 16
  %i.rs = trunc nuw i32 %i.rr to i16
  store i16 %i.rs, ptr %.9211.us223.i, align 2, !tbaa !24
  %i.rt = lshr i32 %.pre333.i, 16
  %i.ru = trunc nuw i32 %i.rt to i16
  %i.rv = getelementptr inbounds nuw i8, ptr %.9211.us223.i, i64 2
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !24
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 2 ; 3 uses
  %i.rw = icmp slt i64 %indvars.iv.next322.i, %invariant.op383.i
  br i1 %i.rw, label %._crit_edge209.us231.i, label %.preheader3.loopexit258.i, !llvm.loop !383

bb.e:                                             ; preds = %._crit_edge179.i, %.lr.ph183.i
  %indvars.iv318.i = phi i64 [ %i.hv, %.lr.ph183.i ], [ %indvars.iv.next319.i, %._crit_edge179.i ] ; 2 uses
  %.6181.i = phi ptr [ %.3534.lcssa.i, %.lr.ph183.i ], [ %.8.lcssa.i, %._crit_edge179.i ] ; 6 uses
  %i.rx = add nsw i64 %indvars.iv318.i, %i.ag     ; 4 uses
  %i.ry = mul nsw i64 %i.rx, %i.aa
  %gep187.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.ry ; 6 uses
  %i.rz = add nsw i64 %i.rx, 1
  %i.sa = mul nsw i64 %i.rz, %i.aa
  %gep189.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sa ; 6 uses
  %i.sb = add nsw i64 %i.rx, 2
  %i.sc = mul nsw i64 %i.sb, %i.aa
  %gep191.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sc ; 6 uses
  %i.sd = add nsw i64 %i.rx, 3
  %i.se = mul nsw i64 %i.sd, %i.aa
  %gep193.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.se ; 6 uses
  br i1 %i.ht, label %iter.check484, label %.preheader6.i

iter.check484:                                    ; preds = %bb.e
  br i1 %min.iters.check456, label %.lr.ph165.i.preheader, label %vector.main.loop.iter.check457

vector.main.loop.iter.check457:                   ; preds = %iter.check484
  br i1 %min.iters.check458, label %vec.epilog.ph488, label %vector.ph459

vector.ph459:                                     ; preds = %vector.main.loop.iter.check457
  %i.sf = getelementptr i8, ptr %gep193.i, i64 %i.hz ; 2 uses
  %i.sg = getelementptr i8, ptr %gep191.i, i64 %i.hz ; 2 uses
  %i.sh = getelementptr i8, ptr %gep189.i, i64 %i.hz ; 2 uses
  %i.si = getelementptr i8, ptr %gep187.i, i64 %i.hz ; 2 uses
  %i.sj = getelementptr i8, ptr %.6181.i, i64 %i.ia ; 2 uses
  br label %vector.body461

vector.body461:                                   ; preds = %vector.ph459, %vector.body461
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next481, %vector.body461 ] ; 3 uses
  %i.sk = shl i64 %index462, 3                    ; 4 uses
  %next.gep463 = getelementptr i8, ptr %gep193.i, i64 %i.sk
  %next.gep464 = getelementptr i8, ptr %gep191.i, i64 %i.sk
  %next.gep465 = getelementptr i8, ptr %gep189.i, i64 %i.sk
  %next.gep466 = getelementptr i8, ptr %gep187.i, i64 %i.sk
  %i.sl = shl i64 %index462, 4
  %next.gep467 = getelementptr i8, ptr %.6181.i, i64 %i.sl
  %wide.vec468 = load <32 x i32>, ptr %next.gep466, align 4, !tbaa !22
  %wide.vec471 = load <32 x i32>, ptr %next.gep465, align 4, !tbaa !22
  %wide.vec474 = load <32 x i32>, ptr %next.gep464, align 4, !tbaa !22
  %wide.vec477 = load <32 x i32>, ptr %next.gep463, align 4, !tbaa !22
  %i.sm = shufflevector <32 x i32> %wide.vec468, <32 x i32> %wide.vec471, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.sn = lshr <64 x i32> %i.sm, splat (i32 16)
  %i.so = trunc nuw <64 x i32> %i.sn to <64 x i16>
  %i.sp = shufflevector <32 x i32> %wide.vec474, <32 x i32> %wide.vec477, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.sq = lshr <64 x i32> %i.sp, splat (i32 16)
  %i.sr = trunc nuw <64 x i32> %i.sq to <64 x i16>
  %interleaved.vec480 = shufflevector <64 x i16> %i.so, <64 x i16> %i.sr, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec480, ptr %next.gep467, align 2, !tbaa !24
  %index.next481 = add nuw i64 %index462, 16      ; 2 uses
  %i.ss = icmp eq i64 %index.next481, %n.vec460
  br i1 %i.ss, label %middle.block482, label %vector.body461, !llvm.loop !384

middle.block482:                                  ; preds = %vector.body461
  br i1 %cmp.n483, label %.preheader6.i, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block482
  br i1 %min.epilog.iters.check487, label %.lr.ph165.i.preheader, label %vec.epilog.ph488, !prof !27

vec.epilog.ph488:                                 ; preds = %vector.main.loop.iter.check457, %vec.epilog.iter.check485
  %vec.epilog.resume.val489 = phi i64 [ %n.vec460, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check457 ]
  %i.st = getelementptr i8, ptr %gep193.i, i64 %i.id ; 2 uses
  %i.su = getelementptr i8, ptr %gep191.i, i64 %i.id ; 2 uses
  %i.sv = getelementptr i8, ptr %gep189.i, i64 %i.id ; 2 uses
  %i.sw = getelementptr i8, ptr %gep187.i, i64 %i.id ; 2 uses
  %i.sx = getelementptr i8, ptr %.6181.i, i64 %i.ie ; 2 uses
  br label %vec.epilog.vector.body491

vec.epilog.vector.body491:                        ; preds = %vec.epilog.vector.body491, %vec.epilog.ph488
  %index492 = phi i64 [ %vec.epilog.resume.val489, %vec.epilog.ph488 ], [ %index.next511, %vec.epilog.vector.body491 ] ; 3 uses
  %i.sy = shl i64 %index492, 3                    ; 4 uses
  %next.gep493 = getelementptr i8, ptr %gep193.i, i64 %i.sy
  %next.gep494 = getelementptr i8, ptr %gep191.i, i64 %i.sy
  %next.gep495 = getelementptr i8, ptr %gep189.i, i64 %i.sy
  %next.gep496 = getelementptr i8, ptr %gep187.i, i64 %i.sy
  %i.sz = shl i64 %index492, 4
  %next.gep497 = getelementptr i8, ptr %.6181.i, i64 %i.sz
  %wide.vec498 = load <8 x i32>, ptr %next.gep496, align 4, !tbaa !22
  %wide.vec501 = load <8 x i32>, ptr %next.gep495, align 4, !tbaa !22
  %wide.vec504 = load <8 x i32>, ptr %next.gep494, align 4, !tbaa !22
  %wide.vec507 = load <8 x i32>, ptr %next.gep493, align 4, !tbaa !22
  %i.ta = shufflevector <8 x i32> %wide.vec498, <8 x i32> %wide.vec501, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.tb = shufflevector <8 x i32> %wide.vec504, <8 x i32> %wide.vec507, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.tc = shufflevector <16 x i32> %i.ta, <16 x i32> %i.tb, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.td = lshr <32 x i32> %i.tc, splat (i32 16)
  %interleaved.vec510 = trunc nuw <32 x i32> %i.td to <32 x i16>
  store <32 x i16> %interleaved.vec510, ptr %next.gep497, align 2, !tbaa !24
  %index.next511 = add nuw i64 %index492, 4       ; 2 uses
  %i.te = icmp eq i64 %index.next511, %n.vec490
  br i1 %i.te, label %vec.epilog.middle.block512, label %vec.epilog.vector.body491, !llvm.loop !385

vec.epilog.middle.block512:                       ; preds = %vec.epilog.vector.body491
  br i1 %cmp.n513, label %.preheader6.i, label %.lr.ph165.i.preheader

.lr.ph165.i.preheader:                            ; preds = %iter.check484, %vec.epilog.iter.check485, %vec.epilog.middle.block512
  %.0467163.i.ph = phi i32 [ 0, %iter.check484 ], [ %i.hy, %vec.epilog.iter.check485 ], [ %i.ic, %vec.epilog.middle.block512 ]
  %.0469162.i.ph = phi ptr [ %gep193.i, %iter.check484 ], [ %i.sf, %vec.epilog.iter.check485 ], [ %i.st, %vec.epilog.middle.block512 ]
  %.0471161.i.ph = phi ptr [ %gep191.i, %iter.check484 ], [ %i.sg, %vec.epilog.iter.check485 ], [ %i.su, %vec.epilog.middle.block512 ]
  %.0473160.i.ph = phi ptr [ %gep189.i, %iter.check484 ], [ %i.sh, %vec.epilog.iter.check485 ], [ %i.sv, %vec.epilog.middle.block512 ]
  %.0475159.i.ph = phi ptr [ %gep187.i, %iter.check484 ], [ %i.si, %vec.epilog.iter.check485 ], [ %i.sw, %vec.epilog.middle.block512 ]
  %.7158.i.ph = phi ptr [ %.6181.i, %iter.check484 ], [ %i.sj, %vec.epilog.iter.check485 ], [ %i.sx, %vec.epilog.middle.block512 ]
  br label %.lr.ph165.i

.preheader6.i:                                    ; preds = %.lr.ph165.i, %middle.block482, %vec.epilog.middle.block512, %bb.e
  %.7.lcssa.i = phi ptr [ %.6181.i, %bb.e ], [ %i.sx, %vec.epilog.middle.block512 ], [ %i.sj, %middle.block482 ], [ %i.ve, %.lr.ph165.i ] ; 6 uses
  %.0475.lcssa.i = phi ptr [ %gep187.i, %bb.e ], [ %i.sw, %vec.epilog.middle.block512 ], [ %i.si, %middle.block482 ], [ %i.vf, %.lr.ph165.i ] ; 5 uses
  %.0473.lcssa.i = phi ptr [ %gep189.i, %bb.e ], [ %i.sv, %vec.epilog.middle.block512 ], [ %i.sh, %middle.block482 ], [ %i.vg, %.lr.ph165.i ] ; 5 uses
  %.0471.lcssa.i = phi ptr [ %gep191.i, %bb.e ], [ %i.su, %vec.epilog.middle.block512 ], [ %i.sg, %middle.block482 ], [ %i.vh, %.lr.ph165.i ] ; 5 uses
  %.0469.lcssa.i = phi ptr [ %gep193.i, %bb.e ], [ %i.st, %vec.epilog.middle.block512 ], [ %i.sf, %middle.block482 ], [ %i.vi, %.lr.ph165.i ] ; 5 uses
  %.0467.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.hu, %vec.epilog.middle.block512 ], [ %i.hu, %middle.block482 ], [ %i.hu, %.lr.ph165.i ] ; 5 uses
  %i.tf = icmp slt i32 %.0467.lcssa.i, %.sroa.speculated
  br i1 %i.tf, label %iter.check428, label %._crit_edge179.i

iter.check428:                                    ; preds = %.preheader6.i
  %i.tg = xor i32 %.0467.lcssa.i, -1
  %i.th = add i32 %.sroa.speculated, %i.tg        ; 3 uses
  %i.ti = zext i32 %i.th to i64
  %i.tj = add nuw nsw i64 %i.ti, 1                ; 5 uses
  %min.iters.check408 = icmp ult i32 %i.th, 3
  br i1 %min.iters.check408, label %.lr.ph178.i.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %iter.check428
  %min.iters.check410 = icmp ult i32 %i.th, 15
  br i1 %min.iters.check410, label %vec.epilog.ph432, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.tk = and i64 %i.tj, 12
  %n.vec412 = and i64 %i.tj, 8589934576           ; 6 uses
  %i.tl = trunc i64 %n.vec412 to i32
  %i.tm = add i32 %.0467.lcssa.i, %i.tl
  %i.tn = shl nuw nsw i64 %n.vec412, 2            ; 4 uses
  %i.to = getelementptr i8, ptr %.0469.lcssa.i, i64 %i.tn
  %i.tp = getelementptr i8, ptr %.0471.lcssa.i, i64 %i.tn
  %i.tq = getelementptr i8, ptr %.0473.lcssa.i, i64 %i.tn
  %i.tr = getelementptr i8, ptr %.0475.lcssa.i, i64 %i.tn
  %i.ts = shl nuw nsw i64 %n.vec412, 3
  %i.tt = getelementptr i8, ptr %.7.lcssa.i, i64 %i.ts ; 2 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph411, %vector.body413
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next425, %vector.body413 ] ; 3 uses
  %i.tu = shl i64 %index414, 2                    ; 4 uses
  %next.gep415 = getelementptr i8, ptr %.0469.lcssa.i, i64 %i.tu
  %next.gep416 = getelementptr i8, ptr %.0471.lcssa.i, i64 %i.tu
  %next.gep417 = getelementptr i8, ptr %.0473.lcssa.i, i64 %i.tu
  %next.gep418 = getelementptr i8, ptr %.0475.lcssa.i, i64 %i.tu
  %i.tv = shl i64 %index414, 3
  %next.gep419 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.tv
  %wide.load420 = load <16 x i32>, ptr %next.gep418, align 4, !tbaa !22
  %wide.load421 = load <16 x i32>, ptr %next.gep417, align 4, !tbaa !22
  %wide.load422 = load <16 x i32>, ptr %next.gep416, align 4, !tbaa !22
  %wide.load423 = load <16 x i32>, ptr %next.gep415, align 4, !tbaa !22
  %i.tw = shufflevector <16 x i32> %wide.load420, <16 x i32> %wide.load421, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tx = lshr <32 x i32> %i.tw, splat (i32 16)
  %i.ty = trunc nuw <32 x i32> %i.tx to <32 x i16>
  %i.tz = shufflevector <16 x i32> %wide.load422, <16 x i32> %wide.load423, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ua = lshr <32 x i32> %i.tz, splat (i32 16)
  %i.ub = trunc nuw <32 x i32> %i.ua to <32 x i16>
  %interleaved.vec424 = shufflevector <32 x i16> %i.ty, <32 x i16> %i.ub, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec424, ptr %next.gep419, align 2, !tbaa !24
  %index.next425 = add nuw i64 %index414, 16      ; 2 uses
  %i.uc = icmp eq i64 %index.next425, %n.vec412
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.4:bb.a

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit50
  %.pre = load i32, ptr %7, align 4, !tbaa !30
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZN4ncnn3Mat7channelEi.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.ch = add nsw i32 %.048129, 1
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !30
  %.not.not = icmp slt i32 %.048129, %i.ci
  br i1 %.not.not, label %bb.c, label %._crit_edge132

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.cj = phi i32 [ %i.cp, %._crit_edge ], [ %.pre, %.lr.ph.preheader ]
  %i.ck = phi i32 [ %i.cr, %._crit_edge ], [ %i.cf, %.lr.ph.preheader ]
  %.047127 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cl = sub nsw i32 %i.ck, %.047127
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 2 uses
  %i.cm = load i32, ptr %8, align 4, !tbaa !30    ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph
  %.pre133 = load i32, ptr %9, align 4, !tbaa !30
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %.lr.ph
  %i.co = load i32, ptr %14, align 4, !tbaa !30
  %.val81 = load ptr, ptr %13, align 8, !tbaa !15
  call fastcc void @_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val81, i32 noundef %i.be, i32 noundef %.sroa.speculated123, i32 noundef %.047127, i32 noundef %.sroa.speculated119, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(72) %15)
  %i.cp = load i32, ptr %7, align 4, !tbaa !30    ; 2 uses
  %i.cq = add nsw i32 %i.cp, %.047127             ; 2 uses
  %i.cr = load i32, ptr %6, align 4, !tbaa !30    ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !971

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ct = phi i32 [ %i.eq, %.noexc ], [ %.pre133, %.noexc.preheader ] ; 2 uses
  %i.cu = phi i32 [ %i.es, %.noexc ], [ %i.cm, %.noexc.preheader ]
  %.0126 = phi i32 [ %i.er, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.cv = sub nsw i32 %i.cu, %.0126
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.cw = load i32, ptr %3, align 4, !tbaa !30
  %i.cx = sdiv i32 %i.be, %i.cw
  %i.cy = load ptr, ptr %10, align 8, !tbaa !15, !noalias !982
  %i.cz = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !982
  %i.da = sext i32 %i.cx to i64
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !17, !noalias !982 ; 3 uses
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dd
  %i.df = load i32, ptr %i.ah, align 8, !tbaa !32, !noalias !982
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !46, !noalias !982
  %i.dh = sdiv i32 %.0126, %i.ct
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !45, !alias.scope !983
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !17, !alias.scope !983
  store i32 %i.df, ptr %i.al, align 8, !tbaa !32, !alias.scope !983
  store ptr %i.dg, ptr %i.am, align 8, !tbaa !46, !alias.scope !983
  %i.dj = load <2 x i32>, ptr %i.ad, align 4, !tbaa !30, !noalias !982
  %i.dk = load i32, ptr %i.ae, align 8, !tbaa !35, !noalias !982
  %i.dl = load i32, ptr %i.ad, align 4, !tbaa !31, !noalias !982
  %i.dm = sext i32 %i.dl to i64
  %i.dn = sext i32 %i.dk to i64
  %i.do = mul nsw i64 %i.dn, %i.dm                ; 2 uses
  %i.dp = mul i64 %i.dc, %i.do
  %i.dq = mul i64 %i.dp, %i.di
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dq
  store ptr %i.dr, ptr %17, align 8, !tbaa !15, !alias.scope !983
  %i.ds = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dt = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.ds, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.dt, ptr %i.an, align 8, !tbaa !30, !alias.scope !983
  store i32 1, ptr %i.ao, align 8, !tbaa !33, !alias.scope !983
  store i64 %i.do, ptr %i.ap, align 8, !tbaa !16, !alias.scope !983
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.du = load i32, ptr %7, align 4, !tbaa !30
  %i.dv = sdiv i32 %.047127, %i.du
  %i.dw = load ptr, ptr %11, align 8, !tbaa !15, !noalias !984
  %i.dx = load i64, ptr %i.as, align 8, !tbaa !16, !noalias !984
  %i.dy = sext i32 %i.dv to i64
  %i.dz = mul i64 %i.dx, %i.dy
  %i.ea = load i64, ptr %i.at, align 8, !tbaa !17, !noalias !984 ; 3 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  %i.ed = load i32, ptr %i.au, align 8, !tbaa !32, !noalias !984
  %i.ee = load ptr, ptr %i.av, align 8, !tbaa !46, !noalias !984
  store ptr null, ptr %i.aw, align 8, !tbaa !45, !alias.scope !985
  store i64 %i.ea, ptr %i.ax, align 8, !tbaa !17, !alias.scope !985
  store i32 %i.ed, ptr %i.ay, align 8, !tbaa !32, !alias.scope !985
  store ptr %i.ee, ptr %i.az, align 8, !tbaa !46, !alias.scope !985
  %i.ef = load <2 x i32>, ptr %i.aq, align 4, !tbaa !30, !noalias !984
  %i.eg = load i32, ptr %i.ar, align 8, !tbaa !35, !noalias !984
  %i.eh = load i32, ptr %i.aq, align 4, !tbaa !31, !noalias !984
  %i.ei = sext i32 %i.eh to i64
  %i.ej = sext i32 %i.eg to i64
  %i.ek = mul nsw i64 %i.ej, %i.ei                ; 2 uses
  %i.el = mul i64 %i.ea, %i.ek
  %i.em = mul i64 %i.el, %i.di
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em
  store ptr %i.en, ptr %18, align 8, !tbaa !15, !alias.scope !985
  %i.eo = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ep = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ep, ptr %i.ba, align 8, !tbaa !30, !alias.scope !985
  store i32 1, ptr %i.bb, align 8, !tbaa !33, !alias.scope !985
  store i64 %i.ek, ptr %i.bc, align 8, !tbaa !16, !alias.scope !985
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %18, ptr %i.bp, i32 noundef 64, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0126, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.eq = load i32, ptr %9, align 4, !tbaa !30    ; 2 uses
  %i.er = add nsw i32 %i.eq, %.0126               ; 2 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !30    ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc, label %._crit_edge, !llvm.loop !980

._crit_edge132:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge132, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #26
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr>, <16 x i1>, <16 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <31 x float> @llvm.masked.load.v31f32.p0(ptr captures(none), <31 x i1>, <31 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !10, i64 0}
!16 = !{!14, !12, i64 64}
!17 = !{!14, !12, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"float", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!"branch_weights", i32 8, i32 24}
!29 = !{!"branch_weights", i32 8, i32 56}
!30 = !{!7, !7, i64 0}
!31 = !{!14, !7, i64 44}
!32 = !{!14, !7, i64 24}
!33 = !{!14, !7, i64 56}
!34 = !{!12, !12, i64 0}
!35 = !{!14, !7, i64 48}
!36 = !{!11, !11, i64 0}
!37 = !{!"p1 float", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"bool", !6, i64 0}
!40 = !{!"_ZTSN4ncnn6OptionE", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !39, i64 28, !39, i64 29, !39, i64 30, !39, i64 31, !39, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !39, i64 36, !39, i64 37, !39, i64 38, !39, i64 39, !7, i64 40, !39, i64 44, !39, i64 45, !39, i64 46, !39, i64 47, !6, i64 48, !39, i64 49, !39, i64 50, !39, i64 51, !39, i64 52, !39, i64 53, !39, i64 54, !39, i64 55, !39, i64 56, !39, i64 57, !39, i64 58, !39, i64 59, !39, i64 60, !39, i64 61, !39, i64 62, !39, i64 63}
!41 = !{!40, !7, i64 4}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!43}
!45 = !{!14, !11, i64 8}
!46 = !{!14, !13, i64 32}
!47 = !{!"vtable pointer", !5, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!40, !13, i64 16}
!50 = !{!14, !7, i64 52}
!51 = !{!14, !7, i64 40}
!52 = distinct !{!52, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!67 = distinct !{!67, !66, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !80, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19, !25, !26}
!103 = distinct !{!103, !19, !25, !26}
!104 = distinct !{!104, !19, !26, !25}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19, !25, !26}
!107 = distinct !{!107, !19, !25, !26}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19, !26, !25}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!112 = distinct !{!112, !111, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19, !25, !26}
!123 = distinct !{!123, !19, !25, !26}
!124 = distinct !{!124, !19, !26, !25}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19, !25, !26}
!127 = distinct !{!127, !19, !25, !26}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19, !26, !25}
!130 = distinct !{!130, !19}
!131 = !{!53}
!132 = !{!67}
!133 = !{!81}
!134 = !{!95}
!135 = !{!112}
!136 = distinct !{!136, !19, !25, !26}
!137 = distinct !{!137, !19, !25, !26}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !19, !26, !25}
!140 = distinct !{!140, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!141 = distinct !{!141, !140, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!142 = distinct !{!142, !19}
!143 = distinct !{!143, !19}
!144 = distinct !{!144, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!145 = distinct !{!145, !144, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!147 = distinct !{!147, !146, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!149 = distinct !{!149, !148, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !19}
!152 = distinct !{!152, !19}
end_hunk_2
begin_hunk_3_@llvm.exp.v4f32
!183 = distinct !{!183, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!184 = distinct !{!184, !183, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!186 = distinct !{!186, !185, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!187 = distinct !{!187, !19}
!188 = distinct !{!188, !19}
!189 = distinct !{!189, !19}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!193 = distinct !{!193, !192, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!194 = distinct !{!194, !19}
!195 = distinct !{!195, !19}
!196 = distinct !{!196, !19}
!197 = distinct !{!197, !19}
!198 = distinct !{!198, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!199 = distinct !{!199, !198, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!200 = distinct !{!200, !19}
!201 = distinct !{!201, !19}
!202 = distinct !{!202, !19}
!203 = distinct !{!203, !19}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!206 = distinct !{!206, !205, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!207 = distinct !{!207, !19}
!208 = distinct !{!208, !19}
!209 = distinct !{!209, !19}
!210 = distinct !{!210, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!211 = distinct !{!211, !210, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!212 = distinct !{!212, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!213 = distinct !{!213, !212, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!214 = distinct !{!214, !19}
!215 = distinct !{!215, !19}
!216 = distinct !{!216, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!217 = distinct !{!217, !216, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!218 = distinct !{!218, !19}
!219 = distinct !{!219, !19}
!220 = distinct !{!220, !19}
!221 = distinct !{!221, !19}
!222 = distinct !{!222, !19}
!223 = distinct !{!223, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!224 = distinct !{!224, !223, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!225 = distinct !{!225, !19}
!226 = distinct !{!226, !19}
!227 = distinct !{!227, !19}
!228 = distinct !{!228, !19}
!229 = distinct !{!229, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!230 = distinct !{!230, !229, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!231 = distinct !{!231, !19}
!232 = distinct !{!232, !19}
!233 = distinct !{!233, !19}
!234 = distinct !{!234, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!235 = distinct !{!235, !234, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!236 = distinct !{!236, !19, !25, !26}
!237 = distinct !{!237, !19, !25, !26}
!238 = distinct !{!238, !19, !26, !25}
!239 = distinct !{!239, !19}
!240 = distinct !{!240, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!241 = distinct !{!241, !240, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!242 = distinct !{!242, !19, !25, !26}
!243 = distinct !{!243, !19, !25, !26}
!244 = distinct !{!244, !19, !26, !25}
!245 = distinct !{!245, !19}
!246 = distinct !{!246, !19}
!247 = distinct !{!247, !19}
!248 = distinct !{!248, !19}
!249 = distinct !{!249, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!250 = distinct !{!250, !249, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!251 = distinct !{!251, !19}
!252 = distinct !{!252, !19}
!253 = distinct !{!253, !19}
!254 = distinct !{!254, !19}
!255 = distinct !{!255, !19}
!256 = distinct !{!256, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!257 = distinct !{!257, !256, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!258 = distinct !{!258, !19}
!259 = distinct !{!259, !19}
!260 = distinct !{!260, !19}
!261 = distinct !{!261, !19}
!262 = distinct !{!262, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!263 = distinct !{!263, !262, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!264 = distinct !{!264, !19}
!265 = distinct !{!265, !19}
!266 = distinct !{!266, !19}
!267 = distinct !{!267, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!268 = distinct !{!268, !267, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!269 = distinct !{!269, !19, !25, !26}
!270 = distinct !{!270, !19, !25, !26}
!271 = distinct !{!271, !19, !26, !25}
!272 = distinct !{!272, !19}
!273 = distinct !{!273, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!274 = distinct !{!274, !273, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!275 = distinct !{!275, !19, !25, !26}
!276 = distinct !{!276, !19, !25, !26}
!277 = distinct !{!277, !19, !26, !25}
!278 = distinct !{!278, !19}
!279 = distinct !{!279, !19}
!280 = !{!141}
!281 = !{!145}
!282 = !{!147}
!283 = !{!149}
!284 = !{!156}
!285 = !{!162}
!286 = !{!169}
!287 = !{!174}
!288 = !{!176}
!289 = !{!178}
!290 = !{!182}
!291 = !{!184}
!292 = !{!186}
!293 = !{!193}
!294 = !{!199}
!295 = !{!206}
!296 = !{!211}
!297 = !{!213}
!298 = !{!217}
!299 = !{!224}
!300 = !{!230}
!301 = !{!235}
!302 = !{!241}
!303 = !{!250}
!304 = !{!257}
!305 = !{!263}
!306 = !{!268}
!307 = !{!274}
!308 = distinct !{!308, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!309 = distinct !{!309, !308, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!310 = distinct !{!310, !42}
!311 = distinct !{!311, !19}
!312 = distinct !{!312, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!313 = distinct !{!313, !312, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!314 = distinct !{!314, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!315 = distinct !{!315, !314, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!316 = distinct !{!316, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!317 = distinct !{!317, !316, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!318 = distinct !{!318, !19}
!319 = distinct !{!319, !19}
!320 = distinct !{!320, !19}
!321 = distinct !{!321, !19}
!322 = distinct !{!322, !19}
!323 = distinct !{!323, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!324 = distinct !{!324, !323, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!325 = distinct !{!325, !19}
!326 = distinct !{!326, !19}
!327 = distinct !{!327, !19}
!328 = distinct !{!328, !19}
!329 = distinct !{!329, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!330 = distinct !{!330, !329, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!331 = distinct !{!331, !19}
!332 = distinct !{!332, !19}
!333 = distinct !{!333, !19}
!334 = distinct !{!334, !19}
!335 = distinct !{!335, !19}
!336 = distinct !{!336, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!337 = distinct !{!337, !336, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!338 = distinct !{!338, !19}
!339 = distinct !{!339, !19}
!340 = distinct !{!340, !19}
!341 = !{!309}
!342 = !{!313}
!343 = !{!315}
!344 = !{!317}
!345 = !{!324}
!346 = !{!330}
!347 = !{!337}
!348 = distinct !{null}
!349 = distinct !{!349, i1 false, !"LVerDomain"}
!350 = distinct !{!350, !349}
!351 = distinct !{!351, !349}
!352 = distinct !{!352, !19, !25, !26}
!353 = distinct !{!353, !19, !25}
!354 = distinct !{!354, !20}
!355 = distinct !{!355, !19}
!356 = distinct !{!356, !19}
!357 = distinct !{!357, !19}
!358 = !{!40, !39, i64 39}
!359 = !{i8 0, i8 2}
!360 = !{}
!361 = !{!10, !10, i64 0}
!362 = !{!350}
!363 = !{!351}
!364 = distinct !{!364, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!365 = distinct !{!365, !364, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!366 = distinct !{!366, !19}
!367 = distinct !{!367, !19}
!368 = distinct !{!368, !19}
!369 = distinct !{!369, !19, !25, !26}
!370 = distinct !{!370, !19, !25, !26}
!371 = distinct !{!371, !19}
!372 = distinct !{!372, !19, !26, !25}
!373 = distinct !{!373, !19}
!374 = distinct !{!374, !19, !25, !26}
!375 = distinct !{!375, !19, !25, !26}
!376 = distinct !{!376, !19, !26, !25}
!377 = distinct !{!377, !19, !26, !25}
!378 = distinct !{!378, !19}
!379 = distinct !{!379, !19, !25, !26}
!380 = distinct !{!380, !19, !25, !26}
!381 = distinct !{!381, !19, !25, !26}
!382 = distinct !{!382, !19, !25, !26}
!383 = distinct !{!383, !19, !26, !25}
!384 = distinct !{!384, !19, !25, !26}
!385 = distinct !{!385, !19, !25, !26}
!386 = distinct !{!386, !19, !25, !26}
!387 = distinct !{!387, !19, !25, !26}
!388 = distinct !{!388, !19, !26, !25}
!389 = distinct !{!389, !19, !26, !25}
!390 = distinct !{!390, !19}
!391 = distinct !{!391, !19, !25, !26}
!392 = distinct !{!392, !19, !25, !26}
!393 = distinct !{!393, !19, !25, !26}
!394 = distinct !{!394, !19, !25, !26}
!395 = distinct !{!395, !19, !26, !25}
!396 = distinct !{!396, !19, !26, !25}
!397 = distinct !{!397, !19}
!398 = distinct !{!398, !19}
!399 = !{!365}
!400 = distinct !{!400, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!401 = distinct !{!401, !400, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!402 = distinct !{!402, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!403 = distinct !{!403, !402, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!404 = distinct !{!404, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!405 = distinct !{!405, !404, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!406 = distinct !{!406, !19}
!407 = distinct !{!407, !19}
!408 = distinct !{!408, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!409 = distinct !{!409, !408, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!410 = distinct !{!410, !19}
!411 = distinct !{!411, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!412 = distinct !{!412, !411, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!413 = distinct !{!413, !19}
!414 = distinct !{!414, !19}
!415 = distinct !{!415, !20}
!416 = distinct !{!416, !19}
!417 = distinct !{!417, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!418 = distinct !{!418, !417, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!419 = distinct !{!419, !19}
!420 = distinct !{!420, !20}
!421 = distinct !{!421, !19}
!422 = distinct !{!422, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!423 = distinct !{!423, !422, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!424 = distinct !{!424, !19}
!425 = distinct !{!425, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!426 = distinct !{!426, !425, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!427 = distinct !{!427, !19}
!428 = distinct !{!428, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!429 = distinct !{!429, !428, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!430 = distinct !{!430, !19}
!431 = distinct !{!431, !19}
!432 = distinct !{!432, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!433 = distinct !{!433, !432, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!434 = distinct !{!434, !19}
!435 = distinct !{!435, !20}
!436 = distinct !{!436, !19}
!437 = distinct !{!437, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!438 = distinct !{!438, !437, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!439 = distinct !{!439, !19}
!440 = distinct !{!440, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!441 = distinct !{!441, !440, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!442 = distinct !{!442, !19}
!443 = distinct !{!443, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!444 = distinct !{!444, !443, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!445 = distinct !{!445, !19}
!446 = distinct !{!446, !19}
!447 = distinct !{!447, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!448 = distinct !{!448, !447, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!449 = distinct !{!449, !19}
!450 = distinct !{!450, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!451 = distinct !{!451, !450, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!452 = distinct !{!452, !19}
!453 = distinct !{!453, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!454 = distinct !{!454, !453, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!455 = distinct !{!455, !19}
!456 = distinct !{!456, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!457 = distinct !{!457, !456, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!458 = distinct !{!458, !19}
!459 = distinct !{!459, !20}
!460 = distinct !{!460, !20}
!461 = distinct !{!461, !20}
!462 = distinct !{!462, !20}
!463 = distinct !{!463, !19}
!464 = !{!401}
!465 = !{!403}
!466 = !{!405}
!467 = !{!409}
!468 = !{!412}
!469 = !{!418}
!470 = !{!423}
!471 = !{!426}
!472 = !{!429}
!473 = !{!433}
!474 = !{!438}
!475 = !{!441}
!476 = !{!444}
!477 = !{!448}
!478 = !{!451}
!479 = !{!454}
!480 = !{!457}
!481 = distinct !{!481, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!482 = distinct !{!482, !481, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!483 = distinct !{!483, !19, !42}
!484 = distinct !{!484, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!485 = distinct !{!485, !484, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!486 = distinct !{!486, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!487 = distinct !{!487, !486, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!488 = distinct !{!488, !19}
!489 = !{!482}
!490 = !{!485}
!491 = !{!487}
!492 = distinct !{!492, !19}
!493 = distinct !{!493, !19}
!494 = distinct !{!494, !19}
!495 = distinct !{!495, !19}
!496 = distinct !{!496, !19}
!497 = distinct !{!497, !19}
!498 = distinct !{!498, !19}
!499 = distinct !{!499, !19}
!500 = distinct !{!500, !19}
!501 = distinct !{!501, !20}
!502 = distinct !{!502, !19}
!503 = distinct !{!503, !19}
!504 = distinct !{!504, !19}
!505 = distinct !{!505, !19}
!506 = distinct !{!506, !19}
!507 = distinct !{!507, !19}
!508 = distinct !{!508, !19}
!509 = distinct !{!509, !19}
!510 = distinct !{!510, !19}
!511 = distinct !{!511, !19}
!512 = distinct !{!512, !19}
!513 = distinct !{!513, !19}
!514 = distinct !{!514, !19}
!515 = distinct !{!515, !20}
!516 = distinct !{!516, !19}
!517 = distinct !{!517, !19}
!518 = distinct !{!518, !19}
!519 = distinct !{!519, !19}
!520 = distinct !{!520, !19}
!521 = distinct !{!521, !19}
!522 = distinct !{!522, !19}
!523 = distinct !{!523, !19}
!524 = distinct !{!524, !19}
!525 = distinct !{!525, !19}
!526 = distinct !{!526, !19}
!527 = distinct !{!527, !19}
!528 = distinct !{!528, !19}
!529 = distinct !{!529, !20}
!530 = distinct !{!530, !19}
!531 = distinct !{!531, !19}
!532 = distinct !{!532, !19}
!533 = distinct !{!533, !19}
!534 = distinct !{!534, !19}
!535 = distinct !{!535, !19}
!536 = distinct !{!536, !19}
!537 = distinct !{!537, !19}
!538 = distinct !{!538, !19}
!539 = distinct !{!539, !19}
!540 = distinct !{!540, !19}
!541 = distinct !{!541, !19}
!542 = distinct !{!542, !19}
!543 = distinct !{!543, !19, !25, !26}
!544 = distinct !{!544, !19, !25, !26}
!545 = distinct !{!545, !19, !25, !26}
!546 = distinct !{!546, !19, !25, !26}
!547 = distinct !{!547, !19, !26, !25}
!548 = distinct !{!548, !19, !26, !25}
!549 = distinct !{!549, !19}
!550 = distinct !{!550, !19}
!551 = distinct !{!551, !20}
!552 = distinct !{!552, !19}
!553 = distinct !{!553, !19}
!554 = distinct !{!554, !19}
!555 = distinct !{!555, !20}
!556 = distinct !{!556, !19}
!557 = distinct !{!557, !19}
!558 = distinct !{!558, !19}
!559 = distinct !{!559, !20}
!560 = distinct !{!560, !19}
!561 = distinct !{!561, !19}
!562 = distinct !{!562, !19}
!563 = distinct !{!563, !19, !25, !26}
!564 = distinct !{!564, !19, !25, !26}
!565 = distinct !{!565, !19, !25, !26}
!566 = distinct !{!566, !19, !25, !26}
!567 = distinct !{!567, !19, !26, !25}
!568 = distinct !{!568, !19, !26, !25}
!569 = distinct !{!569, !19}
!570 = distinct !{!570, !19}
!571 = !{!"double", !6, i64 0}
!572 = !{!571, !571, i64 0}
!573 = distinct !{!573, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!574 = distinct !{!574, !573, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!575 = distinct !{!575, !19}
!576 = distinct !{!576, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!577 = distinct !{!577, !576, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!578 = distinct !{!578, !19}
!579 = distinct !{!579, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!580 = distinct !{!580, !579, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!581 = distinct !{!581, !19}
!582 = distinct !{!582, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!583 = distinct !{!583, !582, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
end_hunk_3
