Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/interpolation?download=true
inline.NumInlined: 33
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@dt_interpolation_compute_sample:bb.a
  %broadcast.splat204 = shufflevector <4 x i64> %broadcast.splatinsert203, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat204, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph193
  %index206 = phi i64 [ %vec.epilog.resume.val187, %vec.epilog.ph193 ], [ %index.next212, %vec.epilog.vector.body205 ] ; 2 uses
  %vec.ind207 = phi <4 x i64> [ %induction, %vec.epilog.ph193 ], [ %vec.ind.next213, %vec.epilog.vector.body205 ] ; 2 uses
  %vec.phi208 = phi <4 x float> [ %i.gq, %vec.epilog.ph193 ], [ %i.hb, %vec.epilog.vector.body205 ]
  %i.gr = add nsw <4 x i64> %vec.ind207, %broadcast.splat196 ; 5 uses
  %i.gs = sub <4 x i64> zeroinitializer, %i.gr
  %i.gt = icmp slt <4 x i64> %i.gr, zeroinitializer
  %i.gu = icmp ugt <4 x i64> %i.gr, %broadcast.splat198
  %i.gv = sub nsw <4 x i64> %broadcast.splat200, %i.gr
  %i.gw = select <4 x i1> %i.gu, <4 x i64> %i.gv, <4 x i64> %i.gr
  %i.gx = select <4 x i1> %i.gt, <4 x i64> %i.gs, <4 x i64> %i.gw
  %i.gy = mul nsw <4 x i64> %i.gx, %broadcast.splat202
  %wide.gep209 = getelementptr inbounds [4 x i8], ptr %i.fs, <4 x i64> %i.gy
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index206
  %wide.load210 = load <4 x float>, ptr %i.gz, align 16, !tbaa !18
  %wide.masked.gather211 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep209, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18
  %i.ha = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather211, %wide.load210
  %i.hb = fadd reassoc nsz arcp contract afn <4 x float> %i.ha, %vec.phi208 ; 2 uses
  %index.next212 = add nuw i64 %index206, 4       ; 2 uses
  %vec.ind.next213 = add nuw nsw <4 x i64> %vec.ind207, splat (i64 4)
  %i.hc = icmp eq i64 %index.next212, %n.vec194
  br i1 %i.hc, label %vec.epilog.middle.block214, label %vec.epilog.vector.body205, !llvm.loop !30

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body205
  %i.hd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hb) ; 2 uses
  br i1 %cmp.n215, label %.loopexit218, label %_mirror.exit99.preheader

_mirror.exit99.preheader:                         ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block214
  %.078108.ph = phi i64 [ 0, %iter.check189 ], [ %n.vec168, %vec.epilog.iter.check191 ], [ %n.vec194, %vec.epilog.middle.block214 ]
  %.079107.ph = phi float [ 0.000000e+00, %iter.check189 ], [ %i.gp, %vec.epilog.iter.check191 ], [ %i.hd, %vec.epilog.middle.block214 ]
  br label %_mirror.exit99

.loopexit218:                                     ; preds = %_mirror.exit99, %vec.epilog.middle.block214, %middle.block184
  %.lcssa = phi float [ %i.hd, %vec.epilog.middle.block214 ], [ %i.gp, %middle.block184 ], [ %i.hu, %_mirror.exit99 ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.080110
  %i.hf = load float, ptr %i.he, align 4, !tbaa !18
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %.lcssa
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hg, %.1109 ; 2 uses
  %i.hi = add nuw nsw i64 %.080110, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.hi, %i.ez
  br i1 %exitcond125.not, label %.loopexit, label %iter.check189

_mirror.exit99:                                   ; preds = %_mirror.exit99.preheader, %_mirror.exit99
  %.078108 = phi i64 [ %i.hv, %_mirror.exit99 ], [ %.078108.ph, %_mirror.exit99.preheader ] ; 3 uses
  %.079107 = phi float [ %i.hu, %_mirror.exit99 ], [ %.079107.ph, %_mirror.exit99.preheader ]
  %i.hj = add nsw i64 %.078108, %i.fg             ; 5 uses
  %i.hk = sub i64 0, %i.hj
  %i.hl = icmp slt i64 %i.hj, 0
  %i.hm = icmp samesign ugt i64 %i.hj, %i.fi
  %i.hn = sub nsw i64 %factor.i98, %i.hj
  %spec.select112 = select i1 %i.hm, i64 %i.hn, i64 %i.hj
  %.0.i97 = select i1 %i.hl, i64 %i.hk, i64 %spec.select112
  %i.ho = mul nsw i64 %.0.i97, %i.fk
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.078108
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !18
  %i.hs = load float, ptr %i.hp, align 4, !tbaa !18
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.hr
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %.079107 ; 2 uses
  %i.hv = add nuw nsw i64 %.078108, 1             ; 2 uses
  %exitcond124.not = icmp eq i64 %i.hv, %i.ez
  br i1 %exitcond124.not, label %.loopexit218, label %_mirror.exit99, !llvm.loop !31

.loopexit:                                        ; preds = %.loopexit219, %.loopexit218, %bb.e, %bb.g, %bb.f
  %.2 = phi nsz float [ 0.000000e+00, %bb.f ], [ %i.hh, %.loopexit218 ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.e ], [ %i.cp, %.loopexit219 ]
  %i.hw = fmul reassoc nsz arcp contract afn float %i.ab, %i.p
  %i.hx = fdiv reassoc nsz arcp contract afn float %.2, %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret float %i.hx
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @dt_interpolation_compute_pixel4c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x float], align 64             ; 8 uses
  %i.b = alloca [8 x float], align 64             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %3)
  %i.d = fptosi float %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.d, 1
  %i.i = sub i32 %i.h, %i.g
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.k = fsub reassoc nsz arcp contract afn float %3, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = shl i64 %i.f, 1
  %i.o = uitofp reassoc nsz arcp contract afn i64 %i.f to float
  %i.p = call reassoc nsz arcp contract afn float %i.m(ptr noundef nonnull %i.a, i64 noundef %i.n, float noundef %i.o, float noundef %i.k, float noundef -1.000000e+00) #12, !inline_history !17
  %i.q = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %4)
  %i.r = fptosi float %i.q to i32
  %i.s = load i64, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.r, 1
  %i.v = sub i32 %i.u, %i.t
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fsub reassoc nsz arcp contract afn float %4, %i.w
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.z = shl i64 %i.s, 1
  %i.aa = uitofp reassoc nsz arcp contract afn i64 %i.s to float
  %i.ab = call reassoc nsz arcp contract afn float %i.y(ptr noundef nonnull %i.b, i64 noundef %i.z, float noundef %i.aa, float noundef %i.x, float noundef -1.000000e+00) #12, !inline_history !17
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.p
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.ae = fptosi float %3 to i32                  ; 5 uses
  %i.af = fptosi float %4 to i32                  ; 5 uses
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !11  ; 6 uses
  %i.ai = add i64 %i.ah, -1                       ; 4 uses
  %.not = icmp ugt i64 %i.ai, %i.ag
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = sext i32 %i.af to i64                   ; 2 uses
  %.not121 = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not121, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = sext i32 %5 to i64
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = icmp ugt i64 %i.al, %i.ag
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %6 to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = icmp ugt i64 %i.ao, %i.aj
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = shl i64 %i.ah, 1                        ; 9 uses
  %.not147 = icmp eq i64 %i.aq, 0
  br i1 %.not147, label %.preheader131, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ar = mul nsw i32 %7, %i.af
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = shl nsw i32 %i.ae, 2
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  %narrow = sub nsw i32 -4, %7
  %i.ax = sext i32 %narrow to i64
  %i.ay = mul i64 %i.ai, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = sext i32 %7 to i64
  %min.iters.check = icmp ult i64 %i.aq, 4
  %min.iters.check231 = icmp ult i64 %i.aq, 16
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  %i.bb = and i64 %i.ah, 6
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  %n.vec254 = and i64 %i.aq, -4                   ; 3 uses
  %cmp.n267 = icmp eq i64 %i.aq, %n.vec254
  br label %iter.check

.preheader131:                                    ; preds = %.preheader132, %bb.e
  %i.bc = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.dr, %.preheader132 ]
  %i.bd = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.be
  store <4 x float> %i.bf, ptr %2, align 4, !tbaa !18
  br label %.loopexit

iter.check:                                       ; preds = %.lr.ph, %.preheader132
  %.0111137 = phi i64 [ 0, %.lr.ph ], [ %i.dt, %.preheader132 ] ; 2 uses
  %.0112136 = phi ptr [ %i.az, %.lr.ph ], [ %i.ds, %.preheader132 ] ; 5 uses
  %i.bg = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dr, %.preheader132 ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %vec.phi = phi <8 x float> [ %i.bq, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi232 = phi <8 x float> [ %i.br, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi233 = phi <8 x float> [ %i.bu, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi234 = phi <8 x float> [ %i.bv, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi235 = phi <8 x float> [ %i.by, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi236 = phi <8 x float> [ %i.bz, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi237 = phi <8 x float> [ %i.cc, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi238 = phi <8 x float> [ %i.cd, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %wide.load = load <8 x float>, ptr %i.bh, align 64, !tbaa !18 ; 4 uses
  %wide.load239 = load <8 x float>, ptr %i.bi, align 32, !tbaa !18 ; 4 uses
  %i.bj = shl nuw nsw i64 %index, 4
  %i.bk = shl i64 %index, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0112136, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.0112136, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %wide.vec = load <32 x float>, ptr %i.bl, align 4, !tbaa !18, !alias.scope !32 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec240 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec241 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec242 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec243 = load <32 x float>, ptr %i.bn, align 4, !tbaa !18, !alias.scope !32 ; 4 uses
  %strided.vec244 = shufflevector <32 x float> %wide.vec243, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec245 = shufflevector <32 x float> %wide.vec243, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec246 = shufflevector <32 x float> %wide.vec243, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec247 = shufflevector <32 x float> %wide.vec243, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %wide.load
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec244, %wide.load239
  %i.bq = fadd reassoc nsz arcp contract afn <8 x float> %i.bo, %vec.phi ; 2 uses
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bp, %vec.phi232 ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec240, %wide.load
  %i.bt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec245, %wide.load239
  %i.bu = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %vec.phi233 ; 2 uses
  %i.bv = fadd reassoc nsz arcp contract afn <8 x float> %i.bt, %vec.phi234 ; 2 uses
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec241, %wide.load
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec246, %wide.load239
  %i.by = fadd reassoc nsz arcp contract afn <8 x float> %i.bw, %vec.phi235 ; 2 uses
  %i.bz = fadd reassoc nsz arcp contract afn <8 x float> %i.bx, %vec.phi236 ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec242, %wide.load
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec247, %wide.load239
  %i.cc = fadd reassoc nsz arcp contract afn <8 x float> %i.ca, %vec.phi237 ; 2 uses
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cb, %vec.phi238 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.br, %i.bq
  %i.cf = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 2 uses
  %bin.rdx248 = fadd reassoc nsz arcp contract afn <8 x float> %i.bv, %i.bu
  %i.cg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx248) ; 2 uses
  %bin.rdx249 = fadd reassoc nsz arcp contract afn <8 x float> %i.bz, %i.by
  %i.ch = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx249) ; 2 uses
  %bin.rdx250 = fadd reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cc
  %i.ci = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx250) ; 2 uses
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3 ; 2 uses
  br i1 %cmp.n, label %.preheader132, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cf, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %bc.merge.rdx251 = phi float [ %i.cg, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %bc.merge.rdx252 = phi float [ %i.ch, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %bc.merge.rdx253 = phi float [ %i.ci, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.cn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.co = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx251, i64 0
  %i.cp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx252, i64 0
  %i.cq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx253, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index255 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi256 = phi <4 x float> [ %i.cn, %vec.epilog.ph ], [ %i.cv, %vec.epilog.vector.body ]
  %vec.phi257 = phi <4 x float> [ %i.co, %vec.epilog.ph ], [ %i.cx, %vec.epilog.vector.body ]
  %vec.phi258 = phi <4 x float> [ %i.cp, %vec.epilog.ph ], [ %i.cz, %vec.epilog.vector.body ]
  %vec.phi259 = phi <4 x float> [ %i.cq, %vec.epilog.ph ], [ %i.db, %vec.epilog.vector.body ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index255
  %wide.load260 = load <4 x float>, ptr %i.cr, align 16, !tbaa !18 ; 4 uses
  %i.cs = shl nuw nsw i64 %index255, 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.0112136, i64 %i.cs
  %wide.vec261 = load <16 x float>, ptr %i.ct, align 4, !tbaa !18, !alias.scope !32 ; 4 uses
  %strided.vec262 = shufflevector <16 x float> %wide.vec261, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec263 = shufflevector <16 x float> %wide.vec261, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec264 = shufflevector <16 x float> %wide.vec261, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec265 = shufflevector <16 x float> %wide.vec261, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec262, %wide.load260
  %i.cv = fadd reassoc nsz arcp contract afn <4 x float> %i.cu, %vec.phi256 ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec263, %wide.load260
  %i.cx = fadd reassoc nsz arcp contract afn <4 x float> %i.cw, %vec.phi257 ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec264, %wide.load260
  %i.cz = fadd reassoc nsz arcp contract afn <4 x float> %i.cy, %vec.phi258 ; 2 uses
  %i.da = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec265, %wide.load260
  %i.db = fadd reassoc nsz arcp contract afn <4 x float> %i.da, %vec.phi259 ; 2 uses
  %index.next266 = add nuw i64 %index255, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next266, %n.vec254
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cv)
  %i.de = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cx)
  %i.df = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cz)
  %i.dg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.db)
  %i.dh = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 3 ; 2 uses
  br i1 %cmp.n267, label %.preheader132, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0110134.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec254, %vec.epilog.middle.block ]
  %.ph305 = phi <4 x float> [ zeroinitializer, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader132:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dl = phi <4 x float> [ %i.dk, %vec.epilog.middle.block ], [ %i.cm, %middle.block ], [ %i.ec, %vec.epilog.scalar.ph ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0111137
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !18
  %i.do = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.bg, %i.dq ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.0112136, i64 %i.ba
  %i.dt = add nuw i64 %.0111137, 1                ; 2 uses
  %exitcond150.not = icmp eq i64 %i.dt, %i.aq
  br i1 %exitcond150.not, label %.preheader131, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0110134 = phi i64 [ %i.ed, %vec.epilog.scalar.ph ], [ %.0110134.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = phi <4 x float> [ %i.ec, %vec.epilog.scalar.ph ], [ %.ph305, %vec.epilog.scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0110134
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !18
  %.idx122 = shl nuw nsw i64 %.0110134, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.0112136, i64 %.idx122
  %i.dy = load <4 x float>, ptr %i.dx, align 4, !tbaa !18, !alias.scope !32
  %i.dz = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eb = fmul reassoc nsz arcp contract afn <4 x float> %i.dy, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn <4 x float> %i.eb, %i.du ; 2 uses
  %i.ed = add nuw i64 %.0110134, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %i.aq
  br i1 %exitcond.not, label %.preheader132, label %vec.epilog.scalar.ph, !llvm.loop !38

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ee = icmp sgt i32 %i.ae, -1
  %i.ef = icmp sgt i32 %i.af, -1
  %or.cond = select i1 %i.ee, i1 %i.ef, i1 false
  %i.eg = icmp sgt i32 %5, %i.ae
  %or.cond123 = and i1 %i.eg, %or.cond
  %i.eh = icmp sgt i32 %6, %i.af
  %or.cond124 = select i1 %or.cond123, i1 %i.eh, i1 false
  br i1 %or.cond124, label %bb.g, label %.preheader130.preheader

.preheader130.preheader:                          ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !tbaa !18
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ei = shl i64 %i.ah, 1                        ; 6 uses
  %.not148 = icmp eq i64 %i.ei, 0
  br i1 %.not148, label %.preheader, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.g
  %i.ej = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ek = sub i32 %i.ae, %i.ej
  %i.el = sub i32 %i.af, %i.ej
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i32 %6, -1
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %factor.i = shl nuw nsw i64 %i.eo, 1
  %i.ep = sext i32 %7 to i64
  %i.eq = sext i32 %i.ek to i64                   ; 2 uses
  %i.er = add nsw i32 %5, -1
  %i.es = zext nneg i32 %i.er to i64              ; 3 uses
  %factor.i126 = shl nuw nsw i64 %i.es, 1         ; 2 uses
  %min.iters.check272 = icmp ult i64 %i.ei, 8
  %n.vec274 = and i64 %i.ei, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.eq, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert275 = insertelement <8 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat276 = shufflevector <8 x i64> %broadcast.splatinsert275, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert277 = insertelement <8 x i64> poison, i64 %factor.i126, i64 0
  %broadcast.splat278 = shufflevector <8 x i64> %broadcast.splatinsert277, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n294 = icmp eq i64 %i.ei, %n.vec274
  br label %_mirror.exit

.preheader:                                       ; preds = %.preheader129, %bb.g
  %i.et = phi <4 x float> [ zeroinitializer, %bb.g ], [ %i.gl, %.preheader129 ]
  %i.eu = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = fmul reassoc nsz arcp contract afn <4 x float> %i.et, %i.ev
  store <4 x float> %i.ew, ptr %2, align 4, !tbaa !18
  br label %.loopexit

_mirror.exit:                                     ; preds = %.lr.ph144, %.preheader129
  %.0106143 = phi i64 [ 0, %.lr.ph144 ], [ %i.gm, %.preheader129 ] ; 3 uses
  %i.ex = phi <4 x float> [ zeroinitializer, %.lr.ph144 ], [ %i.gl, %.preheader129 ]
  %i.ey = add nsw i64 %.0106143, %i.em            ; 5 uses
  %i.ez = sub i64 0, %i.ey
  %i.fa = icmp slt i64 %i.ey, 0
  %i.fb = icmp samesign ugt i64 %i.ey, %i.eo
  %i.fc = sub nsw i64 %factor.i, %i.ey
  %spec.select = select i1 %i.fb, i64 %i.fc, i64 %i.ey
  %.0.i = select i1 %i.fa, i64 %i.ez, i64 %spec.select
  %i.fd = mul nsw i64 %.0.i, %i.ep
  %i.fe = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fd ; 2 uses
  br i1 %min.iters.check272, label %_mirror.exit127.preheader, label %vector.body279

vector.body279:                                   ; preds = %_mirror.exit, %vector.body279
  %index280 = phi i64 [ %index.next292, %vector.body279 ], [ 0, %_mirror.exit ] ; 2 uses
  %vec.phi281 = phi <8 x float> [ %i.fp, %vector.body279 ], [ zeroinitializer, %_mirror.exit ]
  %vec.phi282 = phi <8 x float> [ %i.fr, %vector.body279 ], [ zeroinitializer, %_mirror.exit ]
  %vec.phi283 = phi <8 x float> [ %i.ft, %vector.body279 ], [ zeroinitializer, %_mirror.exit ]
  %vec.phi284 = phi <8 x float> [ %i.fv, %vector.body279 ], [ zeroinitializer, %_mirror.exit ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body279 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %_mirror.exit ] ; 2 uses
  %i.ff = add nsw <8 x i64> %vec.ind, %broadcast.splat ; 5 uses
  %i.fg = sub <8 x i64> zeroinitializer, %i.ff
  %i.fh = icmp slt <8 x i64> %i.ff, zeroinitializer
  %i.fi = icmp ugt <8 x i64> %i.ff, %broadcast.splat276
  %i.fj = sub nsw <8 x i64> %broadcast.splat278, %i.ff
  %i.fk = select <8 x i1> %i.fi, <8 x i64> %i.fj, <8 x i64> %i.ff
  %i.fl = select <8 x i1> %i.fh, <8 x i64> %i.fg, <8 x i64> %i.fk
  %i.fm = shl nsw <8 x i64> %i.fl, splat (i64 4)
  %wide.gep = getelementptr inbounds i8, ptr %i.fe, <8 x i64> %i.fm ; 4 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !39
  %wide.gep285 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather286 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep285, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !39
  %wide.gep287 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather288 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep287, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !39
  %wide.gep289 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather290 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep289, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !39
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index280
  %wide.load291 = load <8 x float>, ptr %i.fn, align 32, !tbaa !18 ; 4 uses
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.load291
  %i.fp = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi281, %i.fo ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather286, %wide.load291
  %i.fr = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi282, %i.fq ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather288, %wide.load291
  %i.ft = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi283, %i.fs ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather290, %wide.load291
  %i.fv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi284, %i.fu ; 2 uses
  %index.next292 = add nuw i64 %index280, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.fw = icmp eq i64 %index.next292, %n.vec274
  br i1 %i.fw, label %middle.block293, label %vector.body279, !llvm.loop !43

middle.block293:                                  ; preds = %vector.body279
  %i.fx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fp)
  %i.fy = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fr)
  %i.fz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ft)
  %i.ga = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fv)
  %i.gb = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 1
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 2
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 3 ; 2 uses
  br i1 %cmp.n294, label %.preheader129, label %_mirror.exit127.preheader

_mirror.exit127.preheader:                        ; preds = %_mirror.exit, %middle.block293
  %.0105141.ph = phi i64 [ 0, %_mirror.exit ], [ %n.vec274, %middle.block293 ]
  %.ph = phi <4 x float> [ zeroinitializer, %_mirror.exit ], [ %i.ge, %middle.block293 ]
  br label %_mirror.exit127

.preheader129:                                    ; preds = %_mirror.exit127, %middle.block293
  %i.gf = phi <4 x float> [ %i.ge, %middle.block293 ], [ %i.ha, %_mirror.exit127 ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0106143
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !18
  %i.gi = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul reassoc nsz arcp contract afn <4 x float> %i.gf, %i.gj
  %i.gl = fadd reassoc nsz arcp contract afn <4 x float> %i.ex, %i.gk ; 2 uses
  %i.gm = add nuw nsw i64 %.0106143, 1            ; 2 uses
  %exitcond155.not = icmp eq i64 %i.gm, %i.ei
  br i1 %exitcond155.not, label %.preheader, label %_mirror.exit

_mirror.exit127:                                  ; preds = %_mirror.exit127.preheader, %_mirror.exit127
  %.0105141 = phi i64 [ %i.hb, %_mirror.exit127 ], [ %.0105141.ph, %_mirror.exit127.preheader ] ; 3 uses
  %i.gn = phi <4 x float> [ %i.ha, %_mirror.exit127 ], [ %.ph, %_mirror.exit127.preheader ]
  %i.go = add nsw i64 %.0105141, %i.eq            ; 5 uses
  %i.gp = sub i64 0, %i.go
  %i.gq = icmp slt i64 %i.go, 0
  %i.gr = icmp samesign ugt i64 %i.go, %i.es
  %i.gs = sub nsw i64 %factor.i126, %i.go
  %spec.select146 = select i1 %i.gr, i64 %i.gs, i64 %i.go
  %.0.i125 = select i1 %i.gq, i64 %i.gp, i64 %spec.select146
  %.idx = shl nsw i64 %.0.i125, 4
  %i.gt = getelementptr inbounds i8, ptr %i.fe, i64 %.idx
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0105141
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !18
  %i.gw = load <4 x float>, ptr %i.gt, align 4, !tbaa !18, !alias.scope !39
  %i.gx = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fmul reassoc nsz arcp contract afn <4 x float> %i.gw, %i.gy
  %i.ha = fadd reassoc nsz arcp contract afn <4 x float> %i.gn, %i.gz ; 2 uses
  %i.hb = add nuw nsw i64 %.0105141, 1            ; 2 uses
  %exitcond153.not = icmp eq i64 %i.hb, %i.ei
  br i1 %exitcond153.not, label %.preheader129, label %_mirror.exit127, !llvm.loop !44

.loopexit:                                        ; preds = %.preheader130.preheader, %.preheader, %.preheader131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define nonnull ptr @dt_interpolation_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %.thread [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 1, label %.thread.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str) #12 ; 5 uses
  %.not46 = icmp eq ptr %i.a, null
  br i1 %.not46, label %.loopexit.thread, label %.lr.ph41.split.preheader

.lr.ph41.split.preheader:                         ; preds = %bb.b
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(9) @.str.16) #15
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %.thread, label %.lr.ph41.split.1

.lr.ph41.split.1:                                 ; preds = %.lr.ph41.split.preheader
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.17) #15
  %.not30.1 = icmp eq i32 %i.c, 0
  br i1 %.not30.1, label %.thread, label %.lr.ph41.split.2

.lr.ph41.split.2:                                 ; preds = %.lr.ph41.split.1
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(9) @.str.18) #15
  %.not30.2 = icmp eq i32 %i.d, 0
end_hunk_0
