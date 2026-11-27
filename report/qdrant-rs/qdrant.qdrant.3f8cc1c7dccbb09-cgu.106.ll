Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.106?download=true
inline.NumInlined: 524
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECsl8OoimOLbh_6qdrant:bb.a
bb.r:                                             ; preds = %bb.i, %bb.p, %.lr.ph, %bb.a, %bb.b, %bb.aa
  %.sroa.0.1 = phi float [ %i.ck, %bb.aa ], [ %i.bg, %.lr.ph ], [ 1.200000e+01, %bb.a ], [ %i.v, %bb.i ], [ %i.as, %bb.p ], [ 1.200000e+01, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret float %.sroa.0.1

bb.s:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.k
  %.lcssa98 = phi i64 [ %i.y, %bb.k ], [ %i.bk, %bb.t ], [ %i.bp, %bb.u ], [ %i.bs, %bb.v ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa98, i64 noundef 544, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.t:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !5 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 544
  br i1 %i.bl, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 544
  br i1 %i.bq, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 544
  br i1 %i.bt, label %.lr.ph, label %bb.s

bb.w:                                             ; preds = %.thread
  %i.bu = uitofp i64 %i.d to float
  %i.bv = tail call float @llvm.log2.f32(float %i.bu)
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.018.0 = phi float [ %i.by, %bb.y ], [ %i.bv, %bb.w ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  br label %bb.z

bb.y:                                             ; preds = %.thread
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc11log_table_86logs_8, i64 %i.d
  %i.by = load float, ptr %i.bx, align 4, !noundef !5
  br label %bb.x

bb.z:                                             ; preds = %bb.x, %bb.ad
  %.lcssa8796 = phi i32 [ 0, %bb.x ], [ %.lcssa8794, %bb.ad ] ; 4 uses
  %.sroa.0.291 = phi float [ 0.000000e+00, %bb.x ], [ %.sroa.0.3, %bb.ad ] ; 4 uses
  %.sroa.016.090 = phi i64 [ 1, %bb.x ], [ %.sroa.016.1, %bb.ad ] ; 2 uses
  %.sroa.019.089 = phi i32 [ 0, %bb.x ], [ %.sroa.019.1, %bb.ad ] ; 5 uses
  %.sroa.026.0.idx88 = phi i64 [ 0, %bb.x ], [ %.sroa.026.0.add, %bb.ad ] ; 2 uses
  %.sroa.026.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.026.0.idx88
  %.sroa.026.0.add = add nuw nsw i64 %.sroa.026.0.idx88, 4 ; 2 uses
  %i.bz = load i32, ptr %.sroa.026.0.ptr, align 4, !noundef !5 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.ad
  store i32 %.lcssa8794, ptr %i.bw, align 4
  %i.cb = shl nuw nsw i64 %.sroa.016.1, 1
  %i.cc = add nuw nsw i64 %i.cb, 18
  %i.cd = uitofp nneg i64 %i.cc to float
  %i.ce = fadd float %.sroa.0.3, %i.cd
  %i.cf = call { float, i64 } @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc8bit_cost15shannon_entropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 18, i64 noundef 18) ; 2 uses
  %i.cg = extractvalue { float, i64 } %i.cf, 0    ; 2 uses
  %i.ch = extractvalue { float, i64 } %i.cf, 1
  %i.ci = uitofp i64 %i.ch to float               ; 2 uses
  %i.cj = fcmp olt float %i.cg, %i.ci
  %spec.store.select = select i1 %i.cj, float %i.ci, float %i.cg
  %i.ck = fadd float %i.ce, %spec.store.select
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.ab:                                            ; preds = %bb.z
  %i.cl = add i32 %.sroa.019.089, 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.cm = icmp eq i32 %.sroa.019.089, 0
  br i1 %i.cm, label %.loopexit, label %bb.ae

bb.ad:                                            ; preds = %.loopexit, %bb.ab
  %.lcssa8794 = phi i32 [ %.lcssa8796, %bb.ab ], [ %.lcssa8795, %.loopexit ] ; 2 uses
  %.sroa.019.1 = phi i32 [ %i.cl, %bb.ab ], [ 0, %.loopexit ]
  %.sroa.016.1 = phi i64 [ %.sroa.016.090, %bb.ab ], [ %..i72, %.loopexit ] ; 2 uses
  %.sroa.0.3 = phi float [ %.sroa.0.291, %bb.ab ], [ %i.df, %.loopexit ] ; 2 uses
  %i.cn = icmp eq i64 %.sroa.026.0.add, 2176
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.ae:                                            ; preds = %bb.ac
  %i.co = icmp ult i32 %.sroa.019.089, 3
  br i1 %i.co, label %bb.af, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %bb.ae
  %i.cp = add i32 %.sroa.019.089, -2
  br label %.lr.ph86

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i32, ptr %i.a, align 4, !noundef !5
  %i.cr = add i32 %i.cq, %.sroa.019.089
  store i32 %i.cr, ptr %i.a, align 4
  br label %.loopexit

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %i.cs = phi i32 [ %i.ct, %.lr.ph86 ], [ %.lcssa8796, %.lr.ph86.preheader ]
  %.sroa.0.585 = phi float [ %i.cu, %.lr.ph86 ], [ %.sroa.0.291, %.lr.ph86.preheader ]
  %.sroa.019.384 = phi i32 [ %i.cv, %.lr.ph86 ], [ %i.cp, %.lr.ph86.preheader ]
  %i.ct = add i32 %i.cs, 1                        ; 2 uses
  %i.cu = fadd float %.sroa.0.585, 3.000000e+00   ; 2 uses
  %i.cv = lshr i32 %.sroa.019.384, 3              ; 2 uses
  %.not68 = icmp eq i32 %i.cv, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph86

.loopexit:                                        ; preds = %.lr.ph86, %bb.ac, %bb.af
  %.lcssa8795 = phi i32 [ %.lcssa8796, %bb.ac ], [ %.lcssa8796, %bb.af ], [ %i.ct, %.lr.ph86 ]
  %.sroa.0.4 = phi float [ %.sroa.0.291, %bb.ac ], [ %.sroa.0.291, %bb.af ], [ %i.cu, %.lr.ph86 ]
  %i.cw = and i32 %i.bz, 65535
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc12log_table_167logs_16, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !noundef !5
  %i.da = fsub float %.sroa.018.0, %i.cz          ; 2 uses
  %i.db = fadd float %i.da, 5.000000e-01
  %i.dc = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.db)
  %..i71 = tail call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 15) ; 2 uses
  %..i72 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.016.090, i64 %..i71)
  %i.dd = uitofp i32 %i.bz to float
  %i.de = fmul float %i.da, %i.dd
  %i.df = fadd float %.sroa.0.4, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %..i71 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !5
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock20BrotliBuildMetaBlockNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(112) %5, i8 noundef %6, i8 noundef %7, ptr noalias nofree noundef nonnull align 4 %8, i64 noundef range(i64 0, 576460752303423488) %9, i64 noundef %10, i8 noundef range(i8 0, 4) %11, ptr noalias nofree noundef nonnull %12, ptr noalias nofree noundef nonnull %13, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef align 8 dereferenceable(264) %15) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 53 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = tail call { ptr, i64 } @_RNvXs0_NtCskMyW5b6jnKh_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram11ContextTypeENtNtCskKLDkoKarTP_4core7default7Default7defaultCsl8OoimOLbh_6qdrant() ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 8 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 99
  %i.i = load i8, ptr %i.h, align 1, !range !50, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %5, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %5, i64 112, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.n = load i8, ptr %i.m, align 2, !range !50
  %.fr311 = freeze i8 %i.n
  %i.o = trunc i8 %.fr311 to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 27 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load i32, ptr %i.s, align 8              ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store i32 0, ptr %i.k, align 8, !alias.scope !51
  %i.x = icmp ne i32 %i.t, 0                      ; 3 uses
  br i1 %i.o, label %.lr.ph.us.peel, label %.lr.ph

.lr.ph.us.peel:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 0, ptr %i.l, align 4, !alias.scope !51
  store i32 140, ptr %i.q, align 8, !alias.scope !51
  store i64 134217724, ptr %i.p, align 8, !alias.scope !51
  %i.y = icmp ne i32 %i.v, 0
  %or.cond.us.us.not.peel = select i1 %i.x, i1 true, i1 %i.y ; 3 uses
  %i.z = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph.us.peel
  br i1 %i.z, label %bb.d, label %.loopexit264.us

bb.d:                                             ; preds = %bb.c
  %i.aa = load double, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ab = fcmp ogt double %i.aa, f0x547D42AEA2879F2E
  br i1 %i.ab, label %.loopexit264.us, label %.lr.ph.us.peel.next

.lr.ph.us.peel.next:                              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.peel.next, %bb.g
  %.sroa.04.1282.us.us = phi i32 [ %i.ah, %bb.g ], [ 1, %.lr.ph.us.peel.next ] ; 7 uses
  %.sroa.09.1281.us.us = phi i1 [ %spec.select.us.us, %bb.g ], [ %or.cond.us.us.not.peel, %.lr.ph.us.peel.next ]
  %.sroa.011.1280.us.us = phi double [ %i.af, %bb.g ], [ %i.aa, %.lr.ph.us.peel.next ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %.sroa.04.1282.us.us, ptr %i.l, align 4, !alias.scope !51
  %i.ac = add nuw nsw i32 %.sroa.04.1282.us.us, 1610612732
  %.sroa.0.1.i.us.us = zext nneg i32 %i.ac to i64
  %.sroa.01.0.i.us.reass.us = add nuw nsw i32 %.sroa.04.1282.us.us, 140
  store i32 %.sroa.01.0.i.us.reass.us, ptr %i.q, align 8, !alias.scope !51
  store i64 %.sroa.0.1.i.us.us, ptr %i.p, align 8, !alias.scope !51
  %i.ad = icmp ne i32 %.sroa.04.1282.us.us, %i.v
  %or.cond.us.us.not = select i1 %i.x, i1 true, i1 %i.ad
  %spec.select.us.us = select i1 %or.cond.us.us.not, i1 %.sroa.09.1281.us.us, i1 false ; 4 uses
  %i.ae = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph.us
  br i1 %i.ae, label %bb.f, label %.loopexit264.us

bb.f:                                             ; preds = %bb.e
  %i.af = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.ag = fcmp ogt double %i.af, %.sroa.011.1280.us.us
  br i1 %i.ag, label %.loopexit264.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.ah = add nuw nsw i32 %.sroa.04.1282.us.us, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond359.not = icmp eq i32 %i.ah, 16
  br i1 %exitcond359.not, label %.lr.ph.us.1, label %.lr.ph.us, !llvm.loop !37

.loopexit264.us:                                  ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.sroa.04.1282.us.us.lcssa633 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %.sroa.04.1282.us.us, %bb.f ], [ %.sroa.04.1282.us.us, %bb.e ] ; 2 uses
  %.sroa.011.1280.us.us.lcssa631 = phi double [ f0x547D42AEA2879F2E, %bb.c ], [ f0x547D42AEA2879F2E, %bb.d ], [ %.sroa.011.1280.us.us, %bb.f ], [ %.sroa.011.1280.us.us, %bb.e ] ; 2 uses
  %spec.select.us.us.lcssa628 = phi i1 [ %or.cond.us.us.not.peel, %bb.c ], [ %or.cond.us.us.not.peel, %bb.d ], [ %spec.select.us.us, %bb.f ], [ %spec.select.us.us, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %16 = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1282.us.us.lcssa633, i32 1)
  %i.ai = lshr i32 %16, 1                         ; 2 uses
  %i.aj = icmp samesign ult i32 %.sroa.04.1282.us.us.lcssa633, 33
  br i1 %i.aj, label %.lr.ph.us.1, label %.loopexit264.us.1

.lr.ph.us.1:                                      ; preds = %bb.g, %.loopexit264.us
  %spec.select.us.us606 = phi i1 [ %spec.select.us.us.lcssa628, %.loopexit264.us ], [ %spec.select.us.us, %bb.g ]
  %.sroa.04.1271.us403 = phi i32 [ %i.ai, %.loopexit264.us ], [ 7, %bb.g ]
  %.sroa.011.1276.us402 = phi double [ %.sroa.011.1280.us.us.lcssa631, %.loopexit264.us ], [ %i.af, %bb.g ]
  store i32 1, ptr %i.k, align 8, !alias.scope !53
  %i.ak = icmp ne i32 %i.t, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.us.1
  %.sroa.04.1282.us.us.1 = phi i32 [ %.sroa.04.1271.us403, %.lr.ph.us.1 ], [ %i.au, %bb.k ] ; 5 uses
  %.sroa.09.1281.us.us.1 = phi i1 [ %spec.select.us.us606, %.lr.ph.us.1 ], [ %spec.select.us.us.1, %bb.k ]
  %.sroa.011.1280.us.us.1 = phi double [ %.sroa.011.1276.us402, %.lr.ph.us.1 ], [ %i.as, %bb.k ] ; 2 uses
  %i.al = shl nuw nsw i32 %.sroa.04.1282.us.us.1, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %i.al, ptr %i.l, align 4, !alias.scope !53
  %i.am = icmp samesign ult i32 %.sroa.04.1282.us.us.1, 2
  %i.an = or disjoint i32 %i.al, 134217720
  %.not.i.us.us.1 = icmp eq i32 %.sroa.04.1282.us.us.1, 2
  %i.ao = add nuw nsw i32 %i.al, 1610612728
  %spec.select496 = select i1 %.not.i.us.us.1, i32 134217724, i32 %i.ao
  %.sroa.0.1.i.us.us.1 = select i1 %i.am, i32 %i.an, i32 %spec.select496
  %.sroa.01.0.i.us.reass.us.1 = add nuw nsw i32 %i.al, 264
  store i32 %.sroa.01.0.i.us.reass.us.1, ptr %i.q, align 8, !alias.scope !53
  %i.ap = zext nneg i32 %.sroa.0.1.i.us.us.1 to i64
  store i64 %i.ap, ptr %i.p, align 8, !alias.scope !53
  %i.aq = icmp ne i32 %i.al, %i.v
  %or.cond.us.us.not.1 = select i1 %i.ak, i1 true, i1 %i.aq
  %spec.select.us.us.1 = select i1 %or.cond.us.us.not.1, i1 %.sroa.09.1281.us.us.1, i1 false ; 3 uses
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  br i1 %i.ar, label %bb.j, label %.split286.us.us.1

bb.j:                                             ; preds = %bb.i
  %i.as = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.at = fcmp ogt double %i.as, %.sroa.011.1280.us.us.1
  br i1 %i.at, label %.split286.us.us.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.au = add nuw nsw i32 %.sroa.04.1282.us.us.1, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond359.1.not = icmp eq i32 %i.au, 16
  br i1 %exitcond359.1.not, label %.lr.ph.us.2, label %bb.h

.split286.us.us.1:                                ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.us.1

.loopexit264.us.1:                                ; preds = %.split286.us.us.1, %.loopexit264.us
  %.sroa.011.1276.us.1 = phi double [ %.sroa.011.1280.us.us.1, %.split286.us.us.1 ], [ %.sroa.011.1280.us.us.lcssa631, %.loopexit264.us ] ; 2 uses
  %.sroa.04.1271.us.1 = phi i32 [ %.sroa.04.1282.us.us.1, %.split286.us.us.1 ], [ %i.ai, %.loopexit264.us ] ; 2 uses
  %.sroa.09.2.us.1 = phi i1 [ %spec.select.us.us.1, %.split286.us.us.1 ], [ %spec.select.us.us.lcssa628, %.loopexit264.us ] ; 2 uses
  %i.av = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.us.1, i32 1)
  %i.aw = lshr i32 %i.av, 1                       ; 2 uses
  %i.ax = icmp ult i32 %.sroa.04.1271.us.1, 33
  br i1 %i.ax, label %.lr.ph.us.2, label %.loopexit264.us.2

.lr.ph.us.2:                                      ; preds = %bb.k, %.loopexit264.us.1
  %17 = phi i32 [ %i.aw, %.loopexit264.us.1 ], [ 7, %bb.k ]
  %.sroa.09.2.us.1408 = phi i1 [ %.sroa.09.2.us.1, %.loopexit264.us.1 ], [ %spec.select.us.us.1, %bb.k ]
  %.sroa.011.1276.us.1407 = phi double [ %.sroa.011.1276.us.1, %.loopexit264.us.1 ], [ %i.as, %bb.k ]
  store i32 2, ptr %i.k, align 8, !alias.scope !54
  %i.ay = icmp ne i32 %i.t, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.us.2
  %.sroa.04.1282.us.us.2 = phi i32 [ %17, %.lr.ph.us.2 ], [ %i.bi, %bb.o ] ; 5 uses
  %.sroa.09.1281.us.us.2 = phi i1 [ %.sroa.09.2.us.1408, %.lr.ph.us.2 ], [ %spec.select.us.us.2, %bb.o ]
  %.sroa.011.1280.us.us.2 = phi double [ %.sroa.011.1276.us.1407, %.lr.ph.us.2 ], [ %i.bg, %bb.o ] ; 2 uses
  %i.az = shl nuw nsw i32 %.sroa.04.1282.us.us.2, 2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %i.az, ptr %i.l, align 4, !alias.scope !54
  %i.ba = icmp samesign ult i32 %.sroa.04.1282.us.us.2, 3
  %i.bb = or disjoint i32 %i.az, 134217712
  %.not.i.us.us.2 = icmp eq i32 %.sroa.04.1282.us.us.2, 3
  %i.bc = add nuw nsw i32 %i.az, 1610612720
  %spec.select497 = select i1 %.not.i.us.us.2, i32 134217724, i32 %i.bc
  %.sroa.0.1.i.us.us.2 = select i1 %i.ba, i32 %i.bb, i32 %spec.select497
  %.sroa.01.0.i.us.reass.us.2 = add nuw nsw i32 %i.az, 512
  store i32 %.sroa.01.0.i.us.reass.us.2, ptr %i.q, align 8, !alias.scope !54
  %i.bd = zext nneg i32 %.sroa.0.1.i.us.us.2 to i64
  store i64 %i.bd, ptr %i.p, align 8, !alias.scope !54
  %i.be = icmp ne i32 %i.az, %i.v
  %or.cond.us.us.not.2 = select i1 %i.ay, i1 true, i1 %i.be
  %spec.select.us.us.2 = select i1 %or.cond.us.us.not.2, i1 %.sroa.09.1281.us.us.2, i1 false ; 3 uses
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.bf, label %bb.n, label %.split286.us.us.2

bb.n:                                             ; preds = %bb.m
  %i.bg = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.bh = fcmp ogt double %i.bg, %.sroa.011.1280.us.us.2
  br i1 %i.bh, label %.split286.us.us.2, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.bi = add nuw nsw i32 %.sroa.04.1282.us.us.2, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond359.2.not = icmp eq i32 %i.bi, 16
  br i1 %exitcond359.2.not, label %.lr.ph.us.3, label %bb.l

.split286.us.us.2:                                ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.us.2

.loopexit264.us.2:                                ; preds = %.split286.us.us.2, %.loopexit264.us.1
  %.sroa.011.1276.us.2 = phi double [ %.sroa.011.1280.us.us.2, %.split286.us.us.2 ], [ %.sroa.011.1276.us.1, %.loopexit264.us.1 ] ; 2 uses
  %.sroa.04.1271.us.2 = phi i32 [ %.sroa.04.1282.us.us.2, %.split286.us.us.2 ], [ %i.aw, %.loopexit264.us.1 ] ; 2 uses
  %.sroa.09.2.us.2 = phi i1 [ %spec.select.us.us.2, %.split286.us.us.2 ], [ %.sroa.09.2.us.1, %.loopexit264.us.1 ] ; 2 uses
  %i.bj = icmp ult i32 %.sroa.04.1271.us.2, 33
  br i1 %i.bj, label %.lr.ph.us.3, label %.split301.us

.lr.ph.us.3:                                      ; preds = %bb.o, %.loopexit264.us.2
  %.sroa.09.2.us.2414 = phi i1 [ %.sroa.09.2.us.2, %.loopexit264.us.2 ], [ %spec.select.us.us.2, %bb.o ]
  %.sroa.04.1271.us.2413 = phi i32 [ %.sroa.04.1271.us.2, %.loopexit264.us.2 ], [ 16, %bb.o ]
  %.sroa.011.1276.us.2412 = phi double [ %.sroa.011.1276.us.2, %.loopexit264.us.2 ], [ %i.bg, %bb.o ]
  %18 = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.us.2413, i32 1)
  %i.bk = lshr i32 %18, 1
  store i32 3, ptr %i.k, align 8, !alias.scope !55
  %i.bl = icmp ne i32 %i.t, 3
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.us.3
  %.sroa.04.1282.us.us.3 = phi i32 [ %i.bk, %.lr.ph.us.3 ], [ %i.bv, %bb.s ] ; 4 uses
  %.sroa.09.1281.us.us.3 = phi i1 [ %.sroa.09.2.us.2414, %.lr.ph.us.3 ], [ %spec.select.us.us.3, %bb.s ]
  %.sroa.011.1280.us.us.3 = phi double [ %.sroa.011.1276.us.2412, %.lr.ph.us.3 ], [ %i.bt, %bb.s ] ; 2 uses
  %i.bm = shl nuw nsw i32 %.sroa.04.1282.us.us.3, 3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %i.bm, ptr %i.l, align 4, !alias.scope !55
  %i.bn = icmp samesign ult i32 %.sroa.04.1282.us.us.3, 4
  %i.bo = or disjoint i32 %i.bm, 134217696
  %.not.i.us.us.3 = icmp eq i32 %.sroa.04.1282.us.us.3, 4
  %i.bp = add nuw nsw i32 %i.bm, 1610612704
  %spec.select498 = select i1 %.not.i.us.us.3, i32 134217724, i32 %i.bp
  %.sroa.0.1.i.us.us.3 = select i1 %i.bn, i32 %i.bo, i32 %spec.select498
  %.sroa.01.0.i.us.reass.us.3 = add nuw nsw i32 %i.bm, 1008
  store i32 %.sroa.01.0.i.us.reass.us.3, ptr %i.q, align 8, !alias.scope !55
  %i.bq = zext nneg i32 %.sroa.0.1.i.us.us.3 to i64
  store i64 %i.bq, ptr %i.p, align 8, !alias.scope !55
  %i.br = icmp ne i32 %i.bm, %i.v
  %or.cond.us.us.not.3 = select i1 %i.bl, i1 true, i1 %i.br
  %spec.select.us.us.3 = select i1 %or.cond.us.us.not.3, i1 %.sroa.09.1281.us.us.3, i1 false ; 3 uses
  %i.bs = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.q unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.bs, label %bb.r, label %.split286.us.us.3

bb.r:                                             ; preds = %bb.q
  %i.bt = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.bu = fcmp ogt double %i.bt, %.sroa.011.1280.us.us.3
  br i1 %i.bu, label %.split286.us.us.3, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.bv = add nuw nsw i32 %.sroa.04.1282.us.us.3, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond359.3.not = icmp eq i32 %i.bv, 16
  br i1 %exitcond359.3.not, label %.split301.us, label %bb.p

.split286.us.us.3:                                ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %spec.select.us.us.3, label %bb.v, label %bb.u

.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.aj, %bb.l, %bb.p, %bb.h, %.lr.ph.us, %.lr.ph.us.peel, %bb.ab, %bb.aa
  %lpad.loopexit.split-lp631 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit265.split.us.split.us

bb.t:                                             ; preds = %bb.z, %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  invoke void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %5, ptr noalias nofree noundef nonnull %12, ptr noalias nofree noundef nonnull %13, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %15, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bx)
          to label %bb.aq unwind label %.loopexit.split-lp

.split301.us:                                     ; preds = %bb.s, %.loopexit264.us.2
  %.us-phi302 = phi double [ %.sroa.011.1276.us.2, %.loopexit264.us.2 ], [ %i.bt, %bb.s ]
  %.us-phi303 = phi i1 [ %.sroa.09.2.us.2, %.loopexit264.us.2 ], [ %spec.select.us.us.3, %bb.s ]
  br i1 %.us-phi303, label %bb.v, label %bb.u

.lr.ph:                                           ; preds = %bb.b
  %i.by = zext i32 %i.v to i64
  br label %bb.aa

bb.u:                                             ; preds = %.split286.3, %.split286.us.us.3, %.loopexit264.3, %bb.y, %.split301.us
  invoke void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock25RecomputeDistancePrefixes(ptr noalias nofree noundef nonnull align 4 %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.z unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %.split286.3, %.split286.us.us.3, %.loopexit264.3, %.split301.us
  %.us-phi302404 = phi double [ %.sroa.011.1276.3, %.loopexit264.3 ], [ %.us-phi302, %.split301.us ], [ %.sroa.011.1280.us.us.3, %.split286.us.us.3 ], [ %.sroa.011.1280.3, %.split286.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double 0.000000e+00, ptr %i.a, align 8
  %i.bz = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.w unwind label %.loopexit.split-lp ; 0 uses

.thread132.thread.thread:                         ; preds = %.invoke, %bb.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit78, %.loopexit262, %bb.bh
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralEECsl8OoimOLbh_6qdrant.exit80.thread

bb.w:                                             ; preds = %bb.v
  %i.ca = load double, ptr %i.a, align 8, !noundef !5
  %i.cb = fcmp olt double %i.ca, %.us-phi302404
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

bb.aa:                                            ; preds = %.lr.ph, %bb.ap
  %indvars.iv356 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next357, %bb.ap ] ; 6 uses
  %.sroa.09.1281 = phi i1 [ true, %.lr.ph ], [ %spec.select, %bb.ap ]
  %.sroa.011.1280 = phi double [ f0x547D42AEA2879F2E, %.lr.ph ], [ %i.eh, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.cc = trunc nuw nsw i64 %indvars.iv356 to i32 ; 2 uses
  store i32 %i.cc, ptr %i.l, align 4, !alias.scope !51
  %i.cd = add nuw nsw i64 %indvars.iv356, 67108860
  %i.ce = trunc i64 %indvars.iv356 to i32
  %i.cf = add i32 %i.ce, 64
  store i32 %i.cf, ptr %i.q, align 8, !alias.scope !51
  store i64 %i.cd, ptr %i.p, align 8, !alias.scope !51
  %i.cg = icmp ne i64 %indvars.iv356, %i.by
  %or.cond.not = select i1 %i.x, i1 true, i1 %i.cg
  %spec.select = select i1 %or.cond.not, i1 %.sroa.09.1281, i1 false ; 3 uses
  %i.ch = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.an unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit264:                                     ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ci = call i32 @llvm.usub.sat.i32(i32 %i.cc, i32 1) ; 2 uses
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = icmp samesign ult i64 %indvars.iv356, 33
  br i1 %i.ck, label %.lr.ph.1, label %.loopexit264.1

.lr.ph.1:                                         ; preds = %bb.ap, %.loopexit264
  %.sroa.04.1271408 = phi i32 [ %i.ci, %.loopexit264 ], [ 15, %bb.ap ]
  %.sroa.011.1276407 = phi double [ %.sroa.011.1280, %.loopexit264 ], [ %i.eh, %bb.ap ]
  store i32 1, ptr %i.k, align 8, !alias.scope !56
  %i.cl = icmp ne i32 %i.t, 1
  %i.cm = lshr i32 %.sroa.04.1271408, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = zext i32 %i.v to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.1
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %bb.ae ], [ %i.cn, %.lr.ph.1 ] ; 4 uses
  %.sroa.09.1281.1 = phi i1 [ %spec.select.1, %bb.ae ], [ %spec.select, %.lr.ph.1 ]
  %.sroa.011.1280.1 = phi double [ %i.cx, %bb.ae ], [ %.sroa.011.1276407, %.lr.ph.1 ] ; 2 uses
  %i.cp = shl nuw nsw i64 %indvars.iv353, 1       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.cq = trunc nuw i64 %i.cp to i32
  store i32 %i.cq, ptr %i.l, align 4, !alias.scope !56
  %i.cr = shl nuw i64 %indvars.iv353, 1
  %i.cs = add i64 %i.cr, 134217720
  %i.ct = trunc i64 %i.cp to i32
  %i.cu = add i32 %i.ct, 112
  store i32 %i.cu, ptr %i.q, align 8, !alias.scope !56
  store i64 %i.cs, ptr %i.p, align 8, !alias.scope !56
  %i.cv = icmp ne i64 %i.cp, %i.co
  %or.cond.not.1 = select i1 %i.cl, i1 true, i1 %i.cv
  %spec.select.1 = select i1 %or.cond.not.1, i1 %.sroa.09.1281.1, i1 false ; 3 uses
  %i.cw = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cw, label %bb.ad, label %.split286.1

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.cy = fcmp ogt double %i.cx, %.sroa.011.1280.1
  br i1 %i.cy, label %.split286.1, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.1.not = icmp eq i64 %indvars.iv.next354, 16
  br i1 %exitcond.1.not, label %.lr.ph.2, label %bb.ab

.split286.1:                                      ; preds = %bb.ad, %bb.ac
  %i.cz = trunc nuw i64 %indvars.iv353 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.1

.loopexit264.1:                                   ; preds = %.split286.1, %.loopexit264
  %.sroa.011.1276.1 = phi double [ %.sroa.011.1280.1, %.split286.1 ], [ %.sroa.011.1280, %.loopexit264 ] ; 2 uses
  %.sroa.04.1271.1 = phi i32 [ %i.cz, %.split286.1 ], [ %i.cj, %.loopexit264 ] ; 2 uses
  %.sroa.09.2.1 = phi i1 [ %spec.select.1, %.split286.1 ], [ %spec.select, %.loopexit264 ] ; 2 uses
  %i.da = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.1, i32 1) ; 2 uses
  %i.db = lshr i32 %i.da, 1
  %i.dc = icmp ult i32 %.sroa.04.1271.1, 33
  br i1 %i.dc, label %.lr.ph.2, label %.loopexit264.2

.lr.ph.2:                                         ; preds = %bb.ae, %.loopexit264.1
  %19 = phi i32 [ %i.da, %.loopexit264.1 ], [ 15, %bb.ae ]
  %.sroa.09.2.1424 = phi i1 [ %.sroa.09.2.1, %.loopexit264.1 ], [ %spec.select.1, %bb.ae ]
  %.sroa.011.1276.1423 = phi double [ %.sroa.011.1276.1, %.loopexit264.1 ], [ %i.cx, %bb.ae ]
  store i32 2, ptr %i.k, align 8, !alias.scope !57
  %i.dd = icmp ne i32 %i.t, 2
  %i.de = lshr i32 %19, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = zext i32 %i.v to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.2
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %bb.ai ], [ %i.df, %.lr.ph.2 ] ; 4 uses
  %.sroa.09.1281.2 = phi i1 [ %spec.select.2, %bb.ai ], [ %.sroa.09.2.1424, %.lr.ph.2 ]
  %.sroa.011.1280.2 = phi double [ %i.dp, %bb.ai ], [ %.sroa.011.1276.1423, %.lr.ph.2 ] ; 2 uses
  %i.dh = shl nuw nsw i64 %indvars.iv350, 2       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.di = trunc nuw i64 %i.dh to i32
  store i32 %i.di, ptr %i.l, align 4, !alias.scope !57
  %i.dj = shl i64 %indvars.iv350, 2
  %i.dk = add i64 %i.dj, 268435440
  %i.dl = trunc i64 %i.dh to i32
  %i.dm = add i32 %i.dl, 208
  store i32 %i.dm, ptr %i.q, align 8, !alias.scope !57
  store i64 %i.dk, ptr %i.p, align 8, !alias.scope !57
  %i.dn = icmp ne i64 %i.dh, %i.dg
  %or.cond.not.2 = select i1 %i.dd, i1 true, i1 %i.dn
  %spec.select.2 = select i1 %or.cond.not.2, i1 %.sroa.09.1281.2, i1 false ; 3 uses
  %i.do = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ag unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.do, label %bb.ah, label %.split286.2

bb.ah:                                            ; preds = %bb.ag
  %i.dp = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.dq = fcmp ogt double %i.dp, %.sroa.011.1280.2
  br i1 %i.dq, label %.split286.2, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.2.not = icmp eq i64 %indvars.iv.next351, 16
  br i1 %exitcond.2.not, label %.lr.ph.3, label %bb.af

.split286.2:                                      ; preds = %bb.ah, %bb.ag
  %i.dr = trunc nuw i64 %indvars.iv350 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.2

.loopexit264.2:                                   ; preds = %.split286.2, %.loopexit264.1
  %.sroa.011.1276.2 = phi double [ %.sroa.011.1280.2, %.split286.2 ], [ %.sroa.011.1276.1, %.loopexit264.1 ] ; 2 uses
  %.sroa.04.1271.2 = phi i32 [ %i.dr, %.split286.2 ], [ %i.db, %.loopexit264.1 ] ; 2 uses
  %.sroa.09.2.2 = phi i1 [ %spec.select.2, %.split286.2 ], [ %.sroa.09.2.1, %.loopexit264.1 ] ; 2 uses
  %i.ds = icmp ult i32 %.sroa.04.1271.2, 33
  br i1 %i.ds, label %.lr.ph.3, label %.loopexit264.3

.lr.ph.3:                                         ; preds = %bb.ai, %.loopexit264.2
  %.sroa.09.2.2430 = phi i1 [ %.sroa.09.2.2, %.loopexit264.2 ], [ %spec.select.2, %bb.ai ]
  %.sroa.04.1271.2429 = phi i32 [ %.sroa.04.1271.2, %.loopexit264.2 ], [ 16, %bb.ai ]
  %.sroa.011.1276.2428 = phi double [ %.sroa.011.1276.2, %.loopexit264.2 ], [ %i.dp, %bb.ai ]
  %20 = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.2429, i32 1)
  store i32 3, ptr %i.k, align 8, !alias.scope !58
  %i.dt = icmp ne i32 %i.t, 3
  %i.du = lshr i32 %20, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = zext i32 %i.v to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ %i.dv, %.lr.ph.3 ] ; 3 uses
  %.sroa.09.1281.3 = phi i1 [ %spec.select.3, %bb.am ], [ %.sroa.09.2.2430, %.lr.ph.3 ]
  %.sroa.011.1280.3 = phi double [ %i.ef, %bb.am ], [ %.sroa.011.1276.2428, %.lr.ph.3 ] ; 2 uses
  %i.dx = shl nuw nsw i64 %indvars.iv, 3          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.dy = trunc nuw i64 %i.dx to i32
  store i32 %i.dy, ptr %i.l, align 4, !alias.scope !58
  %i.dz = shl i64 %indvars.iv, 3
  %i.ea = add i64 %i.dz, 536870880
  %i.eb = trunc i64 %i.dx to i32
  %i.ec = add i32 %i.eb, 400
  store i32 %i.ec, ptr %i.q, align 8, !alias.scope !58
  store i64 %i.ea, ptr %i.p, align 8, !alias.scope !58
  %i.ed = icmp ne i64 %i.dx, %i.dw
  %or.cond.not.3 = select i1 %i.dt, i1 true, i1 %i.ed
  %spec.select.3 = select i1 %or.cond.not.3, i1 %.sroa.09.1281.3, i1 false ; 3 uses
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ak unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ee, label %bb.al, label %.split286.3

bb.al:                                            ; preds = %bb.ak
  %i.ef = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.eg = fcmp ogt double %i.ef, %.sroa.011.1280.3
  br i1 %i.eg, label %.split286.3, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.3.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.3.not, label %.loopexit264.3, label %bb.aj

.split286.3:                                      ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %spec.select.3, label %bb.v, label %bb.u

.loopexit264.3:                                   ; preds = %bb.am, %.loopexit264.2
  %.sroa.011.1276.3 = phi double [ %.sroa.011.1276.2, %.loopexit264.2 ], [ %i.ef, %bb.am ]
  %.sroa.09.2.3 = phi i1 [ %.sroa.09.2.2, %.loopexit264.2 ], [ %spec.select.3, %bb.am ]
  br i1 %.sroa.09.2.3, label %bb.v, label %bb.u

bb.an:                                            ; preds = %bb.aa
  br i1 %i.ch, label %bb.ao, label %.loopexit264

bb.ao:                                            ; preds = %bb.an
  %i.eh = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.ei = fcmp ogt double %i.eh, %.sroa.011.1280
  br i1 %i.ei, label %.loopexit264, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %indvars.iv.next357, 16
  br i1 %exitcond.not, label %.lr.ph.1, label %bb.aa

bb.aq:                                            ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !noundef !5
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ar, label %.loopexit263

bb.ar:                                            ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.en = load i64, ptr %i.em, align 8, !noundef !5
  %i.eo = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram11ContextTypeE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.en)
          to label %bb.as unwind label %.loopexit.split-lp ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 4 uses
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1      ; 3 uses
  %i.er = icmp eq i64 %i.g, 0
  br i1 %i.er, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %i.g, i64 noundef 1) #15
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.es = icmp samesign eq i64 %i.eq, 0
  br i1 %i.es, label %.loopexit263, label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %bb.au
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ep, i8 %11, i64 %i.eq, i1 false)
  br label %.loopexit263

.loopexit263:                                     ; preds = %.lr.ph305.preheader, %bb.au, %bb.aq
  %.sroa.10.1 = phi i64 [ %i.g, %bb.aq ], [ 0, %bb.au ], [ %i.eq, %.lr.ph305.preheader ] ; 6 uses
  %.sroa.090.1 = phi ptr [ %i.f, %bb.aq ], [ %i.ep, %bb.au ], [ %i.ep, %.lr.ph305.preheader ] ; 7 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.aq ], [ 64, %bb.au ], [ 64, %.lr.ph305.preheader ]
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !noundef !5
  %i.ev = mul i64 %i.eu, %.sroa.0.0               ; 2 uses
  %i.ew = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.ev)
          to label %bb.av unwind label %.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %.loopexit263
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0      ; 8 uses
  %i.ey = extractvalue { ptr, i64 } %i.ew, 1      ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !5
  %i.fb = shl i64 %i.fa, 2
  %i.fc = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.fb)
          to label %bb.aw unwind label %.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.fd = extractvalue { ptr, i64 } %i.fc, 0      ; 9 uses
  %i.fe = extractvalue { ptr, i64 } %i.fc, 1      ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !5 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 248
  store i64 %i.fg, ptr %i.fh, align 8
  %i.fi = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramCommandE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.fg)
          to label %bb.ax unwind label %.loopexit.split-lp ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.fj = extractvalue { ptr, i64 } %i.fi, 0      ; 3 uses
  %i.fk = extractvalue { ptr, i64 } %i.fi, 1      ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 192 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 200 ; 2 uses
  %.val41 = load i64, ptr %i.fm, align 8, !noundef !5 ; 2 uses
  %i.fn = icmp eq i64 %.val41, 0
  br i1 %i.fn, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val40 = load ptr, ptr %i.fl, align 8, !nonnull !5, !noundef !5
  %i.fo = mul nuw nsw i64 %.val41, 2832
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40, i64 noundef range(i64 1, 0) %i.fo, i64 noundef 8) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.fj, ptr %i.fl, align 8
  store i64 %i.fk, ptr %i.fm, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.090.1), "nonnull"(ptr %i.ex), "nonnull"(ptr %i.fj), "nonnull"(ptr %i.fd) ]
  invoke void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram32BrotliBuildHistogramsWithContextNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef %6, i8 noundef %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.090.1, i64 noundef %.sroa.10.1, ptr noalias nofree noundef nonnull align 8 %i.ex, i64 noundef %i.ey, ptr noalias nofree noundef nonnull align 8 %i.fj, i64 noundef %i.fk, ptr noalias nofree noundef nonnull align 8 %i.fd, i64 noundef %i.fe)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram11ContextTypeE9free_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %.sroa.090.1, i64 noundef %.sroa.10.1)
          to label %bb.bb unwind label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.fp = load i64, ptr %i.et, align 8, !noundef !5
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 224 ; 2 uses
  %i.fr = shl i64 %i.fp, 6                        ; 2 uses
  store i64 %i.fr, ptr %i.fq, align 8
  %i.fs = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.fr)
          to label %bb.bc unwind label %.thread   ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ft = extractvalue { ptr, i64 } %i.fs, 0
  %i.fu = extractvalue { ptr, i64 } %i.fs, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 144 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 5 uses
  %.val57 = load i64, ptr %i.fw, align 8, !noundef !5 ; 2 uses
  %i.fx = icmp eq i64 %.val57, 0
  br i1 %i.fx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val56 = load ptr, ptr %i.fv, align 8, !nonnull !5, !noundef !5
  %i.fy = shl nuw nsw i64 %.val57, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef range(i64 1, 0) %i.fy, i64 noundef 4) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bd, %bb.bc
  store ptr %i.ft, ptr %i.fv, align 8
  store i64 %i.fu, ptr %i.fw, align 8
  %i.fz = load i64, ptr %i.fq, align 8, !noundef !5 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 240 ; 2 uses
  store i64 %i.fz, ptr %i.ga, align 8
  %i.gb = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.fz)
          to label %bb.be unwind label %.thread   ; 2 uses

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit
  %i.gc = extractvalue { ptr, i64 } %i.gb, 0      ; 3 uses
  %i.gd = extractvalue { ptr, i64 } %i.gb, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 176 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 184 ; 2 uses
  %.val61 = load i64, ptr %i.gf, align 8, !noundef !5 ; 2 uses
  %i.gg = icmp eq i64 %.val61, 0
  br i1 %i.gg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val60 = load ptr, ptr %i.ge, align 8, !nonnull !5, !noundef !5
  %i.gh = mul nuw nsw i64 %.val61, 1040
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef range(i64 1, 0) %i.gh, i64 noundef 8) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  store ptr %i.gc, ptr %i.ge, align 8
  store i64 %i.gd, ptr %i.gf, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  %.val68 = load ptr, ptr %i.fv, align 8, !nonnull !5, !noundef !5
  %.val69 = load i64, ptr %i.fw, align 8, !noundef !5
  invoke void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster23BrotliClusterHistogramsNtNtB4_9histogram16HistogramLiteralNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ex, i64 noundef %i.ey, i64 noundef %i.ev, i64 noundef 256, ptr noalias nofree noundef nonnull %12, ptr noalias nofree noundef nonnull align 8 %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noalias nofree noundef nonnull align 4 %.val68, i64 noundef %.val69)
          to label %bb.bh unwind label %.thread

bb.bh:                                            ; preds = %bb.bg
end_hunk_0
