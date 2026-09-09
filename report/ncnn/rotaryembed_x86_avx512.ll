Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
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
  %wide.vec = load <64 x i16>, ptr %next.gep774, align 2, !tbaa !116, !alias.scope !117
  %i.jb = freeze <64 x i16> %wide.vec             ; 2 uses
  %i.jc = bitcast <64 x i16> %i.jb to <32 x i32>
  %i.jd = bitcast <64 x i16> %i.jb to <32 x i32>
  %i.je = and <32 x i32> %i.jd, splat (i32 -65536)
  %i.jf = shl <32 x i32> %i.jc, splat (i32 16)
  %i.jg = bitcast <32 x i32> %i.jf to <32 x float> ; 2 uses
  %i.jh = bitcast <32 x i32> %i.je to <32 x float> ; 2 uses
  %wide.load779 = load <32 x i16>, ptr %next.gep775, align 2, !tbaa !116, !alias.scope !118
  %i.ji = zext <32 x i16> %wide.load779 to <32 x i32>
  %i.jj = shl nuw <32 x i32> %i.ji, splat (i32 16)
  %i.jk = bitcast <32 x i32> %i.jj to <32 x float> ; 2 uses
  %wide.load780 = load <32 x i16>, ptr %next.gep776, align 2, !tbaa !116, !alias.scope !119
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
  store <64 x i16> %interleaved.vec, ptr %next.gep777, align 2, !tbaa !116, !alias.scope !120, !noalias !121
  %index.next781 = add nuw i64 %index773, 32      ; 2 uses
  %i.ka = icmp eq i64 %index.next781, %n.vec771
  br i1 %i.ka, label %middle.block782, label %vector.body772, !llvm.loop !102

middle.block782:                                  ; preds = %vector.body772
  %cmp.n783 = icmp eq i64 %i.ik, %n.vec771
  br i1 %cmp.n783, label %.loopexit, label %vec.epilog.iter.check791

vec.epilog.iter.check791:                         ; preds = %middle.block782
  %min.epilog.iters.check792 = icmp eq i64 %i.iq, 0
  br i1 %min.epilog.iters.check792, label %.lr.ph467.preheader, label %vec.epilog.ph793, !prof !122

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
  %wide.vec801 = load <16 x i16>, ptr %next.gep797, align 2, !tbaa !116, !alias.scope !117
  %i.kl = freeze <16 x i16> %wide.vec801          ; 2 uses
  %i.km = bitcast <16 x i16> %i.kl to <8 x i32>
  %i.kn = bitcast <16 x i16> %i.kl to <8 x i32>
  %i.ko = and <8 x i32> %i.kn, splat (i32 -65536)
  %i.kp = shl <8 x i32> %i.km, splat (i32 16)
  %i.kq = bitcast <8 x i32> %i.kp to <8 x float>  ; 2 uses
  %i.kr = bitcast <8 x i32> %i.ko to <8 x float>  ; 2 uses
  %wide.load804 = load <8 x i16>, ptr %next.gep798, align 2, !tbaa !116, !alias.scope !118
  %i.ks = zext <8 x i16> %wide.load804 to <8 x i32>
  %i.kt = shl nuw <8 x i32> %i.ks, splat (i32 16)
  %i.ku = bitcast <8 x i32> %i.kt to <8 x float>  ; 2 uses
  %wide.load805 = load <8 x i16>, ptr %next.gep799, align 2, !tbaa !116, !alias.scope !119
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
  store <16 x i16> %interleaved.vec806, ptr %next.gep800, align 2, !tbaa !116, !alias.scope !120, !noalias !121
  %index.next807 = add nuw i64 %index796, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next807, %n.vec794
  br i1 %i.lh, label %vec.epilog.middle.block808, label %vec.epilog.vector.body795, !llvm.loop !103

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
  %i.li = load i64, ptr %.3276454, align 1, !tbaa !42
  %i.lj = insertelement <2 x i64> poison, i64 %i.li, i64 0
  %i.lk = bitcast <2 x i64> %i.lj to <8 x i16>
  %i.ll = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lm = bitcast <8 x i16> %i.ll to <4 x float>  ; 2 uses
  %i.ln = load <2 x i16>, ptr %.3280453, align 2, !tbaa !116
  %i.lo = zext <2 x i16> %i.ln to <2 x i32>
  %i.lp = shl nuw <2 x i32> %i.lo, splat (i32 16)
  %i.lq = bitcast <2 x i32> %i.lp to <2 x float>
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ls = load <2 x i16>, ptr %.3285452, align 2, !tbaa !116
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
  store i64 %i.me, ptr %.3295450, align 1, !tbaa !42
  %i.mf = getelementptr inbounds nuw i8, ptr %.3276454, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.3295450, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.3280453, i64 4 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.3285452, i64 4 ; 2 uses
  %i.mj = add nuw nsw i32 %.3290451, 2            ; 3 uses
  %i.mk = or disjoint i32 %i.mj, 1
  %i.ml = load i32, ptr %9, align 4, !tbaa !21
  %i.mm = sdiv i32 %i.ml, 2                       ; 2 uses
  %i.mn = icmp slt i32 %i.mk, %i.mm
  br i1 %i.mn, label %.lr.ph455, label %.preheader413, !llvm.loop !104

.lr.ph467:                                        ; preds = %.lr.ph467.preheader, %.lr.ph467
  %.4466 = phi ptr [ %i.nj, %.lr.ph467 ], [ %.4466.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4281465 = phi ptr [ %i.mo, %.lr.ph467 ], [ %.4281465.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4286464 = phi ptr [ %i.mq, %.lr.ph467 ], [ %.4286464.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4291463 = phi i32 [ %i.nl, %.lr.ph467 ], [ %.4291463.ph, %.lr.ph467.preheader ]
  %.4296462 = phi ptr [ %i.nk, %.lr.ph467 ], [ %.4296462.ph, %.lr.ph467.preheader ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.4281465, i64 2
  %i.mp = load i16, ptr %.4281465, align 2, !tbaa !116
  %i.mq = getelementptr inbounds nuw i8, ptr %.4286464, i64 2
  %i.mr = load i16, ptr %.4286464, align 2, !tbaa !116
  %i.ms = load <2 x i16>, ptr %.4466, align 2, !tbaa !116
  %i.mt = zext <2 x i16> %i.ms to <2 x i32>
  %i.mu = shl nuw <2 x i32> %i.mt, splat (i32 16) ; 2 uses
  %i.mv = bitcast <2 x i32> %i.mu to <2 x float>
  %i.mw = zext i16 %i.mr to i32
  %i.mx = zext i16 %i.mp to i32
  %10 = shl nuw i32 %i.mw, 16
  %11 = shl nuw i32 %i.mx, 16
  %i.my = insertelement <2 x i32> poison, i32 %10, i64 0
  %12 = bitcast <2 x i32> %i.my to <2 x float>
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mz = bitcast <2 x i32> %i.mu to <2 x float>
  %14 = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.na = fmul fast <2 x float> %13, %14          ; 2 uses
  %15 = insertelement <2 x i32> poison, i32 %11, i64 0
  %i.nb = bitcast <2 x i32> %15 to <2 x float>
  %16 = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = fmul fast <2 x float> %16, %i.mv        ; 2 uses
  %i.nd = fsub fast <2 x float> %i.nc, %i.na
  %i.ne = fadd fast <2 x float> %i.nc, %i.na
  %i.nf = shufflevector <2 x float> %i.nd, <2 x float> %i.ne, <2 x i32> <i32 0, i32 3>
  %i.ng = bitcast <2 x float> %i.nf to <2 x i32>
  %i.nh = lshr <2 x i32> %i.ng, splat (i32 16)
  %i.ni = trunc nuw <2 x i32> %i.nh to <2 x i16>
  store <2 x i16> %i.ni, ptr %.4296462, align 2, !tbaa !116
  %i.nj = getelementptr inbounds nuw i8, ptr %.4466, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.4296462, i64 4
  %i.nl = add nuw nsw i32 %.4291463, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nl, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph467, !llvm.loop !105

bb.e:                                             ; preds = %bb.c
  %i.nm = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.nn = sdiv i32 %i.nm, 2                       ; 2 uses
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  %i.np = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.no ; 2 uses
  %i.nq = load ptr, ptr %7, align 8, !tbaa !25
  %i.nr = load i32, ptr %i.r, align 4, !tbaa !20
  %i.ns = sext i32 %i.nr to i64
  %i.nt = mul nsw i64 %indvars.iv, %i.ns
  %i.nu = load i64, ptr %i.s, align 8, !tbaa !19
  %i.nv = mul i64 %i.nt, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nv ; 2 uses
  %i.nx = load ptr, ptr %8, align 8, !tbaa !25
  %i.ny = load i32, ptr %i.t, align 4, !tbaa !20
  %i.nz = sext i32 %i.ny to i64
  %i.oa = mul nsw i64 %indvars.iv, %i.nz
  %i.ob = load i64, ptr %i.u, align 8, !tbaa !19
  %i.oc = mul i64 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oc ; 2 uses
  %i.oe = mul i64 %i.as, %indvars.iv
  %i.of = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.oe ; 3 uses
  %i.og = getelementptr inbounds [2 x i8], ptr %i.of, i64 %i.no ; 2 uses
  %i.oh = icmp sgt i32 %i.nm, 31
  br i1 %i.oh, label %.lr.ph475, label %.preheader412

.preheader412:                                    ; preds = %.lr.ph475, %bb.e
  %.pre-phi = phi i32 [ %i.nn, %bb.e ], [ %i.qw, %.lr.ph475 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.qn, %.lr.ph475 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.np, %bb.e ], [ %i.qo, %.lr.ph475 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.nw, %bb.e ], [ %i.qp, %.lr.ph475 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.od, %bb.e ], [ %i.qq, %.lr.ph475 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.of, %bb.e ], [ %i.qr, %.lr.ph475 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.og, %bb.e ], [ %i.qs, %.lr.ph475 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.qt, %.lr.ph475 ] ; 3 uses
  %i.oi = or disjoint i32 %.0247.lcssa, 7
  %i.oj = icmp slt i32 %i.oi, %.pre-phi
  br i1 %i.oj, label %.lr.ph490, label %.preheader411

.lr.ph475:                                        ; preds = %bb.e, %.lr.ph475
  %.0247474 = phi i32 [ %i.qt, %.lr.ph475 ], [ 0, %bb.e ]
  %.0248473 = phi ptr [ %i.qs, %.lr.ph475 ], [ %i.og, %bb.e ] ; 2 uses
  %.0252472 = phi ptr [ %i.qr, %.lr.ph475 ], [ %i.of, %bb.e ] ; 2 uses
  %.0256471 = phi ptr [ %i.qq, %.lr.ph475 ], [ %i.od, %bb.e ] ; 2 uses
  %.0260470 = phi ptr [ %i.qp, %.lr.ph475 ], [ %i.nw, %bb.e ] ; 2 uses
  %.0264469 = phi ptr [ %i.qo, %.lr.ph475 ], [ %i.np, %bb.e ] ; 2 uses
  %.0268468 = phi ptr [ %i.qn, %.lr.ph475 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.ok = load <16 x i16>, ptr %.0268468, align 1, !tbaa !42 ; 2 uses
  %i.ol = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ok, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.om = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ok, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.on = shufflevector <16 x i16> %i.ol, <16 x i16> %i.om, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oo = shufflevector <16 x i16> %i.ol, <16 x i16> %i.om, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.op = bitcast <16 x i16> %i.on to <8 x i32>
  %i.oq = bitcast <16 x i16> %i.oo to <8 x i32>
  %i.or = shufflevector <8 x i32> %i.op, <8 x i32> %i.oq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.os = bitcast <16 x i32> %i.or to <16 x float> ; 2 uses
  %i.ot = load <16 x i16>, ptr %.0264469, align 1, !tbaa !42 ; 2 uses
  %i.ou = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ot, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ov = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ot, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ow = shufflevector <16 x i16> %i.ou, <16 x i16> %i.ov, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ox = shufflevector <16 x i16> %i.ou, <16 x i16> %i.ov, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oy = bitcast <16 x i16> %i.ow to <8 x i32>
  %i.oz = bitcast <16 x i16> %i.ox to <8 x i32>
  %i.pa = shufflevector <8 x i32> %i.oy, <8 x i32> %i.oz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pb = bitcast <16 x i32> %i.pa to <16 x float> ; 2 uses
  %i.pc = load <16 x i16>, ptr %.0260470, align 1, !tbaa !42 ; 2 uses
  %i.pd = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pe = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pf = shufflevector <16 x i16> %i.pd, <16 x i16> %i.pe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pg = shufflevector <16 x i16> %i.pd, <16 x i16> %i.pe, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ph = bitcast <16 x i16> %i.pf to <8 x i32>
  %i.pi = bitcast <16 x i16> %i.pg to <8 x i32>
  %i.pj = shufflevector <8 x i32> %i.ph, <8 x i32> %i.pi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pk = bitcast <16 x i32> %i.pj to <16 x float> ; 2 uses
  %i.pl = load <16 x i16>, ptr %.0256471, align 1, !tbaa !42 ; 2 uses
  %i.pm = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pn = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.po = shufflevector <16 x i16> %i.pm, <16 x i16> %i.pn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pp = shufflevector <16 x i16> %i.pm, <16 x i16> %i.pn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pq = bitcast <16 x i16> %i.po to <8 x i32>
  %i.pr = bitcast <16 x i16> %i.pp to <8 x i32>
  %i.ps = shufflevector <8 x i32> %i.pq, <8 x i32> %i.pr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pt = bitcast <16 x i32> %i.ps to <16 x float> ; 2 uses
  %i.pu = fmul fast <16 x float> %i.pk, %i.os
  %i.pv = fneg fast <16 x float> %i.pb
  %i.pw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.pv, <16 x float> nofpclass(nan inf) %i.pt, <16 x float> nofpclass(nan inf) %i.pu)
  %i.px = fmul fast <16 x float> %i.pk, %i.pb
  %i.py = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.os, <16 x float> nofpclass(nan inf) %i.pt, <16 x float> nofpclass(nan inf) %i.px)
  %i.pz = bitcast <16 x float> %i.pw to <16 x i32>
  %i.qa = lshr <16 x i32> %i.pz, splat (i32 16)   ; 2 uses
  %i.qb = shufflevector <16 x i32> %i.qa, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qc = shufflevector <16 x i32> %i.qa, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qd = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qb, <8 x i32> %i.qc)
  %i.qe = bitcast <16 x i16> %i.qd to <4 x i64>
  %i.qf = shufflevector <4 x i64> %i.qe, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qf, ptr %.0252472, align 1, !tbaa !42
  %i.qg = bitcast <16 x float> %i.py to <16 x i32>
  %i.qh = lshr <16 x i32> %i.qg, splat (i32 16)   ; 2 uses
  %i.qi = shufflevector <16 x i32> %i.qh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qj = shufflevector <16 x i32> %i.qh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qk = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qi, <8 x i32> %i.qj)
  %i.ql = bitcast <16 x i16> %i.qk to <4 x i64>
  %i.qm = shufflevector <4 x i64> %i.ql, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qm, ptr %.0248473, align 1, !tbaa !42
  %i.qn = getelementptr inbounds nuw i8, ptr %.0268468, i64 32 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.0264469, i64 32 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0260470, i64 32 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0256471, i64 32 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0252472, i64 32 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0248473, i64 32 ; 2 uses
  %i.qt = add nuw nsw i32 %.0247474, 16           ; 3 uses
  %i.qu = or disjoint i32 %i.qt, 15
  %i.qv = load i32, ptr %9, align 4, !tbaa !21
  %i.qw = sdiv i32 %i.qv, 2                       ; 2 uses
  %i.qx = icmp slt i32 %i.qu, %i.qw
  br i1 %i.qx, label %.lr.ph475, label %.preheader412, !llvm.loop !106

.preheader411:                                    ; preds = %.lr.ph490, %.preheader412
  %.pre-phi577 = phi i32 [ %.pre-phi, %.preheader412 ], [ %i.ss, %.lr.ph490 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader412 ], [ %i.sj, %.lr.ph490 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader412 ], [ %i.sk, %.lr.ph490 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader412 ], [ %i.sl, %.lr.ph490 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader412 ], [ %i.sm, %.lr.ph490 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader412 ], [ %i.sn, %.lr.ph490 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader412 ], [ %i.so, %.lr.ph490 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader412 ], [ %i.sp, %.lr.ph490 ] ; 3 uses
  %i.qy = or disjoint i32 %.1.lcssa, 3
  %i.qz = icmp slt i32 %i.qy, %.pre-phi577
  br i1 %i.qz, label %.lr.ph505, label %.preheader

.lr.ph490:                                        ; preds = %.preheader412, %.lr.ph490
  %.1489 = phi i32 [ %i.sp, %.lr.ph490 ], [ %.0247.lcssa, %.preheader412 ]
  %.1249488 = phi ptr [ %i.so, %.lr.ph490 ], [ %.0248.lcssa, %.preheader412 ] ; 2 uses
  %.1253487 = phi ptr [ %i.sn, %.lr.ph490 ], [ %.0252.lcssa, %.preheader412 ] ; 2 uses
  %.1257486 = phi ptr [ %i.sm, %.lr.ph490 ], [ %.0256.lcssa, %.preheader412 ] ; 2 uses
  %.1261485 = phi ptr [ %i.sl, %.lr.ph490 ], [ %.0260.lcssa, %.preheader412 ] ; 2 uses
  %.1265484 = phi ptr [ %i.sk, %.lr.ph490 ], [ %.0264.lcssa, %.preheader412 ] ; 2 uses
  %.1269483 = phi ptr [ %i.sj, %.lr.ph490 ], [ %.0268.lcssa, %.preheader412 ] ; 2 uses
  %i.ra = load <8 x i16>, ptr %.1269483, align 1, !tbaa !42 ; 2 uses
  %i.rb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ra, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ra, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rd = shufflevector <8 x i16> %i.rb, <8 x i16> %i.rc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.re = bitcast <16 x i16> %i.rd to <8 x float> ; 2 uses
  %i.rf = load <8 x i16>, ptr %.1265484, align 1, !tbaa !42 ; 2 uses
  %i.rg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ri = shufflevector <8 x i16> %i.rg, <8 x i16> %i.rh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rj = bitcast <16 x i16> %i.ri to <8 x float> ; 2 uses
  %i.rk = load <8 x i16>, ptr %.1261485, align 1, !tbaa !42 ; 2 uses
  %i.rl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rn = shufflevector <8 x i16> %i.rl, <8 x i16> %i.rm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ro = bitcast <16 x i16> %i.rn to <8 x float> ; 2 uses
  %i.rp = load <8 x i16>, ptr %.1257486, align 1, !tbaa !42 ; 2 uses
  %i.rq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rs = shufflevector <8 x i16> %i.rq, <8 x i16> %i.rr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rt = bitcast <16 x i16> %i.rs to <8 x float> ; 2 uses
  %i.ru = fmul fast <8 x float> %i.ro, %i.re
  %i.rv = fneg fast <8 x float> %i.rj
  %i.rw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.rv, <8 x float> nofpclass(nan inf) %i.rt, <8 x float> nofpclass(nan inf) %i.ru)
  %i.rx = fmul fast <8 x float> %i.ro, %i.rj
  %i.ry = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.re, <8 x float> nofpclass(nan inf) %i.rt, <8 x float> nofpclass(nan inf) %i.rx)
  %i.rz = bitcast <8 x float> %i.rw to <8 x i32>
  %i.sa = lshr <8 x i32> %i.rz, splat (i32 16)    ; 2 uses
  %i.sb = shufflevector <8 x i32> %i.sa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sc = shufflevector <8 x i32> %i.sa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sd = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sb, <4 x i32> %i.sc)
  store <8 x i16> %i.sd, ptr %.1253487, align 1, !tbaa !42
  %i.se = bitcast <8 x float> %i.ry to <8 x i32>
  %i.sf = lshr <8 x i32> %i.se, splat (i32 16)    ; 2 uses
  %i.sg = shufflevector <8 x i32> %i.sf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sh = shufflevector <8 x i32> %i.sf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.si = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sg, <4 x i32> %i.sh)
  store <8 x i16> %i.si, ptr %.1249488, align 1, !tbaa !42
  %i.sj = getelementptr inbounds nuw i8, ptr %.1269483, i64 16 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.1265484, i64 16 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.1261485, i64 16 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.1257486, i64 16 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.1253487, i64 16 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.1249488, i64 16 ; 2 uses
  %i.sp = add nuw nsw i32 %.1489, 8               ; 3 uses
  %i.sq = or disjoint i32 %i.sp, 7
  %i.sr = load i32, ptr %9, align 4, !tbaa !21
  %i.ss = sdiv i32 %i.sr, 2                       ; 2 uses
  %i.st = icmp slt i32 %i.sq, %i.ss
  br i1 %i.st, label %.lr.ph490, label %.preheader411, !llvm.loop !107

.preheader:                                       ; preds = %.lr.ph505, %.preheader411
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader411 ], [ %i.xk, %.lr.ph505 ] ; 7 uses
end_hunk_0
