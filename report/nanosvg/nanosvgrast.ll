Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__expandStroke:bb.a

bb.bi:                                            ; preds = %nsvg__normalize.exit190
  %i.ace = insertelement <2 x float> poison, float %i.a, i64 0
  %i.acf = shufflevector <2 x float> %i.ace, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yp, <2 x float> %i.acf, <2 x float> %i.yc) ; 2 uses
  %i.ach = fneg <2 x float> %i.yp
  %i.aci = shufflevector <2 x float> %i.yp, <2 x float> %i.ach, <2 x i32> <i32 1, i32 2>
  %i.acj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aci, <2 x float> %i.acf, <2 x float> %i.acg) ; 5 uses
  %i.ack = fneg <2 x float> %i.yp
  %i.acl = shufflevector <2 x float> %i.ack, <2 x float> %i.yp, <2 x i32> <i32 1, i32 2>
  %i.acm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acl, <2 x float> %i.acf, <2 x float> %i.acg) ; 5 uses
  %i.acn = extractelement <2 x float> %i.acm, i64 1 ; 4 uses
  %i.aco = extractelement <2 x float> %i.acj, i64 1 ; 4 uses
  %i.acp = fcmp oeq float %i.aco, %i.acn
  br i1 %i.acp, label %nsvg__addEdge.exit.i216, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !112 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !120 ; 3 uses
  %.not.i.i206 = icmp slt i32 %i.acr, %i.act
  br i1 %.not.i.i206, label %._crit_edge.i.i217, label %bb.bk

._crit_edge.i.i217:                               ; preds = %bb.bj
  %.phi.trans.insert.i.i218 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i219 = load ptr, ptr %.phi.trans.insert.i.i218, align 8, !tbaa !98
  br label %.sink.split.i.i210

bb.bk:                                            ; preds = %bb.bj
  %i.acu = icmp sgt i32 %i.act, 0
  %i.acv = shl nuw nsw i32 %i.act, 1
  %spec.select.i.i207 = select i1 %i.acu, i32 %i.acv, i32 64 ; 2 uses
  store i32 %spec.select.i.i207, ptr %i.acs, align 4, !tbaa !120
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !98
  %i.acy = zext nneg i32 %spec.select.i.i207 to i64
  %i.acz = shl nuw nsw i64 %i.acy, 5
  %i.ada = tail call ptr @realloc(ptr noundef %i.acx, i64 noundef %i.acz) #32 ; 3 uses
  store ptr %i.ada, ptr %i.acw, align 8, !tbaa !98
  %i.adb = icmp eq ptr %i.ada, null
  br i1 %i.adb, label %nsvg__addEdge.exit.i216, label %._crit_edge36.i.i208

._crit_edge36.i.i208:                             ; preds = %bb.bk
  %.pre37.i.i209 = load i32, ptr %i.acq, align 8, !tbaa !112
  br label %.sink.split.i.i210

.sink.split.i.i210:                               ; preds = %._crit_edge36.i.i208, %._crit_edge.i.i217
  %i.adc = phi i32 [ %i.acr, %._crit_edge.i.i217 ], [ %.pre37.i.i209, %._crit_edge36.i.i208 ] ; 2 uses
  %i.add = phi ptr [ %.pre.i.i219, %._crit_edge.i.i217 ], [ %i.ada, %._crit_edge36.i.i208 ]
  %i.ade = sext i32 %i.adc to i64
  %i.adf = getelementptr inbounds [32 x i8], ptr %i.add, i64 %i.ade ; 2 uses
  %i.adg = add nsw i32 %i.adc, 1
  store i32 %i.adg, ptr %i.acq, align 8, !tbaa !112
  %i.adh = fcmp olt float %i.aco, %i.acn          ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %.49.i.i215 = select i1 %i.adh, i32 1, i32 -1
  %i.adj = insertelement <4 x i1> poison, i1 %i.adh, i64 0
  %i.adk = shufflevector <4 x i1> %i.adj, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.adl = shufflevector <2 x float> %i.acj, <2 x float> %i.acm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adm = shufflevector <2 x float> %i.acm, <2 x float> %i.acj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adn = select <4 x i1> %i.adk, <4 x float> %i.adl, <4 x float> %i.adm
  store <4 x float> %i.adn, ptr %i.adf, align 8, !tbaa !31
  store i32 %.49.i.i215, ptr %i.adi, align 8, !tbaa !122
  br label %nsvg__addEdge.exit.i216

nsvg__addEdge.exit.i216:                          ; preds = %.sink.split.i.i210, %bb.bk, %bb.bi
  %i.ado = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.adp = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.adq = load float, ptr %i.ado, align 4, !tbaa !118 ; 2 uses
  %i.adr = fcmp oeq float %i.adq, %i.aco
  br i1 %i.adr, label %nsvg__addEdge.exit57.i, label %bb.bl

bb.bl:                                            ; preds = %nsvg__addEdge.exit.i216
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !112 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !120 ; 3 uses
  %.not.i44.i = icmp slt i32 %i.adt, %i.adv
  br i1 %.not.i44.i, label %._crit_edge.i54.i, label %bb.bm

._crit_edge.i54.i:                                ; preds = %bb.bl
  %.phi.trans.insert.i55.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i56.i = load ptr, ptr %.phi.trans.insert.i55.i, align 8, !tbaa !98
  br label %.sink.split.i48.i

bb.bm:                                            ; preds = %bb.bl
  %i.adw = icmp sgt i32 %i.adv, 0
  %i.adx = shl nuw nsw i32 %i.adv, 1
  %spec.select.i45.i = select i1 %i.adw, i32 %i.adx, i32 64 ; 2 uses
  store i32 %spec.select.i45.i, ptr %i.adu, align 4, !tbaa !120
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !98
  %i.aea = zext nneg i32 %spec.select.i45.i to i64
  %i.aeb = shl nuw nsw i64 %i.aea, 5
  %i.aec = tail call ptr @realloc(ptr noundef %i.adz, i64 noundef %i.aeb) #32 ; 3 uses
  store ptr %i.aec, ptr %i.ady, align 8, !tbaa !98
  %i.aed = icmp eq ptr %i.aec, null
  br i1 %i.aed, label %nsvg__addEdge.exit57.i, label %._crit_edge36.i46.i

._crit_edge36.i46.i:                              ; preds = %bb.bm
  %.pre37.i47.i = load i32, ptr %i.ads, align 8, !tbaa !112
  br label %.sink.split.i48.i

.sink.split.i48.i:                                ; preds = %._crit_edge36.i46.i, %._crit_edge.i54.i
  %i.aee = phi i32 [ %i.adt, %._crit_edge.i54.i ], [ %.pre37.i47.i, %._crit_edge36.i46.i ] ; 2 uses
  %i.aef = phi ptr [ %.pre.i56.i, %._crit_edge.i54.i ], [ %i.aec, %._crit_edge36.i46.i ]
  %i.aeg = sext i32 %i.aee to i64
  %i.aeh = getelementptr inbounds [32 x i8], ptr %i.aef, i64 %i.aeg ; 2 uses
  %i.aei = add nsw i32 %i.aee, 1
  store i32 %i.aei, ptr %i.ads, align 8, !tbaa !112
  %i.aej = fcmp olt float %i.adq, %i.aco          ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  %.49.i53.i = select i1 %i.aej, i32 1, i32 -1
  %i.ael = insertelement <4 x i1> poison, i1 %i.aej, i64 0
  %i.aem = shufflevector <4 x i1> %i.ael, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.aen = shufflevector <2 x float> %i.adp, <2 x float> %i.acj, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aeo = shufflevector <2 x float> %i.adp, <2 x float> %i.acj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aep = select <4 x i1> %i.aem, <4 x float> %i.aen, <4 x float> %i.aeo
  %i.aeq = shufflevector <4 x float> %i.aep, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.aeq, ptr %i.aeh, align 8, !tbaa !31
  store i32 %.49.i53.i, ptr %i.aek, align 8, !tbaa !122
  br label %nsvg__addEdge.exit57.i

nsvg__addEdge.exit57.i:                           ; preds = %.sink.split.i48.i, %bb.bm, %nsvg__addEdge.exit.i216
  %i.aer = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aes = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.aet = load float, ptr %i.aer, align 4, !tbaa !118 ; 2 uses
  %i.aeu = fcmp oeq float %i.acn, %i.aet
  br i1 %i.aeu, label %nsvg__addEdge.exit188, label %bb.bn

bb.bn:                                            ; preds = %nsvg__addEdge.exit57.i
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aew = load i32, ptr %i.aev, align 8, !tbaa !112 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !120 ; 3 uses
  %.not.i58.i = icmp slt i32 %i.aew, %i.aey
  br i1 %.not.i58.i, label %._crit_edge.i68.i, label %bb.bo

._crit_edge.i68.i:                                ; preds = %bb.bn
  %.phi.trans.insert.i69.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i70.i = load ptr, ptr %.phi.trans.insert.i69.i, align 8, !tbaa !98
  br label %.sink.split.i62.i

bb.bo:                                            ; preds = %bb.bn
  %i.aez = icmp sgt i32 %i.aey, 0
  %i.afa = shl nuw nsw i32 %i.aey, 1
  %spec.select.i59.i = select i1 %i.aez, i32 %i.afa, i32 64 ; 2 uses
  store i32 %spec.select.i59.i, ptr %i.aex, align 4, !tbaa !120
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !98
  %i.afd = zext nneg i32 %spec.select.i59.i to i64
  %i.afe = shl nuw nsw i64 %i.afd, 5
  %i.aff = tail call ptr @realloc(ptr noundef %i.afc, i64 noundef %i.afe) #32 ; 3 uses
  store ptr %i.aff, ptr %i.afb, align 8, !tbaa !98
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %nsvg__addEdge.exit188, label %._crit_edge36.i60.i

._crit_edge36.i60.i:                              ; preds = %bb.bo
  %.pre37.i61.i = load i32, ptr %i.aev, align 8, !tbaa !112
  br label %.sink.split.i62.i

.sink.split.i62.i:                                ; preds = %._crit_edge36.i60.i, %._crit_edge.i68.i
  %i.afh = phi i32 [ %i.aew, %._crit_edge.i68.i ], [ %.pre37.i61.i, %._crit_edge36.i60.i ] ; 2 uses
  %i.afi = phi ptr [ %.pre.i70.i, %._crit_edge.i68.i ], [ %i.aff, %._crit_edge36.i60.i ]
  %i.afj = sext i32 %i.afh to i64
  %i.afk = getelementptr inbounds [32 x i8], ptr %i.afi, i64 %i.afj ; 2 uses
  %i.afl = add nsw i32 %i.afh, 1
  store i32 %i.afl, ptr %i.aev, align 8, !tbaa !112
  %i.afm = fcmp olt float %i.acn, %i.aet          ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %.49.i67.i = select i1 %i.afm, i32 1, i32 -1
  %i.afo = insertelement <4 x i1> poison, i1 %i.afm, i64 0
  %i.afp = shufflevector <4 x i1> %i.afo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.afq = shufflevector <2 x float> %i.aes, <2 x float> %i.acm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afr = shufflevector <2 x float> %i.acm, <2 x float> %i.aes, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afs = select <4 x i1> %i.afp, <4 x float> %i.afq, <4 x float> %i.afr
  %i.aft = shufflevector <4 x float> %i.afs, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.aft, ptr %i.afk, align 8, !tbaa !31
  store i32 %.49.i67.i, ptr %i.afn, align 8, !tbaa !122
  br label %nsvg__addEdge.exit188

bb.bp:                                            ; preds = %nsvg__normalize.exit190
  %i.afu = fneg <2 x float> %i.yp                 ; 2 uses
  %i.afv = extractelement <2 x float> %i.yc, i64 0
  %i.afw = extractelement <2 x float> %i.yc, i64 1
  %i.afx = extractelement <2 x float> %i.afu, i64 0
  %i.afy = extractelement <2 x float> %i.afu, i64 1
  call fastcc void @nsvg__roundCap(ptr noundef %0, ptr noundef %8, ptr noundef %7, float %i.afv, float %i.afw, float noundef %i.afx, float noundef %i.afy, float noundef %6, i32 noundef %spec.store.select.i, i32 noundef 1)
  br label %nsvg__addEdge.exit188

nsvg__addEdge.exit188:                            ; preds = %.sink.split.i62.i, %bb.bo, %nsvg__addEdge.exit57.i, %.sink.split.i58.i, %bb.bh, %nsvg__addEdge.exit53.i, %bb.bp, %nsvg__normalize.exit190, %.sink.split.i179, %bb.ba, %nsvg__addEdge.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__roundCap(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, float %.0.val, float %.4.val, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #3 {
bb.a:
  %8 = fmul float %5, 5.000000e-01                ; 3 uses
  %i.a = fneg float %3                            ; 2 uses
  %i.b = icmp sgt i32 %6, 0
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %6, -1                       ; 2 uses
  %i.d = uitofp nneg i32 %i.c to float            ; 2 uses
  %i.e = fneg float %4                            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = fdiv ninf float 0.000000e+00, %i.d       ; 2 uses
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = tail call float @cosf(float %i.i)
  %i.l = tail call float @sinf(float noundef %i.j) #30
  %9 = fmul float %8, %i.k
  %10 = fmul float %8, %i.l
  %i.m = insertelement <2 x float> poison, float %i.e, i64 0
  %i.n = insertelement <2 x float> %i.m, float %3, i64 1
  %i.o = insertelement <2 x float> poison, float %9, i64 0
  %11 = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = insertelement <2 x float> poison, float %.0.val, i64 0
  %i.q = insertelement <2 x float> %i.p, float %.4.val, i64 1 ; 2 uses
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %11, <2 x float> %i.q)
  %i.s = insertelement <2 x float> poison, float %i.a, i64 0
  %12 = insertelement <2 x float> %i.s, float %i.e, i64 1
  %i.t = insertelement <2 x float> poison, float %10, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.u, <2 x float> %i.r) ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 1   ; 2 uses
  %exitcond.peel.not = icmp eq i32 %6, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %13 = insertelement <2 x float> poison, float %8, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = insertelement <2 x float> poison, float %i.e, i64 0
  %i.y = insertelement <2 x float> %i.x, float %3, i64 1
  %i.z = insertelement <2 x float> poison, float %i.a, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.e, i64 1
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %nsvg__addEdge.exit
  %.0651 = phi i32 [ %i.br, %nsvg__addEdge.exit ], [ 1, %.peel.next.preheader ] ; 3 uses
  %i.ab = phi <2 x float> [ %i.bq, %nsvg__addEdge.exit ], [ zeroinitializer, %.peel.next.preheader ]
  %i.ac = phi <2 x float> [ %i.ao, %nsvg__addEdge.exit ], [ %i.v, %.peel.next.preheader ] ; 3 uses
  %i.ad = uitofp nneg i32 %.0651 to float
  %i.ae = fdiv float %i.ad, %i.d
  %i.af = fmul float %i.ae, f0x40490FDB           ; 2 uses
  %i.ag = tail call float @cosf(float noundef %i.af) #30
  %i.ah = tail call float @sinf(float noundef %i.af) #30
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1
  %i.ak = fmul <2 x float> %14, %i.aj             ; 2 uses
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.al, <2 x float> %i.q)
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.an, <2 x float> %i.am) ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1 ; 2 uses
  %i.aq = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ar = fcmp oeq float %i.aq, %i.ap
  br i1 %i.ar, label %nsvg__addEdge.exit, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %i.as = load i32, ptr %i.f, align 8, !tbaa !112 ; 2 uses
  %i.at = load i32, ptr %i.g, align 4, !tbaa !120 ; 3 uses
  %.not.i = icmp slt i32 %i.as, %i.at
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !98
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = shl nuw nsw i32 %i.at, 1
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.g, align 4, !tbaa !120
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.ax = zext nneg i32 %spec.select.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 5
  %i.az = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.ay) #32 ; 3 uses
  store ptr %i.az, ptr %i.h, align 8, !tbaa !98
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %nsvg__addEdge.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.d
  %.pre37.i = load i32, ptr %i.f, align 8, !tbaa !112
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge36.i, %._crit_edge.i
  %i.bb = phi i32 [ %i.as, %._crit_edge.i ], [ %.pre37.i, %._crit_edge36.i ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.az, %._crit_edge36.i ]
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [32 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = add nsw i32 %i.bb, 1
  store i32 %i.bf, ptr %i.f, align 8, !tbaa !112
  %i.bg = fcmp olt float %i.aq, %i.ap             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.49.i = select i1 %i.bg, i32 1, i32 -1
  %i.bi = insertelement <4 x i1> poison, i1 %i.bg, i64 0
  %i.bj = shufflevector <4 x i1> %i.bi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bk = shufflevector <2 x float> %i.ac, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = shufflevector <2 x float> %i.ao, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bm = select <4 x i1> %i.bj, <4 x float> %i.bk, <4 x float> %i.bl
  store <4 x float> %i.bm, ptr %i.be, align 8, !tbaa !31
  store i32 %.49.i, ptr %i.bh, align 8, !tbaa !122
  br label %nsvg__addEdge.exit

nsvg__addEdge.exit:                               ; preds = %.peel.next, %bb.d, %.sink.split.i
  %i.bn = icmp eq i32 %.0651, %i.c
  %i.bo = insertelement <2 x i1> poison, i1 %i.bn, i64 0
  %i.bp = shufflevector <2 x i1> %i.bo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.ao, <2 x float> %i.ab ; 2 uses
  %i.br = add nuw nsw i32 %.0651, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.br, %6
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !319

._crit_edge:                                      ; preds = %nsvg__addEdge.exit, %bb.b, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.w, %bb.b ], [ %i.w, %nsvg__addEdge.exit ] ; 2 uses
  %i.bs = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.bq, %nsvg__addEdge.exit ] ; 4 uses
  %i.bt = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.v, %bb.b ], [ %i.v, %nsvg__addEdge.exit ] ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %nsvg__addEdge.exit95, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load <2 x float>, ptr %1, align 4, !tbaa !31 ; 2 uses
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !118 ; 2 uses
  %i.bx = fcmp oeq float %i.bw, %.061.lcssa
  br i1 %i.bx, label %nsvg__addEdge.exit81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !112 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !120 ; 3 uses
  %.not.i68 = icmp slt i32 %i.bz, %i.cb
  br i1 %.not.i68, label %._crit_edge.i78, label %bb.g

._crit_edge.i78:                                  ; preds = %bb.f
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i80 = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !98
  br label %.sink.split.i72

bb.g:                                             ; preds = %bb.f
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = shl nuw nsw i32 %i.cb, 1
  %spec.select.i69 = select i1 %i.cc, i32 %i.cd, i32 64 ; 2 uses
  store i32 %spec.select.i69, ptr %i.ca, align 4, !tbaa !120
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !98
  %i.cg = zext nneg i32 %spec.select.i69 to i64
  %i.ch = shl nuw nsw i64 %i.cg, 5
  %i.ci = tail call ptr @realloc(ptr noundef %i.cf, i64 noundef %i.ch) #32 ; 3 uses
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !98
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %nsvg__addEdge.exit81, label %._crit_edge36.i70

._crit_edge36.i70:                                ; preds = %bb.g
  %.pre37.i71 = load i32, ptr %i.by, align 8, !tbaa !112
  br label %.sink.split.i72

.sink.split.i72:                                  ; preds = %._crit_edge36.i70, %._crit_edge.i78
  %i.ck = phi i32 [ %i.bz, %._crit_edge.i78 ], [ %.pre37.i71, %._crit_edge36.i70 ] ; 2 uses
  %i.cl = phi ptr [ %.pre.i80, %._crit_edge.i78 ], [ %i.ci, %._crit_edge36.i70 ]
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [32 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = add nsw i32 %i.ck, 1
  store i32 %i.co, ptr %i.by, align 8, !tbaa !112
  %i.cp = fcmp olt float %i.bw, %.061.lcssa       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.49.i77 = select i1 %i.cp, i32 1, i32 -1
  %i.cr = insertelement <4 x i1> poison, i1 %i.cp, i64 0
  %i.cs = shufflevector <4 x i1> %i.cr, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ct = shufflevector <2 x float> %i.bt, <2 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = shufflevector <2 x float> %i.bv, <2 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cv = select <4 x i1> %i.cs, <4 x float> %i.ct, <4 x float> %i.cu
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.cw, ptr %i.cn, align 8, !tbaa !31
  store i32 %.49.i77, ptr %i.cq, align 8, !tbaa !122
  br label %nsvg__addEdge.exit81

nsvg__addEdge.exit81:                             ; preds = %bb.e, %bb.g, %.sink.split.i72
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cy = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !118 ; 2 uses
  %i.da = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.db = fcmp oeq float %i.da, %i.cz
  br i1 %i.db, label %nsvg__addEdge.exit95, label %bb.h

bb.h:                                             ; preds = %nsvg__addEdge.exit81
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !112 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !120 ; 3 uses
  %.not.i82 = icmp slt i32 %i.dd, %i.df
  br i1 %.not.i82, label %._crit_edge.i92, label %bb.i

._crit_edge.i92:                                  ; preds = %bb.h
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i94 = load ptr, ptr %.phi.trans.insert.i93, align 8, !tbaa !98
  br label %.sink.split.i86

bb.i:                                             ; preds = %bb.h
  %i.dg = icmp sgt i32 %i.df, 0
  %i.dh = shl nuw nsw i32 %i.df, 1
  %spec.select.i83 = select i1 %i.dg, i32 %i.dh, i32 64 ; 2 uses
  store i32 %spec.select.i83, ptr %i.de, align 4, !tbaa !120
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !98
  %i.dk = zext nneg i32 %spec.select.i83 to i64
  %i.dl = shl nuw nsw i64 %i.dk, 5
  %i.dm = tail call ptr @realloc(ptr noundef %i.dj, i64 noundef %i.dl) #32 ; 3 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !98
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %nsvg__addEdge.exit95, label %._crit_edge36.i84

._crit_edge36.i84:                                ; preds = %bb.i
  %.pre37.i85 = load i32, ptr %i.dc, align 8, !tbaa !112
  br label %.sink.split.i86

.sink.split.i86:                                  ; preds = %._crit_edge36.i84, %._crit_edge.i92
  %i.do = phi i32 [ %i.dd, %._crit_edge.i92 ], [ %.pre37.i85, %._crit_edge36.i84 ] ; 2 uses
  %i.dp = phi ptr [ %.pre.i94, %._crit_edge.i92 ], [ %i.dm, %._crit_edge36.i84 ]
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %i.ds = add nsw i32 %i.do, 1
  store i32 %i.ds, ptr %i.dc, align 8, !tbaa !112
  %i.dt = fcmp olt float %i.da, %i.cz             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.49.i91 = select i1 %i.dt, i32 1, i32 -1
  %i.dv = insertelement <4 x i1> poison, i1 %i.dt, i64 0
  %i.dw = shufflevector <4 x i1> %i.dv, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dx = shufflevector <2 x float> %i.bs, <2 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x float> %i.cy, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = select <4 x i1> %i.dw, <4 x float> %i.dx, <4 x float> %i.dy
  store <4 x float> %i.dz, ptr %i.dr, align 8, !tbaa !31
  store i32 %.49.i91, ptr %i.du, align 8, !tbaa !122
  br label %nsvg__addEdge.exit95

nsvg__addEdge.exit95:                             ; preds = %.sink.split.i86, %bb.i, %nsvg__addEdge.exit81, %._crit_edge
  store <2 x float> %i.bt, ptr %1, align 4, !tbaa !31
  store <2 x float> %i.bs, ptr %2, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
