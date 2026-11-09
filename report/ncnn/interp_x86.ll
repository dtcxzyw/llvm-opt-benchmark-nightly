Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86?download=true
inline.NumInlined: 95
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5:bb.a
_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !129

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp ninf nsz nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !61
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !28
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp ninf nsz nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !61
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !28
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.03781, ptr align 4 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !28   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !131

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not105 = icmp sgt i32 %i.k, %i.j
  br i1 %.not105, label %._crit_edge, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ae = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.ae, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !151
  %i.ag = load ptr, ptr %3, align 8, !tbaa !43, !noalias !151
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !151
  %i.ai = mul i64 %i.ah, %indvars.iv
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !151 ; 3 uses
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 6 uses
  %i.am = sext i32 %i.af to i64                   ; 2 uses
  %i.an = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !152 ; 13 uses
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !27, !noalias !152 ; 4 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !43, !noalias !152 ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !37, !noalias !152
  %i.as = mul i64 %i.ar, %indvars.iv
  %i.at = load i64, ptr %i.r, align 8, !tbaa !32, !noalias !152 ; 3 uses
  %i.au = mul i64 %i.as, %i.at                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 3 uses
  %i.aw = sext i32 %i.an to i64                   ; 3 uses
  %i.ax = load i32, ptr %5, align 4, !tbaa !28    ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 4
  br i1 %i.ay, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.az = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.ba = load ptr, ptr %7, align 8, !tbaa !62    ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !64
  %i.bc = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.u, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.an, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc29 unwind label %bb.ba

.noexc29:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.x, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.an, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i unwind label %bb.p

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i:         ; preds = %.noexc29
  %i.bd = icmp sgt i32 %i.ao, 0
  br i1 %i.bd, label %.lr.ph137.i, label %._crit_edge.i

.lr.ph137.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %i.be = load ptr, ptr %13, align 8, !tbaa !43
  %i.bf = load ptr, ptr %12, align 8, !tbaa !43
  %i.bg = icmp sgt i32 %i.an, 0                   ; 3 uses
  %i.bh = shl i32 %i.an, 2                        ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 4 uses
  %wide.trip.count148.i = zext nneg i32 %i.ao to i64
  %wide.trip.count.i = zext nneg i32 %i.an to i64 ; 2 uses
  %i.bj = mul i64 %i.aj, %i.am                    ; 3 uses
  %i.bk = mul i64 %i.at, %i.aw                    ; 3 uses
  %14 = add i64 %i.au, %i.aq                      ; 2 uses
  %invariant.op = add i64 %14, -1
  %invariant.op.a = add i64 %14, -1
  %i.bl = add nsw i64 %i.bi, -1
  br label %bb.q

._crit_edge.i:                                    ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit95.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bn = atomicrmw add ptr %i.bm, i32 -1 acq_rel, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit95.i

bb.e:                                             ; preds = %bb.d
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %.not3.i.i = icmp eq ptr %i.bp, null
  %i.bq = load ptr, ptr %13, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bq)
          to label %_ZN4ncnn3MatD2Ev.exit95.i unwind label %bb.i, !inline_history !1

bb.g:                                             ; preds = %bb.e
  %.not.i113.i = icmp eq ptr %i.bq, null
  br i1 %.not.i113.i, label %_ZN4ncnn3MatD2Ev.exit95.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.bq) #6
  br label %_ZN4ncnn3MatD2Ev.exit95.i

bb.i:                                             ; preds = %bb.f
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit95.i:                        ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i96.i = icmp eq ptr %i.bw, null
  br i1 %.not.i96.i, label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit95.i
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 acq_rel, align 4
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.k, label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i97.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i97.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.ca)
          to label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.o, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i111.i = icmp eq ptr %i.ca, null
  br i1 %.not.i111.i, label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ca) #6
  br label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.o:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #22
  unreachable

bb.p:                                             ; preds = %.noexc29
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i104.i = icmp eq ptr %i.ch, null
  br i1 %.not.i104.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.u

bb.q:                                             ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, %.lr.ph137.i
  %indvars.iv145.i = phi i64 [ 0, %.lr.ph137.i ], [ %indvars.iv.next146.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i ] ; 5 uses
  %.081135.i = phi i32 [ -2, %.lr.ph137.i ], [ %i.cj, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i ] ; 2 uses
  %.082134.i = phi ptr [ %i.be, %.lr.ph137.i ], [ %.1.i89, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i ] ; 7 uses
  %.083133.i = phi ptr [ %i.bf, %.lr.ph137.i ], [ %.184.i88, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i ] ; 8 uses
  %.089132.i = phi ptr [ %i.bb, %.lr.ph137.i ], [ %i.hs, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv145.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !28 ; 6 uses
  %i.ck = icmp eq i32 %i.cj, %.081135.i
  br i1 %i.ck, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = add nsw i32 %.081135.i, 1
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = add nsw i32 %i.cj, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.bj, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cp
  br i1 %i.bg, label %.lr.ph131.i, label %.loopexit.i.thread

.lr.ph131.i:                                      ; preds = %bb.s, %.lr.ph131.i
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %.lr.ph131.i ], [ 0, %bb.s ] ; 3 uses
  %.079129.i = phi ptr [ %i.dk, %.lr.ph131.i ], [ %i.az, %bb.s ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv140.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !28
  %i.ct = shl nsw i32 %i.cs, 2
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cu ; 2 uses
  %i.cw = load float, ptr %.079129.i, align 4, !tbaa !61
  %i.cx = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = getelementptr inbounds nuw i8, ptr %.079129.i, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !61
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = load <4 x float>, ptr %i.cv, align 16, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.df = load <4 x float>, ptr %i.de, align 16, !tbaa !20
  %i.dg = fmul fast <4 x float> %i.dd, %i.cy
  %i.dh = fmul fast <4 x float> %i.df, %i.dc
  %i.di = fadd fast <4 x float> %i.dh, %i.dg
  %.idx.i = shl nuw nsw i64 %indvars.iv140.i, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.083133.i, i64 %.idx.i
  store <4 x float> %i.di, ptr %i.dj, align 16, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %.079129.i, i64 8
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond144.not.i, label %.loopexit.i.thread136, label %.lr.ph131.i, !llvm.loop !138

bb.t:                                             ; preds = %bb.r
  %i.dl = sext i32 %i.cj to i64
  %i.dm = mul i64 %i.bj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.dm
  %i.do = add nsw i32 %i.cj, 1
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul i64 %i.bj, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.dq
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.t ] ; 3 uses
  %.077127.i = phi ptr [ %i.eu, %.lr.ph.i ], [ %i.az, %bb.t ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !28
  %i.du = shl nsw i32 %i.dt, 2
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dv ; 2 uses
  %i.dy = load float, ptr %.077127.i, align 4, !tbaa !61
  %i.dz = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.077127.i, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !61
  %i.ed = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ef = load <4 x float>, ptr %i.dw, align 16, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eh = load <4 x float>, ptr %i.eg, align 16, !tbaa !20
  %i.ei = load <4 x float>, ptr %i.dx, align 16, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !tbaa !20
  %i.el = fmul fast <4 x float> %i.ef, %i.ea
  %i.em = fmul fast <4 x float> %i.ei, %i.ea
  %i.en = fmul fast <4 x float> %i.eh, %i.ee
  %i.eo = fadd fast <4 x float> %i.en, %i.el
  %i.ep = fmul fast <4 x float> %i.ek, %i.ee
  %i.eq = fadd fast <4 x float> %i.ep, %i.em
  %i.er = shl nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.083133.i, i64 %i.er
  store <4 x float> %i.eo, ptr %i.es, align 16, !tbaa !20
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.082134.i, i64 %i.er
  store <4 x float> %i.eq, ptr %i.et, align 16, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %.077127.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread136, label %.lr.ph.i, !llvm.loop !139

.loopexit.i.thread:                               ; preds = %bb.t, %bb.s
  %.184.i.ph = phi ptr [ %.083133.i, %bb.t ], [ %.082134.i, %bb.s ]
  %.1.i.ph = phi ptr [ %.082134.i, %bb.t ], [ %.083133.i, %bb.s ]
  %i.ev = mul i64 %i.bk, %indvars.iv145.i
  %i.ew = load <2 x float>, ptr %.089132.i, align 4, !tbaa !61
  br label %.preheader.i.i

.loopexit.i.thread136:                            ; preds = %.lr.ph.i, %.lr.ph131.i
  %.184.i.ph134 = phi ptr [ %.082134.i, %.lr.ph131.i ], [ %.083133.i, %.lr.ph.i ]
  %.1.i.ph135 = phi ptr [ %.083133.i, %.lr.ph131.i ], [ %.082134.i, %.lr.ph.i ]
  %i.ex = mul i64 %i.bk, %indvars.iv145.i
  %i.ey = load <2 x float>, ptr %.089132.i, align 4, !tbaa !61 ; 3 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fa = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph.i.i.preheader

.loopexit.i:                                      ; preds = %bb.q
  %i.fb = mul i64 %i.bk, %indvars.iv145.i         ; 2 uses
  %i.fc = load <2 x float>, ptr %.089132.i, align 4, !tbaa !61 ; 4 uses
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fe = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br i1 %i.bg, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %.loopexit.i.thread136, %.loopexit.i
  %i.ff = phi <4 x float> [ %i.fa, %.loopexit.i.thread136 ], [ %i.fe, %.loopexit.i ]
  %i.fg = phi <4 x float> [ %i.ez, %.loopexit.i.thread136 ], [ %i.fd, %.loopexit.i ]
  %i.fh = phi i64 [ %i.ex, %.loopexit.i.thread136 ], [ %i.fb, %.loopexit.i ] ; 2 uses
  %.1.i140 = phi ptr [ %.1.i.ph135, %.loopexit.i.thread136 ], [ %.082134.i, %.loopexit.i ] ; 2 uses
  %.184.i139 = phi ptr [ %.184.i.ph134, %.loopexit.i.thread136 ], [ %.083133.i, %.loopexit.i ] ; 2 uses
  %i.fi = phi <2 x float> [ %i.ey, %.loopexit.i.thread136 ], [ %i.fc, %.loopexit.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fh
  br label %.lr.ph.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.fk = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.thread, %.preheader.loopexit.i.i, %.loopexit.i
  %i.fl = phi i64 [ %i.fb, %.loopexit.i ], [ %i.fh, %.preheader.loopexit.i.i ], [ %i.ev, %.loopexit.i.thread ] ; 3 uses
  %.1.i89 = phi ptr [ %.082134.i, %.loopexit.i ], [ %.1.i140, %.preheader.loopexit.i.i ], [ %.1.i.ph, %.loopexit.i.thread ] ; 6 uses
  %.184.i88 = phi ptr [ %.083133.i, %.loopexit.i ], [ %.184.i139, %.preheader.loopexit.i.i ], [ %.184.i.ph, %.loopexit.i.thread ] ; 6 uses
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.fk, %.preheader.loopexit.i.i ], [ 0, %.loopexit.i.thread ] ; 2 uses
  %i.fm = phi <2 x float> [ %i.fc, %.loopexit.i ], [ %i.fi, %.preheader.loopexit.i.i ], [ %i.ew, %.loopexit.i.thread ] ; 5 uses
  %.1.i89164 = ptrtoaddr ptr %.1.i89 to i64
  %.184.i88165 = ptrtoaddr ptr %.184.i88 to i64
  %i.fn = icmp slt i32 %.0.lcssa.i.i, %i.bh
  br i1 %i.fn, label %.lr.ph27.preheader.i.i, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i

.lr.ph27.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.fo = zext i32 %.0.lcssa.i.i to i64           ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fl ; 4 uses
  %i.fq = sub nsw i64 %i.bi, %i.fo                ; 3 uses
  %min.iters.check167 = icmp ult i64 %i.fq, 8
  br i1 %min.iters.check167, label %.lr.ph27.i.i.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph27.preheader.i.i
  %15 = sub i64 %i.fl, %.1.i89164
  %.reass = add i64 %15, %invariant.op
  %diff.check169 = icmp ult i64 %.reass, 31
  %16 = sub i64 %i.fl, %.184.i88165
  %.reass197 = add i64 %16, %invariant.op.a
  %diff.check170 = icmp ult i64 %.reass197, 31
  %conflict.rdx171 = or i1 %diff.check169, %diff.check170
  br i1 %conflict.rdx171, label %.lr.ph27.i.i.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck168
  %n.vec173 = and i64 %i.fq, -8                   ; 3 uses
  %i.fr = add nsw i64 %n.vec173, %i.fo
  %broadcast.splat175 = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat177 = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph172
  %index179 = phi i64 [ 0, %vector.ph172 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %i.fs = add nuw i64 %index179, %i.fo            ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load180 = load <4 x float>, ptr %i.ft, align 4, !tbaa !61
  %wide.load181 = load <4 x float>, ptr %i.fu, align 4, !tbaa !61
  %i.fv = fmul fast <4 x float> %wide.load180, %broadcast.splat175
  %i.fw = fmul fast <4 x float> %wide.load181, %broadcast.splat175
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %i.fs ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load182 = load <4 x float>, ptr %i.fx, align 4, !tbaa !61
  %wide.load183 = load <4 x float>, ptr %i.fy, align 4, !tbaa !61
  %i.fz = fmul fast <4 x float> %wide.load182, %broadcast.splat177
  %i.ga = fmul fast <4 x float> %wide.load183, %broadcast.splat177
  %i.gb = fadd fast <4 x float> %i.fz, %i.fv
  %i.gc = fadd fast <4 x float> %i.ga, %i.fw
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fs ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x float> %i.gb, ptr %i.gd, align 4, !tbaa !61
  store <4 x float> %i.gc, ptr %i.ge, align 4, !tbaa !61
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next184, %n.vec173
  br i1 %i.gf, label %middle.block185, label %vector.body178, !llvm.loop !140

middle.block185:                                  ; preds = %vector.body178
  %cmp.n186 = icmp eq i64 %i.fq, %n.vec173
  br i1 %cmp.n186, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %vector.memcheck168, %.lr.ph27.preheader.i.i, %middle.block185
  %indvars.iv29.i.i.ph = phi i64 [ %i.fo, %vector.memcheck168 ], [ %i.fo, %.lr.ph27.preheader.i.i ], [ %i.fr, %middle.block185 ] ; 7 uses
  %xtraiter = and i64 %indvars.iv29.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %indvars.iv29.i.i.ph
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !61
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %indvars.iv29.i.i.ph
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !61
  %i.gk = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gj, i64 1
  %i.gm = fmul fast <2 x float> %i.gl, %i.fm
  %i.gn = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gm)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv29.i.i.ph
  store float %i.gn, ptr %i.go, align 4, !tbaa !61
  %indvars.iv.next30.i.i.prol = add nuw nsw i64 %indvars.iv29.i.i.ph, 1
  br label %.lr.ph27.i.i.prol.loopexit

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader
  %indvars.iv29.i.i.unr = phi i64 [ %indvars.iv29.i.i.ph, %.lr.ph27.i.i.preheader ], [ %indvars.iv.next30.i.i.prol, %.lr.ph27.i.i.prol ]
  %i.gp = icmp eq i64 %indvars.iv29.i.i.ph, %i.bl
  br i1 %i.gp, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, label %.lr.ph27.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.184.i139, i64 %indvars.iv.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !20
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.1.i140, i64 %indvars.iv.i.i
  %i.gt = load <4 x float>, ptr %i.gs, align 1, !tbaa !20
  %i.gu = fmul fast <4 x float> %i.gr, %i.fg
  %i.gv = fmul fast <4 x float> %i.gt, %i.ff
  %i.gw = fadd fast <4 x float> %i.gv, %i.gu
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.i.i
  store <4 x float> %i.gw, ptr %i.gx, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.gy = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.gz = icmp samesign ult i64 %i.gy, %i.bi
  br i1 %i.gz, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !141

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i.1, %.lr.ph27.i.i ], [ %indvars.iv29.i.i.unr, %.lr.ph27.i.i.prol.loopexit ] ; 5 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %indvars.iv29.i.i
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !61
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %indvars.iv29.i.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !61
  %i.he = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.hd, i64 1
  %i.hg = fmul fast <2 x float> %i.hf, %i.fm
  %i.hh = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.hg)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv29.i.i
  store float %i.hh, ptr %i.hi, align 4, !tbaa !61
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %indvars.iv.next30.i.i
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !61
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %indvars.iv.next30.i.i
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !61
  %i.hn = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.hm, i64 1
  %i.hp = fmul fast <2 x float> %i.ho, %i.fm
  %i.hq = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.hp)
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next30.i.i
  store float %i.hq, ptr %i.hr, align 4, !tbaa !61
  %indvars.iv.next30.i.i.1 = add nuw nsw i64 %indvars.iv29.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next30.i.i.1, %i.bi
  br i1 %exitcond.not.i.i.1, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, label %.lr.ph27.i.i, !llvm.loop !142

_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i:   ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %middle.block185, %.preheader.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.089132.i, i64 8
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count148.i
  br i1 %exitcond149.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !143

bb.u:                                             ; preds = %bb.p
  %i.ht = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.hv = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i105.i = icmp eq ptr %i.hv, null
  %i.hw = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i105.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.hw)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.z, !inline_history !1

bb.x:                                             ; preds = %bb.v
  %.not.i108.i = icmp eq ptr %i.hw, null
  br i1 %.not.i108.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.hw) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.z:                                             ; preds = %bb.w
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %.body

_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit95.i, %bb.j, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.ic = phi i32 [ %.pr, %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ie = load ptr, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.if = load ptr, ptr %7, align 8, !tbaa !62    ; 6 uses
  %i.ig = load ptr, ptr %8, align 8, !tbaa !64
  %i.ih = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.aa, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.an, i64 noundef 4, ptr noundef null)
          to label %.noexc49 unwind label %bb.ba

.noexc49:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.ad, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.an, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.ao

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %.noexc49
  %i.ii = icmp sgt i32 %i.ao, 0
  br i1 %i.ii, label %.lr.ph260.i, label %._crit_edge.i31

.lr.ph260.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.ij = load ptr, ptr %11, align 8, !tbaa !43
  %i.ik = load ptr, ptr %10, align 8, !tbaa !43
  %i.il = icmp sgt i32 %i.an, 3                   ; 3 uses
  %i.im = zext i32 %i.an to i64                   ; 9 uses
  %wide.trip.count280.i = zext nneg i32 %i.ao to i64
  %invariant.op.i = add nsw i64 %i.aw, -3         ; 2 uses
  %i.in = mul i64 %i.at, %i.aw
  %i.io = mul i64 %i.aj, %i.am                    ; 3 uses
  %i.ip = add i64 %i.au, %i.aq
  %i.iq = add nsw i64 %i.im, -1
  %i.ir = add nsw i64 %i.im, -1
  br label %bb.ap

._crit_edge.i31:                                  ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.is = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
end_hunk_0
