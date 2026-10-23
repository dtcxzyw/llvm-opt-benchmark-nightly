Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnn3Mat6createEimPNS_9AllocatorE

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv() local_unnamed_addr #1

declare void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #16

declare void @_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), float noundef nofpclass(nan inf), float noundef nofpclass(nan inf), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20compute_B_int8_scaleERKNS_3MatERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = icmp eq i32 %i.b, 3                      ; 4 uses
  %.in.v.i = select i1 %i.c, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load i32, ptr %.in.i, align 8, !tbaa !50 ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph79.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph79.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !24     ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = mul nsw i32 %i.m, %i.g                   ; 15 uses
  %i.p = icmp sgt i32 %i.o, 7
  br i1 %i.p, label %.lr.ph79.split.us.preheader.i, label %.lr.ph79.split.i

.lr.ph79.split.us.preheader.i:                    ; preds = %.lr.ph79.i
  %i.q = and i32 %i.o, 2147483640                 ; 3 uses
  %wide.trip.count178.i = zext nneg i32 %i.d to i64
  %..i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul192.i = mul i64 %..i, %i.n
  %i.r = or disjoint i32 %i.q, 3
  %i.s = icmp samesign ult i32 %i.r, %i.o
  %i.t = add nsw i32 %i.o, -8                     ; 2 uses
  %i.u = lshr i32 %i.t, 3
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %xtraiter173 = and i32 %i.v, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.t, 24
  %unroll_iter179 = and i32 %i.v, 1073741820
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  %lcmp.mod178 = icmp ne i32 %xtraiter173, 0
  br label %.lr.ph79.split.us.i

.lr.ph79.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph79.split.us.preheader.i
  %indvars.iv175.i = phi i64 [ 0, %.lr.ph79.split.us.preheader.i ], [ %indvars.iv.next176.i, %._crit_edge.us.i ] ; 2 uses
  %.05076.us.i = phi float [ 0.000000e+00, %.lr.ph79.split.us.preheader.i ], [ %.151.lcssa.us.i, %._crit_edge.us.i ] ; 4 uses
  %.05275.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph79.split.us.preheader.i ], [ %.lcssa144, %._crit_edge.us.i ] ; 2 uses
  %.05474.us.i = phi <4 x float> [ zeroinitializer, %.lr.ph79.split.us.preheader.i ], [ %.155.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.reass193.i = mul i64 %factor.op.mul192.i, %indvars.iv175.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass193.i ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph79.split.us.i.new

.lr.ph79.split.us.i.new:                          ; preds = %.lr.ph79.split.us.i, %.lr.ph79.split.us.i.new
  %.02958.us.i = phi ptr [ %i.ar, %.lr.ph79.split.us.i.new ], [ %i.x, %.lr.ph79.split.us.i ] ; 5 uses
  %.15357.us.i = phi <8 x float> [ %i.aq, %.lr.ph79.split.us.i.new ], [ %.05275.us.i, %.lr.ph79.split.us.i ]
  %niter180 = phi i32 [ %niter180.next.3, %.lr.ph79.split.us.i.new ], [ 0, %.lr.ph79.split.us.i ]
  %i.y = load <8 x i32>, ptr %.02958.us.i, align 1, !tbaa !89
  %i.z = and <8 x i32> %i.y, splat (i32 2147483647)
  %i.aa = bitcast <8 x i32> %i.z to <8 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15357.us.i, <8 x float> nofpclass(nan inf) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 32
  %i.ad = load <8 x i32>, ptr %i.ac, align 1, !tbaa !89
  %i.ae = and <8 x i32> %i.ad, splat (i32 2147483647)
  %i.af = bitcast <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> nofpclass(nan inf) %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 64
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !89
  %i.aj = and <8 x i32> %i.ai, splat (i32 2147483647)
  %i.ak = bitcast <8 x i32> %i.aj to <8 x float>
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 96
  %i.an = load <8 x i32>, ptr %i.am, align 1, !tbaa !89
  %i.ao = and <8 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <8 x i32> %i.ao to <8 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.ap) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 128 ; 3 uses
  %niter180.next.3 = add i32 %niter180, 4         ; 2 uses
  %niter180.ncmp.3.not = icmp eq i32 %niter180.next.3, %unroll_iter179
  br i1 %niter180.ncmp.3.not, label %..preheader56_crit_edge.us.i.unr-lcssa, label %.lr.ph79.split.us.i.new, !llvm.loop !753

.lr.ph65.us.i:                                    ; preds = %..preheader56_crit_edge.us.i, %.lr.ph65.us.i
  %.164.us.i = phi i32 [ %i.ax, %.lr.ph65.us.i ], [ %i.q, %..preheader56_crit_edge.us.i ]
  %.13063.us.i = phi ptr [ %i.aw, %.lr.ph65.us.i ], [ %.lcssa, %..preheader56_crit_edge.us.i ] ; 2 uses
  %.15562.us.i = phi <4 x float> [ %i.av, %.lr.ph65.us.i ], [ %.05474.us.i, %..preheader56_crit_edge.us.i ]
  %i.as = load <4 x i32>, ptr %.13063.us.i, align 1, !tbaa !89
  %i.at = and <4 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <4 x i32> %i.at to <4 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15562.us.i, <4 x float> nofpclass(nan inf) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13063.us.i, i64 16 ; 2 uses
  %i.ax = add nuw nsw i32 %.164.us.i, 4           ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 3
  %i.az = icmp slt i32 %i.ay, %i.o
  br i1 %i.az, label %.lr.ph65.us.i, label %.preheader.us.i, !llvm.loop !754

.lr.ph72.us.i:                                    ; preds = %.lr.ph72.us.i.preheader, %.lr.ph72.us.i
  %.271.us.i = phi i32 [ %i.bd, %.lr.ph72.us.i ], [ %.271.us.i.ph, %.lr.ph72.us.i.preheader ]
  %.23170.us.i = phi ptr [ %i.bc, %.lr.ph72.us.i ], [ %.23170.us.i.ph, %.lr.ph72.us.i.preheader ] ; 2 uses
  %.15169.us.i = phi float [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ], [ %.15169.us.i.ph, %.lr.ph72.us.i.preheader ]
  %i.ba = load float, ptr %.23170.us.i, align 4, !tbaa !68
  %i.bb = tail call fast float @llvm.fabs.f32(float %i.ba)
  %.sroa.speculated40.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.15169.us.i, float %i.bb) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.23170.us.i, i64 4
  %i.bd = add nuw nsw i32 %.271.us.i, 1           ; 2 uses
  %exitcond174.not.i = icmp eq i32 %i.bd, %i.o
  br i1 %exitcond174.not.i, label %._crit_edge.us.i, label %.lr.ph72.us.i, !llvm.loop !755

._crit_edge.us.i:                                 ; preds = %.lr.ph72.us.i, %middle.block114, %vec.epilog.middle.block139, %.preheader.us.i
  %.151.lcssa.us.i = phi float [ %.05076.us.i, %.preheader.us.i ], [ %i.ck, %vec.epilog.middle.block139 ], [ %i.cb, %middle.block114 ], [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ] ; 2 uses
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %wide.trip.count178.i
  br i1 %exitcond179.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.lr.ph79.split.us.i, !llvm.loop !756

.preheader.us.i:                                  ; preds = %.lr.ph65.us.i, %..preheader56_crit_edge.us.i
  %.155.lcssa.us.i = phi <4 x float> [ %.05474.us.i, %..preheader56_crit_edge.us.i ], [ %i.av, %.lr.ph65.us.i ] ; 2 uses
  %.130.lcssa.us.i = phi ptr [ %.lcssa, %..preheader56_crit_edge.us.i ], [ %i.aw, %.lr.ph65.us.i ] ; 5 uses
  %.1.lcssa.us.i = phi i32 [ %i.q, %..preheader56_crit_edge.us.i ], [ %i.ax, %.lr.ph65.us.i ] ; 5 uses
  %i.be = icmp slt i32 %.1.lcssa.us.i, %i.o
  br i1 %i.be, label %iter.check125, label %._crit_edge.us.i

iter.check125:                                    ; preds = %.preheader.us.i
  %i.bf = xor i32 %.1.lcssa.us.i, -1
  %i.bg = add i32 %i.o, %i.bf                     ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 5 uses
  %min.iters.check95.a = icmp ult i32 %i.bg, 7
  br i1 %min.iters.check95.a, label %.lr.ph72.us.i.preheader, label %vector.main.loop.iter.check96

vector.main.loop.iter.check96:                    ; preds = %iter.check125
  %min.iters.check97 = icmp ult i32 %i.bg, 31
  br i1 %min.iters.check97, label %vec.epilog.ph129, label %vector.ph98

vector.ph98:                                      ; preds = %vector.main.loop.iter.check96
  %i.bj = and i64 %i.bi, 24
  %n.vec99 = and i64 %i.bi, 8589934560            ; 5 uses
  %i.bk = trunc i64 %n.vec99 to i32
  %i.bl = add i32 %.1.lcssa.us.i, %i.bk
  %i.bm = shl nuw nsw i64 %n.vec99, 2
  %i.bn = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.bm
  %broadcast.splatinsert100 = insertelement <8 x float> poison, float %.05076.us.i, i64 0
  %broadcast.splat101 = shufflevector <8 x float> %broadcast.splatinsert100, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.ph98, %vector.body102
  %index103 = phi i64 [ 0, %vector.ph98 ], [ %index.next113, %vector.body102 ] ; 2 uses
  %vec.phi104.a = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.bw, %vector.body102 ]
  %vec.phi105.a = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.bx, %vector.body102 ]
  %vec.phi106 = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.by, %vector.body102 ]
  %vec.phi107 = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.bz, %vector.body102 ]
  %i.bo = shl i64 %index103, 2
  %next.gep108 = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep108, i64 32
  %i.bq = getelementptr i8, ptr %next.gep108, i64 64
  %i.br = getelementptr i8, ptr %next.gep108, i64 96
  %wide.load109.a = load <8 x float>, ptr %next.gep108, align 4, !tbaa !68
  %wide.load110.a = load <8 x float>, ptr %i.bp, align 4, !tbaa !68
  %wide.load111 = load <8 x float>, ptr %i.bq, align 4, !tbaa !68
  %wide.load112 = load <8 x float>, ptr %i.br, align 4, !tbaa !68
  %i.bs = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load109.a)
  %i.bt = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load110.a)
  %i.bu = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load111)
  %i.bv = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load112)
  %i.bw = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi104.a, <8 x float> %i.bs) ; 2 uses
  %i.bx = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi105.a, <8 x float> %i.bt) ; 2 uses
  %i.by = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi106, <8 x float> %i.bu) ; 2 uses
  %i.bz = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi107, <8 x float> %i.bv) ; 2 uses
  %index.next113 = add nuw i64 %index103, 32      ; 2 uses
  %i.ca = icmp eq i64 %index.next113, %n.vec99
  br i1 %i.ca, label %middle.block114, label %vector.body102, !llvm.loop !757

middle.block114:                                  ; preds = %vector.body102
  %rdx.minmax.select116.a = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bw, <8 x float> %i.bx)
  %rdx.minmax.select118.a = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select116.a, <8 x float> %i.by)
  %rdx.minmax.select120 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select118.a, <8 x float> %i.bz)
  %i.cb = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select120) ; 3 uses
  %cmp.n121 = icmp eq i64 %i.bi, %n.vec99
  br i1 %cmp.n121, label %._crit_edge.us.i, label %vec.epilog.iter.check127

vec.epilog.iter.check127:                         ; preds = %middle.block114
  %min.epilog.iters.check128 = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check128, label %.lr.ph72.us.i.preheader, label %vec.epilog.ph129, !prof !90

vec.epilog.ph129:                                 ; preds = %vector.main.loop.iter.check96, %vec.epilog.iter.check127
  %vec.epilog.resume.val122 = phi i64 [ %n.vec99, %vec.epilog.iter.check127 ], [ 0, %vector.main.loop.iter.check96 ]
  %bc.merge.rdx124 = phi float [ %i.cb, %vec.epilog.iter.check127 ], [ %.05076.us.i, %vector.main.loop.iter.check96 ]
  %broadcast.splatinsert130 = insertelement <8 x float> poison, float %bc.merge.rdx124, i64 0
  %broadcast.splat131 = shufflevector <8 x float> %broadcast.splatinsert130, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec130 = and i64 %i.bi, 8589934584           ; 4 uses
  %i.cc = trunc i64 %n.vec130 to i32
  %i.cd = add i32 %.1.lcssa.us.i, %i.cc
  %i.ce = shl nuw nsw i64 %n.vec130, 2
  %i.cf = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.ce
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph129
  %index134 = phi i64 [ %vec.epilog.resume.val122, %vec.epilog.ph129 ], [ %index.next138, %vec.epilog.vector.body133 ] ; 2 uses
  %vec.phi135 = phi <8 x float> [ %broadcast.splat131, %vec.epilog.ph129 ], [ %i.ci, %vec.epilog.vector.body133 ]
  %i.cg = shl i64 %index134, 2
  %next.gep136 = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.cg
  %wide.load137 = load <8 x float>, ptr %next.gep136, align 4, !tbaa !68
  %i.ch = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load137)
  %i.ci = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi135, <8 x float> %i.ch) ; 2 uses
  %index.next138 = add nuw i64 %index134, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next138, %n.vec130
  br i1 %i.cj, label %vec.epilog.middle.block139, label %vec.epilog.vector.body133, !llvm.loop !758

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body133
  %i.ck = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ci) ; 2 uses
  %cmp.n140 = icmp eq i64 %i.bi, %n.vec130
  br i1 %cmp.n140, label %._crit_edge.us.i, label %.lr.ph72.us.i.preheader

.lr.ph72.us.i.preheader:                          ; preds = %iter.check125, %vec.epilog.iter.check127, %vec.epilog.middle.block139
  %.271.us.i.ph = phi i32 [ %.1.lcssa.us.i, %iter.check125 ], [ %i.bl, %vec.epilog.iter.check127 ], [ %i.cd, %vec.epilog.middle.block139 ]
  %.23170.us.i.ph = phi ptr [ %.130.lcssa.us.i, %iter.check125 ], [ %i.bn, %vec.epilog.iter.check127 ], [ %i.cf, %vec.epilog.middle.block139 ]
  %.15169.us.i.ph = phi float [ %.05076.us.i, %iter.check125 ], [ %i.cb, %vec.epilog.iter.check127 ], [ %i.ck, %vec.epilog.middle.block139 ]
  br label %.lr.ph72.us.i

..preheader56_crit_edge.us.i.unr-lcssa:           ; preds = %.lr.ph79.split.us.i.new
  br i1 %lcmp.mod175.not, label %..preheader56_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader56_crit_edge.us.i.unr-lcssa, %.lr.ph79.split.us.i
  %.02958.us.i.epil.init = phi ptr [ %i.x, %.lr.ph79.split.us.i ], [ %i.ar, %..preheader56_crit_edge.us.i.unr-lcssa ]
  %.15357.us.i.epil.init = phi <8 x float> [ %.05275.us.i, %.lr.ph79.split.us.i ], [ %i.aq, %..preheader56_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.02958.us.i.epil = phi ptr [ %.02958.us.i.epil.init, %.epil.preheader ], [ %i.cp, %bb.b ] ; 2 uses
  %.15357.us.i.epil = phi <8 x float> [ %.15357.us.i.epil.init, %.epil.preheader ], [ %i.co, %bb.b ]
  %epil.iter174 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter174.next, %bb.b ]
  %i.cl = load <8 x i32>, ptr %.02958.us.i.epil, align 1, !tbaa !89
  %i.cm = and <8 x i32> %i.cl, splat (i32 2147483647)
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15357.us.i.epil, <8 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02958.us.i.epil, i64 32 ; 2 uses
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %..preheader56_crit_edge.us.i, label %bb.b, !llvm.loop !759

..preheader56_crit_edge.us.i:                     ; preds = %bb.b, %..preheader56_crit_edge.us.i.unr-lcssa
  %.lcssa144 = phi <8 x float> [ %i.aq, %..preheader56_crit_edge.us.i.unr-lcssa ], [ %i.co, %bb.b ] ; 2 uses
  %.lcssa = phi ptr [ %i.ar, %..preheader56_crit_edge.us.i.unr-lcssa ], [ %i.cp, %bb.b ] ; 2 uses
  br i1 %i.s, label %.lr.ph65.us.i, label %.preheader.us.i

.lr.ph79.split.i:                                 ; preds = %.lr.ph79.i
  %i.cq = icmp sgt i32 %i.o, 3
  br i1 %i.cq, label %.lr.ph79.split.split.us.preheader.i, label %.lr.ph79.split.split.i

.lr.ph79.split.split.us.preheader.i:              ; preds = %.lr.ph79.split.i
  %wide.trip.count172.i = zext nneg i32 %i.d to i64 ; 3 uses
  %.146.i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul190.i = mul i64 %.146.i, %i.n     ; 6 uses
  %.not.i = icmp eq i32 %i.o, 4
  br i1 %.not.i, label %..preheader_crit_edge.us94.i.us.preheader, label %..preheader_crit_edge.us94.i.preheader

..preheader_crit_edge.us94.i.us.preheader:        ; preds = %.lr.ph79.split.split.us.preheader.i
  %xtraiter = and i64 %wide.trip.count172.i, 3    ; 3 uses
  %i.cr = icmp ult i32 %i.d, 4
  br i1 %i.cr, label %..preheader_crit_edge.us94.i.us.epil.preheader, label %..preheader_crit_edge.us94.i.us.preheader.new

..preheader_crit_edge.us94.i.us.preheader.new:    ; preds = %..preheader_crit_edge.us94.i.us.preheader
  %unroll_iter = and i64 %wide.trip.count172.i, 2147483644
  br label %..preheader_crit_edge.us94.i.us

..preheader_crit_edge.us94.i.preheader:           ; preds = %.lr.ph79.split.split.us.preheader.i
  %i.cs = add nsw i32 %i.o, -4                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.cs, 8
  %min.iters.check61 = icmp ult i32 %i.cs, 32
  %i.cu = and i64 %i.ct, 24
  %n.vec63 = and i64 %i.ct, 4294967264            ; 5 uses
  %i.cv = trunc nuw i64 %n.vec63 to i32
  %i.cw = or disjoint i32 %i.cv, 4
  %i.cx = shl nuw nsw i64 %n.vec63, 2
  %cmp.n = icmp eq i64 %n.vec63, %i.ct
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  %n.vec83 = and i64 %i.ct, 4294967288            ; 4 uses
  %i.cy = trunc nuw i64 %n.vec83 to i32
  %i.cz = or disjoint i32 %i.cy, 4
  %i.da = shl nuw nsw i64 %n.vec83, 2
  %cmp.n91 = icmp eq i64 %n.vec83, %i.ct
  br label %iter.check

..preheader_crit_edge.us94.i.us:                  ; preds = %..preheader_crit_edge.us94.i.us, %..preheader_crit_edge.us94.i.us.preheader.new
  %indvars.iv169.i.us = phi i64 [ 0, %..preheader_crit_edge.us94.i.us.preheader.new ], [ %indvars.iv.next170.i.us.3, %..preheader_crit_edge.us94.i.us ] ; 5 uses
  %.05474.us88.i.us = phi <4 x float> [ zeroinitializer, %..preheader_crit_edge.us94.i.us.preheader.new ], [ %i.du, %..preheader_crit_edge.us94.i.us ]
  %niter = phi i64 [ 0, %..preheader_crit_edge.us94.i.us.preheader.new ], [ %niter.next.3, %..preheader_crit_edge.us94.i.us ]
  %.reass191.i.us = mul i64 %factor.op.mul190.i, %indvars.iv169.i.us
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass191.i.us
  %i.dc = load <4 x i32>, ptr %i.db, align 1, !tbaa !89
  %i.dd = and <4 x i32> %i.dc, splat (i32 2147483647)
  %i.de = bitcast <4 x i32> %i.dd to <4 x float>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05474.us88.i.us, <4 x float> nofpclass(nan inf) %i.de)
  %indvars.iv.next170.i.us = or disjoint i64 %indvars.iv169.i.us, 1
  %.reass191.i.us.1 = mul i64 %factor.op.mul190.i, %indvars.iv.next170.i.us
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass191.i.us.1
  %i.dh = load <4 x i32>, ptr %i.dg, align 1, !tbaa !89
  %i.di = and <4 x i32> %i.dh, splat (i32 2147483647)
  %i.dj = bitcast <4 x i32> %i.di to <4 x float>
  %i.dk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dj)
  %indvars.iv.next170.i.us.1 = or disjoint i64 %indvars.iv169.i.us, 2
  %.reass191.i.us.2 = mul i64 %factor.op.mul190.i, %indvars.iv.next170.i.us.1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass191.i.us.2
  %i.dm = load <4 x i32>, ptr %i.dl, align 1, !tbaa !89
  %i.dn = and <4 x i32> %i.dm, splat (i32 2147483647)
  %i.do = bitcast <4 x i32> %i.dn to <4 x float>
  %i.dp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.do)
  %indvars.iv.next170.i.us.2 = or disjoint i64 %indvars.iv169.i.us, 3
  %.reass191.i.us.3 = mul i64 %factor.op.mul190.i, %indvars.iv.next170.i.us.2
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass191.i.us.3
  %i.dr = load <4 x i32>, ptr %i.dq, align 1, !tbaa !89
  %i.ds = and <4 x i32> %i.dr, splat (i32 2147483647)
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.dt) ; 3 uses
  %indvars.iv.next170.i.us.3 = add nuw nsw i64 %indvars.iv169.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa, label %..preheader_crit_edge.us94.i.us, !llvm.loop !756

iter.check:                                       ; preds = %..preheader_crit_edge.us94.i.preheader, %._crit_edge.us107.i.loopexit
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %._crit_edge.us107.i.loopexit ], [ 0, %..preheader_crit_edge.us94.i.preheader ] ; 2 uses
  %.05076.us87.i = phi float [ %.sroa.speculated40.us106.i.lcssa, %._crit_edge.us107.i.loopexit ], [ 0.000000e+00, %..preheader_crit_edge.us94.i.preheader ] ; 3 uses
  %.05474.us88.i = phi <4 x float> [ %i.ey, %._crit_edge.us107.i.loopexit ], [ zeroinitializer, %..preheader_crit_edge.us94.i.preheader ]
  %.reass191.i = mul i64 %factor.op.mul190.i, %indvars.iv169.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass191.i ; 2 uses
  %i.dw = load <4 x i32>, ptr %i.dv, align 1, !tbaa !89
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph72.us102.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.cx
  %broadcast.splatinsert64 = insertelement <8 x float> poison, float %.05076.us87.i, i64 0
  %broadcast.splat65 = shufflevector <8 x float> %broadcast.splatinsert64, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.ph62, %vector.body66
  %index67 = phi i64 [ 0, %vector.ph62 ], [ %index.next76, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ %broadcast.splat65, %vector.ph62 ], [ %i.eh, %vector.body66 ]
  %vec.phi69 = phi <8 x float> [ %broadcast.splat65, %vector.ph62 ], [ %i.ei, %vector.body66 ]
  %vec.phi70 = phi <8 x float> [ %broadcast.splat65, %vector.ph62 ], [ %i.ej, %vector.body66 ]
  %vec.phi71 = phi <8 x float> [ %broadcast.splat65, %vector.ph62 ], [ %i.ek, %vector.body66 ]
  %i.dz = shl i64 %index67, 2
  %next.gep72 = getelementptr i8, ptr %i.dx, i64 %i.dz ; 4 uses
  %i.ea = getelementptr i8, ptr %next.gep72, i64 32
  %i.eb = getelementptr i8, ptr %next.gep72, i64 64
  %i.ec = getelementptr i8, ptr %next.gep72, i64 96
  %wide.load = load <8 x float>, ptr %next.gep72, align 4, !tbaa !68
  %wide.load73 = load <8 x float>, ptr %i.ea, align 4, !tbaa !68
  %wide.load74 = load <8 x float>, ptr %i.eb, align 4, !tbaa !68
  %wide.load75 = load <8 x float>, ptr %i.ec, align 4, !tbaa !68
  %i.ed = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.ee = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load73)
  %i.ef = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load74)
  %i.eg = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load75)
  %i.eh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi68, <8 x float> %i.ed) ; 2 uses
  %i.ei = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi69, <8 x float> %i.ee) ; 2 uses
  %i.ej = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi70, <8 x float> %i.ef) ; 2 uses
  %i.ek = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi71, <8 x float> %i.eg) ; 2 uses
  %index.next76 = add nuw i64 %index67, 32        ; 2 uses
  %i.el = icmp eq i64 %index.next76, %n.vec63
  br i1 %i.el, label %middle.block77, label %vector.body66, !llvm.loop !760

middle.block77:                                   ; preds = %vector.body66
  %rdx.minmax.select = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.eh, <8 x float> %i.ei)
  %rdx.minmax.select79 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.ej)
  %rdx.minmax.select81 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select79, <8 x float> %i.ek)
  %i.em = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select81) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us107.i.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block77
  br i1 %min.epilog.iters.check, label %.lr.ph72.us102.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec63, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.em, %vec.epilog.iter.check ], [ %.05076.us87.i, %vector.main.loop.iter.check ]
  %broadcast.splatinsert84 = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> poison, <8 x i32> zeroinitializer
  %2 = getelementptr i8, ptr %i.dx, i64 %i.da
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi87 = phi <8 x float> [ %broadcast.splat85, %vec.epilog.ph ], [ %i.ep, %vec.epilog.vector.body ]
  %i.en = shl i64 %index86, 2
  %next.gep88 = getelementptr i8, ptr %i.dx, i64 %i.en
  %wide.load89 = load <8 x float>, ptr %next.gep88, align 4, !tbaa !68
  %i.eo = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load89)
  %i.ep = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi87, <8 x float> %i.eo) ; 2 uses
  %index.next90 = add nuw i64 %index86, 8         ; 2 uses
  %i.eq = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !761

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.er = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ep) ; 2 uses
  br i1 %cmp.n91, label %._crit_edge.us107.i.loopexit, label %.lr.ph72.us102.i.preheader

.lr.ph72.us102.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.271.us103.i.ph = phi i32 [ 4, %iter.check ], [ %i.cw, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  %.23170.us104.i.ph = phi ptr [ %i.dx, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  %.15169.us105.i.ph = phi float [ %.05076.us87.i, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  br label %.lr.ph72.us102.i

.lr.ph72.us102.i:                                 ; preds = %.lr.ph72.us102.i.preheader, %.lr.ph72.us102.i
  %.271.us103.i = phi i32 [ %i.ev, %.lr.ph72.us102.i ], [ %.271.us103.i.ph, %.lr.ph72.us102.i.preheader ]
  %.23170.us104.i = phi ptr [ %i.eu, %.lr.ph72.us102.i ], [ %.23170.us104.i.ph, %.lr.ph72.us102.i.preheader ] ; 2 uses
  %.15169.us105.i = phi float [ %.sroa.speculated40.us106.i, %.lr.ph72.us102.i ], [ %.15169.us105.i.ph, %.lr.ph72.us102.i.preheader ]
  %i.es = load float, ptr %.23170.us104.i, align 4, !tbaa !68
  %i.et = tail call fast float @llvm.fabs.f32(float %i.es)
  %.sroa.speculated40.us106.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.15169.us105.i, float %i.et) ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.23170.us104.i, i64 4
  %i.ev = add nuw nsw i32 %.271.us103.i, 1        ; 2 uses
  %exitcond168.not.i = icmp eq i32 %i.ev, %i.o
  br i1 %exitcond168.not.i, label %._crit_edge.us107.i.loopexit, label %.lr.ph72.us102.i, !llvm.loop !762

._crit_edge.us107.i.loopexit:                     ; preds = %.lr.ph72.us102.i, %vec.epilog.middle.block, %middle.block77
  %.sroa.speculated40.us106.i.lcssa = phi float [ %i.er, %vec.epilog.middle.block ], [ %i.em, %middle.block77 ], [ %.sroa.speculated40.us106.i, %.lr.ph72.us102.i ] ; 2 uses
  %i.ew = and <4 x i32> %i.dw, splat (i32 2147483647)
  %i.ex = bitcast <4 x i32> %i.ew to <4 x float>
  %i.ey = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05474.us88.i, <4 x float> nofpclass(nan inf) %i.ex) ; 2 uses
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %wide.trip.count172.i
  br i1 %exitcond173.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %iter.check, !llvm.loop !756

.lr.ph79.split.split.i:                           ; preds = %.lr.ph79.split.i
  %i.ez = icmp sgt i32 %i.o, 0
  br i1 %i.ez, label %.lr.ph79.split.split.split.us.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph79.split.split.split.us.i:                  ; preds = %.lr.ph79.split.split.i
  %wide.trip.count166.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.c, label %.lr.ph79.split.split.split.us.split.us.i, label %.lr.ph79.split.split.split.us.split.i

.lr.ph79.split.split.split.us.split.us.i:         ; preds = %.lr.ph79.split.split.split.us.i
  %factor.op.mul144.i = mul i64 %i.j, %i.n
  %i.fa = zext nneg i32 %i.o to i64               ; 2 uses
  %n.rnd.up45 = add nuw nsw i64 %i.fa, 3
  %n.vec46 = and i64 %n.rnd.up45, 4294967292
  %trip.count.minus.147 = add nsw i64 %i.fa, -1
  %broadcast.splatinsert48 = insertelement <4 x i64> poison, i64 %trip.count.minus.147, i64 0
  %broadcast.splat49 = shufflevector <4 x i64> %broadcast.splatinsert48, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader56.us118.us.i

.preheader56.us118.us.i:                          ; preds = %._crit_edge.us124.us.i, %.lr.ph79.split.split.split.us.split.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %._crit_edge.us124.us.i ], [ 0, %.lr.ph79.split.split.split.us.split.us.i ] ; 2 uses
  %.05076.us117.us.i = phi float [ %i.fi, %._crit_edge.us124.us.i ], [ 0.000000e+00, %.lr.ph79.split.split.split.us.split.us.i ]
  %.reass145.i = mul i64 %factor.op.mul144.i, %indvars.iv163.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass145.i
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %.05076.us117.us.i, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %.preheader56.us118.us.i
  %index53 = phi i64 [ 0, %.preheader56.us118.us.i ], [ %index.next58, %vector.body52 ] ; 2 uses
  %vec.phi54 = phi <4 x float> [ %broadcast.splat51, %.preheader56.us118.us.i ], [ %i.ff, %vector.body52 ] ; 2 uses
  %vec.ind55 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader56.us118.us.i ], [ %vec.ind.next59, %vector.body52 ] ; 2 uses
  %i.fc = icmp ule <4 x i64> %vec.ind55, %broadcast.splat49 ; 2 uses
  %i.fd = shl i64 %index53, 2
  %next.gep56 = getelementptr i8, ptr %i.fb, i64 %i.fd
  %wide.masked.load57 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %next.gep56, <4 x i1> %i.fc, <4 x float> poison), !tbaa !68
  %i.fe = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.masked.load57)
  %i.ff = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi54, <4 x float> %i.fe) ; 2 uses
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %vec.ind.next59 = add nuw <4 x i64> %vec.ind55, splat (i64 4)
  %i.fg = icmp eq i64 %index.next58, %n.vec46
  br i1 %i.fg, label %._crit_edge.us124.us.i, label %vector.body52, !llvm.loop !763

._crit_edge.us124.us.i:                           ; preds = %vector.body52
  %i.fh = select nnan ninf nsz <4 x i1> %i.fc, <4 x float> %i.ff, <4 x float> %vec.phi54
  %i.fi = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.fh) ; 2 uses
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %wide.trip.count166.i
  br i1 %exitcond167.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.preheader56.us118.us.i, !llvm.loop !756

.lr.ph79.split.split.split.us.split.i:            ; preds = %.lr.ph79.split.split.split.us.i
  %factor.op.mul.i = mul nsw i64 %i.n, %i.h
  %i.fj = zext nneg i32 %i.o to i64               ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.fj, 3
  %n.vec = and i64 %n.rnd.up, 4294967292
  %trip.count.minus.1 = add nsw i64 %i.fj, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader56.us118.i

.preheader56.us118.i:                             ; preds = %._crit_edge.us124.i, %.lr.ph79.split.split.split.us.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us124.i ], [ 0, %.lr.ph79.split.split.split.us.split.i ] ; 2 uses
  %.05076.us117.i = phi float [ %i.fr, %._crit_edge.us124.i ], [ 0.000000e+00, %.lr.ph79.split.split.split.us.split.i ]
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv.i
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass.i
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %.05076.us117.i, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader56.us118.i
  %index = phi i64 [ 0, %.preheader56.us118.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat43, %.preheader56.us118.i ], [ %i.fo, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader56.us118.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fl = icmp ule <4 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.fm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fk, i64 %i.fm
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %next.gep, <4 x i1> %i.fl, <4 x float> poison), !tbaa !68
  %i.fn = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.masked.load)
  %i.fo = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.fn) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %._crit_edge.us124.i, label %vector.body, !llvm.loop !764

._crit_edge.us124.i:                              ; preds = %vector.body
  %i.fq = select nnan ninf nsz <4 x i1> %i.fl, <4 x float> %i.fo, <4 x float> %vec.phi
  %i.fr = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.fq) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count166.i
  br i1 %exitcond161.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.preheader56.us118.i, !llvm.loop !756

_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa: ; preds = %..preheader_crit_edge.us94.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %..preheader_crit_edge.us94.i.us.epil.preheader

..preheader_crit_edge.us94.i.us.epil.preheader:   ; preds = %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa, %..preheader_crit_edge.us94.i.us.preheader
  %indvars.iv169.i.us.epil.init = phi i64 [ 0, %..preheader_crit_edge.us94.i.us.preheader ], [ %indvars.iv.next170.i.us.3, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa ]
  %.05474.us88.i.us.epil.init = phi <4 x float> [ zeroinitializer, %..preheader_crit_edge.us94.i.us.preheader ], [ %i.du, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %..preheader_crit_edge.us94.i.us.epil

..preheader_crit_edge.us94.i.us.epil:             ; preds = %..preheader_crit_edge.us94.i.us.epil, %..preheader_crit_edge.us94.i.us.epil.preheader
  %indvars.iv169.i.us.epil = phi i64 [ %indvars.iv.next170.i.us.epil, %..preheader_crit_edge.us94.i.us.epil ], [ %indvars.iv169.i.us.epil.init, %..preheader_crit_edge.us94.i.us.epil.preheader ] ; 2 uses
  %.05474.us88.i.us.epil = phi <4 x float> [ %i.fw, %..preheader_crit_edge.us94.i.us.epil ], [ %.05474.us88.i.us.epil.init, %..preheader_crit_edge.us94.i.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %..preheader_crit_edge.us94.i.us.epil ], [ 0, %..preheader_crit_edge.us94.i.us.epil.preheader ]
  %.reass191.i.us.epil = mul i64 %factor.op.mul190.i, %indvars.iv169.i.us.epil
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass191.i.us.epil
  %i.ft = load <4 x i32>, ptr %i.fs, align 1, !tbaa !89
  %i.fu = and <4 x i32> %i.ft, splat (i32 2147483647)
  %i.fv = bitcast <4 x i32> %i.fu to <4 x float>
  %i.fw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05474.us88.i.us.epil, <4 x float> nofpclass(nan inf) %i.fv) ; 2 uses
  %indvars.iv.next170.i.us.epil = add nuw nsw i64 %indvars.iv169.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %..preheader_crit_edge.us94.i.us.epil, !llvm.loop !765

_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit: ; preds = %._crit_edge.us124.i, %._crit_edge.us124.us.i, %._crit_edge.us107.i.loopexit, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa, %..preheader_crit_edge.us94.i.us.epil, %._crit_edge.us.i, %bb.a, %.lr.ph79.split.split.i
  %.054.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %._crit_edge.us124.us.i ], [ %.155.lcssa.us.i, %._crit_edge.us.i ], [ zeroinitializer, %.lr.ph79.split.split.i ], [ %i.ey, %._crit_edge.us107.i.loopexit ], [ %i.fw, %..preheader_crit_edge.us94.i.us.epil ], [ %i.du, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa ], [ zeroinitializer, %._crit_edge.us124.i ] ; 2 uses
  %.052.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %._crit_edge.us124.us.i ], [ %.lcssa144, %._crit_edge.us.i ], [ zeroinitializer, %.lr.ph79.split.split.i ], [ zeroinitializer, %._crit_edge.us107.i.loopexit ], [ zeroinitializer, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa ], [ zeroinitializer, %..preheader_crit_edge.us94.i.us.epil ], [ zeroinitializer, %._crit_edge.us124.i ] ; 2 uses
  %.050.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.fi, %._crit_edge.us124.us.i ], [ %.151.lcssa.us.i, %._crit_edge.us.i ], [ 0.000000e+00, %.lr.ph79.split.split.i ], [ %.sroa.speculated40.us106.i.lcssa, %._crit_edge.us107.i.loopexit ], [ 0.000000e+00, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit153.unr-lcssa ], [ 0.000000e+00, %..preheader_crit_edge.us94.i.us.epil ], [ %i.fr, %._crit_edge.us124.i ]
  %i.fx = shufflevector <8 x float> %.052.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fy = shufflevector <8 x float> %.052.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) %i.fy) ; 2 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fz, <4 x float> nofpclass(nan inf) %i.ga) ; 2 uses
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.gb, <4 x float> nofpclass(nan inf) %i.gc)
  %i.ge = extractelement <4 x float> %i.gd, i64 0
  %.sroa.speculated36.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.050.lcssa.i, float %i.ge)
  %i.gf = shufflevector <4 x float> %.054.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.054.lcssa.i, <4 x float> nofpclass(nan inf) %i.gf) ; 2 uses
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> nofpclass(nan inf) %i.gh)
  %i.gj = extractelement <4 x float> %i.gi, i64 0
  %.sroa.speculated.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated36.i, float %i.gj) ; 2 uses
  %i.gk = fcmp fast oeq float %.sroa.speculated.i, 0.000000e+00
  %i.gl = fdiv fast float 1.270000e+02, %.sroa.speculated.i
  %i.gm = select fast i1 %i.gk, float 1.000000e+00, float %i.gl
  store float %i.gm, ptr %1, align 4, !tbaa !68
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_AT_x86_int8ERKNS_3MatES2_S2_S2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.p = phi i32 [ %i.j, %.lr.ph ], [ %i.ey, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit ] ; 2 uses
  %.035 = phi i32 [ %i.k, %.lr.ph ], [ %i.ez, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit ] ; 3 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.r = mul nsw i32 %i.q, %.035                  ; 3 uses
  %i.s = load i32, ptr %4, align 4, !tbaa !50
  %i.t = sub nsw i32 %i.s, %i.r
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.t) ; 2 uses
  %i.u = load i32, ptr %5, align 4, !tbaa !50
  %.not25 = icmp eq i32 %i.u, 0
  %i.v = load float, ptr %8, align 4, !tbaa !68   ; 3 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %7, align 8
  %.val26 = load ptr, ptr %9, align 8
  call fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr %.val, float noundef nofpclass(nan inf) %i.v, ptr %.val26, i32 noundef %i.r, i32 noundef %.sroa.speculated)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !50
  br label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.l, align 8, !tbaa !64   ; 4 uses
  %i.x = load i32, ptr %i.m, align 8, !tbaa !76
  %i.y = icmp eq i32 %i.x, 3
  %i.z = load i64, ptr %i.n, align 8
  %i.aa = load i32, ptr %i.o, align 4             ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = select i1 %i.y, i64 %i.z, i64 %i.ab
  %i.ad = sdiv i32 %.sroa.speculated, %i.w        ; 2 uses
  %i.ae = mul i32 %i.aa, %i.w                     ; 8 uses
  %.scalar.i.i = fdiv fast float f0x3C010204, %i.v ; 2 uses
  %i.af = insertelement <4 x float> poison, float %.scalar.i.i, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = insertelement <8 x float> poison, float %.scalar.i.i, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aj = icmp sgt i32 %i.ad, 0
  br i1 %i.aj, label %.lr.ph57.i.i, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph57.i.i:                                     ; preds = %bb.e
  %.val28 = load ptr, ptr %9, align 8, !tbaa !24
  %.val27 = load ptr, ptr %7, align 8, !tbaa !24
  %i.ak = sext i32 %i.r to i64                    ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val28, i64 %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.ak
  %i.an = icmp sgt i32 %i.ae, 7
  %i.ao = and i32 %i.ae, -8                       ; 2 uses
  %i.ap = sext i32 %i.w to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ad to i64
  %i.aq = add i32 %i.ae, -8                       ; 2 uses
  %i.ar = lshr i32 %i.aq, 3
  %i.as = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %xtraiter = and i32 %i.as, 3                    ; 3 uses
  %i.at = icmp ult i32 %i.aq, 24
  %unroll_iter = and i32 %i.as, 1073741820
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod86 = icmp ne i32 %xtraiter, 0
  %i.au = fdiv fast float 1.000000e+00, %i.v
  br label %bb.f

bb.f:                                             ; preds = %.thread31.i.i, %.lr.ph57.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph57.i.i ], [ %indvars.iv.next.i.i, %.thread31.i.i ] ; 2 uses
  %.055.i.i = phi ptr [ %i.am, %.lr.ph57.i.i ], [ %.3.i.i, %.thread31.i.i ] ; 7 uses
  %.06354.i.i = phi ptr [ %i.al, %.lr.ph57.i.i ], [ %.366.i.i, %.thread31.i.i ] ; 7 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !24
  %i.aw = mul nsw i64 %indvars.iv.i.i, %i.ap
  %i.ax = add nsw i64 %i.aw, %i.ak
  %i.ay = mul i64 %i.ax, %i.ac
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ay ; 3 uses
  br i1 %i.an, label %.lr.ph.i.i.preheader, label %.preheader35.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader35.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %.preheader35.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.07037.i.i.epil.init = phi ptr [ %i.az, %.lr.ph.i.i.preheader ], [ %i.ca, %.preheader35.i.i.loopexit.unr-lcssa ]
  %.02536.i.i.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.i.i.preheader ], [ %i.bz, %.preheader35.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07037.i.i.epil = phi ptr [ %i.be, %.lr.ph.i.i.epil ], [ %.07037.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02536.i.i.epil = phi <8 x float> [ %i.bd, %.lr.ph.i.i.epil ], [ %.02536.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ba = load <8 x i32>, ptr %.07037.i.i.epil, align 1, !tbaa !89
  %i.bb = and <8 x i32> %i.ba, splat (i32 2147483647)
  %i.bc = bitcast <8 x i32> %i.bb to <8 x float>
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i.epil, <8 x float> nofpclass(nan inf) %i.bc) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.07037.i.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader35.i.i, label %.lr.ph.i.i.epil, !llvm.loop !843

.preheader35.i.i:                                 ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f
  %.025.lcssa.i.i = phi <8 x float> [ zeroinitializer, %bb.f ], [ %i.bz, %.preheader35.i.i.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph.i.i.epil ] ; 6 uses
  %.070.lcssa.i.i = phi ptr [ %i.az, %bb.f ], [ %i.ca, %.preheader35.i.i.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.i.i.epil ] ; 2 uses
  %.067.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.ao, %.lr.ph.i.i.epil ], [ %i.ao, %.preheader35.i.i.loopexit.unr-lcssa ] ; 3 uses
  %i.bf = or disjoint i32 %.067.lcssa.i.i, 3
  %i.bg = icmp slt i32 %i.bf, %i.ae
  br i1 %i.bg, label %.lr.ph44.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07037.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.az, %.lr.ph.i.i.preheader ] ; 5 uses
  %.02536.i.i = phi <8 x float> [ %i.bz, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bh = load <8 x i32>, ptr %.07037.i.i, align 1, !tbaa !89
  %i.bi = and <8 x i32> %i.bh, splat (i32 2147483647)
  %i.bj = bitcast <8 x i32> %i.bi to <8 x float>
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 32
  %i.bm = load <8 x i32>, ptr %i.bl, align 1, !tbaa !89
  %i.bn = and <8 x i32> %i.bm, splat (i32 2147483647)
  %i.bo = bitcast <8 x i32> %i.bn to <8 x float>
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 64
  %i.br = load <8 x i32>, ptr %i.bq, align 1, !tbaa !89
  %i.bs = and <8 x i32> %i.br, splat (i32 2147483647)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 96
  %i.bw = load <8 x i32>, ptr %i.bv, align 1, !tbaa !89
  %i.bx = and <8 x i32> %i.bw, splat (i32 2147483647)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.by) ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader35.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

.preheader.i.i:                                   ; preds = %.lr.ph44.i.i, %.preheader35.i.i
  %.026.lcssa.i.i = phi <4 x float> [ zeroinitializer, %.preheader35.i.i ], [ %i.dl, %.lr.ph44.i.i ] ; 3 uses
  %.171.lcssa.i.i = phi ptr [ %.070.lcssa.i.i, %.preheader35.i.i ], [ %i.dm, %.lr.ph44.i.i ] ; 5 uses
  %.168.lcssa.i.i = phi i32 [ %.067.lcssa.i.i, %.preheader35.i.i ], [ %i.dn, %.lr.ph44.i.i ] ; 5 uses
  %i.cb = icmp slt i32 %.168.lcssa.i.i, %i.ae
  br i1 %i.cb, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.cc = xor i32 %.168.lcssa.i.i, -1
  %i.cd = add i32 %i.ae, %i.cc                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cd, 7
  br i1 %min.iters.check, label %.lr.ph51.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp ult i32 %i.cd, 31
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 24
  %n.vec = and i64 %i.cf, 8589934560              ; 5 uses
  %i.ch = trunc i64 %n.vec to i32
  %i.ci = add i32 %.168.lcssa.i.i, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec, 2
  %i.ck = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi54 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi55 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi56 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.cl ; 4 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 32
  %i.cn = getelementptr i8, ptr %next.gep, i64 64
  %i.co = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load57 = load <8 x float>, ptr %i.cm, align 4, !tbaa !68
  %wide.load58 = load <8 x float>, ptr %i.cn, align 4, !tbaa !68
  %wide.load59 = load <8 x float>, ptr %i.co, align 4, !tbaa !68
  %i.cp = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.cq = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load57)
  %i.cr = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load58)
  %i.cs = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load59)
  %i.ct = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.cp) ; 2 uses
  %i.cu = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi54, <8 x float> %i.cq) ; 2 uses
  %i.cv = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi55, <8 x float> %i.cr) ; 2 uses
  %i.cw = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi56, <8 x float> %i.cs) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !844

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ct, <8 x float> %i.cu)
  %rdx.minmax.select61 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cv)
  %rdx.minmax.select63 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select61, <8 x float> %i.cw)
  %i.cy = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select63) ; 3 uses
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cy, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec65 = and i64 %i.cf, 8589934584            ; 4 uses
  %i.cz = trunc i64 %n.vec65 to i32
  %i.da = add i32 %.168.lcssa.i.i, %i.cz
  %i.db = shl nuw nsw i64 %n.vec65, 2
  %i.dc = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.db
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.df, %vec.epilog.vector.body ]
  %i.dd = shl i64 %index66, 2
  %next.gep68 = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.dd
  %wide.load69 = load <8 x float>, ptr %next.gep68, align 4, !tbaa !68
  %i.de = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load69)
  %i.df = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi67, <8 x float> %i.de) ; 2 uses
  %index.next70 = add nuw i64 %index66, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !845

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dh = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.df) ; 2 uses
  %cmp.n71 = icmp eq i64 %i.cf, %n.vec65
  br i1 %cmp.n71, label %._crit_edge.i.i, label %.lr.ph51.i.i.preheader

.lr.ph51.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.26950.i.i.ph = phi i32 [ %.168.lcssa.i.i, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  %.27249.i.i.ph = phi ptr [ %.171.lcssa.i.i, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  %.02848.i.i.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  br label %.lr.ph51.i.i

.lr.ph44.i.i:                                     ; preds = %.preheader35.i.i, %.lr.ph44.i.i
  %.16843.i.i = phi i32 [ %i.dn, %.lr.ph44.i.i ], [ %.067.lcssa.i.i, %.preheader35.i.i ]
  %.17142.i.i = phi ptr [ %i.dm, %.lr.ph44.i.i ], [ %.070.lcssa.i.i, %.preheader35.i.i ] ; 2 uses
  %.02641.i.i = phi <4 x float> [ %i.dl, %.lr.ph44.i.i ], [ zeroinitializer, %.preheader35.i.i ]
  %i.di = load <4 x i32>, ptr %.17142.i.i, align 1, !tbaa !89
  %i.dj = and <4 x i32> %i.di, splat (i32 2147483647)
  %i.dk = bitcast <4 x i32> %i.dj to <4 x float>
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.02641.i.i, <4 x float> nofpclass(nan inf) %i.dk) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.17142.i.i, i64 16 ; 2 uses
  %i.dn = add nuw nsw i32 %.16843.i.i, 4          ; 3 uses
  %i.do = or disjoint i32 %i.dn, 3
  %i.dp = icmp slt i32 %i.do, %i.ae
  br i1 %i.dp, label %.lr.ph44.i.i, label %.preheader.i.i, !llvm.loop !4

.lr.ph51.i.i:                                     ; preds = %.lr.ph51.i.i.preheader, %.lr.ph51.i.i
  %.26950.i.i = phi i32 [ %i.dt, %.lr.ph51.i.i ], [ %.26950.i.i.ph, %.lr.ph51.i.i.preheader ]
  %.27249.i.i = phi ptr [ %i.ds, %.lr.ph51.i.i ], [ %.27249.i.i.ph, %.lr.ph51.i.i.preheader ] ; 2 uses
  %.02848.i.i = phi float [ %.sroa.speculated8.i.i, %.lr.ph51.i.i ], [ %.02848.i.i.ph, %.lr.ph51.i.i.preheader ]
  %i.dq = load float, ptr %.27249.i.i, align 4, !tbaa !68
  %i.dr = call fast float @llvm.fabs.f32(float %i.dq)
  %.sroa.speculated8.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.02848.i.i, float %i.dr) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.27249.i.i, i64 4
  %i.dt = add nuw nsw i32 %.26950.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dt, %i.ae
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph51.i.i, !llvm.loop !846

._crit_edge.i.i:                                  ; preds = %.lr.ph51.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %.028.lcssa.i.i = phi float [ 0.000000e+00, %.preheader.i.i ], [ %i.dh, %vec.epilog.middle.block ], [ %i.cy, %middle.block ], [ %.sroa.speculated8.i.i, %.lr.ph51.i.i ]
  switch i32 %i.w, label %.thread31.i.i [
    i32 8, label %.thread.i.i
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

.thread.i.i:                                      ; preds = %._crit_edge.i.i
  %i.du = fdiv fast <8 x float> splat (float 1.270000e+02), %.025.lcssa.i.i
  %i.dv = fmul fast <8 x float> %.025.lcssa.i.i, %i.ai
  store <8 x float> %i.du, ptr %.055.i.i, align 32, !tbaa !89
  store <8 x float> %i.dv, ptr %.06354.i.i, align 32, !tbaa !89
  %i.dw = getelementptr inbounds nuw i8, ptr %.055.i.i, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.06354.i.i, i64 32
  br label %.thread31.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.dy = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i, <4 x float> nofpclass(nan inf) %i.dy)
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.ec = fdiv fast <4 x float> splat (float 1.270000e+02), %i.eb
  %i.ed = fmul fast <4 x float> %i.eb, %i.ag
  store <4 x float> %i.ec, ptr %.055.i.i, align 16, !tbaa !89
  store <4 x float> %i.ed, ptr %.06354.i.i, align 16, !tbaa !89
  %i.ee = getelementptr inbounds nuw i8, ptr %.055.i.i, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.06354.i.i, i64 16
  br label %.thread31.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.eg = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej) ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.el)
  %i.en = extractelement <4 x float> %i.em, i64 0
  %.sroa.speculated4.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.028.lcssa.i.i, float %i.en)
  %i.eo = shufflevector <4 x float> %.026.lcssa.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i, <4 x float> nofpclass(nan inf) %i.eo) ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.eq)
  %i.es = extractelement <4 x float> %i.er, i64 0
  %.sroa.speculated.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i.i, float %i.es) ; 2 uses
  %i.et = fdiv fast float 1.270000e+02, %.sroa.speculated.i.i
  store float %i.et, ptr %.055.i.i, align 4, !tbaa !68
  %i.eu = fmul fast float %.sroa.speculated.i.i, f0x3C010204
  %i.ev = fmul fast float %i.eu, %i.au
  store float %i.ev, ptr %.06354.i.i, align 4, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %.055.i.i, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.06354.i.i, i64 4
  br label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.h, %bb.g, %.thread.i.i, %._crit_edge.i.i
  %.366.i.i = phi ptr [ %i.ex, %bb.h ], [ %.06354.i.i, %._crit_edge.i.i ], [ %i.dx, %.thread.i.i ], [ %i.ef, %bb.g ]
  %.3.i.i = phi ptr [ %i.ew, %bb.h ], [ %.055.i.i, %._crit_edge.i.i ], [ %i.dw, %.thread.i.i ], [ %i.ee, %bb.g ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond65.not.i.i, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %bb.f, !llvm.loop !5

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit: ; preds = %.thread31.i.i, %bb.d, %bb.e
  %i.ey = phi i32 [ %i.p, %bb.e ], [ %.pre, %bb.d ], [ %i.p, %.thread31.i.i ] ; 2 uses
  %i.ez = add nsw i32 %.035, 1
  %.not.not = icmp slt i32 %.035, %i.ey
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, float noundef nofpclass(nan inf) %1, ptr nofree writeonly captures(none) %.0.val1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq i32 %i.d, 3                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8
  %.sink.i = select i1 %i.e, i64 %i.j, i64 %i.h
  %.in.v.i = select i1 %i.e, i64 56, i64 48
  %i.k = sext i32 %i.b to i64
  %i.l = mul i64 %.sink.i, %i.k                   ; 37 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.m = load i32, ptr %.in.i, align 8, !tbaa !50 ; 38 uses
  %i.n = fmul fast float %1, 1.270000e+02         ; 2 uses
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.o ; 2 uses
  %i.r = mul nsw i32 %i.b, %3                     ; 18 uses
  %i.s = insertelement <8 x float> poison, float %i.n, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.u = insertelement <4 x float> poison, float %i.n, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.w = icmp sgt i32 %i.r, 31
  br i1 %i.w, label %.lr.ph135.i, label %.preheader121.i

.lr.ph135.i:                                      ; preds = %bb.a
  %i.x = mul nsw i32 %i.b, %2
  %i.y = sext i32 %i.x to i64
  %i.z = icmp sgt i32 %i.m, 0
  %i.aa = zext nneg i32 %i.r to i64
  %xtraiter = and i32 %i.m, 1
  %i.ab = icmp eq i32 %i.m, 1
  %unroll_iter = and i32 %i.m, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod271 = trunc i32 %i.m to i1
  %i.ac = fdiv fast <8 x float> splat (float 1.000000e+00), %i.t
  %i.ad = fdiv fast <8 x float> splat (float 1.000000e+00), %i.t
  %i.ae = fdiv fast <8 x float> splat (float 1.000000e+00), %i.t
  %i.af = fdiv fast <8 x float> splat (float 1.000000e+00), %i.t
  %i.ag = fdiv fast <8 x float> splat (float 1.000000e+00), %i.t
  %i.ah = fdiv fast <4 x float> splat (float 1.000000e+00), %i.v
  br label %bb.b

.preheader121.loopexit.i:                         ; preds = %.thread96.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader121.i

.preheader121.i:                                  ; preds = %.preheader121.loopexit.i, %bb.a
  %.0428.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ai, %.preheader121.loopexit.i ] ; 3 uses
  %.0401.lcssa.i = phi ptr [ %i.q, %bb.a ], [ %.3404.i, %.preheader121.loopexit.i ] ; 2 uses
  %.0398.lcssa.i = phi ptr [ %i.p, %bb.a ], [ %.3.i, %.preheader121.loopexit.i ] ; 2 uses
  %i.aj = or disjoint i32 %.0428.lcssa.i, 15
  %i.ak = icmp slt i32 %i.aj, %i.r
  br i1 %i.ak, label %.lr.ph166.i, label %.preheader120.i

.lr.ph166.i:                                      ; preds = %.preheader121.i
  %i.al = mul nsw i32 %i.b, %2
  %i.am = sext i32 %i.al to i64
  %i.an = icmp sgt i32 %i.m, 1
  %.idx460.i = shl i64 %i.l, 3
  %i.ao = and i32 %i.m, -2
  %i.ap = zext nneg i32 %.0428.lcssa.i to i64
  %i.aq = sext i32 %i.r to i64
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.13:bb.a
bb.k:                                             ; preds = %bb.j
  %.val.us = load ptr, ptr %9, align 8
  %.val121.us = load ptr, ptr %11, align 8
  call fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val.us, float noundef nofpclass(nan inf) %i.fb, ptr %.val121.us, i32 noundef %i.bt, i32 noundef %.sroa.speculated161)
  br label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread176.us

bb.l:                                             ; preds = %bb.j
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !64  ; 4 uses
  %i.fd = load i32, ptr %i.s, align 8, !tbaa !76
  %i.fe = icmp eq i32 %i.fd, 3
  %i.ff = load i64, ptr %i.bk, align 8
  %i.fg = load i32, ptr %i.r, align 4             ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = select i1 %i.fe, i64 %i.ff, i64 %i.fh
  %i.fj = sdiv i32 %.sroa.speculated161, %i.fc    ; 2 uses
  %i.fk = mul i32 %i.fg, %i.fc                    ; 8 uses
  %.scalar.i.i.us = fdiv fast float f0x3C010204, %i.fb ; 2 uses
  %i.fl = insertelement <4 x float> poison, float %.scalar.i.i.us, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = insertelement <8 x float> poison, float %.scalar.i.i.us, i64 0
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = icmp sgt i32 %i.fj, 0
  br i1 %i.fp, label %.lr.ph57.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us

.lr.ph57.i.i.us:                                  ; preds = %bb.l
  %.val123.us = load ptr, ptr %11, align 8, !tbaa !24
  %.val122.us = load ptr, ptr %9, align 8, !tbaa !24
  %i.fq = getelementptr inbounds [4 x i8], ptr %.val123.us, i64 %i.dj
  %i.fr = getelementptr inbounds [4 x i8], ptr %.val122.us, i64 %i.dj
  %i.fs = icmp sgt i32 %i.fk, 7
  %i.ft = and i32 %i.fk, -8                       ; 2 uses
  %i.fu = sext i32 %i.fc to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fj to i64
  %i.fv = add i32 %i.fk, -8                       ; 2 uses
  %i.fw = lshr i32 %i.fv, 3
  %i.fx = add nuw nsw i32 %i.fw, 1                ; 2 uses
  %xtraiter = and i32 %i.fx, 3                    ; 3 uses
  %i.fy = icmp ult i32 %i.fv, 24
  %unroll_iter = and i32 %i.fx, 1073741820
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod279 = icmp ne i32 %xtraiter, 0
  %i.fz = fdiv fast float 1.000000e+00, %i.fb
  br label %bb.m

bb.m:                                             ; preds = %.thread31.i.i.us, %.lr.ph57.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph57.i.i.us ], [ %indvars.iv.next.i.i.us, %.thread31.i.i.us ] ; 2 uses
  %.055.i.i.us = phi ptr [ %i.fr, %.lr.ph57.i.i.us ], [ %.3.i.i.us, %.thread31.i.i.us ] ; 7 uses
  %.06354.i.i.us = phi ptr [ %i.fq, %.lr.ph57.i.i.us ], [ %.366.i.i.us, %.thread31.i.i.us ] ; 7 uses
  %i.ga = load ptr, ptr %4, align 8, !tbaa !24
  %i.gb = mul nsw i64 %indvars.iv.i.i.us, %i.fu
  %i.gc = add nsw i64 %i.gb, %i.dj
  %i.gd = mul i64 %i.gc, %i.fi
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gd ; 3 uses
  br i1 %i.fs, label %.lr.ph.i.i.us.preheader, label %.preheader35.i.i.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.m
  br i1 %i.fy, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us
  %.07037.i.i.us = phi ptr [ %i.gy, %.lr.ph.i.i.us ], [ %i.ge, %.lr.ph.i.i.us.preheader ] ; 5 uses
  %.02536.i.i.us = phi <8 x float> [ %i.gx, %.lr.ph.i.i.us ], [ zeroinitializer, %.lr.ph.i.i.us.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.gf = load <8 x i32>, ptr %.07037.i.i.us, align 1, !tbaa !89
  %i.gg = and <8 x i32> %i.gf, splat (i32 2147483647)
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i.us, <8 x float> nofpclass(nan inf) %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 32
  %i.gk = load <8 x i32>, ptr %i.gj, align 1, !tbaa !89
  %i.gl = and <8 x i32> %i.gk, splat (i32 2147483647)
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>
  %i.gn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.gm)
  %i.go = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 64
  %i.gp = load <8 x i32>, ptr %i.go, align 1, !tbaa !89
  %i.gq = and <8 x i32> %i.gp, splat (i32 2147483647)
  %i.gr = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gn, <8 x float> nofpclass(nan inf) %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 96
  %i.gu = load <8 x i32>, ptr %i.gt, align 1, !tbaa !89
  %i.gv = and <8 x i32> %i.gu, splat (i32 2147483647)
  %i.gw = bitcast <8 x i32> %i.gv to <8 x float>
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.gw) ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader35.i.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !3

.preheader35.i.i.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.us
  br i1 %lcmp.mod.not, label %.preheader35.i.i.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %.preheader35.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.07037.i.i.us.epil.init = phi ptr [ %i.ge, %.lr.ph.i.i.us.preheader ], [ %i.gy, %.preheader35.i.i.us.loopexit.unr-lcssa ]
  %.02536.i.i.us.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.i.i.us.preheader ], [ %i.gx, %.preheader35.i.i.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod279)
  br label %.lr.ph.i.i.us.epil

.lr.ph.i.i.us.epil:                               ; preds = %.lr.ph.i.i.us.epil, %.lr.ph.i.i.us.epil.preheader
  %.07037.i.i.us.epil = phi ptr [ %i.hd, %.lr.ph.i.i.us.epil ], [ %.07037.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ] ; 2 uses
  %.02536.i.i.us.epil = phi <8 x float> [ %i.hc, %.lr.ph.i.i.us.epil ], [ %.02536.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.us.epil ], [ 0, %.lr.ph.i.i.us.epil.preheader ]
  %i.gz = load <8 x i32>, ptr %.07037.i.i.us.epil, align 1, !tbaa !89
  %i.ha = and <8 x i32> %i.gz, splat (i32 2147483647)
  %i.hb = bitcast <8 x i32> %i.ha to <8 x float>
  %i.hc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i.us.epil, <8 x float> nofpclass(nan inf) %i.hb) ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.07037.i.i.us.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader35.i.i.us, label %.lr.ph.i.i.us.epil, !llvm.loop !966

.preheader35.i.i.us:                              ; preds = %.preheader35.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.m
  %.025.lcssa.i.i.us = phi <8 x float> [ zeroinitializer, %bb.m ], [ %i.gx, %.preheader35.i.i.us.loopexit.unr-lcssa ], [ %i.hc, %.lr.ph.i.i.us.epil ] ; 6 uses
  %.070.lcssa.i.i.us = phi ptr [ %i.ge, %bb.m ], [ %i.gy, %.preheader35.i.i.us.loopexit.unr-lcssa ], [ %i.hd, %.lr.ph.i.i.us.epil ] ; 2 uses
  %.067.lcssa.i.i.us = phi i32 [ 0, %bb.m ], [ %i.ft, %.lr.ph.i.i.us.epil ], [ %i.ft, %.preheader35.i.i.us.loopexit.unr-lcssa ] ; 3 uses
  %i.he = or disjoint i32 %.067.lcssa.i.i.us, 3
  %i.hf = icmp slt i32 %i.he, %i.fk
  br i1 %i.hf, label %.lr.ph44.i.i.us, label %.preheader.i.i.us

.lr.ph44.i.i.us:                                  ; preds = %.preheader35.i.i.us, %.lr.ph44.i.i.us
  %.16843.i.i.us = phi i32 [ %i.hl, %.lr.ph44.i.i.us ], [ %.067.lcssa.i.i.us, %.preheader35.i.i.us ]
  %.17142.i.i.us = phi ptr [ %i.hk, %.lr.ph44.i.i.us ], [ %.070.lcssa.i.i.us, %.preheader35.i.i.us ] ; 2 uses
  %.02641.i.i.us = phi <4 x float> [ %i.hj, %.lr.ph44.i.i.us ], [ zeroinitializer, %.preheader35.i.i.us ]
  %i.hg = load <4 x i32>, ptr %.17142.i.i.us, align 1, !tbaa !89
  %i.hh = and <4 x i32> %i.hg, splat (i32 2147483647)
  %i.hi = bitcast <4 x i32> %i.hh to <4 x float>
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.02641.i.i.us, <4 x float> nofpclass(nan inf) %i.hi) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.17142.i.i.us, i64 16 ; 2 uses
  %i.hl = add nuw nsw i32 %.16843.i.i.us, 4       ; 3 uses
  %i.hm = or disjoint i32 %i.hl, 3
  %i.hn = icmp slt i32 %i.hm, %i.fk
  br i1 %i.hn, label %.lr.ph44.i.i.us, label %.preheader.i.i.us, !llvm.loop !4

.preheader.i.i.us:                                ; preds = %.lr.ph44.i.i.us, %.preheader35.i.i.us
  %.026.lcssa.i.i.us = phi <4 x float> [ zeroinitializer, %.preheader35.i.i.us ], [ %i.hj, %.lr.ph44.i.i.us ] ; 3 uses
  %.171.lcssa.i.i.us = phi ptr [ %.070.lcssa.i.i.us, %.preheader35.i.i.us ], [ %i.hk, %.lr.ph44.i.i.us ] ; 5 uses
  %.168.lcssa.i.i.us = phi i32 [ %.067.lcssa.i.i.us, %.preheader35.i.i.us ], [ %i.hl, %.lr.ph44.i.i.us ] ; 5 uses
  %i.ho = icmp slt i32 %.168.lcssa.i.i.us, %i.fk
  br i1 %i.ho, label %iter.check, label %._crit_edge.i.i.us

iter.check:                                       ; preds = %.preheader.i.i.us
  %i.hp = xor i32 %.168.lcssa.i.i.us, -1
  %i.hq = add i32 %i.fk, %i.hp                    ; 3 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hq, 7
  br i1 %min.iters.check, label %.lr.ph51.i.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check240 = icmp ult i32 %i.hq, 31
  br i1 %min.iters.check240, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ht = and i64 %i.hs, 24
  %n.vec = and i64 %i.hs, 8589934560              ; 5 uses
  %i.hu = trunc i64 %n.vec to i32
  %i.hv = add i32 %.168.lcssa.i.i.us, %i.hu
  %i.hw = shl nuw nsw i64 %n.vec, 2
  %i.hx = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.hw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %vec.phi241 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ih, %vector.body ]
  %vec.phi242 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ii, %vector.body ]
  %vec.phi243 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ij, %vector.body ]
  %i.hy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.hy ; 4 uses
  %i.hz = getelementptr i8, ptr %next.gep, i64 32
  %i.ia = getelementptr i8, ptr %next.gep, i64 64
  %i.ib = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load244 = load <8 x float>, ptr %i.hz, align 4, !tbaa !68
  %wide.load245 = load <8 x float>, ptr %i.ia, align 4, !tbaa !68
  %wide.load246 = load <8 x float>, ptr %i.ib, align 4, !tbaa !68
  %i.ic = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.id = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load244)
  %i.ie = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load245)
  %i.if = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load246)
  %i.ig = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.ic) ; 2 uses
  %i.ih = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi241, <8 x float> %i.id) ; 2 uses
  %i.ii = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi242, <8 x float> %i.ie) ; 2 uses
  %i.ij = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi243, <8 x float> %i.if) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !967

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ig, <8 x float> %i.ih)
  %rdx.minmax.select248 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.ii)
  %rdx.minmax.select250 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select248, <8 x float> %i.ij)
  %i.il = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select250) ; 3 uses
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.i.us.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.il, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec252 = and i64 %i.hs, 8589934584           ; 4 uses
  %i.im = trunc i64 %n.vec252 to i32
  %i.in = add i32 %.168.lcssa.i.i.us, %i.im
  %i.io = shl nuw nsw i64 %n.vec252, 2
  %i.ip = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.io
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index253 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next257, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi254 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.is, %vec.epilog.vector.body ]
  %i.iq = shl i64 %index253, 2
  %next.gep255 = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.iq
  %wide.load256 = load <8 x float>, ptr %next.gep255, align 4, !tbaa !68
  %i.ir = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load256)
  %i.is = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi254, <8 x float> %i.ir) ; 2 uses
  %index.next257 = add nuw i64 %index253, 8       ; 2 uses
  %i.it = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.it, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !968

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.iu = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.is) ; 2 uses
  %cmp.n258 = icmp eq i64 %i.hs, %n.vec252
  br i1 %cmp.n258, label %._crit_edge.i.i.us, label %.lr.ph51.i.i.us.preheader

.lr.ph51.i.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.26950.i.i.us.ph = phi i32 [ %.168.lcssa.i.i.us, %iter.check ], [ %i.hv, %vec.epilog.iter.check ], [ %i.in, %vec.epilog.middle.block ]
  %.27249.i.i.us.ph = phi ptr [ %.171.lcssa.i.i.us, %iter.check ], [ %i.hx, %vec.epilog.iter.check ], [ %i.ip, %vec.epilog.middle.block ]
  %.02848.i.i.us.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.il, %vec.epilog.iter.check ], [ %i.iu, %vec.epilog.middle.block ]
  br label %.lr.ph51.i.i.us

.lr.ph51.i.i.us:                                  ; preds = %.lr.ph51.i.i.us.preheader, %.lr.ph51.i.i.us
  %.26950.i.i.us = phi i32 [ %i.iy, %.lr.ph51.i.i.us ], [ %.26950.i.i.us.ph, %.lr.ph51.i.i.us.preheader ]
  %.27249.i.i.us = phi ptr [ %i.ix, %.lr.ph51.i.i.us ], [ %.27249.i.i.us.ph, %.lr.ph51.i.i.us.preheader ] ; 2 uses
  %.02848.i.i.us = phi float [ %.sroa.speculated8.i.i.us, %.lr.ph51.i.i.us ], [ %.02848.i.i.us.ph, %.lr.ph51.i.i.us.preheader ]
  %i.iv = load float, ptr %.27249.i.i.us, align 4, !tbaa !68
  %i.iw = call fast float @llvm.fabs.f32(float %i.iv)
  %.sroa.speculated8.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.02848.i.i.us, float %i.iw) ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.27249.i.i.us, i64 4
  %i.iy = add nuw nsw i32 %.26950.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i32 %i.iy, %i.fk
  br i1 %exitcond.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph51.i.i.us, !llvm.loop !969

._crit_edge.i.i.us:                               ; preds = %.lr.ph51.i.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.us
  %.028.lcssa.i.i.us = phi float [ 0.000000e+00, %.preheader.i.i.us ], [ %i.iu, %vec.epilog.middle.block ], [ %i.il, %middle.block ], [ %.sroa.speculated8.i.i.us, %.lr.ph51.i.i.us ]
  switch i32 %i.fc, label %.thread31.i.i.us [
    i32 8, label %.thread.i.i.us
    i32 4, label %bb.o
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.us
  %i.iz = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ja = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %i.ja) ; 2 uses
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jb, <4 x float> nofpclass(nan inf) %i.jc) ; 2 uses
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.jd, <4 x float> nofpclass(nan inf) %i.je)
  %i.jg = extractelement <4 x float> %i.jf, i64 0
  %.sroa.speculated4.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.028.lcssa.i.i.us, float %i.jg)
  %i.jh = shufflevector <4 x float> %.026.lcssa.i.i.us, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.jh) ; 2 uses
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ji, <4 x float> nofpclass(nan inf) %i.jj)
  %i.jl = extractelement <4 x float> %i.jk, i64 0
  %.sroa.speculated.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i.i.us, float %i.jl) ; 2 uses
  %i.jm = fdiv fast float 1.270000e+02, %.sroa.speculated.i.i.us
  store float %i.jm, ptr %.055.i.i.us, align 4, !tbaa !68
  %i.jn = fmul fast float %.sroa.speculated.i.i.us, f0x3C010204
  %i.jo = fmul fast float %i.jn, %i.fz
  store float %i.jo, ptr %.06354.i.i.us, align 4, !tbaa !68
  %i.jp = getelementptr inbounds nuw i8, ptr %.055.i.i.us, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.06354.i.i.us, i64 4
  br label %.thread31.i.i.us

bb.o:                                             ; preds = %._crit_edge.i.i.us
  %i.jr = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.jr)
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.js) ; 2 uses
  %i.jv = fdiv fast <4 x float> splat (float 1.270000e+02), %i.ju
  %i.jw = fmul fast <4 x float> %i.ju, %i.fm
  store <4 x float> %i.jv, ptr %.055.i.i.us, align 16, !tbaa !89
  store <4 x float> %i.jw, ptr %.06354.i.i.us, align 16, !tbaa !89
  %i.jx = getelementptr inbounds nuw i8, ptr %.055.i.i.us, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %.06354.i.i.us, i64 16
  br label %.thread31.i.i.us

.thread.i.i.us:                                   ; preds = %._crit_edge.i.i.us
  %i.jz = fdiv fast <8 x float> splat (float 1.270000e+02), %.025.lcssa.i.i.us
  %i.ka = fmul fast <8 x float> %.025.lcssa.i.i.us, %i.fo
  store <8 x float> %i.jz, ptr %.055.i.i.us, align 32, !tbaa !89
  store <8 x float> %i.ka, ptr %.06354.i.i.us, align 32, !tbaa !89
  %i.kb = getelementptr inbounds nuw i8, ptr %.055.i.i.us, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %.06354.i.i.us, i64 32
  br label %.thread31.i.i.us

.thread31.i.i.us:                                 ; preds = %.thread.i.i.us, %bb.o, %bb.n, %._crit_edge.i.i.us
  %.366.i.i.us = phi ptr [ %i.jq, %bb.n ], [ %.06354.i.i.us, %._crit_edge.i.i.us ], [ %i.kc, %.thread.i.i.us ], [ %i.jy, %bb.o ]
  %.3.i.i.us = phi ptr [ %i.jp, %bb.n ], [ %.055.i.i.us, %._crit_edge.i.i.us ], [ %i.kb, %.thread.i.i.us ], [ %i.jx, %bb.o ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond65.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond65.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %bb.m, !llvm.loop !5

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %.thread31.i.i.us, %bb.i
  br i1 %.not87, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread176.us

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread176.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.k
  invoke fastcc void @_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bt, i32 noundef %.sroa.speculated161, i32 noundef %.0184.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.l
  invoke fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bt, i32 noundef %.sroa.speculated161, i32 noundef %.0184.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread176.us, %.noexc118.us
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bt, i32 noundef %.sroa.speculated161, i32 noundef %.084185.us, i32 noundef %.sroa.speculated157.us, i32 noundef %.0184.us, i32 noundef %.sroa.speculated.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.kd = load ptr, ptr %i.bd, align 8, !tbaa !22 ; 2 uses
  %.not.i97.us = icmp eq ptr %i.kd, null
  br i1 %.not.i97.us, label %_ZN4ncnn3MatD2Ev.exit90.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ke = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit90.us

bb.s:                                             ; preds = %bb.r
  %i.kg = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 3 uses
  %.not3.i98.us = icmp eq ptr %i.kg, null
  %i.kh = load ptr, ptr %16, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i98.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  invoke void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef %i.kh)
          to label %_ZN4ncnn3MatD2Ev.exit90.us unwind label %.split.us, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i112.us = icmp eq ptr %i.kh, null
  br i1 %.not.i112.us, label %_ZN4ncnn3MatD2Ev.exit90.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.kh) #9
  br label %_ZN4ncnn3MatD2Ev.exit90.us

_ZN4ncnn3MatD2Ev.exit90.us:                       ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.kl = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %.not.i101.us = icmp eq ptr %i.kl, null
  br i1 %.not.i101.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit90.us
  %i.km = atomicrmw add ptr %i.kl, i32 -1 acq_rel, align 4
  %i.kn = icmp eq i32 %i.km, 1
  br i1 %i.kn, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.x:                                             ; preds = %bb.w
  %i.ko = load ptr, ptr %i.au, align 8, !tbaa !23 ; 3 uses
  %.not3.i102.us = icmp eq ptr %i.ko, null
  %i.kp = load ptr, ptr %15, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i102.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  invoke void %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef %i.kp)
          to label %_ZN4ncnn3MatD2Ev.exit89.us unwind label %.split190.us, !inline_history !0

bb.z:                                             ; preds = %bb.x
  %.not.i110.us = icmp eq ptr %i.kp, null
  br i1 %.not.i110.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.kp) #9
  br label %_ZN4ncnn3MatD2Ev.exit89.us

_ZN4ncnn3MatD2Ev.exit89.us:                       ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %_ZN4ncnn3MatD2Ev.exit90.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.kt = add nsw i32 %.0184.us, %i.dk            ; 2 uses
  %i.ku = icmp slt i32 %i.kt, %i.ch
  br i1 %i.ku, label %bb.h, label %._crit_edge.us, !llvm.loop !970

bb.ab:                                            ; preds = %._crit_edge.us
  %i.kv = add nsw i32 %.084185.us, %i.bn          ; 2 uses
  %i.kw = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.kx = icmp slt i32 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph.us, label %._crit_edge187, !llvm.loop !971

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit89.us
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.bt, i32 noundef %.sroa.speculated161, i32 noundef %.084185.us, i32 noundef %.sroa.speculated157.us, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us:                                        ; preds = %bb.t
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #26
  unreachable

end_hunk_2
begin_hunk_3_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  %i.p = phi i32 [ %i.j, %.lr.ph ], [ %i.ey, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit ] ; 2 uses
  %.035 = phi i32 [ %i.k, %.lr.ph ], [ %i.ez, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit ] ; 3 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.r = mul nsw i32 %i.q, %.035                  ; 3 uses
  %i.s = load i32, ptr %4, align 4, !tbaa !50
  %i.t = sub nsw i32 %i.s, %i.r
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.t) ; 2 uses
  %i.u = load i32, ptr %5, align 4, !tbaa !50
  %.not25 = icmp eq i32 %i.u, 0
  %i.v = load float, ptr %8, align 4, !tbaa !68   ; 3 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %7, align 8
  %.val26 = load ptr, ptr %9, align 8
  call fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr %.val, float noundef nofpclass(nan inf) %i.v, ptr %.val26, i32 noundef %i.r, i32 noundef %.sroa.speculated)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !50
  br label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.l, align 8, !tbaa !64   ; 4 uses
  %i.x = load i32, ptr %i.m, align 8, !tbaa !76
  %i.y = icmp eq i32 %i.x, 3
  %i.z = load i64, ptr %i.n, align 8
  %i.aa = load i32, ptr %i.o, align 4             ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = select i1 %i.y, i64 %i.z, i64 %i.ab
  %i.ad = sdiv i32 %.sroa.speculated, %i.w        ; 2 uses
  %i.ae = mul i32 %i.aa, %i.w                     ; 8 uses
  %.scalar.i.i = fdiv fast float f0x3C010204, %i.v ; 2 uses
  %i.af = insertelement <4 x float> poison, float %.scalar.i.i, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = insertelement <8 x float> poison, float %.scalar.i.i, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aj = icmp sgt i32 %i.ad, 0
  br i1 %i.aj, label %.lr.ph57.i.i, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph57.i.i:                                     ; preds = %bb.e
  %.val28 = load ptr, ptr %9, align 8, !tbaa !24
  %.val27 = load ptr, ptr %7, align 8, !tbaa !24
  %i.ak = sext i32 %i.r to i64                    ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val28, i64 %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.ak
  %i.an = icmp sgt i32 %i.ae, 7
  %i.ao = and i32 %i.ae, -8                       ; 2 uses
  %i.ap = sext i32 %i.w to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ad to i64
  %i.aq = add i32 %i.ae, -8                       ; 2 uses
  %i.ar = lshr i32 %i.aq, 3
  %i.as = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %xtraiter = and i32 %i.as, 3                    ; 3 uses
  %i.at = icmp ult i32 %i.aq, 24
  %unroll_iter = and i32 %i.as, 1073741820
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod86 = icmp ne i32 %xtraiter, 0
  %i.au = fdiv fast float 1.000000e+00, %i.v
  br label %bb.f

bb.f:                                             ; preds = %.thread31.i.i, %.lr.ph57.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph57.i.i ], [ %indvars.iv.next.i.i, %.thread31.i.i ] ; 2 uses
  %.055.i.i = phi ptr [ %i.am, %.lr.ph57.i.i ], [ %.3.i.i, %.thread31.i.i ] ; 7 uses
  %.06354.i.i = phi ptr [ %i.al, %.lr.ph57.i.i ], [ %.366.i.i, %.thread31.i.i ] ; 7 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !24
  %i.aw = mul nsw i64 %indvars.iv.i.i, %i.ap
  %i.ax = add nsw i64 %i.aw, %i.ak
  %i.ay = mul i64 %i.ax, %i.ac
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ay ; 3 uses
  br i1 %i.an, label %.lr.ph.i.i.preheader, label %.preheader35.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader35.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %.preheader35.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.07037.i.i.epil.init = phi ptr [ %i.az, %.lr.ph.i.i.preheader ], [ %i.ca, %.preheader35.i.i.loopexit.unr-lcssa ]
  %.02536.i.i.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.i.i.preheader ], [ %i.bz, %.preheader35.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07037.i.i.epil = phi ptr [ %i.be, %.lr.ph.i.i.epil ], [ %.07037.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02536.i.i.epil = phi <8 x float> [ %i.bd, %.lr.ph.i.i.epil ], [ %.02536.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ba = load <8 x i32>, ptr %.07037.i.i.epil, align 1, !tbaa !89
  %i.bb = and <8 x i32> %i.ba, splat (i32 2147483647)
  %i.bc = bitcast <8 x i32> %i.bb to <8 x float>
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i.epil, <8 x float> nofpclass(nan inf) %i.bc) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.07037.i.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader35.i.i, label %.lr.ph.i.i.epil, !llvm.loop !983

.preheader35.i.i:                                 ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f
  %.025.lcssa.i.i = phi <8 x float> [ zeroinitializer, %bb.f ], [ %i.bz, %.preheader35.i.i.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph.i.i.epil ] ; 6 uses
  %.070.lcssa.i.i = phi ptr [ %i.az, %bb.f ], [ %i.ca, %.preheader35.i.i.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.i.i.epil ] ; 2 uses
  %.067.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.ao, %.lr.ph.i.i.epil ], [ %i.ao, %.preheader35.i.i.loopexit.unr-lcssa ] ; 3 uses
  %i.bf = or disjoint i32 %.067.lcssa.i.i, 3
  %i.bg = icmp slt i32 %i.bf, %i.ae
  br i1 %i.bg, label %.lr.ph44.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07037.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.az, %.lr.ph.i.i.preheader ] ; 5 uses
  %.02536.i.i = phi <8 x float> [ %i.bz, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bh = load <8 x i32>, ptr %.07037.i.i, align 1, !tbaa !89
  %i.bi = and <8 x i32> %i.bh, splat (i32 2147483647)
  %i.bj = bitcast <8 x i32> %i.bi to <8 x float>
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 32
  %i.bm = load <8 x i32>, ptr %i.bl, align 1, !tbaa !89
  %i.bn = and <8 x i32> %i.bm, splat (i32 2147483647)
  %i.bo = bitcast <8 x i32> %i.bn to <8 x float>
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 64
  %i.br = load <8 x i32>, ptr %i.bq, align 1, !tbaa !89
  %i.bs = and <8 x i32> %i.br, splat (i32 2147483647)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 96
  %i.bw = load <8 x i32>, ptr %i.bv, align 1, !tbaa !89
  %i.bx = and <8 x i32> %i.bw, splat (i32 2147483647)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.by) ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.07037.i.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader35.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

.preheader.i.i:                                   ; preds = %.lr.ph44.i.i, %.preheader35.i.i
  %.026.lcssa.i.i = phi <4 x float> [ zeroinitializer, %.preheader35.i.i ], [ %i.dl, %.lr.ph44.i.i ] ; 3 uses
  %.171.lcssa.i.i = phi ptr [ %.070.lcssa.i.i, %.preheader35.i.i ], [ %i.dm, %.lr.ph44.i.i ] ; 5 uses
  %.168.lcssa.i.i = phi i32 [ %.067.lcssa.i.i, %.preheader35.i.i ], [ %i.dn, %.lr.ph44.i.i ] ; 5 uses
  %i.cb = icmp slt i32 %.168.lcssa.i.i, %i.ae
  br i1 %i.cb, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.cc = xor i32 %.168.lcssa.i.i, -1
  %i.cd = add i32 %i.ae, %i.cc                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cd, 7
  br i1 %min.iters.check, label %.lr.ph51.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp ult i32 %i.cd, 31
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 24
  %n.vec = and i64 %i.cf, 8589934560              ; 5 uses
  %i.ch = trunc i64 %n.vec to i32
  %i.ci = add i32 %.168.lcssa.i.i, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec, 2
  %i.ck = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi54 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi55 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi56 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.cl ; 4 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 32
  %i.cn = getelementptr i8, ptr %next.gep, i64 64
  %i.co = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load57 = load <8 x float>, ptr %i.cm, align 4, !tbaa !68
  %wide.load58 = load <8 x float>, ptr %i.cn, align 4, !tbaa !68
  %wide.load59 = load <8 x float>, ptr %i.co, align 4, !tbaa !68
  %i.cp = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.cq = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load57)
  %i.cr = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load58)
  %i.cs = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load59)
  %i.ct = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.cp) ; 2 uses
  %i.cu = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi54, <8 x float> %i.cq) ; 2 uses
  %i.cv = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi55, <8 x float> %i.cr) ; 2 uses
  %i.cw = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi56, <8 x float> %i.cs) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !984

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ct, <8 x float> %i.cu)
  %rdx.minmax.select61 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cv)
  %rdx.minmax.select63 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select61, <8 x float> %i.cw)
  %i.cy = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select63) ; 3 uses
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cy, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec65 = and i64 %i.cf, 8589934584            ; 4 uses
  %i.cz = trunc i64 %n.vec65 to i32
  %i.da = add i32 %.168.lcssa.i.i, %i.cz
  %i.db = shl nuw nsw i64 %n.vec65, 2
  %i.dc = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.db
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.df, %vec.epilog.vector.body ]
  %i.dd = shl i64 %index66, 2
  %next.gep68 = getelementptr i8, ptr %.171.lcssa.i.i, i64 %i.dd
  %wide.load69 = load <8 x float>, ptr %next.gep68, align 4, !tbaa !68
  %i.de = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load69)
  %i.df = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi67, <8 x float> %i.de) ; 2 uses
  %index.next70 = add nuw i64 %index66, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !985

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dh = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.df) ; 2 uses
  %cmp.n71 = icmp eq i64 %i.cf, %n.vec65
  br i1 %cmp.n71, label %._crit_edge.i.i, label %.lr.ph51.i.i.preheader

.lr.ph51.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.26950.i.i.ph = phi i32 [ %.168.lcssa.i.i, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  %.27249.i.i.ph = phi ptr [ %.171.lcssa.i.i, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  %.02848.i.i.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  br label %.lr.ph51.i.i

.lr.ph44.i.i:                                     ; preds = %.preheader35.i.i, %.lr.ph44.i.i
  %.16843.i.i = phi i32 [ %i.dn, %.lr.ph44.i.i ], [ %.067.lcssa.i.i, %.preheader35.i.i ]
  %.17142.i.i = phi ptr [ %i.dm, %.lr.ph44.i.i ], [ %.070.lcssa.i.i, %.preheader35.i.i ] ; 2 uses
  %.02641.i.i = phi <4 x float> [ %i.dl, %.lr.ph44.i.i ], [ zeroinitializer, %.preheader35.i.i ]
  %i.di = load <4 x i32>, ptr %.17142.i.i, align 1, !tbaa !89
  %i.dj = and <4 x i32> %i.di, splat (i32 2147483647)
  %i.dk = bitcast <4 x i32> %i.dj to <4 x float>
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.02641.i.i, <4 x float> nofpclass(nan inf) %i.dk) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.17142.i.i, i64 16 ; 2 uses
  %i.dn = add nuw nsw i32 %.16843.i.i, 4          ; 3 uses
  %i.do = or disjoint i32 %i.dn, 3
  %i.dp = icmp slt i32 %i.do, %i.ae
  br i1 %i.dp, label %.lr.ph44.i.i, label %.preheader.i.i, !llvm.loop !4

.lr.ph51.i.i:                                     ; preds = %.lr.ph51.i.i.preheader, %.lr.ph51.i.i
  %.26950.i.i = phi i32 [ %i.dt, %.lr.ph51.i.i ], [ %.26950.i.i.ph, %.lr.ph51.i.i.preheader ]
  %.27249.i.i = phi ptr [ %i.ds, %.lr.ph51.i.i ], [ %.27249.i.i.ph, %.lr.ph51.i.i.preheader ] ; 2 uses
  %.02848.i.i = phi float [ %.sroa.speculated8.i.i, %.lr.ph51.i.i ], [ %.02848.i.i.ph, %.lr.ph51.i.i.preheader ]
  %i.dq = load float, ptr %.27249.i.i, align 4, !tbaa !68
  %i.dr = call fast float @llvm.fabs.f32(float %i.dq)
  %.sroa.speculated8.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.02848.i.i, float %i.dr) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.27249.i.i, i64 4
  %i.dt = add nuw nsw i32 %.26950.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dt, %i.ae
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph51.i.i, !llvm.loop !986

._crit_edge.i.i:                                  ; preds = %.lr.ph51.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %.028.lcssa.i.i = phi float [ 0.000000e+00, %.preheader.i.i ], [ %i.dh, %vec.epilog.middle.block ], [ %i.cy, %middle.block ], [ %.sroa.speculated8.i.i, %.lr.ph51.i.i ]
  switch i32 %i.w, label %.thread31.i.i [
    i32 8, label %.thread.i.i
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

.thread.i.i:                                      ; preds = %._crit_edge.i.i
  %i.du = fdiv fast <8 x float> splat (float 1.270000e+02), %.025.lcssa.i.i
  %i.dv = fmul fast <8 x float> %.025.lcssa.i.i, %i.ai
  store <8 x float> %i.du, ptr %.055.i.i, align 32, !tbaa !89
  store <8 x float> %i.dv, ptr %.06354.i.i, align 32, !tbaa !89
  %i.dw = getelementptr inbounds nuw i8, ptr %.055.i.i, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.06354.i.i, i64 32
  br label %.thread31.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.dy = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i, <4 x float> nofpclass(nan inf) %i.dy)
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.ec = fdiv fast <4 x float> splat (float 1.270000e+02), %i.eb
  %i.ed = fmul fast <4 x float> %i.eb, %i.ag
  store <4 x float> %i.ec, ptr %.055.i.i, align 16, !tbaa !89
  store <4 x float> %i.ed, ptr %.06354.i.i, align 16, !tbaa !89
  %i.ee = getelementptr inbounds nuw i8, ptr %.055.i.i, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.06354.i.i, i64 16
  br label %.thread31.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.eg = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <8 x float> %.025.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej) ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.el)
  %i.en = extractelement <4 x float> %i.em, i64 0
  %.sroa.speculated4.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.028.lcssa.i.i, float %i.en)
  %i.eo = shufflevector <4 x float> %.026.lcssa.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i, <4 x float> nofpclass(nan inf) %i.eo) ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.eq)
  %i.es = extractelement <4 x float> %i.er, i64 0
  %.sroa.speculated.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i.i, float %i.es) ; 2 uses
  %i.et = fdiv fast float 1.270000e+02, %.sroa.speculated.i.i
  store float %i.et, ptr %.055.i.i, align 4, !tbaa !68
  %i.eu = fmul fast float %.sroa.speculated.i.i, f0x3C010204
  %i.ev = fmul fast float %i.eu, %i.au
  store float %i.ev, ptr %.06354.i.i, align 4, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %.055.i.i, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.06354.i.i, i64 4
  br label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.h, %bb.g, %.thread.i.i, %._crit_edge.i.i
  %.366.i.i = phi ptr [ %i.ex, %bb.h ], [ %.06354.i.i, %._crit_edge.i.i ], [ %i.dx, %.thread.i.i ], [ %i.ef, %bb.g ]
  %.3.i.i = phi ptr [ %i.ew, %bb.h ], [ %.055.i.i, %._crit_edge.i.i ], [ %i.dw, %.thread.i.i ], [ %i.ee, %bb.g ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond65.not.i.i, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %bb.f, !llvm.loop !5

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit: ; preds = %.thread31.i.i, %bb.d, %bb.e
  %i.ey = phi i32 [ %i.p, %bb.e ], [ %.pre, %bb.d ], [ %i.p, %.thread31.i.i ] ; 2 uses
  %i.ez = add nsw i32 %.035, 1
  %.not.not = icmp slt i32 %.035, %i.ey
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not62 = icmp sgt i32 %i.k, %i.j
  br i1 %.not62, label %._crit_edge, label %.noexc46.lr.ph

.noexc46.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %.noexc46

.noexc46:                                         ; preds = %.noexc46.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.063 = phi i32 [ %i.k, %.noexc46.lr.ph ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.y = sdiv i32 %.063, %i.x                     ; 2 uses
  %i.z = srem i32 %.063, %i.x                     ; 2 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !50    ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !50    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %i.z                 ; 3 uses
  %i.ae = load i32, ptr %6, align 4, !tbaa !50
  %i.af = sub nsw i32 %i.ae, %i.ab
  %.sroa.speculated59 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.af) ; 2 uses
  %i.ag = load i32, ptr %7, align 4, !tbaa !50
  %i.ah = sub nsw i32 %i.ag, %i.ad
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ah) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !77, !noalias !991 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !24, !noalias !991
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !991
  %i.al = sext i32 %i.y to i64
  %i.am = mul i64 %i.ak, %i.al
  %i.an = load i64, ptr %i.n, align 8, !tbaa !63, !noalias !991 ; 3 uses
  %i.ao = mul i64 %i.am, %i.an
end_hunk_3
begin_hunk_4_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
bb.k:                                             ; preds = %bb.j
  %.val.us = load ptr, ptr %9, align 8
  %.val122.us = load ptr, ptr %11, align 8
  call fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val.us, float noundef nofpclass(nan inf) %i.fb, ptr %.val122.us, i32 noundef %i.ch, i32 noundef %.sroa.speculated162)
  br label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us

bb.l:                                             ; preds = %bb.j
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !64  ; 4 uses
  %i.fd = load i32, ptr %i.s, align 8, !tbaa !76
  %i.fe = icmp eq i32 %i.fd, 3
  %i.ff = load i64, ptr %i.bk, align 8
  %i.fg = load i32, ptr %i.r, align 4             ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = select i1 %i.fe, i64 %i.ff, i64 %i.fh
  %i.fj = sdiv i32 %.sroa.speculated162, %i.fc    ; 2 uses
  %i.fk = mul i32 %i.fg, %i.fc                    ; 8 uses
  %.scalar.i.i.us = fdiv fast float f0x3C010204, %i.fb ; 2 uses
  %i.fl = insertelement <4 x float> poison, float %.scalar.i.i.us, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = insertelement <8 x float> poison, float %.scalar.i.i.us, i64 0
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = icmp sgt i32 %i.fj, 0
  br i1 %i.fp, label %.lr.ph57.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us

.lr.ph57.i.i.us:                                  ; preds = %bb.l
  %.val124.us = load ptr, ptr %11, align 8, !tbaa !24
  %.val123.us = load ptr, ptr %9, align 8, !tbaa !24
  %i.fq = getelementptr inbounds [4 x i8], ptr %.val124.us, i64 %i.dj
  %i.fr = getelementptr inbounds [4 x i8], ptr %.val123.us, i64 %i.dj
  %i.fs = icmp sgt i32 %i.fk, 7
  %i.ft = and i32 %i.fk, -8                       ; 2 uses
  %i.fu = sext i32 %i.fc to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fj to i64
  %i.fv = add i32 %i.fk, -8                       ; 2 uses
  %i.fw = lshr i32 %i.fv, 3
  %i.fx = add nuw nsw i32 %i.fw, 1                ; 2 uses
  %xtraiter = and i32 %i.fx, 3                    ; 3 uses
  %i.fy = icmp ult i32 %i.fv, 24
  %unroll_iter = and i32 %i.fx, 1073741820
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod280 = icmp ne i32 %xtraiter, 0
  %i.fz = fdiv fast float 1.000000e+00, %i.fb
  br label %bb.m

bb.m:                                             ; preds = %.thread31.i.i.us, %.lr.ph57.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph57.i.i.us ], [ %indvars.iv.next.i.i.us, %.thread31.i.i.us ] ; 2 uses
  %.055.i.i.us = phi ptr [ %i.fr, %.lr.ph57.i.i.us ], [ %.3.i.i.us, %.thread31.i.i.us ] ; 7 uses
  %.06354.i.i.us = phi ptr [ %i.fq, %.lr.ph57.i.i.us ], [ %.366.i.i.us, %.thread31.i.i.us ] ; 7 uses
  %i.ga = load ptr, ptr %4, align 8, !tbaa !24
  %i.gb = mul nsw i64 %indvars.iv.i.i.us, %i.fu
  %i.gc = add nsw i64 %i.gb, %i.dj
  %i.gd = mul i64 %i.gc, %i.fi
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gd ; 3 uses
  br i1 %i.fs, label %.lr.ph.i.i.us.preheader, label %.preheader35.i.i.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.m
  br i1 %i.fy, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us
  %.07037.i.i.us = phi ptr [ %i.gy, %.lr.ph.i.i.us ], [ %i.ge, %.lr.ph.i.i.us.preheader ] ; 5 uses
  %.02536.i.i.us = phi <8 x float> [ %i.gx, %.lr.ph.i.i.us ], [ zeroinitializer, %.lr.ph.i.i.us.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.gf = load <8 x i32>, ptr %.07037.i.i.us, align 1, !tbaa !89
  %i.gg = and <8 x i32> %i.gf, splat (i32 2147483647)
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i.us, <8 x float> nofpclass(nan inf) %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 32
  %i.gk = load <8 x i32>, ptr %i.gj, align 1, !tbaa !89
  %i.gl = and <8 x i32> %i.gk, splat (i32 2147483647)
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>
  %i.gn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.gm)
  %i.go = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 64
  %i.gp = load <8 x i32>, ptr %i.go, align 1, !tbaa !89
  %i.gq = and <8 x i32> %i.gp, splat (i32 2147483647)
  %i.gr = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gn, <8 x float> nofpclass(nan inf) %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 96
  %i.gu = load <8 x i32>, ptr %i.gt, align 1, !tbaa !89
  %i.gv = and <8 x i32> %i.gu, splat (i32 2147483647)
  %i.gw = bitcast <8 x i32> %i.gv to <8 x float>
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.gw) ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.07037.i.i.us, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader35.i.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !3

.preheader35.i.i.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.us
  br i1 %lcmp.mod.not, label %.preheader35.i.i.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %.preheader35.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.07037.i.i.us.epil.init = phi ptr [ %i.ge, %.lr.ph.i.i.us.preheader ], [ %i.gy, %.preheader35.i.i.us.loopexit.unr-lcssa ]
  %.02536.i.i.us.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.i.i.us.preheader ], [ %i.gx, %.preheader35.i.i.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod280)
  br label %.lr.ph.i.i.us.epil

.lr.ph.i.i.us.epil:                               ; preds = %.lr.ph.i.i.us.epil, %.lr.ph.i.i.us.epil.preheader
  %.07037.i.i.us.epil = phi ptr [ %i.hd, %.lr.ph.i.i.us.epil ], [ %.07037.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ] ; 2 uses
  %.02536.i.i.us.epil = phi <8 x float> [ %i.hc, %.lr.ph.i.i.us.epil ], [ %.02536.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.us.epil ], [ 0, %.lr.ph.i.i.us.epil.preheader ]
  %i.gz = load <8 x i32>, ptr %.07037.i.i.us.epil, align 1, !tbaa !89
  %i.ha = and <8 x i32> %i.gz, splat (i32 2147483647)
  %i.hb = bitcast <8 x i32> %i.ha to <8 x float>
  %i.hc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.02536.i.i.us.epil, <8 x float> nofpclass(nan inf) %i.hb) ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.07037.i.i.us.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader35.i.i.us, label %.lr.ph.i.i.us.epil, !llvm.loop !1019

.preheader35.i.i.us:                              ; preds = %.preheader35.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.m
  %.025.lcssa.i.i.us = phi <8 x float> [ zeroinitializer, %bb.m ], [ %i.gx, %.preheader35.i.i.us.loopexit.unr-lcssa ], [ %i.hc, %.lr.ph.i.i.us.epil ] ; 6 uses
  %.070.lcssa.i.i.us = phi ptr [ %i.ge, %bb.m ], [ %i.gy, %.preheader35.i.i.us.loopexit.unr-lcssa ], [ %i.hd, %.lr.ph.i.i.us.epil ] ; 2 uses
  %.067.lcssa.i.i.us = phi i32 [ 0, %bb.m ], [ %i.ft, %.lr.ph.i.i.us.epil ], [ %i.ft, %.preheader35.i.i.us.loopexit.unr-lcssa ] ; 3 uses
  %i.he = or disjoint i32 %.067.lcssa.i.i.us, 3
  %i.hf = icmp slt i32 %i.he, %i.fk
  br i1 %i.hf, label %.lr.ph44.i.i.us, label %.preheader.i.i.us

.lr.ph44.i.i.us:                                  ; preds = %.preheader35.i.i.us, %.lr.ph44.i.i.us
  %.16843.i.i.us = phi i32 [ %i.hl, %.lr.ph44.i.i.us ], [ %.067.lcssa.i.i.us, %.preheader35.i.i.us ]
  %.17142.i.i.us = phi ptr [ %i.hk, %.lr.ph44.i.i.us ], [ %.070.lcssa.i.i.us, %.preheader35.i.i.us ] ; 2 uses
  %.02641.i.i.us = phi <4 x float> [ %i.hj, %.lr.ph44.i.i.us ], [ zeroinitializer, %.preheader35.i.i.us ]
  %i.hg = load <4 x i32>, ptr %.17142.i.i.us, align 1, !tbaa !89
  %i.hh = and <4 x i32> %i.hg, splat (i32 2147483647)
  %i.hi = bitcast <4 x i32> %i.hh to <4 x float>
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.02641.i.i.us, <4 x float> nofpclass(nan inf) %i.hi) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.17142.i.i.us, i64 16 ; 2 uses
  %i.hl = add nuw nsw i32 %.16843.i.i.us, 4       ; 3 uses
  %i.hm = or disjoint i32 %i.hl, 3
  %i.hn = icmp slt i32 %i.hm, %i.fk
  br i1 %i.hn, label %.lr.ph44.i.i.us, label %.preheader.i.i.us, !llvm.loop !4

.preheader.i.i.us:                                ; preds = %.lr.ph44.i.i.us, %.preheader35.i.i.us
  %.026.lcssa.i.i.us = phi <4 x float> [ zeroinitializer, %.preheader35.i.i.us ], [ %i.hj, %.lr.ph44.i.i.us ] ; 3 uses
  %.171.lcssa.i.i.us = phi ptr [ %.070.lcssa.i.i.us, %.preheader35.i.i.us ], [ %i.hk, %.lr.ph44.i.i.us ] ; 5 uses
  %.168.lcssa.i.i.us = phi i32 [ %.067.lcssa.i.i.us, %.preheader35.i.i.us ], [ %i.hl, %.lr.ph44.i.i.us ] ; 5 uses
  %i.ho = icmp slt i32 %.168.lcssa.i.i.us, %i.fk
  br i1 %i.ho, label %iter.check, label %._crit_edge.i.i.us

iter.check:                                       ; preds = %.preheader.i.i.us
  %i.hp = xor i32 %.168.lcssa.i.i.us, -1
  %i.hq = add i32 %i.fk, %i.hp                    ; 3 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hq, 7
  br i1 %min.iters.check, label %.lr.ph51.i.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check241 = icmp ult i32 %i.hq, 31
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ht = and i64 %i.hs, 24
  %n.vec = and i64 %i.hs, 8589934560              ; 5 uses
  %i.hu = trunc i64 %n.vec to i32
  %i.hv = add i32 %.168.lcssa.i.i.us, %i.hu
  %i.hw = shl nuw nsw i64 %n.vec, 2
  %i.hx = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.hw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %vec.phi242 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ih, %vector.body ]
  %vec.phi243 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ii, %vector.body ]
  %vec.phi244 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ij, %vector.body ]
  %i.hy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.hy ; 4 uses
  %i.hz = getelementptr i8, ptr %next.gep, i64 32
  %i.ia = getelementptr i8, ptr %next.gep, i64 64
  %i.ib = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load245 = load <8 x float>, ptr %i.hz, align 4, !tbaa !68
  %wide.load246 = load <8 x float>, ptr %i.ia, align 4, !tbaa !68
  %wide.load247 = load <8 x float>, ptr %i.ib, align 4, !tbaa !68
  %i.ic = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.id = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load245)
  %i.ie = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load246)
  %i.if = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load247)
  %i.ig = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.ic) ; 2 uses
  %i.ih = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi242, <8 x float> %i.id) ; 2 uses
  %i.ii = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi243, <8 x float> %i.ie) ; 2 uses
  %i.ij = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi244, <8 x float> %i.if) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !1020

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ig, <8 x float> %i.ih)
  %rdx.minmax.select249 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.ii)
  %rdx.minmax.select251 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select249, <8 x float> %i.ij)
  %i.il = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select251) ; 3 uses
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.i.us.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.il, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec253 = and i64 %i.hs, 8589934584           ; 4 uses
  %i.im = trunc i64 %n.vec253 to i32
  %i.in = add i32 %.168.lcssa.i.i.us, %i.im
  %i.io = shl nuw nsw i64 %n.vec253, 2
  %i.ip = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.io
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index254 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next258, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi255 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.is, %vec.epilog.vector.body ]
  %i.iq = shl i64 %index254, 2
  %next.gep256 = getelementptr i8, ptr %.171.lcssa.i.i.us, i64 %i.iq
  %wide.load257 = load <8 x float>, ptr %next.gep256, align 4, !tbaa !68
  %i.ir = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load257)
  %i.is = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi255, <8 x float> %i.ir) ; 2 uses
  %index.next258 = add nuw i64 %index254, 8       ; 2 uses
  %i.it = icmp eq i64 %index.next258, %n.vec253
  br i1 %i.it, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1021

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.iu = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.is) ; 2 uses
  %cmp.n259 = icmp eq i64 %i.hs, %n.vec253
  br i1 %cmp.n259, label %._crit_edge.i.i.us, label %.lr.ph51.i.i.us.preheader

.lr.ph51.i.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.26950.i.i.us.ph = phi i32 [ %.168.lcssa.i.i.us, %iter.check ], [ %i.hv, %vec.epilog.iter.check ], [ %i.in, %vec.epilog.middle.block ]
  %.27249.i.i.us.ph = phi ptr [ %.171.lcssa.i.i.us, %iter.check ], [ %i.hx, %vec.epilog.iter.check ], [ %i.ip, %vec.epilog.middle.block ]
  %.02848.i.i.us.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.il, %vec.epilog.iter.check ], [ %i.iu, %vec.epilog.middle.block ]
  br label %.lr.ph51.i.i.us

.lr.ph51.i.i.us:                                  ; preds = %.lr.ph51.i.i.us.preheader, %.lr.ph51.i.i.us
  %.26950.i.i.us = phi i32 [ %i.iy, %.lr.ph51.i.i.us ], [ %.26950.i.i.us.ph, %.lr.ph51.i.i.us.preheader ]
  %.27249.i.i.us = phi ptr [ %i.ix, %.lr.ph51.i.i.us ], [ %.27249.i.i.us.ph, %.lr.ph51.i.i.us.preheader ] ; 2 uses
  %.02848.i.i.us = phi float [ %.sroa.speculated8.i.i.us, %.lr.ph51.i.i.us ], [ %.02848.i.i.us.ph, %.lr.ph51.i.i.us.preheader ]
  %i.iv = load float, ptr %.27249.i.i.us, align 4, !tbaa !68
  %i.iw = call fast float @llvm.fabs.f32(float %i.iv)
  %.sroa.speculated8.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.02848.i.i.us, float %i.iw) ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.27249.i.i.us, i64 4
  %i.iy = add nuw nsw i32 %.26950.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i32 %i.iy, %i.fk
  br i1 %exitcond.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph51.i.i.us, !llvm.loop !1022

._crit_edge.i.i.us:                               ; preds = %.lr.ph51.i.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.us
  %.028.lcssa.i.i.us = phi float [ 0.000000e+00, %.preheader.i.i.us ], [ %i.iu, %vec.epilog.middle.block ], [ %i.il, %middle.block ], [ %.sroa.speculated8.i.i.us, %.lr.ph51.i.i.us ]
  switch i32 %i.fc, label %.thread31.i.i.us [
    i32 8, label %.thread.i.i.us
    i32 4, label %bb.o
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.us
  %i.iz = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ja = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %i.ja) ; 2 uses
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jb, <4 x float> nofpclass(nan inf) %i.jc) ; 2 uses
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.jd, <4 x float> nofpclass(nan inf) %i.je)
  %i.jg = extractelement <4 x float> %i.jf, i64 0
  %.sroa.speculated4.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.028.lcssa.i.i.us, float %i.jg)
  %i.jh = shufflevector <4 x float> %.026.lcssa.i.i.us, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.jh) ; 2 uses
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ji, <4 x float> nofpclass(nan inf) %i.jj)
  %i.jl = extractelement <4 x float> %i.jk, i64 0
  %.sroa.speculated.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i.i.us, float %i.jl) ; 2 uses
  %i.jm = fdiv fast float 1.270000e+02, %.sroa.speculated.i.i.us
  store float %i.jm, ptr %.055.i.i.us, align 4, !tbaa !68
  %i.jn = fmul fast float %.sroa.speculated.i.i.us, f0x3C010204
  %i.jo = fmul fast float %i.jn, %i.fz
  store float %i.jo, ptr %.06354.i.i.us, align 4, !tbaa !68
  %i.jp = getelementptr inbounds nuw i8, ptr %.055.i.i.us, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.06354.i.i.us, i64 4
  br label %.thread31.i.i.us

bb.o:                                             ; preds = %._crit_edge.i.i.us
  %i.jr = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = shufflevector <8 x float> %.025.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.026.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.jr)
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.js) ; 2 uses
  %i.jv = fdiv fast <4 x float> splat (float 1.270000e+02), %i.ju
  %i.jw = fmul fast <4 x float> %i.ju, %i.fm
  store <4 x float> %i.jv, ptr %.055.i.i.us, align 16, !tbaa !89
  store <4 x float> %i.jw, ptr %.06354.i.i.us, align 16, !tbaa !89
  %i.jx = getelementptr inbounds nuw i8, ptr %.055.i.i.us, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %.06354.i.i.us, i64 16
  br label %.thread31.i.i.us

.thread.i.i.us:                                   ; preds = %._crit_edge.i.i.us
  %i.jz = fdiv fast <8 x float> splat (float 1.270000e+02), %.025.lcssa.i.i.us
  %i.ka = fmul fast <8 x float> %.025.lcssa.i.i.us, %i.fo
  store <8 x float> %i.jz, ptr %.055.i.i.us, align 32, !tbaa !89
  store <8 x float> %i.ka, ptr %.06354.i.i.us, align 32, !tbaa !89
  %i.kb = getelementptr inbounds nuw i8, ptr %.055.i.i.us, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %.06354.i.i.us, i64 32
  br label %.thread31.i.i.us

.thread31.i.i.us:                                 ; preds = %.thread.i.i.us, %bb.o, %bb.n, %._crit_edge.i.i.us
  %.366.i.i.us = phi ptr [ %i.jq, %bb.n ], [ %.06354.i.i.us, %._crit_edge.i.i.us ], [ %i.kc, %.thread.i.i.us ], [ %i.jy, %bb.o ]
  %.3.i.i.us = phi ptr [ %i.jp, %bb.n ], [ %.055.i.i.us, %._crit_edge.i.i.us ], [ %i.kb, %.thread.i.i.us ], [ %i.jx, %bb.o ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond65.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond65.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %bb.m, !llvm.loop !5

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %.thread31.i.i.us, %bb.i
  br i1 %.not86, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.k
  invoke fastcc void @_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.l
  invoke fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us, %.noexc118.us
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.083186.us, i32 noundef %.sroa.speculated158.us, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.kd = load ptr, ptr %i.bd, align 8, !tbaa !22 ; 2 uses
  %.not.i96.us = icmp eq ptr %i.kd, null
  br i1 %.not.i96.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ke = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.s:                                             ; preds = %bb.r
  %i.kg = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 3 uses
  %.not3.i97.us = icmp eq ptr %i.kg, null
  %i.kh = load ptr, ptr %16, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i97.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  invoke void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef %i.kh)
          to label %_ZN4ncnn3MatD2Ev.exit89.us unwind label %.split.us, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i111.us = icmp eq ptr %i.kh, null
  br i1 %.not.i111.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.kh) #9
  br label %_ZN4ncnn3MatD2Ev.exit89.us

_ZN4ncnn3MatD2Ev.exit89.us:                       ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.kl = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %.not.i100.us = icmp eq ptr %i.kl, null
  br i1 %.not.i100.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit89.us
  %i.km = atomicrmw add ptr %i.kl, i32 -1 acq_rel, align 4
  %i.kn = icmp eq i32 %i.km, 1
  br i1 %i.kn, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit88.us

bb.x:                                             ; preds = %bb.w
  %i.ko = load ptr, ptr %i.au, align 8, !tbaa !23 ; 3 uses
  %.not3.i101.us = icmp eq ptr %i.ko, null
  %i.kp = load ptr, ptr %15, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i101.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  invoke void %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef %i.kp)
          to label %_ZN4ncnn3MatD2Ev.exit88.us unwind label %.split191.us, !inline_history !0

bb.z:                                             ; preds = %bb.x
  %.not.i109.us = icmp eq ptr %i.kp, null
  br i1 %.not.i109.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.kp) #9
  br label %_ZN4ncnn3MatD2Ev.exit88.us

_ZN4ncnn3MatD2Ev.exit88.us:                       ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %_ZN4ncnn3MatD2Ev.exit89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.kt = add nsw i32 %.0185.us, %i.dk            ; 2 uses
  %i.ku = icmp slt i32 %i.kt, %i.cg
  br i1 %i.ku, label %bb.h, label %._crit_edge.us, !llvm.loop !1023

bb.ab:                                            ; preds = %._crit_edge.us
  %i.kv = add nsw i32 %.083186.us, %i.bn          ; 2 uses
  %i.kw = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.kx = icmp slt i32 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph.us, label %._crit_edge188, !llvm.loop !1024

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.083186.us, i32 noundef %.sroa.speculated158.us, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us:                                        ; preds = %bb.t
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #26
  unreachable

end_hunk_4
