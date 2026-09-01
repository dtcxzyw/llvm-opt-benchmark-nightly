Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %scevgep753 = getelementptr i8, ptr %.3276.lcssa, i64 4
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.io
  %scevgep755 = getelementptr i8, ptr %.3280.lcssa, i64 2
  %i.ip = shl nuw nsw i64 %i.in, 1                ; 2 uses
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.ip
  %scevgep757 = getelementptr i8, ptr %.3285.lcssa, i64 2
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.ip
  %bound0 = icmp ult ptr %.3295.lcssa, %scevgep754
  %bound1 = icmp ult ptr %.3276.lcssa, %scevgep752
  %found.conflict = and i1 %bound0, %bound1
  %bound0759 = icmp ult ptr %.3295.lcssa, %scevgep756
  %bound1760 = icmp ult ptr %.3280.lcssa, %scevgep752
  %found.conflict761 = and i1 %bound0759, %bound1760
  %conflict.rdx762 = or i1 %found.conflict, %found.conflict761
  %bound0763 = icmp ult ptr %.3295.lcssa, %scevgep758
  %bound1764 = icmp ult ptr %.3285.lcssa, %scevgep752
  %found.conflict765 = and i1 %bound0763, %bound1764
  %conflict.rdx766 = or i1 %conflict.rdx762, %found.conflict765
  br i1 %conflict.rdx766, label %.lr.ph467.preheader, label %vector.main.loop.iter.check768

vector.main.loop.iter.check768:                   ; preds = %vector.memcheck751
  %min.iters.check769 = icmp ult i32 %i.ii, 31
  br i1 %min.iters.check769, label %vec.epilog.ph793, label %vector.ph770

vector.ph770:                                     ; preds = %vector.main.loop.iter.check768
  %i.iq = and i64 %i.ik, 24
  %n.vec771 = and i64 %i.ik, 8589934560           ; 6 uses
  %i.ir = shl nuw nsw i64 %n.vec771, 2            ; 2 uses
  %i.is = getelementptr i8, ptr %.3276.lcssa, i64 %i.ir
  %i.it = shl nuw nsw i64 %n.vec771, 1            ; 2 uses
  %i.iu = getelementptr i8, ptr %.3280.lcssa, i64 %i.it
  %i.iv = getelementptr i8, ptr %.3285.lcssa, i64 %i.it
  %i.iw = trunc i64 %n.vec771 to i32
  %i.ix = add i32 %.3290.lcssa, %i.iw
  %i.iy = getelementptr i8, ptr %.3295.lcssa, i64 %i.ir
  br label %vector.body772

vector.body772:                                   ; preds = %vector.body772, %vector.ph770
  %index773 = phi i64 [ 0, %vector.ph770 ], [ %index.next781, %vector.body772 ] ; 3 uses
  %i.iz = shl i64 %index773, 2                    ; 2 uses
  %next.gep774 = getelementptr i8, ptr %.3276.lcssa, i64 %i.iz
  %i.ja = shl i64 %index773, 1                    ; 2 uses
  %next.gep775 = getelementptr i8, ptr %.3280.lcssa, i64 %i.ja
  %next.gep776 = getelementptr i8, ptr %.3285.lcssa, i64 %i.ja
  %next.gep777 = getelementptr i8, ptr %.3295.lcssa, i64 %i.iz
  %wide.vec = load <64 x i16>, ptr %next.gep774, align 2, !tbaa !99, !alias.scope !101
  %i.jb = freeze <64 x i16> %wide.vec             ; 2 uses
  %i.jc = bitcast <64 x i16> %i.jb to <32 x i32>
  %i.jd = bitcast <64 x i16> %i.jb to <32 x i32>
  %i.je = and <32 x i32> %i.jd, splat (i32 -65536)
  %i.jf = shl <32 x i32> %i.jc, splat (i32 16)
  %i.jg = bitcast <32 x i32> %i.jf to <32 x float> ; 2 uses
  %i.jh = bitcast <32 x i32> %i.je to <32 x float> ; 2 uses
  %wide.load779 = load <32 x i16>, ptr %next.gep775, align 2, !tbaa !99, !alias.scope !104
  %i.ji = zext <32 x i16> %wide.load779 to <32 x i32>
  %i.jj = shl nuw <32 x i32> %i.ji, splat (i32 16)
  %i.jk = bitcast <32 x i32> %i.jj to <32 x float> ; 2 uses
  %wide.load780 = load <32 x i16>, ptr %next.gep776, align 2, !tbaa !99, !alias.scope !106
  %i.jl = zext <32 x i16> %wide.load780 to <32 x i32>
  %i.jm = shl nuw <32 x i32> %i.jl, splat (i32 16)
  %i.jn = bitcast <32 x i32> %i.jm to <32 x float> ; 2 uses
  %i.jo = fmul fast <32 x float> %i.jk, %i.jg
  %i.jp = fmul fast <32 x float> %i.jn, %i.jh
  %i.jq = fsub fast <32 x float> %i.jo, %i.jp
  %i.jr = bitcast <32 x float> %i.jq to <32 x i32>
  %i.js = lshr <32 x i32> %i.jr, splat (i32 16)
  %i.jt = trunc nuw <32 x i32> %i.js to <32 x i16>
  %i.ju = fmul fast <32 x float> %i.jn, %i.jg
  %i.jv = fmul fast <32 x float> %i.jk, %i.jh
  %i.jw = fadd fast <32 x float> %i.ju, %i.jv
  %i.jx = bitcast <32 x float> %i.jw to <32 x i32>
  %i.jy = lshr <32 x i32> %i.jx, splat (i32 16)
  %i.jz = trunc nuw <32 x i32> %i.jy to <32 x i16>
  %interleaved.vec = shufflevector <32 x i16> %i.jt, <32 x i16> %i.jz, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec, ptr %next.gep777, align 2, !tbaa !99, !alias.scope !108, !noalias !110
  %index.next781 = add nuw i64 %index773, 32      ; 2 uses
  %i.ka = icmp eq i64 %index.next781, %n.vec771
  br i1 %i.ka, label %middle.block782, label %vector.body772, !llvm.loop !111

middle.block782:                                  ; preds = %vector.body772
  %cmp.n783 = icmp eq i64 %i.ik, %n.vec771
  br i1 %cmp.n783, label %.loopexit, label %vec.epilog.iter.check791

vec.epilog.iter.check791:                         ; preds = %middle.block782
  %min.epilog.iters.check792 = icmp eq i64 %i.iq, 0
  br i1 %min.epilog.iters.check792, label %.lr.ph467.preheader, label %vec.epilog.ph793, !prof !112

vec.epilog.ph793:                                 ; preds = %vector.main.loop.iter.check768, %vec.epilog.iter.check791
  %vec.epilog.resume.val784 = phi i64 [ %n.vec771, %vec.epilog.iter.check791 ], [ 0, %vector.main.loop.iter.check768 ]
  %n.vec794 = and i64 %i.ik, 8589934584           ; 5 uses
  %i.kb = shl nuw nsw i64 %n.vec794, 2            ; 2 uses
  %i.kc = getelementptr i8, ptr %.3276.lcssa, i64 %i.kb
  %i.kd = shl nuw nsw i64 %n.vec794, 1            ; 2 uses
  %i.ke = getelementptr i8, ptr %.3280.lcssa, i64 %i.kd
  %i.kf = getelementptr i8, ptr %.3285.lcssa, i64 %i.kd
  %i.kg = trunc i64 %n.vec794 to i32
  %i.kh = add i32 %.3290.lcssa, %i.kg
  %i.ki = getelementptr i8, ptr %.3295.lcssa, i64 %i.kb
  br label %vec.epilog.vector.body795

vec.epilog.vector.body795:                        ; preds = %vec.epilog.vector.body795, %vec.epilog.ph793
  %index796 = phi i64 [ %vec.epilog.resume.val784, %vec.epilog.ph793 ], [ %index.next807, %vec.epilog.vector.body795 ] ; 3 uses
  %i.kj = shl i64 %index796, 2                    ; 2 uses
  %next.gep797 = getelementptr i8, ptr %.3276.lcssa, i64 %i.kj
  %i.kk = shl i64 %index796, 1                    ; 2 uses
  %next.gep798 = getelementptr i8, ptr %.3280.lcssa, i64 %i.kk
  %next.gep799 = getelementptr i8, ptr %.3285.lcssa, i64 %i.kk
  %next.gep800 = getelementptr i8, ptr %.3295.lcssa, i64 %i.kj
  %wide.vec801 = load <16 x i16>, ptr %next.gep797, align 2, !tbaa !99, !alias.scope !101
  %i.kl = freeze <16 x i16> %wide.vec801          ; 2 uses
  %i.km = bitcast <16 x i16> %i.kl to <8 x i32>
  %i.kn = bitcast <16 x i16> %i.kl to <8 x i32>
  %i.ko = and <8 x i32> %i.kn, splat (i32 -65536)
  %i.kp = shl <8 x i32> %i.km, splat (i32 16)
  %i.kq = bitcast <8 x i32> %i.kp to <8 x float>  ; 2 uses
  %i.kr = bitcast <8 x i32> %i.ko to <8 x float>  ; 2 uses
  %wide.load804 = load <8 x i16>, ptr %next.gep798, align 2, !tbaa !99, !alias.scope !104
  %i.ks = zext <8 x i16> %wide.load804 to <8 x i32>
  %i.kt = shl nuw <8 x i32> %i.ks, splat (i32 16)
  %i.ku = bitcast <8 x i32> %i.kt to <8 x float>  ; 2 uses
  %wide.load805 = load <8 x i16>, ptr %next.gep799, align 2, !tbaa !99, !alias.scope !106
  %i.kv = zext <8 x i16> %wide.load805 to <8 x i32>
  %i.kw = shl nuw <8 x i32> %i.kv, splat (i32 16)
  %i.kx = bitcast <8 x i32> %i.kw to <8 x float>  ; 2 uses
  %i.ky = fmul fast <8 x float> %i.ku, %i.kq
  %i.kz = fmul fast <8 x float> %i.kx, %i.kr
  %i.la = fsub fast <8 x float> %i.ky, %i.kz
  %i.lb = fmul fast <8 x float> %i.kx, %i.kq
  %i.lc = fmul fast <8 x float> %i.ku, %i.kr
  %i.ld = fadd fast <8 x float> %i.lb, %i.lc
  %i.le = shufflevector <8 x float> %i.la, <8 x float> %i.ld, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lf = bitcast <16 x float> %i.le to <16 x i32>
  %i.lg = lshr <16 x i32> %i.lf, splat (i32 16)
  %interleaved.vec806 = trunc nuw <16 x i32> %i.lg to <16 x i16>
  store <16 x i16> %interleaved.vec806, ptr %next.gep800, align 2, !tbaa !99, !alias.scope !108, !noalias !110
  %index.next807 = add nuw i64 %index796, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next807, %n.vec794
  br i1 %i.lh, label %vec.epilog.middle.block808, label %vec.epilog.vector.body795, !llvm.loop !113

vec.epilog.middle.block808:                       ; preds = %vec.epilog.vector.body795
  %cmp.n809 = icmp eq i64 %i.ik, %n.vec794
  br i1 %cmp.n809, label %.loopexit, label %.lr.ph467.preheader

.lr.ph467.preheader:                              ; preds = %vector.memcheck751, %iter.check789, %vec.epilog.iter.check791, %vec.epilog.middle.block808
  %.4466.ph = phi ptr [ %.3276.lcssa, %iter.check789 ], [ %.3276.lcssa, %vector.memcheck751 ], [ %i.is, %vec.epilog.iter.check791 ], [ %i.kc, %vec.epilog.middle.block808 ]
  %.4281465.ph = phi ptr [ %.3280.lcssa, %iter.check789 ], [ %.3280.lcssa, %vector.memcheck751 ], [ %i.iu, %vec.epilog.iter.check791 ], [ %i.ke, %vec.epilog.middle.block808 ]
  %.4286464.ph = phi ptr [ %.3285.lcssa, %iter.check789 ], [ %.3285.lcssa, %vector.memcheck751 ], [ %i.iv, %vec.epilog.iter.check791 ], [ %i.kf, %vec.epilog.middle.block808 ]
  %.4291463.ph = phi i32 [ %.3290.lcssa, %iter.check789 ], [ %.3290.lcssa, %vector.memcheck751 ], [ %i.ix, %vec.epilog.iter.check791 ], [ %i.kh, %vec.epilog.middle.block808 ]
  %.4296462.ph = phi ptr [ %.3295.lcssa, %iter.check789 ], [ %.3295.lcssa, %vector.memcheck751 ], [ %i.iy, %vec.epilog.iter.check791 ], [ %i.ki, %vec.epilog.middle.block808 ]
  br label %.lr.ph467

.lr.ph455:                                        ; preds = %.preheader415, %.lr.ph455
  %.3276454 = phi ptr [ %i.mf, %.lr.ph455 ], [ %.2275.lcssa, %.preheader415 ] ; 2 uses
  %.3280453 = phi ptr [ %i.mh, %.lr.ph455 ], [ %.2279.lcssa, %.preheader415 ] ; 2 uses
  %.3285452 = phi ptr [ %i.mi, %.lr.ph455 ], [ %.2284.lcssa, %.preheader415 ] ; 2 uses
  %.3290451 = phi i32 [ %i.mj, %.lr.ph455 ], [ %.2289.lcssa, %.preheader415 ]
  %.3295450 = phi ptr [ %i.mg, %.lr.ph455 ], [ %.2294.lcssa, %.preheader415 ] ; 2 uses
  %i.li = load i64, ptr %.3276454, align 1, !tbaa !56
  %i.lj = insertelement <2 x i64> poison, i64 %i.li, i64 0
  %i.lk = bitcast <2 x i64> %i.lj to <8 x i16>
  %i.ll = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lm = bitcast <8 x i16> %i.ll to <4 x float>  ; 2 uses
  %i.ln = load <2 x i16>, ptr %.3280453, align 2, !tbaa !99
  %i.lo = zext <2 x i16> %i.ln to <2 x i32>
  %i.lp = shl nuw <2 x i32> %i.lo, splat (i32 16)
  %i.lq = bitcast <2 x i32> %i.lp to <2 x float>
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ls = load <2 x i16>, ptr %.3285452, align 2, !tbaa !99
  %i.lt = zext <2 x i16> %i.ls to <2 x i32>
  %i.lu = shl nuw <2 x i32> %i.lt, splat (i32 16)
  %i.lv = bitcast <2 x i32> %i.lu to <2 x float>
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.lx = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ly = fmul fast <4 x float> %i.lw, %i.lx
  %i.lz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.lm, <4 x float> nofpclass(nan inf) %i.lr, <4 x float> nofpclass(nan inf) %i.ly)
  %i.ma = bitcast <4 x float> %i.lz to <4 x i32>
  %i.mb = lshr <4 x i32> %i.ma, splat (i32 16)
  %i.mc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mb, <4 x i32> poison)
  %i.md = bitcast <8 x i16> %i.mc to <2 x i64>
  %i.me = extractelement <2 x i64> %i.md, i64 0
  store i64 %i.me, ptr %.3295450, align 1, !tbaa !56
  %i.mf = getelementptr inbounds nuw i8, ptr %.3276454, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.3295450, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.3280453, i64 4 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.3285452, i64 4 ; 2 uses
  %i.mj = add nuw nsw i32 %.3290451, 2            ; 3 uses
  %i.mk = or disjoint i32 %i.mj, 1
  %i.ml = load i32, ptr %9, align 4, !tbaa !25
  %i.mm = sdiv i32 %i.ml, 2                       ; 2 uses
  %i.mn = icmp slt i32 %i.mk, %i.mm
  br i1 %i.mn, label %.lr.ph455, label %.preheader413, !llvm.loop !114

.lr.ph467:                                        ; preds = %.lr.ph467.preheader, %.lr.ph467
  %.4466 = phi ptr [ %i.nd, %.lr.ph467 ], [ %.4466.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4281465 = phi ptr [ %i.mo, %.lr.ph467 ], [ %.4281465.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4286464 = phi ptr [ %i.mq, %.lr.ph467 ], [ %.4286464.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4291463 = phi i32 [ %i.nf, %.lr.ph467 ], [ %.4291463.ph, %.lr.ph467.preheader ]
  %.4296462 = phi ptr [ %i.ne, %.lr.ph467 ], [ %.4296462.ph, %.lr.ph467.preheader ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.4281465, i64 2
  %i.mp = load i16, ptr %.4281465, align 2, !tbaa !99
  %10 = zext i16 %i.mp to i32
  %11 = shl nuw i32 %10, 16
  %i.mq = getelementptr inbounds nuw i8, ptr %.4286464, i64 2
  %i.mr = load i16, ptr %.4286464, align 2, !tbaa !99
  %12 = zext i16 %i.mr to i32
  %13 = shl nuw i32 %12, 16
  %14 = load <2 x i16>, ptr %.4466, align 2, !tbaa !99
  %15 = zext <2 x i16> %14 to <2 x i32>
  %16 = shl nuw <2 x i32> %15, splat (i32 16)     ; 2 uses
  %17 = bitcast <2 x i32> %16 to <2 x float>
  %i.ms = insertelement <2 x i32> poison, i32 %13, i64 0
  %18 = bitcast <2 x i32> %i.ms to <2 x float>
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = bitcast <2 x i32> %16 to <2 x float>
  %20 = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mu = fmul fast <2 x float> %19, %20          ; 2 uses
  %21 = insertelement <2 x i32> poison, i32 %11, i64 0
  %i.mv = bitcast <2 x i32> %21 to <2 x float>
  %22 = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fmul fast <2 x float> %22, %17          ; 2 uses
  %i.mx = fsub fast <2 x float> %i.mw, %i.mu
  %i.my = fadd fast <2 x float> %i.mw, %i.mu
  %i.mz = shufflevector <2 x float> %i.mx, <2 x float> %i.my, <2 x i32> <i32 0, i32 3>
  %i.na = bitcast <2 x float> %i.mz to <2 x i32>
  %i.nb = lshr <2 x i32> %i.na, splat (i32 16)
  %i.nc = trunc nuw <2 x i32> %i.nb to <2 x i16>
  store <2 x i16> %i.nc, ptr %.4296462, align 2, !tbaa !99
  %i.nd = getelementptr inbounds nuw i8, ptr %.4466, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %.4296462, i64 4
  %i.nf = add nuw nsw i32 %.4291463, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nf, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph467, !llvm.loop !115

bb.e:                                             ; preds = %bb.c
  %i.ng = load i32, ptr %9, align 4, !tbaa !25    ; 2 uses
  %i.nh = sdiv i32 %i.ng, 2                       ; 2 uses
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ni ; 2 uses
  %i.nk = load ptr, ptr %7, align 8, !tbaa !29
  %i.nl = load i32, ptr %i.r, align 4, !tbaa !24
  %i.nm = sext i32 %i.nl to i64
  %i.nn = mul nsw i64 %indvars.iv, %i.nm
  %i.no = load i64, ptr %i.s, align 8, !tbaa !23
  %i.np = mul i64 %i.nn, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.np ; 2 uses
  %i.nr = load ptr, ptr %8, align 8, !tbaa !29
  %i.ns = load i32, ptr %i.t, align 4, !tbaa !24
  %i.nt = sext i32 %i.ns to i64
  %i.nu = mul nsw i64 %indvars.iv, %i.nt
  %i.nv = load i64, ptr %i.u, align 8, !tbaa !23
  %i.nw = mul i64 %i.nu, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nw ; 2 uses
  %i.ny = mul i64 %i.as, %indvars.iv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ny ; 3 uses
  %i.oa = getelementptr inbounds [2 x i8], ptr %i.nz, i64 %i.ni ; 2 uses
  %i.ob = icmp sgt i32 %i.ng, 31
  br i1 %i.ob, label %.lr.ph475, label %.preheader412

.preheader412:                                    ; preds = %.lr.ph475, %bb.e
  %.pre-phi = phi i32 [ %i.nh, %bb.e ], [ %i.qq, %.lr.ph475 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.qh, %.lr.ph475 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.nj, %bb.e ], [ %i.qi, %.lr.ph475 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.nq, %bb.e ], [ %i.qj, %.lr.ph475 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.nx, %bb.e ], [ %i.qk, %.lr.ph475 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.nz, %bb.e ], [ %i.ql, %.lr.ph475 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.oa, %bb.e ], [ %i.qm, %.lr.ph475 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.qn, %.lr.ph475 ] ; 3 uses
  %i.oc = or disjoint i32 %.0247.lcssa, 7
  %i.od = icmp slt i32 %i.oc, %.pre-phi
  br i1 %i.od, label %.lr.ph490, label %.preheader411

.lr.ph475:                                        ; preds = %bb.e, %.lr.ph475
  %.0247474 = phi i32 [ %i.qn, %.lr.ph475 ], [ 0, %bb.e ]
  %.0248473 = phi ptr [ %i.qm, %.lr.ph475 ], [ %i.oa, %bb.e ] ; 2 uses
  %.0252472 = phi ptr [ %i.ql, %.lr.ph475 ], [ %i.nz, %bb.e ] ; 2 uses
  %.0256471 = phi ptr [ %i.qk, %.lr.ph475 ], [ %i.nx, %bb.e ] ; 2 uses
  %.0260470 = phi ptr [ %i.qj, %.lr.ph475 ], [ %i.nq, %bb.e ] ; 2 uses
  %.0264469 = phi ptr [ %i.qi, %.lr.ph475 ], [ %i.nj, %bb.e ] ; 2 uses
  %.0268468 = phi ptr [ %i.qh, %.lr.ph475 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.oe = load <16 x i16>, ptr %.0268468, align 1, !tbaa !56 ; 2 uses
  %i.of = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.oe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.og = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.oe, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.oh = shufflevector <16 x i16> %i.of, <16 x i16> %i.og, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oi = shufflevector <16 x i16> %i.of, <16 x i16> %i.og, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oj = bitcast <16 x i16> %i.oh to <8 x i32>
  %i.ok = bitcast <16 x i16> %i.oi to <8 x i32>
  %i.ol = shufflevector <8 x i32> %i.oj, <8 x i32> %i.ok, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.om = bitcast <16 x i32> %i.ol to <16 x float> ; 2 uses
  %i.on = load <16 x i16>, ptr %.0264469, align 1, !tbaa !56 ; 2 uses
  %i.oo = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.on, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.op = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.on, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.oq = shufflevector <16 x i16> %i.oo, <16 x i16> %i.op, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.or = shufflevector <16 x i16> %i.oo, <16 x i16> %i.op, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.os = bitcast <16 x i16> %i.oq to <8 x i32>
  %i.ot = bitcast <16 x i16> %i.or to <8 x i32>
  %i.ou = shufflevector <8 x i32> %i.os, <8 x i32> %i.ot, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ov = bitcast <16 x i32> %i.ou to <16 x float> ; 2 uses
  %i.ow = load <16 x i16>, ptr %.0260470, align 1, !tbaa !56 ; 2 uses
  %i.ox = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ow, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.oy = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ow, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.oz = shufflevector <16 x i16> %i.ox, <16 x i16> %i.oy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pa = shufflevector <16 x i16> %i.ox, <16 x i16> %i.oy, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pb = bitcast <16 x i16> %i.oz to <8 x i32>
  %i.pc = bitcast <16 x i16> %i.pa to <8 x i32>
  %i.pd = shufflevector <8 x i32> %i.pb, <8 x i32> %i.pc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pe = bitcast <16 x i32> %i.pd to <16 x float> ; 2 uses
  %i.pf = load <16 x i16>, ptr %.0256471, align 1, !tbaa !56 ; 2 uses
  %i.pg = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ph = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pf, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pi = shufflevector <16 x i16> %i.pg, <16 x i16> %i.ph, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pj = shufflevector <16 x i16> %i.pg, <16 x i16> %i.ph, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pk = bitcast <16 x i16> %i.pi to <8 x i32>
  %i.pl = bitcast <16 x i16> %i.pj to <8 x i32>
  %i.pm = shufflevector <8 x i32> %i.pk, <8 x i32> %i.pl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pn = bitcast <16 x i32> %i.pm to <16 x float> ; 2 uses
  %i.po = fmul fast <16 x float> %i.pe, %i.om
  %i.pp = fneg fast <16 x float> %i.ov
  %i.pq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.pp, <16 x float> nofpclass(nan inf) %i.pn, <16 x float> nofpclass(nan inf) %i.po)
  %i.pr = fmul fast <16 x float> %i.pe, %i.ov
  %i.ps = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.om, <16 x float> nofpclass(nan inf) %i.pn, <16 x float> nofpclass(nan inf) %i.pr)
  %i.pt = bitcast <16 x float> %i.pq to <16 x i32>
  %i.pu = lshr <16 x i32> %i.pt, splat (i32 16)   ; 2 uses
  %i.pv = shufflevector <16 x i32> %i.pu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pw = shufflevector <16 x i32> %i.pu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.px = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.pv, <8 x i32> %i.pw)
  %i.py = bitcast <16 x i16> %i.px to <4 x i64>
  %i.pz = shufflevector <4 x i64> %i.py, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.pz, ptr %.0252472, align 1, !tbaa !56
  %i.qa = bitcast <16 x float> %i.ps to <16 x i32>
  %i.qb = lshr <16 x i32> %i.qa, splat (i32 16)   ; 2 uses
  %i.qc = shufflevector <16 x i32> %i.qb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qd = shufflevector <16 x i32> %i.qb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qe = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qc, <8 x i32> %i.qd)
  %i.qf = bitcast <16 x i16> %i.qe to <4 x i64>
  %i.qg = shufflevector <4 x i64> %i.qf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qg, ptr %.0248473, align 1, !tbaa !56
  %i.qh = getelementptr inbounds nuw i8, ptr %.0268468, i64 32 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0264469, i64 32 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.0260470, i64 32 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0256471, i64 32 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0252472, i64 32 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0248473, i64 32 ; 2 uses
  %i.qn = add nuw nsw i32 %.0247474, 16           ; 3 uses
  %i.qo = or disjoint i32 %i.qn, 15
  %i.qp = load i32, ptr %9, align 4, !tbaa !25
  %i.qq = sdiv i32 %i.qp, 2                       ; 2 uses
  %i.qr = icmp slt i32 %i.qo, %i.qq
  br i1 %i.qr, label %.lr.ph475, label %.preheader412, !llvm.loop !116

.preheader411:                                    ; preds = %.lr.ph490, %.preheader412
  %.pre-phi577 = phi i32 [ %.pre-phi, %.preheader412 ], [ %i.sm, %.lr.ph490 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader412 ], [ %i.sd, %.lr.ph490 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader412 ], [ %i.se, %.lr.ph490 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader412 ], [ %i.sf, %.lr.ph490 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader412 ], [ %i.sg, %.lr.ph490 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader412 ], [ %i.sh, %.lr.ph490 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader412 ], [ %i.si, %.lr.ph490 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader412 ], [ %i.sj, %.lr.ph490 ] ; 3 uses
  %i.qs = or disjoint i32 %.1.lcssa, 3
  %i.qt = icmp slt i32 %i.qs, %.pre-phi577
  br i1 %i.qt, label %.lr.ph505, label %.preheader

.lr.ph490:                                        ; preds = %.preheader412, %.lr.ph490
  %.1489 = phi i32 [ %i.sj, %.lr.ph490 ], [ %.0247.lcssa, %.preheader412 ]
  %.1249488 = phi ptr [ %i.si, %.lr.ph490 ], [ %.0248.lcssa, %.preheader412 ] ; 2 uses
  %.1253487 = phi ptr [ %i.sh, %.lr.ph490 ], [ %.0252.lcssa, %.preheader412 ] ; 2 uses
  %.1257486 = phi ptr [ %i.sg, %.lr.ph490 ], [ %.0256.lcssa, %.preheader412 ] ; 2 uses
  %.1261485 = phi ptr [ %i.sf, %.lr.ph490 ], [ %.0260.lcssa, %.preheader412 ] ; 2 uses
  %.1265484 = phi ptr [ %i.se, %.lr.ph490 ], [ %.0264.lcssa, %.preheader412 ] ; 2 uses
  %.1269483 = phi ptr [ %i.sd, %.lr.ph490 ], [ %.0268.lcssa, %.preheader412 ] ; 2 uses
  %i.qu = load <8 x i16>, ptr %.1269483, align 1, !tbaa !56 ; 2 uses
  %i.qv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qx = shufflevector <8 x i16> %i.qv, <8 x i16> %i.qw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qy = bitcast <16 x i16> %i.qx to <8 x float> ; 2 uses
  %i.qz = load <8 x i16>, ptr %.1265484, align 1, !tbaa !56 ; 2 uses
  %i.ra = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rc = shufflevector <8 x i16> %i.ra, <8 x i16> %i.rb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rd = bitcast <16 x i16> %i.rc to <8 x float> ; 2 uses
  %i.re = load <8 x i16>, ptr %.1261485, align 1, !tbaa !56 ; 2 uses
  %i.rf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.re, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rh = shufflevector <8 x i16> %i.rf, <8 x i16> %i.rg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ri = bitcast <16 x i16> %i.rh to <8 x float> ; 2 uses
  %i.rj = load <8 x i16>, ptr %.1257486, align 1, !tbaa !56 ; 2 uses
  %i.rk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rm = shufflevector <8 x i16> %i.rk, <8 x i16> %i.rl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rn = bitcast <16 x i16> %i.rm to <8 x float> ; 2 uses
  %i.ro = fmul fast <8 x float> %i.ri, %i.qy
  %i.rp = fneg fast <8 x float> %i.rd
  %i.rq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.rp, <8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %i.ro)
  %i.rr = fmul fast <8 x float> %i.ri, %i.rd
  %i.rs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qy, <8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %i.rr)
  %i.rt = bitcast <8 x float> %i.rq to <8 x i32>
  %i.ru = lshr <8 x i32> %i.rt, splat (i32 16)    ; 2 uses
  %i.rv = shufflevector <8 x i32> %i.ru, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rw = shufflevector <8 x i32> %i.ru, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.rx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.rv, <4 x i32> %i.rw)
  store <8 x i16> %i.rx, ptr %.1253487, align 1, !tbaa !56
  %i.ry = bitcast <8 x float> %i.rs to <8 x i32>
  %i.rz = lshr <8 x i32> %i.ry, splat (i32 16)    ; 2 uses
  %i.sa = shufflevector <8 x i32> %i.rz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sb = shufflevector <8 x i32> %i.rz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sa, <4 x i32> %i.sb)
  store <8 x i16> %i.sc, ptr %.1249488, align 1, !tbaa !56
  %i.sd = getelementptr inbounds nuw i8, ptr %.1269483, i64 16 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.1265484, i64 16 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.1261485, i64 16 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.1257486, i64 16 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.1253487, i64 16 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.1249488, i64 16 ; 2 uses
  %i.sj = add nuw nsw i32 %.1489, 8               ; 3 uses
  %i.sk = or disjoint i32 %i.sj, 7
  %i.sl = load i32, ptr %9, align 4, !tbaa !25
  %i.sm = sdiv i32 %i.sl, 2                       ; 2 uses
  %i.sn = icmp slt i32 %i.sk, %i.sm
  br i1 %i.sn, label %.lr.ph490, label %.preheader411, !llvm.loop !117

.preheader:                                       ; preds = %.lr.ph505, %.preheader411
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader411 ], [ %i.xe, %.lr.ph505 ] ; 7 uses
end_hunk_0
