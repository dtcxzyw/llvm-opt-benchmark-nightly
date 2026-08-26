Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btQuantizedBvh?download=true
inline.NumInlined: 552
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN14btQuantizedBvhD2Ev:bb.a
          cleanup
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit26: ; preds = %bb.g, %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.z, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i27 = icmp ne ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load i8, ptr %i.aj, align 8, !range !44
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond.i.i28 = select i1 %.not.i.i.i27, i1 %i.al, i1 false
  br i1 %or.cond.i.i28, label %bb.k, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit26
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ai)
          to label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30 unwind label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit34

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit26, %bb.k, %bb.j
  %.pn6 = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %.pn, %bb.k ], [ %.pn, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit26 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i31 = icmp ne ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = load i8, ptr %i.ap, align 8, !range !44
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i32 = select i1 %.not.i.i.i31, i1 %i.ar, i1 false
  br i1 %or.cond.i.i32, label %bb.m, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit34

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ao)
          to label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit34 unwind label %bb.o

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit34: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30, %bb.m, %bb.l
  %.pn8 = phi { ptr, i32 } [ %i.am, %bb.l ], [ %.pn6, %bb.m ], [ %.pn6, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit30 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i35 = icmp ne ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load i8, ptr %i.au, align 8, !range !44
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i.i36 = select i1 %.not.i.i.i35, i1 %i.aw, i1 false
  br i1 %or.cond.i.i36, label %bb.n, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit38

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit34
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.at)
          to label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit38 unwind label %bb.o

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit38: ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit34, %bb.n
  resume { ptr, i32 } %.pn8

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #18
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN14btQuantizedBvhD0Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN14btQuantizedBvhD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN14btQuantizedBvhdlEPv.exit unwind label %bb.d

_ZN14btQuantizedBvhdlEPv.exit:                    ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !42
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN14btQuantizedBvh17calcSplittingAxisEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 2 uses
  %i.b = icmp slt i32 %1, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <4 x float>, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load <2 x float>, ptr %i.l, align 4      ; 2 uses
  %i.q = load <2 x float>, ptr %i.o, align 4      ; 2 uses
  %i.r = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count177 = sext i32 %2 to i64        ; 2 uses
  br i1 %i.e, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us.preheader, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

_ZNK14btQuantizedBvh10getAabbMinEi.exit.us.preheader: ; preds = %.lr.ph
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> zeroinitializer
  %i.t = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit.us:       ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us.preheader, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.r, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us.preheader ] ; 2 uses
  %.sroa.0113.0139.us = phi float [ %i.as, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ 0.000000e+00, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us.preheader ]
  %i.u = phi <2 x float> [ %i.at, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us.preheader ]
  %i.v = getelementptr inbounds [16 x i8], ptr %i.i, i64 %indvars.iv174 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.x = load i16, ptr %i.w, align 2, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i16, ptr %i.v, align 2, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ab = insertelement <2 x i16> poison, i16 %i.x, i64 0
  %i.ac = insertelement <2 x i16> %i.ab, i16 %i.z, i64 1
  %i.ad = uitofp <2 x i16> %i.ac to <2 x float>
  %i.ae = fdiv <2 x float> %i.ad, %i.s
  %i.af = fadd <2 x float> %i.ae, %i.t            ; 2 uses
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.af, %shift
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ah = fmul float %i.ag, 5.000000e-01
  %i.ai = load <2 x i16>, ptr %i.y, align 2, !tbaa !50
  %i.aj = uitofp <2 x i16> %i.ai to <2 x float>
  %i.ak = fdiv <2 x float> %i.aj, %i.p
  %i.al = fadd <2 x float> %i.ak, %i.q
  %i.am = load <2 x i16>, ptr %i.aa, align 2, !tbaa !50
  %i.an = uitofp <2 x i16> %i.am to <2 x float>
  %i.ao = fdiv <2 x float> %i.an, %i.p
  %i.ap = fadd <2 x float> %i.ao, %i.q
  %i.aq = fadd <2 x float> %i.al, %i.ap
  %i.ar = fmul <2 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fadd float %.sroa.0113.0139.us, %i.ah   ; 2 uses
  %i.at = fadd <2 x float> %i.u, %i.ar            ; 2 uses
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %.lr.ph152, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit:          ; preds = %.lr.ph, %_ZNK14btQuantizedBvh10getAabbMinEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.0113.0139 = phi float [ %i.az, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ 0.000000e+00, %.lr.ph ]
  %i.au = phi <2 x float> [ %i.ba, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ zeroinitializer, %.lr.ph ]
  %i.av = getelementptr inbounds [64 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.aw, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %i.av, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %foldExtExtBinop221 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.3.0.copyload.i
  %3 = extractelement <2 x float> %foldExtExtBinop221, i64 0
  %.sroa.594.8.vec.extract = load float, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !43
  %.sroa.592.8.vec.extract = load float, ptr %.sroa.3.0..sroa_idx.i18, align 4, !tbaa !43
  %i.ax = fmul float %3, 5.000000e-01
  %4 = fadd float %.sroa.594.8.vec.extract, %.sroa.592.8.vec.extract
  %foldExtExtBinop223 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.3.0.copyload.i
  %5 = shufflevector <2 x float> %foldExtExtBinop223, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %i.ay = fmul <2 x float> %6, splat (float 5.000000e-01)
  %i.az = fadd float %.sroa.0113.0139, %i.ax      ; 2 uses
  %i.ba = fadd <2 x float> %i.au, %i.ay           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count177
  br i1 %exitcond.not, label %.lr.ph152, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

._crit_edge:                                      ; preds = %bb.a
  %i.bb = sitofp i32 %i.a to float
  %i.bc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bb, i64 0
  br label %._crit_edge153

.lr.ph152:                                        ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us
  %.sroa.0113.0.lcssa.ph = phi float [ %i.as, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.az, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.bd = phi <2 x float> [ %i.at, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.ba, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.be = sitofp i32 %i.a to float                ; 3 uses
  %i.bf = fdiv nnan float 1.000000e+00, %i.be
  %i.bg = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.bf, i64 1
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bi = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %.sroa.0113.0.lcssa.ph, i64 1
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bl = fmul <4 x float> %i.bh, %i.bk           ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !25, !range !44, !noundef !45
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.lr.ph152.split.us, label %.lr.ph152.split

.lr.ph152.split.us:                               ; preds = %.lr.ph152
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = load float, ptr %i.bs, align 8, !tbaa !40
  %i.bw = load float, ptr %i.bq, align 8, !tbaa !40
  %i.bx = load <4 x float>, ptr %i.br, align 4
  %i.by = load <4 x float>, ptr %i.bp, align 4
  %i.bz = sext i32 %1 to i64
  %wide.trip.count187 = sext i32 %2 to i64
  %i.ca = insertelement <4 x float> poison, float %i.be, i64 0
  %i.cb = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.bv, i64 1
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.cd = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bw, i64 1
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us:     ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us, %.lr.ph152.split.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ %i.bz, %.lr.ph152.split.us ] ; 2 uses
  %.sroa.0103.0147.us = phi float [ %i.dm, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ 0.000000e+00, %.lr.ph152.split.us ]
  %i.cf = phi <2 x float> [ %i.dl, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ zeroinitializer, %.lr.ph152.split.us ]
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %indvars.iv184 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 6
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !50
  %i.cj = uitofp i16 %i.ci to float
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = load i16, ptr %i.cg, align 2, !tbaa !50
  %i.cm = uitofp i16 %i.cl to float
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.co = load <2 x i16>, ptr %i.ck, align 2, !tbaa !50
  %i.cp = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.cj, i64 1
  %i.cq = shufflevector <2 x i16> %i.co, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = uitofp <4 x i16> %i.cq to <4 x float>
  %i.cs = shufflevector <4 x float> %i.cp, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ct = fdiv <4 x float> %i.cs, %i.cc
  %i.cu = fadd <4 x float> %i.ct, %i.ce
  %i.cv = load <2 x i16>, ptr %i.cn, align 2, !tbaa !50
  %i.cw = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.cm, i64 1
  %i.cx = shufflevector <2 x i16> %i.cv, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cy = uitofp <4 x i16> %i.cx to <4 x float>
  %i.cz = shufflevector <4 x float> %i.cw, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.da = fdiv <4 x float> %i.cz, %i.cc
  %i.db = fadd <4 x float> %i.da, %i.ce
  %i.dc = fadd <4 x float> %i.cu, %i.db
  %i.dd = fmul <4 x float> %i.dc, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.de = fsub <4 x float> %i.dd, %i.bl           ; 2 uses
  %i.df = insertelement <4 x float> %i.de, float 1.000000e+00, i64 0
  %i.dg = fmul <4 x float> %i.de, %i.df
  %i.dh = insertelement <4 x float> %i.ca, float %.sroa.0103.0147.us, i64 1
  %i.di = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = fadd <4 x float> %i.dj, %i.dg           ; 3 uses
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dm = extractelement <4 x float> %i.dk, i64 1
  br i1 %exitcond188.not, label %._crit_edge153, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us

.lr.ph152.split:                                  ; preds = %.lr.ph152
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27
  %i.dp = sext i32 %1 to i64
  %wide.trip.count182 = sext i32 %2 to i64
  %i.dq = insertelement <4 x float> poison, float %i.be, i64 0
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45

_ZNK14btQuantizedBvh10getAabbMinEi.exit45:        ; preds = %.lr.ph152.split, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45
  %indvars.iv179 = phi i64 [ %i.dp, %.lr.ph152.split ], [ %indvars.iv.next180, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ] ; 2 uses
  %.sroa.0103.0147 = phi float [ 0.000000e+00, %.lr.ph152.split ], [ %i.eg, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ]
  %i.dr = phi <2 x float> [ zeroinitializer, %.lr.ph152.split ], [ %i.ef, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ]
  %i.ds = getelementptr inbounds [64 x i8], ptr %i.do, i64 %indvars.iv179 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %.sroa.0.0.copyload.i26 = load <2 x float>, ptr %i.dt, align 4
  %.sroa.3.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.3.0.copyload.i28 = load <2 x float>, ptr %i.ds, align 4
  %.sroa.3.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.582.8.vec.extract = load float, ptr %.sroa.3.0..sroa_idx.i27, align 4, !tbaa !43
  %.sroa.5.8.vec.extract = load float, ptr %.sroa.3.0..sroa_idx.i37, align 4, !tbaa !43
  %7 = shufflevector <2 x float> %.sroa.0.0.copyload.i26, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %8 = insertelement <4 x float> %7, float 1.000000e+00, i64 0
  %i.du = insertelement <4 x float> %8, float %.sroa.582.8.vec.extract, i64 3
  %9 = shufflevector <2 x float> %.sroa.3.0.copyload.i28, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %10 = insertelement <4 x float> %9, float -0.000000e+00, i64 0
  %i.dv = insertelement <4 x float> %10, float %.sroa.5.8.vec.extract, i64 3
  %i.dw = fadd <4 x float> %i.du, %i.dv
  %i.dx = fmul <4 x float> %i.dw, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.dy = fsub <4 x float> %i.dx, %i.bl           ; 2 uses
  %i.dz = insertelement <4 x float> %i.dy, float 1.000000e+00, i64 0
  %i.ea = fmul <4 x float> %i.dy, %i.dz
  %i.eb = insertelement <4 x float> %i.dq, float %.sroa.0103.0147, i64 1
  %i.ec = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ee = fadd <4 x float> %i.ed, %i.ea           ; 3 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eg = extractelement <4 x float> %i.ee, i64 1
  br i1 %exitcond183.not, label %._crit_edge153, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45

._crit_edge153:                                   ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit45, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us, %._crit_edge
  %i.eh = phi <4 x float> [ %i.bc, %._crit_edge ], [ %i.dk, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ %i.ee, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ] ; 4 uses
  %i.ei = extractelement <4 x float> %i.eh, i64 0
  %i.ej = fadd float %i.ei, -1.000000e+00
  %i.ek = fdiv float 1.000000e+00, %i.ej          ; 3 uses
  %i.el = extractelement <4 x float> %i.eh, i64 1
  %i.em = fmul float %i.ek, %i.el                 ; 2 uses
  %i.en = extractelement <4 x float> %i.eh, i64 2
  %i.eo = fmul float %i.ek, %i.en                 ; 2 uses
  %i.ep = extractelement <4 x float> %i.eh, i64 3
  %i.eq = fmul float %i.ek, %i.ep
  %i.er = fcmp olt float %i.em, %i.eo             ; 2 uses
  %..i = select i1 %i.er, float %i.eo, float %i.em
  %.5.i = zext i1 %i.er to i32
  %i.es = fcmp olt float %..i, %i.eq
  %i.et = select i1 %i.es, i32 2, i32 %.5.i
  ret i32 %i.et
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %struct.btQuantizedBvhNode, align 4 ; 4 uses
  %5 = alloca %struct.btOptimizedBvhNode, align 4 ; 4 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = icmp slt i32 %1, %2                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.d, align 4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25, !range !44, !noundef !45
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load <2 x float>, ptr %i.l, align 8      ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader

_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader: ; preds = %.lr.ph
  %i.n = sext i32 %1 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.o = sub nsw i64 %wide.trip.count, %i.n
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol

_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol:     ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader
  %i.p = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.n ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.0.0.copyload.i.prol = load <2 x float>, ptr %i.q, align 4
  %.sroa.3.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i40.prol = load <2 x float>, ptr %i.p, align 4
  %.sroa.3.0..sroa_idx.i41.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.589.8.vec.extract.prol = load float, ptr %.sroa.3.0..sroa_idx.i.prol, align 4, !tbaa !43
  %.sroa.587.8.vec.extract.prol = load float, ptr %.sroa.3.0..sroa_idx.i41.prol, align 4, !tbaa !43
  %i.r = fadd float %.sroa.589.8.vec.extract.prol, %.sroa.587.8.vec.extract.prol
  %i.s = fadd <2 x float> %.sroa.0.0.copyload.i.prol, %.sroa.0.0.copyload.i40.prol
  %i.t = fmul <2 x float> %i.s, splat (float 5.000000e-01)
  %i.u = fmul float %i.r, 5.000000e-01
  %i.v = fadd <2 x float> %i.t, zeroinitializer   ; 2 uses
  %i.w = fadd float %i.u, 0.000000e+00            ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.n, 1
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit

_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit: ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader
  %.lcssa184.unr = phi <2 x float> [ poison, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.v, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %.lcssa183.unr = phi float [ poison, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.w, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %indvars.iv.unr = phi i64 [ %i.n, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %indvars.iv.next.prol, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %.0.95100121.unr = phi float [ 0.000000e+00, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.w, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %.unr = phi <2 x float> [ zeroinitializer, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.v, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %i.x, %i.n
  br i1 %i.y, label %._crit_edge, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load <4 x float>, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.ab, align 8
  %i.af = sext i32 %1 to i64
  %wide.trip.count152 = sext i32 %2 to i64
  %i.ag = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ah = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit.us:       ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us, %.lr.ph.split.us
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.af, %.lr.ph.split.us ] ; 2 uses
  %.0.95100121.us = phi float [ %i.bh, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ 0.000000e+00, %.lr.ph.split.us ]
  %i.ai = phi <2 x float> [ %i.bg, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %.lr.ph.split.us ]
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.k, i64 %indvars.iv149 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !50
  %i.ap = insertelement <2 x i16> poison, i16 %i.am, i64 0
  %i.aq = insertelement <2 x i16> %i.ap, i16 %i.ao, i64 1
  %i.ar = uitofp <2 x i16> %i.aq to <2 x float>
  %i.as = fdiv <2 x float> %i.ar, %i.ag
  %i.at = fadd <2 x float> %i.as, %i.ah           ; 2 uses
  %shift = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.at, %shift
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.av = load <2 x i16>, ptr %i.ak, align 2, !tbaa !50
  %i.aw = uitofp <2 x i16> %i.av to <2 x float>
  %i.ax = fdiv <2 x float> %i.aw, %i.m
  %i.ay = fadd <2 x float> %i.ax, %i.ad
  %i.az = load <2 x i16>, ptr %i.aj, align 2, !tbaa !50
  %i.ba = uitofp <2 x i16> %i.az to <2 x float>
  %i.bb = fdiv <2 x float> %i.ba, %i.m
  %i.bc = fadd <2 x float> %i.bb, %i.ad
  %i.bd = fadd <2 x float> %i.ay, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul float %i.au, 5.000000e-01
  %i.bg = fadd <2 x float> %i.ai, %i.be           ; 2 uses
  %i.bh = fadd float %.0.95100121.us, %i.bf       ; 2 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %._crit_edge, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit:          ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %indvars.iv.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ] ; 3 uses
  %.0.95100121 = phi float [ %i.bz, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %.0.95100121.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bi = phi <2 x float> [ %i.by, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bj = getelementptr inbounds [64 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bk, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i40 = load <2 x float>, ptr %i.bj, align 4
  %.sroa.3.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.589.8.vec.extract = load float, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !43
  %.sroa.587.8.vec.extract = load float, ptr %.sroa.3.0..sroa_idx.i41, align 4, !tbaa !43
  %i.bl = fadd float %.sroa.589.8.vec.extract, %.sroa.587.8.vec.extract
  %i.bm = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i40
  %i.bn = fmul <2 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fmul float %i.bl, 5.000000e-01
  %i.bp = fadd <2 x float> %i.bi, %i.bn
  %i.bq = fadd float %.0.95100121, %i.bo
  %i.br = getelementptr [64 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 64
  %i.bt = getelementptr i8, ptr %i.br, i64 80
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.bt, align 4
  %.sroa.3.0..sroa_idx.i.1 = getelementptr i8, ptr %i.br, i64 88
  %.sroa.0.0.copyload.i40.1 = load <2 x float>, ptr %i.bs, align 4
  %.sroa.3.0..sroa_idx.i41.1 = getelementptr i8, ptr %i.br, i64 72
  %.sroa.589.8.vec.extract.1 = load float, ptr %.sroa.3.0..sroa_idx.i.1, align 4, !tbaa !43
  %.sroa.587.8.vec.extract.1 = load float, ptr %.sroa.3.0..sroa_idx.i41.1, align 4, !tbaa !43
  %i.bu = fadd float %.sroa.589.8.vec.extract.1, %.sroa.587.8.vec.extract.1
  %i.bv = fadd <2 x float> %.sroa.0.0.copyload.i.1, %.sroa.0.0.copyload.i40.1
  %i.bw = fmul <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fmul float %i.bu, 5.000000e-01
  %i.by = fadd <2 x float> %i.bp, %i.bw           ; 2 uses
  %i.bz = fadd float %i.bq, %i.bx                 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

._crit_edge:                                      ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us, %bb.a
  %.0.95100.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa183.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.bz, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.ca = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bg, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa184.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.by, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.cb = sitofp i32 %i.a to float
  %i.cc = fdiv float 1.000000e+00, %i.cb          ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.ce, %i.ca
  store <2 x float> %i.cf, ptr %6, align 8, !tbaa !40
  %i.cg = fmul float %i.cc, %.0.95100.lcssa
  store float %i.cg, ptr %i.b, align 8, !tbaa !40
  %i.ch = sext i32 %3 to i64                      ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !40
  br i1 %i.c, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cs = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ch
  %i.ct = sext i32 %1 to i64
  %wide.trip.count157 = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph138, %bb.h
  %indvars.iv154 = phi i64 [ %i.ct, %.lr.ph138 ], [ %indvars.iv.next155, %bb.h ] ; 5 uses
  %.037135 = phi i32 [ %1, %.lr.ph138 ], [ %.138, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cu = load i8, ptr %i.ck, align 8, !tbaa !25, !range !44, !noundef !45
  %i.cv = trunc nuw i8 %i.cu to i1                ; 2 uses
  br i1 %i.cv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %indvars.iv154 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !50
  %i.db = load <4 x float>, ptr %i.co, align 8
  %i.dc = load float, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !50
  %i.df = insertelement <2 x i16> poison, i16 %i.da, i64 0
  %i.dg = insertelement <2 x i16> %i.df, i16 %i.de, i64 1
  %i.dh = uitofp <2 x i16> %i.dg to <2 x float>
  %i.di = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fdiv <2 x float> %i.dh, %i.di           ; 2 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 0
  %i.dl = fadd float %i.dk, %i.dc
  %.sroa.7.8.vec.insert16.i.i57 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dl, i64 0
  %i.dm = load <2 x float>, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.cp, align 8, !tbaa !40 ; 2 uses
  %i.do = load <2 x i16>, ptr %i.cy, align 2, !tbaa !50
  %i.dp = uitofp <2 x i16> %i.do to <2 x float>
  %i.dq = fdiv <2 x float> %i.dp, %i.dm
  %i.dr = fadd <2 x float> %i.dq, %i.dn
  %i.ds = load <2 x i16>, ptr %i.cx, align 2, !tbaa !50
  %i.dt = uitofp <2 x i16> %i.ds to <2 x float>
  %i.du = fdiv <2 x float> %i.dt, %i.dm
  %i.dv = fadd <2 x float> %i.du, %i.dn
  %i.dw = extractelement <2 x float> %i.dj, i64 1
  %i.dx = fadd float %i.dw, %i.dc
  %.sroa.7.8.vec.insert16.i.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit68

bb.d:                                             ; preds = %bb.b
  %i.dy = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.dz = getelementptr inbounds [64 x i8], ptr %i.dy, i64 %indvars.iv154 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.0.0.copyload.i49 = load <2 x float>, ptr %i.ea, align 4
  %.sroa.3.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.3.0.copyload.i51 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i50, align 4, !tbaa !43
  %.sroa.0.0.copyload.i59 = load <2 x float>, ptr %i.dz, align 4
  %.sroa.3.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.3.0.copyload.i61 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i60, align 4, !tbaa !43
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit68

_ZNK14btQuantizedBvh10getAabbMinEi.exit68:        ; preds = %bb.c, %bb.d
  %.sroa.7.8.vec.insert16.i.pn.i53115 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i57, %bb.c ], [ %.sroa.3.0.copyload.i51, %bb.d ]
  %.sroa.0.4.vec.insert12.i.pn.i52113 = phi <2 x float> [ %i.dr, %bb.c ], [ %.sroa.0.0.copyload.i49, %bb.d ]
  %.sroa.0.4.vec.insert12.i.pn.i62 = phi <2 x float> [ %i.dv, %bb.c ], [ %.sroa.0.0.copyload.i59, %bb.d ]
  %.sroa.7.8.vec.insert16.i.pn.i63 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i67, %bb.c ], [ %.sroa.3.0.copyload.i61, %bb.d ]
  %foldExtExtBinop179 = fadd <2 x float> %.sroa.7.8.vec.insert16.i.pn.i53115, %.sroa.7.8.vec.insert16.i.pn.i63
  %i.eb = extractelement <2 x float> %foldExtExtBinop179, i64 0
  %i.ec = fadd <2 x float> %.sroa.0.4.vec.insert12.i.pn.i52113, %.sroa.0.4.vec.insert12.i.pn.i62
  %i.ed = fmul <2 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = fmul float %i.eb, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i76 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  store <2 x float> %i.ed, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i76, ptr %i.cr, align 8
  %i.ef = load float, ptr %i.cs, align 4, !tbaa !40
  %i.eg = fcmp ogt float %i.ef, %i.cj
  br i1 %i.eg, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit68
  %i.eh = sext i32 %.037135 to i64                ; 4 uses
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ei = load ptr, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %indvars.iv154 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !42
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ej, ptr noundef nonnull align 4 dereferenceable(16) %i.ek, i64 16, i1 false), !tbaa.struct !42
  %i.el = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.em = getelementptr inbounds [16 x i8], ptr %i.el, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN14btQuantizedBvh13swapLeafNodesEii.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.en = load ptr, ptr %i.cl, align 8, !tbaa !27 ; 2 uses
  %i.eo = getelementptr inbounds [64 x i8], ptr %i.en, i64 %indvars.iv154 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.eo, i64 64, i1 false), !tbaa.struct !57
  %i.ep = getelementptr inbounds [64 x i8], ptr %i.en, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.eo, ptr noundef nonnull align 4 dereferenceable(64) %i.ep, i64 64, i1 false), !tbaa.struct !57
  %i.eq = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.er = getelementptr inbounds [64 x i8], ptr %i.eq, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.er, ptr noundef nonnull align 4 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN14btQuantizedBvh13swapLeafNodesEii.exit

_ZN14btQuantizedBvh13swapLeafNodesEii.exit:       ; preds = %bb.f, %bb.g
  %i.es = add nsw i32 %.037135, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN14btQuantizedBvh13swapLeafNodesEii.exit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit68
  %.138 = phi i32 [ %i.es, %_ZN14btQuantizedBvh13swapLeafNodesEii.exit ], [ %.037135, %_ZNK14btQuantizedBvh10getAabbMinEi.exit68 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge139, label %bb.b

._crit_edge139:                                   ; preds = %bb.h, %._crit_edge
  %.037.lcssa = phi i32 [ %1, %._crit_edge ], [ %.138, %bb.h ] ; 3 uses
  %i.et = sdiv i32 %i.a, 3                        ; 2 uses
  %i.eu = add nsw i32 %i.et, %1
  %.not = icmp sle i32 %.037.lcssa, %i.eu
  %i.ev = xor i32 %i.et, -1
  %i.ew = add i32 %2, %i.ev
  %i.ex = icmp sge i32 %.037.lcssa, %i.ew
  %i.ey = or i1 %.not, %i.ex
  %i.ez = ashr i32 %i.a, 1
  %i.fa = add nsw i32 %i.ez, %1
  %.2 = select i1 %i.ey, i32 %i.fa, i32 %.037.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.2
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(244) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load float, ptr %3, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load <4 x float>, ptr %2, align 4
  %i.k = load <3 x float>, ptr %i.d, align 8, !tbaa !40 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load <3 x float>, ptr %i.g, align 8, !tbaa !40 ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.o = insertelement <4 x float> poison, float %i.f, i64 2
  %i.p = insertelement <4 x float> %i.o, float %i.h, i64 3
  %i.q = shufflevector <4 x float> %i.j, <4 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.r = fsub <4 x float> %i.q, %i.l
  %i.s = fmul <4 x float> %i.n, %i.r              ; 4 uses
  %i.t = extractelement <4 x float> %i.s, i64 0
  %i.u = fptoui float %i.t to i16
  %i.v = and i16 %i.u, -2                         ; 2 uses
  %i.w = extractelement <4 x float> %i.s, i64 1
  %i.x = fptoui float %i.w to i16
  %i.y = and i16 %i.x, -2                         ; 2 uses
  %i.z = extractelement <4 x float> %i.s, i64 2
  %i.aa = fptoui float %i.z to i16
  %i.ab = and i16 %i.aa, -2                       ; 2 uses
end_hunk_0
