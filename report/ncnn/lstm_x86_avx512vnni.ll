Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512vnni?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnn20lstm_int8_avx512vnniERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.qa = add nuw nsw i32 %.081174.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.qa, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !111

bb.ac:                                            ; preds = %bb.w, %bb.c
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.ae, %bb.c ]
  %i.qb = load ptr, ptr %i.aa, align 8, !tbaa !114 ; 2 uses
  %.not.i113.i = icmp eq ptr %i.qb, null
  br i1 %.not.i113.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qc = atomicrmw add ptr %i.qb, i32 -1 acq_rel, align 4
  %i.qd = icmp eq i32 %i.qc, 1
  br i1 %i.qd, label %bb.ae, label %_ZN4ncnn3MatD2Ev.exit96.i

bb.ae:                                            ; preds = %bb.ad
  %i.qe = load ptr, ptr %i.ab, align 8, !tbaa !115 ; 3 uses
  %.not3.i114.i = icmp eq ptr %i.qe, null
  %i.qf = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i114.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !117
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  invoke void %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %i.qe, ptr noundef %i.qf)
          to label %_ZN4ncnn3MatD2Ev.exit96.i unwind label %bb.ai, !inline_history !95

bb.ag:                                            ; preds = %bb.ae
  %.not.i122.i = icmp eq ptr %i.qf, null
  br i1 %.not.i122.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.qf) #4
  br label %_ZN4ncnn3MatD2Ev.exit96.i

bb.ai:                                            ; preds = %bb.af
  %i.qj = landingpad { ptr, i32 }
          catch ptr null
  %i.qk = extractvalue { ptr, i32 } %i.qj, 0
  call void @__clang_call_terminate(ptr %i.qk) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit96.i:                        ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.ql = load ptr, ptr %i.x, align 8, !tbaa !114 ; 2 uses
  %.not.i117.i = icmp eq ptr %i.ql, null
  br i1 %.not.i117.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit96.i
  %i.qm = atomicrmw add ptr %i.ql, i32 -1 acq_rel, align 4
  %i.qn = icmp eq i32 %i.qm, 1
  br i1 %i.qn, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.qo = load ptr, ptr %i.y, align 8, !tbaa !115 ; 3 uses
  %.not3.i118.i = icmp eq ptr %i.qo, null
  %i.qp = load ptr, ptr %11, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i118.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !117
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8
  invoke void %i.qs(ptr noundef nonnull align 8 dereferenceable(8) %i.qo, ptr noundef %i.qp)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ao, !inline_history !95

bb.am:                                            ; preds = %bb.ak
  %.not.i121.i = icmp eq ptr %i.qp, null
  br i1 %.not.i121.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.qp) #4
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ao:                                            ; preds = %bb.al
  %i.qt = landingpad { ptr, i32 }
          catch ptr null
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0
  call void @__clang_call_terminate(ptr %i.qu) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %_ZN4ncnn3MatD2Ev.exit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  resume { ptr, i32 } %.pn.pn.pn.i

_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit98.i, %bb.q, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not374 = icmp sgt i32 %i.k, %i.j
  br i1 %.not374, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.t = sext i32 %i.k to i64
  %i.u = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph377, %._crit_edge372
  %indvars.iv441 = phi i64 [ %i.t, %.lr.ph377 ], [ %indvars.iv.next442, %._crit_edge372 ] ; 5 uses
  %i.v = shl nsw i64 %indvars.iv441, 2
  %i.w = load i32, ptr %4, align 4, !tbaa !12
  %i.x = load ptr, ptr %3, align 8, !tbaa !22
  %i.y = load i32, ptr %i.l, align 4, !tbaa !21
  %i.z = sext i32 %i.y to i64
  %i.aa = sext i32 %i.w to i64                    ; 2 uses
  %i.ab = mul nsw i64 %i.z, %i.aa
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !24
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad ; 7 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !22    ; 7 uses
  %i.ag = load ptr, ptr %6, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aa
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !28
  %i.aj = load float, ptr %7, align 4, !tbaa !28
  %i.ak = load ptr, ptr %8, align 8, !tbaa !22
  %.idx = shl nsw i64 %indvars.iv441, 6
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %.idx
  %i.am = load ptr, ptr %9, align 8, !tbaa !22
  %i.an = load i32, ptr %i.n, align 4, !tbaa !21
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %indvars.iv441, %i.ao
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !24
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %10, align 8, !tbaa !22
  %i.au = load i32, ptr %i.p, align 4, !tbaa !21
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %indvars.iv441, %i.av
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !24
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !22
  %i.bb = load i32, ptr %i.r, align 4, !tbaa !21
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.v, %i.bc
  %i.be = load i64, ptr %i.s, align 8, !tbaa !24
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = load i32, ptr %12, align 4, !tbaa !12   ; 13 uses
  %i.bi = icmp sgt i32 %i.bh, 15
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bj = zext nneg i32 %i.bh to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0228290 = phi ptr [ %i.as, %.lr.ph.preheader ], [ %i.ca, %.lr.ph ] ; 5 uses
  %i.bk = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bw, %.lr.ph ]
  %i.bl = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bx, %.lr.ph ]
  %i.bm = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.by, %.lr.ph ]
  %i.bn = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bz, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %14 = load <2 x i64>, ptr %i.bo, align 1, !tbaa !25
  %i.bp = load <64 x i8>, ptr %.0228290, align 1, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.0228290, i64 64
  %i.br = load <64 x i8>, ptr %i.bq, align 1, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.0228290, i64 128
  %i.bt = load <64 x i8>, ptr %i.bs, align 1, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.0228290, i64 192
  %i.bv = load <64 x i8>, ptr %i.bu, align 1, !tbaa !25
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %16 = bitcast <8 x i64> %15 to <64 x i8>        ; 4 uses
  %i.bw = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bk, <64 x i8> %16, <64 x i8> %i.bp) ; 2 uses
  %i.bx = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bl, <64 x i8> %16, <64 x i8> %i.br) ; 2 uses
  %i.by = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bm, <64 x i8> %16, <64 x i8> %i.bt) ; 2 uses
  %i.bz = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bn, <64 x i8> %16, <64 x i8> %i.bv) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0228290, i64 256 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cb = or disjoint i64 %indvars.iv.next, 15
  %i.cc = icmp samesign ult i64 %i.cb, %i.bj
  br i1 %i.cc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !121

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cd = add nuw i32 %i.bh, 2147483632
  %i.ce = and i32 %i.cd, 2147483632
  %narrow = add nuw i32 %i.ce, 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa281 = phi <16 x i32> [ zeroinitializer, %bb.c ], [ %i.bz, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa280 = phi <16 x i32> [ zeroinitializer, %bb.c ], [ %i.by, %._crit_edge.loopexit ] ; 2 uses
  %.0237.lcssa = phi i32 [ 0, %bb.c ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa279 = phi <16 x i32> [ zeroinitializer, %bb.c ], [ %i.bx, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa278 = phi <16 x i32> [ zeroinitializer, %bb.c ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %.0228.lcssa = phi ptr [ %i.as, %bb.c ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %i.cf = shufflevector <16 x i32> %.lcssa278, <16 x i32> %.lcssa279, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cg = shufflevector <16 x i32> %.lcssa278, <16 x i32> %.lcssa279, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ch = shufflevector <16 x i32> %.lcssa280, <16 x i32> %.lcssa281, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ci = shufflevector <16 x i32> %.lcssa280, <16 x i32> %.lcssa281, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cj = shufflevector <16 x i32> %i.cf, <16 x i32> %i.ch, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ck = shufflevector <16 x i32> %i.cf, <16 x i32> %i.ch, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cl = shufflevector <16 x i32> %i.cg, <16 x i32> %i.ci, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.cm = shufflevector <16 x i32> %i.cg, <16 x i32> %i.ci, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cn = add <16 x i32> %i.cj, %i.ck
  %i.co = add <16 x i32> %i.cn, %i.cl
  %i.cp = add <16 x i32> %i.co, %i.cm
  %i.cq = or disjoint i32 %.0237.lcssa, 7
  %i.cr = icmp slt i32 %i.cq, %i.bh
  br i1 %i.cr, label %.lr.ph302.preheader, label %._crit_edge303

.lr.ph302.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.0237.lcssa to i64
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %.lr.ph302
  %indvars.iv414 = phi i64 [ %i.cs, %.lr.ph302.preheader ], [ %indvars.iv.next415, %.lr.ph302 ] ; 2 uses
  %.1300 = phi ptr [ %.0228.lcssa, %.lr.ph302.preheader ], [ %i.dd, %.lr.ph302 ] ; 3 uses
  %i.ct = phi <16 x i32> [ zeroinitializer, %.lr.ph302.preheader ], [ %i.db, %.lr.ph302 ]
  %i.cu = phi <16 x i32> [ zeroinitializer, %.lr.ph302.preheader ], [ %i.dc, %.lr.ph302 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv414
  %i.cw = load i64, ptr %i.cv, align 1, !tbaa !25
  %i.cx = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cy = load <64 x i8>, ptr %.1300, align 1, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %.1300, i64 64
  %i.da = load <64 x i8>, ptr %i.cz, align 1, !tbaa !25
  %17 = shufflevector <2 x i64> %i.cx, <2 x i64> poison, <8 x i32> zeroinitializer
  %18 = bitcast <8 x i64> %17 to <64 x i8>        ; 2 uses
  %i.db = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ct, <64 x i8> %18, <64 x i8> %i.cy) ; 2 uses
  %i.dc = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cu, <64 x i8> %18, <64 x i8> %i.da) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1300, i64 128 ; 2 uses
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 8 ; 3 uses
  %i.de = trunc i64 %indvars.iv.next415 to i32
  %i.df = or i32 %i.de, 7
  %i.dg = icmp slt i32 %i.df, %i.bh
  br i1 %i.dg, label %.lr.ph302, label %._crit_edge303.loopexit, !llvm.loop !122

._crit_edge303.loopexit:                          ; preds = %.lr.ph302
  %i.dh = trunc nuw i64 %indvars.iv.next415 to i32
  %i.di = bitcast <16 x i32> %i.db to <16 x float>
  %i.dj = bitcast <16 x i32> %i.dc to <16 x float>
  br label %._crit_edge303

._crit_edge303:                                   ; preds = %._crit_edge303.loopexit, %._crit_edge
  %.1238.lcssa = phi i32 [ %.0237.lcssa, %._crit_edge ], [ %i.dh, %._crit_edge303.loopexit ] ; 3 uses
  %.1234.lcssa = phi <16 x float> [ zeroinitializer, %._crit_edge ], [ %i.dj, %._crit_edge303.loopexit ] ; 2 uses
  %.1230.lcssa = phi <16 x float> [ zeroinitializer, %._crit_edge ], [ %i.di, %._crit_edge303.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0228.lcssa, %._crit_edge ], [ %i.dd, %._crit_edge303.loopexit ] ; 2 uses
  %i.dk = shufflevector <16 x float> %.1230.lcssa, <16 x float> %.1234.lcssa, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %i.dl = shufflevector <16 x float> %.1230.lcssa, <16 x float> %.1234.lcssa, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  %i.dm = bitcast <16 x float> %i.dk to <16 x i32>
  %i.dn = add <16 x i32> %i.cp, %i.dm
  %i.do = bitcast <16 x float> %i.dl to <16 x i32>
  %i.dp = add <16 x i32> %i.dn, %i.do             ; 2 uses
  %i.dq = or disjoint i32 %.1238.lcssa, 3
  %i.dr = icmp slt i32 %i.dq, %i.bh
  br i1 %i.dr, label %.lr.ph312.preheader, label %._crit_edge313

.lr.ph312.preheader:                              ; preds = %._crit_edge303
  %i.ds = zext i32 %.1238.lcssa to i64
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %.lr.ph312
  %indvars.iv417 = phi i64 [ %i.ds, %.lr.ph312.preheader ], [ %indvars.iv.next418, %.lr.ph312 ] ; 2 uses
  %.2310 = phi ptr [ %.1.lcssa, %.lr.ph312.preheader ], [ %i.ea, %.lr.ph312 ] ; 2 uses
  %.0273.in308 = phi <16 x i32> [ %i.dp, %.lr.ph312.preheader ], [ %i.dz, %.lr.ph312 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv417
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12
  %i.dv = insertelement <16 x i32> poison, i32 %i.du, i64 0
  %i.dw = shufflevector <16 x i32> %i.dv, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dx = load <64 x i8>, ptr %.2310, align 1, !tbaa !25
  %i.dy = bitcast <16 x i32> %i.dw to <64 x i8>
  %i.dz = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.0273.in308, <64 x i8> %i.dy, <64 x i8> %i.dx) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.2310, i64 64 ; 2 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 4 ; 3 uses
  %i.eb = trunc i64 %indvars.iv.next418 to i32
  %i.ec = or i32 %i.eb, 3
  %i.ed = icmp slt i32 %i.ec, %i.bh
  br i1 %i.ed, label %.lr.ph312, label %._crit_edge313.loopexit, !llvm.loop !123

._crit_edge313.loopexit:                          ; preds = %.lr.ph312
  %i.ee = trunc nuw i64 %indvars.iv.next418 to i32
  br label %._crit_edge313

._crit_edge313:                                   ; preds = %._crit_edge313.loopexit, %._crit_edge303
  %.0273.in.lcssa = phi <16 x i32> [ %i.dp, %._crit_edge303 ], [ %i.dz, %._crit_edge313.loopexit ]
  %.2239.lcssa = phi i32 [ %.1238.lcssa, %._crit_edge303 ], [ %i.ee, %._crit_edge313.loopexit ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %._crit_edge303 ], [ %i.ea, %._crit_edge313.loopexit ] ; 2 uses
  %i.ef = load <16 x i32>, ptr %.2.lcssa, align 1, !tbaa !25
  %i.eg = sub <16 x i32> %.0273.in.lcssa, %i.ef   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 64 ; 2 uses
  %i.ei = or disjoint i32 %.2239.lcssa, 1
  %i.ej = icmp slt i32 %i.ei, %i.bh
  br i1 %i.ej, label %.lr.ph321.preheader, label %.preheader277

.lr.ph321.preheader:                              ; preds = %._crit_edge313
  %i.ek = zext i32 %.2239.lcssa to i64
  br label %.lr.ph321

.preheader277.loopexit:                           ; preds = %.lr.ph321
  %i.el = trunc nuw i64 %indvars.iv.next421 to i32
  br label %.preheader277

.preheader277:                                    ; preds = %.preheader277.loopexit, %._crit_edge313
  %.1274.in.lcssa = phi <16 x i32> [ %i.eg, %._crit_edge313 ], [ %i.fm, %.preheader277.loopexit ] ; 3 uses
  %.3240.lcssa = phi i32 [ %.2239.lcssa, %._crit_edge313 ], [ %i.el, %.preheader277.loopexit ] ; 4 uses
  %.3.lcssa = phi ptr [ %i.eh, %._crit_edge313 ], [ %i.fn, %.preheader277.loopexit ] ; 4 uses
  %i.em = icmp slt i32 %.3240.lcssa, %i.bh
  br i1 %i.em, label %.lr.ph327.preheader, label %.preheader276

.lr.ph327.preheader:                              ; preds = %.preheader277
  %i.en = zext i32 %.3240.lcssa to i64            ; 3 uses
  %i.eo = sub i32 %i.bh, %.3240.lcssa
  %.neg = add i32 %.3240.lcssa, 1
  %xtraiter = and i32 %i.eo, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph327.prol.loopexit, label %.lr.ph327.prol

.lr.ph327.prol:                                   ; preds = %.lr.ph327.preheader
  %i.ep = load <16 x i8>, ptr %.3.lcssa, align 16, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.en
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !25
  %i.es = sext i8 %i.er to i16
  %i.et = insertelement <16 x i16> poison, i16 %i.es, i64 0
  %i.eu = shufflevector <16 x i16> %i.et, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.ev = sext <16 x i8> %i.ep to <16 x i16>
  %i.ew = mul <16 x i16> %i.eu, %i.ev
  %i.ex = sext <16 x i16> %i.ew to <16 x i32>
  %i.ey = add <16 x i32> %.1274.in.lcssa, %i.ex   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 16 ; 2 uses
  %indvars.iv.next424.prol = add nuw nsw i64 %i.en, 1
  br label %.lr.ph327.prol.loopexit

.lr.ph327.prol.loopexit:                          ; preds = %.lr.ph327.prol, %.lr.ph327.preheader
  %indvars.iv423.unr = phi i64 [ %i.en, %.lr.ph327.preheader ], [ %indvars.iv.next424.prol, %.lr.ph327.prol ]
  %.4326.unr = phi ptr [ %.3.lcssa, %.lr.ph327.preheader ], [ %i.ez, %.lr.ph327.prol ]
  %.unr = phi <16 x i32> [ %.1274.in.lcssa, %.lr.ph327.preheader ], [ %i.ey, %.lr.ph327.prol ]
  %.lcssa517.unr = phi <16 x i32> [ poison, %.lr.ph327.preheader ], [ %i.ey, %.lr.ph327.prol ]
  %.lcssa516.unr = phi ptr [ poison, %.lr.ph327.preheader ], [ %i.ez, %.lr.ph327.prol ]
  %i.fa = icmp eq i32 %i.bh, %.neg
  br i1 %i.fa, label %.preheader276, label %.lr.ph327

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %indvars.iv420 = phi i64 [ %i.ek, %.lr.ph321.preheader ], [ %indvars.iv.next421, %.lr.ph321 ] ; 2 uses
  %.3319 = phi ptr [ %i.eh, %.lr.ph321.preheader ], [ %i.fn, %.lr.ph321 ] ; 2 uses
  %.1274.in317 = phi <16 x i32> [ %i.eg, %.lr.ph321.preheader ], [ %i.fm, %.lr.ph321 ]
  %i.fb = load <32 x i8>, ptr %.3319, align 1, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv420
  %i.fd = load float, ptr %i.fc, align 1, !tbaa !25
  %i.fe = insertelement <8 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = sext <32 x i8> %i.fb to <32 x i16>
  %i.fh = bitcast <8 x float> %i.ff to <32 x i8>
  %i.fi = sext <32 x i8> %i.fh to <32 x i16>
  %i.fj = bitcast <32 x i16> %i.fi to <16 x i32>
  %i.fk = shufflevector <16 x i32> %i.fj, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.fl = bitcast <16 x i32> %i.fk to <32 x i16>
  %i.fm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.1274.in317, <32 x i16> %i.fg, <32 x i16> %i.fl) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.3319, i64 32 ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2 ; 3 uses
  %i.fo = trunc i64 %indvars.iv.next421 to i32
  %i.fp = or i32 %i.fo, 1
  %i.fq = icmp slt i32 %i.fp, %i.bh
  br i1 %i.fq, label %.lr.ph321, label %.preheader277.loopexit, !llvm.loop !124

.preheader276:                                    ; preds = %.lr.ph327.prol.loopexit, %.lr.ph327, %.preheader277
  %.lcssa282 = phi <16 x i32> [ %.1274.in.lcssa, %.preheader277 ], [ %.lcssa517.unr, %.lr.ph327.prol.loopexit ], [ %i.gq, %.lr.ph327 ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader277 ], [ %.lcssa516.unr, %.lr.ph327.prol.loopexit ], [ %i.gr, %.lr.ph327 ] ; 2 uses
  %i.fr = load i32, ptr %13, align 4, !tbaa !12   ; 13 uses
  %i.fs = icmp sgt i32 %i.fr, 15
  br i1 %i.fs, label %.lr.ph332.preheader, label %._crit_edge333

.lr.ph332.preheader:                              ; preds = %.preheader276
  %i.ft = zext nneg i32 %i.fr to i64
  br label %.lr.ph332

.lr.ph327:                                        ; preds = %.lr.ph327.prol.loopexit, %.lr.ph327
  %indvars.iv423 = phi i64 [ %indvars.iv.next424.1, %.lr.ph327 ], [ %indvars.iv423.unr, %.lr.ph327.prol.loopexit ] ; 3 uses
  %.4326 = phi ptr [ %i.gr, %.lr.ph327 ], [ %.4326.unr, %.lr.ph327.prol.loopexit ] ; 3 uses
  %i.fu = phi <16 x i32> [ %i.gq, %.lr.ph327 ], [ %.unr, %.lr.ph327.prol.loopexit ]
  %i.fv = load <16 x i8>, ptr %.4326, align 16, !tbaa !25
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv423
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.fy = sext i8 %i.fx to i16
  %i.fz = insertelement <16 x i16> poison, i16 %i.fy, i64 0
  %i.ga = shufflevector <16 x i16> %i.fz, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.gb = sext <16 x i8> %i.fv to <16 x i16>
  %i.gc = mul <16 x i16> %i.ga, %i.gb
  %i.gd = sext <16 x i16> %i.gc to <16 x i32>
  %i.ge = add <16 x i32> %i.fu, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.4326, i64 16
  %i.gg = load <16 x i8>, ptr %i.gf, align 16, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv423
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !25
  %i.gk = sext i8 %i.gj to i16
  %i.gl = insertelement <16 x i16> poison, i16 %i.gk, i64 0
  %i.gm = shufflevector <16 x i16> %i.gl, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.gn = sext <16 x i8> %i.gg to <16 x i16>
  %i.go = mul <16 x i16> %i.gm, %i.gn
  %i.gp = sext <16 x i16> %i.go to <16 x i32>
  %i.gq = add <16 x i32> %i.ge, %i.gp             ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.4326, i64 32 ; 2 uses
  %indvars.iv.next424.1 = add nuw nsw i64 %indvars.iv423, 2 ; 2 uses
  %i.gs = trunc nuw i64 %indvars.iv.next424.1 to i32
  %i.gt = icmp sgt i32 %i.bh, %i.gs
  br i1 %i.gt, label %.lr.ph327, label %.preheader276, !llvm.loop !125

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %.lr.ph332
  %indvars.iv426 = phi i64 [ 0, %.lr.ph332.preheader ], [ %indvars.iv.next427, %.lr.ph332 ] ; 2 uses
  %.5331 = phi ptr [ %.4.lcssa, %.lr.ph332.preheader ], [ %i.hk, %.lr.ph332 ] ; 5 uses
  %i.gu = phi <16 x i32> [ zeroinitializer, %.lr.ph332.preheader ], [ %i.hg, %.lr.ph332 ]
  %i.gv = phi <16 x i32> [ zeroinitializer, %.lr.ph332.preheader ], [ %i.hh, %.lr.ph332 ]
  %i.gw = phi <16 x i32> [ zeroinitializer, %.lr.ph332.preheader ], [ %i.hi, %.lr.ph332 ]
  %i.gx = phi <16 x i32> [ zeroinitializer, %.lr.ph332.preheader ], [ %i.hj, %.lr.ph332 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv426
  %19 = load <2 x i64>, ptr %i.gy, align 1, !tbaa !25
  %i.gz = load <64 x i8>, ptr %.5331, align 1, !tbaa !25
  %i.ha = getelementptr inbounds nuw i8, ptr %.5331, i64 64
  %i.hb = load <64 x i8>, ptr %i.ha, align 1, !tbaa !25
  %i.hc = getelementptr inbounds nuw i8, ptr %.5331, i64 128
  %i.hd = load <64 x i8>, ptr %i.hc, align 1, !tbaa !25
  %i.he = getelementptr inbounds nuw i8, ptr %.5331, i64 192
  %i.hf = load <64 x i8>, ptr %i.he, align 1, !tbaa !25
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %21 = bitcast <8 x i64> %20 to <64 x i8>        ; 4 uses
  %i.hg = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gu, <64 x i8> %21, <64 x i8> %i.gz) ; 2 uses
  %i.hh = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gv, <64 x i8> %21, <64 x i8> %i.hb) ; 2 uses
  %i.hi = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gw, <64 x i8> %21, <64 x i8> %i.hd) ; 2 uses
  %i.hj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gx, <64 x i8> %21, <64 x i8> %i.hf) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.5331, i64 256 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 16 ; 2 uses
  %i.hl = or disjoint i64 %indvars.iv.next427, 15
  %i.hm = icmp samesign ult i64 %i.hl, %i.ft
  br i1 %i.hm, label %.lr.ph332, label %._crit_edge333.loopexit, !llvm.loop !126

._crit_edge333.loopexit:                          ; preds = %.lr.ph332
  %i.hn = add nuw i32 %i.fr, 2147483632
  %i.ho = and i32 %i.hn, 2147483632
  %narrow452 = add nuw i32 %i.ho, 16
  br label %._crit_edge333

._crit_edge333:                                   ; preds = %._crit_edge333.loopexit, %.preheader276
  %.lcssa287 = phi <16 x i32> [ zeroinitializer, %.preheader276 ], [ %i.hj, %._crit_edge333.loopexit ] ; 2 uses
  %.lcssa286 = phi <16 x i32> [ zeroinitializer, %.preheader276 ], [ %i.hi, %._crit_edge333.loopexit ] ; 2 uses
  %.5242.lcssa = phi i32 [ 0, %.preheader276 ], [ %narrow452, %._crit_edge333.loopexit ] ; 3 uses
  %.lcssa285 = phi <16 x i32> [ zeroinitializer, %.preheader276 ], [ %i.hh, %._crit_edge333.loopexit ] ; 2 uses
  %.lcssa284 = phi <16 x i32> [ zeroinitializer, %.preheader276 ], [ %i.hg, %._crit_edge333.loopexit ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader276 ], [ %i.hk, %._crit_edge333.loopexit ] ; 2 uses
  %i.hp = shufflevector <16 x i32> %.lcssa284, <16 x i32> %.lcssa285, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.hq = shufflevector <16 x i32> %.lcssa284, <16 x i32> %.lcssa285, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hr = shufflevector <16 x i32> %.lcssa286, <16 x i32> %.lcssa287, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.hs = shufflevector <16 x i32> %.lcssa286, <16 x i32> %.lcssa287, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ht = shufflevector <16 x i32> %i.hp, <16 x i32> %i.hr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.hu = shufflevector <16 x i32> %i.hp, <16 x i32> %i.hr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.hv = shufflevector <16 x i32> %i.hq, <16 x i32> %i.hs, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.hw = shufflevector <16 x i32> %i.hq, <16 x i32> %i.hs, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.hx = add <16 x i32> %i.ht, %i.hu
  %i.hy = add <16 x i32> %i.hx, %i.hv
  %i.hz = add <16 x i32> %i.hy, %i.hw
  %i.ia = or disjoint i32 %.5242.lcssa, 7
  %i.ib = icmp slt i32 %i.ia, %i.fr
  br i1 %i.ib, label %.lr.ph346.preheader, label %._crit_edge347

.lr.ph346.preheader:                              ; preds = %._crit_edge333
  %i.ic = zext nneg i32 %.5242.lcssa to i64
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.preheader, %.lr.ph346
  %indvars.iv429 = phi i64 [ %i.ic, %.lr.ph346.preheader ], [ %indvars.iv.next430, %.lr.ph346 ] ; 2 uses
  %.6344 = phi ptr [ %.5.lcssa, %.lr.ph346.preheader ], [ %i.in, %.lr.ph346 ] ; 3 uses
  %i.id = phi <16 x i32> [ zeroinitializer, %.lr.ph346.preheader ], [ %i.il, %.lr.ph346 ]
  %i.ie = phi <16 x i32> [ zeroinitializer, %.lr.ph346.preheader ], [ %i.im, %.lr.ph346 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv429
  %i.ig = load i64, ptr %i.if, align 1, !tbaa !25
  %i.ih = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.ii = load <64 x i8>, ptr %.6344, align 1, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %.6344, i64 64
  %i.ik = load <64 x i8>, ptr %i.ij, align 1, !tbaa !25
  %22 = shufflevector <2 x i64> %i.ih, <2 x i64> poison, <8 x i32> zeroinitializer
  %23 = bitcast <8 x i64> %22 to <64 x i8>        ; 2 uses
  %i.il = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.id, <64 x i8> %23, <64 x i8> %i.ii) ; 2 uses
  %i.im = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ie, <64 x i8> %23, <64 x i8> %i.ik) ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.6344, i64 128 ; 2 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 8 ; 3 uses
  %i.io = trunc i64 %indvars.iv.next430 to i32
  %i.ip = or i32 %i.io, 7
  %i.iq = icmp slt i32 %i.ip, %i.fr
  br i1 %i.iq, label %.lr.ph346, label %._crit_edge347.loopexit, !llvm.loop !127

._crit_edge347.loopexit:                          ; preds = %.lr.ph346
  %i.ir = trunc nuw i64 %indvars.iv.next430 to i32
  %i.is = bitcast <16 x i32> %i.il to <16 x float>
  %i.it = bitcast <16 x i32> %i.im to <16 x float>
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %._crit_edge333
  %.6243.lcssa = phi i32 [ %.5242.lcssa, %._crit_edge333 ], [ %i.ir, %._crit_edge347.loopexit ] ; 3 uses
  %.3236.lcssa = phi <16 x float> [ zeroinitializer, %._crit_edge333 ], [ %i.it, %._crit_edge347.loopexit ] ; 2 uses
  %.3232.lcssa = phi <16 x float> [ zeroinitializer, %._crit_edge333 ], [ %i.is, %._crit_edge347.loopexit ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge333 ], [ %i.in, %._crit_edge347.loopexit ] ; 2 uses
  %i.iu = shufflevector <16 x float> %.3232.lcssa, <16 x float> %.3236.lcssa, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %i.iv = shufflevector <16 x float> %.3232.lcssa, <16 x float> %.3236.lcssa, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  %i.iw = bitcast <16 x float> %i.iu to <16 x i32>
  %i.ix = add <16 x i32> %i.hz, %i.iw
  %i.iy = bitcast <16 x float> %i.iv to <16 x i32>
  %i.iz = add <16 x i32> %i.ix, %i.iy             ; 2 uses
  %i.ja = or disjoint i32 %.6243.lcssa, 3
  %i.jb = icmp slt i32 %i.ja, %i.fr
  br i1 %i.jb, label %.lr.ph356.preheader, label %._crit_edge357

.lr.ph356.preheader:                              ; preds = %._crit_edge347
  %i.jc = zext i32 %.6243.lcssa to i64
  br label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %.lr.ph356
  %indvars.iv432 = phi i64 [ %i.jc, %.lr.ph356.preheader ], [ %indvars.iv.next433, %.lr.ph356 ] ; 2 uses
  %.7354 = phi ptr [ %.6.lcssa, %.lr.ph356.preheader ], [ %i.jk, %.lr.ph356 ] ; 2 uses
  %.0270.in352 = phi <16 x i32> [ %i.iz, %.lr.ph356.preheader ], [ %i.jj, %.lr.ph356 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv432
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !12
  %i.jf = insertelement <16 x i32> poison, i32 %i.je, i64 0
  %i.jg = shufflevector <16 x i32> %i.jf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.jh = load <64 x i8>, ptr %.7354, align 1, !tbaa !25
  %i.ji = bitcast <16 x i32> %i.jg to <64 x i8>
  %i.jj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.0270.in352, <64 x i8> %i.ji, <64 x i8> %i.jh) ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.7354, i64 64 ; 2 uses
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 4 ; 3 uses
  %i.jl = trunc i64 %indvars.iv.next433 to i32
  %i.jm = or i32 %i.jl, 3
  %i.jn = icmp slt i32 %i.jm, %i.fr
  br i1 %i.jn, label %.lr.ph356, label %._crit_edge357.loopexit, !llvm.loop !128

._crit_edge357.loopexit:                          ; preds = %.lr.ph356
  %i.jo = trunc nuw i64 %indvars.iv.next433 to i32
  br label %._crit_edge357

._crit_edge357:                                   ; preds = %._crit_edge357.loopexit, %._crit_edge347
  %.0270.in.lcssa = phi <16 x i32> [ %i.iz, %._crit_edge347 ], [ %i.jj, %._crit_edge357.loopexit ]
  %.7244.lcssa = phi i32 [ %.6243.lcssa, %._crit_edge347 ], [ %i.jo, %._crit_edge357.loopexit ] ; 3 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %._crit_edge347 ], [ %i.jk, %._crit_edge357.loopexit ] ; 2 uses
  %i.jp = load <16 x i32>, ptr %.7.lcssa, align 1, !tbaa !25
  %i.jq = sub <16 x i32> %.0270.in.lcssa, %i.jp   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 64 ; 2 uses
  %i.js = or disjoint i32 %.7244.lcssa, 1
  %i.jt = icmp slt i32 %i.js, %i.fr
  br i1 %i.jt, label %.lr.ph365.preheader, label %.preheader

.lr.ph365.preheader:                              ; preds = %._crit_edge357
  %i.ju = zext i32 %.7244.lcssa to i64
  br label %.lr.ph365

.preheader.loopexit:                              ; preds = %.lr.ph365
  %i.jv = trunc nuw i64 %indvars.iv.next436 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge357
  %.1271.in.lcssa = phi <16 x i32> [ %i.jq, %._crit_edge357 ], [ %i.kw, %.preheader.loopexit ] ; 3 uses
  %.8245.lcssa = phi i32 [ %.7244.lcssa, %._crit_edge357 ], [ %i.jv, %.preheader.loopexit ] ; 4 uses
  %.8.lcssa = phi ptr [ %i.jr, %._crit_edge357 ], [ %i.kx, %.preheader.loopexit ] ; 3 uses
  %i.jw = icmp slt i32 %.8245.lcssa, %i.fr
  br i1 %i.jw, label %.lr.ph371.preheader, label %._crit_edge372

.lr.ph371.preheader:                              ; preds = %.preheader
  %i.jx = zext i32 %.8245.lcssa to i64            ; 3 uses
  %i.jy = sub i32 %i.fr, %.8245.lcssa
  %.neg534 = add i32 %.8245.lcssa, 1
  %xtraiter531 = and i32 %i.jy, 1
  %lcmp.mod532.not = icmp eq i32 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %.lr.ph371.prol.loopexit, label %.lr.ph371.prol

.lr.ph371.prol:                                   ; preds = %.lr.ph371.preheader
  %i.jz = load <16 x i8>, ptr %.8.lcssa, align 16, !tbaa !25
  %i.ka = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.jx
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !25
  %i.kc = sext i8 %i.kb to i16
  %i.kd = insertelement <16 x i16> poison, i16 %i.kc, i64 0
  %i.ke = shufflevector <16 x i16> %i.kd, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.kf = sext <16 x i8> %i.jz to <16 x i16>
  %i.kg = mul <16 x i16> %i.ke, %i.kf
  %i.kh = sext <16 x i16> %i.kg to <16 x i32>
  %i.ki = add <16 x i32> %.1271.in.lcssa, %i.kh   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 16
  %indvars.iv.next439.prol = add nuw nsw i64 %i.jx, 1
  br label %.lr.ph371.prol.loopexit

.lr.ph371.prol.loopexit:                          ; preds = %.lr.ph371.prol, %.lr.ph371.preheader
  %indvars.iv438.unr = phi i64 [ %i.jx, %.lr.ph371.preheader ], [ %indvars.iv.next439.prol, %.lr.ph371.prol ]
  %.9370.unr = phi ptr [ %.8.lcssa, %.lr.ph371.preheader ], [ %i.kj, %.lr.ph371.prol ]
  %.unr533 = phi <16 x i32> [ %.1271.in.lcssa, %.lr.ph371.preheader ], [ %i.ki, %.lr.ph371.prol ]
  %.lcssa530.unr = phi <16 x i32> [ poison, %.lr.ph371.preheader ], [ %i.ki, %.lr.ph371.prol ]
  %i.kk = icmp eq i32 %i.fr, %.neg534
  br i1 %i.kk, label %._crit_edge372, label %.lr.ph371

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %.lr.ph365
  %indvars.iv435 = phi i64 [ %i.ju, %.lr.ph365.preheader ], [ %indvars.iv.next436, %.lr.ph365 ] ; 2 uses
  %.8363 = phi ptr [ %i.jr, %.lr.ph365.preheader ], [ %i.kx, %.lr.ph365 ] ; 2 uses
  %.1271.in361 = phi <16 x i32> [ %i.jq, %.lr.ph365.preheader ], [ %i.kw, %.lr.ph365 ]
  %i.kl = load <32 x i8>, ptr %.8363, align 1, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv435
  %i.kn = load float, ptr %i.km, align 1, !tbaa !25
  %i.ko = insertelement <8 x float> poison, float %i.kn, i64 0
  %i.kp = shufflevector <8 x float> %i.ko, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kq = sext <32 x i8> %i.kl to <32 x i16>
  %i.kr = bitcast <8 x float> %i.kp to <32 x i8>
  %i.ks = sext <32 x i8> %i.kr to <32 x i16>
  %i.kt = bitcast <32 x i16> %i.ks to <16 x i32>
  %i.ku = shufflevector <16 x i32> %i.kt, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.kv = bitcast <16 x i32> %i.ku to <32 x i16>
  %i.kw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.1271.in361, <32 x i16> %i.kq, <32 x i16> %i.kv) ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.8363, i64 32 ; 2 uses
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 2 ; 3 uses
  %i.ky = trunc i64 %indvars.iv.next436 to i32
  %i.kz = or i32 %i.ky, 1
  %i.la = icmp slt i32 %i.kz, %i.fr
  br i1 %i.la, label %.lr.ph365, label %.preheader.loopexit, !llvm.loop !129

.lr.ph371:                                        ; preds = %.lr.ph371.prol.loopexit, %.lr.ph371
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %.lr.ph371 ], [ %indvars.iv438.unr, %.lr.ph371.prol.loopexit ] ; 3 uses
  %.9370 = phi ptr [ %i.ly, %.lr.ph371 ], [ %.9370.unr, %.lr.ph371.prol.loopexit ] ; 3 uses
  %i.lb = phi <16 x i32> [ %i.lx, %.lr.ph371 ], [ %.unr533, %.lr.ph371.prol.loopexit ]
  %i.lc = load <16 x i8>, ptr %.9370, align 16, !tbaa !25
  %i.ld = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv438
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !25
  %i.lf = sext i8 %i.le to i16
  %i.lg = insertelement <16 x i16> poison, i16 %i.lf, i64 0
  %i.lh = shufflevector <16 x i16> %i.lg, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.li = sext <16 x i8> %i.lc to <16 x i16>
  %i.lj = mul <16 x i16> %i.lh, %i.li
  %i.lk = sext <16 x i16> %i.lj to <16 x i32>
  %i.ll = add <16 x i32> %i.lb, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %.9370, i64 16
  %i.ln = load <16 x i8>, ptr %i.lm, align 16, !tbaa !25
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv438
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !25
  %i.lr = sext i8 %i.lq to i16
  %i.ls = insertelement <16 x i16> poison, i16 %i.lr, i64 0
  %i.lt = shufflevector <16 x i16> %i.ls, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.lu = sext <16 x i8> %i.ln to <16 x i16>
  %i.lv = mul <16 x i16> %i.lt, %i.lu
  %i.lw = sext <16 x i16> %i.lv to <16 x i32>
  %i.lx = add <16 x i32> %i.ll, %i.lw             ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.9370, i64 32
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %i.lz = trunc nuw i64 %indvars.iv.next439.1 to i32
  %i.ma = icmp sgt i32 %i.fr, %i.lz
  br i1 %i.ma, label %.lr.ph371, label %._crit_edge372, !llvm.loop !130

._crit_edge372:                                   ; preds = %.lr.ph371.prol.loopexit, %.lr.ph371, %.preheader
  %.lcssa288 = phi <16 x i32> [ %.1271.in.lcssa, %.preheader ], [ %.lcssa530.unr, %.lr.ph371.prol.loopexit ], [ %i.lx, %.lr.ph371 ]
  %i.mb = insertelement <16 x float> poison, float %i.ai, i64 0
  %i.mc = shufflevector <16 x float> %i.mb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.md = insertelement <16 x float> poison, float %i.aj, i64 0
  %i.me = shufflevector <16 x float> %i.md, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mf = load <16 x float>, ptr %i.al, align 1, !tbaa !25
  %i.mg = load <16 x float>, ptr %i.az, align 1, !tbaa !25
  %i.mh = sitofp fast <16 x i32> %.lcssa282 to <16 x float>
  %i.mi = fmul fast <16 x float> %i.mg, %i.mc
  %i.mj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mh, <16 x float> nofpclass(nan inf) %i.mi, <16 x float> nofpclass(nan inf) %i.mf)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.ml = load <16 x float>, ptr %i.mk, align 1, !tbaa !25
  %i.mm = sitofp fast <16 x i32> %.lcssa288 to <16 x float>
  %i.mn = fmul fast <16 x float> %i.ml, %i.me
  %i.mo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mm, <16 x float> nofpclass(nan inf) %i.mn, <16 x float> nofpclass(nan inf) %i.mj)
  store <16 x float> %i.mo, ptr %i.bg, align 1, !tbaa !25
  %indvars.iv.next442 = add nsw i64 %indvars.iv441, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next442 to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge378, label %bb.c

._crit_edge378:                                   ; preds = %._crit_edge372, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge378, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not344 = icmp sgt i32 %i.k, %i.j
  br i1 %.not344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph347, %._crit_edge342
  %.0345 = phi i32 [ %i.k, %.lr.ph347 ], [ %i.lx, %._crit_edge342 ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !12
  %i.u = shl nsw i32 %.0345, 1
  %i.v = add nsw i32 %i.t, %i.u                   ; 4 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !12
  %i.x = load ptr, ptr %4, align 8, !tbaa !22
  %i.y = load i32, ptr %i.l, align 4, !tbaa !21
  %i.z = sext i32 %i.y to i64
  %i.aa = sext i32 %i.w to i64                    ; 2 uses
  %i.ab = mul nsw i64 %i.z, %i.aa
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !24
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad ; 7 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !22    ; 7 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aa
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !28
  %i.aj = load float, ptr %8, align 4, !tbaa !28
  %i.ak = load ptr, ptr %9, align 8, !tbaa !22
  %i.al = shl nsw i32 %i.v, 2
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = sdiv i32 %i.v, 4
  %i.ap = srem i32 %i.v, 4
  %.lhs.trunc = trunc nsw i32 %i.ap to i8
  %i.aq = sdiv i8 %.lhs.trunc, 2
  %.sext = sext i8 %i.aq to i32
  %i.ar = add nsw i32 %i.ao, %.sext
  %i.as = load ptr, ptr %10, align 8, !tbaa !22
  %i.at = load i32, ptr %i.n, align 4, !tbaa !21
  %i.au = sext i32 %i.at to i64
  %i.av = sext i32 %i.ar to i64                   ; 2 uses
  %i.aw = mul nsw i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.o, align 8, !tbaa !24
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !22
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !21
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.bc, %i.av
  %i.be = load i64, ptr %i.q, align 8, !tbaa !24
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %12, align 8, !tbaa !22
  %i.bi = load i32, ptr %i.r, align 4, !tbaa !21
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sext i32 %i.v to i64
  %i.bl = mul nsw i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !24
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn
  %i.bp = load i32, ptr %13, align 4, !tbaa !12   ; 13 uses
  %i.bq = icmp sgt i32 %i.bp, 15
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.br = zext nneg i32 %i.bp to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0141264 = phi ptr [ %i.az, %.lr.ph.preheader ], [ %i.ci, %.lr.ph ] ; 5 uses
  %i.bs = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ce, %.lr.ph ]
  %i.bt = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cf, %.lr.ph ]
  %i.bu = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cg, %.lr.ph ]
  %i.bv = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ch, %.lr.ph ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %15 = load <2 x i64>, ptr %i.bw, align 1, !tbaa !25
  %i.bx = load <32 x i8>, ptr %.0141264, align 1, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %.0141264, i64 32
  %i.bz = load <32 x i8>, ptr %i.by, align 1, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.0141264, i64 64
  %i.cb = load <32 x i8>, ptr %i.ca, align 1, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.0141264, i64 96
  %i.cd = load <32 x i8>, ptr %i.cc, align 1, !tbaa !25
  %16 = shufflevector <2 x i64> %15, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %17 = bitcast <4 x i64> %16 to <32 x i8>        ; 4 uses
  %i.ce = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bs, <32 x i8> %17, <32 x i8> %i.bx) ; 2 uses
  %i.cf = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bt, <32 x i8> %17, <32 x i8> %i.bz) ; 2 uses
  %i.cg = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bu, <32 x i8> %17, <32 x i8> %i.cb) ; 2 uses
  %i.ch = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bv, <32 x i8> %17, <32 x i8> %i.cd) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0141264, i64 128 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cj = or disjoint i64 %indvars.iv.next, 15
  %i.ck = icmp samesign ult i64 %i.cj, %i.br
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !131

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cl = add nuw i32 %i.bp, 2147483632
  %i.cm = and i32 %i.cl, 2147483632
  %narrow = add nuw i32 %i.cm, 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa251 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.ch, %._crit_edge.loopexit ]
  %.lcssa250 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.cg, %._crit_edge.loopexit ]
  %.lcssa249 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.cf, %._crit_edge.loopexit ]
  %.lcssa248 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.ce, %._crit_edge.loopexit ]
  %.0142.lcssa = phi i32 [ 0, %bb.c ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.0141.lcssa = phi ptr [ %i.az, %bb.c ], [ %i.ci, %._crit_edge.loopexit ] ; 2 uses
  %i.cn = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa248, <8 x i32> %.lcssa249)
  %i.co = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa250, <8 x i32> %.lcssa251)
  %i.cp = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.cn, <8 x i32> %i.co)
  %i.cq = or disjoint i32 %.0142.lcssa, 7
  %i.cr = icmp slt i32 %i.cq, %i.bp
  br i1 %i.cr, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.0142.lcssa to i64
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.preheader, %.lr.ph274
  %indvars.iv384 = phi i64 [ %i.cs, %.lr.ph274.preheader ], [ %indvars.iv.next385, %.lr.ph274 ] ; 2 uses
  %.1272 = phi ptr [ %.0141.lcssa, %.lr.ph274.preheader ], [ %i.dg, %.lr.ph274 ] ; 3 uses
  %i.ct = phi <8 x i32> [ zeroinitializer, %.lr.ph274.preheader ], [ %i.de, %.lr.ph274 ]
  %i.cu = phi <8 x i32> [ zeroinitializer, %.lr.ph274.preheader ], [ %i.df, %.lr.ph274 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv384
  %i.cw = load double, ptr %i.cv, align 1, !tbaa !25
  %i.cx = insertelement <4 x double> poison, double %i.cw, i64 0
  %i.cy = bitcast <4 x double> %i.cx to <4 x i64>
  %i.cz = shufflevector <4 x i64> %i.cy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.da = load <32 x i8>, ptr %.1272, align 1, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %.1272, i64 32
  %i.dc = load <32 x i8>, ptr %i.db, align 1, !tbaa !25
  %i.dd = bitcast <4 x i64> %i.cz to <32 x i8>    ; 2 uses
  %i.de = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ct, <32 x i8> %i.dd, <32 x i8> %i.da) ; 2 uses
  %i.df = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.dd, <32 x i8> %i.dc) ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1272, i64 64 ; 2 uses
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 8 ; 3 uses
  %i.dh = trunc i64 %indvars.iv.next385 to i32
  %i.di = or i32 %i.dh, 7
  %i.dj = icmp slt i32 %i.di, %i.bp
  br i1 %i.dj, label %.lr.ph274, label %._crit_edge275.loopexit, !llvm.loop !132

._crit_edge275.loopexit:                          ; preds = %.lr.ph274
  %i.dk = trunc nuw i64 %indvars.iv.next385 to i32
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit, %._crit_edge
  %.lcssa253 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.df, %._crit_edge275.loopexit ]
  %.lcssa252 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.de, %._crit_edge275.loopexit ]
  %.1143.lcssa = phi i32 [ %.0142.lcssa, %._crit_edge ], [ %i.dk, %._crit_edge275.loopexit ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0141.lcssa, %._crit_edge ], [ %i.dg, %._crit_edge275.loopexit ] ; 2 uses
  %i.dl = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa252, <8 x i32> %.lcssa253)
  %i.dm = add <8 x i32> %i.dl, %i.cp              ; 2 uses
  %i.dn = or disjoint i32 %.1143.lcssa, 3
  %i.do = icmp slt i32 %i.dn, %i.bp
  br i1 %i.do, label %.lr.ph284.preheader, label %._crit_edge285

.lr.ph284.preheader:                              ; preds = %._crit_edge275
  %i.dp = zext i32 %.1143.lcssa to i64
  br label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %.lr.ph284
  %indvars.iv387 = phi i64 [ %i.dp, %.lr.ph284.preheader ], [ %indvars.iv.next388, %.lr.ph284 ] ; 2 uses
  %.2282 = phi ptr [ %.1.lcssa, %.lr.ph284.preheader ], [ %i.dx, %.lr.ph284 ] ; 2 uses
  %.0228.in280 = phi <8 x i32> [ %i.dm, %.lr.ph284.preheader ], [ %i.dw, %.lr.ph284 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv387
  %i.dr = load float, ptr %i.dq, align 1, !tbaa !25
  %i.ds = insertelement <8 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <8 x float> %i.ds, <8 x float> poison, <8 x i32> zeroinitializer
  %i.du = load <32 x i8>, ptr %.2282, align 1, !tbaa !25
  %i.dv = bitcast <8 x float> %i.dt to <32 x i8>
  %i.dw = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.0228.in280, <32 x i8> %i.dv, <32 x i8> %i.du) ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.2282, i64 32 ; 2 uses
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 4 ; 3 uses
  %i.dy = trunc i64 %indvars.iv.next388 to i32
  %i.dz = or i32 %i.dy, 3
  %i.ea = icmp slt i32 %i.dz, %i.bp
  br i1 %i.ea, label %.lr.ph284, label %._crit_edge285.loopexit, !llvm.loop !133

._crit_edge285.loopexit:                          ; preds = %.lr.ph284
  %i.eb = trunc nuw i64 %indvars.iv.next388 to i32
  br label %._crit_edge285

._crit_edge285:                                   ; preds = %._crit_edge285.loopexit, %._crit_edge275
  %.0228.in.lcssa = phi <8 x i32> [ %i.dm, %._crit_edge275 ], [ %i.dw, %._crit_edge285.loopexit ]
  %.2144.lcssa = phi i32 [ %.1143.lcssa, %._crit_edge275 ], [ %i.eb, %._crit_edge285.loopexit ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %._crit_edge275 ], [ %i.dx, %._crit_edge285.loopexit ] ; 2 uses
  %i.ec = load <8 x i32>, ptr %.2.lcssa, align 1, !tbaa !25
  %i.ed = sub <8 x i32> %.0228.in.lcssa, %i.ec    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 32 ; 2 uses
  %i.ef = or disjoint i32 %.2144.lcssa, 1
  %i.eg = icmp slt i32 %i.ef, %i.bp
  br i1 %i.eg, label %.lr.ph293.preheader, label %.preheader247

.lr.ph293.preheader:                              ; preds = %._crit_edge285
  %i.eh = zext i32 %.2144.lcssa to i64
  br label %.lr.ph293

.preheader247.loopexit:                           ; preds = %.lr.ph293
  %i.ei = trunc nuw i64 %indvars.iv.next391 to i32
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.loopexit, %._crit_edge285
  %.1229.in.lcssa = phi <8 x i32> [ %i.ed, %._crit_edge285 ], [ %i.fh, %.preheader247.loopexit ] ; 3 uses
  %.3145.lcssa = phi i32 [ %.2144.lcssa, %._crit_edge285 ], [ %i.ei, %.preheader247.loopexit ] ; 4 uses
  %.3.lcssa = phi ptr [ %i.ee, %._crit_edge285 ], [ %i.fi, %.preheader247.loopexit ] ; 4 uses
  %i.ej = icmp slt i32 %.3145.lcssa, %i.bp
  br i1 %i.ej, label %.lr.ph299.preheader, label %.preheader246

.lr.ph299.preheader:                              ; preds = %.preheader247
  %i.ek = zext i32 %.3145.lcssa to i64            ; 3 uses
  %i.el = sub i32 %i.bp, %.3145.lcssa
  %.neg = add i32 %.3145.lcssa, 1
  %xtraiter = and i32 %i.el, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph299.prol.loopexit, label %.lr.ph299.prol

.lr.ph299.prol:                                   ; preds = %.lr.ph299.preheader
  %i.em = load <8 x i8>, ptr %.3.lcssa, align 1, !tbaa !25
  %i.en = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ek
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !25
  %i.ep = sext i8 %i.eo to i16
  %i.eq = insertelement <8 x i16> poison, i16 %i.ep, i64 0
  %i.er = shufflevector <8 x i16> %i.eq, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.es = sext <8 x i8> %i.em to <8 x i16>
  %i.et = mul <8 x i16> %i.er, %i.es
  %i.eu = sext <8 x i16> %i.et to <8 x i32>
  %i.ev = add <8 x i32> %.1229.in.lcssa, %i.eu    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 8 ; 2 uses
  %indvars.iv.next394.prol = add nuw nsw i64 %i.ek, 1
  br label %.lr.ph299.prol.loopexit

.lr.ph299.prol.loopexit:                          ; preds = %.lr.ph299.prol, %.lr.ph299.preheader
  %indvars.iv393.unr = phi i64 [ %i.ek, %.lr.ph299.preheader ], [ %indvars.iv.next394.prol, %.lr.ph299.prol ]
  %.4298.unr = phi ptr [ %.3.lcssa, %.lr.ph299.preheader ], [ %i.ew, %.lr.ph299.prol ]
  %.unr = phi <8 x i32> [ %.1229.in.lcssa, %.lr.ph299.preheader ], [ %i.ev, %.lr.ph299.prol ]
  %.lcssa485.unr = phi <8 x i32> [ poison, %.lr.ph299.preheader ], [ %i.ev, %.lr.ph299.prol ]
  %.lcssa484.unr = phi ptr [ poison, %.lr.ph299.preheader ], [ %i.ew, %.lr.ph299.prol ]
  %i.ex = icmp eq i32 %i.bp, %.neg
  br i1 %i.ex, label %.preheader246, label %.lr.ph299

.lr.ph293:                                        ; preds = %.lr.ph293.preheader, %.lr.ph293
  %indvars.iv390 = phi i64 [ %i.eh, %.lr.ph293.preheader ], [ %indvars.iv.next391, %.lr.ph293 ] ; 2 uses
  %.3291 = phi ptr [ %i.ee, %.lr.ph293.preheader ], [ %i.fi, %.lr.ph293 ] ; 2 uses
  %.1229.in289 = phi <8 x i32> [ %i.ed, %.lr.ph293.preheader ], [ %i.fh, %.lr.ph293 ]
  %i.ey = load <16 x i8>, ptr %.3291, align 1, !tbaa !25
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv390
  %i.fa = load float, ptr %i.ez, align 1, !tbaa !25
  %i.fb = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fc = sext <16 x i8> %i.ey to <16 x i16>
  %18 = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %19 = bitcast <4 x float> %18 to <16 x i8>
  %i.fd = sext <16 x i8> %19 to <16 x i16>
  %i.fe = bitcast <16 x i16> %i.fd to <8 x i32>
  %i.ff = shufflevector <8 x i32> %i.fe, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.fg = bitcast <8 x i32> %i.ff to <16 x i16>
  %i.fh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.1229.in289, <16 x i16> %i.fc, <16 x i16> %i.fg) ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.3291, i64 16 ; 2 uses
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 2 ; 3 uses
  %i.fj = trunc i64 %indvars.iv.next391 to i32
  %i.fk = or i32 %i.fj, 1
  %i.fl = icmp slt i32 %i.fk, %i.bp
  br i1 %i.fl, label %.lr.ph293, label %.preheader247.loopexit, !llvm.loop !134

.preheader246:                                    ; preds = %.lr.ph299.prol.loopexit, %.lr.ph299, %.preheader247
  %.lcssa254 = phi <8 x i32> [ %.1229.in.lcssa, %.preheader247 ], [ %.lcssa485.unr, %.lr.ph299.prol.loopexit ], [ %i.gl, %.lr.ph299 ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader247 ], [ %.lcssa484.unr, %.lr.ph299.prol.loopexit ], [ %i.gm, %.lr.ph299 ] ; 2 uses
  %i.fm = load i32, ptr %14, align 4, !tbaa !12   ; 13 uses
  %i.fn = icmp sgt i32 %i.fm, 15
  br i1 %i.fn, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %.preheader246
  %i.fo = zext nneg i32 %i.fm to i64
  br label %.lr.ph304

.lr.ph299:                                        ; preds = %.lr.ph299.prol.loopexit, %.lr.ph299
  %indvars.iv393 = phi i64 [ %indvars.iv.next394.1, %.lr.ph299 ], [ %indvars.iv393.unr, %.lr.ph299.prol.loopexit ] ; 3 uses
  %.4298 = phi ptr [ %i.gm, %.lr.ph299 ], [ %.4298.unr, %.lr.ph299.prol.loopexit ] ; 3 uses
  %i.fp = phi <8 x i32> [ %i.gl, %.lr.ph299 ], [ %.unr, %.lr.ph299.prol.loopexit ]
  %i.fq = load <8 x i8>, ptr %.4298, align 1, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv393
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !25
  %i.ft = sext i8 %i.fs to i16
  %i.fu = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %i.fv = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fw = sext <8 x i8> %i.fq to <8 x i16>
  %i.fx = mul <8 x i16> %i.fv, %i.fw
  %i.fy = sext <8 x i16> %i.fx to <8 x i32>
  %i.fz = add <8 x i32> %i.fp, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.4298, i64 8
  %i.gb = load <8 x i8>, ptr %i.ga, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv393
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !25
  %i.gf = sext i8 %i.ge to i16
  %i.gg = insertelement <8 x i16> poison, i16 %i.gf, i64 0
  %i.gh = shufflevector <8 x i16> %i.gg, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.gi = sext <8 x i8> %i.gb to <8 x i16>
  %i.gj = mul <8 x i16> %i.gh, %i.gi
  %i.gk = sext <8 x i16> %i.gj to <8 x i32>
  %i.gl = add <8 x i32> %i.fz, %i.gk              ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.4298, i64 16 ; 2 uses
  %indvars.iv.next394.1 = add nuw nsw i64 %indvars.iv393, 2 ; 2 uses
  %i.gn = trunc nuw i64 %indvars.iv.next394.1 to i32
  %i.go = icmp sgt i32 %i.bp, %i.gn
  br i1 %i.go, label %.lr.ph299, label %.preheader246, !llvm.loop !135

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %.lr.ph304
  %indvars.iv396 = phi i64 [ 0, %.lr.ph304.preheader ], [ %indvars.iv.next397, %.lr.ph304 ] ; 2 uses
  %.5303 = phi ptr [ %.4.lcssa, %.lr.ph304.preheader ], [ %i.hf, %.lr.ph304 ] ; 5 uses
  %i.gp = phi <8 x i32> [ zeroinitializer, %.lr.ph304.preheader ], [ %i.hb, %.lr.ph304 ]
  %i.gq = phi <8 x i32> [ zeroinitializer, %.lr.ph304.preheader ], [ %i.hc, %.lr.ph304 ]
  %i.gr = phi <8 x i32> [ zeroinitializer, %.lr.ph304.preheader ], [ %i.hd, %.lr.ph304 ]
  %i.gs = phi <8 x i32> [ zeroinitializer, %.lr.ph304.preheader ], [ %i.he, %.lr.ph304 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv396
  %20 = load <2 x i64>, ptr %i.gt, align 1, !tbaa !25
  %i.gu = load <32 x i8>, ptr %.5303, align 1, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %.5303, i64 32
  %i.gw = load <32 x i8>, ptr %i.gv, align 1, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %.5303, i64 64
  %i.gy = load <32 x i8>, ptr %i.gx, align 1, !tbaa !25
  %i.gz = getelementptr inbounds nuw i8, ptr %.5303, i64 96
  %i.ha = load <32 x i8>, ptr %i.gz, align 1, !tbaa !25
  %21 = shufflevector <2 x i64> %20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %22 = bitcast <4 x i64> %21 to <32 x i8>        ; 4 uses
  %i.hb = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gp, <32 x i8> %22, <32 x i8> %i.gu) ; 2 uses
  %i.hc = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gq, <32 x i8> %22, <32 x i8> %i.gw) ; 2 uses
  %i.hd = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gr, <32 x i8> %22, <32 x i8> %i.gy) ; 2 uses
  %i.he = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gs, <32 x i8> %22, <32 x i8> %i.ha) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.5303, i64 128 ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 16 ; 2 uses
  %i.hg = or disjoint i64 %indvars.iv.next397, 15
  %i.hh = icmp samesign ult i64 %i.hg, %i.fo
  br i1 %i.hh, label %.lr.ph304, label %._crit_edge305.loopexit, !llvm.loop !136

._crit_edge305.loopexit:                          ; preds = %.lr.ph304
  %i.hi = add nuw i32 %i.fm, 2147483632
  %i.hj = and i32 %i.hi, 2147483632
  %narrow420 = add nuw i32 %i.hj, 16
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.loopexit, %.preheader246
  %.lcssa259 = phi <8 x i32> [ zeroinitializer, %.preheader246 ], [ %i.he, %._crit_edge305.loopexit ]
  %.lcssa258 = phi <8 x i32> [ zeroinitializer, %.preheader246 ], [ %i.hd, %._crit_edge305.loopexit ]
  %.lcssa257 = phi <8 x i32> [ zeroinitializer, %.preheader246 ], [ %i.hc, %._crit_edge305.loopexit ]
  %.lcssa256 = phi <8 x i32> [ zeroinitializer, %.preheader246 ], [ %i.hb, %._crit_edge305.loopexit ]
  %.5147.lcssa = phi i32 [ 0, %.preheader246 ], [ %narrow420, %._crit_edge305.loopexit ] ; 3 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader246 ], [ %i.hf, %._crit_edge305.loopexit ] ; 2 uses
  %i.hk = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa256, <8 x i32> %.lcssa257)
  %i.hl = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa258, <8 x i32> %.lcssa259)
  %i.hm = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.hk, <8 x i32> %i.hl)
  %i.hn = or disjoint i32 %.5147.lcssa, 7
  %i.ho = icmp slt i32 %i.hn, %i.fm
  br i1 %i.ho, label %.lr.ph316.preheader, label %._crit_edge317

.lr.ph316.preheader:                              ; preds = %._crit_edge305
  %i.hp = zext nneg i32 %.5147.lcssa to i64
  br label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.preheader, %.lr.ph316
  %indvars.iv399 = phi i64 [ %i.hp, %.lr.ph316.preheader ], [ %indvars.iv.next400, %.lr.ph316 ] ; 2 uses
  %.6314 = phi ptr [ %.5.lcssa, %.lr.ph316.preheader ], [ %i.id, %.lr.ph316 ] ; 3 uses
  %i.hq = phi <8 x i32> [ zeroinitializer, %.lr.ph316.preheader ], [ %i.ib, %.lr.ph316 ]
  %i.hr = phi <8 x i32> [ zeroinitializer, %.lr.ph316.preheader ], [ %i.ic, %.lr.ph316 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv399
  %i.ht = load double, ptr %i.hs, align 1, !tbaa !25
  %i.hu = insertelement <4 x double> poison, double %i.ht, i64 0
  %i.hv = bitcast <4 x double> %i.hu to <4 x i64>
  %i.hw = shufflevector <4 x i64> %i.hv, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.hx = load <32 x i8>, ptr %.6314, align 1, !tbaa !25
  %i.hy = getelementptr inbounds nuw i8, ptr %.6314, i64 32
  %i.hz = load <32 x i8>, ptr %i.hy, align 1, !tbaa !25
  %i.ia = bitcast <4 x i64> %i.hw to <32 x i8>    ; 2 uses
  %i.ib = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.hq, <32 x i8> %i.ia, <32 x i8> %i.hx) ; 2 uses
  %i.ic = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.hr, <32 x i8> %i.ia, <32 x i8> %i.hz) ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.6314, i64 64 ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 8 ; 3 uses
  %i.ie = trunc i64 %indvars.iv.next400 to i32
  %i.if = or i32 %i.ie, 7
  %i.ig = icmp slt i32 %i.if, %i.fm
  br i1 %i.ig, label %.lr.ph316, label %._crit_edge317.loopexit, !llvm.loop !137

._crit_edge317.loopexit:                          ; preds = %.lr.ph316
  %i.ih = trunc nuw i64 %indvars.iv.next400 to i32
  br label %._crit_edge317

._crit_edge317:                                   ; preds = %._crit_edge317.loopexit, %._crit_edge305
  %.lcssa261 = phi <8 x i32> [ zeroinitializer, %._crit_edge305 ], [ %i.ic, %._crit_edge317.loopexit ]
  %.lcssa260 = phi <8 x i32> [ zeroinitializer, %._crit_edge305 ], [ %i.ib, %._crit_edge317.loopexit ]
  %.6148.lcssa = phi i32 [ %.5147.lcssa, %._crit_edge305 ], [ %i.ih, %._crit_edge317.loopexit ] ; 3 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge305 ], [ %i.id, %._crit_edge317.loopexit ] ; 2 uses
  %i.ii = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa260, <8 x i32> %.lcssa261)
  %i.ij = add <8 x i32> %i.ii, %i.hm              ; 2 uses
  %i.ik = or disjoint i32 %.6148.lcssa, 3
  %i.il = icmp slt i32 %i.ik, %i.fm
  br i1 %i.il, label %.lr.ph326.preheader, label %._crit_edge327

.lr.ph326.preheader:                              ; preds = %._crit_edge317
  %i.im = zext i32 %.6148.lcssa to i64
  br label %.lr.ph326

.lr.ph326:                                        ; preds = %.lr.ph326.preheader, %.lr.ph326
  %indvars.iv402 = phi i64 [ %i.im, %.lr.ph326.preheader ], [ %indvars.iv.next403, %.lr.ph326 ] ; 2 uses
  %.7324 = phi ptr [ %.6.lcssa, %.lr.ph326.preheader ], [ %i.iu, %.lr.ph326 ] ; 2 uses
  %.0243.in322 = phi <8 x i32> [ %i.ij, %.lr.ph326.preheader ], [ %i.it, %.lr.ph326 ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv402
  %i.io = load float, ptr %i.in, align 1, !tbaa !25
  %i.ip = insertelement <8 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = load <32 x i8>, ptr %.7324, align 1, !tbaa !25
  %i.is = bitcast <8 x float> %i.iq to <32 x i8>
  %i.it = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.0243.in322, <32 x i8> %i.is, <32 x i8> %i.ir) ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.7324, i64 32 ; 2 uses
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 4 ; 3 uses
  %i.iv = trunc i64 %indvars.iv.next403 to i32
  %i.iw = or i32 %i.iv, 3
  %i.ix = icmp slt i32 %i.iw, %i.fm
  br i1 %i.ix, label %.lr.ph326, label %._crit_edge327.loopexit, !llvm.loop !138

._crit_edge327.loopexit:                          ; preds = %.lr.ph326
  %i.iy = trunc nuw i64 %indvars.iv.next403 to i32
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge327.loopexit, %._crit_edge317
  %.0243.in.lcssa = phi <8 x i32> [ %i.ij, %._crit_edge317 ], [ %i.it, %._crit_edge327.loopexit ]
  %.7149.lcssa = phi i32 [ %.6148.lcssa, %._crit_edge317 ], [ %i.iy, %._crit_edge327.loopexit ] ; 3 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %._crit_edge317 ], [ %i.iu, %._crit_edge327.loopexit ] ; 2 uses
  %i.iz = load <8 x i32>, ptr %.7.lcssa, align 1, !tbaa !25
  %i.ja = sub <8 x i32> %.0243.in.lcssa, %i.iz    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 32 ; 2 uses
  %i.jc = or disjoint i32 %.7149.lcssa, 1
  %i.jd = icmp slt i32 %i.jc, %i.fm
  br i1 %i.jd, label %.lr.ph335.preheader, label %.preheader

.lr.ph335.preheader:                              ; preds = %._crit_edge327
  %i.je = zext i32 %.7149.lcssa to i64
  br label %.lr.ph335

.preheader.loopexit:                              ; preds = %.lr.ph335
  %i.jf = trunc nuw i64 %indvars.iv.next406 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge327
  %.1244.in.lcssa = phi <8 x i32> [ %i.ja, %._crit_edge327 ], [ %i.ke, %.preheader.loopexit ] ; 3 uses
  %.8150.lcssa = phi i32 [ %.7149.lcssa, %._crit_edge327 ], [ %i.jf, %.preheader.loopexit ] ; 4 uses
  %.8.lcssa = phi ptr [ %i.jb, %._crit_edge327 ], [ %i.kf, %.preheader.loopexit ] ; 3 uses
  %i.jg = icmp slt i32 %.8150.lcssa, %i.fm
  br i1 %i.jg, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %.preheader
  %i.jh = zext i32 %.8150.lcssa to i64            ; 3 uses
  %i.ji = sub i32 %i.fm, %.8150.lcssa
  %.neg502 = add i32 %.8150.lcssa, 1
  %xtraiter499 = and i32 %i.ji, 1
  %lcmp.mod500.not = icmp eq i32 %xtraiter499, 0
  br i1 %lcmp.mod500.not, label %.lr.ph341.prol.loopexit, label %.lr.ph341.prol

.lr.ph341.prol:                                   ; preds = %.lr.ph341.preheader
  %i.jj = load <8 x i8>, ptr %.8.lcssa, align 1, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.jh
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !25
  %i.jm = sext i8 %i.jl to i16
  %i.jn = insertelement <8 x i16> poison, i16 %i.jm, i64 0
  %i.jo = shufflevector <8 x i16> %i.jn, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.jp = sext <8 x i8> %i.jj to <8 x i16>
  %i.jq = mul <8 x i16> %i.jo, %i.jp
  %i.jr = sext <8 x i16> %i.jq to <8 x i32>
  %i.js = add <8 x i32> %.1244.in.lcssa, %i.jr    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 8
  %indvars.iv.next409.prol = add nuw nsw i64 %i.jh, 1
  br label %.lr.ph341.prol.loopexit

.lr.ph341.prol.loopexit:                          ; preds = %.lr.ph341.prol, %.lr.ph341.preheader
  %indvars.iv408.unr = phi i64 [ %i.jh, %.lr.ph341.preheader ], [ %indvars.iv.next409.prol, %.lr.ph341.prol ]
  %.9340.unr = phi ptr [ %.8.lcssa, %.lr.ph341.preheader ], [ %i.jt, %.lr.ph341.prol ]
  %.unr501 = phi <8 x i32> [ %.1244.in.lcssa, %.lr.ph341.preheader ], [ %i.js, %.lr.ph341.prol ]
  %.lcssa498.unr = phi <8 x i32> [ poison, %.lr.ph341.preheader ], [ %i.js, %.lr.ph341.prol ]
  %i.ju = icmp eq i32 %i.fm, %.neg502
  br i1 %i.ju, label %._crit_edge342, label %.lr.ph341

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv405 = phi i64 [ %i.je, %.lr.ph335.preheader ], [ %indvars.iv.next406, %.lr.ph335 ] ; 2 uses
  %.8333 = phi ptr [ %i.jb, %.lr.ph335.preheader ], [ %i.kf, %.lr.ph335 ] ; 2 uses
  %.1244.in331 = phi <8 x i32> [ %i.ja, %.lr.ph335.preheader ], [ %i.ke, %.lr.ph335 ]
  %i.jv = load <16 x i8>, ptr %.8333, align 1, !tbaa !25
  %i.jw = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv405
  %i.jx = load float, ptr %i.jw, align 1, !tbaa !25
  %i.jy = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.jz = sext <16 x i8> %i.jv to <16 x i16>
  %23 = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> zeroinitializer
  %24 = bitcast <4 x float> %23 to <16 x i8>
  %i.ka = sext <16 x i8> %24 to <16 x i16>
  %i.kb = bitcast <16 x i16> %i.ka to <8 x i32>
  %i.kc = shufflevector <8 x i32> %i.kb, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.kd = bitcast <8 x i32> %i.kc to <16 x i16>
  %i.ke = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.1244.in331, <16 x i16> %i.jz, <16 x i16> %i.kd) ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.8333, i64 16 ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 2 ; 3 uses
  %i.kg = trunc i64 %indvars.iv.next406 to i32
  %i.kh = or i32 %i.kg, 1
  %i.ki = icmp slt i32 %i.kh, %i.fm
  br i1 %i.ki, label %.lr.ph335, label %.preheader.loopexit, !llvm.loop !139

.lr.ph341:                                        ; preds = %.lr.ph341.prol.loopexit, %.lr.ph341
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.1, %.lr.ph341 ], [ %indvars.iv408.unr, %.lr.ph341.prol.loopexit ] ; 3 uses
  %.9340 = phi ptr [ %i.lg, %.lr.ph341 ], [ %.9340.unr, %.lr.ph341.prol.loopexit ] ; 3 uses
  %i.kj = phi <8 x i32> [ %i.lf, %.lr.ph341 ], [ %.unr501, %.lr.ph341.prol.loopexit ]
  %i.kk = load <8 x i8>, ptr %.9340, align 1, !tbaa !25
  %i.kl = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv408
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !25
  %i.kn = sext i8 %i.km to i16
  %i.ko = insertelement <8 x i16> poison, i16 %i.kn, i64 0
  %i.kp = shufflevector <8 x i16> %i.ko, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kq = sext <8 x i8> %i.kk to <8 x i16>
  %i.kr = mul <8 x i16> %i.kp, %i.kq
  %i.ks = sext <8 x i16> %i.kr to <8 x i32>
  %i.kt = add <8 x i32> %i.kj, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %.9340, i64 8
  %i.kv = load <8 x i8>, ptr %i.ku, align 1, !tbaa !25
  %i.kw = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv408
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !25
  %i.kz = sext i8 %i.ky to i16
  %i.la = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %i.lb = shufflevector <8 x i16> %i.la, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.lc = sext <8 x i8> %i.kv to <8 x i16>
  %i.ld = mul <8 x i16> %i.lb, %i.lc
  %i.le = sext <8 x i16> %i.ld to <8 x i32>
  %i.lf = add <8 x i32> %i.kt, %i.le              ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.9340, i64 16
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %i.lh = trunc nuw i64 %indvars.iv.next409.1 to i32
  %i.li = icmp sgt i32 %i.fm, %i.lh
  br i1 %i.li, label %.lr.ph341, label %._crit_edge342, !llvm.loop !140

._crit_edge342:                                   ; preds = %.lr.ph341.prol.loopexit, %.lr.ph341, %.preheader
  %.lcssa262 = phi <8 x i32> [ %.1244.in.lcssa, %.preheader ], [ %.lcssa498.unr, %.lr.ph341.prol.loopexit ], [ %i.lf, %.lr.ph341 ]
  %i.lj = insertelement <8 x float> poison, float %i.ai, i64 0
  %i.lk = shufflevector <8 x float> %i.lj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ll = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.lm = shufflevector <8 x float> %i.ll, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ln = load <8 x float>, ptr %i.an, align 1, !tbaa !25
  %i.lo = load <8 x float>, ptr %i.bg, align 1, !tbaa !25
  %i.lp = sitofp fast <8 x i32> %.lcssa254 to <8 x float>
  %i.lq = fmul fast <8 x float> %i.lo, %i.lk
  %i.lr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lp, <8 x float> nofpclass(nan inf) %i.lq, <8 x float> nofpclass(nan inf) %i.ln)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.lt = load <8 x float>, ptr %i.ls, align 1, !tbaa !25
  %i.lu = sitofp fast <8 x i32> %.lcssa262 to <8 x float>
  %i.lv = fmul fast <8 x float> %i.lt, %i.lm
  %i.lw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lu, <8 x float> nofpclass(nan inf) %i.lv, <8 x float> nofpclass(nan inf) %i.lr)
  store <8 x float> %i.lw, ptr %i.bo, align 1, !tbaa !25
  %i.lx = add i32 %.0345, 1
  %exitcond.not = icmp eq i32 %.0345, %i.j
  br i1 %exitcond.not, label %._crit_edge348, label %bb.c

._crit_edge348:                                   ; preds = %._crit_edge342, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge348, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.i, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.j = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !12
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !12
  %i.m = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph366, %._crit_edge362
  %.0364 = phi i32 [ %i.m, %.lr.ph366 ], [ %i.ms, %._crit_edge362 ] ; 3 uses
  %i.x = add i32 %.0364, %i.e                     ; 4 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !12
  %i.z = load ptr, ptr %4, align 8, !tbaa !22
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !21
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %i.y to i64                    ; 2 uses
  %i.ad = mul nsw i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !24
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af ; 7 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22    ; 7 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !28
  %i.al = load float, ptr %8, align 4, !tbaa !28
  %i.am = load ptr, ptr %9, align 8, !tbaa !22
  %i.an = shl nsw i32 %i.x, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = sdiv i32 %i.x, 4
  %i.ar = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.at = srem <2 x i32> %i.as, <i32 4, i32 2>    ; 2 uses
  %i.au = bitcast <2 x i32> %i.at to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.au, i64 0
  %i.av = sdiv i8 %.lhs.trunc, 2
  %.sext = sext i8 %i.av to i32
  %i.aw = extractelement <2 x i32> %i.at, i64 1
  %i.ax = add nsw i32 %i.aw, %i.aq
  %i.ay = add nsw i32 %i.ax, %.sext
  %i.az = load ptr, ptr %10, align 8, !tbaa !22
  %i.ba = load i32, ptr %i.r, align 4, !tbaa !21
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sext i32 %i.ay to i64                   ; 2 uses
  %i.bd = mul nsw i64 %i.bb, %i.bc
  %i.be = load i64, ptr %i.s, align 8, !tbaa !24
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %11, align 8, !tbaa !22
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !21
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.bc
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !24
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm ; 2 uses
  %i.bo = load ptr, ptr %12, align 8, !tbaa !22
  %i.bp = load i32, ptr %i.v, align 4, !tbaa !21
  %i.bq = sext i32 %i.bp to i64
  %i.br = sext i32 %i.x to i64
  %i.bs = mul nsw i64 %i.bq, %i.br
  %i.bt = load i64, ptr %i.w, align 8, !tbaa !24
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bu
  %i.bw = load i32, ptr %13, align 4, !tbaa !12   ; 13 uses
  %i.bx = icmp sgt i32 %i.bw, 15
  br i1 %i.bx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.by = zext nneg i32 %i.bw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0142283 = phi ptr [ %i.bg, %.lr.ph.preheader ], [ %i.cq, %.lr.ph ] ; 5 uses
  %i.bz = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cm, %.lr.ph ]
  %i.ca = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cn, %.lr.ph ]
  %i.cb = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.co, %.lr.ph ]
  %i.cc = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cp, %.lr.ph ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.ce = load <16 x i8>, ptr %i.cd, align 1, !tbaa !25 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.0142283, align 1, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.0142283, i64 16
  %i.ch = load <16 x i8>, ptr %i.cg, align 1, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %.0142283, i64 32
  %i.cj = load <16 x i8>, ptr %i.ci, align 1, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %.0142283, i64 48
  %i.cl = load <16 x i8>, ptr %i.ck, align 1, !tbaa !25
  %i.cm = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bz, <16 x i8> %i.ce, <16 x i8> %i.cf) ; 2 uses
  %i.cn = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ca, <16 x i8> %i.ce, <16 x i8> %i.ch) ; 2 uses
  %i.co = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.cb, <16 x i8> %i.ce, <16 x i8> %i.cj) ; 2 uses
  %i.cp = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.cc, <16 x i8> %i.ce, <16 x i8> %i.cl) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0142283, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cr = or disjoint i64 %indvars.iv.next, 15
  %i.cs = icmp samesign ult i64 %i.cr, %i.by
  br i1 %i.cs, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ct = add nuw i32 %i.bw, 2147483632
  %i.cu = and i32 %i.ct, 2147483632
  %narrow = add nuw i32 %i.cu, 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa271 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.cp, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa270 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.co, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa269 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.cn, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa268 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.cm, %._crit_edge.loopexit ] ; 2 uses
  %.0142.lcssa = phi ptr [ %i.bg, %bb.c ], [ %i.cq, %._crit_edge.loopexit ] ; 2 uses
  %.0141.lcssa = phi i32 [ 0, %bb.c ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %i.cv = shufflevector <4 x i32> %.lcssa268, <4 x i32> %.lcssa269, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cw = shufflevector <4 x i32> %.lcssa268, <4 x i32> %.lcssa269, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cx = shufflevector <4 x i32> %.lcssa270, <4 x i32> %.lcssa271, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cy = shufflevector <4 x i32> %.lcssa270, <4 x i32> %.lcssa271, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cz = shufflevector <4 x i32> %i.cv, <4 x i32> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.da = shufflevector <4 x i32> %i.cv, <4 x i32> %i.cx, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.db = shufflevector <4 x i32> %i.cw, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dc = shufflevector <4 x i32> %i.cw, <4 x i32> %i.cy, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.dd = add <4 x i32> %i.cz, %i.da
  %i.de = add <4 x i32> %i.dd, %i.db
  %i.df = add <4 x i32> %i.de, %i.dc
  %i.dg = or disjoint i32 %.0141.lcssa, 7
  %i.dh = icmp slt i32 %i.dg, %i.bw
  br i1 %i.dh, label %.lr.ph294.preheader, label %._crit_edge295

.lr.ph294.preheader:                              ; preds = %._crit_edge
  %i.di = zext nneg i32 %.0141.lcssa to i64
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv403 = phi i64 [ %i.di, %.lr.ph294.preheader ], [ %indvars.iv.next404, %.lr.ph294 ] ; 2 uses
  %.1143291 = phi ptr [ %.0142.lcssa, %.lr.ph294.preheader ], [ %i.dt, %.lr.ph294 ] ; 3 uses
  %i.dj = phi <4 x i32> [ zeroinitializer, %.lr.ph294.preheader ], [ %i.dr, %.lr.ph294 ]
  %i.dk = phi <4 x i32> [ zeroinitializer, %.lr.ph294.preheader ], [ %i.ds, %.lr.ph294 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv403
  %i.dm = load double, ptr %i.dl, align 1, !tbaa !25
  %i.dn = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.do = load <16 x i8>, ptr %.1143291, align 1, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %.1143291, i64 16
  %i.dq = load <16 x i8>, ptr %i.dp, align 1, !tbaa !25
  %15 = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = bitcast <2 x double> %15 to <16 x i8>     ; 2 uses
  %i.dr = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.dj, <16 x i8> %16, <16 x i8> %i.do) ; 2 uses
  %i.ds = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.dk, <16 x i8> %16, <16 x i8> %i.dq) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1143291, i64 32 ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 8 ; 3 uses
  %i.du = trunc i64 %indvars.iv.next404 to i32
  %i.dv = or i32 %i.du, 7
  %i.dw = icmp slt i32 %i.dv, %i.bw
  br i1 %i.dw, label %.lr.ph294, label %._crit_edge295.loopexit, !llvm.loop !142

._crit_edge295.loopexit:                          ; preds = %.lr.ph294
  %i.dx = trunc nuw i64 %indvars.iv.next404 to i32
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit, %._crit_edge
  %.lcssa273 = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.ds, %._crit_edge295.loopexit ]
  %.lcssa272 = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.dr, %._crit_edge295.loopexit ]
  %.1143.lcssa = phi ptr [ %.0142.lcssa, %._crit_edge ], [ %i.dt, %._crit_edge295.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0141.lcssa, %._crit_edge ], [ %i.dx, %._crit_edge295.loopexit ] ; 3 uses
  %i.dy = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa272, <4 x i32> %.lcssa273)
  %i.dz = add <4 x i32> %i.df, %i.dy              ; 2 uses
  %i.ea = or disjoint i32 %.1.lcssa, 3
  %i.eb = icmp slt i32 %i.ea, %i.bw
  br i1 %i.eb, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %._crit_edge295
  %i.ec = zext i32 %.1.lcssa to i64
  br label %.lr.ph304

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %.lr.ph304
  %indvars.iv406 = phi i64 [ %i.ec, %.lr.ph304.preheader ], [ %indvars.iv.next407, %.lr.ph304 ] ; 2 uses
  %.2144301 = phi ptr [ %.1143.lcssa, %.lr.ph304.preheader ], [ %i.ei, %.lr.ph304 ] ; 2 uses
  %.0248.in300 = phi <4 x i32> [ %i.dz, %.lr.ph304.preheader ], [ %i.eh, %.lr.ph304 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv406
  %i.ee = load float, ptr %i.ed, align 1, !tbaa !25
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = load <16 x i8>, ptr %.2144301, align 1, !tbaa !25
  %17 = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = bitcast <4 x float> %17 to <16 x i8>
  %i.eh = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.0248.in300, <16 x i8> %18, <16 x i8> %i.eg) ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2144301, i64 16 ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4 ; 3 uses
  %i.ej = trunc i64 %indvars.iv.next407 to i32
  %i.ek = or i32 %i.ej, 3
  %i.el = icmp slt i32 %i.ek, %i.bw
  br i1 %i.el, label %.lr.ph304, label %._crit_edge305.loopexit, !llvm.loop !143

._crit_edge305.loopexit:                          ; preds = %.lr.ph304
  %i.em = trunc nuw i64 %indvars.iv.next407 to i32
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.loopexit, %._crit_edge295
  %.0248.in.lcssa = phi <4 x i32> [ %i.dz, %._crit_edge295 ], [ %i.eh, %._crit_edge305.loopexit ]
  %.2144.lcssa = phi ptr [ %.1143.lcssa, %._crit_edge295 ], [ %i.ei, %._crit_edge305.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge295 ], [ %i.em, %._crit_edge305.loopexit ] ; 3 uses
  %i.en = load <4 x i32>, ptr %.2144.lcssa, align 1, !tbaa !25
  %i.eo = sub <4 x i32> %.0248.in.lcssa, %i.en    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.2144.lcssa, i64 16 ; 2 uses
  %i.eq = or disjoint i32 %.2.lcssa, 1
  %i.er = icmp slt i32 %i.eq, %i.bw
  br i1 %i.er, label %.lr.ph313.preheader, label %.preheader267

.lr.ph313.preheader:                              ; preds = %._crit_edge305
  %i.es = zext i32 %.2.lcssa to i64
  br label %.lr.ph313

.preheader267.loopexit:                           ; preds = %.lr.ph313
  %i.et = trunc nuw i64 %indvars.iv.next410 to i32
  br label %.preheader267

.preheader267:                                    ; preds = %.preheader267.loopexit, %._crit_edge305
  %.1249.in.lcssa = phi <4 x i32> [ %i.eo, %._crit_edge305 ], [ %i.fr, %.preheader267.loopexit ] ; 3 uses
  %.3145.lcssa = phi ptr [ %i.ep, %._crit_edge305 ], [ %i.fs, %.preheader267.loopexit ] ; 4 uses
  %.3.lcssa = phi i32 [ %.2.lcssa, %._crit_edge305 ], [ %i.et, %.preheader267.loopexit ] ; 4 uses
  %i.eu = icmp slt i32 %.3.lcssa, %i.bw
  br i1 %i.eu, label %.lr.ph319.preheader, label %.preheader266

.lr.ph319.preheader:                              ; preds = %.preheader267
  %i.ev = zext i32 %.3.lcssa to i64               ; 3 uses
  %i.ew = sub i32 %i.bw, %.3.lcssa
  %.neg = add i32 %.3.lcssa, 1
  %xtraiter = and i32 %i.ew, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph319.prol.loopexit, label %.lr.ph319.prol

.lr.ph319.prol:                                   ; preds = %.lr.ph319.preheader
  %i.ex = load <8 x i8>, ptr %.3145.lcssa, align 1, !tbaa !25
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ev
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !25
  %i.fa = sext i8 %i.ez to i16
  %i.fb = insertelement <8 x i16> poison, i16 %i.fa, i64 0
  %i.fc = shufflevector <8 x i16> %i.fb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fd = sext <8 x i8> %i.ex to <8 x i16>        ; 2 uses
  %i.fe = mul <8 x i16> %i.fc, %i.fd
  %i.ff = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.fd, <8 x i16> %i.fc)
  %i.fg = shufflevector <8 x i16> %i.fe, <8 x i16> %i.ff, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fh = bitcast <8 x i16> %i.fg to <4 x i32>
  %i.fi = add <4 x i32> %.1249.in.lcssa, %i.fh    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.3145.lcssa, i64 4 ; 2 uses
  %indvars.iv.next413.prol = add nuw nsw i64 %i.ev, 1
  br label %.lr.ph319.prol.loopexit

.lr.ph319.prol.loopexit:                          ; preds = %.lr.ph319.prol, %.lr.ph319.preheader
  %indvars.iv412.unr = phi i64 [ %i.ev, %.lr.ph319.preheader ], [ %indvars.iv.next413.prol, %.lr.ph319.prol ]
  %.4146317.unr = phi ptr [ %.3145.lcssa, %.lr.ph319.preheader ], [ %i.fj, %.lr.ph319.prol ]
  %.unr = phi <4 x i32> [ %.1249.in.lcssa, %.lr.ph319.preheader ], [ %i.fi, %.lr.ph319.prol ]
  %.lcssa505.unr = phi <4 x i32> [ poison, %.lr.ph319.preheader ], [ %i.fi, %.lr.ph319.prol ]
  %.lcssa504.unr = phi ptr [ poison, %.lr.ph319.preheader ], [ %i.fj, %.lr.ph319.prol ]
  %i.fk = icmp eq i32 %i.bw, %.neg
  br i1 %i.fk, label %.preheader266, label %.lr.ph319

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %.lr.ph313
  %indvars.iv409 = phi i64 [ %i.es, %.lr.ph313.preheader ], [ %indvars.iv.next410, %.lr.ph313 ] ; 2 uses
  %.3145310 = phi ptr [ %i.ep, %.lr.ph313.preheader ], [ %i.fs, %.lr.ph313 ] ; 2 uses
  %.1249.in309 = phi <4 x i32> [ %i.eo, %.lr.ph313.preheader ], [ %i.fr, %.lr.ph313 ]
  %i.fl = load <8 x i8>, ptr %.3145310, align 1, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv409
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !152
  %i.fo = insertelement <8 x i16> poison, i16 %i.fn, i64 0
  %i.fp = sext <8 x i8> %i.fl to <8 x i16>
  %19 = shufflevector <8 x i16> %i.fo, <8 x i16> poison, <4 x i32> zeroinitializer
  %20 = bitcast <4 x i16> %19 to <8 x i8>
  %i.fq = sext <8 x i8> %20 to <8 x i16>
  %i.fr = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.1249.in309, <8 x i16> %i.fp, <8 x i16> %i.fq) ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.3145310, i64 8 ; 2 uses
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 2 ; 3 uses
  %i.ft = trunc i64 %indvars.iv.next410 to i32
  %i.fu = or i32 %i.ft, 1
  %i.fv = icmp slt i32 %i.fu, %i.bw
  br i1 %i.fv, label %.lr.ph313, label %.preheader267.loopexit, !llvm.loop !144

.preheader266:                                    ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319, %.preheader267
  %.lcssa274 = phi <4 x i32> [ %.1249.in.lcssa, %.preheader267 ], [ %.lcssa505.unr, %.lr.ph319.prol.loopexit ], [ %i.gz, %.lr.ph319 ]
  %.4146.lcssa = phi ptr [ %.3145.lcssa, %.preheader267 ], [ %.lcssa504.unr, %.lr.ph319.prol.loopexit ], [ %i.ha, %.lr.ph319 ] ; 2 uses
  %i.fw = load i32, ptr %14, align 4, !tbaa !12   ; 13 uses
  %i.fx = icmp sgt i32 %i.fw, 15
  br i1 %i.fx, label %.lr.ph324.preheader, label %._crit_edge325

.lr.ph324.preheader:                              ; preds = %.preheader266
  %i.fy = zext nneg i32 %i.fw to i64
  br label %.lr.ph324

.lr.ph319:                                        ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319
  %indvars.iv412 = phi i64 [ %indvars.iv.next413.1, %.lr.ph319 ], [ %indvars.iv412.unr, %.lr.ph319.prol.loopexit ] ; 3 uses
  %.4146317 = phi ptr [ %i.ha, %.lr.ph319 ], [ %.4146317.unr, %.lr.ph319.prol.loopexit ] ; 3 uses
  %i.fz = phi <4 x i32> [ %i.gz, %.lr.ph319 ], [ %.unr, %.lr.ph319.prol.loopexit ]
  %i.ga = load <8 x i8>, ptr %.4146317, align 1, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv412
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !25
  %i.gd = sext i8 %i.gc to i16
  %i.ge = insertelement <8 x i16> poison, i16 %i.gd, i64 0
  %i.gf = shufflevector <8 x i16> %i.ge, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gg = sext <8 x i8> %i.ga to <8 x i16>        ; 2 uses
  %i.gh = mul <8 x i16> %i.gf, %i.gg
  %i.gi = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.gg, <8 x i16> %i.gf)
  %i.gj = shufflevector <8 x i16> %i.gh, <8 x i16> %i.gi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gk = bitcast <8 x i16> %i.gj to <4 x i32>
  %i.gl = add <4 x i32> %i.fz, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.4146317, i64 4
  %i.gn = load <8 x i8>, ptr %i.gm, align 1, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv412
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !25
  %i.gr = sext i8 %i.gq to i16
  %i.gs = insertelement <8 x i16> poison, i16 %i.gr, i64 0
  %i.gt = shufflevector <8 x i16> %i.gs, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gu = sext <8 x i8> %i.gn to <8 x i16>        ; 2 uses
  %i.gv = mul <8 x i16> %i.gt, %i.gu
  %i.gw = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.gu, <8 x i16> %i.gt)
  %i.gx = shufflevector <8 x i16> %i.gv, <8 x i16> %i.gw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gy = bitcast <8 x i16> %i.gx to <4 x i32>
  %i.gz = add <4 x i32> %i.gl, %i.gy              ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.4146317, i64 8 ; 2 uses
  %indvars.iv.next413.1 = add nuw nsw i64 %indvars.iv412, 2 ; 2 uses
  %i.hb = trunc nuw i64 %indvars.iv.next413.1 to i32
  %i.hc = icmp sgt i32 %i.bw, %i.hb
  br i1 %i.hc, label %.lr.ph319, label %.preheader266, !llvm.loop !145

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %.lr.ph324
  %indvars.iv415 = phi i64 [ 0, %.lr.ph324.preheader ], [ %indvars.iv.next416, %.lr.ph324 ] ; 2 uses
  %.5147322 = phi ptr [ %.4146.lcssa, %.lr.ph324.preheader ], [ %i.hu, %.lr.ph324 ] ; 5 uses
  %i.hd = phi <4 x i32> [ zeroinitializer, %.lr.ph324.preheader ], [ %i.hq, %.lr.ph324 ]
  %i.he = phi <4 x i32> [ zeroinitializer, %.lr.ph324.preheader ], [ %i.hr, %.lr.ph324 ]
  %i.hf = phi <4 x i32> [ zeroinitializer, %.lr.ph324.preheader ], [ %i.hs, %.lr.ph324 ]
  %i.hg = phi <4 x i32> [ zeroinitializer, %.lr.ph324.preheader ], [ %i.ht, %.lr.ph324 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv415
  %i.hi = load <16 x i8>, ptr %i.hh, align 1, !tbaa !25 ; 4 uses
  %i.hj = load <16 x i8>, ptr %.5147322, align 1, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %.5147322, i64 16
  %i.hl = load <16 x i8>, ptr %i.hk, align 1, !tbaa !25
  %i.hm = getelementptr inbounds nuw i8, ptr %.5147322, i64 32
  %i.hn = load <16 x i8>, ptr %i.hm, align 1, !tbaa !25
  %i.ho = getelementptr inbounds nuw i8, ptr %.5147322, i64 48
  %i.hp = load <16 x i8>, ptr %i.ho, align 1, !tbaa !25
  %i.hq = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hd, <16 x i8> %i.hi, <16 x i8> %i.hj) ; 2 uses
  %i.hr = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.he, <16 x i8> %i.hi, <16 x i8> %i.hl) ; 2 uses
  %i.hs = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hf, <16 x i8> %i.hi, <16 x i8> %i.hn) ; 2 uses
  %i.ht = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hg, <16 x i8> %i.hi, <16 x i8> %i.hp) ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.5147322, i64 64 ; 2 uses
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 16 ; 2 uses
  %i.hv = or disjoint i64 %indvars.iv.next416, 15
  %i.hw = icmp samesign ult i64 %i.hv, %i.fy
  br i1 %i.hw, label %.lr.ph324, label %._crit_edge325.loopexit, !llvm.loop !146

._crit_edge325.loopexit:                          ; preds = %.lr.ph324
  %i.hx = add nuw i32 %i.fw, 2147483632
  %i.hy = and i32 %i.hx, 2147483632
  %narrow440 = add nuw i32 %i.hy, 16
  br label %._crit_edge325

._crit_edge325:                                   ; preds = %._crit_edge325.loopexit, %.preheader266
  %.lcssa279 = phi <4 x i32> [ zeroinitializer, %.preheader266 ], [ %i.ht, %._crit_edge325.loopexit ] ; 2 uses
  %.lcssa278 = phi <4 x i32> [ zeroinitializer, %.preheader266 ], [ %i.hs, %._crit_edge325.loopexit ] ; 2 uses
  %.lcssa277 = phi <4 x i32> [ zeroinitializer, %.preheader266 ], [ %i.hr, %._crit_edge325.loopexit ] ; 2 uses
  %.lcssa276 = phi <4 x i32> [ zeroinitializer, %.preheader266 ], [ %i.hq, %._crit_edge325.loopexit ] ; 2 uses
  %.5147.lcssa = phi ptr [ %.4146.lcssa, %.preheader266 ], [ %i.hu, %._crit_edge325.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ 0, %.preheader266 ], [ %narrow440, %._crit_edge325.loopexit ] ; 3 uses
  %i.hz = shufflevector <4 x i32> %.lcssa276, <4 x i32> %.lcssa277, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ia = shufflevector <4 x i32> %.lcssa276, <4 x i32> %.lcssa277, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ib = shufflevector <4 x i32> %.lcssa278, <4 x i32> %.lcssa279, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ic = shufflevector <4 x i32> %.lcssa278, <4 x i32> %.lcssa279, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.id = shufflevector <4 x i32> %i.hz, <4 x i32> %i.ib, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ie = shufflevector <4 x i32> %i.hz, <4 x i32> %i.ib, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.if = shufflevector <4 x i32> %i.ia, <4 x i32> %i.ic, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ig = shufflevector <4 x i32> %i.ia, <4 x i32> %i.ic, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ih = add <4 x i32> %i.id, %i.ie
  %i.ii = add <4 x i32> %i.ih, %i.if
  %i.ij = add <4 x i32> %i.ii, %i.ig
  %i.ik = or disjoint i32 %.5.lcssa, 7
  %i.il = icmp slt i32 %i.ik, %i.fw
  br i1 %i.il, label %.lr.ph336.preheader, label %._crit_edge337

.lr.ph336.preheader:                              ; preds = %._crit_edge325
  %i.im = zext nneg i32 %.5.lcssa to i64
  br label %.lr.ph336

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %.lr.ph336
  %indvars.iv418 = phi i64 [ %i.im, %.lr.ph336.preheader ], [ %indvars.iv.next419, %.lr.ph336 ] ; 2 uses
  %.6148333 = phi ptr [ %.5147.lcssa, %.lr.ph336.preheader ], [ %i.ix, %.lr.ph336 ] ; 3 uses
  %i.in = phi <4 x i32> [ zeroinitializer, %.lr.ph336.preheader ], [ %i.iv, %.lr.ph336 ]
  %i.io = phi <4 x i32> [ zeroinitializer, %.lr.ph336.preheader ], [ %i.iw, %.lr.ph336 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv418
  %i.iq = load double, ptr %i.ip, align 1, !tbaa !25
  %i.ir = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.is = load <16 x i8>, ptr %.6148333, align 1, !tbaa !25
  %i.it = getelementptr inbounds nuw i8, ptr %.6148333, i64 16
  %i.iu = load <16 x i8>, ptr %i.it, align 1, !tbaa !25
  %21 = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = bitcast <2 x double> %21 to <16 x i8>     ; 2 uses
  %i.iv = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.in, <16 x i8> %22, <16 x i8> %i.is) ; 2 uses
  %i.iw = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.io, <16 x i8> %22, <16 x i8> %i.iu) ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.6148333, i64 32 ; 2 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 8 ; 3 uses
  %i.iy = trunc i64 %indvars.iv.next419 to i32
  %i.iz = or i32 %i.iy, 7
  %i.ja = icmp slt i32 %i.iz, %i.fw
  br i1 %i.ja, label %.lr.ph336, label %._crit_edge337.loopexit, !llvm.loop !147

._crit_edge337.loopexit:                          ; preds = %.lr.ph336
  %i.jb = trunc nuw i64 %indvars.iv.next419 to i32
  br label %._crit_edge337

._crit_edge337:                                   ; preds = %._crit_edge337.loopexit, %._crit_edge325
  %.lcssa281 = phi <4 x i32> [ zeroinitializer, %._crit_edge325 ], [ %i.iw, %._crit_edge337.loopexit ]
  %.lcssa280 = phi <4 x i32> [ zeroinitializer, %._crit_edge325 ], [ %i.iv, %._crit_edge337.loopexit ]
  %.6148.lcssa = phi ptr [ %.5147.lcssa, %._crit_edge325 ], [ %i.ix, %._crit_edge337.loopexit ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge325 ], [ %i.jb, %._crit_edge337.loopexit ] ; 3 uses
  %i.jc = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa280, <4 x i32> %.lcssa281)
  %i.jd = add <4 x i32> %i.ij, %i.jc              ; 2 uses
  %i.je = or disjoint i32 %.6.lcssa, 3
  %i.jf = icmp slt i32 %i.je, %i.fw
  br i1 %i.jf, label %.lr.ph346.preheader, label %._crit_edge347

.lr.ph346.preheader:                              ; preds = %._crit_edge337
  %i.jg = zext i32 %.6.lcssa to i64
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.preheader, %.lr.ph346
  %indvars.iv421 = phi i64 [ %i.jg, %.lr.ph346.preheader ], [ %indvars.iv.next422, %.lr.ph346 ] ; 2 uses
  %.7149343 = phi ptr [ %.6148.lcssa, %.lr.ph346.preheader ], [ %i.jm, %.lr.ph346 ] ; 2 uses
  %.0263.in342 = phi <4 x i32> [ %i.jd, %.lr.ph346.preheader ], [ %i.jl, %.lr.ph346 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv421
  %i.ji = load float, ptr %i.jh, align 1, !tbaa !25
  %i.jj = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jk = load <16 x i8>, ptr %.7149343, align 1, !tbaa !25
  %23 = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %24 = bitcast <4 x float> %23 to <16 x i8>
  %i.jl = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.0263.in342, <16 x i8> %24, <16 x i8> %i.jk) ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.7149343, i64 16 ; 2 uses
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 4 ; 3 uses
  %i.jn = trunc i64 %indvars.iv.next422 to i32
  %i.jo = or i32 %i.jn, 3
  %i.jp = icmp slt i32 %i.jo, %i.fw
  br i1 %i.jp, label %.lr.ph346, label %._crit_edge347.loopexit, !llvm.loop !148

._crit_edge347.loopexit:                          ; preds = %.lr.ph346
  %i.jq = trunc nuw i64 %indvars.iv.next422 to i32
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %._crit_edge337
  %.0263.in.lcssa = phi <4 x i32> [ %i.jd, %._crit_edge337 ], [ %i.jl, %._crit_edge347.loopexit ]
  %.7149.lcssa = phi ptr [ %.6148.lcssa, %._crit_edge337 ], [ %i.jm, %._crit_edge347.loopexit ] ; 2 uses
  %.7.lcssa = phi i32 [ %.6.lcssa, %._crit_edge337 ], [ %i.jq, %._crit_edge347.loopexit ] ; 3 uses
  %i.jr = load <4 x i32>, ptr %.7149.lcssa, align 1, !tbaa !25
  %i.js = sub <4 x i32> %.0263.in.lcssa, %i.jr    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.7149.lcssa, i64 16 ; 2 uses
  %i.ju = or disjoint i32 %.7.lcssa, 1
  %i.jv = icmp slt i32 %i.ju, %i.fw
  br i1 %i.jv, label %.lr.ph355.preheader, label %.preheader

.lr.ph355.preheader:                              ; preds = %._crit_edge347
  %i.jw = zext i32 %.7.lcssa to i64
  br label %.lr.ph355

.preheader.loopexit:                              ; preds = %.lr.ph355
  %i.jx = trunc nuw i64 %indvars.iv.next425 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge347
  %.1264.in.lcssa = phi <4 x i32> [ %i.js, %._crit_edge347 ], [ %i.kv, %.preheader.loopexit ] ; 3 uses
  %.8150.lcssa = phi ptr [ %i.jt, %._crit_edge347 ], [ %i.kw, %.preheader.loopexit ] ; 3 uses
  %.8.lcssa = phi i32 [ %.7.lcssa, %._crit_edge347 ], [ %i.jx, %.preheader.loopexit ] ; 4 uses
  %i.jy = icmp slt i32 %.8.lcssa, %i.fw
  br i1 %i.jy, label %.lr.ph361.preheader, label %._crit_edge362

.lr.ph361.preheader:                              ; preds = %.preheader
  %i.jz = zext i32 %.8.lcssa to i64               ; 3 uses
  %i.ka = sub i32 %i.fw, %.8.lcssa
  %.neg522 = add i32 %.8.lcssa, 1
  %xtraiter519 = and i32 %i.ka, 1
  %lcmp.mod520.not = icmp eq i32 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph361.prol.loopexit, label %.lr.ph361.prol

.lr.ph361.prol:                                   ; preds = %.lr.ph361.preheader
  %i.kb = load <8 x i8>, ptr %.8150.lcssa, align 1, !tbaa !25
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jz
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !25
  %i.ke = sext i8 %i.kd to i16
  %i.kf = insertelement <8 x i16> poison, i16 %i.ke, i64 0
  %i.kg = shufflevector <8 x i16> %i.kf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kh = sext <8 x i8> %i.kb to <8 x i16>        ; 2 uses
  %i.ki = mul <8 x i16> %i.kg, %i.kh
  %i.kj = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kh, <8 x i16> %i.kg)
  %i.kk = shufflevector <8 x i16> %i.ki, <8 x i16> %i.kj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kl = bitcast <8 x i16> %i.kk to <4 x i32>
  %i.km = add <4 x i32> %.1264.in.lcssa, %i.kl    ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.8150.lcssa, i64 4
  %indvars.iv.next428.prol = add nuw nsw i64 %i.jz, 1
  br label %.lr.ph361.prol.loopexit

.lr.ph361.prol.loopexit:                          ; preds = %.lr.ph361.prol, %.lr.ph361.preheader
  %indvars.iv427.unr = phi i64 [ %i.jz, %.lr.ph361.preheader ], [ %indvars.iv.next428.prol, %.lr.ph361.prol ]
  %.9151359.unr = phi ptr [ %.8150.lcssa, %.lr.ph361.preheader ], [ %i.kn, %.lr.ph361.prol ]
  %.unr521 = phi <4 x i32> [ %.1264.in.lcssa, %.lr.ph361.preheader ], [ %i.km, %.lr.ph361.prol ]
  %.lcssa518.unr = phi <4 x i32> [ poison, %.lr.ph361.preheader ], [ %i.km, %.lr.ph361.prol ]
  %i.ko = icmp eq i32 %i.fw, %.neg522
  br i1 %i.ko, label %._crit_edge362, label %.lr.ph361

.lr.ph355:                                        ; preds = %.lr.ph355.preheader, %.lr.ph355
  %indvars.iv424 = phi i64 [ %i.jw, %.lr.ph355.preheader ], [ %indvars.iv.next425, %.lr.ph355 ] ; 2 uses
  %.8150352 = phi ptr [ %i.jt, %.lr.ph355.preheader ], [ %i.kw, %.lr.ph355 ] ; 2 uses
  %.1264.in351 = phi <4 x i32> [ %i.js, %.lr.ph355.preheader ], [ %i.kv, %.lr.ph355 ]
  %i.kp = load <8 x i8>, ptr %.8150352, align 1, !tbaa !25
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv424
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !152
  %i.ks = insertelement <8 x i16> poison, i16 %i.kr, i64 0
  %i.kt = sext <8 x i8> %i.kp to <8 x i16>
  %25 = shufflevector <8 x i16> %i.ks, <8 x i16> poison, <4 x i32> zeroinitializer
  %26 = bitcast <4 x i16> %25 to <8 x i8>
  %i.ku = sext <8 x i8> %26 to <8 x i16>
  %i.kv = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.1264.in351, <8 x i16> %i.kt, <8 x i16> %i.ku) ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.8150352, i64 8 ; 2 uses
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 2 ; 3 uses
  %i.kx = trunc i64 %indvars.iv.next425 to i32
  %i.ky = or i32 %i.kx, 1
  %i.kz = icmp slt i32 %i.ky, %i.fw
  br i1 %i.kz, label %.lr.ph355, label %.preheader.loopexit, !llvm.loop !149

.lr.ph361:                                        ; preds = %.lr.ph361.prol.loopexit, %.lr.ph361
  %indvars.iv427 = phi i64 [ %indvars.iv.next428.1, %.lr.ph361 ], [ %indvars.iv427.unr, %.lr.ph361.prol.loopexit ] ; 3 uses
  %.9151359 = phi ptr [ %i.mb, %.lr.ph361 ], [ %.9151359.unr, %.lr.ph361.prol.loopexit ] ; 3 uses
  %i.la = phi <4 x i32> [ %i.ma, %.lr.ph361 ], [ %.unr521, %.lr.ph361.prol.loopexit ]
  %i.lb = load <8 x i8>, ptr %.9151359, align 1, !tbaa !25
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv427
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !25
  %i.le = sext i8 %i.ld to i16
  %i.lf = insertelement <8 x i16> poison, i16 %i.le, i64 0
  %i.lg = shufflevector <8 x i16> %i.lf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lh = sext <8 x i8> %i.lb to <8 x i16>        ; 2 uses
  %i.li = mul <8 x i16> %i.lg, %i.lh
  %i.lj = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lh, <8 x i16> %i.lg)
  %i.lk = shufflevector <8 x i16> %i.li, <8 x i16> %i.lj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ll = bitcast <8 x i16> %i.lk to <4 x i32>
  %i.lm = add <4 x i32> %i.la, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %.9151359, i64 4
  %i.lo = load <8 x i8>, ptr %i.ln, align 1, !tbaa !25
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv427
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !25
  %i.ls = sext i8 %i.lr to i16
  %i.lt = insertelement <8 x i16> poison, i16 %i.ls, i64 0
  %i.lu = shufflevector <8 x i16> %i.lt, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lv = sext <8 x i8> %i.lo to <8 x i16>        ; 2 uses
  %i.lw = mul <8 x i16> %i.lu, %i.lv
  %i.lx = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lv, <8 x i16> %i.lu)
  %i.ly = shufflevector <8 x i16> %i.lw, <8 x i16> %i.lx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lz = bitcast <8 x i16> %i.ly to <4 x i32>
  %i.ma = add <4 x i32> %i.lm, %i.lz              ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.9151359, i64 8
  %indvars.iv.next428.1 = add nuw nsw i64 %indvars.iv427, 2 ; 2 uses
  %i.mc = trunc nuw i64 %indvars.iv.next428.1 to i32
  %i.md = icmp sgt i32 %i.fw, %i.mc
  br i1 %i.md, label %.lr.ph361, label %._crit_edge362, !llvm.loop !150

._crit_edge362:                                   ; preds = %.lr.ph361.prol.loopexit, %.lr.ph361, %.preheader
  %.lcssa282 = phi <4 x i32> [ %.1264.in.lcssa, %.preheader ], [ %.lcssa518.unr, %.lr.ph361.prol.loopexit ], [ %i.ma, %.lr.ph361 ]
  %i.me = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mg = insertelement <4 x float> poison, float %i.al, i64 0
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mi = load <4 x float>, ptr %i.ap, align 1, !tbaa !25
  %i.mj = load <4 x float>, ptr %i.bn, align 1, !tbaa !25
  %i.mk = sitofp fast <4 x i32> %.lcssa274 to <4 x float>
  %i.ml = fmul fast <4 x float> %i.mj, %i.mf
  %i.mm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mk, <4 x float> nofpclass(nan inf) %i.ml, <4 x float> nofpclass(nan inf) %i.mi)
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.mo = load <4 x float>, ptr %i.mn, align 1, !tbaa !25
  %i.mp = sitofp fast <4 x i32> %.lcssa282 to <4 x float>
  %i.mq = fmul fast <4 x float> %i.mo, %i.mh
  %i.mr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mp, <4 x float> nofpclass(nan inf) %i.mq, <4 x float> nofpclass(nan inf) %i.mm)
  store <4 x float> %i.mr, ptr %i.bv, align 1, !tbaa !25
  %i.ms = add nuw i32 %.0364, 1
  %exitcond.not = icmp eq i32 %.0364, %i.l
  br i1 %exitcond.not, label %._crit_edge367, label %bb.c

._crit_edge367:                                   ; preds = %._crit_edge362, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge367, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = shl nsw i64 %indvars.iv, 4               ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !22
  %i.r = load i32, ptr %i.l, align 4, !tbaa !21
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !24
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load <32 x float>, ptr %i.w, align 1, !tbaa !25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.z = load <32 x float>, ptr %i.y, align 1, !tbaa !25 ; 2 uses
  %i.aa = shufflevector <32 x float> %i.x, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ab = shufflevector <32 x float> %i.z, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ac = shufflevector <32 x float> %i.x, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ad = shufflevector <32 x float> %i.z, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ae = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.af = shufflevector <16 x float> %i.ac, <16 x float> %i.ad, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ag = shufflevector <16 x float> %i.ac, <16 x float> %i.ad, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ah = fneg fast <16 x float> %i.ae
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.al = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ak, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.am = fcmp fast ogt <16 x float> %i.al, %i.ak
  %i.an = fadd fast <16 x float> %i.al, splat (float -1.000000e+00)
  %i.ao = select fast <16 x i1> %i.am, <16 x float> %i.an, <16 x float> %i.al ; 2 uses
  %i.ap = fneg fast <16 x float> %i.ao            ; 2 uses
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ap, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.aj)
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ap, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.aq) ; 8 uses
  %i.as = fmul fast <16 x float> %i.ar, %i.ar
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3C088908))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3D2AA9C1))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E2AAAAA))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float 5.000000e-01))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ar)
  %i.az = fadd fast <16 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ao, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bb = shl <16 x i32> %i.ba, splat (i32 23)
  %i.bc = add <16 x i32> %i.bb, splat (i32 1065353216)
  %i.bd = bitcast <16 x i32> %i.bc to <16 x float>
  %i.be = fmul fast <16 x float> %i.az, %i.bd
  %i.bf = fadd fast <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bg = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bh = fneg fast <16 x float> %i.bg
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bi, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bl = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bk, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bm = fcmp fast ogt <16 x float> %i.bl, %i.bk
  %i.bn = fadd fast <16 x float> %i.bl, splat (float -1.000000e+00)
  %i.bo = select fast <16 x i1> %i.bm, <16 x float> %i.bn, <16 x float> %i.bl ; 2 uses
  %i.bp = fneg fast <16 x float> %i.bo            ; 2 uses
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bj)
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bq) ; 8 uses
  %i.bs = fmul fast <16 x float> %i.br, %i.br
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3C088908))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3D2AA9C1))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3E2AAAAA))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float 5.000000e-01))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.br)
  %i.bz = fadd fast <16 x float> %i.by, splat (float 1.000000e+00)
  %i.ca = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cb = shl <16 x i32> %i.ca, splat (i32 23)
  %i.cc = add <16 x i32> %i.cb, splat (i32 1065353216)
  %i.cd = bitcast <16 x i32> %i.cc to <16 x float>
  %i.ce = fmul fast <16 x float> %i.bz, %i.cd
  %i.cf = fadd fast <16 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = fneg fast <16 x float> %i.af
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ck = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cj, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cl = fcmp fast ogt <16 x float> %i.ck, %i.cj
  %i.cm = fadd fast <16 x float> %i.ck, splat (float -1.000000e+00)
  %i.cn = select fast <16 x i1> %i.cl, <16 x float> %i.cm, <16 x float> %i.ck ; 2 uses
  %i.co = fneg fast <16 x float> %i.cn            ; 2 uses
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.co, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ci)
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.co, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cp) ; 8 uses
end_hunk_0
