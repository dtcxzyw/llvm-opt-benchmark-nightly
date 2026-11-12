Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_fma?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a

.lr.ph298.i.us.preheader:                         ; preds = %.preheader279.loopexit.i.us
  br i1 %min.iters.check, label %.lr.ph298.i.us.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph298.i.us.preheader
  %i.kv = getelementptr i8, ptr %i.kq, i64 %i.iq
  %i.kw = getelementptr i8, ptr %i.kp, i64 %i.iq
  %i.kx = getelementptr i8, ptr %i.ko, i64 %i.iq
  %i.ky = getelementptr i8, ptr %i.kn, i64 %i.iq
  %i.kz = getelementptr i8, ptr %i.kr, i64 %i.ir
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.la = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.kq, i64 %i.la
  %next.gep88 = getelementptr i8, ptr %i.kp, i64 %i.la
  %next.gep89 = getelementptr i8, ptr %i.ko, i64 %i.la
  %next.gep90 = getelementptr i8, ptr %i.kn, i64 %i.la
  %i.lb = shl i64 %index, 3
  %next.gep91 = getelementptr i8, ptr %i.kr, i64 %i.lb
  %wide.load = load <4 x i32>, ptr %next.gep90, align 4, !tbaa !51
  %i.lc = lshr <4 x i32> %wide.load, splat (i32 16)
  %wide.load92 = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !51
  %i.ld = lshr <4 x i32> %wide.load92, splat (i32 16)
  %wide.load93 = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !51
  %i.le = lshr <4 x i32> %wide.load93, splat (i32 16)
  %wide.load94 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !51
  %i.lf = lshr <4 x i32> %wide.load94, splat (i32 16)
  %i.lg = shufflevector <4 x i32> %i.lc, <4 x i32> %i.ld, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lh = shufflevector <4 x i32> %i.le, <4 x i32> %i.lf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.li = shufflevector <8 x i32> %i.lg, <8 x i32> %i.lh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec = trunc nuw <16 x i32> %i.li to <16 x i16>
  store <16 x i16> %interleaved.vec, ptr %next.gep91, align 2, !tbaa !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.us, label %.lr.ph298.i.us.preheader108

.lr.ph298.i.us.preheader108:                      ; preds = %.lr.ph298.i.us.preheader, %middle.block
  %.1145297.i.us.ph = phi i32 [ %i.ii, %.lr.ph298.i.us.preheader ], [ %i.ip, %middle.block ]
  %.1147296.i.us.ph = phi ptr [ %i.kq, %.lr.ph298.i.us.preheader ], [ %i.kv, %middle.block ]
  %.1149295.i.us.ph = phi ptr [ %i.kp, %.lr.ph298.i.us.preheader ], [ %i.kw, %middle.block ]
  %.1151294.i.us.ph = phi ptr [ %i.ko, %.lr.ph298.i.us.preheader ], [ %i.kx, %middle.block ]
  %.1153293.i.us.ph = phi ptr [ %i.kn, %.lr.ph298.i.us.preheader ], [ %i.ky, %middle.block ]
  %.1155292.i.us.ph = phi ptr [ %i.kr, %.lr.ph298.i.us.preheader ], [ %i.kz, %middle.block ]
  br label %.lr.ph298.i.us

.lr.ph298.i.us:                                   ; preds = %.lr.ph298.i.us.preheader108, %.lr.ph298.i.us
  %.1145297.i.us = phi i32 [ %i.me, %.lr.ph298.i.us ], [ %.1145297.i.us.ph, %.lr.ph298.i.us.preheader108 ]
  %.1147296.i.us = phi ptr [ %i.ly, %.lr.ph298.i.us ], [ %.1147296.i.us.ph, %.lr.ph298.i.us.preheader108 ] ; 2 uses
  %.1149295.i.us = phi ptr [ %i.lt, %.lr.ph298.i.us ], [ %.1149295.i.us.ph, %.lr.ph298.i.us.preheader108 ] ; 2 uses
  %.1151294.i.us = phi ptr [ %i.lo, %.lr.ph298.i.us ], [ %.1151294.i.us.ph, %.lr.ph298.i.us.preheader108 ] ; 2 uses
  %.1153293.i.us = phi ptr [ %i.lk, %.lr.ph298.i.us ], [ %.1153293.i.us.ph, %.lr.ph298.i.us.preheader108 ] ; 2 uses
  %.1155292.i.us = phi ptr [ %i.md, %.lr.ph298.i.us ], [ %.1155292.i.us.ph, %.lr.ph298.i.us.preheader108 ] ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.1153293.i.us, i64 4
  %i.ll = load i32, ptr %.1153293.i.us, align 4, !tbaa !51
  %i.lm = lshr i32 %i.ll, 16
  %i.ln = trunc nuw i32 %i.lm to i16
  store i16 %i.ln, ptr %.1155292.i.us, align 2, !tbaa !73
  %i.lo = getelementptr inbounds nuw i8, ptr %.1151294.i.us, i64 4
  %i.lp = load i32, ptr %.1151294.i.us, align 4, !tbaa !51
  %i.lq = lshr i32 %i.lp, 16
  %i.lr = trunc nuw i32 %i.lq to i16
  %i.ls = getelementptr inbounds nuw i8, ptr %.1155292.i.us, i64 2
  store i16 %i.lr, ptr %i.ls, align 2, !tbaa !73
  %i.lt = getelementptr inbounds nuw i8, ptr %.1149295.i.us, i64 4
  %i.lu = load i32, ptr %.1149295.i.us, align 4, !tbaa !51
  %i.lv = lshr i32 %i.lu, 16
  %i.lw = trunc nuw i32 %i.lv to i16
  %i.lx = getelementptr inbounds nuw i8, ptr %.1155292.i.us, i64 4
  store i16 %i.lw, ptr %i.lx, align 2, !tbaa !73
  %i.ly = getelementptr inbounds nuw i8, ptr %.1147296.i.us, i64 4
  %i.lz = load i32, ptr %.1147296.i.us, align 4, !tbaa !51
  %i.ma = lshr i32 %i.lz, 16
  %i.mb = trunc nuw i32 %i.ma to i16
  %i.mc = getelementptr inbounds nuw i8, ptr %.1155292.i.us, i64 6
  store i16 %i.mb, ptr %i.mc, align 2, !tbaa !73
  %i.md = getelementptr inbounds nuw i8, ptr %.1155292.i.us, i64 8
  %i.me = add nuw nsw i32 %.1145297.i.us, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.me, %i.e
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %.lr.ph298.i.us, !llvm.loop !133

._crit_edge.i.us:                                 ; preds = %.lr.ph298.i.us, %middle.block, %.preheader279.loopexit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.mf = or disjoint i64 %indvars.iv.next.i.us, 3
  %i.mg = icmp samesign ult i64 %i.mf, %i.ij
  br i1 %i.mg, label %.lr.ph.i.preheader.us, label %._crit_edge301.i, !llvm.loop !134

.lr.ph300.i.split:                                ; preds = %.lr.ph300.i
  %i.mh = icmp sgt i32 %i.e, 0
  br i1 %i.mh, label %.preheader279.i.preheader, label %._crit_edge301.i

.preheader279.i.preheader:                        ; preds = %.lr.ph300.i.split
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !19
  %.pre32 = load i32, ptr %i.id, align 4, !tbaa !48
  %.pre33 = load i64, ptr %i.ie, align 8, !tbaa !49
  %.pre34 = load i32, ptr %i.if, align 4, !tbaa !48
  %.pre35 = load i64, ptr %i.ig, align 8, !tbaa !49
  %i.mi = sext i32 %.pre32 to i64
  %factor.op.mul = mul i64 %.pre33, %i.mi
  %i.mj = sext i32 %.pre34 to i64
  %i.mk = mul i64 %.pre35, %i.mj                  ; 4 uses
  %exitcond.not.i = icmp eq i32 %i.e, 1
  %exitcond.not.i.1 = icmp eq i32 %i.e, 2
  br label %.preheader279.i

._crit_edge301.i:                                 ; preds = %._crit_edge.i.loopexit, %._crit_edge.i.us, %.lr.ph300.i.split, %.preheader280.i
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !17 ; 2 uses
  %.not.i201.i = icmp eq ptr %i.mm, null
  br i1 %.not.i201.i, label %_ZN4ncnn3MatD2Ev.exit194.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge301.i
  %i.mn = atomicrmw add ptr %i.mm, i32 -1 acq_rel, align 4
  %i.mo = icmp eq i32 %i.mn, 1
  br i1 %i.mo, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit194.i

bb.t:                                             ; preds = %bb.s
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !18 ; 3 uses
  %.not3.i202.i = icmp eq ptr %i.mq, null
  %i.mr = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i202.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ms = load ptr, ptr %i.mq, align 8, !tbaa !11
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8
  invoke void %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, ptr noundef %i.mr)
          to label %_ZN4ncnn3MatD2Ev.exit194.i unwind label %bb.x, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i222.i = icmp eq ptr %i.mr, null
  br i1 %.not.i222.i, label %_ZN4ncnn3MatD2Ev.exit194.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.mr) #10
  br label %_ZN4ncnn3MatD2Ev.exit194.i

bb.x:                                             ; preds = %bb.u
  %i.mv = landingpad { ptr, i32 }
          catch ptr null
  %i.mw = extractvalue { ptr, i32 } %i.mv, 0
  call void @__clang_call_terminate(ptr %i.mw) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit194.i:                       ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %._crit_edge301.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.y:                                             ; preds = %bb.r
  %i.mx = landingpad { ptr, i32 }
          cleanup
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !17 ; 2 uses
  %.not.i205.i = icmp eq ptr %i.mz, null
  br i1 %.not.i205.i, label %_ZN4ncnn3MatD2Ev.exit193.i, label %bb.z

.preheader279.i:                                  ; preds = %.preheader279.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.preheader279.i.preheader ] ; 6 uses
  %i.na = or disjoint i64 %indvars.iv.i, 3
  %i.nb = mul i64 %i.mk, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.pre359.i, i64 %i.nb ; 3 uses
  %i.nd = or disjoint i64 %indvars.iv.i, 2
  %i.ne = mul i64 %i.mk, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.pre359.i, i64 %i.ne ; 3 uses
  %i.ng = or disjoint i64 %indvars.iv.i, 1
  %i.nh = mul i64 %i.mk, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre359.i, i64 %i.nh ; 3 uses
  %i.nj = mul i64 %i.mk, %indvars.iv.i
  %i.nk = getelementptr inbounds nuw i8, ptr %.pre359.i, i64 %i.nj ; 3 uses
  %i.nl = lshr exact i64 %indvars.iv.i, 2
  %.reass = mul i64 %i.nl, %factor.op.mul
  %i.nm = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass ; 12 uses
  %i.nn = load i32, ptr %i.nk, align 4, !tbaa !51
  %i.no = lshr i32 %i.nn, 16
  %i.np = trunc nuw i32 %i.no to i16
  store i16 %i.np, ptr %i.nm, align 2, !tbaa !73
  %i.nq = load i32, ptr %i.ni, align 4, !tbaa !51
  %i.nr = lshr i32 %i.nq, 16
  %i.ns = trunc nuw i32 %i.nr to i16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 2
  store i16 %i.ns, ptr %i.nt, align 2, !tbaa !73
  %i.nu = load i32, ptr %i.nf, align 4, !tbaa !51
  %i.nv = lshr i32 %i.nu, 16
  %i.nw = trunc nuw i32 %i.nv to i16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !73
  %i.ny = load i32, ptr %i.nc, align 4, !tbaa !51
  %i.nz = lshr i32 %i.ny, 16
  %i.oa = trunc nuw i32 %i.nz to i16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nm, i64 6
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !73
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph298.i.1

.lr.ph298.i.1:                                    ; preds = %.preheader279.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %8 = load i32, ptr %i.od, align 4, !tbaa !51
  %9 = lshr i32 %8, 16
  %10 = trunc nuw i32 %9 to i16
  store i16 %10, ptr %i.oc, align 2, !tbaa !73
  %11 = load i32, ptr %7, align 4, !tbaa !51
  %12 = lshr i32 %11, 16
  %13 = trunc nuw i32 %12 to i16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nm, i64 10
  store i16 %13, ptr %i.oe, align 2, !tbaa !73
  %14 = load i32, ptr %6, align 4, !tbaa !51
  %15 = lshr i32 %14, 16
  %16 = trunc nuw i32 %15 to i16
  %i.of = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i16 %16, ptr %i.of, align 2, !tbaa !73
  %17 = load i32, ptr %5, align 4, !tbaa !51
  %18 = lshr i32 %17, 16
  %19 = trunc nuw i32 %18 to i16
  %i.og = getelementptr inbounds nuw i8, ptr %i.nm, i64 14
  store i16 %19, ptr %i.og, align 2, !tbaa !73
  br i1 %exitcond.not.i.1, label %._crit_edge.i.loopexit, label %.lr.ph298.i.2

.lr.ph298.i.2:                                    ; preds = %.lr.ph298.i.1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %23 = load i32, ptr %i.oi, align 4, !tbaa !51
  %24 = lshr i32 %23, 16
  %25 = trunc nuw i32 %24 to i16
  store i16 %25, ptr %i.oh, align 2, !tbaa !73
  %26 = load i32, ptr %22, align 4, !tbaa !51
  %27 = lshr i32 %26, 16
  %28 = trunc nuw i32 %27 to i16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nm, i64 18
  store i16 %28, ptr %i.oj, align 2, !tbaa !73
  %29 = load i32, ptr %21, align 4, !tbaa !51
  %30 = lshr i32 %29, 16
  %31 = trunc nuw i32 %30 to i16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  store i16 %31, ptr %i.ok, align 2, !tbaa !73
  %32 = load i32, ptr %20, align 4, !tbaa !51
  %33 = lshr i32 %32, 16
  %34 = trunc nuw i32 %33 to i16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nm, i64 22
  store i16 %34, ptr %i.ol, align 2, !tbaa !73
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %.lr.ph298.i.2, %.lr.ph298.i.1, %.preheader279.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.om = or disjoint i64 %indvars.iv.next.i, 3
  %i.on = icmp samesign ult i64 %i.om, %i.ij
  br i1 %i.on, label %.preheader279.i, label %._crit_edge301.i, !llvm.loop !134

bb.z:                                             ; preds = %bb.y
  %i.oo = atomicrmw add ptr %i.mz, i32 -1 acq_rel, align 4
  %i.op = icmp eq i32 %i.oo, 1
  br i1 %i.op, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit193.i

bb.aa:                                            ; preds = %bb.z
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !18 ; 3 uses
  %.not3.i206.i = icmp eq ptr %i.or, null
  %i.os = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i206.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ot = load ptr, ptr %i.or, align 8, !tbaa !11
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8
  invoke void %i.ov(ptr noundef nonnull align 8 dereferenceable(8) %i.or, ptr noundef %i.os)
          to label %_ZN4ncnn3MatD2Ev.exit193.i unwind label %bb.ae, !inline_history !0

bb.ac:                                            ; preds = %bb.aa
  %.not.i220.i = icmp eq ptr %i.os, null
  br i1 %.not.i220.i, label %_ZN4ncnn3MatD2Ev.exit193.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.os) #10
  br label %_ZN4ncnn3MatD2Ev.exit193.i

bb.ae:                                            ; preds = %bb.ab
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit193.i:                       ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.at

.thread276.i:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  invoke void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %.thread276.i
  %i.oy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !17 ; 2 uses
  %.not.i209.i = icmp eq ptr %i.oz, null
  br i1 %.not.i209.i, label %_ZN4ncnn3MatD2Ev.exit192.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pa = atomicrmw add ptr %i.oz, i32 -1 acq_rel, align 4
  %i.pb = icmp eq i32 %i.pa, 1
  br i1 %i.pb, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit192.i

bb.ah:                                            ; preds = %bb.ag
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !18 ; 3 uses
  %.not3.i210.i = icmp eq ptr %i.pd, null
  %i.pe = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i210.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pf = load ptr, ptr %i.pd, align 8, !tbaa !11
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  invoke void %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef %i.pe)
          to label %_ZN4ncnn3MatD2Ev.exit192.i unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i218.i = icmp eq ptr %i.pe, null
  br i1 %.not.i218.i, label %_ZN4ncnn3MatD2Ev.exit192.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.pe) #10
  br label %_ZN4ncnn3MatD2Ev.exit192.i

bb.al:                                            ; preds = %bb.ai
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit192.i:                       ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.am:                                            ; preds = %.thread276.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !17 ; 2 uses
  %.not.i213.i = icmp eq ptr %i.pm, null
  br i1 %.not.i213.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pn = atomicrmw add ptr %i.pm, i32 -1 acq_rel, align 4
  %i.po = icmp eq i32 %i.pn, 1
  br i1 %i.po, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.pp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !18 ; 3 uses
  %.not3.i214.i = icmp eq ptr %i.pq, null
  %i.pr = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i214.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !11
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8
  invoke void %i.pu(ptr noundef nonnull align 8 dereferenceable(8) %i.pq, ptr noundef %i.pr)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.as, !inline_history !0

bb.aq:                                            ; preds = %bb.ao
  %.not.i217.i = icmp eq ptr %i.pr, null
  br i1 %.not.i217.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.pr) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.as:                                            ; preds = %bb.ap
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit193.i, %_ZN4ncnn3MatD2Ev.exit195.i
  %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ai, %_ZN4ncnn3MatD2Ev.exit195.i ], [ %i.mx, %_ZN4ncnn3MatD2Ev.exit193.i ], [ %i.pk, %_ZN4ncnn3MatD2Ev.exit.i ]
  resume { ptr, i32 } %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.i

_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit196.i, %_ZN4ncnn3MatD2Ev.exit194.i, %_ZN4ncnn3MatD2Ev.exit192.i
  %i.px = load i8, ptr %1, align 8, !tbaa !60, !range !41, !noundef !42
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.qa, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qb = atomicrmw add ptr %i.qa, i32 -1 acq_rel, align 4
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %bb.aw, label %_ZN4ncnn3Mat7releaseEv.exit

bb.aw:                                            ; preds = %bb.av
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.qe, null
  %i.qf = load ptr, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !11
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %i.qe, ptr noundef %i.qf), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.ay:                                            ; preds = %bb.aw
  %.not.i3 = icmp eq ptr %i.qf, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.qf) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.az, %bb.ay, %bb.au, %bb.av, %bb.ax
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.qk, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.qj, i8 0, i64 20, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  ret i32 0
}

declare noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_fp16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
