Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oourafft?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cftmdl:bb.a
  %foldExtExtBinop = fadd <2 x double> %i.fk, %i.fl
  %i.fm = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop1089 = fsub <2 x double> %i.fk, %i.fl
  %i.fn = extractelement <2 x double> %foldExtExtBinop1089, i64 1 ; 2 uses
  %i.fo = fadd double %i.fm, %i.fn
  %i.fp = fsub double %i.fn, %i.fm
  %i.fq = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fo, i64 1
  %i.fs = fmul <2 x double> %i.et, %i.fr
  store <2 x double> %i.fs, ptr %i.ex, align 8, !tbaa !11
  %i.ft = fsub <2 x double> %i.fl, %i.fk
  %i.fu = fadd <2 x double> %i.fl, %i.fk
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fw = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fx = fsub <2 x double> %i.fv, %i.fw
  %i.fy = fadd <2 x double> %i.fv, %i.fw
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fy, <2 x i32> <i32 0, i32 3>
  %i.ga = fmul <2 x double> %i.et, %i.fz
  store <2 x double> %i.ga, ptr %gep439, align 8, !tbaa !11
  %indvars.iv.next417 = add nsw i64 %indvars.iv416, 2 ; 2 uses
  %i.gb = icmp slt i64 %indvars.iv.next417, %i.cb
  br i1 %i.gb, label %.lr.ph400, label %._crit_edge401, !llvm.loop !61

._crit_edge401:                                   ; preds = %.lr.ph400, %middle.block728, %._crit_edge
  %i.gc = shl i32 %1, 3                           ; 3 uses
  %i.gd = icmp slt i32 %i.gc, %0
  br i1 %i.gd, label %.lr.ph413.preheader, label %._crit_edge414

.lr.ph413.preheader:                              ; preds = %._crit_edge401
  %i.ge = sext i32 %i.gc to i64                   ; 22 uses
  %i.gf = sext i32 %1 to i64                      ; 22 uses
  %i.gg = mul i32 %1, 12
  %i.gh = sext i32 %i.a to i64                    ; 2 uses
  %i.gi = zext nneg i32 %0 to i64
  %invariant.gep440 = getelementptr [8 x i8], ptr %2, i64 %i.gf ; 2 uses
  %invariant.op = add nsw i64 %i.gh, %i.gf
  %invariant.gep442 = getelementptr [8 x i8], ptr %2, i64 %i.gf ; 2 uses
  %scevgep733 = getelementptr i8, ptr %2, i64 8
  %i.gj = add nsw i64 %i.gf, %i.ge
  %i.gk = add nsw i64 %i.gj, %i.gh
  %scevgep735 = getelementptr i8, ptr %2, i64 8
  %scevgep737 = getelementptr i8, ptr %2, i64 16
  %i.gl = shl nsw i64 %i.gf, 4                    ; 3 uses
  %scevgep739 = getelementptr i8, ptr %2, i64 %i.gl
  %i.gm = or disjoint i64 %i.gl, 8                ; 2 uses
  %scevgep741 = getelementptr i8, ptr %2, i64 %i.gm
  %scevgep743 = getelementptr i8, ptr %2, i64 %i.gm
  %i.gn = getelementptr i8, ptr %2, i64 %i.gl
  %scevgep745 = getelementptr i8, ptr %i.gn, i64 16
  %scevgep748 = getelementptr i8, ptr %2, i64 8
  %scevgep750 = getelementptr i8, ptr %2, i64 8
  %scevgep752 = getelementptr i8, ptr %2, i64 16
  %i.go = mul nsw i64 %i.gf, 24                   ; 3 uses
  %scevgep754 = getelementptr i8, ptr %2, i64 %i.go
  %i.gp = add nsw i64 %i.go, 8                    ; 2 uses
  %scevgep756 = getelementptr i8, ptr %2, i64 %i.gp
  %scevgep758 = getelementptr i8, ptr %2, i64 %i.gp
  %i.gq = getelementptr i8, ptr %2, i64 %i.go
  %scevgep760 = getelementptr i8, ptr %i.gq, i64 16
  %i.gr = add nsw i64 %i.gf, %i.ge                ; 2 uses
  %i.gs = or disjoint i64 %i.ge, 2
  %i.gt = xor i64 %i.ge, -1
  %i.gu = shl nsw i64 %i.ge, 3                    ; 3 uses
  %i.gv = shl nsw i64 %i.ge, 3
  %i.gw = shl nsw i64 %i.gf, 4
  %i.gx = shl nsw i64 %i.gr, 3
  %i.gy = mul nsw i64 %i.gf, 24
  %i.gz = add nsw i64 %i.gy, %i.gu                ; 2 uses
  %i.ha = shl nsw i64 %i.ge, 3                    ; 5 uses
  %i.hb = shl nsw i64 %i.ge, 3
  %i.hc = add nsw i64 %i.gf, %i.ge                ; 2 uses
  %i.hd = or disjoint i64 %i.ge, 2
  %i.he = xor i64 %i.ge, -1
  %i.hf = shl nsw i64 %i.gf, 4
  %i.hg = add nsw i64 %i.hf, %i.ha                ; 3 uses
  %i.hh = shl nsw i64 %i.hc, 3                    ; 3 uses
  %i.hi = mul nsw i64 %i.gf, 24
  %i.hj = add nsw i64 %i.hi, %i.ha                ; 3 uses
  %i.hk = xor i64 %i.ge, -1
  %i.hl = or disjoint i64 %i.ge, 2
  %i.hm = getelementptr i8, ptr %2, i64 %i.ha
  %i.hn = getelementptr i8, ptr %2, i64 %i.ha
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = getelementptr i8, ptr %2, i64 %i.hg
  %i.hq = getelementptr i8, ptr %2, i64 %i.hg
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %i.hs = getelementptr i8, ptr %2, i64 %i.hh
  %i.ht = getelementptr i8, ptr %2, i64 %i.hh
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = getelementptr i8, ptr %2, i64 %i.ha
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  %i.hx = getelementptr i8, ptr %2, i64 %i.hg
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %i.hz = getelementptr i8, ptr %2, i64 %i.hh
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  %i.ib = getelementptr i8, ptr %2, i64 %i.hj
  %i.ic = getelementptr i8, ptr %2, i64 %i.hj
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  %i.ie = getelementptr i8, ptr %2, i64 %i.hj
  %i.if = getelementptr i8, ptr %i.ie, i64 16
  %i.ig = getelementptr i8, ptr %2, i64 %i.gu
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  %i.ii = getelementptr i8, ptr %2, i64 %i.gw
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.gu
  %i.ik = getelementptr i8, ptr %i.ij, i64 8
  %i.il = getelementptr i8, ptr %2, i64 %i.gx
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = getelementptr i8, ptr %2, i64 %i.gz
  %i.io = getelementptr i8, ptr %2, i64 %i.gz
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %._crit_edge409
  %indvar = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvar.next, %._crit_edge409 ] ; 10 uses
  %indvars.iv429 = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvars.iv.next430, %._crit_edge409 ] ; 2 uses
  %indvars.iv424 = phi i32 [ %i.gg, %.lr.ph413.preheader ], [ %indvars.iv.next425, %._crit_edge409 ] ; 3 uses
  %indvars.iv419 = phi i64 [ %i.ge, %.lr.ph413.preheader ], [ %indvars.iv.next420, %._crit_edge409 ] ; 8 uses
  %i.iq = mul i64 %i.hb, %indvar                  ; 12 uses
  %scevgep918 = getelementptr i8, ptr %i.hm, i64 %i.iq ; 7 uses
  %scevgep919 = getelementptr i8, ptr %i.ho, i64 %i.iq ; 8 uses
  %i.ir = mul i64 %indvar, %i.ge                  ; 2 uses
  %i.is = add i64 %i.hc, %i.ir
  %i.it = add i64 %i.hd, %i.ir
  %smax920 = tail call i64 @llvm.smax.i64(i64 %i.is, i64 %i.it)
  %i.iu = mul i64 %indvar, %i.ge
  %i.iv = sub i64 %i.he, %i.iu
  %i.iw = add i64 %smax920, %i.iv
  %i.ix = shl i64 %i.iw, 3
  %i.iy = and i64 %i.ix, -16                      ; 8 uses
  %scevgep921 = getelementptr i8, ptr %scevgep919, i64 %i.iy ; 7 uses
  %scevgep922 = getelementptr i8, ptr %i.hp, i64 %i.iq ; 7 uses
  %scevgep923 = getelementptr i8, ptr %i.hr, i64 %i.iq ; 8 uses
  %scevgep924 = getelementptr i8, ptr %scevgep923, i64 %i.iy ; 7 uses
  %scevgep925 = getelementptr i8, ptr %i.hs, i64 %i.iq ; 7 uses
  %scevgep926 = getelementptr i8, ptr %i.hu, i64 %i.iq ; 8 uses
  %scevgep927 = getelementptr i8, ptr %scevgep926, i64 %i.iy ; 7 uses
  %scevgep928 = getelementptr i8, ptr %i.hw, i64 %i.iq
  %scevgep929 = getelementptr i8, ptr %scevgep928, i64 %i.iy ; 7 uses
  %scevgep930 = getelementptr i8, ptr %i.hy, i64 %i.iq
  %scevgep931 = getelementptr i8, ptr %scevgep930, i64 %i.iy ; 7 uses
  %scevgep932 = getelementptr i8, ptr %i.ia, i64 %i.iq
  %scevgep933 = getelementptr i8, ptr %scevgep932, i64 %i.iy ; 7 uses
  %scevgep934 = getelementptr i8, ptr %i.ib, i64 %i.iq ; 7 uses
  %scevgep935 = getelementptr i8, ptr %i.id, i64 %i.iq ; 8 uses
  %scevgep936 = getelementptr i8, ptr %scevgep935, i64 %i.iy ; 7 uses
  %scevgep937 = getelementptr i8, ptr %i.if, i64 %i.iq
  %scevgep938 = getelementptr i8, ptr %scevgep937, i64 %i.iy ; 7 uses
  %i.iz = mul i64 %indvar, %i.ge                  ; 2 uses
  %i.ja = add i64 %i.gr, %i.iz
  %i.jb = add i64 %i.gs, %i.iz
  %smax911 = tail call i64 @llvm.smax.i64(i64 %i.ja, i64 %i.jb)
  %i.jc = mul i64 %indvar, %i.ge
  %i.jd = sub i64 %i.gt, %i.jc
  %i.je = add i64 %smax911, %i.jd                 ; 2 uses
  %i.jf = mul i64 %i.gv, %indvar                  ; 5 uses
  %scevgep912 = getelementptr i8, ptr %i.ih, i64 %i.jf ; 2 uses
  %scevgep913 = getelementptr i8, ptr %i.ik, i64 %i.jf ; 2 uses
  %scevgep914 = getelementptr i8, ptr %i.im, i64 %i.jf ; 2 uses
  %scevgep915 = getelementptr i8, ptr %i.in, i64 %i.jf ; 2 uses
  %scevgep916 = getelementptr i8, ptr %i.ip, i64 %i.jf ; 2 uses
  %i.jg = sext i32 %indvars.iv424 to i64          ; 4 uses
  %i.jh = shl nsw i64 %i.jg, 3                    ; 7 uses
  %scevgep732 = getelementptr i8, ptr %2, i64 %i.jh ; 7 uses
  %i.ji = mul i64 %indvar, %i.ge
  %i.jj = add i64 %i.gk, %i.ji
  %i.jk = or disjoint i64 %i.jg, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.jj, i64 %i.jk)
  %i.jl = xor i64 %i.jg, -1
  %i.jm = add i64 %smax, %i.jl
  %i.jn = shl i64 %i.jm, 3
  %i.jo = and i64 %i.jn, -16                      ; 2 uses
  %i.jp = add i64 %i.jo, %i.jh                    ; 6 uses
  %scevgep734 = getelementptr i8, ptr %scevgep733, i64 %i.jp ; 7 uses
  %scevgep736 = getelementptr i8, ptr %scevgep735, i64 %i.jh ; 7 uses
  %scevgep738 = getelementptr i8, ptr %scevgep737, i64 %i.jp ; 7 uses
  %scevgep740 = getelementptr i8, ptr %scevgep739, i64 %i.jh ; 7 uses
  %scevgep742 = getelementptr i8, ptr %scevgep741, i64 %i.jp ; 7 uses
  %scevgep744 = getelementptr i8, ptr %scevgep743, i64 %i.jh ; 7 uses
  %scevgep746 = getelementptr i8, ptr %scevgep745, i64 %i.jp ; 7 uses
  %i.jq = add nsw i64 %i.gf, %i.jg
  %i.jr = shl nsw i64 %i.jq, 3                    ; 3 uses
  %scevgep747 = getelementptr i8, ptr %2, i64 %i.jr ; 7 uses
  %i.js = add i64 %i.jo, %i.jr                    ; 2 uses
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.js ; 7 uses
  %scevgep751 = getelementptr i8, ptr %scevgep750, i64 %i.jr ; 7 uses
  %scevgep753 = getelementptr i8, ptr %scevgep752, i64 %i.js ; 7 uses
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.jh ; 7 uses
  %scevgep757 = getelementptr i8, ptr %scevgep756, i64 %i.jp ; 7 uses
  %scevgep759 = getelementptr i8, ptr %scevgep758, i64 %i.jh ; 7 uses
  %scevgep761 = getelementptr i8, ptr %scevgep760, i64 %i.jp ; 7 uses
  %i.jt = sext i32 %indvars.iv424 to i64          ; 6 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 2 ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next430
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv429
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !11 ; 4 uses
  %i.jy = load double, ptr %i.ju, align 8, !tbaa !11 ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next430, 4
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %i.ka = load <2 x double>, ptr %i.jz, align 8, !tbaa !11 ; 6 uses
  %i.kb = fmul double %i.jx, 2.000000e+00         ; 2 uses
  %i.kc = fneg double %i.kb
  %i.kd = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %i.kc, i64 1
  %4 = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kf = fneg <2 x double> %i.ka
  %5 = shufflevector <2 x double> %i.kf, <2 x double> %i.ka, <2 x i32> <i32 1, i32 2>
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.ka, <2 x double> %5) ; 4 uses
  %i.kh = add i64 %indvars.iv419, %i.gf           ; 2 uses
  br i1 %i.b, label %.lr.ph404.preheader, label %._crit_edge409

.lr.ph404.preheader:                              ; preds = %.lr.ph413
  %i.ki = mul i64 %indvar, %i.ge
  %i.kj = add i64 %i.hl, %i.ki
  %i.kk = mul i64 %indvar, %i.ge
  %i.kl = sub i64 %i.hk, %i.kk
  %i.km = tail call i64 @llvm.smax.i64(i64 %i.kh, i64 %i.kj)
  %i.kn = add i64 %i.km, %i.kl                    ; 2 uses
  %i.ko = lshr i64 %i.kn, 1
  %i.kp = add nuw i64 %i.ko, 1                    ; 2 uses
  %min.iters.check1051 = icmp ult i64 %i.kn, 18
  br i1 %min.iters.check1051, label %.lr.ph404.preheader1091, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph404.preheader
  %i.kq = shl i64 %i.je, 3
  %mul.result = and i64 %i.kq, -16                ; 5 uses
  %mul.overflow = icmp ugt i64 %i.je, 2305843009213693951
  %i.kr = getelementptr i8, ptr %scevgep912, i64 %mul.result
  %i.ks = icmp ult ptr %i.kr, %scevgep912
  %i.kt = getelementptr i8, ptr %scevgep913, i64 %mul.result
  %i.ku = icmp ult ptr %i.kt, %scevgep913
  %i.kv = getelementptr i8, ptr %scevgep914, i64 %mul.result
  %i.kw = icmp ult ptr %i.kv, %scevgep914
  %i.kx = or i1 %i.kw, %mul.overflow
  %i.ky = getelementptr i8, ptr %scevgep915, i64 %mul.result
  %i.kz = icmp ult ptr %i.ky, %scevgep915
  %i.la = getelementptr i8, ptr %scevgep916, i64 %mul.result
  %i.lb = icmp ult ptr %i.la, %scevgep916
  %i.lc = or i1 %i.ku, %i.ks
  %i.ld = or i1 %i.lc, %i.kx
  %i.le = or i1 %i.kz, %i.ld
  %i.lf = or i1 %i.lb, %i.le
  br i1 %i.lf, label %.lr.ph404.preheader1091, label %vector.memcheck917

vector.memcheck917:                               ; preds = %vector.scevcheck
  %bound0939 = icmp ult ptr %scevgep918, %scevgep924
  %bound1940 = icmp ult ptr %scevgep922, %scevgep921
  %found.conflict941 = and i1 %bound0939, %bound1940
  %bound0942 = icmp ult ptr %scevgep918, %scevgep927
  %bound1943 = icmp ult ptr %scevgep925, %scevgep921
  %found.conflict944 = and i1 %bound0942, %bound1943
  %conflict.rdx945 = or i1 %found.conflict941, %found.conflict944
  %bound0946 = icmp ult ptr %scevgep918, %scevgep929
  %bound1947 = icmp ult ptr %scevgep919, %scevgep921
  %found.conflict948 = and i1 %bound0946, %bound1947
  %conflict.rdx949 = or i1 %conflict.rdx945, %found.conflict948
  %bound0950 = icmp ult ptr %scevgep918, %scevgep931
  %bound1951 = icmp ult ptr %scevgep923, %scevgep921
  %found.conflict952 = and i1 %bound0950, %bound1951
  %conflict.rdx953 = or i1 %conflict.rdx949, %found.conflict952
  %bound0954 = icmp ult ptr %scevgep918, %scevgep933
  %bound1955 = icmp ult ptr %scevgep926, %scevgep921
  %found.conflict956 = and i1 %bound0954, %bound1955
  %conflict.rdx957 = or i1 %conflict.rdx953, %found.conflict956
  %bound0958 = icmp ult ptr %scevgep918, %scevgep936
  %bound1959 = icmp ult ptr %scevgep934, %scevgep921
  %found.conflict960 = and i1 %bound0958, %bound1959
  %conflict.rdx961 = or i1 %conflict.rdx957, %found.conflict960
  %bound0962 = icmp ult ptr %scevgep918, %scevgep938
  %bound1963 = icmp ult ptr %scevgep935, %scevgep921
  %found.conflict964 = and i1 %bound0962, %bound1963
  %conflict.rdx965 = or i1 %conflict.rdx961, %found.conflict964
  %bound0966 = icmp ult ptr %scevgep922, %scevgep927
  %bound1967 = icmp ult ptr %scevgep925, %scevgep924
  %found.conflict968 = and i1 %bound0966, %bound1967
  %conflict.rdx969 = or i1 %conflict.rdx965, %found.conflict968
  %bound0970 = icmp ult ptr %scevgep922, %scevgep929
  %bound1971 = icmp ult ptr %scevgep919, %scevgep924
  %found.conflict972 = and i1 %bound0970, %bound1971
  %conflict.rdx973 = or i1 %conflict.rdx969, %found.conflict972
  %bound0974 = icmp ult ptr %scevgep922, %scevgep931
  %bound1975 = icmp ult ptr %scevgep923, %scevgep924
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %conflict.rdx973, %found.conflict976
  %bound0978 = icmp ult ptr %scevgep922, %scevgep933
  %bound1979 = icmp ult ptr %scevgep926, %scevgep924
  %found.conflict980 = and i1 %bound0978, %bound1979
  %conflict.rdx981 = or i1 %conflict.rdx977, %found.conflict980
  %bound0982 = icmp ult ptr %scevgep922, %scevgep936
  %bound1983 = icmp ult ptr %scevgep934, %scevgep924
  %found.conflict984 = and i1 %bound0982, %bound1983
  %conflict.rdx985 = or i1 %conflict.rdx981, %found.conflict984
  %bound0986 = icmp ult ptr %scevgep922, %scevgep938
  %bound1987 = icmp ult ptr %scevgep935, %scevgep924
  %found.conflict988 = and i1 %bound0986, %bound1987
  %conflict.rdx989 = or i1 %conflict.rdx985, %found.conflict988
  %bound0990 = icmp ult ptr %scevgep925, %scevgep929
  %bound1991 = icmp ult ptr %scevgep919, %scevgep927
  %found.conflict992 = and i1 %bound0990, %bound1991
  %conflict.rdx993 = or i1 %conflict.rdx989, %found.conflict992
  %bound0994 = icmp ult ptr %scevgep925, %scevgep931
  %bound1995 = icmp ult ptr %scevgep923, %scevgep927
  %found.conflict996 = and i1 %bound0994, %bound1995
  %conflict.rdx997 = or i1 %conflict.rdx993, %found.conflict996
  %bound0998 = icmp ult ptr %scevgep925, %scevgep933
  %bound1999 = icmp ult ptr %scevgep926, %scevgep927
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1001 = or i1 %conflict.rdx997, %found.conflict1000
  %bound01002 = icmp ult ptr %scevgep925, %scevgep936
  %bound11003 = icmp ult ptr %scevgep934, %scevgep927
  %found.conflict1004 = and i1 %bound01002, %bound11003
  %conflict.rdx1005 = or i1 %conflict.rdx1001, %found.conflict1004
  %bound01006 = icmp ult ptr %scevgep925, %scevgep938
  %bound11007 = icmp ult ptr %scevgep935, %scevgep927
  %found.conflict1008 = and i1 %bound01006, %bound11007
  %conflict.rdx1009 = or i1 %conflict.rdx1005, %found.conflict1008
  %bound01010 = icmp ult ptr %scevgep919, %scevgep931
  %bound11011 = icmp ult ptr %scevgep923, %scevgep929
  %found.conflict1012 = and i1 %bound01010, %bound11011
  %conflict.rdx1013 = or i1 %conflict.rdx1009, %found.conflict1012
  %bound01014 = icmp ult ptr %scevgep919, %scevgep933
  %bound11015 = icmp ult ptr %scevgep926, %scevgep929
  %found.conflict1016 = and i1 %bound01014, %bound11015
  %conflict.rdx1017 = or i1 %conflict.rdx1013, %found.conflict1016
  %bound01018 = icmp ult ptr %scevgep919, %scevgep936
  %bound11019 = icmp ult ptr %scevgep934, %scevgep929
  %found.conflict1020 = and i1 %bound01018, %bound11019
  %conflict.rdx1021 = or i1 %conflict.rdx1017, %found.conflict1020
  %bound01022 = icmp ult ptr %scevgep919, %scevgep938
  %bound11023 = icmp ult ptr %scevgep935, %scevgep929
  %found.conflict1024 = and i1 %bound01022, %bound11023
  %conflict.rdx1025 = or i1 %conflict.rdx1021, %found.conflict1024
  %bound01026 = icmp ult ptr %scevgep923, %scevgep933
  %bound11027 = icmp ult ptr %scevgep926, %scevgep931
  %found.conflict1028 = and i1 %bound01026, %bound11027
  %conflict.rdx1029 = or i1 %conflict.rdx1025, %found.conflict1028
  %bound01030 = icmp ult ptr %scevgep923, %scevgep936
  %bound11031 = icmp ult ptr %scevgep934, %scevgep931
  %found.conflict1032 = and i1 %bound01030, %bound11031
  %conflict.rdx1033 = or i1 %conflict.rdx1029, %found.conflict1032
  %bound01034 = icmp ult ptr %scevgep923, %scevgep938
  %bound11035 = icmp ult ptr %scevgep935, %scevgep931
  %found.conflict1036 = and i1 %bound01034, %bound11035
  %conflict.rdx1037 = or i1 %conflict.rdx1033, %found.conflict1036
  %bound01038 = icmp ult ptr %scevgep926, %scevgep936
  %bound11039 = icmp ult ptr %scevgep934, %scevgep933
  %found.conflict1040 = and i1 %bound01038, %bound11039
  %conflict.rdx1041 = or i1 %conflict.rdx1037, %found.conflict1040
  %bound01042 = icmp ult ptr %scevgep926, %scevgep938
  %bound11043 = icmp ult ptr %scevgep935, %scevgep933
  %found.conflict1044 = and i1 %bound01042, %bound11043
  %conflict.rdx1045 = or i1 %conflict.rdx1041, %found.conflict1044
  %bound01046 = icmp ult ptr %scevgep934, %scevgep938
  %bound11047 = icmp ult ptr %scevgep935, %scevgep936
  %found.conflict1048 = and i1 %bound01046, %bound11047
  %conflict.rdx1049 = or i1 %conflict.rdx1045, %found.conflict1048
  br i1 %conflict.rdx1049, label %.lr.ph404.preheader1091, label %vector.ph1052

vector.ph1052:                                    ; preds = %vector.memcheck917
  %n.vec1053 = and i64 %i.kp, -2                  ; 3 uses
  %i.lg = shl i64 %n.vec1053, 1
  %i.lh = add i64 %indvars.iv419, %i.lg
  %broadcast.splatinsert1054 = insertelement <2 x double> poison, double %i.jx, i64 0
  %broadcast.splat1055 = shufflevector <2 x double> %broadcast.splatinsert1054, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1056 = insertelement <2 x double> poison, double %i.jy, i64 0
  %broadcast.splat1057 = shufflevector <2 x double> %broadcast.splatinsert1056, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1059 = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat1061 = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1063 = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %vector.ph1052
  %index1067 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1084, %vector.body1066 ] ; 2 uses
  %i.li = shl i64 %index1067, 1
  %i.lj = add i64 %indvars.iv419, %i.li           ; 2 uses
  %i.lk = add nsw i64 %i.lj, %i.gf                ; 2 uses
  %i.ll = add nsw i64 %i.lk, %i.gf                ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lj ; 2 uses
  %wide.vec1068 = load <4 x double>, ptr %i.lm, align 8, !tbaa !11 ; 2 uses
  %strided.vec1069 = shufflevector <4 x double> %wide.vec1068, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1070 = shufflevector <4 x double> %wide.vec1068, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lk ; 2 uses
  %wide.vec1071 = load <4 x double>, ptr %i.ln, align 8, !tbaa !11 ; 2 uses
  %strided.vec1072 = shufflevector <4 x double> %wide.vec1071, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1073 = shufflevector <4 x double> %wide.vec1071, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lo = fadd <2 x double> %strided.vec1069, %strided.vec1072 ; 2 uses
  %i.lp = fadd <2 x double> %strided.vec1070, %strided.vec1073 ; 2 uses
  %i.lq = fsub <2 x double> %strided.vec1069, %strided.vec1072 ; 2 uses
  %i.lr = fsub <2 x double> %strided.vec1070, %strided.vec1073 ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ll ; 2 uses
  %wide.vec1074 = load <4 x double>, ptr %i.ls, align 8, !tbaa !11 ; 2 uses
  %strided.vec1075 = shufflevector <4 x double> %wide.vec1074, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1076 = shufflevector <4 x double> %wide.vec1074, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lt = getelementptr [8 x i8], ptr %invariant.gep440, i64 %i.ll ; 2 uses
  %wide.vec1077 = load <4 x double>, ptr %i.lt, align 8, !tbaa !11 ; 2 uses
  %strided.vec1078 = shufflevector <4 x double> %wide.vec1077, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1079 = shufflevector <4 x double> %wide.vec1077, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lu = fadd <2 x double> %strided.vec1075, %strided.vec1078 ; 2 uses
  %i.lv = fadd <2 x double> %strided.vec1076, %strided.vec1079 ; 2 uses
  %i.lw = fsub <2 x double> %strided.vec1075, %strided.vec1078 ; 2 uses
  %i.lx = fsub <2 x double> %strided.vec1076, %strided.vec1079 ; 2 uses
  %i.ly = fadd <2 x double> %i.lo, %i.lu
  %i.lz = fadd <2 x double> %i.lp, %i.lv
  %interleaved.vec1080 = shufflevector <2 x double> %i.ly, <2 x double> %i.lz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1080, ptr %i.lm, align 8, !tbaa !11
  %i.ma = fsub <2 x double> %i.lo, %i.lu          ; 2 uses
  %i.mb = fsub <2 x double> %i.lp, %i.lv          ; 2 uses
  %i.mc = fneg <2 x double> %i.mb
  %i.md = fmul <2 x double> %broadcast.splat1055, %i.mc
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1057, <2 x double> %i.ma, <2 x double> %i.md)
  %i.mf = fmul <2 x double> %broadcast.splat1055, %i.ma
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1057, <2 x double> %i.mb, <2 x double> %i.mf)
  %interleaved.vec1081 = shufflevector <2 x double> %i.me, <2 x double> %i.mg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1081, ptr %i.ls, align 8, !tbaa !11
  %i.mh = fsub <2 x double> %i.lq, %i.lx          ; 2 uses
  %i.mi = fadd <2 x double> %i.lr, %i.lw          ; 2 uses
  %i.mj = fneg <2 x double> %i.mi
  %i.mk = fmul <2 x double> %broadcast.splat1059, %i.mj
  %i.ml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.mh, <2 x double> %i.mk)
  %i.mm = fmul <2 x double> %broadcast.splat1059, %i.mh
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.mi, <2 x double> %i.mm)
  %interleaved.vec1082 = shufflevector <2 x double> %i.ml, <2 x double> %i.mn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1082, ptr %i.ln, align 8, !tbaa !11
  %i.mo = fadd <2 x double> %i.lq, %i.lx          ; 2 uses
  %i.mp = fsub <2 x double> %i.lr, %i.lw          ; 2 uses
  %i.mq = fneg <2 x double> %i.mp
  %i.mr = fmul <2 x double> %broadcast.splat1061, %i.mq
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1063, <2 x double> %i.mo, <2 x double> %i.mr)
  %i.mt = fmul <2 x double> %broadcast.splat1061, %i.mo
  %i.mu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1063, <2 x double> %i.mp, <2 x double> %i.mt)
  %interleaved.vec1083 = shufflevector <2 x double> %i.ms, <2 x double> %i.mu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1083, ptr %i.lt, align 8, !tbaa !11
  %index.next1084 = add nuw i64 %index1067, 2     ; 2 uses
  %i.mv = icmp eq i64 %index.next1084, %n.vec1053
  br i1 %i.mv, label %middle.block1085, label %vector.body1066, !llvm.loop !62

middle.block1085:                                 ; preds = %vector.body1066
  %cmp.n1086 = icmp eq i64 %i.kp, %n.vec1053
  br i1 %cmp.n1086, label %._crit_edge405, label %.lr.ph404.preheader1091

.lr.ph404.preheader1091:                          ; preds = %vector.memcheck917, %vector.scevcheck, %.lr.ph404.preheader, %middle.block1085
  %indvars.iv421.ph = phi i64 [ %indvars.iv419, %vector.memcheck917 ], [ %indvars.iv419, %vector.scevcheck ], [ %indvars.iv419, %.lr.ph404.preheader ], [ %i.lh, %middle.block1085 ]
  %i.mw = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nb = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nc = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph404

.lr.ph404:                                        ; preds = %.lr.ph404.preheader1091, %.lr.ph404
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %.lr.ph404 ], [ %indvars.iv421.ph, %.lr.ph404.preheader1091 ] ; 3 uses
  %i.nd = add nsw i64 %indvars.iv421, %i.gf       ; 2 uses
  %i.ne = add nsw i64 %i.nd, %i.gf                ; 2 uses
  %i.nf = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv421 ; 2 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nd ; 2 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ne ; 2 uses
  %gep441 = getelementptr [8 x i8], ptr %invariant.gep440, i64 %i.ne ; 2 uses
  %i.ni = load <2 x double>, ptr %i.nf, align 8, !tbaa !11 ; 2 uses
  %i.nj = load <2 x double>, ptr %i.ng, align 8, !tbaa !11 ; 2 uses
  %i.nk = fadd <2 x double> %i.ni, %i.nj          ; 2 uses
  %i.nl = load <2 x double>, ptr %i.nh, align 8, !tbaa !11 ; 2 uses
  %i.nm = load <2 x double>, ptr %gep441, align 8, !tbaa !11 ; 2 uses
  %i.nn = fadd <2 x double> %i.nl, %i.nm          ; 2 uses
  %i.no = fadd <2 x double> %i.nk, %i.nn
  store <2 x double> %i.no, ptr %i.nf, align 8, !tbaa !11
  %i.np = fsub <2 x double> %i.nk, %i.nn          ; 3 uses
  %i.nq = fsub <2 x double> %i.ni, %i.nj          ; 2 uses
  %i.nr = fsub <2 x double> %i.nl, %i.nm
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nt = fsub <2 x double> %i.nq, %i.ns          ; 3 uses
  %i.nu = fadd <2 x double> %i.nq, %i.ns          ; 4 uses
  %i.nv = shufflevector <2 x double> %i.nt, <2 x double> %i.nu, <2 x i32> <i32 0, i32 3>
  %i.nw = shufflevector <2 x double> %i.np, <2 x double> %i.nu, <2 x i32> <i32 1, i32 3>
  %i.nx = fneg <2 x double> %i.nw                 ; 2 uses
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> %i.np, <2 x i32> <i32 0, i32 2>
  %i.nz = fmul <2 x double> %i.mx, %i.ny
  %i.oa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.np, <2 x double> %i.nz)
  store <2 x double> %i.oa, ptr %i.nh, align 8, !tbaa !11
  %i.ob = shufflevector <2 x double> %i.nx, <2 x double> %i.nt, <2 x i32> <i32 1, i32 2>
  %i.oc = fmul <2 x double> %i.na, %i.ob
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.nv, <2 x double> %i.oc)
  store <2 x double> %i.od, ptr %i.ng, align 8, !tbaa !11
  %i.oe = shufflevector <2 x double> %i.nu, <2 x double> %i.nt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.of = fneg <2 x double> %i.oe
  %i.og = shufflevector <2 x double> %i.of, <2 x double> %i.nu, <2 x i32> <i32 1, i32 2>
  %i.oh = fmul <2 x double> %i.nb, %i.og
  %i.oi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.oe, <2 x double> %i.oh)
  store <2 x double> %i.oi, ptr %gep441, align 8, !tbaa !11
  %indvars.iv.next422 = add nsw i64 %indvars.iv421, 2 ; 2 uses
  %i.oj = icmp slt i64 %indvars.iv.next422, %i.kh
  br i1 %i.oj, label %.lr.ph404, label %._crit_edge405, !llvm.loop !63

._crit_edge405:                                   ; preds = %.lr.ph404, %middle.block1085
  %i.ok = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.ol = load <2 x double>, ptr %i.ok, align 8, !tbaa !11 ; 6 uses
  %i.om = fmul double %i.jy, 2.000000e+00         ; 2 uses
  %i.on = fneg double %i.om
  %i.oo = insertelement <2 x double> poison, double %i.om, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.on, i64 1
  %6 = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.oq = fneg <2 x double> %i.ol
  %7 = shufflevector <2 x double> %i.oq, <2 x double> %i.ol, <2 x i32> <i32 1, i32 2>
  %i.or = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.ol, <2 x double> %7) ; 4 uses
  %.reass = add i64 %indvars.iv419, %invariant.op ; 2 uses
  %i.os = fneg double %i.jx                       ; 2 uses
  %i.ot = or disjoint i64 %i.jt, 2
  %i.ou = tail call i64 @llvm.smax.i64(i64 %.reass, i64 %i.ot)
  %i.ov = xor i64 %i.jt, -1
  %i.ow = add i64 %i.ou, %i.ov                    ; 2 uses
  %i.ox = lshr i64 %i.ow, 1
  %i.oy = add nuw i64 %i.ox, 1                    ; 2 uses
  %min.iters.check874 = icmp ult i64 %i.ow, 14
  br i1 %min.iters.check874, label %scalar.ph873.preheader, label %vector.memcheck731

vector.memcheck731:                               ; preds = %._crit_edge405
  %bound0762 = icmp ult ptr %scevgep732, %scevgep738
  %bound1763 = icmp ult ptr %scevgep736, %scevgep734
  %found.conflict764 = and i1 %bound0762, %bound1763
  %bound0765 = icmp ult ptr %scevgep732, %scevgep742
  %bound1766 = icmp ult ptr %scevgep740, %scevgep734
  %found.conflict767 = and i1 %bound0765, %bound1766
  %conflict.rdx768 = or i1 %found.conflict764, %found.conflict767
  %bound0769 = icmp ult ptr %scevgep732, %scevgep746
  %bound1770 = icmp ult ptr %scevgep744, %scevgep734
  %found.conflict771 = and i1 %bound0769, %bound1770
  %conflict.rdx772 = or i1 %conflict.rdx768, %found.conflict771
  %bound0773 = icmp ult ptr %scevgep732, %scevgep749
  %bound1774 = icmp ult ptr %scevgep747, %scevgep734
  %found.conflict775 = and i1 %bound0773, %bound1774
  %conflict.rdx776 = or i1 %conflict.rdx772, %found.conflict775
  %bound0777 = icmp ult ptr %scevgep732, %scevgep753
  %bound1778 = icmp ult ptr %scevgep751, %scevgep734
  %found.conflict779 = and i1 %bound0777, %bound1778
  %conflict.rdx780 = or i1 %conflict.rdx776, %found.conflict779
  %bound0781 = icmp ult ptr %scevgep732, %scevgep757
  %bound1782 = icmp ult ptr %scevgep755, %scevgep734
  %found.conflict783 = and i1 %bound0781, %bound1782
  %conflict.rdx784 = or i1 %conflict.rdx780, %found.conflict783
  %bound0785 = icmp ult ptr %scevgep732, %scevgep761
  %bound1786 = icmp ult ptr %scevgep759, %scevgep734
  %found.conflict787 = and i1 %bound0785, %bound1786
  %conflict.rdx788 = or i1 %conflict.rdx784, %found.conflict787
  %bound0789 = icmp ult ptr %scevgep736, %scevgep742
  %bound1790 = icmp ult ptr %scevgep740, %scevgep738
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx792 = or i1 %conflict.rdx788, %found.conflict791
  %bound0793 = icmp ult ptr %scevgep736, %scevgep746
  %bound1794 = icmp ult ptr %scevgep744, %scevgep738
  %found.conflict795 = and i1 %bound0793, %bound1794
  %conflict.rdx796 = or i1 %conflict.rdx792, %found.conflict795
  %bound0797 = icmp ult ptr %scevgep736, %scevgep749
  %bound1798 = icmp ult ptr %scevgep747, %scevgep738
  %found.conflict799 = and i1 %bound0797, %bound1798
  %conflict.rdx800 = or i1 %conflict.rdx796, %found.conflict799
  %bound0801 = icmp ult ptr %scevgep736, %scevgep753
  %bound1802 = icmp ult ptr %scevgep751, %scevgep738
  %found.conflict803 = and i1 %bound0801, %bound1802
  %conflict.rdx804 = or i1 %conflict.rdx800, %found.conflict803
  %bound0805 = icmp ult ptr %scevgep736, %scevgep757
  %bound1806 = icmp ult ptr %scevgep755, %scevgep738
  %found.conflict807 = and i1 %bound0805, %bound1806
  %conflict.rdx808 = or i1 %conflict.rdx804, %found.conflict807
  %bound0809 = icmp ult ptr %scevgep736, %scevgep761
  %bound1810 = icmp ult ptr %scevgep759, %scevgep738
  %found.conflict811 = and i1 %bound0809, %bound1810
  %conflict.rdx812 = or i1 %conflict.rdx808, %found.conflict811
  %bound0813 = icmp ult ptr %scevgep740, %scevgep746
  %bound1814 = icmp ult ptr %scevgep744, %scevgep742
  %found.conflict815 = and i1 %bound0813, %bound1814
  %conflict.rdx816 = or i1 %conflict.rdx812, %found.conflict815
  %bound0817 = icmp ult ptr %scevgep740, %scevgep749
  %bound1818 = icmp ult ptr %scevgep747, %scevgep742
  %found.conflict819 = and i1 %bound0817, %bound1818
  %conflict.rdx820 = or i1 %conflict.rdx816, %found.conflict819
  %bound0821 = icmp ult ptr %scevgep740, %scevgep753
  %bound1822 = icmp ult ptr %scevgep751, %scevgep742
  %found.conflict823 = and i1 %bound0821, %bound1822
  %conflict.rdx824 = or i1 %conflict.rdx820, %found.conflict823
  %bound0825 = icmp ult ptr %scevgep740, %scevgep757
  %bound1826 = icmp ult ptr %scevgep755, %scevgep742
  %found.conflict827 = and i1 %bound0825, %bound1826
  %conflict.rdx828 = or i1 %conflict.rdx824, %found.conflict827
  %bound0829 = icmp ult ptr %scevgep740, %scevgep761
  %bound1830 = icmp ult ptr %scevgep759, %scevgep742
  %found.conflict831 = and i1 %bound0829, %bound1830
  %conflict.rdx832 = or i1 %conflict.rdx828, %found.conflict831
  %bound0833 = icmp ult ptr %scevgep744, %scevgep749
  %bound1834 = icmp ult ptr %scevgep747, %scevgep746
  %found.conflict835 = and i1 %bound0833, %bound1834
  %conflict.rdx836 = or i1 %conflict.rdx832, %found.conflict835
  %bound0837 = icmp ult ptr %scevgep744, %scevgep753
  %bound1838 = icmp ult ptr %scevgep751, %scevgep746
  %found.conflict839 = and i1 %bound0837, %bound1838
  %conflict.rdx840 = or i1 %conflict.rdx836, %found.conflict839
  %bound0841 = icmp ult ptr %scevgep744, %scevgep757
  %bound1842 = icmp ult ptr %scevgep755, %scevgep746
  %found.conflict843 = and i1 %bound0841, %bound1842
  %conflict.rdx844 = or i1 %conflict.rdx840, %found.conflict843
  %bound0845 = icmp ult ptr %scevgep744, %scevgep761
  %bound1846 = icmp ult ptr %scevgep759, %scevgep746
  %found.conflict847 = and i1 %bound0845, %bound1846
  %conflict.rdx848 = or i1 %conflict.rdx844, %found.conflict847
  %bound0849 = icmp ult ptr %scevgep747, %scevgep753
  %bound1850 = icmp ult ptr %scevgep751, %scevgep749
  %found.conflict851 = and i1 %bound0849, %bound1850
  %conflict.rdx852 = or i1 %conflict.rdx848, %found.conflict851
  %bound0853 = icmp ult ptr %scevgep747, %scevgep757
  %bound1854 = icmp ult ptr %scevgep755, %scevgep749
  %found.conflict855 = and i1 %bound0853, %bound1854
  %conflict.rdx856 = or i1 %conflict.rdx852, %found.conflict855
  %bound0857 = icmp ult ptr %scevgep747, %scevgep761
  %bound1858 = icmp ult ptr %scevgep759, %scevgep749
  %found.conflict859 = and i1 %bound0857, %bound1858
  %conflict.rdx860 = or i1 %conflict.rdx856, %found.conflict859
  %bound0861 = icmp ult ptr %scevgep751, %scevgep757
  %bound1862 = icmp ult ptr %scevgep755, %scevgep753
  %found.conflict863 = and i1 %bound0861, %bound1862
  %conflict.rdx864 = or i1 %conflict.rdx860, %found.conflict863
  %bound0865 = icmp ult ptr %scevgep751, %scevgep761
  %bound1866 = icmp ult ptr %scevgep759, %scevgep753
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %conflict.rdx864, %found.conflict867
  %bound0869 = icmp ult ptr %scevgep755, %scevgep761
  %bound1870 = icmp ult ptr %scevgep759, %scevgep757
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  br i1 %conflict.rdx872, label %scalar.ph873.preheader, label %vector.ph875

vector.ph875:                                     ; preds = %vector.memcheck731
  %n.vec876 = and i64 %i.oy, -2                   ; 3 uses
  %i.oz = shl i64 %n.vec876, 1
  %i.pa = add i64 %i.oz, %i.jt
  %broadcast.splatinsert877 = insertelement <2 x double> poison, double %i.os, i64 0
  %broadcast.splat878 = shufflevector <2 x double> %broadcast.splatinsert877, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert879 = insertelement <2 x double> poison, double %i.jy, i64 0
  %broadcast.splat880 = shufflevector <2 x double> %broadcast.splatinsert879, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat882 = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat884 = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat886 = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph875
  %index890 = phi i64 [ 0, %vector.ph875 ], [ %index.next907, %vector.body889 ] ; 2 uses
  %i.pb = shl i64 %index890, 1
  %i.pc = add i64 %i.pb, %i.jt                    ; 2 uses
  %i.pd = add nsw i64 %i.pc, %i.gf                ; 2 uses
  %i.pe = add nsw i64 %i.pd, %i.gf                ; 2 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pc ; 2 uses
  %wide.vec891 = load <4 x double>, ptr %i.pf, align 8, !tbaa !11 ; 2 uses
  %strided.vec892 = shufflevector <4 x double> %wide.vec891, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec893 = shufflevector <4 x double> %wide.vec891, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pd ; 2 uses
  %wide.vec894 = load <4 x double>, ptr %i.pg, align 8, !tbaa !11 ; 2 uses
  %strided.vec895 = shufflevector <4 x double> %wide.vec894, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec896 = shufflevector <4 x double> %wide.vec894, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ph = fadd <2 x double> %strided.vec892, %strided.vec895 ; 2 uses
  %i.pi = fadd <2 x double> %strided.vec893, %strided.vec896 ; 2 uses
  %i.pj = fsub <2 x double> %strided.vec892, %strided.vec895 ; 2 uses
  %i.pk = fsub <2 x double> %strided.vec893, %strided.vec896 ; 2 uses
  %i.pl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pe ; 2 uses
  %wide.vec897 = load <4 x double>, ptr %i.pl, align 8, !tbaa !11 ; 2 uses
  %strided.vec898 = shufflevector <4 x double> %wide.vec897, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec899 = shufflevector <4 x double> %wide.vec897, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.pm = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.pe ; 2 uses
  %wide.vec900 = load <4 x double>, ptr %i.pm, align 8, !tbaa !11 ; 2 uses
  %strided.vec901 = shufflevector <4 x double> %wide.vec900, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec902 = shufflevector <4 x double> %wide.vec900, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.pn = fadd <2 x double> %strided.vec898, %strided.vec901 ; 2 uses
  %i.po = fadd <2 x double> %strided.vec899, %strided.vec902 ; 2 uses
  %i.pp = fsub <2 x double> %strided.vec898, %strided.vec901 ; 2 uses
  %i.pq = fsub <2 x double> %strided.vec899, %strided.vec902 ; 2 uses
  %i.pr = fadd <2 x double> %i.ph, %i.pn
  %i.ps = fadd <2 x double> %i.pi, %i.po
  %interleaved.vec903 = shufflevector <2 x double> %i.pr, <2 x double> %i.ps, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec903, ptr %i.pf, align 8, !tbaa !11
  %i.pt = fsub <2 x double> %i.ph, %i.pn          ; 2 uses
  %i.pu = fsub <2 x double> %i.pi, %i.po          ; 2 uses
  %i.pv = fneg <2 x double> %i.pu
  %i.pw = fmul <2 x double> %broadcast.splat880, %i.pv
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat878, <2 x double> %i.pt, <2 x double> %i.pw)
  %i.py = fmul <2 x double> %broadcast.splat880, %i.pt
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat878, <2 x double> %i.pu, <2 x double> %i.py)
  %interleaved.vec904 = shufflevector <2 x double> %i.px, <2 x double> %i.pz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec904, ptr %i.pl, align 8, !tbaa !11
  %i.qa = fsub <2 x double> %i.pj, %i.pq          ; 2 uses
  %i.qb = fadd <2 x double> %i.pk, %i.pp          ; 2 uses
  %i.qc = fneg <2 x double> %i.qb
  %i.qd = fmul <2 x double> %broadcast.splat882, %i.qc
  %i.qe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.qa, <2 x double> %i.qd)
  %i.qf = fmul <2 x double> %broadcast.splat882, %i.qa
  %i.qg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.qb, <2 x double> %i.qf)
  %interleaved.vec905 = shufflevector <2 x double> %i.qe, <2 x double> %i.qg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec905, ptr %i.pg, align 8, !tbaa !11
  %i.qh = fadd <2 x double> %i.pj, %i.pq          ; 2 uses
  %i.qi = fsub <2 x double> %i.pk, %i.pp          ; 2 uses
  %i.qj = fneg <2 x double> %i.qi
  %i.qk = fmul <2 x double> %broadcast.splat884, %i.qj
  %i.ql = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat886, <2 x double> %i.qh, <2 x double> %i.qk)
  %i.qm = fmul <2 x double> %broadcast.splat884, %i.qh
  %i.qn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat886, <2 x double> %i.qi, <2 x double> %i.qm)
  %interleaved.vec906 = shufflevector <2 x double> %i.ql, <2 x double> %i.qn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec906, ptr %i.pm, align 8, !tbaa !11
  %index.next907 = add nuw i64 %index890, 2       ; 2 uses
  %i.qo = icmp eq i64 %index.next907, %n.vec876
  br i1 %i.qo, label %middle.block908, label %vector.body889, !llvm.loop !64

middle.block908:                                  ; preds = %vector.body889
  %cmp.n909 = icmp eq i64 %i.oy, %n.vec876
  br i1 %cmp.n909, label %._crit_edge409, label %scalar.ph873.preheader

scalar.ph873.preheader:                           ; preds = %vector.memcheck731, %._crit_edge405, %middle.block908
  %indvars.iv426.ph = phi i64 [ %i.jt, %vector.memcheck731 ], [ %i.jt, %._crit_edge405 ], [ %i.pa, %middle.block908 ]
  %i.qp = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = insertelement <2 x double> poison, double %i.os, i64 0
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qt = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qu = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qv = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph873

scalar.ph873:                                     ; preds = %scalar.ph873.preheader, %scalar.ph873
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %scalar.ph873 ], [ %indvars.iv426.ph, %scalar.ph873.preheader ] ; 3 uses
  %i.qw = add nsw i64 %indvars.iv426, %i.gf       ; 2 uses
  %i.qx = add nsw i64 %i.qw, %i.gf                ; 2 uses
  %i.qy = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv426 ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qw ; 2 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qx ; 2 uses
  %gep443 = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.qx ; 2 uses
  %i.rb = load <2 x double>, ptr %i.qy, align 8, !tbaa !11 ; 2 uses
  %i.rc = load <2 x double>, ptr %i.qz, align 8, !tbaa !11 ; 2 uses
  %i.rd = fadd <2 x double> %i.rb, %i.rc          ; 2 uses
  %i.re = load <2 x double>, ptr %i.ra, align 8, !tbaa !11 ; 2 uses
  %i.rf = load <2 x double>, ptr %gep443, align 8, !tbaa !11 ; 2 uses
  %i.rg = fadd <2 x double> %i.re, %i.rf          ; 2 uses
  %i.rh = fadd <2 x double> %i.rd, %i.rg
  store <2 x double> %i.rh, ptr %i.qy, align 8, !tbaa !11
  %i.ri = fsub <2 x double> %i.rd, %i.rg          ; 3 uses
  %i.rj = fsub <2 x double> %i.rb, %i.rc          ; 2 uses
  %i.rk = fsub <2 x double> %i.re, %i.rf
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.rm = fsub <2 x double> %i.rj, %i.rl          ; 3 uses
  %i.rn = fadd <2 x double> %i.rj, %i.rl          ; 4 uses
  %i.ro = shufflevector <2 x double> %i.rm, <2 x double> %i.rn, <2 x i32> <i32 0, i32 3>
  %i.rp = shufflevector <2 x double> %i.ri, <2 x double> %i.rn, <2 x i32> <i32 1, i32 3>
  %i.rq = fneg <2 x double> %i.rp                 ; 2 uses
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> %i.ri, <2 x i32> <i32 0, i32 2>
  %i.rs = fmul <2 x double> %i.qq, %i.rr
  %i.rt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qs, <2 x double> %i.ri, <2 x double> %i.rs)
  store <2 x double> %i.rt, ptr %i.ra, align 8, !tbaa !11
  %i.ru = shufflevector <2 x double> %i.rq, <2 x double> %i.rm, <2 x i32> <i32 1, i32 2>
  %i.rv = fmul <2 x double> %i.qt, %i.ru
  %i.rw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.ro, <2 x double> %i.rv)
  store <2 x double> %i.rw, ptr %i.qz, align 8, !tbaa !11
  %i.rx = shufflevector <2 x double> %i.rn, <2 x double> %i.rm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ry = fneg <2 x double> %i.rx
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> %i.rn, <2 x i32> <i32 1, i32 2>
  %i.sa = fmul <2 x double> %i.qu, %i.rz
  %i.sb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.rx, <2 x double> %i.sa)
  store <2 x double> %i.sb, ptr %gep443, align 8, !tbaa !11
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 2 ; 2 uses
  %i.sc = icmp slt i64 %indvars.iv.next427, %.reass
  br i1 %i.sc, label %scalar.ph873, label %._crit_edge409, !llvm.loop !65

._crit_edge409:                                   ; preds = %scalar.ph873, %middle.block908, %.lr.ph413
  %indvars.iv.next420 = add nsw i64 %indvars.iv419, %i.ge ; 2 uses
  %i.sd = icmp slt i64 %indvars.iv.next420, %i.gi
  %indvars.iv.next425 = add i32 %indvars.iv424, %i.gc
  %indvar.next = add i64 %indvar, 1
  br i1 %i.sd, label %.lr.ph413, label %._crit_edge414, !llvm.loop !66

._crit_edge414:                                   ; preds = %._crit_edge409, %._crit_edge401
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!"long", !7, i64 0}
!20 = !{!"timeval", !19, i64 0, !19, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 8}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12, !13, !14}
!25 = distinct !{!25, !12, !14, !13}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12, !13, !14}
!33 = distinct !{!33, !12, !13, !14}
!34 = distinct !{!34, !12, !13}
!35 = distinct !{!35, !12, !13}
!36 = distinct !{!36, !12, !13, !14}
!37 = distinct !{!37, !12, !14, !13}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12, !13, !14}
!45 = distinct !{!45, !12, !13, !14}
!46 = distinct !{!46, !12, !13}
!47 = distinct !{!47, !12, !13}
!48 = distinct !{!48, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !12, !13, !14}
!53 = distinct !{!53, !12, !13}
!54 = !{!49}
!55 = !{!50}
!56 = !{!51}
!57 = !{!50, !49}
!58 = distinct !{!58, !12, !13, !14}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13, !14}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13, !14}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13, !14}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12}
end_hunk_0
