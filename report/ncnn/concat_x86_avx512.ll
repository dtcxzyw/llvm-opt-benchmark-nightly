Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/concat_x86_avx512?download=true
inline.NumInlined: 137
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn17Concat_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.bu = and i32 %.01081.lcssa, 3
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = select i1 %i.bv, i32 4, i32 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %._crit_edge
  %.01085 = phi i32 [ 1, %._crit_edge ], [ 16, %bb.d ], [ %i.bw, %bb.f ], [ 8, %bb.e ] ; 3 uses
  %i.bx = sext i32 %i.s to i64
  %i.by = udiv i64 %i.ai, %i.bx
  %i.bz = zext nneg i32 %.01085 to i64
  %i.ca = mul i64 %i.by, %i.bz
  %i.cb = load ptr, ptr %2, align 8, !tbaa !13    ; 4 uses
  %i.cc = sdiv i32 %.01081.lcssa, %.01085
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cb, i32 noundef %i.cc, i64 noundef %i.ca, i32 noundef %.01085, ptr noundef %i.ce)
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !46 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1163

_ZNK4ncnn3Mat5emptyEv.exit1163:                   ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !48
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.ci, %i.cl
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.critedge, label %.preheader2349

.preheader2349:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1163
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.cp = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not2675 = icmp eq ptr %i.co, %i.cp
  br i1 %.not2675, label %.loopexit2350.thread, label %.lr.ph2357

.lr.ph2357:                                       ; preds = %.preheader2349, %.lr.ph2357
  %i.cq = phi ptr [ %i.dh, %.lr.ph2357 ], [ %i.cp, %.preheader2349 ]
  %.010862356 = phi i64 [ %i.df, %.lr.ph2357 ], [ 0, %.preheader2349 ] ; 2 uses
  %.010872355 = phi ptr [ %i.de, %.lr.ph2357 ], [ %i.cf, %.preheader2349 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %.010862356 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 44 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !36
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !19
  %i.cy = mul i64 %i.cx, %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.010872355, ptr align 4 %i.cs, i64 %i.cy, i1 false)
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !18
  %i.dc = mul nsw i32 %i.db, %i.cz
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.010872355, i64 %i.dd
  %i.df = add nuw i64 %.010862356, 1              ; 2 uses
  %i.dg = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.dh = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 72
  %i.dm = icmp ult i64 %i.df, %i.dl
  br i1 %i.dm, label %.lr.ph2357, label %.loopexit2350.thread, !llvm.loop !69

.loopexit2350.thread:                             ; preds = %.lr.ph2357, %.preheader2349
  %i.dn = icmp eq i32 %i.af, 0
  br label %bb.ap

.loopexit2350:                                    ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.do = icmp eq i32 %i.aa, 2                    ; 3 uses
  %i.dp = icmp eq i32 %i.af, 0                    ; 3 uses
  %or.cond = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.h, label %bb.ap

bb.h:                                             ; preds = %.loopexit2350
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !36 ; 36 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !18 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !35 ; 2 uses
  %.not2676 = icmp eq ptr %i.dx, %i.q
  br i1 %.not2676, label %._crit_edge2364, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.q to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 72                ; 8 uses
  %min.iters.check = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check, label %.lr.ph2363.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2919 = icmp ult i64 %i.eb, 32
  br i1 %min.iters.check2919, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ec = and i64 %i.eb, 24
  %n.vec = and i64 %i.eb, -32                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.dt, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2920 = insertelement <8 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat2921 = shufflevector <8 x i32> %broadcast.splatinsert2920, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ep, %vector.body ]
  %vec.phi2922 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi2923 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.phi2924 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.es, %vector.body ]
  %vec.phi2925 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi2926 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi2927 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi2928 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.eg, %vector.body ]
  %vec.phi2929 = phi <8 x i32> [ %broadcast.splat2921, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi2930 = phi <8 x i32> [ %broadcast.splat2921, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi2931 = phi <8 x i32> [ %broadcast.splat2921, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi2932 = phi <8 x i32> [ %broadcast.splat2921, %vector.ph ], [ %i.ek, %vector.body ]
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %vec.ind ; 3 uses
  %wide.gep2933 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %step.add ; 3 uses
  %wide.gep2934 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %step.add.2 ; 3 uses
  %wide.gep2935 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %step.add.3 ; 3 uses
  %wide.gep2936 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.gep2937 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2933, i64 16
  %wide.gep2938 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2934, i64 16
  %wide.gep2939 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2935, i64 16
  %wide.masked.gather = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2936, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather2940 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2937, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather2941 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2938, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather2942 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2939, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.ed = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather, <8 x i64> %vec.phi2925) ; 2 uses
  %i.ee = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2940, <8 x i64> %vec.phi2926) ; 2 uses
  %i.ef = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2941, <8 x i64> %vec.phi2927) ; 2 uses
  %i.eg = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2942, <8 x i64> %vec.phi2928) ; 2 uses
  %wide.gep2943 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.gep2944 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2933, i64 24
  %wide.gep2945 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2934, i64 24
  %wide.gep2946 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2935, i64 24
  %wide.masked.gather2947 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2943, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather2948 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2944, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather2949 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2945, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather2950 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2946, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.eh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2947, <8 x i32> %vec.phi2929) ; 2 uses
  %i.ei = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2948, <8 x i32> %vec.phi2930) ; 2 uses
  %i.ej = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2949, <8 x i32> %vec.phi2931) ; 2 uses
  %i.ek = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2950, <8 x i32> %vec.phi2932) ; 2 uses
  %wide.gep2951 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.gep2952 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2933, i64 48
  %wide.gep2953 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2934, i64 48
  %wide.gep2954 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2935, i64 48
  %wide.masked.gather2955 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2951, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %wide.masked.gather2956 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2952, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %wide.masked.gather2957 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2953, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %wide.masked.gather2958 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2954, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %i.el = mul nsw <8 x i32> %wide.masked.gather2955, %wide.masked.gather2947
  %i.em = mul nsw <8 x i32> %wide.masked.gather2956, %wide.masked.gather2948
  %i.en = mul nsw <8 x i32> %wide.masked.gather2957, %wide.masked.gather2949
  %i.eo = mul nsw <8 x i32> %wide.masked.gather2958, %wide.masked.gather2950
  %i.ep = add <8 x i32> %i.el, %vec.phi           ; 2 uses
  %i.eq = add <8 x i32> %i.em, %vec.phi2922       ; 2 uses
  %i.er = add <8 x i32> %i.en, %vec.phi2923       ; 2 uses
  %i.es = add <8 x i32> %i.eo, %vec.phi2924       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.eq, %i.ep
  %bin.rdx2959 = add <8 x i32> %i.er, %bin.rdx
  %bin.rdx2960 = add <8 x i32> %i.es, %bin.rdx2959
  %i.eu = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx2960) ; 3 uses
  %rdx.minmax = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.ed, <8 x i64> %i.ee)
  %rdx.minmax2961 = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.ef)
  %rdx.minmax2962 = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax2961, <8 x i64> %i.eg)
  %i.ev = tail call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %rdx.minmax2962) ; 3 uses
  %rdx.minmax2963 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.eh, <8 x i32> %i.ei)
  %rdx.minmax2964 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2963, <8 x i32> %i.ej)
  %rdx.minmax2965 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2964, <8 x i32> %i.ek)
  %i.ew = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax2965) ; 3 uses
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge2364, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2363.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.eu, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx2966 = phi i64 [ %i.ev, %vec.epilog.iter.check ], [ %i.dt, %vector.main.loop.iter.check ]
  %bc.merge.rdx2967 = phi i32 [ %i.ew, %vec.epilog.iter.check ], [ %i.dv, %vector.main.loop.iter.check ]
  %broadcast.splatinsert2977 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2967, i64 0
  %broadcast.splat2978 = shufflevector <8 x i32> %broadcast.splatinsert2977, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2969.a = insertelement <8 x i64> poison, i64 %bc.merge.rdx2966, i64 0
  %broadcast.splat2970.a = shufflevector <8 x i64> %broadcast.splatinsert2969.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %n.vec2968 = and i64 %i.eb, -8                  ; 3 uses
  %6 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert2973 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat2974 = shufflevector <8 x i64> %broadcast.splatinsert2973, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat2974, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2975 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2987, %vec.epilog.vector.body ]
  %vec.ind2976 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next2988, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi2977 = phi <8 x i32> [ %6, %vec.epilog.ph ], [ %i.fa, %vec.epilog.vector.body ]
  %vec.phi2978 = phi <8 x i64> [ %broadcast.splat2970.a, %vec.epilog.ph ], [ %i.ex, %vec.epilog.vector.body ]
  %vec.phi2979 = phi <8 x i32> [ %broadcast.splat2978, %vec.epilog.ph ], [ %i.ey, %vec.epilog.vector.body ]
  %wide.gep2980 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %vec.ind2976 ; 3 uses
  %wide.gep2981 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2980, i64 16
  %wide.masked.gather2982 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2981, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.ex = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2982, <8 x i64> %vec.phi2978) ; 2 uses
  %wide.gep2983 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2980, i64 24
  %wide.masked.gather2984 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2983, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.ey = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2984, <8 x i32> %vec.phi2979) ; 2 uses
  %wide.gep2985 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2980, i64 48
  %wide.masked.gather2986 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2985, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %i.ez = mul nsw <8 x i32> %wide.masked.gather2986, %wide.masked.gather2984
  %i.fa = add <8 x i32> %i.ez, %vec.phi2977       ; 2 uses
  %index.next2987 = add nuw i64 %index2975, 8     ; 2 uses
  %vec.ind.next2988 = add nuw <8 x i64> %vec.ind2976, splat (i64 8)
  %i.fb = icmp eq i64 %index.next2987, %n.vec2968
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fa) ; 2 uses
  %i.fd = tail call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %i.ex) ; 2 uses
  %i.fe = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.ey) ; 2 uses
  %cmp.n2989 = icmp eq i64 %i.eb, %n.vec2968
  br i1 %cmp.n2989, label %._crit_edge2364, label %.lr.ph2363.preheader

.lr.ph2363.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010822361.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2968, %vec.epilog.middle.block ]
  %.010832360.ph = phi i32 [ 0, %iter.check ], [ %i.eu, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ]
  %.02359.ph = phi i64 [ %i.dt, %iter.check ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ]
  %.023302358.ph = phi i32 [ %i.dv, %iter.check ], [ %i.ew, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  br label %.lr.ph2363

._crit_edge2364:                                  ; preds = %.lr.ph2363, %middle.block, %vec.epilog.middle.block, %bb.h
  %.02330.lcssa = phi i32 [ %i.dv, %bb.h ], [ %i.fe, %vec.epilog.middle.block ], [ %i.ew, %middle.block ], [ %.sroa.speculated2309, %.lr.ph2363 ] ; 8 uses
  %.0.lcssa = phi i64 [ %i.dt, %bb.h ], [ %i.fd, %vec.epilog.middle.block ], [ %i.ev, %middle.block ], [ %.sroa.speculated2325, %.lr.ph2363 ] ; 2 uses
  %.01083.lcssa = phi i32 [ 0, %bb.h ], [ %i.fc, %vec.epilog.middle.block ], [ %i.eu, %middle.block ], [ %i.fq, %.lr.ph2363 ] ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !42, !range !43, !noundef !44
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.i, label %bb.l

.lr.ph2363:                                       ; preds = %.lr.ph2363.preheader, %.lr.ph2363
  %.010822361 = phi i64 [ %i.fr, %.lr.ph2363 ], [ %.010822361.ph, %.lr.ph2363.preheader ] ; 2 uses
  %.010832360 = phi i32 [ %i.fq, %.lr.ph2363 ], [ %.010832360.ph, %.lr.ph2363.preheader ]
  %.02359 = phi i64 [ %.sroa.speculated2325, %.lr.ph2363 ], [ %.02359.ph, %.lr.ph2363.preheader ]
  %.023302358 = phi i32 [ %.sroa.speculated2309, %.lr.ph2363 ], [ %.023302358.ph, %.lr.ph2363.preheader ]
  %i.fi = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %.010822361 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !49
  %.sroa.speculated2325 = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 %.02359) ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !50 ; 2 uses
  %.sroa.speculated2309 = tail call i32 @llvm.smin.i32(i32 %i.fm, i32 %.023302358) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !51
  %i.fp = mul nsw i32 %i.fo, %i.fm
  %i.fq = add nsw i32 %i.fp, %.010832360          ; 2 uses
  %i.fr = add nuw i64 %.010822361, 1              ; 2 uses
  %exitcond2709.not = icmp eq i64 %i.fr, %i.eb
  br i1 %exitcond2709.not, label %._crit_edge2364, label %.lr.ph2363, !llvm.loop !72

bb.i:                                             ; preds = %._crit_edge2364
  %i.fs = and i32 %.01083.lcssa, 15
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fu = and i32 %.01083.lcssa, 7
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = and i32 %.01083.lcssa, 3
  %i.fx = icmp eq i32 %i.fw, 0
  %i.fy = select i1 %i.fx, i32 4, i32 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %._crit_edge2364
  %.01080 = phi i32 [ 1, %._crit_edge2364 ], [ 16, %bb.i ], [ %i.fy, %bb.k ], [ 8, %bb.j ] ; 5 uses
  %i.fz = sext i32 %.02330.lcssa to i64
  %i.ga = udiv i64 %.0.lcssa, %i.fz
  %i.gb = zext nneg i32 %.01080 to i64
  %i.gc = mul i64 %i.ga, %i.gb
  %i.gd = load ptr, ptr %2, align 8, !tbaa !13    ; 11 uses
  %i.ge = sdiv i32 %.01083.lcssa, %.01080
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !45
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.gd, i32 noundef %i.dr, i32 noundef %i.ge, i64 noundef %i.gc, i32 noundef %.01080, ptr noundef %i.gg)
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !46
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1162

_ZNK4ncnn3Mat5emptyEv.exit1162:                   ; preds = %bb.l
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 64 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !47
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 56 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !48
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul i64 %i.gk, %i.gn
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1162
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !53 ; 2 uses
  %i.gt = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !54
  store <2 x ptr> %i.gt, ptr %4, align 16, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !19
  store i64 %i.gw, ptr %i.gu, align 16, !tbaa !19
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !18
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !55
  store ptr %i.hc, ptr %i.ha, align 16, !tbaa !55
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.hf = load <4 x i32>, ptr %i.he, align 8, !tbaa !50
  store <4 x i32> %i.hf, ptr %i.hd, align 8, !tbaa !50
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.hh = load i32, ptr %i.gl, align 8, !tbaa !48
  store i32 %i.hh, ptr %i.hg, align 8, !tbaa !48
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.hj = load i64, ptr %i.gj, align 8, !tbaa !47
  store i64 %i.hj, ptr %i.hi, align 16, !tbaa !47
  %.not.i1295 = icmp eq ptr %i.gs, null
  br i1 %.not.i1295, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hk = atomicrmw add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.m, %bb.n
  %i.hl = icmp slt i32 %.02330.lcssa, %.01080     ; 2 uses
  br i1 %i.hl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.hm = sdiv i32 %.01083.lcssa, %.02330.lcssa
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !56
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.dr, i32 noundef %i.hm, i64 noundef %.0.lcssa, i32 noundef %.02330.lcssa, ptr noundef %i.ho)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.hp = load ptr, ptr %4, align 16, !tbaa !46
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.critedge.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1161

_ZNK4ncnn3Mat5emptyEv.exit1161:                   ; preds = %bb.p
  %i.hr = load i64, ptr %i.hi, align 16, !tbaa !47
  %i.hs = load i32, ptr %i.hg, align 8, !tbaa !48
  %i.ht = sext i32 %i.hs to i64
  %i.hu = mul i64 %i.hr, %i.ht
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %.critedge.critedge, label %bb.q

bb.q:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1161, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hw = load ptr, ptr %i.dw, align 8, !tbaa !35 ; 2 uses
  %i.hx = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not2677 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not2677, label %._crit_edge2473, label %.lr.ph2472

.lr.ph2472:                                       ; preds = %bb.q
  %i.hy = load ptr, ptr %4, align 16, !tbaa !46
  %i.hz = icmp eq i32 %.02330.lcssa, 8
  %i.ia = shl i32 %i.dr, 3                        ; 3 uses
  %i.ib = sext i32 %i.ia to i64                   ; 7 uses
  %i.ic = icmp sgt i32 %i.dr, 0                   ; 6 uses
  %i.id = shl i32 %i.dr, 4
  %i.ie = sext i32 %i.id to i64                   ; 6 uses
  %i.if = icmp eq i32 %.02330.lcssa, 4            ; 2 uses
  %i.ig = shl i32 %i.dr, 2                        ; 2 uses
  %i.ih = sext i32 %i.ig to i64                   ; 8 uses
  %i.ii = mul nsw i32 %i.dr, 12
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = icmp eq i32 %.02330.lcssa, 1            ; 3 uses
  %i.il = sext i32 %i.dr to i64                   ; 5 uses
  %i.im = shl i32 %i.dr, 1
  %i.in = sext i32 %i.im to i64                   ; 5 uses
  %i.io = mul i32 %i.dr, 3
  %i.ip = sext i32 %i.io to i64                   ; 5 uses
  %i.iq = mul i32 %i.dr, 5
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = mul i32 %i.dr, 6
  %i.it = sext i32 %i.is to i64                   ; 3 uses
  %i.iu = mul i32 %i.dr, 7
  %i.iv = sext i32 %i.iu to i64                   ; 3 uses
  %i.iw = mul nsw i32 %i.dr, 9
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i32 %i.dr, 10
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i32 %i.dr, 11
  %i.jb = sext i32 %i.ja to i64
  %i.jc = mul nsw i32 %i.dr, 13
  %i.jd = sext i32 %i.jc to i64
  %i.je = mul nsw i32 %i.dr, 14
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Concat_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %vec.ind3614 = phi <8 x i64> [ %induction3611, %vec.epilog.ph3607 ], [ %vec.ind.next3620, %vec.epilog.vector.body3612 ] ; 2 uses
  %vec.phi3615 = phi <8 x i32> [ %i.alz, %vec.epilog.ph3607 ], [ %i.ama, %vec.epilog.vector.body3612 ]
  %wide.gep3616 = getelementptr inbounds nuw [72 x i8], ptr %i.alf, <8 x i64> %vec.ind3614
  %wide.gep3617 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3616, i64 44
  %wide.masked.gather3618 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3617, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !36
  %i.ama = add <8 x i32> %wide.masked.gather3618, %vec.phi3615 ; 2 uses
  %index.next3619 = add nuw i64 %index3613, 8     ; 2 uses
  %vec.ind.next3620 = add nuw <8 x i64> %vec.ind3614, splat (i64 8)
  %i.amb = icmp eq i64 %index.next3619, %n.vec3608
  br i1 %i.amb, label %vec.epilog.middle.block3621, label %vec.epilog.vector.body3612, !llvm.loop !107

vec.epilog.middle.block3621:                      ; preds = %vec.epilog.vector.body3612
  %i.amc = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ama) ; 2 uses
  %cmp.n3622 = icmp eq i64 %i.alr, %n.vec3608
  br i1 %cmp.n3622, label %._crit_edge2478, label %.lr.ph2477.preheader

.lr.ph2477.preheader:                             ; preds = %iter.check3603, %vec.epilog.iter.check3605, %vec.epilog.middle.block3621
  %.09512475.ph = phi i64 [ 0, %iter.check3603 ], [ %n.vec3571, %vec.epilog.iter.check3605 ], [ %n.vec3608, %vec.epilog.middle.block3621 ]
  %.09522474.ph = phi i32 [ 0, %iter.check3603 ], [ %i.aly, %vec.epilog.iter.check3605 ], [ %i.amc, %vec.epilog.middle.block3621 ]
  br label %.lr.ph2477

._crit_edge2478:                                  ; preds = %.lr.ph2477, %middle.block3596, %vec.epilog.middle.block3621, %bb.aq
  %.0952.lcssa = phi i32 [ 0, %bb.aq ], [ %i.amc, %vec.epilog.middle.block3621 ], [ %i.aly, %middle.block3596 ], [ %i.ams, %.lr.ph2477 ]
  %i.amd = load ptr, ptr %2, align 8, !tbaa !13   ; 5 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !45
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.amd, i32 noundef %.0952.lcssa, i32 noundef %i.alh, i64 noundef %i.alj, i32 noundef %i.all, ptr noundef %i.amf)
  %i.amg = load ptr, ptr %i.amd, align 8, !tbaa !46
  %i.amh = icmp eq ptr %i.amg, null
  br i1 %i.amh, label %.critedge1142, label %_ZNK4ncnn3Mat5emptyEv.exit1160

_ZNK4ncnn3Mat5emptyEv.exit1160:                   ; preds = %._crit_edge2478
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amd, i64 64
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !47
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amd, i64 56
  %i.aml = load i32, ptr %i.amk, align 8, !tbaa !48
  %i.amm = sext i32 %i.aml to i64
  %i.amn = mul i64 %i.amj, %i.amm
  %i.amo = icmp eq i64 %i.amn, 0
  br i1 %i.amo, label %.critedge1142, label %bb.ar

.lr.ph2477:                                       ; preds = %.lr.ph2477.preheader, %.lr.ph2477
  %.09512475 = phi i64 [ %i.amt, %.lr.ph2477 ], [ %.09512475.ph, %.lr.ph2477.preheader ] ; 2 uses
  %.09522474 = phi i32 [ %i.ams, %.lr.ph2477 ], [ %.09522474.ph, %.lr.ph2477.preheader ]
  %i.amp = getelementptr inbounds nuw [72 x i8], ptr %i.alf, i64 %.09512475
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 44
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !36
  %i.ams = add nsw i32 %i.amr, %.09522474         ; 2 uses
  %i.amt = add nuw i64 %.09512475, 1              ; 2 uses
  %exitcond2746.not = icmp eq i64 %i.amt, %i.alr
  br i1 %exitcond2746.not, label %._crit_edge2478, label %.lr.ph2477, !llvm.loop !108

bb.ar:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1160
  %i.amu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.amv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn17Concat_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.amd, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.amw = icmp eq i32 %i.aa, 3                   ; 2 uses
  %i.amx = icmp eq i32 %i.aa, 4                   ; 3 uses
  %i.amy = add i32 %i.aa, -3
  %or.cond23 = icmp ult i32 %i.amy, 2
  %or.cond25 = select i1 %or.cond23, i1 %i.alc, i1 false
  br i1 %or.cond25, label %bb.at, label %bb.cb

bb.at:                                            ; preds = %bb.as
  %i.amz = load ptr, ptr %1, align 8, !tbaa !13   ; 13 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 44
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !36 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amz, i64 48
  %i.and = load i32, ptr %i.anc, align 8, !tbaa !51 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amz, i64 52
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !62 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !19 ; 4 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amz, i64 24
  %i.anj = load i32, ptr %i.ani, align 8, !tbaa !18 ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !35 ; 2 uses
  %.not2679 = icmp eq ptr %i.anl, %i.amz
  br i1 %.not2679, label %._crit_edge2486, label %iter.check3698

iter.check3698:                                   ; preds = %bb.at
  %i.anm = ptrtoint ptr %i.anl to i64
  %i.ann = ptrtoint ptr %i.amz to i64
  %i.ano = sub i64 %i.anm, %i.ann
  %i.anp = sdiv exact i64 %i.ano, 72              ; 8 uses
  %min.iters.check3626 = icmp ult i64 %i.anp, 8
  br i1 %min.iters.check3626, label %.lr.ph2485.preheader, label %vector.main.loop.iter.check3627

vector.main.loop.iter.check3627:                  ; preds = %iter.check3698
  %min.iters.check3628 = icmp ult i64 %i.anp, 32
  br i1 %min.iters.check3628, label %vec.epilog.ph3702, label %vector.ph3629

vector.ph3629:                                    ; preds = %vector.main.loop.iter.check3627
  %i.anq = and i64 %i.anp, 24
  %n.vec3630 = and i64 %i.anp, -32                ; 4 uses
  %broadcast.splatinsert3631 = insertelement <8 x i64> poison, i64 %i.anh, i64 0
  %broadcast.splat3632 = shufflevector <8 x i64> %broadcast.splatinsert3631, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert3633 = insertelement <8 x i32> poison, i32 %i.anj, i64 0
  %broadcast.splat3634 = shufflevector <8 x i32> %broadcast.splatinsert3633, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body3635

vector.body3635:                                  ; preds = %vector.ph3629, %vector.body3635
  %index3636 = phi i64 [ 0, %vector.ph3629 ], [ %index.next3681, %vector.body3635 ]
  %vec.ind3637 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph3629 ], [ %vec.ind.next3682, %vector.body3635 ] ; 5 uses
  %vec.phi3638.a = phi <8 x i32> [ zeroinitializer, %vector.ph3629 ], [ %i.aod, %vector.body3635 ]
  %vec.phi3639.a = phi <8 x i32> [ zeroinitializer, %vector.ph3629 ], [ %i.aoe, %vector.body3635 ]
  %vec.phi3640.a = phi <8 x i32> [ zeroinitializer, %vector.ph3629 ], [ %i.aof, %vector.body3635 ]
  %vec.phi3641.a = phi <8 x i32> [ zeroinitializer, %vector.ph3629 ], [ %i.aog, %vector.body3635 ]
  %vec.phi3642.a = phi <8 x i64> [ %broadcast.splat3632, %vector.ph3629 ], [ %i.anr, %vector.body3635 ]
  %vec.phi3643.a = phi <8 x i64> [ %broadcast.splat3632, %vector.ph3629 ], [ %i.ans, %vector.body3635 ]
  %vec.phi3644 = phi <8 x i64> [ %broadcast.splat3632, %vector.ph3629 ], [ %i.ant, %vector.body3635 ]
  %vec.phi3645 = phi <8 x i64> [ %broadcast.splat3632, %vector.ph3629 ], [ %i.anu, %vector.body3635 ]
  %vec.phi3646 = phi <8 x i32> [ %broadcast.splat3634, %vector.ph3629 ], [ %i.anv, %vector.body3635 ]
  %vec.phi3647 = phi <8 x i32> [ %broadcast.splat3634, %vector.ph3629 ], [ %i.anw, %vector.body3635 ]
  %vec.phi3648 = phi <8 x i32> [ %broadcast.splat3634, %vector.ph3629 ], [ %i.anx, %vector.body3635 ]
  %vec.phi3649 = phi <8 x i32> [ %broadcast.splat3634, %vector.ph3629 ], [ %i.any, %vector.body3635 ]
  %step.add3650 = add nuw <8 x i64> %vec.ind3637, splat (i64 8)
  %step.add.23651 = add nuw <8 x i64> %vec.ind3637, splat (i64 16)
  %step.add.33652 = add nuw <8 x i64> %vec.ind3637, splat (i64 24)
  %wide.gep3653.a = getelementptr inbounds nuw [72 x i8], ptr %i.amz, <8 x i64> %vec.ind3637 ; 3 uses
  %wide.gep3654.a = getelementptr inbounds nuw [72 x i8], ptr %i.amz, <8 x i64> %step.add3650 ; 3 uses
  %wide.gep3655 = getelementptr inbounds nuw [72 x i8], ptr %i.amz, <8 x i64> %step.add.23651 ; 3 uses
  %wide.gep3656 = getelementptr inbounds nuw [72 x i8], ptr %i.amz, <8 x i64> %step.add.33652 ; 3 uses
  %wide.gep3657 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3653.a, i64 16
  %wide.gep3658 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3654.a, i64 16
  %wide.gep3659.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3655, i64 16
  %wide.gep3660.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3656, i64 16
  %wide.masked.gather3661 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3657, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather3662 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3658, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather3663.a = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3659.a, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather3664.a = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3660.a, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.anr = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3661, <8 x i64> %vec.phi3642.a) ; 2 uses
  %i.ans = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3662, <8 x i64> %vec.phi3643.a) ; 2 uses
  %i.ant = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3663.a, <8 x i64> %vec.phi3644) ; 2 uses
  %i.anu = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3664.a, <8 x i64> %vec.phi3645) ; 2 uses
  %wide.gep3665 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3653.a, i64 24
  %wide.gep3666 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3654.a, i64 24
  %wide.gep3667.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3655, i64 24
  %wide.gep3668.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3656, i64 24
  %wide.masked.gather3669 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3665, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather3670 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3666, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather3671.a = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3667.a, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather3672.a = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3668.a, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.anv = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3669, <8 x i32> %vec.phi3646) ; 2 uses
  %i.anw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3670, <8 x i32> %vec.phi3647) ; 2 uses
  %i.anx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3671.a, <8 x i32> %vec.phi3648) ; 2 uses
  %i.any = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3672.a, <8 x i32> %vec.phi3649) ; 2 uses
  %wide.gep3673 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3653.a, i64 56
  %wide.gep3674 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3654.a, i64 56
  %wide.gep3675 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3655, i64 56
  %wide.gep3676 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3656, i64 56
  %wide.masked.gather3677 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3673, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %wide.masked.gather3678 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3674, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %wide.masked.gather3679 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3675, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %wide.masked.gather3680 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3676, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %i.anz = mul nsw <8 x i32> %wide.masked.gather3677, %wide.masked.gather3669
  %i.aoa = mul nsw <8 x i32> %wide.masked.gather3678, %wide.masked.gather3670
  %i.aob = mul nsw <8 x i32> %wide.masked.gather3679, %wide.masked.gather3671.a
  %i.aoc = mul nsw <8 x i32> %wide.masked.gather3680, %wide.masked.gather3672.a
  %i.aod = add <8 x i32> %i.anz, %vec.phi3638.a   ; 2 uses
  %i.aoe = add <8 x i32> %i.aoa, %vec.phi3639.a   ; 2 uses
  %i.aof = add <8 x i32> %i.aob, %vec.phi3640.a   ; 2 uses
  %i.aog = add <8 x i32> %i.aoc, %vec.phi3641.a   ; 2 uses
  %index.next3681 = add nuw i64 %index3636, 32    ; 2 uses
  %vec.ind.next3682 = add nuw <8 x i64> %vec.ind3637, splat (i64 32)
  %i.aoh = icmp eq i64 %index.next3681, %n.vec3630
  br i1 %i.aoh, label %middle.block3683, label %vector.body3635, !llvm.loop !109

middle.block3683:                                 ; preds = %vector.body3635
  %bin.rdx3684 = add <8 x i32> %i.aoe, %i.aod
  %bin.rdx3685 = add <8 x i32> %i.aof, %bin.rdx3684
  %bin.rdx3686 = add <8 x i32> %i.aog, %bin.rdx3685
  %i.aoi = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx3686) ; 3 uses
  %rdx.minmax3687 = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.anr, <8 x i64> %i.ans)
  %rdx.minmax3688 = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax3687, <8 x i64> %i.ant)
  %rdx.minmax3689 = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax3688, <8 x i64> %i.anu)
  %i.aoj = call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %rdx.minmax3689) ; 3 uses
  %rdx.minmax3690 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.anv, <8 x i32> %i.anw)
  %rdx.minmax3691 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax3690, <8 x i32> %i.anx)
  %rdx.minmax3692 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax3691, <8 x i32> %i.any)
  %i.aok = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax3692) ; 3 uses
  %cmp.n3693 = icmp eq i64 %i.anp, %n.vec3630
  br i1 %cmp.n3693, label %._crit_edge2486, label %vec.epilog.iter.check3700

vec.epilog.iter.check3700:                        ; preds = %middle.block3683
  %min.epilog.iters.check3701 = icmp eq i64 %i.anq, 0
  br i1 %min.epilog.iters.check3701, label %.lr.ph2485.preheader, label %vec.epilog.ph3702, !prof !52

vec.epilog.ph3702:                                ; preds = %vector.main.loop.iter.check3627, %vec.epilog.iter.check3700
  %vec.epilog.resume.val3694 = phi i64 [ %n.vec3630, %vec.epilog.iter.check3700 ], [ 0, %vector.main.loop.iter.check3627 ] ; 2 uses
  %bc.merge.rdx3695.a = phi i32 [ %i.aoi, %vec.epilog.iter.check3700 ], [ 0, %vector.main.loop.iter.check3627 ]
  %bc.merge.rdx3696.a = phi i64 [ %i.aoj, %vec.epilog.iter.check3700 ], [ %i.anh, %vector.main.loop.iter.check3627 ]
  %bc.merge.rdx3697 = phi i32 [ %i.aok, %vec.epilog.iter.check3700 ], [ %i.anj, %vector.main.loop.iter.check3627 ]
  %broadcast.splatinsert3708 = insertelement <8 x i32> poison, i32 %bc.merge.rdx3697, i64 0
  %broadcast.splat3709 = shufflevector <8 x i32> %broadcast.splatinsert3708, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3704 = insertelement <8 x i64> poison, i64 %bc.merge.rdx3696.a, i64 0
  %broadcast.splat3705 = shufflevector <8 x i64> %broadcast.splatinsert3704, <8 x i64> poison, <8 x i32> zeroinitializer
  %n.vec3697 = and i64 %i.anp, -8                 ; 3 uses
  %7 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx3695.a, i64 0
  %broadcast.splatinsert3708.a = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val3694, i64 0
  %broadcast.splat3709.a = shufflevector <8 x i64> %broadcast.splatinsert3708.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3710 = or disjoint <8 x i64> %broadcast.splat3709.a, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body3711

vec.epilog.vector.body3711:                       ; preds = %vec.epilog.vector.body3711, %vec.epilog.ph3702
  %index3712 = phi i64 [ %vec.epilog.resume.val3694, %vec.epilog.ph3702 ], [ %index.next3724, %vec.epilog.vector.body3711 ]
  %vec.ind3713 = phi <8 x i64> [ %induction3710, %vec.epilog.ph3702 ], [ %vec.ind.next3725, %vec.epilog.vector.body3711 ] ; 2 uses
  %vec.phi3714 = phi <8 x i32> [ %7, %vec.epilog.ph3702 ], [ %i.aoo, %vec.epilog.vector.body3711 ]
  %vec.phi3715 = phi <8 x i64> [ %broadcast.splat3705, %vec.epilog.ph3702 ], [ %i.aol, %vec.epilog.vector.body3711 ]
  %vec.phi3716 = phi <8 x i32> [ %broadcast.splat3709, %vec.epilog.ph3702 ], [ %i.aom, %vec.epilog.vector.body3711 ]
  %wide.gep3717 = getelementptr inbounds nuw [72 x i8], ptr %i.amz, <8 x i64> %vec.ind3713 ; 3 uses
  %wide.gep3718 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3717, i64 16
  %wide.masked.gather3719 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3718, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.aol = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3719, <8 x i64> %vec.phi3715) ; 2 uses
  %wide.gep3720 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3717, i64 24
  %wide.masked.gather3721 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3720, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.aom = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3721, <8 x i32> %vec.phi3716) ; 2 uses
  %wide.gep3722 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3717, i64 56
  %wide.masked.gather3723 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3722, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %i.aon = mul nsw <8 x i32> %wide.masked.gather3723, %wide.masked.gather3721
  %i.aoo = add <8 x i32> %i.aon, %vec.phi3714     ; 2 uses
  %index.next3724 = add nuw i64 %index3712, 8     ; 2 uses
  %vec.ind.next3725 = add nuw <8 x i64> %vec.ind3713, splat (i64 8)
  %i.aop = icmp eq i64 %index.next3724, %n.vec3697
  br i1 %i.aop, label %vec.epilog.middle.block3726, label %vec.epilog.vector.body3711, !llvm.loop !110

vec.epilog.middle.block3726:                      ; preds = %vec.epilog.vector.body3711
  %i.aoq = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aoo) ; 2 uses
  %i.aor = call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %i.aol) ; 2 uses
  %i.aos = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.aom) ; 2 uses
  %cmp.n3727 = icmp eq i64 %i.anp, %n.vec3697
  br i1 %cmp.n3727, label %._crit_edge2486, label %.lr.ph2485.preheader

.lr.ph2485.preheader:                             ; preds = %iter.check3698, %vec.epilog.iter.check3700, %vec.epilog.middle.block3726
  %.09492483.ph = phi i64 [ 0, %iter.check3698 ], [ %n.vec3630, %vec.epilog.iter.check3700 ], [ %n.vec3697, %vec.epilog.middle.block3726 ]
  %.09502482.ph = phi i32 [ 0, %iter.check3698 ], [ %i.aoi, %vec.epilog.iter.check3700 ], [ %i.aoq, %vec.epilog.middle.block3726 ]
  %.023312481.ph = phi i64 [ %i.anh, %iter.check3698 ], [ %i.aoj, %vec.epilog.iter.check3700 ], [ %i.aor, %vec.epilog.middle.block3726 ]
  %.023322480.ph = phi i32 [ %i.anj, %iter.check3698 ], [ %i.aok, %vec.epilog.iter.check3700 ], [ %i.aos, %vec.epilog.middle.block3726 ]
  br label %.lr.ph2485

._crit_edge2486:                                  ; preds = %.lr.ph2485, %middle.block3683, %vec.epilog.middle.block3726, %bb.at
  %.02332.lcssa = phi i32 [ %i.anj, %bb.at ], [ %i.aos, %vec.epilog.middle.block3726 ], [ %i.aok, %middle.block3683 ], [ %.sroa.speculated, %.lr.ph2485 ] ; 8 uses
  %.02331.lcssa = phi i64 [ %i.anh, %bb.at ], [ %i.aor, %vec.epilog.middle.block3726 ], [ %i.aoj, %middle.block3683 ], [ %.sroa.speculated2293, %.lr.ph2485 ] ; 2 uses
  %.0950.lcssa = phi i32 [ 0, %bb.at ], [ %i.aoq, %vec.epilog.middle.block3726 ], [ %i.aoi, %middle.block3683 ], [ %i.ape, %.lr.ph2485 ] ; 5 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !42, !range !43, !noundef !44
  %i.aov = trunc nuw i8 %i.aou to i1
  br i1 %i.aov, label %bb.au, label %bb.ax

.lr.ph2485:                                       ; preds = %.lr.ph2485.preheader, %.lr.ph2485
  %.09492483 = phi i64 [ %i.apf, %.lr.ph2485 ], [ %.09492483.ph, %.lr.ph2485.preheader ] ; 2 uses
  %.09502482 = phi i32 [ %i.ape, %.lr.ph2485 ], [ %.09502482.ph, %.lr.ph2485.preheader ]
  %.023312481 = phi i64 [ %.sroa.speculated2293, %.lr.ph2485 ], [ %.023312481.ph, %.lr.ph2485.preheader ]
  %.023322480 = phi i32 [ %.sroa.speculated, %.lr.ph2485 ], [ %.023322480.ph, %.lr.ph2485.preheader ]
  %i.aow = getelementptr inbounds nuw [72 x i8], ptr %i.amz, i64 %.09492483 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  %i.aoy = load i64, ptr %i.aox, align 8, !tbaa !49
  %.sroa.speculated2293 = call i64 @llvm.umin.i64(i64 %i.aoy, i64 %.023312481) ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  %i.apa = load i32, ptr %i.aoz, align 8, !tbaa !50 ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.apa, i32 %.023322480) ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aow, i64 56
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !48
  %i.apd = mul nsw i32 %i.apc, %i.apa
  %i.ape = add nsw i32 %i.apd, %.09502482         ; 2 uses
  %i.apf = add nuw i64 %.09492483, 1              ; 2 uses
  %exitcond2748.not = icmp eq i64 %i.apf, %i.anp
  br i1 %exitcond2748.not, label %._crit_edge2486, label %.lr.ph2485, !llvm.loop !111

bb.au:                                            ; preds = %._crit_edge2486
  %i.apg = and i32 %.0950.lcssa, 15
  %i.aph = icmp eq i32 %i.apg, 0
  br i1 %i.aph, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.api = and i32 %.0950.lcssa, 7
  %i.apj = icmp eq i32 %i.api, 0
  br i1 %i.apj, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.apk = and i32 %.0950.lcssa, 3
  %i.apl = icmp eq i32 %i.apk, 0
  %i.apm = select i1 %i.apl, i32 4, i32 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw, %._crit_edge2486
  %.0948 = phi i32 [ 1, %._crit_edge2486 ], [ 16, %bb.au ], [ %i.apm, %bb.aw ], [ 8, %bb.av ] ; 5 uses
  %i.apn = sext i32 %.02332.lcssa to i64
  %i.apo = udiv i64 %.02331.lcssa, %i.apn
  %i.app = zext nneg i32 %.0948 to i64
  %i.apq = mul i64 %i.apo, %i.app
  %i.apr = load ptr, ptr %2, align 8, !tbaa !13   ; 11 uses
  %i.aps = sdiv i32 %.0950.lcssa, %.0948
  %i.apt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !45
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.apr, i32 noundef %i.anb, i32 noundef %i.and, i32 noundef %i.anf, i32 noundef %i.aps, i64 noundef %i.apq, i32 noundef %.0948, ptr noundef %i.apu)
  %i.apv = load ptr, ptr %i.apr, align 8, !tbaa !46
  %i.apw = icmp eq ptr %i.apv, null
  br i1 %i.apw, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1159

_ZNK4ncnn3Mat5emptyEv.exit1159:                   ; preds = %bb.ax
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apr, i64 64 ; 2 uses
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !47
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apr, i64 56 ; 2 uses
  %i.aqa = load i32, ptr %i.apz, align 8, !tbaa !48
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = mul i64 %i.apy, %i.aqb
  %i.aqd = icmp eq i64 %i.aqc, 0
  br i1 %i.aqd, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1159
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apr, i64 40 ; 2 uses
  store i32 %i.aa, ptr %i.aqe, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.aqf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !53 ; 2 uses
  %i.aqi = load <2 x ptr>, ptr %i.apr, align 8, !tbaa !54
  store <2 x ptr> %i.aqi, ptr %5, align 16, !tbaa !54
  %i.aqj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apr, i64 16
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !19
  store i64 %i.aql, ptr %i.aqj, align 16, !tbaa !19
  %i.aqm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.apr, i64 24
  %i.aqo = load i32, ptr %i.aqn, align 8, !tbaa !18
  store i32 %i.aqo, ptr %i.aqm, align 8, !tbaa !18
  %i.aqp = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.apr, i64 32
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !55
  store ptr %i.aqr, ptr %i.aqp, align 16, !tbaa !55
  %i.aqs = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aqt = load <4 x i32>, ptr %i.aqe, align 8, !tbaa !50
  store <4 x i32> %i.aqt, ptr %i.aqs, align 8, !tbaa !50
  %i.aqu = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.aqv = load i32, ptr %i.apz, align 8, !tbaa !48
  store i32 %i.aqv, ptr %i.aqu, align 8, !tbaa !48
  %i.aqw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 9 uses
  %i.aqx = load i64, ptr %i.apx, align 8, !tbaa !47
  store i64 %i.aqx, ptr %i.aqw, align 16, !tbaa !47
  %.not.i1296 = icmp eq ptr %i.aqh, null
  br i1 %.not.i1296, label %_ZN4ncnn3Mat6addrefEv.exit1297, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.aqy = atomicrmw add ptr %i.aqh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1297

_ZN4ncnn3Mat6addrefEv.exit1297:                   ; preds = %bb.ay, %bb.az
  %i.aqz = icmp slt i32 %.02332.lcssa, %.0948     ; 2 uses
  br i1 %i.aqz, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1297
  %i.ara = sdiv i32 %.0950.lcssa, %.02332.lcssa
  %i.arb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !56
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.anb, i32 noundef %i.and, i32 noundef %i.anf, i32 noundef %i.ara, i64 noundef %.02331.lcssa, i32 noundef %.02332.lcssa, ptr noundef %i.arc)
          to label %bb.bb unwind label %bb.bn

bb.bb:                                            ; preds = %bb.ba
  %i.ard = load ptr, ptr %5, align 16, !tbaa !46
  %i.are = icmp eq ptr %i.ard, null
  br i1 %i.are, label %.critedge.critedge1155, label %_ZNK4ncnn3Mat5emptyEv.exit1158

_ZNK4ncnn3Mat5emptyEv.exit1158:                   ; preds = %bb.bb
  %i.arf = load i64, ptr %i.aqw, align 16, !tbaa !47
  %i.arg = load i32, ptr %i.aqu, align 8, !tbaa !48
  %i.arh = sext i32 %i.arg to i64
  %i.ari = mul i64 %i.arf, %i.arh
  %i.arj = icmp eq i64 %i.ari, 0
  br i1 %i.arj, label %.critedge.critedge1155, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1158
  store i32 %i.aa, ptr %i.aqs, align 8, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN4ncnn3Mat6addrefEv.exit1297
  %i.ark = load ptr, ptr %i.ank, align 8, !tbaa !35 ; 2 uses
  %i.arl = load ptr, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not2680 = icmp eq ptr %i.ark, %i.arl
  br i1 %.not2680, label %._crit_edge2656, label %.lr.ph2655

.lr.ph2655:                                       ; preds = %bb.bd
  %i.arm = icmp eq i32 %.02332.lcssa, 8
  %i.arn = icmp eq i32 %.02332.lcssa, 4           ; 2 uses
  %i.aro = icmp eq i32 %.02332.lcssa, 1           ; 3 uses
  br label %bb.be

._crit_edge2656:                                  ; preds = %bb.bl, %bb.bd
  br i1 %i.aqz, label %bb.bm, label %bb.bo

bb.be:                                            ; preds = %.lr.ph2655, %bb.bl
  %i.arp = phi ptr [ %i.arl, %.lr.ph2655 ], [ %i.byf, %bb.bl ] ; 2 uses
  %i.arq = phi ptr [ %i.ark, %.lr.ph2655 ], [ %i.byg, %bb.bl ]
  %.09332653 = phi i64 [ 0, %.lr.ph2655 ], [ %i.byh, %bb.bl ] ; 2 uses
  %.09342652 = phi i32 [ 0, %.lr.ph2655 ], [ %.13947, %bb.bl ] ; 3 uses
  %i.arr = getelementptr inbounds nuw [72 x i8], ptr %i.arp, i64 %.09332653 ; 47 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 24
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !18 ; 4 uses
  %i.aru = icmp eq i32 %i.art, 16                 ; 3 uses
  %or.cond27 = select i1 %i.aru, i1 %i.arm, i1 false
  br i1 %or.cond27, label %bb.bf, label %.loopexit2337

bb.bf:                                            ; preds = %bb.be
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arr, i64 44
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !36
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arr, i64 48
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !51
  %i.arz = mul i32 %i.ary, %i.arw
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arr, i64 52
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !62
  %i.asc = mul i32 %i.arz, %i.asb                 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arr, i64 56
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !48 ; 2 uses
  %i.asf = icmp sgt i32 %i.ase, 0
  br i1 %i.asf, label %.noexc1220.lr.ph, label %.loopexit2334

.noexc1220.lr.ph:                                 ; preds = %bb.bf
  %i.asg = load ptr, ptr %i.arr, align 8, !tbaa !46, !noalias !212
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arr, i64 64
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !47, !noalias !212
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !19, !noalias !212
  %factor.op.mul2499 = mul i64 %i.asi, %i.ask
  %i.asl = load ptr, ptr %5, align 16, !tbaa !46, !noalias !213 ; 2 uses
  %i.asm = load i64, ptr %i.aqw, align 16, !tbaa !47, !noalias !213
  %i.asn = load i64, ptr %i.aqj, align 16, !tbaa !19, !noalias !213
  %factor.op.mul2501 = mul i64 %i.asm, %i.asn     ; 2 uses
  %i.aso = icmp sgt i32 %i.asc, 0
  %i.asp = sext i32 %.09342652 to i64
  %wide.trip.count2757 = zext nneg i32 %i.ase to i64
  br label %.noexc1220

.noexc1220:                                       ; preds = %.noexc1220.lr.ph, %._crit_edge2495
  %indvars.iv2752 = phi i64 [ %i.asp, %.noexc1220.lr.ph ], [ %indvars.iv.next2753, %._crit_edge2495 ] ; 3 uses
  %indvars.iv2750 = phi i64 [ 0, %.noexc1220.lr.ph ], [ %indvars.iv.next2751, %._crit_edge2495 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Concat_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.bo = and i32 %.0939.lcssa, 3
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = select i1 %i.bp, i32 4, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %._crit_edge
  %.01068 = phi i32 [ 1, %._crit_edge ], [ 16, %bb.c ], [ %i.bq, %bb.e ], [ 8, %bb.d ] ; 3 uses
  %i.br = sext i32 %i.ac to i64
  %i.bs = udiv i64 %i.aa, %i.br
  %i.bt = zext nneg i32 %.01068 to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load ptr, ptr %2, align 8, !tbaa !13    ; 4 uses
  %i.bw = sdiv i32 %.0939.lcssa, %.01068
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, i32 noundef %i.bw, i64 noundef %i.bu, i32 noundef %.01068, ptr noundef %i.by)
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1157

_ZNK4ncnn3Mat5emptyEv.exit1157:                   ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !48
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cc, %i.cf
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.critedge, label %.preheader2342

.preheader2342:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1157
  %i.ci = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.cj = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not2668 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not2668, label %.loopexit2343.thread, label %.lr.ph2350

.lr.ph2350:                                       ; preds = %.preheader2342, %.lr.ph2350
  %i.ck = phi ptr [ %i.db, %.lr.ph2350 ], [ %i.cj, %.preheader2342 ]
  %.010712349 = phi i64 [ %i.cz, %.lr.ph2350 ], [ 0, %.preheader2342 ] ; 2 uses
  %.010722348 = phi ptr [ %i.cy, %.lr.ph2350 ], [ %i.bz, %.preheader2342 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %.010712349 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 44 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !36
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !19
  %i.cs = mul i64 %i.cr, %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.010722348, ptr align 2 %i.cm, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !18
  %i.cw = mul nsw i32 %i.cv, %i.ct
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %.010722348, i64 %i.cx
  %i.cz = add nuw i64 %.010712349, 1              ; 2 uses
  %i.da = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.db = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 72
  %i.dg = icmp ult i64 %i.cz, %i.df
  br i1 %i.dg, label %.lr.ph2350, label %.loopexit2343.thread, !llvm.loop !256

.loopexit2343.thread:                             ; preds = %.lr.ph2350, %.preheader2342
  %i.dh = icmp eq i32 %i.x, 0
  br label %bb.ao

.loopexit2343:                                    ; preds = %bb.a
  %i.di = icmp eq i32 %i.s, 2                     ; 3 uses
  %i.dj = icmp eq i32 %i.x, 0                     ; 3 uses
  %or.cond = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond, label %bb.g, label %bb.ao

bb.g:                                             ; preds = %.loopexit2343
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !36 ; 36 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !19 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !18 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %.not2669 = icmp eq ptr %i.dr, %i.q
  br i1 %.not2669, label %._crit_edge2357, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.q to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 72                ; 8 uses
  %min.iters.check = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check, label %.lr.ph2356.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2911 = icmp ult i64 %i.dv, 32
  br i1 %min.iters.check2911, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.dv, 24
  %n.vec = and i64 %i.dv, -32                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2912 = insertelement <8 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat2913 = shufflevector <8 x i32> %broadcast.splatinsert2912, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi2914 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ek, %vector.body ]
  %vec.phi2915 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi2916 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %vec.phi2917 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.dx, %vector.body ]
  %vec.phi2918 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.dy, %vector.body ]
  %vec.phi2919 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.dz, %vector.body ]
  %vec.phi2920 = phi <8 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ea, %vector.body ]
  %vec.phi2921 = phi <8 x i32> [ %broadcast.splat2913, %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi2922 = phi <8 x i32> [ %broadcast.splat2913, %vector.ph ], [ %i.ec, %vector.body ]
  %vec.phi2923 = phi <8 x i32> [ %broadcast.splat2913, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi2924 = phi <8 x i32> [ %broadcast.splat2913, %vector.ph ], [ %i.ee, %vector.body ]
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %vec.ind ; 3 uses
  %wide.gep2925 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %step.add ; 3 uses
  %wide.gep2926 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %step.add.2 ; 3 uses
  %wide.gep2927 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %step.add.3 ; 3 uses
  %wide.gep2928 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.gep2929 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2925, i64 16
  %wide.gep2930 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2926, i64 16
  %wide.gep2931 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2927, i64 16
  %wide.masked.gather = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2928, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather2932 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2929, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather2933 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2930, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather2934 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2931, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.dx = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather, <8 x i64> %vec.phi2917) ; 2 uses
  %i.dy = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2932, <8 x i64> %vec.phi2918) ; 2 uses
  %i.dz = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2933, <8 x i64> %vec.phi2919) ; 2 uses
  %i.ea = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2934, <8 x i64> %vec.phi2920) ; 2 uses
  %wide.gep2935 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.gep2936 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2925, i64 24
  %wide.gep2937 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2926, i64 24
  %wide.gep2938 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2927, i64 24
  %wide.masked.gather2939 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2935, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather2940 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2936, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather2941 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2937, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather2942 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2938, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.eb = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2939, <8 x i32> %vec.phi2921) ; 2 uses
  %i.ec = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2940, <8 x i32> %vec.phi2922) ; 2 uses
  %i.ed = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2941, <8 x i32> %vec.phi2923) ; 2 uses
  %i.ee = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2942, <8 x i32> %vec.phi2924) ; 2 uses
  %wide.gep2943 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.gep2944 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2925, i64 48
  %wide.gep2945 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2926, i64 48
  %wide.gep2946 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2927, i64 48
  %wide.masked.gather2947 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2943, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %wide.masked.gather2948 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2944, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %wide.masked.gather2949 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2945, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %wide.masked.gather2950 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2946, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %i.ef = mul nsw <8 x i32> %wide.masked.gather2947, %wide.masked.gather2939
  %i.eg = mul nsw <8 x i32> %wide.masked.gather2948, %wide.masked.gather2940
  %i.eh = mul nsw <8 x i32> %wide.masked.gather2949, %wide.masked.gather2941
  %i.ei = mul nsw <8 x i32> %wide.masked.gather2950, %wide.masked.gather2942
  %i.ej = add <8 x i32> %i.ef, %vec.phi           ; 2 uses
  %i.ek = add <8 x i32> %i.eg, %vec.phi2914       ; 2 uses
  %i.el = add <8 x i32> %i.eh, %vec.phi2915       ; 2 uses
  %i.em = add <8 x i32> %i.ei, %vec.phi2916       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.ek, %i.ej
  %bin.rdx2951 = add <8 x i32> %i.el, %bin.rdx
  %bin.rdx2952 = add <8 x i32> %i.em, %bin.rdx2951
  %i.eo = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx2952) ; 3 uses
  %rdx.minmax = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.dx, <8 x i64> %i.dy)
  %rdx.minmax2953 = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.dz)
  %rdx.minmax2954 = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax2953, <8 x i64> %i.ea)
  %i.ep = tail call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %rdx.minmax2954) ; 3 uses
  %rdx.minmax2955 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.eb, <8 x i32> %i.ec)
  %rdx.minmax2956 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2955, <8 x i32> %i.ed)
  %rdx.minmax2957 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2956, <8 x i32> %i.ee)
  %i.eq = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax2957) ; 3 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %._crit_edge2357, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2356.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.eo, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx2958 = phi i64 [ %i.ep, %vec.epilog.iter.check ], [ %i.dn, %vector.main.loop.iter.check ]
  %bc.merge.rdx2959 = phi i32 [ %i.eq, %vec.epilog.iter.check ], [ %i.dp, %vector.main.loop.iter.check ]
  %broadcast.splatinsert2969 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2959, i64 0
  %broadcast.splat2970 = shufflevector <8 x i32> %broadcast.splatinsert2969, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2961.a = insertelement <8 x i64> poison, i64 %bc.merge.rdx2958, i64 0
  %broadcast.splat2962.a = shufflevector <8 x i64> %broadcast.splatinsert2961.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %n.vec2960 = and i64 %i.dv, -8                  ; 3 uses
  %6 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert2965 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat2966 = shufflevector <8 x i64> %broadcast.splatinsert2965, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat2966, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2967 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2979, %vec.epilog.vector.body ]
  %vec.ind2968 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next2980, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi2969 = phi <8 x i32> [ %6, %vec.epilog.ph ], [ %i.eu, %vec.epilog.vector.body ]
  %vec.phi2970 = phi <8 x i64> [ %broadcast.splat2962.a, %vec.epilog.ph ], [ %i.er, %vec.epilog.vector.body ]
  %vec.phi2971 = phi <8 x i32> [ %broadcast.splat2970, %vec.epilog.ph ], [ %i.es, %vec.epilog.vector.body ]
  %wide.gep2972 = getelementptr inbounds nuw [72 x i8], ptr %i.q, <8 x i64> %vec.ind2968 ; 3 uses
  %wide.gep2973 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2972, i64 16
  %wide.masked.gather2974 = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep2973, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.er = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather2974, <8 x i64> %vec.phi2970) ; 2 uses
  %wide.gep2975 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2972, i64 24
  %wide.masked.gather2976 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep2975, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.es = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather2976, <8 x i32> %vec.phi2971) ; 2 uses
  %wide.gep2977 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2972, i64 48
  %wide.masked.gather2978 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep2977, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !51
  %i.et = mul nsw <8 x i32> %wide.masked.gather2978, %wide.masked.gather2976
  %i.eu = add <8 x i32> %i.et, %vec.phi2969       ; 2 uses
  %index.next2979 = add nuw i64 %index2967, 8     ; 2 uses
  %vec.ind.next2980 = add nuw <8 x i64> %vec.ind2968, splat (i64 8)
  %i.ev = icmp eq i64 %index.next2979, %n.vec2960
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ew = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eu) ; 2 uses
  %i.ex = tail call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %i.er) ; 2 uses
  %i.ey = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.es) ; 2 uses
  %cmp.n2981 = icmp eq i64 %i.dv, %n.vec2960
  br i1 %cmp.n2981, label %._crit_edge2357, label %.lr.ph2356.preheader

.lr.ph2356.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010692354.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2960, %vec.epilog.middle.block ]
  %.010702353.ph = phi i32 [ 0, %iter.check ], [ %i.eo, %vec.epilog.iter.check ], [ %i.ew, %vec.epilog.middle.block ]
  %.02352.ph = phi i64 [ %i.dn, %iter.check ], [ %i.ep, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  %.023232351.ph = phi i32 [ %i.dp, %iter.check ], [ %i.eq, %vec.epilog.iter.check ], [ %i.ey, %vec.epilog.middle.block ]
  br label %.lr.ph2356

._crit_edge2357:                                  ; preds = %.lr.ph2356, %middle.block, %vec.epilog.middle.block, %bb.g
  %.02323.lcssa = phi i32 [ %i.dp, %bb.g ], [ %i.ey, %vec.epilog.middle.block ], [ %i.eq, %middle.block ], [ %.sroa.speculated2302, %.lr.ph2356 ] ; 8 uses
  %.0.lcssa = phi i64 [ %i.dn, %bb.g ], [ %i.ex, %vec.epilog.middle.block ], [ %i.ep, %middle.block ], [ %.sroa.speculated2318, %.lr.ph2356 ] ; 2 uses
  %.01070.lcssa = phi i32 [ 0, %bb.g ], [ %i.ew, %vec.epilog.middle.block ], [ %i.eo, %middle.block ], [ %i.fk, %.lr.ph2356 ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !42, !range !43, !noundef !44
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.h, label %bb.k

.lr.ph2356:                                       ; preds = %.lr.ph2356.preheader, %.lr.ph2356
  %.010692354 = phi i64 [ %i.fl, %.lr.ph2356 ], [ %.010692354.ph, %.lr.ph2356.preheader ] ; 2 uses
  %.010702353 = phi i32 [ %i.fk, %.lr.ph2356 ], [ %.010702353.ph, %.lr.ph2356.preheader ]
  %.02352 = phi i64 [ %.sroa.speculated2318, %.lr.ph2356 ], [ %.02352.ph, %.lr.ph2356.preheader ]
  %.023232351 = phi i32 [ %.sroa.speculated2302, %.lr.ph2356 ], [ %.023232351.ph, %.lr.ph2356.preheader ]
  %i.fc = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %.010692354 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !49
  %.sroa.speculated2318 = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %.02352) ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !50 ; 2 uses
  %.sroa.speculated2302 = tail call i32 @llvm.smin.i32(i32 %i.fg, i32 %.023232351) ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !51
  %i.fj = mul nsw i32 %i.fi, %i.fg
  %i.fk = add nsw i32 %i.fj, %.010702353          ; 2 uses
  %i.fl = add nuw i64 %.010692354, 1              ; 2 uses
  %exitcond2702.not = icmp eq i64 %i.fl, %i.dv
  br i1 %exitcond2702.not, label %._crit_edge2357, label %.lr.ph2356, !llvm.loop !259

bb.h:                                             ; preds = %._crit_edge2357
  %i.fm = and i32 %.01070.lcssa, 15
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fo = and i32 %.01070.lcssa, 7
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fq = and i32 %.01070.lcssa, 3
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = select i1 %i.fr, i32 4, i32 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %._crit_edge2357
  %.01067 = phi i32 [ 1, %._crit_edge2357 ], [ 16, %bb.h ], [ %i.fs, %bb.j ], [ 8, %bb.i ] ; 5 uses
  %i.ft = sext i32 %.02323.lcssa to i64
  %i.fu = udiv i64 %.0.lcssa, %i.ft
  %i.fv = zext nneg i32 %.01067 to i64
  %i.fw = mul i64 %i.fu, %i.fv
  %i.fx = load ptr, ptr %2, align 8, !tbaa !13    ; 11 uses
  %i.fy = sdiv i32 %.01070.lcssa, %.01067
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !45
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.fx, i32 noundef %i.dl, i32 noundef %i.fy, i64 noundef %i.fw, i32 noundef %.01067, ptr noundef %i.ga)
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !46
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1156

_ZNK4ncnn3Mat5emptyEv.exit1156:                   ; preds = %bb.k
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !47
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 56 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !48
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul i64 %i.ge, %i.gh
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1156
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !53 ; 2 uses
  %i.gn = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !54
  store <2 x ptr> %i.gn, ptr %4, align 16, !tbaa !54
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !19
  store i64 %i.gq, ptr %i.go, align 16, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !18
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !55
  store ptr %i.gw, ptr %i.gu, align 16, !tbaa !55
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gz = load <4 x i32>, ptr %i.gy, align 8, !tbaa !50
  store <4 x i32> %i.gz, ptr %i.gx, align 8, !tbaa !50
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.hb = load i32, ptr %i.gf, align 8, !tbaa !48
  store i32 %i.hb, ptr %i.ha, align 8, !tbaa !48
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.hd = load i64, ptr %i.gd, align 8, !tbaa !47
  store i64 %i.hd, ptr %i.hc, align 16, !tbaa !47
  %.not.i = icmp eq ptr %i.gm, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.he = atomicrmw add ptr %i.gm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.l, %bb.m
  %i.hf = icmp slt i32 %.02323.lcssa, %.01067     ; 2 uses
  br i1 %i.hf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.hg = sdiv i32 %.01070.lcssa, %.02323.lcssa
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !56
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.dl, i32 noundef %i.hg, i64 noundef %.0.lcssa, i32 noundef %.02323.lcssa, ptr noundef %i.hi)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.hj = load ptr, ptr %4, align 16, !tbaa !46
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %.critedge.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1155

_ZNK4ncnn3Mat5emptyEv.exit1155:                   ; preds = %bb.o
  %i.hl = load i64, ptr %i.hc, align 16, !tbaa !47
  %i.hm = load i32, ptr %i.ha, align 8, !tbaa !48
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul i64 %i.hl, %i.hn
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %.critedge.critedge, label %bb.p

bb.p:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1155, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hq = load ptr, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %i.hr = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not2670 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not2670, label %._crit_edge2466, label %.lr.ph2465

.lr.ph2465:                                       ; preds = %bb.p
  %i.hs = load ptr, ptr %4, align 16, !tbaa !46
  %i.ht = icmp eq i32 %.02323.lcssa, 8
  %i.hu = shl i32 %i.dl, 3                        ; 3 uses
  %i.hv = sext i32 %i.hu to i64                   ; 7 uses
  %i.hw = icmp sgt i32 %i.dl, 0                   ; 6 uses
  %i.hx = shl i32 %i.dl, 4
  %i.hy = sext i32 %i.hx to i64                   ; 6 uses
  %i.hz = icmp eq i32 %.02323.lcssa, 4            ; 2 uses
  %i.ia = shl i32 %i.dl, 2                        ; 2 uses
  %i.ib = sext i32 %i.ia to i64                   ; 8 uses
  %i.ic = mul nsw i32 %i.dl, 12
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = icmp eq i32 %.02323.lcssa, 1            ; 3 uses
  %i.if = sext i32 %i.dl to i64                   ; 5 uses
  %i.ig = shl i32 %i.dl, 1
  %i.ih = sext i32 %i.ig to i64                   ; 5 uses
  %i.ii = mul i32 %i.dl, 3
  %i.ij = sext i32 %i.ii to i64                   ; 5 uses
  %i.ik = mul i32 %i.dl, 5
  %i.il = sext i32 %i.ik to i64                   ; 3 uses
  %i.im = mul i32 %i.dl, 6
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %i.io = mul i32 %i.dl, 7
  %i.ip = sext i32 %i.io to i64                   ; 3 uses
  %i.iq = mul nsw i32 %i.dl, 9
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul nsw i32 %i.dl, 10
  %i.it = sext i32 %i.is to i64
  %i.iu = mul nsw i32 %i.dl, 11
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i32 %i.dl, 13
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i32 %i.dl, 14
end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Concat_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %vec.ind3606 = phi <8 x i64> [ %induction3603, %vec.epilog.ph3599 ], [ %vec.ind.next3612, %vec.epilog.vector.body3604 ] ; 2 uses
  %vec.phi3607 = phi <8 x i32> [ %i.alt, %vec.epilog.ph3599 ], [ %i.alu, %vec.epilog.vector.body3604 ]
  %wide.gep3608 = getelementptr inbounds nuw [72 x i8], ptr %i.akz, <8 x i64> %vec.ind3606
  %wide.gep3609 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3608, i64 44
  %wide.masked.gather3610 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3609, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !36
  %i.alu = add <8 x i32> %wide.masked.gather3610, %vec.phi3607 ; 2 uses
  %index.next3611 = add nuw i64 %index3605, 8     ; 2 uses
  %vec.ind.next3612 = add nuw <8 x i64> %vec.ind3606, splat (i64 8)
  %i.alv = icmp eq i64 %index.next3611, %n.vec3600
  br i1 %i.alv, label %vec.epilog.middle.block3613, label %vec.epilog.vector.body3604, !llvm.loop !294

vec.epilog.middle.block3613:                      ; preds = %vec.epilog.vector.body3604
  %i.alw = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.alu) ; 2 uses
  %cmp.n3614 = icmp eq i64 %i.all, %n.vec3600
  br i1 %cmp.n3614, label %._crit_edge2471, label %.lr.ph2470.preheader

.lr.ph2470.preheader:                             ; preds = %iter.check3595, %vec.epilog.iter.check3597, %vec.epilog.middle.block3613
  %.09372468.ph = phi i64 [ 0, %iter.check3595 ], [ %n.vec3563, %vec.epilog.iter.check3597 ], [ %n.vec3600, %vec.epilog.middle.block3613 ]
  %.09382467.ph = phi i32 [ 0, %iter.check3595 ], [ %i.als, %vec.epilog.iter.check3597 ], [ %i.alw, %vec.epilog.middle.block3613 ]
  br label %.lr.ph2470

._crit_edge2471:                                  ; preds = %.lr.ph2470, %middle.block3588, %vec.epilog.middle.block3613, %bb.ap
  %.0938.lcssa = phi i32 [ 0, %bb.ap ], [ %i.alw, %vec.epilog.middle.block3613 ], [ %i.als, %middle.block3588 ], [ %i.amm, %.lr.ph2470 ]
  %i.alx = load ptr, ptr %2, align 8, !tbaa !13   ; 5 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !45
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.alx, i32 noundef %.0938.lcssa, i32 noundef %i.alb, i64 noundef %i.ald, i32 noundef %i.alf, ptr noundef %i.alz)
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !46
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %.critedge1136, label %_ZNK4ncnn3Mat5emptyEv.exit1154

_ZNK4ncnn3Mat5emptyEv.exit1154:                   ; preds = %._crit_edge2471
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alx, i64 64
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !47
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !48
  %i.amg = sext i32 %i.amf to i64
  %i.amh = mul i64 %i.amd, %i.amg
  %i.ami = icmp eq i64 %i.amh, 0
  br i1 %i.ami, label %.critedge1136, label %bb.aq

.lr.ph2470:                                       ; preds = %.lr.ph2470.preheader, %.lr.ph2470
  %.09372468 = phi i64 [ %i.amn, %.lr.ph2470 ], [ %.09372468.ph, %.lr.ph2470.preheader ] ; 2 uses
  %.09382467 = phi i32 [ %i.amm, %.lr.ph2470 ], [ %.09382467.ph, %.lr.ph2470.preheader ]
  %i.amj = getelementptr inbounds nuw [72 x i8], ptr %i.akz, i64 %.09372468
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 44
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !36
  %i.amm = add nsw i32 %i.aml, %.09382467         ; 2 uses
  %i.amn = add nuw i64 %.09372468, 1              ; 2 uses
  %exitcond2739.not = icmp eq i64 %i.amn, %i.all
  br i1 %exitcond2739.not, label %._crit_edge2471, label %.lr.ph2470, !llvm.loop !295

bb.aq:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1154
  %i.amo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.amp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn17Concat_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.alx, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %i.amq = icmp eq i32 %i.s, 3                    ; 2 uses
  %i.amr = icmp eq i32 %i.s, 4                    ; 3 uses
  %i.ams = add i32 %i.s, -3
  %or.cond23 = icmp ult i32 %i.ams, 2
  %or.cond25 = select i1 %or.cond23, i1 %i.akw, i1 false
  br i1 %or.cond25, label %bb.as, label %bb.ca

bb.as:                                            ; preds = %bb.ar
  %i.amt = load ptr, ptr %1, align 8, !tbaa !13   ; 13 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 44
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !36 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amt, i64 48
  %i.amx = load i32, ptr %i.amw, align 8, !tbaa !51 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amt, i64 52
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !62 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  %i.anb = load i64, ptr %i.ana, align 8, !tbaa !19 ; 4 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amt, i64 24
  %i.and = load i32, ptr %i.anc, align 8, !tbaa !18 ; 4 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !35 ; 2 uses
  %.not2672 = icmp eq ptr %i.anf, %i.amt
  br i1 %.not2672, label %._crit_edge2479, label %iter.check3690

iter.check3690:                                   ; preds = %bb.as
  %i.ang = ptrtoint ptr %i.anf to i64
  %i.anh = ptrtoint ptr %i.amt to i64
  %i.ani = sub i64 %i.ang, %i.anh
  %i.anj = sdiv exact i64 %i.ani, 72              ; 8 uses
  %min.iters.check3618 = icmp ult i64 %i.anj, 8
  br i1 %min.iters.check3618, label %.lr.ph2478.preheader, label %vector.main.loop.iter.check3619

vector.main.loop.iter.check3619:                  ; preds = %iter.check3690
  %min.iters.check3620 = icmp ult i64 %i.anj, 32
  br i1 %min.iters.check3620, label %vec.epilog.ph3694, label %vector.ph3621

vector.ph3621:                                    ; preds = %vector.main.loop.iter.check3619
  %i.ank = and i64 %i.anj, 24
  %n.vec3622 = and i64 %i.anj, -32                ; 4 uses
  %broadcast.splatinsert3623 = insertelement <8 x i64> poison, i64 %i.anb, i64 0
  %broadcast.splat3624 = shufflevector <8 x i64> %broadcast.splatinsert3623, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert3625 = insertelement <8 x i32> poison, i32 %i.and, i64 0
  %broadcast.splat3626 = shufflevector <8 x i32> %broadcast.splatinsert3625, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body3627

vector.body3627:                                  ; preds = %vector.ph3621, %vector.body3627
  %index3628 = phi i64 [ 0, %vector.ph3621 ], [ %index.next3673, %vector.body3627 ]
  %vec.ind3629 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph3621 ], [ %vec.ind.next3674, %vector.body3627 ] ; 5 uses
  %vec.phi3630.a = phi <8 x i32> [ zeroinitializer, %vector.ph3621 ], [ %i.anx, %vector.body3627 ]
  %vec.phi3631.a = phi <8 x i32> [ zeroinitializer, %vector.ph3621 ], [ %i.any, %vector.body3627 ]
  %vec.phi3632.a = phi <8 x i32> [ zeroinitializer, %vector.ph3621 ], [ %i.anz, %vector.body3627 ]
  %vec.phi3633.a = phi <8 x i32> [ zeroinitializer, %vector.ph3621 ], [ %i.aoa, %vector.body3627 ]
  %vec.phi3634.a = phi <8 x i64> [ %broadcast.splat3624, %vector.ph3621 ], [ %i.anl, %vector.body3627 ]
  %vec.phi3635.a = phi <8 x i64> [ %broadcast.splat3624, %vector.ph3621 ], [ %i.anm, %vector.body3627 ]
  %vec.phi3636 = phi <8 x i64> [ %broadcast.splat3624, %vector.ph3621 ], [ %i.ann, %vector.body3627 ]
  %vec.phi3637 = phi <8 x i64> [ %broadcast.splat3624, %vector.ph3621 ], [ %i.ano, %vector.body3627 ]
  %vec.phi3638 = phi <8 x i32> [ %broadcast.splat3626, %vector.ph3621 ], [ %i.anp, %vector.body3627 ]
  %vec.phi3639 = phi <8 x i32> [ %broadcast.splat3626, %vector.ph3621 ], [ %i.anq, %vector.body3627 ]
  %vec.phi3640 = phi <8 x i32> [ %broadcast.splat3626, %vector.ph3621 ], [ %i.anr, %vector.body3627 ]
  %vec.phi3641 = phi <8 x i32> [ %broadcast.splat3626, %vector.ph3621 ], [ %i.ans, %vector.body3627 ]
  %step.add3642 = add nuw <8 x i64> %vec.ind3629, splat (i64 8)
  %step.add.23643 = add nuw <8 x i64> %vec.ind3629, splat (i64 16)
  %step.add.33644 = add nuw <8 x i64> %vec.ind3629, splat (i64 24)
  %wide.gep3645.a = getelementptr inbounds nuw [72 x i8], ptr %i.amt, <8 x i64> %vec.ind3629 ; 3 uses
  %wide.gep3646.a = getelementptr inbounds nuw [72 x i8], ptr %i.amt, <8 x i64> %step.add3642 ; 3 uses
  %wide.gep3647 = getelementptr inbounds nuw [72 x i8], ptr %i.amt, <8 x i64> %step.add.23643 ; 3 uses
  %wide.gep3648 = getelementptr inbounds nuw [72 x i8], ptr %i.amt, <8 x i64> %step.add.33644 ; 3 uses
  %wide.gep3649 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3645.a, i64 16
  %wide.gep3650 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3646.a, i64 16
  %wide.gep3651.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3647, i64 16
  %wide.gep3652.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3648, i64 16
  %wide.masked.gather3653 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3649, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather3654 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3650, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather3655.a = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3651.a, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %wide.masked.gather3656.a = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3652.a, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.anl = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3653, <8 x i64> %vec.phi3634.a) ; 2 uses
  %i.anm = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3654, <8 x i64> %vec.phi3635.a) ; 2 uses
  %i.ann = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3655.a, <8 x i64> %vec.phi3636) ; 2 uses
  %i.ano = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3656.a, <8 x i64> %vec.phi3637) ; 2 uses
  %wide.gep3657 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3645.a, i64 24
  %wide.gep3658 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3646.a, i64 24
  %wide.gep3659.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3647, i64 24
  %wide.gep3660.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3648, i64 24
  %wide.masked.gather3661 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3657, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather3662 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3658, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather3663.a = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3659.a, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %wide.masked.gather3664.a = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3660.a, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.anp = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3661, <8 x i32> %vec.phi3638) ; 2 uses
  %i.anq = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3662, <8 x i32> %vec.phi3639) ; 2 uses
  %i.anr = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3663.a, <8 x i32> %vec.phi3640) ; 2 uses
  %i.ans = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3664.a, <8 x i32> %vec.phi3641) ; 2 uses
  %wide.gep3665 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3645.a, i64 56
  %wide.gep3666 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3646.a, i64 56
  %wide.gep3667 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3647, i64 56
  %wide.gep3668 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3648, i64 56
  %wide.masked.gather3669 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3665, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %wide.masked.gather3670 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3666, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %wide.masked.gather3671 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3667, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %wide.masked.gather3672 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3668, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %i.ant = mul nsw <8 x i32> %wide.masked.gather3669, %wide.masked.gather3661
  %i.anu = mul nsw <8 x i32> %wide.masked.gather3670, %wide.masked.gather3662
  %i.anv = mul nsw <8 x i32> %wide.masked.gather3671, %wide.masked.gather3663.a
  %i.anw = mul nsw <8 x i32> %wide.masked.gather3672, %wide.masked.gather3664.a
  %i.anx = add <8 x i32> %i.ant, %vec.phi3630.a   ; 2 uses
  %i.any = add <8 x i32> %i.anu, %vec.phi3631.a   ; 2 uses
  %i.anz = add <8 x i32> %i.anv, %vec.phi3632.a   ; 2 uses
  %i.aoa = add <8 x i32> %i.anw, %vec.phi3633.a   ; 2 uses
  %index.next3673 = add nuw i64 %index3628, 32    ; 2 uses
  %vec.ind.next3674 = add nuw <8 x i64> %vec.ind3629, splat (i64 32)
  %i.aob = icmp eq i64 %index.next3673, %n.vec3622
  br i1 %i.aob, label %middle.block3675, label %vector.body3627, !llvm.loop !296

middle.block3675:                                 ; preds = %vector.body3627
  %bin.rdx3676 = add <8 x i32> %i.any, %i.anx
  %bin.rdx3677 = add <8 x i32> %i.anz, %bin.rdx3676
  %bin.rdx3678 = add <8 x i32> %i.aoa, %bin.rdx3677
  %i.aoc = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx3678) ; 3 uses
  %rdx.minmax3679 = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.anl, <8 x i64> %i.anm)
  %rdx.minmax3680 = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax3679, <8 x i64> %i.ann)
  %rdx.minmax3681 = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %rdx.minmax3680, <8 x i64> %i.ano)
  %i.aod = call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %rdx.minmax3681) ; 3 uses
  %rdx.minmax3682 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.anp, <8 x i32> %i.anq)
  %rdx.minmax3683 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax3682, <8 x i32> %i.anr)
  %rdx.minmax3684 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax3683, <8 x i32> %i.ans)
  %i.aoe = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax3684) ; 3 uses
  %cmp.n3685 = icmp eq i64 %i.anj, %n.vec3622
  br i1 %cmp.n3685, label %._crit_edge2479, label %vec.epilog.iter.check3692

vec.epilog.iter.check3692:                        ; preds = %middle.block3675
  %min.epilog.iters.check3693 = icmp eq i64 %i.ank, 0
  br i1 %min.epilog.iters.check3693, label %.lr.ph2478.preheader, label %vec.epilog.ph3694, !prof !52

vec.epilog.ph3694:                                ; preds = %vector.main.loop.iter.check3619, %vec.epilog.iter.check3692
  %vec.epilog.resume.val3686 = phi i64 [ %n.vec3622, %vec.epilog.iter.check3692 ], [ 0, %vector.main.loop.iter.check3619 ] ; 2 uses
  %bc.merge.rdx3687.a = phi i32 [ %i.aoc, %vec.epilog.iter.check3692 ], [ 0, %vector.main.loop.iter.check3619 ]
  %bc.merge.rdx3688.a = phi i64 [ %i.aod, %vec.epilog.iter.check3692 ], [ %i.anb, %vector.main.loop.iter.check3619 ]
  %bc.merge.rdx3689 = phi i32 [ %i.aoe, %vec.epilog.iter.check3692 ], [ %i.and, %vector.main.loop.iter.check3619 ]
  %broadcast.splatinsert3700 = insertelement <8 x i32> poison, i32 %bc.merge.rdx3689, i64 0
  %broadcast.splat3701 = shufflevector <8 x i32> %broadcast.splatinsert3700, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3696 = insertelement <8 x i64> poison, i64 %bc.merge.rdx3688.a, i64 0
  %broadcast.splat3697 = shufflevector <8 x i64> %broadcast.splatinsert3696, <8 x i64> poison, <8 x i32> zeroinitializer
  %n.vec3689 = and i64 %i.anj, -8                 ; 3 uses
  %7 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx3687.a, i64 0
  %broadcast.splatinsert3700.a = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val3686, i64 0
  %broadcast.splat3701.a = shufflevector <8 x i64> %broadcast.splatinsert3700.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3702 = or disjoint <8 x i64> %broadcast.splat3701.a, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body3703

vec.epilog.vector.body3703:                       ; preds = %vec.epilog.vector.body3703, %vec.epilog.ph3694
  %index3704 = phi i64 [ %vec.epilog.resume.val3686, %vec.epilog.ph3694 ], [ %index.next3716, %vec.epilog.vector.body3703 ]
  %vec.ind3705 = phi <8 x i64> [ %induction3702, %vec.epilog.ph3694 ], [ %vec.ind.next3717, %vec.epilog.vector.body3703 ] ; 2 uses
  %vec.phi3706 = phi <8 x i32> [ %7, %vec.epilog.ph3694 ], [ %i.aoi, %vec.epilog.vector.body3703 ]
  %vec.phi3707 = phi <8 x i64> [ %broadcast.splat3697, %vec.epilog.ph3694 ], [ %i.aof, %vec.epilog.vector.body3703 ]
  %vec.phi3708 = phi <8 x i32> [ %broadcast.splat3701, %vec.epilog.ph3694 ], [ %i.aog, %vec.epilog.vector.body3703 ]
  %wide.gep3709 = getelementptr inbounds nuw [72 x i8], ptr %i.amt, <8 x i64> %vec.ind3705 ; 3 uses
  %wide.gep3710 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3709, i64 16
  %wide.masked.gather3711 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep3710, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !49
  %i.aof = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %wide.masked.gather3711, <8 x i64> %vec.phi3707) ; 2 uses
  %wide.gep3712 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3709, i64 24
  %wide.masked.gather3713 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3712, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !50 ; 2 uses
  %i.aog = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3713, <8 x i32> %vec.phi3708) ; 2 uses
  %wide.gep3714 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3709, i64 56
  %wide.masked.gather3715 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep3714, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !48
  %i.aoh = mul nsw <8 x i32> %wide.masked.gather3715, %wide.masked.gather3713
  %i.aoi = add <8 x i32> %i.aoh, %vec.phi3706     ; 2 uses
  %index.next3716 = add nuw i64 %index3704, 8     ; 2 uses
  %vec.ind.next3717 = add nuw <8 x i64> %vec.ind3705, splat (i64 8)
  %i.aoj = icmp eq i64 %index.next3716, %n.vec3689
  br i1 %i.aoj, label %vec.epilog.middle.block3718, label %vec.epilog.vector.body3703, !llvm.loop !297

vec.epilog.middle.block3718:                      ; preds = %vec.epilog.vector.body3703
  %i.aok = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aoi) ; 2 uses
  %i.aol = call i64 @llvm.vector.reduce.umin.v8i64(<8 x i64> %i.aof) ; 2 uses
  %i.aom = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.aog) ; 2 uses
  %cmp.n3719 = icmp eq i64 %i.anj, %n.vec3689
  br i1 %cmp.n3719, label %._crit_edge2479, label %.lr.ph2478.preheader

.lr.ph2478.preheader:                             ; preds = %iter.check3690, %vec.epilog.iter.check3692, %vec.epilog.middle.block3718
  %.09352476.ph = phi i64 [ 0, %iter.check3690 ], [ %n.vec3622, %vec.epilog.iter.check3692 ], [ %n.vec3689, %vec.epilog.middle.block3718 ]
  %.09362475.ph = phi i32 [ 0, %iter.check3690 ], [ %i.aoc, %vec.epilog.iter.check3692 ], [ %i.aok, %vec.epilog.middle.block3718 ]
  %.023242474.ph = phi i64 [ %i.anb, %iter.check3690 ], [ %i.aod, %vec.epilog.iter.check3692 ], [ %i.aol, %vec.epilog.middle.block3718 ]
  %.023252473.ph = phi i32 [ %i.and, %iter.check3690 ], [ %i.aoe, %vec.epilog.iter.check3692 ], [ %i.aom, %vec.epilog.middle.block3718 ]
  br label %.lr.ph2478

._crit_edge2479:                                  ; preds = %.lr.ph2478, %middle.block3675, %vec.epilog.middle.block3718, %bb.as
  %.02325.lcssa = phi i32 [ %i.and, %bb.as ], [ %i.aom, %vec.epilog.middle.block3718 ], [ %i.aoe, %middle.block3675 ], [ %.sroa.speculated, %.lr.ph2478 ] ; 8 uses
  %.02324.lcssa = phi i64 [ %i.anb, %bb.as ], [ %i.aol, %vec.epilog.middle.block3718 ], [ %i.aod, %middle.block3675 ], [ %.sroa.speculated2286, %.lr.ph2478 ] ; 2 uses
  %.0936.lcssa = phi i32 [ 0, %bb.as ], [ %i.aok, %vec.epilog.middle.block3718 ], [ %i.aoc, %middle.block3675 ], [ %i.aoy, %.lr.ph2478 ] ; 5 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !42, !range !43, !noundef !44
  %i.aop = trunc nuw i8 %i.aoo to i1
  br i1 %i.aop, label %bb.at, label %bb.aw

.lr.ph2478:                                       ; preds = %.lr.ph2478.preheader, %.lr.ph2478
  %.09352476 = phi i64 [ %i.aoz, %.lr.ph2478 ], [ %.09352476.ph, %.lr.ph2478.preheader ] ; 2 uses
  %.09362475 = phi i32 [ %i.aoy, %.lr.ph2478 ], [ %.09362475.ph, %.lr.ph2478.preheader ]
  %.023242474 = phi i64 [ %.sroa.speculated2286, %.lr.ph2478 ], [ %.023242474.ph, %.lr.ph2478.preheader ]
  %.023252473 = phi i32 [ %.sroa.speculated, %.lr.ph2478 ], [ %.023252473.ph, %.lr.ph2478.preheader ]
  %i.aoq = getelementptr inbounds nuw [72 x i8], ptr %i.amt, i64 %.09352476 ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !49
  %.sroa.speculated2286 = call i64 @llvm.umin.i64(i64 %i.aos, i64 %.023242474) ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24
  %i.aou = load i32, ptr %i.aot, align 8, !tbaa !50 ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aou, i32 %.023252473) ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoq, i64 56
  %i.aow = load i32, ptr %i.aov, align 8, !tbaa !48
  %i.aox = mul nsw i32 %i.aow, %i.aou
  %i.aoy = add nsw i32 %i.aox, %.09362475         ; 2 uses
  %i.aoz = add nuw i64 %.09352476, 1              ; 2 uses
  %exitcond2741.not = icmp eq i64 %i.aoz, %i.anj
  br i1 %exitcond2741.not, label %._crit_edge2479, label %.lr.ph2478, !llvm.loop !298

bb.at:                                            ; preds = %._crit_edge2479
  %i.apa = and i32 %.0936.lcssa, 15
  %i.apb = icmp eq i32 %i.apa, 0
  br i1 %i.apb, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.apc = and i32 %.0936.lcssa, 7
  %i.apd = icmp eq i32 %i.apc, 0
  br i1 %i.apd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ape = and i32 %.0936.lcssa, 3
  %i.apf = icmp eq i32 %i.ape, 0
  %i.apg = select i1 %i.apf, i32 4, i32 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av, %._crit_edge2479
  %.0934 = phi i32 [ 1, %._crit_edge2479 ], [ 16, %bb.at ], [ %i.apg, %bb.av ], [ 8, %bb.au ] ; 5 uses
  %i.aph = sext i32 %.02325.lcssa to i64
  %i.api = udiv i64 %.02324.lcssa, %i.aph
  %i.apj = zext nneg i32 %.0934 to i64
  %i.apk = mul i64 %i.api, %i.apj
  %i.apl = load ptr, ptr %2, align 8, !tbaa !13   ; 11 uses
  %i.apm = sdiv i32 %.0936.lcssa, %.0934
  %i.apn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !45
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.apl, i32 noundef %i.amv, i32 noundef %i.amx, i32 noundef %i.amz, i32 noundef %i.apm, i64 noundef %i.apk, i32 noundef %.0934, ptr noundef %i.apo)
  %i.app = load ptr, ptr %i.apl, align 8, !tbaa !46
  %i.apq = icmp eq ptr %i.app, null
  br i1 %i.apq, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1153

_ZNK4ncnn3Mat5emptyEv.exit1153:                   ; preds = %bb.aw
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 64 ; 2 uses
  %i.aps = load i64, ptr %i.apr, align 8, !tbaa !47
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apl, i64 56 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !48
  %i.apv = sext i32 %i.apu to i64
  %i.apw = mul i64 %i.aps, %i.apv
  %i.apx = icmp eq i64 %i.apw, 0
  br i1 %i.apx, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1153
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apl, i64 40 ; 2 uses
  store i32 %i.s, ptr %i.apy, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.apz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !53 ; 2 uses
  %i.aqc = load <2 x ptr>, ptr %i.apl, align 8, !tbaa !54
  store <2 x ptr> %i.aqc, ptr %5, align 16, !tbaa !54
  %i.aqd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !19
  store i64 %i.aqf, ptr %i.aqd, align 16, !tbaa !19
  %i.aqg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apl, i64 24
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !18
  store i32 %i.aqi, ptr %i.aqg, align 8, !tbaa !18
  %i.aqj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apl, i64 32
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !55
  store ptr %i.aql, ptr %i.aqj, align 16, !tbaa !55
  %i.aqm = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aqn = load <4 x i32>, ptr %i.apy, align 8, !tbaa !50
  store <4 x i32> %i.aqn, ptr %i.aqm, align 8, !tbaa !50
  %i.aqo = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.aqp = load i32, ptr %i.apt, align 8, !tbaa !48
  store i32 %i.aqp, ptr %i.aqo, align 8, !tbaa !48
  %i.aqq = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 9 uses
  %i.aqr = load i64, ptr %i.apr, align 8, !tbaa !47
  store i64 %i.aqr, ptr %i.aqq, align 16, !tbaa !47
  %.not.i1289 = icmp eq ptr %i.aqb, null
  br i1 %.not.i1289, label %_ZN4ncnn3Mat6addrefEv.exit1290, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aqs = atomicrmw add ptr %i.aqb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1290

_ZN4ncnn3Mat6addrefEv.exit1290:                   ; preds = %bb.ax, %bb.ay
  %i.aqt = icmp slt i32 %.02325.lcssa, %.0934     ; 2 uses
  br i1 %i.aqt, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1290
  %i.aqu = sdiv i32 %.0936.lcssa, %.02325.lcssa
  %i.aqv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !56
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.amv, i32 noundef %i.amx, i32 noundef %i.amz, i32 noundef %i.aqu, i64 noundef %.02324.lcssa, i32 noundef %.02325.lcssa, ptr noundef %i.aqw)
          to label %bb.ba unwind label %bb.bm

bb.ba:                                            ; preds = %bb.az
  %i.aqx = load ptr, ptr %5, align 16, !tbaa !46
  %i.aqy = icmp eq ptr %i.aqx, null
  br i1 %i.aqy, label %.critedge.critedge1149, label %_ZNK4ncnn3Mat5emptyEv.exit1152

_ZNK4ncnn3Mat5emptyEv.exit1152:                   ; preds = %bb.ba
  %i.aqz = load i64, ptr %i.aqq, align 16, !tbaa !47
  %i.ara = load i32, ptr %i.aqo, align 8, !tbaa !48
  %i.arb = sext i32 %i.ara to i64
  %i.arc = mul i64 %i.aqz, %i.arb
  %i.ard = icmp eq i64 %i.arc, 0
  br i1 %i.ard, label %.critedge.critedge1149, label %bb.bb

bb.bb:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1152
  store i32 %i.s, ptr %i.aqm, align 8, !tbaa !20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4ncnn3Mat6addrefEv.exit1290
  %i.are = load ptr, ptr %i.ane, align 8, !tbaa !35 ; 2 uses
  %i.arf = load ptr, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not2673 = icmp eq ptr %i.are, %i.arf
  br i1 %.not2673, label %._crit_edge2649, label %.lr.ph2648

.lr.ph2648:                                       ; preds = %bb.bc
  %i.arg = icmp eq i32 %.02325.lcssa, 8
  %i.arh = icmp eq i32 %.02325.lcssa, 4           ; 2 uses
  %i.ari = icmp eq i32 %.02325.lcssa, 1           ; 3 uses
  br label %bb.bd

._crit_edge2649:                                  ; preds = %bb.bk, %bb.bc
  br i1 %i.aqt, label %bb.bl, label %bb.bn

bb.bd:                                            ; preds = %.lr.ph2648, %bb.bk
  %i.arj = phi ptr [ %i.arf, %.lr.ph2648 ], [ %i.bxz, %bb.bk ] ; 2 uses
  %i.ark = phi ptr [ %i.are, %.lr.ph2648 ], [ %i.bya, %bb.bk ]
  %.09192646 = phi i64 [ 0, %.lr.ph2648 ], [ %i.byb, %bb.bk ] ; 2 uses
  %.09202645 = phi i32 [ 0, %.lr.ph2648 ], [ %.13933, %bb.bk ] ; 3 uses
  %i.arl = getelementptr inbounds nuw [72 x i8], ptr %i.arj, i64 %.09192646 ; 47 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !18 ; 4 uses
  %i.aro = icmp eq i32 %i.arn, 16                 ; 3 uses
  %or.cond27 = select i1 %i.aro, i1 %i.arg, i1 false
  br i1 %or.cond27, label %bb.be, label %.loopexit2330

bb.be:                                            ; preds = %bb.bd
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arl, i64 44
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !36
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arl, i64 48
  %i.ars = load i32, ptr %i.arr, align 8, !tbaa !51
  %i.art = mul i32 %i.ars, %i.arq
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arl, i64 52
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !62
  %i.arw = mul i32 %i.art, %i.arv                 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arl, i64 56
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !48 ; 2 uses
  %i.arz = icmp sgt i32 %i.ary, 0
  br i1 %i.arz, label %.noexc1214.lr.ph, label %.loopexit2327

.noexc1214.lr.ph:                                 ; preds = %bb.be
  %i.asa = load ptr, ptr %i.arl, align 8, !tbaa !46, !noalias !398
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arl, i64 64
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !47, !noalias !398
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %i.ase = load i64, ptr %i.asd, align 8, !tbaa !19, !noalias !398
  %factor.op.mul2492 = mul i64 %i.asc, %i.ase
  %i.asf = load ptr, ptr %5, align 16, !tbaa !46, !noalias !399 ; 2 uses
  %i.asg = load i64, ptr %i.aqq, align 16, !tbaa !47, !noalias !399
  %i.ash = load i64, ptr %i.aqd, align 16, !tbaa !19, !noalias !399
  %factor.op.mul2494 = mul i64 %i.asg, %i.ash     ; 2 uses
  %i.asi = icmp sgt i32 %i.arw, 0
  %i.asj = sext i32 %.09202645 to i64
  %wide.trip.count2750 = zext nneg i32 %i.ary to i64
  br label %.noexc1214

.noexc1214:                                       ; preds = %.noexc1214.lr.ph, %._crit_edge2488
  %indvars.iv2745 = phi i64 [ %i.asj, %.noexc1214.lr.ph ], [ %indvars.iv.next2746, %._crit_edge2488 ] ; 3 uses
  %indvars.iv2743 = phi i64 [ 0, %.noexc1214.lr.ph ], [ %indvars.iv.next2744, %._crit_edge2488 ] ; 2 uses
end_hunk_3
