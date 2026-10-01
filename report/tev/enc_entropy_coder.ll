Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_entropy_coder?download=true
inline.NumInlined: 339
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi:bb.a
  %i.cf = phi <8 x i32> [ %i.ar, %.preheader78 ], [ %i.ar, %.preheader77.lr.ph ], [ %.lcssa, %._crit_edge.us94 ] ; 2 uses
  %i.cg = mul i64 %1, %0
  %.tr = trunc i64 %i.cg to i32
  %i.ch = shl i32 %.tr, 6
  %i.ci = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cj = add <8 x i32> %i.ci, %i.cf              ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.cl = add <8 x i32> %i.ck, %i.cj              ; 2 uses
  %i.cm = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.co = add <4 x i32> %i.cm, %i.cn
  %i.cp = extractelement <4 x i32> %i.co, i64 0
  %i.cq = add nsw i32 %i.cp, %i.ch                ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add i64 %3, -1
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = lshr i64 %i.ct, %4
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = and i64 %2, 4294967295                  ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !25
  %i.db = tail call i8 @llvm.umax.i8(i8 %i.da, i8 1)
  %umax = zext i8 %i.db to i64                    ; 6 uses
  %i.dc = tail call i8 @llvm.umax.i8(i8 %i.cy, i8 1)
  %umax111 = zext i8 %i.dc to i64
  %i.dd = shl nuw i64 1, %i.cw
  %i.de = and i64 %i.dd, 259551
  %min.iters.check.not = icmp eq i64 %i.de, 0
  %i.df = and i64 %2, 4294967293
  %min.iters.check121.not = icmp eq i64 %i.df, 24
  %i.dg = and i64 %umax, 28
  %n.vec = and i64 %umax, 224                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cv, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %umax
  %min.epilog.iters.check = icmp eq i64 %i.dg, 0
  %n.vec122 = and i64 %umax, 252                  ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec122, %umax
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.06298 = phi i64 [ %i.dp, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.dh = mul i64 %.06298, %6
  %invariant.gep = getelementptr [4 x i8], ptr %7, i64 %i.dh ; 3 uses
  br i1 %min.iters.check.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check121.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.di = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %i.dl = getelementptr i8, ptr %i.di, i64 96
  store <8 x i32> %broadcast.splat, ptr %i.di, align 4, !tbaa !28
  store <8 x i32> %broadcast.splat, ptr %i.dj, align 4, !tbaa !28
  store <8 x i32> %broadcast.splat, ptr %i.dk, align 4, !tbaa !28
  store <8 x i32> %broadcast.splat, ptr %i.dl, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %invariant.gep, i64 %index125
  store <4 x i32> %broadcast.splat124, ptr %i.dn, align 4, !tbaa !28
  %index.next126 = add nuw i64 %index125, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.097.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge99.split:                              ; preds = %._crit_edge
  ret i32 %i.cq

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dp = add nuw nsw i64 %.06298, 1              ; 2 uses
  %exitcond112.not = icmp eq i64 %i.dp, %umax111
  br i1 %exitcond112.not, label %._crit_edge99.split, label %iter.check, !llvm.loop !10

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.097 = phi i64 [ %i.dq, %vec.epilog.scalar.ph ], [ %.097.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.097
  store i32 %i.cv, ptr %gep, align 4, !tbaa !28
  %i.dq = add nuw nsw i64 %.097, 1                ; 2 uses
  %exitcond110.not = icmp eq i64 %i.dq, %umax
  br i1 %exitcond110.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !132
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 -2147483584, -2147483648) i32 @_ZN3jxl6N_AVX221NumNonZero8x8ExceptDCEPKiPi(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 {
.split:
  %i.a = load <8 x i32>, ptr %0, align 32, !tbaa !25
  %i.b = icmp ule <8 x i32> %i.a, <i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.c = sext <8 x i1> %i.b to <8 x i32>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <8 x i32>, ptr %i.d, align 32, !tbaa !25
  %i.f = icmp eq <8 x i32> %i.e, zeroinitializer
  %i.g = sext <8 x i1> %i.f to <8 x i32>
  %i.h = add nsw <8 x i32> %i.c, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load <8 x i32>, ptr %i.i, align 32, !tbaa !25
  %i.k = icmp eq <8 x i32> %i.j, zeroinitializer
  %i.l = sext <8 x i1> %i.k to <8 x i32>
  %i.m = add nsw <8 x i32> %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load <8 x i32>, ptr %i.n, align 32, !tbaa !25
  %i.p = icmp eq <8 x i32> %i.o, zeroinitializer
  %i.q = sext <8 x i1> %i.p to <8 x i32>
  %i.r = add nsw <8 x i32> %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load <8 x i32>, ptr %i.s, align 32, !tbaa !25
  %i.u = icmp eq <8 x i32> %i.t, zeroinitializer
  %i.v = sext <8 x i1> %i.u to <8 x i32>
  %i.w = add nsw <8 x i32> %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load <8 x i32>, ptr %i.x, align 32, !tbaa !25
  %i.z = icmp eq <8 x i32> %i.y, zeroinitializer
  %i.aa = sext <8 x i1> %i.z to <8 x i32>
  %i.ab = add nsw <8 x i32> %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load <8 x i32>, ptr %i.ac, align 32, !tbaa !25
  %i.ae = icmp eq <8 x i32> %i.ad, zeroinitializer
  %i.af = sext <8 x i1> %i.ae to <8 x i32>
  %i.ag = add nsw <8 x i32> %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load <8 x i32>, ptr %i.ah, align 32, !tbaa !25
  %i.aj = icmp eq <8 x i32> %i.ai, zeroinitializer
  %i.ak = sext <8 x i1> %i.aj to <8 x i32>
  %i.al = add nsw <8 x i32> %i.ag, %i.ak          ; 2 uses
  %i.am = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.an = add <8 x i32> %i.al, %i.am              ; 2 uses
  %i.ao = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ap = add <8 x i32> %i.ao, %i.an              ; 2 uses
  %i.aq = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.as = add <4 x i32> %i.aq, %i.ar
  %i.at = extractelement <4 x i32> %i.as, i64 0
  %i.au = add nsw i32 %i.at, 64                   ; 2 uses
  store i32 %i.au, ptr %1, align 4, !tbaa !28
  ret i32 %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_AVX220TokenizeCoefficientsEPKjRKNS_5RectTImEEPrPKiRKNS_15AcStrategyImageERKNS_22YCbCrChromaSubsamplingEPNS_6Image3IiEEPNSt3__16vectorINS_5TokenENSK_9allocatorISM_EEEERKNS_5PlaneIhEERKNSR_IiEERKNS_11BlockCtxMapE(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(22) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias noundef initializes((8, 16)) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %9) #7 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 4 uses
  %i.b = alloca [3 x i64], align 16               ; 7 uses
  %i.c = alloca [3 x ptr], align 16               ; 7 uses
  %i.d = alloca [3 x ptr], align 16               ; 7 uses
  %i.e = alloca [3 x i64], align 16               ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !41
  %i.l = mul i64 %i.g, 3
  %i.m = mul i64 %i.l, %i.i                       ; 2 uses
  %i.n = shl i64 %i.m, 6                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %bb.b, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.v = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.v, label %bb.c, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  unreachable

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i: ; preds = %bb.b
  %i.w = shl i64 %i.m, 9
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23 ; 8 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.n
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !41   ; 7 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !40    ; 6 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = add i64 %i.ac, -8
  %i.ae = sub i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check293 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check293, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, 4611686018427387888     ; 4 uses
  %i.ai = mul i64 %n.vec, -8                      ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.al ; 4 uses
  %next.gep294 = getelementptr i8, ptr %i.z, i64 %i.al ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %next.gep294, i64 -32
  %i.an = getelementptr inbounds i8, ptr %next.gep294, i64 -64
  %i.ao = getelementptr inbounds i8, ptr %next.gep294, i64 -96
  %i.ap = getelementptr inbounds i8, ptr %next.gep294, i64 -128
  %wide.load = load <4 x i64>, ptr %i.am, align 4, !noalias !184
  %wide.load295 = load <4 x i64>, ptr %i.an, align 4, !noalias !184
  %wide.load296 = load <4 x i64>, ptr %i.ao, align 4, !noalias !184
  %wide.load297 = load <4 x i64>, ptr %i.ap, align 4, !noalias !184
  %i.aq = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %i.ar = getelementptr inbounds i8, ptr %next.gep, i64 -64
  %i.as = getelementptr inbounds i8, ptr %next.gep, i64 -96
  %i.at = getelementptr inbounds i8, ptr %next.gep, i64 -128
  store <4 x i64> %wide.load, ptr %i.aq, align 4, !noalias !184
  store <4 x i64> %wide.load295, ptr %i.ar, align 4, !noalias !184
  store <4 x i64> %wide.load296, ptr %i.as, align 4, !noalias !184
  store <4 x i64> %wide.load297, ptr %i.at, align 4, !noalias !184
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !185

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec299 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.av = mul i64 %n.vec299, -8                   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av   ; 2 uses
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next304, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = mul i64 %index300, -8                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.x, i64 %i.ay
  %next.gep302 = getelementptr i8, ptr %i.z, i64 %i.ay
  %i.az = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i64>, ptr %i.az, align 4, !noalias !184
  %i.ba = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i64> %wide.load303, ptr %i.ba, align 4, !noalias !184
  %index.next304 = add nuw i64 %index300, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n305 = icmp eq i64 %i.ag, %n.vec299
  br i1 %cmp.n305, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph455 = phi ptr [ %i.x, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph455, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 3 uses
  %i.bf = load i64, ptr %i.bd, align 4, !noalias !184
  store i64 %i.bf, ptr %i.be, align 4, !noalias !184
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !143

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i
  %storemerge.i = phi ptr [ %i.x, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i ], [ %i.aw, %vec.epilog.middle.block ], [ %i.aj, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i, ptr %6, align 8, !tbaa !42
  store ptr %i.x, ptr %i.j, align 8, !tbaa !42
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !42
  store ptr %i.y, ptr %i.o, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.aa to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.bj) #24
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit

_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit: ; preds = %bb.a, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 7 uses
  %i.bm = lshr i64 %i.bl, 2
  %.not227 = icmp eq i64 %i.i, 0
  br i1 %.not227, label %.loopexit, label %.lr.ph226

.lr.ph226:                                        ; preds = %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bu, i64 64) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bx, i64 64) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not228 = icmp eq i64 %i.g, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph226, %._crit_edge224
  %.0124225 = phi i64 [ 0, %.lr.ph226 ], [ %i.yf, %._crit_edge224 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.cs = load i8, ptr %i.bn, align 1, !tbaa !50
  %i.ct = zext i8 %i.cs to i64                    ; 3 uses
  %i.cu = load i32, ptr %i.bo, align 8, !tbaa !28
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !25
  %i.cy = zext i8 %i.cx to i64
  %i.cz = sub nsw i64 %i.ct, %i.cy
  %i.da = lshr i64 %.0124225, %i.cz               ; 4 uses
  store i64 %i.da, ptr %i.b, align 16, !tbaa !51
  %i.db = load i32, ptr %i.bq, align 4, !tbaa !28
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !25
  %i.df = zext i8 %i.de to i64
  %i.dg = sub nsw i64 %i.ct, %i.df
  %i.dh = lshr i64 %.0124225, %i.dg               ; 4 uses
  store i64 %i.dh, ptr %i.bp, align 8, !tbaa !51
  %i.di = load i32, ptr %i.bs, align 8, !tbaa !28
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !25
  %i.dm = zext i8 %i.dl to i64
  %i.dn = sub nsw i64 %i.ct, %i.dm
  %i.do = lshr i64 %.0124225, %i.dn               ; 4 uses
  store i64 %i.do, ptr %i.br, align 16, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.dp = mul i64 %i.da, %i.bl
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64) ]
  store ptr %i.dq, ptr %i.c, align 16, !tbaa !53
  %i.dr = mul i64 %i.dh, %i.bl
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  store ptr %i.ds, ptr %i.bv, align 8, !tbaa !53
  %i.dt = mul i64 %i.do, %i.bl
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  store ptr %i.du, ptr %i.by, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.dv = icmp eq i64 %i.da, 0
  br i1 %i.dv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dw = add i64 %i.da, -1
  %i.dx = mul i64 %i.dw, %i.bl
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dy, i64 64) ]
end_hunk_0
begin_hunk_1_@_ZdlPvm
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #10 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #23 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #24 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #25 = { nounwind }
attributes #26 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #27 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = distinct !{!4, !26}
!5 = distinct !{!5, !26}
!6 = distinct !{!6, !26}
!7 = distinct !{!7, !26}
!8 = distinct !{!8, !26}
!9 = distinct !{!9, !26}
!10 = distinct !{!10, !26}
!11 = distinct !{!11, !26}
!12 = distinct !{!12, !26}
!13 = distinct !{!13, !26}
!14 = distinct !{!14, !26}
!15 = distinct !{!15, !26}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!21, !21, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!22, !22, i64 0}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"long", !21, i64 0}
!32 = !{!"_ZTSN3jxl5RectTImEE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!33 = !{!32, !31, i64 16}
!34 = !{!32, !31, i64 24}
!35 = !{!"any pointer", !21, i64 0}
!36 = !{!"p1 _ZTSN3jxl5TokenE", !35, i64 0}
!37 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl5TokenELi0ELb0EEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5TokenENS_9allocatorIS2_EEEE", !37, i64 0}
!39 = !{!"_ZTSNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEEE", !36, i64 0, !36, i64 8, !38, i64 16}
!40 = !{!39, !36, i64 0}
!41 = !{!39, !36, i64 8}
!42 = !{!36, !36, i64 0}
!43 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !35, i64 0}
!44 = !{!"_ZTSN3jxl13AlignedMemoryE", !35, i64 0, !43, i64 8, !35, i64 16}
!45 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !31, i64 16, !44, i64 24, !31, i64 48}
!46 = !{!45, !31, i64 16}
!47 = !{!44, !35, i64 16}
!48 = !{!"_ZTSN3jxl6FieldsE"}
!49 = !{!"_ZTSN3jxl22YCbCrChromaSubsamplingE", !48, i64 0, !21, i64 8, !21, i64 20, !21, i64 21}
!50 = !{!49, !21, i64 21}
!51 = !{!31, !31, i64 0}
!52 = !{!"p1 int", !35, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!32, !31, i64 8}
!55 = !{!32, !31, i64 0}
!56 = !{!49, !21, i64 20}
!57 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !52, i64 0}
!58 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !57, i64 0}
!59 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !52, i64 0, !52, i64 8, !58, i64 16}
!60 = !{!59, !52, i64 0}
!61 = !{!59, !52, i64 8}
!62 = !{!"p1 omnipotent char", !35, i64 0}
!63 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !62, i64 0}
!64 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !63, i64 0}
!65 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !62, i64 0, !62, i64 8, !64, i64 16}
!66 = !{!"_ZTSN3jxl11BlockCtxMapE", !21, i64 0, !59, i64 72, !65, i64 96, !31, i64 120, !31, i64 128}
!67 = !{!66, !31, i64 128}
!68 = !{!65, !62, i64 0}
!69 = !{!66, !31, i64 120}
!70 = !{!"_ZTSN3jxl5TokenE", !22, i64 0, !22, i64 0, !22, i64 4}
!71 = !{!70, !22, i64 4}
!72 = !{!"short", !21, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"branch_weights", i32 4, i32 28}
!75 = !{!35, !35, i64 0}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !26, !29, !30}
!78 = distinct !{!78, !26, !30, !29}
!79 = distinct !{!79, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!80 = distinct !{!80, !79, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!81 = distinct !{!81, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!82 = distinct !{!82, !81, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!83 = distinct !{!83, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!84 = distinct !{!84, !83, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!85 = distinct !{!85, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!86 = distinct !{!86, !85, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!87 = distinct !{!87, !"_ZN3jxl6N_SSE421NumNonZero8x8ExceptDCEPKiPi"}
!88 = distinct !{!88, !87, !"_ZN3jxl6N_SSE421NumNonZero8x8ExceptDCEPKiPi: argument 0"}
!89 = distinct !{!89, !87, !"_ZN3jxl6N_SSE421NumNonZero8x8ExceptDCEPKiPi: argument 1"}
!90 = distinct !{!90, !"_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi"}
!91 = distinct !{!91, !90, !"_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi: argument 0"}
!92 = distinct !{!92, !90, !"_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi: argument 1"}
!93 = distinct !{!93, !26, !29, !30}
!94 = distinct !{!94, !26, !30, !29}
!95 = distinct !{!95, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi"}
!96 = distinct !{!96, !95, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi: argument 0"}
!97 = distinct !{!97, !95, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi: argument 1"}
!98 = distinct !{!98, !29, !30}
!99 = distinct !{!99, !30, !29}
!100 = distinct !{!100, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!101 = distinct !{!101, !100, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!102 = distinct !{!102, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!103 = distinct !{!103, !102, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!104 = distinct !{!104, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!105 = distinct !{!105, !104, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!106 = distinct !{!106, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!107 = distinct !{!107, !106, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!108 = distinct !{!108, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!109 = distinct !{!109, !108, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!110 = distinct !{!110, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!111 = distinct !{!111, !110, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!112 = distinct !{!112, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!113 = distinct !{!113, !112, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!114 = distinct !{!114, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!115 = distinct !{!115, !114, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!116 = distinct !{!116, !26}
!117 = distinct !{!117, !26}
!118 = distinct !{!118, !26}
!119 = !{!86, !84, !82, !80}
!120 = !{!88}
!121 = !{!89}
!122 = !{!91}
!123 = !{!92}
!124 = !{!91, !92}
!125 = !{!96}
!126 = !{!97}
!127 = !{!107, !105, !103, !101}
!128 = !{!115, !113, !111, !109}
!129 = distinct !{!129, !27}
!130 = distinct !{!130, !26, !29, !30}
!131 = distinct !{!131, !26, !29, !30}
!132 = distinct !{!132, !26, !30, !29}
!133 = distinct !{!133, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!134 = distinct !{!134, !133, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!135 = distinct !{!135, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!136 = distinct !{!136, !135, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!137 = distinct !{!137, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!138 = distinct !{!138, !137, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!139 = distinct !{!139, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!140 = distinct !{!140, !139, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!141 = distinct !{!141, !26, !29, !30}
!142 = distinct !{!142, !26, !29, !30}
!143 = distinct !{!143, !26, !30, !29}
!144 = distinct !{!144, !"_ZN3jxl6N_AVX221NumNonZero8x8ExceptDCEPKiPi"}
!145 = distinct !{!145, !144, !"_ZN3jxl6N_AVX221NumNonZero8x8ExceptDCEPKiPi: argument 0"}
!146 = distinct !{!146, !144, !"_ZN3jxl6N_AVX221NumNonZero8x8ExceptDCEPKiPi: argument 1"}
!147 = distinct !{!147, !"_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi"}
!148 = distinct !{!148, !147, !"_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi: argument 0"}
!149 = distinct !{!149, !147, !"_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi: argument 1"}
!150 = distinct !{!150, !26, !29, !30}
!151 = distinct !{!151, !26, !29, !30}
!152 = distinct !{!152, !26, !30, !29}
!153 = distinct !{!153, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi"}
!154 = distinct !{!154, !153, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi: argument 0"}
!155 = distinct !{!155, !153, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi: argument 1"}
!156 = distinct !{!156, !29, !30}
!157 = distinct !{!157, !29, !30}
!158 = distinct !{!158, !30, !29}
!159 = distinct !{!159, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!160 = distinct !{!160, !159, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!161 = distinct !{!161, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!162 = distinct !{!162, !161, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!163 = distinct !{!163, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!164 = distinct !{!164, !163, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!165 = distinct !{!165, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!166 = distinct !{!166, !165, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!167 = distinct !{!167, !26, !29, !30}
!168 = distinct !{!168, !26, !29, !30}
!169 = distinct !{!169, !26, !29}
!170 = distinct !{!170, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!171 = distinct !{!171, !170, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!172 = distinct !{!172, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!173 = distinct !{!173, !172, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!174 = distinct !{!174, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!175 = distinct !{!175, !174, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!176 = distinct !{!176, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!177 = distinct !{!177, !176, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!178 = distinct !{!178, !26, !29, !30}
!179 = distinct !{!179, !26, !29, !30}
!180 = distinct !{!180, !26, !29}
!181 = distinct !{!181, !26}
!182 = distinct !{!182, !26}
!183 = distinct !{!183, !26}
!184 = !{!140, !138, !136, !134}
!185 = !{!"branch_weights", i32 4, i32 12}
!186 = !{!145}
!187 = !{!146}
!188 = !{!148}
!189 = !{!149}
!190 = !{!148, !149}
!191 = !{!154}
!192 = !{!155}
!193 = !{!166, !164, !162, !160}
!194 = !{!177, !175, !173, !171}
!195 = distinct !{!195, !27}
!196 = distinct !{!196, !26, !29, !30}
!197 = distinct !{!197, !26, !30, !29}
!198 = distinct !{!198, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!199 = distinct !{!199, !198, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!200 = distinct !{!200, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!201 = distinct !{!201, !200, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!202 = distinct !{!202, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!203 = distinct !{!203, !202, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!204 = distinct !{!204, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!205 = distinct !{!205, !204, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!206 = distinct !{!206, !"_ZN3jxl6N_SSE221NumNonZero8x8ExceptDCEPKiPi"}
!207 = distinct !{!207, !206, !"_ZN3jxl6N_SSE221NumNonZero8x8ExceptDCEPKiPi: argument 0"}
!208 = distinct !{!208, !206, !"_ZN3jxl6N_SSE221NumNonZero8x8ExceptDCEPKiPi: argument 1"}
!209 = distinct !{!209, !"_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi"}
!210 = distinct !{!210, !209, !"_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi: argument 0"}
!211 = distinct !{!211, !209, !"_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi: argument 1"}
!212 = distinct !{!212, !26, !29, !30}
!213 = distinct !{!213, !26, !30, !29}
!214 = distinct !{!214, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi"}
!215 = distinct !{!215, !214, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi: argument 0"}
!216 = distinct !{!216, !214, !"_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi: argument 1"}
!217 = distinct !{!217, !29, !30}
!218 = distinct !{!218, !30, !29}
!219 = distinct !{!219, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!220 = distinct !{!220, !219, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!221 = distinct !{!221, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!222 = distinct !{!222, !221, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!223 = distinct !{!223, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!224 = distinct !{!224, !223, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!225 = distinct !{!225, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!226 = distinct !{!226, !225, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!227 = distinct !{!227, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_"}
!228 = distinct !{!228, !227, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl5TokenEEES6_S6_EENS_4pairIT0_T2_EES8_T1_S9_: argument 0"}
!229 = distinct !{!229, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_"}
!230 = distinct !{!230, !229, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl5TokenEEES9_S9_EENS_4pairIT2_T4_EESB_T3_SC_: argument 0"}
!231 = distinct !{!231, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_"}
!232 = distinct !{!232, !231, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl5TokenEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SF_EESD_SE_SF_: argument 0"}
!233 = distinct !{!233, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_"}
!234 = distinct !{!234, !233, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl5TokenEEES8_S8_EENS_4pairIT_T1_EESA_T0_SB_: argument 0"}
!235 = distinct !{!235, !26}
!236 = distinct !{!236, !26}
!237 = distinct !{!237, !26}
!238 = !{!205, !203, !201, !199}
!239 = !{!207}
!240 = !{!208}
!241 = !{!210}
!242 = !{!211}
!243 = !{!210, !211}
!244 = !{!215}
!245 = !{!216}
!246 = !{!226, !224, !222, !220}
!247 = !{!234, !232, !230, !228}
end_hunk_1
