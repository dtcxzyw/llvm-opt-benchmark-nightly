inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.4:bb.a
.noexc40:                                         ; preds = %.noexc40.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %.noexc40.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %.noexc40.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %.noexc40.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.t, %.noexc40.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !29, !noalias !75
  %i.y = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !75
  %i.z = mul i64 %i.y, %indvars.iv93
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !34, !noalias !75 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !29, !noalias !78
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !78
  %i.af = mul i64 %i.ae, %indvars.iv93
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !34, !noalias !78 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph86, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph86:                                         ; preds = %.noexc40
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !39, !noalias !78
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !39, !noalias !75
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !18    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph86.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre97 = load i32, ptr %i.b, align 4, !tbaa !18
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph86, %_ZN4ncnn3MatD2Ev.exit.loopexit, %.noexc40
  %i.as = phi i32 [ %i.u, %.noexc40 ], [ %.pre97, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph86 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %.noexc40 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph86 ]
  %i.au = phi i32 [ %i.w, %.noexc40 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph86 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv93, %i.av
  br i1 %.not.not, label %.noexc40, label %._crit_edge89, !llvm.loop !81

.lr.ph86.split:                                   ; preds = %.lr.ph86, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph86 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph86 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph86 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !24
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !18
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated53 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated53 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph86.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !18
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre96 = load i32, ptr %5, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph86.split
  %i.bl = phi i32 [ %.pre96, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph86.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph86.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph86.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !82

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03684 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03783 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03684 to float
  %i.br = load float, ptr %9, align 4, !tbaa !24
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !18
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03783, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !18   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03783, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03684, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !18    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !83

._crit_edge89:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc40.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge89, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.cx

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not253 = icmp sgt i32 %i.k, %i.j
  br i1 %.not253, label %._crit_edge, label %.noexc22.lr.ph

.noexc22.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.aq = sext i32 %i.k to i64
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.aq, %.noexc22.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !39, !noalias !84
  %i.as = load ptr, ptr %3, align 8, !tbaa !29, !noalias !84
  %i.at = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !84
  %i.au = mul i64 %i.at, %indvars.iv
  %i.av = load i64, ptr %i.n, align 8, !tbaa !34, !noalias !84 ; 5 uses
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw ; 12 uses
  %i.ay = sext i32 %i.ar to i64                   ; 4 uses
  %i.az = load i32, ptr %i.o, align 4, !tbaa !39, !noalias !87 ; 36 uses
  %i.ba = load i32, ptr %i.p, align 8, !tbaa !90, !noalias !87 ; 8 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !29, !noalias !87
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !33, !noalias !87
  %i.bd = mul i64 %i.bc, %indvars.iv
  %i.be = load i64, ptr %i.r, align 8, !tbaa !34, !noalias !87 ; 5 uses
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf ; 8 uses
  %i.bh = sext i32 %i.az to i64                   ; 6 uses
  %i.bi = load i32, ptr %5, align 4, !tbaa !18    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 16
  br i1 %i.bj, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %.noexc22
  %i.bk = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bl = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.bm = load ptr, ptr %8, align 8, !tbaa !27
  %i.bn = load ptr, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  store i64 0, ptr %i.u, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.az, i64 noundef 64, i32 noundef 16, ptr noundef null)
          to label %.noexc31 unwind label %bb.cy

.noexc31:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  store i64 0, ptr %i.x, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.az, i64 noundef 64, i32 noundef 16, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i unwind label %bb.p

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i:         ; preds = %.noexc31
  %i.bo = icmp sgt i32 %i.ba, 0
  br i1 %i.bo, label %.lr.ph154.i, label %._crit_edge.i

.lr.ph154.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %i.bp = load ptr, ptr %17, align 8, !tbaa !29
  %i.bq = load ptr, ptr %16, align 8, !tbaa !29
  %i.br = icmp sgt i32 %i.az, 0                   ; 3 uses
  %i.bs = shl i32 %i.az, 4                        ; 7 uses
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.bt, -7
  %wide.trip.count165.i = zext nneg i32 %i.ba to i64
  %wide.trip.count.i = zext nneg i32 %i.az to i64 ; 2 uses
  %i.bu = mul i64 %i.av, %i.ay                    ; 3 uses
  %i.bv = mul i64 %i.be, %i.bh                    ; 3 uses
  br label %bb.q

._crit_edge.i:                                    ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !91  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit117.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 acq_rel, align 4
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit117.i

bb.e:                                             ; preds = %bb.d
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !92  ; 3 uses
  %.not3.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %17, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !93
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.ca)
          to label %_ZN4ncnn3MatD2Ev.exit117.i unwind label %bb.i, !inline_history !95

bb.g:                                             ; preds = %bb.e
  %.not.i135.i = icmp eq ptr %i.ca, null
  br i1 %.not.i135.i, label %_ZN4ncnn3MatD2Ev.exit117.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ca) #3
  br label %_ZN4ncnn3MatD2Ev.exit117.i

bb.i:                                             ; preds = %bb.f
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit117.i:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !91  ; 2 uses
  %.not.i118.i = icmp eq ptr %i.cg, null
  br i1 %.not.i118.i, label %_ZN4ncnnL34resize_bilinear_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit117.i
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %_ZN4ncnnL34resize_bilinear_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.k:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !92  ; 3 uses
  %.not3.i119.i = icmp eq ptr %i.cj, null
  %i.ck = load ptr, ptr %16, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i119.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !93
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.ck)
          to label %_ZN4ncnnL34resize_bilinear_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.o, !inline_history !95

bb.m:                                             ; preds = %bb.k
  %.not.i133.i = icmp eq ptr %i.ck, null
  br i1 %.not.i133.i, label %_ZN4ncnnL34resize_bilinear_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ck) #3
  br label %_ZN4ncnnL34resize_bilinear_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.o:                                             ; preds = %bb.l
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #20
  unreachable

bb.p:                                             ; preds = %.noexc31
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !91  ; 2 uses
  %.not.i126.i = icmp eq ptr %i.cr, null
  br i1 %.not.i126.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.u

bb.q:                                             ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, %.lr.ph154.i
  %indvars.iv162.i = phi i64 [ 0, %.lr.ph154.i ], [ %indvars.iv.next163.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 5 uses
  %.0153.i = phi ptr [ %i.bm, %.lr.ph154.i ], [ %i.ld, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 7 uses
  %.094151.i = phi i32 [ -2, %.lr.ph154.i ], [ %i.ct, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 2 uses
  %.095150.i = phi ptr [ %i.bp, %.lr.ph154.i ], [ %.1.i208, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 7 uses
  %.096149.i = phi ptr [ %i.bq, %.lr.ph154.i ], [ %.197.i207, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 8 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv162.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !18 ; 6 uses
  %i.cu = icmp eq i32 %i.ct, %.094151.i
  br i1 %i.cu, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = add nsw i32 %.094151.i, 1
  %i.cw = icmp eq i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = add nsw i32 %i.ct, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.bu, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cz
  br i1 %i.br, label %.lr.ph148.i, label %.loopexit.i.thread

.lr.ph148.i:                                      ; preds = %bb.s, %.lr.ph148.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %.lr.ph148.i ], [ 0, %bb.s ] ; 3 uses
  %.092146.i = phi ptr [ %i.dv, %.lr.ph148.i ], [ %i.bk, %bb.s ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv157.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18
  %i.dd = shl nsw i32 %i.dc, 4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.de ; 2 uses
  %i.dg = load float, ptr %.092146.i, align 4, !tbaa !24
  %i.dh = insertelement <16 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <16 x float> %i.dh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dj = getelementptr inbounds nuw i8, ptr %.092146.i, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !24
  %i.dl = insertelement <16 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <16 x float> %i.dl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dn = load <16 x bfloat>, ptr %i.df, align 1, !tbaa !53
  %i.do = fpext fast <16 x bfloat> %i.dn to <16 x float>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dq = load <16 x bfloat>, ptr %i.dp, align 1, !tbaa !53
  %i.dr = fpext fast <16 x bfloat> %i.dq to <16 x float>
  %i.ds = fmul fast <16 x float> %i.di, %i.do
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> nofpclass(nan inf) %i.ds)
  %.idx.i = shl nuw nsw i64 %indvars.iv157.i, 6
  %i.du = getelementptr inbounds nuw i8, ptr %.096149.i, i64 %.idx.i
  store <16 x float> %i.dt, ptr %i.du, align 64, !tbaa !53
  %i.dv = getelementptr inbounds nuw i8, ptr %.092146.i, i64 8
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next158.i, %wide.trip.count.i
  br i1 %exitcond161.not.i, label %.loopexit.i.thread322, label %.lr.ph148.i, !llvm.loop !96

bb.t:                                             ; preds = %bb.r
  %i.dw = sext i32 %i.ct to i64
  %i.dx = mul i64 %i.bu, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dx
  %i.dz = add nsw i32 %i.ct, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul i64 %i.bu, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.eb
  br i1 %i.br, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.t ] ; 3 uses
  %.090144.i = phi ptr [ %i.fh, %.lr.ph.i ], [ %i.bk, %bb.t ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !18
  %i.ef = shl nsw i32 %i.ee, 4
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %i.ej = load float, ptr %.090144.i, align 4, !tbaa !24
  %i.ek = insertelement <16 x float> poison, float %i.ej, i64 0
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.5:bb.a
  %i.sl = fmul fast <16 x float> %wide.load507, %broadcast.splat498
  %i.sm = fmul fast <16 x float> %wide.load508, %broadcast.splat498
  %i.sn = fadd fast <16 x float> %i.sj, %i.sb
  %i.so = fadd fast <16 x float> %i.sk, %i.sc
  %i.sp = fadd fast <16 x float> %i.sl, %i.sd
  %i.sq = fadd fast <16 x float> %i.sm, %i.se
  %i.sr = bitcast <16 x float> %i.sn to <16 x i32>
  %i.ss = bitcast <16 x float> %i.so to <16 x i32>
  %i.st = bitcast <16 x float> %i.sp to <16 x i32>
  %i.su = bitcast <16 x float> %i.sq to <16 x i32>
  %i.sv = lshr <16 x i32> %i.sr, splat (i32 16)
  %i.sw = lshr <16 x i32> %i.ss, splat (i32 16)
  %i.sx = lshr <16 x i32> %i.st, splat (i32 16)
  %i.sy = lshr <16 x i32> %i.su, splat (i32 16)
  %i.sz = trunc nuw <16 x i32> %i.sv to <16 x i16>
  %i.ta = trunc nuw <16 x i32> %i.sw to <16 x i16>
  %i.tb = trunc nuw <16 x i32> %i.sx to <16 x i16>
  %i.tc = trunc nuw <16 x i32> %i.sy to <16 x i16>
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.rw ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 96
  store <16 x i16> %i.sz, ptr %i.td, align 2, !tbaa !56
  store <16 x i16> %i.ta, ptr %i.te, align 2, !tbaa !56
  store <16 x i16> %i.tb, ptr %i.tf, align 2, !tbaa !56
  store <16 x i16> %i.tc, ptr %i.tg, align 2, !tbaa !56
  %index.next509 = add nuw i64 %index500, 64      ; 2 uses
  %i.th = icmp eq i64 %index.next509, %n.vec494
  br i1 %i.th, label %middle.block510, label %vector.body499, !llvm.loop !108

middle.block510:                                  ; preds = %vector.body499
  %cmp.n511 = icmp eq i64 %i.rt, %n.vec494
  br i1 %cmp.n511, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i51, label %vec.epilog.iter.check515

vec.epilog.iter.check515:                         ; preds = %middle.block510
  %min.epilog.iters.check516 = icmp eq i64 %i.ru, 0
  br i1 %min.epilog.iters.check516, label %.lr.ph72.i.i53.preheader, label %vec.epilog.ph517, !prof !101

vec.epilog.ph517:                                 ; preds = %vector.main.loop.iter.check491, %vec.epilog.iter.check515
  %vec.epilog.resume.val512 = phi i64 [ %n.vec494, %vec.epilog.iter.check515 ], [ 0, %vector.main.loop.iter.check491 ]
  %n.vec518 = and i64 %i.rt, 8589934584           ; 3 uses
  %i.ti = add nuw nsw i64 %n.vec518, %i.rp
  %broadcast.splatinsert519 = insertelement <8 x float> poison, float %i.qo, i64 0
  %broadcast.splat520 = shufflevector <8 x float> %broadcast.splatinsert519, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert521 = insertelement <8 x float> poison, float %i.qn, i64 0
  %broadcast.splat522 = shufflevector <8 x float> %broadcast.splatinsert521, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body523

vec.epilog.vector.body523:                        ; preds = %vec.epilog.vector.body523, %vec.epilog.ph517
  %index524 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph517 ], [ %index.next527, %vec.epilog.vector.body523 ] ; 2 uses
  %i.tj = add nuw i64 %index524, %i.rp            ; 3 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.184.i211, i64 %i.tj
  %wide.load525 = load <8 x float>, ptr %i.tk, align 4, !tbaa !24
  %i.tl = fmul fast <8 x float> %wide.load525, %broadcast.splat520
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.1.i44212, i64 %i.tj
  %wide.load526 = load <8 x float>, ptr %i.tm, align 4, !tbaa !24
  %i.tn = fmul fast <8 x float> %wide.load526, %broadcast.splat522
  %i.to = fadd fast <8 x float> %i.tn, %i.tl
  %i.tp = bitcast <8 x float> %i.to to <8 x i32>
  %i.tq = lshr <8 x i32> %i.tp, splat (i32 16)
  %i.tr = trunc nuw <8 x i32> %i.tq to <8 x i16>
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.tj
  store <8 x i16> %i.tr, ptr %i.ts, align 2, !tbaa !56
  %index.next527 = add nuw i64 %index524, 8       ; 2 uses
  %i.tt = icmp eq i64 %index.next527, %n.vec518
  br i1 %i.tt, label %vec.epilog.middle.block528, label %vec.epilog.vector.body523, !llvm.loop !109

vec.epilog.middle.block528:                       ; preds = %vec.epilog.vector.body523
  %cmp.n529 = icmp eq i64 %i.rt, %n.vec518
  br i1 %cmp.n529, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i51, label %.lr.ph72.i.i53.preheader

.lr.ph72.i.i53.preheader:                         ; preds = %iter.check513, %vec.epilog.iter.check515, %vec.epilog.middle.block528
  %indvars.iv83.i.i54.ph = phi i64 [ %i.rp, %iter.check513 ], [ %i.rv, %vec.epilog.iter.check515 ], [ %i.ti, %vec.epilog.middle.block528 ]
  br label %.lr.ph72.i.i53

.lr.ph69.i.i57:                                   ; preds = %.lr.ph69.i.i57, %.lr.ph69.preheader.i.i56
  %indvars.iv80.i.i58 = phi i64 [ %i.rn, %.lr.ph69.preheader.i.i56 ], [ %indvars.iv.next81.i.i59, %.lr.ph69.i.i57 ] ; 4 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.184.i211, i64 %indvars.iv80.i.i58
  %i.tv = load <4 x float>, ptr %i.tu, align 1, !tbaa !53
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %.1.i44212, i64 %indvars.iv80.i.i58
  %i.tx = load <4 x float>, ptr %i.tw, align 1, !tbaa !53
  %i.ty = fmul fast <4 x float> %i.tv, %i.ri
  %i.tz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tx, <4 x float> nofpclass(nan inf) %i.rk, <4 x float> nofpclass(nan inf) %i.ty)
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv80.i.i58
  %i.ub = shufflevector <4 x float> %i.tz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.uc = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ub)
  %i.ud = bitcast <8 x bfloat> %i.uc to <2 x i64>
  %i.ue = extractelement <2 x i64> %i.ud, i64 0
  store i64 %i.ue, ptr %i.ua, align 1, !tbaa !53
  %indvars.iv.next81.i.i59 = add nuw nsw i64 %indvars.iv80.i.i58, 4 ; 2 uses
  %i.uf = trunc i64 %indvars.iv.next81.i.i59 to i32 ; 2 uses
  %i.ug = or i32 %i.uf, 3
  %i.uh = icmp slt i32 %i.ug, %i.lx
  br i1 %i.uh, label %.lr.ph69.i.i57, label %.preheader.i.i49, !llvm.loop !103

.lr.ph72.i.i53:                                   ; preds = %.lr.ph72.i.i53.preheader, %.lr.ph72.i.i53
  %indvars.iv83.i.i54 = phi i64 [ %indvars.iv.next84.i.i55, %.lr.ph72.i.i53 ], [ %indvars.iv83.i.i54.ph, %.lr.ph72.i.i53.preheader ] ; 4 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.184.i211, i64 %indvars.iv83.i.i54
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !24
  %i.uk = fmul fast float %i.uj, %i.qo
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.1.i44212, i64 %indvars.iv83.i.i54
  %i.um = load float, ptr %i.ul, align 4, !tbaa !24
  %i.un = fmul fast float %i.um, %i.qn
  %i.uo = fadd fast float %i.un, %i.uk
  %i.up = bitcast float %i.uo to i32
  %i.uq = lshr i32 %i.up, 16
  %i.ur = trunc nuw i32 %i.uq to i16
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv83.i.i54
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !56
  %indvars.iv.next84.i.i55 = add nuw nsw i64 %indvars.iv83.i.i54, 1 ; 2 uses
  %i.ut = trunc nuw i64 %indvars.iv.next84.i.i55 to i32
  %i.uu = icmp sgt i32 %i.lx, %i.ut
  br i1 %i.uu, label %.lr.ph72.i.i53, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i51, !llvm.loop !110

_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i51: ; preds = %.lr.ph72.i.i53, %middle.block510, %vec.epilog.middle.block528, %.preheader.i.i49
  %i.uv = getelementptr inbounds nuw i8, ptr %.099160.i, i64 8
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1 ; 2 uses
  %exitcond177.not.i = icmp eq i64 %indvars.iv.next174.i, %wide.trip.count176.i
  br i1 %exitcond177.not.i, label %._crit_edge.i37, label %bb.ap, !llvm.loop !111

bb.at:                                            ; preds = %bb.ao
  %i.uw = atomicrmw add ptr %i.mx, i32 -1 acq_rel, align 4
  %i.ux = icmp eq i32 %i.uw, 1
  br i1 %i.ux, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit.i33

bb.au:                                            ; preds = %bb.at
  %i.uy = load ptr, ptr %i.z, align 8, !tbaa !92  ; 3 uses
  %.not3.i127.i34 = icmp eq ptr %i.uy, null
  %i.uz = load ptr, ptr %14, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i127.i34, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.va = load ptr, ptr %i.uy, align 8, !tbaa !93
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8
  invoke void %i.vc(ptr noundef nonnull align 8 dereferenceable(8) %i.uy, ptr noundef %i.uz)
          to label %_ZN4ncnn3MatD2Ev.exit.i33 unwind label %bb.ay, !inline_history !95

bb.aw:                                            ; preds = %bb.au
  %.not.i130.i35 = icmp eq ptr %i.uz, null
  br i1 %.not.i130.i35, label %_ZN4ncnn3MatD2Ev.exit.i33, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.uz) #3
  br label %_ZN4ncnn3MatD2Ev.exit.i33

bb.ay:                                            ; preds = %bb.av
  %i.vd = landingpad { ptr, i32 }
          catch ptr null
  %i.ve = extractvalue { ptr, i32 } %i.vd, 0
  call void @__clang_call_terminate(ptr %i.ve) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i33:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  br label %.body

_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit116.i, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  %.pre = load i32, ptr %5, align 4, !tbaa !18
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.aa
  %i.vf = phi i32 [ %.pre, %_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ln, %bb.aa ] ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 4
  br i1 %i.vg, label %bb.ba, label %bb.by

bb.ba:                                            ; preds = %bb.az
  %i.vh = load ptr, ptr %6, align 8, !tbaa !27    ; 4 uses
  %i.vi = load ptr, ptr %7, align 8, !tbaa !26    ; 8 uses
  %i.vj = load ptr, ptr %8, align 8, !tbaa !27
  %i.vk = load ptr, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #3
  store i64 0, ptr %i.ag, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc112 unwind label %bb.cy

.noexc112:                                        ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #3
  store i64 0, ptr %i.aj, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78 unwind label %bb.bn

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78:       ; preds = %.noexc112
  %i.vl = icmp sgt i32 %i.ba, 0
  br i1 %i.vl, label %.lr.ph643.i, label %._crit_edge.i79

.lr.ph643.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78
  %i.vm = load ptr, ptr %13, align 8, !tbaa !29
  %i.vn = load ptr, ptr %12, align 8, !tbaa !29
  %i.vo = icmp sgt i32 %i.az, 3                   ; 3 uses
  %i.vp = shl i32 %i.az, 2                        ; 7 uses
  %i.vq = zext nneg i32 %i.vp to i64              ; 2 uses
  %invariant.op.i.i80 = add nsw i64 %i.vq, -7
  %wide.trip.count682.i = zext nneg i32 %i.ba to i64
  %invariant.op.i = add nsw i64 %i.bh, -3         ; 2 uses
  %invariant.op704.i = add nsw i64 %i.bh, -1      ; 2 uses
  %wide.trip.count.i81 = zext i32 %i.az to i64    ; 2 uses
  %i.vr = mul i64 %i.be, %i.bh
  %i.vs = mul i64 %i.av, %i.ay                    ; 3 uses
  br label %bb.bo

._crit_edge.i79:                                  ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78
  %i.vt = load ptr, ptr %i.ah, align 8, !tbaa !91 ; 2 uses
  %.not.i468.i = icmp eq ptr %i.vt, null
  br i1 %.not.i468.i, label %_ZN4ncnn3MatD2Ev.exit466.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i79
  %i.vu = atomicrmw add ptr %i.vt, i32 -1 acq_rel, align 4
  %i.vv = icmp eq i32 %i.vu, 1
  br i1 %i.vv, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit466.i

bb.bc:                                            ; preds = %bb.bb
  %i.vw = load ptr, ptr %i.ai, align 8, !tbaa !92 ; 3 uses
  %.not3.i469.i = icmp eq ptr %i.vw, null
  %i.vx = load ptr, ptr %13, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i469.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vy = load ptr, ptr %i.vw, align 8, !tbaa !93
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8
  invoke void %i.wa(ptr noundef nonnull align 8 dereferenceable(8) %i.vw, ptr noundef %i.vx)
          to label %_ZN4ncnn3MatD2Ev.exit466.i unwind label %bb.bg, !inline_history !95

bb.be:                                            ; preds = %bb.bc
  %.not.i483.i = icmp eq ptr %i.vx, null
  br i1 %.not.i483.i, label %_ZN4ncnn3MatD2Ev.exit466.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.vx) #3
  br label %_ZN4ncnn3MatD2Ev.exit466.i

bb.bg:                                            ; preds = %bb.bd
  %i.wb = landingpad { ptr, i32 }
          catch ptr null
  %i.wc = extractvalue { ptr, i32 } %i.wb, 0
  call void @__clang_call_terminate(ptr %i.wc) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit466.i:                       ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %._crit_edge.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.wd = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %.not.i472.i = icmp eq ptr %i.wd, null
  br i1 %.not.i472.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit466.i
  %i.we = atomicrmw add ptr %i.wd, i32 -1 acq_rel, align 4
  %i.wf = icmp eq i32 %i.we, 1
  br i1 %i.wf, label %bb.bi, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.wg = load ptr, ptr %i.af, align 8, !tbaa !92 ; 3 uses
  %.not3.i473.i = icmp eq ptr %i.wg, null
  %i.wh = load ptr, ptr %12, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i473.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.wi = load ptr, ptr %i.wg, align 8, !tbaa !93
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wk = load ptr, ptr %i.wj, align 8
  invoke void %i.wk(ptr noundef nonnull align 8 dereferenceable(8) %i.wg, ptr noundef %i.wh)
          to label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.bm, !inline_history !95

bb.bk:                                            ; preds = %bb.bi
  %.not.i481.i = icmp eq ptr %i.wh, null
  br i1 %.not.i481.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.wh) #3
  br label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bm:                                            ; preds = %bb.bj
  %i.wl = landingpad { ptr, i32 }
          catch ptr null
  %i.wm = extractvalue { ptr, i32 } %i.wl, 0
  call void @__clang_call_terminate(ptr %i.wm) #20
  unreachable

bb.bn:                                            ; preds = %.noexc112
  %i.wn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.wo = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %.not.i476.i = icmp eq ptr %i.wo, null
  br i1 %.not.i476.i, label %_ZN4ncnn3MatD2Ev.exit.i77, label %bb.bs

bb.bo:                                            ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89, %.lr.ph643.i
  %indvars.iv679.i = phi i64 [ 0, %.lr.ph643.i ], [ %indvars.iv.next680.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 3 uses
  %.0642.i = phi ptr [ %i.vj, %.lr.ph643.i ], [ %i.ato, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 3 uses
  %.0332640.i = phi i32 [ -2, %.lr.ph643.i ], [ %i.wq, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 2 uses
  %.0333639.i = phi ptr [ %i.vm, %.lr.ph643.i ], [ %.1334.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 8 uses
  %.0335638.i = phi ptr [ %i.vn, %.lr.ph643.i ], [ %.1336.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 11 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv679.i
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !18 ; 6 uses
  %i.wr = icmp eq i32 %i.wq, %.0332640.i
  br i1 %i.wr, label %.loopexit.i82, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ws = add nsw i32 %.0332640.i, 1
  %i.wt = icmp eq i32 %i.wq, %i.ws
  br i1 %i.wt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.wu = add nsw i32 %i.wq, 1
  %i.wv = sext i32 %i.wu to i64
  %i.ww = mul i64 %i.vs, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ww ; 7 uses
  br i1 %i.vo, label %.lr.ph627.i, label %.preheader610.i

.preheader610.loopexit.i:                         ; preds = %.lr.ph627.i
  %i.wy = trunc nuw nsw i64 %indvars.iv.next665.i to i32
  br label %.preheader610.i

.preheader610.i:                                  ; preds = %.preheader610.loopexit.i, %bb.bq
  %.0328.lcssa.i = phi ptr [ %i.vh, %bb.bq ], [ %i.aao, %.preheader610.loopexit.i ] ; 2 uses
  %.0325.lcssa.i = phi i32 [ 0, %bb.bq ], [ %i.wy, %.preheader610.loopexit.i ] ; 3 uses
  %i.wz = or disjoint i32 %.0325.lcssa.i, 1
  %i.xa = icmp slt i32 %i.wz, %i.az
  br i1 %i.xa, label %.lr.ph632.preheader.i, label %.preheader.i

.lr.ph632.preheader.i:                            ; preds = %.preheader610.i
  %i.xb = zext nneg i32 %.0325.lcssa.i to i64     ; 2 uses
  %18 = add nuw nsw i64 %i.xb, 1
  br label %.lr.ph632.i

.lr.ph627.i:                                      ; preds = %bb.bq, %.lr.ph627.i
  %indvars.iv664.i = phi i64 [ %indvars.iv.next665.i, %.lr.ph627.i ], [ 0, %bb.bq ] ; 3 uses
  %.0328625.i = phi ptr [ %i.aao, %.lr.ph627.i ], [ %i.vh, %bb.bq ] ; 7 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv664.i
  %i.xd = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 16
  %i.xf = insertelement <8 x ptr> poison, ptr %.0328625.i, i64 0
  %i.xg = insertelement <8 x ptr> %i.xf, ptr %i.xd, i64 1
  %i.xh = insertelement <8 x ptr> %i.xg, ptr %i.xe, i64 2
  %i.xi = shufflevector <8 x ptr> %i.xh, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.xj = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.xi, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !24
  %i.xk = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 24
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !24
  %i.xm = shufflevector <8 x float> %i.xj, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xn = insertelement <4 x float> poison, float %i.xl, i64 0
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xp = shufflevector <16 x float> %i.xm, <16 x float> %i.xo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.xq = getelementptr inbounds nuw i8, ptr %.0328625.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.xr = shufflevector <3 x ptr> %i.xq, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.xs = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.xr, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !24
  %i.xt = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 28
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !24
  %i.xv = shufflevector <8 x float> %i.xs, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xw = insertelement <4 x float> poison, float %i.xu, i64 0
  %i.xx = shufflevector <4 x float> %i.xw, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xy = shufflevector <16 x float> %i.xv, <16 x float> %i.xx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.xz = load <4 x i32>, ptr %i.xc, align 4, !tbaa !18
  %i.ya = shl nsw <4 x i32> %i.xz, splat (i32 2)  ; 4 uses
  %i.yb = extractelement <4 x i32> %i.ya, i64 0
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.yc ; 2 uses
  %i.ye = load i64, ptr %i.yd, align 1, !tbaa !53
  %i.yf = insertelement <2 x i64> poison, i64 %i.ye, i64 0
  %i.yg = bitcast <2 x i64> %i.yf to <8 x i16>
  %i.yh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yi = bitcast <8 x i16> %i.yh to <4 x float>
  %i.yj = extractelement <4 x i32> %i.ya, i64 1
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.yk ; 2 uses
  %i.ym = load i64, ptr %i.yl, align 1, !tbaa !53
  %i.yn = insertelement <2 x i64> poison, i64 %i.ym, i64 0
  %i.yo = bitcast <2 x i64> %i.yn to <8 x i16>
  %i.yp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yq = bitcast <8 x i16> %i.yp to <4 x float>
  %i.yr = extractelement <4 x i32> %i.ya, i64 2
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.ys ; 2 uses
  %i.yu = load i64, ptr %i.yt, align 1, !tbaa !53
  %i.yv = insertelement <2 x i64> poison, i64 %i.yu, i64 0
  %i.yw = bitcast <2 x i64> %i.yv to <8 x i16>
  %i.yx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yy = bitcast <8 x i16> %i.yx to <4 x float>
  %i.yz = extractelement <4 x i32> %i.ya, i64 3
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.za ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 1, !tbaa !53
  %i.zd = insertelement <2 x i64> poison, i64 %i.zc, i64 0
  %i.ze = bitcast <2 x i64> %i.zd to <8 x i16>
  %i.zf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ze, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zg = bitcast <8 x i16> %i.zf to <4 x float>
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.zi = load i64, ptr %i.zh, align 1, !tbaa !53
  %i.zj = insertelement <2 x i64> poison, i64 %i.zi, i64 0
  %i.zk = bitcast <2 x i64> %i.zj to <8 x i16>
  %i.zl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zm = bitcast <8 x i16> %i.zl to <4 x float>
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.zo = load i64, ptr %i.zn, align 1, !tbaa !53
  %i.zp = insertelement <2 x i64> poison, i64 %i.zo, i64 0
  %i.zq = bitcast <2 x i64> %i.zp to <8 x i16>
  %i.zr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zs = bitcast <8 x i16> %i.zr to <4 x float>
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.zu = load i64, ptr %i.zt, align 1, !tbaa !53
  %i.zv = insertelement <2 x i64> poison, i64 %i.zu, i64 0
  %i.zw = bitcast <2 x i64> %i.zv to <8 x i16>
  %i.zx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zy = bitcast <8 x i16> %i.zx to <4 x float>
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.aaa = load i64, ptr %i.zz, align 1, !tbaa !53
  %i.aab = insertelement <2 x i64> poison, i64 %i.aaa, i64 0
  %i.aac = bitcast <2 x i64> %i.aab to <8 x i16>
  %i.aad = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aac, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aae = bitcast <8 x i16> %i.aad to <4 x float>
  %i.aaf = shufflevector <4 x float> %i.yi, <4 x float> %i.yq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aag = shufflevector <4 x float> %i.yy, <4 x float> %i.zg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aah = shufflevector <16 x float> %i.aaf, <16 x float> %i.aag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aai = shufflevector <4 x float> %i.zm, <4 x float> %i.zs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaj = shufflevector <4 x float> %i.zy, <4 x float> %i.aae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aak = shufflevector <16 x float> %i.aai, <16 x float> %i.aaj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aal = fmul fast <16 x float> %i.aah, %i.xp
  %i.aam = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aak, <16 x float> nofpclass(nan inf) %i.xy, <16 x float> nofpclass(nan inf) %i.aal)
  %.idx.i111 = shl nuw nsw i64 %indvars.iv664.i, 4
  %i.aan = getelementptr inbounds nuw i8, ptr %.0335638.i, i64 %.idx.i111
  store <16 x float> %i.aam, ptr %i.aan, align 1, !tbaa !53
  %i.aao = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 32 ; 2 uses
  %indvars.iv.next665.i = add nuw nsw i64 %indvars.iv664.i, 4 ; 3 uses
  %i.aap = icmp slt i64 %indvars.iv.next665.i, %invariant.op.i
  br i1 %i.aap, label %.lr.ph627.i, label %.preheader610.loopexit.i, !llvm.loop !112

.preheader.loopexit.i:                            ; preds = %.lr.ph632.i
  %i.aaq = trunc nuw nsw i64 %indvars.iv.next670.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader610.i
  %.1329.lcssa.i = phi ptr [ %.0328.lcssa.i, %.preheader610.i ], [ %i.acp, %.preheader.loopexit.i ]
  %.1326.lcssa.i = phi i32 [ %.0325.lcssa.i, %.preheader610.i ], [ %i.aaq, %.preheader.loopexit.i ] ; 2 uses
  %i.aar = icmp slt i32 %.1326.lcssa.i, %i.az
  br i1 %i.aar, label %.lr.ph637.preheader.i, label %.loopexit.i82

.lr.ph637.preheader.i:                            ; preds = %.preheader.i
  %i.aas = zext nneg i32 %.1326.lcssa.i to i64
  br label %.lr.ph637.i

.lr.ph632.i:                                      ; preds = %.lr.ph632.i, %.lr.ph632.preheader.i
  %indvars.iv669.i = phi i64 [ %i.xb, %.lr.ph632.preheader.i ], [ %indvars.iv.next670.i, %.lr.ph632.i ] ; 3 uses
  %indvars.iv667.i = phi i64 [ %18, %.lr.ph632.preheader.i ], [ %indvars.iv.next668.i, %.lr.ph632.i ] ; 2 uses
  %.1329630.i = phi ptr [ %.0328.lcssa.i, %.lr.ph632.preheader.i ], [ %i.acp, %.lr.ph632.i ] ; 5 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv669.i
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !18
  %i.aav = shl nsw i32 %i.aau, 2
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv667.i
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !18
  %i.aay = load float, ptr %.1329630.i, align 4, !tbaa !24
  %i.aaz = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 8
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !24
  %i.abb = insertelement <4 x float> poison, float %i.aay, i64 0
  %i.abc = insertelement <4 x float> poison, float %i.aba, i64 0
  %i.abd = shufflevector <4 x float> %i.abb, <4 x float> %i.abc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.abe = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 4
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !24
  %i.abg = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 12
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !24
  %i.abi = insertelement <4 x float> poison, float %i.abf, i64 0
  %i.abj = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.abk = shufflevector <4 x float> %i.abi, <4 x float> %i.abj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.abl = sext i32 %i.aav to i64
  %i.abm = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.abl ; 2 uses
  %i.abn = load i64, ptr %i.abm, align 1, !tbaa !53
  %i.abo = insertelement <2 x i64> poison, i64 %i.abn, i64 0
  %i.abp = bitcast <2 x i64> %i.abo to <8 x i16>
  %i.abq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abr = shl nsw i32 %i.aax, 2
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.abs ; 2 uses
  %i.abu = load i64, ptr %i.abt, align 1, !tbaa !53
  %i.abv = insertelement <2 x i64> poison, i64 %i.abu, i64 0
  %i.abw = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.abx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aby = shufflevector <8 x i16> %i.abq, <8 x i16> %i.abx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abz = bitcast <16 x i16> %i.aby to <8 x float>
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.acb = load i64, ptr %i.aca, align 1, !tbaa !53
  %i.acc = insertelement <2 x i64> poison, i64 %i.acb, i64 0
  %i.acd = bitcast <2 x i64> %i.acc to <8 x i16>
  %i.ace = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.acg = load i64, ptr %i.acf, align 1, !tbaa !53
  %i.ach = insertelement <2 x i64> poison, i64 %i.acg, i64 0
  %i.aci = bitcast <2 x i64> %i.ach to <8 x i16>
  %i.acj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ack = shufflevector <8 x i16> %i.ace, <8 x i16> %i.acj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.acl = bitcast <16 x i16> %i.ack to <8 x float>
  %i.acm = fmul fast <8 x float> %i.abd, %i.abz
  %i.acn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acl, <8 x float> nofpclass(nan inf) %i.abk, <8 x float> nofpclass(nan inf) %i.acm)
  %.idx697.i = shl nuw nsw i64 %indvars.iv669.i, 4
  %i.aco = getelementptr inbounds nuw i8, ptr %.0335638.i, i64 %.idx697.i
  store <8 x float> %i.acn, ptr %i.aco, align 1, !tbaa !53
  %i.acp = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 16 ; 2 uses
  %indvars.iv.next670.i = add nuw nsw i64 %indvars.iv669.i, 2 ; 3 uses
  %19 = icmp slt i64 %indvars.iv.next670.i, %invariant.op704.i
  %indvars.iv.next668.i = add nuw nsw i64 %indvars.iv667.i, 2
  br i1 %19, label %.lr.ph632.i, label %.preheader.loopexit.i, !llvm.loop !113

.lr.ph637.i:                                      ; preds = %.lr.ph637.i, %.lr.ph637.preheader.i
  %indvars.iv674.i = phi i64 [ %i.aas, %.lr.ph637.preheader.i ], [ %indvars.iv.next675.i, %.lr.ph637.i ] ; 3 uses
  %.2330635.i = phi ptr [ %.1329.lcssa.i, %.lr.ph637.preheader.i ], [ %i.adq, %.lr.ph637.i ] ; 3 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv674.i
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !18
  %i.acs = shl nsw i32 %i.acr, 2
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.act ; 2 uses
  %i.acv = load float, ptr %.2330635.i, align 4, !tbaa !24
  %i.acw = insertelement <4 x float> poison, float %i.acv, i64 0
  %i.acx = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acy = getelementptr inbounds nuw i8, ptr %.2330635.i, i64 4
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !24
  %i.ada = insertelement <4 x float> poison, float %i.acz, i64 0
  %i.adb = shufflevector <4 x float> %i.ada, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adc = load i64, ptr %i.acu, align 1, !tbaa !53
  %i.add = insertelement <2 x i64> poison, i64 %i.adc, i64 0
  %i.ade = bitcast <2 x i64> %i.add to <8 x i16>
  %i.adf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ade, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.adg = bitcast <8 x i16> %i.adf to <4 x float>
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.adi = load i64, ptr %i.adh, align 1, !tbaa !53
  %i.adj = insertelement <2 x i64> poison, i64 %i.adi, i64 0
  %i.adk = bitcast <2 x i64> %i.adj to <8 x i16>
  %i.adl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.adm = bitcast <8 x i16> %i.adl to <4 x float>
  %i.adn = fmul fast <4 x float> %i.acx, %i.adg
  %i.ado = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.adm, <4 x float> nofpclass(nan inf) %i.adb, <4 x float> nofpclass(nan inf) %i.adn)
  %.idx698.i = shl nuw nsw i64 %indvars.iv674.i, 4
  %i.adp = getelementptr inbounds nuw i8, ptr %.0335638.i, i64 %.idx698.i
  store <4 x float> %i.ado, ptr %i.adp, align 16, !tbaa !53
  %i.adq = getelementptr inbounds nuw i8, ptr %.2330635.i, i64 8
  %indvars.iv.next675.i = add nuw nsw i64 %indvars.iv674.i, 1 ; 2 uses
  %exitcond678.not.i = icmp eq i64 %indvars.iv.next675.i, %wide.trip.count.i81
  br i1 %exitcond678.not.i, label %.loopexit.i82, label %.lr.ph637.i, !llvm.loop !114

bb.br:                                            ; preds = %bb.bp
  %i.adr = sext i32 %i.wq to i64
  %i.ads = mul i64 %i.vs, %i.adr
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ads ; 7 uses
  %i.adu = add nsw i32 %i.wq, 1
  %i.adv = sext i32 %i.adu to i64
  %i.adw = mul i64 %i.vs, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adw ; 7 uses
  br i1 %i.vo, label %.lr.ph.i108, label %.preheader613.i

.preheader613.loopexit.i:                         ; preds = %.lr.ph.i108
  %i.ady = trunc nuw nsw i64 %indvars.iv.next.i110 to i32
  br label %.preheader613.i

.preheader613.i:                                  ; preds = %.preheader613.loopexit.i, %bb.br
  %.0322.lcssa.i = phi ptr [ %i.vh, %bb.br ], [ %i.aju, %.preheader613.loopexit.i ] ; 2 uses
  %.0321.lcssa.i = phi i32 [ 0, %bb.br ], [ %i.ady, %.preheader613.loopexit.i ] ; 3 uses
  %i.adz = or disjoint i32 %.0321.lcssa.i, 1
  %i.aea = icmp slt i32 %i.adz, %i.az
  br i1 %i.aea, label %.lr.ph619.preheader.i, label %.preheader611.i

.lr.ph619.preheader.i:                            ; preds = %.preheader613.i
  %i.aeb = zext nneg i32 %.0321.lcssa.i to i64    ; 2 uses
  %20 = add nuw nsw i64 %i.aeb, 1
  br label %.lr.ph619.i

.lr.ph.i108:                                      ; preds = %bb.br, %.lr.ph.i108
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i110, %.lr.ph.i108 ], [ 0, %bb.br ] ; 3 uses
  %.0322614.i = phi ptr [ %i.aju, %.lr.ph.i108 ], [ %i.vh, %bb.br ] ; 7 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i109
  %i.aed = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 8
  %i.aee = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 16
  %i.aef = insertelement <8 x ptr> poison, ptr %.0322614.i, i64 0
  %i.aeg = insertelement <8 x ptr> %i.aef, ptr %i.aed, i64 1
  %i.aeh = insertelement <8 x ptr> %i.aeg, ptr %i.aee, i64 2
  %i.aei = shufflevector <8 x ptr> %i.aeh, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.aej = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aei, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !24
  %i.aek = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 24
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !24
  %i.aem = shufflevector <8 x float> %i.aej, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aen = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aeo = shufflevector <4 x float> %i.aen, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aep = shufflevector <16 x float> %i.aem, <16 x float> %i.aeo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0322614.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.aer = shufflevector <3 x ptr> %i.aeq, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.aes = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aer, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !24
  %i.aet = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 28
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !24
  %i.aev = shufflevector <8 x float> %i.aes, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aew = insertelement <4 x float> poison, float %i.aeu, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aey = shufflevector <16 x float> %i.aev, <16 x float> %i.aex, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.aez = load <4 x i32>, ptr %i.aec, align 4, !tbaa !18
  %i.afa = shl nsw <4 x i32> %i.aez, splat (i32 2) ; 4 uses
  %i.afb = extractelement <4 x i32> %i.afa, i64 0
  %i.afc = sext i32 %i.afb to i64                 ; 2 uses
  %i.afd = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.afc ; 2 uses
  %i.afe = load i64, ptr %i.afd, align 1, !tbaa !53
  %i.aff = insertelement <2 x i64> poison, i64 %i.afe, i64 0
  %i.afg = bitcast <2 x i64> %i.aff to <8 x i16>
  %i.afh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afi = bitcast <8 x i16> %i.afh to <4 x float>
  %i.afj = extractelement <4 x i32> %i.afa, i64 1
  %i.afk = sext i32 %i.afj to i64                 ; 2 uses
  %i.afl = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.afk ; 2 uses
  %i.afm = load i64, ptr %i.afl, align 1, !tbaa !53
  %i.afn = insertelement <2 x i64> poison, i64 %i.afm, i64 0
  %i.afo = bitcast <2 x i64> %i.afn to <8 x i16>
  %i.afp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afq = bitcast <8 x i16> %i.afp to <4 x float>
  %i.afr = extractelement <4 x i32> %i.afa, i64 2
  %i.afs = sext i32 %i.afr to i64                 ; 2 uses
  %i.aft = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.afs ; 2 uses
  %i.afu = load i64, ptr %i.aft, align 1, !tbaa !53
  %i.afv = insertelement <2 x i64> poison, i64 %i.afu, i64 0
  %i.afw = bitcast <2 x i64> %i.afv to <8 x i16>
  %i.afx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afy = bitcast <8 x i16> %i.afx to <4 x float>
  %i.afz = extractelement <4 x i32> %i.afa, i64 3
  %i.aga = sext i32 %i.afz to i64                 ; 2 uses
  %i.agb = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.aga ; 2 uses
  %i.agc = load i64, ptr %i.agb, align 1, !tbaa !53
  %i.agd = insertelement <2 x i64> poison, i64 %i.agc, i64 0
  %i.age = bitcast <2 x i64> %i.agd to <8 x i16>
  %i.agf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.age, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agg = bitcast <8 x i16> %i.agf to <4 x float>
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.agi = load i64, ptr %i.agh, align 1, !tbaa !53
  %i.agj = insertelement <2 x i64> poison, i64 %i.agi, i64 0
  %i.agk = bitcast <2 x i64> %i.agj to <8 x i16>
  %i.agl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agm = bitcast <8 x i16> %i.agl to <4 x float>
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.ago = load i64, ptr %i.agn, align 1, !tbaa !53
  %i.agp = insertelement <2 x i64> poison, i64 %i.ago, i64 0
  %i.agq = bitcast <2 x i64> %i.agp to <8 x i16>
  %i.agr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ags = bitcast <8 x i16> %i.agr to <4 x float>
  %i.agt = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %i.agu = load i64, ptr %i.agt, align 1, !tbaa !53
  %i.agv = insertelement <2 x i64> poison, i64 %i.agu, i64 0
  %i.agw = bitcast <2 x i64> %i.agv to <8 x i16>
  %i.agx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agy = bitcast <8 x i16> %i.agx to <4 x float>
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.aha = load i64, ptr %i.agz, align 1, !tbaa !53
  %i.ahb = insertelement <2 x i64> poison, i64 %i.aha, i64 0
  %i.ahc = bitcast <2 x i64> %i.ahb to <8 x i16>
  %i.ahd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahe = bitcast <8 x i16> %i.ahd to <4 x float>
  %i.ahf = shufflevector <4 x float> %i.afi, <4 x float> %i.afq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahg = shufflevector <4 x float> %i.afy, <4 x float> %i.agg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahh = shufflevector <16 x float> %i.ahf, <16 x float> %i.ahg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahi = shufflevector <4 x float> %i.agm, <4 x float> %i.ags, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahj = shufflevector <4 x float> %i.agy, <4 x float> %i.ahe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahk = shufflevector <16 x float> %i.ahi, <16 x float> %i.ahj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahl = fmul fast <16 x float> %i.ahh, %i.aep
  %i.ahm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahk, <16 x float> nofpclass(nan inf) %i.aey, <16 x float> nofpclass(nan inf) %i.ahl)
  %i.ahn = shl nuw nsw i64 %indvars.iv.i109, 2    ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.0335638.i, i64 %i.ahn
  store <16 x float> %i.ahm, ptr %i.aho, align 1, !tbaa !53
  %i.ahp = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.afc ; 2 uses
  %i.ahq = load i64, ptr %i.ahp, align 1, !tbaa !53
  %i.ahr = insertelement <2 x i64> poison, i64 %i.ahq, i64 0
  %i.ahs = bitcast <2 x i64> %i.ahr to <8 x i16>
  %i.aht = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahu = bitcast <8 x i16> %i.aht to <4 x float>
  %i.ahv = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.afk ; 2 uses
  %i.ahw = load i64, ptr %i.ahv, align 1, !tbaa !53
  %i.ahx = insertelement <2 x i64> poison, i64 %i.ahw, i64 0
  %i.ahy = bitcast <2 x i64> %i.ahx to <8 x i16>
  %i.ahz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aia = bitcast <8 x i16> %i.ahz to <4 x float>
  %i.aib = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.afs ; 2 uses
  %i.aic = load i64, ptr %i.aib, align 1, !tbaa !53
  %i.aid = insertelement <2 x i64> poison, i64 %i.aic, i64 0
  %i.aie = bitcast <2 x i64> %i.aid to <8 x i16>
  %i.aif = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aie, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aig = bitcast <8 x i16> %i.aif to <4 x float>
  %i.aih = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.aga ; 2 uses
  %i.aii = load i64, ptr %i.aih, align 1, !tbaa !53
  %i.aij = insertelement <2 x i64> poison, i64 %i.aii, i64 0
  %i.aik = bitcast <2 x i64> %i.aij to <8 x i16>
  %i.ail = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aim = bitcast <8 x i16> %i.ail to <4 x float>
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.aio = load i64, ptr %i.ain, align 1, !tbaa !53
  %i.aip = insertelement <2 x i64> poison, i64 %i.aio, i64 0
  %i.aiq = bitcast <2 x i64> %i.aip to <8 x i16>
  %i.air = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aiq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ais = bitcast <8 x i16> %i.air to <4 x float>
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.aiu = load i64, ptr %i.ait, align 1, !tbaa !53
  %i.aiv = insertelement <2 x i64> poison, i64 %i.aiu, i64 0
  %i.aiw = bitcast <2 x i64> %i.aiv to <8 x i16>
  %i.aix = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aiw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aiy = bitcast <8 x i16> %i.aix to <4 x float>
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aja = load i64, ptr %i.aiz, align 1, !tbaa !53
  %i.ajb = insertelement <2 x i64> poison, i64 %i.aja, i64 0
  %i.ajc = bitcast <2 x i64> %i.ajb to <8 x i16>
  %i.ajd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aje = bitcast <8 x i16> %i.ajd to <4 x float>
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.ajg = load i64, ptr %i.ajf, align 1, !tbaa !53
  %i.ajh = insertelement <2 x i64> poison, i64 %i.ajg, i64 0
  %i.aji = bitcast <2 x i64> %i.ajh to <8 x i16>
  %i.ajj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aji, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajk = bitcast <8 x i16> %i.ajj to <4 x float>
  %i.ajl = shufflevector <4 x float> %i.ahu, <4 x float> %i.aia, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajm = shufflevector <4 x float> %i.aig, <4 x float> %i.aim, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajn = shufflevector <16 x float> %i.ajl, <16 x float> %i.ajm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ajo = shufflevector <4 x float> %i.ais, <4 x float> %i.aiy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajp = shufflevector <4 x float> %i.aje, <4 x float> %i.ajk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajq = shufflevector <16 x float> %i.ajo, <16 x float> %i.ajp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ajr = fmul fast <16 x float> %i.ajn, %i.aep
  %i.ajs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ajq, <16 x float> nofpclass(nan inf) %i.aey, <16 x float> nofpclass(nan inf) %i.ajr)
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %.0333639.i, i64 %i.ahn
  store <16 x float> %i.ajs, ptr %i.ajt, align 1, !tbaa !53
  %i.aju = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 32 ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 4 ; 3 uses
  %i.ajv = icmp slt i64 %indvars.iv.next.i110, %invariant.op.i
  br i1 %i.ajv, label %.lr.ph.i108, label %.preheader613.loopexit.i, !llvm.loop !115

.preheader611.loopexit.i:                         ; preds = %.lr.ph619.i
  %i.ajw = trunc nuw nsw i64 %indvars.iv.next657.i to i32
  br label %.preheader611.i

.preheader611.i:                                  ; preds = %.preheader611.loopexit.i, %.preheader613.i
  %.1323.lcssa.i = phi ptr [ %.0322.lcssa.i, %.preheader613.i ], [ %i.amx, %.preheader611.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0321.lcssa.i, %.preheader613.i ], [ %i.ajw, %.preheader611.loopexit.i ] ; 2 uses
  %i.ajx = icmp slt i32 %.1.lcssa.i, %i.az
  br i1 %i.ajx, label %.lr.ph624.preheader.i, label %.loopexit.i82

.lr.ph624.preheader.i:                            ; preds = %.preheader611.i
  %i.ajy = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph624.i

.lr.ph619.i:                                      ; preds = %.lr.ph619.i, %.lr.ph619.preheader.i
  %indvars.iv656.i = phi i64 [ %i.aeb, %.lr.ph619.preheader.i ], [ %indvars.iv.next657.i, %.lr.ph619.i ] ; 3 uses
  %indvars.iv654.i = phi i64 [ %20, %.lr.ph619.preheader.i ], [ %indvars.iv.next655.i, %.lr.ph619.i ] ; 2 uses
  %.1323617.i = phi ptr [ %.0322.lcssa.i, %.lr.ph619.preheader.i ], [ %i.amx, %.lr.ph619.i ] ; 5 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv656.i
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !18
  %i.akb = shl nsw i32 %i.aka, 2
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv654.i
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !18
  %i.ake = load float, ptr %.1323617.i, align 4, !tbaa !24
  %i.akf = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 8
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !24
  %i.akh = insertelement <4 x float> poison, float %i.ake, i64 0
  %i.aki = insertelement <4 x float> poison, float %i.akg, i64 0
  %i.akj = shufflevector <4 x float> %i.akh, <4 x float> %i.aki, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 4
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !24
  %i.akm = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 12
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !24
  %i.ako = insertelement <4 x float> poison, float %i.akl, i64 0
  %i.akp = insertelement <4 x float> poison, float %i.akn, i64 0
  %i.akq = shufflevector <4 x float> %i.ako, <4 x float> %i.akp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.akr = sext i32 %i.akb to i64                 ; 2 uses
  %i.aks = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.akr ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 1, !tbaa !53
  %i.aku = insertelement <2 x i64> poison, i64 %i.akt, i64 0
  %i.akv = bitcast <2 x i64> %i.aku to <8 x i16>
  %i.akw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akx = shl nsw i32 %i.akd, 2
  %i.aky = sext i32 %i.akx to i64                 ; 2 uses
  %i.akz = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.aky ; 2 uses
  %i.ala = load i64, ptr %i.akz, align 1, !tbaa !53
  %i.alb = insertelement <2 x i64> poison, i64 %i.ala, i64 0
  %i.alc = bitcast <2 x i64> %i.alb to <8 x i16>
  %i.ald = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ale = shufflevector <8 x i16> %i.akw, <8 x i16> %i.ald, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alf = bitcast <16 x i16> %i.ale to <8 x float>
  %i.alg = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.alh = load i64, ptr %i.alg, align 1, !tbaa !53
  %i.ali = insertelement <2 x i64> poison, i64 %i.alh, i64 0
  %i.alj = bitcast <2 x i64> %i.ali to <8 x i16>
  %i.alk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.all = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  %i.alm = load i64, ptr %i.all, align 1, !tbaa !53
  %i.aln = insertelement <2 x i64> poison, i64 %i.alm, i64 0
  %i.alo = bitcast <2 x i64> %i.aln to <8 x i16>
  %i.alp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alq = shufflevector <8 x i16> %i.alk, <8 x i16> %i.alp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alr = bitcast <16 x i16> %i.alq to <8 x float>
  %i.als = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.akr ; 2 uses
  %i.alt = load i64, ptr %i.als, align 1, !tbaa !53
  %i.alu = insertelement <2 x i64> poison, i64 %i.alt, i64 0
  %i.alv = bitcast <2 x i64> %i.alu to <8 x i16>
  %i.alw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alx = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.aky ; 2 uses
  %i.aly = load i64, ptr %i.alx, align 1, !tbaa !53
  %i.alz = insertelement <2 x i64> poison, i64 %i.aly, i64 0
  %i.ama = bitcast <2 x i64> %i.alz to <8 x i16>
  %i.amb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ama, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amc = shufflevector <8 x i16> %i.alw, <8 x i16> %i.amb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amd = bitcast <16 x i16> %i.amc to <8 x float>
  %i.ame = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  %i.amf = load i64, ptr %i.ame, align 1, !tbaa !53
  %i.amg = insertelement <2 x i64> poison, i64 %i.amf, i64 0
  %i.amh = bitcast <2 x i64> %i.amg to <8 x i16>
  %i.ami = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.amh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.amk = load i64, ptr %i.amj, align 1, !tbaa !53
  %i.aml = insertelement <2 x i64> poison, i64 %i.amk, i64 0
  %i.amm = bitcast <2 x i64> %i.aml to <8 x i16>
  %i.amn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.amm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amo = shufflevector <8 x i16> %i.ami, <8 x i16> %i.amn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amp = bitcast <16 x i16> %i.amo to <8 x float>
  %i.amq = fmul fast <8 x float> %i.akj, %i.alf
  %i.amr = fmul fast <8 x float> %i.akj, %i.amd
  %i.ams = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alr, <8 x float> nofpclass(nan inf) %i.akq, <8 x float> nofpclass(nan inf) %i.amq)
  %i.amt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amp, <8 x float> nofpclass(nan inf) %i.akq, <8 x float> nofpclass(nan inf) %i.amr)
  %i.amu = shl nuw nsw i64 %indvars.iv656.i, 2    ; 2 uses
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %.0335638.i, i64 %i.amu
  store <8 x float> %i.ams, ptr %i.amv, align 1, !tbaa !53
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %.0333639.i, i64 %i.amu
  store <8 x float> %i.amt, ptr %i.amw, align 1, !tbaa !53
  %i.amx = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 16 ; 2 uses
  %indvars.iv.next657.i = add nuw nsw i64 %indvars.iv656.i, 2 ; 3 uses
  %21 = icmp slt i64 %indvars.iv.next657.i, %invariant.op704.i
  %indvars.iv.next655.i = add nuw nsw i64 %indvars.iv654.i, 2
  br i1 %21, label %.lr.ph619.i, label %.preheader611.loopexit.i, !llvm.loop !116

.lr.ph624.i:                                      ; preds = %.lr.ph624.i, %.lr.ph624.preheader.i
  %indvars.iv661.i = phi i64 [ %i.ajy, %.lr.ph624.preheader.i ], [ %indvars.iv.next662.i, %.lr.ph624.i ] ; 3 uses
  %.2324622.i = phi ptr [ %.1323.lcssa.i, %.lr.ph624.preheader.i ], [ %i.aoo, %.lr.ph624.i ] ; 3 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv661.i
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !18
  %i.ana = shl nsw i32 %i.amz, 2
  %i.anb = sext i32 %i.ana to i64                 ; 2 uses
  %i.anc = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.anb ; 2 uses
  %i.and = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.anb ; 2 uses
  %i.ane = load float, ptr %.2324622.i, align 4, !tbaa !24
  %i.anf = insertelement <4 x float> poison, float %i.ane, i64 0
  %i.ang = shufflevector <4 x float> %i.anf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.2324622.i, i64 4
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !24
  %i.anj = insertelement <4 x float> poison, float %i.ani, i64 0
  %i.ank = shufflevector <4 x float> %i.anj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.anl = load i64, ptr %i.anc, align 1, !tbaa !53
  %i.anm = insertelement <2 x i64> poison, i64 %i.anl, i64 0
  %i.ann = bitcast <2 x i64> %i.anm to <8 x i16>
  %i.ano = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ann, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anp = bitcast <8 x i16> %i.ano to <4 x float>
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  %i.anr = load i64, ptr %i.anq, align 1, !tbaa !53
  %i.ans = insertelement <2 x i64> poison, i64 %i.anr, i64 0
  %i.ant = bitcast <2 x i64> %i.ans to <8 x i16>
  %i.anu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ant, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anv = bitcast <8 x i16> %i.anu to <4 x float>
  %i.anw = load i64, ptr %i.and, align 1, !tbaa !53
  %i.anx = insertelement <2 x i64> poison, i64 %i.anw, i64 0
  %i.any = bitcast <2 x i64> %i.anx to <8 x i16>
  %i.anz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.any, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aoa = bitcast <8 x i16> %i.anz to <4 x float>
  %i.aob = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.aoc = load i64, ptr %i.aob, align 1, !tbaa !53
  %i.aod = insertelement <2 x i64> poison, i64 %i.aoc, i64 0
  %i.aoe = bitcast <2 x i64> %i.aod to <8 x i16>
  %i.aof = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aoe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aog = bitcast <8 x i16> %i.aof to <4 x float>
  %i.aoh = fmul fast <4 x float> %i.ang, %i.anp
  %i.aoi = fmul fast <4 x float> %i.ang, %i.aoa
  %i.aoj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anv, <4 x float> nofpclass(nan inf) %i.ank, <4 x float> nofpclass(nan inf) %i.aoh)
  %i.aok = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aog, <4 x float> nofpclass(nan inf) %i.ank, <4 x float> nofpclass(nan inf) %i.aoi)
  %i.aol = shl nuw nsw i64 %indvars.iv661.i, 2    ; 2 uses
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %.0335638.i, i64 %i.aol
  store <4 x float> %i.aoj, ptr %i.aom, align 16, !tbaa !53
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.0333639.i, i64 %i.aol
  store <4 x float> %i.aok, ptr %i.aon, align 16, !tbaa !53
  %i.aoo = getelementptr inbounds nuw i8, ptr %.2324622.i, i64 8
  %indvars.iv.next662.i = add nuw nsw i64 %indvars.iv661.i, 1 ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %indvars.iv.next662.i, %wide.trip.count.i81
  br i1 %exitcond.not.i107, label %.loopexit.i82, label %.lr.ph624.i, !llvm.loop !117

.loopexit.i82:                                    ; preds = %.lr.ph624.i, %.lr.ph637.i, %.preheader611.i, %.preheader.i, %bb.bo
  %.1336.i = phi ptr [ %.0335638.i, %bb.bo ], [ %.0333639.i, %.preheader.i ], [ %.0335638.i, %.preheader611.i ], [ %.0333639.i, %.lr.ph637.i ], [ %.0335638.i, %.lr.ph624.i ] ; 7 uses
  %.1334.i = phi ptr [ %.0333639.i, %bb.bo ], [ %.0335638.i, %.preheader.i ], [ %.0333639.i, %.preheader611.i ], [ %.0335638.i, %.lr.ph637.i ], [ %.0333639.i, %.lr.ph624.i ] ; 7 uses
  %i.aop = mul i64 %i.vr, %indvars.iv679.i
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aop ; 6 uses
  %i.aor = load float, ptr %.0642.i, align 4, !tbaa !24 ; 6 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.0642.i, i64 4
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !24 ; 6 uses
  %i.aou = insertelement <16 x float> poison, float %i.aor, i64 0
  %i.aov = shufflevector <16 x float> %i.aou, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aow = insertelement <16 x float> poison, float %i.aot, i64 0
  %i.aox = shufflevector <16 x float> %i.aow, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.vo, label %.lr.ph.i.i103, label %._crit_edge.i.i83

.lr.ph.i.i103:                                    ; preds = %.loopexit.i82, %.lr.ph.i.i103
  %indvars.iv.i.i104 = phi i64 [ %indvars.iv.next.i.i105, %.lr.ph.i.i103 ], [ 0, %.loopexit.i82 ] ; 4 uses
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %indvars.iv.i.i104
  %i.aoz = load <16 x float>, ptr %i.aoy, align 1, !tbaa !53
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %indvars.iv.i.i104
  %i.apb = load <16 x float>, ptr %i.apa, align 1, !tbaa !53
  %i.apc = fmul fast <16 x float> %i.aoz, %i.aov
  %i.apd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.apb, <16 x float> nofpclass(nan inf) %i.aox, <16 x float> nofpclass(nan inf) %i.apc)
  %i.ape = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv.i.i104
  %i.apf = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.apd)
  store <16 x bfloat> %i.apf, ptr %i.ape, align 1, !tbaa !53
  %indvars.iv.next.i.i105 = add nuw nsw i64 %indvars.iv.i.i104, 16 ; 3 uses
  %i.apg = or disjoint i64 %indvars.iv.next.i.i105, 15
  %i.aph = icmp samesign ult i64 %i.apg, %i.vq
  br i1 %i.aph, label %.lr.ph.i.i103, label %._crit_edge.loopexit.i.i106, !llvm.loop !98

._crit_edge.loopexit.i.i106:                      ; preds = %.lr.ph.i.i103
  %i.api = trunc nuw nsw i64 %indvars.iv.next.i.i105 to i32
  br label %._crit_edge.i.i83

._crit_edge.i.i83:                                ; preds = %._crit_edge.loopexit.i.i106, %.loopexit.i82
  %.0.lcssa.i.i84 = phi i32 [ 0, %.loopexit.i82 ], [ %i.api, %._crit_edge.loopexit.i.i106 ] ; 3 uses
  %i.apj = insertelement <8 x float> poison, float %i.aor, i64 0
  %i.apk = shufflevector <8 x float> %i.apj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.apl = insertelement <8 x float> poison, float %i.aot, i64 0
  %i.apm = shufflevector <8 x float> %i.apl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.apn = or disjoint i32 %.0.lcssa.i.i84, 7
  %i.apo = icmp slt i32 %i.apn, %i.vp
  br i1 %i.apo, label %.lr.ph64.preheader.i.i98, label %._crit_edge65.i.i85

.lr.ph64.preheader.i.i98:                         ; preds = %._crit_edge.i.i83
  %i.app = zext nneg i32 %.0.lcssa.i.i84 to i64
  br label %.lr.ph64.i.i99

.lr.ph64.i.i99:                                   ; preds = %.lr.ph64.i.i99, %.lr.ph64.preheader.i.i98
  %indvars.iv77.i.i100 = phi i64 [ %i.app, %.lr.ph64.preheader.i.i98 ], [ %indvars.iv.next78.i.i101, %.lr.ph64.i.i99 ] ; 4 uses
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %indvars.iv77.i.i100
  %i.apr = load <8 x float>, ptr %i.apq, align 1, !tbaa !53
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %indvars.iv77.i.i100
  %i.apt = load <8 x float>, ptr %i.aps, align 1, !tbaa !53
  %i.apu = fmul fast <8 x float> %i.apr, %i.apk
  %i.apv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apt, <8 x float> nofpclass(nan inf) %i.apm, <8 x float> nofpclass(nan inf) %i.apu)
  %i.apw = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv77.i.i100
  %i.apx = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.apv)
  store <8 x bfloat> %i.apx, ptr %i.apw, align 1, !tbaa !53
  %indvars.iv.next78.i.i101 = add nuw nsw i64 %indvars.iv77.i.i100, 8 ; 3 uses
  %i.apy = icmp slt i64 %indvars.iv.next78.i.i101, %invariant.op.i.i80
  br i1 %i.apy, label %.lr.ph64.i.i99, label %._crit_edge65.loopexit.i.i102, !llvm.loop !99

._crit_edge65.loopexit.i.i102:                    ; preds = %.lr.ph64.i.i99
  %i.apz = trunc nuw nsw i64 %indvars.iv.next78.i.i101 to i32
  br label %._crit_edge65.i.i85

._crit_edge65.i.i85:                              ; preds = %._crit_edge65.loopexit.i.i102, %._crit_edge.i.i83
  %.1.lcssa.i.i86 = phi i32 [ %.0.lcssa.i.i84, %._crit_edge.i.i83 ], [ %i.apz, %._crit_edge65.loopexit.i.i102 ] ; 3 uses
  %i.aqa = insertelement <4 x float> poison, float %i.aor, i64 0
  %i.aqb = shufflevector <4 x float> %i.aqa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqc = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = or disjoint i32 %.1.lcssa.i.i86, 3
  %i.aqf = icmp slt i32 %i.aqe, %i.vp
  br i1 %i.aqf, label %.lr.ph69.preheader.i.i94, label %.preheader.i.i87

.lr.ph69.preheader.i.i94:                         ; preds = %._crit_edge65.i.i85
  %i.aqg = zext nneg i32 %.1.lcssa.i.i86 to i64
  br label %.lr.ph69.i.i95

.preheader.i.i87:                                 ; preds = %.lr.ph69.i.i95, %._crit_edge65.i.i85
  %.2.lcssa.i.i88 = phi i32 [ %.1.lcssa.i.i86, %._crit_edge65.i.i85 ], [ %i.asy, %.lr.ph69.i.i95 ] ; 3 uses
  %i.aqh = icmp slt i32 %.2.lcssa.i.i88, %i.vp
  br i1 %i.aqh, label %iter.check472, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89

iter.check472:                                    ; preds = %.preheader.i.i87
  %i.aqi = zext i32 %.2.lcssa.i.i88 to i64        ; 5 uses
  %i.aqj = xor i32 %.2.lcssa.i.i88, -1
  %i.aqk = add i32 %i.vp, %i.aqj                  ; 3 uses
  %i.aql = zext i32 %i.aqk to i64
  %i.aqm = add nuw nsw i64 %i.aql, 1              ; 5 uses
  %min.iters.check449 = icmp ult i32 %i.aqk, 7
  br i1 %min.iters.check449, label %.lr.ph72.i.i91.preheader, label %vector.main.loop.iter.check450

vector.main.loop.iter.check450:                   ; preds = %iter.check472
  %min.iters.check451 = icmp ult i32 %i.aqk, 63
  br i1 %min.iters.check451, label %vec.epilog.ph476, label %vector.ph452

vector.ph452:                                     ; preds = %vector.main.loop.iter.check450
  %i.aqn = and i64 %i.aqm, 56
  %n.vec453 = and i64 %i.aqm, 8589934528          ; 4 uses
  %i.aqo = add nuw nsw i64 %n.vec453, %i.aqi
  %broadcast.splatinsert454 = insertelement <16 x float> poison, float %i.aor, i64 0
  %broadcast.splat455 = shufflevector <16 x float> %broadcast.splatinsert454, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert456 = insertelement <16 x float> poison, float %i.aot, i64 0
  %broadcast.splat457 = shufflevector <16 x float> %broadcast.splatinsert456, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph452
  %index459 = phi i64 [ 0, %vector.ph452 ], [ %index.next468, %vector.body458 ] ; 2 uses
  %i.aqp = add nuw i64 %index459, %i.aqi          ; 3 uses
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %i.aqp ; 4 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 64
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 128
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 192
  %wide.load460 = load <16 x float>, ptr %i.aqq, align 4, !tbaa !24
  %wide.load461 = load <16 x float>, ptr %i.aqr, align 4, !tbaa !24
  %wide.load462 = load <16 x float>, ptr %i.aqs, align 4, !tbaa !24
  %wide.load463 = load <16 x float>, ptr %i.aqt, align 4, !tbaa !24
  %i.aqu = fmul fast <16 x float> %wide.load460, %broadcast.splat455
  %i.aqv = fmul fast <16 x float> %wide.load461, %broadcast.splat455
  %i.aqw = fmul fast <16 x float> %wide.load462, %broadcast.splat455
  %i.aqx = fmul fast <16 x float> %wide.load463, %broadcast.splat455
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %i.aqp ; 4 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 64
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqy, i64 128
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqy, i64 192
  %wide.load464 = load <16 x float>, ptr %i.aqy, align 4, !tbaa !24
  %wide.load465 = load <16 x float>, ptr %i.aqz, align 4, !tbaa !24
  %wide.load466 = load <16 x float>, ptr %i.ara, align 4, !tbaa !24
  %wide.load467 = load <16 x float>, ptr %i.arb, align 4, !tbaa !24
  %i.arc = fmul fast <16 x float> %wide.load464, %broadcast.splat457
  %i.ard = fmul fast <16 x float> %wide.load465, %broadcast.splat457
  %i.are = fmul fast <16 x float> %wide.load466, %broadcast.splat457
  %i.arf = fmul fast <16 x float> %wide.load467, %broadcast.splat457
  %i.arg = fadd fast <16 x float> %i.arc, %i.aqu
  %i.arh = fadd fast <16 x float> %i.ard, %i.aqv
  %i.ari = fadd fast <16 x float> %i.are, %i.aqw
  %i.arj = fadd fast <16 x float> %i.arf, %i.aqx
  %i.ark = bitcast <16 x float> %i.arg to <16 x i32>
  %i.arl = bitcast <16 x float> %i.arh to <16 x i32>
  %i.arm = bitcast <16 x float> %i.ari to <16 x i32>
  %i.arn = bitcast <16 x float> %i.arj to <16 x i32>
  %i.aro = lshr <16 x i32> %i.ark, splat (i32 16)
  %i.arp = lshr <16 x i32> %i.arl, splat (i32 16)
  %i.arq = lshr <16 x i32> %i.arm, splat (i32 16)
end_hunk_1
