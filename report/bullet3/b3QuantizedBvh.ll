Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3QuantizedBvh?download=true
inline.NumInlined: 607
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN14b3QuantizedBvhD2Ev:bb.a
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i8, ptr %i.c, align 16, !range !44
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !32  ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load i8, ptr %i.j, align 8, !range !44
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit: ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !32  ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i8, ptr %i.q, align 8, !range !44
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit5

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit5: ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !28  ; 2 uses
  %.not.i.i.i6 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i8, ptr %i.x, align 8, !range !44
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i7 = select i1 %.not.i.i.i6, i1 %i.z, i1 false
  br i1 %or.cond.i.i7, label %bb.h, label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit

bb.h:                                             ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit5
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #21
  unreachable

_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit: ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev.exit5, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !28 ; 2 uses
  %.not.i.i.i8 = icmp ne ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load i8, ptr %i.ae, align 8, !range !44
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i9 = select i1 %.not.i.i.i8, i1 %i.ag, i1 false
  br i1 %or.cond.i.i9, label %bb.j, label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit10

bb.j:                                             ; preds = %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable

_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit10: ; preds = %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14b3QuantizedBvhD0Ev(ptr noundef nonnull align 16 dereferenceable(252) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14b3QuantizedBvhD2Ev(ptr noundef nonnull align 16 dead_on_return(252) dereferenceable(252) %0) #20
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN14b3QuantizedBvhdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable

_ZN14b3QuantizedBvhdlEPv.exit:                    ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN14b3QuantizedBvh30assignInternalNodeFromLeafNodeEii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !32
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !32
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !28
  %i.n = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !28
  %i.q = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN14b3QuantizedBvh17calcSplittingAxisEii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 2 uses
  %i.b = icmp slt i32 %1, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !26, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 16             ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load <4 x float>, ptr %i.j, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load <4 x float>, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <4 x float>, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load float, ptr %i.p, align 16           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load <4 x float>, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load <4 x float>, ptr %i.t, align 8
  %i.v = sext i32 %1 to i64                       ; 6 uses
  %wide.trip.count182 = sext i32 %2 to i64        ; 4 uses
  br i1 %i.e, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader: ; preds = %.lr.ph
  %i.w = sub nsw i64 %wide.trip.count182, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol:     ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader
  %i.x = getelementptr inbounds [64 x i8], ptr %i.g, i64 %i.v ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.0.copyload.i.prol = load <2 x float>, ptr %i.y, align 16
  %.sroa.3.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.3.0.copyload.i.prol = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.prol, align 8, !tbaa !41
  %.sroa.0.0.copyload.i17.prol = load <2 x float>, ptr %i.x, align 16
  %.sroa.3.0..sroa_idx.i18.prol = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3.0.copyload.i19.prol = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i18.prol, align 8, !tbaa !41
  %3 = extractelement <2 x float> %.sroa.3.0.copyload.i.prol, i64 0
  %4 = extractelement <2 x float> %.sroa.3.0.copyload.i19.prol, i64 0
  %i.z = fadd float %3, %4
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = fadd <2 x float> %.sroa.0.0.copyload.i.prol, %.sroa.0.0.copyload.i17.prol
  %i.ac = fmul <2 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = fadd <2 x float> %i.ac, zeroinitializer ; 2 uses
  %i.ae = fadd float %i.aa, 0.000000e+00
  %.sroa.13137.8.vec.insert.prol = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.v, 1
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit: ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader
  %.lcssa217.unr = phi <2 x float> [ poison, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ad, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %.sroa.13137.8.vec.insert.lcssa.unr = phi <2 x float> [ poison, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %.sroa.13137.8.vec.insert.prol, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %indvars.iv.unr = phi i64 [ %i.v, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %indvars.iv.next.prol, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %.sroa.13137.0162.unr = phi <2 x float> [ zeroinitializer, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %.sroa.13137.8.vec.insert.prol, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %.sroa.0122.0161.unr = phi <2 x float> [ zeroinitializer, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ad, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %i.af = add nsw i64 %wide.trip.count182, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %.lr.ph170, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader: ; preds = %.lr.ph
  %i.ah = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aj = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us:       ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ %i.v, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader ] ; 2 uses
  %.sroa.13137.0162.us = phi <2 x float> [ %.sroa.13137.8.vec.insert.us, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader ] ; 2 uses
  %.sroa.0122.0161.us = phi <2 x float> [ %i.bx, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader ]
  %i.am = getelementptr inbounds [16 x i8], ptr %i.i, i64 %indvars.iv179 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !50
  %i.at = load i16, ptr %i.am, align 2, !tbaa !50
  %i.au = insertelement <2 x i16> poison, i16 %i.ao, i64 0
  %i.av = insertelement <2 x i16> %i.au, i16 %i.at, i64 1
  %i.aw = uitofp <2 x i16> %i.av to <2 x float>
  %i.ax = fdiv <2 x float> %i.aw, %i.ah           ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %i.az = fadd float %i.ay, %i.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !50
  %i.be = extractelement <2 x float> %i.ax, i64 1
  %i.bf = fadd float %i.be, %i.q
  %i.bg = insertelement <2 x i16> poison, i16 %i.aq, i64 0
  %i.bh = insertelement <2 x i16> %i.bg, i16 %i.bb, i64 1
  %i.bi = uitofp <2 x i16> %i.bh to <2 x float>
  %i.bj = fdiv <2 x float> %i.bi, %i.ai
  %i.bk = fadd <2 x float> %i.bj, %i.aj           ; 2 uses
  %i.bl = insertelement <2 x i16> poison, i16 %i.as, i64 0
  %i.bm = insertelement <2 x i16> %i.bl, i16 %i.bd, i64 1
  %i.bn = uitofp <2 x i16> %i.bm to <2 x float>
  %i.bo = fdiv <2 x float> %i.bn, %i.ak
  %i.bp = fadd <2 x float> %i.bo, %i.al           ; 2 uses
  %shift = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bp, %shift
  %i.bq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.br = fmul float %i.bq, 5.000000e-01
  %i.bs = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bt = insertelement <2 x float> %i.bs, float %i.az, i64 0
  %i.bu = insertelement <2 x float> %i.bk, float %i.bf, i64 0
  %i.bv = fadd <2 x float> %i.bt, %i.bu
  %i.bw = fmul <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fadd <2 x float> %.sroa.0122.0161.us, %i.bw ; 2 uses
  %.sroa.13137.8.vec.extract.us = extractelement <2 x float> %.sroa.13137.0162.us, i64 0
  %i.by = fadd float %.sroa.13137.8.vec.extract.us, %i.br
  %.sroa.13137.8.vec.insert.us = insertelement <2 x float> %.sroa.13137.0162.us, float %i.by, i64 0 ; 2 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.lr.ph170, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us, !llvm.loop !66

_ZNK14b3QuantizedBvh10getAabbMinEi.exit:          ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ], [ %indvars.iv.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ] ; 3 uses
  %.sroa.13137.0162 = phi <2 x float> [ %.sroa.13137.8.vec.insert.1, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ], [ %.sroa.13137.0162.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ] ; 2 uses
  %.sroa.0122.0161 = phi <2 x float> [ %i.co, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ], [ %.sroa.0122.0161.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bz = getelementptr inbounds [64 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ca, align 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.i17 = load <2 x float>, ptr %i.bz, align 16
  %.sroa.3.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.3.0.copyload.i19 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i18, align 8, !tbaa !41
  %5 = extractelement <2 x float> %.sroa.3.0.copyload.i, i64 0
  %6 = extractelement <2 x float> %.sroa.3.0.copyload.i19, i64 0
  %i.cb = fadd float %5, %6
  %i.cc = fmul float %i.cb, 5.000000e-01
  %i.cd = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i17
  %i.ce = fmul <2 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = fadd <2 x float> %.sroa.0122.0161, %i.ce
  %.sroa.13137.8.vec.extract = extractelement <2 x float> %.sroa.13137.0162, i64 0
  %i.cg = fadd float %.sroa.13137.8.vec.extract, %i.cc
  %i.ch = getelementptr [64 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 64
  %i.cj = getelementptr i8, ptr %i.ch, i64 80
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.cj, align 16
  %.sroa.3.0..sroa_idx.i.1 = getelementptr i8, ptr %i.ch, i64 88
  %.sroa.3.0.copyload.i.1 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !41
  %.sroa.0.0.copyload.i17.1 = load <2 x float>, ptr %i.ci, align 16
  %.sroa.3.0..sroa_idx.i18.1 = getelementptr i8, ptr %i.ch, i64 72
  %.sroa.3.0.copyload.i19.1 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i18.1, align 8, !tbaa !41
  %7 = extractelement <2 x float> %.sroa.3.0.copyload.i.1, i64 0
  %8 = extractelement <2 x float> %.sroa.3.0.copyload.i19.1, i64 0
  %i.ck = fadd float %7, %8
  %i.cl = fmul float %i.ck, 5.000000e-01
  %i.cm = fadd <2 x float> %.sroa.0.0.copyload.i.1, %.sroa.0.0.copyload.i17.1
  %i.cn = fmul <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fadd <2 x float> %i.cf, %i.cn           ; 2 uses
  %i.cp = fadd float %i.cg, %i.cl
  %.sroa.13137.8.vec.insert.1 = insertelement <2 x float> %.sroa.13137.0162, float %i.cp, i64 0 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count182
  br i1 %exitcond.not.1, label %.lr.ph170, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.a
  %i.cq = sitofp i32 %i.a to float
  br label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us
  %.sroa.0122.0.lcssa.ph = phi <2 x float> [ %i.bx, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa217.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.co, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ]
  %.sroa.13137.0.lcssa.ph = phi <2 x float> [ %.sroa.13137.8.vec.insert.us, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ %.sroa.13137.8.vec.insert.lcssa.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %.sroa.13137.8.vec.insert.1, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ]
  %i.cr = sitofp i32 %i.a to float                ; 3 uses
  %i.cs = fdiv float 1.000000e+00, %i.cr          ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.cu, %.sroa.0122.0.lcssa.ph ; 2 uses
  %.sroa.13137.8.vec.extract140200 = extractelement <2 x float> %.sroa.13137.0.lcssa.ph, i64 0
  %i.cw = fmul float %i.cs, %.sroa.13137.8.vec.extract140200 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !26, !range !44, !noundef !45
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.lr.ph170.split.us, label %.lr.ph170.split

.lr.ph170.split.us:                               ; preds = %.lr.ph170
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !32
  %i.di = load <4 x float>, ptr %i.df, align 16
  %i.dj = load <4 x float>, ptr %i.de, align 4
  %i.dk = load <4 x float>, ptr %i.dd, align 8
  %i.dl = load float, ptr %i.dc, align 16, !tbaa !41 ; 2 uses
  %i.dm = load <4 x float>, ptr %i.db, align 4
  %i.dn = load <4 x float>, ptr %i.da, align 8
  %i.do = sext i32 %1 to i64
  %wide.trip.count192 = sext i32 %2 to i64
  %i.dp = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dq = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ds = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dt = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us

_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us:     ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us, %.lr.ph170.split.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us ], [ %i.do, %.lr.ph170.split.us ] ; 2 uses
  %.sroa.13.0167.us = phi <2 x float> [ %.sroa.13.8.vec.insert.us, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us ], [ zeroinitializer, %.lr.ph170.split.us ] ; 2 uses
  %.sroa.0100.0166.us = phi <2 x float> [ %i.fj, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us ], [ zeroinitializer, %.lr.ph170.split.us ]
  %i.du = getelementptr inbounds [16 x i8], ptr %i.dh, i64 %indvars.iv189 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 10
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !50
  %i.eb = load i16, ptr %i.du, align 2, !tbaa !50
  %i.ec = insertelement <2 x i16> poison, i16 %i.dw, i64 0
  %i.ed = insertelement <2 x i16> %i.ec, i16 %i.eb, i64 1
  %i.ee = uitofp <2 x i16> %i.ed to <2 x float>
  %i.ef = fdiv <2 x float> %i.ee, %i.dt           ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0
  %i.eh = fadd float %i.eg, %i.dl
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !50
  %i.em = extractelement <2 x float> %i.ef, i64 1
  %i.en = fadd float %i.em, %i.dl
  %i.eo = insertelement <2 x i16> poison, i16 %i.dy, i64 0
  %i.ep = insertelement <2 x i16> %i.eo, i16 %i.ej, i64 1
  %i.eq = uitofp <2 x i16> %i.ep to <2 x float>
  %i.er = fdiv <2 x float> %i.eq, %i.dp
  %i.es = fadd <2 x float> %i.er, %i.dq           ; 2 uses
  %i.et = insertelement <2 x i16> poison, i16 %i.ea, i64 0
  %i.eu = insertelement <2 x i16> %i.et, i16 %i.el, i64 1
  %i.ev = uitofp <2 x i16> %i.eu to <2 x float>
  %i.ew = fdiv <2 x float> %i.ev, %i.dr
  %i.ex = fadd <2 x float> %i.ew, %i.ds           ; 2 uses
  %shift208 = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop209 = fadd <2 x float> %i.ex, %shift208
  %i.ey = extractelement <2 x float> %foldExtExtBinop209, i64 0
  %i.ez = fmul float %i.ey, 5.000000e-01
  %i.fa = fsub float %i.ez, %i.cw                 ; 2 uses
  %i.fb = fmul float %i.fa, %i.fa
  %i.fc = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fd = insertelement <2 x float> %i.fc, float %i.eh, i64 0
  %i.fe = insertelement <2 x float> %i.es, float %i.en, i64 0
  %i.ff = fadd <2 x float> %i.fd, %i.fe
  %i.fg = fmul <2 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = fsub <2 x float> %i.fg, %i.cv           ; 2 uses
  %i.fi = fmul <2 x float> %i.fh, %i.fh
  %i.fj = fadd <2 x float> %.sroa.0100.0166.us, %i.fi ; 2 uses
  %.sroa.13.8.vec.extract.us = extractelement <2 x float> %.sroa.13.0167.us, i64 0
  %i.fk = fadd float %.sroa.13.8.vec.extract.us, %i.fb
  %.sroa.13.8.vec.insert.us = insertelement <2 x float> %.sroa.13.0167.us, float %i.fk, i64 0 ; 2 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge171, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us, !llvm.loop !67

.lr.ph170.split:                                  ; preds = %.lr.ph170
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fm = load ptr, ptr %i.fl, align 16, !tbaa !28
  %i.fn = sext i32 %1 to i64
  %wide.trip.count187 = sext i32 %2 to i64
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45

_ZNK14b3QuantizedBvh10getAabbMinEi.exit45:        ; preds = %.lr.ph170.split, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45
  %indvars.iv184 = phi i64 [ %i.fn, %.lr.ph170.split ], [ %indvars.iv.next185, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45 ] ; 2 uses
  %.sroa.13.0167 = phi <2 x float> [ zeroinitializer, %.lr.ph170.split ], [ %.sroa.13.8.vec.insert, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45 ] ; 2 uses
  %.sroa.0100.0166 = phi <2 x float> [ zeroinitializer, %.lr.ph170.split ], [ %i.fy, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45 ]
  %i.fo = getelementptr inbounds [64 x i8], ptr %i.fm, i64 %indvars.iv184 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.sroa.0.0.copyload.i26 = load <2 x float>, ptr %i.fp, align 16
  %.sroa.3.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %.sroa.3.0.copyload.i28 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i27, align 8, !tbaa !41
  %.sroa.0.0.copyload.i36 = load <2 x float>, ptr %i.fo, align 16
  %.sroa.3.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.3.0.copyload.i38 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i37, align 8, !tbaa !41
  %9 = extractelement <2 x float> %.sroa.3.0.copyload.i28, i64 0
  %10 = extractelement <2 x float> %.sroa.3.0.copyload.i38, i64 0
  %i.fq = fadd float %9, %10
  %i.fr = fmul float %i.fq, 5.000000e-01
  %i.fs = fsub float %i.fr, %i.cw                 ; 2 uses
  %i.ft = fmul float %i.fs, %i.fs
  %i.fu = fadd <2 x float> %.sroa.0.0.copyload.i26, %.sroa.0.0.copyload.i36
  %i.fv = fmul <2 x float> %i.fu, splat (float 5.000000e-01)
  %i.fw = fsub <2 x float> %i.fv, %i.cv           ; 2 uses
  %i.fx = fmul <2 x float> %i.fw, %i.fw
  %i.fy = fadd <2 x float> %.sroa.0100.0166, %i.fx ; 2 uses
  %.sroa.13.8.vec.extract = extractelement <2 x float> %.sroa.13.0167, i64 0
  %i.fz = fadd float %.sroa.13.8.vec.extract, %i.ft
  %.sroa.13.8.vec.insert = insertelement <2 x float> %.sroa.13.0167, float %i.fz, i64 0 ; 2 uses
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge171, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45, !llvm.loop !67

._crit_edge171:                                   ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us, %._crit_edge
  %i.ga = phi float [ %i.cq, %._crit_edge ], [ %i.cr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us ], [ %i.cr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45 ]
  %.sroa.0100.0.lcssa = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.fj, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us ], [ %i.fy, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45 ] ; 2 uses
  %.sroa.13.0.lcssa = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %.sroa.13.8.vec.insert.us, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45.us ], [ %.sroa.13.8.vec.insert, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit45 ]
  %i.gb = fadd float %i.ga, -1.000000e+00
  %i.gc = fdiv float 1.000000e+00, %i.gb          ; 3 uses
  %.sroa.0100.0.vec.extract103 = extractelement <2 x float> %.sroa.0100.0.lcssa, i64 0
  %i.gd = fmul float %i.gc, %.sroa.0100.0.vec.extract103 ; 2 uses
  %.sroa.0100.4.vec.extract110 = extractelement <2 x float> %.sroa.0100.0.lcssa, i64 1
  %i.ge = fmul float %i.gc, %.sroa.0100.4.vec.extract110 ; 2 uses
  %.sroa.13.8.vec.extract117 = extractelement <2 x float> %.sroa.13.0.lcssa, i64 0
  %i.gf = fmul float %i.gc, %.sroa.13.8.vec.extract117
  %i.gg = fcmp olt float %i.gd, %i.ge             ; 2 uses
  %..i = select i1 %i.gg, float %i.ge, float %i.gd
  %.5.i = zext i1 %i.gg to i32
  %i.gh = fcmp olt float %..i, %i.gf
  %i.gi = select i1 %i.gh, i32 2, i32 %.5.i
  ret i32 %i.gi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN14b3QuantizedBvh25sortAndCalcSplittingIndexEiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.i = alloca %struct.b3QuantizedBvhNodeData, align 16 ; 4 uses
  %4 = alloca %struct.b3OptimizedBvhNode, align 16 ; 4 uses
  %5 = alloca %class.b3Vector3, align 16          ; 6 uses
  %6 = alloca %class.b3Vector3, align 16          ; 5 uses
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = icmp slt i32 %1, %2                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i8, ptr %i.d, align 8, !tbaa !26, !range !44, !noundef !45
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 16             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load <4 x float>, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <2 x float>, ptr %i.k, align 16     ; 2 uses
  %i.p = load <2 x float>, ptr %i.n, align 16     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load <4 x float>, ptr %i.q, align 8
  %i.s = sext i32 %1 to i64                       ; 6 uses
  %wide.trip.count136 = sext i32 %2 to i64        ; 4 uses
  br i1 %i.f, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader: ; preds = %.lr.ph
  %i.t = sub nsw i64 %wide.trip.count136, %i.s
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol:     ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader
  %i.u = getelementptr inbounds [64 x i8], ptr %i.h, i64 %i.s ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.0.0.copyload.i.prol = load <2 x float>, ptr %i.v, align 16
  %.sroa.3.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.3.0.copyload.i.prol = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.prol, align 8, !tbaa !41
  %.sroa.0.0.copyload.i40.prol = load <2 x float>, ptr %i.u, align 16
  %.sroa.3.0..sroa_idx.i41.prol = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3.0.copyload.i42.prol = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i41.prol, align 8, !tbaa !41
  %7 = extractelement <2 x float> %.sroa.3.0.copyload.i.prol, i64 0
  %8 = extractelement <2 x float> %.sroa.3.0.copyload.i42.prol, i64 0
  %i.w = fadd float %7, %8
  %i.x = fadd <2 x float> %.sroa.0.0.copyload.i.prol, %.sroa.0.0.copyload.i40.prol
  %i.y = fmul <2 x float> %i.x, splat (float 5.000000e-01)
  %i.z = fmul float %i.w, 5.000000e-01
  %i.aa = fadd <2 x float> %i.y, zeroinitializer  ; 2 uses
  %i.ab = fadd float %i.z, 0.000000e+00           ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.s, 1
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit: ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader
  %.lcssa168.unr = phi <2 x float> [ poison, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.aa, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %.lcssa167.unr = phi float [ poison, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ab, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %indvars.iv.unr = phi i64 [ %i.s, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %indvars.iv.next.prol, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %.unr = phi float [ 0.000000e+00, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ab, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %.unr169 = phi <2 x float> [ zeroinitializer, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.aa, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol ]
  %i.ac = add nsw i64 %wide.trip.count136, -1
  %i.ad = icmp eq i64 %i.ac, %i.s
  br i1 %i.ad, label %._crit_edge, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader: ; preds = %.lr.ph
  %i.ae = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us

_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us:       ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ %i.s, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader ] ; 2 uses
  %i.ag = phi float [ %i.bg, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ 0.000000e+00, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader ]
  %i.ah = phi <2 x float> [ %i.bf, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us.preheader ]
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.j, i64 %indvars.iv133 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !50
  %i.ao = insertelement <2 x i16> poison, i16 %i.al, i64 0
  %i.ap = insertelement <2 x i16> %i.ao, i16 %i.an, i64 1
  %i.aq = uitofp <2 x i16> %i.ap to <2 x float>
  %i.ar = fdiv <2 x float> %i.aq, %i.ae
  %i.as = fadd <2 x float> %i.ar, %i.af           ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = load <2 x i16>, ptr %i.aj, align 2, !tbaa !50
  %i.av = uitofp <2 x i16> %i.au to <2 x float>
  %i.aw = fdiv <2 x float> %i.av, %i.o
  %i.ax = fadd <2 x float> %i.aw, %i.p
  %i.ay = load <2 x i16>, ptr %i.ai, align 2, !tbaa !50
  %i.az = uitofp <2 x i16> %i.ay to <2 x float>
  %i.ba = fdiv <2 x float> %i.az, %i.o
  %i.bb = fadd <2 x float> %i.ba, %i.p
  %i.bc = fadd <2 x float> %i.ax, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul float %i.at, 5.000000e-01
  %i.bf = fadd <2 x float> %i.ah, %i.bd           ; 2 uses
  %i.bg = fadd float %i.be, %i.ag                 ; 2 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us, !llvm.loop !68

_ZNK14b3QuantizedBvh10getAabbMinEi.exit:          ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ], [ %indvars.iv.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ] ; 3 uses
  %i.bh = phi float [ %i.bz, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ], [ %.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bi = phi <2 x float> [ %i.by, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ], [ %.unr169, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bj = getelementptr inbounds [64 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bk, align 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.i40 = load <2 x float>, ptr %i.bj, align 16
  %.sroa.3.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.3.0.copyload.i42 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i41, align 8, !tbaa !41
  %9 = extractelement <2 x float> %.sroa.3.0.copyload.i, i64 0
  %10 = extractelement <2 x float> %.sroa.3.0.copyload.i42, i64 0
  %i.bl = fadd float %9, %10
  %i.bm = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i40
  %i.bn = fmul <2 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fmul float %i.bl, 5.000000e-01
  %i.bp = fadd <2 x float> %i.bi, %i.bn
  %i.bq = fadd float %i.bo, %i.bh
  %i.br = getelementptr [64 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 64
  %i.bt = getelementptr i8, ptr %i.br, i64 80
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.bt, align 16
  %.sroa.3.0..sroa_idx.i.1 = getelementptr i8, ptr %i.br, i64 88
  %.sroa.3.0.copyload.i.1 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !41
  %.sroa.0.0.copyload.i40.1 = load <2 x float>, ptr %i.bs, align 16
  %.sroa.3.0..sroa_idx.i41.1 = getelementptr i8, ptr %i.br, i64 72
  %.sroa.3.0.copyload.i42.1 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i41.1, align 8, !tbaa !41
  %11 = extractelement <2 x float> %.sroa.3.0.copyload.i.1, i64 0
  %12 = extractelement <2 x float> %.sroa.3.0.copyload.i42.1, i64 0
  %i.bu = fadd float %11, %12
  %i.bv = fadd <2 x float> %.sroa.0.0.copyload.i.1, %.sroa.0.0.copyload.i40.1
  %i.bw = fmul <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fmul float %i.bu, 5.000000e-01
  %i.by = fadd <2 x float> %i.bp, %i.bw           ; 2 uses
  %i.bz = fadd float %i.bx, %i.bq                 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count136
  br i1 %exitcond.not.1, label %._crit_edge, label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit, !llvm.loop !68

._crit_edge:                                      ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us, %bb.a
  %.lcssa112 = phi float [ 0.000000e+00, %bb.a ], [ %i.bg, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa167.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.bz, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ]
  %i.ca = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bf, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa168.unr, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.by, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit ]
  %i.cb = sitofp i32 %i.a to float
  %i.cc = fdiv float 1.000000e+00, %i.cb          ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.ce, %i.ca
  store <2 x float> %i.cf, ptr %5, align 16, !tbaa !41
  %i.cg = fmul float %i.cc, %.lcssa112
  store float %i.cg, ptr %i.b, align 8, !tbaa !41
  %i.ch = sext i32 %3 to i64                      ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60
  br i1 %i.c, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ch
  %i.ct = sext i32 %1 to i64
  %wide.trip.count141 = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph122, %bb.h
  %indvars.iv138 = phi i64 [ %i.ct, %.lr.ph122 ], [ %indvars.iv.next139, %bb.h ] ; 5 uses
  %.037119 = phi i32 [ %1, %.lr.ph122 ], [ %.138, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cu = load i8, ptr %i.ck, align 8, !tbaa !26, !range !44, !noundef !45
  %i.cv = trunc nuw i8 %i.cu to i1                ; 2 uses
  br i1 %i.cv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cw = load ptr, ptr %i.cm, align 16, !tbaa !32
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %indvars.iv138 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !50
  %i.db = load <4 x float>, ptr %i.co, align 8
  %i.dc = load float, ptr %i.cq, align 8, !tbaa !41 ; 2 uses
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
  %i.dm = load <2 x float>, ptr %i.cn, align 16, !tbaa !60 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.cp, align 16, !tbaa !41 ; 2 uses
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
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit68

bb.d:                                             ; preds = %bb.b
  %i.dy = load ptr, ptr %i.cl, align 16, !tbaa !28
  %i.dz = getelementptr inbounds [64 x i8], ptr %i.dy, i64 %indvars.iv138 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.0.0.copyload.i49 = load <2 x float>, ptr %i.ea, align 16
  %.sroa.3.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.3.0.copyload.i51 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i50, align 8, !tbaa !41
  %.sroa.0.0.copyload.i59 = load <2 x float>, ptr %i.dz, align 16
  %.sroa.3.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.3.0.copyload.i61 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i60, align 8, !tbaa !41
  br label %_ZNK14b3QuantizedBvh10getAabbMinEi.exit68

_ZNK14b3QuantizedBvh10getAabbMinEi.exit68:        ; preds = %bb.c, %bb.d
  %.sroa.7.8.vec.insert16.i.pn.i53109 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i57, %bb.c ], [ %.sroa.3.0.copyload.i51, %bb.d ]
  %.sroa.0.4.vec.insert12.i.pn.i52107 = phi <2 x float> [ %i.dr, %bb.c ], [ %.sroa.0.0.copyload.i49, %bb.d ]
  %.sroa.0.4.vec.insert12.i.pn.i62 = phi <2 x float> [ %i.dv, %bb.c ], [ %.sroa.0.0.copyload.i59, %bb.d ]
  %.sroa.7.8.vec.insert16.i.pn.i63 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i67, %bb.c ], [ %.sroa.3.0.copyload.i61, %bb.d ]
  %foldExtExtBinop163 = fadd <2 x float> %.sroa.7.8.vec.insert16.i.pn.i53109, %.sroa.7.8.vec.insert16.i.pn.i63
  %i.eb = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.ec = fadd <2 x float> %.sroa.0.4.vec.insert12.i.pn.i52107, %.sroa.0.4.vec.insert12.i.pn.i62
  %i.ed = fmul <2 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = fmul float %i.eb, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i.i76 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  store <2 x float> %i.ed, ptr %6, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i76, ptr %i.cr, align 8
  %i.ef = load float, ptr %i.cs, align 4, !tbaa !60
  %i.eg = fcmp ogt float %i.ef, %i.cj
  br i1 %i.eg, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK14b3QuantizedBvh10getAabbMinEi.exit68
  %i.eh = sext i32 %.037119 to i64                ; 4 uses
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ei = load ptr, ptr %i.cm, align 16, !tbaa !32 ; 2 uses
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %indvars.iv138 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ej, ptr noundef nonnull align 16 dereferenceable(16) %i.ek, i64 16, i1 false)
  %i.el = load ptr, ptr %i.cm, align 16, !tbaa !32
  %i.em = getelementptr inbounds [16 x i8], ptr %i.el, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.em, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN14b3QuantizedBvh13swapLeafNodesEii.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.en = load ptr, ptr %i.cl, align 16, !tbaa !28 ; 2 uses
  %i.eo = getelementptr inbounds [64 x i8], ptr %i.en, i64 %indvars.iv138 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.eo, i64 64, i1 false), !tbaa.struct !57
  %i.ep = getelementptr inbounds [64 x i8], ptr %i.en, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.eo, ptr noundef nonnull align 16 dereferenceable(64) %i.ep, i64 64, i1 false), !tbaa.struct !57
  %i.eq = load ptr, ptr %i.cl, align 16, !tbaa !28
  %i.er = getelementptr inbounds [64 x i8], ptr %i.eq, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.er, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN14b3QuantizedBvh13swapLeafNodesEii.exit

_ZN14b3QuantizedBvh13swapLeafNodesEii.exit:       ; preds = %bb.f, %bb.g
  %i.es = add nsw i32 %.037119, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN14b3QuantizedBvh13swapLeafNodesEii.exit, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit68
  %.138 = phi i32 [ %i.es, %_ZN14b3QuantizedBvh13swapLeafNodesEii.exit ], [ %.037119, %_ZNK14b3QuantizedBvh10getAabbMinEi.exit68 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge123, label %bb.b, !llvm.loop !69

._crit_edge123:                                   ; preds = %bb.h, %._crit_edge
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14b3QuantizedBvh21mergeInternalNodeAabbEiRK9b3Vector3S2_(ptr noundef nonnull align 16 dereferenceable(252) %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load float, ptr %3, align 16, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load <4 x float>, ptr %2, align 16
  %i.k = load <3 x float>, ptr %i.d, align 16, !tbaa !41 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load <3 x float>, ptr %i.g, align 16, !tbaa !41 ; 2 uses
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
