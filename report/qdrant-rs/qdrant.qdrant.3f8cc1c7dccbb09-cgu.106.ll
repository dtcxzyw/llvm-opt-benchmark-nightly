Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.106?download=true
inline.NumInlined: 524
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECsl8OoimOLbh_6qdrant:bb.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.au = load i32, ptr %i.at, align 4, !noundef !5 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.aw = load i32, ptr %i.av, align 4, !noundef !5 ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bi) ; 2 uses
  %spec.select156 = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bi) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %spec.select) ; 2 uses
  %.sroa.19.5 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %spec.select) ; 2 uses
  %.sroa.0.3128 = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %.sroa.0.2) ; 2 uses
  %.sroa.27.5 = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %.sroa.0.2) ; 2 uses
  %.sroa.11.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.19.5, i32 %spec.select156) ; 2 uses
  %.sroa.19.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.19.5, i32 %spec.select156)
  %.sroa.11.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.27.5, i32 %.sroa.11.2)
  %.sroa.27.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.27.5, i32 %.sroa.11.2)
  %i.ax = add i32 %.sroa.19.1, %.sroa.27.4        ; 2 uses
  %..i70 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.3128, i32 %i.ax)
  %i.ay = mul i32 %i.ax, 3
  %i.az = uitofp i32 %i.ay to float
  %i.ba = fadd float %i.az, 3.700000e+01
  %i.bb = add i32 %.sroa.11.4, %.sroa.0.3128
  %i.bc = shl i32 %i.bb, 1
  %i.bd = uitofp i32 %i.bc to float
  %i.be = fadd float %i.ba, %i.bd
  %i.bf = uitofp i32 %..i70 to float
  %i.bg = fsub float %i.be, %i.bf
  br label %bb.r

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
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 16 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 99
  %i.i = load i8, ptr %i.h, align 1, !range !27, !noundef !5
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
  %i.n = load i8, ptr %i.m, align 2, !range !27
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
  store i32 0, ptr %i.k, align 8, !alias.scope !28
  %i.x = icmp ne i32 %i.t, 0                      ; 3 uses
  br i1 %i.o, label %.lr.ph.us.peel, label %.lr.ph

.lr.ph.us.peel:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 0, ptr %i.l, align 4, !alias.scope !28
  store i32 140, ptr %i.q, align 8, !alias.scope !28
  store i64 134217724, ptr %i.p, align 8, !alias.scope !28
  %i.y = icmp ne i32 %i.v, 0
  %or.cond.us.us.not.peel = select i1 %i.x, i1 true, i1 %i.y ; 3 uses
  %i.z = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %.loopexit265.split.us.split.us.loopexit.loopexit.split-lp

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

.loopexit264.us.loopexit:                         ; preds = %bb.r, %bb.q
  %i.ac = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1282.us.us, i32 1)
  br label %.loopexit264.us

.loopexit264.us:                                  ; preds = %.loopexit264.us.loopexit, %bb.d, %bb.c
  %.sroa.04.1282.us.us.lcssa576 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ac, %.loopexit264.us.loopexit ] ; 2 uses
  %.sroa.011.1280.us.us.lcssa574 = phi double [ f0x547D42AEA2879F2E, %bb.c ], [ f0x547D42AEA2879F2E, %bb.d ], [ %.sroa.011.1280.us.us, %.loopexit264.us.loopexit ] ; 2 uses
  %spec.select.us.us.lcssa571 = phi i1 [ %or.cond.us.us.not.peel, %bb.c ], [ %or.cond.us.us.not.peel, %bb.d ], [ %spec.select.us.us, %.loopexit264.us.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = lshr i32 %.sroa.04.1282.us.us.lcssa576, 1 ; 2 uses
  %i.ae = icmp samesign ult i32 %.sroa.04.1282.us.us.lcssa576, 32
  br i1 %i.ae, label %.lr.ph.us.1, label %.loopexit264.us.1

.lr.ph.us.1:                                      ; preds = %bb.s, %.loopexit264.us
  %spec.select.us.us573 = phi i1 [ %spec.select.us.us.lcssa571, %.loopexit264.us ], [ %spec.select.us.us, %bb.s ]
  %.sroa.04.1271.us401 = phi i32 [ %i.ad, %.loopexit264.us ], [ 7, %bb.s ]
  %.sroa.011.1276.us400 = phi double [ %.sroa.011.1280.us.us.lcssa574, %.loopexit264.us ], [ %i.bv, %bb.s ]
  store i32 1, ptr %i.k, align 8, !alias.scope !31
  %i.af = icmp ne i32 %i.t, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.us.1
  %.sroa.04.1282.us.us.1 = phi i32 [ %.sroa.04.1271.us401, %.lr.ph.us.1 ], [ %i.ap, %bb.h ] ; 5 uses
  %.sroa.09.1281.us.us.1 = phi i1 [ %spec.select.us.us573, %.lr.ph.us.1 ], [ %spec.select.us.us.1, %bb.h ]
  %.sroa.011.1280.us.us.1 = phi double [ %.sroa.011.1276.us400, %.lr.ph.us.1 ], [ %i.an, %bb.h ] ; 2 uses
  %i.ag = shl nuw nsw i32 %.sroa.04.1282.us.us.1, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %i.ag, ptr %i.l, align 4, !alias.scope !31
  %i.ah = icmp samesign ult i32 %.sroa.04.1282.us.us.1, 2
  %i.ai = or disjoint i32 %i.ag, 134217720
  %.not.i.us.us.1 = icmp eq i32 %.sroa.04.1282.us.us.1, 2
  %i.aj = add nuw nsw i32 %i.ag, 1610612728
  %spec.select494 = select i1 %.not.i.us.us.1, i32 134217724, i32 %i.aj
  %.sroa.0.1.i.us.us.1 = select i1 %i.ah, i32 %i.ai, i32 %spec.select494
  %.sroa.01.0.i.us.reass.us.1 = add nuw nsw i32 %i.ag, 264
  store i32 %.sroa.01.0.i.us.reass.us.1, ptr %i.q, align 8, !alias.scope !31
  %i.ak = zext nneg i32 %.sroa.0.1.i.us.us.1 to i64
  store i64 %i.ak, ptr %i.p, align 8, !alias.scope !31
  %i.al = icmp ne i32 %i.ag, %i.v
  %or.cond.us.us.not.1 = select i1 %i.af, i1 true, i1 %i.al
  %spec.select.us.us.1 = select i1 %or.cond.us.us.not.1, i1 %.sroa.09.1281.us.us.1, i1 false ; 3 uses
  %i.am = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %bb.e
  br i1 %i.am, label %bb.g, label %.split286.us.us.1

bb.g:                                             ; preds = %bb.f
  %i.an = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.ao = fcmp ogt double %i.an, %.sroa.011.1280.us.us.1
  br i1 %i.ao, label %.split286.us.us.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.ap = add nuw nsw i32 %.sroa.04.1282.us.us.1, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond356.1.not = icmp eq i32 %i.ap, 16
  br i1 %exitcond356.1.not, label %.loopexit264.us.1, label %bb.e

.split286.us.us.1:                                ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.us.1

.loopexit264.us.1:                                ; preds = %bb.h, %.split286.us.us.1, %.loopexit264.us
  %.sroa.011.1276.us.1 = phi double [ %.sroa.011.1280.us.us.1, %.split286.us.us.1 ], [ %.sroa.011.1280.us.us.lcssa574, %.loopexit264.us ], [ %i.an, %bb.h ] ; 2 uses
  %.sroa.04.1271.us.1 = phi i32 [ %.sroa.04.1282.us.us.1, %.split286.us.us.1 ], [ %i.ad, %.loopexit264.us ], [ 16, %bb.h ]
  %.sroa.09.2.us.1 = phi i1 [ %spec.select.us.us.1, %.split286.us.us.1 ], [ %spec.select.us.us.lcssa571, %.loopexit264.us ], [ %spec.select.us.us.1, %bb.h ] ; 2 uses
  %i.aq = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.us.1, i32 1) ; 2 uses
  %i.ar = lshr i32 %i.aq, 1                       ; 2 uses
  %i.as = icmp ult i32 %i.aq, 32
  br i1 %i.as, label %.lr.ph.us.2, label %.loopexit264.us.2

.lr.ph.us.2:                                      ; preds = %.loopexit264.us.1
  store i32 2, ptr %i.k, align 8, !alias.scope !33
  %i.at = icmp ne i32 %i.t, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.us.2
  %.sroa.04.1282.us.us.2 = phi i32 [ %i.ar, %.lr.ph.us.2 ], [ %i.bd, %bb.l ] ; 5 uses
  %.sroa.09.1281.us.us.2 = phi i1 [ %.sroa.09.2.us.1, %.lr.ph.us.2 ], [ %spec.select.us.us.2, %bb.l ]
  %.sroa.011.1280.us.us.2 = phi double [ %.sroa.011.1276.us.1, %.lr.ph.us.2 ], [ %i.bb, %bb.l ] ; 2 uses
  %i.au = shl nuw nsw i32 %.sroa.04.1282.us.us.2, 2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %i.au, ptr %i.l, align 4, !alias.scope !33
  %i.av = icmp samesign ult i32 %.sroa.04.1282.us.us.2, 3
  %i.aw = or disjoint i32 %i.au, 134217712
  %.not.i.us.us.2 = icmp eq i32 %.sroa.04.1282.us.us.2, 3
  %i.ax = add nuw nsw i32 %i.au, 1610612720
  %spec.select495 = select i1 %.not.i.us.us.2, i32 134217724, i32 %i.ax
  %.sroa.0.1.i.us.us.2 = select i1 %i.av, i32 %i.aw, i32 %spec.select495
  %.sroa.01.0.i.us.reass.us.2 = add nuw nsw i32 %i.au, 512
  store i32 %.sroa.01.0.i.us.reass.us.2, ptr %i.q, align 8, !alias.scope !33
  %i.ay = zext nneg i32 %.sroa.0.1.i.us.us.2 to i64
  store i64 %i.ay, ptr %i.p, align 8, !alias.scope !33
  %i.az = icmp ne i32 %i.au, %i.v
  %or.cond.us.us.not.2 = select i1 %i.at, i1 true, i1 %i.az
  %spec.select.us.us.2 = select i1 %or.cond.us.us.not.2, i1 %.sroa.09.1281.us.us.2, i1 false ; 3 uses
  %i.ba = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit

bb.j:                                             ; preds = %bb.i
  br i1 %i.ba, label %bb.k, label %.split286.us.us.2

bb.k:                                             ; preds = %bb.j
  %i.bb = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.bc = fcmp ogt double %i.bb, %.sroa.011.1280.us.us.2
  br i1 %i.bc, label %.split286.us.us.2, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.bd = add nuw nsw i32 %.sroa.04.1282.us.us.2, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond356.2.not = icmp eq i32 %i.bd, 16
  br i1 %exitcond356.2.not, label %.loopexit264.us.2, label %bb.i

.split286.us.us.2:                                ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.us.2

.loopexit264.us.2:                                ; preds = %bb.l, %.split286.us.us.2, %.loopexit264.us.1
  %.sroa.011.1276.us.2 = phi double [ %.sroa.011.1280.us.us.2, %.split286.us.us.2 ], [ %.sroa.011.1276.us.1, %.loopexit264.us.1 ], [ %i.bb, %bb.l ] ; 2 uses
  %.sroa.04.1271.us.2 = phi i32 [ %.sroa.04.1282.us.us.2, %.split286.us.us.2 ], [ %i.ar, %.loopexit264.us.1 ], [ 16, %bb.l ]
  %.sroa.09.2.us.2 = phi i1 [ %spec.select.us.us.2, %.split286.us.us.2 ], [ %.sroa.09.2.us.1, %.loopexit264.us.1 ], [ %spec.select.us.us.2, %bb.l ] ; 2 uses
  %i.be = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.us.2, i32 1) ; 2 uses
  %i.bf = icmp ult i32 %i.be, 32
  br i1 %i.bf, label %.lr.ph.us.3, label %.split300.us

.lr.ph.us.3:                                      ; preds = %.loopexit264.us.2
  %i.bg = lshr i32 %i.be, 1
  store i32 3, ptr %i.k, align 8, !alias.scope !35
  %i.bh = icmp ne i32 %i.t, 3
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.us.3
  %.sroa.04.1282.us.us.3 = phi i32 [ %i.bg, %.lr.ph.us.3 ], [ %i.br, %bb.p ] ; 4 uses
  %.sroa.09.1281.us.us.3 = phi i1 [ %.sroa.09.2.us.2, %.lr.ph.us.3 ], [ %spec.select.us.us.3, %bb.p ]
  %.sroa.011.1280.us.us.3 = phi double [ %.sroa.011.1276.us.2, %.lr.ph.us.3 ], [ %i.bp, %bb.p ] ; 2 uses
  %i.bi = shl nuw nsw i32 %.sroa.04.1282.us.us.3, 3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %i.bi, ptr %i.l, align 4, !alias.scope !35
  %i.bj = icmp samesign ult i32 %.sroa.04.1282.us.us.3, 4
  %i.bk = or disjoint i32 %i.bi, 134217696
  %.not.i.us.us.3 = icmp eq i32 %.sroa.04.1282.us.us.3, 4
  %i.bl = add nuw nsw i32 %i.bi, 1610612704
  %spec.select496 = select i1 %.not.i.us.us.3, i32 134217724, i32 %i.bl
  %.sroa.0.1.i.us.us.3 = select i1 %i.bj, i32 %i.bk, i32 %spec.select496
  %.sroa.01.0.i.us.reass.us.3 = add nuw nsw i32 %i.bi, 1008
  store i32 %.sroa.01.0.i.us.reass.us.3, ptr %i.q, align 8, !alias.scope !35
  %i.bm = zext nneg i32 %.sroa.0.1.i.us.us.3 to i64
  store i64 %i.bm, ptr %i.p, align 8, !alias.scope !35
  %i.bn = icmp ne i32 %i.bi, %i.v
  %or.cond.us.us.not.3 = select i1 %i.bh, i1 true, i1 %i.bn
  %spec.select.us.us.3 = select i1 %or.cond.us.us.not.3, i1 %.sroa.09.1281.us.us.3, i1 false ; 3 uses
  %i.bo = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.n unwind label %.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.bo, label %bb.o, label %.split286.us.us.3

bb.o:                                             ; preds = %bb.n
  %i.bp = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.bq = fcmp ogt double %i.bp, %.sroa.011.1280.us.us.3
  br i1 %i.bq, label %.split286.us.us.3, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.br = add nuw nsw i32 %.sroa.04.1282.us.us.3, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond356.3.not = icmp eq i32 %i.br, 16
  br i1 %exitcond356.3.not, label %.split300.us, label %bb.m

.split286.us.us.3:                                ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %spec.select.us.us.3, label %bb.v, label %bb.u

.lr.ph.us:                                        ; preds = %.lr.ph.us.peel.next, %bb.s
  %.sroa.04.1282.us.us = phi i32 [ %i.bx, %bb.s ], [ 1, %.lr.ph.us.peel.next ] ; 6 uses
  %.sroa.09.1281.us.us = phi i1 [ %spec.select.us.us, %bb.s ], [ %or.cond.us.us.not.peel, %.lr.ph.us.peel.next ]
  %.sroa.011.1280.us.us = phi double [ %i.bv, %bb.s ], [ %i.aa, %.lr.ph.us.peel.next ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  store i32 %.sroa.04.1282.us.us, ptr %i.l, align 4, !alias.scope !28
  %i.bs = add nuw nsw i32 %.sroa.04.1282.us.us, 1610612732
  %.sroa.0.1.i.us.us = zext nneg i32 %i.bs to i64
  %.sroa.01.0.i.us.reass.us = add nuw nsw i32 %.sroa.04.1282.us.us, 140
  store i32 %.sroa.01.0.i.us.reass.us, ptr %i.q, align 8, !alias.scope !28
  store i64 %.sroa.0.1.i.us.us, ptr %i.p, align 8, !alias.scope !28
  %i.bt = icmp ne i32 %.sroa.04.1282.us.us, %i.v
  %or.cond.us.us.not = select i1 %i.x, i1 true, i1 %i.bt
  %spec.select.us.us = select i1 %or.cond.us.us.not, i1 %.sroa.09.1281.us.us, i1 false ; 3 uses
  %i.bu = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.q unwind label %.loopexit265.split.us.split.us.loopexit.loopexit

bb.q:                                             ; preds = %.lr.ph.us
  br i1 %i.bu, label %bb.r, label %.loopexit264.us.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bv = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.bw = fcmp ogt double %i.bv, %.sroa.011.1280.us.us
  br i1 %i.bw, label %.loopexit264.us.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.bx = add nuw nsw i32 %.sroa.04.1282.us.us, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond356.not = icmp eq i32 %i.bx, 16
  br i1 %exitcond356.not, label %.lr.ph.us.1, label %.lr.ph.us, !llvm.loop !37

.loopexit265.split.us.split.us.loopexit.loopexit: ; preds = %.lr.ph.us
  %lpad.loopexit608 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit265

.loopexit265.split.us.split.us.loopexit.loopexit.split-lp: ; preds = %.lr.ph.us.peel
  %lpad.loopexit.split-lp609 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit265

.loopexit265.split.us.split.us.loopexit.split-lp.loopexit: ; preds = %bb.e
  %lpad.loopexit361 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit265

.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.i
  %lpad.loopexit364 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit265

.loopexit265.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit265

bb.t:                                             ; preds = %bb.z, %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  invoke void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %5, ptr noalias nofree noundef nonnull %12, ptr noalias nofree noundef nonnull %13, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %15, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bz)
          to label %bb.aq unwind label %.loopexit.split-lp

.split300.us:                                     ; preds = %bb.p, %.loopexit264.us.2
  %.us-phi301 = phi double [ %.sroa.011.1276.us.2, %.loopexit264.us.2 ], [ %i.bp, %bb.p ]
  %.us-phi302 = phi i1 [ %.sroa.09.2.us.2, %.loopexit264.us.2 ], [ %spec.select.us.us.3, %bb.p ]
  br i1 %.us-phi302, label %bb.v, label %bb.u

.lr.ph:                                           ; preds = %bb.b
  %16 = zext i32 %i.v to i64
  br label %bb.aa

bb.u:                                             ; preds = %.split286.3, %.split286.us.us.3, %.loopexit264.3, %bb.y, %.split300.us
  invoke void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock25RecomputeDistancePrefixes(ptr noalias nofree noundef nonnull align 4 %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.z unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %.split286.3, %.split286.us.us.3, %.loopexit264.3, %.split300.us
  %.us-phi301402 = phi double [ %.sroa.011.1276.3, %.loopexit264.3 ], [ %.us-phi301, %.split300.us ], [ %.sroa.011.1280.us.us.3, %.split286.us.us.3 ], [ %.sroa.011.1280.3, %.split286.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double 0.000000e+00, ptr %i.a, align 8
  %i.ca = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.w unwind label %.loopexit.split-lp ; 0 uses

.thread132.thread.thread:                         ; preds = %.invoke, %bb.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit78, %.loopexit262, %bb.bh
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralEECsl8OoimOLbh_6qdrant.exit80.thread

bb.w:                                             ; preds = %bb.v
  %i.cb = load double, ptr %i.a, align 8, !noundef !5
  %i.cc = fcmp olt double %i.cb, %.us-phi301402
  br i1 %i.cc, label %bb.x, label %bb.y

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
  %indvars.iv353 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next354, %bb.ap ] ; 5 uses
  %.sroa.09.1281 = phi i1 [ true, %.lr.ph ], [ %spec.select, %bb.ap ]
  %.sroa.011.1280 = phi double [ f0x547D42AEA2879F2E, %.lr.ph ], [ %i.dn, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %17 = trunc nuw nsw i64 %indvars.iv353 to i32   ; 2 uses
  store i32 %17, ptr %i.l, align 4, !alias.scope !28
  %i.cd = add nuw nsw i64 %indvars.iv353, 67108860
  %18 = trunc i64 %indvars.iv353 to i32
  %i.ce = add i32 %18, 64
  store i32 %i.ce, ptr %i.q, align 8, !alias.scope !28
  store i64 %i.cd, ptr %i.p, align 8, !alias.scope !28
  %i.cf = icmp ne i64 %indvars.iv353, %16
  %or.cond.not = select i1 %i.x, i1 true, i1 %i.cf
  %spec.select = select i1 %or.cond.not, i1 %.sroa.09.1281, i1 false ; 3 uses
  %i.cg = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.an unwind label %.loopexit265.split.loopexit

.loopexit264:                                     ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = call i32 @llvm.usub.sat.i32(i32 %17, i32 1) ; 3 uses
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = icmp ult i32 %i.ch, 32
  br i1 %i.cj, label %.lr.ph.1, label %.loopexit264.1

.lr.ph.1:                                         ; preds = %bb.ap, %.loopexit264
  %.sroa.04.1271406 = phi i32 [ %i.ch, %.loopexit264 ], [ 15, %bb.ap ]
  %.sroa.011.1276405 = phi double [ %.sroa.011.1280, %.loopexit264 ], [ %i.dn, %bb.ap ]
  store i32 1, ptr %i.k, align 8, !alias.scope !39
  %i.ck = icmp ne i32 %i.t, 1
  %19 = lshr i32 %.sroa.04.1271406, 1
  %20 = zext nneg i32 %19 to i64
  %i.cl = zext i32 %i.v to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.1
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %bb.ae ], [ %20, %.lr.ph.1 ] ; 4 uses
  %.sroa.09.1281.1 = phi i1 [ %spec.select.1, %bb.ae ], [ %spec.select, %.lr.ph.1 ]
  %.sroa.011.1280.1 = phi double [ %i.cq, %bb.ae ], [ %.sroa.011.1276405, %.lr.ph.1 ] ; 2 uses
  %21 = shl nuw nsw i64 %indvars.iv350, 1         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %22 = trunc nuw i64 %21 to i32
  store i32 %22, ptr %i.l, align 4, !alias.scope !39
  %i.cm = shl nuw i64 %indvars.iv350, 1
  %i.cn = add i64 %i.cm, 134217720
  %23 = trunc i64 %21 to i32
  %24 = add i32 %23, 112
  store i32 %24, ptr %i.q, align 8, !alias.scope !39
  store i64 %i.cn, ptr %i.p, align 8, !alias.scope !39
  %i.co = icmp ne i64 %21, %i.cl
  %or.cond.not.1 = select i1 %i.ck, i1 true, i1 %i.co
  %spec.select.1 = select i1 %or.cond.not.1, i1 %.sroa.09.1281.1, i1 false ; 3 uses
  %i.cp = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %.loopexit265.split.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cp, label %bb.ad, label %.split286.1

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.cr = fcmp ogt double %i.cq, %.sroa.011.1280.1
  br i1 %i.cr, label %.split286.1, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.1.not = icmp eq i64 %indvars.iv.next351, 16
  br i1 %exitcond.1.not, label %.loopexit264.1, label %bb.ab

.split286.1:                                      ; preds = %bb.ad, %bb.ac
  %25 = trunc nuw i64 %indvars.iv350 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.1

.loopexit264.1:                                   ; preds = %bb.ae, %.split286.1, %.loopexit264
  %.sroa.011.1276.1 = phi double [ %.sroa.011.1280.1, %.split286.1 ], [ %.sroa.011.1280, %.loopexit264 ], [ %i.cq, %bb.ae ] ; 2 uses
  %.sroa.04.1271.1 = phi i32 [ %25, %.split286.1 ], [ %i.ci, %.loopexit264 ], [ 16, %bb.ae ]
  %.sroa.09.2.1 = phi i1 [ %spec.select.1, %.split286.1 ], [ %spec.select, %.loopexit264 ], [ %spec.select.1, %bb.ae ] ; 2 uses
  %i.cs = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.1, i32 1) ; 3 uses
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = icmp ult i32 %i.cs, 32
  br i1 %i.cu, label %.lr.ph.2, label %.loopexit264.2

.lr.ph.2:                                         ; preds = %.loopexit264.1
  store i32 2, ptr %i.k, align 8, !alias.scope !41
  %i.cv = icmp ne i32 %i.t, 2
  %26 = lshr i32 %i.cs, 1
  %27 = zext nneg i32 %26 to i64
  %i.cw = zext i32 %i.v to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.2
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %bb.ai ], [ %27, %.lr.ph.2 ] ; 4 uses
  %.sroa.09.1281.2 = phi i1 [ %spec.select.2, %bb.ai ], [ %.sroa.09.2.1, %.lr.ph.2 ]
  %.sroa.011.1280.2 = phi double [ %i.db, %bb.ai ], [ %.sroa.011.1276.1, %.lr.ph.2 ] ; 2 uses
  %28 = shl nuw nsw i64 %indvars.iv347, 2         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %29 = trunc nuw i64 %28 to i32
  store i32 %29, ptr %i.l, align 4, !alias.scope !41
  %i.cx = shl i64 %indvars.iv347, 2
  %i.cy = add i64 %i.cx, 268435440
  %30 = trunc i64 %28 to i32
  %31 = add i32 %30, 208
  store i32 %31, ptr %i.q, align 8, !alias.scope !41
  store i64 %i.cy, ptr %i.p, align 8, !alias.scope !41
  %i.cz = icmp ne i64 %28, %i.cw
  %or.cond.not.2 = select i1 %i.cv, i1 true, i1 %i.cz
  %spec.select.2 = select i1 %or.cond.not.2, i1 %.sroa.09.1281.2, i1 false ; 3 uses
  %i.da = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ag unwind label %.loopexit265.split.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.af
  br i1 %i.da, label %bb.ah, label %.split286.2

bb.ah:                                            ; preds = %bb.ag
  %i.db = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.dc = fcmp ogt double %i.db, %.sroa.011.1280.2
  br i1 %i.dc, label %.split286.2, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.2.not = icmp eq i64 %indvars.iv.next348, 16
  br i1 %exitcond.2.not, label %.loopexit264.2, label %bb.af

.split286.2:                                      ; preds = %bb.ah, %bb.ag
  %32 = trunc nuw i64 %indvars.iv347 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit264.2

.loopexit264.2:                                   ; preds = %bb.ai, %.split286.2, %.loopexit264.1
  %.sroa.011.1276.2 = phi double [ %.sroa.011.1280.2, %.split286.2 ], [ %.sroa.011.1276.1, %.loopexit264.1 ], [ %i.db, %bb.ai ] ; 2 uses
  %.sroa.04.1271.2 = phi i32 [ %32, %.split286.2 ], [ %i.ct, %.loopexit264.1 ], [ 16, %bb.ai ]
  %.sroa.09.2.2 = phi i1 [ %spec.select.2, %.split286.2 ], [ %.sroa.09.2.1, %.loopexit264.1 ], [ %spec.select.2, %bb.ai ] ; 2 uses
  %i.dd = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1271.2, i32 1) ; 2 uses
  %i.de = icmp ult i32 %i.dd, 32
  br i1 %i.de, label %.lr.ph.3, label %.loopexit264.3

.lr.ph.3:                                         ; preds = %.loopexit264.2
  store i32 3, ptr %i.k, align 8, !alias.scope !43
  %i.df = icmp ne i32 %i.t, 3
  %33 = lshr i32 %i.dd, 1
  %34 = zext nneg i32 %33 to i64
  %i.dg = zext i32 %i.v to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph.3
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.am ], [ %34, %.lr.ph.3 ] ; 3 uses
  %.sroa.09.1281.3 = phi i1 [ %spec.select.3, %bb.am ], [ %.sroa.09.2.2, %.lr.ph.3 ]
  %.sroa.011.1280.3 = phi double [ %i.dl, %bb.am ], [ %.sroa.011.1276.2, %.lr.ph.3 ] ; 2 uses
  %35 = shl nuw nsw i64 %indvars.iv, 3            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %36 = trunc nuw i64 %35 to i32
  store i32 %36, ptr %i.l, align 4, !alias.scope !43
  %i.dh = shl i64 %indvars.iv, 3
  %i.di = add i64 %i.dh, 536870880
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, 400
  store i32 %38, ptr %i.q, align 8, !alias.scope !43
  store i64 %i.di, ptr %i.p, align 8, !alias.scope !43
  %i.dj = icmp ne i64 %35, %i.dg
  %or.cond.not.3 = select i1 %i.df, i1 true, i1 %i.dj
  %spec.select.3 = select i1 %or.cond.not.3, i1 %.sroa.09.1281.3, i1 false ; 3 uses
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ak unwind label %.loopexit265.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.dk, label %bb.al, label %.split286.3

bb.al:                                            ; preds = %bb.ak
  %i.dl = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.dm = fcmp ogt double %i.dl, %.sroa.011.1280.3
  br i1 %i.dm, label %.split286.3, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.a, 16
  br i1 %exitcond.3.not, label %.loopexit264.3, label %bb.aj

.split286.3:                                      ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %spec.select.3, label %bb.v, label %bb.u

.loopexit264.3:                                   ; preds = %bb.am, %.loopexit264.2
  %.sroa.011.1276.3 = phi double [ %.sroa.011.1276.2, %.loopexit264.2 ], [ %i.dl, %bb.am ]
  %.sroa.09.2.3 = phi i1 [ %.sroa.09.2.2, %.loopexit264.2 ], [ %spec.select.3, %bb.am ]
  br i1 %.sroa.09.2.3, label %bb.v, label %bb.u

bb.an:                                            ; preds = %bb.aa
  br i1 %i.cg, label %bb.ao, label %.loopexit264

bb.ao:                                            ; preds = %bb.an
  %i.dn = load double, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.do = fcmp ogt double %i.dn, %.sroa.011.1280
  br i1 %i.do, label %.loopexit264, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %indvars.iv.next354, 16
  br i1 %exitcond.not, label %.lr.ph.1, label %bb.aa

bb.aq:                                            ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !5
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ar, label %.loopexit263

bb.ar:                                            ; preds = %bb.aq
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !5
  %i.du = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram11ContextTypeE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.dt)
          to label %bb.as unwind label %.loopexit.split-lp ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.dv = extractvalue { ptr, i64 } %i.du, 0      ; 4 uses
  %i.dw = extractvalue { ptr, i64 } %i.du, 1      ; 3 uses
  %i.dx = icmp eq i64 %i.g, 0
  br i1 %i.dx, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %i.g, i64 noundef 1) #15
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  %i.dy = icmp samesign eq i64 %i.dw, 0
  br i1 %i.dy, label %.loopexit263, label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %bb.au
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dv, i8 %11, i64 %i.dw, i1 false)
  br label %.loopexit263

.loopexit263:                                     ; preds = %.lr.ph305.preheader, %bb.au, %bb.aq
  %.sroa.10.1 = phi i64 [ %i.g, %bb.aq ], [ 0, %bb.au ], [ %i.dw, %.lr.ph305.preheader ] ; 6 uses
  %.sroa.090.1 = phi ptr [ %i.f, %bb.aq ], [ %i.dv, %bb.au ], [ %i.dv, %.lr.ph305.preheader ] ; 7 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.aq ], [ 64, %bb.au ], [ 64, %.lr.ph305.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !5
  %i.eb = mul i64 %i.ea, %.sroa.0.0               ; 2 uses
  %i.ec = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.eb)
          to label %bb.av unwind label %.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %.loopexit263
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0      ; 8 uses
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1      ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !5
  %i.eh = shl i64 %i.eg, 2
  %i.ei = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.eh)
          to label %bb.aw unwind label %.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0      ; 9 uses
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1      ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.em = load i64, ptr %i.el, align 8, !noundef !5 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 248
  store i64 %i.em, ptr %i.en, align 8
  %i.eo = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramCommandE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.em)
          to label %bb.ax unwind label %.loopexit.split-lp ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 3 uses
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 192 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 200 ; 2 uses
  %.val41 = load i64, ptr %i.es, align 8, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %.val41, 0
  br i1 %i.et, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val40 = load ptr, ptr %i.er, align 8, !nonnull !5, !noundef !5
  %i.eu = mul nuw nsw i64 %.val41, 2832
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40, i64 noundef range(i64 1, 0) %i.eu, i64 noundef 8) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.ep, ptr %i.er, align 8
  store i64 %i.eq, ptr %i.es, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.090.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  invoke void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram32BrotliBuildHistogramsWithContextNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef %6, i8 noundef %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.090.1, i64 noundef %.sroa.10.1, ptr noalias nofree noundef nonnull align 8 %i.ed, i64 noundef %i.ee, ptr noalias nofree noundef nonnull align 8 %i.ep, i64 noundef %i.eq, ptr noalias nofree noundef nonnull align 8 %i.ej, i64 noundef %i.ek)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram11ContextTypeE9free_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %.sroa.090.1, i64 noundef %.sroa.10.1)
          to label %bb.bb unwind label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ev = load i64, ptr %i.dz, align 8, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 224 ; 2 uses
  %i.ex = shl i64 %i.ev, 6                        ; 2 uses
  store i64 %i.ex, ptr %i.ew, align 8
  %i.ey = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.ex)
          to label %bb.bc unwind label %.thread   ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0
  %i.fa = extractvalue { ptr, i64 } %i.ey, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 144 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 5 uses
  %.val57 = load i64, ptr %i.fc, align 8, !noundef !5 ; 2 uses
  %i.fd = icmp eq i64 %.val57, 0
  br i1 %i.fd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val56 = load ptr, ptr %i.fb, align 8, !nonnull !5, !noundef !5
  %i.fe = shl nuw nsw i64 %.val57, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef range(i64 1, 0) %i.fe, i64 noundef 4) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bd, %bb.bc
  store ptr %i.ez, ptr %i.fb, align 8
  store i64 %i.fa, ptr %i.fc, align 8
  %i.ff = load i64, ptr %i.ew, align 8, !noundef !5 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 240 ; 2 uses
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = invoke { ptr, i64 } @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, i64 noundef %i.ff)
          to label %bb.be unwind label %.thread   ; 2 uses

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxmEECsl8OoimOLbh_6qdrant.exit
  %i.fi = extractvalue { ptr, i64 } %i.fh, 0      ; 3 uses
  %i.fj = extractvalue { ptr, i64 } %i.fh, 1      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 176 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 184 ; 2 uses
  %.val61 = load i64, ptr %i.fl, align 8, !noundef !5 ; 2 uses
  %i.fm = icmp eq i64 %.val61, 0
  br i1 %i.fm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val60 = load ptr, ptr %i.fk, align 8, !nonnull !5, !noundef !5
  %i.fn = mul nuw nsw i64 %.val61, 1040
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef range(i64 1, 0) %i.fn, i64 noundef 8) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  store ptr %i.fi, ptr %i.fk, align 8
  store i64 %i.fj, ptr %i.fl, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ]
  %.val68 = load ptr, ptr %i.fb, align 8, !nonnull !5, !noundef !5
  %.val69 = load i64, ptr %i.fc, align 8, !noundef !5
  invoke void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster23BrotliClusterHistogramsNtNtB4_9histogram16HistogramLiteralNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ed, i64 noundef %i.ee, i64 noundef %i.eb, i64 noundef 256, ptr noalias nofree noundef nonnull %12, ptr noalias nofree noundef nonnull align 8 %i.fi, i64 noundef %i.fj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noalias nofree noundef nonnull align 4 %.val68, i64 noundef %.val69)
          to label %bb.bh unwind label %.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXNtCskMyW5b6jnKh_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsaJmJITVpXm2_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram16HistogramLiteralE9free_cellCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 8 %i.ed, i64 noundef %i.ee)
          to label %bb.bi unwind label %.thread132.thread.thread

bb.bi:                                            ; preds = %bb.bh
  %i.fo = load i32, ptr %i.dp, align 4, !noundef !5
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  %or.cond310 = select i1 %i.fp, i1 true, i1 %i.fr
end_hunk_0
