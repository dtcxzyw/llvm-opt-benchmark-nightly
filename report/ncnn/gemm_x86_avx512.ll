Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@llvm.x86.avx512.mask.scattersiv4.sf

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20compute_B_int8_scaleERKNS_3MatERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = icmp eq i32 %i.b, 3                      ; 5 uses
  %.in.v.i = select i1 %i.c, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load i32, ptr %.in.i, align 8, !tbaa !51 ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph106.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph106.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !25     ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = mul nsw i32 %i.m, %i.g                   ; 22 uses
  %i.p = icmp sgt i32 %i.o, 15
  br i1 %i.p, label %.lr.ph106.split.us.preheader.i, label %.lr.ph106.split.i

.lr.ph106.split.us.preheader.i:                   ; preds = %.lr.ph106.i
  %i.q = and i32 %i.o, 2147483632                 ; 3 uses
  %wide.trip.count276.i = zext nneg i32 %i.d to i64
  %..i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul297.i = mul i64 %..i, %i.n
  %i.r = or disjoint i32 %i.q, 7
  %i.s = icmp samesign ult i32 %i.r, %i.o
  %i.t = add nsw i32 %i.o, -16                    ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %xtraiter252 = and i32 %i.v, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.t, 48
  %unroll_iter258 = and i32 %i.v, 536870908
  %lcmp.mod254.not = icmp eq i32 %xtraiter252, 0
  %lcmp.mod257 = icmp ne i32 %xtraiter252, 0
  br label %.lr.ph106.split.us.i

.lr.ph106.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph106.split.us.preheader.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph106.split.us.preheader.i ], [ %indvars.iv.next274.i, %._crit_edge.us.i ] ; 2 uses
  %.066103.us.i = phi float [ 0.000000e+00, %.lr.ph106.split.us.preheader.i ], [ %.167.lcssa.us.i, %._crit_edge.us.i ] ; 4 uses
  %.068102.us.i = phi <16 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.lcssa213, %._crit_edge.us.i ] ; 2 uses
  %.070101.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.171.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.072100.us.i = phi <4 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.173.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.reass298.i = mul i64 %factor.op.mul297.i, %indvars.iv273.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass298.i ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph106.split.us.i.new

.lr.ph106.split.us.i.new:                         ; preds = %.lr.ph106.split.us.i, %.lr.ph106.split.us.i.new
  %.03477.us.i = phi ptr [ %i.ar, %.lr.ph106.split.us.i.new ], [ %i.x, %.lr.ph106.split.us.i ] ; 5 uses
  %.16976.us.i = phi <16 x float> [ %i.aq, %.lr.ph106.split.us.i.new ], [ %.068102.us.i, %.lr.ph106.split.us.i ]
  %niter259 = phi i32 [ %niter259.next.3, %.lr.ph106.split.us.i.new ], [ 0, %.lr.ph106.split.us.i ]
  %i.y = load <16 x i32>, ptr %.03477.us.i, align 1, !tbaa !90
  %i.z = and <16 x i32> %i.y, splat (i32 2147483647)
  %i.aa = bitcast <16 x i32> %i.z to <16 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.16976.us.i, <16 x float> nofpclass(nan inf) %i.aa, i32 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 64
  %i.ad = load <16 x i32>, ptr %i.ac, align 1, !tbaa !90
  %i.ae = and <16 x i32> %i.ad, splat (i32 2147483647)
  %i.af = bitcast <16 x i32> %i.ae to <16 x float>
  %i.ag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ab, <16 x float> nofpclass(nan inf) %i.af, i32 4)
  %i.ah = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 128
  %i.ai = load <16 x i32>, ptr %i.ah, align 1, !tbaa !90
  %i.aj = and <16 x i32> %i.ai, splat (i32 2147483647)
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float>
  %i.al = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ak, i32 4)
  %i.am = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 192
  %i.an = load <16 x i32>, ptr %i.am, align 1, !tbaa !90
  %i.ao = and <16 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 256 ; 3 uses
  %niter259.next.3 = add i32 %niter259, 4         ; 2 uses
  %niter259.ncmp.3.not = icmp eq i32 %niter259.next.3, %unroll_iter258
  br i1 %niter259.ncmp.3.not, label %..preheader75_crit_edge.us.i.unr-lcssa, label %.lr.ph106.split.us.i.new, !llvm.loop !945

.lr.ph84.us.i:                                    ; preds = %..preheader75_crit_edge.us.i, %.lr.ph84.us.i
  %.183.us.i = phi i32 [ %i.ax, %.lr.ph84.us.i ], [ %i.q, %..preheader75_crit_edge.us.i ]
  %.13582.us.i = phi ptr [ %i.aw, %.lr.ph84.us.i ], [ %.lcssa, %..preheader75_crit_edge.us.i ] ; 2 uses
  %.17181.us.i = phi <8 x float> [ %i.av, %.lr.ph84.us.i ], [ %.070101.us.i, %..preheader75_crit_edge.us.i ]
  %i.as = load <8 x i32>, ptr %.13582.us.i, align 1, !tbaa !90
  %i.at = and <8 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <8 x i32> %i.at to <8 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.17181.us.i, <8 x float> nofpclass(nan inf) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13582.us.i, i64 32 ; 2 uses
  %i.ax = add nuw nsw i32 %.183.us.i, 8           ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 7
  %i.az = icmp slt i32 %i.ay, %i.o
  br i1 %i.az, label %.lr.ph84.us.i, label %.preheader74.us.i, !llvm.loop !946

.lr.ph91.us.i:                                    ; preds = %.preheader74.us.i, %.lr.ph91.us.i
  %.290.us.i = phi i32 [ %i.bf, %.lr.ph91.us.i ], [ %.1.lcssa.us.i, %.preheader74.us.i ]
  %.23689.us.i = phi ptr [ %i.be, %.lr.ph91.us.i ], [ %.135.lcssa.us.i, %.preheader74.us.i ] ; 2 uses
  %.17388.us.i = phi <4 x float> [ %i.bd, %.lr.ph91.us.i ], [ %.072100.us.i, %.preheader74.us.i ]
  %i.ba = load <4 x i32>, ptr %.23689.us.i, align 1, !tbaa !90
  %i.bb = and <4 x i32> %i.ba, splat (i32 2147483647)
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.17388.us.i, <4 x float> nofpclass(nan inf) %i.bc) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.23689.us.i, i64 16 ; 2 uses
  %i.bf = add nuw nsw i32 %.290.us.i, 4           ; 3 uses
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = icmp slt i32 %i.bg, %i.o
  br i1 %i.bh, label %.lr.ph91.us.i, label %.preheader.us.i, !llvm.loop !947

.lr.ph98.us.i:                                    ; preds = %.lr.ph98.us.i.preheader, %.lr.ph98.us.i
  %.397.us.i = phi i32 [ %i.bl, %.lr.ph98.us.i ], [ %.397.us.i.ph, %.lr.ph98.us.i.preheader ]
  %.33796.us.i = phi ptr [ %i.bk, %.lr.ph98.us.i ], [ %.33796.us.i.ph, %.lr.ph98.us.i.preheader ] ; 2 uses
  %.16795.us.i = phi float [ %.sroa.speculated51.us.i, %.lr.ph98.us.i ], [ %.16795.us.i.ph, %.lr.ph98.us.i.preheader ]
  %i.bi = load float, ptr %.33796.us.i, align 4, !tbaa !69
  %i.bj = tail call fast float @llvm.fabs.f32(float %i.bi)
  %.sroa.speculated51.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.16795.us.i, float %i.bj) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.33796.us.i, i64 4
  %i.bl = add nuw nsw i32 %.397.us.i, 1           ; 2 uses
  %exitcond272.not.i = icmp eq i32 %i.bl, %i.o
  br i1 %exitcond272.not.i, label %._crit_edge.us.i, label %.lr.ph98.us.i, !llvm.loop !948

._crit_edge.us.i:                                 ; preds = %.lr.ph98.us.i, %middle.block183, %vec.epilog.middle.block208, %.preheader.us.i
  %.167.lcssa.us.i = phi float [ %.066103.us.i, %.preheader.us.i ], [ %i.cs, %vec.epilog.middle.block208 ], [ %i.cj, %middle.block183 ], [ %.sroa.speculated51.us.i, %.lr.ph98.us.i ] ; 2 uses
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond277.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count276.i
  br i1 %exitcond277.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.lr.ph106.split.us.i, !llvm.loop !949

.preheader.us.i:                                  ; preds = %.lr.ph91.us.i, %.preheader74.us.i
  %.173.lcssa.us.i = phi <4 x float> [ %.072100.us.i, %.preheader74.us.i ], [ %i.bd, %.lr.ph91.us.i ] ; 2 uses
  %.236.lcssa.us.i = phi ptr [ %.135.lcssa.us.i, %.preheader74.us.i ], [ %i.be, %.lr.ph91.us.i ] ; 5 uses
  %.2.lcssa.us.i = phi i32 [ %.1.lcssa.us.i, %.preheader74.us.i ], [ %i.bf, %.lr.ph91.us.i ] ; 5 uses
  %i.bm = icmp slt i32 %.2.lcssa.us.i, %i.o
  br i1 %i.bm, label %iter.check194, label %._crit_edge.us.i

iter.check194:                                    ; preds = %.preheader.us.i
  %i.bn = xor i32 %.2.lcssa.us.i, -1
  %i.bo = add i32 %i.o, %i.bn                     ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check164 = icmp ult i32 %i.bo, 7
  br i1 %min.iters.check164, label %.lr.ph98.us.i.preheader, label %vector.main.loop.iter.check165

vector.main.loop.iter.check165:                   ; preds = %iter.check194
  %min.iters.check166 = icmp ult i32 %i.bo, 63
  br i1 %min.iters.check166, label %vec.epilog.ph198, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check165
  %i.br = and i64 %i.bq, 56
  %n.vec168 = and i64 %i.bq, 8589934528           ; 5 uses
  %i.bs = trunc i64 %n.vec168 to i32
  %i.bt = add i32 %.2.lcssa.us.i, %i.bs
  %i.bu = shl nuw nsw i64 %n.vec168, 2
  %i.bv = getelementptr i8, ptr %.236.lcssa.us.i, i64 %i.bu
  %broadcast.splatinsert169 = insertelement <16 x float> poison, float %.066103.us.i, i64 0
  %broadcast.splat170 = shufflevector <16 x float> %broadcast.splatinsert169, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.ph167, %vector.body171
  %index172 = phi i64 [ 0, %vector.ph167 ], [ %index.next182, %vector.body171 ] ; 2 uses
  %vec.phi173.a = phi <16 x float> [ %broadcast.splat170, %vector.ph167 ], [ %i.ce, %vector.body171 ]
  %vec.phi174 = phi <16 x float> [ %broadcast.splat170, %vector.ph167 ], [ %i.cf, %vector.body171 ]
  %vec.phi175 = phi <16 x float> [ %broadcast.splat170, %vector.ph167 ], [ %i.cg, %vector.body171 ]
  %vec.phi176 = phi <16 x float> [ %broadcast.splat170, %vector.ph167 ], [ %i.ch, %vector.body171 ]
  %i.bw = shl i64 %index172, 2
  %next.gep177 = getelementptr i8, ptr %.236.lcssa.us.i, i64 %i.bw ; 4 uses
  %i.bx = getelementptr i8, ptr %next.gep177, i64 64
  %i.by = getelementptr i8, ptr %next.gep177, i64 128
  %i.bz = getelementptr i8, ptr %next.gep177, i64 192
  %wide.load178.a = load <16 x float>, ptr %next.gep177, align 4, !tbaa !69
  %wide.load179 = load <16 x float>, ptr %i.bx, align 4, !tbaa !69
  %wide.load180 = load <16 x float>, ptr %i.by, align 4, !tbaa !69
  %wide.load181 = load <16 x float>, ptr %i.bz, align 4, !tbaa !69
  %i.ca = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load178.a)
  %i.cb = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load179)
  %i.cc = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load180)
  %i.cd = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load181)
  %i.ce = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi173.a, <16 x float> %i.ca) ; 2 uses
  %i.cf = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi174, <16 x float> %i.cb) ; 2 uses
  %i.cg = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi175, <16 x float> %i.cc) ; 2 uses
  %i.ch = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi176, <16 x float> %i.cd) ; 2 uses
  %index.next182 = add nuw i64 %index172, 64      ; 2 uses
  %i.ci = icmp eq i64 %index.next182, %n.vec168
  br i1 %i.ci, label %middle.block183, label %vector.body171, !llvm.loop !950

middle.block183:                                  ; preds = %vector.body171
  %rdx.minmax.select185 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ce, <16 x float> %i.cf)
  %rdx.minmax.select187 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select185, <16 x float> %i.cg)
  %rdx.minmax.select189 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select187, <16 x float> %i.ch)
  %i.cj = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select189) ; 3 uses
  %cmp.n190 = icmp eq i64 %i.bq, %n.vec168
  br i1 %cmp.n190, label %._crit_edge.us.i, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block183
  %min.epilog.iters.check197 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph98.us.i.preheader, label %vec.epilog.ph198, !prof !73

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check196
  %vec.epilog.resume.val191 = phi i64 [ %n.vec168, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check165 ]
  %bc.merge.rdx193 = phi float [ %i.cj, %vec.epilog.iter.check196 ], [ %.066103.us.i, %vector.main.loop.iter.check165 ]
  %broadcast.splatinsert198 = insertelement <8 x float> poison, float %bc.merge.rdx193, i64 0
  %broadcast.splat199 = shufflevector <8 x float> %broadcast.splatinsert198, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec199 = and i64 %i.bq, 8589934584           ; 4 uses
  %i.ck = trunc i64 %n.vec199 to i32
  %i.cl = add i32 %.2.lcssa.us.i, %i.ck
  %i.cm = shl nuw nsw i64 %n.vec199, 2
  %i.cn = getelementptr i8, ptr %.236.lcssa.us.i, i64 %i.cm
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph198
  %index203 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph198 ], [ %index.next207, %vec.epilog.vector.body202 ] ; 2 uses
  %vec.phi204 = phi <8 x float> [ %broadcast.splat199, %vec.epilog.ph198 ], [ %i.cq, %vec.epilog.vector.body202 ]
  %i.co = shl i64 %index203, 2
  %next.gep205 = getelementptr i8, ptr %.236.lcssa.us.i, i64 %i.co
  %wide.load206 = load <8 x float>, ptr %next.gep205, align 4, !tbaa !69
  %i.cp = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load206)
  %i.cq = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi204, <8 x float> %i.cp) ; 2 uses
  %index.next207 = add nuw i64 %index203, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next207, %n.vec199
  br i1 %i.cr, label %vec.epilog.middle.block208, label %vec.epilog.vector.body202, !llvm.loop !951

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body202
  %i.cs = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.cq) ; 2 uses
  %cmp.n209 = icmp eq i64 %i.bq, %n.vec199
  br i1 %cmp.n209, label %._crit_edge.us.i, label %.lr.ph98.us.i.preheader

.lr.ph98.us.i.preheader:                          ; preds = %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block208
  %.397.us.i.ph = phi i32 [ %.2.lcssa.us.i, %iter.check194 ], [ %i.bt, %vec.epilog.iter.check196 ], [ %i.cl, %vec.epilog.middle.block208 ]
  %.33796.us.i.ph = phi ptr [ %.236.lcssa.us.i, %iter.check194 ], [ %i.bv, %vec.epilog.iter.check196 ], [ %i.cn, %vec.epilog.middle.block208 ]
  %.16795.us.i.ph = phi float [ %.066103.us.i, %iter.check194 ], [ %i.cj, %vec.epilog.iter.check196 ], [ %i.cs, %vec.epilog.middle.block208 ]
  br label %.lr.ph98.us.i

.preheader74.us.i:                                ; preds = %.lr.ph84.us.i, %..preheader75_crit_edge.us.i
  %.171.lcssa.us.i = phi <8 x float> [ %.070101.us.i, %..preheader75_crit_edge.us.i ], [ %i.av, %.lr.ph84.us.i ] ; 2 uses
  %.135.lcssa.us.i = phi ptr [ %.lcssa, %..preheader75_crit_edge.us.i ], [ %i.aw, %.lr.ph84.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %i.q, %..preheader75_crit_edge.us.i ], [ %i.ax, %.lr.ph84.us.i ] ; 3 uses
  %i.ct = or disjoint i32 %.1.lcssa.us.i, 3
  %i.cu = icmp slt i32 %i.ct, %i.o
  br i1 %i.cu, label %.lr.ph91.us.i, label %.preheader.us.i

..preheader75_crit_edge.us.i.unr-lcssa:           ; preds = %.lr.ph106.split.us.i.new
  br i1 %lcmp.mod254.not, label %..preheader75_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader75_crit_edge.us.i.unr-lcssa, %.lr.ph106.split.us.i
  %.03477.us.i.epil.init = phi ptr [ %i.x, %.lr.ph106.split.us.i ], [ %i.ar, %..preheader75_crit_edge.us.i.unr-lcssa ]
  %.16976.us.i.epil.init = phi <16 x float> [ %.068102.us.i, %.lr.ph106.split.us.i ], [ %i.aq, %..preheader75_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.03477.us.i.epil = phi ptr [ %.03477.us.i.epil.init, %.epil.preheader ], [ %i.cz, %bb.b ] ; 2 uses
  %.16976.us.i.epil = phi <16 x float> [ %.16976.us.i.epil.init, %.epil.preheader ], [ %i.cy, %bb.b ]
  %epil.iter253 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter253.next, %bb.b ]
  %i.cv = load <16 x i32>, ptr %.03477.us.i.epil, align 1, !tbaa !90
  %i.cw = and <16 x i32> %i.cv, splat (i32 2147483647)
  %i.cx = bitcast <16 x i32> %i.cw to <16 x float>
  %i.cy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.16976.us.i.epil, <16 x float> nofpclass(nan inf) %i.cx, i32 4) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.03477.us.i.epil, i64 64 ; 2 uses
  %epil.iter253.next = add i32 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i32 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %..preheader75_crit_edge.us.i, label %bb.b, !llvm.loop !952

..preheader75_crit_edge.us.i:                     ; preds = %bb.b, %..preheader75_crit_edge.us.i.unr-lcssa
  %.lcssa213 = phi <16 x float> [ %i.aq, %..preheader75_crit_edge.us.i.unr-lcssa ], [ %i.cy, %bb.b ] ; 2 uses
  %.lcssa = phi ptr [ %i.ar, %..preheader75_crit_edge.us.i.unr-lcssa ], [ %i.cz, %bb.b ] ; 2 uses
  br i1 %i.s, label %.lr.ph84.us.i, label %.preheader74.us.i

.lr.ph106.split.i:                                ; preds = %.lr.ph106.i
  %i.da = icmp sgt i32 %i.o, 7
  br i1 %i.da, label %.lr.ph106.split.split.us.preheader.i, label %.lr.ph106.split.split.i

.lr.ph106.split.split.us.preheader.i:             ; preds = %.lr.ph106.split.i
  %wide.trip.count270.i = zext nneg i32 %i.d to i64
  %.227.i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul295.i = mul i64 %.227.i, %i.n
  %i.db = icmp samesign ugt i32 %i.o, 11
  br label %..preheader74_crit_edge.us124.i

..preheader74_crit_edge.us124.i:                  ; preds = %._crit_edge.us149.i, %.lr.ph106.split.split.us.preheader.i
  %indvars.iv267.i = phi i64 [ 0, %.lr.ph106.split.split.us.preheader.i ], [ %indvars.iv.next268.i, %._crit_edge.us149.i ] ; 2 uses
  %.066103.us116.i = phi float [ 0.000000e+00, %.lr.ph106.split.split.us.preheader.i ], [ %.167.lcssa.us151.i, %._crit_edge.us149.i ] ; 4 uses
  %.070101.us117.i = phi <8 x float> [ zeroinitializer, %.lr.ph106.split.split.us.preheader.i ], [ %i.dg, %._crit_edge.us149.i ]
  %.072100.us118.i = phi <4 x float> [ zeroinitializer, %.lr.ph106.split.split.us.preheader.i ], [ %.173.lcssa.us141.i, %._crit_edge.us149.i ] ; 2 uses
  %.reass296.i = mul i64 %factor.op.mul295.i, %indvars.iv267.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass296.i ; 3 uses
  %i.dd = load <8 x i32>, ptr %i.dc, align 1, !tbaa !90
  %i.de = and <8 x i32> %i.dd, splat (i32 2147483647)
  %i.df = bitcast <8 x i32> %i.de to <8 x float>
  %i.dg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.070101.us117.i, <8 x float> nofpclass(nan inf) %i.df) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  br i1 %i.db, label %.preheader.us140.loopexit.i, label %.preheader.us140.i

.preheader.us140.loopexit.i:                      ; preds = %..preheader74_crit_edge.us124.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dj = load <4 x i32>, ptr %i.dh, align 1, !tbaa !90
  %i.dk = and <4 x i32> %i.dj, splat (i32 2147483647)
  %i.dl = bitcast <4 x i32> %i.dk to <4 x float>
  %i.dm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.072100.us118.i, <4 x float> nofpclass(nan inf) %i.dl)
  br label %.preheader.us140.i

.preheader.us140.i:                               ; preds = %.preheader.us140.loopexit.i, %..preheader74_crit_edge.us124.i
  %.173.lcssa.us141.i = phi <4 x float> [ %.072100.us118.i, %..preheader74_crit_edge.us124.i ], [ %i.dm, %.preheader.us140.loopexit.i ] ; 2 uses
  %.236.lcssa.us142.i = phi ptr [ %i.dh, %..preheader74_crit_edge.us124.i ], [ %i.di, %.preheader.us140.loopexit.i ] ; 5 uses
  %.2.lcssa.us143.i = phi i32 [ 8, %..preheader74_crit_edge.us124.i ], [ 12, %.preheader.us140.loopexit.i ] ; 5 uses
  %i.dn = icmp slt i32 %.2.lcssa.us143.i, %i.o
  br i1 %i.dn, label %iter.check145, label %._crit_edge.us149.i

iter.check145:                                    ; preds = %.preheader.us140.i
  %i.do = xor i32 %.2.lcssa.us143.i, -1
  %i.dp = add nsw i32 %i.o, %i.do                 ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check115.a = icmp ult i32 %i.dp, 7
  br i1 %min.iters.check115.a, label %.lr.ph98.us144.i.preheader, label %vector.main.loop.iter.check116

vector.main.loop.iter.check116:                   ; preds = %iter.check145
  %min.iters.check117 = icmp ult i32 %i.dp, 63
  br i1 %min.iters.check117, label %vec.epilog.ph149, label %vector.ph118

vector.ph118:                                     ; preds = %vector.main.loop.iter.check116
  %i.ds = and i64 %i.dr, 56
  %n.vec119 = and i64 %i.dr, 8589934528           ; 5 uses
  %i.dt = trunc i64 %n.vec119 to i32
  %i.du = or disjoint i32 %.2.lcssa.us143.i, %i.dt
  %i.dv = shl nuw nsw i64 %n.vec119, 2
  %i.dw = getelementptr i8, ptr %.236.lcssa.us142.i, i64 %i.dv
  %broadcast.splatinsert120 = insertelement <16 x float> poison, float %.066103.us116.i, i64 0
  %broadcast.splat121 = shufflevector <16 x float> %broadcast.splatinsert120, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph118, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next133, %vector.body122 ] ; 2 uses
  %vec.phi124.a = phi <16 x float> [ %broadcast.splat121, %vector.ph118 ], [ %i.ef, %vector.body122 ]
  %vec.phi125.a = phi <16 x float> [ %broadcast.splat121, %vector.ph118 ], [ %i.eg, %vector.body122 ]
  %vec.phi126 = phi <16 x float> [ %broadcast.splat121, %vector.ph118 ], [ %i.eh, %vector.body122 ]
  %vec.phi127 = phi <16 x float> [ %broadcast.splat121, %vector.ph118 ], [ %i.ei, %vector.body122 ]
  %i.dx = shl i64 %index123, 2
  %next.gep128 = getelementptr i8, ptr %.236.lcssa.us142.i, i64 %i.dx ; 4 uses
  %i.dy = getelementptr i8, ptr %next.gep128, i64 64
  %i.dz = getelementptr i8, ptr %next.gep128, i64 128
  %i.ea = getelementptr i8, ptr %next.gep128, i64 192
  %wide.load129.a = load <16 x float>, ptr %next.gep128, align 4, !tbaa !69
  %wide.load130.a = load <16 x float>, ptr %i.dy, align 4, !tbaa !69
  %wide.load131 = load <16 x float>, ptr %i.dz, align 4, !tbaa !69
  %wide.load132 = load <16 x float>, ptr %i.ea, align 4, !tbaa !69
  %i.eb = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load129.a)
  %i.ec = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load130.a)
  %i.ed = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load131)
  %i.ee = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load132)
  %i.ef = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi124.a, <16 x float> %i.eb) ; 2 uses
  %i.eg = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi125.a, <16 x float> %i.ec) ; 2 uses
  %i.eh = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi126, <16 x float> %i.ed) ; 2 uses
  %i.ei = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi127, <16 x float> %i.ee) ; 2 uses
  %index.next133 = add nuw i64 %index123, 64      ; 2 uses
  %i.ej = icmp eq i64 %index.next133, %n.vec119
  br i1 %i.ej, label %middle.block134, label %vector.body122, !llvm.loop !953

middle.block134:                                  ; preds = %vector.body122
  %rdx.minmax.select136.a = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ef, <16 x float> %i.eg)
  %rdx.minmax.select138.a = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select136.a, <16 x float> %i.eh)
  %rdx.minmax.select140 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select138.a, <16 x float> %i.ei)
  %i.ek = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select140) ; 3 uses
  %cmp.n141 = icmp eq i64 %i.dr, %n.vec119
  br i1 %cmp.n141, label %._crit_edge.us149.i, label %vec.epilog.iter.check147

vec.epilog.iter.check147:                         ; preds = %middle.block134
  %min.epilog.iters.check148 = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check148, label %.lr.ph98.us144.i.preheader, label %vec.epilog.ph149, !prof !73

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check116, %vec.epilog.iter.check147
  %vec.epilog.resume.val142 = phi i64 [ %n.vec119, %vec.epilog.iter.check147 ], [ 0, %vector.main.loop.iter.check116 ]
  %bc.merge.rdx144 = phi float [ %i.ek, %vec.epilog.iter.check147 ], [ %.066103.us116.i, %vector.main.loop.iter.check116 ]
  %broadcast.splatinsert150 = insertelement <8 x float> poison, float %bc.merge.rdx144, i64 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec150 = and i64 %i.dr, 8589934584           ; 4 uses
  %i.el = trunc i64 %n.vec150 to i32
  %i.em = add i32 %.2.lcssa.us143.i, %i.el
  %i.en = shl nuw nsw i64 %n.vec150, 2
  %i.eo = getelementptr i8, ptr %.236.lcssa.us142.i, i64 %i.en
  br label %vec.epilog.vector.body153

vec.epilog.vector.body153:                        ; preds = %vec.epilog.vector.body153, %vec.epilog.ph149
  %index154 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph149 ], [ %index.next158, %vec.epilog.vector.body153 ] ; 2 uses
  %vec.phi155 = phi <8 x float> [ %broadcast.splat151, %vec.epilog.ph149 ], [ %i.er, %vec.epilog.vector.body153 ]
  %i.ep = shl i64 %index154, 2
  %next.gep156 = getelementptr i8, ptr %.236.lcssa.us142.i, i64 %i.ep
  %wide.load157 = load <8 x float>, ptr %next.gep156, align 4, !tbaa !69
  %i.eq = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load157)
  %i.er = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi155, <8 x float> %i.eq) ; 2 uses
  %index.next158 = add nuw i64 %index154, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next158, %n.vec150
  br i1 %i.es, label %vec.epilog.middle.block159, label %vec.epilog.vector.body153, !llvm.loop !954

vec.epilog.middle.block159:                       ; preds = %vec.epilog.vector.body153
  %i.et = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.er) ; 2 uses
  %cmp.n160 = icmp eq i64 %i.dr, %n.vec150
  br i1 %cmp.n160, label %._crit_edge.us149.i, label %.lr.ph98.us144.i.preheader

.lr.ph98.us144.i.preheader:                       ; preds = %iter.check145, %vec.epilog.iter.check147, %vec.epilog.middle.block159
  %.397.us145.i.ph = phi i32 [ %.2.lcssa.us143.i, %iter.check145 ], [ %i.du, %vec.epilog.iter.check147 ], [ %i.em, %vec.epilog.middle.block159 ]
  %.33796.us146.i.ph = phi ptr [ %.236.lcssa.us142.i, %iter.check145 ], [ %i.dw, %vec.epilog.iter.check147 ], [ %i.eo, %vec.epilog.middle.block159 ]
  %.16795.us147.i.ph = phi float [ %.066103.us116.i, %iter.check145 ], [ %i.ek, %vec.epilog.iter.check147 ], [ %i.et, %vec.epilog.middle.block159 ]
  br label %.lr.ph98.us144.i

.lr.ph98.us144.i:                                 ; preds = %.lr.ph98.us144.i.preheader, %.lr.ph98.us144.i
  %.397.us145.i = phi i32 [ %i.ex, %.lr.ph98.us144.i ], [ %.397.us145.i.ph, %.lr.ph98.us144.i.preheader ]
  %.33796.us146.i = phi ptr [ %i.ew, %.lr.ph98.us144.i ], [ %.33796.us146.i.ph, %.lr.ph98.us144.i.preheader ] ; 2 uses
  %.16795.us147.i = phi float [ %.sroa.speculated51.us148.i, %.lr.ph98.us144.i ], [ %.16795.us147.i.ph, %.lr.ph98.us144.i.preheader ]
  %i.eu = load float, ptr %.33796.us146.i, align 4, !tbaa !69
  %i.ev = tail call fast float @llvm.fabs.f32(float %i.eu)
  %.sroa.speculated51.us148.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.16795.us147.i, float %i.ev) ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.33796.us146.i, i64 4
  %i.ex = add nuw nsw i32 %.397.us145.i, 1        ; 2 uses
  %exitcond266.not.i = icmp eq i32 %i.ex, %i.o
  br i1 %exitcond266.not.i, label %._crit_edge.us149.i, label %.lr.ph98.us144.i, !llvm.loop !955

._crit_edge.us149.i:                              ; preds = %.lr.ph98.us144.i, %middle.block134, %vec.epilog.middle.block159, %.preheader.us140.i
  %.167.lcssa.us151.i = phi float [ %.066103.us116.i, %.preheader.us140.i ], [ %i.et, %vec.epilog.middle.block159 ], [ %i.ek, %middle.block134 ], [ %.sroa.speculated51.us148.i, %.lr.ph98.us144.i ] ; 2 uses
  %indvars.iv.next268.i = add nuw nsw i64 %indvars.iv267.i, 1 ; 2 uses
  %exitcond271.not.i = icmp eq i64 %indvars.iv.next268.i, %wide.trip.count270.i
  br i1 %exitcond271.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %..preheader74_crit_edge.us124.i, !llvm.loop !949

.lr.ph106.split.split.i:                          ; preds = %.lr.ph106.split.i
  %i.ey = icmp sgt i32 %i.o, 3
  br i1 %i.ey, label %.lr.ph106.split.split.split.us.preheader.i, label %.lr.ph106.split.split.split.i

.lr.ph106.split.split.split.us.preheader.i:       ; preds = %.lr.ph106.split.split.i
  %wide.trip.count264.i = zext nneg i32 %i.d to i64 ; 3 uses
  %.228.i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul293.i = mul i64 %.228.i, %i.n     ; 6 uses
  %.not.i = icmp eq i32 %i.o, 4
  br i1 %.not.i, label %..preheader_crit_edge.us168.i.us.preheader, label %..preheader_crit_edge.us168.i.preheader

..preheader_crit_edge.us168.i.us.preheader:       ; preds = %.lr.ph106.split.split.split.us.preheader.i
  %xtraiter = and i64 %wide.trip.count264.i, 3    ; 3 uses
  %i.ez = icmp ult i32 %i.d, 4
  br i1 %i.ez, label %..preheader_crit_edge.us168.i.us.epil.preheader, label %..preheader_crit_edge.us168.i.us.preheader.new

..preheader_crit_edge.us168.i.us.preheader.new:   ; preds = %..preheader_crit_edge.us168.i.us.preheader
  %unroll_iter = and i64 %wide.trip.count264.i, 2147483644
  br label %..preheader_crit_edge.us168.i.us

..preheader_crit_edge.us168.i.preheader:          ; preds = %.lr.ph106.split.split.split.us.preheader.i
  %i.fa = add nsw i32 %i.o, -4                    ; 3 uses
  %i.fb = zext i32 %i.fa to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.fa, 8
  %min.iters.check81 = icmp ult i32 %i.fa, 64
  %i.fc = and i64 %i.fb, 56
  %n.vec83 = and i64 %i.fb, 4294967232            ; 5 uses
  %i.fd = trunc nuw i64 %n.vec83 to i32
  %i.fe = or disjoint i32 %i.fd, 4
  %i.ff = shl nuw nsw i64 %n.vec83, 2
  %cmp.n = icmp eq i64 %n.vec83, %i.fb
  %min.epilog.iters.check = icmp eq i64 %i.fc, 0
  %n.vec103 = and i64 %i.fb, 4294967288           ; 4 uses
  %i.fg = trunc nuw i64 %n.vec103 to i32
  %i.fh = or disjoint i32 %i.fg, 4
  %i.fi = shl nuw nsw i64 %n.vec103, 2
  %cmp.n111 = icmp eq i64 %n.vec103, %i.fb
  br label %iter.check

..preheader_crit_edge.us168.i.us:                 ; preds = %..preheader_crit_edge.us168.i.us, %..preheader_crit_edge.us168.i.us.preheader.new
  %indvars.iv261.i.us = phi i64 [ 0, %..preheader_crit_edge.us168.i.us.preheader.new ], [ %indvars.iv.next262.i.us.3, %..preheader_crit_edge.us168.i.us ] ; 5 uses
  %.072100.us162.i.us = phi <4 x float> [ zeroinitializer, %..preheader_crit_edge.us168.i.us.preheader.new ], [ %i.gc, %..preheader_crit_edge.us168.i.us ]
  %niter = phi i64 [ 0, %..preheader_crit_edge.us168.i.us.preheader.new ], [ %niter.next.3, %..preheader_crit_edge.us168.i.us ]
  %.reass294.i.us = mul i64 %factor.op.mul293.i, %indvars.iv261.i.us
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass294.i.us
  %i.fk = load <4 x i32>, ptr %i.fj, align 1, !tbaa !90
  %i.fl = and <4 x i32> %i.fk, splat (i32 2147483647)
  %i.fm = bitcast <4 x i32> %i.fl to <4 x float>
  %i.fn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.072100.us162.i.us, <4 x float> nofpclass(nan inf) %i.fm)
  %indvars.iv.next262.i.us = or disjoint i64 %indvars.iv261.i.us, 1
  %.reass294.i.us.1 = mul i64 %factor.op.mul293.i, %indvars.iv.next262.i.us
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass294.i.us.1
  %i.fp = load <4 x i32>, ptr %i.fo, align 1, !tbaa !90
  %i.fq = and <4 x i32> %i.fp, splat (i32 2147483647)
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>
  %i.fs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fr)
  %indvars.iv.next262.i.us.1 = or disjoint i64 %indvars.iv261.i.us, 2
  %.reass294.i.us.2 = mul i64 %factor.op.mul293.i, %indvars.iv.next262.i.us.1
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass294.i.us.2
  %i.fu = load <4 x i32>, ptr %i.ft, align 1, !tbaa !90
  %i.fv = and <4 x i32> %i.fu, splat (i32 2147483647)
  %i.fw = bitcast <4 x i32> %i.fv to <4 x float>
  %i.fx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> nofpclass(nan inf) %i.fw)
  %indvars.iv.next262.i.us.2 = or disjoint i64 %indvars.iv261.i.us, 3
  %.reass294.i.us.3 = mul i64 %factor.op.mul293.i, %indvars.iv.next262.i.us.2
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass294.i.us.3
  %i.fz = load <4 x i32>, ptr %i.fy, align 1, !tbaa !90
  %i.ga = and <4 x i32> %i.fz, splat (i32 2147483647)
  %i.gb = bitcast <4 x i32> %i.ga to <4 x float>
  %i.gc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) %i.gb) ; 3 uses
  %indvars.iv.next262.i.us.3 = add nuw nsw i64 %indvars.iv261.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa, label %..preheader_crit_edge.us168.i.us, !llvm.loop !949

iter.check:                                       ; preds = %..preheader_crit_edge.us168.i.preheader, %._crit_edge.us181.i.loopexit
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %._crit_edge.us181.i.loopexit ], [ 0, %..preheader_crit_edge.us168.i.preheader ] ; 2 uses
  %.066103.us161.i = phi float [ %.sroa.speculated51.us180.i.lcssa, %._crit_edge.us181.i.loopexit ], [ 0.000000e+00, %..preheader_crit_edge.us168.i.preheader ] ; 3 uses
  %.072100.us162.i = phi <4 x float> [ %i.hg, %._crit_edge.us181.i.loopexit ], [ zeroinitializer, %..preheader_crit_edge.us168.i.preheader ]
  %.reass294.i = mul i64 %factor.op.mul293.i, %indvars.iv261.i
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass294.i ; 2 uses
  %i.ge = load <4 x i32>, ptr %i.gd, align 1, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph98.us176.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph82

vector.ph82:                                      ; preds = %vector.main.loop.iter.check
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.ff
  %broadcast.splatinsert84 = insertelement <16 x float> poison, float %.066103.us161.i, i64 0
  %broadcast.splat85 = shufflevector <16 x float> %broadcast.splatinsert84, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.ph82, %vector.body86
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next96, %vector.body86 ] ; 2 uses
  %vec.phi88 = phi <16 x float> [ %broadcast.splat85, %vector.ph82 ], [ %i.gp, %vector.body86 ]
  %vec.phi89 = phi <16 x float> [ %broadcast.splat85, %vector.ph82 ], [ %i.gq, %vector.body86 ]
  %vec.phi90 = phi <16 x float> [ %broadcast.splat85, %vector.ph82 ], [ %i.gr, %vector.body86 ]
  %vec.phi91 = phi <16 x float> [ %broadcast.splat85, %vector.ph82 ], [ %i.gs, %vector.body86 ]
  %i.gh = shl i64 %index87, 2
  %next.gep92 = getelementptr i8, ptr %i.gf, i64 %i.gh ; 4 uses
  %i.gi = getelementptr i8, ptr %next.gep92, i64 64
  %i.gj = getelementptr i8, ptr %next.gep92, i64 128
  %i.gk = getelementptr i8, ptr %next.gep92, i64 192
  %wide.load = load <16 x float>, ptr %next.gep92, align 4, !tbaa !69
  %wide.load93 = load <16 x float>, ptr %i.gi, align 4, !tbaa !69
  %wide.load94 = load <16 x float>, ptr %i.gj, align 4, !tbaa !69
  %wide.load95 = load <16 x float>, ptr %i.gk, align 4, !tbaa !69
  %i.gl = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load)
  %i.gm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load93)
  %i.gn = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load94)
  %i.go = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load95)
  %i.gp = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi88, <16 x float> %i.gl) ; 2 uses
  %i.gq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi89, <16 x float> %i.gm) ; 2 uses
  %i.gr = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi90, <16 x float> %i.gn) ; 2 uses
  %i.gs = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi91, <16 x float> %i.go) ; 2 uses
  %index.next96 = add nuw i64 %index87, 64        ; 2 uses
  %i.gt = icmp eq i64 %index.next96, %n.vec83
  br i1 %i.gt, label %middle.block97, label %vector.body86, !llvm.loop !956

middle.block97:                                   ; preds = %vector.body86
  %rdx.minmax.select = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.gp, <16 x float> %i.gq)
  %rdx.minmax.select99 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.gr)
  %rdx.minmax.select101 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select99, <16 x float> %i.gs)
  %i.gu = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select101) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us181.i.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block97
  br i1 %min.epilog.iters.check, label %.lr.ph98.us176.i.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec83, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.gu, %vec.epilog.iter.check ], [ %.066103.us161.i, %vector.main.loop.iter.check ]
  %broadcast.splatinsert104 = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat105 = shufflevector <8 x float> %broadcast.splatinsert104, <8 x float> poison, <8 x i32> zeroinitializer
  %2 = getelementptr i8, ptr %i.gf, i64 %i.fi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi107 = phi <8 x float> [ %broadcast.splat105, %vec.epilog.ph ], [ %i.gx, %vec.epilog.vector.body ]
  %i.gv = shl i64 %index106, 2
  %next.gep108 = getelementptr i8, ptr %i.gf, i64 %i.gv
  %wide.load109 = load <8 x float>, ptr %next.gep108, align 4, !tbaa !69
  %i.gw = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load109)
  %i.gx = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi107, <8 x float> %i.gw) ; 2 uses
  %index.next110 = add nuw i64 %index106, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !957

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gz = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.gx) ; 2 uses
  br i1 %cmp.n111, label %._crit_edge.us181.i.loopexit, label %.lr.ph98.us176.i.preheader

.lr.ph98.us176.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.397.us177.i.ph = phi i32 [ 4, %iter.check ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ]
  %.33796.us178.i.ph = phi ptr [ %i.gf, %iter.check ], [ %i.gg, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  %.16795.us179.i.ph = phi float [ %.066103.us161.i, %iter.check ], [ %i.gu, %vec.epilog.iter.check ], [ %i.gz, %vec.epilog.middle.block ]
  br label %.lr.ph98.us176.i

.lr.ph98.us176.i:                                 ; preds = %.lr.ph98.us176.i.preheader, %.lr.ph98.us176.i
  %.397.us177.i = phi i32 [ %i.hd, %.lr.ph98.us176.i ], [ %.397.us177.i.ph, %.lr.ph98.us176.i.preheader ]
  %.33796.us178.i = phi ptr [ %i.hc, %.lr.ph98.us176.i ], [ %.33796.us178.i.ph, %.lr.ph98.us176.i.preheader ] ; 2 uses
  %.16795.us179.i = phi float [ %.sroa.speculated51.us180.i, %.lr.ph98.us176.i ], [ %.16795.us179.i.ph, %.lr.ph98.us176.i.preheader ]
  %i.ha = load float, ptr %.33796.us178.i, align 4, !tbaa !69
  %i.hb = tail call fast float @llvm.fabs.f32(float %i.ha)
  %.sroa.speculated51.us180.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.16795.us179.i, float %i.hb) ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.33796.us178.i, i64 4
  %i.hd = add nuw nsw i32 %.397.us177.i, 1        ; 2 uses
  %exitcond260.not.i = icmp eq i32 %i.hd, %i.o
  br i1 %exitcond260.not.i, label %._crit_edge.us181.i.loopexit, label %.lr.ph98.us176.i, !llvm.loop !958

._crit_edge.us181.i.loopexit:                     ; preds = %.lr.ph98.us176.i, %vec.epilog.middle.block, %middle.block97
  %.sroa.speculated51.us180.i.lcssa = phi float [ %i.gz, %vec.epilog.middle.block ], [ %i.gu, %middle.block97 ], [ %.sroa.speculated51.us180.i, %.lr.ph98.us176.i ] ; 2 uses
  %i.he = and <4 x i32> %i.ge, splat (i32 2147483647)
  %i.hf = bitcast <4 x i32> %i.he to <4 x float>
  %i.hg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.072100.us162.i, <4 x float> nofpclass(nan inf) %i.hf) ; 2 uses
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next262.i, %wide.trip.count264.i
  br i1 %exitcond265.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %iter.check, !llvm.loop !949

.lr.ph106.split.split.split.i:                    ; preds = %.lr.ph106.split.split.i
  %i.hh = icmp sgt i32 %i.o, 0
  br i1 %i.hh, label %.lr.ph106.split.split.split.split.us.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph106.split.split.split.split.us.i:           ; preds = %.lr.ph106.split.split.split.i
  %wide.trip.count258.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.c, label %.lr.ph106.split.split.split.split.us.split.us.i, label %.lr.ph106.split.split.split.split.us.split.i

.lr.ph106.split.split.split.split.us.split.us.i:  ; preds = %.lr.ph106.split.split.split.split.us.i
  %factor.op.mul225.i = mul i64 %i.j, %i.n
  %i.hi = zext nneg i32 %i.o to i64               ; 2 uses
  %n.rnd.up65 = add nuw nsw i64 %i.hi, 3
  %n.vec66 = and i64 %n.rnd.up65, 4294967292
  %trip.count.minus.167 = add nsw i64 %i.hi, -1
  %broadcast.splatinsert68 = insertelement <4 x i64> poison, i64 %trip.count.minus.167, i64 0
  %broadcast.splat69 = shufflevector <4 x i64> %broadcast.splatinsert68, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader75.us194.us.i

.preheader75.us194.us.i:                          ; preds = %._crit_edge.us200.us.i, %.lr.ph106.split.split.split.split.us.split.us.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %._crit_edge.us200.us.i ], [ 0, %.lr.ph106.split.split.split.split.us.split.us.i ] ; 2 uses
  %.066103.us193.us.i = phi float [ %i.hq, %._crit_edge.us200.us.i ], [ 0.000000e+00, %.lr.ph106.split.split.split.split.us.split.us.i ]
  %.reass226.i = mul i64 %factor.op.mul225.i, %indvars.iv255.i
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass226.i
  %broadcast.splatinsert70 = insertelement <4 x float> poison, float %.066103.us193.us.i, i64 0
  %broadcast.splat71 = shufflevector <4 x float> %broadcast.splatinsert70, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %.preheader75.us194.us.i
  %index73 = phi i64 [ 0, %.preheader75.us194.us.i ], [ %index.next78, %vector.body72 ] ; 2 uses
  %vec.phi74 = phi <4 x float> [ %broadcast.splat71, %.preheader75.us194.us.i ], [ %i.hn, %vector.body72 ] ; 2 uses
  %vec.ind75 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader75.us194.us.i ], [ %vec.ind.next79, %vector.body72 ] ; 2 uses
  %i.hk = icmp ule <4 x i64> %vec.ind75, %broadcast.splat69 ; 2 uses
  %i.hl = shl i64 %index73, 2
  %next.gep76 = getelementptr i8, ptr %i.hj, i64 %i.hl
  %wide.masked.load77 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %next.gep76, <4 x i1> %i.hk, <4 x float> poison), !tbaa !69
  %i.hm = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.masked.load77)
  %i.hn = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi74, <4 x float> %i.hm) ; 2 uses
  %index.next78 = add nuw i64 %index73, 4         ; 2 uses
  %vec.ind.next79 = add nuw <4 x i64> %vec.ind75, splat (i64 4)
  %i.ho = icmp eq i64 %index.next78, %n.vec66
  br i1 %i.ho, label %._crit_edge.us200.us.i, label %vector.body72, !llvm.loop !959

._crit_edge.us200.us.i:                           ; preds = %vector.body72
  %i.hp = select nnan ninf nsz <4 x i1> %i.hk, <4 x float> %i.hn, <4 x float> %vec.phi74
  %i.hq = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.hp) ; 2 uses
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 1 ; 2 uses
  %exitcond259.not.i = icmp eq i64 %indvars.iv.next256.i, %wide.trip.count258.i
  br i1 %exitcond259.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.preheader75.us194.us.i, !llvm.loop !949

.lr.ph106.split.split.split.split.us.split.i:     ; preds = %.lr.ph106.split.split.split.split.us.i
  %factor.op.mul.i = mul nsw i64 %i.n, %i.h
  %i.hr = zext nneg i32 %i.o to i64               ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.hr, 3
  %n.vec = and i64 %n.rnd.up, 4294967292
  %trip.count.minus.1 = add nsw i64 %i.hr, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader75.us194.i

.preheader75.us194.i:                             ; preds = %._crit_edge.us200.i, %.lr.ph106.split.split.split.split.us.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us200.i ], [ 0, %.lr.ph106.split.split.split.split.us.split.i ] ; 2 uses
  %.066103.us193.i = phi float [ %i.hz, %._crit_edge.us200.i ], [ 0.000000e+00, %.lr.ph106.split.split.split.split.us.split.i ]
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv.i
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass.i
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %.066103.us193.i, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader75.us194.i
  %index = phi i64 [ 0, %.preheader75.us194.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat63, %.preheader75.us194.i ], [ %i.hw, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader75.us194.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ht = icmp ule <4 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.hu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.hu
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %next.gep, <4 x i1> %i.ht, <4 x float> poison), !tbaa !69
  %i.hv = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.masked.load)
  %i.hw = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.hv) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %._crit_edge.us200.i, label %vector.body, !llvm.loop !960

._crit_edge.us200.i:                              ; preds = %vector.body
  %i.hy = select nnan ninf nsz <4 x i1> %i.ht, <4 x float> %i.hw, <4 x float> %vec.phi
  %i.hz = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.hy) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond253.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count258.i
  br i1 %exitcond253.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.preheader75.us194.i, !llvm.loop !949

_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa: ; preds = %..preheader_crit_edge.us168.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %..preheader_crit_edge.us168.i.us.epil.preheader

..preheader_crit_edge.us168.i.us.epil.preheader:  ; preds = %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa, %..preheader_crit_edge.us168.i.us.preheader
  %indvars.iv261.i.us.epil.init = phi i64 [ 0, %..preheader_crit_edge.us168.i.us.preheader ], [ %indvars.iv.next262.i.us.3, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa ]
  %.072100.us162.i.us.epil.init = phi <4 x float> [ zeroinitializer, %..preheader_crit_edge.us168.i.us.preheader ], [ %i.gc, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa ]
  %lcmp.mod251 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod251)
  br label %..preheader_crit_edge.us168.i.us.epil

..preheader_crit_edge.us168.i.us.epil:            ; preds = %..preheader_crit_edge.us168.i.us.epil, %..preheader_crit_edge.us168.i.us.epil.preheader
  %indvars.iv261.i.us.epil = phi i64 [ %indvars.iv.next262.i.us.epil, %..preheader_crit_edge.us168.i.us.epil ], [ %indvars.iv261.i.us.epil.init, %..preheader_crit_edge.us168.i.us.epil.preheader ] ; 2 uses
  %.072100.us162.i.us.epil = phi <4 x float> [ %i.ie, %..preheader_crit_edge.us168.i.us.epil ], [ %.072100.us162.i.us.epil.init, %..preheader_crit_edge.us168.i.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %..preheader_crit_edge.us168.i.us.epil ], [ 0, %..preheader_crit_edge.us168.i.us.epil.preheader ]
  %.reass294.i.us.epil = mul i64 %factor.op.mul293.i, %indvars.iv261.i.us.epil
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass294.i.us.epil
  %i.ib = load <4 x i32>, ptr %i.ia, align 1, !tbaa !90
  %i.ic = and <4 x i32> %i.ib, splat (i32 2147483647)
  %i.id = bitcast <4 x i32> %i.ic to <4 x float>
  %i.ie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.072100.us162.i.us.epil, <4 x float> nofpclass(nan inf) %i.id) ; 2 uses
  %indvars.iv.next262.i.us.epil = add nuw nsw i64 %indvars.iv261.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %..preheader_crit_edge.us168.i.us.epil, !llvm.loop !961

_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit: ; preds = %._crit_edge.us200.i, %._crit_edge.us200.us.i, %._crit_edge.us181.i.loopexit, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa, %..preheader_crit_edge.us168.i.us.epil, %._crit_edge.us149.i, %._crit_edge.us.i, %bb.a, %.lr.ph106.split.split.split.i
  %.072.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ie, %..preheader_crit_edge.us168.i.us.epil ], [ %i.hg, %._crit_edge.us181.i.loopexit ], [ %.173.lcssa.us141.i, %._crit_edge.us149.i ], [ %.173.lcssa.us.i, %._crit_edge.us.i ], [ zeroinitializer, %.lr.ph106.split.split.split.i ], [ zeroinitializer, %._crit_edge.us200.us.i ], [ %i.gc, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa ], [ zeroinitializer, %._crit_edge.us200.i ] ; 2 uses
  %.070.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa ], [ zeroinitializer, %._crit_edge.us181.i.loopexit ], [ %i.dg, %._crit_edge.us149.i ], [ %.171.lcssa.us.i, %._crit_edge.us.i ], [ zeroinitializer, %.lr.ph106.split.split.split.i ], [ zeroinitializer, %._crit_edge.us200.us.i ], [ zeroinitializer, %..preheader_crit_edge.us168.i.us.epil ], [ zeroinitializer, %._crit_edge.us200.i ] ; 2 uses
  %.068.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa ], [ zeroinitializer, %._crit_edge.us181.i.loopexit ], [ zeroinitializer, %._crit_edge.us149.i ], [ %.lcssa213, %._crit_edge.us.i ], [ zeroinitializer, %.lr.ph106.split.split.split.i ], [ zeroinitializer, %._crit_edge.us200.us.i ], [ zeroinitializer, %..preheader_crit_edge.us168.i.us.epil ], [ zeroinitializer, %._crit_edge.us200.i ] ; 2 uses
  %.066.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit.loopexit232.unr-lcssa ], [ %.sroa.speculated51.us180.i.lcssa, %._crit_edge.us181.i.loopexit ], [ %.167.lcssa.us151.i, %._crit_edge.us149.i ], [ %.167.lcssa.us.i, %._crit_edge.us.i ], [ 0.000000e+00, %.lr.ph106.split.split.split.i ], [ %i.hq, %._crit_edge.us200.us.i ], [ 0.000000e+00, %..preheader_crit_edge.us168.i.us.epil ], [ %i.hz, %._crit_edge.us200.i ]
  %i.if = shufflevector <16 x float> %.068.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ig = shufflevector <16 x float> %.068.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ih = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.if, <8 x float> nofpclass(nan inf) %i.ig) ; 2 uses
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ij = shufflevector <8 x float> %i.ih, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ii, <4 x float> nofpclass(nan inf) %i.ij) ; 2 uses
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.im = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ik, <4 x float> nofpclass(nan inf) %i.il) ; 2 uses
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.io = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.in)
  %i.ip = extractelement <4 x float> %i.io, i64 0
  %.sroa.speculated47.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.066.lcssa.i, float %i.ip)
  %i.iq = shufflevector <8 x float> %.070.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ir = shufflevector <8 x float> %.070.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.is = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iq, <4 x float> nofpclass(nan inf) %i.ir) ; 2 uses
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.iu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.is, <4 x float> nofpclass(nan inf) %i.it) ; 2 uses
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.iw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) %i.iv)
  %i.ix = extractelement <4 x float> %i.iw, i64 0
  %.sroa.speculated43.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated47.i, float %i.ix)
  %i.iy = shufflevector <4 x float> %.072.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.iz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.072.lcssa.i, <4 x float> nofpclass(nan inf) %i.iy) ; 2 uses
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %i.ja)
  %i.jc = extractelement <4 x float> %i.jb, i64 0
  %.sroa.speculated.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated43.i, float %i.jc) ; 2 uses
  %i.jd = fcmp fast oeq float %.sroa.speculated.i, 0.000000e+00
  %i.je = fdiv fast float 1.270000e+02, %.sroa.speculated.i
  %i.jf = select fast i1 %i.jd, float 1.000000e+00, float %i.je
  store float %i.jf, ptr %1, align 4, !tbaa !69
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j
  %i.l = sdiv i32 %3, %i.b                        ; 2 uses
  %i.m = mul i32 %i.i, %i.b                       ; 10 uses
  %.scalar.i = fdiv fast float f0x3C010204, %1    ; 3 uses
  %i.n = insertelement <4 x float> poison, float %.scalar.i, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = insertelement <8 x float> poison, float %.scalar.i, i64 0
  %i.q = shufflevector <8 x float> %i.p, <8 x float> poison, <8 x i32> zeroinitializer
  %i.r = insertelement <16 x float> poison, float %.scalar.i, i64 0
  %i.s = shufflevector <16 x float> %i.r, <16 x float> poison, <16 x i32> zeroinitializer
  %i.t = icmp sgt i32 %i.l, 0
  br i1 %i.t, label %.lr.ph89.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph89.i:                                       ; preds = %bb.a
  %i.u = sext i32 %2 to i64                       ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.u
  %i.x = icmp sgt i32 %i.m, 15
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %i.ab = and i32 %i.m, -16                       ; 2 uses
  %i.ac = sext i32 %i.b to i64
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  %i.ad = add i32 %i.m, -16                       ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %xtraiter = and i32 %i.af, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.ad, 48
  %unroll_iter = and i32 %i.af, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  %i.ah = fdiv fast float 1.000000e+00, %1
  br label %bb.b

bb.b:                                             ; preds = %.thread54.i, %.lr.ph89.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next.i, %.thread54.i ] ; 2 uses
  %.087.i = phi ptr [ %i.w, %.lr.ph89.i ], [ %.4.i, %.thread54.i ] ; 10 uses
  %.08286.i = phi ptr [ %i.v, %.lr.ph89.i ], [ %.486.i, %.thread54.i ] ; 10 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !25
  %i.aj = mul nsw i64 %indvars.iv.i, %i.ac
  %i.ak = add nsw i64 %i.aj, %i.u
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  br i1 %i.x, label %.lr.ph.i.preheader, label %.preheader60.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  br i1 %i.ag, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader60.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader60.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader60.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09162.i.epil.init = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.bn, %.preheader60.i.loopexit.unr-lcssa ]
  %.04061.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.bm, %.preheader60.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.09162.i.epil = phi ptr [ %i.ar, %.lr.ph.i.epil ], [ %.09162.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.04061.i.epil = phi <16 x float> [ %i.aq, %.lr.ph.i.epil ], [ %.04061.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = load <16 x i32>, ptr %.09162.i.epil, align 1, !tbaa !90
  %i.ao = and <16 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.epil, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09162.i.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60.i, label %.lr.ph.i.epil, !llvm.loop !1089

.preheader60.i:                                   ; preds = %.preheader60.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.040.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.b ], [ %i.bm, %.preheader60.i.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ] ; 8 uses
  %.091.lcssa.i = phi ptr [ %i.am, %bb.b ], [ %i.bn, %.preheader60.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ] ; 2 uses
  %.087.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.ab, %.lr.ph.i.epil ], [ %i.ab, %.preheader60.i.loopexit.unr-lcssa ] ; 3 uses
  %i.as = or disjoint i32 %.087.lcssa.i, 7
  %i.at = icmp slt i32 %i.as, %i.m
  br i1 %i.at, label %.lr.ph69.i, label %.preheader59.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09162.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 5 uses
  %.04061.i = phi <16 x float> [ %i.bm, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.au = load <16 x i32>, ptr %.09162.i, align 1, !tbaa !90
  %i.av = and <16 x i32> %i.au, splat (i32 2147483647)
  %i.aw = bitcast <16 x i32> %i.av to <16 x float>
  %i.ax = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i, <16 x float> nofpclass(nan inf) %i.aw, i32 4)
  %i.ay = getelementptr inbounds nuw i8, ptr %.09162.i, i64 64
  %i.az = load <16 x i32>, ptr %i.ay, align 1, !tbaa !90
  %i.ba = and <16 x i32> %i.az, splat (i32 2147483647)
  %i.bb = bitcast <16 x i32> %i.ba to <16 x float>
  %i.bc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.bb, i32 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %.09162.i, i64 128
  %i.be = load <16 x i32>, ptr %i.bd, align 1, !tbaa !90
  %i.bf = and <16 x i32> %i.be, splat (i32 2147483647)
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float>
  %i.bh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.bg, i32 4)
  %i.bi = getelementptr inbounds nuw i8, ptr %.09162.i, i64 192
  %i.bj = load <16 x i32>, ptr %i.bi, align 1, !tbaa !90
  %i.bk = and <16 x i32> %i.bj, splat (i32 2147483647)
  %i.bl = bitcast <16 x i32> %i.bk to <16 x float>
  %i.bm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.bl, i32 4) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09162.i, i64 256 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader60.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

.preheader59.i:                                   ; preds = %.lr.ph69.i, %.preheader60.i
  %.041.lcssa.i = phi <8 x float> [ zeroinitializer, %.preheader60.i ], [ %i.bt, %.lr.ph69.i ] ; 4 uses
  %.192.lcssa.i = phi ptr [ %.091.lcssa.i, %.preheader60.i ], [ %i.bu, %.lr.ph69.i ] ; 2 uses
  %.188.lcssa.i = phi i32 [ %.087.lcssa.i, %.preheader60.i ], [ %i.bv, %.lr.ph69.i ] ; 3 uses
  %i.bo = or disjoint i32 %.188.lcssa.i, 3
  %i.bp = icmp slt i32 %i.bo, %i.m
  br i1 %i.bp, label %.lr.ph76.i, label %.preheader.i

.lr.ph69.i:                                       ; preds = %.preheader60.i, %.lr.ph69.i
  %.18868.i = phi i32 [ %i.bv, %.lr.ph69.i ], [ %.087.lcssa.i, %.preheader60.i ]
  %.19267.i = phi ptr [ %i.bu, %.lr.ph69.i ], [ %.091.lcssa.i, %.preheader60.i ] ; 2 uses
  %.04166.i = phi <8 x float> [ %i.bt, %.lr.ph69.i ], [ zeroinitializer, %.preheader60.i ]
  %i.bq = load <8 x i32>, ptr %.19267.i, align 1, !tbaa !90
  %i.br = and <8 x i32> %i.bq, splat (i32 2147483647)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04166.i, <8 x float> nofpclass(nan inf) %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.19267.i, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.18868.i, 8            ; 3 uses
  %i.bw = or disjoint i32 %i.bv, 7
  %i.bx = icmp slt i32 %i.bw, %i.m
  br i1 %i.bx, label %.lr.ph69.i, label %.preheader59.i, !llvm.loop !4

.preheader.i:                                     ; preds = %.lr.ph76.i, %.preheader59.i
  %.044.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader59.i ], [ %i.di, %.lr.ph76.i ] ; 3 uses
  %.293.lcssa.i = phi ptr [ %.192.lcssa.i, %.preheader59.i ], [ %i.dj, %.lr.ph76.i ] ; 5 uses
  %.289.lcssa.i = phi i32 [ %.188.lcssa.i, %.preheader59.i ], [ %i.dk, %.lr.ph76.i ] ; 5 uses
  %i.by = icmp slt i32 %.289.lcssa.i, %i.m
  br i1 %i.by, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.bz = xor i32 %.289.lcssa.i, -1
  %i.ca = add i32 %i.m, %i.bz                     ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ca, 7
  br i1 %min.iters.check, label %.lr.ph83.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i32 %i.ca, 63
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %i.cc, 56
  %n.vec = and i64 %i.cc, 8589934528              ; 5 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = add i32 %.289.lcssa.i, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %.293.lcssa.i, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi33 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi34 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi35 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.293.lcssa.i, i64 %i.ci ; 4 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 64
  %i.ck = getelementptr i8, ptr %next.gep, i64 128
  %i.cl = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !69
  %wide.load36 = load <16 x float>, ptr %i.cj, align 4, !tbaa !69
  %wide.load37 = load <16 x float>, ptr %i.ck, align 4, !tbaa !69
  %wide.load38 = load <16 x float>, ptr %i.cl, align 4, !tbaa !69
  %i.cm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load)
  %i.cn = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load36)
  %i.co = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load37)
  %i.cp = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load38)
  %i.cq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.cm) ; 2 uses
  %i.cr = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi33, <16 x float> %i.cn) ; 2 uses
  %i.cs = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi34, <16 x float> %i.co) ; 2 uses
  %i.ct = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi35, <16 x float> %i.cp) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1090

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.cq, <16 x float> %i.cr)
  %rdx.minmax.select40 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.cs)
  %rdx.minmax.select42 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select40, <16 x float> %i.ct)
  %i.cv = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select42) ; 3 uses
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.i.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cv, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec44 = and i64 %i.cc, 8589934584            ; 4 uses
  %i.cw = trunc i64 %n.vec44 to i32
  %i.cx = add i32 %.289.lcssa.i, %i.cw
  %i.cy = shl nuw nsw i64 %n.vec44, 2
  %i.cz = getelementptr i8, ptr %.293.lcssa.i, i64 %i.cy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi46 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.dc, %vec.epilog.vector.body ]
  %i.da = shl i64 %index45, 2
  %next.gep47 = getelementptr i8, ptr %.293.lcssa.i, i64 %i.da
  %wide.load48 = load <8 x float>, ptr %next.gep47, align 4, !tbaa !69
  %i.db = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load48)
  %i.dc = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi46, <8 x float> %i.db) ; 2 uses
  %index.next49 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1091

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.de = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.dc) ; 2 uses
  %cmp.n50 = icmp eq i64 %i.cc, %n.vec44
  br i1 %cmp.n50, label %._crit_edge.i, label %.lr.ph83.i.preheader

.lr.ph83.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.39082.i.ph = phi i32 [ %.289.lcssa.i, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.39481.i.ph = phi ptr [ %.293.lcssa.i, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  %.04680.i.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ]
  br label %.lr.ph83.i

.lr.ph76.i:                                       ; preds = %.preheader59.i, %.lr.ph76.i
  %.28975.i = phi i32 [ %i.dk, %.lr.ph76.i ], [ %.188.lcssa.i, %.preheader59.i ]
  %.29374.i = phi ptr [ %i.dj, %.lr.ph76.i ], [ %.192.lcssa.i, %.preheader59.i ] ; 2 uses
  %.04473.i = phi <4 x float> [ %i.di, %.lr.ph76.i ], [ zeroinitializer, %.preheader59.i ]
  %i.df = load <4 x i32>, ptr %.29374.i, align 1, !tbaa !90
  %i.dg = and <4 x i32> %i.df, splat (i32 2147483647)
  %i.dh = bitcast <4 x i32> %i.dg to <4 x float>
  %i.di = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04473.i, <4 x float> nofpclass(nan inf) %i.dh) ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.29374.i, i64 16 ; 2 uses
  %i.dk = add nuw nsw i32 %.28975.i, 4            ; 3 uses
  %i.dl = or disjoint i32 %i.dk, 3
  %i.dm = icmp slt i32 %i.dl, %i.m
  br i1 %i.dm, label %.lr.ph76.i, label %.preheader.i, !llvm.loop !5

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.preheader, %.lr.ph83.i
  %.39082.i = phi i32 [ %i.dq, %.lr.ph83.i ], [ %.39082.i.ph, %.lr.ph83.i.preheader ]
  %.39481.i = phi ptr [ %i.dp, %.lr.ph83.i ], [ %.39481.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %.04680.i = phi float [ %.sroa.speculated12.i, %.lr.ph83.i ], [ %.04680.i.ph, %.lr.ph83.i.preheader ]
  %i.dn = load float, ptr %.39481.i, align 4, !tbaa !69
  %i.do = tail call fast float @llvm.fabs.f32(float %i.dn)
  %.sroa.speculated12.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.04680.i, float %i.do) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.39481.i, i64 4
  %i.dq = add nuw nsw i32 %.39082.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dq, %i.m
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph83.i, !llvm.loop !1092

._crit_edge.i:                                    ; preds = %.lr.ph83.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.046.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %i.de, %vec.epilog.middle.block ], [ %i.cv, %middle.block ], [ %.sroa.speculated12.i, %.lr.ph83.i ]
  br i1 %i.z, label %.split.i, label %.thread54.i

.split.i:                                         ; preds = %._crit_edge.i
  switch i32 %i.aa, label %.thread54.i [
    i32 4, label %.thread.i
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 0, label %bb.e
  ]

.thread.i:                                        ; preds = %.split.i
  %i.dr = fdiv fast <16 x float> splat (float 1.270000e+02), %.040.lcssa.i
  %i.ds = fmul fast <16 x float> %.040.lcssa.i, %i.s
  store <16 x float> %i.dr, ptr %.087.i, align 64, !tbaa !90
  store <16 x float> %i.ds, ptr %.08286.i, align 64, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %.087.i, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %.08286.i, i64 64
  br label %.thread54.i

bb.c:                                             ; preds = %.split.i
  %i.dv = shufflevector <16 x float> %.040.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <16 x float> %.040.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.041.lcssa.i, <8 x float> nofpclass(nan inf) %i.dv)
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.dz = fdiv fast <8 x float> splat (float 1.270000e+02), %i.dy
  %i.ea = fmul fast <8 x float> %i.dy, %i.q
  store <8 x float> %i.dz, ptr %.087.i, align 32, !tbaa !90
  store <8 x float> %i.ea, ptr %.08286.i, align 32, !tbaa !90
  %i.eb = getelementptr inbounds nuw i8, ptr %.087.i, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.08286.i, i64 32
  br label %.thread54.i

bb.d:                                             ; preds = %.split.i
  %i.ed = shufflevector <16 x float> %.040.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = shufflevector <16 x float> %.040.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.041.lcssa.i, <8 x float> nofpclass(nan inf) %i.ed)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.ee) ; 2 uses
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = shufflevector <8 x float> %i.eg, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ej = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.044.lcssa.i, <4 x float> nofpclass(nan inf) %i.eh)
  %i.ek = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.ei) ; 2 uses
  %i.el = fdiv fast <4 x float> splat (float 1.270000e+02), %i.ek
  %i.em = fmul fast <4 x float> %i.ek, %i.o
  store <4 x float> %i.el, ptr %.087.i, align 16, !tbaa !90
  store <4 x float> %i.em, ptr %.08286.i, align 16, !tbaa !90
  %i.en = getelementptr inbounds nuw i8, ptr %.087.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.08286.i, i64 16
  br label %.thread54.i

bb.e:                                             ; preds = %.split.i
  %i.ep = shufflevector <16 x float> %.040.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eq = shufflevector <16 x float> %.040.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.es = shufflevector <8 x float> %i.er, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.et = shufflevector <8 x float> %i.er, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.es, <4 x float> nofpclass(nan inf) %i.et) ; 2 uses
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ew = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> nofpclass(nan inf) %i.ev) ; 2 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ey = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> nofpclass(nan inf) %i.ex)
  %i.ez = extractelement <4 x float> %i.ey, i64 0
  %.sroa.speculated8.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.046.lcssa.i, float %i.ez)
  %i.fa = shufflevector <8 x float> %.041.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fb = shufflevector <8 x float> %.041.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) %i.fb) ; 2 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.fe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> nofpclass(nan inf) %i.fd) ; 2 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.ff)
  %i.fh = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated4.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated8.i, float %i.fh)
  %i.fi = shufflevector <4 x float> %.044.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.fj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.044.lcssa.i, <4 x float> nofpclass(nan inf) %i.fi) ; 2 uses
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> nofpclass(nan inf) %i.fk)
  %i.fm = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i, float %i.fm) ; 2 uses
  %i.fn = fdiv fast float 1.270000e+02, %.sroa.speculated.i
  store float %i.fn, ptr %.087.i, align 4, !tbaa !69
  %i.fo = fmul fast float %.sroa.speculated.i, f0x3C010204
  %i.fp = fmul fast float %i.fo, %i.ah
  store float %i.fp, ptr %.08286.i, align 4, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %.087.i, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.08286.i, i64 4
  br label %.thread54.i

.thread54.i:                                      ; preds = %bb.e, %bb.d, %bb.c, %.thread.i, %.split.i, %._crit_edge.i
  %.486.i = phi ptr [ %i.fr, %bb.e ], [ %.08286.i, %.split.i ], [ %i.eo, %bb.d ], [ %i.du, %.thread.i ], [ %i.ec, %bb.c ], [ %.08286.i, %._crit_edge.i ]
  %.4.i = phi ptr [ %i.fq, %bb.e ], [ %.087.i, %.split.i ], [ %i.en, %bb.d ], [ %i.dt, %.thread.i ], [ %i.eb, %bb.c ], [ %.087.i, %._crit_edge.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond100.not.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %bb.b, !llvm.loop !6

_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit: ; preds = %.thread54.i, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
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
  %i.x = load i32, ptr %3, align 4, !tbaa !51     ; 2 uses
  %i.y = sdiv i32 %.063, %i.x                     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.13:bb.a
  %.val124.us = load ptr, ptr %11, align 8, !tbaa !25
  %.val123.us = load ptr, ptr %9, align 8, !tbaa !25
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val124.us, i64 %i.dj
  %i.ft = getelementptr inbounds [4 x i8], ptr %.val123.us, i64 %i.dj
  %i.fu = icmp sgt i32 %i.fk, 15
  %i.fv = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fc)
  %i.fw = icmp eq i32 %i.fv, 1
  %i.fx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fc, i1 true)
  %i.fy = and i32 %i.fk, -16                      ; 2 uses
  %i.fz = sext i32 %i.fc to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fj to i64
  %i.ga = add i32 %i.fk, -16                      ; 2 uses
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = add nuw nsw i32 %i.gb, 1                ; 2 uses
  %xtraiter = and i32 %i.gc, 3                    ; 3 uses
  %i.gd = icmp ult i32 %i.ga, 48
  %unroll_iter = and i32 %i.gc, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod274 = icmp ne i32 %xtraiter, 0
  %i.ge = fdiv fast float 1.000000e+00, %i.fb
  br label %bb.m

bb.m:                                             ; preds = %.thread54.i.i.us, %.lr.ph89.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph89.i.i.us ], [ %indvars.iv.next.i.i.us, %.thread54.i.i.us ] ; 2 uses
  %.087.i.i.us = phi ptr [ %i.ft, %.lr.ph89.i.i.us ], [ %.4.i.i.us, %.thread54.i.i.us ] ; 10 uses
  %.08286.i.i.us = phi ptr [ %i.fs, %.lr.ph89.i.i.us ], [ %.486.i.i.us, %.thread54.i.i.us ] ; 10 uses
  %i.gf = load ptr, ptr %4, align 8, !tbaa !25
  %i.gg = mul nsw i64 %indvars.iv.i.i.us, %i.fz
  %i.gh = add nsw i64 %i.gg, %i.dj
  %i.gi = mul i64 %i.gh, %i.fi
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gi ; 3 uses
  br i1 %i.fu, label %.lr.ph.i.i.us.preheader, label %.preheader60.i.i.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.m
  br i1 %i.gd, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us
  %.09162.i.i.us = phi ptr [ %i.hd, %.lr.ph.i.i.us ], [ %i.gj, %.lr.ph.i.i.us.preheader ] ; 5 uses
  %.04061.i.i.us = phi <16 x float> [ %i.hc, %.lr.ph.i.i.us ], [ zeroinitializer, %.lr.ph.i.i.us.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.gk = load <16 x i32>, ptr %.09162.i.i.us, align 1, !tbaa !90
  %i.gl = and <16 x i32> %i.gk, splat (i32 2147483647)
  %i.gm = bitcast <16 x i32> %i.gl to <16 x float>
  %i.gn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.i.us, <16 x float> nofpclass(nan inf) %i.gm, i32 4)
  %i.go = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 64
  %i.gp = load <16 x i32>, ptr %i.go, align 1, !tbaa !90
  %i.gq = and <16 x i32> %i.gp, splat (i32 2147483647)
  %i.gr = bitcast <16 x i32> %i.gq to <16 x float>
  %i.gs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gn, <16 x float> nofpclass(nan inf) %i.gr, i32 4)
  %i.gt = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 128
  %i.gu = load <16 x i32>, ptr %i.gt, align 1, !tbaa !90
  %i.gv = and <16 x i32> %i.gu, splat (i32 2147483647)
  %i.gw = bitcast <16 x i32> %i.gv to <16 x float>
  %i.gx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gs, <16 x float> nofpclass(nan inf) %i.gw, i32 4)
  %i.gy = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 192
  %i.gz = load <16 x i32>, ptr %i.gy, align 1, !tbaa !90
  %i.ha = and <16 x i32> %i.gz, splat (i32 2147483647)
  %i.hb = bitcast <16 x i32> %i.ha to <16 x float>
  %i.hc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gx, <16 x float> nofpclass(nan inf) %i.hb, i32 4) ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 256 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader60.i.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !3

.preheader60.i.i.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.us
  br i1 %lcmp.mod.not, label %.preheader60.i.i.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %.preheader60.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.09162.i.i.us.epil.init = phi ptr [ %i.gj, %.lr.ph.i.i.us.preheader ], [ %i.hd, %.preheader60.i.i.us.loopexit.unr-lcssa ]
  %.04061.i.i.us.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.i.i.us.preheader ], [ %i.hc, %.preheader60.i.i.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph.i.i.us.epil

.lr.ph.i.i.us.epil:                               ; preds = %.lr.ph.i.i.us.epil, %.lr.ph.i.i.us.epil.preheader
  %.09162.i.i.us.epil = phi ptr [ %i.hi, %.lr.ph.i.i.us.epil ], [ %.09162.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ] ; 2 uses
  %.04061.i.i.us.epil = phi <16 x float> [ %i.hh, %.lr.ph.i.i.us.epil ], [ %.04061.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.us.epil ], [ 0, %.lr.ph.i.i.us.epil.preheader ]
  %i.he = load <16 x i32>, ptr %.09162.i.i.us.epil, align 1, !tbaa !90
  %i.hf = and <16 x i32> %i.he, splat (i32 2147483647)
  %i.hg = bitcast <16 x i32> %i.hf to <16 x float>
  %i.hh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.i.us.epil, <16 x float> nofpclass(nan inf) %i.hg, i32 4) ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.09162.i.i.us.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60.i.i.us, label %.lr.ph.i.i.us.epil, !llvm.loop !1201

.preheader60.i.i.us:                              ; preds = %.preheader60.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.m
  %.040.lcssa.i.i.us = phi <16 x float> [ zeroinitializer, %bb.m ], [ %i.hc, %.preheader60.i.i.us.loopexit.unr-lcssa ], [ %i.hh, %.lr.ph.i.i.us.epil ] ; 8 uses
  %.091.lcssa.i.i.us = phi ptr [ %i.gj, %bb.m ], [ %i.hd, %.preheader60.i.i.us.loopexit.unr-lcssa ], [ %i.hi, %.lr.ph.i.i.us.epil ] ; 2 uses
  %.087.lcssa.i.i.us = phi i32 [ 0, %bb.m ], [ %i.fy, %.lr.ph.i.i.us.epil ], [ %i.fy, %.preheader60.i.i.us.loopexit.unr-lcssa ] ; 3 uses
  %i.hj = or disjoint i32 %.087.lcssa.i.i.us, 7
  %i.hk = icmp slt i32 %i.hj, %i.fk
  br i1 %i.hk, label %.lr.ph69.i.i.us, label %.preheader59.i.i.us

.lr.ph69.i.i.us:                                  ; preds = %.preheader60.i.i.us, %.lr.ph69.i.i.us
  %.18868.i.i.us = phi i32 [ %i.hq, %.lr.ph69.i.i.us ], [ %.087.lcssa.i.i.us, %.preheader60.i.i.us ]
  %.19267.i.i.us = phi ptr [ %i.hp, %.lr.ph69.i.i.us ], [ %.091.lcssa.i.i.us, %.preheader60.i.i.us ] ; 2 uses
  %.04166.i.i.us = phi <8 x float> [ %i.ho, %.lr.ph69.i.i.us ], [ zeroinitializer, %.preheader60.i.i.us ]
  %i.hl = load <8 x i32>, ptr %.19267.i.i.us, align 1, !tbaa !90
  %i.hm = and <8 x i32> %i.hl, splat (i32 2147483647)
  %i.hn = bitcast <8 x i32> %i.hm to <8 x float>
  %i.ho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04166.i.i.us, <8 x float> nofpclass(nan inf) %i.hn) ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.19267.i.i.us, i64 32 ; 2 uses
  %i.hq = add nuw nsw i32 %.18868.i.i.us, 8       ; 3 uses
  %i.hr = or disjoint i32 %i.hq, 7
  %i.hs = icmp slt i32 %i.hr, %i.fk
  br i1 %i.hs, label %.lr.ph69.i.i.us, label %.preheader59.i.i.us, !llvm.loop !4

.preheader59.i.i.us:                              ; preds = %.lr.ph69.i.i.us, %.preheader60.i.i.us
  %.041.lcssa.i.i.us = phi <8 x float> [ zeroinitializer, %.preheader60.i.i.us ], [ %i.ho, %.lr.ph69.i.i.us ] ; 4 uses
  %.192.lcssa.i.i.us = phi ptr [ %.091.lcssa.i.i.us, %.preheader60.i.i.us ], [ %i.hp, %.lr.ph69.i.i.us ] ; 2 uses
  %.188.lcssa.i.i.us = phi i32 [ %.087.lcssa.i.i.us, %.preheader60.i.i.us ], [ %i.hq, %.lr.ph69.i.i.us ] ; 3 uses
  %i.ht = or disjoint i32 %.188.lcssa.i.i.us, 3
  %i.hu = icmp slt i32 %i.ht, %i.fk
  br i1 %i.hu, label %.lr.ph76.i.i.us, label %.preheader.i.i.us

.lr.ph76.i.i.us:                                  ; preds = %.preheader59.i.i.us, %.lr.ph76.i.i.us
  %.28975.i.i.us = phi i32 [ %i.ia, %.lr.ph76.i.i.us ], [ %.188.lcssa.i.i.us, %.preheader59.i.i.us ]
  %.29374.i.i.us = phi ptr [ %i.hz, %.lr.ph76.i.i.us ], [ %.192.lcssa.i.i.us, %.preheader59.i.i.us ] ; 2 uses
  %.04473.i.i.us = phi <4 x float> [ %i.hy, %.lr.ph76.i.i.us ], [ zeroinitializer, %.preheader59.i.i.us ]
  %i.hv = load <4 x i32>, ptr %.29374.i.i.us, align 1, !tbaa !90
  %i.hw = and <4 x i32> %i.hv, splat (i32 2147483647)
  %i.hx = bitcast <4 x i32> %i.hw to <4 x float>
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04473.i.i.us, <4 x float> nofpclass(nan inf) %i.hx) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.29374.i.i.us, i64 16 ; 2 uses
  %i.ia = add nuw nsw i32 %.28975.i.i.us, 4       ; 3 uses
  %i.ib = or disjoint i32 %i.ia, 3
  %i.ic = icmp slt i32 %i.ib, %i.fk
  br i1 %i.ic, label %.lr.ph76.i.i.us, label %.preheader.i.i.us, !llvm.loop !5

.preheader.i.i.us:                                ; preds = %.lr.ph76.i.i.us, %.preheader59.i.i.us
  %.044.lcssa.i.i.us = phi <4 x float> [ zeroinitializer, %.preheader59.i.i.us ], [ %i.hy, %.lr.ph76.i.i.us ] ; 3 uses
  %.293.lcssa.i.i.us = phi ptr [ %.192.lcssa.i.i.us, %.preheader59.i.i.us ], [ %i.hz, %.lr.ph76.i.i.us ] ; 5 uses
  %.289.lcssa.i.i.us = phi i32 [ %.188.lcssa.i.i.us, %.preheader59.i.i.us ], [ %i.ia, %.lr.ph76.i.i.us ] ; 5 uses
  %i.id = icmp slt i32 %.289.lcssa.i.i.us, %i.fk
  br i1 %i.id, label %iter.check, label %._crit_edge.i.i.us

iter.check:                                       ; preds = %.preheader.i.i.us
  %i.ie = xor i32 %.289.lcssa.i.i.us, -1
  %i.if = add i32 %i.fk, %i.ie                    ; 3 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.if, 7
  br i1 %min.iters.check, label %.lr.ph83.i.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check237 = icmp ult i32 %i.if, 63
  br i1 %min.iters.check237, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ii = and i64 %i.ih, 56
  %n.vec = and i64 %i.ih, 8589934528              ; 5 uses
  %i.ij = trunc i64 %n.vec to i32
  %i.ik = add i32 %.289.lcssa.i.i.us, %i.ij
  %i.il = shl nuw nsw i64 %n.vec, 2
  %i.im = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.il
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.iv, %vector.body ]
  %vec.phi238 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.iw, %vector.body ]
  %vec.phi239 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.ix, %vector.body ]
  %vec.phi240 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.iy, %vector.body ]
  %i.in = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.in ; 4 uses
  %i.io = getelementptr i8, ptr %next.gep, i64 64
  %i.ip = getelementptr i8, ptr %next.gep, i64 128
  %i.iq = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !69
  %wide.load241 = load <16 x float>, ptr %i.io, align 4, !tbaa !69
  %wide.load242 = load <16 x float>, ptr %i.ip, align 4, !tbaa !69
  %wide.load243 = load <16 x float>, ptr %i.iq, align 4, !tbaa !69
  %i.ir = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load)
  %i.is = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load241)
  %i.it = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load242)
  %i.iu = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load243)
  %i.iv = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.ir) ; 2 uses
  %i.iw = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi238, <16 x float> %i.is) ; 2 uses
  %i.ix = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi239, <16 x float> %i.it) ; 2 uses
  %i.iy = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi240, <16 x float> %i.iu) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !1202

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.iv, <16 x float> %i.iw)
  %rdx.minmax.select245 = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.ix)
  %rdx.minmax.select247 = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select245, <16 x float> %i.iy)
  %i.ja = call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select247) ; 3 uses
  %cmp.n = icmp eq i64 %i.ih, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.i.i.us.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ja, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec249 = and i64 %i.ih, 8589934584           ; 4 uses
  %i.jb = trunc i64 %n.vec249 to i32
  %i.jc = add i32 %.289.lcssa.i.i.us, %i.jb
  %i.jd = shl nuw nsw i64 %n.vec249, 2
  %i.je = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.jd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index250 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next254, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi251 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.jh, %vec.epilog.vector.body ]
  %i.jf = shl i64 %index250, 2
  %next.gep252 = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.jf
  %wide.load253 = load <8 x float>, ptr %next.gep252, align 4, !tbaa !69
  %i.jg = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load253)
  %i.jh = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi251, <8 x float> %i.jg) ; 2 uses
  %index.next254 = add nuw i64 %index250, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next254, %n.vec249
  br i1 %i.ji, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1203

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jj = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jh) ; 2 uses
  %cmp.n255 = icmp eq i64 %i.ih, %n.vec249
  br i1 %cmp.n255, label %._crit_edge.i.i.us, label %.lr.ph83.i.i.us.preheader

.lr.ph83.i.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.39082.i.i.us.ph = phi i32 [ %.289.lcssa.i.i.us, %iter.check ], [ %i.ik, %vec.epilog.iter.check ], [ %i.jc, %vec.epilog.middle.block ]
  %.39481.i.i.us.ph = phi ptr [ %.293.lcssa.i.i.us, %iter.check ], [ %i.im, %vec.epilog.iter.check ], [ %i.je, %vec.epilog.middle.block ]
  %.04680.i.i.us.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.ja, %vec.epilog.iter.check ], [ %i.jj, %vec.epilog.middle.block ]
  br label %.lr.ph83.i.i.us

.lr.ph83.i.i.us:                                  ; preds = %.lr.ph83.i.i.us.preheader, %.lr.ph83.i.i.us
  %.39082.i.i.us = phi i32 [ %i.jn, %.lr.ph83.i.i.us ], [ %.39082.i.i.us.ph, %.lr.ph83.i.i.us.preheader ]
  %.39481.i.i.us = phi ptr [ %i.jm, %.lr.ph83.i.i.us ], [ %.39481.i.i.us.ph, %.lr.ph83.i.i.us.preheader ] ; 2 uses
  %.04680.i.i.us = phi float [ %.sroa.speculated12.i.i.us, %.lr.ph83.i.i.us ], [ %.04680.i.i.us.ph, %.lr.ph83.i.i.us.preheader ]
  %i.jk = load float, ptr %.39481.i.i.us, align 4, !tbaa !69
  %i.jl = call fast float @llvm.fabs.f32(float %i.jk)
  %.sroa.speculated12.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.04680.i.i.us, float %i.jl) ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.39481.i.i.us, i64 4
  %i.jn = add nuw nsw i32 %.39082.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i32 %i.jn, %i.fk
  br i1 %exitcond.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph83.i.i.us, !llvm.loop !1204

._crit_edge.i.i.us:                               ; preds = %.lr.ph83.i.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.us
  %.046.lcssa.i.i.us = phi float [ 0.000000e+00, %.preheader.i.i.us ], [ %i.jj, %vec.epilog.middle.block ], [ %i.ja, %middle.block ], [ %.sroa.speculated12.i.i.us, %.lr.ph83.i.i.us ]
  br i1 %i.fw, label %.split.i.i.us, label %.thread54.i.i.us

.split.i.i.us:                                    ; preds = %._crit_edge.i.i.us
  switch i32 %i.fx, label %.thread54.i.i.us [
    i32 4, label %.thread.i.i.us
    i32 3, label %bb.p
    i32 2, label %bb.o
    i32 0, label %bb.n
  ]

bb.n:                                             ; preds = %.split.i.i.us
  %i.jo = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jp = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jo, <8 x float> nofpclass(nan inf) %i.jp) ; 2 uses
  %i.jr = shufflevector <8 x float> %i.jq, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = shufflevector <8 x float> %i.jq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.js) ; 2 uses
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.jv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.ju) ; 2 uses
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> nofpclass(nan inf) %i.jw)
  %i.jy = extractelement <4 x float> %i.jx, i64 0
  %.sroa.speculated8.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.046.lcssa.i.i.us, float %i.jy)
  %i.jz = shufflevector <8 x float> %.041.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ka = shufflevector <8 x float> %.041.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kb, <4 x float> nofpclass(nan inf) %i.kc) ; 2 uses
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.ke)
  %i.kg = extractelement <4 x float> %i.kf, i64 0
  %.sroa.speculated4.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated8.i.i.us, float %i.kg)
  %i.kh = shufflevector <4 x float> %.044.lcssa.i.i.us, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.044.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.kj = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ki, <4 x float> nofpclass(nan inf) %i.kj)
  %i.kl = extractelement <4 x float> %i.kk, i64 0
  %.sroa.speculated.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i.i.us, float %i.kl) ; 2 uses
  %i.km = fdiv fast float 1.270000e+02, %.sroa.speculated.i.i.us
  store float %i.km, ptr %.087.i.i.us, align 4, !tbaa !69
  %i.kn = fmul fast float %.sroa.speculated.i.i.us, f0x3C010204
  %i.ko = fmul fast float %i.kn, %i.ge
  store float %i.ko, ptr %.08286.i.i.us, align 4, !tbaa !69
  %i.kp = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 4
  br label %.thread54.i.i.us

bb.o:                                             ; preds = %.split.i.i.us
  %i.kr = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ks = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.041.lcssa.i.i.us, <8 x float> nofpclass(nan inf) %i.kr)
  %i.ku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kt, <8 x float> nofpclass(nan inf) %i.ks) ; 2 uses
  %i.kv = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kw = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.044.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.kv)
  %i.ky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kx, <4 x float> nofpclass(nan inf) %i.kw) ; 2 uses
  %i.kz = fdiv fast <4 x float> splat (float 1.270000e+02), %i.ky
  %i.la = fmul fast <4 x float> %i.ky, %i.fm
  store <4 x float> %i.kz, ptr %.087.i.i.us, align 16, !tbaa !90
  store <4 x float> %i.la, ptr %.08286.i.i.us, align 16, !tbaa !90
  %i.lb = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 16
  br label %.thread54.i.i.us

bb.p:                                             ; preds = %.split.i.i.us
  %i.ld = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.le = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.041.lcssa.i.i.us, <8 x float> nofpclass(nan inf) %i.ld)
  %i.lg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lf, <8 x float> nofpclass(nan inf) %i.le) ; 2 uses
  %i.lh = fdiv fast <8 x float> splat (float 1.270000e+02), %i.lg
  %i.li = fmul fast <8 x float> %i.lg, %i.fo
  store <8 x float> %i.lh, ptr %.087.i.i.us, align 32, !tbaa !90
  store <8 x float> %i.li, ptr %.08286.i.i.us, align 32, !tbaa !90
  %i.lj = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 32
  br label %.thread54.i.i.us

.thread.i.i.us:                                   ; preds = %.split.i.i.us
  %i.ll = fdiv fast <16 x float> splat (float 1.270000e+02), %.040.lcssa.i.i.us
  %i.lm = fmul fast <16 x float> %.040.lcssa.i.i.us, %i.fq
  store <16 x float> %i.ll, ptr %.087.i.i.us, align 64, !tbaa !90
  store <16 x float> %i.lm, ptr %.08286.i.i.us, align 64, !tbaa !90
  %i.ln = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 64
  br label %.thread54.i.i.us

.thread54.i.i.us:                                 ; preds = %.thread.i.i.us, %bb.p, %bb.o, %bb.n, %.split.i.i.us, %._crit_edge.i.i.us
  %.486.i.i.us = phi ptr [ %i.kq, %bb.n ], [ %.08286.i.i.us, %.split.i.i.us ], [ %i.lc, %bb.o ], [ %i.lo, %.thread.i.i.us ], [ %i.lk, %bb.p ], [ %.08286.i.i.us, %._crit_edge.i.i.us ]
  %.4.i.i.us = phi ptr [ %i.kp, %bb.n ], [ %.087.i.i.us, %.split.i.i.us ], [ %i.lb, %bb.o ], [ %i.ln, %.thread.i.i.us ], [ %i.lj, %bb.p ], [ %.087.i.i.us, %._crit_edge.i.i.us ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond100.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond100.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %bb.m, !llvm.loop !6

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %.thread54.i.i.us, %bb.i
  br i1 %.not87, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.k
  invoke fastcc void @_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bt, i32 noundef %.sroa.speculated162, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.l
  invoke fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bt, i32 noundef %.sroa.speculated162, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us, %.noexc118.us
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bt, i32 noundef %.sroa.speculated162, i32 noundef %.084186.us, i32 noundef %.sroa.speculated158.us, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us)
          to label %bb.r unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.lp = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %.not.i97.us = icmp eq ptr %i.lp, null
  br i1 %.not.i97.us, label %_ZN4ncnn3MatD2Ev.exit90.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lq = atomicrmw add ptr %i.lp, i32 -1 acq_rel, align 4
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit90.us

bb.t:                                             ; preds = %bb.s
  %i.ls = load ptr, ptr %i.bg, align 8, !tbaa !24 ; 3 uses
  %.not3.i98.us = icmp eq ptr %i.ls, null
  %i.lt = load ptr, ptr %16, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i98.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, ptr noundef %i.lt)
          to label %_ZN4ncnn3MatD2Ev.exit90.us unwind label %.split.us, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i112.us = icmp eq ptr %i.lt, null
  br i1 %.not.i112.us, label %_ZN4ncnn3MatD2Ev.exit90.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.lt) #9
  br label %_ZN4ncnn3MatD2Ev.exit90.us

_ZN4ncnn3MatD2Ev.exit90.us:                       ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.lx = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %.not.i101.us = icmp eq ptr %i.lx, null
  br i1 %.not.i101.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.x

bb.x:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit90.us
  %i.ly = atomicrmw add ptr %i.lx, i32 -1 acq_rel, align 4
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.y:                                             ; preds = %bb.x
  %i.ma = load ptr, ptr %i.au, align 8, !tbaa !24 ; 3 uses
  %.not3.i102.us = icmp eq ptr %i.ma, null
  %i.mb = load ptr, ptr %15, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i102.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef %i.mb)
end_hunk_2
begin_hunk_3_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
  %.val125.us = load ptr, ptr %11, align 8, !tbaa !25
  %.val124.us = load ptr, ptr %9, align 8, !tbaa !25
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val125.us, i64 %i.dj
  %i.ft = getelementptr inbounds [4 x i8], ptr %.val124.us, i64 %i.dj
  %i.fu = icmp sgt i32 %i.fk, 15
  %i.fv = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fc)
  %i.fw = icmp eq i32 %i.fv, 1
  %i.fx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fc, i1 true)
  %i.fy = and i32 %i.fk, -16                      ; 2 uses
  %i.fz = sext i32 %i.fc to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fj to i64
  %i.ga = add i32 %i.fk, -16                      ; 2 uses
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = add nuw nsw i32 %i.gb, 1                ; 2 uses
  %xtraiter = and i32 %i.gc, 3                    ; 3 uses
  %i.gd = icmp ult i32 %i.ga, 48
  %unroll_iter = and i32 %i.gc, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod275 = icmp ne i32 %xtraiter, 0
  %i.ge = fdiv fast float 1.000000e+00, %i.fb
  br label %bb.m

bb.m:                                             ; preds = %.thread54.i.i.us, %.lr.ph89.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph89.i.i.us ], [ %indvars.iv.next.i.i.us, %.thread54.i.i.us ] ; 2 uses
  %.087.i.i.us = phi ptr [ %i.ft, %.lr.ph89.i.i.us ], [ %.4.i.i.us, %.thread54.i.i.us ] ; 10 uses
  %.08286.i.i.us = phi ptr [ %i.fs, %.lr.ph89.i.i.us ], [ %.486.i.i.us, %.thread54.i.i.us ] ; 10 uses
  %i.gf = load ptr, ptr %4, align 8, !tbaa !25
  %i.gg = mul nsw i64 %indvars.iv.i.i.us, %i.fz
  %i.gh = add nsw i64 %i.gg, %i.dj
  %i.gi = mul i64 %i.gh, %i.fi
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gi ; 3 uses
  br i1 %i.fu, label %.lr.ph.i.i.us.preheader, label %.preheader60.i.i.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.m
  br i1 %i.gd, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us
  %.09162.i.i.us = phi ptr [ %i.hd, %.lr.ph.i.i.us ], [ %i.gj, %.lr.ph.i.i.us.preheader ] ; 5 uses
  %.04061.i.i.us = phi <16 x float> [ %i.hc, %.lr.ph.i.i.us ], [ zeroinitializer, %.lr.ph.i.i.us.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.gk = load <16 x i32>, ptr %.09162.i.i.us, align 1, !tbaa !90
  %i.gl = and <16 x i32> %i.gk, splat (i32 2147483647)
  %i.gm = bitcast <16 x i32> %i.gl to <16 x float>
  %i.gn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.i.us, <16 x float> nofpclass(nan inf) %i.gm, i32 4)
  %i.go = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 64
  %i.gp = load <16 x i32>, ptr %i.go, align 1, !tbaa !90
  %i.gq = and <16 x i32> %i.gp, splat (i32 2147483647)
  %i.gr = bitcast <16 x i32> %i.gq to <16 x float>
  %i.gs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gn, <16 x float> nofpclass(nan inf) %i.gr, i32 4)
  %i.gt = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 128
  %i.gu = load <16 x i32>, ptr %i.gt, align 1, !tbaa !90
  %i.gv = and <16 x i32> %i.gu, splat (i32 2147483647)
  %i.gw = bitcast <16 x i32> %i.gv to <16 x float>
  %i.gx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gs, <16 x float> nofpclass(nan inf) %i.gw, i32 4)
  %i.gy = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 192
  %i.gz = load <16 x i32>, ptr %i.gy, align 1, !tbaa !90
  %i.ha = and <16 x i32> %i.gz, splat (i32 2147483647)
  %i.hb = bitcast <16 x i32> %i.ha to <16 x float>
  %i.hc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gx, <16 x float> nofpclass(nan inf) %i.hb, i32 4) ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.09162.i.i.us, i64 256 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader60.i.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !3

.preheader60.i.i.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.us
  br i1 %lcmp.mod.not, label %.preheader60.i.i.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %.preheader60.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.09162.i.i.us.epil.init = phi ptr [ %i.gj, %.lr.ph.i.i.us.preheader ], [ %i.hd, %.preheader60.i.i.us.loopexit.unr-lcssa ]
  %.04061.i.i.us.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.i.i.us.preheader ], [ %i.hc, %.preheader60.i.i.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph.i.i.us.epil

.lr.ph.i.i.us.epil:                               ; preds = %.lr.ph.i.i.us.epil, %.lr.ph.i.i.us.epil.preheader
  %.09162.i.i.us.epil = phi ptr [ %i.hi, %.lr.ph.i.i.us.epil ], [ %.09162.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ] ; 2 uses
  %.04061.i.i.us.epil = phi <16 x float> [ %i.hh, %.lr.ph.i.i.us.epil ], [ %.04061.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.us.epil ], [ 0, %.lr.ph.i.i.us.epil.preheader ]
  %i.he = load <16 x i32>, ptr %.09162.i.i.us.epil, align 1, !tbaa !90
  %i.hf = and <16 x i32> %i.he, splat (i32 2147483647)
  %i.hg = bitcast <16 x i32> %i.hf to <16 x float>
  %i.hh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.i.us.epil, <16 x float> nofpclass(nan inf) %i.hg, i32 4) ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.09162.i.i.us.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60.i.i.us, label %.lr.ph.i.i.us.epil, !llvm.loop !1250

.preheader60.i.i.us:                              ; preds = %.preheader60.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.m
  %.040.lcssa.i.i.us = phi <16 x float> [ zeroinitializer, %bb.m ], [ %i.hc, %.preheader60.i.i.us.loopexit.unr-lcssa ], [ %i.hh, %.lr.ph.i.i.us.epil ] ; 8 uses
  %.091.lcssa.i.i.us = phi ptr [ %i.gj, %bb.m ], [ %i.hd, %.preheader60.i.i.us.loopexit.unr-lcssa ], [ %i.hi, %.lr.ph.i.i.us.epil ] ; 2 uses
  %.087.lcssa.i.i.us = phi i32 [ 0, %bb.m ], [ %i.fy, %.lr.ph.i.i.us.epil ], [ %i.fy, %.preheader60.i.i.us.loopexit.unr-lcssa ] ; 3 uses
  %i.hj = or disjoint i32 %.087.lcssa.i.i.us, 7
  %i.hk = icmp slt i32 %i.hj, %i.fk
  br i1 %i.hk, label %.lr.ph69.i.i.us, label %.preheader59.i.i.us

.lr.ph69.i.i.us:                                  ; preds = %.preheader60.i.i.us, %.lr.ph69.i.i.us
  %.18868.i.i.us = phi i32 [ %i.hq, %.lr.ph69.i.i.us ], [ %.087.lcssa.i.i.us, %.preheader60.i.i.us ]
  %.19267.i.i.us = phi ptr [ %i.hp, %.lr.ph69.i.i.us ], [ %.091.lcssa.i.i.us, %.preheader60.i.i.us ] ; 2 uses
  %.04166.i.i.us = phi <8 x float> [ %i.ho, %.lr.ph69.i.i.us ], [ zeroinitializer, %.preheader60.i.i.us ]
  %i.hl = load <8 x i32>, ptr %.19267.i.i.us, align 1, !tbaa !90
  %i.hm = and <8 x i32> %i.hl, splat (i32 2147483647)
  %i.hn = bitcast <8 x i32> %i.hm to <8 x float>
  %i.ho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04166.i.i.us, <8 x float> nofpclass(nan inf) %i.hn) ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.19267.i.i.us, i64 32 ; 2 uses
  %i.hq = add nuw nsw i32 %.18868.i.i.us, 8       ; 3 uses
  %i.hr = or disjoint i32 %i.hq, 7
  %i.hs = icmp slt i32 %i.hr, %i.fk
  br i1 %i.hs, label %.lr.ph69.i.i.us, label %.preheader59.i.i.us, !llvm.loop !4

.preheader59.i.i.us:                              ; preds = %.lr.ph69.i.i.us, %.preheader60.i.i.us
  %.041.lcssa.i.i.us = phi <8 x float> [ zeroinitializer, %.preheader60.i.i.us ], [ %i.ho, %.lr.ph69.i.i.us ] ; 4 uses
  %.192.lcssa.i.i.us = phi ptr [ %.091.lcssa.i.i.us, %.preheader60.i.i.us ], [ %i.hp, %.lr.ph69.i.i.us ] ; 2 uses
  %.188.lcssa.i.i.us = phi i32 [ %.087.lcssa.i.i.us, %.preheader60.i.i.us ], [ %i.hq, %.lr.ph69.i.i.us ] ; 3 uses
  %i.ht = or disjoint i32 %.188.lcssa.i.i.us, 3
  %i.hu = icmp slt i32 %i.ht, %i.fk
  br i1 %i.hu, label %.lr.ph76.i.i.us, label %.preheader.i.i.us

.lr.ph76.i.i.us:                                  ; preds = %.preheader59.i.i.us, %.lr.ph76.i.i.us
  %.28975.i.i.us = phi i32 [ %i.ia, %.lr.ph76.i.i.us ], [ %.188.lcssa.i.i.us, %.preheader59.i.i.us ]
  %.29374.i.i.us = phi ptr [ %i.hz, %.lr.ph76.i.i.us ], [ %.192.lcssa.i.i.us, %.preheader59.i.i.us ] ; 2 uses
  %.04473.i.i.us = phi <4 x float> [ %i.hy, %.lr.ph76.i.i.us ], [ zeroinitializer, %.preheader59.i.i.us ]
  %i.hv = load <4 x i32>, ptr %.29374.i.i.us, align 1, !tbaa !90
  %i.hw = and <4 x i32> %i.hv, splat (i32 2147483647)
  %i.hx = bitcast <4 x i32> %i.hw to <4 x float>
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04473.i.i.us, <4 x float> nofpclass(nan inf) %i.hx) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.29374.i.i.us, i64 16 ; 2 uses
  %i.ia = add nuw nsw i32 %.28975.i.i.us, 4       ; 3 uses
  %i.ib = or disjoint i32 %i.ia, 3
  %i.ic = icmp slt i32 %i.ib, %i.fk
  br i1 %i.ic, label %.lr.ph76.i.i.us, label %.preheader.i.i.us, !llvm.loop !5

.preheader.i.i.us:                                ; preds = %.lr.ph76.i.i.us, %.preheader59.i.i.us
  %.044.lcssa.i.i.us = phi <4 x float> [ zeroinitializer, %.preheader59.i.i.us ], [ %i.hy, %.lr.ph76.i.i.us ] ; 3 uses
  %.293.lcssa.i.i.us = phi ptr [ %.192.lcssa.i.i.us, %.preheader59.i.i.us ], [ %i.hz, %.lr.ph76.i.i.us ] ; 5 uses
  %.289.lcssa.i.i.us = phi i32 [ %.188.lcssa.i.i.us, %.preheader59.i.i.us ], [ %i.ia, %.lr.ph76.i.i.us ] ; 5 uses
  %i.id = icmp slt i32 %.289.lcssa.i.i.us, %i.fk
  br i1 %i.id, label %iter.check, label %._crit_edge.i.i.us

iter.check:                                       ; preds = %.preheader.i.i.us
  %i.ie = xor i32 %.289.lcssa.i.i.us, -1
  %i.if = add i32 %i.fk, %i.ie                    ; 3 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.if, 7
  br i1 %min.iters.check, label %.lr.ph83.i.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check238 = icmp ult i32 %i.if, 63
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ii = and i64 %i.ih, 56
  %n.vec = and i64 %i.ih, 8589934528              ; 5 uses
  %i.ij = trunc i64 %n.vec to i32
  %i.ik = add i32 %.289.lcssa.i.i.us, %i.ij
  %i.il = shl nuw nsw i64 %n.vec, 2
  %i.im = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.il
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.iv, %vector.body ]
  %vec.phi239 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.iw, %vector.body ]
  %vec.phi240 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.ix, %vector.body ]
  %vec.phi241 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.iy, %vector.body ]
  %i.in = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.in ; 4 uses
  %i.io = getelementptr i8, ptr %next.gep, i64 64
  %i.ip = getelementptr i8, ptr %next.gep, i64 128
  %i.iq = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !69
  %wide.load242 = load <16 x float>, ptr %i.io, align 4, !tbaa !69
  %wide.load243 = load <16 x float>, ptr %i.ip, align 4, !tbaa !69
  %wide.load244 = load <16 x float>, ptr %i.iq, align 4, !tbaa !69
  %i.ir = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load)
  %i.is = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load242)
  %i.it = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load243)
  %i.iu = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load244)
  %i.iv = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.ir) ; 2 uses
  %i.iw = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi239, <16 x float> %i.is) ; 2 uses
  %i.ix = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi240, <16 x float> %i.it) ; 2 uses
  %i.iy = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi241, <16 x float> %i.iu) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !1251

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.iv, <16 x float> %i.iw)
  %rdx.minmax.select246 = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.ix)
  %rdx.minmax.select248 = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select246, <16 x float> %i.iy)
  %i.ja = call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select248) ; 3 uses
  %cmp.n = icmp eq i64 %i.ih, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.i.i.us.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ja, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec250 = and i64 %i.ih, 8589934584           ; 4 uses
  %i.jb = trunc i64 %n.vec250 to i32
  %i.jc = add i32 %.289.lcssa.i.i.us, %i.jb
  %i.jd = shl nuw nsw i64 %n.vec250, 2
  %i.je = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.jd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index251 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next255, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi252 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.jh, %vec.epilog.vector.body ]
  %i.jf = shl i64 %index251, 2
  %next.gep253 = getelementptr i8, ptr %.293.lcssa.i.i.us, i64 %i.jf
  %wide.load254 = load <8 x float>, ptr %next.gep253, align 4, !tbaa !69
  %i.jg = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load254)
  %i.jh = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi252, <8 x float> %i.jg) ; 2 uses
  %index.next255 = add nuw i64 %index251, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next255, %n.vec250
  br i1 %i.ji, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1252

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jj = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jh) ; 2 uses
  %cmp.n256 = icmp eq i64 %i.ih, %n.vec250
  br i1 %cmp.n256, label %._crit_edge.i.i.us, label %.lr.ph83.i.i.us.preheader

.lr.ph83.i.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.39082.i.i.us.ph = phi i32 [ %.289.lcssa.i.i.us, %iter.check ], [ %i.ik, %vec.epilog.iter.check ], [ %i.jc, %vec.epilog.middle.block ]
  %.39481.i.i.us.ph = phi ptr [ %.293.lcssa.i.i.us, %iter.check ], [ %i.im, %vec.epilog.iter.check ], [ %i.je, %vec.epilog.middle.block ]
  %.04680.i.i.us.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.ja, %vec.epilog.iter.check ], [ %i.jj, %vec.epilog.middle.block ]
  br label %.lr.ph83.i.i.us

.lr.ph83.i.i.us:                                  ; preds = %.lr.ph83.i.i.us.preheader, %.lr.ph83.i.i.us
  %.39082.i.i.us = phi i32 [ %i.jn, %.lr.ph83.i.i.us ], [ %.39082.i.i.us.ph, %.lr.ph83.i.i.us.preheader ]
  %.39481.i.i.us = phi ptr [ %i.jm, %.lr.ph83.i.i.us ], [ %.39481.i.i.us.ph, %.lr.ph83.i.i.us.preheader ] ; 2 uses
  %.04680.i.i.us = phi float [ %.sroa.speculated12.i.i.us, %.lr.ph83.i.i.us ], [ %.04680.i.i.us.ph, %.lr.ph83.i.i.us.preheader ]
  %i.jk = load float, ptr %.39481.i.i.us, align 4, !tbaa !69
  %i.jl = call fast float @llvm.fabs.f32(float %i.jk)
  %.sroa.speculated12.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.04680.i.i.us, float %i.jl) ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.39481.i.i.us, i64 4
  %i.jn = add nuw nsw i32 %.39082.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i32 %i.jn, %i.fk
  br i1 %exitcond.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph83.i.i.us, !llvm.loop !1253

._crit_edge.i.i.us:                               ; preds = %.lr.ph83.i.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.us
  %.046.lcssa.i.i.us = phi float [ 0.000000e+00, %.preheader.i.i.us ], [ %i.jj, %vec.epilog.middle.block ], [ %i.ja, %middle.block ], [ %.sroa.speculated12.i.i.us, %.lr.ph83.i.i.us ]
  br i1 %i.fw, label %.split.i.i.us, label %.thread54.i.i.us

.split.i.i.us:                                    ; preds = %._crit_edge.i.i.us
  switch i32 %i.fx, label %.thread54.i.i.us [
    i32 4, label %.thread.i.i.us
    i32 3, label %bb.p
    i32 2, label %bb.o
    i32 0, label %bb.n
  ]

bb.n:                                             ; preds = %.split.i.i.us
  %i.jo = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jp = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jo, <8 x float> nofpclass(nan inf) %i.jp) ; 2 uses
  %i.jr = shufflevector <8 x float> %i.jq, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = shufflevector <8 x float> %i.jq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.js) ; 2 uses
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.jv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.ju) ; 2 uses
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> nofpclass(nan inf) %i.jw)
  %i.jy = extractelement <4 x float> %i.jx, i64 0
  %.sroa.speculated8.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.046.lcssa.i.i.us, float %i.jy)
  %i.jz = shufflevector <8 x float> %.041.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ka = shufflevector <8 x float> %.041.lcssa.i.i.us, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kb, <4 x float> nofpclass(nan inf) %i.kc) ; 2 uses
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.ke)
  %i.kg = extractelement <4 x float> %i.kf, i64 0
  %.sroa.speculated4.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated8.i.i.us, float %i.kg)
  %i.kh = shufflevector <4 x float> %.044.lcssa.i.i.us, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.044.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.kj = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ki, <4 x float> nofpclass(nan inf) %i.kj)
  %i.kl = extractelement <4 x float> %i.kk, i64 0
  %.sroa.speculated.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.i.i.us, float %i.kl) ; 2 uses
  %i.km = fdiv fast float 1.270000e+02, %.sroa.speculated.i.i.us
  store float %i.km, ptr %.087.i.i.us, align 4, !tbaa !69
  %i.kn = fmul fast float %.sroa.speculated.i.i.us, f0x3C010204
  %i.ko = fmul fast float %i.kn, %i.ge
  store float %i.ko, ptr %.08286.i.i.us, align 4, !tbaa !69
  %i.kp = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 4
  br label %.thread54.i.i.us

bb.o:                                             ; preds = %.split.i.i.us
  %i.kr = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ks = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.041.lcssa.i.i.us, <8 x float> nofpclass(nan inf) %i.kr)
  %i.ku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kt, <8 x float> nofpclass(nan inf) %i.ks) ; 2 uses
  %i.kv = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kw = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.044.lcssa.i.i.us, <4 x float> nofpclass(nan inf) %i.kv)
  %i.ky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kx, <4 x float> nofpclass(nan inf) %i.kw) ; 2 uses
  %i.kz = fdiv fast <4 x float> splat (float 1.270000e+02), %i.ky
  %i.la = fmul fast <4 x float> %i.ky, %i.fm
  store <4 x float> %i.kz, ptr %.087.i.i.us, align 16, !tbaa !90
  store <4 x float> %i.la, ptr %.08286.i.i.us, align 16, !tbaa !90
  %i.lb = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 16
  br label %.thread54.i.i.us

bb.p:                                             ; preds = %.split.i.i.us
  %i.ld = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.le = shufflevector <16 x float> %.040.lcssa.i.i.us, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.041.lcssa.i.i.us, <8 x float> nofpclass(nan inf) %i.ld)
  %i.lg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lf, <8 x float> nofpclass(nan inf) %i.le) ; 2 uses
  %i.lh = fdiv fast <8 x float> splat (float 1.270000e+02), %i.lg
  %i.li = fmul fast <8 x float> %i.lg, %i.fo
  store <8 x float> %i.lh, ptr %.087.i.i.us, align 32, !tbaa !90
  store <8 x float> %i.li, ptr %.08286.i.i.us, align 32, !tbaa !90
  %i.lj = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 32
  br label %.thread54.i.i.us

.thread.i.i.us:                                   ; preds = %.split.i.i.us
  %i.ll = fdiv fast <16 x float> splat (float 1.270000e+02), %.040.lcssa.i.i.us
  %i.lm = fmul fast <16 x float> %.040.lcssa.i.i.us, %i.fq
  store <16 x float> %i.ll, ptr %.087.i.i.us, align 64, !tbaa !90
  store <16 x float> %i.lm, ptr %.08286.i.i.us, align 64, !tbaa !90
  %i.ln = getelementptr inbounds nuw i8, ptr %.087.i.i.us, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %.08286.i.i.us, i64 64
  br label %.thread54.i.i.us

.thread54.i.i.us:                                 ; preds = %.thread.i.i.us, %bb.p, %bb.o, %bb.n, %.split.i.i.us, %._crit_edge.i.i.us
  %.486.i.i.us = phi ptr [ %i.kq, %bb.n ], [ %.08286.i.i.us, %.split.i.i.us ], [ %i.lc, %bb.o ], [ %i.lo, %.thread.i.i.us ], [ %i.lk, %bb.p ], [ %.08286.i.i.us, %._crit_edge.i.i.us ]
  %.4.i.i.us = phi ptr [ %i.kp, %bb.n ], [ %.087.i.i.us, %.split.i.i.us ], [ %i.lb, %bb.o ], [ %i.ln, %.thread.i.i.us ], [ %i.lj, %bb.p ], [ %.087.i.i.us, %._crit_edge.i.i.us ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond100.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond100.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %bb.m, !llvm.loop !6

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %.thread54.i.i.us, %bb.i
  br i1 %.not86, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread178.us

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread178.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.k
  invoke fastcc void @_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.0186.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.l
  invoke fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.0186.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.q unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread178.us, %.noexc118.us
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.083187.us, i32 noundef %.sroa.speculated159.us, i32 noundef %.0186.us, i32 noundef %.sroa.speculated.us)
          to label %bb.r unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.lp = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %.not.i96.us = icmp eq ptr %i.lp, null
  br i1 %.not.i96.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lq = atomicrmw add ptr %i.lp, i32 -1 acq_rel, align 4
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.t:                                             ; preds = %bb.s
  %i.ls = load ptr, ptr %i.bg, align 8, !tbaa !24 ; 3 uses
  %.not3.i97.us = icmp eq ptr %i.ls, null
  %i.lt = load ptr, ptr %16, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i97.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, ptr noundef %i.lt)
          to label %_ZN4ncnn3MatD2Ev.exit89.us unwind label %.split.us, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i111.us = icmp eq ptr %i.lt, null
  br i1 %.not.i111.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.lt) #9
  br label %_ZN4ncnn3MatD2Ev.exit89.us

_ZN4ncnn3MatD2Ev.exit89.us:                       ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.lx = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %.not.i100.us = icmp eq ptr %i.lx, null
  br i1 %.not.i100.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.x

bb.x:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit89.us
  %i.ly = atomicrmw add ptr %i.lx, i32 -1 acq_rel, align 4
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit88.us

bb.y:                                             ; preds = %bb.x
  %i.ma = load ptr, ptr %i.au, align 8, !tbaa !24 ; 3 uses
  %.not3.i101.us = icmp eq ptr %i.ma, null
  %i.mb = load ptr, ptr %15, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i101.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef %i.mb)
end_hunk_3
